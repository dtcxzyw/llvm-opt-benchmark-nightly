Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/trees?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@build_tree:bb.a
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %i.ua ; 2 uses
  %i.ud = shl nuw nsw i64 %i.ua, 1
  %i.ue = add i64 %i.ud, %i.mw, !nosanitize !13   ; 3 uses
  %.not.us.i = icmp ult i64 %i.ue, %i.mw, !nosanitize !13 ; 2 uses
  br i1 %.not.us.i, label %bb.kx, label %bb.ky, !prof !30, !nosanitize !13

bb.kx:                                            ; preds = %bb.kw
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @484, i64 %i.mw, i64 %i.ue) #5, !nosanitize !13
  br label %bb.ky, !nosanitize !13

bb.ky:                                            ; preds = %bb.kw, %bb.kx
  %i.uf = load i16, ptr %i.uc, align 2, !tbaa !36
  %i.ug = icmp eq i16 %i.uf, 0
  br i1 %i.ug, label %bb.kz, label %.split160.us.i

bb.kz:                                            ; preds = %bb.ky
  %i.uh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.290.us.i, i32 1), !nosanitize !13 ; 2 uses
  %i.ui = extractvalue { i32, i1 } %i.uh, 1, !nosanitize !13
  br i1 %i.ui, label %bb.la, label %.split158.us.i.backedge, !prof !30, !nosanitize !13

bb.la:                                            ; preds = %bb.kz
  call void @__ubsan_handle_sub_overflow(ptr nonnull @486, i64 %i.ua, i64 1) #6, !nosanitize !13
  br label %.split158.us.i.backedge, !nosanitize !13

.split158.us.i.backedge:                          ; preds = %bb.la, %bb.kz
  br label %.split158.us.i, !llvm.loop !76

.split158.i:                                      ; preds = %bb.ku, %.split158.i.backedge
  %.pn112.i = phi { i32, i1 } [ %i.ut, %.split158.i.backedge ], [ %i.ts, %bb.ku ]
  %.290.i = extractvalue { i32, i1 } %.pn112.i, 0 ; 4 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @482, i64 %i.b) #5, !nosanitize !13
  %i.uj = zext i32 %.290.i to i64, !nosanitize !13 ; 5 uses
  %i.uk = icmp ult i32 %.290.i, 16
  br i1 %i.uk, label %bb.lc, label %bb.lb, !prof !14, !nosanitize !13

bb.lb:                                            ; preds = %.split158.i
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @483, i64 %i.uj) #5, !nosanitize !13
  br label %bb.lc, !nosanitize !13

bb.lc:                                            ; preds = %bb.lb, %.split158.i
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %i.uj ; 3 uses
  %i.um = shl nuw nsw i64 %i.uj, 1
  %i.un = add i64 %i.um, %i.mw, !nosanitize !13   ; 3 uses
  %.not.i = icmp ult i64 %i.un, %i.mw, !nosanitize !13 ; 2 uses
  br i1 %.not.i, label %bb.ld, label %bb.le, !prof !30, !nosanitize !13

bb.ld:                                            ; preds = %bb.lc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @484, i64 %i.mw, i64 %i.un) #5, !nosanitize !13
  br label %bb.le, !nosanitize !13

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %i.uo = ptrtoint ptr %i.ul to i64, !nosanitize !13 ; 2 uses
  %i.up = and i64 %i.uo, 1, !nosanitize !13
  %i.uq = icmp eq i64 %i.up, 0, !nosanitize !13
  br i1 %i.uq, label %bb.lg, label %bb.lf, !prof !14, !nosanitize !13

bb.lf:                                            ; preds = %bb.le
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @485, i64 %i.uo) #5, !nosanitize !13
  br label %bb.lg, !nosanitize !13

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.ur = load i16, ptr %i.ul, align 2, !tbaa !36
  %i.us = icmp eq i16 %i.ur, 0
  br i1 %i.us, label %bb.lh, label %.split160.us.i

bb.lh:                                            ; preds = %bb.lg
  %i.ut = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.290.i, i32 1), !nosanitize !13 ; 2 uses
  %i.uu = extractvalue { i32, i1 } %i.ut, 1, !nosanitize !13
  br i1 %i.uu, label %bb.li, label %.split158.i.backedge, !prof !30, !nosanitize !13

bb.li:                                            ; preds = %bb.lh
  call void @__ubsan_handle_sub_overflow(ptr nonnull @486, i64 %i.uj, i64 1) #6, !nosanitize !13
  br label %.split158.i.backedge, !nosanitize !13

.split158.i.backedge:                             ; preds = %bb.li, %bb.lh
  br label %.split158.i, !llvm.loop !76

