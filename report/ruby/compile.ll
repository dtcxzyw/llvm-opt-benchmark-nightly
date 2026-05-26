inline.NumInlined: 6676
inline.NumDeleted: 333
begin_hunk_0_@rb_iseq_build_from_ary:bb.a
bb.dm:                                            ; preds = %bb.dl, %RARRAY_AREF.exit62.i
  %i.st = getelementptr i8, ptr %i.rg, i64 40     ; 2 uses
  %i.su = load i32, ptr %i.st, align 8, !tbaa !273
  %i.sv = add i32 %i.su, 1
  store i32 %i.sv, ptr %i.st, align 8, !tbaa !273
  %i.sw = getelementptr i8, ptr %i.rq, i64 40     ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !273
  %i.sy = add i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 8, !tbaa !273
  %i.sz = load i64, ptr %0, align 8, !tbaa !37
  %i.ta = and i64 %i.sz, 262144
  %.not.i63.i = icmp eq i64 %i.ta, 0
  br i1 %.not.i63.i, label %ISEQ_COMPILE_DATA.exit.i, label %ISEQ_COMPILE_DATA.exit.thread.i

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.dm
  %i.tb = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !86
  %i.tc = icmp eq i64 %i.tb, 4
  br i1 %i.tc, label %ISEQ_COMPILE_DATA.exit67.i, label %rb_obj_write.exit.i145

ISEQ_COMPILE_DATA.exit.thread.i:                  ; preds = %bb.dm
  %i.td = load ptr, ptr %i.od, align 8, !tbaa !20 ; 2 uses
  %i.te = getelementptr i8, ptr %i.td, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !86
  %i.tg = icmp eq i64 %i.tf, 4
  br i1 %i.tg, label %ISEQ_COMPILE_DATA.exit67.i, label %rb_obj_write.exit.i145

ISEQ_COMPILE_DATA.exit67.i:                       ; preds = %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit.i
  %.0.i66.i = phi ptr [ null, %ISEQ_COMPILE_DATA.exit.i ], [ %i.td, %ISEQ_COMPILE_DATA.exit.thread.i ]
  %i.th = getelementptr i8, ptr %.0.i66.i, i64 8
  %i.ti = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.ti, ptr %i.th, align 8, !tbaa !36
  %i.tj = icmp eq i64 %i.ti, 0
  %i.tk = and i64 %i.ti, 7
  %i.tl = icmp ne i64 %i.tk, 0
  %i.tm = or i1 %i.tj, %i.tl
  br i1 %i.tm, label %rb_obj_write.exit.i145, label %bb.dn

bb.dn:                                            ; preds = %ISEQ_COMPILE_DATA.exit67.i
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.ti) #37
  br label %rb_obj_write.exit.i145

rb_obj_write.exit.i145:                           ; preds = %bb.dn, %ISEQ_COMPILE_DATA.exit67.i, %ISEQ_COMPILE_DATA.exit.thread.i, %ISEQ_COMPILE_DATA.exit.i
  %i.tn = load ptr, ptr %i.od, align 8, !tbaa !20
  %i.to = getelementptr i8, ptr %i.tn, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !86
  call void @rb_obj_freeze_inline(i64 noundef %i.sm) #37
  %i.tq = inttoptr i64 %i.sm to ptr
  %i.tr = getelementptr i8, ptr %i.tq, i64 8
  store i64 0, ptr %i.tr, align 8, !tbaa !36
  %i.ts = call i64 @rb_ary_push(i64 noundef %i.tp, i64 noundef %i.sm) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  store ptr %i.h, ptr %i.i, align 8, !tbaa !89
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.i) #37, !srcloc !299
  %i.tt = load ptr, ptr %i.i, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  %i.tu = load volatile i64, ptr %i.tt, align 8, !tbaa !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %i.tv = add i32 %.0.i137, 1
  br label %bb.cn, !llvm.loop !300

iseq_build_from_ary_exception.exit:               ; preds = %rb_array_len.exit.i147, %rb_array_len.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.b, align 8, !tbaa !36
  %i.tw = inttoptr i64 %5 to ptr                  ; 5 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !75 ; 2 uses
  %i.ty = and i64 %i.tx, 8192
  %.not.i.i148 = icmp eq i64 %i.ty, 0
  br i1 %.not.i.i148, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %iseq_build_from_ary_exception.exit
  %i.tz = lshr i64 %i.tx, 15
  %i.ua = and i64 %i.tz, 127
  br label %rb_array_len.exit.i149

bb.dp:                                            ; preds = %iseq_build_from_ary_exception.exit
  %i.ub = getelementptr i8, ptr %i.tw, i64 16
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !20
  br label %rb_array_len.exit.i149

rb_array_len.exit.i149:                           ; preds = %bb.dp, %bb.do
  %.0.i162.i = phi i64 [ %i.ua, %bb.do ], [ %i.uc, %bb.dp ] ; 2 uses
  %i.ud = inttoptr i64 %i.k to ptr
  %i.ue = getelementptr i8, ptr %i.ud, i64 32
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !301 ; 6 uses
  %i.ug = load ptr, ptr @iseq_build_from_ary_body.insn_table, align 8, !tbaa !303
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %rb_array_len.exit.i149
  %i.ui = call ptr @rb_st_init_numtable_with_size(i64 noundef 248) #37 ; 2 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %indvars.iv.i.i = phi i64 [ 0, %bb.dq ], [ %indvars.iv.next.i.i, %bb.dr ] ; 3 uses
  %i.uj = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %indvars.iv.i.i
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !82
  %i.ul = zext i16 %i.uk to i64
  %i.um = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.ul ; 2 uses
  %i.un = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.um) #44
  %i.uo = call i64 @rb_intern2(ptr noundef nonnull %i.um, i64 noundef %i.un) #37
  %i.up = call i64 @rb_id2sym(i64 noundef %i.uo) #37
  %i.uq = call i32 @rb_st_insert(ptr noundef %i.ui, i64 noundef %i.up, i64 noundef %indvars.iv.i.i) #37 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 248
  br i1 %exitcond.not.i.i, label %insn_make_insn_table.exit.i, label %bb.dr, !llvm.loop !304

insn_make_insn_table.exit.i:                      ; preds = %bb.dr
  store ptr %i.ui, ptr @iseq_build_from_ary_body.insn_table, align 8, !tbaa !303
  br label %bb.ds

bb.ds:                                            ; preds = %insn_make_insn_table.exit.i, %rb_array_len.exit.i149
  %i.ur = icmp sgt i64 %.0.i162.i, 0
  br i1 %i.ur, label %.lr.ph288.i, label %.loopexit242.i

.lr.ph288.i:                                      ; preds = %bb.ds
  %i.us = getelementptr i8, ptr %i.tw, i64 16
  %i.ut = getelementptr i8, ptr %i.tw, i64 32
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ht, %.lr.ph288.i
  %.0131287.i = phi i64 [ 0, %.lr.ph288.i ], [ %i.amp, %bb.ht ] ; 2 uses
  %.0133286.i = phi i32 [ 0, %.lr.ph288.i ], [ %.2.ph.i, %bb.ht ] ; 7 uses
  %.0137284.i = phi i32 [ 0, %.lr.ph288.i ], [ %.3140.ph.i, %bb.ht ] ; 5 uses
  %i.uu = load i64, ptr %i.tw, align 8, !tbaa !75
  %i.uv = and i64 %i.uu, 8192
  %.not.i.i.i153 = icmp eq i64 %i.uv, 0
  br i1 %.not.i.i.i153, label %bb.du, label %RARRAY_AREF.exit.i154

bb.du:                                            ; preds = %bb.dt
  %i.uw = load ptr, ptr %i.ut, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i154

RARRAY_AREF.exit.i154:                            ; preds = %bb.du, %bb.dt
  %.0.i.i.i155 = phi ptr [ %i.uw, %bb.du ], [ %i.us, %bb.dt ]
  %i.ux = getelementptr [8 x i8], ptr %.0.i.i.i155, i64 %.0131287.i
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !36 ; 18 uses
  %i.uz = and i64 %i.uy, 255
  %i.va = icmp eq i64 %i.uz, 12
  br i1 %i.va, label %RB_SYMBOL_P.exit.thread.i167, label %bb.dv

bb.dv:                                            ; preds = %RARRAY_AREF.exit.i154
  %i.vb = icmp eq i64 %i.uy, 0                    ; 2 uses
  %i.vc = and i64 %i.uy, 7
  %i.vd = icmp ne i64 %i.vc, 0
  %i.ve = or i1 %i.vb, %i.vd
  br i1 %i.ve, label %RB_SYMBOL_P.exit.thread213.i, label %RB_SYMBOL_P.exit.i156

RB_SYMBOL_P.exit.i156:                            ; preds = %bb.dv
  %i.vf = inttoptr i64 %i.uy to ptr
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !75
  %i.vh = and i64 %i.vg, 31
  %i.vi = icmp eq i64 %i.vh, 20
  br i1 %i.vi, label %RB_SYMBOL_P.exit.thread.i167, label %RB_SYMBOL_P.exit.thread213.i

RB_SYMBOL_P.exit.thread.i167:                     ; preds = %RB_SYMBOL_P.exit.i156, %RARRAY_AREF.exit.i154
  %i.vj = call i64 @rb_intern2(ptr noundef nonnull @.str.211, i64 noundef 15) #37
  %i.vk = call i64 @rb_id2sym(i64 noundef %i.vj) #37
  %i.vl = icmp eq i64 %i.uy, %i.vk
  br i1 %i.vl, label %select.unfold.i, label %bb.dw

