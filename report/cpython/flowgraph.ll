Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/flowgraph?download=true
inline.NumInlined: 318
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_PyCfg_OptimizeCodeUnit:bb.a
  %i.ame = getelementptr i8, ptr %.val.i32.i.i.i.i, i64 168
  %.val18.i33.i.i.i.i = load i64, ptr %i.ame, align 8, !tbaa !74
  %i.amf = and i64 %.val18.i33.i.i.i.i, 16777216
  %.not15.i.i.i.i.i = icmp eq i64 %i.amf, 0
  br i1 %.not15.i.i.i.i.i, label %bb.im, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.amg = getelementptr i8, ptr %.07.i5.i.i.i, i64 16
  %.val21.i.i.i.i.i = load i64, ptr %i.amg, align 8, !tbaa !149
  %i.amh = and i64 %.val21.i.i.i.i.i, 3
  %i.ami = icmp eq i64 %i.amh, 1
  br i1 %i.ami, label %bb.im, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.amj = getelementptr i8, ptr %.07.i329.i.i.i, i64 16
  %.val20.i.i.i.i.i = load i64, ptr %i.amj, align 8, !tbaa !149
  %i.amk = and i64 %.val20.i.i.i.i.i, 3
  %i.aml = icmp eq i64 %i.amk, 1
  br i1 %i.aml, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.amm = call i64 @_PyLong_NumBits(ptr noundef nonnull %.07.i5.i.i.i) #8
  %i.amn = call i64 @PyLong_AsSize_t(ptr noundef nonnull %.07.i329.i.i.i) #8 ; 3 uses
  %i.amo = icmp eq i64 %i.amn, -1
  br i1 %i.amo, label %eval_const_binop.exit.i.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.amp = icmp ult i64 %i.amn, 129
  %i.amq = sub nuw nsw i64 128, %i.amn
  %i.amr = icmp ule i64 %i.amm, %i.amq
  %or.cond.i34.i.i.i.i = select i1 %i.amp, i1 %i.amr, i1 false
  br i1 %or.cond.i34.i.i.i.i, label %bb.im, label %eval_const_binop.exit.i.i.i

