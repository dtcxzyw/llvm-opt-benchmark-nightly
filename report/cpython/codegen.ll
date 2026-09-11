Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@codegen_function:bb.a
  %.2 = phi i32 [ %.1, %.critedge148 ], [ 0, %codegen_default_arguments.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ca = call ptr @_PyCompile_Symtable(ptr noundef %0) #10
  %i.cb = call i32 @_PySymtable_LookupOptional(ptr noundef %i.ca, ptr noundef %.0127, ptr noundef nonnull %i.b) #10
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %select.unfold165, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !209 ; 5 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 92
  %i.cf = load i8, ptr %i.ce, align 4
  %i.cg = and i8 %i.cf, 4
  %.not.i154 = icmp eq i8 %i.cg, 0
  br i1 %.not.i154, label %bb.am, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.cd, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cj = call fastcc i32 @codegen_setup_annotations_scope(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert, ptr noundef %.0127, ptr noundef %i.ci)
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !209 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.cl, -1
  br i1 %.not.i17.i, label %bb.z, label %Py_DECREF.exit18.i

bb.z:                                             ; preds = %bb.y
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !36
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.aa, label %Py_DECREF.exit18.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ck) #10
  br label %Py_DECREF.exit18.i

Py_DECREF.exit18.i:                               ; preds = %bb.aa, %bb.z, %bb.y
  %i.co = icmp eq i32 %i.cj, -1
  br i1 %i.co, label %select.unfold165, label %bb.ab

