Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_csv?download=true
inline.NumInlined: 116
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@csv_writerow:bb.a
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %csv_writerow_lock_held.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %csv_writerow_lock_held.exit

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.056.lcssa.i = phi i1 [ false, %bb.d ], [ %i.ac, %bb.e ]
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %.not.i72.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i72.i, label %bb.ab, label %Py_DECREF.exit73.i

bb.ab:                                            ; preds = %._crit_edge.i
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !28
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ac, label %Py_DECREF.exit73.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %Py_DECREF.exit73.i

Py_DECREF.exit73.i:                               ; preds = %bb.ac, %bb.ab, %._crit_edge.i
  %i.bf = tail call ptr @PyErr_Occurred() #5
  %.not64.i = icmp eq ptr %i.bf, null
  br i1 %.not64.i, label %bb.ad, label %csv_writerow_lock_held.exit

bb.ad:                                            ; preds = %Py_DECREF.exit73.i
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !66  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !65
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr i8, ptr %i.b, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !33 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 3
  br i1 %i.bm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = and i32 %i.bl, -2
  %switch.i = icmp eq i32 %i.bn, 4
  %or.cond.i = and i1 %.056.lcssa.i, %switch.i
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bo = getelementptr i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bp, ptr noundef nonnull @.str.56) #5 ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.ai:                                            ; preds = %bb.ag
  %i.br = add nsw i32 %i.bg, -1
  store i32 %i.br, ptr %i.n, align 8, !tbaa !66
  %i.bs = tail call fastcc i32 @join_append(ptr noundef nonnull %0, ptr noundef null, i32 noundef 1)
  %.not65.i = icmp eq i32 %i.bs, 0
  br i1 %.not65.i, label %csv_writerow_lock_held.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.ad
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %.val.i.i = load i64, ptr %i.bw, align 8, !tbaa !41 ; 22 uses
  %i.bx = icmp eq i64 %.val.i.i, -1
  br i1 %i.bx, label %csv_writerow_lock_held.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = load i64, ptr %i.m, align 8, !tbaa !65
  %i.bz = add i64 %i.by, %.val.i.i                ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !67
  %i.cc = icmp sgt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cd = sdiv i64 %i.bz, 32768
  %i.ce = shl nsw i64 %i.cd, 15
  %i.cf = add i64 %i.ce, 32768                    ; 3 uses
  %i.cg = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ch = icmp ugt i64 %i.cf, 2305843009213693951
  br i1 %i.ch, label %join_check_rec_size.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !64
  %i.cj = shl nuw nsw i64 %i.cf, 2
  %i.ck = tail call ptr @PyMem_Realloc(ptr noundef %i.ci, i64 noundef %i.cj) #5 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %join_check_rec_size.exit.i.i, label %.thread17.i.i.i

.thread17.i.i.i:                                  ; preds = %bb.am
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !64
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !67
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !61
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pre.i.i, i64 40
  %.pre32.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !31
  br label %bb.an

join_check_rec_size.exit.i.i:                     ; preds = %bb.am, %bb.al
  %i.cm = tail call ptr @PyErr_NoMemory() #5      ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.an:                                            ; preds = %.thread17.i.i.i, %bb.ak
  %i.cn = phi ptr [ %.pre32.i.i, %.thread17.i.i.i ], [ %i.bv, %bb.ak ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8            ; 3 uses
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = and i32 %i.cq, 7
  %i.cs = and i32 %i.cp, 32
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = and i32 %i.cp, 64
  %.not.i.i.i.i = icmp eq i32 %i.ct, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.cn, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.cu = getelementptr i8, ptr %i.cn, i64 56
  %.val4.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !28
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.ap, %bb.ao
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.ao ], [ %.val4.i.i.i, %bb.ap ] ; 17 uses
  %.0.i.i.i52 = ptrtoaddr ptr %.0.i.i.i to i64
  %i.cv = icmp sgt i64 %.val.i.i, 0
  %.pre33.i.i = load i64, ptr %i.m, align 8, !tbaa !65 ; 4 uses
  %i.cw = getelementptr i8, ptr %0, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !64 ; 4 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  br i1 %i.cv, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %_PyUnicode_DATA.exit.i.i
  %i.cz = getelementptr [4 x i8], ptr %i.cx, i64 %.pre33.i.i ; 15 uses
  switch i32 %i.cr, label %PyUnicode_READ.exit.i.i.preheader [
    i32 1, label %PyUnicode_READ.exit.us.i.i.preheader
    i32 2, label %PyUnicode_READ.exit.us26.i.i.preheader
  ]

