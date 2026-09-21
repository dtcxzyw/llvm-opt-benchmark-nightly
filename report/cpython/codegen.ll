Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@codegen_jump_if:bb.a
  br i1 %i.dy, label %.thread235, label %bb.aa

._crit_edge:                                      ; preds = %bb.aa
  %i.dz = getelementptr i8, ptr %.tr240, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.br
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !70
  %i.ee = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.ed)
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %.thread235, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.eg = getelementptr i8, ptr %.tr240, i64 40   ; 4 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !31
  %i.ei = getelementptr i8, ptr %.tr240, i64 48   ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !32
  %i.ek = getelementptr i8, ptr %.tr240, i64 44   ; 4 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !33
  %i.em = getelementptr i8, ptr %.tr240, i64 52   ; 4 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !34
  %i.eo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.br
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !22
  %.sroa.223.0.insert.ext = zext i32 %i.ej to i64
  %.sroa.223.0.insert.shift = shl nuw i64 %.sroa.223.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %i.eh to i64
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.223.0.insert.shift, %.sroa.022.0.insert.ext
  %.sroa.525.8.insert.ext = zext i32 %i.en to i64
  %.sroa.525.8.insert.shift = shl nuw i64 %.sroa.525.8.insert.ext, 32
  %.sroa.324.8.insert.ext = zext i32 %i.el to i64
  %.sroa.324.8.insert.insert = or disjoint i64 %.sroa.525.8.insert.shift, %.sroa.324.8.insert.ext
  %i.es = tail call fastcc i32 @codegen_addcompare(ptr noundef %0, i64 %.sroa.022.0.insert.insert, i64 %.sroa.324.8.insert.insert, i32 noundef %i.er)
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.thread235, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !31
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !32
  %i.ex = load i32, ptr %i.ek, align 4, !tbaa !33
  %i.ey = load i32, ptr %i.em, align 4, !tbaa !34
  %.sroa.219.0.insert.ext = zext i32 %i.ew to i64
  %.sroa.219.0.insert.shift = shl nuw i64 %.sroa.219.0.insert.ext, 32
  %.sroa.018.0.insert.ext = zext i32 %i.ev to i64
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.219.0.insert.shift, %.sroa.018.0.insert.ext
  %.sroa.521.8.insert.ext = zext i32 %i.ey to i64
  %.sroa.521.8.insert.shift = shl nuw i64 %.sroa.521.8.insert.ext, 32
  %.sroa.320.8.insert.ext = zext i32 %i.ex to i64
  %.sroa.320.8.insert.insert = or disjoint i64 %.sroa.521.8.insert.shift, %.sroa.320.8.insert.ext
  %i.ez = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.eu, i32 noundef 39, i32 noundef 0, i64 %.sroa.018.0.insert.insert, i64 %.sroa.320.8.insert.insert) #10
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %.thread235, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fc = load i32, ptr %i.eg, align 8, !tbaa !31
  %i.fd = load i32, ptr %i.ei, align 8, !tbaa !32
  %i.fe = load i32, ptr %i.ek, align 4, !tbaa !33
  %i.ff = load i32, ptr %i.em, align 4, !tbaa !34
  %.not223 = icmp eq i32 %.tr242, 0               ; 2 uses
  %i.fg = select i1 %.not223, i32 100, i32 103
  %.sroa.215.0.insert.ext = zext i32 %i.fd to i64
  %.sroa.215.0.insert.shift = shl nuw i64 %.sroa.215.0.insert.ext, 32
  %.sroa.014.0.insert.ext = zext i32 %i.fc to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.215.0.insert.shift, %.sroa.014.0.insert.ext
  %.sroa.517.8.insert.ext = zext i32 %i.ff to i64
  %.sroa.517.8.insert.shift = shl nuw i64 %.sroa.517.8.insert.ext, 32
  %.sroa.316.8.insert.ext = zext i32 %i.fe to i64
  %.sroa.316.8.insert.insert = or disjoint i64 %.sroa.517.8.insert.shift, %.sroa.316.8.insert.ext
  %i.fh = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fb, i32 noundef range(i32 -1, 266) %i.fg, i32 noundef %2, i64 %.sroa.014.0.insert.insert, i64 %.sroa.316.8.insert.insert) #10
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %.thread235, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fk = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.fj) #10 ; 3 uses
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %.thread235, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fn = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fm, i32 noundef 260, i32 noundef %i.fk, i64 -1, i64 -1) #10
  %i.fo = icmp eq i32 %i.fn, -1
  br i1 %i.fo, label %.thread235, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fq = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.fp, i32 noundef %i.bw) #10
  %i.fr = icmp eq i32 %i.fq, -1
  br i1 %i.fr, label %.thread235, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ft = load i32, ptr %i.eg, align 8, !tbaa !31
  %i.fu = load i32, ptr %i.ei, align 8, !tbaa !32
  %i.fv = load i32, ptr %i.ek, align 4, !tbaa !33
  %i.fw = load i32, ptr %i.em, align 4, !tbaa !34
  %.sroa.27.0.insert.ext = zext i32 %i.fu to i64
  %.sroa.27.0.insert.shift = shl nuw i64 %.sroa.27.0.insert.ext, 32
  %.sroa.06.0.insert.ext = zext i32 %i.ft to i64
  %.sroa.06.0.insert.insert = or disjoint i64 %.sroa.27.0.insert.shift, %.sroa.06.0.insert.ext
  %.sroa.59.8.insert.ext = zext i32 %i.fw to i64
  %.sroa.59.8.insert.shift = shl nuw i64 %.sroa.59.8.insert.ext, 32
  %.sroa.38.8.insert.ext = zext i32 %i.fv to i64
  %.sroa.38.8.insert.insert = or disjoint i64 %.sroa.59.8.insert.shift, %.sroa.38.8.insert.ext
  %i.fx = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fs, i32 noundef 31, i32 noundef 0, i64 %.sroa.06.0.insert.insert, i64 %.sroa.38.8.insert.insert) #10
  %i.fy = icmp eq i32 %i.fx, -1
  br i1 %i.fy, label %.thread235, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not223, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fz = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ga = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fz, i32 noundef 260, i32 noundef %2, i64 -1, i64 -1) #10
  %i.gb = icmp eq i32 %i.ga, -1
  br i1 %i.gb, label %.thread235, label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.gc = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gd = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gc, i32 noundef %i.fk) #10
  %i.ge = icmp eq i32 %i.gd, -1
  %.230 = sext i1 %i.ge to i32
  br label %.thread235