.split160.us.i:                                   ; preds = %bb.lg, %bb.ky
  %.us-phi.i = phi ptr [ %i.uc, %bb.ky ], [ %i.ul, %bb.lg ] ; 2 uses
  %.us-phi162.i = phi i64 [ %i.ue, %bb.ky ], [ %i.un, %bb.lg ]
  %.us-phi163.i = phi i1 [ %.not.us.i, %bb.ky ], [ %.not.i, %bb.lg ]
  %.us-phi165.i = phi i64 [ %i.ua, %bb.ky ], [ %i.uj, %bb.lg ] ; 2 uses
  %.us-phi166.i = phi i32 [ %.290.us.i, %bb.ky ], [ %.290.i, %bb.lg ] ; 2 uses
  br i1 %i.e, label %bb.lk, label %bb.lj, !prof !14, !nosanitize !13

bb.lj:                                            ; preds = %.split160.us.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @487, i64 %i.b) #5, !nosanitize !13
  br label %bb.lk, !nosanitize !13

bb.lk:                                            ; preds = %bb.lj, %.split160.us.i
  %i.uv = icmp ult i32 %.us-phi166.i, 17
  br i1 %i.uv, label %bb.lm, label %bb.ll, !prof !14, !nosanitize !13

bb.ll:                                            ; preds = %bb.lk
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @488, i64 %.us-phi165.i) #5, !nosanitize !13
  br label %bb.lm, !nosanitize !13

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  br i1 %.us-phi163.i, label %bb.ln, label %bb.lo, !prof !30, !nosanitize !13

bb.ln:                                            ; preds = %bb.lm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @489, i64 %i.mw, i64 %.us-phi162.i) #5, !nosanitize !13
  br label %bb.lo, !nosanitize !13

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.uw = load i16, ptr %.us-phi.i, align 2, !tbaa !36
  %i.ux = add i16 %i.uw, -1
  store i16 %i.ux, ptr %.us-phi.i, align 2, !tbaa !36
  br i1 %i.e, label %bb.lq, label %bb.lp, !prof !14, !nosanitize !13

bb.lp:                                            ; preds = %bb.lo
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @490, i64 %i.b) #5, !nosanitize !13
  br label %bb.lq, !nosanitize !13

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %i.uy = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.us-phi166.i, i32 1), !nosanitize !13 ; 2 uses
  %i.uz = extractvalue { i32, i1 } %i.uy, 0, !nosanitize !13 ; 2 uses
  %i.va = extractvalue { i32, i1 } %i.uy, 1, !nosanitize !13
  br i1 %i.va, label %bb.lr, label %bb.ls, !prof !30, !nosanitize !13

bb.lr:                                            ; preds = %bb.lq
  call void @__ubsan_handle_add_overflow(ptr nonnull @491, i64 %.us-phi165.i, i64 1) #6, !nosanitize !13
  br label %bb.ls, !nosanitize !13

bb.ls:                                            ; preds = %bb.lr, %bb.lq
  %i.vb = zext i32 %i.uz to i64, !nosanitize !13  ; 3 uses
  %i.vc = icmp ult i32 %i.uz, 16
  br i1 %i.vc, label %bb.lu, label %bb.lt, !prof !14, !nosanitize !13

bb.lt:                                            ; preds = %bb.ls
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @492, i64 %i.vb) #5, !nosanitize !13
  br label %bb.lu, !nosanitize !13

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %i.vb ; 3 uses
  %i.ve = shl nuw nsw i64 %i.vb, 1
  %i.vf = add i64 %i.ve, %i.mw, !nosanitize !13   ; 2 uses
  %.not113.i = icmp ult i64 %i.vf, %i.mw, !nosanitize !13
  br i1 %.not113.i, label %bb.lv, label %bb.lw, !prof !30, !nosanitize !13

bb.lv:                                            ; preds = %bb.lu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @493, i64 %i.mw, i64 %i.vf) #5, !nosanitize !13
  br label %bb.lw, !nosanitize !13

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.vg = ptrtoint ptr %i.vd to i64, !nosanitize !13 ; 2 uses
  %i.vh = and i64 %i.vg, 1, !nosanitize !13
  %i.vi = icmp eq i64 %i.vh, 0, !nosanitize !13
  br i1 %i.vi, label %bb.ly, label %bb.lx, !prof !14, !nosanitize !13

bb.lx:                                            ; preds = %bb.lw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @494, i64 %i.vg) #5, !nosanitize !13
  br label %bb.ly, !nosanitize !13

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %i.vj = load i16, ptr %i.vd, align 2, !tbaa !36
  %i.vk = add i16 %i.vj, 2
  store i16 %i.vk, ptr %i.vd, align 2, !tbaa !36
  br i1 %i.e, label %bb.ma, label %bb.lz, !prof !14, !nosanitize !13

bb.lz:                                            ; preds = %bb.ly
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @495, i64 %i.b) #5, !nosanitize !13
  br label %bb.ma, !nosanitize !13

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  br i1 %i.tv, label %bb.mc, label %bb.mb, !prof !14, !nosanitize !13