PyUnicode_READ.exit.us26.i.i.preheader:           ; preds = %.lr.ph.i.i
  %min.iters.check = icmp ult i64 %.val.i.i, 8
  br i1 %min.iters.check, label %PyUnicode_READ.exit.us26.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %PyUnicode_READ.exit.us26.i.i.preheader
  %n.vec = and i64 %.val.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %wide.load = load <4 x i16>, ptr %i.da, align 2, !tbaa !32
  %wide.load37 = load <4 x i16>, ptr %i.db, align 2, !tbaa !32
  %i.dc = zext <4 x i16> %wide.load to <4 x i32>
  %i.dd = zext <4 x i16> %wide.load37 to <4 x i32>
  %i.de = getelementptr [4 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !9
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val.i.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %PyUnicode_READ.exit.us26.i.i.preheader68

PyUnicode_READ.exit.us26.i.i.preheader68:         ; preds = %PyUnicode_READ.exit.us26.i.i.preheader, %middle.block
  %.023.us25.i.i.ph = phi i64 [ 0, %PyUnicode_READ.exit.us26.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %PyUnicode_READ.exit.us26.i.i

PyUnicode_READ.exit.us.i.i.preheader:             ; preds = %.lr.ph.i.i
  %min.iters.check40 = icmp ult i64 %.val.i.i, 16
  br i1 %min.iters.check40, label %PyUnicode_READ.exit.us.i.i.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %PyUnicode_READ.exit.us.i.i.preheader
  %i.dh = add i64 %.pre33.i.i, %.val.i.i
  %i.di = shl i64 %i.dh, 2
  %i.dj = getelementptr i8, ptr %i.cx, i64 %i.di
  %i.dk = getelementptr i8, ptr %.0.i.i.i, i64 %.val.i.i
  %bound0 = icmp ult ptr %i.cz, %i.dk
  %bound1 = icmp ult ptr %.0.i.i.i, %i.dj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %PyUnicode_READ.exit.us.i.i.preheader66, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %.val.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next47, %vector.body43 ] ; 3 uses
  %i.dl = getelementptr i8, ptr %.0.i.i.i, i64 %index44 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %wide.load45 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !28, !alias.scope !93
  %wide.load46 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !28, !alias.scope !93
  %i.dn = zext <4 x i8> %wide.load45 to <4 x i32>
  %i.do = zext <4 x i8> %wide.load46 to <4 x i32>
  %i.dp = getelementptr [4 x i8], ptr %i.cz, i64 %index44 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !9, !alias.scope !94, !noalias !93
  store <4 x i32> %i.do, ptr %i.dq, align 4, !tbaa !9, !alias.scope !94, !noalias !93
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.dr, label %middle.block48, label %vector.body43, !llvm.loop !84

middle.block48:                                   ; preds = %vector.body43
  %cmp.n49 = icmp eq i64 %.val.i.i, %n.vec42
  br i1 %cmp.n49, label %.loopexit.i, label %PyUnicode_READ.exit.us.i.i.preheader66

PyUnicode_READ.exit.us.i.i.preheader66:           ; preds = %vector.memcheck, %PyUnicode_READ.exit.us.i.i.preheader, %middle.block48
  %.023.us.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %PyUnicode_READ.exit.us.i.i.preheader ], [ %n.vec42, %middle.block48 ] ; 3 uses
  %xtraiter = and i64 %.val.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PyUnicode_READ.exit.us.i.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.i.prol

PyUnicode_READ.exit.us.i.i.prol:                  ; preds = %PyUnicode_READ.exit.us.i.i.preheader66, %PyUnicode_READ.exit.us.i.i.prol
  %.023.us.i.i.prol = phi i64 [ %i.dw, %PyUnicode_READ.exit.us.i.i.prol ], [ %.023.us.i.i.ph, %PyUnicode_READ.exit.us.i.i.preheader66 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit.us.i.i.prol ], [ 0, %PyUnicode_READ.exit.us.i.i.preheader66 ]
  %i.ds = getelementptr i8, ptr %.0.i.i.i, i64 %.023.us.i.i.prol
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = getelementptr [4 x i8], ptr %i.cz, i64 %.023.us.i.i.prol
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !9
  %i.dw = add nuw nsw i64 %.023.us.i.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit.us.i.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.i.prol, !llvm.loop !85

PyUnicode_READ.exit.us.i.i.prol.loopexit:         ; preds = %PyUnicode_READ.exit.us.i.i.prol, %PyUnicode_READ.exit.us.i.i.preheader66
  %.023.us.i.i.unr = phi i64 [ %.023.us.i.i.ph, %PyUnicode_READ.exit.us.i.i.preheader66 ], [ %i.dw, %PyUnicode_READ.exit.us.i.i.prol ]
  %i.dx = sub nsw i64 %.023.us.i.i.ph, %.val.i.i
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %.loopexit.i, label %PyUnicode_READ.exit.us.i.i

PyUnicode_READ.exit.i.i.preheader:                ; preds = %.lr.ph.i.i
  %min.iters.check54 = icmp ult i64 %.val.i.i, 16
  br i1 %min.iters.check54, label %PyUnicode_READ.exit.i.i.preheader65, label %vector.memcheck51

vector.memcheck51:                                ; preds = %PyUnicode_READ.exit.i.i.preheader
  %i.dz = shl i64 %.pre33.i.i, 2
  %i.ea = add i64 %i.dz, %i.cy
  %i.eb = sub i64 %.0.i.i.i52, %i.ea
  %diff.check = icmp ugt i64 %i.eb, -32
  br i1 %diff.check, label %PyUnicode_READ.exit.i.i.preheader65, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck51
  %n.vec56 = and i64 %.val.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next61, %vector.body57 ] ; 3 uses
  %i.ec = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %index58 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %wide.load59 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !9
  %wide.load60 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !9
  %i.ee = getelementptr [4 x i8], ptr %i.cz, i64 %index58 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  store <4 x i32> %wide.load59, ptr %i.ee, align 4, !tbaa !9
  store <4 x i32> %wide.load60, ptr %i.ef, align 4, !tbaa !9
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.eg = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.eg, label %middle.block62, label %vector.body57, !llvm.loop !86

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %.val.i.i, %n.vec56
  br i1 %cmp.n63, label %.loopexit.i, label %PyUnicode_READ.exit.i.i.preheader65

PyUnicode_READ.exit.i.i.preheader65:              ; preds = %vector.memcheck51, %PyUnicode_READ.exit.i.i.preheader, %middle.block62
  %.023.i.i.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %PyUnicode_READ.exit.i.i.preheader ], [ %n.vec56, %middle.block62 ] ; 3 uses
  %xtraiter72 = and i64 %.val.i.i, 3              ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %PyUnicode_READ.exit.i.i.prol.loopexit, label %PyUnicode_READ.exit.i.i.prol

PyUnicode_READ.exit.i.i.prol:                     ; preds = %PyUnicode_READ.exit.i.i.preheader65, %PyUnicode_READ.exit.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ek, %PyUnicode_READ.exit.i.i.prol ], [ %.023.i.i.ph, %PyUnicode_READ.exit.i.i.preheader65 ] ; 3 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %PyUnicode_READ.exit.i.i.prol ], [ 0, %PyUnicode_READ.exit.i.i.preheader65 ]
  %i.eh = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %.023.i.i.prol
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %i.ej = getelementptr [4 x i8], ptr %i.cz, i64 %.023.i.i.prol
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !9
  %i.ek = add nuw nsw i64 %.023.i.i.prol, 1       ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %PyUnicode_READ.exit.i.i.prol.loopexit, label %PyUnicode_READ.exit.i.i.prol, !llvm.loop !87

