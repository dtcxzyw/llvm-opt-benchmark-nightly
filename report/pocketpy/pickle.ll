Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/pickle?download=true
inline.NumInlined: 84
inline.NumDeleted: 13
begin_hunk_0_@pkl__write_object:bb.a

.thread324:                                       ; preds = %bb.bt
  %i.qn = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.10) #11
  br label %pkl__write_array.exit

bb.bu:                                            ; preds = %bb.bt
  %i.qo = load ptr, ptr %0, align 8, !tbaa !20
  %i.qp = load i16, ptr %i.qj, align 8, !tbaa !36
  %i.qq = sext i16 %i.qp to i64
  %i.qr = getelementptr inbounds i8, ptr %i.qo, i64 %i.qq
  store i8 1, ptr %i.qr, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bt, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.bu, %pkl__try_memo.exit308
  tail call fastcc void @pkl__emit_op(ptr noundef nonnull %0, i32 noundef 39)
  %i.qs = load i32, ptr %i.qe, align 8, !tbaa !92
  %i.qt = sext i32 %i.qs to i64
  tail call fastcc void @pkl__emit_int(ptr noundef nonnull %0, i64 noundef %i.qt)
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !93
  %i.qw = sext i32 %i.qv to i64
  tail call fastcc void @pkl__emit_int(ptr noundef nonnull %0, i64 noundef %i.qw)
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !52
  %i.qz = load i32, ptr %i.qf, align 8, !tbaa !51
  %i.ra = mul i32 %i.qz, 24
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @c11_vector__extend(ptr noundef nonnull %i.rb, ptr noundef %i.qy, i32 noundef %i.ra) #11
  %i.rc = load ptr, ptr %i.pl, align 8, !tbaa !24
  tail call fastcc void @pkl__store_memo(ptr noundef nonnull %0, ptr noundef %i.rc)
  br label %pkl__write_array.exit

bb.bv:                                            ; preds = %bb.a
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.re = load i8, ptr %i.rd, align 2, !tbaa !89, !range !26, !noundef !27
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !21 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !22
  %i.rl = icmp eq i32 %i.ri, %i.rk
  br i1 %i.rl, label %bb.bx, label %pkl__emit_op.exit310

bb.bx:                                            ; preds = %bb.bw
  %i.rm = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.rg) #11
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.rg, i32 noundef %i.rm) #11
  %.pre.i309 = load i32, ptr %i.rh, align 8, !tbaa !21
  br label %pkl__emit_op.exit310

pkl__emit_op.exit310:                             ; preds = %bb.bw, %bb.bx
  %i.rn = phi i32 [ %.pre.i309, %bb.bx ], [ %i.ri, %bb.bw ]
  %i.ro = load ptr, ptr %i.rg, align 8, !tbaa !23
  %i.rp = sext i32 %i.rn to i64
  %i.rq = getelementptr inbounds i8, ptr %i.ro, i64 %i.rp
  store i8 42, ptr %i.rq, align 1, !tbaa !24
  %i.rr = load i32, ptr %i.rh, align 8, !tbaa !21
  %i.rs = add nsw i32 %i.rr, 1
  store i32 %i.rs, ptr %i.rh, align 8, !tbaa !21
  tail call void @c11_vector__extend(ptr noundef nonnull %i.rg, ptr noundef nonnull %1, i32 noundef 24) #11
  %i.rt = load ptr, ptr %0, align 8, !tbaa !20
  %i.ru = load i16, ptr %1, align 8, !tbaa !36
  %i.rv = sext i16 %i.ru to i64
  %i.rw = getelementptr inbounds i8, ptr %i.rt, i64 %i.rv
  store i8 1, ptr %i.rw, align 1, !tbaa !25
  br label %pkl__write_array.exit

bb.by:                                            ; preds = %bb.bv
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !24
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sa = tail call i64 @c11_smallmap_p2i__get(ptr noundef nonnull %i.rz, ptr noundef %i.ry, i64 noundef -1) #11 ; 2 uses
  %i.sb = and i64 %i.sa, 4294967295
  %.not.i311.not = icmp eq i64 %i.sb, 4294967295
  br i1 %.not.i311.not, label %pkl__try_memo.exit315, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !21 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !22
  %i.sh = icmp eq i32 %i.se, %i.sg
  br i1 %i.sh, label %bb.ca, label %pkl__try_memo.exit315.thread

bb.ca:                                            ; preds = %bb.bz
  %i.si = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.sc) #11
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.sc, i32 noundef %i.si) #11
  %.pre.i.i314 = load i32, ptr %i.sd, align 8, !tbaa !21
  br label %pkl__try_memo.exit315.thread