.thread:                                          ; preds = %bb.b, %tailrecurse, %bb.v, %bb.w
  %i.gf = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %.tr240)
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %.thread235, label %bb.ar

bb.ar:                                            ; preds = %.thread
  %i.gh = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gi = getelementptr i8, ptr %.tr240, i64 40   ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !31
  %i.gk = getelementptr i8, ptr %.tr240, i64 48   ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !32
  %i.gm = getelementptr i8, ptr %.tr240, i64 44   ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !33
  %i.go = getelementptr i8, ptr %.tr240, i64 52   ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !34
  %.sroa.23.0.insert.ext = zext i32 %i.gl to i64
  %.sroa.23.0.insert.shift = shl nuw i64 %.sroa.23.0.insert.ext, 32
  %.sroa.02.0.insert.ext = zext i32 %i.gj to i64
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.shift, %.sroa.02.0.insert.ext
  %.sroa.55.8.insert.ext = zext i32 %i.gp to i64
  %.sroa.55.8.insert.shift = shl nuw i64 %.sroa.55.8.insert.ext, 32
  %.sroa.34.8.insert.ext = zext i32 %i.gn to i64
  %.sroa.34.8.insert.insert = or disjoint i64 %.sroa.55.8.insert.shift, %.sroa.34.8.insert.ext
  %i.gq = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gh, i32 noundef 39, i32 noundef 0, i64 %.sroa.02.0.insert.insert, i64 %.sroa.34.8.insert.insert) #10
  %i.gr = icmp eq i32 %i.gq, -1
  br i1 %i.gr, label %.thread235, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gt = load i32, ptr %i.gi, align 8, !tbaa !31
  %i.gu = load i32, ptr %i.gk, align 8, !tbaa !32
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !33
  %i.gw = load i32, ptr %i.go, align 4, !tbaa !34
  %.not228 = icmp eq i32 %.tr242, 0
  %i.gx = select i1 %.not228, i32 100, i32 103
  %.sroa.2.0.insert.ext = zext i32 %i.gu to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.gt to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.5.8.insert.ext = zext i32 %i.gw to i64
  %.sroa.5.8.insert.shift = shl nuw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.3.8.insert.ext = zext i32 %i.gv to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %i.gy = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gs, i32 noundef range(i32 -1, 266) %i.gx, i32 noundef %2, i64 %.sroa.0.0.insert.insert, i64 %.sroa.3.8.insert.insert) #10
  %i.gz = icmp eq i32 %i.gy, -1
  %.231 = sext i1 %i.gz to i32
  br label %.thread235