PyUnicode_READ.exit.i.i.prol.loopexit:            ; preds = %PyUnicode_READ.exit.i.i.prol, %PyUnicode_READ.exit.i.i.preheader65
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %PyUnicode_READ.exit.i.i.preheader65 ], [ %i.ek, %PyUnicode_READ.exit.i.i.prol ]
  %i.el = sub nsw i64 %.023.i.i.ph, %.val.i.i
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit.i, label %PyUnicode_READ.exit.i.i

PyUnicode_READ.exit.us.i.i:                       ; preds = %PyUnicode_READ.exit.us.i.i.prol.loopexit, %PyUnicode_READ.exit.us.i.i
  %.023.us.i.i = phi i64 [ %i.fg, %PyUnicode_READ.exit.us.i.i ], [ %.023.us.i.i.unr, %PyUnicode_READ.exit.us.i.i.prol.loopexit ] ; 6 uses
  %i.en = getelementptr i8, ptr %.0.i.i.i, i64 %.023.us.i.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr [4 x i8], ptr %i.cz, i64 %.023.us.i.i
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !9
  %i.er = add nuw nsw i64 %.023.us.i.i, 1         ; 2 uses
  %i.es = getelementptr i8, ptr %.0.i.i.i, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !28
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr [4 x i8], ptr %i.cz, i64 %i.er
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !9
  %i.ew = add nuw nsw i64 %.023.us.i.i, 2         ; 2 uses
  %i.ex = getelementptr i8, ptr %.0.i.i.i, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr [4 x i8], ptr %i.cz, i64 %i.ew
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !9
  %i.fb = add nuw nsw i64 %.023.us.i.i, 3         ; 2 uses
  %i.fc = getelementptr i8, ptr %.0.i.i.i, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !28
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr [4 x i8], ptr %i.cz, i64 %i.fb
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !9
  %i.fg = add nuw nsw i64 %.023.us.i.i, 4         ; 2 uses
  %exitcond30.not.i.i.3 = icmp eq i64 %i.fg, %.val.i.i
  br i1 %exitcond30.not.i.i.3, label %.loopexit.i, label %PyUnicode_READ.exit.us.i.i, !llvm.loop !88

PyUnicode_READ.exit.us26.i.i:                     ; preds = %PyUnicode_READ.exit.us26.i.i.preheader68, %PyUnicode_READ.exit.us26.i.i
  %.023.us25.i.i = phi i64 [ %i.fl, %PyUnicode_READ.exit.us26.i.i ], [ %.023.us25.i.i.ph, %PyUnicode_READ.exit.us26.i.i.preheader68 ] ; 3 uses
  %i.fh = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %.023.us25.i.i
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !32
  %i.fj = zext i16 %i.fi to i32
  %i.fk = getelementptr [4 x i8], ptr %i.cz, i64 %.023.us25.i.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !9
  %i.fl = add nuw nsw i64 %.023.us25.i.i, 1       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fl, %.val.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %PyUnicode_READ.exit.us26.i.i, !llvm.loop !89

PyUnicode_READ.exit.i.i:                          ; preds = %PyUnicode_READ.exit.i.i.prol.loopexit, %PyUnicode_READ.exit.i.i
  %.023.i.i = phi i64 [ %i.gb, %PyUnicode_READ.exit.i.i ], [ %.023.i.i.unr, %PyUnicode_READ.exit.i.i.prol.loopexit ] ; 6 uses
  %i.fm = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %.023.i.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !9
  %i.fo = getelementptr [4 x i8], ptr %i.cz, i64 %.023.i.i
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !9
  %i.fp = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.fq = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !9
  %i.fs = getelementptr [4 x i8], ptr %i.cz, i64 %i.fp
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !9
  %i.ft = add nuw nsw i64 %.023.i.i, 2            ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !9
  %i.fw = getelementptr [4 x i8], ptr %i.cz, i64 %i.ft
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !9
  %i.fx = add nuw nsw i64 %.023.i.i, 3            ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !9
  %i.ga = getelementptr [4 x i8], ptr %i.cz, i64 %i.fx
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !9
  %i.gb = add nuw nsw i64 %.023.i.i, 4            ; 2 uses
  %exitcond31.not.i.i.3 = icmp eq i64 %i.gb, %.val.i.i
  br i1 %exitcond31.not.i.i.3, label %.loopexit.i, label %PyUnicode_READ.exit.i.i, !llvm.loop !90

.loopexit.i:                                      ; preds = %PyUnicode_READ.exit.us26.i.i, %PyUnicode_READ.exit.us.i.i.prol.loopexit, %PyUnicode_READ.exit.us.i.i, %PyUnicode_READ.exit.i.i.prol.loopexit, %PyUnicode_READ.exit.i.i, %middle.block, %middle.block48, %middle.block62, %_PyUnicode_DATA.exit.i.i
  %i.gc = add i64 %.pre33.i.i, %.val.i.i          ; 2 uses
  store i64 %i.gc, ptr %i.m, align 8, !tbaa !65
  %i.gd = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef %i.cx, i64 noundef %i.gc) #5 ; 5 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %csv_writerow_lock_held.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i
  %i.gf = getelementptr i8, ptr %0, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !62
  %i.gh = tail call ptr @PyObject_CallOneArg(ptr noundef %i.gg, ptr noundef nonnull %i.gd) #5 ; 3 uses
  %i.gi = load i32, ptr %i.gd, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.gi, -1
  br i1 %.not.i.i, label %bb.ar, label %csv_writerow_lock_held.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.gd, align 8, !tbaa !28
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.as, label %csv_writerow_lock_held.exit

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.gd) #5
  br label %csv_writerow_lock_held.exit