bb.dw:                                            ; preds = %RB_SYMBOL_P.exit.thread.i167
  %i.vm = call i64 @rb_intern2(ptr noundef nonnull @.str.212, i64 noundef 16) #37
  %i.vn = call i64 @rb_id2sym(i64 noundef %i.vm) #37
  %i.vo = icmp eq i64 %i.uy, %i.vn
  br i1 %i.vo, label %select.unfold.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.vp = call i64 @rb_intern2(ptr noundef nonnull @.str.213, i64 noundef 14) #37
  %i.vq = call i64 @rb_id2sym(i64 noundef %i.vp) #37
  %i.vr = icmp eq i64 %i.uy, %i.vq
  br i1 %i.vr, label %select.unfold.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vs = call i64 @rb_intern2(ptr noundef nonnull @.str.214, i64 noundef 15) #37
  %i.vt = call i64 @rb_id2sym(i64 noundef %i.vs) #37
  %i.vu = icmp eq i64 %i.uy, %i.vt
  br i1 %i.vu, label %select.unfold.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vv = call i64 @rb_intern2(ptr noundef nonnull @.str.215, i64 noundef 17) #37
  %i.vw = call i64 @rb_id2sym(i64 noundef %i.vv) #37
  %i.vx = icmp eq i64 %i.uy, %i.vw
  br i1 %i.vx, label %select.unfold.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vy = call i64 @rb_intern2(ptr noundef nonnull @.str.216, i64 noundef 17) #37
  %i.vz = call i64 @rb_id2sym(i64 noundef %i.vy) #37
  %i.wa = icmp eq i64 %i.uy, %i.vz
  br i1 %i.wa, label %select.unfold.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wb = call i64 @rb_intern2(ptr noundef nonnull @.str.217, i64 noundef 19) #37
  %i.wc = call i64 @rb_id2sym(i64 noundef %i.wb) #37
  %i.wd = icmp eq i64 %i.uy, %i.wc
  br i1 %i.wd, label %select.unfold.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.we = call i64 @rb_intern2(ptr noundef nonnull @.str.218, i64 noundef 17) #37
  %i.wf = call i64 @rb_id2sym(i64 noundef %i.we) #37
  %i.wg = icmp eq i64 %i.uy, %i.wf
  br i1 %i.wg, label %select.unfold.i, label %event_name_to_flag.exit.i

select.unfold.i:                                  ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %RB_SYMBOL_P.exit.thread.i167
  %.0.i163.ph.i = phi i32 [ 512, %bb.eb ], [ 256, %bb.ea ], [ 16, %bb.dz ], [ 8, %bb.dy ], [ 4, %bb.dx ], [ 2, %bb.dw ], [ 1, %RB_SYMBOL_P.exit.thread.i167 ], [ 16384, %bb.ec ]
  %i.wh = load i64, ptr %0, align 8, !tbaa !37
  %i.wi = and i64 %i.wh, 262144
  %.not.i.i.i.i.i = icmp eq i64 %i.wi, 0
  br i1 %.not.i.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %select.unfold.i
  %i.wj = load ptr, ptr %i.od, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i.i:                   ; preds = %bb.ed, %select.unfold.i
  %.0.i.i.i.i.i = phi ptr [ %i.wj, %bb.ed ], [ null, %select.unfold.i ]
  %i.wk = getelementptr i8, ptr %.0.i.i.i.i.i, i64 96 ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !40 ; 4 uses
  %i.wm = getelementptr i8, ptr %i.wl, i64 8
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !7  ; 2 uses
  %i.wo = zext i32 %i.wn to i64
  %i.wp = add nuw nsw i64 %i.wo, 40
  %i.wq = getelementptr i8, ptr %i.wl, i64 12
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !7  ; 4 uses
  %i.ws = zext i32 %i.wr to i64                   ; 2 uses
  %i.wt = icmp samesign ugt i64 %i.wp, %i.ws
  br i1 %i.wt, label %.preheader.i.i.i.i.i, label %new_trace_body.exit.i

.preheader.i.i.i.i.i:                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i.i
  %i.wu = icmp ult i32 %i.wr, 40
  br i1 %i.wu, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.ef
  %.027.i.i.i.i.i = phi i32 [ %i.ww, %bb.ef ], [ %i.wr, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.wv = icmp samesign ugt i32 %.027.i.i.i.i.i, 1073741822
  br i1 %i.wv, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ww = shl nuw nsw i32 %.027.i.i.i.i.i, 1      ; 3 uses
  %i.wx = icmp samesign ult i32 %.027.i.i.i.i.i, 20
  br i1 %i.wx, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i.i:                   ; preds = %bb.ef
  %i.wy = zext nneg i32 %i.ww to i64
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.loopexit.i.i.i, %.preheader.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.wr, %.preheader.i.i.i.i.i ], [ %i.ww, %._crit_edge.i.i.loopexit.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i64 [ %i.ws, %.preheader.i.i.i.i.i ], [ %i.wy, %._crit_edge.i.i.loopexit.i.i.i ]
  %i.wz = add nuw nsw i64 %.lcssa.i.i.i.i.i, 16
  %i.xa = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.wz, i64 noundef 1) #39 ; 6 uses
  store ptr %i.xa, ptr %i.wl, align 8, !tbaa !40
  store ptr %i.xa, ptr %i.wk, align 8, !tbaa !40
  store ptr null, ptr %i.xa, align 8, !tbaa !40
  %i.xb = getelementptr i8, ptr %i.xa, i64 8
  store i32 0, ptr %i.xb, align 8, !tbaa !7
  %i.xc = getelementptr i8, ptr %i.xa, i64 12
  store i32 %.0.lcssa.i.i.i.i.i, ptr %i.xc, align 4, !tbaa !7
  br label %new_trace_body.exit.i

new_trace_body.exit.i:                            ; preds = %._crit_edge.i.i.i.i.i, %ISEQ_COMPILE_DATA.exit.i.i.i.i
  %i.xd = phi i32 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.wn, %ISEQ_COMPILE_DATA.exit.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i.i = phi ptr [ %i.xa, %._crit_edge.i.i.i.i.i ], [ %i.wl, %ISEQ_COMPILE_DATA.exit.i.i.i.i ] ; 2 uses
  %i.xe = getelementptr i8, ptr %.022.i.i.i.i.i, i64 16
  %i.xf = getelementptr i8, ptr %.022.i.i.i.i.i, i64 8
  %i.xg = zext i32 %i.xd to i64
  %i.xh = getelementptr i8, ptr %i.xe, i64 %i.xg  ; 7 uses
  %i.xi = add i32 %i.xd, 40
  store i32 %i.xi, ptr %i.xf, align 8, !tbaa !7
  store i32 4, ptr %i.xh, align 8, !tbaa !268
  %i.xj = getelementptr i8, ptr %i.xh, i64 8
  store ptr null, ptr %i.xj, align 8, !tbaa !269
  %i.xk = getelementptr i8, ptr %i.xh, i64 24
  store i32 %.0.i163.ph.i, ptr %i.xk, align 8, !tbaa !105
  %i.xl = getelementptr i8, ptr %i.xh, i64 32
  store i64 0, ptr %i.xl, align 8, !tbaa !107
  %i.xm = load ptr, ptr %i.t, align 8, !tbaa !11  ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xh, i64 16
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !34
  %i.xo = getelementptr i8, ptr %i.xm, i64 8
  store ptr %i.xh, ptr %i.xo, align 8, !tbaa !35
  store ptr %i.xh, ptr %i.t, align 8, !tbaa !11
  br label %bb.ht

event_name_to_flag.exit.i:                        ; preds = %bb.ec
  %i.xp = call fastcc ptr @register_label(ptr noundef %0, ptr noundef %i.uf, i64 noundef %i.uy) ; 3 uses
  %i.xq = load ptr, ptr %i.t, align 8, !tbaa !11  ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xp, i64 16
  store ptr %i.xq, ptr %i.xr, align 8, !tbaa !34
  %i.xs = getelementptr i8, ptr %i.xq, i64 8
  store ptr %i.xp, ptr %i.xs, align 8, !tbaa !35
  store ptr %i.xp, ptr %i.t, align 8, !tbaa !11
  br label %bb.ht

RB_SYMBOL_P.exit.thread213.i:                     ; preds = %RB_SYMBOL_P.exit.i156, %bb.dv
  %i.xt = trunc i64 %i.uy to i1
  br i1 %i.xt, label %rb_num2int_inline.exit.i, label %bb.eg

rb_num2int_inline.exit.i:                         ; preds = %RB_SYMBOL_P.exit.thread213.i
  %i.xu = call i64 @rb_fix2int(i64 noundef %i.uy) #37
  %i.xv = trunc i64 %i.xu to i32
  br label %bb.ht

bb.eg:                                            ; preds = %RB_SYMBOL_P.exit.thread213.i
  %i.xw = and i64 %i.uy, 6
  %i.xx = icmp ne i64 %i.xw, 0
  %i.xy = or i1 %i.vb, %i.xx
  br i1 %i.xy, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.eg
  %i.xz = inttoptr i64 %i.uy to ptr               ; 5 uses
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !75 ; 3 uses
  %i.yb = and i64 %i.ya, 31
  %i.yc = icmp eq i64 %i.yb, 7
  br i1 %i.yc, label %bb.eh, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.eh:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.yd = and i64 %i.ya, 8192
  %.not.i.i165.i = icmp eq i64 %i.yd, 0
  br i1 %.not.i.i165.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ye = lshr i64 %i.ya, 15
  %i.yf = and i64 %i.ye, 127
  br label %rb_array_len.exit.i.i157

bb.ej:                                            ; preds = %bb.eh
  %i.yg = getelementptr i8, ptr %i.xz, i64 16
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i157

