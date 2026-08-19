inline.NumInlined: 2622
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEval_EvalFrameDefault:bb.a
  br label %.thread13863

.thread13863:                                     ; preds = %bb.bfd, %bb.bfc, %bb.bfb
  %.4.val9995 = load ptr, ptr %i.jey, align 8, !tbaa !216
  %i.jfe = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jff = load i16, ptr %i.jfe, align 2, !tbaa !121
  %i.jfg = shl i16 %i.jff, 1
  %i.jfh = or disjoint i16 %i.jfg, 1
  store i16 %i.jfh, ptr %i.jfe, align 2, !tbaa !121
  br label %bb.bff

bb.bfe:                                           ; preds = %bb.bfa
  %i.jfi = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jfj = load i16, ptr %i.jfi, align 2, !tbaa !121
  %i.jfk = shl i16 %i.jfj, 1
  store i16 %i.jfk, ptr %i.jfi, align 2, !tbaa !121
  %i.jfl = load i8, ptr %i.jev, align 2, !tbaa !121
  %i.jfm = icmp eq i8 %i.jfl, 28
  %i.jfn = zext i1 %i.jfm to i32
  br label %bb.bff

bb.bff:                                           ; preds = %.thread13863, %bb.bfe
  %.5313866 = phi ptr [ %.4.val1006211643, %bb.bfe ], [ %.4.val9995, %.thread13863 ]
  %i.jfo = phi i32 [ %i.jfn, %bb.bfe ], [ %.09034, %.thread13863 ]
  %i.jfp = sext i32 %i.jfo to i64
  %i.jfq = getelementptr [2 x i8], ptr %i.jev, i64 %i.jfp ; 2 uses
  %i.jfr = getelementptr i8, ptr %.5313866, i64 -8
  %i.jfs = load i16, ptr %i.jfq, align 2, !tbaa !217 ; 2 uses
  %.sroa.2758.0.extract.shift = lshr i16 %i.jfs, 8
  %.sroa.2758.0.extract.trunc = zext nneg i16 %.sroa.2758.0.extract.shift to i32
  %i.jft = and i16 %i.jfs, 255
  %i.jfu = zext nneg i16 %i.jft to i64
  br label %.backedge.backedge

bb.bfg:                                           ; preds = %.backedge
  %i.jfv = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jfv, align 8, !tbaa !213
  %i.jfw = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jfx = getelementptr i8, ptr %.4.val1006211643, i64 -8 ; 2 uses
  %.sroa.0754.0.copyload = load i64, ptr %i.jfx, align 8, !tbaa !121
  %i.jfy = icmp eq i64 %.sroa.0754.0.copyload, %i.mag ; 2 uses
  %i.jfz = zext i1 %i.jfy to i16
  %i.jga = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jgb = load i16, ptr %i.jga, align 2, !tbaa !121
  %i.jgc = shl i16 %i.jgb, 1
  %i.jgd = or disjoint i16 %i.jgc, %i.jfz
  store i16 %i.jgd, ptr %i.jga, align 2, !tbaa !121
  br i1 %i.jfy, label %bb.bfi, label %bb.bfh

bb.bfh:                                           ; preds = %bb.bfg
  %i.jge = load i8, ptr %i.jfw, align 2, !tbaa !121
  %i.jgf = icmp eq i8 %i.jge, 28
  %i.jgg = zext i1 %i.jgf to i32
  br label %bb.bfi

bb.bfi:                                           ; preds = %bb.bfg, %bb.bfh
  %i.jgh = phi i32 [ %i.jgg, %bb.bfh ], [ %.09034, %bb.bfg ]
  %i.jgi = sext i32 %i.jgh to i64
  %i.jgj = getelementptr [2 x i8], ptr %i.jfw, i64 %i.jgi ; 2 uses
  %i.jgk = load i16, ptr %i.jgj, align 2, !tbaa !217 ; 2 uses
  %.sroa.2751.0.extract.shift = lshr i16 %i.jgk, 8
  %.sroa.2751.0.extract.trunc = zext nneg i16 %.sroa.2751.0.extract.shift to i32
  %i.jgl = and i16 %i.jgk, 255
  %i.jgm = zext nneg i16 %i.jgl to i64
  br label %.backedge.backedge

bb.bfj:                                           ; preds = %.backedge
  %i.jgn = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jgn, align 8, !tbaa !213
  %i.jgo = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jgp = getelementptr i8, ptr %.4.val1006211643, i64 -8 ; 2 uses
  %.sroa.0749.0.copyload = load i64, ptr %i.jgp, align 8, !tbaa !121 ; 2 uses
  %i.jgq = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jgp, ptr %i.jgq, align 8, !tbaa !216
  %i.jgr = and i64 %.sroa.0749.0.copyload, 1
  %.not.not.i11289 = icmp eq i64 %i.jgr, 0
  br i1 %.not.not.i11289, label %bb.bfk, label %PyStackRef_XCLOSE.exit11290

bb.bfk:                                           ; preds = %bb.bfj
  %i.jgs = inttoptr i64 %.sroa.0749.0.copyload to ptr ; 3 uses
  %i.jgt = load i32, ptr %i.jgs, align 8, !tbaa !121
  %i.jgu = add i32 %i.jgt, -1                     ; 2 uses
  store i32 %i.jgu, ptr %i.jgs, align 8, !tbaa !121
  %i.jgv = icmp eq i32 %i.jgu, 0
  br i1 %i.jgv, label %bb.bfl, label %PyStackRef_XCLOSE.exit11290

bb.bfl:                                           ; preds = %bb.bfk
  call void @_Py_Dealloc(ptr noundef nonnull %i.jgs) #21
  br label %PyStackRef_XCLOSE.exit11290

PyStackRef_XCLOSE.exit11290:                      ; preds = %bb.bfj, %bb.bfk, %bb.bfl
  %.4.val9994 = load ptr, ptr %i.jgq, align 8, !tbaa !216
  %i.jgw = load i16, ptr %i.jgo, align 2, !tbaa !217 ; 2 uses
  %.sroa.2748.0.extract.shift = lshr i16 %i.jgw, 8
  %.sroa.2748.0.extract.trunc = zext nneg i16 %.sroa.2748.0.extract.shift to i32
  %i.jgx = and i16 %i.jgw, 255
  %i.jgy = zext nneg i16 %i.jgx to i64
  br label %.backedge.backedge

bb.bfm:                                           ; preds = %.backedge
  %i.jgz = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jgz, align 8, !tbaa !213
  %i.jha = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jhb = getelementptr i8, ptr %.4.val1006211643, i64 -8 ; 2 uses
  %.sroa.0745.0.copyload = load i64, ptr %i.jhb, align 8, !tbaa !121 ; 2 uses
  %i.jhc = load ptr, ptr %i.mal, align 8, !tbaa !299 ; 2 uses
  %i.jhd = load ptr, ptr %i.jhc, align 8, !tbaa !340 ; 3 uses
  %.not9712 = icmp eq ptr %i.jhd, null
  br i1 %.not9712, label %bb.bfo, label %bb.bfn

bb.bfn:                                           ; preds = %bb.bfm
  %i.jhe = getelementptr i8, ptr %i.jhd, i64 6
  %i.jhf = load i16, ptr %i.jhe, align 2, !tbaa !121
  %i.jhg = and i16 %i.jhf, 1
  %i.jhh = ptrtoint ptr %i.jhd to i64
  %i.jhi = zext nneg i16 %i.jhg to i64
  %i.jhj = or i64 %i.jhi, %i.jhh
  br label %bb.bfo

