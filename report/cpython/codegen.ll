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
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !24
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.br
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67
  %i.ee = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.ed)
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %.thread235, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.eg = getelementptr i8, ptr %.tr240, i64 40   ; 4 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !18
  %i.ei = getelementptr i8, ptr %.tr240, i64 48   ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !20
  %i.ek = getelementptr i8, ptr %.tr240, i64 44   ; 4 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.em = getelementptr i8, ptr %.tr240, i64 52   ; 4 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !22
  %i.eo = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.br
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
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
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !18
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !20
  %i.ex = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.ey = load i32, ptr %i.em, align 4, !tbaa !22
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
  %i.fc = load i32, ptr %i.eg, align 8, !tbaa !18
  %i.fd = load i32, ptr %i.ei, align 8, !tbaa !20
  %i.fe = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.ff = load i32, ptr %i.em, align 4, !tbaa !22
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
  %i.ft = load i32, ptr %i.eg, align 8, !tbaa !18
  %i.fu = load i32, ptr %i.ei, align 8, !tbaa !20
  %i.fv = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.fw = load i32, ptr %i.em, align 4, !tbaa !22
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
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !18
  %i.gk = getelementptr i8, ptr %.tr240, i64 48   ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !20
  %i.gm = getelementptr i8, ptr %.tr240, i64 44   ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !21
  %i.go = getelementptr i8, ptr %.tr240, i64 52   ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !22
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
  %i.gt = load i32, ptr %i.gi, align 8, !tbaa !18
  %i.gu = load i32, ptr %i.gk, align 8, !tbaa !20
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !21
  %i.gw = load i32, ptr %i.go, align 4, !tbaa !22
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  switch i32 %i.c, label %check_is_arg.exit [
    i32 28, label %bb.b
    i32 22, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %check_is_arg.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %exitcond.not.i.not.i.not85 = icmp slt i64 %i.h, 1
  br i1 %exitcond.not.i.not.i.not85, label %check_is_arg.exit, label %.lr.ph87

bb.c:                                             ; preds = %.lr.ph87
  %i.i = add nuw nsw i64 %.09.i.i86, 1            ; 2 uses
  %exitcond.not.i.not.i.not = icmp eq i64 %i.h, %i.i
  br i1 %exitcond.not.i.not.i.not, label %check_is_arg.exit, label %.lr.ph87, !llvm.loop !217

.lr.ph87:                                         ; preds = %.split.i.i, %bb.c
  %.09.i.i86 = phi i64 [ %i.i, %bb.c ], [ 0, %.split.i.i ] ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %.09.i.i86
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23
  %.not.i.i = icmp eq i32 %i.l, 22
  br i1 %.not.i.i, label %bb.c, label %.check_is_arg.exit.loopexit_crit_edge, !llvm.loop !217

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 4 uses
  %i.o = icmp eq ptr %i.n, @_Py_NoneStruct
  %i.p = icmp eq ptr %i.n, @_Py_FalseStruct
  %or.cond.i = or i1 %i.o, %i.p
  %i.q = icmp eq ptr %i.n, @_Py_TrueStruct
  %or.cond3.i = or i1 %i.q, %or.cond.i
  %i.r = icmp eq ptr %i.n, @_Py_EllipsisObject
  %spec.select.i = or i1 %i.r, %or.cond3.i
  br label %check_is_arg.exit

.check_is_arg.exit.loopexit_crit_edge:            ; preds = %.lr.ph87
  br label %check_is_arg.exit, !llvm.loop !217

check_is_arg.exit:                                ; preds = %bb.c, %.split.i.i, %.check_is_arg.exit.loopexit_crit_edge, %bb.a, %bb.b, %bb.d
  %.0.i = phi i1 [ true, %bb.a ], [ %spec.select.i, %bb.d ], [ false, %bb.b ], [ true, %.check_is_arg.exit.loopexit_crit_edge ], [ false, %.split.i.i ], [ false, %bb.c ]
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %check_is_arg.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 16
  %i.y = getelementptr i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  br label %bb.g

bb.f:                                             ; preds = %check_is_arg.exit49
  %i.ab = add nuw nsw i64 %.03465, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !218

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.03465 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.f ] ; 3 uses
  %.03564 = phi i1 [ %.0.i, %.lr.ph ], [ %.0.i43, %bb.f ] ; 2 uses
  %.03763 = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %bb.f ]
  %i.ac = getelementptr [4 x i8], ptr %i.x, i64 %.03465
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7  ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %.03465
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !23
  switch i32 %i.ag, label %check_is_arg.exit49 [
    i32 28, label %bb.h
    i32 22, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %check_is_arg.exit49, label %.split.i.i44

.split.i.i44:                                     ; preds = %bb.h
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %exitcond.not.i.not.i47.not90 = icmp slt i64 %i.al, 1
  br i1 %exitcond.not.i.not.i47.not90, label %check_is_arg.exit49, label %.lr.ph92

bb.i:                                             ; preds = %.lr.ph92
  %i.am = add nuw nsw i64 %.09.i.i4691, 1         ; 2 uses
  %exitcond.not.i.not.i47.not = icmp eq i64 %i.al, %i.am
  br i1 %exitcond.not.i.not.i47.not, label %check_is_arg.exit49, label %.lr.ph92, !llvm.loop !217

.lr.ph92:                                         ; preds = %.split.i.i44, %bb.i
  %.09.i.i4691 = phi i64 [ %i.am, %bb.i ], [ 0, %.split.i.i44 ] ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.aj, i64 %.09.i.i4691
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !23
  %.not.i.i48 = icmp eq i32 %i.ap, 22
  br i1 %.not.i.i48, label %bb.i, label %.check_is_arg.exit49.loopexit_crit_edge, !llvm.loop !217

bb.j:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.as = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.at = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.au = icmp eq <4 x ptr> %i.at, <ptr @_Py_NoneStruct, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct, ptr @_Py_EllipsisObject>
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp ne i4 %i.av, 0
  br label %check_is_arg.exit49

.check_is_arg.exit49.loopexit_crit_edge:          ; preds = %.lr.ph92
  br label %check_is_arg.exit49, !llvm.loop !217

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
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !18
  %i.bd = getelementptr i8, ptr %1, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr i8, ptr %1, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bh = getelementptr i8, ptr %1, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !23
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
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val.i = load ptr, ptr %i.bm, align 8, !tbaa !114
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.0.i50 = phi ptr [ @PyTuple_Type, %bb.k ], [ %.val.i, %bb.s ], [ @PyList_Type, %bb.l ], [ @PyDict_Type, %bb.m ], [ @PySet_Type, %bb.n ], [ @PyGen_Type, %bb.o ], [ @PyFunction_Type, %bb.p ], [ @_PyTemplate_Type, %bb.q ], [ @PyUnicode_Type, %bb.r ]
  %i.bn = getelementptr i8, ptr %.0.i50, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !219
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
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
  %i.a = load i32, ptr %1, align 8, !tbaa !95     ; 2 uses
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
  %i.a = load ptr, ptr %3, align 8, !tbaa !305
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
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
  %i.j = load ptr, ptr %3, align 8, !tbaa !305
  %i.k = tail call ptr @PyList_GetItem(ptr noundef %i.j, i64 noundef %.020) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
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
  %i.b = load i64, ptr %3, align 8, !tbaa !31     ; 6 uses
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 16}
!12 = !{!"", !13, i64 0, !8, i64 8, !14, i64 16, !8, i64 24}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!12, !8, i64 24}
!16 = !{!12, !13, i64 0}
!17 = !{!12, !8, i64 8}
!18 = !{!19, !8, i64 40}
!19 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!20 = !{!19, !8, i64 48}
!21 = !{!19, !8, i64 44}
!22 = !{!19, !8, i64 52}
!23 = !{!19, !8, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS7_object", !13, i64 0}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = !{!32, !14, i64 0}
!32 = !{!"", !14, i64 0, !33, i64 8, !9, i64 16}
!33 = !{!"any p2 pointer", !13, i64 0}
!34 = !{!35, !26, i64 24}
!35 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !8, i64 88}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS5_stmt", !13, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !26, i64 16}
!41 = !{!"_symtable_entry", !42, i64 0, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !8, i64 72, !44, i64 80, !8, i64 88, !8, i64 92, !8, i64 92, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 104, !45, i64 108, !46, i64 128, !47, i64 136}
!42 = !{!"_object", !9, i64 0, !43, i64 8}
!43 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!44 = !{!"p1 omnipotent char", !13, i64 0}
!45 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!46 = !{!"p1 _ZTS15_symtable_entry", !13, i64 0}
!47 = !{!"p1 _ZTS8symtable", !13, i64 0}
!48 = !{!41, !46, i64 128}
!49 = !{!41, !26, i64 32}
!50 = !{!51, !14, i64 16}
!51 = !{!"PyVarObject", !42, i64 0, !14, i64 16}
!52 = distinct !{!52, !39}
!53 = !{!54, !55, i64 24}
!54 = !{!"", !51, i64 0, !55, i64 24, !14, i64 32}
!55 = !{!"p2 _ZTS7_object", !33, i64 0}
!56 = !{!57, !8, i64 64}
!57 = !{!"_stmt", !8, i64 0, !9, i64 8, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!58 = !{!57, !8, i64 72}
!59 = !{!57, !8, i64 68}
!60 = !{!57, !8, i64 76}
!61 = !{!35, !26, i64 48}
!62 = !{!41, !8, i64 72}
!63 = !{!14, !14, i64 0}
!64 = !{!35, !26, i64 32}
!65 = !{!57, !8, i64 0}
!66 = distinct !{!66, !39}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS5_expr", !13, i64 0}
!69 = distinct !{null}
!70 = distinct !{null, null}
!71 = distinct !{null}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = !{!75, !14, i64 16}
!75 = !{!"", !42, i64 0, !14, i64 16, !14, i64 24, !76, i64 32}
!76 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!77 = !{!35, !26, i64 40}
!78 = distinct !{null}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{null}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{null}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = !{!88, !13, i64 16}
!88 = !{!"", !26, i64 0, !8, i64 8, !13, i64 16, !14, i64 24, !14, i64 32}
!89 = distinct !{null, null}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTS11_match_case", !13, i64 0}
!92 = !{!93, !94, i64 0}
!93 = !{!"_match_case", !94, i64 0, !68, i64 8, !13, i64 16}
!94 = !{!"p1 _ZTS8_pattern", !13, i64 0}
!95 = !{!96, !8, i64 0}
!96 = !{!"_pattern", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!97 = distinct !{!97, !39}
!98 = !{!96, !8, i64 40}
!99 = !{!96, !8, i64 48}
!100 = !{!96, !8, i64 44}
!101 = !{!96, !8, i64 52}
!102 = !{!88, !26, i64 0}
!103 = !{!93, !68, i64 8}
!104 = !{!88, !8, i64 8}
!105 = distinct !{!105, !39}
!106 = !{!88, !14, i64 24}
!107 = distinct !{!107, !39}
!108 = !{!93, !13, i64 16}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{null}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = !{!42, !43, i64 8}
!115 = !{!116, !14, i64 168}
!116 = !{!"_typeobject", !51, i64 0, !44, i64 24, !14, i64 32, !14, i64 40, !13, i64 48, !14, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !14, i64 168, !44, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !14, i64 208, !13, i64 216, !13, i64 224, !117, i64 232, !118, i64 240, !119, i64 248, !43, i64 256, !26, i64 264, !13, i64 272, !13, i64 280, !14, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !13, i64 360, !26, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !120, i64 410}
!117 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!118 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!119 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!120 = !{!"short", !9, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 _ZTS6_alias", !13, i64 0}
!123 = !{!124, !26, i64 0}
!124 = !{!"_alias", !26, i64 0, !26, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!125 = !{!124, !26, i64 8}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = !{!120, !120, i64 0}
!129 = distinct !{!129, !39, !130}
!130 = !{!"llvm.loop.peeled.count", i32 1}
!131 = !{!13, !13, i64 0}
!132 = distinct !{null}
!133 = distinct !{null}
!134 = distinct !{null}
!135 = distinct !{null}
!136 = distinct !{null}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = !{!140, !13, i64 48}
!140 = !{!"_arguments", !13, i64 0, !13, i64 8, !141, i64 16, !13, i64 24, !13, i64 32, !141, i64 40, !13, i64 48}
!141 = !{!"p1 _ZTS4_arg", !13, i64 0}
!142 = distinct !{null, null}
!143 = distinct !{!143, !39}
!144 = !{!140, !13, i64 24}
!145 = !{!140, !13, i64 32}
!146 = distinct !{null}
!147 = !{!35, !14, i64 64}
!148 = distinct !{!148, !39}
!149 = !{!46, !46, i64 0}
!150 = !{!140, !13, i64 8}
!151 = !{!141, !141, i64 0}
!152 = !{!153, !26, i64 0}
!153 = !{!"_arg", !26, i64 0, !68, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!154 = !{!153, !68, i64 8}
!155 = distinct !{!155, !39}
!156 = !{!140, !13, i64 0}
!157 = !{!140, !141, i64 16}
!158 = !{!140, !141, i64 40}
!159 = !{!35, !14, i64 72}
!160 = !{!35, !14, i64 80}
!161 = distinct !{null}
!162 = distinct !{!162, !39}
!163 = !{!164, !164, i64 0}
!164 = !{!"p1 _ZTS11_type_param", !13, i64 0}
!165 = !{!166, !8, i64 32}
!166 = !{!"_type_param", !8, i64 0, !9, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!167 = !{!166, !8, i64 40}
!168 = !{!166, !8, i64 36}
!169 = !{!166, !8, i64 44}
!170 = !{!166, !8, i64 0}
!171 = distinct !{!171, !39}
!172 = !{!173, !8, i64 88}
!173 = !{!"PyCodeObject", !51, i64 0, !26, i64 24, !26, i64 32, !26, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !26, i64 128, !26, i64 136, !26, i64 144, !13, i64 152, !13, i64 160, !14, i64 168, !174, i64 176, !14, i64 184, !8, i64 192, !13, i64 200, !9, i64 208}
!174 = !{!"p1 _ZTS19_PyCoMonitoringData", !13, i64 0}
!175 = !{!173, !8, i64 72}
!176 = distinct !{!176, !39}
!177 = !{!173, !26, i64 96}
!178 = distinct !{!178, !39}
!179 = distinct !{!179, !39}
!180 = !{!181, !8, i64 0}
end_hunk_1