.thread235:                                       ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.j, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.aj, %bb.ai, %bb.ah, %._crit_edge, %bb.z, %bb.y, %bb.x, %bb.ak, %bb.as, %bb.ar, %.thread, %bb.n, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.g, %._crit_edge257, %bb.l
  %.8 = phi i32 [ %.229, %bb.u ], [ -1, %.thread ], [ %.231, %bb.as ], [ -1, %bb.ar ], [ -1, %bb.x ], [ -1, %bb.s ], [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.j ], [ 0, %bb.m ], [ -1, %._crit_edge257 ], [ -1, %bb.n ], [ -1, %bb.t ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ], [ %.230, %bb.aq ], [ -1, %bb.am ], [ -1, %bb.al ], [ -1, %bb.ak ], [ -1, %bb.an ], [ -1, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.ah ], [ -1, %._crit_edge ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.ap ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ab ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codegen_check_compare(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  switch i32 %i.c, label %check_is_arg.exit [
    i32 28, label %bb.b
    i32 22, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %check_is_arg.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %exitcond.not.i.not.i.not85 = icmp slt i64 %i.h, 1
  br i1 %exitcond.not.i.not.i.not85, label %check_is_arg.exit, label %.lr.ph87

bb.c:                                             ; preds = %.lr.ph87
  %i.i = add nuw nsw i64 %.09.i.i86, 1            ; 2 uses
  %exitcond.not.i.not.i.not = icmp eq i64 %i.h, %i.i
  br i1 %exitcond.not.i.not.i.not, label %check_is_arg.exit, label %.lr.ph87, !llvm.loop !249

.lr.ph87:                                         ; preds = %.split.i.i, %bb.c
  %.09.i.i86 = phi i64 [ %i.i, %bb.c ], [ 0, %.split.i.i ] ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %.09.i.i86
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %.not.i.i = icmp eq i32 %i.l, 22
  br i1 %.not.i.i, label %bb.c, label %.check_is_arg.exit.loopexit_crit_edge, !llvm.loop !249

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 4 uses
  %i.o = icmp eq ptr %i.n, @_Py_NoneStruct
  %i.p = icmp eq ptr %i.n, @_Py_FalseStruct
  %or.cond.i = or i1 %i.o, %i.p
  %i.q = icmp eq ptr %i.n, @_Py_TrueStruct
  %or.cond3.i = or i1 %i.q, %or.cond.i
  %i.r = icmp eq ptr %i.n, @_Py_EllipsisObject
  %spec.select.i = or i1 %i.r, %or.cond3.i
  br label %check_is_arg.exit

.check_is_arg.exit.loopexit_crit_edge:            ; preds = %.lr.ph87
  br label %check_is_arg.exit, !llvm.loop !249

check_is_arg.exit:                                ; preds = %bb.c, %.split.i.i, %.check_is_arg.exit.loopexit_crit_edge, %bb.a, %bb.b, %bb.d
  %.0.i = phi i1 [ true, %bb.a ], [ %spec.select.i, %bb.d ], [ false, %bb.b ], [ true, %.check_is_arg.exit.loopexit_crit_edge ], [ false, %.split.i.i ], [ false, %bb.c ]
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %check_is_arg.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 16
  %i.y = getelementptr i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  br label %bb.g

bb.f:                                             ; preds = %check_is_arg.exit49
  %i.ab = add nuw nsw i64 %.03465, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !250

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.03465 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.f ] ; 3 uses
  %.03564 = phi i1 [ %.0.i, %.lr.ph ], [ %.0.i43, %bb.f ] ; 2 uses
  %.03763 = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %bb.f ]
  %i.ac = getelementptr [4 x i8], ptr %i.x, i64 %.03465
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %.03465
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  switch i32 %i.ag, label %check_is_arg.exit49 [
    i32 28, label %bb.h
    i32 22, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %check_is_arg.exit49, label %.split.i.i44

.split.i.i44:                                     ; preds = %bb.h
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %exitcond.not.i.not.i47.not90 = icmp slt i64 %i.al, 1
  br i1 %exitcond.not.i.not.i47.not90, label %check_is_arg.exit49, label %.lr.ph92

bb.i:                                             ; preds = %.lr.ph92
  %i.am = add nuw nsw i64 %.09.i.i4691, 1         ; 2 uses
  %exitcond.not.i.not.i47.not = icmp eq i64 %i.al, %i.am
  br i1 %exitcond.not.i.not.i47.not, label %check_is_arg.exit49, label %.lr.ph92, !llvm.loop !249

.lr.ph92:                                         ; preds = %.split.i.i44, %bb.i
  %.09.i.i4691 = phi i64 [ %i.am, %bb.i ], [ 0, %.split.i.i44 ] ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.aj, i64 %.09.i.i4691
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !35
  %.not.i.i48 = icmp eq i32 %i.ap, 22
  br i1 %.not.i.i48, label %bb.i, label %.check_is_arg.exit49.loopexit_crit_edge, !llvm.loop !249

bb.j:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.at = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.au = icmp eq <4 x ptr> %i.at, <ptr @_Py_NoneStruct, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct, ptr @_Py_EllipsisObject>
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp ne i4 %i.av, 0
  br label %check_is_arg.exit49

.check_is_arg.exit49.loopexit_crit_edge:          ; preds = %.lr.ph92
  br label %check_is_arg.exit49, !llvm.loop !249

check_is_arg.exit49:                              ; preds = %bb.i, %.split.i.i44, %.check_is_arg.exit49.loopexit_crit_edge, %bb.g, %bb.h, %bb.j
  %.0.i43 = phi i1 [ true, %bb.g ], [ %i.aw, %bb.j ], [ false, %bb.h ], [ true, %.check_is_arg.exit49.loopexit_crit_edge ], [ false, %.split.i.i44 ], [ false, %bb.i ] ; 2 uses
  %i.ax = add i32 %i.ad, -9
  %or.cond = icmp ult i32 %i.ax, -2
  %or.cond3 = select i1 %.0.i43, i1 %.03564, i1 false
  %or.cond58 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond58, label %bb.f, label %bb.k

bb.k:                                             ; preds = %check_is_arg.exit49
  %i.ay = icmp eq i32 %i.ad, 7
  %i.az = select i1 %i.ay, ptr @.str.251, ptr @.str.252
  %i.ba = select i1 %.03564, ptr %i.af, ptr %.03763 ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !31
  %i.bd = getelementptr i8, ptr %1, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !32
  %i.bf = getelementptr i8, ptr %1, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = getelementptr i8, ptr %1, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !35
  switch i32 %i.bj, label %bb.t [
    i32 28, label %bb.u
    i32 27, label %bb.l
    i32 9, label %bb.l
    i32 7, label %bb.m
    i32 11, label %bb.m
    i32 8, label %bb.n
    i32 10, label %bb.n
    i32 12, label %bb.o
    i32 5, label %bb.p
    i32 21, label %bb.q
    i32 19, label %bb.q
    i32 20, label %bb.r
    i32 18, label %bb.r
    i32 22, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  br label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.k
  br label %bb.u

bb.n:                                             ; preds = %bb.k, %bb.k
  br label %bb.u

bb.o:                                             ; preds = %bb.k
  br label %bb.u

bb.p:                                             ; preds = %bb.k
  br label %bb.u

bb.q:                                             ; preds = %bb.k, %bb.k
  br label %bb.u

bb.r:                                             ; preds = %bb.k, %bb.k
  br label %bb.u

bb.s:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.ba, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val.i = load ptr, ptr %i.bm, align 8, !tbaa !87
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.0.i50 = phi ptr [ @PyTuple_Type, %bb.k ], [ %.val.i, %bb.s ], [ @PyList_Type, %bb.l ], [ @PyDict_Type, %bb.m ], [ @PySet_Type, %bb.n ], [ @PyGen_Type, %bb.o ], [ @PyFunction_Type, %bb.p ], [ @_PyTemplate_Type, %bb.q ], [ @PyUnicode_Type, %bb.r ]
  %i.bn = getelementptr i8, ptr %.0.i50, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !125
  %.sroa.2.0.insert.ext = zext i32 %i.be to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bc to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.5.8.insert.ext = zext i32 %i.bi to i64
  %.sroa.5.8.insert.shift = shl nuw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.3.8.insert.ext = zext i32 %i.bg to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %i.bp = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Warn(ptr noundef %0, i64 %.sroa.0.0.insert.insert, i64 %.sroa.3.8.insert.insert, ptr noundef nonnull %i.az, ptr noundef %i.bo) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %check_is_arg.exit, %bb.e, %bb.u
  %.2 = phi i32 [ %i.bp, %bb.u ], [ 0, %bb.e ], [ 0, %check_is_arg.exit ], [ 0, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @codegen_addcompare(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  switch i32 %3, label %bb.k [
    i32 1, label %bb.l
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.a = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.b = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.a, i32 noundef 74, i32 noundef 0, i64 %1, i64 %2) #10
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.d = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.c, i32 noundef 74, i32 noundef 1, i64 %1, i64 %2) #10
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.e = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.f = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.e, i32 noundef 57, i32 noundef 0, i64 %1, i64 %2) #10
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.g = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.h = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.g, i32 noundef 57, i32 noundef 1, i64 %1, i64 %2) #10
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ 5, %bb.f ], [ 3, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 4, %bb.e ], [ 2, %bb.a ] ; 2 uses
  %i.i = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.j = shl nuw nsw i32 %.0, 5
  %i.k = zext nneg i32 %.0 to i64
  %i.l = getelementptr [4 x i8], ptr @compare_masks, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %i.n = or i32 %i.m, %i.j
  %i.o = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.i, i32 noundef 56, i32 noundef %i.n, i64 %1, i64 %2) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %bb.g
  %.016.in.in = phi i32 [ %i.o, %bb.l ], [ %i.h, %bb.j ], [ %i.b, %bb.g ], [ %i.f, %bb.i ], [ %i.d, %bb.h ]
  %.016.in = icmp eq i32 %.016.in.in, -1
  %.016 = sext i1 %.016.in to i32
  ret i32 %.016
}