bb.im:                                            ; preds = %bb.il, %bb.ij, %bb.ii, %bb.ih, %bb.ig
  %i.ams = call ptr @PyNumber_Lshift(ptr noundef nonnull %.07.i5.i.i.i, ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %eval_const_binop.exit.i.i.i

bb.in:                                            ; preds = %get_const_value.exit34.thread.i.i.i
  %i.amt = call ptr @PyNumber_Rshift(ptr noundef nonnull %.07.i5.i.i.i, ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %eval_const_binop.exit.i.i.i

bb.io:                                            ; preds = %get_const_value.exit34.thread.i.i.i
  %i.amu = call ptr @PyNumber_Or(ptr noundef nonnull %.07.i5.i.i.i, ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %eval_const_binop.exit.i.i.i

bb.ip:                                            ; preds = %get_const_value.exit34.thread.i.i.i
  %i.amv = call ptr @PyNumber_Xor(ptr noundef nonnull %.07.i5.i.i.i, ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %eval_const_binop.exit.i.i.i

bb.iq:                                            ; preds = %get_const_value.exit34.thread.i.i.i
  %i.amw = call ptr @PyNumber_And(ptr noundef nonnull %.07.i5.i.i.i, ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %eval_const_binop.exit.i.i.i

bb.ir:                                            ; preds = %get_const_value.exit34.thread.i.i.i
  %i.amx = call ptr @PyObject_GetItem(ptr noundef nonnull %.07.i5.i.i.i, ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %eval_const_binop.exit.i.i.i

bb.is:                                            ; preds = %get_const_value.exit34.thread.i.i.i
  unreachable

eval_const_binop.exit.i.i.i:                      ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.if, %bb.ie, %bb.id, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %.critedge.i.i.i.i.i, %.critedge68.i.i.i.i.i, %bb.hu, %bb.hr, %bb.hp, %bb.ho, %bb.hl, %bb.hg, %bb.hf, %get_const_value.exit34.thread.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.aka, %bb.hf ], [ %i.akb, %bb.hg ], [ null, %get_const_value.exit34.thread.i.i.i ], [ %i.ald, %bb.hv ], [ %i.ale, %bb.hw ], [ null, %bb.hr ], [ null, %bb.hx ], [ null, %bb.id ], [ %i.amt, %bb.in ], [ %i.amu, %bb.io ], [ %i.amv, %bb.ip ], [ %i.amw, %bb.iq ], [ %i.amx, %bb.ir ], [ %i.alc, %.critedge.i.i.i.i.i ], [ null, %bb.ho ], [ null, %.critedge68.i.i.i.i.i ], [ null, %bb.hu ], [ null, %bb.hl ], [ null, %bb.hp ], [ %i.ali, %bb.hy ], [ %i.alz, %bb.if ], [ null, %bb.ie ], [ %i.ams, %bb.im ], [ null, %bb.il ], [ null, %bb.ik ] ; 7 uses
  %i.amy = load i32, ptr %.07.i5.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i26.i.i.i = icmp sgt i32 %i.amy, -1
  br i1 %.not.i26.i.i.i, label %bb.it, label %Py_DECREF.exit27.i.i.i

bb.it:                                            ; preds = %eval_const_binop.exit.i.i.i
  %i.amz = add nsw i32 %i.amy, -1                 ; 2 uses
  store i32 %i.amz, ptr %.07.i5.i.i.i, align 8, !tbaa !64
  %i.ana = icmp eq i32 %i.amz, 0
  br i1 %i.ana, label %bb.iu, label %Py_DECREF.exit27.i.i.i

bb.iu:                                            ; preds = %bb.it
  call void @_Py_Dealloc(ptr noundef nonnull %.07.i5.i.i.i) #8
  br label %Py_DECREF.exit27.i.i.i

Py_DECREF.exit27.i.i.i:                           ; preds = %bb.iu, %bb.it, %eval_const_binop.exit.i.i.i
  %i.anb = load i32, ptr %.07.i329.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i352.i.i = icmp sgt i32 %i.anb, -1
  br i1 %.not.i.i352.i.i, label %bb.iv, label %Py_DECREF.exit.i353.i.i

bb.iv:                                            ; preds = %Py_DECREF.exit27.i.i.i
  %i.anc = add nsw i32 %i.anb, -1                 ; 2 uses
  store i32 %i.anc, ptr %.07.i329.i.i.i, align 8, !tbaa !64
  %i.and = icmp eq i32 %i.anc, 0
  br i1 %i.and, label %bb.iw, label %Py_DECREF.exit.i353.i.i

bb.iw:                                            ; preds = %bb.iv
  call void @_Py_Dealloc(ptr noundef nonnull %.07.i329.i.i.i) #8
  br label %Py_DECREF.exit.i353.i.i

Py_DECREF.exit.i353.i.i:                          ; preds = %bb.iw, %bb.iv, %Py_DECREF.exit27.i.i.i
  %i.ane = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ane, label %bb.ix, label %.lr.ph.i35.preheader.i.i.i

.lr.ph.i35.preheader.i.i.i:                       ; preds = %Py_DECREF.exit.i353.i.i
  store i32 27, ptr %i.aiq, align 8, !tbaa !39
  store i32 0, ptr %i.ais, align 4, !tbaa !50
  %i.anf = getelementptr i8, ptr %i.aiq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anf, i8 -1, i64 16, i1 false)
  store i32 27, ptr %i.ajg, align 8, !tbaa !39
  store i32 0, ptr %i.aji, align 4, !tbaa !50
  %i.ang = getelementptr i8, ptr %i.ajg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ang, i8 -1, i64 16, i1 false)
  %i.anh = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %.val.i.i39.i.i.i = load ptr, ptr %i.anh, align 8, !tbaa !65
  %.not.i17.i.i354.i.i = icmp eq ptr %.val.i.i39.i.i.i, @PyLong_Type
  br i1 %.not.i17.i.i354.i.i, label %bb.iz, label %.thread.i.i355.i.i

bb.ix:                                            ; preds = %Py_DECREF.exit.i353.i.i
  %i.ani = load ptr, ptr @PyExc_KeyboardInterrupt, align 8, !tbaa !53
  %i.anj = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ani) #8
  %.not.i360.i.i = icmp eq i32 %i.anj, 0
  br i1 %.not.i360.i.i, label %bb.iy, label %fold_const_binop.exit.thread.i.i

bb.iy:                                            ; preds = %bb.ix
  call void @PyErr_Clear() #8
  br label %fold_const_binop.exit.i.i

bb.iz:                                            ; preds = %.lr.ph.i35.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ank = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %.0.i.i.i.i, ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.anl = icmp eq i64 %i.ank, -1
  br i1 %i.anl, label %maybe_instr_make_load_smallint.exit.i.i358.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.anm = load i32, ptr %i.b, align 4, !tbaa !20
  %i.ann = icmp eq i32 %i.anm, 0
  %i.ano = icmp ult i64 %i.ank, 256
  %or.cond3.i.i.i356.i.i = and i1 %i.ano, %i.ann
  br i1 %or.cond3.i.i.i356.i.i, label %bb.je, label %.thread24.i.i357.i.i

.thread24.i.i357.i.i:                             ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread.i.i355.i.i

maybe_instr_make_load_smallint.exit.i.i358.i.i:   ; preds = %bb.iz
  %i.anp = call ptr @PyErr_Occurred() #8
  %.not18.i.not.i.i359.i.i = icmp eq ptr %i.anp, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br i1 %.not18.i.not.i.i359.i.i, label %.thread.i.i355.i.i, label %bb.jb

bb.jb:                                            ; preds = %maybe_instr_make_load_smallint.exit.i.i358.i.i
  %i.anq = load i32, ptr %.0.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i40.i.i.i = icmp sgt i32 %i.anq, -1
  br i1 %.not.i.i40.i.i.i, label %bb.jc, label %fold_const_binop.exit.thread.i.i

bb.jc:                                            ; preds = %bb.jb
  %i.anr = add nsw i32 %i.anq, -1                 ; 2 uses
  store i32 %i.anr, ptr %.0.i.i.i.i, align 8, !tbaa !64
  %i.ans = icmp eq i32 %i.anr, 0
  br i1 %i.ans, label %bb.jd, label %fold_const_binop.exit.thread.i.i

bb.jd:                                            ; preds = %bb.jc
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i.i.i) #8
  br label %fold_const_binop.exit.thread.i.i

bb.je:                                            ; preds = %bb.ja
  store i32 94, ptr %i.kw, align 8, !tbaa !39
  %i.ant = trunc nuw nsw i64 %i.ank to i32
  store i32 %i.ant, ptr %i.ky, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %fold_const_binop.exit.i.i

.thread.i.i355.i.i:                               ; preds = %maybe_instr_make_load_smallint.exit.i.i358.i.i, %.thread24.i.i357.i.i, %.lr.ph.i35.preheader.i.i.i
  %i.anu = call fastcc i32 @add_const(ptr noundef nonnull %.0.i.i.i.i, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.anv = icmp eq i32 %i.anu, -1
  br i1 %i.anv, label %fold_const_binop.exit.thread.i.i, label %bb.jf

bb.jf:                                            ; preds = %.thread.i.i355.i.i
  store i32 82, ptr %i.kw, align 8, !tbaa !39
  store i32 %i.anu, ptr %i.ky, align 4, !tbaa !50
  br label %fold_const_binop.exit.i.i

fold_const_binop.exit.thread.i.i:                 ; preds = %.thread.i.i355.i.i, %bb.ix, %get_const_value.exit.i351.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.he, %bb.hd, %.loopexit418.i.i, %get_const_value.exit.thread6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.loopexit82.i

fold_const_binop.exit.i.i:                        ; preds = %bb.gt, %bb.jf, %bb.je, %bb.iy, %get_const_loading_instrs.exit.i350.i.i, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

fold_constant_intrinsic_list_to_tuple.exit.i.i:   ; preds = %bb.gp, %bb.gm, %bb.gl, %fold_const_binop.exit.i.i, %bb.gq, %bb.gj, %bb.gi, %bb.ft, %bb.fq, %bb.fp, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %jump_thread.exit324.i.i, %jump_thread.exit313.i.i, %bb.en, %bb.em, %jump_thread.exit302.i.i, %bb.ei, %bb.eh, %jump_thread.exit291.i.i, %bb.ed, %jump_thread.exit280.i.i, %bb.dz, %jump_thread.exit269.i.i, %bb.dv, %jump_thread.exit.i.i, %bb.dr, %optimize_lists_and_sets.exit.i.i, %switch.early.test.i.i.i, %bb.cu, %fold_tuple_of_constants.exit.i.i, %bb.cc, %bb.cb, %bb.ca, %bb.bw
  %.2207.ph.i.i = phi i32 [ %.0205472.i.i, %bb.fl ], [ %.0205472.i.i, %bb.fk ], [ %.0205472.i.i, %bb.fi ], [ %.0205472.i.i, %bb.fg ], [ %.0205472.i.i, %bb.ff ], [ %.0205472.i.i, %bb.fd ], [ %i.adg, %jump_thread.exit324.i.i ], [ %i.abw, %jump_thread.exit313.i.i ], [ %i.aal, %bb.em ], [ %i.aag, %jump_thread.exit302.i.i ], [ %i.yv, %bb.eh ], [ %i.yq, %jump_thread.exit291.i.i ], [ %.0205472.i.i, %bb.cb ], [ %.0205472.i.i, %bb.ca ], [ %.0205472.i.i, %bb.fn ], [ %.0205472.i.i, %fold_tuple_of_constants.exit.i.i ], [ %.0205472.i.i, %optimize_lists_and_sets.exit.i.i ], [ %i.uj, %jump_thread.exit.i.i ], [ %.0205472.i.i, %bb.dr ], [ %i.vu, %jump_thread.exit269.i.i ], [ %.0205472.i.i, %bb.dv ], [ %i.xf, %jump_thread.exit280.i.i ], [ %.0205472.i.i, %bb.dz ], [ %.0205472.i.i, %bb.ed ], [ %.0205472.i.i, %bb.ei ], [ %.0205472.i.i, %bb.en ], [ %.0205472.i.i, %fold_const_binop.exit.i.i ], [ %.0205472.i.i, %bb.ex ], [ %.0205472.i.i, %bb.ew ], [ %.0205472.i.i, %bb.ev ], [ %.0205472.i.i, %bb.eu ], [ %.0205472.i.i, %bb.ez ], [ %.0205472.i.i, %bb.ey ], [ %.0205472.i.i, %bb.fb ], [ %.0205472.i.i, %bb.bw ], [ %.0205472.i.i, %bb.fa ], [ %.0205472.i.i, %bb.fc ], [ %.0205472.i.i, %bb.fe ], [ %.0205472.i.i, %bb.fh ], [ %.0205472.i.i, %bb.fm ], [ %.0205472.i.i, %bb.fp ], [ %.0205472.i.i, %bb.cc ], [ %.0205472.i.i, %bb.gq ], [ %.0205472.i.i, %bb.cu ], [ %.0205472.i.i, %bb.fq ], [ %.0205472.i.i, %bb.ft ], [ %.0205472.i.i, %bb.gi ], [ %.0205472.i.i, %bb.gj ], [ %.0205472.i.i, %switch.early.test.i.i.i ], [ %.0205472.i.i, %bb.gl ], [ %.0205472.i.i, %bb.gm ], [ %.0205472.i.i, %bb.gp ]
  %i.anw = add i32 %.2207.ph.i.i, 1               ; 2 uses
  %i.anx = load i32, ptr %i.ko, align 8, !tbaa !36 ; 4 uses
  %.not.i28.i = icmp slt i32 %i.anw, %i.anx
  br i1 %.not.i28.i, label %bb.bs, label %.critedge.preheader.i.i, !llvm.loop !106

.lr.ph474.i.i:                                    ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  %i.any = phi i32 [ %i.atj, %.critedge.i.i ], [ %i.anx, %.critedge.preheader.i.i ] ; 2 uses
  %storemerge473.i.i = phi i32 [ %i.ati, %.critedge.i.i ], [ 0, %.critedge.preheader.i.i ] ; 7 uses
  %i.anz = load ptr, ptr %i.kq, align 8, !tbaa !33
  %i.aoa = sext i32 %storemerge473.i.i to i64
  %i.aob = getelementptr [40 x i8], ptr %i.anz, i64 %i.aoa ; 10 uses
  %i.aoc = load i32, ptr %i.aob, align 8, !tbaa !39
  %i.aod = icmp eq i32 %i.aoc, 117
  br i1 %i.aod, label %bb.jg, label %.critedge.i.i

bb.jg:                                            ; preds = %.lr.ph474.i.i
  %i.aoe = sub i32 %i.any, %storemerge473.i.i     ; 2 uses
  %i.aof = icmp sgt i32 %i.aoe, 1
  br i1 %i.aof, label %.lr.ph.preheader.i.i.i, label %bb.jp

.lr.ph.preheader.i.i.i:                           ; preds = %bb.jg
  %i.aog = getelementptr i8, ptr %i.aob, i64 4
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !50
  %i.aoi = xor i32 %storemerge473.i.i, -1
  %i.aoj = add i32 %i.any, %i.aoi
  %wide.trip.count.i363.i.i = zext nneg i32 %i.aoe to i64 ; 2 uses
  br label %.lr.ph.i364.i.i

.lr.ph.i364.i.i:                                  ; preds = %bb.ji, %.lr.ph.preheader.i.i.i
  %indvars.iv.i365.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i366.i.i, %bb.ji ] ; 4 uses
  %.07610.i.i.i = phi i32 [ %i.aoh, %.lr.ph.preheader.i.i.i ], [ %.278.i.i.i, %bb.ji ] ; 3 uses
  %.0809.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.aom, %bb.ji ]
  %.0848.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.286.i.i.i, %bb.ji ] ; 2 uses
  %i.aok = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv.i365.i.i ; 2 uses
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !39
  %i.aom = trunc nuw nsw i64 %indvars.iv.i365.i.i to i32
  switch i32 %i.aol, label %.thread.i.i30.i [
    i32 117, label %bb.jh
    i32 27, label %bb.ji
  ]