csv_writerow_lock_held.exit:                      ; preds = %bb.b, %bb.c, %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.aa, %Py_DECREF.exit73.i, %bb.ah, %bb.ai, %bb.aj, %join_check_rec_size.exit.i.i, %.loopexit.i, %bb.aq, %bb.ar, %bb.as
  %.4.i = phi ptr [ null, %Py_DECREF.exit73.i ], [ null, %.loopexit.i ], [ null, %bb.b ], [ null, %bb.ah ], [ null, %bb.t ], [ null, %bb.aa ], [ null, %bb.ai ], [ null, %bb.c ], [ %i.gh, %bb.as ], [ null, %bb.y ], [ null, %bb.z ], [ %i.gh, %bb.aq ], [ %i.gh, %bb.ar ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.aj ], [ null, %join_check_rec_size.exit.i.i ]
  ret ptr %.4.i
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_writerows(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyObject_GetIter(ptr noundef %1) #5 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not24 = icmp eq ptr %i.c, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit16
  %i.d = phi ptr [ %i.o, %Py_DECREF.exit16 ], [ %i.c, %.preheader ] ; 4 uses
  %i.e = tail call ptr @csv_writerow(ptr noundef %0, ptr noundef nonnull %i.d) ; 4 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i19 = icmp sgt i32 %i.f, -1
  br i1 %.not.i19, label %bb.b, label %Py_DECREF.exit20

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !28
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %Py_DECREF.exit20

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #5
  br label %Py_DECREF.exit20

Py_DECREF.exit20:                                 ; preds = %.lr.ph, %bb.b, %bb.c
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %Py_DECREF.exit20
  %i.i = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.i, -1
  br i1 %.not.i17, label %bb.e, label %Py_DECREF.exit18

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !28
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %Py_DECREF.exit18

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit18

bb.g:                                             ; preds = %Py_DECREF.exit20
  %i.l = load i32, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not.i15 = icmp sgt i32 %i.l, -1
  br i1 %.not.i15, label %bb.h, label %Py_DECREF.exit16

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !28
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit16

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #5
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.o = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %Py_DECREF.exit16, %.preheader
  %i.p = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %._crit_edge
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !28
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge, %bb.j, %bb.k
  %i.s = tail call ptr @PyErr_Occurred() #5
  %.not13 = icmp eq ptr %i.s, null
  %_Py_NoneStruct. = select i1 %.not13, ptr @_Py_NoneStruct, ptr null
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.f, %bb.e, %bb.d, %Py_DECREF.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %_Py_NoneStruct., %Py_DECREF.exit ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.0
}

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare i32 @PyNumber_Check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @join_append(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %i.h = and i32 %i.e, 32
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.e, 64
  %.not.i.i = icmp eq i32 %i.i, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %.not32 = icmp eq i64 %.val, 0
  br i1 %.not32, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.a, %bb.e
  %.02642 = phi ptr [ %.0.i, %bb.e ], [ null, %bb.a ] ; 3 uses
  %.02740 = phi i32 [ %i.g, %bb.e ], [ -1, %bb.a ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.c, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 32
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %i.c, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37
  %.not33 = icmp eq i8 %i.p, 0
  br i1 %.not33, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.c, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33   ; 2 uses
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %i.r, -2
  %switch = icmp eq i32 %i.t, 4
  %or.cond = and i1 %.not, %switch
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.57) #5 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %.thread, %bb.e
  %.043 = phi i64 [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %.thread ], [ %.val, %bb.e ] ; 2 uses
  %.02641 = phi ptr [ %.02642, %bb.j ], [ %.02642, %bb.f ], [ %.02642, %.thread ], [ %.0.i, %bb.e ] ; 2 uses
  %.02739 = phi i32 [ %.02740, %bb.j ], [ %.02740, %bb.f ], [ %.02740, %.thread ], [ %i.g, %bb.e ] ; 2 uses
  %i.x = call fastcc i64 @join_append_data(ptr noundef nonnull %0, i32 noundef %.02739, ptr noundef %.02641, i64 noundef %.043, ptr noundef %i.a, i32 noundef 0) ; 3 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67
  %i.ab = icmp sgt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = and i64 %i.x, 9223372036854743040       ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 32768            ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ac, 2305843009213661183
  br i1 %i.af, label %join_check_rec_size.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ah = shl nuw nsw i64 %i.ad, 2
  %i.ai = tail call ptr @PyMem_Realloc(ptr noundef %i.ag, i64 noundef %i.ah) #5 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %join_check_rec_size.exit, label %.thread17.i

.thread17.i:                                      ; preds = %bb.n
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !64
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !67
  br label %bb.o

join_check_rec_size.exit:                         ; preds = %bb.m, %bb.n
  %i.ak = tail call ptr @PyErr_NoMemory() #5      ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.thread17.i, %bb.l
  %i.al = call fastcc i64 @join_append_data(ptr noundef nonnull %0, i32 noundef %.02739, ptr noundef %.02641, i64 noundef %.043, ptr noundef %i.a, i32 noundef 1)
  %i.am = getelementptr i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !65
  %i.an = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !66
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !66
  br label %bb.p

bb.p:                                             ; preds = %join_check_rec_size.exit, %bb.k, %bb.o, %bb.i
  %.028 = phi i32 [ 0, %bb.i ], [ 1, %bb.o ], [ 0, %bb.k ], [ 0, %join_check_rec_size.exit ]
  ret i32 %.028
}

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @join_append_data(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -1, 8) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %i.d
  store i32 %i.i, ptr %i.l, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.d, 9223372036854775807
  br i1 %i.m, label %.thread143, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.n = add i64 %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0106 = phi i64 [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 4 uses
  %.not118 = icmp eq i32 %5, 0                    ; 5 uses
  br i1 %.not118, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %4, align 4, !tbaa !9
  %.not119 = icmp eq i32 %i.o, 0
  br i1 %.not119, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.b, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %.0106
  store i32 %i.q, ptr %i.t, align 4, !tbaa !9
  %i.u = add i64 %.0106, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1107 = phi i64 [ %i.u, %bb.g ], [ %.0106, %bb.f ], [ %.0106, %bb.e ] ; 2 uses
  %i.v = icmp ne ptr %2, null
  %i.w = icmp sgt i64 %3, 0
  %i.x = and i1 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.b, i64 24
  %i.z = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 28      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 40
  %i.ac = getelementptr i8, ptr %i.b, i64 20
  %i.ad = getelementptr i8, ptr %i.b, i64 16
  %i.ae = getelementptr i8, ptr %0, i64 32        ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.ab
  %.2156 = phi i64 [ %.1107, %.lr.ph ], [ %.6, %bb.ab ] ; 8 uses
  %.0108155 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.ab ] ; 4 uses
  switch i32 %1, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %2, i64 %.0108155
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr [2 x i8], ptr %2, i64 %.0108155
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !32
  %i.ak = zext i16 %i.aj to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr [4 x i8], ptr %2, i64 %.0108155
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ah, %bb.j ], [ %i.ak, %bb.k ], [ %i.am, %bb.l ] ; 9 uses
  %i.an = load i32, ptr %i.y, align 8, !tbaa !35
  %i.ao = icmp eq i32 %.0.i, %i.an
  br i1 %i.ao, label %bb.p, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !36
  %i.aq = icmp eq i32 %.0.i, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !34
  %i.as = icmp eq i32 %.0.i, %i.ar
  %i.at = freeze i1 %i.as
  br i1 %i.at, label %bb.p, label %switch.early.test

