Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@codegen_call:bb.a
  %.sroa.313.8.insert.insert.i = or disjoint i64 %.sroa.514.8.insert.shift.i, %.sroa.313.8.insert.ext.i
  %i.ek = tail call fastcc { i64, i64 } @update_start_location_to_match_attr(i64 %.sroa.011.0.insert.insert.i, i64 %.sroa.313.8.insert.insert.i, ptr noundef nonnull %i.ab), !inline_history !297 ; 2 uses
  %i.el = extractvalue { i64, i64 } %i.ek, 0
  %i.em = extractvalue { i64, i64 } %i.ek, 1
  %i.en = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !297
  %i.eo = trunc i64 %i.ay to i32
  %i.ep = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.en, i32 noundef 55, i32 noundef %i.eo, i64 %i.el, i64 %i.em) #10
  %i.eq = icmp eq i32 %i.ep, -1
  br i1 %i.eq, label %maybe_optimize_method_call.exit.thread, label %maybe_optimize_method_call.exit.thread85.thread105

bb.ab:                                            ; preds = %.split120.us
  %i.er = getelementptr i8, ptr %1, i64 40
  %i.es = load i32, ptr %i.er, align 8, !tbaa !31
  %i.et = getelementptr i8, ptr %1, i64 48
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !32
  %i.ev = getelementptr i8, ptr %1, i64 44
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !33
  %i.ex = getelementptr i8, ptr %1, i64 52
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !34
  %.sroa.2.0.insert.ext.i55 = zext i32 %i.eu to i64
  %.sroa.2.0.insert.shift.i56 = shl nuw i64 %.sroa.2.0.insert.ext.i55, 32
  %.sroa.0.0.insert.ext.i57 = zext i32 %i.es to i64
  %.sroa.0.0.insert.insert.i58 = or disjoint i64 %.sroa.2.0.insert.shift.i56, %.sroa.0.0.insert.ext.i57
  %.sroa.5.8.insert.ext.i59 = zext i32 %i.ey to i64
  %.sroa.5.8.insert.shift.i60 = shl nuw i64 %.sroa.5.8.insert.ext.i59, 32
  %.sroa.3.8.insert.ext.i61 = zext i32 %i.ew to i64
  %.sroa.3.8.insert.insert.i62 = or disjoint i64 %.sroa.5.8.insert.shift.i60, %.sroa.3.8.insert.ext.i61
  %i.ez = tail call fastcc { i64, i64 } @update_start_location_to_match_attr(i64 %.sroa.0.0.insert.insert.i58, i64 %.sroa.3.8.insert.insert.i62, ptr noundef nonnull %i.ab), !inline_history !297 ; 2 uses
  %i.fa = extractvalue { i64, i64 } %i.ez, 0
  %i.fb = extractvalue { i64, i64 } %i.ez, 1
  %i.fc = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !297
  %i.fd = trunc i64 %i.au to i32
  %i.fe = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fc, i32 noundef 52, i32 noundef %i.fd, i64 %i.fa, i64 %i.fb) #10
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %maybe_optimize_method_call.exit.thread, label %maybe_optimize_method_call.exit.thread85.thread105

maybe_optimize_method_call.exit.thread85.thread105: ; preds = %bb.ab, %bb.aa
  br label %maybe_optimize_method_call.exit.thread

