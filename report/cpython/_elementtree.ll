inline.NumInlined: 446
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@element_ass_subscr:bb.a
bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr i8, ptr %i.cg, i64 8      ; 2 uses
  %.in220 = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %.in220, align 8, !tbaa !105 ; 13 uses
  %i.cj = getelementptr i8, ptr %0, i64 40        ; 7 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.w, label %._crit_edge255

._crit_edge255:                                   ; preds = %bb.v
  %.phi.trans.insert = getelementptr i8, ptr %i.ck, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cm = call ptr @PyMem_Malloc(i64 noundef 64) #11 ; 6 uses
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !41
  %.not.i215 = icmp eq ptr %i.cm, null
  br i1 %.not.i215, label %bb.x, label %create_extra.exit

create_extra.exit:                                ; preds = %bb.w
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.cn, align 8, !tbaa !58
  %i.co = getelementptr i8, ptr %i.cm, i64 32
  %i.cp = getelementptr i8, ptr %i.cm, i64 24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !43
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = call ptr @PyErr_NoMemory() #11          ; 0 uses
  %i.cr = load i32, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i192 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i192, label %bb.y, label %Py_DECREF.exit195

bb.y:                                             ; preds = %bb.x
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !26
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %Py_DECREF.exit195

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #11
  br label %Py_DECREF.exit195

bb.aa:                                            ; preds = %._crit_edge255, %create_extra.exit
  %i.cu = phi i64 [ 0, %create_extra.exit ], [ %.pre, %._crit_edge255 ]
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !119
  %i.cw = call i64 @PySlice_AdjustIndices(i64 noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.cv) #11 ; 18 uses
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !119
  %.not171 = icmp eq i64 %i.cx, 1
  %.not172 = icmp eq i64 %i.ci, %i.cw
  %or.cond = select i1 %.not171, i1 true, i1 %.not172
  br i1 %or.cond, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i190 = icmp sgt i32 %i.cy, -1
  br i1 %.not.i190, label %bb.ac, label %Py_DECREF.exit191

bb.ac:                                            ; preds = %bb.ab
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cg, align 8, !tbaa !26
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ad, label %Py_DECREF.exit191

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #11
  br label %Py_DECREF.exit191

Py_DECREF.exit191:                                ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.db = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  %i.dc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.db, ptr noundef nonnull @.str.108, i64 noundef %i.ci, i64 noundef %i.cw) #11 ; 0 uses
  br label %Py_DECREF.exit195

bb.ae:                                            ; preds = %bb.aa
  %i.dd = icmp sgt i64 %i.ci, %i.cw               ; 2 uses
  br i1 %i.dd, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.de = sub i64 %i.ci, %i.cw
  %i.df = call fastcc i32 @element_resize(ptr noundef nonnull %0, i64 noundef %i.de)
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dh = load i32, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i188 = icmp sgt i32 %i.dh, -1
  br i1 %.not.i188, label %bb.ah, label %Py_DECREF.exit195

bb.ah:                                            ; preds = %bb.ag
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.cg, align 8, !tbaa !26
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ai, label %Py_DECREF.exit195

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #11
  br label %Py_DECREF.exit195

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.dk = getelementptr i8, ptr %0, i64 8
  %.val203 = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.dl = call ptr @PyType_GetModuleByDef(ptr noundef %.val203, ptr noundef nonnull @elementtreemodule) #11, !inline_history !111
  %i.dm = call ptr @PyModule_GetState(ptr noundef %i.dl) #11, !inline_history !111
  %i.dn = icmp sgt i64 %i.ci, 0                   ; 2 uses
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aj
  %i.do = getelementptr i8, ptr %i.cg, i64 24
  %i.dp = getelementptr i8, ptr %i.cg, i64 32
  %i.dq = getelementptr i8, ptr %i.dm, i64 104
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %.critedge
  %.1139225 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %.critedge ] ; 2 uses
  %.val202 = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.dr = getelementptr i8, ptr %.val202, i64 168
  %.val206 = load i64, ptr %i.dr, align 8, !tbaa !48
  %i.ds = and i64 %.val206, 33554432
  %.not176 = icmp eq i64 %i.ds, 0
  br i1 %.not176, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !112
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.pn178 = phi ptr [ %i.dt, %bb.al ], [ %i.dp, %bb.ak ]
  %.in177 = getelementptr [8 x i8], ptr %.pn178, i64 %.1139225
  %i.du = load ptr, ptr %.in177, align 8, !tbaa !25 ; 2 uses
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !20 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  %.val209 = load ptr, ptr %i.dw, align 8, !tbaa !30 ; 2 uses
  %.not.i216 = icmp eq ptr %.val209, %i.dv
  br i1 %.not.i216, label %.critedge, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.am
  %i.dx = call i32 @PyType_IsSubtype(ptr noundef %.val209, ptr noundef %i.dv) #11
  %.not221 = icmp eq i32 %i.dx, 0
  br i1 %.not221, label %bb.an, label %.critedge