bb.bfo:                                           ; preds = %bb.bfm, %bb.bfn
  %.sroa.0744.0 = phi i64 [ %i.jhj, %bb.bfn ], [ %i.au, %bb.bfm ]
  %i.jhk = and i64 %.sroa.0745.0.copyload, -2
  %i.jhl = inttoptr i64 %i.jhk to ptr             ; 3 uses
  %i.jhm = load i32, ptr %i.jhl, align 8, !tbaa !121 ; 2 uses
  %i.jhn = icmp ugt i32 %i.jhm, -1073741825
  br i1 %i.jhn, label %_Py_NewRef.exit11291, label %bb.bfp

bb.bfp:                                           ; preds = %bb.bfo
  %i.jho = add nuw i32 %i.jhm, 1
  store i32 %i.jho, ptr %i.jhl, align 8, !tbaa !121
  br label %_Py_NewRef.exit11291

_Py_NewRef.exit11291:                             ; preds = %bb.bfo, %bb.bfp
  store ptr %i.jhl, ptr %i.jhc, align 8, !tbaa !340
  store i64 %.sroa.0744.0, ptr %i.jhb, align 8, !tbaa !121
  store i64 %.sroa.0745.0.copyload, ptr %.4.val1006211643, align 8, !tbaa !121
  %i.jhp = getelementptr i8, ptr %.4.val1006211643, i64 8
  %i.jhq = load i16, ptr %i.jha, align 2, !tbaa !217 ; 2 uses
  %.sroa.2736.0.extract.shift = lshr i16 %i.jhq, 8
  %.sroa.2736.0.extract.trunc = zext nneg i16 %.sroa.2736.0.extract.shift to i32
  %i.jhr = and i16 %i.jhq, 255
  %i.jhs = zext nneg i16 %i.jhr to i64
  br label %.backedge.backedge

bb.bfq:                                           ; preds = %.backedge
  %i.jht = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jht, align 8, !tbaa !213
  %i.jhu = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  store i64 1, ptr %.4.val1006211643, align 8, !tbaa !121
  %i.jhv = getelementptr i8, ptr %.4.val1006211643, i64 8
  %i.jhw = load i16, ptr %i.jhu, align 2, !tbaa !217 ; 2 uses
  %.sroa.2732.0.extract.shift = lshr i16 %i.jhw, 8
  %.sroa.2732.0.extract.trunc = zext nneg i16 %.sroa.2732.0.extract.shift to i32
  %i.jhx = and i16 %i.jhw, 255
  %i.jhy = zext nneg i16 %i.jhx to i64
  br label %.backedge.backedge

bb.bfr:                                           ; preds = %.backedge
  %i.jhz = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jhz, align 8, !tbaa !213
  %i.jia = getelementptr i8, ptr %.32, i64 2      ; 7 uses
  %i.jib = sub i32 0, %.09034
  %i.jic = sext i32 %i.jib to i64
  %i.jid = getelementptr [8 x i8], ptr %.4.val1006211643, i64 %i.jic ; 5 uses
  %i.jie = icmp eq i32 %.09034, 2
  br i1 %i.jie, label %bb.bfs, label %PyStackRef_AsPyObjectSteal.exit11294

bb.bfs:                                           ; preds = %bb.bfr
  %i.jif = getelementptr i8, ptr %i.jid, i64 8
  %i.jig = load i64, ptr %i.jif, align 8          ; 3 uses
  %i.jih = and i64 %i.jig, 1
  %.not.not.i11292 = icmp eq i64 %i.jih, 0
  br i1 %.not.not.i11292, label %bb.bft, label %bb.bfu

bb.bft:                                           ; preds = %bb.bfs
  %i.jii = inttoptr i64 %i.jig to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11294.thread

bb.bfu:                                           ; preds = %bb.bfs
  %i.jij = and i64 %i.jig, -2
  %i.jik = inttoptr i64 %i.jij to ptr             ; 4 uses
  %i.jil = load i32, ptr %i.jik, align 8, !tbaa !121 ; 2 uses
  %i.jim = icmp ugt i32 %i.jil, -1073741825
  br i1 %i.jim, label %PyStackRef_AsPyObjectSteal.exit11294.thread, label %bb.bfv

bb.bfv:                                           ; preds = %bb.bfu
  %i.jin = add nuw i32 %i.jil, 1
  store i32 %i.jin, ptr %i.jik, align 8, !tbaa !121
  br label %PyStackRef_AsPyObjectSteal.exit11294.thread

PyStackRef_AsPyObjectSteal.exit11294:             ; preds = %bb.bfr
  %i.jio = icmp sgt i32 %.09034, 0
  br i1 %i.jio, label %PyStackRef_AsPyObjectSteal.exit11294.thread, label %PyStackRef_AsPyObjectSteal.exit11297.thread11662

PyStackRef_AsPyObjectSteal.exit11297.thread11662: ; preds = %PyStackRef_AsPyObjectSteal.exit11294
  %i.jip = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jid, ptr %i.jip, align 8, !tbaa !216
  br label %bb.bfy

PyStackRef_AsPyObjectSteal.exit11294.thread:      ; preds = %bb.bft, %bb.bfu, %bb.bfv, %PyStackRef_AsPyObjectSteal.exit11294
  %i.jiq = phi ptr [ null, %PyStackRef_AsPyObjectSteal.exit11294 ], [ %i.jik, %bb.bfv ], [ %i.jik, %bb.bfu ], [ %i.jii, %bb.bft ] ; 20 uses
  %i.jir = load i64, ptr %i.jid, align 8          ; 4 uses
  %i.jis = and i64 %i.jir, 1
  %.not.not.i11295 = icmp eq i64 %i.jis, 0
  br i1 %.not.not.i11295, label %PyStackRef_AsPyObjectSteal.exit11297, label %bb.bfw

bb.bfw:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11294.thread
  %i.jit = and i64 %i.jir, -2
  %i.jiu = inttoptr i64 %i.jit to ptr             ; 3 uses
  %i.jiv = load i32, ptr %i.jiu, align 8, !tbaa !121 ; 2 uses
  %i.jiw = icmp ugt i32 %i.jiv, -1073741825
  br i1 %i.jiw, label %PyStackRef_AsPyObjectSteal.exit11297.thread, label %bb.bfx

bb.bfx:                                           ; preds = %bb.bfw
  %i.jix = add nuw i32 %i.jiv, 1
  store i32 %i.jix, ptr %i.jiu, align 8, !tbaa !121
  br label %PyStackRef_AsPyObjectSteal.exit11297.thread

PyStackRef_AsPyObjectSteal.exit11297.thread:      ; preds = %bb.bfw, %bb.bfx
  %i.jiy = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jid, ptr %i.jiy, align 8, !tbaa !216
  br label %bb.bgc

PyStackRef_AsPyObjectSteal.exit11297:             ; preds = %PyStackRef_AsPyObjectSteal.exit11294.thread
  %i.jiz = inttoptr i64 %i.jir to ptr
  %i.jja = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %i.jid, ptr %i.jja, align 8, !tbaa !216
  %i.jjb = icmp eq i64 %i.jir, 0
  br i1 %i.jjb, label %bb.bfy, label %bb.bgc

bb.bfy:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11297.thread11662, %PyStackRef_AsPyObjectSteal.exit11297
  %i.jjc = phi ptr [ %i.jip, %PyStackRef_AsPyObjectSteal.exit11297.thread11662 ], [ %i.jja, %PyStackRef_AsPyObjectSteal.exit11297 ]
  %i.jjd = call ptr @_PyErr_GetTopmostException(ptr noundef %0) #21
  %i.jje = load ptr, ptr %i.jjd, align 8, !tbaa !340 ; 5 uses
  %i.jjf = icmp eq ptr %i.jje, @_Py_NoneStruct
  %i.jjg = icmp eq ptr %i.jje, null
  %or.cond.i = or i1 %i.jjf, %i.jjg
  br i1 %or.cond.i, label %bb.bfz, label %bb.bga