maybe_optimize_method_call.exit.thread85.thread:  ; preds = %bb.n, %bb.p, %is_import_originated.exit, %bb.f, %bb.l, %codegen_validate_keywords.exit.thread
  %i.fg = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fh = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.fg) #10 ; 4 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %maybe_optimize_method_call.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %maybe_optimize_method_call.exit.thread85.thread
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !36  ; 7 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !35 ; 2 uses
  switch i32 %i.fk, label %check_caller.exit.thread [
    i32 22, label %bb.ad
    i32 28, label %bb.ad
    i32 27, label %bb.ad
    i32 9, label %bb.ad
    i32 7, label %bb.ad
    i32 11, label %bb.ad
    i32 8, label %bb.ad
    i32 10, label %bb.ad
    i32 12, label %bb.ad
    i32 20, label %bb.ad
    i32 21, label %bb.ad
    i32 18, label %bb.ad
    i32 19, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.fl = getelementptr i8, ptr %i.fj, i64 40
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !31
  %.sroa.0.0.insert.ext.i63 = zext i32 %i.fm to i64
  %i.fn = getelementptr i8, ptr %i.fj, i64 48
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !32
  %.sroa.0.4.insert.ext.i = zext i32 %i.fo to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i63
  %i.fp = getelementptr i8, ptr %i.fj, i64 44
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !33
  %.sroa.5.8.insert.ext.i64 = zext i32 %i.fq to i64
  %i.fr = getelementptr i8, ptr %i.fj, i64 52
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !34
  %.sroa.5.12.insert.ext.i = zext i32 %i.fs to i64
  %.sroa.5.12.insert.shift.i = shl nuw i64 %.sroa.5.12.insert.ext.i, 32
  %.sroa.5.12.insert.insert.i = or disjoint i64 %.sroa.5.12.insert.shift.i, %.sroa.5.8.insert.ext.i64
  switch i32 %i.fk, label %bb.al [
    i32 28, label %check_caller.exit
    i32 27, label %bb.ae
    i32 9, label %bb.ae
    i32 7, label %bb.af
    i32 11, label %bb.af
    i32 8, label %bb.ag
    i32 10, label %bb.ag
    i32 12, label %bb.ah
    i32 22, label %bb.ak
    i32 21, label %bb.ai
    i32 19, label %bb.ai
    i32 20, label %bb.aj
    i32 18, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  br label %check_caller.exit

bb.af:                                            ; preds = %bb.ad, %bb.ad
  br label %check_caller.exit

bb.ag:                                            ; preds = %bb.ad, %bb.ad
  br label %check_caller.exit

bb.ah:                                            ; preds = %bb.ad
  br label %check_caller.exit

bb.ai:                                            ; preds = %bb.ad, %bb.ad
  br label %check_caller.exit

bb.aj:                                            ; preds = %bb.ad, %bb.ad
  br label %check_caller.exit

bb.ak:                                            ; preds = %bb.ad
  %i.ft = getelementptr i8, ptr %i.fj, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !36
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %.val.i.i = load ptr, ptr %i.fv, align 8, !tbaa !87
  br label %check_caller.exit

bb.al:                                            ; preds = %bb.ad
  unreachable

check_caller.exit:                                ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.0.i.i = phi ptr [ @PyUnicode_Type, %bb.aj ], [ %.val.i.i, %bb.ak ], [ @PyList_Type, %bb.ae ], [ @PyDict_Type, %bb.af ], [ @PySet_Type, %bb.ag ], [ @PyGen_Type, %bb.ah ], [ @PyTuple_Type, %bb.ad ], [ @_PyTemplate_Type, %bb.ai ]
  %i.fw = getelementptr i8, ptr %.0.i.i, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !125
  %i.fy = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Warn(ptr noundef %0, i64 %.sroa.0.4.insert.insert.i, i64 %.sroa.5.12.insert.insert.i, ptr noundef nonnull @.str.285, ptr noundef %i.fx) #10
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %maybe_optimize_method_call.exit.thread, label %check_caller.exit.check_caller.exit.thread_crit_edge

check_caller.exit.check_caller.exit.thread_crit_edge: ; preds = %check_caller.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %check_caller.exit.thread

check_caller.exit.thread:                         ; preds = %check_caller.exit.check_caller.exit.thread_crit_edge, %bb.ac
  %i.ga = phi ptr [ %.pre, %check_caller.exit.check_caller.exit.thread_crit_edge ], [ %i.fj, %bb.ac ]
  %i.gb = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.ga)
  %i.gc = icmp eq i32 %i.gb, -1
  br i1 %i.gc, label %maybe_optimize_method_call.exit.thread, label %bb.am

bb.am:                                            ; preds = %check_caller.exit.thread
  %i.gd = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 3 uses
  %i.ge = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !36  ; 10 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !35
  %i.gh = icmp ne i32 %i.gg, 26
  %i.gi = icmp eq ptr %i.gd, null
  %or.cond155.i = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond155.i, label %maybe_optimize_function_call.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = load i64, ptr %i.gd, align 8, !tbaa !41
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.ao, label %maybe_optimize_function_call.exit

bb.ao:                                            ; preds = %bb.an
  %i.gl = icmp eq ptr %i.ge, null
  br i1 %i.gl, label %.critedge152.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gm = load i64, ptr %i.ge, align 8, !tbaa !41
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %.critedge152.i, label %maybe_optimize_function_call.exit

.critedge152.i:                                   ; preds = %bb.ap, %bb.ao
  %i.go = getelementptr i8, ptr %i.gd, i64 16     ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !70
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !35
  %i.gr = icmp eq i32 %i.gq, 12
  br i1 %i.gr, label %bb.aq, label %maybe_optimize_function_call.exit

bb.aq:                                            ; preds = %.critedge152.i
  %i.gs = getelementptr i8, ptr %i.gf, i64 40
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !31
  %.sroa.040.0.insert.ext.i = zext i32 %i.gt to i64
  %i.gu = getelementptr i8, ptr %i.gf, i64 48
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !32
  %.sroa.040.4.insert.ext.i = zext i32 %i.gv to i64
  %.sroa.040.4.insert.shift.i = shl nuw i64 %.sroa.040.4.insert.ext.i, 32
  %.sroa.040.4.insert.insert.i = or disjoint i64 %.sroa.040.4.insert.shift.i, %.sroa.040.0.insert.ext.i ; 20 uses
  %i.gw = getelementptr i8, ptr %i.gf, i64 44
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !33
  %.sroa.24.8.insert.ext.i = zext i32 %i.gx to i64
  %i.gy = getelementptr i8, ptr %i.gf, i64 52
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !34
  %.sroa.24.12.insert.ext.i = zext i32 %i.gz to i64
  %.sroa.24.12.insert.shift.i = shl nuw i64 %.sroa.24.12.insert.ext.i, 32
  %.sroa.24.12.insert.insert.i = or disjoint i64 %.sroa.24.12.insert.shift.i, %.sroa.24.8.insert.ext.i ; 20 uses
  %i.ha = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.hb = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.ha) #10, !inline_history !301 ; 3 uses
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %maybe_optimize_method_call.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hd = getelementptr i8, ptr %i.gf, i64 8      ; 5 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hf = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.he, ptr noundef nonnull @.str.286) #10, !inline_history !301
  %.not.not.i = icmp eq i32 %i.hf, 0              ; 2 uses
  br i1 %.not.not.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hh = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.hg, ptr noundef nonnull @.str.287) #10, !inline_history !301
  %.not146.i = icmp eq i32 %i.hh, 0
  br i1 %.not146.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hj = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.hi, ptr noundef nonnull @.str.288) #10, !inline_history !301
  %.not147.i = icmp eq i32 %i.hj, 0
  br i1 %.not147.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hk = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hl = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.hk, ptr noundef nonnull @.str.289) #10, !inline_history !301
  %.not148.i = icmp eq i32 %i.hl, 0
  br i1 %.not148.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hn = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.hm, ptr noundef nonnull @.str.290) #10, !inline_history !301
  %.not149.i = icmp eq i32 %i.hn, 0
  br i1 %.not149.i, label %bb.cf, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar, %bb.as, %bb.at, %bb.au
  %.ph = phi i1 [ false, %bb.au ], [ false, %bb.ar ], [ true, %bb.at ], [ false, %bb.as ], [ false, %bb.av ] ; 2 uses
  %.ph89 = phi i1 [ true, %bb.au ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.as ], [ false, %bb.av ] ; 2 uses
  %.ph90 = phi i1 [ false, %bb.au ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.as ], [ true, %bb.av ] ; 3 uses
  %or.cond5.i.ph = phi i1 [ false, %bb.au ], [ true, %bb.ar ], [ false, %bb.at ], [ true, %bb.as ], [ false, %bb.av ]
  %.0134.i.ph = phi i32 [ 5, %bb.au ], [ 3, %bb.ar ], [ 2, %bb.at ], [ 4, %bb.as ], [ 6, %bb.av ]
  %.0133.i.ph = phi ptr [ null, %bb.au ], [ @_Py_TrueStruct, %bb.ar ], [ null, %bb.at ], [ @_Py_FalseStruct, %bb.as ], [ null, %bb.av ]
  %.0132.i.ph = phi i32 [ -1, %bb.au ], [ 103, %bb.ar ], [ -1, %bb.at ], [ 100, %bb.as ], [ -1, %bb.av ]
  %i.ho = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.hp = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ho, i32 noundef 59, i32 noundef 1, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.hq = icmp eq i32 %i.hp, -1
  br i1 %i.hq, label %maybe_optimize_method_call.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hr = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.hs = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hr, i32 noundef 81, i32 noundef %.0134.i.ph, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.ht = icmp eq i32 %i.hs, -1
  br i1 %i.ht, label %maybe_optimize_method_call.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hu = tail call fastcc i32 @codegen_addcompare(ptr noundef %0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i, i32 noundef 7), !inline_history !301
  %i.hv = icmp eq i32 %i.hu, -1
  br i1 %i.hv, label %maybe_optimize_method_call.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.hx = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hw, i32 noundef 100, i32 noundef %i.hb, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.hy = icmp eq i32 %i.hx, -1
  br i1 %i.hy, label %maybe_optimize_method_call.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hz = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.ia = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hz, i32 noundef 31, i32 noundef 0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %maybe_optimize_method_call.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %or.cond.i66 = or i1 %.ph, %.ph89               ; 2 uses
  br i1 %or.cond.i66, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ic = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.id = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ic, i32 noundef 46, i32 noundef 0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %maybe_optimize_method_call.exit.thread, label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  br i1 %.ph90, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.if = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.ig = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.if, i32 noundef 48, i32 noundef 0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %maybe_optimize_method_call.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.ii = load ptr, ptr %i.go, align 8, !tbaa !70
  %i.ij = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.ii), !inline_history !301
  %i.ik = icmp eq i32 %i.ij, -1
  br i1 %i.ik, label %maybe_optimize_method_call.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.il = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.im = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.il) #10, !inline_history !301 ; 5 uses
  %i.in = icmp eq i32 %i.im, -1
  br i1 %i.in, label %maybe_optimize_method_call.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.io = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.ip = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.io) #10, !inline_history !301 ; 3 uses
  %i.iq = icmp eq i32 %i.ip, -1
  br i1 %i.iq, label %maybe_optimize_method_call.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ir = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.is = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ir, i32 noundef 33, i32 noundef 0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.it = icmp eq i32 %i.is, -1
  br i1 %i.it, label %maybe_optimize_method_call.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iu = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.iv = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.iu, i32 noundef %i.im) #10, !inline_history !301
  %i.iw = icmp eq i32 %i.iv, -1
  br i1 %i.iw, label %maybe_optimize_method_call.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ix = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.iy = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ix, i32 noundef 70, i32 noundef %i.ip, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.iz = icmp eq i32 %i.iy, -1
  br i1 %i.iz, label %maybe_optimize_method_call.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ja = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10 ; 3 uses
  br i1 %or.cond.i66, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.jb = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ja, i32 noundef 78, i32 noundef 3, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jc = icmp eq i32 %i.jb, -1
  br i1 %i.jc, label %maybe_optimize_method_call.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jd = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.je = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.jd, i32 noundef 257, i32 noundef %i.im, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jf = icmp eq i32 %i.je, -1
  br i1 %i.jf, label %maybe_optimize_method_call.exit.thread, label %bb.bt