bb.an:                                            ; preds = %PyObject_TypeCheck.exit
  %i.dy = getelementptr i8, ptr %i.du, i64 8
  %.val210 = load ptr, ptr %i.dy, align 8, !tbaa !30
  %i.dz = getelementptr i8, ptr %.val210, i64 24
  %.val210.val = load ptr, ptr %i.dz, align 8, !tbaa !32
  %i.ea = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  %i.eb = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ea, ptr noundef nonnull @.str.7, ptr noundef %.val210.val) #11 ; 0 uses
  %i.ec = load i32, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i186 = icmp sgt i32 %i.ec, -1
  br i1 %.not.i186, label %bb.ao, label %Py_DECREF.exit195

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.cg, align 8, !tbaa !26
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ap, label %Py_DECREF.exit195

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #11
  br label %Py_DECREF.exit195

.critedge:                                        ; preds = %bb.am, %PyObject_TypeCheck.exit
  %i.ef = add nuw nsw i64 %.1139225, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %i.ci
  br i1 %exitcond.not, label %._crit_edge, label %bb.ak, !llvm.loop !122

._crit_edge:                                      ; preds = %.critedge, %bb.aj
  %i.eg = icmp sgt i64 %i.cw, 0
  br i1 %i.eg, label %bb.aq, label %.loopexit223

bb.aq:                                            ; preds = %._crit_edge
  %i.eh = call ptr @PyList_New(i64 noundef %i.cw) #11 ; 5 uses
  %.not173 = icmp eq ptr %i.eh, null
  br i1 %.not173, label %bb.ar, label %.lr.ph229

bb.ar:                                            ; preds = %bb.aq
  %i.ei = load i32, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i184 = icmp sgt i32 %i.ei, -1
  br i1 %.not.i184, label %bb.as, label %Py_DECREF.exit195

bb.as:                                            ; preds = %bb.ar
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr %i.cg, align 8, !tbaa !26
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.at, label %Py_DECREF.exit195

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #11
  br label %Py_DECREF.exit195