bb.mb:                                            ; preds = %bb.ma
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @496, i64 %i.tu) #5, !nosanitize !13
  br label %bb.mc, !nosanitize !13

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  br i1 %.not114.i, label %bb.md, label %bb.me, !prof !30, !nosanitize !13

bb.md:                                            ; preds = %bb.mc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @497, i64 %i.mw, i64 %i.ty) #5, !nosanitize !13
  br label %bb.me, !nosanitize !13

bb.me:                                            ; preds = %bb.md, %bb.mc
  %i.vl = load i16, ptr %i.tw, align 2, !tbaa !36
  %i.vm = add i16 %i.vl, -1
  store i16 %i.vm, ptr %i.tw, align 2, !tbaa !36
  %indvars.iv.next206.i = add nsw i64 %indvars.iv205.i, -2 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next206.i to i32
  %i.vn = and i64 %indvars.iv205.i, 4294967294
  %i.vo = icmp eq i64 %i.vn, 2147483648
  br i1 %i.vo, label %bb.mf, label %bb.mg, !prof !30, !nosanitize !13

bb.mf:                                            ; preds = %bb.me
  call void @__ubsan_handle_sub_overflow(ptr nonnull @498, i64 %indvars.iv205.i, i64 2) #5, !nosanitize !13
  br label %bb.mg, !nosanitize !13

bb.mg:                                            ; preds = %bb.mf, %bb.me
  %i.vp = icmp sgt i32 %indvars.i, 0
  br i1 %i.vp, label %bb.ks, label %.preheader.i, !llvm.loop !77

.preheader.i:                                     ; preds = %bb.mg
  %.not115179.i = icmp eq i32 %i.mu, 0
  br i1 %.not115179.i, label %gen_bitlen.exit, label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.preheader.i, %.outer.split.us.i
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.outer.split.us.i ], [ %i.tu, %.preheader.i ] ; 9 uses
  %.193180.i = phi i32 [ %.294.ph.lcssa.i, %.outer.split.us.i ], [ 573, %.preheader.i ] ; 2 uses
  br i1 %i.e, label %bb.mi, label %bb.mh, !prof !14, !nosanitize !13

bb.mh:                                            ; preds = %.lr.ph182.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @499, i64 %i.b) #5, !nosanitize !13
  br label %bb.mi, !nosanitize !13

bb.mi:                                            ; preds = %bb.mh, %.lr.ph182.i
  %i.vq = icmp ult i64 %indvars.iv208.i, 16
  br i1 %i.vq, label %bb.mk, label %bb.mj, !prof !14, !nosanitize !13

bb.mj:                                            ; preds = %bb.mi
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @500, i64 %indvars.iv208.i) #5, !nosanitize !13
  br label %bb.mk, !nosanitize !13

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %indvars.iv208.i ; 2 uses
  %i.vs = shl nuw nsw i64 %indvars.iv208.i, 1
  %i.vt = add i64 %i.vs, %i.mw, !nosanitize !13   ; 2 uses
  %.not116.i = icmp ult i64 %i.vt, %i.mw, !nosanitize !13
  br i1 %.not116.i, label %bb.ml, label %bb.mm, !prof !30, !nosanitize !13

bb.ml:                                            ; preds = %bb.mk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @501, i64 %i.mw, i64 %i.vt) #5, !nosanitize !13
  br label %bb.mm, !nosanitize !13

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %i.vu = ptrtoint ptr %i.vr to i64, !nosanitize !13 ; 2 uses
  %i.vv = and i64 %i.vu, 1, !nosanitize !13
  %i.vw = icmp eq i64 %i.vv, 0, !nosanitize !13
  br i1 %i.vw, label %bb.mo, label %bb.mn, !prof !14, !nosanitize !13

bb.mn:                                            ; preds = %bb.mm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @502, i64 %i.vu) #5, !nosanitize !13
  br label %bb.mo, !nosanitize !13

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.vx = load i16, ptr %i.vr, align 2, !tbaa !36 ; 2 uses
  %.not117175.i = icmp eq i16 %i.vx, 0
  br i1 %.not117175.i, label %.outer.split.us.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %bb.mo
  %i.vy = zext i16 %i.vx to i32
  %i.vz = trunc nuw i64 %indvars.iv208.i to i32
  %i.wa = trunc i64 %indvars.iv208.i to i16
  br label %.outer.split.i

.outer.split.us.i:                                ; preds = %.outer.i, %bb.mo
  %.294.ph.lcssa.i = phi i32 [ %.193180.i, %bb.mo ], [ %.us-phi174.i, %.outer.i ]
  %indvars.iv.next209.i = add nsw i64 %indvars.iv208.i, -1 ; 2 uses
  %2 = and i64 %indvars.iv.next209.i, 4294967295
  %.not115.i = icmp eq i64 %2, 0
  br i1 %.not115.i, label %gen_bitlen.exit, label %.lr.ph182.i, !llvm.loop !78

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.091.ph177.i = phi i32 [ %i.vy, %.outer.split.lr.ph.i ], [ %i.ze, %.outer.i ]
  %.294.ph176.i = phi i32 [ %.193180.i, %.outer.split.lr.ph.i ], [ %.us-phi174.i, %.outer.i ] ; 2 uses
  br i1 %i.e, label %.outer.split.split.us.i, label %.outer.split.split.i, !prof !14, !nosanitize !13

