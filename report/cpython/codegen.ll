inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@codegen_visit_stmt:bb.a
  %i.hr = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %i.hp, i64 %i.hq, ptr noundef nonnull @.str.244) #10, !inline_history !71
  br label %codegen_return.exit

bb.ca:                                            ; preds = %bb.bx
  br i1 %i.he, label %bb.cb, label %..thread361_crit_edge

..thread361_crit_edge:                            ; preds = %bb.ca
  %.pre435 = load i32, ptr %i.gs, align 8, !tbaa !56
  br label %.thread361

.thread359:                                       ; preds = %bb.by
  br i1 %i.he, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.thread359, %bb.ca
  %i.hs = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.hl), !inline_history !71
  %i.ht = icmp eq i32 %i.hs, -1
  br i1 %i.ht, label %codegen_return.exit, label %bb.cd

bb.cc:                                            ; preds = %.thread359
  %i.hu = getelementptr i8, ptr %i.hl, i64 40
  %i.hv = load <4 x i32>, ptr %i.hu, align 8, !tbaa !7
  %i.hw = shufflevector <4 x i32> %i.hv, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.hw, ptr %5, align 16, !tbaa !7
  %i.hx = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !71
  %i.hy = load i64, ptr %5, align 16
  %i.hz = load i64, ptr %i.gu, align 8
  %i.ia = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hx, i32 noundef 27, i32 noundef 0, i64 %i.hy, i64 %i.hz) #10
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %codegen_return.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pr = load ptr, ptr %i.ha, align 8, !tbaa !24  ; 2 uses
  %i.ic = icmp eq ptr %.pr, null
  %.pre436 = load i32, ptr %i.gs, align 8, !tbaa !56 ; 3 uses
  br i1 %i.ic, label %.thread361, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.id = getelementptr i8, ptr %.pr, i64 40
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !18
  %.not51.i = icmp eq i32 %i.ie, %.pre436
  br i1 %.not51.i, label %bb.cf, label %.thread361

.thread361:                                       ; preds = %..thread361_crit_edge, %bb.ce, %bb.cd
  %i.if = phi i32 [ %.pre435, %..thread361_crit_edge ], [ %.pre436, %bb.ce ], [ %.pre436, %bb.cd ]
  %i.ig = load i32, ptr %i.gx, align 4, !tbaa !60
  store i32 %i.if, ptr %5, align 16, !tbaa !7
  %i.ih = load <2 x i32>, ptr %i.gv, align 4, !tbaa !7
  %i.ii = shufflevector <2 x i32> %i.ih, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ii, ptr %i.gt, align 4, !tbaa !7
  store i32 %i.ig, ptr %i.gw, align 4, !tbaa !7
  %i.ij = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !71
  %i.ik = load i64, ptr %5, align 16
  %i.il = load i64, ptr %i.gu, align 8
  %i.im = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ij, i32 noundef 27, i32 noundef 0, i64 %i.ik, i64 %i.il) #10
  %i.in = icmp eq i32 %i.im, -1
  br i1 %i.in, label %codegen_return.exit, label %bb.cf

bb.cf:                                            ; preds = %.thread361, %bb.ce
  %i.io = call fastcc i32 @codegen_unwind_fblock_stack(ptr noundef %0, ptr noundef %5, i32 noundef %i.hf, ptr noundef null), !inline_history !71
  %i.ip = icmp eq i32 %i.io, -1
  br i1 %i.ip, label %codegen_return.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iq = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.is = load i64, ptr %5, align 16
  %i.it = load i64, ptr %i.gu, align 8
  %i.iu = tail call fastcc i32 @codegen_addop_load_const(ptr noundef %0, i64 %i.is, i64 %i.it, ptr noundef nonnull @_Py_NoneStruct), !inline_history !71
  %i.iv = icmp eq i32 %i.iu, -1
  br i1 %i.iv, label %codegen_return.exit, label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.he, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iw = getelementptr i8, ptr %i.iq, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !24
  %i.iy = load i64, ptr %5, align 16
  %i.iz = load i64, ptr %i.gu, align 8
  %i.ja = tail call fastcc i32 @codegen_addop_load_const(ptr noundef %0, i64 %i.iy, i64 %i.iz, ptr noundef %i.ix), !inline_history !71
  %i.jb = icmp eq i32 %i.ja, -1
  br i1 %i.jb, label %codegen_return.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.jc = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !71
  %i.jd = load i64, ptr %5, align 16
  %i.je = load i64, ptr %i.gu, align 8
  %i.jf = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.jc, i32 noundef 35, i32 noundef 0, i64 %i.jd, i64 %i.je) #10
  %i.jg = icmp eq i32 %i.jf, -1
  %..i183 = sext i1 %i.jg to i32
  br label %codegen_return.exit