bb.bfz:                                           ; preds = %bb.bfy
  %i.jjh = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !117
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jjh, ptr noundef nonnull @.str.88) #21
  br label %do_raise.exit

bb.bga:                                           ; preds = %bb.bfy
  %i.jji = load i32, ptr %i.jje, align 8, !tbaa !121 ; 2 uses
  %i.jjj = icmp ugt i32 %i.jji, -1073741825
  br i1 %i.jjj, label %bb.bij, label %bb.bgb

bb.bgb:                                           ; preds = %bb.bga
  %i.jjk = add nuw i32 %i.jji, 1
  store i32 %i.jjk, ptr %i.jje, align 8, !tbaa !121
  br label %bb.bij

bb.bgc:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11297.thread, %PyStackRef_AsPyObjectSteal.exit11297
  %i.jjl = phi ptr [ %i.jiy, %PyStackRef_AsPyObjectSteal.exit11297.thread ], [ %i.jja, %PyStackRef_AsPyObjectSteal.exit11297 ] ; 7 uses
  %i.jjm = phi ptr [ %i.jiu, %PyStackRef_AsPyObjectSteal.exit11297.thread ], [ %i.jiz, %PyStackRef_AsPyObjectSteal.exit11297 ] ; 16 uses
  %i.jjn = getelementptr i8, ptr %i.jjm, i64 8    ; 2 uses
  %.val225.i.a = load ptr, ptr %i.jjn, align 8, !tbaa !122 ; 7 uses
  %i.jjo = getelementptr i8, ptr %.val225.i.a, i64 168
  %.val225.val.i.a = load i64, ptr %i.jjo, align 8, !tbaa !123 ; 3 uses
  %i.jjp = and i64 %.val225.val.i.a, 2147483648
  %.not249.i = icmp eq i64 %i.jjp, 0
  br i1 %.not249.i, label %bb.bgi, label %bb.bgd

bb.bgd:                                           ; preds = %bb.bgc
  %i.jjq = getelementptr i8, ptr %i.jjm, i64 168
  %.val223.i.a = load i64, ptr %i.jjq, align 8, !tbaa !123
  %i.jjr = and i64 %.val223.i.a, 1073741824
  %.not170.i = icmp eq i64 %i.jjr, 0
  br i1 %.not170.i, label %bb.bgi, label %bb.bge

bb.bge:                                           ; preds = %bb.bgd
  %i.jjs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.jjt = load ptr, ptr %i.jjs, align 8, !tbaa !105 ; 2 uses
  %i.jju = and i64 %.val225.val.i.a, 2048
  %.not.i.i.i.i11298 = icmp eq i64 %i.jju, 0
  br i1 %.not.i.i.i.i11298, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i:          ; preds = %bb.bge
  %i.jjv = getelementptr i8, ptr %.val225.i.a, i64 56
  %i.jjw = load i64, ptr %i.jjv, align 8, !tbaa !128
  %i.jjx = getelementptr i8, ptr %i.jjm, i64 %i.jjw
  %.0.copyload.i.i.i.i = load ptr, ptr %i.jjx, align 1 ; 2 uses
  %i.jjy = icmp eq ptr %.0.copyload.i.i.i.i, null
  br i1 %i.jjy, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %bb.bgf

_PyVectorcall_FunctionInline.exit.thread.i.i.i:   ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i, %bb.bge
  %i.jjz = call ptr @_PyObject_MakeTpCall(ptr noundef %i.jjt, ptr noundef nonnull %i.jjm, ptr noundef null, i64 noundef 0, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit.i

bb.bgf:                                           ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i
  %i.jka = call ptr %.0.copyload.i.i.i.i(ptr noundef nonnull %i.jjm, ptr noundef null, i64 noundef 0, ptr noundef null) #21, !inline_history !341
  %i.jkb = call ptr @_Py_CheckFunctionResult(ptr noundef %i.jjt, ptr noundef nonnull %i.jjm, ptr noundef %i.jka, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit.i

_PyObject_CallNoArgs.exit.i:                      ; preds = %bb.bgf, %_PyVectorcall_FunctionInline.exit.thread.i.i.i
  %.0.i.i.i11299 = phi ptr [ %i.jjz, %_PyVectorcall_FunctionInline.exit.thread.i.i.i ], [ %i.jkb, %bb.bgf ] ; 4 uses
  %i.jkc = icmp eq ptr %.0.i.i.i11299, null
  br i1 %i.jkc, label %.thread242.i, label %bb.bgg

bb.bgg:                                           ; preds = %_PyObject_CallNoArgs.exit.i
  %i.jkd = getelementptr i8, ptr %.0.i.i.i11299, i64 8
  %.val217.i = load ptr, ptr %i.jkd, align 8, !tbaa !122 ; 2 uses
  %i.jke = getelementptr i8, ptr %.val217.i, i64 168
  %.val222.i = load i64, ptr %i.jke, align 8, !tbaa !123
  %i.jkf = and i64 %.val222.i, 1073741824
  %.not174.i = icmp eq i64 %i.jkf, 0
  br i1 %.not174.i, label %bb.bgh, label %Py_INCREF.exit.i

bb.bgh:                                           ; preds = %bb.bgg
  %i.jkg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.jkh = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jkg, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.jjm, ptr noundef nonnull %.val217.i) #21 ; 0 uses
  br label %.thread.i

bb.bgi:                                           ; preds = %bb.bgd, %bb.bgc
  %i.jki = and i64 %.val225.val.i.a, 1073741824
  %.not171.i = icmp eq i64 %i.jki, 0
  br i1 %.not171.i, label %bb.bgl, label %bb.bgj

bb.bgj:                                           ; preds = %bb.bgi
  %i.jkj = load i32, ptr %.val225.i.a, align 8, !tbaa !121 ; 2 uses
  %i.jkk = icmp ugt i32 %i.jkj, -1073741825
  br i1 %i.jkk, label %Py_INCREF.exit.i, label %bb.bgk

bb.bgk:                                           ; preds = %bb.bgj
  %i.jkl = add nuw i32 %i.jkj, 1
  store i32 %i.jkl, ptr %.val225.i.a, align 8, !tbaa !121
  br label %Py_INCREF.exit.i

bb.bgl:                                           ; preds = %bb.bgi
  %i.jkm = load i32, ptr %i.jjm, align 8, !tbaa !121 ; 2 uses
  %.not172.i = icmp sgt i32 %i.jkm, -1
  br i1 %.not172.i, label %bb.bgm, label %.thread246.i

bb.bgm:                                           ; preds = %bb.bgl
  %i.jkn = add nsw i32 %i.jkm, -1                 ; 2 uses
  store i32 %i.jkn, ptr %i.jjm, align 8, !tbaa !121
  %i.jko = icmp eq i32 %i.jkn, 0
  br i1 %i.jko, label %bb.bgn, label %.thread246.i

bb.bgn:                                           ; preds = %bb.bgm
  %i.jkp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not173.i = icmp eq ptr %i.jkp, null
  br i1 %.not173.i, label %bb.bgp, label %bb.bgo

bb.bgo:                                           ; preds = %bb.bgn
  %i.jkq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jkr = call i32 %i.jkp(ptr noundef nonnull %i.jjm, i32 noundef 1, ptr noundef %i.jkq) #21, !inline_history !342 ; 0 uses
  %.val213.pre.i = load ptr, ptr %i.jjn, align 8, !tbaa !122
  br label %bb.bgp

bb.bgp:                                           ; preds = %bb.bgo, %bb.bgn
  %.val213.i.a = phi ptr [ %.val213.pre.i, %bb.bgo ], [ %.val225.i.a, %bb.bgn ]
  %i.jks = getelementptr i8, ptr %.val213.i.a, i64 48
  %i.jkt = load ptr, ptr %i.jks, align 8, !tbaa !135
  call void %i.jkt(ptr noundef nonnull %i.jjm) #21, !inline_history !342
  br label %.thread246.i

.thread246.i:                                     ; preds = %bb.bgp, %bb.bgm, %bb.bgl
  %i.jku = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jku, ptr noundef nonnull @.str.90) #21
  br label %bb.bid