.lr.ph229:                                        ; preds = %bb.aq
  %i.el = load i64, ptr %i.a, align 8, !tbaa !119 ; 5 uses
  %i.em = load ptr, ptr %i.cj, align 8, !tbaa !41
  %i.en = getelementptr i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !43 ; 7 uses
  %i.ep = getelementptr i8, ptr %i.eh, i64 24
  %.val212 = load ptr, ptr %i.ep, align 8, !tbaa !112 ; 7 uses
  %i.eq = load i64, ptr %i.c, align 8, !tbaa !119 ; 6 uses
  %min.iters.check = icmp ugt i64 %i.cw, 11
  %ident.check.not = icmp eq i64 %i.eq, 1
  %or.cond341 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond341, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph229
  %.val212308 = ptrtoaddr ptr %.val212 to i64
  %i.er = ptrtoaddr ptr %i.eo to i64
  %i.es = shl i64 %i.el, 3
  %i.et = add i64 %i.es, %i.er
  %i.eu = sub i64 %i.et, %.val212308
  %diff.check = icmp ugt i64 %i.eu, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 9223372036854775804     ; 4 uses
  %i.ev = add i64 %i.el, %n.vec
  %i.ew = getelementptr [8 x i8], ptr %i.eo, i64 %i.el
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %index ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !25
  %wide.load309 = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !25
  %i.ez = getelementptr [8 x i8], ptr %.val212, i64 %index ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  store <2 x ptr> %wide.load, ptr %i.ez, align 8, !tbaa !25
  store <2 x ptr> %wide.load309, ptr %i.fa, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.loopexit223, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph229, %middle.block
  %.2140227.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph229 ], [ %n.vec, %middle.block ] ; 3 uses
  %.1146226.ph = phi i64 [ %i.el, %vector.memcheck ], [ %i.el, %.lr.ph229 ], [ %i.ev, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.2140227.prol = phi i64 [ %i.fg, %scalar.ph.prol ], [ %.2140227.ph, %scalar.ph.preheader ] ; 2 uses
  %.1146226.prol = phi i64 [ %i.ff, %scalar.ph.prol ], [ %.1146226.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fc = getelementptr [8 x i8], ptr %i.eo, i64 %.1146226.prol
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.fe = getelementptr [8 x i8], ptr %.val212, i64 %.2140227.prol
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !25
  %i.ff = add i64 %i.eq, %.1146226.prol           ; 2 uses
  %i.fg = add nuw nsw i64 %.2140227.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.2140227.unr = phi i64 [ %.2140227.ph, %scalar.ph.preheader ], [ %i.fg, %scalar.ph.prol ]
  %.1146226.unr = phi i64 [ %.1146226.ph, %scalar.ph.preheader ], [ %i.ff, %scalar.ph.prol ]
  %i.fh = sub nsw i64 %.2140227.ph, %i.cw
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %.loopexit223, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2140227 = phi i64 [ %i.gc, %scalar.ph ], [ %.2140227.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1146226 = phi i64 [ %i.gb, %scalar.ph ], [ %.1146226.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.fj = getelementptr [8 x i8], ptr %i.eo, i64 %.1146226
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !25
  %i.fl = getelementptr [8 x i8], ptr %.val212, i64 %.2140227
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !25
  %i.fm = add i64 %i.eq, %.1146226                ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %i.eo, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !25
  %i.fp = getelementptr [8 x i8], ptr %.val212, i64 %.2140227
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !25
  %i.fr = add i64 %i.eq, %i.fm                    ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %i.eo, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !25
  %i.fu = getelementptr [8 x i8], ptr %.val212, i64 %.2140227
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !25
  %i.fw = add i64 %i.eq, %i.fr                    ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %i.eo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !25
  %i.fz = getelementptr [8 x i8], ptr %.val212, i64 %.2140227
  %i.ga = getelementptr i8, ptr %i.fz, i64 24
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !25
  %i.gb = add i64 %i.eq, %i.fw
  %i.gc = add nuw nsw i64 %.2140227, 4            ; 2 uses
  %exitcond250.not.3 = icmp eq i64 %i.gc, %i.cw
  br i1 %exitcond250.not.3, label %.loopexit223, label %scalar.ph, !llvm.loop !126

.loopexit223:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge
  %.0144 = phi ptr [ null, %._crit_edge ], [ %i.eh, %middle.block ], [ %i.eh, %scalar.ph ], [ %i.eh, %scalar.ph.prol.loopexit ]
  %i.gd = icmp slt i64 %i.ci, %i.cw
  br i1 %i.gd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit223
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !119 ; 6 uses
  %i.gf = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !47 ; 5 uses
  %i.gi = icmp slt i64 %i.ge, %i.gh
  br i1 %i.gi, label %.lr.ph237, label %.loopexit

.lr.ph237:                                        ; preds = %bb.au
  %i.gj = getelementptr i8, ptr %i.gf, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !43 ; 7 uses
  %i.gl = sub i64 %i.ci, %i.cw
  %i.gm = getelementptr [8 x i8], ptr %i.gk, i64 %i.gl ; 6 uses
  %i.gn = sub i64 %i.gh, %i.ge                    ; 3 uses
  %min.iters.check329 = icmp ult i64 %i.gn, 14
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.memcheck326

vector.memcheck326:                               ; preds = %.lr.ph237
  %i.go = sub i64 %i.ci, %i.cw
  %3 = shl i64 %i.go, 3
  %4 = add i64 %3, -1
  %diff.check327 = icmp ult i64 %4, 31
  br i1 %diff.check327, label %scalar.ph328.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck326
  %n.vec332 = and i64 %i.gn, -4                   ; 3 uses
  %i.gp = add i64 %i.ge, %n.vec332
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph330
  %index334 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body333 ] ; 2 uses
  %i.gq = add i64 %i.ge, %index334                ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %i.gk, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %wide.load335 = load <2 x ptr>, ptr %i.gr, align 8, !tbaa !25
  %wide.load336 = load <2 x ptr>, ptr %i.gs, align 8, !tbaa !25
  %i.gt = getelementptr [8 x i8], ptr %i.gm, i64 %i.gq ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store <2 x ptr> %wide.load335, ptr %i.gt, align 8, !tbaa !25
  store <2 x ptr> %wide.load336, ptr %i.gu, align 8, !tbaa !25
  %index.next337 = add nuw i64 %index334, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.gv, label %middle.block338, label %vector.body333, !llvm.loop !127

middle.block338:                                  ; preds = %vector.body333
  %cmp.n339 = icmp eq i64 %i.gn, %n.vec332
  br i1 %cmp.n339, label %.loopexit, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %vector.memcheck326, %.lr.ph237, %middle.block338
  %.3141235.ph = phi i64 [ %i.ge, %vector.memcheck326 ], [ %i.ge, %.lr.ph237 ], [ %i.gp, %middle.block338 ] ; 4 uses
  %i.gw = sub i64 %i.gh, %.3141235.ph
  %xtraiter346 = and i64 %i.gw, 3                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader, %scalar.ph328.prol
  %.3141235.prol = phi i64 [ %i.ha, %scalar.ph328.prol ], [ %.3141235.ph, %scalar.ph328.preheader ] ; 3 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %scalar.ph328.prol ], [ 0, %scalar.ph328.preheader ]
  %i.gx = getelementptr [8 x i8], ptr %i.gk, i64 %.3141235.prol
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !25
  %i.gz = getelementptr [8 x i8], ptr %i.gm, i64 %.3141235.prol
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !25
  %i.ha = add nsw i64 %.3141235.prol, 1           ; 2 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol, !llvm.loop !128

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %.3141235.unr = phi i64 [ %.3141235.ph, %scalar.ph328.preheader ], [ %i.ha, %scalar.ph328.prol ]
  %i.hb = sub i64 %.3141235.ph, %i.gh
  %i.hc = icmp ugt i64 %i.hb, -4
  br i1 %i.hc, label %.loopexit, label %scalar.ph328

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %.3141235 = phi i64 [ %i.hs, %scalar.ph328 ], [ %.3141235.unr, %scalar.ph328.prol.loopexit ] ; 6 uses
  %i.hd = getelementptr [8 x i8], ptr %i.gk, i64 %.3141235
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !25
  %i.hf = getelementptr [8 x i8], ptr %i.gm, i64 %.3141235
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !25
  %i.hg = add nsw i64 %.3141235, 1                ; 2 uses
  %i.hh = getelementptr [8 x i8], ptr %i.gk, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !25
  %i.hj = getelementptr [8 x i8], ptr %i.gm, i64 %i.hg
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !25
  %i.hk = add nsw i64 %.3141235, 2                ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.gk, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !25
  %i.hn = getelementptr [8 x i8], ptr %i.gm, i64 %i.hk
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !25
  %i.ho = add nsw i64 %.3141235, 3                ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.gk, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !25
  %i.hr = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !25
  %i.hs = add nsw i64 %.3141235, 4                ; 2 uses
  %exitcond253.not.3 = icmp eq i64 %i.hs, %i.gh
  br i1 %exitcond253.not.3, label %.loopexit, label %scalar.ph328, !llvm.loop !129

bb.av:                                            ; preds = %.loopexit223
  br i1 %i.dd, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.ht = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !47 ; 3 uses
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !119 ; 3 uses
  %.4142230 = add i64 %i.hv, -1                   ; 5 uses
  %.not174231 = icmp slt i64 %.4142230, %i.hw
  br i1 %.not174231, label %.loopexit, label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.aw
  %i.hx = getelementptr i8, ptr %i.ht, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !43 ; 3 uses
  %i.hz = sub i64 %i.ci, %i.cw
  %i.ia = getelementptr [8 x i8], ptr %i.hy, i64 %i.hz ; 2 uses
  %i.ib = sub i64 0, %i.hw
  %i.ic = sub i64 1, %i.hv
  %i.id = call i64 @llvm.smax.i64(i64 %i.ib, i64 %i.ic)
  %i.ie = add i64 %i.id, %i.hv                    ; 3 uses
  %min.iters.check314 = icmp ult i64 %i.ie, 14
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.memcheck311

vector.memcheck311:                               ; preds = %.lr.ph234
  %i.if = sub i64 %i.cw, %i.ci
  %5 = shl i64 %i.if, 3
  %6 = add i64 %5, -1
  %diff.check312 = icmp ult i64 %6, 31
  br i1 %diff.check312, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck311
  %n.vec317 = and i64 %i.ie, -4                   ; 3 uses
  %i.ig = sub i64 %.4142230, %n.vec317
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph315
  %index319 = phi i64 [ 0, %vector.ph315 ], [ %index.next322, %vector.body318 ] ; 2 uses
  %i.ih = sub i64 %.4142230, %index319            ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %i.hy, i64 %i.ih ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 -8
  %i.ik = getelementptr i8, ptr %i.ii, i64 -24
  %wide.load320 = load <2 x ptr>, ptr %i.ij, align 8, !tbaa !25
  %wide.load321 = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !25
  %i.il = getelementptr [8 x i8], ptr %i.ia, i64 %i.ih ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -8
  %i.in = getelementptr i8, ptr %i.il, i64 -24
  store <2 x ptr> %wide.load320, ptr %i.im, align 8, !tbaa !25
  store <2 x ptr> %wide.load321, ptr %i.in, align 8, !tbaa !25
  %index.next322 = add nuw i64 %index319, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.io, label %middle.block323, label %vector.body318, !llvm.loop !130

middle.block323:                                  ; preds = %vector.body318
  %cmp.n324 = icmp eq i64 %i.ie, %n.vec317
  br i1 %cmp.n324, label %.loopexit, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %vector.memcheck311, %.lr.ph234, %middle.block323
  %.4142232.ph = phi i64 [ %.4142230, %vector.memcheck311 ], [ %.4142230, %.lr.ph234 ], [ %i.ig, %middle.block323 ]
  br label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.preheader, %scalar.ph313
  %.4142232 = phi i64 [ %.4142, %scalar.ph313 ], [ %.4142232.ph, %scalar.ph313.preheader ] ; 3 uses
  %i.ip = getelementptr [8 x i8], ptr %i.hy, i64 %.4142232
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !25
  %i.ir = getelementptr [8 x i8], ptr %i.ia, i64 %.4142232
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !25
  %.4142 = add i64 %.4142232, -1                  ; 2 uses
  %.not174 = icmp slt i64 %.4142, %i.hw
  br i1 %.not174, label %.loopexit, label %scalar.ph313, !llvm.loop !131

.loopexit:                                        ; preds = %scalar.ph313, %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block323, %middle.block338, %bb.aw, %bb.au, %bb.av
  br i1 %i.dn, label %.lr.ph241, label %.loopexit.._crit_edge242_crit_edge

.loopexit.._crit_edge242_crit_edge:               ; preds = %.loopexit
  %.pre256 = load ptr, ptr %i.cj, align 8, !tbaa !41
  br label %._crit_edge242

.lr.ph241:                                        ; preds = %.loopexit
  %i.is = load i64, ptr %i.a, align 8, !tbaa !119
  %i.it = getelementptr i8, ptr %i.cg, i64 24
  %i.iu = getelementptr i8, ptr %i.cg, i64 32
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph241, %_Py_NewRef.exit
  %.5143239 = phi i64 [ 0, %.lr.ph241 ], [ %i.ji, %_Py_NewRef.exit ] ; 2 uses
  %.2147238 = phi i64 [ %i.is, %.lr.ph241 ], [ %i.jh, %_Py_NewRef.exit ] ; 2 uses
  %.val = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.iv = getelementptr i8, ptr %.val, i64 168
  %.val205 = load i64, ptr %i.iv, align 8, !tbaa !48
  %i.iw = and i64 %.val205, 33554432
  %.not175 = icmp eq i64 %i.iw, 0
  br i1 %.not175, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !112
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.pn = phi ptr [ %i.ix, %bb.ay ], [ %i.iu, %bb.ax ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.5143239
  %i.iy = load ptr, ptr %.in, align 8, !tbaa !25  ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !26 ; 2 uses
  %i.ja = icmp ugt i32 %i.iz, -1073741825
  br i1 %i.ja, label %_Py_NewRef.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jb = add nuw i32 %i.iz, 1
  store i32 %i.jb, ptr %i.iy, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.az, %bb.ba
  %i.jc = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !43
  %i.jf = getelementptr [8 x i8], ptr %i.je, i64 %.2147238
  store ptr %i.iy, ptr %i.jf, align 8, !tbaa !25
  %i.jg = load i64, ptr %i.c, align 8, !tbaa !119
  %i.jh = add i64 %i.jg, %.2147238
  %i.ji = add nuw nsw i64 %.5143239, 1            ; 2 uses
  %exitcond254.not = icmp eq i64 %i.ji, %i.ci
  br i1 %exitcond254.not, label %._crit_edge242, label %bb.ax, !llvm.loop !132

._crit_edge242:                                   ; preds = %_Py_NewRef.exit, %.loopexit.._crit_edge242_crit_edge
  %i.jj = phi ptr [ %.pre256, %.loopexit.._crit_edge242_crit_edge ], [ %i.jc, %_Py_NewRef.exit ]
  %i.jk = sub i64 %i.ci, %i.cw
  %i.jl = getelementptr i8, ptr %i.jj, i64 8      ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !47
  %i.jn = add i64 %i.jk, %i.jm
  store i64 %i.jn, ptr %i.jl, align 8, !tbaa !47
  %i.jo = load i32, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.jo, -1
  br i1 %.not.i, label %bb.bb, label %Py_DECREF.exit

bb.bb:                                            ; preds = %._crit_edge242
  %i.jp = add nsw i32 %i.jo, -1                   ; 2 uses
  store i32 %i.jp, ptr %i.cg, align 8, !tbaa !26
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bc, label %Py_DECREF.exit

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge242, %bb.bb, %bb.bc
  call fastcc void @Py_XDECREF(ptr noundef %.0144)
  br label %Py_DECREF.exit195

Py_DECREF.exit195:                                ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.ag, %bb.z, %bb.y, %bb.x, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit, %bb.u, %bb.n, %bb.k, %bb.j, %bb.h, %Py_DECREF.exit191
  %.4 = phi i32 [ -1, %bb.n ], [ -1, %bb.h ], [ 0, %bb.j ], [ -1, %bb.ap ], [ 0, %bb.k ], [ 0, %bb.t ], [ -1, %Py_DECREF.exit191 ], [ -1, %bb.z ], [ -1, %bb.u ], [ -1, %bb.ai ], [ 0, %Py_DECREF.exit ], [ 0, %bb.r ], [ 0, %bb.s ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.an ], [ -1, %bb.ao ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.be

bb.bd:                                            ; preds = %bb.g
  %i.jr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.jr, ptr noundef nonnull @.str.106) #11
  br label %bb.be

bb.be:                                            ; preds = %bb.f, %bb.c, %bb.bd, %Py_DECREF.exit195
  %.5 = phi i32 [ -1, %bb.bd ], [ %.4, %Py_DECREF.exit195 ], [ %i.o, %bb.f ], [ -1, %bb.c ]
  ret i32 %.5
}

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #1

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dealloc_extra(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %.not.i13 = icmp eq ptr %i.a, null
  br i1 %.not.i13, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i.i, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Py_XDECREF.exit
  %i.h = getelementptr i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %Py_DECREF.exit
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.o, %Py_DECREF.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.014
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.g, %bb.h
end_hunk_0
