Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/instrumentation?download=true
inline.NumInlined: 253
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Py_call_instrumentation_line:bb.a
  %next.gep147 = getelementptr i8, ptr %i.bm, i64 %index142 ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep147, i64 1
  %i.bw = shl nuw nsw <4 x i32> %vec.ind143, splat (i32 3)
  %step.add146 = shl <4 x i32> %vec.ind143, splat (i32 3)
  %i.bx = add nsw <4 x i32> %i.bw, splat (i32 -8)
  %i.by = add <4 x i32> %step.add146, splat (i32 24)
  %i.bz = getelementptr i8, ptr %next.gep147, i64 5
  %wide.load148 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !41
  %wide.load149 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !41
  %i.ca = zext <4 x i8> %wide.load148 to <4 x i32>
  %i.cb = zext <4 x i8> %wide.load149 to <4 x i32>
  %i.cc = shl <4 x i32> %i.ca, %i.bx
  %i.cd = shl <4 x i32> %i.cb, %i.by
  %i.ce = or <4 x i32> %i.cc, %vec.phi144         ; 2 uses
  %i.cf = or <4 x i32> %i.cd, %vec.phi145         ; 2 uses
  %index.next150 = add nuw i64 %index142, 8       ; 2 uses
  %vec.ind.next151 = add nuw nsw <4 x i32> %vec.ind143, splat (i32 8)
  %i.cg = icmp eq i64 %index.next150, %n.vec140
  br i1 %i.cg, label %middle.block152, label %vector.body141, !llvm.loop !166

middle.block152:                                  ; preds = %vector.body141
  %bin.rdx153 = or <4 x i32> %i.cf, %i.ce
  %i.ch = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx153) ; 2 uses
  %cmp.n154 = icmp eq i64 %n.vec140, %i.bq
  br i1 %cmp.n154, label %get_line_delta.exit.i102, label %.lr.ph.i.i105.preheader158

.lr.ph.i.i105.preheader158:                       ; preds = %.lr.ph.i.i105.preheader, %middle.block152
  %.016.i.i106.ph = phi ptr [ %i.bm, %.lr.ph.i.i105.preheader ], [ %i.br, %middle.block152 ]
  %.01215.i.i107.ph = phi i32 [ 2, %.lr.ph.i.i105.preheader ], [ %i.bt, %middle.block152 ]
  %.01314.i.i108.ph = phi i32 [ %i.bo, %.lr.ph.i.i105.preheader ], [ %i.ch, %middle.block152 ]
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.preheader158, %.lr.ph.i.i105
  %.016.i.i106 = phi ptr [ %i.ci, %.lr.ph.i.i105 ], [ %.016.i.i106.ph, %.lr.ph.i.i105.preheader158 ]
  %.01215.i.i107 = phi i32 [ %i.cp, %.lr.ph.i.i105 ], [ %.01215.i.i107.ph, %.lr.ph.i.i105.preheader158 ] ; 2 uses
  %.01314.i.i108 = phi i32 [ %i.co, %.lr.ph.i.i105 ], [ %.01314.i.i108.ph, %.lr.ph.i.i105.preheader158 ]
  %i.ci = getelementptr i8, ptr %.016.i.i106, i64 1 ; 2 uses
  %i.cj = shl nuw nsw i32 %.01215.i.i107, 3
  %i.ck = add nsw i32 %i.cj, -8
  %i.cl = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl i32 %i.cm, %i.ck
  %i.co = or i32 %i.cn, %.01314.i.i108            ; 2 uses
  %i.cp = add nuw nsw i32 %.01215.i.i107, 1       ; 2 uses
  %exitcond.not.i.i109 = icmp eq i32 %i.cp, %i.r
  br i1 %exitcond.not.i.i109, label %get_line_delta.exit.i102, label %.lr.ph.i.i105, !llvm.loop !167

get_line_delta.exit.i102:                         ; preds = %.lr.ph.i.i105, %middle.block152, %_Py_Instrumentation_GetLine.exit
  %.013.lcssa.i.i103 = phi i32 [ %i.bo, %_Py_Instrumentation_GetLine.exit ], [ %i.ch, %middle.block152 ], [ %i.co, %.lr.ph.i.i105 ] ; 2 uses
  %i.cq = icmp eq i32 %.013.lcssa.i.i103, 0
  br i1 %i.cq, label %_Py_Instrumentation_GetLine.exit110, label %bb.c