pkl__try_memo.exit315.thread:                     ; preds = %bb.bz, %bb.ca
  %i.sj = phi i32 [ %.pre.i.i314, %bb.ca ], [ %i.se, %bb.bz ]
  %i.sk = load ptr, ptr %i.sc, align 8, !tbaa !23
  %i.sl = sext i32 %i.sj to i64
  %i.sm = getelementptr inbounds i8, ptr %i.sk, i64 %i.sl
  store i8 0, ptr %i.sm, align 1, !tbaa !24
  %i.sn = load i32, ptr %i.sd, align 8, !tbaa !21
  %i.so = add nsw i32 %i.sn, 1
  store i32 %i.so, ptr %i.sd, align 8, !tbaa !21
  %sext.i313 = shl i64 %i.sa, 32
  %i.sp = ashr exact i64 %sext.i313, 32
  tail call fastcc void @pkl__emit_int(ptr noundef nonnull %0, i64 noundef %i.sp)
  br label %pkl__write_array.exit

pkl__try_memo.exit315:                            ; preds = %bb.by
  %i.sq = load i16, ptr %1, align 8, !tbaa !36
  %i.sr = tail call ptr @pk_typeinfo(i16 noundef signext %i.sq) #11
  %i.ss = load i16, ptr %1, align 8, !tbaa !36
  %i.st = load ptr, ptr @__reduce__, align 8, !tbaa !94
  %i.su = tail call ptr @py_tpfindmagic(i16 noundef signext %i.ss, ptr noundef %i.st) #11 ; 2 uses
  %.not236 = icmp eq ptr %i.su, null
  br i1 %.not236, label %bb.cl, label %bb.cb

bb.cb:                                            ; preds = %pkl__try_memo.exit315
  %i.sv = tail call zeroext i1 @py_call(ptr noundef nonnull %i.su, i32 noundef 1, ptr noundef nonnull %1) #11
  br i1 %i.sv, label %bb.cc, label %pkl__write_array.exit

bb.cc:                                            ; preds = %bb.cb
  %i.sw = tail call ptr (...) @py_retval() #11    ; 4 uses
  %i.sx = tail call zeroext i1 @py_istype(ptr noundef %i.sw, i16 noundef signext 9) #11
  br i1 %i.sx, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sy = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.11) #11
  br label %pkl__write_array.exit

bb.ce:                                            ; preds = %bb.cc
  %i.sz = tail call i32 @py_tuple_len(ptr noundef %i.sw) #11
  %.not237 = icmp eq i32 %i.sz, 2
  br i1 %.not237, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ta = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.12) #11
  br label %pkl__write_array.exit

bb.cg:                                            ; preds = %bb.ce
  %i.tb = tail call ptr @py_tuple_getitem(ptr noundef %i.sw, i32 noundef 0) #11
  %i.tc = tail call fastcc zeroext i1 @pkl__write_object(ptr noundef nonnull %0, ptr noundef %i.tb)
  br i1 %i.tc, label %bb.ch, label %pkl__write_array.exit

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @pkl__emit_op(ptr noundef nonnull %0, i32 noundef 2)
  %i.td = tail call ptr @py_tuple_getitem(ptr noundef %i.sw, i32 noundef 1) #11 ; 3 uses
  %i.te = tail call zeroext i1 @py_istype(ptr noundef %i.td, i16 noundef signext 9) #11
  br i1 %i.te, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.tf = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.13) #11
  br label %pkl__write_array.exit

bb.cj:                                            ; preds = %bb.ch
  %i.tg = tail call i32 @py_tuple_len(ptr noundef %i.td) #11 ; 3 uses
  %.not238.not340 = icmp sgt i32 %i.tg, 0
  br i1 %.not238.not340, label %.lr.ph343, label %.critedge

bb.ck:                                            ; preds = %.lr.ph343
  %i.th = add nuw nsw i32 %.0224341, 1            ; 2 uses
  %exitcond365.not = icmp eq i32 %i.th, %i.tg
  br i1 %exitcond365.not, label %.critedge, label %.lr.ph343, !llvm.loop !82