rb_array_len.exit.i.i157:                         ; preds = %bb.ej, %bb.ei
  %.0.i.i166.i = phi i64 [ %i.yf, %bb.ei ], [ %i.yh, %bb.ej ] ; 4 uses
  %i.yi = add i64 %.0.i.i166.i, 2147483648
  %.not.i1.i.i158 = icmp ult i64 %i.yi, 4294967296
  br i1 %.not.i1.i.i158, label %RARRAY_LENINT.exit.i159, label %bb.ek

bb.ek:                                            ; preds = %rb_array_len.exit.i.i157
  call void @rb_out_of_int(i64 noundef %.0.i.i166.i) #38
  unreachable

RARRAY_LENINT.exit.i159:                          ; preds = %rb_array_len.exit.i.i157
  %i.yj = trunc nsw i64 %.0.i.i166.i to i32
  %i.yk = add i32 %i.yj, -1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.yl = add i32 %.0137284.i, 1
  %i.ym = sext i32 %.0137284.i to i64
  %i.yn = call i64 @rb_ary_entry(i64 noundef %i.es, i64 noundef %i.ym) #44 ; 3 uses
  %i.yo = trunc i64 %i.yn to i1
  br i1 %i.yo, label %bb.el, label %bb.em

bb.el:                                            ; preds = %RARRAY_LENINT.exit.i159
  %i.yp = call i64 @rb_fix2int(i64 noundef %i.yn) #37
  br label %rb_num2int_inline.exit168.i

bb.em:                                            ; preds = %RARRAY_LENINT.exit.i159
  %i.yq = call i64 @rb_num2int(i64 noundef %i.yn) #37
  br label %rb_num2int_inline.exit168.i

rb_num2int_inline.exit168.i:                      ; preds = %bb.em, %bb.el
  %.0.i167.i = phi i64 [ %i.yp, %bb.el ], [ %i.yq, %bb.em ]
  %i.yr = trunc i64 %.0.i167.i to i32             ; 2 uses
  %i.ys = icmp slt i32 %i.yk, 0
  br i1 %i.ys, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %rb_num2int_inline.exit168.i
  %i.yt = load i64, ptr %i.xz, align 8, !tbaa !75
  %i.yu = and i64 %i.yt, 8192
  %.not.i.i169.i = icmp eq i64 %i.yu, 0
  br i1 %.not.i.i169.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yv = getelementptr i8, ptr %i.xz, i64 16
  br label %RARRAY_AREF.exit171.i

bb.ep:                                            ; preds = %bb.en
  %i.yw = getelementptr i8, ptr %i.xz, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !20
  br label %RARRAY_AREF.exit171.i

RARRAY_AREF.exit171.i:                            ; preds = %bb.ep, %bb.eo
  %.0.i.i170.i = phi ptr [ %i.yv, %bb.eo ], [ %i.yx, %bb.ep ]
  %i.yy = load i64, ptr %.0.i.i170.i, align 8, !tbaa !36
  br label %bb.eq

bb.eq:                                            ; preds = %RARRAY_AREF.exit171.i, %rb_num2int_inline.exit168.i
  %i.yz = phi i64 [ %i.yy, %RARRAY_AREF.exit171.i ], [ 4, %rb_num2int_inline.exit168.i ] ; 2 uses
  %i.za = load ptr, ptr @iseq_build_from_ary_body.insn_table, align 8, !tbaa !303
  %i.zb = call i32 @rb_st_lookup(ptr noundef %i.za, i64 noundef %i.yz, ptr noundef nonnull %i.c) #37
  %i.zc = icmp eq i32 %i.zb, 0
  br i1 %i.zc, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %.0133286.i, ptr noundef nonnull @.str.207, i64 noundef %i.yz)
  br label %bb.hs

bb.es:                                            ; preds = %bb.eq
  %i.zd = load i64, ptr %i.c, align 8, !tbaa !36  ; 2 uses
end_hunk_0
begin_hunk_1_@iseq_peephole_optimize:bb.a
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.fw = tail call fastcc i32 @remove_unreachable_chunk(ptr noundef %0, ptr noundef %i.fv) ; 0 uses
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %replace_destination.exit, %unref_destination.exit683, %ELEM_REMOVE.exit700, %bb.fg
  br label %.backedge

bb.au:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.fx = getelementptr i8, ptr %.02.i, i64 24
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !65
  %i.fz = icmp eq i32 %i.fy, 70
  br i1 %i.fz, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr i8, ptr %i.ec, i64 40     ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !273
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 8, !tbaa !273
  %.not.i681 = icmp eq i32 %i.gc, 0
  br i1 %.not.i681, label %bb.aw, label %unref_destination.exit683

bb.aw:                                            ; preds = %bb.av
  %i.gd = getelementptr i8, ptr %i.ec, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !34 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  store ptr %.05.i, ptr %i.gf, align 8, !tbaa !35
  br i1 %.not6.i, label %unref_destination.exit683, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gg = getelementptr i8, ptr %.05.i, i64 16
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !34
  br label %unref_destination.exit683

unref_destination.exit683:                        ; preds = %bb.av, %bb.aw, %bb.ax
  store i32 70, ptr %i.a, align 8, !tbaa !65
  store i32 0, ptr %i.j, align 4, !tbaa !80
  %i.gh = getelementptr i8, ptr %.02.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.gh, i64 12, i1 false), !tbaa.struct !812
  br label %.backedge.backedge

bb.ay:                                            ; preds = %bb.au
  %i.gi = load ptr, ptr %i.e, align 8, !tbaa !813 ; 7 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !64
  %i.gk = icmp eq i32 %i.gj, 2
  br i1 %i.gk, label %bb.az, label %ELEM_REMOVE.exit700

bb.az:                                            ; preds = %bb.ay
  %i.gl = getelementptr i8, ptr %i.gi, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !65 ; 2 uses
  %.off = add i32 %i.gm, -73
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ba, label %ELEM_REMOVE.exit700

bb.ba:                                            ; preds = %bb.az
  %i.gn = getelementptr i8, ptr %i.gi, i64 40
  %.val658 = load ptr, ptr %i.gn, align 8, !tbaa !69 ; 2 uses
  %.val658.val = load i64, ptr %.val658, align 8, !tbaa !36 ; 2 uses
  %i.go = inttoptr i64 %.val658.val to ptr        ; 3 uses
  %.0.in4.i684 = getelementptr i8, ptr %i.go, i64 8
  %.05.i685 = load ptr, ptr %.0.in4.i684, align 8, !tbaa !35 ; 4 uses
  %.not6.i686 = icmp eq ptr %.05.i685, null       ; 2 uses
  br i1 %.not6.i686, label %get_destination_insn.exit695, label %.lr.ph.i687

.lr.ph.i687:                                      ; preds = %bb.ba, %bb.bc
  %.08.i688 = phi ptr [ %.0.i693, %bb.bc ], [ %.05.i685, %bb.ba ] ; 6 uses
  %.0137.i689 = phi i32 [ %.1.i691, %bb.bc ], [ 0, %bb.ba ] ; 3 uses
  %i.gp = load i32, ptr %.08.i688, align 8, !tbaa !64
  switch i32 %i.gp, label %bb.bc [
    i32 4, label %bb.bb
    i32 2, label %bb.bd
    i32 3, label %get_destination_insn.exit695
  ]

bb.bb:                                            ; preds = %.lr.ph.i687
  %i.gq = getelementptr i8, ptr %.08.i688, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !105
  %i.gs = or i32 %i.gr, %.0137.i689
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i687
  %.1.i691 = phi i32 [ %.0137.i689, %.lr.ph.i687 ], [ %i.gs, %bb.bb ]
  %.0.in.i692 = getelementptr i8, ptr %.08.i688, i64 8
  %.0.i693 = load ptr, ptr %.0.in.i692, align 8, !tbaa !35 ; 2 uses
  %.not.i694 = icmp eq ptr %.0.i693, null
  br i1 %.not.i694, label %get_destination_insn.exit695, label %.lr.ph.i687, !llvm.loop !811

bb.bd:                                            ; preds = %.lr.ph.i687
  %i.gt = getelementptr i8, ptr %.08.i688, i64 56 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !81
  %i.gv = or i32 %i.gu, %.0137.i689
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !81
  br label %get_destination_insn.exit695

get_destination_insn.exit695:                     ; preds = %.lr.ph.i687, %bb.bc, %bb.ba, %bb.bd
  %.02.i690 = phi ptr [ %.08.i688, %bb.bd ], [ null, %bb.ba ], [ %.08.i688, %.lr.ph.i687 ], [ null, %bb.bc ] ; 2 uses
  %.not600 = icmp eq ptr %.0.i674, %.02.i690
  br i1 %.not600, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %get_destination_insn.exit695
  %i.gw = getelementptr i8, ptr %i.gi, i64 24
  %i.gx = getelementptr i8, ptr %i.gi, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !68 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !64
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hb = getelementptr i8, ptr %i.gy, i64 40
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !273
  %i.hd = icmp slt i32 %i.hc, 2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.he = phi i1 [ %i.hd, %bb.bf ], [ true, %bb.be ]
  %i.hf = icmp eq i32 %i.gm, 73
  %i.hg = select i1 %i.hf, i32 74, i32 73
  store i32 %i.hg, ptr %i.gw, align 8, !tbaa !65
  %.not1070 = icmp eq i64 %.val658.val, %.val659.val
  br i1 %.not1070, label %.critedge651, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hh = getelementptr i8, ptr %i.go, i64 40     ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !273
  %i.hj = add i32 %i.hi, -1
  store i32 %i.hj, ptr %i.hh, align 8, !tbaa !273
  %i.hk = getelementptr i8, ptr %i.ec, i64 40     ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !273
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !273
  store i64 %.val659.val, ptr %.val658, align 8, !tbaa !36
  %i.hn = load i32, ptr %i.hh, align 8, !tbaa !273
  %.not.i696 = icmp eq i32 %i.hn, 0
  br i1 %.not.i696, label %bb.bi, label %replace_destination.exit698