codegen_return.exit:                              ; preds = %bb.bw, %bb.bz, %bb.cb, %bb.cc, %.thread361, %bb.cf, %bb.ch, %bb.cj, %bb.ck
  %.0.i = phi i32 [ %i.hr, %bb.bz ], [ %i.hk, %bb.bw ], [ -1, %bb.cc ], [ -1, %.thread361 ], [ -1, %bb.cf ], [ %..i183, %bb.ck ], [ -1, %bb.cj ], [ -1, %bb.ch ], [ -1, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %codegen_class.exit

bb.cl:                                            ; preds = %bb.a
  %i.jh = getelementptr i8, ptr %1, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !24 ; 3 uses
  %i.jj = icmp eq ptr %i.ji, null
  %i.jk = getelementptr i8, ptr %i.ji, i64 16
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %.0156 = phi i32 [ 0, %bb.cl ], [ %i.jr, %bb.cp ] ; 2 uses
  %i.jl = sext i32 %.0156 to i64                  ; 2 uses
  br i1 %i.jj, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jm = load i64, ptr %i.ji, align 8, !tbaa !31
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.jn = phi i64 [ %i.jm, %bb.cn ], [ 0, %bb.cm ]
  %.not173 = icmp sgt i64 %i.jn, %i.jl
  br i1 %.not173, label %bb.cp, label %.loopexit593

bb.cp:                                            ; preds = %bb.co
  %i.jo = getelementptr [8 x i8], ptr %i.jk, i64 %i.jl
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !67
  %i.jq = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.jp)
  %.not172 = icmp eq i32 %i.jq, -1
  %i.jr = add i32 %.0156, 1
  br i1 %.not172, label %codegen_class.exit, label %bb.cm, !llvm.loop !72

bb.cq:                                            ; preds = %bb.a
  %i.js = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !24 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !31
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.jw = phi i64 [ %i.jv, %bb.cr ], [ 0, %bb.cq ] ; 3 uses
  %i.jx = getelementptr i8, ptr %1, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !24
  %i.jz = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.jy)
  %i.ka = icmp eq i32 %i.jz, -1
  br i1 %i.ka, label %codegen_class.exit, label %.preheader

.preheader:                                       ; preds = %bb.cs
  %.not171406 = icmp sgt i64 %i.jw, 0
  br i1 %.not171406, label %.lr.ph408, label %.loopexit593

.lr.ph408:                                        ; preds = %.preheader
  %i.kb = add nsw i64 %i.jw, -1
  %i.kc = getelementptr i8, ptr %1, i64 64
  %i.kd = getelementptr i8, ptr %1, i64 72
  %i.ke = getelementptr i8, ptr %1, i64 68
  %i.kf = getelementptr i8, ptr %1, i64 76
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cw
  %i.kg = add nuw nsw i64 %.0162407, 1            ; 2 uses
  %exitcond433.not = icmp eq i64 %i.kg, %i.jw
  br i1 %exitcond433.not, label %.loopexit593, label %bb.cu, !llvm.loop !73

bb.cu:                                            ; preds = %.lr.ph408, %bb.ct
  %.0162407 = phi i64 [ 0, %.lr.ph408 ], [ %i.kg, %bb.ct ] ; 3 uses
  %i.kh = icmp slt i64 %.0162407, %i.kb
  br i1 %i.kh, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ki = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.kj = load i32, ptr %i.kc, align 8, !tbaa !56
  %i.kk = load i32, ptr %i.kd, align 8, !tbaa !58
  %i.kl = load i32, ptr %i.ke, align 4, !tbaa !59
  %i.km = load i32, ptr %i.kf, align 4, !tbaa !60
  %.sroa.232.0.insert.ext = zext i32 %i.kk to i64
  %.sroa.232.0.insert.shift = shl nuw i64 %.sroa.232.0.insert.ext, 32
  %.sroa.031.0.insert.ext = zext i32 %i.kj to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.232.0.insert.shift, %.sroa.031.0.insert.ext
  %.sroa.534.8.insert.ext = zext i32 %i.km to i64
  %.sroa.534.8.insert.shift = shl nuw i64 %.sroa.534.8.insert.ext, 32
  %.sroa.333.8.insert.ext = zext i32 %i.kl to i64
  %.sroa.333.8.insert.insert = or disjoint i64 %.sroa.534.8.insert.shift, %.sroa.333.8.insert.ext
  %i.kn = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ki, i32 noundef 59, i32 noundef 1, i64 %.sroa.031.0.insert.insert, i64 %.sroa.333.8.insert.insert) #10
  %i.ko = icmp eq i32 %i.kn, -1
  br i1 %i.ko, label %codegen_class.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.kp = load ptr, ptr %i.js, align 8, !tbaa !24
  %i.kq = getelementptr i8, ptr %i.kp, i64 16
  %i.kr = getelementptr [8 x i8], ptr %i.kq, i64 %.0162407
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !67
  %i.kt = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.ks)
  %i.ku = icmp eq i32 %i.kt, -1
  br i1 %i.ku, label %codegen_class.exit, label %bb.ct