.outer.split.split.us.i:                          ; preds = %.outer.split.i, %bb.mu
  %.294.us170.i = phi i32 [ %i.wc, %bb.mu ], [ %.294.ph176.i, %.outer.split.i ] ; 2 uses
  %i.wb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.294.us170.i, i32 -1) ; 2 uses
  %i.wc = extractvalue { i32, i1 } %i.wb, 0, !nosanitize !13 ; 5 uses
  %i.wd = extractvalue { i32, i1 } %i.wb, 1, !nosanitize !13
  br i1 %i.wd, label %bb.mp, label %bb.mq, !prof !30, !nosanitize !13

bb.mp:                                            ; preds = %.outer.split.split.us.i
  %i.we = zext i32 %.294.us170.i to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @504, i64 %i.we, i64 1) #5, !nosanitize !13
  br label %bb.mq, !nosanitize !13

bb.mq:                                            ; preds = %bb.mp, %.outer.split.split.us.i
  %i.wf = sext i32 %i.wc to i64, !nosanitize !13  ; 3 uses
  %i.wg = icmp ult i32 %i.wc, 573
  br i1 %i.wg, label %bb.ms, label %bb.mr, !prof !14, !nosanitize !13

bb.mr:                                            ; preds = %bb.mq
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @505, i64 %i.wf) #5, !nosanitize !13
  br label %bb.ms, !nosanitize !13

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.wf
  %i.wi = shl nsw i64 %i.wf, 2
  %i.wj = add i64 %i.wi, %.pre-phi, !nosanitize !13 ; 3 uses
  %i.wk = icmp ne i64 %i.wj, 0, !nosanitize !13
  %i.wl = icmp uge i64 %i.wj, %.pre-phi, !nosanitize !13
  %i.wm = icmp slt i32 %i.wc, 0
  %i.wn = xor i1 %i.wm, %i.wl
  %i.wo = and i1 %i.wk, %i.wn, !nosanitize !13
  br i1 %i.wo, label %bb.mu, label %bb.mt, !prof !14, !nosanitize !13

bb.mt:                                            ; preds = %bb.ms
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @506, i64 %.pre-phi, i64 %i.wj) #5, !nosanitize !13
  br label %bb.mu, !nosanitize !13

bb.mu:                                            ; preds = %bb.ms, %bb.mt
  %i.wp = load i32, ptr %i.wh, align 4, !tbaa !40 ; 2 uses
  %i.wq = icmp sgt i32 %i.wp, %i.lf
  br i1 %i.wq, label %.outer.split.split.us.i, label %.split172.us.i, !llvm.loop !79

.outer.split.split.i:                             ; preds = %.outer.split.i, %bb.nc
  %.294.i = phi i32 [ %i.ws, %bb.nc ], [ %.294.ph176.i, %.outer.split.i ] ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @503, i64 %i.b) #5, !nosanitize !13
  %i.wr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.294.i, i32 -1) ; 2 uses
  %i.ws = extractvalue { i32, i1 } %i.wr, 0, !nosanitize !13 ; 5 uses
  %i.wt = extractvalue { i32, i1 } %i.wr, 1, !nosanitize !13
  br i1 %i.wt, label %bb.mv, label %bb.mw, !prof !30, !nosanitize !13

bb.mv:                                            ; preds = %.outer.split.split.i
  %i.wu = zext i32 %.294.i to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @504, i64 %i.wu, i64 1) #5, !nosanitize !13
  br label %bb.mw, !nosanitize !13

bb.mw:                                            ; preds = %bb.mv, %.outer.split.split.i
  %i.wv = sext i32 %i.ws to i64, !nosanitize !13  ; 3 uses
  %i.ww = icmp ult i32 %i.ws, 573
  br i1 %i.ww, label %bb.my, label %bb.mx, !prof !14, !nosanitize !13

bb.mx:                                            ; preds = %bb.mw
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @505, i64 %i.wv) #5, !nosanitize !13
  br label %bb.my, !nosanitize !13

bb.my:                                            ; preds = %bb.mx, %bb.mw
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.wv ; 2 uses
  %i.wy = shl nsw i64 %i.wv, 2
  %i.wz = add i64 %i.wy, %.pre-phi, !nosanitize !13 ; 3 uses
  %i.xa = icmp ne i64 %i.wz, 0, !nosanitize !13
  %i.xb = icmp uge i64 %i.wz, %.pre-phi, !nosanitize !13
  %i.xc = icmp slt i32 %i.ws, 0
  %i.xd = xor i1 %i.xc, %i.xb
  %i.xe = and i1 %i.xa, %i.xd, !nosanitize !13
  br i1 %i.xe, label %bb.na, label %bb.mz, !prof !14, !nosanitize !13