.lr.ph343:                                        ; preds = %bb.cj, %bb.ck
  %.0224341 = phi i32 [ %i.th, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  %i.ti = tail call ptr @py_tuple_getitem(ptr noundef %i.td, i32 noundef %.0224341) #11
  %i.tj = tail call fastcc zeroext i1 @pkl__write_object(ptr noundef %0, ptr noundef %i.ti)
  br i1 %i.tj, label %bb.ck, label %pkl__write_array.exit

.critedge:                                        ; preds = %bb.ck, %bb.cj
  tail call fastcc void @pkl__emit_op(ptr noundef %0, i32 noundef 43)
  %i.tk = sext i32 %i.tg to i64
  tail call fastcc void @pkl__emit_int(ptr noundef %0, i64 noundef %i.tk)
  %i.tl = load ptr, ptr %i.rx, align 8, !tbaa !24
  tail call fastcc void @pkl__store_memo(ptr noundef %0, ptr noundef %i.tl)
  br label %pkl__write_array.exit

bb.cl:                                            ; preds = %pkl__try_memo.exit315
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sr, i64 56
  %i.tn = load i8, ptr %i.tm, align 8, !tbaa !95, !range !26, !noundef !27
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.tp = load ptr, ptr %i.rx, align 8, !tbaa !24
  %i.tq = tail call ptr @PyObject__dict(ptr noundef %i.tp) #11 ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !98 ; 2 uses
  %i.tt = icmp slt i32 %i.ts, 1
  br i1 %i.tt, label %.critedge240, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.cm
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %i.tv = zext nneg i32 %i.ts to i64
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph347, %select.unfold
  %indvars.iv366 = phi i64 [ %i.tv, %.lr.ph347 ], [ %indvars.iv.next367, %select.unfold ] ; 3 uses
  %indvars.iv.next367 = add nsw i64 %indvars.iv366, -1
  %i.tw = load ptr, ptr %i.tu, align 8, !tbaa !99
  %i.tx = getelementptr [32 x i8], ptr %i.tw, i64 %indvars.iv366 ; 2 uses
  %4 = getelementptr i8, ptr %i.tx, i64 -32
  %i.ty = load ptr, ptr %4, align 8, !tbaa !101
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %select.unfold, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ua = getelementptr i8, ptr %i.tx, i64 -24
  %i.ub = tail call fastcc zeroext i1 @pkl__write_object(ptr noundef %0, ptr noundef nonnull %i.ua)
  br i1 %i.ub, label %select.unfold, label %pkl__write_array.exit

select.unfold:                                    ; preds = %bb.co, %bb.cn
  %i.uc = icmp samesign ult i64 %indvars.iv366, 2
  br i1 %i.uc, label %.critedge240, label %bb.cn, !llvm.loop !83

.critedge240:                                     ; preds = %select.unfold, %bb.cm
  tail call fastcc void @pkl__emit_op(ptr noundef %0, i32 noundef 44)
  %i.ud = load i16, ptr %1, align 8, !tbaa !36
  %i.ue = sext i16 %i.ud to i64
  tail call fastcc void @pkl__emit_int(ptr noundef %0, i64 noundef %i.ue)
  %i.uf = load ptr, ptr %0, align 8, !tbaa !20
  %i.ug = load i16, ptr %1, align 8, !tbaa !36
  %i.uh = sext i16 %i.ug to i64
  %i.ui = getelementptr inbounds i8, ptr %i.uf, i64 %i.uh
  store i8 1, ptr %i.ui, align 1, !tbaa !25
  %i.uj = load i32, ptr %i.tq, align 8, !tbaa !102
  %i.uk = sext i32 %i.uj to i64
  tail call fastcc void @pkl__emit_int(ptr noundef nonnull %0, i64 noundef %i.uk)
  %i.ul = load i32, ptr %i.tr, align 8, !tbaa !98 ; 2 uses
  %i.um = icmp sgt i32 %i.ul, 0
  br i1 %i.um, label %.lr.ph349, label %._crit_edge350

.lr.ph349:                                        ; preds = %.critedge240
  %i.un = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.cp

._crit_edge350:                                   ; preds = %bb.cr, %.critedge240
  %i.up = load ptr, ptr %i.rx, align 8, !tbaa !24
  tail call fastcc void @pkl__store_memo(ptr noundef nonnull %0, ptr noundef %i.up)
  br label %pkl__write_array.exit

bb.cp:                                            ; preds = %.lr.ph349, %bb.cr
  %i.uq = phi i32 [ %i.ul, %.lr.ph349 ], [ %i.uz, %bb.cr ]
  %indvars.iv369 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next370, %bb.cr ] ; 2 uses
  %i.ur = load ptr, ptr %i.un, align 8, !tbaa !99
  %i.us = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %indvars.iv369
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !101 ; 2 uses
  %i.uu = icmp eq ptr %i.ut, null
  br i1 %i.uu, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uv = tail call { ptr, i32 } @py_name2sv(ptr noundef nonnull %i.ut) #11 ; 2 uses
  %i.uw = extractvalue { ptr, i32 } %i.uv, 0
  %i.ux = extractvalue { ptr, i32 } %i.uv, 1
  %i.uy = add nsw i32 %i.ux, 1
  tail call void @c11_vector__extend(ptr noundef nonnull %i.uo, ptr noundef %i.uw, i32 noundef %i.uy) #11
  %.pre373 = load i32, ptr %i.tr, align 8, !tbaa !98
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.uz = phi i32 [ %i.uq, %bb.cp ], [ %.pre373, %bb.cq ] ; 2 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.va = sext i32 %i.uz to i64
  %i.vb = icmp slt i64 %indvars.iv.next370, %i.va
  br i1 %i.vb, label %bb.cp, label %._crit_edge350, !llvm.loop !84

bb.cs:                                            ; preds = %bb.cl
  %i.vc = load i16, ptr %1, align 8, !tbaa !36
  %i.vd = sext i16 %i.vc to i32
  %i.ve = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.14, i32 noundef %i.vd) #11
  br label %pkl__write_array.exit