bb.bo:                                            ; preds = %bb.bl
  br i1 %.ph90, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.jg = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ja, i32 noundef 107, i32 noundef 3, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jh = icmp eq i32 %i.jg, -1
  br i1 %i.jh, label %maybe_optimize_method_call.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ji = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.jj = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ji, i32 noundef 257, i32 noundef %i.im, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jk = icmp eq i32 %i.jj, -1
  br i1 %i.jk, label %maybe_optimize_method_call.exit.thread, label %bb.bt

bb.br:                                            ; preds = %bb.bo
  %i.jl = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ja, i32 noundef 39, i32 noundef 0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jm = icmp eq i32 %i.jl, -1
  br i1 %i.jm, label %maybe_optimize_method_call.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jn = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.jo = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.jn, i32 noundef range(i32 -1, 266) %.0132.i.ph, i32 noundef %i.im, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jp = icmp eq i32 %i.jo, -1
  br i1 %i.jp, label %maybe_optimize_method_call.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq, %bb.bn
  %i.jq = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.jr = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.jq, i32 noundef 30, i32 noundef 0, i64 -1, i64 -1) #10
  %i.js = icmp eq i32 %i.jr, -1
  br i1 %i.js, label %maybe_optimize_method_call.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %or.cond5.i.ph, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jt = select i1 %.not.not.i, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  %i.ju = tail call fastcc i32 @codegen_addop_load_const(ptr noundef %0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i, ptr noundef nonnull %i.jt), !inline_history !301
  %i.jv = icmp eq i32 %i.ju, -1
  br i1 %i.jv, label %maybe_optimize_method_call.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.jw = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.jx = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.jw, i32 noundef 257, i32 noundef range(i32 0, -1) %i.fh, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.jy = icmp eq i32 %i.jx, -1
  br i1 %i.jy, label %maybe_optimize_method_call.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jz = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.ka = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.jz, i32 noundef %i.ip) #10, !inline_history !301
  %i.kb = icmp eq i32 %i.ka, -1
  br i1 %i.kb, label %maybe_optimize_method_call.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kc = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.kd = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.kc, i32 noundef 9, i32 noundef 0, i64 -1, i64 -1) #10
  %i.ke = icmp eq i32 %i.kd, -1
  br i1 %i.ke, label %maybe_optimize_method_call.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kf = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.kg = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.kf, i32 noundef 30, i32 noundef 0, i64 -1, i64 -1) #10
  %i.kh = icmp eq i32 %i.kg, -1
  br i1 %i.kh, label %maybe_optimize_method_call.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.ph, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ki = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.kj = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ki, i32 noundef 53, i32 noundef 6, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %i.kk = icmp eq i32 %i.kj, -1
  br i1 %i.kk, label %maybe_optimize_method_call.exit.thread, label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %or.cond9.i = or i1 %.ph89, %.ph90
  br i1 %or.cond9.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kl = tail call fastcc i32 @codegen_addop_load_const(ptr noundef %0, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i, ptr noundef %.0133.i.ph), !inline_history !301
  %i.km = icmp eq i32 %i.kl, -1
  br i1 %i.km, label %maybe_optimize_method_call.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.kn = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.ko = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.kn, i32 noundef 257, i32 noundef range(i32 0, -1) %i.fh, i64 %.sroa.040.4.insert.insert.i, i64 %.sroa.24.12.insert.insert.i) #10
  %.not107 = icmp eq i32 %i.ko, -1
  br i1 %.not107, label %maybe_optimize_method_call.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.av, %bb.ce
  %i.kp = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !301
  %i.kq = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.kp, i32 noundef %i.hb) #10, !inline_history !301
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %maybe_optimize_method_call.exit.thread, label %.maybe_optimize_function_call.exit_crit_edge