bb.mz:                                            ; preds = %bb.my
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @506, i64 %.pre-phi, i64 %i.wz) #5, !nosanitize !13
  br label %bb.na, !nosanitize !13

bb.na:                                            ; preds = %bb.mz, %bb.my
  %i.xf = ptrtoint ptr %i.wx to i64, !nosanitize !13 ; 2 uses
  %i.xg = and i64 %i.xf, 3, !nosanitize !13
  %i.xh = icmp eq i64 %i.xg, 0, !nosanitize !13
  br i1 %i.xh, label %bb.nc, label %bb.nb, !prof !14, !nosanitize !13

bb.nb:                                            ; preds = %bb.na
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @507, i64 %i.xf) #5, !nosanitize !13
  br label %bb.nc, !nosanitize !13

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.xi = load i32, ptr %i.wx, align 4, !tbaa !40 ; 2 uses
  %i.xj = icmp sgt i32 %i.xi, %i.lf
  br i1 %i.xj, label %.outer.split.split.i, label %.split172.us.i, !llvm.loop !79

.split172.us.i:                                   ; preds = %bb.nc, %bb.mu
  %.us-phi173.i = phi i32 [ %i.wp, %bb.mu ], [ %i.xi, %bb.nc ] ; 2 uses
  %.us-phi174.i = phi i32 [ %i.wc, %bb.mu ], [ %i.ws, %bb.nc ] ; 2 uses
  %i.xk = sext i32 %.us-phi173.i to i64           ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.xk ; 4 uses
  %i.xm = shl nsw i64 %i.xk, 2
  %i.xn = add i64 %i.xm, %i.nw, !nosanitize !13   ; 7 uses
  %i.xo = icmp eq i64 %i.xn, 0
  %i.xp = xor i1 %i.ny, %i.xo
  %i.xq = icmp uge i64 %i.xn, %i.nw, !nosanitize !13
  %i.xr = icmp slt i32 %.us-phi173.i, 0
  %i.xs = xor i1 %i.xr, %i.xq
  %i.xt = and i1 %i.xp, %i.xs, !nosanitize !13    ; 5 uses
  br i1 %i.xt, label %bb.ne, label %bb.nd, !prof !14, !nosanitize !13

bb.nd:                                            ; preds = %.split172.us.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @508, i64 %i.nw, i64 %i.xn) #5, !nosanitize !13
  br label %bb.ne, !nosanitize !13

bb.ne:                                            ; preds = %bb.nd, %.split172.us.i
  %i.xu = ptrtoint ptr %i.xl to i64, !nosanitize !13 ; 10 uses
  %i.xv = and i64 %i.xu, 1, !nosanitize !13
  %i.xw = icmp eq i64 %i.xv, 0, !nosanitize !13   ; 5 uses
  %i.xx = and i1 %i.ny, %i.xw, !nosanitize !13    ; 2 uses
  br i1 %i.xx, label %bb.ng, label %bb.nf, !prof !14, !nosanitize !13

bb.nf:                                            ; preds = %bb.ne
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @509, i64 %i.xu) #5, !nosanitize !13
  br label %bb.ng, !nosanitize !13

bb.ng:                                            ; preds = %bb.nf, %bb.ne
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xl, i64 2 ; 4 uses
  %i.xz = ptrtoint ptr %i.xy to i64, !nosanitize !13 ; 7 uses
  %i.ya = and i64 %i.xz, 1, !nosanitize !13
  %i.yb = icmp eq i64 %i.ya, 0, !nosanitize !13   ; 3 uses
  br i1 %i.yb, label %.critedge135.i, label %bb.nh, !prof !14, !nosanitize !13

bb.nh:                                            ; preds = %bb.ng
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @510, i64 %i.xz) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @511, i64 %i.xz) #5, !nosanitize !13
  br label %.critedge135.i, !nosanitize !13

.critedge135.i:                                   ; preds = %bb.nh, %bb.ng
  %i.yc = load i16, ptr %i.xy, align 2, !tbaa !31
  %i.yd = zext i16 %i.yc to i64
  %.not118.i = icmp eq i64 %indvars.iv208.i, %i.yd
  br i1 %.not118.i, label %.outer.i, label %bb.ni

bb.ni:                                            ; preds = %.critedge135.i
  br i1 %i.xt, label %bb.nk, label %bb.nj, !prof !14, !nosanitize !13

bb.nj:                                            ; preds = %bb.ni
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @512, i64 %i.nw, i64 %i.xn) #5, !nosanitize !13
  br label %bb.nk, !nosanitize !13

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  br i1 %i.xx, label %bb.nm, label %bb.nl, !prof !14, !nosanitize !13