bb.c:                                             ; preds = %get_line_delta.exit.i102
  %i.cr = add i32 %.013.lcssa.i.i103, -2
  %i.cs = getelementptr i8, ptr %i.c, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67
  %i.cu = add i32 %i.cr, %i.ct
  br label %_Py_Instrumentation_GetLine.exit110

_Py_Instrumentation_GetLine.exit110:              ; preds = %get_line_delta.exit.i102, %bb.c
  %.0.i.i104 = phi i32 [ %i.cu, %bb.c ], [ -1, %get_line_delta.exit.i102 ]
  %i.cv = icmp eq i32 %.0.i.i104, %.0.i.i
  br i1 %i.cv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Py_Instrumentation_GetLine.exit110
  %sext = shl i64 %i.bg, 31
  %i.cw = ashr i64 %sext, 32
  %i.cx = getelementptr [2 x i8], ptr %i.d, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !41
  switch i8 %i.cy, label %Py_DECREF.exit [
    i8 -12, label %bb.e
    i8 -128, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %_Py_Instrumentation_GetLine.exit110
  %i.cz = getelementptr i8, ptr %i.k, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !68 ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext87 = shl i64 %i.g, 31
  %i.db = ashr i64 %sext87, 32
  %i.dc = getelementptr i8, ptr %i.da, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.de = getelementptr i8, ptr %i.o, i64 223461
  %i.df = load i8, ptr %i.de, align 1, !tbaa !41
  %i.dg = getelementptr i8, ptr %i.k, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !41
  %i.di = or i8 %i.dh, %i.df
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.in = phi i8 [ %i.dd, %bb.f ], [ %i.di, %bb.g ] ; 3 uses
  %.not88 = icmp sgt i8 %.in, -1
  br i1 %.not88, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !169
  %.not89 = icmp eq ptr %i.dk, null
  br i1 %.not89, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dl = getelementptr i8, ptr %1, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !170 ; 2 uses
  %.not.i111 = icmp eq ptr %i.dm, null
  br i1 %.not.i111, label %_PyFrame_GetFrameObject.exit, label %_PyFrame_GetFrameObject.exit.thread

_PyFrame_GetFrameObject.exit:                     ; preds = %bb.j
  %i.dn = tail call ptr @_PyFrame_MakeAndSetFrameObject(ptr noundef nonnull %1) #12 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.critedge, label %_PyFrame_GetFrameObject.exit.thread

_PyFrame_GetFrameObject.exit.thread:              ; preds = %bb.j, %_PyFrame_GetFrameObject.exit
  %.0.i115 = phi ptr [ %i.dn, %_PyFrame_GetFrameObject.exit ], [ %i.dm, %bb.j ] ; 8 uses
  %i.dp = getelementptr i8, ptr %.0.i115, i64 44
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !172
  %.not90 = icmp eq i8 %i.dq, 0
  br i1 %.not90, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_PyFrame_GetFrameObject.exit.thread
  %i.dr = getelementptr i8, ptr %0, i64 68        ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !69
  store i32 5, ptr %i.dr, align 4, !tbaa !69
  %i.dt = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !56
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !56
  %i.dw = load i32, ptr %.0.i115, align 8, !tbaa !41 ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, -1073741825
  br i1 %i.dx, label %Py_INCREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = add nuw i32 %i.dw, 1
  store i32 %i.dy, ptr %.0.i115, align 8, !tbaa !41
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.k, %bb.l
  %i.dz = getelementptr i8, ptr %.0.i115, i64 40  ; 2 uses
  store i32 %.0.i.i, ptr %i.dz, align 8, !tbaa !173
  %i.ea = load ptr, ptr %i.dj, align 8, !tbaa !169
  %i.eb = getelementptr i8, ptr %0, i64 120
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !174
  %i.ed = tail call i32 %i.ea(ptr noundef %i.ec, ptr noundef nonnull %.0.i115, i32 noundef 2, ptr noundef nonnull @_Py_NoneStruct) #12
  store i32 0, ptr %i.dz, align 8, !tbaa !173
  %i.ee = load i32, ptr %i.dt, align 8, !tbaa !56
  %i.ef = add i32 %i.ee, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !56
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !69
  %i.eg = load i32, ptr %.0.i115, align 8, !tbaa !41 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i97, label %bb.m, label %Py_DECREF.exit98

bb.m:                                             ; preds = %Py_INCREF.exit
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %.0.i115, align 8, !tbaa !41
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %Py_DECREF.exit98

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i115) #12
  br label %Py_DECREF.exit98