.maybe_optimize_function_call.exit_crit_edge:     ; preds = %bb.cf
  %.pre133 = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %maybe_optimize_function_call.exit

maybe_optimize_function_call.exit:                ; preds = %.maybe_optimize_function_call.exit_crit_edge, %.critedge152.i, %bb.ap, %bb.an, %bb.am
  %i.ks = phi ptr [ %.pre133, %.maybe_optimize_function_call.exit_crit_edge ], [ %i.gf, %.critedge152.i ], [ %i.gf, %bb.ap ], [ %i.gf, %bb.an ], [ %i.gf, %bb.am ] ; 4 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 40
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !31
  %.sroa.01.0.insert.ext = zext i32 %i.ku to i64
  %i.kv = getelementptr i8, ptr %i.ks, i64 48
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !32
  %.sroa.01.4.insert.ext = zext i32 %i.kw to i64
  %.sroa.01.4.insert.shift = shl nuw i64 %.sroa.01.4.insert.ext, 32
  %.sroa.01.4.insert.insert = or disjoint i64 %.sroa.01.4.insert.shift, %.sroa.01.0.insert.ext
  %i.kx = getelementptr i8, ptr %i.ks, i64 44
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !33
  %.sroa.8.8.insert.ext = zext i32 %i.ky to i64
  %i.kz = getelementptr i8, ptr %i.ks, i64 52
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !34
  %.sroa.8.12.insert.ext = zext i32 %i.la to i64
  %.sroa.8.12.insert.shift = shl nuw i64 %.sroa.8.12.insert.ext, 32
  %.sroa.8.12.insert.insert = or disjoint i64 %.sroa.8.12.insert.shift, %.sroa.8.8.insert.ext
  %i.lb = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.lc = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.lb, i32 noundef 33, i32 noundef 0, i64 %.sroa.01.4.insert.insert, i64 %.sroa.8.12.insert.insert) #10
  %i.ld = icmp eq i32 %i.lc, -1
  br i1 %i.ld, label %maybe_optimize_method_call.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %maybe_optimize_function_call.exit
  %i.le = getelementptr i8, ptr %1, i64 40
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !31
  %i.lg = getelementptr i8, ptr %1, i64 48
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !32
  %i.li = getelementptr i8, ptr %1, i64 44
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !33
  %i.lk = getelementptr i8, ptr %1, i64 52
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !34
  %.sroa.01.0.insert.ext4 = zext i32 %i.lf to i64
  %.sroa.01.4.insert.ext8 = zext i32 %i.lh to i64
  %.sroa.01.4.insert.shift9 = shl nuw i64 %.sroa.01.4.insert.ext8, 32
  %.sroa.01.4.insert.insert11 = or disjoint i64 %.sroa.01.4.insert.shift9, %.sroa.01.0.insert.ext4
  %.sroa.8.8.insert.ext14 = zext i32 %i.lj to i64
  %.sroa.8.12.insert.ext18 = zext i32 %i.ll to i64
  %.sroa.8.12.insert.shift19 = shl nuw i64 %.sroa.8.12.insert.ext18, 32
  %.sroa.8.12.insert.insert21 = or disjoint i64 %.sroa.8.12.insert.shift19, %.sroa.8.8.insert.ext14
  %i.lm = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ln = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.lo = tail call fastcc i32 @codegen_call_helper_impl(ptr noundef %0, i64 %.sroa.01.4.insert.insert11, i64 %.sroa.8.12.insert.insert21, i32 noundef 0, ptr noundef %i.lm, ptr noundef null, ptr noundef %i.ln), !inline_history !302
  %i.lp = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.lq = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.lp, i32 noundef %i.fh) #10
  %i.lr = icmp eq i32 %i.lq, -1
  %. = select i1 %i.lr, i32 -1, i32 %i.lo
  br label %maybe_optimize_method_call.exit.thread