bb.nl:                                            ; preds = %bb.nk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @513, i64 %i.xu) #5, !nosanitize !13
  br label %bb.nm, !nosanitize !13

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %i.ye = and i1 %i.ny, %i.xw, !nosanitize !13
  br i1 %i.ye, label %.critedge137.i, label %bb.nn, !prof !14, !nosanitize !13

bb.nn:                                            ; preds = %bb.nm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @514, i64 %i.xu) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @515, i64 %i.xu) #5, !nosanitize !13
  br label %.critedge137.i, !nosanitize !13

.critedge137.i:                                   ; preds = %bb.nn, %bb.nm
  %i.yf = load i16, ptr %i.xl, align 2, !tbaa !31 ; 2 uses
  %i.yg = zext i16 %i.yf to i32
  %i.yh = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.vz, i32 %i.yg), !nosanitize !13 ; 2 uses
  %i.yi = extractvalue { i32, i1 } %i.yh, 0, !nosanitize !13
  %i.yj = extractvalue { i32, i1 } %i.yh, 1, !nosanitize !13
  br i1 %i.yj, label %bb.no, label %bb.np, !prof !30, !nosanitize !13

bb.no:                                            ; preds = %.critedge137.i
  %i.yk = zext i16 %i.yf to i64
  call void @__ubsan_handle_mul_overflow(ptr nonnull @516, i64 %indvars.iv208.i, i64 %i.yk) #6, !nosanitize !13
  br label %bb.np, !nosanitize !13

bb.np:                                            ; preds = %bb.no, %.critedge137.i
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  br i1 %i.e, label %bb.nr, label %bb.nq, !prof !14, !nosanitize !13

bb.nq:                                            ; preds = %bb.np
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @517, i64 %i.b) #5, !nosanitize !13
  br label %bb.nr, !nosanitize !13

bb.nr:                                            ; preds = %bb.np, %bb.nq
  %i.ym = load i64, ptr %i.aw, align 8, !tbaa !34 ; 2 uses
  %i.yn = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ym, i64 %i.yl), !nosanitize !13 ; 2 uses
  %i.yo = extractvalue { i64, i1 } %i.yn, 0, !nosanitize !13
  %i.yp = extractvalue { i64, i1 } %i.yn, 1, !nosanitize !13
  br i1 %i.yp, label %bb.ns, label %bb.nt, !prof !30, !nosanitize !13

bb.ns:                                            ; preds = %bb.nr
  call void @__ubsan_handle_add_overflow(ptr nonnull @518, i64 %i.ym, i64 %i.yl) #6, !nosanitize !13
  br label %bb.nt, !nosanitize !13

bb.nt:                                            ; preds = %bb.ns, %bb.nr
  store i64 %i.yo, ptr %i.aw, align 8, !tbaa !34
  br i1 %i.xt, label %bb.nv, label %bb.nu, !prof !14, !nosanitize !13

bb.nu:                                            ; preds = %bb.nt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @519, i64 %i.nw, i64 %i.xn) #5, !nosanitize !13
  br label %bb.nv, !nosanitize !13

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  br i1 %i.xw, label %bb.nx, label %bb.nw, !prof !14, !nosanitize !13

bb.nw:                                            ; preds = %bb.nv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @520, i64 %i.xu) #5, !nosanitize !13
  br label %bb.nx, !nosanitize !13

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  br i1 %i.yb, label %.critedge139.i, label %bb.ny, !prof !14, !nosanitize !13

bb.ny:                                            ; preds = %bb.nx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @521, i64 %i.xz) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @522, i64 %i.xz) #5, !nosanitize !13
  br label %.critedge139.i, !nosanitize !13

.critedge139.i:                                   ; preds = %bb.ny, %bb.nx
  %i.yq = load i16, ptr %i.xy, align 2, !tbaa !31 ; 2 uses
  %i.yr = zext i16 %i.yq to i32
  br i1 %i.xt, label %bb.oa, label %bb.nz, !prof !14, !nosanitize !13

bb.nz:                                            ; preds = %.critedge139.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @523, i64 %i.nw, i64 %i.xn) #5, !nosanitize !13
  br label %bb.oa, !nosanitize !13

bb.oa:                                            ; preds = %bb.nz, %.critedge139.i
  br i1 %i.xw, label %.critedge141.i, label %bb.ob, !prof !14, !nosanitize !13

bb.ob:                                            ; preds = %bb.oa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @524, i64 %i.xu) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @525, i64 %i.xu) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @526, i64 %i.xu) #5, !nosanitize !13
  br label %.critedge141.i, !nosanitize !13