pkl__write_array.exit:                            ; preds = %.lr.ph335, %.lr.ph338, %.lr.ph343, %bb.co, %pkl__try_memo.exit315.thread, %.thread324, %pkl__try_memo.exit308.thread, %pkl__try_memo.exit301.thread, %pkl__try_memo.exit291.thread, %pkl__try_memo.exit276.thread, %pkl__try_memo.exit267.thread, %pkl__try_memo.exit262.thread, %pkl__try_memo.exit253.thread, %pkl__try_memo.exit.thread, %bb.cs, %bb.cb, %bb.ci, %.critedge, %bb.cg, %bb.cf, %bb.cd, %._crit_edge350, %._crit_edge, %bb.bl, %bb.bp, %bb.bo, %bb.bn, %_check_function.exit, %bb.bi, %bb.bj, %bb.ak, %pkl__try_memo.exit276, %._crit_edge336, %._crit_edge339, %pkl__emit_op.exit248, %bb.t, %pkl__emit_op.exit310, %pkl__store_memo.exit296, %pkl__emit_op.exit286, %pkl__emit_op.exit284, %pkl__emit_op.exit282, %pkl__emit_op.exit280, %pkl__emit_op.exit278, %pkl__store_memo.exit, %pkl__emit_op.exit246, %bb.l, %bb.g, %pkl__emit_op.exit242, %pkl__emit_op.exit, %bb.b
  %.19 = phi i1 [ %i.qn, %.thread324 ], [ true, %pkl__try_memo.exit315.thread ], [ true, %pkl__emit_op.exit310 ], [ %i.e, %bb.b ], [ true, %pkl__emit_op.exit ], [ true, %pkl__emit_op.exit242 ], [ true, %bb.g ], [ true, %bb.l ], [ true, %pkl__emit_op.exit246 ], [ true, %pkl__try_memo.exit308.thread ], [ true, %pkl__try_memo.exit.thread ], [ true, %pkl__emit_op.exit248 ], [ true, %pkl__store_memo.exit ], [ true, %pkl__try_memo.exit253.thread ], [ true, %pkl__try_memo.exit262.thread ], [ true, %._crit_edge339 ], [ true, %pkl__try_memo.exit267.thread ], [ true, %._crit_edge336 ], [ true, %pkl__try_memo.exit276.thread ], [ true, %pkl__emit_op.exit278 ], [ true, %pkl__emit_op.exit280 ], [ true, %pkl__emit_op.exit282 ], [ true, %pkl__emit_op.exit284 ], [ true, %pkl__emit_op.exit286 ], [ true, %bb.ak ], [ true, %pkl__store_memo.exit296 ], [ true, %pkl__try_memo.exit291.thread ], [ true, %pkl__try_memo.exit301.thread ], [ false, %bb.bi ], [ true, %bb.bp ], [ true, %bb.t ], [ true, %._crit_edge350 ], [ false, %.lr.ph343 ], [ false, %pkl__try_memo.exit276 ], [ false, %_check_function.exit ], [ true, %bb.bj ], [ %i.ox, %bb.bl ], [ %i.pa, %bb.bn ], [ false, %bb.bo ], [ true, %._crit_edge ], [ false, %bb.cb ], [ %i.ve, %bb.cs ], [ true, %.critedge ], [ %i.ta, %bb.cf ], [ false, %bb.cg ], [ %i.sy, %bb.cd ], [ %i.tf, %bb.ci ], [ false, %.lr.ph338 ], [ false, %bb.co ], [ false, %.lr.ph335 ]
  ret i1 %.19
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pkl__emit_op(ptr noundef %0, i32 noundef range(i32 0, 46) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.a) #11
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.a, i32 noundef %i.g) #11
  %.pre = load i32, ptr %i.b, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.i = trunc nuw nsw i32 %1 to i8
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !24
  %i.m = load i32, ptr %i.b, align 8, !tbaa !21
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !21
  ret void
}