declare i32 @_PyCompile_Warn(ptr noundef, i64, i64, ptr noundef, ...) local_unnamed_addr #4

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codegen_pattern(ptr noundef %0, ptr nofree noundef readonly %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !79     ; 2 uses
  switch i32 %i.a, label %bb.gd [
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.k
    i32 4, label %bb.ap
    i32 5, label %bb.cn
    i32 6, label %bb.du
    i32 7, label %bb.dv
end_hunk_0
begin_hunk_1_@codegen_sync_comprehension_generator:bb.a
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %.critedge236, label %bb.bg

default.unreachable268:                           ; preds = %bb.z
  unreachable

bb.bg:                                            ; preds = %bb.y, %bb.bc, %bb.bf, %bb.ax, %bb.az, %bb.as, %bb.au, %bb.am, %bb.ap
  %.sroa.19.0 = phi i64 [ %.sroa.19.12.insert.insert, %bb.am ], [ %.sroa.19.12.insert.insert, %bb.ap ], [ %.sroa.19.12.insert.insert, %bb.as ], [ %.sroa.19.12.insert.insert, %bb.au ], [ %.sroa.19.12.insert.insert, %bb.ax ], [ %.sroa.19.12.insert.insert, %bb.az ], [ %.sroa.19.12.insert.insert, %bb.bc ], [ %.sroa.19.12.insert.insert56, %bb.bf ], [ %.sroa.19.12.insert.insert, %bb.y ]
  %.sroa.014.0 = phi i64 [ %.sroa.014.4.insert.insert, %bb.am ], [ %.sroa.014.4.insert.insert, %bb.ap ], [ %.sroa.014.4.insert.insert, %bb.as ], [ %.sroa.014.4.insert.insert, %bb.au ], [ %.sroa.014.4.insert.insert, %bb.ax ], [ %.sroa.014.4.insert.insert, %bb.az ], [ %.sroa.014.4.insert.insert, %bb.bc ], [ %.sroa.014.4.insert.insert35, %bb.bf ], [ %.sroa.014.4.insert.insert, %bb.y ]
  %i.gr = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gs = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gr, i32 noundef %i.e) #10
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %.critedge236, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.bi, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gu = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gv = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gu, i32 noundef 257, i32 noundef %.sroa.0105.4247, i64 %.sroa.014.0, i64 %.sroa.19.0) #10
  %i.gw = icmp eq i32 %i.gv, -1
  br i1 %i.gw, label %.critedge236, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gy = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gx, i32 noundef %i.h) #10
  %i.gz = icmp eq i32 %i.gy, -1
  br i1 %i.gz, label %.critedge236, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.hb = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ha, i32 noundef 9, i32 noundef 0, i64 -1, i64 -1) #10
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %.critedge236, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hd = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.he = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hd, i32 noundef 30, i32 noundef 0, i64 -1, i64 -1) #10
  %i.hf = icmp eq i32 %i.he, -1
  br i1 %i.hf, label %.critedge236, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bh
  br label %.critedge236