bb.cx:                                            ; preds = %bb.a
  %i.kv = getelementptr i8, ptr %1, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !24 ; 16 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 40     ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !18 ; 3 uses
  %.sroa.09.0.insert.ext.i = zext i32 %i.ky to i64
  %i.kz = getelementptr i8, ptr %i.kw, i64 48     ; 3 uses
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !20 ; 4 uses
  %.sroa.09.4.insert.ext.i = zext i32 %i.la to i64
  %.sroa.09.4.insert.shift.i = shl nuw i64 %.sroa.09.4.insert.ext.i, 32
  %.sroa.09.4.insert.insert.i = or disjoint i64 %.sroa.09.4.insert.shift.i, %.sroa.09.0.insert.ext.i ; 9 uses
  %i.lb = getelementptr i8, ptr %i.kw, i64 44     ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !21
  %.sroa.33.8.insert.ext.i = zext i32 %i.lc to i64
  %i.ld = getelementptr i8, ptr %i.kw, i64 52     ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !22
  %.sroa.33.12.insert.ext.i = zext i32 %i.le to i64
  %.sroa.33.12.insert.shift.i = shl nuw i64 %.sroa.33.12.insert.ext.i, 32 ; 2 uses
  %.sroa.33.12.insert.insert.i = or disjoint i64 %.sroa.33.12.insert.shift.i, %.sroa.33.8.insert.ext.i ; 10 uses
  %i.lf = load i32, ptr %i.kw, align 8, !tbaa !23 ; 2 uses
  switch i32 %i.lf, label %bb.dt [
    i32 23, label %bb.cy
    i32 24, label %bb.dd
    i32 26, label %bb.ds
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.lg = getelementptr i8, ptr %i.kw, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !24
  %i.li = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.lh)
  %i.lj = icmp eq i32 %i.li, -1
  br i1 %i.lj, label %codegen_class.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lk = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ll = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.lk, i32 noundef 59, i32 noundef 1, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.lm = icmp eq i32 %i.ll, -1
  br i1 %i.lm, label %codegen_class.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ln = load i32, ptr %i.kz, align 8, !tbaa !20 ; 5 uses
  %.not.i.i185 = icmp eq i32 %i.ln, %i.ky
  br i1 %.not.i.i185, label %update_start_location_to_match_attr.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lo = getelementptr i8, ptr %i.kw, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !24
  %i.lq = getelementptr i8, ptr %i.lp, i64 16
  %.val.i.i = load i64, ptr %i.lq, align 8, !tbaa !74
  %i.lr = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.ls = load i32, ptr %i.ld, align 4, !tbaa !22 ; 2 uses
  %.not27.i.i = icmp slt i32 %i.ls, %i.lr
  %i.lt = sub i32 %i.ls, %i.lr
  %.sroa.11.8.insert.ext.i.i = zext i32 %i.lt to i64
  %.sroa.11.8.insert.insert.i.i = or disjoint i64 %.sroa.33.12.insert.shift.i, %.sroa.11.8.insert.ext.i.i
  %.sroa.11.0.i.i = select i1 %.not27.i.i, i64 -1, i64 %.sroa.11.8.insert.insert.i.i ; 4 uses
  %i.lu = tail call i32 @llvm.smax.i32(i32 %i.ln, i32 %i.la) ; 2 uses
  %.not28.i.i = icmp slt i32 %i.ln, %i.la
  br i1 %.not28.i.i, label %update_start_location_to_match_attr.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.11.8.extract.trunc.i.i = trunc i64 %.sroa.11.0.i.i to i32
  %.sroa.11.12.extract.shift.i.i = lshr i64 %.sroa.11.0.i.i, 32
  %.sroa.11.12.extract.trunc.i.i = trunc nuw i64 %.sroa.11.12.extract.shift.i.i to i32
  %i.lv = tail call i32 @llvm.smax.i32(i32 %.sroa.11.8.extract.trunc.i.i, i32 %.sroa.11.12.extract.trunc.i.i)
  %.sroa.11.12.insert.ext.i.i = zext i32 %i.lv to i64
  %.sroa.11.12.insert.shift.i.i = shl nuw i64 %.sroa.11.12.insert.ext.i.i, 32
  %.sroa.11.12.insert.mask23.i.i = and i64 %.sroa.11.0.i.i, 4294967295
  %.sroa.11.12.insert.insert24.i.i = or disjoint i64 %.sroa.11.12.insert.shift.i.i, %.sroa.11.12.insert.mask23.i.i
  br label %update_start_location_to_match_attr.exit.i

update_start_location_to_match_attr.exit.i:       ; preds = %bb.dc, %bb.db, %bb.da
  %.sroa.11.2.i.i = phi i64 [ %.sroa.33.12.insert.insert.i, %bb.da ], [ %.sroa.11.12.insert.insert24.i.i, %bb.dc ], [ %.sroa.11.0.i.i, %bb.db ]
  %.sroa.0.sroa.0.0.i.i = phi i32 [ %i.ky, %bb.da ], [ %i.ln, %bb.dc ], [ %i.ln, %bb.db ]
  %.sroa.0.sroa.7.0.i.i = phi i32 [ %i.la, %bb.da ], [ %i.lu, %bb.dc ], [ %i.lu, %bb.db ]
  %.sroa.0.sroa.7.0.insert.ext.i.i = zext i32 %.sroa.0.sroa.7.0.i.i to i64
  %.sroa.0.sroa.7.0.insert.shift.i.i = shl nuw i64 %.sroa.0.sroa.7.0.insert.ext.i.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.0.sroa.0.0.i.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i
  %i.lw = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.lx = getelementptr i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !34
  %i.lz = getelementptr i8, ptr %i.kw, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !24
  %i.mb = tail call fastcc i32 @codegen_addop_name(ptr noundef %0, i64 %.sroa.0.sroa.0.0.insert.insert.i.i, i64 %.sroa.11.2.i.i, i32 noundef 80, ptr noundef %i.ly, ptr noundef %i.ma)
  %i.mc = icmp eq i32 %i.mb, -1
  br i1 %i.mc, label %codegen_class.exit, label %bb.du