declare ptr @py_retval(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @py_pickle_loads(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.c11_vector, align 8         ; 7 uses
  %i.d = icmp slt i32 %1, 2
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !24
  %.not = icmp eq i8 %i.e, 80
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %.not15 = icmp eq i8 %i.g, 75
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.3) #11
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @c11_smallmap_d2d__ctor(ptr noundef nonnull %2) #11
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.e
  %.022.lcssa = phi ptr [ %i.i, %bb.e ], [ %i.aj, %bb.j ]
  %i.l = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 1 ; 3 uses
  %i.m = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 10) #12 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.s = call i32 @c11__parse_uint(ptr nonnull %i.l, i32 %i.q, ptr noundef nonnull %i.c, i32 noundef 10) #11 ; 0 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.u = trunc i64 %i.t to i32
  %i.v = call zeroext i1 @py_pickle_loads_body(ptr noundef nonnull %i.r, i32 noundef %i.u, ptr noundef nonnull %2)
  call void @c11_smallmap_d2d__dtor(ptr noundef nonnull %2) #11
  br label %bb.k

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %.02226 = phi ptr [ %i.aj, %bb.j ], [ %i.i, %bb.e ] ; 3 uses
  %i.w = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.02226, i32 noundef 40) #12 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %.02226 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ac = call i32 @c11__parse_uint(ptr nonnull %.02226, i32 %i.aa, ptr noundef nonnull %i.b, i32 noundef 10) #11 ; 0 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.ae = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 noundef 41) #12 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32                  ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %i.ak = call i32 @c11_sv__rindex(ptr nonnull %i.ab, i32 %i.ai, i8 noundef signext 46) #11 ; 3 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.am = call ptr @py_namev(ptr nonnull %i.ab, i32 %i.ai) #11
  %i.an = call signext i16 @py_gettype(ptr noundef null, ptr noundef %i.am) #11
  br label %pkl__header_find_type.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ao = call { ptr, i32 } @c11_sv__slice2(ptr nonnull %i.ab, i32 %i.ai, i32 noundef 0, i32 noundef %i.ak) #11 ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = extractvalue { ptr, i32 } %i.ao, 1
  %i.ar = add nuw nsw i32 %i.ak, 1
  %i.as = call { ptr, i32 } @c11_sv__slice(ptr nonnull %i.ab, i32 %i.ai, i32 noundef %i.ar) #11 ; 2 uses
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = extractvalue { ptr, i32 } %i.as, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.av = sext i32 %i.aq to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ap, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !24
  %i.ax = call ptr @py_namev(ptr %i.at, i32 %i.au) #11
  %i.ay = call signext i16 @py_gettype(ptr noundef nonnull %i.a, ptr noundef %i.ax) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %pkl__header_find_type.exit

pkl__header_find_type.exit:                       ; preds = %bb.f, %bb.g
  %.0.i = phi i16 [ %i.an, %bb.f ], [ %i.ay, %bb.g ] ; 3 uses
end_hunk_0
begin_hunk_1_@py_pickle_loads_body:bb.a
bb.da:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.db:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.dc:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.dd:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.de:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.df:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.dg:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.dh:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.di:                                            ; preds = %bb.ct
  br label %pkl__read_int.exit159

bb.dj:                                            ; preds = %bb.ct
  %.0.copyload5.i158 = load i8, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.0275, i64 3
  %i.cu = sext i8 %.0.copyload5.i158 to i64
  br label %pkl__read_int.exit159

bb.dk:                                            ; preds = %bb.ct
  %.0.copyload3.i157 = load i16, ptr %i.cs, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.0275, i64 4
  %i.cw = sext i16 %.0.copyload3.i157 to i64
  br label %pkl__read_int.exit159

bb.dl:                                            ; preds = %bb.ct
  %.0.copyload1.i156 = load i32, ptr %i.cs, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.0275, i64 6
  %i.cy = zext i32 %.0.copyload1.i156 to i64
  br label %pkl__read_int.exit159

bb.dm:                                            ; preds = %bb.ct
  %.0.copyload.i154 = load i64, ptr %i.cs, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.0275, i64 10
  br label %pkl__read_int.exit159

bb.dn:                                            ; preds = %bb.ct
  %i.da = zext i8 %i.cr to i32
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !109
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.20, i32 noundef %i.da) #13 ; 0 uses
  %i.dd = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #14
  unreachable

pkl__read_int.exit159:                            ; preds = %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm
  %.8282 = phi ptr [ %i.cs, %bb.ct ], [ %i.cs, %bb.cu ], [ %i.cs, %bb.cv ], [ %i.cs, %bb.cw ], [ %i.cs, %bb.cx ], [ %i.cs, %bb.cy ], [ %i.cs, %bb.cz ], [ %i.cs, %bb.da ], [ %i.cs, %bb.db ], [ %i.cs, %bb.dc ], [ %i.cs, %bb.dd ], [ %i.cs, %bb.de ], [ %i.cs, %bb.df ], [ %i.cs, %bb.dg ], [ %i.cs, %bb.dh ], [ %i.cs, %bb.di ], [ %i.ct, %bb.dj ], [ %i.cv, %bb.dk ], [ %i.cx, %bb.dl ], [ %i.cz, %bb.dm ]
  %.0.i155 = phi i64 [ 0, %bb.ct ], [ 1, %bb.cu ], [ 2, %bb.cv ], [ 3, %bb.cw ], [ 4, %bb.cx ], [ 5, %bb.cy ], [ 6, %bb.cz ], [ 7, %bb.da ], [ 8, %bb.db ], [ 9, %bb.dc ], [ 10, %bb.dd ], [ 11, %bb.de ], [ 12, %bb.df ], [ 13, %bb.dg ], [ 14, %bb.dh ], [ 15, %bb.di ], [ %i.cu, %bb.dj ], [ %i.cw, %bb.dk ], [ %i.cy, %bb.dl ], [ %.0.copyload.i154, %bb.dm ]
  %i.de = trunc i64 %.0.i155 to i32               ; 3 uses
  %i.df = tail call ptr (...) @py_retval() #11    ; 3 uses
  tail call void @py_newlistn(ptr noundef %i.df, i32 noundef %i.de) #11
  %i.dg = icmp sgt i32 %i.de, 0
  br i1 %i.dg, label %.lr.ph356, label %._crit_edge357