switch.early.test:                                ; preds = %bb.n
  switch i32 %.0.i, label %bb.o [
    i32 13, label %bb.p
    i32 10, label %bb.p
  ]

bb.o:                                             ; preds = %switch.early.test
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val = load i64, ptr %i.av, align 8, !tbaa !41
  %i.aw = tail call i64 @PyUnicode_FindChar(ptr noundef %i.au, i32 noundef %.0.i, i64 noundef 0, i64 noundef %.val, i32 noundef 1) #5
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.p, label %bb.z

bb.p:                                             ; preds = %switch.early.test, %switch.early.test, %bb.n, %bb.o, %bb.m, %PyUnicode_READ.exit
  %i.ay = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.az = icmp eq i32 %i.ay, 3
  br i1 %i.az, label %.thread133thread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !34
  %i.bb = icmp eq i32 %.0.i, %i.ba
  br i1 %i.bb, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr %i.ad, align 8, !tbaa !59
  %.not121 = icmp eq i8 %i.bc, 0
  br i1 %.not121, label %.thread133thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not118, label %bb.t, label %.thread127

.thread127:                                       ; preds = %bb.s
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %.2156
  store i32 %.0.i, ptr %i.be, align 4, !tbaa !9
  br label %.thread129

bb.t:                                             ; preds = %bb.s
  %i.bf = icmp eq i64 %.2156, 9223372036854775807
  br i1 %i.bf, label %.thread143, label %.thread129

.thread129:                                       ; preds = %bb.t, %.thread127
  %i.bg = add i64 %.2156, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not152 = icmp eq i32 %.0.i, %i.bh
  br i1 %.not152, label %.thread133, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread129
  %.3132 = phi i64 [ %i.bg, %.thread129 ], [ %.2156, %bb.u ]
  store i32 1, ptr %4, align 4, !tbaa !9
  br label %bb.z

.thread133thread-pre-split:                       ; preds = %bb.p, %bb.r
  %.pr = load i32, ptr %i.z, align 8, !tbaa !36
  br label %.thread133

.thread133:                                       ; preds = %.thread133thread-pre-split, %bb.u
  %i.bi = phi i32 [ %.pr, %.thread133thread-pre-split ], [ %i.bh, %bb.u ] ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %.thread146, label %bb.w

.thread146:                                       ; preds = %.thread133
  %i.bk = getelementptr i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bm = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bl, ptr noundef nonnull @.str.58) #5 ; 0 uses
  br label %bb.ag

bb.w:                                             ; preds = %.thread133
  br i1 %.not118, label %bb.x, label %.thread140

.thread140:                                       ; preds = %bb.w
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %.2156
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !9
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp eq i64 %.2156, 9223372036854775807
  br i1 %i.bp, label %.thread143, label %bb.y

bb.y:                                             ; preds = %.thread140, %bb.x
  %i.bq = add i64 %.2156, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.o, %bb.y
  %.5 = phi i64 [ %i.bq, %bb.y ], [ %.3132, %bb.v ], [ %.2156, %bb.o ] ; 3 uses
  br i1 %.not118, label %bb.aa, label %.thread149

.thread149:                                       ; preds = %bb.z
  %i.br = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %.5
  store i32 %.0.i, ptr %i.bs, align 4, !tbaa !9
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bt = icmp eq i64 %.5, 9223372036854775807
  br i1 %i.bt, label %.thread143, label %bb.ab

bb.ab:                                            ; preds = %.thread149, %bb.aa
  %.6 = add i64 %.5, 1                            ; 2 uses
  %i.bu = add nuw nsw i64 %.0108155, 1            ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %3
  br i1 %i.bv, label %bb.i, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.ab, %bb.h
  %.2.lcssa = phi i64 [ %.1107, %bb.h ], [ %.6, %bb.ab ] ; 5 uses
  %i.bw = load i32, ptr %4, align 4, !tbaa !9
  %.not120 = icmp eq i32 %i.bw, 0
  br i1 %.not120, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  br i1 %.not118, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr i8, ptr %i.b, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.bz = getelementptr i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %.2.lcssa
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !9
  %i.cc = add i64 %.2.lcssa, 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %switch = icmp sgt i64 %.2.lcssa, 9223372036854775805
  br i1 %switch, label %.thread143, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = add nsw i64 %.2.lcssa, 2
  br label %bb.ag