bb.jh:                                            ; preds = %.lr.ph.i364.i.i
  %i.aon = getelementptr i8, ptr %i.aok, i64 4
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !50
  %.076..i.i.i = call i32 @llvm.smax.i32(i32 %.07610.i.i.i, i32 %i.aoo)
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %.lr.ph.i364.i.i
  %.286.i.i.i = phi i32 [ 1, %bb.jh ], [ %.0848.i.i.i, %.lr.ph.i364.i.i ] ; 2 uses
  %.278.i.i.i = phi i32 [ %.076..i.i.i, %bb.jh ], [ %.07610.i.i.i, %.lr.ph.i364.i.i ] ; 2 uses
  %indvars.iv.next.i366.i.i = add nuw nsw i64 %indvars.iv.i365.i.i, 1 ; 2 uses
  %exitcond.not.i367.i.i = icmp eq i64 %indvars.iv.next.i366.i.i, %wide.trip.count.i363.i.i
  br i1 %exitcond.not.i367.i.i, label %.thread.i.i30.i, label %.lr.ph.i364.i.i

.thread.i.i30.i:                                  ; preds = %bb.ji, %.lr.ph.i364.i.i
  %.pre-phi.i.i = phi i64 [ %indvars.iv.i365.i.i, %.lr.ph.i364.i.i ], [ %wide.trip.count.i363.i.i, %bb.ji ]
  %.080.lcssa.ph.i.i.i.a = phi i32 [ %.0848.i.i.i, %.lr.ph.i364.i.i ], [ %.286.i.i.i, %bb.ji ]
  %.076.lcssa.ph.i.i.i.a = phi i32 [ %.0809.i.i.i, %.lr.ph.i364.i.i ], [ %i.aoj, %bb.ji ] ; 3 uses
  %.lcssa.ph.i.i.i = phi i32 [ %.07610.i.i.i, %.lr.ph.i364.i.i ], [ %.278.i.i.i, %bb.ji ] ; 5 uses
  %i.aop = icmp eq i32 %.080.lcssa.ph.i.i.i.a, 0
  br i1 %i.aop, label %bb.jp, label %bb.jj