._crit_edge357:                                   ; preds = %.lr.ph356, %pkl__read_int.exit159
  tail call void @py_push(ptr noundef %i.df) #11
  br label %.critedge.backedge

.lr.ph356:                                        ; preds = %pkl__read_int.exit159, %.lr.ph356
  %.0120.in355 = phi i32 [ %.0120, %.lr.ph356 ], [ %i.de, %pkl__read_int.exit159 ] ; 2 uses
  %.0120 = add nsw i32 %.0120.in355, -1           ; 2 uses
  %i.dh = tail call ptr @py_peek(i32 noundef -1) #11
  tail call void @py_list_setitem(ptr noundef %i.df, i32 noundef %.0120, ptr noundef %i.dh) #11
  tail call void (...) @py_pop() #11
  %i.di = icmp samesign ugt i32 %.0120.in355, 1
  br i1 %i.di, label %.lr.ph356, label %._crit_edge357, !llvm.loop !103

bb.do:                                            ; preds = %.critedge
  %i.dj = load i8, ptr %i.e, align 1, !tbaa !24   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0275, i64 2 ; 20 uses
  switch i8 %i.dj, label %bb.ei [
    i8 5, label %pkl__read_int.exit165
    i8 6, label %bb.dp
    i8 7, label %bb.dq
    i8 8, label %bb.dr
    i8 9, label %bb.ds
    i8 10, label %bb.dt
    i8 11, label %bb.du
    i8 12, label %bb.dv
    i8 13, label %bb.dw
    i8 14, label %bb.dx
    i8 15, label %bb.dy
    i8 16, label %bb.dz
    i8 17, label %bb.ea
    i8 18, label %bb.eb
    i8 19, label %bb.ec
    i8 20, label %bb.ed
    i8 21, label %bb.ee
    i8 22, label %bb.ef
    i8 23, label %bb.eg
    i8 24, label %bb.eh
  ]

bb.dp:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dq:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dr:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.ds:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dt:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.du:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dv:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dw:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dx:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dy:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.dz:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.ea:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.eb:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.ec:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.ed:                                            ; preds = %bb.do
  br label %pkl__read_int.exit165

bb.ee:                                            ; preds = %bb.do
  %.0.copyload5.i164 = load i8, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.0275, i64 3
  %i.dm = sext i8 %.0.copyload5.i164 to i64
  br label %pkl__read_int.exit165

bb.ef:                                            ; preds = %bb.do
  %.0.copyload3.i163 = load i16, ptr %i.dk, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.0275, i64 4
  %i.do = sext i16 %.0.copyload3.i163 to i64
  br label %pkl__read_int.exit165

bb.eg:                                            ; preds = %bb.do
  %.0.copyload1.i162 = load i32, ptr %i.dk, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.0275, i64 6
  %i.dq = zext i32 %.0.copyload1.i162 to i64
  br label %pkl__read_int.exit165

bb.eh:                                            ; preds = %bb.do
  %.0.copyload.i160 = load i64, ptr %i.dk, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.0275, i64 10
  br label %pkl__read_int.exit165

bb.ei:                                            ; preds = %bb.do
  %i.ds = zext i8 %i.dj to i32
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !109
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.20, i32 noundef %i.ds) #13 ; 0 uses
  %i.dv = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #14
  unreachable

pkl__read_int.exit165:                            ; preds = %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh
  %.9 = phi ptr [ %i.dk, %bb.do ], [ %i.dk, %bb.dp ], [ %i.dk, %bb.dq ], [ %i.dk, %bb.dr ], [ %i.dk, %bb.ds ], [ %i.dk, %bb.dt ], [ %i.dk, %bb.du ], [ %i.dk, %bb.dv ], [ %i.dk, %bb.dw ], [ %i.dk, %bb.dx ], [ %i.dk, %bb.dy ], [ %i.dk, %bb.dz ], [ %i.dk, %bb.ea ], [ %i.dk, %bb.eb ], [ %i.dk, %bb.ec ], [ %i.dk, %bb.ed ], [ %i.dl, %bb.ee ], [ %i.dn, %bb.ef ], [ %i.dp, %bb.eg ], [ %i.dr, %bb.eh ]
  %.0.i161 = phi i64 [ 0, %bb.do ], [ 1, %bb.dp ], [ 2, %bb.dq ], [ 3, %bb.dr ], [ 4, %bb.ds ], [ 5, %bb.dt ], [ 6, %bb.du ], [ 7, %bb.dv ], [ 8, %bb.dw ], [ 9, %bb.dx ], [ 10, %bb.dy ], [ 11, %bb.dz ], [ 12, %bb.ea ], [ 13, %bb.eb ], [ 14, %bb.ec ], [ 15, %bb.ed ], [ %i.dm, %bb.ee ], [ %i.do, %bb.ef ], [ %i.dq, %bb.eg ], [ %.0.copyload.i160, %bb.eh ] ; 2 uses
  %i.dw = trunc i64 %.0.i161 to i32               ; 2 uses
  %i.dx = tail call ptr (...) @py_retval() #11    ; 2 uses
  %i.dy = tail call ptr @py_newtuple(ptr noundef %i.dx, i32 noundef %i.dw) #11
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph353.preheader, label %._crit_edge354