bb.dd:                                            ; preds = %bb.cx
  %i.md = getelementptr i8, ptr %i.kw, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !24
  %i.mf = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.me)
  %i.mg = icmp eq i32 %i.mf, -1
  br i1 %i.mg, label %codegen_class.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mh = getelementptr i8, ptr %i.kw, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !24 ; 7 uses
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !23
  %i.mk = icmp eq i32 %i.mj, 29
  br i1 %i.mk, label %bb.df, label %should_apply_two_element_slice_optimization.exit.thread.i

bb.df:                                            ; preds = %bb.de
  %i.ml = getelementptr i8, ptr %i.mi, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !24 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mo = load i32, ptr %i.mm, align 8, !tbaa !23
  %i.mp = icmp eq i32 %i.mo, 22
  br i1 %i.mp, label %bb.dh, label %should_apply_two_element_slice_optimization.exit.i

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.mq = getelementptr i8, ptr %i.mi, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !24 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mt = load i32, ptr %i.mr, align 8, !tbaa !23
  %i.mu = icmp eq i32 %i.mt, 22
  br i1 %i.mu, label %bb.dj, label %should_apply_two_element_slice_optimization.exit.i

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.mv = getelementptr i8, ptr %i.mi, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !24 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %should_apply_two_element_slice_optimization.exit.thread.i, label %is_constant_slice.exit.i.i

is_constant_slice.exit.i.i:                       ; preds = %bb.dj
  %i.my = load i32, ptr %i.mw, align 8, !tbaa !23
  %i.mz = icmp eq i32 %i.my, 22
  br i1 %i.mz, label %should_apply_two_element_slice_optimization.exit.thread.i, label %should_apply_two_element_slice_optimization.exit.i

should_apply_two_element_slice_optimization.exit.i: ; preds = %is_constant_slice.exit.i.i, %bb.di, %bb.dg
  %i.na = getelementptr i8, ptr %i.mi, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !24
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.dk, label %should_apply_two_element_slice_optimization.exit.thread.i

bb.dk:                                            ; preds = %should_apply_two_element_slice_optimization.exit.i
  %i.nd = tail call fastcc i32 @codegen_slice_two_parts(ptr noundef %0, ptr noundef nonnull %i.mi)
  %i.ne = icmp eq i32 %i.nd, -1
  br i1 %i.ne, label %codegen_class.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nf = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ng = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.nf, i32 noundef 59, i32 noundef 3, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.nh = icmp eq i32 %i.ng, -1
  br i1 %i.nh, label %codegen_class.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ni = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.nj = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ni, i32 noundef 59, i32 noundef 3, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.nk = icmp eq i32 %i.nj, -1
  br i1 %i.nk, label %codegen_class.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nl = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.nm = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.nl, i32 noundef 59, i32 noundef 3, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.nn = icmp eq i32 %i.nm, -1
  br i1 %i.nn, label %codegen_class.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.no = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.np = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.no, i32 noundef 1, i32 noundef 0, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.nq = icmp eq i32 %i.np, -1
  br i1 %i.nq, label %codegen_class.exit, label %bb.du

should_apply_two_element_slice_optimization.exit.thread.i: ; preds = %should_apply_two_element_slice_optimization.exit.i, %is_constant_slice.exit.i.i, %bb.dj, %bb.de
  %i.nr = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %i.mi)
  %i.ns = icmp eq i32 %i.nr, -1
  br i1 %i.ns, label %codegen_class.exit, label %bb.dp

bb.dp:                                            ; preds = %should_apply_two_element_slice_optimization.exit.thread.i
  %i.nt = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.nu = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.nt, i32 noundef 59, i32 noundef 2, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.nv = icmp eq i32 %i.nu, -1
  br i1 %i.nv, label %codegen_class.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nw = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.nx = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.nw, i32 noundef 59, i32 noundef 2, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.ny = icmp eq i32 %i.nx, -1
  br i1 %i.ny, label %codegen_class.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nz = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.oa = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.nz, i32 noundef 44, i32 noundef 26, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i) #10
  %i.ob = icmp eq i32 %i.oa, -1
  br i1 %i.ob, label %codegen_class.exit, label %bb.du