Py_DECREF.exit98:                                 ; preds = %Py_INCREF.exit, %bb.m, %bb.n
  %.not91 = icmp eq i32 %i.ed, 0
  br i1 %.not91, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_PyFrame_GetFrameObject.exit.thread, %Py_DECREF.exit98, %bb.i
  %i.ej = and i8 %.in, 127
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.077 = phi i8 [ %i.ej, %bb.o ], [ %.in, %bb.h ] ; 2 uses
  %i.ek = icmp eq i8 %.077, 0
  br i1 %i.ek, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = sext i32 %.0.i.i to i64
  %i.em = tail call ptr @PyLong_FromLong(i64 noundef %i.el) #12 ; 8 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.a, align 16, !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.eo, align 8, !tbaa !57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.em, ptr %i.ep, align 16, !tbaa !57
  %sext116 = shl i64 %i.g, 31                     ; 2 uses
  %i.eq = ashr i64 %sext116, 32                   ; 3 uses
  %i.er = getelementptr [2 x i8], ptr %i.d, i64 %i.eq ; 3 uses
  %i.es = getelementptr i8, ptr %i.er, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.ae, %bb.r
  %.178 = phi i8 [ %.077, %bb.r ], [ %i.fh, %bb.ae ] ; 4 uses
  %i.et = icmp ugt i8 %.178, 15
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eu = lshr i8 %.178, 4
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !41
  %i.ey = sext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, 4
  br label %most_significant_bit.exit

bb.u:                                             ; preds = %bb.s
  %i.fa = zext nneg i8 %.178 to i64
  %i.fb = getelementptr i8, ptr @MOST_SIGNIFICANT_BITS, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !41
  %i.fd = sext i8 %i.fc to i32
  br label %most_significant_bit.exit

most_significant_bit.exit:                        ; preds = %bb.t, %bb.u
  %.0.i112 = phi i32 [ %i.ez, %bb.t ], [ %i.fd, %bb.u ] ; 2 uses
  %i.fe = shl nuw i32 1, %.0.i112                 ; 2 uses
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = xor i8 %i.ff, -1                        ; 2 uses
  %i.fh = and i8 %.178, %i.fg                     ; 2 uses
  %i.fi = trunc i32 %.0.i112 to i8
  %i.fj = call fastcc i32 @call_one_instrument(ptr noundef %i.o, ptr noundef %0, ptr noundef nonnull %i.eo, i64 noundef -9223372036854775806, i8 noundef signext %i.fi, i32 noundef 5) ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %most_significant_bit.exit
  %i.fl = icmp slt i32 %i.fj, 0
  br i1 %i.fl, label %.critedge94, label %bb.y

.critedge94:                                      ; preds = %bb.v
  %i.fm = load i32, ptr %i.em, align 8, !tbaa !41 ; 2 uses
  %.not.i95 = icmp sgt i32 %i.fm, -1
  br i1 %.not.i95, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.critedge94
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.em, align 8, !tbaa !41
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.em) #12
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  %i.fp = load ptr, ptr %i.n, align 8, !tbaa !58  ; 2 uses
  call void @_PyEval_StopTheWorld(ptr noundef %i.fp) #12
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !34  ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !68 ; 2 uses
  %.not.i113 = icmp eq ptr %i.fs, null
  br i1 %.not.i113, label %bb.z, label %.split.i

.split.i:                                         ; preds = %bb.y
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.eq  ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !41
  %i.fv = and i8 %i.fu, %i.fg                     ; 2 uses
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !41
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %._crit_edge.i, label %remove_line_tools.exit

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr i8, ptr %i.fq, i64 16
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !41
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = and i32 %i.fe, %i.fz
  %i.gb = icmp eq i32 %i.ga, %i.fz
  br i1 %i.gb, label %._crit_edge.i, label %remove_line_tools.exit

._crit_edge.i:                                    ; preds = %bb.z, %.split.i
  %i.gc = load i8, ptr %i.er, align 2, !tbaa !41
  %.not.i.i = icmp eq i8 %i.gc, -3
  br i1 %.not.i.i, label %bb.aa, label %remove_line_tools.exit

bb.aa:                                            ; preds = %._crit_edge.i
  %i.gd = getelementptr i8, ptr %i.fq, i64 96
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !38 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !40
  %i.gh = zext i8 %i.gg to i64
  %sext118 = mul i64 %sext116, %i.gh
  %i.gi = ashr exact i64 %sext118, 32
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.gi  ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !41  ; 3 uses
  %i.gl = icmp eq i8 %i.gk, -19
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gm = getelementptr i8, ptr %i.fq, i64 112
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !42
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.eq
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !41
  store i8 %i.gp, ptr %i.gj, align 1, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i8 %i.gk, ptr %i.er, align 2, !tbaa !41
  %i.gq = zext i8 %i.gk to i64
  %i.gr = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !41
  %.not15.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not15.i.i, label %remove_line_tools.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i16 9, ptr %i.es, align 2, !tbaa !41
  br label %remove_line_tools.exit