Py_INCREF.exit.i:                                 ; preds = %bb.bgk, %bb.bgj, %bb.bgg
  %.0150.i = phi ptr [ %.0.i.i.i11299, %bb.bgg ], [ %i.jjm, %bb.bgj ], [ %i.jjm, %bb.bgk ] ; 12 uses
  %.0148.i = phi ptr [ %i.jjm, %bb.bgg ], [ %.val225.i.a, %bb.bgj ], [ %.val225.i.a, %bb.bgk ] ; 11 uses
  %.not175.i = icmp eq ptr %i.jiq, null
  br i1 %.not175.i, label %bb.bhl, label %bb.bgq

bb.bgq:                                           ; preds = %Py_INCREF.exit.i
  %i.jkv = getelementptr i8, ptr %i.jiq, i64 8    ; 3 uses
  %.val224.i = load ptr, ptr %i.jkv, align 8, !tbaa !122 ; 2 uses
  %i.jkw = getelementptr i8, ptr %.val224.i, i64 168
  %.val224.val.i = load i64, ptr %i.jkw, align 8, !tbaa !123 ; 3 uses
  %i.jkx = and i64 %.val224.val.i, 2147483648
  %.not.i11300 = icmp eq i64 %i.jkx, 0
  br i1 %.not.i11300, label %bb.bhd, label %bb.bgr

bb.bgr:                                           ; preds = %bb.bgq
  %i.jky = getelementptr i8, ptr %i.jiq, i64 168
  %.val220.i.a = load i64, ptr %i.jky, align 8, !tbaa !123
  %i.jkz = and i64 %.val220.i.a, 1073741824
  %.not177.i = icmp eq i64 %i.jkz, 0
  br i1 %.not177.i, label %bb.bhd, label %bb.bgs

bb.bgs:                                           ; preds = %bb.bgr
  %i.jla = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.jlb = load ptr, ptr %i.jla, align 8, !tbaa !105 ; 2 uses
  %i.jlc = and i64 %.val224.val.i, 2048
  %.not.i.i.i228.i = icmp eq i64 %i.jlc, 0
  br i1 %.not.i.i.i228.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i232.i, label %_PyVectorcall_FunctionInline.exit.i.i229.i

_PyVectorcall_FunctionInline.exit.i.i229.i:       ; preds = %bb.bgs
  %i.jld = getelementptr i8, ptr %.val224.i, i64 56
  %i.jle = load i64, ptr %i.jld, align 8, !tbaa !128
  %i.jlf = getelementptr i8, ptr %i.jiq, i64 %i.jle
  %.0.copyload.i.i.i230.i = load ptr, ptr %i.jlf, align 1 ; 2 uses
  %i.jlg = icmp eq ptr %.0.copyload.i.i.i230.i, null
  br i1 %i.jlg, label %_PyVectorcall_FunctionInline.exit.thread.i.i232.i, label %bb.bgt

_PyVectorcall_FunctionInline.exit.thread.i.i232.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i229.i, %bb.bgs
  %i.jlh = call ptr @_PyObject_MakeTpCall(ptr noundef %i.jlb, ptr noundef nonnull %i.jiq, ptr noundef null, i64 noundef 0, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit233.i

bb.bgt:                                           ; preds = %_PyVectorcall_FunctionInline.exit.i.i229.i
  %i.jli = call ptr %.0.copyload.i.i.i230.i(ptr noundef nonnull %i.jiq, ptr noundef null, i64 noundef 0, ptr noundef null) #21, !inline_history !341
  %i.jlj = call ptr @_Py_CheckFunctionResult(ptr noundef %i.jlb, ptr noundef nonnull %i.jiq, ptr noundef %i.jli, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit233.i

_PyObject_CallNoArgs.exit233.i:                   ; preds = %bb.bgt, %_PyVectorcall_FunctionInline.exit.thread.i.i232.i
  %.0.i.i231.i = phi ptr [ %i.jlh, %_PyVectorcall_FunctionInline.exit.thread.i.i232.i ], [ %i.jlj, %bb.bgt ] ; 10 uses
  %i.jlk = icmp eq ptr %.0.i.i231.i, null
  br i1 %i.jlk, label %.thread.i, label %bb.bgu

bb.bgu:                                           ; preds = %_PyObject_CallNoArgs.exit233.i
  %i.jll = getelementptr i8, ptr %.0.i.i231.i, i64 8 ; 2 uses
  %.val212.i = load ptr, ptr %i.jll, align 8, !tbaa !122 ; 2 uses
  %i.jlm = getelementptr i8, ptr %.val212.i, i64 168
  %.val219.i = load i64, ptr %i.jlm, align 8, !tbaa !123
  %i.jln = and i64 %.val219.i, 1073741824
  %.not181.i = icmp eq i64 %i.jln, 0
  br i1 %.not181.i, label %bb.bgv, label %bb.bha

bb.bgv:                                           ; preds = %bb.bgu
  %i.jlo = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.jlp = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jlo, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.jiq, ptr noundef nonnull %.val212.i) #21 ; 0 uses
  %i.jlq = load i32, ptr %.0.i.i231.i, align 8, !tbaa !121 ; 2 uses
  %.not182.i = icmp sgt i32 %i.jlq, -1
  br i1 %.not182.i, label %bb.bgw, label %.thread.i

bb.bgw:                                           ; preds = %bb.bgv
  %i.jlr = add nsw i32 %i.jlq, -1                 ; 2 uses
  store i32 %i.jlr, ptr %.0.i.i231.i, align 8, !tbaa !121
  %i.jls = icmp eq i32 %i.jlr, 0
  br i1 %i.jls, label %bb.bgx, label %.thread.i

bb.bgx:                                           ; preds = %bb.bgw
  %i.jlt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not183.i = icmp eq ptr %i.jlt, null
  br i1 %.not183.i, label %bb.bgz, label %bb.bgy

bb.bgy:                                           ; preds = %bb.bgx
  %i.jlu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jlv = call i32 %i.jlt(ptr noundef nonnull %.0.i.i231.i, i32 noundef 1, ptr noundef %i.jlu) #21, !inline_history !342 ; 0 uses
  br label %bb.bgz

bb.bgz:                                           ; preds = %bb.bgy, %bb.bgx
  %.val210.i = load ptr, ptr %i.jll, align 8, !tbaa !122
  %i.jlw = getelementptr i8, ptr %.val210.i, i64 48
  %i.jlx = load ptr, ptr %i.jlw, align 8, !tbaa !135
  call void %i.jlx(ptr noundef nonnull %.0.i.i231.i) #21, !inline_history !342
  br label %.thread.i

bb.bha:                                           ; preds = %bb.bgu
  %i.jly = load i32, ptr %i.jiq, align 8, !tbaa !121 ; 2 uses
  %.not184.i = icmp sgt i32 %i.jly, -1
  br i1 %.not184.i, label %bb.bhb, label %bb.bhk

bb.bhb:                                           ; preds = %bb.bha
  %i.jlz = add nsw i32 %i.jly, -1                 ; 2 uses
  store i32 %i.jlz, ptr %i.jiq, align 8, !tbaa !121
  %i.jma = icmp eq i32 %i.jlz, 0
  br i1 %i.jma, label %bb.bhc, label %bb.bhk

bb.bhc:                                           ; preds = %bb.bhb
  %i.jmb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not185.i = icmp eq ptr %i.jmb, null
  br i1 %.not185.i, label %.sink.split.i, label %7

7:                                                ; preds = %bb.bhc
  %8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %9 = call i32 %i.jmb(ptr noundef nonnull %i.jiq, i32 noundef 1, ptr noundef %8) #21, !inline_history !342 ; 0 uses
  br label %.sink.split.i

bb.bhd:                                           ; preds = %bb.bgr, %bb.bgq
  %i.jmc = and i64 %.val224.val.i, 1073741824
  %.not178.i = icmp eq i64 %i.jmc, 0
  br i1 %.not178.i, label %bb.bhe, label %bb.bhk

bb.bhe:                                           ; preds = %bb.bhd
  %i.jmd = icmp eq ptr %i.jiq, @_Py_NoneStruct
  br i1 %i.jmd, label %bb.bhf, label %bb.bhj

bb.bhf:                                           ; preds = %bb.bhe
  %i.jme = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !121 ; 2 uses
  %.not179.i = icmp sgt i32 %i.jme, -1
  br i1 %.not179.i, label %bb.bhg, label %bb.bhk

bb.bhg:                                           ; preds = %bb.bhf
  %i.jmf = add nsw i32 %i.jme, -1                 ; 2 uses
  store i32 %i.jmf, ptr @_Py_NoneStruct, align 8, !tbaa !121
  %i.jmg = icmp eq i32 %i.jmf, 0
  br i1 %i.jmg, label %bb.bhh, label %bb.bhk

bb.bhh:                                           ; preds = %bb.bhg
  %i.jmh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not180.i = icmp eq ptr %i.jmh, null
  br i1 %.not180.i, label %.sink.split.i, label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh
  %i.jmi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jmj = call i32 %i.jmh(ptr noundef nonnull @_Py_NoneStruct, i32 noundef 1, ptr noundef %i.jmi) #21, !inline_history !342 ; 0 uses
  br label %.sink.split.i

bb.bhj:                                           ; preds = %bb.bhe
  %10 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @.str.91) #21
  br label %.thread.i