bb.ab:                                            ; preds = %Py_DECREF.exit18.i
  %i.cp = getelementptr i8, ptr %.0127, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !102 ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %i.cs = icmp eq ptr %i.cq, null
  br i1 %i.cs, label %.loopexit56.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.011.i.i.i = phi i32 [ %i.dc, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ct = sext i32 %.011.i.i.i to i64             ; 2 uses
  %i.cu = load i64, ptr %i.cq, align 8, !tbaa !41
  %i.cv = icmp sgt i64 %i.cu, %i.ct
  br i1 %i.cv, label %bb.ac, label %.loopexit56.i.i

bb.ac:                                            ; preds = %.split.i.i.i
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !103 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !105
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !210
  %i.db = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.cy, ptr noundef %i.da, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %.not.i.i.i = icmp eq i32 %i.db, -1
  %i.dc = add i32 %.011.i.i.i, 1
  br i1 %.not.i.i.i, label %codegen_annotations_in_scope.exit.thread.i, label %.split.i.i.i, !llvm.loop !207

.loopexit56.i.i:                                  ; preds = %.split.i.i.i, %bb.ab
  %i.dd = load ptr, ptr %.0127, align 8, !tbaa !106 ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %i.df = icmp eq ptr %i.dd, null
  br i1 %i.df, label %.loopexit54.i.i, label %.split.i41.i.i

.split.i41.i.i:                                   ; preds = %.loopexit56.i.i, %bb.ad
  %.011.i42.i.i = phi i32 [ %i.dp, %bb.ad ], [ 0, %.loopexit56.i.i ] ; 2 uses
  %i.dg = sext i32 %.011.i42.i.i to i64           ; 2 uses
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !41
  %i.di = icmp sgt i64 %i.dh, %i.dg
  br i1 %i.di, label %bb.ad, label %.loopexit54.i.i

bb.ad:                                            ; preds = %.split.i41.i.i
  %i.dj = getelementptr [8 x i8], ptr %i.de, i64 %i.dg
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !103 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !105
  %i.dm = getelementptr i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.do = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %.not.i44.i.i = icmp eq i32 %i.do, -1
  %i.dp = add i32 %.011.i42.i.i, 1
  br i1 %.not.i44.i.i, label %codegen_annotations_in_scope.exit.thread.i, label %.split.i41.i.i, !llvm.loop !207

.loopexit54.i.i:                                  ; preds = %.split.i41.i.i, %.loopexit56.i.i
  %i.dq = getelementptr i8, ptr %.0127, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !211 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.dr, null
  br i1 %.not.i20.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit54.i.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !210 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.dt, null
  br i1 %.not38.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dv = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.du, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %codegen_annotations_in_scope.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.loopexit54.i.i
  %i.dx = load ptr, ptr %i.ba, align 8, !tbaa !99 ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = icmp eq ptr %i.dx, null
  br i1 %i.dz, label %.loopexit.i.i, label %.split.i46.i.i

.split.i46.i.i:                                   ; preds = %bb.ag, %bb.ah
  %.011.i47.i.i = phi i32 [ %i.ej, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.ea = sext i32 %.011.i47.i.i to i64           ; 2 uses
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !41
  %i.ec = icmp sgt i64 %i.eb, %i.ea
  br i1 %i.ec, label %bb.ah, label %.loopexit.i.i

bb.ah:                                            ; preds = %.split.i46.i.i
  %i.ed = getelementptr [8 x i8], ptr %i.dy, i64 %i.ea
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !103 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !105
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !210
  %i.ei = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.ef, ptr noundef %i.eh, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %.not.i49.i.i = icmp eq i32 %i.ei, -1
  %i.ej = add i32 %.011.i47.i.i, 1
  br i1 %.not.i49.i.i, label %codegen_annotations_in_scope.exit.thread.i, label %.split.i46.i.i, !llvm.loop !207

.loopexit.i.i:                                    ; preds = %.split.i46.i.i, %bb.ag
  %i.ek = getelementptr i8, ptr %.0127, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !212 ; 3 uses
  %.not39.i.i = icmp eq ptr %i.el, null
  br i1 %.not39.i.i, label %codegen_annotations_in_scope.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !210 ; 2 uses
  %.not40.i.i = icmp eq ptr %i.en, null
  br i1 %.not40.i.i, label %codegen_annotations_in_scope.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !105
  %i.ep = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef %i.eo, ptr noundef nonnull %i.en, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %i.eq = icmp eq i32 %i.ep, -1
  br i1 %i.eq, label %codegen_annotations_in_scope.exit.thread.i, label %codegen_annotations_in_scope.exit.i

codegen_annotations_in_scope.exit.i:              ; preds = %bb.aj, %bb.ai, %.loopexit.i.i
  %i.er = call fastcc i32 @codegen_argannotation(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98056), ptr noundef %.0126, ptr noundef nonnull %i.a, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %codegen_annotations_in_scope.exit.thread.i, label %bb.ak

codegen_annotations_in_scope.exit.thread.i:       ; preds = %bb.ac, %bb.ad, %bb.ah, %codegen_annotations_in_scope.exit.i, %bb.aj, %bb.af
  call void @_PyCompile_ExitScope(ptr noundef %0) #10
  br label %select.unfold165

bb.ak:                                            ; preds = %codegen_annotations_in_scope.exit.i
  %i.et = call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !67
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = call i32 @_PyInstructionSequence_Addop(ptr noundef %i.et, i32 noundef 47, i32 noundef %i.ev, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert) #10
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %select.unfold165, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = call fastcc i32 @codegen_leave_annotations_scope(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.16.12.insert.insert)
  %i.ez = icmp eq i32 %i.ey, -1
  br i1 %i.ez, label %select.unfold165, label %bb.aq

bb.am:                                            ; preds = %bb.x
  %i.fa = load i32, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %.not.i.i156 = icmp sgt i32 %i.fa, -1
  br i1 %.not.i.i156, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.cd, align 8, !tbaa !36
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.cd) #10
  br label %bb.aq

select.unfold165:                                 ; preds = %bb.al, %bb.w, %bb.ak, %codegen_annotations_in_scope.exit.thread.i, %Py_DECREF.exit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.ag, label %bb.ap, label %.critedge145

bb.ap:                                            ; preds = %select.unfold165
  call void @_PyCompile_ExitScope(ptr noundef %0) #10
  br label %.critedge145

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.1.i155 = phi i64 [ 16, %bb.al ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.fd = or i64 %.1.i155, %.119.i
  %.not.i157 = icmp eq i32 %2, 0
  %..i158 = select i1 %.not.i157, i32 2, i32 3
  %.069.i = load ptr, ptr %.0127.in, align 8, !tbaa !36 ; 3 uses
  %.070.i = load ptr, ptr %.0125.in, align 8, !tbaa !36
  %.071.in.i = getelementptr i8, ptr %1, i64 24
  %.071.i = load ptr, ptr %.071.in.i, align 8, !tbaa !36 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ff = getelementptr i8, ptr %.069.i, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !102 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !41
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fj = phi i64 [ %i.fi, %bb.ar ], [ 0, %bb.aq ]
  store i64 %i.fj, ptr %i.fe, align 8, !tbaa !101
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.fl = load ptr, ptr %.069.i, align 8, !tbaa !106 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !41
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fo = phi i64 [ %i.fn, %bb.at ], [ 0, %bb.as ]
  store i64 %i.fo, ptr %i.fk, align 8, !tbaa !107
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.fq = getelementptr i8, ptr %.069.i, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !99 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !41
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fu = phi i64 [ %i.ft, %bb.av ], [ 0, %bb.au ]
  store i64 %i.fu, ptr %i.fp, align 8, !tbaa !108
  %i.fv = call fastcc i32 @codegen_enter_scope(ptr noundef %0, ptr noundef %.070.i, i32 noundef %..i158, ptr noundef nonnull %1, i32 noundef %.0122, ptr noundef null, ptr noundef nonnull %3), !inline_history !208
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %codegen_function_body.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fx = call ptr @_PyCompile_SymtableEntry(ptr noundef %0) #10, !inline_history !208 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 100
  %i.fz = load i16, ptr %i.fy, align 4
  %i.ga = and i16 %i.fz, 256
  %.not83.i = icmp eq i16 %i.ga, 0
  br i1 %.not83.i, label %.critedge87.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gb = call ptr @_PyAST_GetDocString(ptr noundef %.071.i) #10, !inline_history !208
  %i.gc = call ptr @_PyCompile_CleanDoc(ptr noundef %i.gb) #10, !inline_history !208 ; 5 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.critedge.i, label %bb.az

.critedge.i:                                      ; preds = %bb.ay
  call void @_PyCompile_ExitScope(ptr noundef %0) #10, !inline_history !208
  br label %codegen_function_body.exit

bb.az:                                            ; preds = %bb.ay
  %i.ge = call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull %i.gc) #10, !inline_history !208
  %i.gf = load i32, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  %.not.i90.i = icmp sgt i32 %i.gf, -1
  br i1 %.not.i90.i, label %bb.ba, label %Py_DECREF.exit91.i

bb.ba:                                            ; preds = %bb.az
  %i.gg = add nsw i32 %i.gf, -1                   ; 2 uses
  store i32 %i.gg, ptr %i.gc, align 8, !tbaa !36
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.bb, label %Py_DECREF.exit91.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.gc) #10, !inline_history !208
  br label %Py_DECREF.exit91.i