bb.ds:                                            ; preds = %bb.cx
  %i.oc = getelementptr i8, ptr %i.kw, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !24
  %i.oe = tail call fastcc i32 @codegen_nameop(ptr noundef %0, i64 %.sroa.09.4.insert.insert.i, i64 %.sroa.33.12.insert.insert.i, ptr noundef %i.od, i32 noundef 1)
  %i.of = icmp eq i32 %i.oe, -1
  br i1 %i.of, label %codegen_class.exit, label %bb.du

bb.dt:                                            ; preds = %bb.cx
  %i.og = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !25
  %i.oh = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.og, ptr noundef nonnull @.str.246, i32 noundef %i.lf) #10 ; 0 uses
  br label %codegen_class.exit

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.do, %update_start_location_to_match_attr.exit.i
  %i.oi = getelementptr i8, ptr %1, i64 64
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !56
  %i.ok = getelementptr i8, ptr %1, i64 72
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !58
  %i.om = getelementptr i8, ptr %1, i64 68
  %i.on = load i32, ptr %i.om, align 4, !tbaa !59
  %i.oo = getelementptr i8, ptr %1, i64 76
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !60
  %i.oq = getelementptr i8, ptr %1, i64 24
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !24
  %i.os = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.or)
  %i.ot = icmp eq i32 %i.os, -1
  br i1 %i.ot, label %codegen_class.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ou = getelementptr i8, ptr %1, i64 16
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !24 ; 2 uses
  %switch.tableidx = add i32 %i.ov, -1            ; 2 uses
  %i.ow = icmp ult i32 %switch.tableidx, 13
  br i1 %i.ow, label %switch.lookup, label %addop_binary.exit.thread.i

addop_binary.exit.thread.i:                       ; preds = %bb.dv
  %i.ox = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !25
  %i.oy = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ox, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248, i32 noundef %i.ov) #10 ; 0 uses
  br label %codegen_class.exit

switch.lookup:                                    ; preds = %bb.dv
  %.sroa.09.4.insert.ext46.i = zext i32 %i.ol to i64
  %.sroa.09.4.insert.shift47.i = shl nuw i64 %.sroa.09.4.insert.ext46.i, 32
  %.sroa.09.0.insert.ext37.i = zext i32 %i.oj to i64
  %.sroa.09.4.insert.insert49.i = or disjoint i64 %.sroa.09.4.insert.shift47.i, %.sroa.09.0.insert.ext37.i
  %.sroa.33.12.insert.ext86.i = zext i32 %i.op to i64
  %.sroa.33.12.insert.shift87.i = shl nuw i64 %.sroa.33.12.insert.ext86.i, 32
  %.sroa.33.8.insert.ext77.i = zext i32 %i.on to i64
  %.sroa.33.12.insert.insert89.i = or disjoint i64 %.sroa.33.12.insert.shift87.i, %.sroa.33.8.insert.ext77.i
  %i.oz = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.codegen_visit_stmt, i64 %i.oz
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.pa = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.pb = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.pa, i32 noundef 44, i32 noundef %switch.ext, i64 %.sroa.09.4.insert.insert49.i, i64 %.sroa.33.12.insert.insert89.i) #10
  %i.pc = icmp eq i32 %i.pb, -1
  br i1 %i.pc, label %codegen_class.exit, label %bb.dw

bb.dw:                                            ; preds = %switch.lookup
  %i.pd = load i32, ptr %i.kx, align 8, !tbaa !18 ; 2 uses
  %i.pe = load i32, ptr %i.kz, align 8, !tbaa !20 ; 2 uses
  %i.pf = load i32, ptr %i.lb, align 4, !tbaa !21
  %i.pg = load i32, ptr %i.ld, align 4, !tbaa !22 ; 3 uses
  %.sroa.09.0.insert.ext33.i = zext i32 %i.pd to i64
  %.sroa.09.4.insert.ext41.i = zext i32 %i.pe to i64 ; 2 uses
  %.sroa.09.4.insert.shift42.i = shl nuw i64 %.sroa.09.4.insert.ext41.i, 32 ; 2 uses
  %.sroa.09.4.insert.insert44.i = or disjoint i64 %.sroa.09.4.insert.shift42.i, %.sroa.09.0.insert.ext33.i ; 9 uses
  %.sroa.33.8.insert.ext73.i = zext i32 %i.pf to i64
  %.sroa.33.12.insert.ext81.i = zext i32 %i.pg to i64
  %.sroa.33.12.insert.shift82.i = shl nuw i64 %.sroa.33.12.insert.ext81.i, 32 ; 2 uses
  %.sroa.33.12.insert.insert84.i = or disjoint i64 %.sroa.33.12.insert.shift82.i, %.sroa.33.8.insert.ext73.i ; 9 uses
  %i.ph = load i32, ptr %i.kw, align 8, !tbaa !23
  switch i32 %i.ph, label %bb.en [
    i32 23, label %bb.dx
    i32 24, label %bb.ea
    i32 26, label %bb.em
  ]