remove_line_tools.exit:                           ; preds = %.split.i, %bb.z, %._crit_edge.i, %bb.ac, %bb.ad
  call void @_PyEval_StartTheWorld(ptr noundef %i.fp) #12
  br label %bb.ae

bb.ae:                                            ; preds = %most_significant_bit.exit, %remove_line_tools.exit
  %.not92 = icmp eq i8 %i.fh, 0
  br i1 %.not92, label %bb.af, label %bb.s, !llvm.loop !168

bb.af:                                            ; preds = %bb.ae
  %i.gt = load i32, ptr %i.em, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp sgt i32 %i.gt, -1
  br i1 %.not.i, label %bb.ag, label %Py_DECREF.exit

bb.ag:                                            ; preds = %bb.af
  %i.gu = add nsw i32 %i.gt, -1                   ; 2 uses
  store i32 %i.gu, ptr %i.em, align 8, !tbaa !41
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.ah, label %Py_DECREF.exit

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.em) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.ah, %bb.ag, %bb.af, %bb.p
  %i.gw = load i8, ptr %i.m, align 1, !tbaa !40
  %i.gx = zext i8 %i.gw to i64
  %i.gy = shl i64 %i.g, 31
  %sext119 = mul i64 %i.gy, %i.gx
  %i.gz = ashr exact i64 %sext119, 32
  %i.ha = getelementptr i8, ptr %i.p, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !41
  %i.hc = zext i8 %i.hb to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w, %.critedge94, %Py_DECREF.exit98, %_PyFrame_GetFrameObject.exit, %bb.q, %Py_DECREF.exit
  %.7 = phi i32 [ -1, %bb.q ], [ %i.hc, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit98 ], [ -1, %_PyFrame_GetFrameObject.exit ], [ -1, %.critedge94 ], [ -1, %bb.w ], [ -1, %bb.x ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @call_one_instrument(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 -9223372036854775808, -9223372036854775800) %3, i8 noundef signext %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 223496
  %i.b = sext i8 %4 to i64
  %i.c = getelementptr [152 x i8], ptr %i.a, i64 %i.b
  %i.d = sext i32 %5 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 68         ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69
  store i32 %5, ptr %i.h, align 4, !tbaa !69
  %i.j = getelementptr i8, ptr %1, i64 64         ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !56
  %i.m = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !70 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i.i, i64 168
  %.val6.i.i = load i64, ptr %i.n, align 8, !tbaa !75
  %i.o = and i64 %.val6.i.i, 2048
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i, label %_PyVectorcall_FunctionInline.exit.i

_PyVectorcall_FunctionInline.exit.i:              ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.val.i.i, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !176
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q
  %.0.copyload.i.i = load ptr, ptr %i.r, align 1  ; 2 uses
  %i.s = icmp eq ptr %.0.copyload.i.i, null
  br i1 %i.s, label %_PyVectorcall_FunctionInline.exit.thread.i, label %bb.c

_PyVectorcall_FunctionInline.exit.thread.i:       ; preds = %_PyVectorcall_FunctionInline.exit.i, %bb.b
  %i.t = and i64 %3, 7
  %i.u = tail call ptr @_PyObject_MakeTpCall(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %2, i64 noundef %i.t, ptr noundef null) #12
  br label %_PyObject_VectorcallTstate.exit

bb.c:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i
  %i.v = tail call ptr %.0.copyload.i.i(ptr noundef nonnull %i.f, ptr noundef %2, i64 noundef range(i64 -9223372036854775808, -9223372036854775800) %3, ptr noundef null) #12, !inline_history !175
  %i.w = tail call ptr @_Py_CheckFunctionResult(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %i.v, ptr noundef null) #12
  br label %_PyObject_VectorcallTstate.exit

_PyObject_VectorcallTstate.exit:                  ; preds = %_PyVectorcall_FunctionInline.exit.thread.i, %bb.c
  %.0.i = phi ptr [ %i.u, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.x = load i32, ptr %i.j, align 8, !tbaa !56
  %i.y = add i32 %i.x, -1
end_hunk_0