.thread143:                                       ; preds = %bb.aa, %bb.x, %bb.t, %bb.ae, %bb.c
  %i.ce = tail call ptr @PyErr_NoMemory() #5      ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.thread146, %._crit_edge, %bb.af, %bb.ad, %.thread143
  %.2111 = phi i64 [ -1, %.thread143 ], [ -1, %.thread146 ], [ %i.cc, %bb.ad ], [ %i.cd, %bb.af ], [ %.2.lcssa, %._crit_edge ]
  ret i64 %.2111
}

; Function Attrs: nounwind uwtable
define internal i32 @_csv_traverse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #5 ; 2 uses
  %.not54 = icmp eq i32 %i.c, 0
  br i1 %.not54, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #5 ; 2 uses
  %.not56 = icmp eq i32 %i.f, 0
  br i1 %.not56, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not57 = icmp eq ptr %i.h, null
  br i1 %.not57, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #5 ; 2 uses
  %.not58 = icmp eq i32 %i.i, 0
  br i1 %.not58, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %.not59 = icmp eq ptr %i.k, null
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 %1(ptr noundef nonnull %i.k, ptr noundef %2) #5 ; 2 uses
  %.not60 = icmp eq i32 %i.l, 0
  br i1 %.not60, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 2 uses
  %.not61 = icmp eq ptr %i.n, null
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 %1(ptr noundef nonnull %i.n, ptr noundef %2) #5 ; 2 uses
  %.not62 = icmp eq i32 %i.o, 0
  br i1 %.not62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.k
  %.9 = phi i32 [ 0, %bb.k ], [ %i.o, %bb.j ], [ %i.l, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_csv_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit50, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !12
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i49 = icmp sgt i32 %i.c, -1
  br i1 %.not.i49, label %bb.c, label %Py_DECREF.exit50

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !28
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit50

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #5
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 4 uses
  %.not36 = icmp eq ptr %i.g, null
  br i1 %.not36, label %Py_DECREF.exit48, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit50
  store ptr null, ptr %i.f, align 8, !tbaa !12
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not.i47 = icmp sgt i32 %i.h, -1
  br i1 %.not.i47, label %bb.f, label %Py_DECREF.exit48

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !28
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit48

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit50
  %i.k = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98   ; 4 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %Py_DECREF.exit46, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit48
  store ptr null, ptr %i.k, align 8, !tbaa !98
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i45 = icmp sgt i32 %i.m, -1
  br i1 %.not.i45, label %bb.i, label %Py_DECREF.exit46

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit46

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #5
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit48
  %i.p = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 4 uses
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %Py_DECREF.exit44, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit46
  store ptr null, ptr %i.p, align 8, !tbaa !98
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %.not.i43 = icmp sgt i32 %i.r, -1
  br i1 %.not.i43, label %bb.l, label %Py_DECREF.exit44

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit44

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #5
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit46
  %i.u = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98   ; 4 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %Py_DECREF.exit42, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit44
  store ptr null, ptr %i.u, align 8, !tbaa !98
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not.i41 = icmp sgt i32 %i.w, -1
  br i1 %.not.i41, label %bb.o, label %Py_DECREF.exit42

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %Py_DECREF.exit42

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #5
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit44
  %i.z = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 4 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit42
  store ptr null, ptr %i.z, align 8, !tbaa !12
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %Py_DECREF.exit42
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @_csv_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @_csv_clear(ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_reader(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = tail call ptr @_PyObject_GC_New(ptr noundef %i.f) #5 ; 23 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %Py_DECREF.exit31, label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = getelementptr i8, ptr %i.g, i64 32
  %i.j = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 48
  %i.l = getelementptr i8, ptr %i.g, i64 80
  store i64 0, ptr %i.l, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = tail call ptr @PyList_New(i64 noundef 0) #5 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !12
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %Py_XDECREF.exit.i
  %i.o = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not.i30 = icmp sgt i32 %i.o, -1
  br i1 %.not.i30, label %bb.c, label %Py_DECREF.exit31

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.g, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %Py_DECREF.exit31

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit31

bb.e:                                             ; preds = %Py_XDECREF.exit.i
  %i.r = getelementptr i8, ptr %i.g, i64 64
  store i64 0, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr i8, ptr %i.g, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr i8, ptr %i.g, i64 72
  store i8 0, ptr %i.t, align 8, !tbaa !50
  %i.u = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.61, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not25 = icmp eq i32 %i.u, 0
  br i1 %.not25, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not.i28 = icmp sgt i32 %i.v, -1
  br i1 %.not.i28, label %bb.g, label %Py_DECREF.exit31

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.g, align 8, !tbaa !28
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %Py_DECREF.exit31

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit31

bb.i:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.z = call ptr @PyObject_GetIter(ptr noundef %i.y) #5 ; 2 uses
  store ptr %i.z, ptr %i.j, align 8, !tbaa !46
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %.not.i26 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i26, label %bb.k, label %Py_DECREF.exit31

bb.k:                                             ; preds = %bb.j
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.g, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %Py_DECREF.exit31

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit31

bb.m:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.af = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !12
  %.not.i35 = icmp eq ptr %i.ae, null
  br i1 %.not.i35, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = call ptr @PyObject_VectorcallDict(ptr noundef %.val, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %2) #5
  br label %_call_dialect.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = call ptr @PyObject_VectorcallDict(ptr noundef %.val, ptr noundef null, i64 noundef 0, ptr noundef %2) #5
  br label %_call_dialect.exit

_call_dialect.exit:                               ; preds = %bb.n, %bb.o
  %.0.i36 = phi ptr [ %i.ag, %bb.n ], [ %i.ah, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.i36, ptr %i.h, align 8, !tbaa !45
  %i.ai = icmp eq ptr %.0.i36, null
  br i1 %i.ai, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_call_dialect.exit
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i, label %bb.q, label %Py_DECREF.exit31

bb.q:                                             ; preds = %bb.p
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !28
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.r, label %Py_DECREF.exit31

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit31

bb.s:                                             ; preds = %_call_dialect.exit
  call void @PyObject_GC_Track(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.s
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ null, %bb.l ], [ %i.g, %bb.s ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_writer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 4 uses
end_hunk_0
begin_hunk_1_@csv_writer:bb.a
  call void @PyObject_GC_Track(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit36

Py_DECREF.exit36:                                 ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.a, %bb.v
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.j ], [ null, %bb.o ], [ %i.g, %bb.v ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_register_dialect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 2 uses
  %i.e = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.63, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.h, align 8, !tbaa !24
  %i.i = and i64 %.val12, 268435456
  %.not11 = icmp eq i64 %i.i, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.70) #5
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %.val13 = load ptr, ptr %i.l, align 8, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8, !tbaa !12
  %.not.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @PyObject_VectorcallDict(ptr noundef %.val13, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %2) #5
  br label %_call_dialect.exit

bb.f:                                             ; preds = %bb.d
  %i.n = call ptr @PyObject_VectorcallDict(ptr noundef %.val13, ptr noundef null, i64 noundef 0, ptr noundef %2) #5
  br label %_call_dialect.exit

_call_dialect.exit:                               ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq ptr %.0.i, null
  br i1 %i.o, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_call_dialect.exit
  %i.p = getelementptr i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.s = call i32 @PyDict_SetItem(ptr noundef %i.q, ptr noundef %i.r, ptr noundef nonnull %.0.i) #5
  %i.t = icmp slt i32 %i.s, 0
  %i.u = load i32, ptr %.0.i, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %.0.i, align 8, !tbaa !28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  %._Py_NoneStruct = select i1 %i.t, ptr null, ptr @_Py_NoneStruct
  br label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit, %_call_dialect.exit, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %._Py_NoneStruct, %Py_DECREF.exit ], [ null, %_call_dialect.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_csv_list_dialects(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call ptr @PyDict_Keys(ptr noundef %i.c) #5
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_csv_unregister_dialect(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_csv_unregister_dialect._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_csv_unregister_dialect_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = call ptr @PyModule_GetState(ptr noundef %0) #5 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = call i32 @PyDict_Pop(ptr noundef %i.j, ptr noundef %i.g, ptr noundef null) #5 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_csv_unregister_dialect_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %bb.d, label %_csv_unregister_dialect_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.o = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.20) #5 ; 0 uses
  br label %_csv_unregister_dialect_impl.exit

_csv_unregister_dialect_impl.exit:                ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_csv_get_dialect(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp eq ptr %3, null
  %i.d = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_csv_get_dialect._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #5 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = call ptr @PyModule_GetState(ptr noundef %0) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = call i32 @PyDict_GetItemRef(ptr noundef %i.k, ptr noundef %i.h, ptr noundef nonnull %i.a) #5
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %_csv_get_dialect_impl.exit

bb.c:                                             ; preds = %.thread
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.20) #5
  br label %_csv_get_dialect_impl.exit

_csv_get_dialect_impl.exit:                       ; preds = %.thread, %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_csv_get_dialect_impl.exit
  %.0 = phi ptr [ %i.o, %_csv_get_dialect_impl.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_csv_field_size_limit(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !99
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %.thread29, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.e = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_csv_field_size_limit._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %_csv_field_size_limit_impl.exit, label %.thread29

.thread29:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not26 = icmp eq i64 %2, %i.i
  br i1 %.not26, label %.thread31, label %bb.d

.thread31:                                        ; preds = %.thread29
  %i.j = call ptr @PyModule_GetState(ptr noundef %0) #5
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57
  br label %bb.i

bb.d:                                             ; preds = %.thread29
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !12   ; 3 uses
  %i.n = call ptr @PyModule_GetState(ptr noundef %0) #5
  %i.o = getelementptr i8, ptr %i.n, i64 40       ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !15
  %.not14.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.73) #5 ; 0 uses
  br label %_csv_field_size_limit_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.t = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.m) #5 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @PyErr_Occurred() #5
  %.not13.i = icmp eq ptr %i.v, null
  br i1 %.not13.i, label %.critedge.i, label %_csv_field_size_limit_impl.exit

.critedge.i:                                      ; preds = %bb.h, %bb.g
  store i64 %i.t, ptr %i.o, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %.thread31, %.critedge.i, %bb.d
  %i.w = phi i64 [ %i.l, %.thread31 ], [ %i.p, %.critedge.i ], [ %i.p, %bb.d ]
  %i.x = call ptr @PyLong_FromSsize_t(i64 noundef %i.w) #5
  br label %_csv_field_size_limit_impl.exit

_csv_field_size_limit_impl.exit:                  ; preds = %bb.i, %bb.h, %bb.f, %bb.c
  %.021 = phi ptr [ null, %bb.c ], [ %i.x, %bb.i ], [ null, %bb.f ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.021
}

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #1

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_VectorcallDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyCallable_Check(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_Keys(ptr noundef) local_unnamed_addr #1

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_Pop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @csv_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #5 ; 8 uses
  %i.b = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @Dialect_Type_spec, ptr noundef null) #5 ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !29
  %i.d = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %i.b) #5
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @Reader_Type_spec, ptr noundef null) #5 ; 2 uses
  %i.g = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !68
  %i.h = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %i.f) #5
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @Writer_Type_spec, ptr noundef null) #5 ; 2 uses
  %i.k = getelementptr i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !69
  %i.l = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %i.j) #5
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.a, i64 40
  store i64 131072, ptr %i.n, align 8, !tbaa !57
  %i.o = tail call ptr @PyDict_New() #5           ; 2 uses
  %i.p = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !26
  %i.q = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef %i.o) #5
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.s = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 0) #5
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.u = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 1) #5
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.w = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef 2) #5
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.y = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef 3) #5
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.aa = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 4) #5
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.ac = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 5) #5
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.5
  %i.ae = load ptr, ptr @PyExc_Exception, align 8, !tbaa !12
  %i.af = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef %i.ae) #5 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @error_spec, ptr noundef nonnull %i.af) #5 ; 2 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !27
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !28
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %Py_DECREF.exitthread-pre-split

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #5
  br label %Py_DECREF.exitthread-pre-split