maybe_optimize_method_call.exit.thread:           ; preds = %bb.y, %bb.z, %bb.u, %bb.cf, %bb.bg, %bb.br, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bm, %bb.bs, %bb.bt, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.cd, %bb.cb, %bb.bn, %bb.bp, %bb.bq, %bb.ce, %bb.be, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.bc, %bb.aq, %bb.bf, %maybe_optimize_method_call.exit.thread85.thread105, %bb.t, %bb.h, %bb.ab, %bb.q, %bb.aa, %.split122.us, %bb.w, %._crit_edge, %bb.v, %maybe_optimize_function_call.exit, %bb.cg, %check_caller.exit.thread, %check_caller.exit, %maybe_optimize_method_call.exit.thread85.thread, %codegen_validate_keywords.exit
  %.3 = phi i32 [ -1, %codegen_validate_keywords.exit ], [ -1, %bb.bg ], [ -1, %bb.z ], [ 0, %maybe_optimize_method_call.exit.thread85.thread105 ], [ -1, %maybe_optimize_method_call.exit.thread85.thread ], [ -1, %check_caller.exit ], [ -1, %check_caller.exit.thread ], [ -1, %maybe_optimize_function_call.exit ], [ %., %bb.cg ], [ -1, %bb.cf ], [ -1, %bb.v ], [ %i.bx, %._crit_edge ], [ -1, %bb.w ], [ -1, %.split122.us ], [ -1, %bb.aa ], [ -1, %bb.q ], [ -1, %bb.ab ], [ -1, %bb.h ], [ -1, %bb.t ], [ -1, %bb.bf ], [ -1, %bb.aq ], [ -1, %bb.bc ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.ba ], [ -1, %bb.be ], [ -1, %bb.ce ], [ -1, %bb.bq ], [ -1, %bb.bp ], [ -1, %bb.bn ], [ -1, %bb.cb ], [ -1, %bb.cd ], [ -1, %bb.bz ], [ -1, %bb.by ], [ -1, %bb.bx ], [ -1, %bb.bw ], [ -1, %bb.bv ], [ -1, %bb.bt ], [ -1, %bb.bs ], [ -1, %bb.bm ], [ -1, %bb.bk ], [ -1, %bb.bj ], [ -1, %bb.bi ], [ -1, %bb.bh ], [ -1, %bb.br ], [ -1, %bb.u ], [ -1, %bb.y ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @codegen_joined_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.sroa.0.0.insert.ext = zext i32 %i.b to i64
  %i.c = getelementptr i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %.sroa.0.4.insert.ext = zext i32 %i.d to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext ; 7 uses
  %i.e = getelementptr i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %.sroa.11.8.insert.ext = zext i32 %i.f to i64
  %i.g = getelementptr i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %.sroa.11.12.insert.ext = zext i32 %i.h to i64
  %.sroa.11.12.insert.shift = shl nuw i64 %.sroa.11.12.insert.ext, 32
  %.sroa.11.12.insert.insert = or disjoint i64 %.sroa.11.12.insert.shift, %.sroa.11.8.insert.ext ; 7 uses
  %i.i = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread115, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !41   ; 4 uses
  %i.m = icmp sgt i64 %i.l, 30
  br i1 %i.m, label %bb.c, label %.thread.split.preheader

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !36 ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !36
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c
  %i.q = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)) #10 ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %codegen_addop_load_const.exit, label %bb.e