bb.jj:                                            ; preds = %.thread.i.i30.i
  %i.aoq = sext i32 %.lcssa.ph.i.i.i to i64
  %i.aor = shl nsw i64 %i.aoq, 2
  %i.aos = call ptr @PyMem_Malloc(i64 noundef %i.aor) #8 ; 9 uses
  %i.aot = icmp eq ptr %i.aos, null
  br i1 %i.aot, label %bb.kc, label %.preheader7.i.i.i

.preheader7.i.i.i:                                ; preds = %bb.jj
  %i.aou = icmp sgt i32 %.lcssa.ph.i.i.i, 0       ; 2 uses
  br i1 %i.aou, label %.lr.ph20.preheader.i.i.i, label %.lr.ph22.i.i.i.preheader

.lr.ph22.i.i.i.preheader:                         ; preds = %.lr.ph20.i.i.i, %middle.block, %.preheader7.i.i.i
  br label %.lr.ph22.i.i.i

.lr.ph20.preheader.i.i.i:                         ; preds = %.preheader7.i.i.i
  %wide.trip.count33.i.i.i = zext nneg i32 %.lcssa.ph.i.i.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.lcssa.ph.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph20.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph20.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count33.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aov = getelementptr [4 x i8], ptr %i.aos, i64 %index ; 2 uses
  %i.aow = getelementptr i8, ptr %i.aov, i64 16
  store <4 x i32> %vec.ind, ptr %i.aov, align 4, !tbaa !20
  store <4 x i32> %step.add, ptr %i.aow, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aox = icmp eq i64 %index.next, %n.vec
  br i1 %i.aox, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count33.i.i.i
  br i1 %cmp.n, label %.lr.ph22.i.i.i.preheader, label %.lr.ph20.i.i.i.preheader