.critedge236:                                     ; preds = %.lr.ph, %bb.b, %bb.f, %.thread249, %bb.m, %bb.n, %.critedge, %bb.bm, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.al, %bb.ab, %codegen_comprehension_generator.exit, %.critedge.thread, %bb.k, %bb.c, %bb.a
  %.14 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.ab ], [ -1, %bb.n ], [ -1, %.critedge ], [ -1, %bb.f ], [ -1, %.thread249 ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %codegen_comprehension_generator.exit ], [ -1, %bb.be ], [ -1, %bb.bf ], [ 0, %bb.bm ], [ -1, %bb.bg ], [ -1, %bb.bi ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ -1, %bb.am ], [ -1, %bb.bl ], [ -1, %bb.an ], [ -1, %bb.ao ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bb ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.ak ], [ -1, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.al ], [ -1, %.critedge.thread ], [ -1, %.lr.ph ]
  ret i32 %.14
}

declare i32 @_PyCompile_RevertInlinedComprehensionScopes(ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @restore_inlined_comprehension_locals(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !147
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.c = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.d = trunc i64 %.val to i32
  %i.e = add i32 %i.d, 1
  %i.f = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.c, i32 noundef 117, i32 noundef %i.e, i64 %1, i64 %2) #10
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %._crit_edge21, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.019 = add i64 %.val, -1                       ; 2 uses
  %i.h = icmp sgt i64 %.019, -1
  br i1 %i.h, label %.lr.ph, label %._crit_edge21

.preheader:                                       ; preds = %bb.b
  %.0 = add nsw i64 %.020, -1
  %i.i = icmp sgt i64 %.020, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge21, !llvm.loop !317

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.020 = phi i64 [ %.0, %.preheader ], [ %.019, %.preheader.preheader ] ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !147
  %i.k = tail call ptr @PyList_GetItem(ptr noundef %i.j, i64 noundef %.020) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.p = tail call fastcc i32 @codegen_addop_name(ptr noundef %0, i64 %1, i64 %2, i32 noundef 266, ptr noundef %i.o, ptr noundef nonnull %i.k)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %._crit_edge, label %.preheader, !llvm.loop !317

._crit_edge:                                      ; preds = %bb.b
  br label %._crit_edge21, !llvm.loop !317

._crit_edge21:                                    ; preds = %.lr.ph, %.preheader, %.preheader.preheader, %._crit_edge, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %._crit_edge ], [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ -1, %.lr.ph ]
  ret i32 %.1
}