.lr.ph353.preheader:                              ; preds = %pkl__read_int.exit165
  %i.ea = and i64 %.0.i161, 2147483647
  br label %.lr.ph353

._crit_edge354:                                   ; preds = %.lr.ph353, %pkl__read_int.exit165
  tail call void @py_push(ptr noundef %i.dx) #11
  br label %.critedge.backedge

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %.lr.ph353
  %indvars.iv408 = phi i64 [ %i.ea, %.lr.ph353.preheader ], [ %indvars.iv.next409, %.lr.ph353 ] ; 3 uses
  %indvars.iv.next409 = add nsw i64 %indvars.iv408, -1
  %i.eb = getelementptr [24 x i8], ptr %i.dy, i64 %indvars.iv408
  %3 = getelementptr i8, ptr %i.eb, i64 -24
  %i.ec = tail call ptr @py_peek(i32 noundef -1) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !tbaa.struct !111
  tail call void (...) @py_pop() #11
  %i.ed = icmp samesign ugt i64 %indvars.iv408, 1
  br i1 %i.ed, label %.lr.ph353, label %._crit_edge354, !llvm.loop !104

bb.ej:                                            ; preds = %.critedge
  %i.ee = load i8, ptr %i.e, align 1, !tbaa !24   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0275, i64 2 ; 20 uses
  switch i8 %i.ee, label %bb.fd [
    i8 5, label %pkl__read_int.exit171
    i8 6, label %bb.ek
    i8 7, label %bb.el
    i8 8, label %bb.em
    i8 9, label %bb.en
    i8 10, label %bb.eo
    i8 11, label %bb.ep
    i8 12, label %bb.eq
    i8 13, label %bb.er
    i8 14, label %bb.es
    i8 15, label %bb.et
    i8 16, label %bb.eu
    i8 17, label %bb.ev
    i8 18, label %bb.ew
    i8 19, label %bb.ex
    i8 20, label %bb.ey
    i8 21, label %bb.ez
    i8 22, label %bb.fa
    i8 23, label %bb.fb
    i8 24, label %bb.fc
  ]

bb.ek:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.el:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.em:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.en:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.eo:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.ep:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.eq:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.er:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.es:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.et:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.eu:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.ev:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.ew:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.ex:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.ey:                                            ; preds = %bb.ej
  br label %pkl__read_int.exit171

bb.ez:                                            ; preds = %bb.ej
  %.0.copyload5.i170 = load i8, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0275, i64 3
  %i.eh = sext i8 %.0.copyload5.i170 to i64
  br label %pkl__read_int.exit171

bb.fa:                                            ; preds = %bb.ej
  %.0.copyload3.i169 = load i16, ptr %i.ef, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.0275, i64 4
  %i.ej = sext i16 %.0.copyload3.i169 to i64
  br label %pkl__read_int.exit171

bb.fb:                                            ; preds = %bb.ej
  %.0.copyload1.i168 = load i32, ptr %i.ef, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.0275, i64 6
  %i.el = zext i32 %.0.copyload1.i168 to i64
  br label %pkl__read_int.exit171

bb.fc:                                            ; preds = %bb.ej
  %.0.copyload.i166 = load i64, ptr %i.ef, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %.0275, i64 10
  br label %pkl__read_int.exit171

bb.fd:                                            ; preds = %bb.ej
  %i.en = zext i8 %i.ee to i32
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !109
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str.20, i32 noundef %i.en) #13 ; 0 uses
  %i.eq = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #14
  unreachable