.sink.split.i:                                    ; preds = %bb.bhh, %bb.bhi, %bb.bhc, %7
  %.val209.sink.in.i = phi ptr [ %i.jkv, %bb.bhc ], [ %i.jkv, %7 ], [ getelementptr inbounds nuw (i8, ptr @_Py_NoneStruct, i64 8), %bb.bhi ], [ getelementptr inbounds nuw (i8, ptr @_Py_NoneStruct, i64 8), %bb.bhh ]
  %.0153.ph.i = phi ptr [ %.0.i.i231.i, %bb.bhc ], [ %.0.i.i231.i, %7 ], [ null, %bb.bhi ], [ null, %bb.bhh ]
  %.val209.sink.i = load ptr, ptr %.val209.sink.in.i, align 8, !tbaa !122
  %i.jmk = getelementptr i8, ptr %.val209.sink.i, i64 48
  %i.jml = load ptr, ptr %i.jmk, align 8, !tbaa !135
  call void %i.jml(ptr noundef nonnull %i.jiq) #21, !inline_history !342
  br label %bb.bhk

bb.bhk:                                           ; preds = %.sink.split.i, %bb.bhg, %bb.bhf, %bb.bhd, %bb.bhb, %bb.bha
  %.0153.i = phi ptr [ %i.jiq, %bb.bhd ], [ %.0.i.i231.i, %bb.bha ], [ %.0.i.i231.i, %bb.bhb ], [ null, %bb.bhf ], [ null, %bb.bhg ], [ %.0153.ph.i, %.sink.split.i ]
  call void @PyException_SetCause(ptr noundef nonnull %.0150.i, ptr noundef %.0153.i) #21
  br label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk, %Py_INCREF.exit.i
  call void @_PyErr_SetObject(ptr noundef %0, ptr noundef nonnull %.0148.i, ptr noundef nonnull %.0150.i) #21
  %i.jmm = load i32, ptr %.0150.i, align 8, !tbaa !121 ; 2 uses
  %.not186.i = icmp sgt i32 %i.jmm, -1
  br i1 %.not186.i, label %bb.bhm, label %bb.bhq

bb.bhm:                                           ; preds = %bb.bhl
  %i.jmn = add nsw i32 %i.jmm, -1                 ; 2 uses
  store i32 %i.jmn, ptr %.0150.i, align 8, !tbaa !121
  %i.jmo = icmp eq i32 %i.jmn, 0
  br i1 %i.jmo, label %bb.bhn, label %bb.bhq

bb.bhn:                                           ; preds = %bb.bhm
  %i.jmp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not187.i = icmp eq ptr %i.jmp, null
  br i1 %.not187.i, label %bb.bhp, label %bb.bho

bb.bho:                                           ; preds = %bb.bhn
  %i.jmq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jmr = call i32 %i.jmp(ptr noundef nonnull %.0150.i, i32 noundef 1, ptr noundef %i.jmq) #21, !inline_history !342 ; 0 uses
  br label %bb.bhp

bb.bhp:                                           ; preds = %bb.bho, %bb.bhn
  %i.jms = getelementptr i8, ptr %.0150.i, i64 8
  %.0150.val.i = load ptr, ptr %i.jms, align 8, !tbaa !122
  %i.jmt = getelementptr i8, ptr %.0150.val.i, i64 48
  %i.jmu = load ptr, ptr %i.jmt, align 8, !tbaa !135
  call void %i.jmu(ptr noundef nonnull %.0150.i) #21, !inline_history !342
  br label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp, %bb.bhm, %bb.bhl
  %i.jmv = load i32, ptr %.0148.i, align 8, !tbaa !121 ; 2 uses
  %.not188.i = icmp sgt i32 %i.jmv, -1
  br i1 %.not188.i, label %bb.bhr, label %do_raise.exit

bb.bhr:                                           ; preds = %bb.bhq
  %i.jmw = add nsw i32 %i.jmv, -1                 ; 2 uses
  store i32 %i.jmw, ptr %.0148.i, align 8, !tbaa !121
  %i.jmx = icmp eq i32 %i.jmw, 0
  br i1 %i.jmx, label %bb.bhs, label %do_raise.exit

bb.bhs:                                           ; preds = %bb.bhr
  %i.jmy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not189.i = icmp eq ptr %i.jmy, null
  br i1 %.not189.i, label %bb.bhu, label %bb.bht

bb.bht:                                           ; preds = %bb.bhs
  %i.jmz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jna = call i32 %i.jmy(ptr noundef nonnull %.0148.i, i32 noundef 1, ptr noundef %i.jmz) #21, !inline_history !342 ; 0 uses
  br label %bb.bhu

bb.bhu:                                           ; preds = %bb.bht, %bb.bhs
  %i.jnb = getelementptr i8, ptr %.0148.i, i64 8
  %.0148.val.i = load ptr, ptr %i.jnb, align 8, !tbaa !122
  %i.jnc = getelementptr i8, ptr %.0148.val.i, i64 48
  %i.jnd = load ptr, ptr %i.jnc, align 8, !tbaa !135
  call void %i.jnd(ptr noundef nonnull %.0148.i) #21, !inline_history !342
  br label %do_raise.exit

.thread.i:                                        ; preds = %bb.bhj, %bb.bgz, %bb.bgw, %bb.bgv, %_PyObject_CallNoArgs.exit233.i, %bb.bgh
  %.1151.i = phi ptr [ %.0.i.i.i11299, %bb.bgh ], [ %.0150.i, %bb.bhj ], [ %.0150.i, %_PyObject_CallNoArgs.exit233.i ], [ %.0150.i, %bb.bgw ], [ %.0150.i, %bb.bgz ], [ %.0150.i, %bb.bgv ] ; 5 uses
  %.1149.i = phi ptr [ %i.jjm, %bb.bgh ], [ %.0148.i, %bb.bhj ], [ %.0148.i, %_PyObject_CallNoArgs.exit233.i ], [ %.0148.i, %bb.bgw ], [ %.0148.i, %bb.bgz ], [ %.0148.i, %bb.bgv ] ; 3 uses
  %i.jne = load i32, ptr %.1151.i, align 8, !tbaa !121 ; 2 uses
  %.not191.i = icmp sgt i32 %i.jne, -1
  br i1 %.not191.i, label %bb.bhv, label %.thread242.i