Py_DECREF.exit91.i:                               ; preds = %bb.bb, %bb.ba, %bb.az
  %i.gi = icmp sgt i64 %i.ge, -1
  br i1 %i.gi, label %.critedge87.i, label %bb.bc

bb.bc:                                            ; preds = %Py_DECREF.exit91.i
  call void @_PyCompile_ExitScope(ptr noundef %0) #10, !inline_history !208
  br label %codegen_function_body.exit

.critedge87.i:                                    ; preds = %Py_DECREF.exit91.i, %bb.ax
  %.077.i = phi i64 [ 0, %bb.ax ], [ 1, %Py_DECREF.exit91.i ] ; 2 uses
  %i.gj = call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !208
  %i.gk = call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.gj) #10, !inline_history !208 ; 4 uses
  %i.gl = icmp eq i32 %i.gk, -1
  br i1 %i.gl, label %codegen_function_body.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge87.i
  %i.gm = call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !208
  %i.gn = call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gm, i32 noundef %i.gk) #10, !inline_history !208
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %codegen_function_body.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = getelementptr i8, ptr %i.fx, i64 92
  %i.gq = load i8, ptr %i.gp, align 4
  %i.gr = and i8 %i.gq, 3
  %spec.select.i.not = icmp eq i8 %i.gr, 0        ; 2 uses
  br i1 %spec.select.i.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = call i32 @_PyCompile_PushFBlock(ptr noundef %0, i64 -1, i64 -1, i32 noundef 13, i32 %i.gk, i32 -1, ptr noundef null) #10, !inline_history !208
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %codegen_function_body.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gu = icmp eq ptr %.071.i, null
  br i1 %i.gu, label %.critedge89.i, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.bg
  %i.gv = getelementptr i8, ptr %.071.i, i64 16
  %i.gw = load i64, ptr %.071.i, align 8, !tbaa !41
  %i.gx = icmp slt i64 %.077.i, %i.gw
  br i1 %i.gx, label %.lr.ph181, label %.critedge89.i