pkl__read_int.exit171:                            ; preds = %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc
  %.10 = phi ptr [ %i.ef, %bb.ej ], [ %i.ef, %bb.ek ], [ %i.ef, %bb.el ], [ %i.ef, %bb.em ], [ %i.ef, %bb.en ], [ %i.ef, %bb.eo ], [ %i.ef, %bb.ep ], [ %i.ef, %bb.eq ], [ %i.ef, %bb.er ], [ %i.ef, %bb.es ], [ %i.ef, %bb.et ], [ %i.ef, %bb.eu ], [ %i.ef, %bb.ev ], [ %i.ef, %bb.ew ], [ %i.ef, %bb.ex ], [ %i.ef, %bb.ey ], [ %i.eg, %bb.ez ], [ %i.ei, %bb.fa ], [ %i.ek, %bb.fb ], [ %i.em, %bb.fc ]
  %.0.i167 = phi i64 [ 0, %bb.ej ], [ 1, %bb.ek ], [ 2, %bb.el ], [ 3, %bb.em ], [ 4, %bb.en ], [ 5, %bb.eo ], [ 6, %bb.ep ], [ 7, %bb.eq ], [ 8, %bb.er ], [ 9, %bb.es ], [ 10, %bb.et ], [ 11, %bb.eu ], [ 12, %bb.ev ], [ 13, %bb.ew ], [ 14, %bb.ex ], [ 15, %bb.ey ], [ %i.eh, %bb.ez ], [ %i.ej, %bb.fa ], [ %i.el, %bb.fb ], [ %.0.copyload.i166, %bb.fc ]
  %i.er = trunc i64 %.0.i167 to i32
  %i.es = tail call ptr (...) @py_pushtmp() #11   ; 3 uses
  tail call void @py_newdict(ptr noundef %i.es) #11
  %i.et = tail call ptr @py_peek(i32 noundef -1) #11
  %i.eu = shl nsw i32 %i.er, 1                    ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [24 x i8], ptr %i.et, i64 %i.ew ; 2 uses
  %i.ey = tail call ptr @py_peek(i32 noundef -1) #11 ; 2 uses
  %.not131.not348 = icmp ult ptr %i.ex, %i.ey
  br i1 %.not131.not348, label %.lr.ph350, label %._crit_edge351

bb.fe:                                            ; preds = %.lr.ph350
  %i.ez = getelementptr inbounds nuw i8, ptr %.0122349, i64 48 ; 2 uses
  %.not131.not = icmp ult ptr %i.ez, %i.ey
  br i1 %.not131.not, label %.lr.ph350, label %._crit_edge351, !llvm.loop !105

.lr.ph350:                                        ; preds = %pkl__read_int.exit171, %bb.fe
  %.0122349 = phi ptr [ %i.ez, %bb.fe ], [ %i.ex, %pkl__read_int.exit171 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0122349, i64 24
  %i.fb = tail call zeroext i1 @py_dict_setitem(ptr noundef %i.es, ptr noundef %.0122349, ptr noundef nonnull %i.fa) #11
  br i1 %i.fb, label %bb.fe, label %.thread

._crit_edge351:                                   ; preds = %bb.fe, %pkl__read_int.exit171
  %i.fc = tail call ptr (...) @py_retval() #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false), !tbaa.struct !111
  %i.fd = or disjoint i32 %i.eu, 1
  tail call void @py_shrink(i32 noundef %i.fd) #11
  %i.fe = tail call ptr (...) @py_retval() #11
  tail call void @py_push(ptr noundef %i.fe) #11
  br label %.critedge.backedge

bb.ff:                                            ; preds = %.critedge
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.e, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.0275, i64 9
  %i.fg = tail call ptr (...) @py_pushtmp() #11
  tail call void @py_newvec2(ptr noundef %i.fg, <2 x float> %.sroa.046.0.copyload) #11
  br label %.critedge.backedge

bb.fg:                                            ; preds = %.critedge
  %.sroa.044.0.copyload = load <2 x float>, ptr %i.e, align 1
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0275, i64 9
  %.sroa.445.0.copyload = load float, ptr %.sroa.445.0..sroa_idx, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.0275, i64 13
  %i.fi = tail call ptr (...) @py_pushtmp() #11
  tail call void @py_newvec3(ptr noundef %i.fi, <2 x float> %.sroa.044.0.copyload, float %.sroa.445.0.copyload) #11
  br label %.critedge.backedge

bb.fh:                                            ; preds = %.critedge
  %i.fj = load i8, ptr %i.e, align 1, !tbaa !24   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0275, i64 2 ; 20 uses
  switch i8 %i.fj, label %bb.gb [
    i8 5, label %pkl__read_int.exit177
    i8 6, label %bb.fi
    i8 7, label %bb.fj
    i8 8, label %bb.fk
    i8 9, label %bb.fl
    i8 10, label %bb.fm
    i8 11, label %bb.fn
    i8 12, label %bb.fo
    i8 13, label %bb.fp
    i8 14, label %bb.fq
    i8 15, label %bb.fr
    i8 16, label %bb.fs
    i8 17, label %bb.ft
    i8 18, label %bb.fu
    i8 19, label %bb.fv
    i8 20, label %bb.fw
    i8 21, label %bb.fx
    i8 22, label %bb.fy
    i8 23, label %bb.fz
    i8 24, label %bb.ga
  ]

bb.fi:                                            ; preds = %bb.fh
  br label %pkl__read_int.exit177

bb.fj:                                            ; preds = %bb.fh
  br label %pkl__read_int.exit177

bb.fk:                                            ; preds = %bb.fh
  br label %pkl__read_int.exit177

bb.fl:                                            ; preds = %bb.fh
  br label %pkl__read_int.exit177

bb.fm:                                            ; preds = %bb.fh
  br label %pkl__read_int.exit177

bb.fn:                                            ; preds = %bb.fh
  br label %pkl__read_int.exit177
end_hunk_1