bb.bi:                                            ; preds = %bb.bh
  %i.ho = getelementptr i8, ptr %i.go, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !34 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  store ptr %.05.i685, ptr %i.hq, align 8, !tbaa !35
  br i1 %.not6.i686, label %replace_destination.exit698, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hr = getelementptr i8, ptr %.05.i685, i64 16
  store ptr %i.hp, ptr %i.hr, align 8, !tbaa !34
  br label %replace_destination.exit698

replace_destination.exit698:                      ; preds = %bb.bh, %bb.bi, %bb.bj
  br i1 %i.he, label %bb.bk, label %.critedge651

bb.bk:                                            ; preds = %replace_destination.exit698
  %i.hs = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  store ptr %i.hs, ptr %i.hu, align 8, !tbaa !35
  %.not.i699 = icmp eq ptr %i.hs, null
  br i1 %.not.i699, label %.critedge651, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hv = getelementptr i8, ptr %i.hs, i64 16
  store ptr %i.ht, ptr %i.hv, align 8, !tbaa !34
  br label %.critedge651

bb.bm:                                            ; preds = %get_destination_insn.exit695
  %i.hw = icmp eq ptr %.02.i, %.02.i690
  br i1 %i.hw, label %bb.bn, label %ELEM_REMOVE.exit700

bb.bn:                                            ; preds = %bb.bm
  %i.hx = load i32, ptr %i.f, align 8, !tbaa !92
  %i.hy = load i32, ptr %i.g, align 4, !tbaa !141
  %i.hz = tail call fastcc ptr @new_insn_core(ptr noundef %0, i32 noundef %i.hx, i32 noundef %i.hy, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.ia = getelementptr i8, ptr %i.gi, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !34 ; 3 uses
  %i.ic = getelementptr i8, ptr %i.hz, i64 16
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !34
  %i.id = getelementptr i8, ptr %i.gi, i64 8      ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !35 ; 2 uses
  %i.if = getelementptr i8, ptr %i.hz, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !35
  %.not.i701 = icmp eq ptr %i.ib, null
  br i1 %.not.i701, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ig = getelementptr i8, ptr %i.ib, i64 8
  store ptr %i.hz, ptr %i.ig, align 8, !tbaa !35
  %.pre.i702 = load ptr, ptr %i.id, align 8, !tbaa !35
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ih = phi ptr [ %.pre.i702, %bb.bo ], [ %i.ie, %bb.bn ] ; 2 uses
  %.not11.i = icmp eq ptr %i.ih, null
  br i1 %.not11.i, label %ELEM_REMOVE.exit700, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  store ptr %i.hz, ptr %i.ii, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit700

ELEM_REMOVE.exit700:                              ; preds = %bb.bm, %bb.bp, %bb.bq, %bb.az, %bb.ay
  %i.ij = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.ik = tail call fastcc i32 @remove_unreachable_chunk(ptr noundef %0, ptr noundef %i.ij)
  %.not601 = icmp eq i32 %i.ik, 0
  br i1 %.not601, label %ELEM_REMOVE.exit700.ELEM_REMOVE.exit.thread935_crit_edge, label %.backedge.backedge

ELEM_REMOVE.exit700.ELEM_REMOVE.exit.thread935_crit_edge: ; preds = %ELEM_REMOVE.exit700
  %.pre = load i32, ptr %i.a, align 8, !tbaa !65
  br label %ELEM_REMOVE.exit.thread935

ELEM_REMOVE.exit.thread935:                       ; preds = %ELEM_REMOVE.exit700.ELEM_REMOVE.exit.thread935_crit_edge, %optimize_checktype.exit
  %i.il = phi i32 [ %.pre, %ELEM_REMOVE.exit700.ELEM_REMOVE.exit.thread935_crit_edge ], [ %i.ea, %optimize_checktype.exit ] ; 2 uses
  %i.im = icmp eq i32 %i.il, 38
  br i1 %i.im, label %.preheader1079, label %insn_has_label_before.exit

.preheader1079:                                   ; preds = %ELEM_REMOVE.exit.thread935, %bb.br
  %.pn.i703 = phi ptr [ %.0.i705, %bb.br ], [ %1, %ELEM_REMOVE.exit.thread935 ]
  %.0.in.i704 = getelementptr i8, ptr %.pn.i703, i64 16
  %.0.i705 = load ptr, ptr %.0.in.i704, align 8, !tbaa !34 ; 9 uses
  %.not.i706 = icmp eq ptr %.0.i705, null
  br i1 %.not.i706, label %ELEM_REMOVE.exit740, label %bb.br

bb.br:                                            ; preds = %.preheader1079
  %i.in = load i32, ptr %.0.i705, align 8, !tbaa !64
  %i.io = and i32 %i.in, -2
  %switch.i707 = icmp eq i32 %i.io, 2
  br i1 %switch.i707, label %get_prev_insn.exit, label %.preheader1079

get_prev_insn.exit:                               ; preds = %bb.br
  %i.ip = getelementptr i8, ptr %.0.i705, i64 24
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !65
  switch i32 %i.iq, label %ELEM_REMOVE.exit740 [
    i32 21, label %is_frozen_putstring.exit.thread940
    i32 22, label %is_frozen_putstring.exit.thread940
    i32 19, label %bb.bs
  ]

is_frozen_putstring.exit.thread940:               ; preds = %get_prev_insn.exit, %get_prev_insn.exit
  %i.ir = getelementptr i8, ptr %.0.i705, i64 40
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !69
  %i.it = load i64, ptr %i.is, align 8, !tbaa !36
  br label %bb.bt

bb.bs:                                            ; preds = %get_prev_insn.exit
  %i.iu = getelementptr i8, ptr %.0.i705, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !69
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !36 ; 4 uses
  %i.ix = icmp eq i64 %i.iw, 0
  %i.iy = and i64 %i.iw, 7
  %i.iz = icmp ne i64 %i.iy, 0
  %i.ja = or i1 %i.ix, %i.iz
  br i1 %i.ja, label %ELEM_REMOVE.exit740, label %is_frozen_putstring.exit

is_frozen_putstring.exit:                         ; preds = %bb.bs
  %i.jb = inttoptr i64 %i.iw to ptr
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !75
  %i.jd = and i64 %i.jc, 31
  %.not1064 = icmp eq i64 %i.jd, 5
  br i1 %.not1064, label %bb.bt, label %ELEM_REMOVE.exit740

bb.bt:                                            ; preds = %is_frozen_putstring.exit.thread940, %is_frozen_putstring.exit
  %.3944 = phi i64 [ %i.it, %is_frozen_putstring.exit.thread940 ], [ %i.iw, %is_frozen_putstring.exit ]
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %.pn.i709 = phi ptr [ %.0.i705, %bb.bt ], [ %.0.i711, %bb.bv ]
  %.0.in.i710 = getelementptr i8, ptr %.pn.i709, i64 16
  %.0.i711 = load ptr, ptr %.0.in.i710, align 8, !tbaa !34 ; 8 uses
  %.not.i712 = icmp eq ptr %.0.i711, null
  br i1 %.not.i712, label %ELEM_REMOVE.exit740, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.je = load i32, ptr %.0.i711, align 8, !tbaa !64
  %i.jf = and i32 %i.je, -2
  %switch.i713 = icmp eq i32 %i.jf, 2
  br i1 %switch.i713, label %get_prev_insn.exit714, label %bb.bu

get_prev_insn.exit714:                            ; preds = %bb.bv
  %i.jg = getelementptr i8, ptr %.0.i711, i64 24
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !65
  switch i32 %i.jh, label %ELEM_REMOVE.exit740 [
    i32 21, label %is_frozen_putstring.exit716.thread948
    i32 22, label %is_frozen_putstring.exit716.thread948
    i32 19, label %bb.bw
  ]

is_frozen_putstring.exit716.thread948:            ; preds = %get_prev_insn.exit714, %get_prev_insn.exit714
  %i.ji = getelementptr i8, ptr %.0.i711, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !69
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !36
  br label %bb.bx

bb.bw:                                            ; preds = %get_prev_insn.exit714
  %i.jl = getelementptr i8, ptr %.0.i711, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !69
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !36 ; 4 uses
  %i.jo = icmp eq i64 %i.jn, 0
  %i.jp = and i64 %i.jn, 7
  %i.jq = icmp ne i64 %i.jp, 0
  %i.jr = or i1 %i.jo, %i.jq
  br i1 %i.jr, label %ELEM_REMOVE.exit740, label %is_frozen_putstring.exit716

is_frozen_putstring.exit716:                      ; preds = %bb.bw
  %i.js = inttoptr i64 %i.jn to ptr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !75
  %i.ju = and i64 %i.jt, 31
  %.not1065 = icmp eq i64 %i.ju, 5
  br i1 %.not1065, label %bb.bx, label %ELEM_REMOVE.exit740

bb.bx:                                            ; preds = %is_frozen_putstring.exit716.thread948, %is_frozen_putstring.exit716
  %.3932952 = phi i64 [ %i.jk, %is_frozen_putstring.exit716.thread948 ], [ %i.jn, %is_frozen_putstring.exit716 ]
  %.09.in11.i = getelementptr i8, ptr %.0.i711, i64 16 ; 2 uses
  %.0912.i = load ptr, ptr %.09.in11.i, align 8, !tbaa !34 ; 2 uses
  %.not13.i = icmp eq ptr %.0912.i, null
  br i1 %.not13.i, label %.loopexit1076, label %.lr.ph.i717

.lr.ph.i717:                                      ; preds = %bb.bx, %bb.bz
  %.0914.i = phi ptr [ %.09.i, %bb.bz ], [ %.0912.i, %bb.bx ] ; 3 uses
  %i.jv = load i32, ptr %.0914.i, align 8, !tbaa !64
  switch i32 %i.jv, label %bb.bz [
    i32 1, label %bb.by
    i32 2, label %.loopexit1076
  ]

bb.by:                                            ; preds = %.lr.ph.i717
  %i.jw = getelementptr i8, ptr %.0914.i, i64 40
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !273
  %i.jy = icmp slt i32 %i.jx, 1
  br i1 %i.jy, label %bb.bz, label %ELEM_REMOVE.exit740

bb.bz:                                            ; preds = %bb.by, %.lr.ph.i717
  %.09.in.i = getelementptr i8, ptr %.0914.i, i64 16
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !34 ; 2 uses
  %.not.i718 = icmp eq ptr %.09.i, null
  br i1 %.not.i718, label %.loopexit1076, label %.lr.ph.i717, !llvm.loop !814

.loopexit1076:                                    ; preds = %.lr.ph.i717, %bb.bz, %bb.bx
  %.09.in11.i719 = getelementptr i8, ptr %.0.i705, i64 16 ; 2 uses
  %.0912.i720 = load ptr, ptr %.09.in11.i719, align 8, !tbaa !34 ; 2 uses
  %.not13.i721 = icmp eq ptr %.0912.i720, null
  br i1 %.not13.i721, label %.loopexit1075, label %.lr.ph.i722

.lr.ph.i722:                                      ; preds = %.loopexit1076, %bb.cb
  %.0914.i723 = phi ptr [ %.09.i726, %bb.cb ], [ %.0912.i720, %.loopexit1076 ] ; 3 uses
  %i.jz = load i32, ptr %.0914.i723, align 8, !tbaa !64
  switch i32 %i.jz, label %bb.cb [
    i32 1, label %bb.ca
    i32 2, label %.loopexit1075
  ]

bb.ca:                                            ; preds = %.lr.ph.i722
  %i.ka = getelementptr i8, ptr %.0914.i723, i64 40
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !273
  %i.kc = icmp slt i32 %i.kb, 1
  br i1 %i.kc, label %bb.cb, label %ELEM_REMOVE.exit740

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i722
  %.09.in.i725 = getelementptr i8, ptr %.0914.i723, i64 16
  %.09.i726 = load ptr, ptr %.09.in.i725, align 8, !tbaa !34 ; 2 uses
  %.not.i727 = icmp eq ptr %.09.i726, null
  br i1 %.not.i727, label %.loopexit1075, label %.lr.ph.i722, !llvm.loop !814

.loopexit1075:                                    ; preds = %.lr.ph.i722, %bb.cb, %.loopexit1076
  %i.kd = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !36
  %i.kf = tail call i64 @rb_fix2int(i64 noundef %i.ke) #37
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = tail call i64 @rb_range_new(i64 noundef %.3932952, i64 noundef %.3944, i32 noundef %i.kg) #37
  %i.ki = tail call i64 @rb_obj_set_shareable(i64 noundef %i.kh) #37 ; 4 uses
  %i.kj = getelementptr i8, ptr %.0.i711, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !35 ; 3 uses
  %i.kl = load ptr, ptr %.09.in11.i, align 8, !tbaa !34 ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  store ptr %i.kk, ptr %i.km, align 8, !tbaa !35
  %.not.i729 = icmp eq ptr %i.kk, null
  br i1 %.not.i729, label %ELEM_REMOVE.exit730, label %bb.cc

bb.cc:                                            ; preds = %.loopexit1075
  %i.kn = getelementptr i8, ptr %i.kk, i64 16
  store ptr %i.kl, ptr %i.kn, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit730

ELEM_REMOVE.exit730:                              ; preds = %.loopexit1075, %bb.cc
  %i.ko = getelementptr i8, ptr %.0.i705, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !35 ; 3 uses
  %i.kq = load ptr, ptr %.09.in11.i719, align 8, !tbaa !34 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  store ptr %i.kp, ptr %i.kr, align 8, !tbaa !35
  %.not.i731 = icmp eq ptr %i.kp, null
  br i1 %.not.i731, label %ELEM_REMOVE.exit732, label %bb.cd

bb.cd:                                            ; preds = %ELEM_REMOVE.exit730
  %i.ks = getelementptr i8, ptr %i.kp, i64 16
  store ptr %i.kq, ptr %i.ks, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit732

ELEM_REMOVE.exit732:                              ; preds = %ELEM_REMOVE.exit730, %bb.cd
  store i32 19, ptr %i.a, align 8, !tbaa !65
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !69
  store i64 %i.ki, ptr %i.kt, align 8, !tbaa !36
  %i.ku = icmp eq i64 %i.ki, 0
  %i.kv = and i64 %i.ki, 7
  %i.kw = icmp ne i64 %i.kv, 0
  %i.kx = or i1 %i.ku, %i.kw
end_hunk_1
begin_hunk_2_@compile_hash:bb.a
  %i.mh = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.mi = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.mg, i32 noundef %i.mh, i32 noundef 37, i32 noundef 1, i64 noundef 1) ; 3 uses
  %i.mj = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mi, i64 16
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !34
  %i.ml = getelementptr i8, ptr %i.mj, i64 8
  store ptr %i.mi, ptr %i.ml, align 8, !tbaa !35
  store ptr %i.mi, ptr %i.ad, align 8, !tbaa !11
  br label %bb.ar