bb.bh:                                            ; preds = %.lr.ph181
  %i.gy = add nuw nsw i64 %.073.i177180, 1        ; 2 uses
  %i.gz = load i64, ptr %.071.i, align 8, !tbaa !41
  %i.ha = icmp slt i64 %i.gy, %i.gz
  br i1 %i.ha, label %.lr.ph181, label %.critedge89.i

.lr.ph181:                                        ; preds = %.lr.ph178, %bb.bh
  %.073.i177180 = phi i64 [ %i.gy, %bb.bh ], [ %.077.i, %.lr.ph178 ] ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %i.gv, i64 %.073.i177180
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !45
  %i.hd = call fastcc i32 @codegen_visit_stmt(ptr noundef %0, ptr noundef %i.hc), !inline_history !208
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %.split, label %bb.bh

.split:                                           ; preds = %.lr.ph181
  call void @_PyCompile_ExitScope(ptr noundef %0) #10, !inline_history !208
  br label %codegen_function_body.exit

.critedge89.i:                                    ; preds = %bb.bh, %.lr.ph178, %bb.bg
  br i1 %spec.select.i.not, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.critedge89.i
  %i.hf = call fastcc i32 @codegen_wrap_in_stopiteration_handler(ptr noundef %0), !inline_history !208
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_PyCompile_ExitScope(ptr noundef %0) #10, !inline_history !208
  br label %codegen_function_body.exit

bb.bk:                                            ; preds = %bb.bi
  call void @_PyCompile_PopFBlock(ptr noundef %0, i32 noundef 13, i32 %i.gk) #10, !inline_history !208
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.critedge89.i
  %i.hh = call ptr @_PyCompile_OptimizeAndAssemble(ptr noundef %0, i32 noundef 1) #10, !inline_history !208 ; 5 uses
  call void @_PyCompile_ExitScope(ptr noundef %0) #10, !inline_history !208
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %codegen_function_body.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hj = load i32, ptr %i.w, align 8, !tbaa !61
  %i.hk = load i32, ptr %i.x, align 8, !tbaa !62
  %i.hl = load i32, ptr %i.z, align 4, !tbaa !63
  %i.hm = load i32, ptr %i.ab, align 4, !tbaa !64
  %.sroa.2.0.insert.ext.i = zext i32 %i.hk to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.hj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.hm to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.hl to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  %i.hn = call fastcc i32 @codegen_make_closure(ptr noundef %0, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.3.8.insert.insert.i, ptr noundef %i.hh, i64 noundef %i.fd), !inline_history !208 ; 3 uses
  %i.ho = load i32, ptr %i.hh, align 8, !tbaa !36 ; 2 uses
  %.not.i.i159 = icmp sgt i32 %i.ho, -1
  br i1 %.not.i.i159, label %bb.bn, label %codegen_function_body.exit

bb.bn:                                            ; preds = %bb.bm
  %i.hp = add nsw i32 %i.ho, -1                   ; 2 uses
  store i32 %i.hp, ptr %i.hh, align 8, !tbaa !36
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.bo, label %codegen_function_body.exit

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %i.hh) #10, !inline_history !208
  br label %codegen_function_body.exit