declare ptr @PyList_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyCompile_GetRefType(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unpack_helper(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !41     ; 6 uses
  %.not52 = icmp sgt i64 %i.b, 0
  br i1 %.not52, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 16
  br label %.outer

.outer:                                           ; preds = %.thread60, %.lr.ph
  %.03254.ph = phi i64 [ %i.x, %.thread60 ], [ 0, %.lr.ph ]
  %i.d = phi i1 [ true, %.thread60 ], [ false, %.lr.ph ]
  %i.e = phi i1 [ false, %.thread60 ], [ true, %.lr.ph ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.j
  %.03254 = phi i64 [ %i.w, %bb.j ], [ %.03254.ph, %.outer ] ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %.03254
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = icmp ne i32 %i.h, 25
  %or.cond = or i1 %i.i, %i.d
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.03254, 255
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = xor i64 %.03254, -1
  %i.l = add nsw i64 %i.b, %i.k                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 8388606
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.296) #10
  br label %.thread46

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = shl nsw i64 %i.l, 8
  %i.q = or disjoint i64 %i.p, %.03254
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 118, i32 noundef %i.r, i64 %1, i64 %2) #10
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.thread46, label %.thread60

bb.h:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %i.h, 25
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.297) #10
  br label %.thread46

bb.j:                                             ; preds = %bb.h
  %i.w = add nuw nsw i64 %.03254, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !318

.thread60:                                        ; preds = %bb.g
  %i.x = add nuw nsw i64 %.03254, 1               ; 2 uses
  %exitcond.not62 = icmp eq i64 %i.x, %i.b
  br i1 %exitcond.not62, label %._crit_edge.thread64, label %.outer, !llvm.loop !318

._crit_edge:                                      ; preds = %bb.j
  br i1 %i.e, label %._crit_edge.thread, label %._crit_edge.thread64

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.z = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.aa = trunc i64 %i.y to i32
  %i.ab = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.z, i32 noundef 119, i32 noundef %i.aa, i64 %1, i64 %2) #10
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.thread46, label %._crit_edge.thread64

._crit_edge.thread64:                             ; preds = %.thread60, %._crit_edge.thread, %._crit_edge
  br label %.thread46