.critedge141.i:                                   ; preds = %bb.oa, %bb.ob
  %i.ys = load i16, ptr %i.xl, align 2, !tbaa !31 ; 2 uses
  %i.yt = zext i16 %i.ys to i32
  %i.yu = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.yr, i32 %i.yt), !nosanitize !13 ; 2 uses
  %i.yv = extractvalue { i32, i1 } %i.yu, 0, !nosanitize !13
  %i.yw = extractvalue { i32, i1 } %i.yu, 1, !nosanitize !13
  br i1 %i.yw, label %bb.oc, label %bb.od, !prof !30, !nosanitize !13

bb.oc:                                            ; preds = %.critedge141.i
  %i.yx = zext i16 %i.yq to i64
  %i.yy = zext i16 %i.ys to i64
  call void @__ubsan_handle_mul_overflow(ptr nonnull @527, i64 %i.yx, i64 %i.yy) #5, !nosanitize !13
  br label %bb.od, !nosanitize !13

bb.od:                                            ; preds = %bb.oc, %.critedge141.i
  %i.yz = sext i32 %i.yv to i64                   ; 2 uses
  br i1 %i.e, label %bb.of, label %bb.oe, !prof !14, !nosanitize !13

bb.oe:                                            ; preds = %bb.od
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @528, i64 %i.b) #5, !nosanitize !13
  br label %bb.of, !nosanitize !13

bb.of:                                            ; preds = %bb.od, %bb.oe
  %i.za = load i64, ptr %i.aw, align 8, !tbaa !34 ; 2 uses
  %i.zb = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.za, i64 %i.yz), !nosanitize !13 ; 2 uses
  %i.zc = extractvalue { i64, i1 } %i.zb, 0, !nosanitize !13
  %i.zd = extractvalue { i64, i1 } %i.zb, 1, !nosanitize !13
  br i1 %i.zd, label %bb.og, label %bb.oh, !prof !30, !nosanitize !13

bb.og:                                            ; preds = %bb.of
  call void @__ubsan_handle_sub_overflow(ptr nonnull @529, i64 %i.za, i64 %i.yz) #6, !nosanitize !13
  br label %bb.oh, !nosanitize !13

bb.oh:                                            ; preds = %bb.og, %bb.of
  store i64 %i.zc, ptr %i.aw, align 8, !tbaa !34
  br i1 %i.xt, label %bb.oj, label %bb.oi, !prof !14, !nosanitize !13

bb.oi:                                            ; preds = %bb.oh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @530, i64 %i.nw, i64 %i.xn) #5, !nosanitize !13
  br label %bb.oj, !nosanitize !13

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  br i1 %i.xw, label %bb.ol, label %bb.ok, !prof !14, !nosanitize !13

bb.ok:                                            ; preds = %bb.oj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @531, i64 %i.xu) #5, !nosanitize !13
  br label %bb.ol, !nosanitize !13

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  br i1 %i.yb, label %.critedge143.i, label %bb.om, !prof !14, !nosanitize !13

bb.om:                                            ; preds = %bb.ol
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @532, i64 %i.xz) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @533, i64 %i.xz) #5, !nosanitize !13
  br label %.critedge143.i, !nosanitize !13

.critedge143.i:                                   ; preds = %bb.om, %bb.ol
  store i16 %i.wa, ptr %i.xy, align 2, !tbaa !31
  br label %.outer.i

.outer.i:                                         ; preds = %.critedge143.i, %.critedge135.i
  %i.ze = add nsw i32 %.091.ph177.i, -1           ; 2 uses
  %.not117.i = icmp eq i32 %i.ze, 0
  br i1 %.not117.i, label %.outer.split.us.i, label %.outer.split.i, !llvm.loop !79

gen_bitlen.exit:                                  ; preds = %.outer.split.us.i, %bb.ib, %._crit_edge.i, %.preheader.i
  br i1 %i.e, label %bb.oo, label %bb.on, !prof !14, !nosanitize !13

bb.on:                                            ; preds = %gen_bitlen.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @341, i64 %i.b) #5, !nosanitize !13
  br label %bb.oo, !nosanitize !13