Py_DECREF.exitthread-pre-split:                   ; preds = %bb.h, %bb.g
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exitthread-pre-split, %bb.f
  %i.al = phi ptr [ %.pr, %Py_DECREF.exitthread-pre-split ], [ %i.ah, %bb.f ] ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit
  %i.an = tail call i32 @PyModule_AddType(ptr noundef %0, ptr noundef nonnull %i.al) #5
  %.not39 = icmp eq i32 %i.an, 0
  br i1 %.not39, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call ptr @PyUnicode_InternFromString(ptr noundef nonnull @.str.79) #5 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.a, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !70
  %i.aq = icmp eq ptr %i.ao, null
  %. = sext i1 %i.aq to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %bb.e, %Py_DECREF.exit, %bb.i, %bb.j, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ %., %bb.j ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.e ], [ -1, %Py_DECREF.exit ], [ -1, %.preheader.5 ], [ -1, %.preheader.4 ], [ -1, %.preheader.3 ], [ -1, %.preheader.2 ], [ -1, %.preheader.1 ], [ -1, %.preheader.preheader ]
  ret i32 %.1
}

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 _ZTS7_object", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS11_typeobject", !10, i64 0}
!14 = !{!"_object", !7, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 8}
!16 = !{!"long", !7, i64 0}
!17 = !{!"PyVarObject", !14, i64 0, !16, i64 16}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!"p1 _ZTS11PyMethodDef", !10, i64 0}
!20 = !{!"p1 _ZTS11PyMemberDef", !10, i64 0}
!21 = !{!"p1 _ZTS11PyGetSetDef", !10, i64 0}
!22 = !{!"short", !7, i64 0}
!23 = !{!"_typeobject", !17, i64 0, !18, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !16, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !16, i64 168, !18, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !16, i64 208, !10, i64 216, !10, i64 224, !19, i64 232, !20, i64 240, !21, i64 248, !13, i64 256, !11, i64 264, !10, i64 272, !10, i64 280, !16, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !10, i64 360, !11, i64 368, !10, i64 376, !8, i64 384, !10, i64 392, !10, i64 400, !7, i64 408, !22, i64 410}
!24 = !{!23, !16, i64 168}
!25 = !{!"", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !16, i64 40, !11, i64 48}
!26 = !{!25, !11, i64 8}
!27 = !{!25, !11, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!25, !13, i64 16}
!30 = !{!"", !14, i64 0, !7, i64 16, !7, i64 17, !7, i64 18, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40}
!31 = !{!30, !11, i64 40}
!32 = !{!22, !22, i64 0}
!33 = !{!30, !8, i64 20}
!34 = !{!30, !8, i64 28}
!35 = !{!30, !8, i64 24}
!36 = !{!30, !8, i64 32}
!37 = !{!30, !7, i64 17}
!38 = !{!23, !10, i64 192}
!39 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!40 = !{!"", !14, i64 0, !16, i64 16, !16, i64 24, !39, i64 32}
!41 = !{!40, !16, i64 16}
!42 = !{!"p1 int", !10, i64 0}
!43 = !{!"_Bool", !7, i64 0}
!44 = !{!"", !14, i64 0, !11, i64 16, !10, i64 24, !11, i64 32, !8, i64 40, !42, i64 48, !16, i64 56, !16, i64 64, !43, i64 72, !16, i64 80}
!45 = !{!44, !10, i64 24}
!46 = !{!44, !11, i64 16}
!47 = !{!44, !11, i64 32}
!48 = !{!44, !16, i64 64}
!49 = !{!44, !8, i64 40}
!50 = !{!44, !43, i64 72}
!51 = !{!30, !7, i64 18}
!52 = !{!23, !18, i64 24}
!53 = !{!44, !16, i64 80}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!10, !10, i64 0}
!56 = !{!44, !42, i64 48}
!57 = !{!25, !16, i64 40}
!58 = !{!44, !16, i64 56}
!59 = !{!30, !7, i64 16}
!60 = !{!"", !14, i64 0, !11, i64 16, !10, i64 24, !42, i64 32, !16, i64 40, !16, i64 48, !8, i64 56, !11, i64 64}
!61 = !{!60, !10, i64 24}
!62 = !{!60, !11, i64 16}
!63 = !{!60, !11, i64 64}
!64 = !{!60, !42, i64 32}
!65 = !{!60, !16, i64 48}
!66 = !{!60, !8, i64 56}
!67 = !{!60, !16, i64 40}
!68 = !{!25, !13, i64 24}
!69 = !{!25, !13, i64 32}
!70 = !{!25, !11, i64 48}
!71 = distinct !{null}
!72 = !{!23, !10, i64 304}
!73 = distinct !{null, null}
!74 = distinct !{null}
!75 = distinct !{!75, !54}
!76 = distinct !{!76, !54}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = distinct !{!79, !54}
!80 = distinct !{!80, !54, !91, !92}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !54, !91, !92}
!85 = distinct !{!85, !95}
!86 = distinct !{!86, !54, !91, !92}
!87 = distinct !{!87, !95}
!88 = distinct !{!88, !54, !91}
!89 = distinct !{!89, !54, !92, !91}
!90 = distinct !{!90, !54, !91}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!82}
!94 = !{!83}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !54}
!97 = distinct !{!97, !54}
!98 = !{!13, !13, i64 0}
!99 = !{!17, !16, i64 16}
end_hunk_1