codegen_function_body.exit:                       ; preds = %bb.bm, %bb.bn, %bb.bo, %.split, %bb.aw, %.critedge.i, %bb.bc, %.critedge87.i, %bb.bd, %bb.bf, %bb.bj, %bb.bl
  %.8.i = phi i32 [ -1, %bb.aw ], [ -1, %.critedge.i ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %.critedge87.i ], [ -1, %.split ], [ -1, %bb.bj ], [ -1, %bb.bf ], [ -1, %bb.bl ], [ %i.hn, %bb.bo ], [ %i.hn, %bb.bn ], [ %i.hn, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %i.ag, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %codegen_function_body.exit
  %i.hr = icmp slt i32 %.8.i, 0
end_hunk_0
begin_hunk_1_@codegen_unwind_fblock:bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i64, ptr %i.dy, align 4
  %i.ea = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.dw, i32 noundef 262, i32 noundef 0, i64 %i.dx, i64 %i.dz) #10
  %i.eb = icmp eq i32 %i.ea, -1
  br i1 %i.eb, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not101 = icmp eq i32 %3, 0
  br i1 %.not101, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ec = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ed = load i64, ptr %1, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load i64, ptr %i.ee, align 4
  %i.eg = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ec, i32 noundef 117, i32 noundef 2, i64 %i.ed, i64 %i.ef) #10
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ei = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ej = load i64, ptr %1, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.el = load i64, ptr %i.ek, align 4
  %i.em = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ei, i32 noundef 262, i32 noundef 0, i64 %i.ej, i64 %i.el) #10
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ep = load i64, ptr %1, align 4
  %i.eq = load i64, ptr %i.ek, align 4
  %i.er = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.eo, i32 noundef 29, i32 noundef 0, i64 %i.ep, i64 %i.eq) #10
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.et = load ptr, ptr %i.du, align 8, !tbaa !124
  %.not102 = icmp eq ptr %i.et, null
  br i1 %.not102, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load i64, ptr %1, align 4
  %i.ev = load i64, ptr %i.ek, align 4
  %i.ew = tail call fastcc i32 @codegen_addop_load_const(ptr noundef %0, i64 %i.eu, i64 %i.ev, ptr noundef nonnull @_Py_NoneStruct)
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = load ptr, ptr %i.du, align 8, !tbaa !124
  %i.ez = load i64, ptr %1, align 4
  %i.fa = load i64, ptr %i.ek, align 4
  %i.fb = tail call fastcc i32 @codegen_nameop(ptr noundef %0, i64 %i.ez, i64 %i.fa, ptr noundef %i.ey, i32 noundef 2)
  %i.fc = icmp eq i32 %i.fb, -1
  br i1 %i.fc, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load ptr, ptr %i.du, align 8, !tbaa !124
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
  %4 = select i1 %.not, i32 2, i32 3
  %i.z = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.y, i32 noundef 128, i32 noundef %4, i64 %1, i64 %2) #10
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ac = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ab, i32 noundef 260, i32 noundef %i.b, i64 %1, i64 %2) #10
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.af = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.ae, i32 noundef %i.e) #10
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ai = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ah, i32 noundef 7, i32 noundef 0, i64 %1, i64 %2) #10
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.al = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.ak, i32 noundef %i.h) #10
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ao = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.an, i32 noundef 10, i32 noundef 0, i64 %1, i64 %2) #10
  %i.ap = icmp eq i32 %i.ao, -1
  %. = sext i1 %i.ap to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.m ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ %., %bb.n ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i64 } @update_start_location_to_match_attr(i64 %0, i64 %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift = lshr i64 %0, 32 ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq i32 %i.b, %.sroa.0.sroa.0.0.extract.trunc
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.7.0.extract.shift to i32 ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !73
  %i.f = trunc i64 %.val to i32                   ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34   ; 2 uses
  %.not27 = icmp slt i32 %i.h, %i.f
  %i.i = sub i32 %i.h, %i.f
  %.sroa.11.8.insert.ext = zext i32 %i.i to i64
  %.sroa.11.8.insert.mask = and i64 %1, -4294967296
  %.sroa.11.8.insert.insert = or disjoint i64 %.sroa.11.8.insert.mask, %.sroa.11.8.insert.ext
  %.sroa.11.0 = select i1 %.not27, i64 -1, i64 %.sroa.11.8.insert.insert ; 4 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %.sroa.0.sroa.7.0.extract.trunc)
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

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.11.1 = phi i64 [ %.sroa.11.12.insert.insert24, %bb.c ], [ %.sroa.11.0, %bb.b ]
  %i.l = zext i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %bb.d ], [ %1, %bb.a ]
  %.sroa.0.sroa.0.0 = phi i32 [ %i.b, %bb.d ], [ %.sroa.0.sroa.0.0.extract.trunc, %bb.a ]
  %.sroa.0.sroa.7.0 = phi i64 [ %i.l, %bb.d ], [ %.sroa.0.sroa.7.0.extract.shift, %bb.a ]
  %.sroa.0.sroa.7.0.insert.shift = shl nuw i64 %.sroa.0.sroa.7.0, 32
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
  %i.l = load i32, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.c, label %Py_DECREF.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.j, align 8, !tbaa !36
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %i.b)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %codegen_addop_load_const.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = getelementptr i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34
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

end_hunk_1