.thread46:                                        ; preds = %bb.g, %bb.i, %bb.f, %._crit_edge.thread, %._crit_edge.thread64
  %.338 = phi i32 [ 0, %._crit_edge.thread64 ], [ -1, %._crit_edge.thread ], [ %i.n, %bb.f ], [ %i.v, %bb.i ], [ -1, %bb.g ]
  ret i32 %.338
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{null}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{!11, !46}
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!18 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any pointer", !20, i64 0}
!24 = !{!"long", !20, i64 0}
!25 = !{!"", !23, i64 0, !21, i64 8, !24, i64 16, !21, i64 24}
!26 = !{!25, !24, i64 16}
!27 = !{!25, !21, i64 24}
!28 = !{!25, !23, i64 0}
!29 = !{!25, !21, i64 8}
!30 = !{!"_expr", !21, i64 0, !20, i64 8, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52}
!31 = !{!30, !21, i64 40}
!32 = !{!30, !21, i64 48}
!33 = !{!30, !21, i64 44}
!34 = !{!30, !21, i64 52}
!35 = !{!30, !21, i64 0}
!36 = !{!20, !20, i64 0}
!37 = !{!"p1 _ZTS7_object", !23, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"any p2 pointer", !23, i64 0}
!40 = !{!"", !24, i64 0, !39, i64 8, !20, i64 16}
!41 = !{!40, !24, i64 0}
!42 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !21, i64 88}
!43 = !{!42, !37, i64 24}
!44 = !{!"p1 _ZTS5_stmt", !23, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"p1 _ZTS11_typeobject", !23, i64 0}
!48 = !{!"_object", !20, i64 0, !47, i64 8}
!49 = !{!"p1 omnipotent char", !23, i64 0}
!50 = !{!"", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!51 = !{!"p1 _ZTS15_symtable_entry", !23, i64 0}
!52 = !{!"p1 _ZTS8symtable", !23, i64 0}
!53 = !{!"_symtable_entry", !48, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !21, i64 72, !49, i64 80, !21, i64 88, !21, i64 92, !21, i64 92, !21, i64 92, !21, i64 96, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 104, !50, i64 108, !51, i64 128, !52, i64 136}
!54 = !{!53, !37, i64 32}
!55 = !{!"PyVarObject", !48, i64 0, !24, i64 16}
!56 = !{!55, !24, i64 16}
!57 = !{!"p2 _ZTS7_object", !39, i64 0}
!58 = !{!"", !55, i64 0, !57, i64 24, !24, i64 32}
!59 = !{!58, !57, i64 24}
!60 = !{!"_stmt", !21, i64 0, !20, i64 8, !21, i64 64, !21, i64 68, !21, i64 72, !21, i64 76}
!61 = !{!60, !21, i64 64}
!62 = !{!60, !21, i64 72}
!63 = !{!60, !21, i64 68}
!64 = !{!60, !21, i64 76}
!65 = !{!42, !37, i64 48}
!66 = !{!53, !21, i64 72}
!67 = !{!24, !24, i64 0}
!68 = !{!42, !37, i64 32}
!69 = !{!"p1 _ZTS5_expr", !23, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_PyUnicodeObject_state", !21, i64 0, !21, i64 0, !21, i64 0, !21, i64 0, !21, i64 0}
!72 = !{!"", !48, i64 0, !24, i64 16, !24, i64 24, !71, i64 32}
!73 = !{!72, !24, i64 16}
!74 = !{!42, !37, i64 40}
!75 = !{!"", !37, i64 0, !21, i64 8, !23, i64 16, !24, i64 24, !24, i64 32}
!76 = !{!75, !23, i64 16}
!77 = !{!"p1 _ZTS8_pattern", !23, i64 0}
!78 = !{!"_pattern", !21, i64 0, !20, i64 8, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52}
!79 = !{!78, !21, i64 0}
!80 = !{!78, !21, i64 40}
!81 = !{!78, !21, i64 48}
!82 = !{!78, !21, i64 44}
!83 = !{!78, !21, i64 52}
!84 = !{!75, !37, i64 0}
!85 = !{!75, !21, i64 8}
!86 = !{!75, !24, i64 24}
!87 = !{!48, !47, i64 8}
!88 = !{!"p1 _ZTS11PyMethodDef", !23, i64 0}
!89 = !{!"p1 _ZTS11PyMemberDef", !23, i64 0}
!90 = !{!"p1 _ZTS11PyGetSetDef", !23, i64 0}
!91 = !{!"short", !20, i64 0}
!92 = !{!"_typeobject", !55, i64 0, !49, i64 24, !24, i64 32, !24, i64 40, !23, i64 48, !24, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !23, i64 144, !23, i64 152, !23, i64 160, !24, i64 168, !49, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !24, i64 208, !23, i64 216, !23, i64 224, !88, i64 232, !89, i64 240, !90, i64 248, !47, i64 256, !37, i64 264, !23, i64 272, !23, i64 280, !24, i64 288, !23, i64 296, !23, i64 304, !23, i64 312, !23, i64 320, !23, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !23, i64 360, !37, i64 368, !23, i64 376, !21, i64 384, !23, i64 392, !23, i64 400, !20, i64 408, !91, i64 410}
!93 = !{!92, !24, i64 168}
!94 = !{!91, !91, i64 0}
!95 = !{!23, !23, i64 0}
!96 = !{!"p1 _ZTS4_arg", !23, i64 0}
!97 = !{!"_arguments", !23, i64 0, !23, i64 8, !96, i64 16, !23, i64 24, !23, i64 32, !96, i64 40, !23, i64 48}
!98 = !{!97, !23, i64 48}
!99 = !{!97, !23, i64 24}
!100 = !{!97, !23, i64 32}
!101 = !{!42, !24, i64 64}
!102 = !{!97, !23, i64 8}
!103 = !{!96, !96, i64 0}
!104 = !{!"_arg", !37, i64 0, !69, i64 8, !37, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36}
!105 = !{!104, !37, i64 0}
!106 = !{!97, !23, i64 0}
!107 = !{!42, !24, i64 72}
!108 = !{!42, !24, i64 80}
!109 = !{!"p1 _ZTS19_PyCoMonitoringData", !23, i64 0}
!110 = !{!"PyCodeObject", !55, i64 0, !37, i64 24, !37, i64 32, !37, i64 40, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !21, i64 64, !21, i64 68, !21, i64 72, !21, i64 76, !21, i64 80, !21, i64 84, !21, i64 88, !21, i64 92, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !23, i64 152, !23, i64 160, !24, i64 168, !109, i64 176, !24, i64 184, !21, i64 192, !23, i64 200, !20, i64 208}
!111 = !{!110, !37, i64 96}
!112 = !{!"p1 _ZTS8_keyword", !23, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"_keyword", !37, i64 0, !69, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28}
!115 = !{!114, !37, i64 0}
!116 = !{!114, !21, i64 16}
!117 = !{!114, !21, i64 24}
!118 = !{!114, !21, i64 20}
!119 = !{!114, !21, i64 28}
!120 = !{!114, !69, i64 8}
!121 = !{!"", !21, i64 0}
!122 = !{!"", !21, i64 0, !121, i64 4, !50, i64 8, !121, i64 24, !23, i64 32}
!123 = !{!122, !21, i64 0}
!124 = !{!122, !23, i64 32}
!125 = !{!92, !49, i64 24}
!126 = !{!77, !77, i64 0}
!127 = !{!75, !24, i64 32}
!128 = !{!"p1 _ZTS14_excepthandler", !23, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"_excepthandler", !21, i64 0, !20, i64 8, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44}
!131 = !{!130, !21, i64 32}
!132 = !{!130, !21, i64 40}
!133 = !{!130, !21, i64 36}
!134 = !{!130, !21, i64 44}
!135 = !{!"p1 _ZTS9_withitem", !23, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!"_withitem", !69, i64 0, !69, i64 8}
!138 = !{!137, !69, i64 0}
!139 = !{!137, !69, i64 8}
!140 = !{!"symtable", !37, i64 0, !51, i64 8, !51, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !21, i64 48, !37, i64 56, !23, i64 64}
!141 = !{!140, !51, i64 16}
!142 = !{!"p1 _ZTS14_comprehension", !23, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"_comprehension", !69, i64 0, !69, i64 8, !23, i64 16, !21, i64 24}
!145 = !{!144, !69, i64 8}
!146 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !121, i64 24}
!147 = !{!146, !37, i64 0}
!148 = !{!144, !21, i64 24}
!149 = !{ptr @codegen_comprehension_generator}
!150 = !{!144, !69, i64 0}
!151 = !{!144, !23, i64 16}
!152 = distinct !{null}
!153 = distinct !{null}
!154 = distinct !{null}
!155 = distinct !{null}
!156 = distinct !{!156, !46}
!157 = distinct !{!157, !46}
!158 = !{!53, !37, i64 16}
!159 = !{!53, !51, i64 128}
!160 = distinct !{null}
!161 = distinct !{null, null}
!162 = distinct !{null}
!163 = distinct !{!163, !46}
!164 = distinct !{!164, !46}
!165 = distinct !{null}
!166 = distinct !{!166, !46}
!167 = distinct !{!167, !46}
!168 = distinct !{null}
!169 = distinct !{!169, !46}
!170 = distinct !{!170, !46}
!171 = distinct !{null}
!172 = distinct !{!172, !46}
!173 = distinct !{!173, !46}
!174 = distinct !{null, null}
!175 = distinct !{!175, !46}
!176 = distinct !{!176, !46}
!177 = distinct !{!177, !46}
!178 = distinct !{!178, !46}
!179 = distinct !{null}
!180 = distinct !{null}
end_hunk_1