bb.bhv:                                           ; preds = %.thread.i
  %i.jnf = add nsw i32 %i.jne, -1                 ; 2 uses
  store i32 %i.jnf, ptr %.1151.i, align 8, !tbaa !121
  %i.jng = icmp eq i32 %i.jnf, 0
  br i1 %i.jng, label %bb.bhw, label %.thread242.i

bb.bhw:                                           ; preds = %bb.bhv
  %i.jnh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not192.i = icmp eq ptr %i.jnh, null
  br i1 %.not192.i, label %bb.bhy, label %bb.bhx

bb.bhx:                                           ; preds = %bb.bhw
  %i.jni = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jnj = call i32 %i.jnh(ptr noundef nonnull %.1151.i, i32 noundef 1, ptr noundef %i.jni) #21, !inline_history !342 ; 0 uses
  br label %bb.bhy

bb.bhy:                                           ; preds = %bb.bhx, %bb.bhw
  %i.jnk = getelementptr i8, ptr %.1151.i, i64 8
  %.1151.val.i = load ptr, ptr %i.jnk, align 8, !tbaa !122
  %i.jnl = getelementptr i8, ptr %.1151.val.i, i64 48
  %i.jnm = load ptr, ptr %i.jnl, align 8, !tbaa !135
  call void %i.jnm(ptr noundef nonnull %.1151.i) #21, !inline_history !342
  br label %.thread242.i

.thread242.i:                                     ; preds = %bb.bhy, %bb.bhv, %.thread.i, %_PyObject_CallNoArgs.exit.i
  %.1149240245.i = phi ptr [ %i.jjm, %_PyObject_CallNoArgs.exit.i ], [ %.1149.i, %.thread.i ], [ %.1149.i, %bb.bhy ], [ %.1149.i, %bb.bhv ] ; 5 uses
  %i.jnn = load i32, ptr %.1149240245.i, align 8, !tbaa !121 ; 2 uses
  %.not194.i = icmp sgt i32 %i.jnn, -1
  br i1 %.not194.i, label %bb.bhz, label %bb.bid

bb.bhz:                                           ; preds = %.thread242.i
  %i.jno = add nsw i32 %i.jnn, -1                 ; 2 uses
  store i32 %i.jno, ptr %.1149240245.i, align 8, !tbaa !121
  %i.jnp = icmp eq i32 %i.jno, 0
  br i1 %i.jnp, label %bb.bia, label %bb.bid

bb.bia:                                           ; preds = %bb.bhz
  %i.jnq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not195.i = icmp eq ptr %i.jnq, null
  br i1 %.not195.i, label %bb.bic, label %bb.bib

bb.bib:                                           ; preds = %bb.bia
  %i.jnr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jns = call i32 %i.jnq(ptr noundef nonnull %.1149240245.i, i32 noundef 1, ptr noundef %i.jnr) #21, !inline_history !342 ; 0 uses
  br label %bb.bic

bb.bic:                                           ; preds = %bb.bib, %bb.bia
  %i.jnt = getelementptr i8, ptr %.1149240245.i, i64 8
  %.1149.val.i = load ptr, ptr %i.jnt, align 8, !tbaa !122
  %i.jnu = getelementptr i8, ptr %.1149.val.i, i64 48
  %i.jnv = load ptr, ptr %i.jnu, align 8, !tbaa !135
  call void %i.jnv(ptr noundef nonnull %.1149240245.i) #21, !inline_history !342
  br label %bb.bid

bb.bid:                                           ; preds = %bb.bic, %bb.bhz, %.thread242.i, %.thread246.i
  %.not196.i = icmp eq ptr %i.jiq, null
  br i1 %.not196.i, label %do_raise.exit, label %bb.bie

bb.bie:                                           ; preds = %bb.bid
  %i.jnw = load i32, ptr %i.jiq, align 8, !tbaa !121 ; 2 uses
  %.not197.i = icmp sgt i32 %i.jnw, -1
  br i1 %.not197.i, label %bb.bif, label %do_raise.exit

bb.bif:                                           ; preds = %bb.bie
  %i.jnx = add nsw i32 %i.jnw, -1                 ; 2 uses
  store i32 %i.jnx, ptr %i.jiq, align 8, !tbaa !121
  %i.jny = icmp eq i32 %i.jnx, 0
  br i1 %i.jny, label %bb.big, label %do_raise.exit

bb.big:                                           ; preds = %bb.bif
  %i.jnz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not198.i = icmp eq ptr %i.jnz, null
  br i1 %.not198.i, label %bb.bii, label %bb.bih

bb.bih:                                           ; preds = %bb.big
  %i.joa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.job = call i32 %i.jnz(ptr noundef nonnull %i.jiq, i32 noundef 1, ptr noundef %i.joa) #21, !inline_history !342 ; 0 uses
  br label %bb.bii

bb.bii:                                           ; preds = %bb.bih, %bb.big
  %i.joc = getelementptr i8, ptr %i.jiq, i64 8
  %.val.i11302.a = load ptr, ptr %i.joc, align 8, !tbaa !122
  %i.jod = getelementptr i8, ptr %.val.i11302.a, i64 48
  %i.joe = load ptr, ptr %i.jod, align 8, !tbaa !135
  call void %i.joe(ptr noundef nonnull %i.jiq) #21, !inline_history !342
  br label %do_raise.exit

do_raise.exit:                                    ; preds = %bb.bfz, %bb.bhq, %bb.bhr, %bb.bhu, %bb.bid, %bb.bie, %bb.bif, %bb.bii
  %i.jof = phi ptr [ %i.jjc, %bb.bfz ], [ %i.jjl, %bb.bhq ], [ %i.jjl, %bb.bid ], [ %i.jjl, %bb.bhr ], [ %i.jjl, %bb.bhu ], [ %i.jjl, %bb.bie ], [ %i.jjl, %bb.bii ], [ %i.jjl, %bb.bif ]
  %.4.val9993 = load ptr, ptr %i.jof, align 8, !tbaa !216
  br label %_PyEval_FormatExcUnbound.exit

bb.bij:                                           ; preds = %bb.bga, %bb.bgb
  call void @_PyErr_SetRaisedException(ptr noundef %0, ptr noundef nonnull %i.jje) #21
  %.val.i11303 = load ptr, ptr %i.maj, align 8, !tbaa !148
  %i.jog = getelementptr i8, ptr %.val.i11303, i64 223471
  %i.joh = load i8, ptr %i.jog, align 1, !tbaa !121
  %i.joi = icmp eq i8 %i.joh, 0
  br i1 %i.joi, label %.preheader11711, label %bb.bik

bb.bik:                                           ; preds = %bb.bij
  %.val23.i.i11304 = load i64, ptr %.4, align 8
  %i.joj = and i64 %.val23.i.i11304, -2
  %i.jok = inttoptr i64 %i.joj to ptr
  %i.jol = getelementptr i8, ptr %i.jok, i64 48
  %i.jom = load i32, ptr %i.jol, align 8, !tbaa !214
  %i.jon = and i32 %i.jom, 33554432
  %.not.i.i11305 = icmp eq i32 %i.jon, 0
  br i1 %.not.i.i11305, label %bb.bil, label %.preheader11711