.thread458:                                       ; preds = %bb.ao, %bb.ap
  %i.mm = phi i1 [ %i.lw, %bb.ap ], [ %i.ls, %bb.ao ]
  %i.mn = phi i1 [ %i.lz, %bb.ap ], [ %i.lv, %bb.ao ]
  %or.cond9 = and i1 %i.ag, %i.mn
  br i1 %or.cond9, label %iseq_compile_each.exit394, label %nd_line.exit397

iseq_compile_each.exit394:                        ; preds = %.thread458
  %i.mo = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.ll, i32 noundef 0), !inline_history !174 ; 0 uses
  br label %bb.ar

nd_line.exit397:                                  ; preds = %.thread458
  %i.mp = load i64, ptr %2, align 8, !tbaa !176
  %i.mq = lshr i64 %i.mp, 15
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.mt = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.mr, i32 noundef %i.ms, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.mu = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mt, i64 16
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !34
  %i.mw = getelementptr i8, ptr %i.mu, i64 8
  store ptr %i.mt, ptr %i.mw, align 8, !tbaa !35
  store ptr %i.mt, ptr %i.ad, align 8, !tbaa !11
  %i.mx = load i64, ptr %2, align 8, !tbaa !176
  %i.my = lshr i64 %i.mx, 15
  %i.mz = trunc i64 %i.my to i32                  ; 2 uses
  %i.na = load i32, ptr %i.ae, align 8, !tbaa !278 ; 2 uses
  br i1 %i.mm, label %nd_line.exit400, label %nd_line.exit403

nd_line.exit400:                                  ; preds = %nd_line.exit397
  %i.nb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.mz, i32 noundef %i.na, i32 noundef 37, i32 noundef 1, i64 noundef 1)
  br label %nd_line.exit413

nd_line.exit403:                                  ; preds = %nd_line.exit397
  %i.nc = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.mz, i32 noundef %i.na, i32 noundef 42, i32 noundef 0, ptr noundef null)
  br label %nd_line.exit413

nd_line.exit413:                                  ; preds = %nd_line.exit403, %nd_line.exit400
  %.sink594 = phi ptr [ %i.nc, %nd_line.exit403 ], [ %i.nb, %nd_line.exit400 ] ; 3 uses
  %i.nd = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ne = getelementptr i8, ptr %.sink594, i64 16
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !34
  %i.nf = getelementptr i8, ptr %i.nd, i64 8
  store ptr %.sink594, ptr %i.nf, align 8, !tbaa !35
  store ptr %.sink594, ptr %i.ad, align 8, !tbaa !11
  %i.ng = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ll, i32 noundef 0), !inline_history !174 ; 0 uses
  %i.nh = load i64, ptr %2, align 8, !tbaa !176
  %i.ni = lshr i64 %i.nh, 15
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.nl = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.nj, i32 noundef %i.nk, i64 noundef 168, i64 noundef 5, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.nm = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nl, i64 16
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !34
  %i.no = getelementptr i8, ptr %i.nm, i64 8
  store ptr %i.nl, ptr %i.no, align 8, !tbaa !35
  store ptr %i.nl, ptr %i.ad, align 8, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %nd_line.exit388, %iseq_compile_each.exit385, %nd_line.exit413, %iseq_compile_each.exit394, %bb.ag, %iseq_compile_each.exit345
  %.7 = phi i32 [ 0, %bb.ag ], [ %.5244490, %iseq_compile_each.exit345 ], [ 0, %iseq_compile_each.exit394 ], [ 0, %nd_line.exit413 ], [ 0, %iseq_compile_each.exit385 ], [ 0, %nd_line.exit388 ], [ 0, %bb.aq ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.ag ], [ %i.hq, %iseq_compile_each.exit345 ], [ 0, %iseq_compile_each.exit394 ], [ 0, %nd_line.exit413 ], [ 0, %iseq_compile_each.exit385 ], [ 0, %nd_line.exit388 ], [ 0, %bb.aq ] ; 2 uses
  %i.np = add i32 %.4251489, -1                   ; 2 uses
  %i.nq = getelementptr i8, ptr %.5492, i64 48
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !943
  %i.ns = getelementptr i8, ptr %i.nr, i64 48
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !943 ; 2 uses
  %.not269 = icmp eq i32 %i.np, 0
  br i1 %.not269, label %.loopexit, label %.lr.ph493, !llvm.loop !1078