bb.oo:                                            ; preds = %bb.on, %gen_bitlen.exit
  call void @gen_codes(ptr noundef nonnull %i.n, i32 noundef %.2, ptr noundef nonnull %i.mv)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @compress_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !func_sanitize !94 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 12 uses
  %i.c = and i64 %i.b, 63, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13       ; 9 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @719, i64 %i.b) #5, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5952 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 63, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @720, i64 %i.g) #5, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.f, align 64, !tbaa !35  ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @721, i64 %i.b) #5, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !95  ; 3 uses
  br i1 %i.e, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @722, i64 %i.b) #5, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.o = ptrtoint ptr %i.l to i64, !nosanitize !13 ; 3 uses
  %i.p = icmp ne ptr %i.l, null, !nosanitize !13  ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.r = icmp ne ptr %i.n, null                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6008 ; 4 uses
  %i.u = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.v = icmp ne ptr %1, null                     ; 4 uses
  %i.w = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.x = icmp ne ptr %2, null                     ; 3 uses
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %zng_emit_lit.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %zng_emit_lit.exit ] ; 5 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.z = shl nuw nsw i64 %indvars.iv, 1
  %i.aa = add i64 %i.z, %i.o, !nosanitize !13     ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = xor i1 %i.p, %i.ab
  %i.ad = icmp uge i64 %i.aa, %i.o, !nosanitize !13
  %i.ae = and i1 %i.ad, %i.ac, !nosanitize !13
  br i1 %i.ae, label %bb.l, label %bb.k, !prof !14, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @723, i64 %i.o, i64 %i.aa) #5, !nosanitize !13
  br label %bb.l, !nosanitize !13

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = ptrtoint ptr %i.y to i64, !nosanitize !13 ; 2 uses
  %i.ag = and i64 %i.af, 1, !nosanitize !13
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !13
  %i.ai = and i1 %i.p, %i.ah
  br i1 %i.ai, label %bb.n, label %bb.m, !prof !14, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @724, i64 %i.af) #5, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = load i16, ptr %i.y, align 2, !tbaa !36  ; 4 uses
  %i.ak = zext i16 %i.aj to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.am = add i64 %indvars.iv, %i.q, !nosanitize !13 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = xor i1 %i.r, %i.an
  %i.ap = icmp uge i64 %i.am, %i.q, !nosanitize !13
  %i.aq = and i1 %i.ap, %i.ao, !nosanitize !13
  br i1 %i.aq, label %bb.p, label %bb.o, !prof !14, !nosanitize !13

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @725, i64 %i.q, i64 %i.am) #5, !nosanitize !13
  br label %bb.p, !nosanitize !13

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.r, label %bb.r, label %bb.q, !prof !14, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  %i.ar = ptrtoint ptr %i.al to i64, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @726, i64 %i.ar) #5, !nosanitize !13
  br label %bb.r, !nosanitize !13

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.as = load i8, ptr %i.al, align 1, !tbaa !31  ; 3 uses
  %i.at = zext i8 %i.as to i32
  %i.au = icmp eq i16 %i.aj, 0
  br i1 %i.au, label %bb.s, label %bb.ay

bb.s:                                             ; preds = %bb.r
  br i1 %i.e, label %bb.u, label %bb.t, !prof !14, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @727, i64 %i.b) #5, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.av = load i32, ptr %i.s, align 64, !tbaa !29 ; 8 uses
  br i1 %i.e, label %bb.w, label %bb.v, !prof !14, !nosanitize !13

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @728, i64 %i.b) #5, !nosanitize !13
  br label %bb.w, !nosanitize !13

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !28  ; 3 uses
  %i.ax = zext i8 %i.as to i64                    ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax ; 3 uses
  %i.az = shl nuw nsw i64 %i.ax, 2
  %i.ba = add i64 %i.az, %i.u, !nosanitize !13    ; 5 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = xor i1 %i.v, %i.bb
  %i.bd = icmp uge i64 %i.ba, %i.u, !nosanitize !13
  %i.be = and i1 %i.bd, %i.bc, !nosanitize !13    ; 3 uses
  br i1 %i.be, label %bb.y, label %bb.x, !prof !14, !nosanitize !13

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @729, i64 %i.u, i64 %i.ba) #5, !nosanitize !13
  br label %bb.y, !nosanitize !13

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bf = ptrtoint ptr %i.ay to i64, !nosanitize !13 ; 6 uses
  %i.bg = and i64 %i.bf, 1, !nosanitize !13
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !13   ; 4 uses
  %i.bi = and i1 %i.v, %i.bh, !nosanitize !13
  br i1 %i.bi, label %bb.aa, label %bb.z, !prof !14, !nosanitize !13

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @730, i64 %i.bf) #5, !nosanitize !13
  br label %bb.aa, !nosanitize !13

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bj = and i1 %i.v, %i.bh, !nosanitize !13
  br i1 %i.bj, label %.critedge.i, label %bb.ab, !prof !14, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @731, i64 %i.bf) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @732, i64 %i.bf) #5, !nosanitize !13
  br label %.critedge.i, !nosanitize !13

.critedge.i:                                      ; preds = %bb.ab, %bb.aa
  %i.bk = load i16, ptr %i.ay, align 2, !tbaa !31
  %i.bl = zext i16 %i.bk to i64                   ; 9 uses
  br i1 %i.be, label %bb.ad, label %bb.ac, !prof !14, !nosanitize !13

bb.ac:                                            ; preds = %.critedge.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @733, i64 %i.u, i64 %i.ba) #5, !nosanitize !13
  br label %bb.ad, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac, %.critedge.i
  br i1 %i.bh, label %.critedge37.i, label %bb.ae, !prof !14, !nosanitize !13

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @734, i64 %i.bf) #5, !nosanitize !13
  br label %.critedge37.i, !nosanitize !13

.critedge37.i:                                    ; preds = %bb.ae, %bb.ad
end_hunk_0