bb.dx:                                            ; preds = %bb.dw
  %.not.i150.i = icmp eq i32 %i.pe, %i.pd
  br i1 %.not.i150.i, label %update_start_location_to_match_attr.exit173.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pi = getelementptr i8, ptr %i.kw, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !24
  %i.pk = getelementptr i8, ptr %i.pj, i64 16
  %.val.i151.i = load i64, ptr %i.pk, align 8, !tbaa !74
  %i.pl = trunc i64 %.val.i151.i to i32           ; 2 uses
  %.not27.i152.i = icmp slt i32 %i.pg, %i.pl
  %i.pm = sub i32 %i.pg, %i.pl
  %.sroa.11.8.insert.ext.i153.i = zext i32 %i.pm to i64
  %.sroa.11.8.insert.insert.i154.i = or disjoint i64 %.sroa.33.12.insert.shift82.i, %.sroa.11.8.insert.ext.i153.i
  %.sroa.11.0.i155.i = select i1 %.not27.i152.i, i64 -1, i64 %.sroa.11.8.insert.insert.i154.i ; 3 uses
end_hunk_0
begin_hunk_1_@codegen_unwind_fblock:bb.a
  br i1 %i.ex, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = load ptr, ptr %i.du, align 8, !tbaa !211
  %i.ez = load i64, ptr %1, align 4
  %i.fa = load i64, ptr %i.ek, align 4
  %i.fb = tail call fastcc i32 @codegen_nameop(ptr noundef %0, i64 %i.ez, i64 %i.fa, ptr noundef %i.ey, i32 noundef 2)
  %i.fc = icmp eq i32 %i.fb, -1
  br i1 %i.fc, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load ptr, ptr %i.du, align 8, !tbaa !211
  %i.fe = load i64, ptr %1, align 4
  %i.ff = load i64, ptr %i.ek, align 4
  %i.fg = tail call fastcc i32 @codegen_nameop(ptr noundef %0, i64 %i.fe, i64 %i.ff, ptr noundef %i.fd, i32 noundef 3)
  %i.fh = icmp eq i32 %i.fg, -1
  br i1 %i.fh, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  br label %.loopexit

bb.at:                                            ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fj = load i64, ptr %1, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load i64, ptr %i.fk, align 4
  %i.fm = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fi, i32 noundef 117, i32 noundef 2, i64 %i.fj, i64 %i.fl) #10
  %i.fn = icmp eq i32 %i.fm, -1
  br i1 %i.fn, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fo = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fp = load i64, ptr %1, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load i64, ptr %i.fq, align 4
  %i.fs = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fo, i32 noundef 31, i32 noundef 0, i64 %i.fp, i64 %i.fr) #10
  %i.ft = icmp eq i32 %i.fs, -1
  %.113 = sext i1 %i.ft to i32
  br label %.loopexit

bb.aw:                                            ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %bb.n, %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.as, %bb.ah, %bb.p
  %.3 = phi i32 [ -1, %bb.au ], [ 0, %bb.a ], [ -1, %bb.c ], [ %., %bb.e ], [ -1, %bb.d ], [ 0, %bb.a ], [ %.110, %bb.h ], [ -1, %bb.g ], [ %.111, %bb.i ], [ 0, %bb.a ], [ 0, %bb.a ], [ -1, %bb.j ], [ 0, %bb.p ], [ %.113, %bb.av ], [ -1, %bb.l ], [ -1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.u ], [ %.112, %bb.w ], [ -1, %bb.v ], [ 0, %bb.a ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.af ], [ 0, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.am ], [ -1, %bb.an ], [ -1, %bb.ap ], [ -1, %bb.aq ], [ 0, %bb.as ], [ -1, %bb.ar ], [ -1, %bb.n ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_call_exit_with_nones(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #10 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %codegen_addop_load_const.exit.thread, label %codegen_addop_load_const.exit

codegen_addop_load_const.exit:                    ; preds = %bb.a
  %i.c = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.d = trunc i64 %i.a to i32
  %i.e = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.c, i32 noundef 82, i32 noundef %i.d, i64 %1, i64 %2) #10
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %codegen_addop_load_const.exit.thread, label %bb.b

bb.b:                                             ; preds = %codegen_addop_load_const.exit
  %i.g = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #10 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %codegen_addop_load_const.exit.thread, label %codegen_addop_load_const.exit12

codegen_addop_load_const.exit12:                  ; preds = %bb.b
  %i.i = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.j = trunc i64 %i.g to i32
  %i.k = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.i, i32 noundef 82, i32 noundef %i.j, i64 %1, i64 %2) #10
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %codegen_addop_load_const.exit.thread, label %bb.c

bb.c:                                             ; preds = %codegen_addop_load_const.exit12
  %i.m = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #10 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %codegen_addop_load_const.exit.thread, label %codegen_addop_load_const.exit15

codegen_addop_load_const.exit15:                  ; preds = %bb.c
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = trunc i64 %i.m to i32
  %i.q = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 82, i32 noundef %i.p, i64 %1, i64 %2) #10
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %codegen_addop_load_const.exit.thread, label %bb.d

bb.d:                                             ; preds = %codegen_addop_load_const.exit15
  %i.s = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.t = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.s, i32 noundef 52, i32 noundef 3, i64 %1, i64 %2) #10
  %i.u = icmp eq i32 %i.t, -1
  %. = sext i1 %i.u to i32
  br label %codegen_addop_load_const.exit.thread