.lr.ph20.i.i.i.preheader:                         ; preds = %.lr.ph20.preheader.i.i.i, %middle.block
  %indvars.iv30.i.i.i.ph = phi i64 [ 0, %.lr.ph20.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph20.i.i.i

.lr.ph20.i.i.i:                                   ; preds = %.lr.ph20.i.i.i.preheader, %.lr.ph20.i.i.i
  %indvars.iv30.i.i.i = phi i64 [ %indvars.iv.next31.i.i.i, %.lr.ph20.i.i.i ], [ %indvars.iv30.i.i.i.ph, %.lr.ph20.i.i.i.preheader ] ; 3 uses
  %i.aoy = getelementptr [4 x i8], ptr %i.aos, i64 %indvars.iv30.i.i.i
  %i.aoz = trunc nuw nsw i64 %indvars.iv30.i.i.i to i32
  store i32 %i.aoz, ptr %i.aoy, align 4, !tbaa !20
  %indvars.iv.next31.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.i, %wide.trip.count33.i.i.i
  br i1 %exitcond34.not.i.i.i, label %.lr.ph22.i.i.i.preheader, label %.lr.ph20.i.i.i, !llvm.loop !108

.preheader5.i.i.i:                                ; preds = %bb.jl
  br i1 %i.aou, label %.lr.ph25.preheader.i.i.i, label %.preheader.i368.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %.preheader5.i.i.i
  %wide.trip.count43.i.i.i = zext nneg i32 %.lcssa.ph.i.i.i to i64
  br label %.lr.ph25.i.i.i

.lr.ph22.i.i.i:                                   ; preds = %.lr.ph22.i.i.i.preheader, %bb.jl
  %indvars.iv35.i.i.i = phi i64 [ %indvars.iv.next36.i.i.i, %bb.jl ], [ 0, %.lr.ph22.i.i.i.preheader ] ; 2 uses
  %i.apa = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv35.i.i.i ; 2 uses
  %i.apb = load i32, ptr %i.apa, align 8, !tbaa !39
  %i.apc = icmp eq i32 %i.apb, 117
  br i1 %i.apc, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.lr.ph22.i.i.i
  %i.apd = getelementptr i8, ptr %i.apa, i64 4
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !50
  %i.apf = load i32, ptr %i.aos, align 4, !tbaa !20
  %i.apg = add i32 %i.ape, -1
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr [4 x i8], ptr %i.aos, i64 %i.aph ; 2 uses
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !20
  store i32 %i.apj, ptr %i.aos, align 4, !tbaa !20
  store i32 %i.apf, ptr %i.api, align 4, !tbaa !20
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %.lr.ph22.i.i.i
  %indvars.iv.next36.i.i.i = add nuw nsw i64 %indvars.iv35.i.i.i, 1 ; 2 uses
  %exitcond39.not.i.i.i = icmp eq i64 %indvars.iv.next36.i.i.i, %.pre-phi.i.i
  br i1 %exitcond39.not.i.i.i, label %.preheader5.i.i.i, label %.lr.ph22.i.i.i, !llvm.loop !109

.preheader.i368.i.i:                              ; preds = %.loopexit.i372.i.i, %.preheader5.i.i.i
  %.074.lcssa.i.i.i = phi i32 [ %.076.lcssa.ph.i.i.i.a, %.preheader5.i.i.i ], [ %.3.i373.i.i, %.loopexit.i372.i.i ] ; 3 uses
  %i.apk = icmp sgt i32 %.074.lcssa.i.i.i, -1
  br i1 %i.apk, label %.lr.ph28.preheader.i.i.i, label %._crit_edge.i369.i.i

.lr.ph28.preheader.i.i.i:                         ; preds = %.preheader.i368.i.i
  %i.apl = zext nneg i32 %.074.lcssa.i.i.i to i64 ; 3 uses
  %i.apm = add nuw nsw i64 %i.apl, 1
  %xtraiter648 = and i64 %i.apm, 3                ; 2 uses
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %.lr.ph28.i.i.i.prol.loopexit, label %.lr.ph28.i.i.i.prol

.lr.ph28.i.i.i.prol:                              ; preds = %.lr.ph28.preheader.i.i.i, %.lr.ph28.i.i.i.prol
  %indvars.iv45.i.i.i.prol = phi i64 [ %indvars.iv.next46.i.i.i.prol, %.lr.ph28.i.i.i.prol ], [ %i.apl, %.lr.ph28.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph28.i.i.i.prol ], [ 0, %.lr.ph28.preheader.i.i.i ]
  %indvars.iv.next46.i.i.i.prol = add nsw i64 %indvars.iv45.i.i.i.prol, -1 ; 2 uses
  %i.apn = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i.prol ; 2 uses
  store i32 27, ptr %i.apn, align 8, !tbaa !39
  %i.apo = getelementptr i8, ptr %i.apn, i64 4
  store i32 0, ptr %i.apo, align 4, !tbaa !50
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter648
  br i1 %prol.iter.cmp.not, label %.lr.ph28.i.i.i.prol.loopexit, label %.lr.ph28.i.i.i.prol, !llvm.loop !110

.lr.ph28.i.i.i.prol.loopexit:                     ; preds = %.lr.ph28.i.i.i.prol, %.lr.ph28.preheader.i.i.i
  %indvars.iv45.i.i.i.unr = phi i64 [ %i.apl, %.lr.ph28.preheader.i.i.i ], [ %indvars.iv.next46.i.i.i.prol, %.lr.ph28.i.i.i.prol ]
  %i.app = icmp ult i32 %.074.lcssa.i.i.i, 3
  br i1 %i.app, label %._crit_edge.i369.i.i, label %.lr.ph28.i.i.i

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i372.i.i, %.lr.ph25.preheader.i.i.i
  %indvars.iv40.i.i.i = phi i64 [ 0, %.lr.ph25.preheader.i.i.i ], [ %indvars.iv.next41.i.i.i, %.loopexit.i372.i.i ] ; 4 uses
  %.07423.i.i.i = phi i32 [ %.076.lcssa.ph.i.i.i.a, %.lr.ph25.preheader.i.i.i ], [ %.3.i373.i.i, %.loopexit.i372.i.i ] ; 2 uses
  %i.apq = getelementptr [4 x i8], ptr %i.aos, i64 %indvars.iv40.i.i.i
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !20 ; 2 uses
  %i.aps = icmp eq i32 %i.apr, -1
  %i.apt = zext i32 %i.apr to i64
  %i.apu = icmp eq i64 %indvars.iv40.i.i.i, %i.apt
  %or.cond.i371.i.i = or i1 %i.aps, %i.apu
  br i1 %or.cond.i371.i.i, label %.loopexit.i372.i.i, label %.preheader4.preheader.i.i.i

.preheader4.preheader.i.i.i:                      ; preds = %.lr.ph25.i.i.i
  %i.apv = trunc nuw nsw i64 %indvars.iv40.i.i.i to i32
  br label %.preheader4.i.i.i

.preheader4.i.i.i:                                ; preds = %bb.jo, %.preheader4.preheader.i.i.i
  %.175.i.i.i = phi i32 [ %.2.i.i.i, %bb.jo ], [ %.07423.i.i.i, %.preheader4.preheader.i.i.i ] ; 3 uses
  %.072.i.i.i = phi i32 [ %i.aqd, %bb.jo ], [ %i.apv, %.preheader4.preheader.i.i.i ] ; 3 uses
  %.not95.i.i.i = icmp eq i32 %.072.i.i.i, 0
  br i1 %.not95.i.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %.preheader4.i.i.i
  %i.apw = sext i32 %.175.i.i.i to i64
  %i.apx = getelementptr [40 x i8], ptr %i.aob, i64 %i.apw ; 2 uses
  store i32 117, ptr %i.apx, align 8, !tbaa !39
  %i.apy = add i32 %.072.i.i.i, 1
  %i.apz = add i32 %.175.i.i.i, -1
  %i.aqa = getelementptr i8, ptr %i.apx, i64 4
  store i32 %i.apy, ptr %i.aqa, align 4, !tbaa !50
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.preheader4.i.i.i
  %.2.i.i.i = phi i32 [ %i.apz, %bb.jm ], [ %.175.i.i.i, %.preheader4.i.i.i ] ; 2 uses
  %i.aqb = sext i32 %.072.i.i.i to i64
  %i.aqc = getelementptr [4 x i8], ptr %i.aos, i64 %i.aqb ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !20 ; 2 uses
  %i.aqe = icmp eq i32 %i.aqd, -1
  br i1 %i.aqe, label %.loopexit.i372.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  store i32 -1, ptr %i.aqc, align 4, !tbaa !20
  br label %.preheader4.i.i.i

.loopexit.i372.i.i:                               ; preds = %bb.jn, %.lr.ph25.i.i.i
  %.3.i373.i.i = phi i32 [ %.07423.i.i.i, %.lr.ph25.i.i.i ], [ %.2.i.i.i, %bb.jn ] ; 2 uses
  %indvars.iv.next41.i.i.i = add nuw nsw i64 %indvars.iv40.i.i.i, 1 ; 2 uses
  %exitcond44.not.i.i.i = icmp eq i64 %indvars.iv.next41.i.i.i, %wide.trip.count43.i.i.i
  br i1 %exitcond44.not.i.i.i, label %.preheader.i368.i.i, label %.lr.ph25.i.i.i, !llvm.loop !111

.lr.ph28.i.i.i:                                   ; preds = %.lr.ph28.i.i.i.prol.loopexit, %.lr.ph28.i.i.i
  %indvars.iv45.i.i.i = phi i64 [ %indvars.iv.next46.i.i.i.3, %.lr.ph28.i.i.i ], [ %indvars.iv45.i.i.i.unr, %.lr.ph28.i.i.i.prol.loopexit ] ; 5 uses
  %i.aqf = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i ; 2 uses
  store i32 27, ptr %i.aqf, align 8, !tbaa !39
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 4
  store i32 0, ptr %i.aqg, align 4, !tbaa !50
  %i.aqh = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i ; 2 uses
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -40
  store i32 27, ptr %i.aqi, align 8, !tbaa !39
  %i.aqj = getelementptr i8, ptr %i.aqh, i64 -36
  store i32 0, ptr %i.aqj, align 4, !tbaa !50
  %indvars.iv.next46.i.i.i.2 = add nsw i64 %indvars.iv45.i.i.i, -3 ; 2 uses
  %i.aqk = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv45.i.i.i ; 2 uses
  %i.aql = getelementptr i8, ptr %i.aqk, i64 -80
  store i32 27, ptr %i.aql, align 8, !tbaa !39
  %i.aqm = getelementptr i8, ptr %i.aqk, i64 -76
  store i32 0, ptr %i.aqm, align 4, !tbaa !50
  %indvars.iv.next46.i.i.i.3 = add nsw i64 %indvars.iv45.i.i.i, -4
  %i.aqn = getelementptr [40 x i8], ptr %i.aob, i64 %indvars.iv.next46.i.i.i.2 ; 2 uses
  store i32 27, ptr %i.aqn, align 8, !tbaa !39
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 4
  store i32 0, ptr %i.aqo, align 4, !tbaa !50
  %.not.i370.i.i.3 = icmp eq i64 %indvars.iv.next46.i.i.i.2, 0
  br i1 %.not.i370.i.i.3, label %._crit_edge.i369.i.i, label %.lr.ph28.i.i.i, !llvm.loop !112

._crit_edge.i369.i.i:                             ; preds = %.lr.ph28.i.i.i.prol.loopexit, %.lr.ph28.i.i.i, %.preheader.i368.i.i
  call void @PyMem_Free(ptr noundef nonnull %i.aos) #8
  %i.aqp = add i32 %.076.lcssa.ph.i.i.i.a, %storemerge473.i.i
  br label %bb.jp

bb.jp:                                            ; preds = %._crit_edge.i369.i.i, %.thread.i.i30.i, %bb.jg
  %.1.ph.i.i = phi i32 [ %storemerge473.i.i, %bb.jg ], [ %i.aqp, %._crit_edge.i369.i.i ], [ %storemerge473.i.i, %.thread.i.i30.i ] ; 21 uses
  %i.aqq = icmp sgt i32 %.1.ph.i.i, -1
  br i1 %i.aqq, label %.lr.ph118.i.i.i, label %.critedge.i.i

.lr.ph118.i.i.i:                                  ; preds = %bb.jp
  %i.aqr = add nuw i32 %.1.ph.i.i, 2
  %i.aqs = zext nneg i32 %.1.ph.i.i to i64
  br label %bb.jq

bb.jq:                                            ; preds = %bb.kb, %.lr.ph118.i.i.i
  %indvars.iv143.i.i.i = phi i64 [ %i.aqs, %.lr.ph118.i.i.i ], [ %indvars.iv.next144.i.i.i, %bb.kb ] ; 4 uses
  %indvars.iv.i374.i.i = phi i32 [ %i.aqr, %.lr.ph118.i.i.i ], [ %indvars.iv.next.i375.i.i, %bb.kb ] ; 2 uses
  %i.aqt = load ptr, ptr %i.kq, align 8, !tbaa !33 ; 7 uses
  %i.aqu = getelementptr [40 x i8], ptr %i.aqt, i64 %indvars.iv143.i.i.i ; 3 uses
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !39
  switch i32 %i.aqv, label %.critedge.i.i [
    i32 117, label %bb.jr
    i32 27, label %bb.kb
    i32 112, label %bb.kb
    i32 266, label %bb.kb
    i32 31, label %bb.kb
  ]

bb.jr:                                            ; preds = %bb.jq
  %i.aqw = load i32, ptr %i.ko, align 8, !tbaa !36 ; 6 uses
  %i.aqx = trunc nuw nsw i64 %indvars.iv143.i.i.i to i32 ; 2 uses
  %i.aqy = add i32 %i.aqx, 1                      ; 2 uses
  %i.aqz = icmp slt i32 %i.aqy, %i.aqw
  br i1 %i.aqz, label %.lr.ph, label %.critedge.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph
  %indvars.iv.next138.i.i.i = add i32 %indvars.iv137.i.i.i563, 1
  %i.ara = add i32 %i.arc, 1                      ; 2 uses
  %i.arb = icmp slt i32 %i.ara, %i.aqw
  br i1 %i.arb, label %.lr.ph, label %.critedge.i.i

.lr.ph:                                           ; preds = %bb.jr, %.split.i.i.i.i
  %i.arc = phi i32 [ %i.ara, %.split.i.i.i.i ], [ %i.aqy, %bb.jr ] ; 9 uses
  %.014.i.i.i.i564 = phi i32 [ %i.arc, %.split.i.i.i.i ], [ %i.aqx, %bb.jr ]
  %indvars.iv137.i.i.i563 = phi i32 [ %indvars.iv.next138.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i374.i.i, %bb.jr ] ; 2 uses
  %i.ard = sext i32 %i.arc to i64
  %i.are = getelementptr [40 x i8], ptr %i.aqt, i64 %i.ard
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !39 ; 2 uses
  switch i32 %i.arf, label %.critedge.i.i [
    i32 27, label %.split.i.i.i.i
    i32 112, label %next_swappable_instruction.exit.i.i.i
    i32 266, label %next_swappable_instruction.exit.i.i.i
    i32 31, label %next_swappable_instruction.exit.i.i.i
  ]

next_swappable_instruction.exit.i.i.i:            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.arg = icmp slt i32 %i.arc, 0
  br i1 %i.arg, label %.critedge.i.i, label %bb.js

bb.js:                                            ; preds = %next_swappable_instruction.exit.i.i.i
  %i.arh = zext nneg i32 %i.arc to i64
  %i.ari = getelementptr [40 x i8], ptr %i.aqt, i64 %i.arh ; 4 uses
  %i.arj = getelementptr i8, ptr %i.ari, i64 8
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !54
  %.fr121.i.i.i = freeze i32 %i.ark               ; 2 uses
  %i.arl = getelementptr i8, ptr %i.aqu, i64 4    ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !50
  %i.arn = icmp sgt i32 %.fr121.i.i.i, -1
  %.071.us.i.i.i572 = add i32 %i.arm, -1          ; 3 uses
  %i.aro = icmp slt i32 %.071.us.i.i.i572, 1      ; 2 uses
  br i1 %i.arn, label %.split.us.i.i.i.preheader, label %.split.i.i29.i.preheader

.split.i.i29.i.preheader:                         ; preds = %bb.js
  br i1 %i.aro, label %.thread.i377.i.i, label %.split.i87.i.i.i.preheader

.split.us.i.i.i.preheader:                        ; preds = %bb.js
  br i1 %i.aro, label %.thread.i377.i.i, label %.split.us.i.us.i.i.i.preheader

.split.us.i.i.i:                                  ; preds = %next_swappable_instruction.exit91.loopexit.us.i.i.i
  %.071.us.i.i.i = add nsw i32 %.071.us.i.i.i574, -1
  %i.arp = icmp slt i32 %.071.us.i.i.i574, 2
  br i1 %i.arp, label %.thread.i377.i.i, label %.split.us.i.us.i.i.i.preheader, !llvm.loop !113

.split.us.i.us.i.i.i.preheader:                   ; preds = %.split.us.i.i.i.preheader, %.split.us.i.i.i
  %.071.us.i.i.i574 = phi i32 [ %.071.us.i.i.i, %.split.us.i.i.i ], [ %.071.us.i.i.i572, %.split.us.i.i.i.preheader ] ; 2 uses
  %.072.us.i.i.i573 = phi i32 [ %i.aru, %.split.us.i.i.i ], [ %i.arc, %.split.us.i.i.i.preheader ]
  %i.arq = add i32 %.072.us.i.i.i573, 1           ; 2 uses
  %i.arr = icmp slt i32 %i.arq, %i.aqw
  br i1 %i.arr, label %.lr.ph570, label %.critedge.i.i

.split.us.i.us.i.i.i:                             ; preds = %bb.jt
  %i.ars = add i32 %i.aru, 1                      ; 2 uses
  %i.art = icmp slt i32 %i.ars, %i.aqw
  br i1 %i.art, label %.lr.ph570, label %.critedge.i.i

.lr.ph570:                                        ; preds = %.split.us.i.us.i.i.i.preheader, %.split.us.i.us.i.i.i
  %i.aru = phi i32 [ %i.ars, %.split.us.i.us.i.i.i ], [ %i.arq, %.split.us.i.us.i.i.i.preheader ] ; 5 uses
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr [40 x i8], ptr %i.aqt, i64 %i.arv ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arw, i64 8
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !54
  %.not.us.i.us.i.i.i = icmp eq i32 %i.ary, %.fr121.i.i.i
  br i1 %.not.us.i.us.i.i.i, label %bb.jt, label %.critedge.i.i

bb.jt:                                            ; preds = %.lr.ph570
  %i.arz = load i32, ptr %i.arw, align 8, !tbaa !39
  switch i32 %i.arz, label %.critedge.i.i [
    i32 27, label %.split.us.i.us.i.i.i
    i32 112, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
    i32 266, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
    i32 31, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
  ]

next_swappable_instruction.exit91.loopexit.us.i.i.i: ; preds = %bb.jt, %bb.jt, %bb.jt
  %i.asa = icmp slt i32 %i.aru, 0
  br i1 %i.asa, label %.critedge.i.i, label %.split.us.i.i.i, !llvm.loop !113

.split.i.i29.i:                                   ; preds = %next_swappable_instruction.exit91.loopexit103.i.i.i
  %.071.i.i.i = add nsw i32 %.071.i.i.i569, -1
  %i.asb = icmp slt i32 %.071.i.i.i569, 2
  br i1 %i.asb, label %.thread.i377.i.i, label %.split.i87.i.i.i.preheader, !llvm.loop !113

.split.i87.i.i.i.preheader:                       ; preds = %.split.i.i29.i.preheader, %.split.i.i29.i
  %.071.i.i.i569 = phi i32 [ %.071.i.i.i, %.split.i.i29.i ], [ %.071.us.i.i.i572, %.split.i.i29.i.preheader ] ; 2 uses
  %.072.i376.i.i568 = phi i32 [ %i.asg, %.split.i.i29.i ], [ %i.arc, %.split.i.i29.i.preheader ]
  %i.asc = add i32 %.072.i376.i.i568, 1           ; 2 uses
  %i.asd = icmp slt i32 %i.asc, %i.aqw
  br i1 %i.asd, label %.lr.ph566, label %.critedge.i.i

.split.i87.i.i.i:                                 ; preds = %.lr.ph566
  %i.ase = add i32 %i.asg, 1                      ; 2 uses
  %i.asf = icmp slt i32 %i.ase, %i.aqw
  br i1 %i.asf, label %.lr.ph566, label %.critedge.i.i

.lr.ph566:                                        ; preds = %.split.i87.i.i.i.preheader, %.split.i87.i.i.i
  %i.asg = phi i32 [ %i.ase, %.split.i87.i.i.i ], [ %i.asc, %.split.i87.i.i.i.preheader ] ; 5 uses
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr [40 x i8], ptr %i.aqt, i64 %i.ash
  %i.asj = load i32, ptr %i.asi, align 8, !tbaa !39
  switch i32 %i.asj, label %.critedge.i.i [
    i32 27, label %.split.i87.i.i.i
    i32 112, label %next_swappable_instruction.exit91.loopexit103.i.i.i
    i32 266, label %next_swappable_instruction.exit91.loopexit103.i.i.i
    i32 31, label %next_swappable_instruction.exit91.loopexit103.i.i.i
  ]

next_swappable_instruction.exit91.loopexit103.i.i.i: ; preds = %.lr.ph566, %.lr.ph566, %.lr.ph566
  %i.ask = icmp slt i32 %i.asg, 0
  br i1 %i.ask, label %.critedge.i.i, label %.split.i.i29.i, !llvm.loop !113

.thread.i377.i.i:                                 ; preds = %.split.i.i29.i, %.split.us.i.i.i, %.split.i.i29.i.preheader, %.split.us.i.i.i.preheader
  %.us-phi.i.i.i = phi i32 [ %i.aru, %.split.us.i.i.i ], [ %i.arc, %.split.us.i.i.i.preheader ], [ %i.arc, %.split.i.i29.i.preheader ], [ %i.asg, %.split.i.i29.i ] ; 2 uses
  switch i32 %i.arf, label %bb.jv [
    i32 112, label %bb.ju
    i32 266, label %bb.ju
  ]

bb.ju:                                            ; preds = %.thread.i377.i.i, %.thread.i377.i.i
  %i.asl = getelementptr i8, ptr %i.ari, i64 4
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !50
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %.thread.i377.i.i
  %i.asn = phi i32 [ %i.asm, %bb.ju ], [ -1, %.thread.i377.i.i ] ; 3 uses
  %i.aso = zext nneg i32 %.us-phi.i.i.i to i64    ; 3 uses
  %i.asp = getelementptr [40 x i8], ptr %i.aqt, i64 %i.aso ; 3 uses
  %i.asq = load i32, ptr %i.asp, align 8, !tbaa !39
  switch i32 %i.asq, label %bb.jx [
    i32 112, label %bb.jw
    i32 266, label %bb.jw
  ]

bb.jw:                                            ; preds = %bb.jv, %bb.jv
  %i.asr = getelementptr i8, ptr %i.asp, i64 4
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !50
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.ast = phi i32 [ %i.ass, %bb.jw ], [ -1, %bb.jv ] ; 3 uses
  %i.asu = icmp sgt i32 %i.asn, -1
  %i.asv = icmp sgt i32 %i.ast, -1
  %or.cond.i378.i.i = select i1 %i.asu, i1 true, i1 %i.asv
  br i1 %or.cond.i378.i.i, label %bb.jy, label %.loopexit.i379.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.asw = icmp eq i32 %i.asn, %i.ast
  br i1 %i.asw, label %.critedge.i.i, label %.preheader.i380.i.i

.preheader.i380.i.i:                              ; preds = %bb.jy
  %.070114.i.i.i = add i32 %.014.i.i.i.i564, 2
  %.not85115.i.i.i = icmp slt i32 %.070114.i.i.i, %.us-phi.i.i.i
  br i1 %.not85115.i.i.i, label %.lr.ph.preheader.i381.i.i, label %.loopexit.i379.i.i

.lr.ph.preheader.i381.i.i:                        ; preds = %.preheader.i380.i.i
  %i.asx = sext i32 %indvars.iv137.i.i.i563 to i64
  br label %.lr.ph.i382.i.i

.lr.ph.i382.i.i:                                  ; preds = %.critedge.i383.i.i, %.lr.ph.preheader.i381.i.i
  %indvars.iv140.i.i.i = phi i64 [ %i.asx, %.lr.ph.preheader.i381.i.i ], [ %indvars.iv.next141.i.i.i, %.critedge.i383.i.i ] ; 2 uses
  %i.asy = getelementptr [40 x i8], ptr %i.aqt, i64 %indvars.iv140.i.i.i ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 8, !tbaa !39
  switch i32 %i.asz, label %.critedge.i383.i.i [
end_hunk_0