bb.as:                                            ; preds = %.loopexit
  %.not258 = icmp eq i32 %.4237.lcssa, 0
  br i1 %.not258, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not259 = icmp eq i32 %.5244.lcssa, 0
  br i1 %.not259, label %nd_line.exit424, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nu = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i414 = icmp eq ptr %i.nu, null
  br i1 %.not.i414, label %APPEND_LIST.exit415, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nv = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  store ptr %i.nu, ptr %i.nw, align 8, !tbaa !35
  %i.nx = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ny = getelementptr i8, ptr %i.nx, i64 16
  store ptr %i.nv, ptr %i.ny, align 8, !tbaa !34
  %i.nz = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.nz, ptr %i.ad, align 8, !tbaa !11
  br label %APPEND_LIST.exit415

APPEND_LIST.exit415:                              ; preds = %bb.av, %bb.au
  %i.oa = load i64, ptr %2, align 8, !tbaa !176
  %i.ob = lshr i64 %i.oa, 15
  %i.oc = trunc i64 %i.ob to i32
  %i.od = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.oe = sext i32 %.4237.lcssa to i64
  %i.of = shl nsw i64 %i.oe, 1
  %i.og = or disjoint i64 %i.of, 1
  %i.oh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.oc, i32 noundef %i.od, i32 noundef 37, i32 noundef 1, i64 noundef %i.og)
  br label %bb.ax

nd_line.exit424:                                  ; preds = %bb.at
  %i.oi = load i64, ptr %2, align 8, !tbaa !176
  %i.oj = lshr i64 %i.oi, 15
  %i.ok = trunc i64 %i.oj to i32
  %i.ol = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.om = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ok, i32 noundef %i.ol, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.on = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.oo = getelementptr i8, ptr %i.om, i64 16
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !34
  %i.op = getelementptr i8, ptr %i.on, i64 8
  store ptr %i.om, ptr %i.op, align 8, !tbaa !35
  store ptr %i.om, ptr %i.ad, align 8, !tbaa !11
  %i.oq = load i64, ptr %2, align 8, !tbaa !176
  %i.or = lshr i64 %i.oq, 15
  %i.os = trunc i64 %i.or to i32
  %i.ot = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ou = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.os, i32 noundef %i.ot, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.ov = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ou, i64 16
  store ptr %i.ov, ptr %i.ow, align 8, !tbaa !34
  %i.ox = getelementptr i8, ptr %i.ov, i64 8
  store ptr %i.ou, ptr %i.ox, align 8, !tbaa !35
  store ptr %i.ou, ptr %i.ad, align 8, !tbaa !11
  %i.oy = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i426 = icmp eq ptr %i.oy, null
  br i1 %.not.i426, label %nd_line.exit430, label %bb.aw

bb.aw:                                            ; preds = %nd_line.exit424
  %i.oz = getelementptr i8, ptr %i.ou, i64 8
  store ptr %i.oy, ptr %i.oz, align 8, !tbaa !35
  %i.pa = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.pb = getelementptr i8, ptr %i.pa, i64 16
  store ptr %i.ou, ptr %i.pb, align 8, !tbaa !34
  %i.pc = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.pc, ptr %i.ad, align 8, !tbaa !11
  br label %nd_line.exit430

nd_line.exit430:                                  ; preds = %nd_line.exit424, %bb.aw
  %i.pd = load i64, ptr %2, align 8, !tbaa !176
  %i.pe = lshr i64 %i.pd, 15
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ph = add i32 %.4237.lcssa, 1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = shl nsw i64 %i.pi, 1
  %i.pk = or disjoint i64 %i.pj, 1
  %i.pl = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.pf, i32 noundef %i.pg, i64 noundef 167, i64 noundef %i.pk, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.ax

bb.ax:                                            ; preds = %nd_line.exit430, %APPEND_LIST.exit415
  %.sink600 = phi ptr [ %i.pl, %nd_line.exit430 ], [ %i.oh, %APPEND_LIST.exit415 ] ; 3 uses
  %i.pm = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.pn = getelementptr i8, ptr %.sink600, i64 16
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !34
  %i.po = getelementptr i8, ptr %i.pm, i64 8
  store ptr %.sink600, ptr %i.po, align 8, !tbaa !35
  store ptr %.sink600, ptr %i.ad, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %.loopexit.thread, %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit463

.loopexit463:                                     ; preds = %iseq_compile_each.exit, %nd_line.exit286, %bb.c, %nd_line.exit, %.thread
  %.1 = phi i32 [ -1, %nd_line.exit286 ], [ 0, %bb.c ], [ 1, %.thread ], [ 0, %nd_line.exit ], [ 1, %iseq_compile_each.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_return(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 5 uses
  %i.d = getelementptr i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1079 ; 3 uses
  %i.f = and i32 %i.c, -2
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 3 uses
  %.not61160 = icmp eq ptr %i.i, null
  br i1 %.not61160, label %._crit_edge.loopexit, label %.lr.ph161

.lr.ph:                                           ; preds = %.lr.ph161
  %i.j = getelementptr i8, ptr %i.n, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 3 uses
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %._crit_edge.loopexit, label %.lr.ph161, !llvm.loop !1081

.lr.ph161:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47   ; 3 uses
  %i.p = and i32 %i.o, -2
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.lr.ph, label %.._crit_edge.loopexit_crit_edge, !llvm.loop !1081

.._crit_edge.loopexit_crit_edge:                  ; preds = %.lr.ph161
  br label %._crit_edge.loopexit, !llvm.loop !1081

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.._crit_edge.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa159 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.l, %.._crit_edge.loopexit_crit_edge ], [ %i.k, %.lr.ph ]
  %.054.lcssa.ph = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.o, %.._crit_edge.loopexit_crit_edge ], [ %i.o, %.lr.ph ]
  %i.r = icmp eq ptr %.lcssa159, %0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.054.lcssa = phi i32 [ %i.c, %bb.b ], [ %.054.lcssa.ph, %._crit_edge.loopexit ]
  %.156 = phi i1 [ true, %bb.b ], [ %i.r, %._crit_edge.loopexit ]
  switch i32 %.054.lcssa, label %bb.f [
    i32 0, label %bb.c
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %._crit_edge, %._crit_edge
  %.not62 = icmp eq ptr %i.e, null
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.191) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = icmp eq i32 %i.c, 1
  %or.cond = or i1 %.156, %i.s
  br i1 %or.cond, label %.thread, label %bb.m