codegen_addop_load_const.exit.thread:             ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %codegen_addop_load_const.exit15, %codegen_addop_load_const.exit12, %codegen_addop_load_const.exit
  %.0 = phi i32 [ -1, %codegen_addop_load_const.exit15 ], [ -1, %codegen_addop_load_const.exit ], [ -1, %codegen_addop_load_const.exit12 ], [ %., %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_add_yield_from(ptr noundef %0, i64 %1, i64 %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.b = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.a) #10 ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.e = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.d) #10 ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.h = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.g) #10 ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.k = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.j, i32 noundef %i.b) #10
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.n = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.m, i32 noundef 106, i32 noundef %i.h, i64 %1, i64 %2) #10
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.q = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.p, i32 noundef 264, i32 noundef %i.e, i64 %1, i64 %2) #10
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.t = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.s, i32 noundef 120, i32 noundef 1, i64 %1, i64 %2) #10
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.w = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.v, i32 noundef 262, i32 noundef 0, i64 -1, i64 -1) #10
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %.not = icmp eq i32 %3, 0
  %i.z = select i1 %.not, i32 2, i32 3
  %i.aa = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.y, i32 noundef 128, i32 noundef %i.z, i64 %1, i64 %2) #10
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ad = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ac, i32 noundef 260, i32 noundef %i.b, i64 %1, i64 %2) #10
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ag = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.af, i32 noundef %i.e) #10
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.aj = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ai, i32 noundef 7, i32 noundef 0, i64 %1, i64 %2) #10
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.am = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.al, i32 noundef %i.h) #10
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ap = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ao, i32 noundef 10, i32 noundef 0, i64 %1, i64 %2) #10
  %i.aq = icmp eq i32 %i.ap, -1
  %. = sext i1 %i.aq to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.m ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ %., %bb.n ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i64 } @update_start_location_to_match_attr(i64 %0, i64 %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift = lshr i64 %0, 32
  %.sroa.0.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.7.0.extract.shift to i32 ; 3 uses
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %.not = icmp eq i32 %i.b, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !74
  %i.f = trunc i64 %.val to i32                   ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 2 uses
  %.not27 = icmp slt i32 %i.h, %i.f
  %i.i = sub i32 %i.h, %i.f
  %.sroa.11.8.insert.ext = zext i32 %i.i to i64
  %.sroa.11.8.insert.mask = and i64 %1, -4294967296
  %.sroa.11.8.insert.insert = or disjoint i64 %.sroa.11.8.insert.mask, %.sroa.11.8.insert.ext
  %.sroa.11.0 = select i1 %.not27, i64 -1, i64 %.sroa.11.8.insert.insert ; 4 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %.sroa.0.sroa.7.0.extract.trunc) ; 2 uses
  %.not28 = icmp slt i32 %i.b, %.sroa.0.sroa.7.0.extract.trunc
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.11.8.extract.trunc = trunc i64 %.sroa.11.0 to i32
  %.sroa.11.12.extract.shift = lshr i64 %.sroa.11.0, 32
  %.sroa.11.12.extract.trunc = trunc nuw i64 %.sroa.11.12.extract.shift to i32
  %i.k = tail call i32 @llvm.smax.i32(i32 %.sroa.11.8.extract.trunc, i32 %.sroa.11.12.extract.trunc)
  %.sroa.11.12.insert.ext = zext i32 %i.k to i64
  %.sroa.11.12.insert.shift = shl nuw i64 %.sroa.11.12.insert.ext, 32
  %.sroa.11.12.insert.mask23 = and i64 %.sroa.11.0, 4294967295
  %.sroa.11.12.insert.insert24 = or disjoint i64 %.sroa.11.12.insert.shift, %.sroa.11.12.insert.mask23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.11.2 = phi i64 [ %1, %bb.a ], [ %.sroa.11.12.insert.insert24, %bb.c ], [ %.sroa.11.0, %bb.b ]
  %.sroa.0.sroa.0.0 = phi i32 [ %.sroa.0.sroa.0.0.extract.trunc, %bb.a ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %.sroa.0.sroa.7.0 = phi i32 [ %.sroa.0.sroa.7.0.extract.trunc, %bb.a ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.0.sroa.7.0.insert.ext = zext i32 %.sroa.0.sroa.7.0 to i64
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i64 %.sroa.0.sroa.7.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.11.2, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_addop_name(ptr noundef %0, i64 %1, i64 %2, i32 noundef range(i32 -4, 267) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %3, 80
  %i.b = icmp eq i32 %3, -1                       ; 3 uses
  %.015 = select i1 %i.b, i32 80, i32 %3          ; 3 uses
  %narrow = or i1 %i.b, %i.a
  %.0 = zext i1 %i.b to i32
  %i.c = icmp eq i32 %.015, 96                    ; 2 uses
  %.1 = select i1 %i.c, i32 2, i32 %.0
  %i.d = icmp eq i32 %.015, -2                    ; 3 uses
  %.116 = select i1 %i.d, i32 96, i32 %.015       ; 2 uses
  %i.e = or i1 %i.d, %i.c
  %.2 = select i1 %i.d, i32 3, i32 %.1
  %i.f = icmp eq i32 %.116, -3                    ; 2 uses
  %.217 = select i1 %i.f, i32 96, i32 %.116       ; 2 uses
  %i.g = or i1 %i.e, %i.f
  %i.h = icmp eq i32 %.217, -4                    ; 3 uses
  %.318 = select i1 %i.h, i32 96, i32 %.217
  %i.i = or i1 %i.g, %i.h
  %.3 = select i1 %i.h, i32 1, i32 %.2
  %i.j = tail call ptr @_PyCompile_MaybeMangle(ptr noundef %0, ptr noundef %5) #10 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %codegen_addop_name_custom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @_PyCompile_DictAddObj(ptr noundef %4, ptr noundef nonnull %i.j) #10 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.c, label %Py_DECREF.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.j, align 8, !tbaa !24
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %i.o = icmp slt i64 %i.k, 0
  br i1 %i.o, label %codegen_addop_name_custom.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit.i
  %i.p = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.q = zext i1 %narrow to i64
  %i.r = select i1 %i.i, i64 2, i64 %i.q
  %i.s = shl i64 %i.k, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = or i32 %.3, %i.t
  %i.v = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.p, i32 noundef %.318, i32 noundef %i.u, i64 %1, i64 %2) #10
  %i.w = icmp eq i32 %i.v, -1
  %..i = sext i1 %i.w to i32
  br label %codegen_addop_name_custom.exit

codegen_addop_name_custom.exit:                   ; preds = %bb.a, %Py_DECREF.exit.i, %bb.e
  %.1.i = phi i32 [ -1, %bb.a ], [ -1, %Py_DECREF.exit.i ], [ %..i, %bb.e ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_slice_two_parts(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %i.b)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %codegen_addop_load_const.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = getelementptr i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #10 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %codegen_addop_load_const.exit.thread, label %codegen_addop_load_const.exit

codegen_addop_load_const.exit:                    ; preds = %bb.c
  %.sroa.54.8.insert.ext = zext i32 %i.l to i64
  %.sroa.54.8.insert.shift = shl nuw i64 %.sroa.54.8.insert.ext, 32
  %.sroa.33.8.insert.ext = zext i32 %i.j to i64
  %.sroa.33.8.insert.insert = or disjoint i64 %.sroa.54.8.insert.shift, %.sroa.33.8.insert.ext
  %.sroa.22.0.insert.ext = zext i32 %i.h to i64
  %.sroa.22.0.insert.shift = shl nuw i64 %.sroa.22.0.insert.ext, 32
  %.sroa.01.0.insert.ext = zext i32 %i.f to i64
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.22.0.insert.shift, %.sroa.01.0.insert.ext
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = trunc i64 %i.m to i32
  %i.q = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 82, i32 noundef %i.p, i64 %.sroa.01.0.insert.insert, i64 %.sroa.33.8.insert.insert) #10
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %codegen_addop_load_const.exit.thread, label %bb.d

bb.d:                                             ; preds = %codegen_addop_load_const.exit, %bb.b
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %.not22 = icmp eq ptr %i.t, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %i.t)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %codegen_addop_load_const.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %1, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr i8, ptr %1, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  %i.ac = getelementptr i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  %i.ae = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #10 ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %codegen_addop_load_const.exit.thread, label %codegen_addop_load_const.exit25

codegen_addop_load_const.exit25:                  ; preds = %bb.f
  %.sroa.5.8.insert.ext = zext i32 %i.ad to i64
  %.sroa.5.8.insert.shift = shl nuw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.3.8.insert.ext = zext i32 %i.ab to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %.sroa.2.0.insert.ext = zext i32 %i.z to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.x to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %i.ag = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ag, i32 noundef 82, i32 noundef %i.ah, i64 %.sroa.0.0.insert.insert, i64 %.sroa.3.8.insert.insert) #10
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %codegen_addop_load_const.exit.thread, label %bb.g

bb.g:                                             ; preds = %codegen_addop_load_const.exit25, %bb.e
  br label %codegen_addop_load_const.exit.thread

codegen_addop_load_const.exit.thread:             ; preds = %bb.f, %bb.c, %codegen_addop_load_const.exit25, %bb.e, %codegen_addop_load_const.exit, %bb.b, %bb.g
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %codegen_addop_load_const.exit ], [ 0, %bb.g ], [ -1, %bb.e ], [ -1, %codegen_addop_load_const.exit25 ], [ -1, %bb.c ], [ -1, %bb.f ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @addop_binary(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #3 {
bb.a:
  switch i32 %3, label %bb.o [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %4, i32 13, i32 0
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = select i1 %4, i32 23, i32 10
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.c = select i1 %4, i32 18, i32 5
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.d = select i1 %4, i32 17, i32 4
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.e = select i1 %4, i32 24, i32 11
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.f = select i1 %4, i32 19, i32 6
end_hunk_1