bb.bil:                                           ; preds = %bb.bik
  %i.joo = call ptr @PyErr_GetRaisedException() #21 ; 7 uses
  %i.jop = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 15, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.joo) #21
  %i.joq = icmp eq i32 %i.jop, 0
  br i1 %i.joq, label %bb.bim, label %bb.bin

bb.bim:                                           ; preds = %bb.bil
  call void @PyErr_SetRaisedException(ptr noundef %i.joo) #21
  br label %.preheader11711

bb.bin:                                           ; preds = %bb.bil
  %i.jor = load i32, ptr %i.joo, align 8, !tbaa !121 ; 2 uses
  %.not21.i.i11306 = icmp sgt i32 %i.jor, -1
  br i1 %.not21.i.i11306, label %bb.bio, label %.preheader11711

bb.bio:                                           ; preds = %bb.bin
  %i.jos = add nsw i32 %i.jor, -1                 ; 2 uses
  store i32 %i.jos, ptr %i.joo, align 8, !tbaa !121
  %i.jot = icmp eq i32 %i.jos, 0
  br i1 %i.jot, label %bb.bip, label %.preheader11711

bb.bip:                                           ; preds = %bb.bio
  %i.jou = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not22.i.i11307 = icmp eq ptr %i.jou, null
  br i1 %.not22.i.i11307, label %bb.bir, label %bb.biq

bb.biq:                                           ; preds = %bb.bip
  %i.jov = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jow = call i32 %i.jou(ptr noundef nonnull %i.joo, i32 noundef 1, ptr noundef %i.jov) #21, !inline_history !288 ; 0 uses
  br label %bb.bir

bb.bir:                                           ; preds = %bb.biq, %bb.bip
  %i.jox = getelementptr i8, ptr %i.joo, i64 8
  %.val.i.i11308 = load ptr, ptr %i.jox, align 8, !tbaa !122
  %i.joy = getelementptr i8, ptr %.val.i.i11308, i64 48
  %i.joz = load ptr, ptr %i.joy, align 8, !tbaa !135
  call void %i.joz(ptr noundef nonnull %i.joo) #21, !inline_history !288
  br label %.preheader11711

bb.bis:                                           ; preds = %.backedge
  %i.jpa = getelementptr i8, ptr %.4, i64 56      ; 2 uses
  store ptr %.32, ptr %i.jpa, align 8, !tbaa !213
  %i.jpb = getelementptr i8, ptr %.32, i64 2      ; 6 uses
  %i.jpc = getelementptr i8, ptr %.4.val1006211643, i64 -8 ; 2 uses
  %.sroa.0722.0.copyload = load i64, ptr %i.jpc, align 8, !tbaa !121 ; 3 uses
  %i.jpd = and i64 %.sroa.0722.0.copyload, 1
  %.not.not.i11310 = icmp eq i64 %i.jpd, 0
  br i1 %.not.not.i11310, label %bb.bit, label %bb.biu

bb.bit:                                           ; preds = %bb.bis
  %i.jpe = inttoptr i64 %.sroa.0722.0.copyload to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11312

bb.biu:                                           ; preds = %bb.bis
  %i.jpf = and i64 %.sroa.0722.0.copyload, -2
  %i.jpg = inttoptr i64 %i.jpf to ptr             ; 4 uses
  %i.jph = load i32, ptr %i.jpg, align 8, !tbaa !121 ; 2 uses
  %i.jpi = icmp ugt i32 %i.jph, -1073741825
  br i1 %i.jpi, label %PyStackRef_AsPyObjectSteal.exit11312, label %bb.biv

bb.biv:                                           ; preds = %bb.biu
  %i.jpj = add nuw i32 %i.jph, 1
  store i32 %i.jpj, ptr %i.jpg, align 8, !tbaa !121
  br label %PyStackRef_AsPyObjectSteal.exit11312

PyStackRef_AsPyObjectSteal.exit11312:             ; preds = %bb.bit, %bb.biu, %bb.biv
  %.0.i11311 = phi ptr [ %i.jpe, %bb.bit ], [ %i.jpg, %bb.biu ], [ %i.jpg, %bb.biv ]
  %.not9647 = icmp eq i32 %.09034, 0
  br i1 %.not9647, label %bb.bix, label %bb.biw

bb.biw:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11312
  %i.jpk = xor i32 %.09034, -1
  %i.jpl = sext i32 %i.jpk to i64
  %i.jpm = getelementptr [8 x i8], ptr %.4.val1006211643, i64 %i.jpl
  %.4.val10454 = load i64, ptr %.4, align 8
  %i.jpn = and i64 %.4.val10454, -2
  %i.jpo = inttoptr i64 %i.jpn to ptr
  %i.jpp = getelementptr i8, ptr %i.jpo, i64 208
  %i.jpq = load i64, ptr %i.jpm, align 8
  %i.jpr = ashr i64 %i.jpq, 2
  %i.jps = getelementptr [2 x i8], ptr %i.jpp, i64 %i.jpr
  store ptr %i.jps, ptr %i.jpa, align 8, !tbaa !213
  br label %bb.bix

bb.bix:                                           ; preds = %bb.biw, %PyStackRef_AsPyObjectSteal.exit11312
  %i.jpt = getelementptr i8, ptr %.4, i64 64
end_hunk_0
begin_hunk_1_@_PyEval_FormatKwargsError:bb.a

bb.u:                                             ; preds = %bb.t
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not65 = icmp eq ptr %i.aq, null
  br i1 %.not65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.as = tail call i32 %i.aq(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef %i.ar) #21 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.val68 = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.at = getelementptr i8, ptr %.val68, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !135
  tail call void %i.au(ptr noundef nonnull %i.k) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w, %bb.t, %bb.c, %bb.b
  ret void
}