bb.e:                                             ; preds = %_Py_NewRef.exit
  %i.s = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.t = trunc i64 %i.q to i32
  %i.u = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.s, i32 noundef 82, i32 noundef %i.t, i64 %.sroa.0.4.insert.insert, i64 %.sroa.11.12.insert.insert) #10
  %i.v = icmp ne i32 %i.u, -1
  br label %codegen_addop_load_const.exit

codegen_addop_load_const.exit:                    ; preds = %_Py_NewRef.exit, %bb.e
  %.0.i = phi i1 [ false, %_Py_NewRef.exit ], [ %i.v, %bb.e ]
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !36 ; 2 uses
  %.not.i88 = icmp sgt i32 %i.w, -1
  br i1 %.not.i88, label %bb.f, label %Py_DECREF.exit89

bb.f:                                             ; preds = %codegen_addop_load_const.exit
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !36
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %Py_DECREF.exit89

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)) #10
  br label %Py_DECREF.exit89

Py_DECREF.exit89:                                 ; preds = %codegen_addop_load_const.exit, %bb.f, %bb.g
  br i1 %.0.i, label %bb.h, label %.critedge

bb.h:                                             ; preds = %Py_DECREF.exit89
  %i.z = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = tail call fastcc i32 @codegen_addop_name(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.11.12.insert.insert, i32 noundef -1, ptr noundef %i.ab, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88912))
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.af = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ae, i32 noundef 46, i32 noundef 0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.11.12.insert.insert) #10
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.critedge, label %.preheader

end_hunk_0