bb.f:                                             ; preds = %._crit_edge
  %.old = icmp eq i32 %i.c, 1
  br i1 %.old, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.e, %bb.f
  %i.t = load i64, ptr %0, align 8, !tbaa !37
  %i.u = and i64 %i.t, 262144
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i:                     ; preds = %bb.g, %.thread
  %.0.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ null, %.thread ]
  %i.x = getelementptr i8, ptr %.0.i.i.i.i, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 48
  %i.ad = getelementptr i8, ptr %i.y, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 4 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i
  %i.ah = icmp ult i32 %i.ae, 48
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.i
  %.027.i.i.i.i = phi i32 [ %i.aj, %bb.i ], [ %i.ae, %.preheader.i.i.i.i ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ak = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.i
  %i.al = zext nneg i32 %i.aj to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.ae, %.preheader.i.i.i.i ], [ %i.aj, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.af, %.preheader.i.i.i.i ], [ %i.al, %._crit_edge.i.i.loopexit.i.i ]
  %i.am = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.an = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.am, i64 noundef 1) #39 ; 6 uses
  store ptr %i.an, ptr %i.y, align 8, !tbaa !40
  store ptr %i.an, ptr %i.x, align 8, !tbaa !40
  store ptr null, ptr %i.an, align 8, !tbaa !40
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !7
  %i.ap = getelementptr i8, ptr %i.an, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ap, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.aq = phi i32 [ %i.aa, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.y, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ %i.an, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.as = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 10 uses
  %i.av = add i32 %i.aq, 48
  store i32 %i.av, ptr %i.as, align 8, !tbaa !7
  store i32 1, ptr %i.au, align 8, !tbaa !193
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !194
  %i.ax = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr i8, ptr %i.ay, i64 132    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !195 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !195
  %i.bc = getelementptr i8, ptr %i.au, i64 24
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !95
  %i.bd = getelementptr i8, ptr %i.au, i64 44     ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, -16
  store i8 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr i8, ptr %i.au, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bg, align 4, !tbaa !7
  %i.bh = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.au, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !34
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !35
  store ptr %i.au, ptr %i.bh, align 8, !tbaa !11
  %i.bl = load i64, ptr %2, align 8, !tbaa !176
  %i.bm = lshr i64 %i.bl, 15
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = load i64, ptr %0, align 8, !tbaa !37
  %i.bp = and i64 %i.bo, 262144
  %.not.i.i.i.i66 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i66, label %ISEQ_COMPILE_DATA.exit.i.i.i67, label %bb.j

bb.j:                                             ; preds = %new_label_body.exit
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i67

ISEQ_COMPILE_DATA.exit.i.i.i67:                   ; preds = %bb.j, %new_label_body.exit
  %.0.i.i.i.i68 = phi ptr [ %i.bq, %bb.j ], [ null, %new_label_body.exit ]
  %i.br = getelementptr i8, ptr %.0.i.i.i.i68, i64 96 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !40 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !7  ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 40
  %i.bx = getelementptr i8, ptr %i.bs, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7  ; 4 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bw, %i.bz
  br i1 %i.ca, label %.preheader.i.i.i.i70, label %new_adjust_body.exit

.preheader.i.i.i.i70:                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i67
  %i.cb = icmp ult i32 %i.by, 40
  br i1 %i.cb, label %.lr.ph.i.i.i.i74, label %._crit_edge.i.i.i.i71

.lr.ph.i.i.i.i74:                                 ; preds = %.preheader.i.i.i.i70, %bb.l
  %.027.i.i.i.i75 = phi i32 [ %i.cd, %bb.l ], [ %i.by, %.preheader.i.i.i.i70 ] ; 3 uses
  %i.cc = icmp samesign ugt i32 %.027.i.i.i.i75, 1073741822
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i74
  tail call void @rb_memerror() #38
  unreachable

bb.l:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.cd = shl nuw nsw i32 %.027.i.i.i.i75, 1      ; 3 uses
  %i.ce = icmp samesign ult i32 %.027.i.i.i.i75, 20
  br i1 %i.ce, label %.lr.ph.i.i.i.i74, label %._crit_edge.i.i.loopexit.i.i76, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i76:                   ; preds = %bb.l
  %i.cf = zext nneg i32 %i.cd to i64
  br label %._crit_edge.i.i.i.i71

._crit_edge.i.i.i.i71:                            ; preds = %._crit_edge.i.i.loopexit.i.i76, %.preheader.i.i.i.i70
  %.0.lcssa.i.i.i.i72 = phi i32 [ %i.by, %.preheader.i.i.i.i70 ], [ %i.cd, %._crit_edge.i.i.loopexit.i.i76 ]
  %.lcssa.i.i.i.i73 = phi i64 [ %i.bz, %.preheader.i.i.i.i70 ], [ %i.cf, %._crit_edge.i.i.loopexit.i.i76 ]
  %i.cg = add nuw nsw i64 %.lcssa.i.i.i.i73, 16
  %i.ch = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cg, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ch, ptr %i.bs, align 8, !tbaa !40
  store ptr %i.ch, ptr %i.br, align 8, !tbaa !40
  store ptr null, ptr %i.ch, align 8, !tbaa !40
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store i32 0, ptr %i.ci, align 8, !tbaa !7
  %i.cj = getelementptr i8, ptr %i.ch, i64 12
  store i32 %.0.lcssa.i.i.i.i72, ptr %i.cj, align 4, !tbaa !7
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !11
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i67, %._crit_edge.i.i.i.i71
  %i.ck = phi ptr [ %.pre, %._crit_edge.i.i.i.i71 ], [ %i.au, %ISEQ_COMPILE_DATA.exit.i.i.i67 ] ; 2 uses
  %i.cl = phi i32 [ 0, %._crit_edge.i.i.i.i71 ], [ %i.bu, %ISEQ_COMPILE_DATA.exit.i.i.i67 ] ; 2 uses
  %.022.i.i.i.i69 = phi ptr [ %i.ch, %._crit_edge.i.i.i.i71 ], [ %i.bs, %ISEQ_COMPILE_DATA.exit.i.i.i67 ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.022.i.i.i.i69, i64 16
  %i.cn = getelementptr i8, ptr %.022.i.i.i.i69, i64 8
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr i8, ptr %i.cm, i64 %i.co  ; 7 uses
  %i.cq = add i32 %i.cl, 40
  store i32 %i.cq, ptr %i.cn, align 8, !tbaa !7
  store i32 3, ptr %i.cp, align 8, !tbaa !965
  %i.cr = getelementptr i8, ptr %i.cp, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !966
  %i.cs = getelementptr i8, ptr %i.cp, i64 24
end_hunk_2
begin_hunk_3_@pm_compile_rescue_node:bb.a
  %i.hq = getelementptr i8, ptr %i.hf, i64 8
  store ptr %i.hk, ptr %i.hq, align 8, !tbaa !35
  store ptr %i.hk, ptr %i.gb, align 8, !tbaa !11
  %i.hr = getelementptr i8, ptr %1, i64 80
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !1428 ; 2 uses
  %.not104 = icmp eq ptr %i.hs, null
  br i1 %.not104, label %bb.y, label %bb.s

bb.s:                                             ; preds = %new_trace_body.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.ht, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %7, ptr %i.hu, align 8, !tbaa !11
  call fastcc void @pm_compile_target_node(ptr noundef nonnull %0, ptr noundef nonnull %i.hs, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %5, ptr noundef null)
  %i.hv = load i32, ptr %2, align 4, !tbaa !553
  %i.hw = load i32, ptr %i.fx, align 4, !tbaa !556
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 176
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !275
  %i.ia = icmp eq ptr %i.hz, %0
  br i1 %i.ia, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ib = getelementptr i8, ptr %i.hx, i64 16
  %i.ic = load i16, ptr %i.ib, align 8
  %i.id = and i16 %i.ic, 64
  %.not12.i.i138 = icmp eq i16 %i.id, 0
  br i1 %.not12.i.i138, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ie = getelementptr i8, ptr %i.hx, i64 240
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !175
  %i.ig = getelementptr i8, ptr %i.hx, i64 44
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !231
  %i.ii = sub i32 %i.if, %i.ih
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %pm_iseq_add_getlocal.exit139, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  br label %pm_iseq_add_getlocal.exit139

pm_iseq_add_getlocal.exit139:                     ; preds = %bb.u, %bb.v
  %.sink34.i137 = phi i32 [ 1, %bb.v ], [ 3, %bb.u ]
  %i.ik = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hv, i32 noundef %i.hw, i32 noundef %.sink34.i137, i32 noundef 2, i64 noundef 7, i64 noundef 1) ; 6 uses
  %i.il = load ptr, ptr %i.gb, align 8, !tbaa !11 ; 2 uses
  %i.im = getelementptr i8, ptr %i.ik, i64 16
  store ptr %i.il, ptr %i.im, align 8, !tbaa !34
  %i.in = getelementptr i8, ptr %i.il, i64 8
  store ptr %i.ik, ptr %i.in, align 8, !tbaa !35
  store ptr %i.ik, ptr %i.gb, align 8, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %i.ip, null
  br i1 %.not.i, label %APPEND_LIST.exit, label %bb.w

bb.w:                                             ; preds = %pm_iseq_add_getlocal.exit139
  %i.iq = getelementptr i8, ptr %i.ik, i64 8
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !35
  %i.ir = load ptr, ptr %i.io, align 8, !tbaa !63
  %i.is = getelementptr i8, ptr %i.ir, i64 16
  store ptr %i.ik, ptr %i.is, align 8, !tbaa !34
  %i.it = load ptr, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  store ptr %i.it, ptr %i.gb, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %pm_iseq_add_getlocal.exit139, %bb.w
  %i.iu = phi ptr [ %i.ik, %pm_iseq_add_getlocal.exit139 ], [ %i.it, %bb.w ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !63 ; 2 uses
  %.not.i140 = icmp eq ptr %i.iw, null
  br i1 %.not.i140, label %APPEND_LIST.exit141, label %bb.x

bb.x:                                             ; preds = %APPEND_LIST.exit
  %i.ix = getelementptr i8, ptr %i.iu, i64 8
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !35
  %i.iy = load ptr, ptr %i.iv, align 8, !tbaa !63
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  store ptr %i.iu, ptr %i.iz, align 8, !tbaa !34
  %i.ja = load ptr, ptr %i.hu, align 8, !tbaa !11
  store ptr %i.ja, ptr %i.gb, align 8, !tbaa !11
  br label %APPEND_LIST.exit141

APPEND_LIST.exit141:                              ; preds = %APPEND_LIST.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.y

bb.y:                                             ; preds = %APPEND_LIST.exit141, %new_trace_body.exit
  %i.jb = getelementptr i8, ptr %1, i64 104
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !526 ; 2 uses
  %.not105 = icmp eq ptr %i.jc, null
  br i1 %.not105, label %bb.z, label %ISEQ_COMPILE_DATA.exit145

ISEQ_COMPILE_DATA.exit145:                        ; preds = %bb.y
  %i.jd = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.je = getelementptr i8, ptr %i.jd, i64 56     ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !267
  store ptr null, ptr %i.je, align 8, !tbaa !267
  call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.jc, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  %i.jg = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.jh = getelementptr i8, ptr %i.jg, i64 56
  store ptr %i.jf, ptr %i.jh, align 8, !tbaa !267
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ji = load i32, ptr %2, align 4, !tbaa !553
  %i.jj = load i32, ptr %i.fx, align 4, !tbaa !556
  %i.jk = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ji, i32 noundef %i.jj, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.jl = load ptr, ptr %i.gb, align 8, !tbaa !11 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jk, i64 16
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !34
  %i.jn = getelementptr i8, ptr %i.jl, i64 8
  store ptr %i.jk, ptr %i.jn, align 8, !tbaa !35
  store ptr %i.jk, ptr %i.gb, align 8, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %ISEQ_COMPILE_DATA.exit145
  %i.jo = load i32, ptr %2, align 4, !tbaa !553
  %i.jp = load i32, ptr %i.fx, align 4, !tbaa !556
  %i.jq = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.jo, i32 noundef %i.jp, i32 noundef 70, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.jr = load ptr, ptr %i.gb, align 8, !tbaa !11 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jq, i64 16
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !34
  %i.jt = getelementptr i8, ptr %i.jr, i64 8
  store ptr %i.jq, ptr %i.jt, align 8, !tbaa !35
  %i.ju = getelementptr i8, ptr %i.bt, i64 16
  store ptr %i.jq, ptr %i.ju, align 8, !tbaa !34
  %i.jv = getelementptr i8, ptr %i.jq, i64 8
  store ptr %i.bt, ptr %i.jv, align 8, !tbaa !35
  store ptr %i.bt, ptr %i.gb, align 8, !tbaa !11
  %i.jw = getelementptr i8, ptr %1, i64 112
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1429 ; 2 uses
  %.not106 = icmp eq ptr %i.jx, null
  br i1 %.not106, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef nonnull %i.jx, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.jy = load i32, ptr %2, align 4, !tbaa !553
  %i.jz = load i32, ptr %i.fx, align 4, !tbaa !556
  %i.ka = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 176
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !275
  %i.kd = icmp eq ptr %i.kc, %0
  br i1 %i.kd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ke = getelementptr i8, ptr %i.ka, i64 16
  %i.kf = load i16, ptr %i.ke, align 8
  %i.kg = and i16 %i.kf, 64
  %.not12.i.i152 = icmp eq i16 %i.kg, 0
  br i1 %.not12.i.i152, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kh = getelementptr i8, ptr %i.ka, i64 240
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !175
  %i.kj = getelementptr i8, ptr %i.ka, i64 44
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !231
  %i.kl = sub i32 %i.ki, %i.kk
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %pm_iseq_add_getlocal.exit153, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  br label %pm_iseq_add_getlocal.exit153

pm_iseq_add_getlocal.exit153:                     ; preds = %bb.ae, %bb.af
  %.sink34.i151 = phi i32 [ 1, %bb.af ], [ 3, %bb.ae ]
  %i.kn = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jy, i32 noundef %i.jz, i32 noundef %.sink34.i151, i32 noundef 2, i64 noundef 7, i64 noundef 1) ; 3 uses
  %i.ko = load ptr, ptr %i.gb, align 8, !tbaa !11 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 16
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !34
  %i.kq = getelementptr i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kq, align 8, !tbaa !35
  store ptr %i.kn, ptr %i.gb, align 8, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %pm_iseq_add_getlocal.exit153, %bb.ab
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_return_node(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1430 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 5 uses
  %i.f = and i32 %i.e, -2
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 3 uses
  %.not142 = icmp eq ptr %i.i, null
  br i1 %.not142, label %._crit_edge.loopexit, label %.lr.ph143

.lr.ph:                                           ; preds = %.lr.ph143
  %i.j = getelementptr i8, ptr %i.n, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph143, !llvm.loop !1432

.lr.ph143:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47   ; 3 uses
  %i.p = and i32 %i.o, -2
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.lr.ph, label %.._crit_edge.loopexit_crit_edge, !llvm.loop !1432

.._crit_edge.loopexit_crit_edge:                  ; preds = %.lr.ph143
  br label %._crit_edge.loopexit, !llvm.loop !1432

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.._crit_edge.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa141 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.l, %.._crit_edge.loopexit_crit_edge ], [ %i.k, %.lr.ph ]
  %.0.lcssa.ph = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.o, %.._crit_edge.loopexit_crit_edge ], [ %i.o, %.lr.ph ]
  %i.r = icmp eq ptr %.lcssa141, %0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %i.e, %bb.a ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %.1 = phi i1 [ true, %bb.a ], [ %i.r, %._crit_edge.loopexit ]
  switch i32 %.0.lcssa, label %bb.e [
    i32 0, label %bb.b
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %._crit_edge, %._crit_edge
  %.not61 = icmp eq ptr %i.b, null
  br i1 %.not61, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.191) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = icmp eq i32 %i.e, 1
  %or.cond = or i1 %.1, %i.s
  br i1 %or.cond, label %.thread, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  %.old = icmp eq i32 %i.e, 1
  br i1 %.old, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.d, %bb.e
  %i.t = load i64, ptr %0, align 8, !tbaa !37
  %i.u = and i64 %i.t, 262144
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i:                     ; preds = %bb.f, %.thread
  %.0.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ null, %.thread ]
  %i.x = getelementptr i8, ptr %.0.i.i.i.i, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 48
  %i.ad = getelementptr i8, ptr %i.y, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 4 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i
  %i.ah = icmp ult i32 %i.ae, 48
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.h
  %.027.i.i.i.i = phi i32 [ %i.aj, %bb.h ], [ %i.ae, %.preheader.i.i.i.i ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ak = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.h
  %i.al = zext nneg i32 %i.aj to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.ae, %.preheader.i.i.i.i ], [ %i.aj, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.af, %.preheader.i.i.i.i ], [ %i.al, %._crit_edge.i.i.loopexit.i.i ]
  %i.am = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.an = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.am, i64 noundef 1) #39 ; 6 uses
  store ptr %i.an, ptr %i.y, align 8, !tbaa !40
  store ptr %i.an, ptr %i.x, align 8, !tbaa !40
  store ptr null, ptr %i.an, align 8, !tbaa !40
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !7
  %i.ap = getelementptr i8, ptr %i.an, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ap, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.aq = phi i32 [ %i.aa, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.y, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ %i.an, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.as = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.at = zext i32 %i.aq to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 10 uses
  %i.av = add i32 %i.aq, 48
  store i32 %i.av, ptr %i.as, align 8, !tbaa !7
  store i32 1, ptr %i.au, align 8, !tbaa !193
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !194
  %i.ax = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr i8, ptr %i.ay, i64 132    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !195 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !195
  %i.bc = getelementptr i8, ptr %i.au, i64 24
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !95
  %i.bd = getelementptr i8, ptr %i.au, i64 44     ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, -16
  store i8 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr i8, ptr %i.au, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bg, align 4, !tbaa !7
  %i.bh = getelementptr i8, ptr %3, i64 24        ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.au, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !34
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !35
  store ptr %i.au, ptr %i.bh, align 8, !tbaa !11
  %i.bl = load i32, ptr %2, align 4, !tbaa !553
  %i.bm = load i64, ptr %0, align 8, !tbaa !37
  %i.bn = and i64 %i.bm, 262144
  %.not.i.i.i.i63 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i63, label %ISEQ_COMPILE_DATA.exit.i.i.i64, label %bb.i

bb.i:                                             ; preds = %new_label_body.exit
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i64

ISEQ_COMPILE_DATA.exit.i.i.i64:                   ; preds = %bb.i, %new_label_body.exit
  %.0.i.i.i.i65 = phi ptr [ %i.bo, %bb.i ], [ null, %new_label_body.exit ]
  %i.bp = getelementptr i8, ptr %.0.i.i.i.i65, i64 96 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40 ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !7  ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.bt, 40
  %i.bv = getelementptr i8, ptr %i.bq, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7  ; 4 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = icmp samesign ugt i64 %i.bu, %i.bx
  br i1 %i.by, label %.preheader.i.i.i.i67, label %new_adjust_body.exit

.preheader.i.i.i.i67:                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i64
  %i.bz = icmp ult i32 %i.bw, 40
  br i1 %i.bz, label %.lr.ph.i.i.i.i71, label %._crit_edge.i.i.i.i68

.lr.ph.i.i.i.i71:                                 ; preds = %.preheader.i.i.i.i67, %bb.k
  %.027.i.i.i.i72 = phi i32 [ %i.cb, %bb.k ], [ %i.bw, %.preheader.i.i.i.i67 ] ; 3 uses
  %i.ca = icmp samesign ugt i32 %.027.i.i.i.i72, 1073741822
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i71
  tail call void @rb_memerror() #38
  unreachable

bb.k:                                             ; preds = %.lr.ph.i.i.i.i71
  %i.cb = shl nuw nsw i32 %.027.i.i.i.i72, 1      ; 3 uses
  %i.cc = icmp samesign ult i32 %.027.i.i.i.i72, 20
  br i1 %i.cc, label %.lr.ph.i.i.i.i71, label %._crit_edge.i.i.loopexit.i.i73, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i73:                   ; preds = %bb.k
  %i.cd = zext nneg i32 %i.cb to i64
  br label %._crit_edge.i.i.i.i68

._crit_edge.i.i.i.i68:                            ; preds = %._crit_edge.i.i.loopexit.i.i73, %.preheader.i.i.i.i67
  %.0.lcssa.i.i.i.i69 = phi i32 [ %i.bw, %.preheader.i.i.i.i67 ], [ %i.cb, %._crit_edge.i.i.loopexit.i.i73 ]
  %.lcssa.i.i.i.i70 = phi i64 [ %i.bx, %.preheader.i.i.i.i67 ], [ %i.cd, %._crit_edge.i.i.loopexit.i.i73 ]
  %i.ce = add nuw nsw i64 %.lcssa.i.i.i.i70, 16
  %i.cf = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ce, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cf, ptr %i.bq, align 8, !tbaa !40
  store ptr %i.cf, ptr %i.bp, align 8, !tbaa !40
  store ptr null, ptr %i.cf, align 8, !tbaa !40
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !7
  %i.ch = getelementptr i8, ptr %i.cf, i64 12
  store i32 %.0.lcssa.i.i.i.i69, ptr %i.ch, align 4, !tbaa !7
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !11
  br label %new_adjust_body.exit

new_adjust_body.exit:                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i64, %._crit_edge.i.i.i.i68
  %i.ci = phi ptr [ %.pre, %._crit_edge.i.i.i.i68 ], [ %i.au, %ISEQ_COMPILE_DATA.exit.i.i.i64 ] ; 2 uses
  %i.cj = phi i32 [ 0, %._crit_edge.i.i.i.i68 ], [ %i.bs, %ISEQ_COMPILE_DATA.exit.i.i.i64 ] ; 2 uses
  %.022.i.i.i.i66 = phi ptr [ %i.cf, %._crit_edge.i.i.i.i68 ], [ %i.bq, %ISEQ_COMPILE_DATA.exit.i.i.i64 ] ; 2 uses
  %i.ck = getelementptr i8, ptr %.022.i.i.i.i66, i64 16
  %i.cl = getelementptr i8, ptr %.022.i.i.i.i66, i64 8
  %i.cm = zext i32 %i.cj to i64
  %i.cn = getelementptr i8, ptr %i.ck, i64 %i.cm  ; 7 uses
  %i.co = add i32 %i.cj, 40
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !7
  store i32 3, ptr %i.cn, align 8, !tbaa !965
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !966
  %i.cq = getelementptr i8, ptr %i.cn, i64 24
  store ptr null, ptr %i.cq, align 8, !tbaa !97
  %i.cr = getelementptr i8, ptr %i.cn, i64 32
end_hunk_3