declare i32 @PyDict_Update(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyErr_ExceptionMatches(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_Specialize_ForIter(i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @_PyForIter_VirtualIteratorNext(ptr noundef %0, ptr noundef %1, i64 %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %3, align 8, !tbaa !121 ; 3 uses
  %i.c = and i64 %.sroa.02.0.copyload, 3
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %.sroa.02.0.copyload, 4
  store i64 %i.e, ptr %3, align 8, !tbaa !121
  %i.f = ashr i64 %.sroa.02.0.copyload, 2         ; 3 uses
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.i = icmp eq ptr %i.h, @PyTuple_Type
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !119
  %.not.i = icmp ult i64 %i.f, %.val.i
  br i1 %.not.i, label %bb.d, label %foriter_next.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.f
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117  ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = or i64 %i.o, 1
  br label %foriter_next.exit

bb.f:                                             ; preds = %bb.d
  %i.q = add nuw i32 %i.n, 1
  store i32 %i.q, ptr %i.m, align 8, !tbaa !121
  %i.r = ptrtoint ptr %i.m to i64
  br label %foriter_next.exit

bb.g:                                             ; preds = %bb.b
  %i.s = tail call ptr @_PyList_GetItemRef(ptr noundef nonnull %i.b, i64 noundef %i.f) #21 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %foriter_next.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.s, i64 6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !121
  %i.w = and i16 %i.v, 1
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = zext nneg i16 %i.w to i64
  %i.z = or i64 %i.y, %i.x
  br label %foriter_next.exit

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !122
  %i.ab = getelementptr i8, ptr %.val, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !344
  %i.ad = tail call ptr %i.ac(ptr noundef %i.b) #21 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %0, i64 128
  %.val20 = load ptr, ptr %i.af, align 8, !tbaa !131 ; 2 uses
  %i.ag = icmp eq ptr %.val20, null
  br i1 %i.ag, label %foriter_next.exit, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %.val20, i64 8
  %.val.i21 = load ptr, ptr %i.ah, align 8, !tbaa !122
  %.not = icmp eq ptr %.val.i21, null
  br i1 %.not, label %foriter_next.exit, label %bb.k

bb.k:                                             ; preds = %_PyErr_Occurred.exit
  %i.ai = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !117
  %i.aj = tail call i32 @_PyErr_ExceptionMatches(ptr noundef nonnull %0, ptr noundef %i.ai) #21
  %.not19 = icmp eq i32 %i.aj, 0
  br i1 %.not19, label %foriter_next.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %1, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !213
  %i.am = getelementptr i8, ptr %0, i64 16
  %.val.i22 = load ptr, ptr %i.am, align 8, !tbaa !148
  %i.an = getelementptr i8, ptr %.val.i22, i64 223467
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !121
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %_PyEval_MonitorRaise.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val23.i.i = load i64, ptr %1, align 8
  %i.aq = and i64 %.val23.i.i, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !214
  %i.au = and i32 %i.at, 33554432
  %.not.i.i23 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i23, label %bb.n, label %_PyEval_MonitorRaise.exit

bb.n:                                             ; preds = %bb.m
  %i.av = tail call ptr @PyErr_GetRaisedException() #21 ; 7 uses
  %i.aw = tail call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 11, ptr noundef nonnull %1, ptr noundef %i.al, ptr noundef %i.av) #21
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @PyErr_SetRaisedException(ptr noundef %i.av) #21
  br label %_PyEval_MonitorRaise.exit

bb.p:                                             ; preds = %bb.n
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !121 ; 2 uses
  %.not21.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not21.i.i, label %bb.q, label %_PyEval_MonitorRaise.exit

bb.q:                                             ; preds = %bb.p
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.av, align 8, !tbaa !121
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %_PyEval_MonitorRaise.exit

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bb, null
  br i1 %.not22.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.bd = tail call i32 %i.bb(ptr noundef nonnull %i.av, i32 noundef 1, ptr noundef %i.bc) #21, !inline_history !345 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !122
  %i.bf = getelementptr i8, ptr %.val.i.i, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !135
  tail call void %i.bg(ptr noundef nonnull %i.av) #21, !inline_history !345
  br label %_PyEval_MonitorRaise.exit

_PyEval_MonitorRaise.exit:                        ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.t
  tail call void @_PyErr_Clear(ptr noundef nonnull %0) #21
  br label %foriter_next.exit

bb.u:                                             ; preds = %bb.i
  %i.bh = getelementptr i8, ptr %i.ad, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !121
  %i.bj = and i16 %i.bi, 1
  %i.bk = ptrtoint ptr %i.ad to i64
  %i.bl = zext nneg i16 %i.bj to i64
  %i.bm = or i64 %i.bl, %i.bk
  br label %foriter_next.exit

foriter_next.exit:                                ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.u, %bb.k, %_PyEval_MonitorRaise.exit, %_PyErr_Occurred.exit
  %.sroa.017.1 = phi i64 [ 1, %_PyErr_Occurred.exit ], [ 2, %bb.k ], [ %i.bm, %bb.u ], [ 1, %_PyEval_MonitorRaise.exit ], [ 1, %bb.c ], [ 1, %bb.g ], [ %i.z, %bb.h ], [ %i.p, %bb.e ], [ %i.r, %bb.f ], [ 1, %bb.j ]
  ret i64 %.sroa.017.1
}

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEval_GetANext(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !122 ; 3 uses
  %i.b = icmp eq ptr %.val35, @PyAsyncGen_Type
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyAsyncGen_Type, i64 80), align 8, !tbaa !305
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307
  %i.e = tail call ptr %i.d(ptr noundef nonnull %0) #21
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %2 = getelementptr i8, ptr %.val35, i64 80
  %3 = load ptr, ptr %2, align 8, !tbaa !305      ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !307  ; 2 uses
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr %i.g(ptr noundef nonnull %0) #21 ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.m, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.k = getelementptr i8, ptr %.val35, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.81, ptr noundef %i.l) #21 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @_PyCoro_GetAwaitableIter(ptr noundef nonnull %i.h) #21 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.q = getelementptr i8, ptr %i.h, i64 8
  %.val34 = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.r = getelementptr i8, ptr %.val34, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.t = tail call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.p, ptr noundef nonnull @.str.82, ptr noundef %i.s) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.u = load i32, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %.not32 = icmp sgt i32 %i.u, -1
  br i1 %.not32, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.h, align 8, !tbaa !121
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not33 = icmp eq ptr %i.x, null
  br i1 %.not33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.z = tail call i32 %i.x(ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef %i.y) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !122
  %i.ab = getelementptr i8, ptr %.val, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !135
  tail call void %i.ac(ptr noundef nonnull %i.h) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.i, %bb.e, %.thread, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %.thread ], [ null, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.l ], [ %i.n, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEval_GetAwaitable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyCoro_GetAwaitableIter(ptr noundef %0) #21 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyThreadState_Get() #21
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !122 ; 2 uses
  %i.e = getelementptr i8, ptr %.val29, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !305  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !393
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_PyEval_FormatAwaitableError.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %1, label %_PyEval_FormatAwaitableError.exit [
    i32 1, label %.sink.split.i
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.str.79.sink.i = phi ptr [ @.str.80, %bb.e ], [ @.str.79, %bb.d ]
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.k = getelementptr i8, ptr %.val29, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.m = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull %.str.79.sink.i, ptr noundef %i.l) #21 ; 0 uses
  br label %_PyEval_FormatAwaitableError.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.p = icmp eq ptr %i.o, @PyCoro_Type
  br i1 %i.p, label %bb.g, label %_PyEval_FormatAwaitableError.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.a, i64 67
  %i.r = load i8, ptr %i.q, align 1, !tbaa !394
  %i.s = and i8 %i.r, -2
  %or.cond = icmp eq i8 %i.s, 2
  br i1 %or.cond, label %bb.h, label %_PyEval_FormatAwaitableError.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not = icmp sgt i32 %i.t, -1
  br i1 %.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !121
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.y = tail call i32 %i.w(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.x) #21 ; 0 uses
  %.val.pre = load ptr, ptr %i.n, align 8, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val = phi ptr [ %.val.pre, %bb.k ], [ @PyCoro_Type, %bb.j ]
  %i.z = getelementptr i8, ptr %.val, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !135
  tail call void %i.aa(ptr noundef nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.i
  %i.ab = tail call ptr @PyThreadState_Get() #21
  %i.ac = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !117
  tail call void @_PyErr_SetString(ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef nonnull @.str.83) #21
  br label %_PyEval_FormatAwaitableError.exit

_PyEval_FormatAwaitableError.exit:                ; preds = %.sink.split.i, %bb.d, %bb.c, %bb.m, %bb.g, %bb.f
  %.2 = phi ptr [ %i.a, %bb.g ], [ %i.a, %bb.f ], [ null, %bb.m ], [ null, %bb.c ], [ null, %bb.d ], [ null, %.sink.split.i ]
  ret ptr %.2
}

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #3

declare void @_PyErr_SetString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEval_LazyImportFrom(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr i8, ptr %2, i64 24         ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !396
  %i.d = tail call ptr @PyImport_GetModule(ptr noundef %i.c) #21 ; 15 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8        ; 4 uses
  %.val129 = load ptr, ptr %i.e, align 8, !tbaa !122 ; 2 uses
  %.not.i = icmp eq ptr %.val129, @PyModule_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val129, ptr noundef nonnull @PyModule_Type) #21
  %.not136 = icmp eq i32 %i.f, 0
  br i1 %.not136, label %bb.o, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.b, %PyObject_TypeCheck.exit
  %i.g = tail call ptr @PyModule_GetDict(ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not104 = icmp eq ptr %i.g, null
  br i1 %.not104, label %bb.o, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.h = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull %i.a) #21
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %.not108 = icmp sgt i32 %i.j, -1
  br i1 %.not108, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !121
  %i.l = icmp eq i32 %i.k, 0
end_hunk_1
