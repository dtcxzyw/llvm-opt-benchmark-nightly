inline.NumInlined: 2195
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.19 = private unnamed_addr constant [35 x i8] c"error return without exception set\00", align 1
@_Py_jit_entry = hidden local_unnamed_addr global ptr null, align 8
@.str.21 = private unnamed_addr constant [173 x i8] c"the function must be called with the GIL held, after Python initialization and before Python finalization, but the GIL is released (the current Python thread state is NULL)\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [31 x i8] c"No active exception to reraise\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"calling %R should have returned an instance of BaseException, not %R\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"exceptions must derive from BaseException\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"exception causes must derive from BaseException\00", align 1
@PyBool_Type = external global %struct._typeobject, align 8

; Function Attrs: nounwind uwtable
define hidden ptr @Test_EvalFrame(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %struct._PyEntryFrame, align 8      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %union._PyStackRef, align 8         ; 5 uses
  %5 = alloca %union._PyStackRef, align 8         ; 4 uses
  %i.f = alloca [2 x ptr], align 16               ; 3 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca [2 x ptr], align 16               ; 3 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca ptr, align 8                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca [5 x ptr], align 16               ; 5 uses
  %i.o = alloca i32, align 4                      ; 2 uses
  %i.p = alloca i32, align 4                      ; 2 uses
  %i.q = alloca i32, align 4                      ; 2 uses
  %i.r = icmp eq ptr %0, null
  br i1 %i.r, label %bb.b, label %_Py_EnsureFuncTstateNotNULL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.Test_EvalFrame, ptr noundef nonnull @.str.21) #7
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 952        ; 4 uses
  %.val.i = load i64, ptr %i.s, align 8, !tbaa !10 ; 2 uses
  %i.t = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.u = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.v = icmp ule i64 %.val.i, %i.u
  %i.w = add i64 %.val.i, -32768
  %i.x = icmp ugt i64 %i.w, %i.u
  %narrow.i.not.i = or i1 %i.v, %i.x
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit.thread, label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %_Py_EnsureFuncTstateNotNULL.exit
  %i.y = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %0, ptr noundef nonnull @.str) #8
  %.not11587 = icmp eq i32 %i.y, 0
  br i1 %.not11587, label %_Py_EnterRecursiveCallTstate.exit.thread, label %bb.c

bb.c:                                             ; preds = %_Py_EnterRecursiveCallTstate.exit
  tail call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef %1) #8
  br label %PyStackRef_AsPyObjectSteal.exit11044

_Py_EnterRecursiveCallTstate.exit.thread:         ; preds = %_Py_EnsureFuncTstateNotNULL.exit, %_Py_EnterRecursiveCallTstate.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  store i64 1, ptr %i.z, align 8, !tbaa !34
  %i.aa = or disjoint i64 ptrtoint (ptr @_Py_NoneStruct to i64), 1 ; 16 uses
  store i64 %i.aa, ptr %3, align 8, !tbaa !34
  %i.ab = load ptr, ptr @_Py_INTERPRETER_TRAMPOLINE_INSTRUCTIONS_PTR, align 8, !tbaa !35
  %i.ac = getelementptr i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 74
  store i8 3, ptr %i.af, align 2, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 75
  store i8 0, ptr %i.ag, align 1, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i16 0, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr i8, ptr %0, i64 72        ; 25 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !43
  %i.al = getelementptr i8, ptr %1, i64 8         ; 2 uses
  store ptr %3, ptr %i.al, align 8, !tbaa !44
  store ptr %1, ptr %i.ai, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 1, ptr %i.am, align 8, !tbaa !34
  %.not9394 = icmp eq i32 %2, 0
  br i1 %.not9394, label %bb.bvy, label %bb.d

bb.d:                                             ; preds = %_Py_EnterRecursiveCallTstate.exit.thread
  %i.an = getelementptr i8, ptr %0, i64 52        ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !45 ; 2 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !45
  %i.aq = icmp slt i32 %i.ao, 1
  br i1 %i.aq, label %_Py_EnterRecursivePy.exit, label %_Py_EnterRecursivePy.exit.thread

_Py_EnterRecursivePy.exit:                        ; preds = %bb.d
  %i.ar = call i32 @_Py_CheckRecursiveCallPy(ptr noundef nonnull %0) #8
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %_Py_EnterRecursivePy.exit.thread, label %bb.bvz

_Py_EnterRecursivePy.exit.thread:                 ; preds = %bb.d, %_Py_EnterRecursivePy.exit
  %.val = load i64, ptr %1, align 8
  %i.as = and i64 %.val, -2
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.aw = call i32 @_Py_Instrument(ptr noundef %i.at, ptr noundef %i.av) #8 ; 0 uses
  %i.ax = getelementptr i8, ptr %1, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 2 uses
  %.val.i10463 = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.az = getelementptr i8, ptr %.val.i10463, i64 223470
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %monitor_throw.exit, label %bb.e

bb.e:                                             ; preds = %_Py_EnterRecursivePy.exit.thread
  %.val.i.i = load i64, ptr %1, align 8
  %i.bc = and i64 %.val.i.i, -2
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !48
  %i.bg = and i32 %i.bf, 33554432
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.f, label %monitor_throw.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = call ptr @PyErr_GetRaisedException() #8 ; 7 uses
  %i.bi = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull %1, ptr noundef %i.ay, ptr noundef %i.bh) #8
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @PyErr_SetRaisedException(ptr noundef %i.bh) #8
  br label %monitor_throw.exit

bb.h:                                             ; preds = %bb.f
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !34 ; 2 uses
  %.not21.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not21.i.i, label %bb.i, label %monitor_throw.exit

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bh, align 8, !tbaa !34
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %monitor_throw.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bn, null
  br i1 %.not22.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.bp = call i32 %i.bn(ptr noundef nonnull %i.bh, i32 noundef 1, ptr noundef %i.bo) #8, !inline_history !57 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = getelementptr i8, ptr %i.bh, i64 8
  %.val23.i.i = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.br = getelementptr i8, ptr %.val23.i.i, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  call void %i.bs(ptr noundef nonnull %i.bh) #8, !inline_history !57
  br label %monitor_throw.exit

monitor_throw.exit:                               ; preds = %_Py_EnterRecursivePy.exit.thread, %bb.e, %bb.g, %bb.h, %bb.i, %bb.l
  %i.bt = getelementptr i8, ptr %1, i64 64
  %.val10314 = load ptr, ptr %i.bt, align 8, !tbaa !65
  br label %.loopexit

bb.m:                                             ; preds = %.backedge
  %i.bu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bu, align 8, !tbaa !47
  %i.bv = getelementptr i8, ptr %.32, i64 12
  br label %_PyLong_CheckExactAndCompact.exit.thread

_PyLong_CheckExactAndCompact.exit.thread:         ; preds = %bb.gw, %bb.gv, %bb.fn, %bb.fb, %bb.ep, %bb.dv, %bb.dp, %bb.cs, %bb.cr, %bb.ah, %bb.ag, %bb.dd, %bb.gx, %_PyLong_CheckExactAndCompact.exit10594, %_PyLong_CheckExactAndCompact.exit10590, %bb.gk, %bb.gj, %PyUnicode_READ_CHAR.exit, %bb.fp, %bb.fo, %_PyLong_CheckExactAndCompact.exit10571, %bb.fd, %bb.fc, %_PyLong_CheckExactAndCompact.exit10559, %bb.es, %bb.er, %bb.eq, %_PyLong_CheckExactAndCompact.exit10544, %bb.ei, %bb.eh, %bb.dx, %bb.dw, %_PyLong_CheckExactAndCompact.exit10528, %_PyThreadState_HasStackSpace.exit, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.ct, %_PyLong_CheckExactAndCompact.exit10512, %_PyLong_CheckExactAndCompact.exit10508, %bb.cg, %bb.cf, %bb.bn, %bb.bm, %bb.bl, %bb.be, %bb.at, %bb.as, %bb.ai, %_PyLong_CheckExactAndCompact.exit10475, %_PyLong_CheckExactAndCompact.exit, %bb.v, %bb.u, %bb.m
  %.09040 = phi ptr [ %.4.val1003611541, %bb.bn ], [ %.4.val1003611541, %bb.bm ], [ %.4.val1003611541, %bb.bl ], [ %.4.val1003611541, %bb.m ], [ %.4.val1003611541, %bb.v ], [ %.4.val1003611541, %bb.u ], [ %.4.val1003611541, %bb.ai ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10475 ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit ], [ %.4.val1003611541, %bb.at ], [ %.4.val1003611541, %bb.as ], [ %.4.val10309, %bb.be ], [ %.4.val1003611541, %bb.cg ], [ %.4.val1003611541, %bb.cf ], [ %.4.val1003611541, %bb.ct ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10512 ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10508 ], [ %.4.val1003611541, %bb.dd ], [ %.4.val1003611541, %bb.dl ], [ %.4.val1003611541, %bb.dn ], [ %.4.val1003611541, %bb.do ], [ %.4.val1003611541, %_PyThreadState_HasStackSpace.exit ], [ %.4.val1003611541, %bb.dm ], [ %.4.val1003611541, %bb.dx ], [ %.4.val1003611541, %bb.gw ], [ %.4.val1003611541, %bb.dw ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10528 ], [ %.4.val1003611541, %bb.ei ], [ %.4.val1003611541, %bb.eh ], [ %.4.val1003611541, %bb.es ], [ %.4.val1003611541, %bb.fn ], [ %.4.val1003611541, %bb.er ], [ %.4.val1003611541, %bb.eq ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10544 ], [ %.4.val1003611541, %bb.fd ], [ %.4.val1003611541, %bb.fb ], [ %.4.val1003611541, %bb.fc ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10559 ], [ %.4.val1003611541, %bb.fp ], [ %.4.val1003611541, %PyUnicode_READ_CHAR.exit ], [ %.4.val1003611541, %bb.ep ], [ %.4.val1003611541, %bb.fo ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10571 ], [ %.4.val1003611541, %bb.gk ], [ %.4.val1003611541, %bb.gj ], [ %.4.val1003611541, %bb.gx ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10594 ], [ %.4.val1003611541, %_PyLong_CheckExactAndCompact.exit10590 ], [ %.4.val1003611541, %bb.gv ], [ %.4.val1003611541, %bb.ag ], [ %.4.val1003611541, %bb.ah ], [ %.4.val1003611541, %bb.cr ], [ %.4.val1003611541, %bb.cs ], [ %.4.val1003611541, %bb.dp ], [ %.4.val1003611541, %bb.dv ] ; 4 uses
  %.09035 = phi ptr [ %i.jr, %bb.bn ], [ %i.jr, %bb.bm ], [ %i.jr, %bb.bl ], [ %i.bv, %bb.m ], [ %i.dm, %bb.v ], [ %i.dm, %bb.u ], [ %i.fg, %bb.ai ], [ %i.fg, %_PyLong_CheckExactAndCompact.exit10475 ], [ %i.fg, %_PyLong_CheckExactAndCompact.exit ], [ %i.gp, %bb.at ], [ %i.gp, %bb.as ], [ %i.ie, %bb.be ], [ %i.ly, %bb.cg ], [ %i.ly, %bb.cf ], [ %i.ns, %bb.ct ], [ %i.ns, %_PyLong_CheckExactAndCompact.exit10512 ], [ %i.ns, %_PyLong_CheckExactAndCompact.exit10508 ], [ %i.pb, %bb.dd ], [ %i.qo, %bb.dl ], [ %i.qo, %bb.dn ], [ %i.qo, %bb.do ], [ %i.qo, %_PyThreadState_HasStackSpace.exit ], [ %i.qo, %bb.dm ], [ %i.tr, %bb.dx ], [ %i.aes, %bb.gw ], [ %i.tr, %bb.dw ], [ %i.tr, %_PyLong_CheckExactAndCompact.exit10528 ], [ %i.vl, %bb.ei ], [ %i.vl, %bb.eh ], [ %i.wy, %bb.es ], [ %i.aan, %bb.fn ], [ %i.wy, %bb.er ], [ %i.wy, %bb.eq ], [ %i.wy, %_PyLong_CheckExactAndCompact.exit10544 ], [ %i.yu, %bb.fd ], [ %i.yu, %bb.fb ], [ %i.yu, %bb.fc ], [ %i.yu, %_PyLong_CheckExactAndCompact.exit10559 ], [ %i.aan, %bb.fp ], [ %i.aan, %PyUnicode_READ_CHAR.exit ], [ %i.wy, %bb.ep ], [ %i.aan, %bb.fo ], [ %i.aan, %_PyLong_CheckExactAndCompact.exit10571 ], [ %i.acy, %bb.gk ], [ %i.acy, %bb.gj ], [ %i.aes, %bb.gx ], [ %i.aes, %_PyLong_CheckExactAndCompact.exit10594 ], [ %i.aes, %_PyLong_CheckExactAndCompact.exit10590 ], [ %i.aes, %bb.gv ], [ %i.fg, %bb.ag ], [ %i.fg, %bb.ah ], [ %i.ns, %bb.cr ], [ %i.ns, %bb.cs ], [ %i.qo, %bb.dp ], [ %i.tr, %bb.dv ] ; 3 uses
  %i.bw = getelementptr i8, ptr %.09040, i64 -8
  %.sroa.04146.0.copyload = load i64, ptr %i.bw, align 8, !tbaa !34 ; 4 uses
  %i.bx = getelementptr i8, ptr %.09040, i64 -16
  %.sroa.04149.0.copyload = load i64, ptr %i.bx, align 8, !tbaa !34 ; 5 uses
  %i.by = getelementptr i8, ptr %.32, i64 2       ; 2 uses
  %.val10342 = load i16, ptr %i.by, align 2, !tbaa !66 ; 2 uses
  %i.bz = icmp ult i16 %.val10342, 7
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_PyLong_CheckExactAndCompact.exit.thread
  %i.ca = getelementptr i8, ptr %.4, i64 64       ; 2 uses
  store ptr %.09040, ptr %i.ca, align 8, !tbaa !65
  %i.cb = getelementptr i8, ptr %.4, i64 80
  call void @_Py_Specialize_BinaryOp(i64 %.sroa.04149.0.copyload, i64 %.sroa.04146.0.copyload, ptr noundef nonnull %.32, i32 noundef %.09034, ptr noundef %i.cb) #8
  %.4.val10313 = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.cc = load i8, ptr %.32, align 2, !tbaa !34
  %i.cd = zext i8 %i.cc to i64
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.n, %PyStackRef_XCLOSE.exit10465, %PyStackRef_CLOSE_SPECIALIZED.exit10470, %PyStackRef_CLOSE_SPECIALIZED.exit10481, %PyStackRef_CLOSE_SPECIALIZED.exit10487, %PyStackRef_XCLOSE.exit10491, %bb.ce, %PyStackRef_CLOSE_SPECIALIZED.exit10504, %PyStackRef_CLOSE_SPECIALIZED.exit10518, %PyStackRef_XCLOSE.exit10522, %_PyFrame_PushUnchecked.exit, %PyStackRef_XCLOSE.exit10536, %PyStackRef_XCLOSE.exit10540, %PyStackRef_CLOSE_SPECIALIZED.exit10555, %PyStackRef_XCLOSE.exit10567, %PyStackRef_CLOSE_SPECIALIZED.exit10580, %PyStackRef_CLOSE_SPECIALIZED.exit10586, %PyStackRef_CLOSE_SPECIALIZED.exit10600, %bb.ib, %bb.ik, %bb.im, %bb.ip, %._crit_edge12118.thread, %bb.jl, %bb.jo, %bb.ju, %bb.jw, %bb.jz, %check_periodics.exit.thread, %bb.le, %._crit_edge12105, %bb.mi, %check_periodics.exit10667.thread, %check_periodics.exit10670.thread, %check_periodics.exit10673.thread, %bb.nh, %check_periodics.exit10693.thread, %bb.or, %bb.ou, %check_periodics.exit10720.thread, %bb.qa, %bb.qg, %PyStackRef_CLOSE.exit10732, %bb.qt, %bb.rm, %bb.sc, %check_periodics.exit10760.thread, %bb.sq, %PyStackRef_XCLOSE.exit10767, %PyStackRef_XCLOSE.exit10776, %check_periodics.exit10779.thread, %check_periodics.exit10782.thread, %check_periodics.exit10789.thread, %bb.uy, %check_periodics.exit10801.thread, %._crit_edge12101, %bb.vr, %bb.vy, %bb.wf, %PyStackRef_XCLOSE.exit10819, %bb.xa, %PyStackRef_CLOSE.exit10829, %PyStackRef_CLOSE.exit10838, %bb.ya, %bb.yp, %PyStackRef_CLOSE_SPECIALIZED.exit10855, %PyStackRef_CLOSE_SPECIALIZED.exit10869, %PyStackRef_CLOSE_SPECIALIZED.exit10875, %bb.zz, %PyStackRef_XCLOSE.exit10879, %PyStackRef_XCLOSE.exit10883, %PyStackRef_XCLOSE.exit10887, %bb.aax, %PyStackRef_DUP.exit10891, %._crit_edge12109, %bb.abh, %bb.abp, %PyStackRef_XCLOSE.exit10898, %bb.aby, %bb.acd, %bb.acj, %PyStackRef_CLOSE.exit10906, %PyStackRef_CLOSE.exit10910, %PyStackRef_CLOSE.exit10914, %PyStackRef_CLOSE.exit10923, %PyStackRef_CLOSE.exit10925, %bb.adz, %bb.aea, %bb.aeg, %bb.aem, %bb.aeo, %bb.aer, %bb.aes, %bb.aew, %bb.aez, %_PyStackRef_FromPyObjectNew.exit10934, %bb.aff, %bb.afh, %bb.afk, %_PyStackRef_FromPyObjectNew.exit10937, %bb.agd, %bb.agf, %bb.agj, %bb.agq, %bb.agt, %bb.ahc, %bb.ahh, %bb.ahq, %check_periodics.exit10969.thread, %check_periodics.exit10980.thread, %bb.akk, %PyStackRef_CLOSE.exit10998, %PyStackRef_CLOSE.exit11010, %PyStackRef_CLOSE.exit11013, %bb.alp, %bb.als, %bb.alw, %bb.ama, %bb.amf, %bb.aml, %bb.amo, %bb.anu, %bb.anx, %PyStackRef_CLOSE.exit11030, %bb.aok, %bb.aot, %bb.apb, %bb.aph, %bb.apl, %bb.apo, %PyStackRef_MakeHeapSafe.exit, %bb.apu, %PyStackRef_MakeHeapSafe.exit11041, %PyStackRef_XCLOSE.exit11048, %bb.aqh, %check_periodics.exit11051.thread, %check_periodics.exit11054.thread, %bb.aqk, %check_periodics.exit11057.thread, %bb.aqm, %bb.aqr, %PyStackRef_CLOSE.exit11068, %bb.are, %bb.ark, %bb.art, %bb.asd, %bb.asw, %_PyStackRef_FromPyObjectNew.exit11097, %_PyStackRef_FromPyObjectNew.exit11100, %_PyStackRef_FromPyObjectNew.exit11104, %bb.atv, %_PyStackRef_FromPyObjectNew.exit11114, %_PyStackRef_FromPyObjectNew.exit11120, %_PyStackRef_FromPyObjectNew.exit11125, %bb.avb, %bb.avo, %bb.avs, %_PyStackRef_FromPyObjectNew.exit11138, %bb.avw, %bb.awa, %PyStackRef_DUP.exit11141, %bb.awd, %bb.awe, %bb.awf, %PyStackRef_DUP.exit11143, %PyStackRef_DUP.exit11147, %PyStackRef_CLOSE.exit11150, %bb.axv, %bb.axy, %bb.ayc, %bb.aym, %bb.ayu, %_PyStackRef_FromPyObjectNew.exit11163, %bb.bab, %bb.bac, %bb.bag, %bb.baj, %bb.baz, %bb.bbj, %PyStackRef_CLOSE.exit11181, %PyStackRef_XCLOSE.exit11183, %bb.bcd, %bb.bcl, %_PyErr_Occurred.exit11200.thread, %bb.bcw, %PyStackRef_TYPE.exit11203, %PyStackRef_TYPE.exit11206, %bb.bdb, %bb.bdc, %bb.bdn, %PyStackRef_CLOSE.exit11211, %bb.bdt, %bb.bdz, %bb.bef, %bb.bei, %PyStackRef_XCLOSE.exit11217, %_Py_NewRef.exit11218, %bb.beq, %bb.bim, %check_periodics.exit11248.thread, %bb.bis, %_PyFrame_Copy.exit, %PyStackRef_MakeHeapSafe.exit11253, %bb.bjb, %PyStackRef_CLOSE.exit11263, %PyStackRef_MakeHeapSafe.exit11269, %bb.bkr, %bb.bkw, %PyStackRef_AsPyObjectSteal.exit11275, %bb.ble, %bb.blh, %bb.bln, %PyStackRef_XCLOSE.exit11288, %PyStackRef_XCLOSE.exit11293, %PyStackRef_XCLOSE.exit11299, %PyCell_SetTakeRef.exit, %PyStackRef_XCLOSE.exit11306, %PyStackRef_XCLOSE.exit11310, %PyStackRef_XCLOSE.exit11314, %bb.boe, %bb.bop, %bb.bpi, %bb.bpk, %bb.bps, %PyStackRef_XCLOSE.exit11346, %PyStackRef_XCLOSE.exit11358, %bb.bra, %bb.brc, %bb.brg, %PyStackRef_XCLOSE.exit11362, %bb.brm, %PyStackRef_CLOSE_SPECIALIZED.exit11371, %PyStackRef_XCLOSE.exit11373, %bb.bry, %PyStackRef_CLOSE_SPECIALIZED.exit11376, %PyStackRef_XCLOSE.exit11378, %PyStackRef_XCLOSE.exit11380, %bb.bso, %bb.bsy, %bb.btb, %bb.btl, %PyStackRef_CLOSE.exit11391, %PyStackRef_CLOSE.exit11396, %PyStackRef_CLOSE.exit11404, %bb.buy, %PyStackRef_MakeHeapSafe.exit11409
  %.4.val1003611541.be = phi ptr [ %.4.val10313, %bb.n ], [ %.4.val10310, %PyStackRef_XCLOSE.exit10465 ], [ %i.dn, %PyStackRef_CLOSE_SPECIALIZED.exit10470 ], [ %i.fh, %PyStackRef_CLOSE_SPECIALIZED.exit10481 ], [ %i.gq, %PyStackRef_CLOSE_SPECIALIZED.exit10487 ], [ %.4.val10306, %PyStackRef_XCLOSE.exit10491 ], [ %i.lt, %bb.ce ], [ %i.lz, %PyStackRef_CLOSE_SPECIALIZED.exit10504 ], [ %i.nt, %PyStackRef_CLOSE_SPECIALIZED.exit10518 ], [ %.4.val10301, %PyStackRef_XCLOSE.exit10522 ], [ %.val10300, %_PyFrame_PushUnchecked.exit ], [ %.4.val10299, %PyStackRef_XCLOSE.exit10536 ], [ %.4.val10296, %PyStackRef_XCLOSE.exit10540 ], [ %i.wz, %PyStackRef_CLOSE_SPECIALIZED.exit10555 ], [ %.4.val10295, %PyStackRef_XCLOSE.exit10567 ], [ %i.aao, %PyStackRef_CLOSE_SPECIALIZED.exit10580 ], [ %i.acz, %PyStackRef_CLOSE_SPECIALIZED.exit10586 ], [ %i.aet, %PyStackRef_CLOSE_SPECIALIZED.exit10600 ], [ %i.aik, %bb.ib ], [ %i.akm, %bb.ik ], [ %i.ald, %bb.im ], [ %i.alu, %bb.ip ], [ %i.anx, %._crit_edge12118.thread ], [ %i.api, %bb.jl ], [ %i.aqe, %bb.jo ], [ %i.arl, %bb.ju ], [ %i.asa, %bb.jw ], [ %.4.val10273, %bb.jz ], [ %.4.val1026911452, %check_periodics.exit.thread ], [ %.val10263, %bb.le ], [ %.val10261, %._crit_edge12105 ], [ %.val10258, %bb.mi ], [ %.4.val1025611456, %check_periodics.exit10667.thread ], [ %.4.val1025411460, %check_periodics.exit10670.thread ], [ %.4.val1025211464, %check_periodics.exit10673.thread ], [ %.4.val1024811468, %bb.nh ], [ %.4.val1024011472, %check_periodics.exit10693.thread ], [ %.val10235, %bb.or ], [ %.4.val10234, %bb.ou ], [ %.4.val1022511476, %check_periodics.exit10720.thread ], [ %i.bxw, %bb.qa ], [ %i.bzf, %bb.qg ], [ %i.cau, %PyStackRef_CLOSE.exit10732 ], [ %.4.val10217, %bb.qt ], [ %i.ceu, %bb.rm ], [ %.val10209, %bb.sc ], [ %.4.val1020711482, %check_periodics.exit10760.thread ], [ %.val10204, %bb.sq ], [ %.4.val10201, %PyStackRef_XCLOSE.exit10767 ], [ %.4.val10199, %PyStackRef_XCLOSE.exit10776 ], [ %.4.val1019711488, %check_periodics.exit10779.thread ], [ %.4.val1019511492, %check_periodics.exit10782.thread ], [ %.4.val1019111496, %check_periodics.exit10789.thread ], [ %.4.val1018611500, %bb.uy ], [ %.4.val1018411504, %check_periodics.exit10801.thread ], [ %.val10183, %._crit_edge12101 ], [ %.val10181, %bb.vr ], [ %.4.val1017811508, %bb.vy ], [ %.4.val1017511512, %bb.wf ], [ %.4.val10174, %PyStackRef_XCLOSE.exit10819 ], [ %i.djy, %bb.xa ], [ %i.dku, %PyStackRef_CLOSE.exit10829 ], [ %i.dmj, %PyStackRef_CLOSE.exit10838 ], [ %.4.val10164, %bb.ya ], [ %i.dpf, %bb.yp ], [ %i.dpl, %PyStackRef_CLOSE_SPECIALIZED.exit10855 ], [ %i.drb, %PyStackRef_CLOSE_SPECIALIZED.exit10869 ], [ %i.dsy, %PyStackRef_CLOSE_SPECIALIZED.exit10875 ], [ %.4.val10161, %bb.zz ], [ %.4.val10158, %PyStackRef_XCLOSE.exit10879 ], [ %.4.val10155, %PyStackRef_XCLOSE.exit10883 ], [ %.4.val10152, %PyStackRef_XCLOSE.exit10887 ], [ %i.dyt, %bb.aax ], [ %i.dzg, %PyStackRef_DUP.exit10891 ], [ %.4.val1003611541, %._crit_edge12109 ], [ %.4.val10148, %bb.abh ], [ %.4.val10146, %bb.abp ], [ %.4.val10144, %PyStackRef_XCLOSE.exit10898 ], [ %.4.val10143, %bb.aby ], [ %.4.val10140, %bb.acd ], [ %i.efs, %bb.acj ], [ %.4.val10134, %PyStackRef_CLOSE.exit10906 ], [ %.4.val10129, %PyStackRef_CLOSE.exit10910 ], [ %i.ejh, %PyStackRef_CLOSE.exit10914 ], [ %.4.val10126, %PyStackRef_CLOSE.exit10923 ], [ %.4.val10125, %PyStackRef_CLOSE.exit10925 ], [ %i.elj, %bb.adz ], [ %.4.val1003611541, %bb.aea ], [ %i.enc, %bb.aeg ], [ %i.eoi, %bb.aem ], [ %.4.val10120, %bb.aeo ], [ %.4.val10119, %bb.aer ], [ %i.epn, %bb.aes ], [ %.val10118, %bb.aew ], [ %.4.val1003611541, %bb.aez ], [ %i.erw, %_PyStackRef_FromPyObjectNew.exit10934 ], [ %.4.val1003611541, %bb.aff ], [ %i.etd, %bb.afh ], [ %.4.val1003611541, %bb.afk ], [ %i.euf, %_PyStackRef_FromPyObjectNew.exit10937 ], [ %i.ewo, %bb.agd ], [ %i.exg, %bb.agf ], [ %i.eye, %bb.agj ], [ %i.ezl, %bb.agq ], [ %i.faf, %bb.agt ], [ %.199059, %bb.ahc ], [ %i.fcs, %bb.ahh ], [ %i.fet, %bb.ahq ], [ %.4.val1009411522, %check_periodics.exit10969.thread ], [ %.4.val1008211526, %check_periodics.exit10980.thread ], [ %i.fpo, %bb.akk ], [ %i.fqv, %PyStackRef_CLOSE.exit10998 ], [ %.4.val10072, %PyStackRef_CLOSE.exit11010 ], [ %.4.val10070, %PyStackRef_CLOSE.exit11013 ], [ %.4.val10069, %bb.alp ], [ %i.fuo, %bb.als ], [ %.4.val10067, %bb.alw ], [ %.309070, %bb.ama ], [ %.319071, %bb.amf ], [ %.4.val10063, %bb.aml ], [ %.329072, %bb.amo ], [ %i.gbq, %bb.anu ], [ %.35, %bb.anx ], [ %.4.val10052, %PyStackRef_CLOSE.exit11030 ], [ %i.gdr, %bb.aok ], [ %i.gev, %bb.aot ], [ %.39, %bb.apb ], [ %i.ggt, %bb.aph ], [ %.4.val10045, %bb.apl ], [ %.4.val10043, %bb.apo ], [ %i.gjc, %PyStackRef_MakeHeapSafe.exit ], [ %.4.val10040, %bb.apu ], [ %i.gkn, %PyStackRef_MakeHeapSafe.exit11041 ], [ %.4.val10037, %PyStackRef_XCLOSE.exit11048 ], [ %.4.val1003611541, %bb.aqh ], [ %.4.val1003611543, %check_periodics.exit11051.thread ], [ %.4.val1003511547, %check_periodics.exit11054.thread ], [ %.4.val1003611541, %bb.aqk ], [ %.4.val1003411551, %check_periodics.exit11057.thread ], [ %.4.val1003611541, %bb.aqm ], [ %i.gog, %bb.aqr ], [ %.4.val10029, %PyStackRef_CLOSE.exit11068 ], [ %.4.val10028, %bb.are ], [ %i.gsi, %bb.ark ], [ %i.gtl, %bb.art ], [ %i.gur, %bb.asd ], [ %i.gyb, %bb.asw ], [ %i.gyz, %_PyStackRef_FromPyObjectNew.exit11097 ], [ %i.gzs, %_PyStackRef_FromPyObjectNew.exit11100 ], [ %i.hav, %_PyStackRef_FromPyObjectNew.exit11104 ], [ %i.hcn, %bb.atv ], [ %i.hdm, %_PyStackRef_FromPyObjectNew.exit11114 ], [ %i.hev, %_PyStackRef_FromPyObjectNew.exit11120 ], [ %.val10018, %_PyStackRef_FromPyObjectNew.exit11125 ], [ %i.hhq, %bb.avb ], [ %i.hju, %bb.avo ], [ %i.hkp, %bb.avs ], [ %i.hlf, %_PyStackRef_FromPyObjectNew.exit11138 ], [ %i.hlx, %bb.avw ], [ %i.hmy, %bb.awa ], [ %i.hnm, %PyStackRef_DUP.exit11141 ], [ %i.hnv, %bb.awd ], [ %i.hog, %bb.awe ], [ %i.hoy, %bb.awf ], [ %i.hpt, %PyStackRef_DUP.exit11143 ], [ %i.hqr, %PyStackRef_DUP.exit11147 ], [ %i.hsj, %PyStackRef_CLOSE.exit11150 ], [ %i.hvr, %bb.axv ], [ %.4.val9998, %bb.axy ], [ %i.hxk, %bb.ayc ], [ %i.hzg, %bb.aym ], [ %i.iar, %bb.ayu ], [ %i.ibh, %_PyStackRef_FromPyObjectNew.exit11163 ], [ %i.idt, %bb.bab ], [ %i.iee, %bb.bac ], [ %.4.val9989, %bb.bag ], [ %.4.val9986, %bb.baj ], [ %i.ihv, %bb.baz ], [ %i.iju, %bb.bbj ], [ %.4.val9979, %PyStackRef_CLOSE.exit11181 ], [ %.4.val9978, %PyStackRef_XCLOSE.exit11183 ], [ %i.iof, %bb.bcd ], [ %i.ipi, %bb.bcl ], [ %i.iqy, %_PyErr_Occurred.exit11200.thread ], [ %i.irt, %bb.bcw ], [ %i.isi, %PyStackRef_TYPE.exit11203 ], [ %i.isx, %PyStackRef_TYPE.exit11206 ], [ %.4.val1003611541, %bb.bdb ], [ %.4.val1003611541, %bb.bdc ], [ %i.iuj, %bb.bdn ], [ %.4.val9971, %PyStackRef_CLOSE.exit11211 ], [ %i.ivb, %bb.bdt ], [ %i.iwo, %bb.bdz ], [ %i.ixp, %bb.bef ], [ %i.ixv, %bb.bei ], [ %.4.val9968, %PyStackRef_XCLOSE.exit11217 ], [ %i.izn, %_Py_NewRef.exit11218 ], [ %i.izt, %bb.beq ], [ %.4.val9966, %bb.bim ], [ %.54, %check_periodics.exit11248.thread ], [ %.4.val1003611541, %bb.bis ], [ %i.jna, %_PyFrame_Copy.exit ], [ %i.joa, %PyStackRef_MakeHeapSafe.exit11253 ], [ %.4.val9961, %bb.bjb ], [ %i.jri, %PyStackRef_CLOSE.exit11263 ], [ %.val9953, %PyStackRef_MakeHeapSafe.exit11269 ], [ %.58, %bb.bkr ], [ %i.jvd, %bb.bkw ], [ %i.jvj, %PyStackRef_AsPyObjectSteal.exit11275 ], [ %.4.val9945, %bb.ble ], [ %.4.val9944, %bb.blh ], [ %i.jyn, %bb.bln ], [ %.4.val9941, %PyStackRef_XCLOSE.exit11288 ], [ %.4.val9939, %PyStackRef_XCLOSE.exit11293 ], [ %.4.val9936, %PyStackRef_XCLOSE.exit11299 ], [ %i.kgf, %PyCell_SetTakeRef.exit ], [ %.4.val9934, %PyStackRef_XCLOSE.exit11306 ], [ %.4.val9933, %PyStackRef_XCLOSE.exit11310 ], [ %.4.val9931, %PyStackRef_XCLOSE.exit11314 ], [ %.4.val9929, %bb.boe ], [ %.4.val9924, %bb.bop ], [ %i.knl, %bb.bpi ], [ %.4.val9920, %bb.bpk ], [ %i.kox, %bb.bps ], [ %.4.val9916, %PyStackRef_XCLOSE.exit11346 ], [ %.4.val9914, %PyStackRef_XCLOSE.exit11358 ], [ %.4.val1003611541, %bb.bra ], [ %.4.val9913, %bb.brc ], [ %i.ktz, %bb.brg ], [ %.4.val9910, %PyStackRef_XCLOSE.exit11362 ], [ %.4.val1003611541, %bb.brm ], [ %.4.val1003611541, %PyStackRef_CLOSE_SPECIALIZED.exit11371 ], [ %.4.val9909, %PyStackRef_XCLOSE.exit11373 ], [ %.4.val1003611541, %bb.bry ], [ %.4.val1003611541, %PyStackRef_CLOSE_SPECIALIZED.exit11376 ], [ %.4.val9907, %PyStackRef_XCLOSE.exit11378 ], [ %.4.val9905, %PyStackRef_XCLOSE.exit11380 ], [ %.4.val1003611541, %bb.bso ], [ %i.laz, %bb.bsy ], [ %.4.val9903, %bb.btb ], [ %i.lcj, %bb.btl ], [ %.4.val9901, %PyStackRef_CLOSE.exit11391 ], [ %.4.val9900, %PyStackRef_CLOSE.exit11396 ], [ %.4.val9899, %PyStackRef_CLOSE.exit11404 ], [ %i.lje, %bb.buy ], [ %i.lkh, %PyStackRef_MakeHeapSafe.exit11409 ]
  %.32.be = phi ptr [ %.32, %bb.n ], [ %.09035, %PyStackRef_XCLOSE.exit10465 ], [ %i.dm, %PyStackRef_CLOSE_SPECIALIZED.exit10470 ], [ %i.fg, %PyStackRef_CLOSE_SPECIALIZED.exit10481 ], [ %i.gp, %PyStackRef_CLOSE_SPECIALIZED.exit10487 ], [ %i.ie, %PyStackRef_XCLOSE.exit10491 ], [ %i.jr, %bb.ce ], [ %i.ly, %PyStackRef_CLOSE_SPECIALIZED.exit10504 ], [ %i.ns, %PyStackRef_CLOSE_SPECIALIZED.exit10518 ], [ %i.pb, %PyStackRef_XCLOSE.exit10522 ], [ %i.th, %_PyFrame_PushUnchecked.exit ], [ %i.tr, %PyStackRef_XCLOSE.exit10536 ], [ %i.vl, %PyStackRef_XCLOSE.exit10540 ], [ %i.wy, %PyStackRef_CLOSE_SPECIALIZED.exit10555 ], [ %i.yu, %PyStackRef_XCLOSE.exit10567 ], [ %i.aan, %PyStackRef_CLOSE_SPECIALIZED.exit10580 ], [ %i.acy, %PyStackRef_CLOSE_SPECIALIZED.exit10586 ], [ %i.aes, %PyStackRef_CLOSE_SPECIALIZED.exit10600 ], [ %i.agb, %bb.ib ], [ %i.aip, %bb.ik ], [ %i.akr, %bb.im ], [ %i.ali, %bb.ip ], [ %i.alz, %._crit_edge12118.thread ], [ %i.aoc, %bb.jl ], [ %i.apn, %bb.jo ], [ %i.aqj, %bb.ju ], [ %i.arq, %bb.jw ], [ %.32, %bb.jz ], [ %.19036, %check_periodics.exit.thread ], [ %i.azh, %bb.le ], [ %i.bdm, %._crit_edge12105 ], [ %i.bgi, %bb.mi ], [ %i.bgn, %check_periodics.exit10667.thread ], [ %i.bia, %check_periodics.exit10670.thread ], [ %i.bjm, %check_periodics.exit10673.thread ], [ %i.bky, %bb.nh ], [ %i.bna, %check_periodics.exit10693.thread ], [ %i.bsl, %bb.or ], [ %.32, %bb.ou ], [ %.29037, %check_periodics.exit10720.thread ], [ %i.bxa, %bb.qa ], [ %i.byb, %bb.qg ], [ %i.bzk, %PyStackRef_CLOSE.exit10732 ], [ %.32, %bb.qt ], [ %.39038, %bb.rm ], [ %i.cia, %bb.sc ], [ %i.cif, %check_periodics.exit10760.thread ], [ %i.clv, %bb.sq ], [ %i.cma, %PyStackRef_XCLOSE.exit10767 ], [ %i.cnp, %PyStackRef_XCLOSE.exit10776 ], [ %i.cpj, %check_periodics.exit10779.thread ], [ %i.crg, %check_periodics.exit10782.thread ], [ %i.ctd, %check_periodics.exit10789.thread ], [ %i.cvj, %bb.uy ], [ %i.cyd, %check_periodics.exit10801.thread ], [ %i.dck, %._crit_edge12101 ], [ %i.deh, %bb.vr ], [ %i.dem, %bb.vy ], [ %i.dfr, %bb.wf ], [ %i.dgw, %PyStackRef_XCLOSE.exit10819 ], [ %i.dhu, %bb.xa ], [ %i.dkd, %PyStackRef_CLOSE.exit10829 ], [ %i.dkz, %PyStackRef_CLOSE.exit10838 ], [ %.32, %bb.ya ], [ %.49039, %bb.yp ], [ %i.dpk, %PyStackRef_CLOSE_SPECIALIZED.exit10855 ], [ %i.dra, %PyStackRef_CLOSE_SPECIALIZED.exit10869 ], [ %i.dsx, %PyStackRef_CLOSE_SPECIALIZED.exit10875 ], [ %.32, %bb.zz ], [ %.5, %PyStackRef_XCLOSE.exit10879 ], [ %i.dvn, %PyStackRef_XCLOSE.exit10883 ], [ %i.dws, %PyStackRef_XCLOSE.exit10887 ], [ %i.dxx, %bb.aax ], [ %i.dyz, %PyStackRef_DUP.exit10891 ], [ %i.dzl, %._crit_edge12109 ], [ %i.eap, %bb.abh ], [ %i.ebn, %bb.abp ], [ %i.ecn, %PyStackRef_XCLOSE.exit10898 ], [ %i.edj, %bb.aby ], [ %i.eee, %bb.acd ], [ %i.eez, %bb.acj ], [ %i.efx, %PyStackRef_CLOSE.exit10906 ], [ %i.ehe, %PyStackRef_CLOSE.exit10910 ], [ %i.ein, %PyStackRef_CLOSE.exit10914 ], [ %i.eki, %PyStackRef_CLOSE.exit10923 ], [ %i.eku, %PyStackRef_CLOSE.exit10925 ], [ %i.eli, %bb.adz ], [ %i.elx, %bb.aea ], [ %i.emg, %bb.aeg ], [ %i.enh, %bb.aem ], [ %.32, %bb.aeo ], [ %i.epf, %bb.aer ], [ %.6, %bb.aes ], [ %i.eqt, %bb.aew ], [ %i.eri, %bb.aez ], [ %i.eqy, %_PyStackRef_FromPyObjectNew.exit10934 ], [ %i.esl, %bb.aff ], [ %i.esb, %bb.afh ], [ %i.ets, %bb.afk ], [ %i.eti, %_PyStackRef_FromPyObjectNew.exit10937 ], [ %i.euk, %bb.agd ], [ %i.ewt, %bb.agf ], [ %i.exl, %bb.agj ], [ %i.eyj, %bb.agq ], [ %i.ezq, %bb.agt ], [ %i.fak, %bb.ahc ], [ %i.fbt, %bb.ahh ], [ %i.fcx, %bb.ahq ], [ %i.fey, %check_periodics.exit10969.thread ], [ %i.fip, %check_periodics.exit10980.thread ], [ %i.flz, %bb.akk ], [ %.7, %PyStackRef_CLOSE.exit10998 ], [ %i.frw, %PyStackRef_CLOSE.exit11010 ], [ %i.fsu, %PyStackRef_CLOSE.exit11013 ], [ %i.fud, %bb.alp ], [ %.8, %bb.als ], [ %.32, %bb.alw ], [ %.9, %bb.ama ], [ %.10, %bb.amf ], [ %i.fxk, %bb.aml ], [ %.11, %bb.amo ], [ %i.fxx, %bb.anu ], [ %.12, %bb.anx ], [ %.13, %PyStackRef_CLOSE.exit11030 ], [ %.14, %bb.aok ], [ %.15, %bb.aot ], [ %.16, %bb.apb ], [ %.17, %bb.aph ], [ %.32, %bb.apl ], [ %spec.select, %bb.apo ], [ %i.gjb, %PyStackRef_MakeHeapSafe.exit ], [ %i.gjm, %bb.apu ], [ %i.gke, %PyStackRef_MakeHeapSafe.exit11041 ], [ %i.gld, %PyStackRef_XCLOSE.exit11048 ], [ %.32, %bb.aqh ], [ %i.gmn, %check_periodics.exit11051.thread ], [ %i.gmz, %check_periodics.exit11054.thread ], [ %i.gnh, %bb.aqk ], [ %i.gnt, %check_periodics.exit11057.thread ], [ %i.goa, %bb.aqm ], [ %i.gof, %bb.aqr ], [ %i.gpg, %PyStackRef_CLOSE.exit11068 ], [ %.32, %bb.are ], [ %.19, %bb.ark ], [ %i.gsn, %bb.art ], [ %i.gtq, %bb.asd ], [ %i.gww, %bb.asw ], [ %i.gyg, %_PyStackRef_FromPyObjectNew.exit11097 ], [ %i.gze, %_PyStackRef_FromPyObjectNew.exit11100 ], [ %i.gzx, %_PyStackRef_FromPyObjectNew.exit11104 ], [ %i.hba, %bb.atv ], [ %i.hcs, %_PyStackRef_FromPyObjectNew.exit11114 ], [ %i.hdr, %_PyStackRef_FromPyObjectNew.exit11120 ], [ %16, %_PyStackRef_FromPyObjectNew.exit11125 ], [ %i.hgq, %bb.avb ], [ %i.hhv, %bb.avo ], [ %i.hjz, %bb.avs ], [ %i.hku, %_PyStackRef_FromPyObjectNew.exit11138 ], [ %i.hlk, %bb.avw ], [ %i.hmc, %bb.awa ], [ %i.hnd, %PyStackRef_DUP.exit11141 ], [ %i.hnr, %bb.awd ], [ %i.hoa, %bb.awe ], [ %i.hol, %bb.awf ], [ %i.hpd, %PyStackRef_DUP.exit11143 ], [ %i.hpy, %PyStackRef_DUP.exit11147 ], [ %i.hqw, %PyStackRef_CLOSE.exit11150 ], [ %i.hso, %bb.axv ], [ %.32, %bb.axy ], [ %.20, %bb.ayc ], [ %i.hxp, %bb.aym ], [ %i.hzl, %bb.ayu ], [ %i.iaw, %_PyStackRef_FromPyObjectNew.exit11163 ], [ %i.ibm, %bb.bab ], [ %i.idy, %bb.bac ], [ %i.iej, %bb.bag ], [ %.32, %bb.baj ], [ %.21, %bb.baz ], [ %i.iia, %bb.bbj ], [ %i.ijz, %PyStackRef_CLOSE.exit11181 ], [ %i.imj, %PyStackRef_XCLOSE.exit11183 ], [ %i.ini, %bb.bcd ], [ %i.iok, %bb.bcl ], [ %i.ipn, %_PyErr_Occurred.exit11200.thread ], [ %i.ird, %bb.bcw ], [ %i.iry, %PyStackRef_TYPE.exit11203 ], [ %i.isn, %PyStackRef_TYPE.exit11206 ], [ %i.itc, %bb.bdb ], [ %i.ith, %bb.bdc ], [ %i.itm, %bb.bdn ], [ %i.iuo, %PyStackRef_CLOSE.exit11211 ], [ %i.ivn, %bb.bdt ], [ %i.iwn, %bb.bdz ], [ %i.ixo, %bb.bef ], [ %i.iyh, %bb.bei ], [ %i.iym, %PyStackRef_XCLOSE.exit11217 ], [ %i.iyy, %_Py_NewRef.exit11218 ], [ %i.izs, %bb.beq ], [ %.32, %bb.bim ], [ %.22, %check_periodics.exit11248.thread ], [ %i.jjt, %bb.bis ], [ %i.jmx, %_PyFrame_Copy.exit ], [ %i.jnz, %PyStackRef_MakeHeapSafe.exit11253 ], [ %.32, %bb.bjb ], [ %.24, %PyStackRef_CLOSE.exit11263 ], [ %i.jsw, %PyStackRef_MakeHeapSafe.exit11269 ], [ %i.jtb, %bb.bkr ], [ %i.jun, %bb.bkw ], [ %i.jvi, %PyStackRef_AsPyObjectSteal.exit11275 ], [ %i.jwc, %bb.ble ], [ %.32, %bb.blh ], [ %.25, %bb.bln ], [ %i.jys, %PyStackRef_XCLOSE.exit11288 ], [ %i.kbd, %PyStackRef_XCLOSE.exit11293 ], [ %i.kcr, %PyStackRef_XCLOSE.exit11299 ], [ %i.kfk, %PyCell_SetTakeRef.exit ], [ %i.kgk, %PyStackRef_XCLOSE.exit11306 ], [ %i.kgz, %PyStackRef_XCLOSE.exit11310 ], [ %i.khx, %PyStackRef_XCLOSE.exit11314 ], [ %i.kix, %bb.boe ], [ %i.kjx, %bb.bop ], [ %i.klm, %bb.bpi ], [ %.32, %bb.bpk ], [ %.26, %bb.bps ], [ %i.kpc, %PyStackRef_XCLOSE.exit11346 ], [ %i.kqp, %PyStackRef_XCLOSE.exit11358 ], [ %i.ksy, %bb.bra ], [ %.32, %bb.brc ], [ %.27, %bb.brg ], [ %i.kue, %PyStackRef_XCLOSE.exit11362 ], [ %i.kuw, %bb.brm ], [ %i.kvi, %PyStackRef_CLOSE_SPECIALIZED.exit11371 ], [ %i.kwd, %PyStackRef_XCLOSE.exit11373 ], [ %i.kwv, %bb.bry ], [ %i.kxc, %PyStackRef_CLOSE_SPECIALIZED.exit11376 ], [ %i.kxx, %PyStackRef_XCLOSE.exit11378 ], [ %i.kyu, %PyStackRef_XCLOSE.exit11380 ], [ %i.kzr, %bb.bso ], [ %i.kzy, %bb.bsy ], [ %.32, %bb.btb ], [ %.28, %bb.btl ], [ %i.lco, %PyStackRef_CLOSE.exit11391 ], [ %i.lep, %PyStackRef_CLOSE.exit11396 ], [ %i.lgp, %PyStackRef_CLOSE.exit11404 ], [ %i.lhw, %bb.buy ], [ %i.ljy, %PyStackRef_MakeHeapSafe.exit11409 ]
  %.09034.be = phi i32 [ %.09034, %bb.n ], [ %.sroa.24130.0.extract.trunc, %PyStackRef_XCLOSE.exit10465 ], [ %.sroa.24108.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10470 ], [ %.sroa.24087.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10481 ], [ %.sroa.24064.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10487 ], [ %.sroa.24035.0.extract.trunc, %PyStackRef_XCLOSE.exit10491 ], [ %.sroa.24006.0.extract.trunc, %bb.ce ], [ %.sroa.23984.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10504 ], [ %.sroa.23963.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10518 ], [ %.sroa.23940.0.extract.trunc, %PyStackRef_XCLOSE.exit10522 ], [ %.sroa.23916.0.extract.trunc, %_PyFrame_PushUnchecked.exit ], [ %.sroa.23889.0.extract.trunc, %PyStackRef_XCLOSE.exit10536 ], [ %.sroa.23865.0.extract.trunc, %PyStackRef_XCLOSE.exit10540 ], [ %.sroa.23836.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10555 ], [ %.sroa.23806.0.extract.trunc, %PyStackRef_XCLOSE.exit10567 ], [ %.sroa.23777.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10580 ], [ %.sroa.23755.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10586 ], [ %.sroa.23734.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10600 ], [ %.sroa.23683.0.extract.trunc, %bb.ib ], [ %.sroa.23667.0.extract.trunc, %bb.ik ], [ %.sroa.23660.0.extract.trunc, %bb.im ], [ %.sroa.23653.0.extract.trunc, %bb.ip ], [ %.sroa.23619.0.extract.trunc, %._crit_edge12118.thread ], [ %.sroa.23601.0.extract.trunc, %bb.jl ], [ %.sroa.23594.0.extract.trunc, %bb.jo ], [ %.sroa.23582.0.extract.trunc, %bb.ju ], [ %.sroa.23575.0.extract.trunc, %bb.jw ], [ %.09034, %bb.jz ], [ %.sroa.23521.0.extract.trunc, %check_periodics.exit.thread ], [ %.sroa.23483.0.extract.trunc, %bb.le ], [ %.sroa.23436.0.extract.trunc, %._crit_edge12105 ], [ %.sroa.23399.0.extract.trunc, %bb.mi ], [ %.sroa.23381.0.extract.trunc, %check_periodics.exit10667.thread ], [ %.sroa.23364.0.extract.trunc, %check_periodics.exit10670.thread ], [ %.sroa.23347.0.extract.trunc, %check_periodics.exit10673.thread ], [ %.sroa.23320.0.extract.trunc, %bb.nh ], [ %.sroa.23284.0.extract.trunc, %check_periodics.exit10693.thread ], [ %.sroa.23245.0.extract.trunc, %bb.or ], [ %.09034, %bb.ou ], [ %.sroa.23156.0.extract.trunc, %check_periodics.exit10720.thread ], [ %.sroa.23148.0.extract.trunc, %bb.qa ], [ %.sroa.23129.0.extract.trunc, %bb.qg ], [ %.sroa.23111.0.extract.trunc, %PyStackRef_CLOSE.exit10732 ], [ %.09034, %bb.qt ], [ %.sroa.23053.0.extract.trunc, %bb.rm ], [ %.sroa.23010.0.extract.trunc, %bb.sc ], [ %.sroa.22992.0.extract.trunc, %check_periodics.exit10760.thread ], [ %.sroa.22961.0.extract.trunc, %bb.sq ], [ %.sroa.22939.0.extract.trunc, %PyStackRef_XCLOSE.exit10767 ], [ %.sroa.22915.0.extract.trunc, %PyStackRef_XCLOSE.exit10776 ], [ %.sroa.22890.0.extract.trunc, %check_periodics.exit10779.thread ], [ %.sroa.22864.0.extract.trunc, %check_periodics.exit10782.thread ], [ %.sroa.22839.0.extract.trunc, %check_periodics.exit10789.thread ], [ %.sroa.22801.0.extract.trunc, %bb.uy ], [ %.sroa.22784.0.extract.trunc, %check_periodics.exit10801.thread ], [ %.sroa.22749.0.extract.trunc, %._crit_edge12101 ], [ %.sroa.22724.0.extract.trunc, %bb.vr ], [ %.sroa.22709.0.extract.trunc, %bb.vy ], [ %.sroa.22694.0.extract.trunc, %bb.wf ], [ %.sroa.22682.0.extract.trunc, %PyStackRef_XCLOSE.exit10819 ], [ %.sroa.22651.0.extract.trunc, %bb.xa ], [ %.sroa.22638.0.extract.trunc, %PyStackRef_CLOSE.exit10829 ], [ %.sroa.22612.0.extract.trunc, %PyStackRef_CLOSE.exit10838 ], [ %.09034, %bb.ya ], [ %.sroa.22568.0.extract.trunc, %bb.yp ], [ %.sroa.22541.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10855 ], [ %.sroa.22514.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10869 ], [ %.sroa.22490.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit10875 ], [ %.09034, %bb.zz ], [ %.sroa.22463.0.extract.trunc, %PyStackRef_XCLOSE.exit10879 ], [ %.sroa.22440.0.extract.trunc, %PyStackRef_XCLOSE.exit10883 ], [ %.sroa.22417.0.extract.trunc, %PyStackRef_XCLOSE.exit10887 ], [ %.sroa.22408.0.extract.trunc, %bb.aax ], [ %.sroa.22403.0.extract.trunc, %PyStackRef_DUP.exit10891 ], [ %.sroa.22391.0.extract.trunc, %._crit_edge12109 ], [ %.sroa.22385.0.extract.trunc, %bb.abh ], [ %.sroa.22370.0.extract.trunc, %bb.abp ], [ %.sroa.22366.0.extract.trunc, %PyStackRef_XCLOSE.exit10898 ], [ %.sroa.22360.0.extract.trunc, %bb.aby ], [ %.sroa.22352.0.extract.trunc, %bb.acd ], [ %.sroa.22338.0.extract.trunc, %bb.acj ], [ %.sroa.22326.0.extract.trunc, %PyStackRef_CLOSE.exit10906 ], [ %.sroa.22315.0.extract.trunc, %PyStackRef_CLOSE.exit10910 ], [ %.sroa.22298.0.extract.trunc, %PyStackRef_CLOSE.exit10914 ], [ %.sroa.22295.0.extract.trunc, %PyStackRef_CLOSE.exit10923 ], [ %.sroa.22289.0.extract.trunc, %PyStackRef_CLOSE.exit10925 ], [ %.sroa.22285.0.extract.trunc, %bb.adz ], [ %i.emd, %bb.aea ], [ %.sroa.22273.0.extract.trunc, %bb.aeg ], [ %.sroa.22256.0.extract.trunc, %bb.aem ], [ %.09034, %bb.aeo ], [ %.sroa.22242.0.extract.trunc, %bb.aer ], [ %.sroa.22240.0.extract.trunc, %bb.aes ], [ %.sroa.22224.0.extract.trunc, %bb.aew ], [ %.sroa.22210.0.extract.trunc, %bb.aez ], [ %.sroa.22205.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit10934 ], [ %.sroa.22197.0.extract.trunc, %bb.aff ], [ %.sroa.22186.0.extract.trunc, %bb.afh ], [ %.sroa.22172.0.extract.trunc, %bb.afk ], [ %.sroa.22166.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit10937 ], [ %.sroa.22136.0.extract.trunc, %bb.agd ], [ %.sroa.22129.0.extract.trunc, %bb.agf ], [ %.sroa.22121.0.extract.trunc, %bb.agj ], [ %.sroa.22105.0.extract.trunc, %bb.agq ], [ %.sroa.22096.0.extract.trunc, %bb.agt ], [ %.sroa.22078.0.extract.trunc, %bb.ahc ], [ %.sroa.22067.0.extract.trunc, %bb.ahh ], [ %.sroa.22046.0.extract.trunc, %bb.ahq ], [ %.sroa.21991.0.extract.trunc, %check_periodics.exit10969.thread ], [ %.sroa.21910.0.extract.trunc, %check_periodics.exit10980.thread ], [ %.sroa.21853.0.extract.trunc, %bb.akk ], [ %.sroa.21832.0.extract.trunc, %PyStackRef_CLOSE.exit10998 ], [ %.sroa.21825.0.extract.trunc, %PyStackRef_CLOSE.exit11010 ], [ %.sroa.21813.0.extract.trunc, %PyStackRef_CLOSE.exit11013 ], [ %.sroa.21805.0.extract.trunc, %bb.alp ], [ %.sroa.21803.0.extract.trunc, %bb.als ], [ %.09034, %bb.alw ], [ %.sroa.21792.0.extract.trunc, %bb.ama ], [ %.sroa.21788.0.extract.trunc, %bb.amf ], [ %.sroa.21774.0.extract.trunc, %bb.aml ], [ %.09034, %bb.amo ], [ %.sroa.21692.0.extract.trunc, %bb.anu ], [ %.sroa.21688.0.extract.trunc, %bb.anx ], [ %.sroa.21679.0.extract.trunc, %PyStackRef_CLOSE.exit11030 ], [ %.sroa.21670.0.extract.trunc, %bb.aok ], [ %.sroa.21660.0.extract.trunc, %bb.aot ], [ %.sroa.21650.0.extract.trunc, %bb.apb ], [ %.sroa.21641.0.extract.trunc, %bb.aph ], [ %.sroa.21632.0.extract.trunc, %bb.apl ], [ %.sroa.21628.0.extract.trunc, %bb.apo ], [ %.sroa.21617.0.extract.trunc, %PyStackRef_MakeHeapSafe.exit ], [ %.sroa.21608.0.extract.trunc, %bb.apu ], [ %.sroa.21600.0.extract.trunc, %PyStackRef_MakeHeapSafe.exit11041 ], [ %.sroa.21582.0.extract.trunc, %PyStackRef_XCLOSE.exit11048 ], [ %.09034, %bb.aqh ], [ %.sroa.21575.0.extract.trunc, %check_periodics.exit11051.thread ], [ %.sroa.21572.0.extract.trunc, %check_periodics.exit11054.thread ], [ %.sroa.21570.0.extract.trunc, %bb.aqk ], [ %.sroa.21567.0.extract.trunc, %check_periodics.exit11057.thread ], [ %.sroa.21565.0.extract.trunc, %bb.aqm ], [ %.sroa.21560.0.extract.trunc, %bb.aqr ], [ %.sroa.21547.0.extract.trunc, %PyStackRef_CLOSE.exit11068 ], [ %.09034, %bb.are ], [ %.sroa.21525.0.extract.trunc, %bb.ark ], [ %.sroa.21510.0.extract.trunc, %bb.art ], [ %.sroa.21491.0.extract.trunc, %bb.asd ], [ %.sroa.21450.0.extract.trunc, %bb.asw ], [ %.sroa.21432.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11097 ], [ %.sroa.21419.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11100 ], [ %.sroa.21397.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11104 ], [ %.sroa.21376.0.extract.trunc, %bb.atv ], [ %.sroa.21365.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11114 ], [ %.sroa.21345.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11120 ], [ %.sroa.21323.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11125 ], [ %.sroa.21304.0.extract.trunc, %bb.avb ], [ %.sroa.21277.0.extract.trunc, %bb.avo ], [ %.sroa.21271.0.extract.trunc, %bb.avs ], [ %.sroa.21267.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11138 ], [ %.sroa.21262.0.extract.trunc, %bb.avw ], [ %.sroa.21256.0.extract.trunc, %bb.awa ], [ %.sroa.21252.0.extract.trunc, %PyStackRef_DUP.exit11141 ], [ %.sroa.21248.0.extract.trunc, %bb.awd ], [ %.sroa.21244.0.extract.trunc, %bb.awe ], [ %.sroa.21236.0.extract.trunc, %bb.awf ], [ %.sroa.21230.0.extract.trunc, %PyStackRef_DUP.exit11143 ], [ %.sroa.21222.0.extract.trunc, %PyStackRef_DUP.exit11147 ], [ %.sroa.21210.0.extract.trunc, %PyStackRef_CLOSE.exit11150 ], [ %.sroa.21170.0.extract.trunc, %bb.axv ], [ %.09034, %bb.axy ], [ %.sroa.21156.0.extract.trunc, %bb.ayc ], [ %.sroa.21135.0.extract.trunc, %bb.aym ], [ %.sroa.21119.0.extract.trunc, %bb.ayu ], [ %.sroa.21113.0.extract.trunc, %_PyStackRef_FromPyObjectNew.exit11163 ], [ %.sroa.21059.0.extract.trunc, %bb.bab ], [ %.sroa.21054.0.extract.trunc, %bb.bac ], [ %.sroa.21040.0.extract.trunc, %bb.bag ], [ %.09034, %bb.baj ], [ %.sroa.2951.0.extract.trunc, %bb.baz ], [ %.sroa.2923.0.extract.trunc, %bb.bbj ], [ %.sroa.2892.0.extract.trunc, %PyStackRef_CLOSE.exit11181 ], [ %.sroa.2885.0.extract.trunc, %PyStackRef_XCLOSE.exit11183 ], [ %.sroa.2874.0.extract.trunc, %bb.bcd ], [ %.sroa.2867.0.extract.trunc, %bb.bcl ], [ %.sroa.2843.0.extract.trunc, %_PyErr_Occurred.exit11200.thread ], [ %.sroa.2835.0.extract.trunc, %bb.bcw ], [ %.sroa.2828.0.extract.trunc, %PyStackRef_TYPE.exit11203 ], [ %.sroa.2821.0.extract.trunc, %PyStackRef_TYPE.exit11206 ], [ %.sroa.2819.0.extract.trunc, %bb.bdb ], [ %.sroa.2817.0.extract.trunc, %bb.bdc ], [ %.sroa.2797.0.extract.trunc, %bb.bdn ], [ %.sroa.2793.0.extract.trunc, %PyStackRef_CLOSE.exit11211 ], [ %.sroa.2786.0.extract.trunc, %bb.bdt ], [ %.sroa.2772.0.extract.trunc, %bb.bdz ], [ %.sroa.2758.0.extract.trunc, %bb.bef ], [ %.sroa.2751.0.extract.trunc, %bb.bei ], [ %.sroa.2748.0.extract.trunc, %PyStackRef_XCLOSE.exit11217 ], [ %.sroa.2736.0.extract.trunc, %_Py_NewRef.exit11218 ], [ %.sroa.2732.0.extract.trunc, %bb.beq ], [ %.sroa.2713.0.extract.trunc, %bb.bim ], [ %.sroa.2710.0.extract.trunc, %check_periodics.exit11248.thread ], [ %.sroa.2706.0.extract.trunc, %bb.bis ], [ %.sroa.2694.0.extract.trunc, %_PyFrame_Copy.exit ], [ %.sroa.2687.0.extract.trunc, %PyStackRef_MakeHeapSafe.exit11253 ], [ %.09034, %bb.bjb ], [ %.sroa.2651.0.extract.trunc, %PyStackRef_CLOSE.exit11263 ], [ %.sroa.2633.0.extract.trunc, %PyStackRef_MakeHeapSafe.exit11269 ], [ %.sroa.2606.0.extract.trunc, %bb.bkr ], [ %.sroa.2601.0.extract.trunc, %bb.bkw ], [ %.sroa.2590.0.extract.trunc, %PyStackRef_AsPyObjectSteal.exit11275 ], [ %.sroa.2584.0.extract.trunc, %bb.ble ], [ %.09034, %bb.blh ], [ %.sroa.2560.0.extract.trunc, %bb.bln ], [ %.sroa.2519.0.extract.trunc, %PyStackRef_XCLOSE.exit11288 ], [ %.sroa.2488.0.extract.trunc, %PyStackRef_XCLOSE.exit11293 ], [ %.sroa.2446.0.extract.trunc, %PyStackRef_XCLOSE.exit11299 ], [ %.sroa.2442.0.extract.trunc, %PyCell_SetTakeRef.exit ], [ %.sroa.2435.0.extract.trunc, %PyStackRef_XCLOSE.exit11306 ], [ %.sroa.2425.0.extract.trunc, %PyStackRef_XCLOSE.exit11310 ], [ %.sroa.2412.0.extract.trunc, %PyStackRef_XCLOSE.exit11314 ], [ %.sroa.2406.0.extract.trunc, %bb.boe ], [ %.sroa.2392.0.extract.trunc, %bb.bop ], [ %.sroa.2363.0.extract.trunc, %bb.bpi ], [ %.09034, %bb.bpk ], [ %.sroa.2334.0.extract.trunc, %bb.bps ], [ %.sroa.2319.0.extract.trunc, %PyStackRef_XCLOSE.exit11346 ], [ %.sroa.2278.0.extract.trunc, %PyStackRef_XCLOSE.exit11358 ], [ %.sroa.2269.0.extract.trunc, %bb.bra ], [ %.09034, %bb.brc ], [ %.sroa.2252.0.extract.trunc, %bb.brg ], [ %.sroa.2239.0.extract.trunc, %PyStackRef_XCLOSE.exit11362 ], [ %.sroa.2236.0.extract.trunc, %bb.brm ], [ %.sroa.2223.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit11371 ], [ %.sroa.2209.0.extract.trunc, %PyStackRef_XCLOSE.exit11373 ], [ %.sroa.2204.0.extract.trunc, %bb.bry ], [ %.sroa.2191.0.extract.trunc, %PyStackRef_CLOSE_SPECIALIZED.exit11376 ], [ %.sroa.2180.0.extract.trunc, %PyStackRef_XCLOSE.exit11378 ], [ %.sroa.2169.0.extract.trunc, %PyStackRef_XCLOSE.exit11380 ], [ %.sroa.2163.0.extract.trunc, %bb.bso ], [ %.sroa.2146.0.extract.trunc, %bb.bsy ], [ %.09034, %bb.btb ], [ %.sroa.2121.0.extract.trunc, %bb.btl ], [ %.sroa.2107.0.extract.trunc, %PyStackRef_CLOSE.exit11391 ], [ %.sroa.293.0.extract.trunc, %PyStackRef_CLOSE.exit11396 ], [ %.sroa.279.0.extract.trunc, %PyStackRef_CLOSE.exit11404 ], [ %.sroa.246.0.extract.trunc, %bb.buy ], [ %.sroa.236.0.extract.trunc, %PyStackRef_MakeHeapSafe.exit11409 ]
  %.4.be = phi ptr [ %.4, %bb.n ], [ %.4, %PyStackRef_XCLOSE.exit10465 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10470 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10481 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10487 ], [ %.4, %PyStackRef_XCLOSE.exit10491 ], [ %.4, %bb.ce ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10504 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10518 ], [ %.4, %PyStackRef_XCLOSE.exit10522 ], [ %i.rv, %_PyFrame_PushUnchecked.exit ], [ %.4, %PyStackRef_XCLOSE.exit10536 ], [ %.4, %PyStackRef_XCLOSE.exit10540 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10555 ], [ %.4, %PyStackRef_XCLOSE.exit10567 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10580 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10586 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10600 ], [ %.4, %bb.ib ], [ %.4, %bb.ik ], [ %.4, %bb.im ], [ %.4, %bb.ip ], [ %.4, %._crit_edge12118.thread ], [ %.4, %bb.jl ], [ %.4, %bb.jo ], [ %.4, %bb.ju ], [ %.4, %bb.jw ], [ %.4, %bb.jz ], [ %.4, %check_periodics.exit.thread ], [ %i.ayz, %bb.le ], [ %i.bby, %._crit_edge12105 ], [ %i.bga, %bb.mi ], [ %.4, %check_periodics.exit10667.thread ], [ %.4, %check_periodics.exit10670.thread ], [ %.4, %check_periodics.exit10673.thread ], [ %.4, %bb.nh ], [ %.4, %check_periodics.exit10693.thread ], [ %i.bsd, %bb.or ], [ %.4, %bb.ou ], [ %.4, %check_periodics.exit10720.thread ], [ %.4, %bb.qa ], [ %.4, %bb.qg ], [ %.4, %PyStackRef_CLOSE.exit10732 ], [ %.4, %bb.qt ], [ %.4, %bb.rm ], [ %i.chm, %bb.sc ], [ %.4, %check_periodics.exit10760.thread ], [ %i.clh, %bb.sq ], [ %.4, %PyStackRef_XCLOSE.exit10767 ], [ %.4, %PyStackRef_XCLOSE.exit10776 ], [ %.4, %check_periodics.exit10779.thread ], [ %.4, %check_periodics.exit10782.thread ], [ %.4, %check_periodics.exit10789.thread ], [ %.4, %bb.uy ], [ %.4, %check_periodics.exit10801.thread ], [ %6, %._crit_edge12101 ], [ %i.ddz, %bb.vr ], [ %.4, %bb.vy ], [ %.4, %bb.wf ], [ %.4, %PyStackRef_XCLOSE.exit10819 ], [ %.4, %bb.xa ], [ %.4, %PyStackRef_CLOSE.exit10829 ], [ %.4, %PyStackRef_CLOSE.exit10838 ], [ %.4, %bb.ya ], [ %.4, %bb.yp ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10855 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10869 ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit10875 ], [ %.4, %bb.zz ], [ %.4, %PyStackRef_XCLOSE.exit10879 ], [ %.4, %PyStackRef_XCLOSE.exit10883 ], [ %.4, %PyStackRef_XCLOSE.exit10887 ], [ %.4, %bb.aax ], [ %.4, %PyStackRef_DUP.exit10891 ], [ %.4, %._crit_edge12109 ], [ %.4, %bb.abh ], [ %.4, %bb.abp ], [ %.4, %PyStackRef_XCLOSE.exit10898 ], [ %.4, %bb.aby ], [ %.4, %bb.acd ], [ %.4, %bb.acj ], [ %.4, %PyStackRef_CLOSE.exit10906 ], [ %.4, %PyStackRef_CLOSE.exit10910 ], [ %.4, %PyStackRef_CLOSE.exit10914 ], [ %.4, %PyStackRef_CLOSE.exit10923 ], [ %.4, %PyStackRef_CLOSE.exit10925 ], [ %.4, %bb.adz ], [ %.4, %bb.aea ], [ %.4, %bb.aeg ], [ %.4, %bb.aem ], [ %.4, %bb.aeo ], [ %.4, %bb.aer ], [ %.4, %bb.aes ], [ %i.eqd, %bb.aew ], [ %.4, %bb.aez ], [ %.4, %_PyStackRef_FromPyObjectNew.exit10934 ], [ %.4, %bb.aff ], [ %.4, %bb.afh ], [ %.4, %bb.afk ], [ %.4, %_PyStackRef_FromPyObjectNew.exit10937 ], [ %.4, %bb.agd ], [ %.4, %bb.agf ], [ %.4, %bb.agj ], [ %.4, %bb.agq ], [ %.4, %bb.agt ], [ %.4, %bb.ahc ], [ %.4, %bb.ahh ], [ %.4, %bb.ahq ], [ %.4, %check_periodics.exit10969.thread ], [ %.4, %check_periodics.exit10980.thread ], [ %.4, %bb.akk ], [ %.4, %PyStackRef_CLOSE.exit10998 ], [ %.4, %PyStackRef_CLOSE.exit11010 ], [ %.4, %PyStackRef_CLOSE.exit11013 ], [ %.4, %bb.alp ], [ %.4, %bb.als ], [ %.4, %bb.alw ], [ %.4, %bb.ama ], [ %.4, %bb.amf ], [ %.4, %bb.aml ], [ %.4, %bb.amo ], [ %.4, %bb.anu ], [ %.4, %bb.anx ], [ %.4, %PyStackRef_CLOSE.exit11030 ], [ %.4, %bb.aok ], [ %.4, %bb.aot ], [ %.4, %bb.apb ], [ %.4, %bb.aph ], [ %.4, %bb.apl ], [ %.4, %bb.apo ], [ %i.giu, %PyStackRef_MakeHeapSafe.exit ], [ %.4, %bb.apu ], [ %i.gjx, %PyStackRef_MakeHeapSafe.exit11041 ], [ %.4, %PyStackRef_XCLOSE.exit11048 ], [ %.4, %bb.aqh ], [ %.4, %check_periodics.exit11051.thread ], [ %.4, %check_periodics.exit11054.thread ], [ %.4, %bb.aqk ], [ %.4, %check_periodics.exit11057.thread ], [ %.4, %bb.aqm ], [ %.4, %bb.aqr ], [ %.4, %PyStackRef_CLOSE.exit11068 ], [ %.4, %bb.are ], [ %.4, %bb.ark ], [ %.4, %bb.art ], [ %.4, %bb.asd ], [ %.4, %bb.asw ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11097 ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11100 ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11104 ], [ %.4, %bb.atv ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11114 ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11120 ], [ %13, %_PyStackRef_FromPyObjectNew.exit11125 ], [ %.4, %bb.avb ], [ %.4, %bb.avo ], [ %.4, %bb.avs ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11138 ], [ %.4, %bb.avw ], [ %.4, %bb.awa ], [ %.4, %PyStackRef_DUP.exit11141 ], [ %.4, %bb.awd ], [ %.4, %bb.awe ], [ %.4, %bb.awf ], [ %.4, %PyStackRef_DUP.exit11143 ], [ %.4, %PyStackRef_DUP.exit11147 ], [ %.4, %PyStackRef_CLOSE.exit11150 ], [ %.4, %bb.axv ], [ %.4, %bb.axy ], [ %.4, %bb.ayc ], [ %.4, %bb.aym ], [ %.4, %bb.ayu ], [ %.4, %_PyStackRef_FromPyObjectNew.exit11163 ], [ %.4, %bb.bab ], [ %.4, %bb.bac ], [ %.4, %bb.bag ], [ %.4, %bb.baj ], [ %.4, %bb.baz ], [ %.4, %bb.bbj ], [ %.4, %PyStackRef_CLOSE.exit11181 ], [ %.4, %PyStackRef_XCLOSE.exit11183 ], [ %.4, %bb.bcd ], [ %.4, %bb.bcl ], [ %.4, %_PyErr_Occurred.exit11200.thread ], [ %.4, %bb.bcw ], [ %.4, %PyStackRef_TYPE.exit11203 ], [ %.4, %PyStackRef_TYPE.exit11206 ], [ %.4, %bb.bdb ], [ %.4, %bb.bdc ], [ %.4, %bb.bdn ], [ %.4, %PyStackRef_CLOSE.exit11211 ], [ %.4, %bb.bdt ], [ %.4, %bb.bdz ], [ %.4, %bb.bef ], [ %.4, %bb.bei ], [ %.4, %PyStackRef_XCLOSE.exit11217 ], [ %.4, %_Py_NewRef.exit11218 ], [ %.4, %bb.beq ], [ %.4, %bb.bim ], [ %.4, %check_periodics.exit11248.thread ], [ %.4, %bb.bis ], [ %i.jmr, %_PyFrame_Copy.exit ], [ %i.jns, %PyStackRef_MakeHeapSafe.exit11253 ], [ %.4, %bb.bjb ], [ %.4, %PyStackRef_CLOSE.exit11263 ], [ %i.jry, %PyStackRef_MakeHeapSafe.exit11269 ], [ %.4, %bb.bkr ], [ %.4, %bb.bkw ], [ %.4, %PyStackRef_AsPyObjectSteal.exit11275 ], [ %.4, %bb.ble ], [ %.4, %bb.blh ], [ %.4, %bb.bln ], [ %.4, %PyStackRef_XCLOSE.exit11288 ], [ %.4, %PyStackRef_XCLOSE.exit11293 ], [ %.4, %PyStackRef_XCLOSE.exit11299 ], [ %.4, %PyCell_SetTakeRef.exit ], [ %.4, %PyStackRef_XCLOSE.exit11306 ], [ %.4, %PyStackRef_XCLOSE.exit11310 ], [ %.4, %PyStackRef_XCLOSE.exit11314 ], [ %.4, %bb.boe ], [ %.4, %bb.bop ], [ %.4, %bb.bpi ], [ %.4, %bb.bpk ], [ %.4, %bb.bps ], [ %.4, %PyStackRef_XCLOSE.exit11346 ], [ %.4, %PyStackRef_XCLOSE.exit11358 ], [ %.4, %bb.bra ], [ %.4, %bb.brc ], [ %.4, %bb.brg ], [ %.4, %PyStackRef_XCLOSE.exit11362 ], [ %.4, %bb.brm ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit11371 ], [ %.4, %PyStackRef_XCLOSE.exit11373 ], [ %.4, %bb.bry ], [ %.4, %PyStackRef_CLOSE_SPECIALIZED.exit11376 ], [ %.4, %PyStackRef_XCLOSE.exit11378 ], [ %.4, %PyStackRef_XCLOSE.exit11380 ], [ %.4, %bb.bso ], [ %.4, %bb.bsy ], [ %.4, %bb.btb ], [ %.4, %bb.btl ], [ %.4, %PyStackRef_CLOSE.exit11391 ], [ %.4, %PyStackRef_CLOSE.exit11396 ], [ %.4, %PyStackRef_CLOSE.exit11404 ], [ %.4, %bb.buy ], [ %i.ljr, %PyStackRef_MakeHeapSafe.exit11409 ]
  %.pn.pn.be = phi i64 [ %i.cd, %bb.n ], [ %i.dk, %PyStackRef_XCLOSE.exit10465 ], [ %i.fe, %PyStackRef_CLOSE_SPECIALIZED.exit10470 ], [ %i.gn, %PyStackRef_CLOSE_SPECIALIZED.exit10481 ], [ %i.ic, %PyStackRef_CLOSE_SPECIALIZED.exit10487 ], [ %i.jp, %PyStackRef_XCLOSE.exit10491 ], [ %i.lw, %bb.ce ], [ %i.nq, %PyStackRef_CLOSE_SPECIALIZED.exit10504 ], [ %i.oz, %PyStackRef_CLOSE_SPECIALIZED.exit10518 ], [ %i.qm, %PyStackRef_XCLOSE.exit10522 ], [ %i.tp, %_PyFrame_PushUnchecked.exit ], [ %i.vj, %PyStackRef_XCLOSE.exit10536 ], [ %i.ww, %PyStackRef_XCLOSE.exit10540 ], [ %i.ys, %PyStackRef_CLOSE_SPECIALIZED.exit10555 ], [ %i.aal, %PyStackRef_XCLOSE.exit10567 ], [ %i.acw, %PyStackRef_CLOSE_SPECIALIZED.exit10580 ], [ %i.aeq, %PyStackRef_CLOSE_SPECIALIZED.exit10586 ], [ %i.afz, %PyStackRef_CLOSE_SPECIALIZED.exit10600 ], [ %i.ain, %bb.ib ], [ %i.akp, %bb.ik ], [ %i.alg, %bb.im ], [ %i.alx, %bb.ip ], [ %i.aoa, %._crit_edge12118.thread ], [ %i.apl, %bb.jl ], [ %i.aqh, %bb.jo ], [ %i.aro, %bb.ju ], [ %i.asd, %bb.jw ], [ %i.asu, %bb.jz ], [ %i.avw, %check_periodics.exit.thread ], [ %i.azk, %bb.le ], [ %i.bdp, %._crit_edge12105 ], [ %i.bgl, %bb.mi ], [ %i.bhy, %check_periodics.exit10667.thread ], [ %i.bjk, %check_periodics.exit10670.thread ], [ %i.bkw, %check_periodics.exit10673.thread ], [ %i.bmy, %bb.nh ], [ %i.bpr, %check_periodics.exit10693.thread ], [ %i.bso, %bb.or ], [ %i.bsw, %bb.ou ], [ %i.bwy, %check_periodics.exit10720.thread ], [ %i.bxz, %bb.qa ], [ %i.bzi, %bb.qg ], [ %i.cax, %PyStackRef_CLOSE.exit10732 ], [ %i.cbn, %bb.qt ], [ %i.cex, %bb.rm ], [ %i.cid, %bb.sc ], [ %i.cjp, %check_periodics.exit10760.thread ], [ %i.cly, %bb.sq ], [ %i.cnn, %PyStackRef_XCLOSE.exit10767 ], [ %i.cph, %PyStackRef_XCLOSE.exit10776 ], [ %i.cre, %check_periodics.exit10779.thread ], [ %i.ctb, %check_periodics.exit10782.thread ], [ %i.cvh, %check_periodics.exit10789.thread ], [ %i.cyb, %bb.uy ], [ %i.czm, %check_periodics.exit10801.thread ], [ %i.dcn, %._crit_edge12101 ], [ %i.dek, %bb.vr ], [ %i.dfp, %bb.vy ], [ %i.dgu, %bb.wf ], [ %i.dhs, %PyStackRef_XCLOSE.exit10819 ], [ %i.dkb, %bb.xa ], [ %i.dkx, %PyStackRef_CLOSE.exit10829 ], [ %i.dmm, %PyStackRef_CLOSE.exit10838 ], [ %i.dnr, %bb.ya ], [ %i.dpi, %bb.yp ], [ %i.dqy, %PyStackRef_CLOSE_SPECIALIZED.exit10855 ], [ %i.dsv, %PyStackRef_CLOSE_SPECIALIZED.exit10869 ], [ %i.duf, %PyStackRef_CLOSE_SPECIALIZED.exit10875 ], [ %i.dum, %bb.zz ], [ %i.dvl, %PyStackRef_XCLOSE.exit10879 ], [ %i.dwq, %PyStackRef_XCLOSE.exit10883 ], [ %i.dxv, %PyStackRef_XCLOSE.exit10887 ], [ %i.dyw, %bb.aax ], [ %i.dzj, %PyStackRef_DUP.exit10891 ], [ %i.ean, %._crit_edge12109 ], [ %i.ebl, %bb.abh ], [ %i.ecl, %bb.abp ], [ %i.edh, %PyStackRef_XCLOSE.exit10898 ], [ %i.eec, %bb.aby ], [ %i.eex, %bb.acd ], [ %i.efv, %bb.acj ], [ %i.ehc, %PyStackRef_CLOSE.exit10906 ], [ %i.eil, %PyStackRef_CLOSE.exit10910 ], [ %i.ejk, %PyStackRef_CLOSE.exit10914 ], [ %i.eks, %PyStackRef_CLOSE.exit10923 ], [ %i.elf, %PyStackRef_CLOSE.exit10925 ], [ %i.elv, %bb.adz ], [ %i.eme, %bb.aea ], [ %i.enf, %bb.aeg ], [ %i.eol, %bb.aem ], [ %i.eow, %bb.aeo ], [ %i.epk, %bb.aer ], [ %i.epq, %bb.aes ], [ %i.eqw, %bb.aew ], [ %i.erl, %bb.aez ], [ %i.erz, %_PyStackRef_FromPyObjectNew.exit10934 ], [ %i.eso, %bb.aff ], [ %i.etg, %bb.afh ], [ %i.etv, %bb.afk ], [ %i.eui, %_PyStackRef_FromPyObjectNew.exit10937 ], [ %i.ewr, %bb.agd ], [ %i.exj, %bb.agf ], [ %i.eyh, %bb.agj ], [ %i.ezo, %bb.agq ], [ %i.fai, %bb.agt ], [ %i.fbr, %bb.ahc ], [ %i.fcv, %bb.ahh ], [ %i.few, %bb.ahq ], [ %i.fin, %check_periodics.exit10969.thread ], [ %i.flx, %check_periodics.exit10980.thread ], [ %i.fpr, %bb.akk ], [ %i.fqy, %PyStackRef_CLOSE.exit10998 ], [ %i.fss, %PyStackRef_CLOSE.exit11010 ], [ %i.ftr, %PyStackRef_CLOSE.exit11013 ], [ %i.fui, %bb.alp ], [ %i.fur, %bb.als ], [ %i.fvd, %bb.alw ], [ %i.fvu, %bb.ama ], [ %i.fwj, %bb.amf ], [ %i.fxn, %bb.aml ], [ %i.fxv, %bb.amo ], [ %i.gbt, %bb.anu ], [ %i.gcd, %bb.anx ], [ %i.gcx, %PyStackRef_CLOSE.exit11030 ], [ %i.gdu, %bb.aok ], [ %i.gey, %bb.aot ], [ %i.gfz, %bb.apb ], [ %i.ggw, %bb.aph ], [ %i.ghm, %bb.apl ], [ %i.gib, %bb.apo ], [ %i.gjf, %PyStackRef_MakeHeapSafe.exit ], [ %i.gjp, %bb.apu ], [ %i.gkq, %PyStackRef_MakeHeapSafe.exit11041 ], [ %i.glx, %PyStackRef_XCLOSE.exit11048 ], [ %i.gmg, %bb.aqh ], [ %i.gmq, %check_periodics.exit11051.thread ], [ %i.gnc, %check_periodics.exit11054.thread ], [ %i.gnk, %bb.aqk ], [ %i.gnw, %check_periodics.exit11057.thread ], [ %i.god, %bb.aqm ], [ %i.gpe, %bb.aqr ], [ %i.gqr, %PyStackRef_CLOSE.exit11068 ], [ %i.grh, %bb.are ], [ %i.gsl, %bb.ark ], [ %i.gto, %bb.art ], [ %i.guu, %bb.asd ], [ %i.gye, %bb.asw ], [ %i.gzc, %_PyStackRef_FromPyObjectNew.exit11097 ], [ %i.gzv, %_PyStackRef_FromPyObjectNew.exit11100 ], [ %i.hay, %_PyStackRef_FromPyObjectNew.exit11104 ], [ %i.hcq, %bb.atv ], [ %i.hdp, %_PyStackRef_FromPyObjectNew.exit11114 ], [ %i.hey, %_PyStackRef_FromPyObjectNew.exit11120 ], [ %19, %_PyStackRef_FromPyObjectNew.exit11125 ], [ %i.hht, %bb.avb ], [ %i.hjx, %bb.avo ], [ %i.hks, %bb.avs ], [ %i.hli, %_PyStackRef_FromPyObjectNew.exit11138 ], [ %i.hma, %bb.avw ], [ %i.hnb, %bb.awa ], [ %i.hnp, %PyStackRef_DUP.exit11141 ], [ %i.hny, %bb.awd ], [ %i.hoj, %bb.awe ], [ %i.hpb, %bb.awf ], [ %i.hpw, %PyStackRef_DUP.exit11143 ], [ %i.hqu, %PyStackRef_DUP.exit11147 ], [ %i.hsm, %PyStackRef_CLOSE.exit11150 ], [ %i.hvu, %bb.axv ], [ %i.hwo, %bb.axy ], [ %i.hxn, %bb.ayc ], [ %i.hzj, %bb.aym ], [ %i.iau, %bb.ayu ], [ %i.ibk, %_PyStackRef_FromPyObjectNew.exit11163 ], [ %i.idw, %bb.bab ], [ %i.ieh, %bb.bac ], [ %i.ifd, %bb.bag ], [ %i.ifl, %bb.baj ], [ %i.ihy, %bb.baz ], [ %i.ijx, %bb.bbj ], [ %i.imh, %PyStackRef_CLOSE.exit11181 ], [ %i.ing, %PyStackRef_XCLOSE.exit11183 ], [ %i.ioi, %bb.bcd ], [ %i.ipl, %bb.bcl ], [ %i.irb, %_PyErr_Occurred.exit11200.thread ], [ %i.irw, %bb.bcw ], [ %i.isl, %PyStackRef_TYPE.exit11203 ], [ %i.ita, %PyStackRef_TYPE.exit11206 ], [ %i.itf, %bb.bdb ], [ %i.itk, %bb.bdc ], [ %i.ium, %bb.bdn ], [ %i.iuy, %PyStackRef_CLOSE.exit11211 ], [ %i.ivq, %bb.bdt ], [ %i.iwr, %bb.bdz ], [ %i.ixs, %bb.bef ], [ %i.iyk, %bb.bei ], [ %i.iyw, %PyStackRef_XCLOSE.exit11217 ], [ %i.izq, %_Py_NewRef.exit11218 ], [ %i.izw, %bb.beq ], [ %i.jjf, %bb.bim ], [ %i.jjr, %check_periodics.exit11248.thread ], [ %i.jkb, %bb.bis ], [ %i.jnd, %_PyFrame_Copy.exit ], [ %i.jod, %PyStackRef_MakeHeapSafe.exit11253 ], [ %i.jok, %bb.bjb ], [ %i.jrl, %PyStackRef_CLOSE.exit11263 ], [ %i.jsz, %PyStackRef_MakeHeapSafe.exit11269 ], [ %i.jul, %bb.bkr ], [ %i.jvg, %bb.bkw ], [ %i.jwa, %PyStackRef_AsPyObjectSteal.exit11275 ], [ %i.jww, %bb.ble ], [ %i.jxl, %bb.blh ], [ %i.jyq, %bb.bln ], [ %i.kbb, %PyStackRef_XCLOSE.exit11288 ], [ %i.kcp, %PyStackRef_XCLOSE.exit11293 ], [ %i.kfi, %PyStackRef_XCLOSE.exit11299 ], [ %i.kgi, %PyCell_SetTakeRef.exit ], [ %i.kgx, %PyStackRef_XCLOSE.exit11306 ], [ %i.khv, %PyStackRef_XCLOSE.exit11310 ], [ %i.kiv, %PyStackRef_XCLOSE.exit11314 ], [ %i.kjv, %bb.boe ], [ %i.klk, %bb.bop ], [ %i.kno, %bb.bpi ], [ %i.knx, %bb.bpk ], [ %i.kpa, %bb.bps ], [ %i.kqn, %PyStackRef_XCLOSE.exit11346 ], [ %i.ksw, %PyStackRef_XCLOSE.exit11358 ], [ %i.ktf, %bb.bra ], [ %i.ktm, %bb.brc ], [ %i.kuc, %bb.brg ], [ %i.kuu, %PyStackRef_XCLOSE.exit11362 ], [ %i.kvg, %bb.brm ], [ %i.kwb, %PyStackRef_CLOSE_SPECIALIZED.exit11371 ], [ %i.kwt, %PyStackRef_XCLOSE.exit11373 ], [ %i.kxa, %bb.bry ], [ %i.kxu, %PyStackRef_CLOSE_SPECIALIZED.exit11376 ], [ %i.kys, %PyStackRef_XCLOSE.exit11378 ], [ %i.kzp, %PyStackRef_XCLOSE.exit11380 ], [ %i.kzw, %bb.bso ], [ %i.lbc, %bb.bsy ], [ %i.lbk, %bb.btb ], [ %i.lcm, %bb.btl ], [ %i.len, %PyStackRef_CLOSE.exit11391 ], [ %i.lgn, %PyStackRef_CLOSE.exit11396 ], [ %i.lhu, %PyStackRef_CLOSE.exit11404 ], [ %i.ljh, %bb.buy ], [ %i.lkk, %PyStackRef_MakeHeapSafe.exit11409 ]
  br label %.backedge

bb.o:                                             ; preds = %_PyLong_CheckExactAndCompact.exit.thread
  %i.ce = add i16 %.val10342, -8
  store i16 %i.ce, ptr %i.by, align 2, !tbaa !66
  %i.cf = and i64 %.sroa.04149.0.copyload, -2
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = and i64 %.sroa.04146.0.copyload, -2
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr i8, ptr %.4, i64 64       ; 6 uses
  store ptr %.09040, ptr %i.cj, align 8, !tbaa !65
  %i.ck = sext i32 %.09034 to i64
  %i.cl = getelementptr [8 x i8], ptr @_PyEval_BinaryOps, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !35
  %i.cn = call ptr %i.cm(ptr noundef %i.cg, ptr noundef %i.ci) #8 ; 3 uses
  %.4.val10312 = load ptr, ptr %i.cj, align 8, !tbaa !65 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.loopexit.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr i8, ptr %i.cn, i64 6
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !34
  %i.cr = and i16 %i.cq, 1
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = zext nneg i16 %i.cr to i64
  %i.cu = or i64 %i.ct, %i.cs
  %i.cv = getelementptr i8, ptr %.4.val10312, i64 -16
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !34
  %i.cw = getelementptr i8, ptr %.4.val10312, i64 -8
  store i64 %.sroa.04149.0.copyload, ptr %i.cw, align 8, !tbaa !34
  store ptr %.4.val10312, ptr %i.cj, align 8, !tbaa !65
  %i.cx = and i64 %.sroa.04146.0.copyload, 1
  %.not.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.not.i, label %bb.q, label %PyStackRef_XCLOSE.exit

bb.q:                                             ; preds = %bb.p
  %i.cy = inttoptr i64 %.sroa.04146.0.copyload to ptr ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !34
  %i.da = add i32 %i.cz, -1                       ; 2 uses
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !34
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.r, label %PyStackRef_XCLOSE.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #8
  br label %PyStackRef_XCLOSE.exit

PyStackRef_XCLOSE.exit:                           ; preds = %bb.p, %bb.q, %bb.r
  %.4.val10311 = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.dc = getelementptr i8, ptr %.4.val10311, i64 -8
  store ptr %i.dc, ptr %i.cj, align 8, !tbaa !65
  %i.dd = and i64 %.sroa.04149.0.copyload, 1
  %.not.not.i10464 = icmp eq i64 %i.dd, 0
  br i1 %.not.not.i10464, label %bb.s, label %PyStackRef_XCLOSE.exit10465

bb.s:                                             ; preds = %PyStackRef_XCLOSE.exit
  %i.de = inttoptr i64 %.sroa.04149.0.copyload to ptr ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !34
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !34
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.t, label %PyStackRef_XCLOSE.exit10465

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.de) #8
  br label %PyStackRef_XCLOSE.exit10465

PyStackRef_XCLOSE.exit10465:                      ; preds = %PyStackRef_XCLOSE.exit, %bb.s, %bb.t
  %.4.val10310 = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.di = load i16, ptr %.09035, align 2, !tbaa !66 ; 2 uses
  %.sroa.24130.0.extract.shift = lshr i16 %i.di, 8
  %.sroa.24130.0.extract.trunc = zext nneg i16 %.sroa.24130.0.extract.shift to i32
  %i.dj = and i16 %i.di, 255
  %i.dk = zext nneg i16 %i.dj to i64
  br label %.backedge.backedge

bb.u:                                             ; preds = %.backedge
  %i.dl = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dl, align 8, !tbaa !47
  %i.dm = getelementptr i8, ptr %.32, i64 12      ; 5 uses
  %i.dn = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.04125.0.copyload = load i64, ptr %i.dn, align 8, !tbaa !34 ; 3 uses
  %i.do = and i64 %.sroa.04125.0.copyload, -2
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.ds = icmp eq ptr %i.dr, @PyFloat_Type
  br i1 %i.ds, label %bb.v, label %_PyLong_CheckExactAndCompact.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dt = getelementptr i8, ptr %.4.val1003611541, i64 -16 ; 2 uses
  %.sroa.04122.0.copyload = load i64, ptr %i.dt, align 8, !tbaa !34 ; 3 uses
  %i.du = and i64 %.sroa.04122.0.copyload, -2
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !58
  %i.dy = icmp eq ptr %i.dx, @PyFloat_Type
  br i1 %i.dy, label %bb.w, label %_PyLong_CheckExactAndCompact.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr i8, ptr %i.dv, i64 16
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !67
  %i.eb = getelementptr i8, ptr %i.dp, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !67
  %i.ed = fadd double %i.ea, %i.ec
  %i.ee = call ptr @PyFloat_FromDouble(double noundef %i.ed) #8 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 6
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !34
  %i.eh = and i16 %i.eg, 1
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = zext nneg i16 %i.eh to i64
  %i.ek = or i64 %i.ej, %i.ei                     ; 2 uses
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %.loopexit.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = and i64 %.sroa.04125.0.copyload, 1
  %.not.not.i10466 = icmp eq i64 %i.em, 0
  br i1 %.not.not.i10466, label %bb.y, label %PyStackRef_CLOSE_SPECIALIZED.exit

bb.y:                                             ; preds = %bb.x
  %i.en = inttoptr i64 %.sroa.04125.0.copyload to ptr ; 4 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !34
  %i.ep = add i32 %i.eo, -1                       ; 2 uses
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !34
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.z, label %PyStackRef_CLOSE_SPECIALIZED.exit

bb.z:                                             ; preds = %bb.y
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not.i.i10467 = icmp eq ptr %i.er, null
  br i1 %.not.i.i10467, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.et = call i32 %i.er(ptr noundef nonnull %i.en, i32 noundef 1, ptr noundef %i.es) #8, !inline_history !70 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @_PyFloat_ExactDealloc(ptr noundef nonnull %i.en) #8, !callees !71, !inline_history !70
  br label %PyStackRef_CLOSE_SPECIALIZED.exit

PyStackRef_CLOSE_SPECIALIZED.exit:                ; preds = %bb.x, %bb.y, %bb.ab
  %i.eu = and i64 %.sroa.04122.0.copyload, 1
  %.not.not.i10468 = icmp eq i64 %i.eu, 0
  br i1 %.not.not.i10468, label %bb.ac, label %PyStackRef_CLOSE_SPECIALIZED.exit10470

bb.ac:                                            ; preds = %PyStackRef_CLOSE_SPECIALIZED.exit
  %i.ev = inttoptr i64 %.sroa.04122.0.copyload to ptr ; 4 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !34
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !34
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ad, label %PyStackRef_CLOSE_SPECIALIZED.exit10470

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not.i.i10469 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i10469, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.fb = call i32 %i.ez(ptr noundef nonnull %i.ev, i32 noundef 1, ptr noundef %i.fa) #8, !inline_history !70 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @_PyFloat_ExactDealloc(ptr noundef nonnull %i.ev) #8, !callees !71, !inline_history !70
  br label %PyStackRef_CLOSE_SPECIALIZED.exit10470

PyStackRef_CLOSE_SPECIALIZED.exit10470:           ; preds = %PyStackRef_CLOSE_SPECIALIZED.exit, %bb.ac, %bb.af
  store i64 %i.ek, ptr %i.dt, align 8, !tbaa !34
  %i.fc = load i16, ptr %i.dm, align 2, !tbaa !66 ; 2 uses
  %.sroa.24108.0.extract.shift = lshr i16 %i.fc, 8
  %.sroa.24108.0.extract.trunc = zext nneg i16 %.sroa.24108.0.extract.shift to i32
  %i.fd = and i16 %i.fc, 255
  %i.fe = zext nneg i16 %i.fd to i64
  br label %.backedge.backedge

bb.ag:                                            ; preds = %.backedge
  %i.ff = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ff, align 8, !tbaa !47
  %i.fg = getelementptr i8, ptr %.32, i64 12      ; 7 uses
  %i.fh = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.04103.0.copyload = load i64, ptr %i.fh, align 8, !tbaa !34 ; 3 uses
  %i.fi = and i64 %.sroa.04103.0.copyload, -2
  %i.fj = inttoptr i64 %i.fi to ptr               ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %.val.i10471 = load ptr, ptr %i.fk, align 8, !tbaa !58
  %.not.i = icmp eq ptr %.val.i10471, @PyLong_Type
  br i1 %.not.i, label %_PyLong_CheckExactAndCompact.exit, label %_PyLong_CheckExactAndCompact.exit.thread

_PyLong_CheckExactAndCompact.exit:                ; preds = %bb.ag
  %i.fl = getelementptr i8, ptr %i.fj, i64 16
  %.val2.i = load i64, ptr %i.fl, align 8, !tbaa !72
  %i.fm = icmp ugt i64 %.val2.i, 15
  br i1 %i.fm, label %_PyLong_CheckExactAndCompact.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_PyLong_CheckExactAndCompact.exit
  %i.fn = getelementptr i8, ptr %.4.val1003611541, i64 -16 ; 2 uses
  %.sroa.04100.0.copyload = load i64, ptr %i.fn, align 8, !tbaa !34 ; 3 uses
end_hunk_0
begin_hunk_1_@Test_EvalFrame:bb.a
  %.sroa.02809.0.copyload = load i64, ptr %i.cwe, align 8, !tbaa !34
  %i.cwm = getelementptr i8, ptr %i.cwb, i64 8
  %i.cwn = load ptr, ptr %i.cwm, align 8, !tbaa !198
  %i.cwo = getelementptr i8, ptr %.4, i64 64      ; 9 uses
  store ptr %.4.val1003611541, ptr %i.cwo, align 8, !tbaa !65
  %i.cwp = and i64 %.sroa.02809.0.copyload, -2
  %i.cwq = inttoptr i64 %i.cwp to ptr
  %i.cwr = call ptr %i.cwn(ptr noundef nonnull %i.cwg, ptr noundef %i.cwq) #8 ; 3 uses
  %.4.val10190 = load ptr, ptr %i.cwo, align 8, !tbaa !65 ; 5 uses
  %i.cws = icmp eq ptr %i.cwr, null
  br i1 %i.cws, label %.loopexit.loopexit, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %.sroa.02829.0.copyload = load i64, ptr %.09111, align 8, !tbaa !34 ; 3 uses
  %.sroa.02828.0.copyload = load i64, ptr %i.cwe, align 8, !tbaa !34 ; 2 uses
  %i.cwt = getelementptr i8, ptr %i.cwr, i64 6
  %i.cwu = load i16, ptr %i.cwt, align 2, !tbaa !34
  %i.cwv = and i16 %i.cwu, 1
  %i.cww = ptrtoint ptr %i.cwr to i64
  %i.cwx = zext nneg i16 %i.cwv to i64
  %i.cwy = or i64 %i.cwx, %i.cww
  %i.cwz = getelementptr [8 x i8], ptr %.4.val10190, i64 %i.cvr
  store i64 %i.cwy, ptr %i.cwz, align 8, !tbaa !34
  %i.cxa = getelementptr [8 x i8], ptr %.4.val10190, i64 %i.cvo
  store i64 %.sroa.02836.0.copyload, ptr %i.cxa, align 8, !tbaa !34
  %i.cxb = getelementptr [8 x i8], ptr %.4.val10190, i64 %i.cvl
  store i64 %.sroa.02829.0.copyload, ptr %i.cxb, align 8, !tbaa !34
  %i.cxc = sub i32 1, %.09034
  %i.cxd = sext i32 %i.cxc to i64
  %i.cxe = getelementptr [8 x i8], ptr %.4.val10190, i64 %i.cxd
  store ptr %i.cxe, ptr %i.cwo, align 8, !tbaa !65
  %i.cxf = and i64 %.sroa.02828.0.copyload, 1
  %.not.not.i10790 = icmp eq i64 %i.cxf, 0
  br i1 %.not.not.i10790, label %bb.us, label %PyStackRef_XCLOSE.exit10791

bb.us:                                            ; preds = %bb.ur
  %i.cxg = inttoptr i64 %.sroa.02828.0.copyload to ptr ; 3 uses
  %i.cxh = load i32, ptr %i.cxg, align 8, !tbaa !34
  %i.cxi = add i32 %i.cxh, -1                     ; 2 uses
  store i32 %i.cxi, ptr %i.cxg, align 8, !tbaa !34
  %i.cxj = icmp eq i32 %i.cxi, 0
  br i1 %i.cxj, label %bb.ut, label %PyStackRef_XCLOSE.exit10791

bb.ut:                                            ; preds = %bb.us
  call void @_Py_Dealloc(ptr noundef nonnull %i.cxg) #8
  br label %PyStackRef_XCLOSE.exit10791

PyStackRef_XCLOSE.exit10791:                      ; preds = %bb.ur, %bb.us, %bb.ut
  %.4.val10189 = load ptr, ptr %i.cwo, align 8, !tbaa !65
  %i.cxk = getelementptr i8, ptr %.4.val10189, i64 -8
  store ptr %i.cxk, ptr %i.cwo, align 8, !tbaa !65
  %i.cxl = and i64 %.sroa.02829.0.copyload, 1
  %.not.not.i10792 = icmp eq i64 %i.cxl, 0
  br i1 %.not.not.i10792, label %bb.uu, label %PyStackRef_XCLOSE.exit10793

bb.uu:                                            ; preds = %PyStackRef_XCLOSE.exit10791
  %i.cxm = inttoptr i64 %.sroa.02829.0.copyload to ptr ; 3 uses
  %i.cxn = load i32, ptr %i.cxm, align 8, !tbaa !34
  %i.cxo = add i32 %i.cxn, -1                     ; 2 uses
  store i32 %i.cxo, ptr %i.cxm, align 8, !tbaa !34
  %i.cxp = icmp eq i32 %i.cxo, 0
  br i1 %i.cxp, label %bb.uv, label %PyStackRef_XCLOSE.exit10793

bb.uv:                                            ; preds = %bb.uu
  call void @_Py_Dealloc(ptr noundef nonnull %i.cxm) #8
  br label %PyStackRef_XCLOSE.exit10793

PyStackRef_XCLOSE.exit10793:                      ; preds = %PyStackRef_XCLOSE.exit10791, %bb.uu, %bb.uv
  %.4.val10188 = load ptr, ptr %i.cwo, align 8, !tbaa !65
  %i.cxq = getelementptr i8, ptr %.4.val10188, i64 -8
  store ptr %i.cxq, ptr %i.cwo, align 8, !tbaa !65
  %i.cxr = and i64 %.sroa.02836.0.copyload, 1
  %.not.not.i10794 = icmp eq i64 %i.cxr, 0
  br i1 %.not.not.i10794, label %bb.uw, label %PyStackRef_XCLOSE.exit10795

bb.uw:                                            ; preds = %PyStackRef_XCLOSE.exit10793
  %i.cxs = inttoptr i64 %.sroa.02836.0.copyload to ptr ; 3 uses
  %i.cxt = load i32, ptr %i.cxs, align 8, !tbaa !34
  %i.cxu = add i32 %i.cxt, -1                     ; 2 uses
  store i32 %i.cxu, ptr %i.cxs, align 8, !tbaa !34
  %i.cxv = icmp eq i32 %i.cxu, 0
  br i1 %i.cxv, label %bb.ux, label %PyStackRef_XCLOSE.exit10795

bb.ux:                                            ; preds = %bb.uw
  call void @_Py_Dealloc(ptr noundef nonnull %i.cxs) #8
  br label %PyStackRef_XCLOSE.exit10795

PyStackRef_XCLOSE.exit10795:                      ; preds = %PyStackRef_XCLOSE.exit10793, %bb.uw, %bb.ux
  %i.cxw = load atomic i64, ptr %i.lqp monotonic, align 8
  %i.cxx = and i64 %i.cxw, 255
  %.not.i10796 = icmp eq i64 %i.cxx, 0
  br i1 %.not.i10796, label %check_periodics.exit10798.thread, label %check_periodics.exit10798

check_periodics.exit10798.thread:                 ; preds = %PyStackRef_XCLOSE.exit10795
  %.4.val1018611498 = load ptr, ptr %i.cwo, align 8, !tbaa !65
  br label %bb.uy

check_periodics.exit10798:                        ; preds = %PyStackRef_XCLOSE.exit10795
  %i.cxy = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10186 = load ptr, ptr %i.cwo, align 8, !tbaa !65 ; 2 uses
  %.not9548 = icmp eq i32 %i.cxy, 0
  br i1 %.not9548, label %bb.uy, label %.loopexit.loopexit

bb.uy:                                            ; preds = %check_periodics.exit10798.thread, %check_periodics.exit10798
  %.4.val1018611500 = phi ptr [ %.4.val1018611498, %check_periodics.exit10798.thread ], [ %.4.val10186, %check_periodics.exit10798 ]
  %i.cxz = load i16, ptr %i.cvj, align 2, !tbaa !66 ; 2 uses
  %.sroa.22801.0.extract.shift = lshr i16 %i.cxz, 8
  %.sroa.22801.0.extract.trunc = zext nneg i16 %.sroa.22801.0.extract.shift to i32
  %i.cya = and i16 %i.cxz, 255
  %i.cyb = zext nneg i16 %i.cya to i64
  br label %.backedge.backedge

bb.uz:                                            ; preds = %.backedge
  %i.cyc = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.cyc, align 8, !tbaa !47
  %i.cyd = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.cye = sub i32 -2, %.09034
  %i.cyf = sext i32 %i.cye to i64                 ; 3 uses
  %i.cyg = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.cyf
  %.sroa.02798.0.copyload = load i64, ptr %i.cyg, align 8, !tbaa !34 ; 2 uses
  %i.cyh = and i64 %.sroa.02798.0.copyload, -2
  %i.cyi = inttoptr i64 %i.cyh to ptr
  %i.cyj = getelementptr i8, ptr %i.cyi, i64 8
  %i.cyk = load ptr, ptr %i.cyj, align 8, !tbaa !58 ; 2 uses
  %i.cyl = icmp eq ptr %i.cyk, @PyFunction_Type
  %i.cym = icmp eq ptr %i.cyk, @PyMethod_Type
  %or.cond11584 = or i1 %i.cyl, %i.cym
  br i1 %or.cond11584, label %_PyThreadState_HasStackSpace.exit10638.thread, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.cyn = sub i32 0, %.09034
  %i.cyo = sext i32 %i.cyn to i64
  %i.cyp = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.cyo
  %i.cyq = xor i32 %.09034, -1
  %i.cyr = sext i32 %i.cyq to i64                 ; 2 uses
  %i.cys = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.cyr
  %.sroa.02797.0.copyload = load i64, ptr %i.cys, align 8, !tbaa !34
  %i.cyt = icmp ne i64 %.sroa.02797.0.copyload, 1 ; 2 uses
  %.09113.idx = select i1 %i.cyt, i64 -8, i64 0
  %.09113 = getelementptr i8, ptr %i.cyp, i64 %.09113.idx
  %i.cyu = zext i1 %i.cyt to i32
  %.09112 = add i32 %.09034, %i.cyu
  %i.cyv = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.4.val1003611541, ptr %i.cyv, align 8, !tbaa !65
  %i.cyw = call ptr @_Py_VectorCall_StackRefSteal(i64 %.sroa.02798.0.copyload, ptr noundef %.09113, i32 noundef %.09112, i64 1) #8 ; 3 uses
  %.4.val10185 = load ptr, ptr %i.cyv, align 8, !tbaa !65 ; 3 uses
  %i.cyx = icmp eq ptr %i.cyw, null
  br i1 %i.cyx, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.cyy = getelementptr [8 x i8], ptr %.4.val10185, i64 %i.cyf
  br label %.loopexit

bb.vc:                                            ; preds = %bb.va
  %i.cyz = getelementptr i8, ptr %i.cyw, i64 6
  %i.cza = load i16, ptr %i.cyz, align 2, !tbaa !34
  %i.czb = and i16 %i.cza, 1
  %i.czc = ptrtoint ptr %i.cyw to i64
  %i.czd = zext nneg i16 %i.czb to i64
  %i.cze = or i64 %i.czd, %i.czc
  %i.czf = getelementptr [8 x i8], ptr %.4.val10185, i64 %i.cyf
  store i64 %i.cze, ptr %i.czf, align 8, !tbaa !34
  %i.czg = getelementptr [8 x i8], ptr %.4.val10185, i64 %i.cyr ; 2 uses
  store ptr %i.czg, ptr %i.cyv, align 8, !tbaa !65
  %i.czh = load atomic i64, ptr %i.lqp monotonic, align 8
  %i.czi = and i64 %i.czh, 255
  %.not.i10799 = icmp eq i64 %i.czi, 0
  br i1 %.not.i10799, label %check_periodics.exit10801.thread, label %check_periodics.exit10801

check_periodics.exit10801:                        ; preds = %bb.vc
  %i.czj = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10184 = load ptr, ptr %i.cyv, align 8, !tbaa !65 ; 2 uses
  %.not9544 = icmp eq i32 %i.czj, 0
  br i1 %.not9544, label %check_periodics.exit10801.thread, label %.loopexit.loopexit

check_periodics.exit10801.thread:                 ; preds = %bb.vc, %check_periodics.exit10801
  %.4.val1018411504 = phi ptr [ %.4.val10184, %check_periodics.exit10801 ], [ %i.czg, %bb.vc ]
  %i.czk = load i16, ptr %i.cyd, align 2, !tbaa !66 ; 2 uses
  %.sroa.22784.0.extract.shift = lshr i16 %i.czk, 8
  %.sroa.22784.0.extract.trunc = zext nneg i16 %.sroa.22784.0.extract.shift to i32
  %i.czl = and i16 %i.czk, 255
  %i.czm = zext nneg i16 %i.czl to i64
  br label %.backedge.backedge

bb.vd:                                            ; preds = %.backedge
  %i.czn = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.czn, align 8, !tbaa !47
  %i.czo = getelementptr i8, ptr %.32, i64 8      ; 7 uses
  %i.czp = load ptr, ptr %i.lqq, align 8, !tbaa !46
  %i.czq = getelementptr i8, ptr %i.czp, i64 8568
  %i.czr = load ptr, ptr %i.czq, align 8, !tbaa !79
  %.not9541 = icmp eq ptr %i.czr, null
  br i1 %.not9541, label %bb.ve, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.ve:                                            ; preds = %bb.vd
  %i.czs = sub i32 -2, %.09034
  %i.czt = sext i32 %i.czs to i64
  %i.czu = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.czt ; 2 uses
  %.sroa.02777.0.copyload = load i64, ptr %i.czu, align 8, !tbaa !34 ; 2 uses
  %i.czv = and i64 %.sroa.02777.0.copyload, -2
  %i.czw = inttoptr i64 %i.czv to ptr             ; 3 uses
  %i.czx = getelementptr i8, ptr %i.czw, i64 8
  %i.czy = load ptr, ptr %i.czx, align 8, !tbaa !58
  %i.czz = icmp eq ptr %i.czy, @PyFunction_Type
  br i1 %i.czz, label %bb.vf, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vf:                                            ; preds = %bb.ve
  %i.daa = getelementptr i8, ptr %.32, i64 4
  %.val10422 = load i32, ptr %i.daa, align 2
  %i.dab = getelementptr i8, ptr %i.czw, i64 144
  %i.dac = load i32, ptr %i.dab, align 8, !tbaa !156
  %.not9542 = icmp eq i32 %i.dac, %.val10422
  br i1 %.not9542, label %bb.vg, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vg:                                            ; preds = %bb.vf
  %i.dad = xor i32 %.09034, -1
  %i.dae = sext i32 %i.dad to i64
  %i.daf = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.dae
  %.sroa.02774.0.copyload = load i64, ptr %i.daf, align 8, !tbaa !34 ; 2 uses
  %i.dag = getelementptr i8, ptr %i.czw, i64 48
  %i.dah = load ptr, ptr %i.dag, align 8, !tbaa !159 ; 2 uses
  %i.dai = getelementptr i8, ptr %i.dah, i64 52
  %i.daj = load i32, ptr %i.dai, align 4, !tbaa !186 ; 2 uses
  %i.dak = icmp ne i64 %.sroa.02774.0.copyload, 1 ; 3 uses
  %i.dal = zext i1 %i.dak to i32
  %i.dam = add i32 %.09034, %i.dal
  %.not9543 = icmp eq i32 %i.daj, %i.dam
  br i1 %.not9543, label %bb.vh, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vh:                                            ; preds = %bb.vg
  %i.dan = load ptr, ptr %i.lqv, align 8, !tbaa !158 ; 2 uses
  %.not.i10802 = icmp eq ptr %i.dan, null
  br i1 %.not.i10802, label %_PyThreadState_HasStackSpace.exit10638.thread, label %_PyThreadState_HasStackSpace.exit10803

_PyThreadState_HasStackSpace.exit10803:           ; preds = %bb.vh
  %i.dao = getelementptr i8, ptr %i.dah, i64 76
  %i.dap = load i32, ptr %i.dao, align 4, !tbaa !160
  %i.daq = sext i32 %i.dap to i64
  %i.dar = load ptr, ptr %i.lqw, align 8, !tbaa !161
  %i.das = ptrtoint ptr %i.dar to i64
  %i.dat = ptrtoint ptr %i.dan to i64
  %i.dau = sub i64 %i.das, %i.dat
  %i.dav = ashr exact i64 %i.dau, 3
  %i.daw = icmp sgt i64 %i.dav, %i.daq
  br i1 %i.daw, label %bb.vi, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vi:                                            ; preds = %_PyThreadState_HasStackSpace.exit10803
  %i.dax = load i32, ptr %i.lqr, align 4, !tbaa !45
  %i.day = icmp slt i32 %i.dax, 2
  br i1 %i.day, label %_PyThreadState_HasStackSpace.exit10638.thread, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.daz = sub i32 0, %.09034
  %i.dba = sext i32 %i.daz to i64                 ; 2 uses
  %i.dbb = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.dba ; 6 uses
  %6 = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.02777.0.copyload, i32 noundef %i.daj, ptr noundef nonnull %.4) ; 6 uses
  %7 = ptrtoaddr ptr %6 to i64
  %i.dbc = getelementptr i8, ptr %6, i64 80       ; 2 uses
  %8 = zext i1 %i.dak to i64
  %9 = getelementptr [8 x i8], ptr %i.dbc, i64 %8 ; 6 uses
  store i64 %.sroa.02774.0.copyload, ptr %i.dbc, align 8, !tbaa !34
  %i.dbd = icmp sgt i32 %.09034, 0
  br i1 %i.dbd, label %.lr.ph12100.preheader, label %._crit_edge12101

.lr.ph12100.preheader:                            ; preds = %bb.vj
  %wide.trip.count = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check14686 = icmp ult i32 %.09034, 10
  br i1 %min.iters.check14686, label %.lr.ph12100.preheader14704, label %vector.memcheck14682

vector.memcheck14682:                             ; preds = %.lr.ph12100.preheader
  %i.dbe = add i64 %7, 80
  %i.dbf = select i1 %i.dak, i64 8, i64 0
  %i.dbg = add i64 %i.dbe, %i.dbf
  %i.dbh = shl nsw i64 %i.dba, 3
  %i.dbi = add i64 %i.dbh, %.4.val100361154114683
  %i.dbj = sub i64 %i.dbi, %i.dbg
  %diff.check14684 = icmp ugt i64 %i.dbj, -32
  br i1 %diff.check14684, label %.lr.ph12100.preheader14704, label %vector.ph14687

vector.ph14687:                                   ; preds = %vector.memcheck14682
  %n.vec14689 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body14690

vector.body14690:                                 ; preds = %vector.body14690, %vector.ph14687
  %index14691 = phi i64 [ 0, %vector.ph14687 ], [ %index.next14694, %vector.body14690 ] ; 3 uses
  %i.dbk = getelementptr [8 x i8], ptr %9, i64 %index14691 ; 2 uses
  %i.dbl = getelementptr [8 x i8], ptr %i.dbb, i64 %index14691 ; 2 uses
  %i.dbm = getelementptr i8, ptr %i.dbl, i64 16
  %wide.load14692 = load <2 x i64>, ptr %i.dbl, align 8, !tbaa !34
  %wide.load14693 = load <2 x i64>, ptr %i.dbm, align 8, !tbaa !34
  %i.dbn = getelementptr i8, ptr %i.dbk, i64 16
  store <2 x i64> %wide.load14692, ptr %i.dbk, align 8, !tbaa !34
  store <2 x i64> %wide.load14693, ptr %i.dbn, align 8, !tbaa !34
  %index.next14694 = add nuw i64 %index14691, 4   ; 2 uses
  %i.dbo = icmp eq i64 %index.next14694, %n.vec14689
  br i1 %i.dbo, label %middle.block14695, label %vector.body14690, !llvm.loop !210

middle.block14695:                                ; preds = %vector.body14690
  %cmp.n14696 = icmp eq i64 %n.vec14689, %wide.trip.count
  br i1 %cmp.n14696, label %._crit_edge12101, label %.lr.ph12100.preheader14704

.lr.ph12100.preheader14704:                       ; preds = %vector.memcheck14682, %.lr.ph12100.preheader, %middle.block14695
  %indvars.iv13191.ph = phi i64 [ 0, %vector.memcheck14682 ], [ 0, %.lr.ph12100.preheader ], [ %n.vec14689, %middle.block14695 ] ; 3 uses
  %xtraiter15188 = and i64 %wide.trip.count, 3    ; 2 uses
  %lcmp.mod15189.not = icmp eq i64 %xtraiter15188, 0
  br i1 %lcmp.mod15189.not, label %.lr.ph12100.prol.loopexit, label %.lr.ph12100.prol

.lr.ph12100.prol:                                 ; preds = %.lr.ph12100.preheader14704, %.lr.ph12100.prol
  %indvars.iv13191.prol = phi i64 [ %indvars.iv.next13192.prol, %.lr.ph12100.prol ], [ %indvars.iv13191.ph, %.lr.ph12100.preheader14704 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph12100.prol ], [ 0, %.lr.ph12100.preheader14704 ]
  %i.dbp = getelementptr [8 x i8], ptr %9, i64 %indvars.iv13191.prol
  %i.dbq = getelementptr [8 x i8], ptr %i.dbb, i64 %indvars.iv13191.prol
  %i.dbr = load i64, ptr %i.dbq, align 8, !tbaa !34
  store i64 %i.dbr, ptr %i.dbp, align 8, !tbaa !34
  %indvars.iv.next13192.prol = add nuw nsw i64 %indvars.iv13191.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter15188
  br i1 %prol.iter.cmp.not, label %.lr.ph12100.prol.loopexit, label %.lr.ph12100.prol, !llvm.loop !211

.lr.ph12100.prol.loopexit:                        ; preds = %.lr.ph12100.prol, %.lr.ph12100.preheader14704
  %indvars.iv13191.unr = phi i64 [ %indvars.iv13191.ph, %.lr.ph12100.preheader14704 ], [ %indvars.iv.next13192.prol, %.lr.ph12100.prol ]
  %i.dbs = sub nsw i64 %indvars.iv13191.ph, %wide.trip.count
  %i.dbt = icmp ugt i64 %i.dbs, -4
  br i1 %i.dbt, label %._crit_edge12101, label %.lr.ph12100

.lr.ph12100:                                      ; preds = %.lr.ph12100.prol.loopexit, %.lr.ph12100
  %indvars.iv13191 = phi i64 [ %indvars.iv.next13192.3, %.lr.ph12100 ], [ %indvars.iv13191.unr, %.lr.ph12100.prol.loopexit ] ; 6 uses
  %i.dbu = getelementptr [8 x i8], ptr %9, i64 %indvars.iv13191
  %i.dbv = getelementptr [8 x i8], ptr %i.dbb, i64 %indvars.iv13191
  %i.dbw = load i64, ptr %i.dbv, align 8, !tbaa !34
  store i64 %i.dbw, ptr %i.dbu, align 8, !tbaa !34
  %indvars.iv.next13192 = add nuw nsw i64 %indvars.iv13191, 1 ; 2 uses
  %i.dbx = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.next13192
  %i.dby = getelementptr [8 x i8], ptr %i.dbb, i64 %indvars.iv.next13192
  %i.dbz = load i64, ptr %i.dby, align 8, !tbaa !34
  store i64 %i.dbz, ptr %i.dbx, align 8, !tbaa !34
  %indvars.iv.next13192.1 = add nuw nsw i64 %indvars.iv13191, 2 ; 2 uses
  %i.dca = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.next13192.1
  %i.dcb = getelementptr [8 x i8], ptr %i.dbb, i64 %indvars.iv.next13192.1
  %i.dcc = load i64, ptr %i.dcb, align 8, !tbaa !34
  store i64 %i.dcc, ptr %i.dca, align 8, !tbaa !34
  %indvars.iv.next13192.2 = add nuw nsw i64 %indvars.iv13191, 3 ; 2 uses
  %i.dcd = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.next13192.2
  %i.dce = getelementptr [8 x i8], ptr %i.dbb, i64 %indvars.iv.next13192.2
  %i.dcf = load i64, ptr %i.dce, align 8, !tbaa !34
  store i64 %i.dcf, ptr %i.dcd, align 8, !tbaa !34
  %indvars.iv.next13192.3 = add nuw nsw i64 %indvars.iv13191, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next13192.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge12101, label %.lr.ph12100, !llvm.loop !212

._crit_edge12101:                                 ; preds = %.lr.ph12100.prol.loopexit, %.lr.ph12100, %middle.block14695, %bb.vj
  %i.dcg = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dcg, align 8, !tbaa !165
  %i.dch = getelementptr i8, ptr %.4, i64 64
  store ptr %i.czu, ptr %i.dch, align 8, !tbaa !65
  store ptr %6, ptr %i.ai, align 8, !tbaa !42
  %i.dci = load i32, ptr %i.lqr, align 4, !tbaa !45
  %i.dcj = add i32 %i.dci, -1
  store i32 %i.dcj, ptr %i.lqr, align 4, !tbaa !45
  %10 = getelementptr i8, ptr %6, i64 64
  %.val10183 = load ptr, ptr %10, align 8, !tbaa !65
  %11 = getelementptr i8, ptr %6, i64 56
  %i.dck = load ptr, ptr %11, align 8, !tbaa !47  ; 2 uses
  %i.dcl = load i16, ptr %i.dck, align 2, !tbaa !66 ; 2 uses
  %.sroa.22749.0.extract.shift = lshr i16 %i.dcl, 8
  %.sroa.22749.0.extract.trunc = zext nneg i16 %.sroa.22749.0.extract.shift to i32
  %i.dcm = and i16 %i.dcl, 255
  %i.dcn = zext nneg i16 %i.dcm to i64
  br label %.backedge.backedge

bb.vk:                                            ; preds = %.backedge
  %i.dco = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dco, align 8, !tbaa !47
  %i.dcp = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.dcq = load ptr, ptr %i.lqq, align 8, !tbaa !46
  %i.dcr = getelementptr i8, ptr %i.dcq, i64 8568
  %i.dcs = load ptr, ptr %i.dcr, align 8, !tbaa !79
  %.not9538 = icmp eq ptr %i.dcs, null
  br i1 %.not9538, label %bb.vl, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vl:                                            ; preds = %bb.vk
  %i.dct = sub i32 -2, %.09034
  %i.dcu = sext i32 %i.dct to i64                 ; 2 uses
  %i.dcv = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.dcu
  %.sroa.02743.0.copyload = load i64, ptr %i.dcv, align 8, !tbaa !34 ; 2 uses
  %i.dcw = and i64 %.sroa.02743.0.copyload, -2
  %i.dcx = inttoptr i64 %i.dcw to ptr             ; 4 uses
  %i.dcy = getelementptr i8, ptr %i.dcx, i64 8
  %i.dcz = load ptr, ptr %i.dcy, align 8, !tbaa !58
  %i.dda = icmp eq ptr %i.dcz, @PyFunction_Type
  br i1 %i.dda, label %bb.vm, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vm:                                            ; preds = %bb.vl
  %i.ddb = getelementptr i8, ptr %.32, i64 4
  %.val10421 = load i32, ptr %i.ddb, align 2
  %i.ddc = getelementptr i8, ptr %i.dcx, i64 144
  %i.ddd = load i32, ptr %i.ddc, align 8, !tbaa !156
  %.not9539 = icmp eq i32 %i.ddd, %.val10421
  br i1 %.not9539, label %bb.vn, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vn:                                            ; preds = %bb.vm
  %i.dde = load i32, ptr %i.lqr, align 4, !tbaa !45
  %i.ddf = icmp slt i32 %i.dde, 2
  br i1 %i.ddf, label %_PyThreadState_HasStackSpace.exit10638.thread, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.ddg = sub i32 0, %.09034
  %i.ddh = sext i32 %i.ddg to i64
  %i.ddi = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.ddh
  %i.ddj = xor i32 %.09034, -1
  %i.ddk = sext i32 %i.ddj to i64
  %i.ddl = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.ddk
  %.sroa.02742.0.copyload = load i64, ptr %i.ddl, align 8, !tbaa !34
  %i.ddm = icmp ne i64 %.sroa.02742.0.copyload, 1 ; 2 uses
  %i.ddn = zext i1 %i.ddm to i32
  %.09117 = add i32 %.09034, %i.ddn
  %.09116.idx = select i1 %i.ddm, i64 -8, i64 0
  %.09116 = getelementptr i8, ptr %i.ddi, i64 %.09116.idx
  %i.ddo = getelementptr i8, ptr %i.dcx, i64 48
  %.val10357 = load ptr, ptr %i.ddo, align 8, !tbaa !159
  %i.ddp = getelementptr i8, ptr %.val10357, i64 48
  %i.ddq = load i32, ptr %i.ddp, align 8, !tbaa !48
  %i.ddr = and i32 %i.ddq, 1
  %.not9540 = icmp eq i32 %i.ddr, 0
  br i1 %.not9540, label %bb.vp, label %_Py_NewRef.exit10804

bb.vp:                                            ; preds = %bb.vo
  %i.dds = getelementptr i8, ptr %i.dcx, i64 16
  %.val10392 = load ptr, ptr %i.dds, align 8, !tbaa !183 ; 4 uses
  %i.ddt = load i32, ptr %.val10392, align 8, !tbaa !34 ; 2 uses
  %i.ddu = icmp ugt i32 %i.ddt, -1073741825
  br i1 %i.ddu, label %_Py_NewRef.exit10804, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.ddv = add nuw i32 %i.ddt, 1
  store i32 %i.ddv, ptr %.val10392, align 8, !tbaa !34
  br label %_Py_NewRef.exit10804

_Py_NewRef.exit10804:                             ; preds = %bb.vq, %bb.vp, %bb.vo
  %i.ddw = phi ptr [ null, %bb.vo ], [ %.val10392, %bb.vp ], [ %.val10392, %bb.vq ]
  %i.ddx = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1003611541, ptr %i.ddx, align 8, !tbaa !65
  %i.ddy = sext i32 %.09117 to i64
  %i.ddz = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02743.0.copyload, ptr noundef %i.ddw, ptr noundef %.09116, i64 noundef %i.ddy, ptr noundef null, ptr noundef nonnull %.4) #8 ; 5 uses
  %.4.val10182 = load ptr, ptr %i.ddx, align 8, !tbaa !65
  %i.dea = getelementptr [8 x i8], ptr %.4.val10182, i64 %i.dcu ; 2 uses
  %i.deb = icmp eq ptr %i.ddz, null
  br i1 %i.deb, label %.loopexit.loopexit, label %bb.vr

bb.vr:                                            ; preds = %_Py_NewRef.exit10804
  %i.dec = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dec, align 8, !tbaa !165
  store ptr %i.dea, ptr %i.ddx, align 8, !tbaa !65
  store ptr %i.ddz, ptr %i.ai, align 8, !tbaa !42
  %i.ded = load i32, ptr %i.lqr, align 4, !tbaa !45
  %i.dee = add i32 %i.ded, -1
  store i32 %i.dee, ptr %i.lqr, align 4, !tbaa !45
  %i.def = getelementptr i8, ptr %i.ddz, i64 64
  %.val10181 = load ptr, ptr %i.def, align 8, !tbaa !65
  %i.deg = getelementptr i8, ptr %i.ddz, i64 56
  %i.deh = load ptr, ptr %i.deg, align 8, !tbaa !47 ; 2 uses
  %i.dei = load i16, ptr %i.deh, align 2, !tbaa !66 ; 2 uses
  %.sroa.22724.0.extract.shift = lshr i16 %i.dei, 8
  %.sroa.22724.0.extract.trunc = zext nneg i16 %.sroa.22724.0.extract.shift to i32
  %i.dej = and i16 %i.dei, 255
  %i.dek = zext nneg i16 %i.dej to i64
  br label %.backedge.backedge

bb.vs:                                            ; preds = %.backedge
  %i.del = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.del, align 8, !tbaa !47
  %i.dem = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.den = getelementptr i8, ptr %.4.val1003611541, i64 -16
  %.sroa.02722.0.copyload = load i64, ptr %i.den, align 8, !tbaa !34
  %i.deo = icmp eq i64 %.sroa.02722.0.copyload, 1
  br i1 %i.deo, label %bb.vt, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vt:                                            ; preds = %bb.vs
  %i.dep = getelementptr i8, ptr %.4.val1003611541, i64 -24
  %.sroa.02721.0.copyload = load i64, ptr %i.dep, align 8, !tbaa !34
  %i.deq = and i64 %.sroa.02721.0.copyload, -2
  %.not9536 = icmp eq i64 %i.deq, ptrtoint (ptr @PyUnicode_Type to i64)
  br i1 %.not9536, label %bb.vu, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.vu:                                            ; preds = %bb.vt
  %i.der = getelementptr i8, ptr %.4.val1003611541, i64 -8
  %.sroa.02719.0.copyload = load i64, ptr %i.der, align 8, !tbaa !34 ; 3 uses
  %i.des = and i64 %.sroa.02719.0.copyload, -2
  %i.det = inttoptr i64 %i.des to ptr
  %i.deu = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1003611541, ptr %i.deu, align 8, !tbaa !65
  %i.dev = call ptr @PyObject_Str(ptr noundef %i.det) #8 ; 3 uses
  %.4.val10180 = load ptr, ptr %i.deu, align 8, !tbaa !65 ; 3 uses
  %i.dew = icmp eq ptr %i.dev, null
  br i1 %i.dew, label %.loopexit.loopexit, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.dex = getelementptr i8, ptr %i.dev, i64 6
  %i.dey = load i16, ptr %i.dex, align 2, !tbaa !34
  %i.dez = and i16 %i.dey, 1
  %i.dfa = ptrtoint ptr %i.dev to i64
  %i.dfb = zext nneg i16 %i.dez to i64
  %i.dfc = or i64 %i.dfb, %i.dfa
  %i.dfd = getelementptr i8, ptr %.4.val10180, i64 -24
  store i64 %i.dfc, ptr %i.dfd, align 8, !tbaa !34
  %i.dfe = getelementptr i8, ptr %.4.val10180, i64 -16
  store ptr %i.dfe, ptr %i.deu, align 8, !tbaa !65
  %i.dff = and i64 %.sroa.02719.0.copyload, 1
  %.not.not.i10805 = icmp eq i64 %i.dff, 0
  br i1 %.not.not.i10805, label %bb.vw, label %PyStackRef_XCLOSE.exit10806

bb.vw:                                            ; preds = %bb.vv
  %i.dfg = inttoptr i64 %.sroa.02719.0.copyload to ptr ; 3 uses
  %i.dfh = load i32, ptr %i.dfg, align 8, !tbaa !34
  %i.dfi = add i32 %i.dfh, -1                     ; 2 uses
  store i32 %i.dfi, ptr %i.dfg, align 8, !tbaa !34
  %i.dfj = icmp eq i32 %i.dfi, 0
  br i1 %i.dfj, label %bb.vx, label %PyStackRef_XCLOSE.exit10806

bb.vx:                                            ; preds = %bb.vw
  call void @_Py_Dealloc(ptr noundef nonnull %i.dfg) #8
  br label %PyStackRef_XCLOSE.exit10806

PyStackRef_XCLOSE.exit10806:                      ; preds = %bb.vv, %bb.vw, %bb.vx
  %i.dfk = load atomic i64, ptr %i.lqp monotonic, align 8
  %i.dfl = and i64 %i.dfk, 255
  %.not.i10807 = icmp eq i64 %i.dfl, 0
  br i1 %.not.i10807, label %check_periodics.exit10809.thread, label %check_periodics.exit10809

check_periodics.exit10809.thread:                 ; preds = %PyStackRef_XCLOSE.exit10806
  %.4.val1017811506 = load ptr, ptr %i.deu, align 8, !tbaa !65
  br label %bb.vy

check_periodics.exit10809:                        ; preds = %PyStackRef_XCLOSE.exit10806
  %i.dfm = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10178 = load ptr, ptr %i.deu, align 8, !tbaa !65 ; 2 uses
  %.not9537 = icmp eq i32 %i.dfm, 0
  br i1 %.not9537, label %bb.vy, label %.loopexit.loopexit

bb.vy:                                            ; preds = %check_periodics.exit10809.thread, %check_periodics.exit10809
  %.4.val1017811508 = phi ptr [ %.4.val1017811506, %check_periodics.exit10809.thread ], [ %.4.val10178, %check_periodics.exit10809 ]
  %i.dfn = load i16, ptr %i.dem, align 2, !tbaa !66 ; 2 uses
  %.sroa.22709.0.extract.shift = lshr i16 %i.dfn, 8
  %.sroa.22709.0.extract.trunc = zext nneg i16 %.sroa.22709.0.extract.shift to i32
  %i.dfo = and i16 %i.dfn, 255
  %i.dfp = zext nneg i16 %i.dfo to i64
  br label %.backedge.backedge

bb.vz:                                            ; preds = %.backedge
  %i.dfq = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dfq, align 8, !tbaa !47
  %i.dfr = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.dfs = getelementptr i8, ptr %.4.val1003611541, i64 -16
  %.sroa.02707.0.copyload = load i64, ptr %i.dfs, align 8, !tbaa !34
  %i.dft = icmp eq i64 %.sroa.02707.0.copyload, 1
  br i1 %i.dft, label %bb.wa, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.wa:                                            ; preds = %bb.vz
  %i.dfu = getelementptr i8, ptr %.4.val1003611541, i64 -24
  %.sroa.02706.0.copyload = load i64, ptr %i.dfu, align 8, !tbaa !34
  %i.dfv = and i64 %.sroa.02706.0.copyload, -2
  %.not9534 = icmp eq i64 %i.dfv, ptrtoint (ptr @PyTuple_Type to i64)
  br i1 %.not9534, label %bb.wb, label %_PyThreadState_HasStackSpace.exit10638.thread
end_hunk_1
begin_hunk_2_@Test_EvalFrame:bb.a
  %.val10431 = load ptr, ptr %i.gsr, align 8, !tbaa !58
  %i.gss = getelementptr i8, ptr %.val10431, i64 168
  %.val10431.val = load i64, ptr %i.gss, align 8, !tbaa !145
  %i.gst = and i64 %.val10431.val, 2147483648
  %.not11594 = icmp eq i64 %i.gst, 0
  br i1 %.not11594, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.arm

bb.arm:                                           ; preds = %bb.arl
  %i.gsu = getelementptr i8, ptr %.32, i64 4
  %.val10420 = load i32, ptr %i.gsu, align 2
  %i.gsv = getelementptr i8, ptr %i.gsq, i64 384
  %i.gsw = load i32, ptr %i.gsv, align 8, !tbaa !184
  %.not9514 = icmp eq i32 %i.gsw, %.val10420
  br i1 %.not9514, label %bb.arn, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.arn:                                           ; preds = %bb.arm
  %i.gsx = getelementptr i8, ptr %.32, i64 12
  %.val10351 = load ptr, ptr %i.gsx, align 2      ; 4 uses
  %i.gsy = load i32, ptr %.val10351, align 8, !tbaa !34 ; 2 uses
  %.not.i11071 = icmp sgt i32 %i.gsy, -1
  br i1 %.not.i11071, label %bb.arp, label %bb.aro

bb.aro:                                           ; preds = %bb.arn
  %i.gsz = ptrtoint ptr %.val10351 to i64
  %i.gta = or i64 %i.gsz, 1
  br label %_PyStackRef_FromPyObjectNew.exit11073

bb.arp:                                           ; preds = %bb.arn
  %i.gtb = add nuw i32 %i.gsy, 1
  store i32 %i.gtb, ptr %.val10351, align 8, !tbaa !34
  %i.gtc = ptrtoint ptr %.val10351 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11073

_PyStackRef_FromPyObjectNew.exit11073:            ; preds = %bb.aro, %bb.arp
  %.sroa.0.0.i11072 = phi i64 [ %i.gta, %bb.aro ], [ %i.gtc, %bb.arp ]
  %i.gtd = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611541, ptr %i.gtd, align 8, !tbaa !65
  store i64 %.sroa.0.0.i11072, ptr %i.gso, align 8, !tbaa !34
  %i.gte = and i64 %.sroa.01519.0.copyload, 1
  %.not.not.i11074 = icmp eq i64 %i.gte, 0
  br i1 %.not.not.i11074, label %bb.arq, label %PyStackRef_CLOSE.exit11075

bb.arq:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11073
  %i.gtf = inttoptr i64 %.sroa.01519.0.copyload to ptr ; 3 uses
  %i.gtg = load i32, ptr %i.gtf, align 8, !tbaa !34
  %i.gth = add i32 %i.gtg, -1                     ; 2 uses
  store i32 %i.gth, ptr %i.gtf, align 8, !tbaa !34
  %i.gti = icmp eq i32 %i.gth, 0
  br i1 %i.gti, label %bb.arr, label %PyStackRef_CLOSE.exit11075

bb.arr:                                           ; preds = %bb.arq
  call void @_Py_Dealloc(ptr noundef nonnull %i.gtf) #8
  br label %PyStackRef_CLOSE.exit11075

PyStackRef_CLOSE.exit11075:                       ; preds = %_PyStackRef_FromPyObjectNew.exit11073, %bb.arq, %bb.arr
  %.4.val10024 = load ptr, ptr %i.gtd, align 8, !tbaa !65 ; 2 uses
  %i.gtj = and i32 %.09034, 1                     ; 2 uses
  %.not9515 = icmp eq i32 %i.gtj, 0
  br i1 %.not9515, label %bb.art, label %bb.ars

bb.ars:                                           ; preds = %PyStackRef_CLOSE.exit11075
  store i64 1, ptr %.4.val10024, align 8, !tbaa !34
  br label %bb.art

bb.art:                                           ; preds = %bb.ars, %PyStackRef_CLOSE.exit11075
  %i.gtk = zext nneg i32 %i.gtj to i64
  %i.gtl = getelementptr [8 x i8], ptr %.4.val10024, i64 %i.gtk
  %i.gtm = load i16, ptr %i.gsn, align 2, !tbaa !66 ; 2 uses
  %.sroa.21510.0.extract.shift = lshr i16 %i.gtm, 8
  %.sroa.21510.0.extract.trunc = zext nneg i16 %.sroa.21510.0.extract.shift to i32
  %i.gtn = and i16 %i.gtm, 255
  %i.gto = zext nneg i16 %i.gtn to i64
  br label %.backedge.backedge

bb.aru:                                           ; preds = %.backedge
  %i.gtp = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.gtp, align 8, !tbaa !47
  %i.gtq = getelementptr i8, ptr %.32, i64 20     ; 5 uses
  %i.gtr = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01502.0.copyload = load i64, ptr %i.gtr, align 8, !tbaa !34 ; 6 uses
  %i.gts = getelementptr i8, ptr %.32, i64 4
  %.val10419 = load i32, ptr %i.gts, align 2
  %i.gtt = and i64 %.sroa.01502.0.copyload, -2
  %i.gtu = inttoptr i64 %i.gtt to ptr             ; 2 uses
  %i.gtv = getelementptr i8, ptr %i.gtu, i64 8
  %.val9857 = load ptr, ptr %i.gtv, align 8, !tbaa !58 ; 2 uses
  %i.gtw = getelementptr i8, ptr %.val9857, i64 384
  %i.gtx = load i32, ptr %i.gtw, align 8, !tbaa !184
  %.not9509 = icmp eq i32 %i.gtx, %.val10419
  br i1 %.not9509, label %bb.arv, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.arv:                                           ; preds = %bb.aru
  %i.gty = getelementptr i8, ptr %.val9857, i64 168
  %.val10430.val = load i64, ptr %i.gty, align 8, !tbaa !145
  %i.gtz = and i64 %.val10430.val, 2147483648
  %.not11593 = icmp eq i64 %i.gtz, 0
  br i1 %.not11593, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.arw

bb.arw:                                           ; preds = %bb.arv
  %i.gua = getelementptr i8, ptr %.32, i64 8
  %.val10418 = load i32, ptr %i.gua, align 2
  %i.gub = getelementptr i8, ptr %i.gtu, i64 384
  %i.guc = load i32, ptr %i.gub, align 8, !tbaa !184
  %.not9511 = icmp eq i32 %i.guc, %.val10418
  br i1 %.not9511, label %bb.arx, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.arx:                                           ; preds = %bb.arw
  %i.gud = getelementptr i8, ptr %.32, i64 12
  %.val10350 = load ptr, ptr %i.gud, align 2      ; 4 uses
  %i.gue = load i32, ptr %.val10350, align 8, !tbaa !34 ; 2 uses
  %.not.i11076 = icmp sgt i32 %i.gue, -1
  br i1 %.not.i11076, label %bb.arz, label %bb.ary

bb.ary:                                           ; preds = %bb.arx
  %i.guf = ptrtoint ptr %.val10350 to i64
  %i.gug = or i64 %i.guf, 1
  br label %_PyStackRef_FromPyObjectNew.exit11078

bb.arz:                                           ; preds = %bb.arx
  %i.guh = add nuw i32 %i.gue, 1
  store i32 %i.guh, ptr %.val10350, align 8, !tbaa !34
  %i.gui = ptrtoint ptr %.val10350 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11078

_PyStackRef_FromPyObjectNew.exit11078:            ; preds = %bb.ary, %bb.arz
  %.sroa.0.0.i11077 = phi i64 [ %i.gug, %bb.ary ], [ %i.gui, %bb.arz ]
  %i.guj = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611541, ptr %i.guj, align 8, !tbaa !65
  store i64 %.sroa.0.0.i11077, ptr %i.gtr, align 8, !tbaa !34
  %i.guk = and i64 %.sroa.01502.0.copyload, 1
  %.not.not.i11079 = icmp eq i64 %i.guk, 0
  br i1 %.not.not.i11079, label %bb.asa, label %PyStackRef_CLOSE.exit11080

bb.asa:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11078
  %i.gul = inttoptr i64 %.sroa.01502.0.copyload to ptr ; 3 uses
  %i.gum = load i32, ptr %i.gul, align 8, !tbaa !34
  %i.gun = add i32 %i.gum, -1                     ; 2 uses
  store i32 %i.gun, ptr %i.gul, align 8, !tbaa !34
  %i.guo = icmp eq i32 %i.gun, 0
  br i1 %i.guo, label %bb.asb, label %PyStackRef_CLOSE.exit11080

bb.asb:                                           ; preds = %bb.asa
  call void @_Py_Dealloc(ptr noundef nonnull %i.gul) #8
  br label %PyStackRef_CLOSE.exit11080

PyStackRef_CLOSE.exit11080:                       ; preds = %_PyStackRef_FromPyObjectNew.exit11078, %bb.asa, %bb.asb
  %.4.val10023 = load ptr, ptr %i.guj, align 8, !tbaa !65 ; 2 uses
  %i.gup = and i32 %.09034, 1                     ; 2 uses
  %.not9512 = icmp eq i32 %i.gup, 0
  br i1 %.not9512, label %bb.asd, label %bb.asc

bb.asc:                                           ; preds = %PyStackRef_CLOSE.exit11080
  store i64 1, ptr %.4.val10023, align 8, !tbaa !34
  br label %bb.asd

bb.asd:                                           ; preds = %bb.asc, %PyStackRef_CLOSE.exit11080
  %i.guq = zext nneg i32 %i.gup to i64
  %i.gur = getelementptr [8 x i8], ptr %.4.val10023, i64 %i.guq
  %i.gus = load i16, ptr %i.gtq, align 2, !tbaa !66 ; 2 uses
  %.sroa.21491.0.extract.shift = lshr i16 %i.gus, 8
  %.sroa.21491.0.extract.trunc = zext nneg i16 %.sroa.21491.0.extract.shift to i32
  %i.gut = and i16 %i.gus, 255
  %i.guu = zext nneg i16 %i.gut to i64
  br label %.backedge.backedge

bb.ase:                                           ; preds = %.backedge
  %i.guv = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.guv, align 8, !tbaa !47
  %i.guw = getelementptr i8, ptr %.32, i64 20     ; 5 uses
  %i.gux = getelementptr i8, ptr %.4.val1003611541, i64 -8
  %.sroa.01485.0.copyload = load i64, ptr %i.gux, align 8, !tbaa !34 ; 7 uses
  %i.guy = getelementptr i8, ptr %.32, i64 8
  %.val10416 = load i32, ptr %i.guy, align 2
  %i.guz = getelementptr i8, ptr %.32, i64 12
  %.val10349 = load ptr, ptr %i.guz, align 2      ; 6 uses
  %i.gva = load ptr, ptr %i.lqq, align 8, !tbaa !46
  %i.gvb = getelementptr i8, ptr %i.gva, i64 8568
  %i.gvc = load ptr, ptr %i.gvb, align 8, !tbaa !79
  %.not9506 = icmp eq ptr %i.gvc, null
  br i1 %.not9506, label %bb.asf, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.asf:                                           ; preds = %bb.ase
  %i.gvd = and i64 %.sroa.01485.0.copyload, -2
  %i.gve = inttoptr i64 %i.gvd to ptr
  %i.gvf = getelementptr i8, ptr %.32, i64 4
  %.val10417 = load i32, ptr %i.gvf, align 2
  %i.gvg = getelementptr i8, ptr %i.gve, i64 8
  %.val9856 = load ptr, ptr %i.gvg, align 8, !tbaa !58
  %i.gvh = getelementptr i8, ptr %.val9856, i64 384
  %i.gvi = load i32, ptr %i.gvh, align 8, !tbaa !184
  %.not9507 = icmp eq i32 %i.gvi, %.val10417
  br i1 %.not9507, label %bb.asg, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.asg:                                           ; preds = %bb.asf
  %i.gvj = getelementptr i8, ptr %.val10349, i64 144
  %i.gvk = load i32, ptr %i.gvj, align 8, !tbaa !156
  %.not9508 = icmp eq i32 %i.gvk, %.val10416
  br i1 %.not9508, label %bb.ash, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.ash:                                           ; preds = %bb.asg
  %i.gvl = load ptr, ptr %i.lqv, align 8, !tbaa !158 ; 2 uses
  %.not.i11081 = icmp eq ptr %i.gvl, null
  br i1 %.not.i11081, label %_PyThreadState_HasStackSpace.exit11082.thread, label %_PyThreadState_HasStackSpace.exit11082

_PyThreadState_HasStackSpace.exit11082:           ; preds = %bb.ash
  %i.gvm = getelementptr i8, ptr %.val10349, i64 48
  %i.gvn = load ptr, ptr %i.gvm, align 8, !tbaa !159
  %i.gvo = getelementptr i8, ptr %i.gvn, i64 76
  %i.gvp = load i32, ptr %i.gvo, align 4, !tbaa !160
  %i.gvq = sext i32 %i.gvp to i64
  %i.gvr = load ptr, ptr %i.lqw, align 8, !tbaa !161
  %i.gvs = ptrtoint ptr %i.gvr to i64
  %i.gvt = ptrtoint ptr %i.gvl to i64
  %i.gvu = sub i64 %i.gvs, %i.gvt
  %i.gvv = ashr exact i64 %i.gvu, 3
  %i.gvw = icmp sgt i64 %i.gvv, %i.gvq
  br i1 %i.gvw, label %bb.asi, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.asi:                                           ; preds = %_PyThreadState_HasStackSpace.exit11082
  %i.gvx = getelementptr i8, ptr %.4.val1003611541, i64 -8
  %.4.val9800 = load i64, ptr %.4, align 8
  %i.gvy = and i64 %.4.val9800, -2
  %i.gvz = inttoptr i64 %i.gvy to ptr
  %i.gwa = getelementptr i8, ptr %i.gvz, i64 32
  %i.gwb = load ptr, ptr %i.gwa, align 8, !tbaa !218
  %i.gwc = getelementptr i8, ptr %i.gwb, i64 32
  %i.gwd = ashr i32 %.09034, 1
  %i.gwe = sext i32 %i.gwd to i64
  %i.gwf = getelementptr [8 x i8], ptr %i.gwc, i64 %i.gwe
  %i.gwg = load ptr, ptr %i.gwf, align 8, !tbaa !78 ; 4 uses
  %i.gwh = load i32, ptr %.val10349, align 8, !tbaa !34 ; 2 uses
  %.not.i11083 = icmp sgt i32 %i.gwh, -1
  br i1 %.not.i11083, label %bb.ask, label %bb.asj

bb.asj:                                           ; preds = %bb.asi
  %i.gwi = ptrtoint ptr %.val10349 to i64
  %i.gwj = or i64 %i.gwi, 1
  br label %_PyStackRef_FromPyObjectNew.exit11085

bb.ask:                                           ; preds = %bb.asi
  %i.gwk = add nuw i32 %i.gwh, 1
  store i32 %i.gwk, ptr %.val10349, align 8, !tbaa !34
  %i.gwl = ptrtoint ptr %.val10349 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11085

_PyStackRef_FromPyObjectNew.exit11085:            ; preds = %bb.asj, %bb.ask
  %.sroa.0.0.i11084 = phi i64 [ %i.gwj, %bb.asj ], [ %i.gwl, %bb.ask ]
  %12 = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.0.0.i11084, i32 noundef 2, ptr noundef nonnull %.4) ; 3 uses
  %i.gwm = getelementptr i8, ptr %12, i64 80
  store i64 %.sroa.01485.0.copyload, ptr %i.gwm, align 8, !tbaa !34
  %i.gwn = getelementptr i8, ptr %12, i64 88
  %i.gwo = load i32, ptr %i.gwg, align 8, !tbaa !34 ; 2 uses
  %.not.i11086 = icmp sgt i32 %i.gwo, -1
  br i1 %.not.i11086, label %bb.asm, label %bb.asl

bb.asl:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11085
  %i.gwp = ptrtoint ptr %i.gwg to i64
  %i.gwq = or i64 %i.gwp, 1
  br label %_PyStackRef_FromPyObjectNew.exit11088

bb.asm:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11085
  %i.gwr = add nuw i32 %i.gwo, 1
  store i32 %i.gwr, ptr %i.gwg, align 8, !tbaa !34
  %i.gws = ptrtoint ptr %i.gwg to i64
  br label %_PyStackRef_FromPyObjectNew.exit11088

_PyStackRef_FromPyObjectNew.exit11088:            ; preds = %bb.asl, %bb.asm
  %.sroa.0.0.i11087 = phi i64 [ %i.gwq, %bb.asl ], [ %i.gws, %bb.asm ]
  store i64 %.sroa.0.0.i11087, ptr %i.gwn, align 8, !tbaa !34
  %i.gwt = getelementptr i8, ptr %.4, i64 72
  store i16 10, ptr %i.gwt, align 8, !tbaa !165
  %i.gwu = getelementptr i8, ptr %.4, i64 64
  store ptr %i.gvx, ptr %i.gwu, align 8, !tbaa !65
  br label %.sink.split

bb.asn:                                           ; preds = %.backedge
  %i.gwv = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.gwv, align 8, !tbaa !47
  %i.gww = getelementptr i8, ptr %.32, i64 20     ; 5 uses
  %i.gwx = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01464.0.copyload = load i64, ptr %i.gwx, align 8, !tbaa !34 ; 6 uses
  %i.gwy = getelementptr i8, ptr %.32, i64 4
  %.val10415 = load i32, ptr %i.gwy, align 2
  %i.gwz = and i64 %.sroa.01464.0.copyload, -2
  %i.gxa = inttoptr i64 %i.gwz to ptr             ; 3 uses
  %i.gxb = getelementptr i8, ptr %i.gxa, i64 8
  %.val9855 = load ptr, ptr %i.gxb, align 8, !tbaa !58 ; 2 uses
  %i.gxc = getelementptr i8, ptr %.val9855, i64 384
  %i.gxd = load i32, ptr %i.gxc, align 8, !tbaa !184
  %.not9503 = icmp eq i32 %i.gxd, %.val10415
  br i1 %.not9503, label %bb.aso, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.aso:                                           ; preds = %bb.asn
  %i.gxe = getelementptr i8, ptr %.val9855, i64 32
  %i.gxf = load i64, ptr %i.gxe, align 8, !tbaa !249
  %i.gxg = getelementptr i8, ptr %i.gxa, i64 %i.gxf
  %i.gxh = getelementptr i8, ptr %i.gxg, i64 3
  %i.gxi = load i8, ptr %i.gxh, align 1, !tbaa !250
  %.not9504 = icmp eq i8 %i.gxi, 0
  br i1 %.not9504, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.asp

bb.asp:                                           ; preds = %bb.aso
  %i.gxj = getelementptr i8, ptr %.32, i64 8
  %.val10334 = load i16, ptr %i.gxj, align 2, !tbaa !66
  %i.gxk = zext i16 %.val10334 to i64
  %i.gxl = getelementptr i8, ptr %i.gxa, i64 %i.gxk
  %i.gxm = load ptr, ptr %i.gxl, align 8, !tbaa !78 ; 5 uses
  %i.gxn = icmp eq ptr %i.gxm, null
  br i1 %i.gxn, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.gxo = load i32, ptr %i.gxm, align 8, !tbaa !34 ; 2 uses
  %.not.i11090 = icmp sgt i32 %i.gxo, -1
  br i1 %.not.i11090, label %bb.ass, label %bb.asr

bb.asr:                                           ; preds = %bb.asq
  %i.gxp = ptrtoint ptr %i.gxm to i64
  %i.gxq = or i64 %i.gxp, 1
  br label %_PyStackRef_FromPyObjectNew.exit11092

bb.ass:                                           ; preds = %bb.asq
  %i.gxr = add nuw i32 %i.gxo, 1
  store i32 %i.gxr, ptr %i.gxm, align 8, !tbaa !34
  %i.gxs = ptrtoint ptr %i.gxm to i64
  br label %_PyStackRef_FromPyObjectNew.exit11092

_PyStackRef_FromPyObjectNew.exit11092:            ; preds = %bb.asr, %bb.ass
  %.sroa.0.0.i11091 = phi i64 [ %i.gxq, %bb.asr ], [ %i.gxs, %bb.ass ]
  store i64 %.sroa.0.0.i11091, ptr %i.gwx, align 8, !tbaa !34
  %i.gxt = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611541, ptr %i.gxt, align 8, !tbaa !65
  %i.gxu = and i64 %.sroa.01464.0.copyload, 1
  %.not.not.i11093 = icmp eq i64 %i.gxu, 0
  br i1 %.not.not.i11093, label %bb.ast, label %PyStackRef_XCLOSE.exit11094

bb.ast:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11092
  %i.gxv = inttoptr i64 %.sroa.01464.0.copyload to ptr ; 3 uses
  %i.gxw = load i32, ptr %i.gxv, align 8, !tbaa !34
  %i.gxx = add i32 %i.gxw, -1                     ; 2 uses
  store i32 %i.gxx, ptr %i.gxv, align 8, !tbaa !34
  %i.gxy = icmp eq i32 %i.gxx, 0
  br i1 %i.gxy, label %bb.asu, label %PyStackRef_XCLOSE.exit11094

bb.asu:                                           ; preds = %bb.ast
  call void @_Py_Dealloc(ptr noundef nonnull %i.gxv) #8
  br label %PyStackRef_XCLOSE.exit11094

PyStackRef_XCLOSE.exit11094:                      ; preds = %_PyStackRef_FromPyObjectNew.exit11092, %bb.ast, %bb.asu
  %.4.val10022 = load ptr, ptr %i.gxt, align 8, !tbaa !65 ; 2 uses
  %i.gxz = and i32 %.09034, 1                     ; 2 uses
  %.not9505 = icmp eq i32 %i.gxz, 0
  br i1 %.not9505, label %bb.asw, label %bb.asv

bb.asv:                                           ; preds = %PyStackRef_XCLOSE.exit11094
  store i64 1, ptr %.4.val10022, align 8, !tbaa !34
  br label %bb.asw

bb.asw:                                           ; preds = %bb.asv, %PyStackRef_XCLOSE.exit11094
  %i.gya = zext nneg i32 %i.gxz to i64
  %i.gyb = getelementptr [8 x i8], ptr %.4.val10022, i64 %i.gya
  %i.gyc = load i16, ptr %i.gww, align 2, !tbaa !66 ; 2 uses
  %.sroa.21450.0.extract.shift = lshr i16 %i.gyc, 8
  %.sroa.21450.0.extract.trunc = zext nneg i16 %.sroa.21450.0.extract.shift to i32
  %i.gyd = and i16 %i.gyc, 255
  %i.gye = zext nneg i16 %i.gyd to i64
  br label %.backedge.backedge

bb.asx:                                           ; preds = %.backedge
  %i.gyf = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.gyf, align 8, !tbaa !47
  %i.gyg = getelementptr i8, ptr %.32, i64 20     ; 4 uses
  %i.gyh = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01443.0.copyload = load i64, ptr %i.gyh, align 8, !tbaa !34 ; 4 uses
  %i.gyi = getelementptr i8, ptr %.32, i64 4
  %.val10414 = load i32, ptr %i.gyi, align 2
  %i.gyj = and i64 %.sroa.01443.0.copyload, -2
  %i.gyk = inttoptr i64 %i.gyj to ptr             ; 2 uses
  %i.gyl = getelementptr i8, ptr %i.gyk, i64 8
  %.val9854 = load ptr, ptr %i.gyl, align 8, !tbaa !58
  %i.gym = getelementptr i8, ptr %.val9854, i64 384
  %i.gyn = load i32, ptr %i.gym, align 8, !tbaa !184
  %.not9501 = icmp eq i32 %i.gyn, %.val10414
  br i1 %.not9501, label %bb.asy, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.asy:                                           ; preds = %bb.asx
  %i.gyo = getelementptr i8, ptr %.32, i64 8
  %.val10333 = load i16, ptr %i.gyo, align 2, !tbaa !66
  %i.gyp = getelementptr i8, ptr %i.gyk, i64 -24
  %i.gyq = zext i16 %.val10333 to i64
  %i.gyr = getelementptr i8, ptr %i.gyp, i64 %i.gyq
  %i.gys = load ptr, ptr %i.gyr, align 8, !tbaa !78
  %.not9502 = icmp eq ptr %i.gys, null
  br i1 %.not9502, label %bb.asz, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.asz:                                           ; preds = %bb.asy
  %i.gyt = getelementptr i8, ptr %.32, i64 12
  %.val10348 = load ptr, ptr %i.gyt, align 2      ; 4 uses
  %i.gyu = load i32, ptr %.val10348, align 8, !tbaa !34 ; 2 uses
  %.not.i11095 = icmp sgt i32 %i.gyu, -1
  br i1 %.not.i11095, label %bb.atb, label %bb.ata

bb.ata:                                           ; preds = %bb.asz
  %i.gyv = ptrtoint ptr %.val10348 to i64
  %i.gyw = or i64 %i.gyv, 1
  br label %_PyStackRef_FromPyObjectNew.exit11097

bb.atb:                                           ; preds = %bb.asz
  %i.gyx = add nuw i32 %i.gyu, 1
  store i32 %i.gyx, ptr %.val10348, align 8, !tbaa !34
  %i.gyy = ptrtoint ptr %.val10348 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11097

_PyStackRef_FromPyObjectNew.exit11097:            ; preds = %bb.ata, %bb.atb
  %.sroa.0.0.i11096 = phi i64 [ %i.gyw, %bb.ata ], [ %i.gyy, %bb.atb ]
  store i64 %.sroa.0.0.i11096, ptr %i.gyh, align 8, !tbaa !34
  store i64 %.sroa.01443.0.copyload, ptr %.4.val1003611541, align 8, !tbaa !34
  %i.gyz = getelementptr i8, ptr %.4.val1003611541, i64 8
  %i.gza = load i16, ptr %i.gyg, align 2, !tbaa !66 ; 2 uses
  %.sroa.21432.0.extract.shift = lshr i16 %i.gza, 8
  %.sroa.21432.0.extract.trunc = zext nneg i16 %.sroa.21432.0.extract.shift to i32
  %i.gzb = and i16 %i.gza, 255
  %i.gzc = zext nneg i16 %i.gzb to i64
  br label %.backedge.backedge

bb.atc:                                           ; preds = %.backedge
  %i.gzd = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.gzd, align 8, !tbaa !47
  %i.gze = getelementptr i8, ptr %.32, i64 20     ; 3 uses
  %i.gzf = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01427.0.copyload = load i64, ptr %i.gzf, align 8, !tbaa !34 ; 3 uses
  %i.gzg = getelementptr i8, ptr %.32, i64 4
  %.val10413 = load i32, ptr %i.gzg, align 2
  %i.gzh = and i64 %.sroa.01427.0.copyload, -2
  %i.gzi = inttoptr i64 %i.gzh to ptr
  %i.gzj = getelementptr i8, ptr %i.gzi, i64 8
  %.val9853 = load ptr, ptr %i.gzj, align 8, !tbaa !58
  %i.gzk = getelementptr i8, ptr %.val9853, i64 384
  %i.gzl = load i32, ptr %i.gzk, align 8, !tbaa !184
  %.not9500 = icmp eq i32 %i.gzl, %.val10413
  br i1 %.not9500, label %bb.atd, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.atd:                                           ; preds = %bb.atc
  %i.gzm = getelementptr i8, ptr %.32, i64 12
  %.val10347 = load ptr, ptr %i.gzm, align 2      ; 4 uses
  %i.gzn = load i32, ptr %.val10347, align 8, !tbaa !34 ; 2 uses
  %.not.i11098 = icmp sgt i32 %i.gzn, -1
  br i1 %.not.i11098, label %bb.atf, label %bb.ate

bb.ate:                                           ; preds = %bb.atd
  %i.gzo = ptrtoint ptr %.val10347 to i64
  %i.gzp = or i64 %i.gzo, 1
  br label %_PyStackRef_FromPyObjectNew.exit11100

bb.atf:                                           ; preds = %bb.atd
  %i.gzq = add nuw i32 %i.gzn, 1
  store i32 %i.gzq, ptr %.val10347, align 8, !tbaa !34
  %i.gzr = ptrtoint ptr %.val10347 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11100

_PyStackRef_FromPyObjectNew.exit11100:            ; preds = %bb.ate, %bb.atf
  %.sroa.0.0.i11099 = phi i64 [ %i.gzp, %bb.ate ], [ %i.gzr, %bb.atf ]
  store i64 %.sroa.0.0.i11099, ptr %i.gzf, align 8, !tbaa !34
  store i64 %.sroa.01427.0.copyload, ptr %.4.val1003611541, align 8, !tbaa !34
  %i.gzs = getelementptr i8, ptr %.4.val1003611541, i64 8
  %i.gzt = load i16, ptr %i.gze, align 2, !tbaa !66 ; 2 uses
  %.sroa.21419.0.extract.shift = lshr i16 %i.gzt, 8
  %.sroa.21419.0.extract.trunc = zext nneg i16 %.sroa.21419.0.extract.shift to i32
  %i.gzu = and i16 %i.gzt, 255
  %i.gzv = zext nneg i16 %i.gzu to i64
end_hunk_2
begin_hunk_3_@Test_EvalFrame:bb.a

bb.atw:                                           ; preds = %.backedge
  %i.hcr = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.hcr, align 8, !tbaa !47
  %i.hcs = getelementptr i8, ptr %.32, i64 20     ; 3 uses
  %i.hct = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01371.0.copyload = load i64, ptr %i.hct, align 8, !tbaa !34 ; 4 uses
  %i.hcu = getelementptr i8, ptr %.32, i64 4
  %.val10409 = load i32, ptr %i.hcu, align 2
  %i.hcv = and i64 %.sroa.01371.0.copyload, -2
  %i.hcw = inttoptr i64 %i.hcv to ptr
  %i.hcx = getelementptr i8, ptr %i.hcw, i64 8
  %.val9849 = load ptr, ptr %i.hcx, align 8, !tbaa !58
  %i.hcy = getelementptr i8, ptr %.val9849, i64 384
  %i.hcz = load i32, ptr %i.hcy, align 8, !tbaa !184
  %.not9493 = icmp eq i32 %i.hcz, %.val10409
  br i1 %.not9493, label %bb.atx, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.atx:                                           ; preds = %bb.atw
  %i.hda = getelementptr i8, ptr %.32, i64 12
  %.val10345 = load ptr, ptr %i.hda, align 2      ; 4 uses
  %i.hdb = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.hct, ptr %i.hdb, align 8, !tbaa !65
  %i.hdc = and i64 %.sroa.01371.0.copyload, 1
  %.not.not.i11110 = icmp eq i64 %i.hdc, 0
  br i1 %.not.not.i11110, label %bb.aty, label %PyStackRef_CLOSE.exit11111

bb.aty:                                           ; preds = %bb.atx
  %i.hdd = inttoptr i64 %.sroa.01371.0.copyload to ptr ; 3 uses
  %i.hde = load i32, ptr %i.hdd, align 8, !tbaa !34
  %i.hdf = add i32 %i.hde, -1                     ; 2 uses
  store i32 %i.hdf, ptr %i.hdd, align 8, !tbaa !34
  %i.hdg = icmp eq i32 %i.hdf, 0
  br i1 %i.hdg, label %bb.atz, label %PyStackRef_CLOSE.exit11111

bb.atz:                                           ; preds = %bb.aty
  call void @_Py_Dealloc(ptr noundef nonnull %i.hdd) #8
  br label %PyStackRef_CLOSE.exit11111

PyStackRef_CLOSE.exit11111:                       ; preds = %bb.atx, %bb.aty, %bb.atz
  %.4.val10020 = load ptr, ptr %i.hdb, align 8, !tbaa !65 ; 2 uses
  %i.hdh = load i32, ptr %.val10345, align 8, !tbaa !34 ; 2 uses
  %.not.i11112 = icmp sgt i32 %i.hdh, -1
  br i1 %.not.i11112, label %bb.aub, label %bb.aua

bb.aua:                                           ; preds = %PyStackRef_CLOSE.exit11111
  %i.hdi = ptrtoint ptr %.val10345 to i64
  %i.hdj = or i64 %i.hdi, 1
  br label %_PyStackRef_FromPyObjectNew.exit11114

bb.aub:                                           ; preds = %PyStackRef_CLOSE.exit11111
  %i.hdk = add nuw i32 %i.hdh, 1
  store i32 %i.hdk, ptr %.val10345, align 8, !tbaa !34
  %i.hdl = ptrtoint ptr %.val10345 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11114

_PyStackRef_FromPyObjectNew.exit11114:            ; preds = %bb.aua, %bb.aub
  %.sroa.0.0.i11113 = phi i64 [ %i.hdj, %bb.aua ], [ %i.hdl, %bb.aub ]
  store i64 %.sroa.0.0.i11113, ptr %.4.val10020, align 8, !tbaa !34
  %i.hdm = getelementptr i8, ptr %.4.val10020, i64 8
  %i.hdn = load i16, ptr %i.hcs, align 2, !tbaa !66 ; 2 uses
  %.sroa.21365.0.extract.shift = lshr i16 %i.hdn, 8
  %.sroa.21365.0.extract.trunc = zext nneg i16 %.sroa.21365.0.extract.shift to i32
  %i.hdo = and i16 %i.hdn, 255
  %i.hdp = zext nneg i16 %i.hdo to i64
  br label %.backedge.backedge

bb.auc:                                           ; preds = %.backedge
  %i.hdq = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.hdq, align 8, !tbaa !47
  %i.hdr = getelementptr i8, ptr %.32, i64 20     ; 5 uses
  %i.hds = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01357.0.copyload = load i64, ptr %i.hds, align 8, !tbaa !34 ; 6 uses
  %i.hdt = getelementptr i8, ptr %.32, i64 4
  %.val10408 = load i32, ptr %i.hdt, align 2
  %i.hdu = and i64 %.sroa.01357.0.copyload, -2
  %i.hdv = inttoptr i64 %i.hdu to ptr             ; 2 uses
  %i.hdw = getelementptr i8, ptr %i.hdv, i64 8
  %.val9848 = load ptr, ptr %i.hdw, align 8, !tbaa !58 ; 3 uses
  %i.hdx = getelementptr i8, ptr %.val9848, i64 384
  %i.hdy = load i32, ptr %i.hdx, align 8, !tbaa !184
  %.not9490 = icmp eq i32 %i.hdy, %.val10408
  br i1 %.not9490, label %bb.aud, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.aud:                                           ; preds = %bb.auc
  %i.hdz = getelementptr i8, ptr %.val9848, i64 32
  %i.hea = load i64, ptr %i.hdz, align 8, !tbaa !249
  %i.heb = getelementptr i8, ptr %i.hdv, i64 %i.hea
  %i.hec = getelementptr i8, ptr %i.heb, i64 3
  %i.hed = load i8, ptr %i.hec, align 1, !tbaa !250
  %.not9491 = icmp eq i8 %i.hed, 0
  br i1 %.not9491, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.aue

bb.aue:                                           ; preds = %bb.aud
  %i.hee = getelementptr i8, ptr %.32, i64 8
  %.val10407 = load i32, ptr %i.hee, align 2
  %i.hef = getelementptr i8, ptr %.val9848, i64 880
  %i.heg = load ptr, ptr %i.hef, align 8, !tbaa !252
  %i.heh = getelementptr i8, ptr %i.heg, i64 12
  %i.hei = load i32, ptr %i.heh, align 4, !tbaa !6
  %.not9492 = icmp eq i32 %i.hei, %.val10407
  br i1 %.not9492, label %bb.auf, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.auf:                                           ; preds = %bb.aue
  %i.hej = getelementptr i8, ptr %.32, i64 12
  %.val10344 = load ptr, ptr %i.hej, align 2      ; 4 uses
  %i.hek = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.hds, ptr %i.hek, align 8, !tbaa !65
  %i.hel = and i64 %.sroa.01357.0.copyload, 1
  %.not.not.i11116 = icmp eq i64 %i.hel, 0
  br i1 %.not.not.i11116, label %bb.aug, label %PyStackRef_CLOSE.exit11117

bb.aug:                                           ; preds = %bb.auf
  %i.hem = inttoptr i64 %.sroa.01357.0.copyload to ptr ; 3 uses
  %i.hen = load i32, ptr %i.hem, align 8, !tbaa !34
  %i.heo = add i32 %i.hen, -1                     ; 2 uses
  store i32 %i.heo, ptr %i.hem, align 8, !tbaa !34
  %i.hep = icmp eq i32 %i.heo, 0
  br i1 %i.hep, label %bb.auh, label %PyStackRef_CLOSE.exit11117

bb.auh:                                           ; preds = %bb.aug
  call void @_Py_Dealloc(ptr noundef nonnull %i.hem) #8
  br label %PyStackRef_CLOSE.exit11117

PyStackRef_CLOSE.exit11117:                       ; preds = %bb.auf, %bb.aug, %bb.auh
  %.4.val10019 = load ptr, ptr %i.hek, align 8, !tbaa !65 ; 2 uses
  %i.heq = load i32, ptr %.val10344, align 8, !tbaa !34 ; 2 uses
  %.not.i11118 = icmp sgt i32 %i.heq, -1
  br i1 %.not.i11118, label %bb.auj, label %bb.aui

bb.aui:                                           ; preds = %PyStackRef_CLOSE.exit11117
  %i.her = ptrtoint ptr %.val10344 to i64
  %i.hes = or i64 %i.her, 1
  br label %_PyStackRef_FromPyObjectNew.exit11120

bb.auj:                                           ; preds = %PyStackRef_CLOSE.exit11117
  %i.het = add nuw i32 %i.heq, 1
  store i32 %i.het, ptr %.val10344, align 8, !tbaa !34
  %i.heu = ptrtoint ptr %.val10344 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11120

_PyStackRef_FromPyObjectNew.exit11120:            ; preds = %bb.aui, %bb.auj
  %.sroa.0.0.i11119 = phi i64 [ %i.hes, %bb.aui ], [ %i.heu, %bb.auj ]
  store i64 %.sroa.0.0.i11119, ptr %.4.val10019, align 8, !tbaa !34
  %i.hev = getelementptr i8, ptr %.4.val10019, i64 8
  %i.hew = load i16, ptr %i.hdr, align 2, !tbaa !66 ; 2 uses
  %.sroa.21345.0.extract.shift = lshr i16 %i.hew, 8
  %.sroa.21345.0.extract.trunc = zext nneg i16 %.sroa.21345.0.extract.shift to i32
  %i.hex = and i16 %i.hew, 255
  %i.hey = zext nneg i16 %i.hex to i64
  br label %.backedge.backedge

bb.auk:                                           ; preds = %.backedge
  %i.hez = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.hez, align 8, !tbaa !47
  %i.hfa = getelementptr i8, ptr %.32, i64 20     ; 7 uses
  %i.hfb = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01339.0.copyload = load i64, ptr %i.hfb, align 8, !tbaa !34 ; 9 uses
  %i.hfc = getelementptr i8, ptr %.32, i64 4
  %.val10406 = load i32, ptr %i.hfc, align 2
  %i.hfd = and i64 %.sroa.01339.0.copyload, -2
  %i.hfe = inttoptr i64 %i.hfd to ptr
  %i.hff = getelementptr i8, ptr %i.hfe, i64 8
  %.val9846 = load ptr, ptr %i.hff, align 8, !tbaa !58
  %i.hfg = getelementptr i8, ptr %.val9846, i64 384
  %i.hfh = load i32, ptr %i.hfg, align 8, !tbaa !184
  %.not9485 = icmp eq i32 %i.hfh, %.val10406
  br i1 %.not9485, label %bb.aul, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.aul:                                           ; preds = %bb.auk
  %i.hfi = load ptr, ptr %i.lqq, align 8, !tbaa !46
  %i.hfj = getelementptr i8, ptr %i.hfi, i64 8568
  %i.hfk = load ptr, ptr %i.hfj, align 8, !tbaa !79
  %.not9486 = icmp eq ptr %i.hfk, null
  br i1 %.not9486, label %bb.aum, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.aum:                                           ; preds = %bb.aul
  %i.hfl = getelementptr i8, ptr %.32, i64 12
  %.val10343 = load ptr, ptr %i.hfl, align 2      ; 5 uses
  %i.hfm = getelementptr i8, ptr %.val10343, i64 48
  %i.hfn = load ptr, ptr %i.hfm, align 8, !tbaa !159 ; 4 uses
  %i.hfo = getelementptr i8, ptr %i.hfn, i64 48
  %i.hfp = load i32, ptr %i.hfo, align 8, !tbaa !48
  %i.hfq = and i32 %i.hfp, 13
  %.not9487 = icmp eq i32 %i.hfq, 1
  br i1 %.not9487, label %bb.aun, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.aun:                                           ; preds = %bb.aum
  %i.hfr = getelementptr i8, ptr %i.hfn, i64 60
  %i.hfs = load i32, ptr %i.hfr, align 4, !tbaa !261
  %.not9488 = icmp eq i32 %i.hfs, 0
  br i1 %.not9488, label %bb.auo, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.auo:                                           ; preds = %bb.aun
  %i.hft = getelementptr i8, ptr %i.hfn, i64 52
  %i.hfu = load i32, ptr %i.hft, align 4, !tbaa !186
  %.not9489 = icmp eq i32 %i.hfu, 1
  br i1 %.not9489, label %bb.aup, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.aup:                                           ; preds = %bb.auo
  %i.hfv = load ptr, ptr %i.lqv, align 8, !tbaa !158 ; 2 uses
  %.not.i11121 = icmp eq ptr %i.hfv, null
  br i1 %.not.i11121, label %_PyThreadState_HasStackSpace.exit11082.thread, label %_PyThreadState_HasStackSpace.exit11122

_PyThreadState_HasStackSpace.exit11122:           ; preds = %bb.aup
  %i.hfw = getelementptr i8, ptr %i.hfn, i64 76
  %i.hfx = load i32, ptr %i.hfw, align 4, !tbaa !160
  %i.hfy = sext i32 %i.hfx to i64
  %i.hfz = load ptr, ptr %i.lqw, align 8, !tbaa !161
  %i.hga = ptrtoint ptr %i.hfz to i64
  %i.hgb = ptrtoint ptr %i.hfv to i64
  %i.hgc = sub i64 %i.hga, %i.hgb
  %i.hgd = ashr exact i64 %i.hgc, 3
  %i.hge = icmp sgt i64 %i.hgd, %i.hfy
  br i1 %i.hge, label %bb.auq, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.auq:                                           ; preds = %_PyThreadState_HasStackSpace.exit11122
  %i.hgf = load i32, ptr %.val10343, align 8, !tbaa !34 ; 2 uses
  %.not.i11123 = icmp sgt i32 %i.hgf, -1
  br i1 %.not.i11123, label %bb.aus, label %bb.aur

bb.aur:                                           ; preds = %bb.auq
  %i.hgg = ptrtoint ptr %.val10343 to i64
  %i.hgh = or i64 %i.hgg, 1
  br label %_PyStackRef_FromPyObjectNew.exit11125

bb.aus:                                           ; preds = %bb.auq
  %i.hgi = add nuw i32 %i.hgf, 1
  store i32 %i.hgi, ptr %.val10343, align 8, !tbaa !34
  %i.hgj = ptrtoint ptr %.val10343 to i64
  br label %_PyStackRef_FromPyObjectNew.exit11125

_PyStackRef_FromPyObjectNew.exit11125:            ; preds = %bb.aur, %bb.aus
  %.sroa.0.0.i11124 = phi i64 [ %i.hgh, %bb.aur ], [ %i.hgj, %bb.aus ]
  %13 = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.0.0.i11124, i32 noundef 1, ptr noundef nonnull %.4) ; 5 uses
  %i.hgk = getelementptr i8, ptr %13, i64 80
  store i64 %.sroa.01339.0.copyload, ptr %i.hgk, align 8, !tbaa !34
  %i.hgl = getelementptr i8, ptr %.4, i64 72
  store i16 10, ptr %i.hgl, align 8, !tbaa !165
  %i.hgm = getelementptr i8, ptr %.4, i64 64
  store ptr %i.hfb, ptr %i.hgm, align 8, !tbaa !65
  store ptr %13, ptr %i.ai, align 8, !tbaa !42
  %14 = load i32, ptr %i.lqr, align 4, !tbaa !45
  %15 = add i32 %14, -1
  store i32 %15, ptr %i.lqr, align 4, !tbaa !45
  %i.hgn = getelementptr i8, ptr %13, i64 64
  %.val10018 = load ptr, ptr %i.hgn, align 8, !tbaa !65
  %i.hgo = getelementptr i8, ptr %13, i64 56
  %16 = load ptr, ptr %i.hgo, align 8, !tbaa !47  ; 2 uses
  %17 = load i16, ptr %16, align 2, !tbaa !66     ; 2 uses
  %.sroa.21323.0.extract.shift = lshr i16 %17, 8
  %.sroa.21323.0.extract.trunc = zext nneg i16 %.sroa.21323.0.extract.shift to i32
  %18 = and i16 %17, 255
  %19 = zext nneg i16 %18 to i64
  br label %.backedge.backedge

bb.aut:                                           ; preds = %.backedge
  %i.hgp = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.hgp, align 8, !tbaa !47
  %i.hgq = getelementptr i8, ptr %.32, i64 20     ; 4 uses
  %i.hgr = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01317.0.copyload = load i64, ptr %i.hgr, align 8, !tbaa !34 ; 5 uses
  %i.hgs = getelementptr i8, ptr %.32, i64 4
  %.val10405 = load i32, ptr %i.hgs, align 2
  %i.hgt = and i64 %.sroa.01317.0.copyload, -2
  %i.hgu = inttoptr i64 %i.hgt to ptr             ; 2 uses
  %i.hgv = getelementptr i8, ptr %i.hgu, i64 8
  %.val9845 = load ptr, ptr %i.hgv, align 8, !tbaa !58
  %i.hgw = getelementptr i8, ptr %.val9845, i64 384
  %i.hgx = load i32, ptr %i.hgw, align 8, !tbaa !184
  %.not9483 = icmp eq i32 %i.hgx, %.val10405
  br i1 %.not9483, label %bb.auu, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.auu:                                           ; preds = %bb.aut
  %i.hgy = getelementptr i8, ptr %.32, i64 8
  %.val10331 = load i16, ptr %i.hgy, align 2, !tbaa !66
  %i.hgz = zext i16 %.val10331 to i64
  %i.hha = getelementptr i8, ptr %i.hgu, i64 %i.hgz
  %i.hhb = load ptr, ptr %i.hha, align 8, !tbaa !78 ; 5 uses
  %i.hhc = icmp eq ptr %i.hhb, null
  br i1 %i.hhc, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.auv

bb.auv:                                           ; preds = %bb.auu
  %i.hhd = load i32, ptr %i.hhb, align 8, !tbaa !34 ; 2 uses
  %.not.i11126 = icmp sgt i32 %i.hhd, -1
  br i1 %.not.i11126, label %bb.aux, label %bb.auw

bb.auw:                                           ; preds = %bb.auv
  %i.hhe = ptrtoint ptr %i.hhb to i64
  %i.hhf = or i64 %i.hhe, 1
  br label %_PyStackRef_FromPyObjectNew.exit11128

bb.aux:                                           ; preds = %bb.auv
  %i.hhg = add nuw i32 %i.hhd, 1
  store i32 %i.hhg, ptr %i.hhb, align 8, !tbaa !34
  %i.hhh = ptrtoint ptr %i.hhb to i64
  br label %_PyStackRef_FromPyObjectNew.exit11128

_PyStackRef_FromPyObjectNew.exit11128:            ; preds = %bb.auw, %bb.aux
  %.sroa.0.0.i11127 = phi i64 [ %i.hhf, %bb.auw ], [ %i.hhh, %bb.aux ]
  store i64 %.sroa.0.0.i11127, ptr %i.hgr, align 8, !tbaa !34
  %i.hhi = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611541, ptr %i.hhi, align 8, !tbaa !65
  %i.hhj = and i64 %.sroa.01317.0.copyload, 1
  %.not.not.i11129 = icmp eq i64 %i.hhj, 0
  br i1 %.not.not.i11129, label %bb.auy, label %PyStackRef_XCLOSE.exit11130

bb.auy:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11128
  %i.hhk = inttoptr i64 %.sroa.01317.0.copyload to ptr ; 3 uses
  %i.hhl = load i32, ptr %i.hhk, align 8, !tbaa !34
  %i.hhm = add i32 %i.hhl, -1                     ; 2 uses
  store i32 %i.hhm, ptr %i.hhk, align 8, !tbaa !34
  %i.hhn = icmp eq i32 %i.hhm, 0
  br i1 %i.hhn, label %bb.auz, label %PyStackRef_XCLOSE.exit11130

bb.auz:                                           ; preds = %bb.auy
  call void @_Py_Dealloc(ptr noundef nonnull %i.hhk) #8
  br label %PyStackRef_XCLOSE.exit11130

PyStackRef_XCLOSE.exit11130:                      ; preds = %_PyStackRef_FromPyObjectNew.exit11128, %bb.auy, %bb.auz
  %.4.val10017 = load ptr, ptr %i.hhi, align 8, !tbaa !65 ; 2 uses
  %i.hho = and i32 %.09034, 1                     ; 2 uses
  %.not9484 = icmp eq i32 %i.hho, 0
  br i1 %.not9484, label %bb.avb, label %bb.ava

bb.ava:                                           ; preds = %PyStackRef_XCLOSE.exit11130
  store i64 1, ptr %.4.val10017, align 8, !tbaa !34
  br label %bb.avb

bb.avb:                                           ; preds = %bb.ava, %PyStackRef_XCLOSE.exit11130
  %i.hhp = zext nneg i32 %i.hho to i64
  %i.hhq = getelementptr [8 x i8], ptr %.4.val10017, i64 %i.hhp
  %i.hhr = load i16, ptr %i.hgq, align 2, !tbaa !66 ; 2 uses
  %.sroa.21304.0.extract.shift = lshr i16 %i.hhr, 8
  %.sroa.21304.0.extract.trunc = zext nneg i16 %.sroa.21304.0.extract.shift to i32
  %i.hhs = and i16 %i.hhr, 255
  %i.hht = zext nneg i16 %i.hhs to i64
  br label %.backedge.backedge

bb.avc:                                           ; preds = %.backedge
  %i.hhu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.hhu, align 8, !tbaa !47
  %i.hhv = getelementptr i8, ptr %.32, i64 20     ; 8 uses
  %i.hhw = getelementptr i8, ptr %.4.val1003611541, i64 -8 ; 2 uses
  %.sroa.01298.0.copyload = load i64, ptr %i.hhw, align 8, !tbaa !34 ; 9 uses
  %i.hhx = getelementptr i8, ptr %.32, i64 4
  %.val10404 = load i32, ptr %i.hhx, align 2
  %i.hhy = and i64 %.sroa.01298.0.copyload, -2
  %i.hhz = inttoptr i64 %i.hhy to ptr             ; 2 uses
  %i.hia = getelementptr i8, ptr %i.hhz, i64 8
  %.val9844 = load ptr, ptr %i.hia, align 8, !tbaa !58
  %i.hib = getelementptr i8, ptr %.val9844, i64 384
  %i.hic = load i32, ptr %i.hib, align 8, !tbaa !184
  %.not9478 = icmp eq i32 %i.hic, %.val10404
  br i1 %.not9478, label %bb.avd, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.avd:                                           ; preds = %bb.avc
  %i.hid = getelementptr i8, ptr %i.hhz, i64 -24
  %.val10455 = load ptr, ptr %i.hid, align 8, !tbaa !34 ; 2 uses
  %i.hie = icmp eq ptr %.val10455, null
  br i1 %i.hie, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.ave

bb.ave:                                           ; preds = %bb.avd
  %i.hif = getelementptr i8, ptr %.32, i64 8
  %.val10330 = load i16, ptr %i.hif, align 2, !tbaa !66
  %i.hig = getelementptr i8, ptr %.val10455, i64 32
  %i.hih = load ptr, ptr %i.hig, align 8, !tbaa !256 ; 4 uses
  %i.hii = zext i16 %.val10330 to i64             ; 2 uses
  %i.hij = getelementptr i8, ptr %i.hih, i64 24
  %i.hik = load i64, ptr %i.hij, align 8, !tbaa !262
  %.not9479 = icmp ugt i64 %i.hik, %i.hii
  br i1 %.not9479, label %bb.avf, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.avf:                                           ; preds = %bb.ave
  %i.hil = getelementptr i8, ptr %i.hih, i64 10
  %i.him = load i8, ptr %i.hil, align 2, !tbaa !34
  %.not9480 = icmp eq i8 %i.him, 1
  br i1 %.not9480, label %bb.avg, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.avg:                                           ; preds = %bb.avf
  %.4.val9799 = load i64, ptr %.4, align 8
  %i.hin = and i64 %.4.val9799, -2
  %i.hio = inttoptr i64 %i.hin to ptr
  %i.hip = getelementptr i8, ptr %i.hio, i64 32
  %i.hiq = load ptr, ptr %i.hip, align 8, !tbaa !218
  %i.hir = getelementptr i8, ptr %i.hiq, i64 32
  %i.his = ashr i32 %.09034, 1
  %i.hit = sext i32 %i.his to i64
  %i.hiu = getelementptr [8 x i8], ptr %i.hir, i64 %i.hit
  %i.hiv = load ptr, ptr %i.hiu, align 8, !tbaa !78
  %i.hiw = getelementptr i8, ptr %i.hih, i64 32
  %i.hix = getelementptr i8, ptr %i.hih, i64 9
  %i.hiy = load i8, ptr %i.hix, align 1, !tbaa !34
  %i.hiz = zext nneg i8 %i.hiy to i64
  %i.hja = shl nuw i64 1, %i.hiz
  %i.hjb = getelementptr i8, ptr %i.hiw, i64 %i.hja
  %i.hjc = getelementptr [16 x i8], ptr %i.hjb, i64 %i.hii ; 2 uses
  %i.hjd = load ptr, ptr %i.hjc, align 8, !tbaa !263
  %.not9481 = icmp eq ptr %i.hjd, %i.hiv
  br i1 %.not9481, label %bb.avh, label %_PyThreadState_HasStackSpace.exit11082.thread

bb.avh:                                           ; preds = %bb.avg
  %i.hje = getelementptr i8, ptr %i.hjc, i64 8
  %i.hjf = load ptr, ptr %i.hje, align 8, !tbaa !259 ; 5 uses
  %i.hjg = icmp eq ptr %i.hjf, null
  br i1 %i.hjg, label %_PyThreadState_HasStackSpace.exit11082.thread, label %bb.avi

bb.avi:                                           ; preds = %bb.avh
  %i.hjh = load i32, ptr %i.hjf, align 8, !tbaa !34 ; 2 uses
  %.not.i11131 = icmp sgt i32 %i.hjh, -1
  br i1 %.not.i11131, label %bb.avk, label %bb.avj

bb.avj:                                           ; preds = %bb.avi
  %i.hji = ptrtoint ptr %i.hjf to i64
  %i.hjj = or i64 %i.hji, 1
  br label %_PyStackRef_FromPyObjectNew.exit11133

bb.avk:                                           ; preds = %bb.avi
  %i.hjk = add nuw i32 %i.hjh, 1
  store i32 %i.hjk, ptr %i.hjf, align 8, !tbaa !34
  %i.hjl = ptrtoint ptr %i.hjf to i64
  br label %_PyStackRef_FromPyObjectNew.exit11133

_PyStackRef_FromPyObjectNew.exit11133:            ; preds = %bb.avj, %bb.avk
  %.sroa.0.0.i11132 = phi i64 [ %i.hjj, %bb.avj ], [ %i.hjl, %bb.avk ]
  store i64 %.sroa.0.0.i11132, ptr %i.hhw, align 8, !tbaa !34
  %i.hjm = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611541, ptr %i.hjm, align 8, !tbaa !65
  %i.hjn = and i64 %.sroa.01298.0.copyload, 1
  %.not.not.i11134 = icmp eq i64 %i.hjn, 0
  br i1 %.not.not.i11134, label %bb.avl, label %PyStackRef_XCLOSE.exit11135

bb.avl:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11133
  %i.hjo = inttoptr i64 %.sroa.01298.0.copyload to ptr ; 3 uses
  %i.hjp = load i32, ptr %i.hjo, align 8, !tbaa !34
  %i.hjq = add i32 %i.hjp, -1                     ; 2 uses
  store i32 %i.hjq, ptr %i.hjo, align 8, !tbaa !34
  %i.hjr = icmp eq i32 %i.hjq, 0
  br i1 %i.hjr, label %bb.avm, label %PyStackRef_XCLOSE.exit11135

bb.avm:                                           ; preds = %bb.avl
  call void @_Py_Dealloc(ptr noundef nonnull %i.hjo) #8
  br label %PyStackRef_XCLOSE.exit11135

PyStackRef_XCLOSE.exit11135:                      ; preds = %_PyStackRef_FromPyObjectNew.exit11133, %bb.avl, %bb.avm
  %.4.val10016 = load ptr, ptr %i.hjm, align 8, !tbaa !65 ; 2 uses
  %i.hjs = and i32 %.09034, 1                     ; 2 uses
  %.not9482 = icmp eq i32 %i.hjs, 0
  br i1 %.not9482, label %bb.avo, label %bb.avn

bb.avn:                                           ; preds = %PyStackRef_XCLOSE.exit11135
  store i64 1, ptr %.4.val10016, align 8, !tbaa !34
  br label %bb.avo

end_hunk_3
begin_hunk_4_@Test_EvalFrame:bb.a
  %i.lmu = phi ptr [ %i.lnb, %PyStackRef_XCLOSE.exit11419 ], [ %i.lms, %bb.bvg ]
  %i.lmv = getelementptr i8, ptr %i.lmu, i64 -8   ; 2 uses
  store ptr %i.lmv, ptr %i.llx, align 8, !tbaa !65
  %.sroa.0.0.copyload.i = load i64, ptr %i.lmv, align 8, !tbaa !34 ; 2 uses
  %i.lmw = and i64 %.sroa.0.0.copyload.i, 1
  %.not.not.i11418 = icmp eq i64 %i.lmw, 0
  br i1 %.not.not.i11418, label %bb.bvh, label %PyStackRef_XCLOSE.exit11419

bb.bvh:                                           ; preds = %.lr.ph12695
  %i.lmx = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.lmy = load i32, ptr %i.lmx, align 8, !tbaa !34
  %i.lmz = add i32 %i.lmy, -1                     ; 2 uses
  store i32 %i.lmz, ptr %i.lmx, align 8, !tbaa !34
  %i.lna = icmp eq i32 %i.lmz, 0
  br i1 %i.lna, label %bb.bvi, label %PyStackRef_XCLOSE.exit11419

bb.bvi:                                           ; preds = %bb.bvh
  call void @_Py_Dealloc(ptr noundef nonnull %i.lmx) #8
  br label %PyStackRef_XCLOSE.exit11419

PyStackRef_XCLOSE.exit11419:                      ; preds = %.lr.ph12695, %bb.bvh, %bb.bvi
  %i.lnb = load ptr, ptr %i.llx, align 8, !tbaa !65 ; 2 uses
  %i.lnc = icmp ugt ptr %i.lnb, %i.lmr
  br i1 %i.lnc, label %.lr.ph12695, label %._crit_edge12696, !llvm.loop !284

._crit_edge12696:                                 ; preds = %PyStackRef_XCLOSE.exit11419, %bb.bvg
  %i.lnd = getelementptr i8, ptr %.31, i64 -2
  %.val.i11420 = load ptr, ptr %i.llz, align 8, !tbaa !46
  %i.lne = getelementptr i8, ptr %.val.i11420, i64 223469
  %i.lnf = load i8, ptr %i.lne, align 1, !tbaa !34
  %i.lng = icmp eq i8 %i.lnf, 0
  br i1 %i.lng, label %monitor_unwind.exit, label %bb.bvj

bb.bvj:                                           ; preds = %._crit_edge12696
  %.val.i.i11421 = load i64, ptr %.1.ph, align 8
  %i.lnh = and i64 %.val.i.i11421, -2
  %i.lni = inttoptr i64 %i.lnh to ptr
  %i.lnj = getelementptr i8, ptr %i.lni, i64 48
  %i.lnk = load i32, ptr %i.lnj, align 8, !tbaa !48
  %i.lnl = and i32 %i.lnk, 33554432
  %.not.i.i11422 = icmp eq i32 %i.lnl, 0
  br i1 %.not.i.i11422, label %bb.bvk, label %monitor_unwind.exit

bb.bvk:                                           ; preds = %bb.bvj
  %i.lnm = call ptr @PyErr_GetRaisedException() #8 ; 7 uses
  %i.lnn = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull %.1.ph, ptr noundef %i.lnd, ptr noundef %i.lnm) #8
  %i.lno = icmp eq i32 %i.lnn, 0
  br i1 %i.lno, label %bb.bvl, label %bb.bvm

bb.bvl:                                           ; preds = %bb.bvk
  call void @PyErr_SetRaisedException(ptr noundef %i.lnm) #8
  br label %monitor_unwind.exit

bb.bvm:                                           ; preds = %bb.bvk
  %i.lnp = load i32, ptr %i.lnm, align 8, !tbaa !34 ; 2 uses
  %.not21.i.i11423 = icmp sgt i32 %i.lnp, -1
  br i1 %.not21.i.i11423, label %bb.bvn, label %monitor_unwind.exit

bb.bvn:                                           ; preds = %bb.bvm
  %i.lnq = add nsw i32 %i.lnp, -1                 ; 2 uses
  store i32 %i.lnq, ptr %i.lnm, align 8, !tbaa !34
  %i.lnr = icmp eq i32 %i.lnq, 0
  br i1 %i.lnr, label %bb.bvo, label %monitor_unwind.exit

bb.bvo:                                           ; preds = %bb.bvn
  %i.lns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not22.i.i11424 = icmp eq ptr %i.lns, null
  br i1 %.not22.i.i11424, label %bb.bvq, label %bb.bvp

bb.bvp:                                           ; preds = %bb.bvo
  %i.lnt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.lnu = call i32 %i.lns(ptr noundef nonnull %i.lnm, i32 noundef 1, ptr noundef %i.lnt) #8, !inline_history !285 ; 0 uses
  br label %bb.bvq

bb.bvq:                                           ; preds = %bb.bvp, %bb.bvo
  %i.lnv = getelementptr i8, ptr %i.lnm, i64 8
  %.val23.i.i11425 = load ptr, ptr %i.lnv, align 8, !tbaa !58
  %i.lnw = getelementptr i8, ptr %.val23.i.i11425, i64 48
  %i.lnx = load ptr, ptr %i.lnw, align 8, !tbaa !59
  call void %i.lnx(ptr noundef nonnull %i.lnm) #8, !inline_history !285
  br label %monitor_unwind.exit

bb.bvr:                                           ; preds = %bb.bvf
  %i.lny = load i32, ptr %i.o, align 4, !tbaa !6
  %i.lnz = sext i32 %i.lny to i64
  %i.loa = getelementptr [8 x i8], ptr %i.lmr, i64 %i.lnz ; 2 uses
  %i.lob = load ptr, ptr %i.llx, align 8, !tbaa !65 ; 3 uses
  %i.loc = icmp ugt ptr %i.lob, %i.loa
  br i1 %i.loc, label %.lr.ph12690, label %._crit_edge12691

.lr.ph12690:                                      ; preds = %bb.bvr, %PyStackRef_XCLOSE.exit11429
  %i.lod = phi ptr [ %i.lok, %PyStackRef_XCLOSE.exit11429 ], [ %i.lob, %bb.bvr ]
  %i.loe = getelementptr i8, ptr %i.lod, i64 -8   ; 2 uses
  store ptr %i.loe, ptr %i.llx, align 8, !tbaa !65
  %.sroa.0.0.copyload.i11427 = load i64, ptr %i.loe, align 8, !tbaa !34 ; 2 uses
  %i.lof = and i64 %.sroa.0.0.copyload.i11427, 1
  %.not.not.i11428 = icmp eq i64 %i.lof, 0
  br i1 %.not.not.i11428, label %bb.bvs, label %PyStackRef_XCLOSE.exit11429

bb.bvs:                                           ; preds = %.lr.ph12690
  %i.log = inttoptr i64 %.sroa.0.0.copyload.i11427 to ptr ; 3 uses
  %i.loh = load i32, ptr %i.log, align 8, !tbaa !34
  %i.loi = add i32 %i.loh, -1                     ; 2 uses
  store i32 %i.loi, ptr %i.log, align 8, !tbaa !34
  %i.loj = icmp eq i32 %i.loi, 0
  br i1 %i.loj, label %bb.bvt, label %PyStackRef_XCLOSE.exit11429

bb.bvt:                                           ; preds = %bb.bvs
  call void @_Py_Dealloc(ptr noundef nonnull %i.log) #8
  br label %PyStackRef_XCLOSE.exit11429

PyStackRef_XCLOSE.exit11429:                      ; preds = %.lr.ph12690, %bb.bvs, %bb.bvt
  %i.lok = load ptr, ptr %i.llx, align 8, !tbaa !65 ; 3 uses
  %i.lol = icmp ugt ptr %i.lok, %i.loa
  br i1 %i.lol, label %.lr.ph12690, label %._crit_edge12691, !llvm.loop !286

._crit_edge12691:                                 ; preds = %PyStackRef_XCLOSE.exit11429, %bb.bvr
  %.lcssa = phi ptr [ %i.lob, %bb.bvr ], [ %i.lok, %PyStackRef_XCLOSE.exit11429 ]
  %i.lom = load i32, ptr %i.q, align 4, !tbaa !6
  %.not9398 = icmp eq i32 %i.lom, 0
  br i1 %.not9398, label %bb.bvv, label %bb.bvu

bb.bvu:                                           ; preds = %._crit_edge12691
  %i.lon = load ptr, ptr %i.lly, align 8, !tbaa !47
  %.1.val10449 = load i64, ptr %.1.ph, align 8
  %i.loo = and i64 %.1.val10449, 8589934590
  %i.lop = ptrtoint ptr %i.lon to i64
  %.neg11606 = add i64 %i.lop, 8589934384
  %i.loq = sub i64 %.neg11606, %i.loo
  %sext = shl i64 %i.loq, 31
  %i.lor = ashr exact i64 %sext, 30
  %i.los = or i64 %i.lor, 3
  store i64 %i.los, ptr %.lcssa, align 8, !tbaa !34
  %i.lot = load ptr, ptr %i.llx, align 8, !tbaa !65
  %i.lou = getelementptr i8, ptr %i.lot, i64 8
  store ptr %i.lou, ptr %i.llx, align 8, !tbaa !65
  br label %bb.bvv

bb.bvv:                                           ; preds = %bb.bvu, %._crit_edge12691
  %i.lov = call ptr @_PyErr_GetRaisedException(ptr noundef %0) #8 ; 3 uses
  %i.low = getelementptr i8, ptr %i.lov, i64 6
  %i.lox = load i16, ptr %i.low, align 2, !tbaa !34
  %i.loy = and i16 %i.lox, 1
  %i.loz = ptrtoint ptr %i.lov to i64
  %i.lpa = zext nneg i16 %i.loy to i64
  %i.lpb = or i64 %i.lpa, %i.loz
  %i.lpc = load ptr, ptr %i.llx, align 8, !tbaa !65
  store i64 %i.lpb, ptr %i.lpc, align 8, !tbaa !34
  %i.lpd = load ptr, ptr %i.llx, align 8, !tbaa !65
  %i.lpe = getelementptr i8, ptr %i.lpd, i64 8
  store ptr %i.lpe, ptr %i.llx, align 8, !tbaa !65
  %.1.val10448 = load i64, ptr %.1.ph, align 8
  %i.lpf = and i64 %.1.val10448, -2
  %i.lpg = inttoptr i64 %i.lpf to ptr
  %i.lph = getelementptr i8, ptr %i.lpg, i64 208
  %i.lpi = load i32, ptr %i.p, align 4, !tbaa !6
  %i.lpj = sext i32 %i.lpi to i64
  %i.lpk = getelementptr [2 x i8], ptr %i.lph, i64 %i.lpj ; 3 uses
  %.val.i11430 = load ptr, ptr %i.llz, align 8, !tbaa !46
  %i.lpl = getelementptr i8, ptr %.val.i11430, i64 223468
  %i.lpm = load i8, ptr %i.lpl, align 1, !tbaa !34
  %i.lpn = icmp eq i8 %i.lpm, 0
  br i1 %i.lpn, label %.preheader11609.loopexit, label %monitor_handled.exit

monitor_handled.exit:                             ; preds = %bb.bvv
  %i.lpo = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull %.1.ph, ptr noundef %i.lpk, ptr noundef nonnull %i.lov) #8
  %i.lpp = icmp slt i32 %i.lpo, 0
  br i1 %i.lpp, label %bb.bvf, label %.preheader11609.loopexit

monitor_unwind.exit:                              ; preds = %bb.bvq, %bb.bvn, %bb.bvm, %bb.bvl, %bb.bvj, %._crit_edge12696, %_Py_EnterRecursivePy.exit11432
  %.2 = phi ptr [ %.3, %_Py_EnterRecursivePy.exit11432 ], [ %.1.ph, %._crit_edge12696 ], [ %.1.ph, %bb.bvj ], [ %.1.ph, %bb.bvl ], [ %.1.ph, %bb.bvm ], [ %.1.ph, %bb.bvn ], [ %.1.ph, %bb.bvq ] ; 2 uses
  %i.lpq = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lpr = load i32, ptr %i.lpq, align 4, !tbaa !45
  %i.lps = add i32 %i.lpr, 1
  store i32 %i.lps, ptr %i.lpq, align 4, !tbaa !45
  %i.lpt = getelementptr i8, ptr %.2, i64 8
  %i.lpu = load ptr, ptr %i.lpt, align 8, !tbaa !44 ; 7 uses
  store ptr %i.lpu, ptr %i.ai, align 8, !tbaa !42
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef %.2) #8
  %i.lpv = getelementptr i8, ptr %i.lpu, i64 72
  store i16 0, ptr %i.lpv, align 8, !tbaa !165
  %i.lpw = getelementptr i8, ptr %i.lpu, i64 74
  %i.lpx = load i8, ptr %i.lpw, align 2, !tbaa !166
  %i.lpy = icmp eq i8 %i.lpx, 3
  br i1 %i.lpy, label %bb.bvw, label %bb.bvx

bb.bvw:                                           ; preds = %monitor_unwind.exit
  %i.lpz = getelementptr i8, ptr %i.lpu, i64 8
  %i.lqa = load ptr, ptr %i.lpz, align 8, !tbaa !44
  store ptr %i.lqa, ptr %i.ai, align 8, !tbaa !42
  br label %PyStackRef_AsPyObjectSteal.exit11044

bb.bvx:                                           ; preds = %monitor_unwind.exit
  %i.lqb = getelementptr i8, ptr %i.lpu, i64 56
  %i.lqc = load ptr, ptr %i.lqb, align 8, !tbaa !47
  %i.lqd = getelementptr i8, ptr %i.lpu, i64 64
  %.val9891 = load ptr, ptr %i.lqd, align 8, !tbaa !65
  br label %.loopexit

.sink.split:                                      ; preds = %bb.kn, %bb.po, %bb.rj, %bb.aij, %bb.akh, %_PyStackRef_FromPyObjectNew.exit11088, %PyStackRef_MakeHeapSafe.exit11259
  %.sink14193 = phi ptr [ %i.jpa, %PyStackRef_MakeHeapSafe.exit11259 ], [ %12, %_PyStackRef_FromPyObjectNew.exit11088 ], [ %i.fov, %bb.akh ], [ %i.fht, %bb.aij ], [ %i.cdy, %bb.rj ], [ %i.bvi, %bb.po ], [ %i.auz, %bb.kn ] ; 2 uses
  store ptr %.sink14193, ptr %i.ai, align 8, !tbaa !42
  br label %bb.bvy

bb.bvy:                                           ; preds = %.sink.split, %_Py_EnterRecursiveCallTstate.exit.thread
  %.3 = phi ptr [ %1, %_Py_EnterRecursiveCallTstate.exit.thread ], [ %.sink14193, %.sink.split ] ; 4 uses
  %i.lqe = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lqf = load i32, ptr %i.lqe, align 4, !tbaa !45 ; 2 uses
  %i.lqg = add i32 %i.lqf, -1
  store i32 %i.lqg, ptr %i.lqe, align 4, !tbaa !45
  %i.lqh = icmp slt i32 %i.lqf, 1
  br i1 %i.lqh, label %_Py_EnterRecursivePy.exit11432, label %_Py_EnterRecursivePy.exit11432.thread

_Py_EnterRecursivePy.exit11432:                   ; preds = %bb.bvy
  %i.lqi = call i32 @_Py_CheckRecursiveCallPy(ptr noundef nonnull %0) #8
  %.not11588 = icmp eq i32 %i.lqi, 0
  br i1 %.not11588, label %_Py_EnterRecursivePy.exit11432.thread, label %monitor_unwind.exit

_Py_EnterRecursivePy.exit11432.thread:            ; preds = %bb.bvy, %_Py_EnterRecursivePy.exit11432
  %i.lqj = getelementptr i8, ptr %.3, i64 56
  %i.lqk = load ptr, ptr %i.lqj, align 8, !tbaa !47
  %i.lql = getelementptr i8, ptr %.3, i64 64
  br label %.preheader11609

.preheader11609.loopexit:                         ; preds = %bb.bvv, %monitor_handled.exit
  br label %.preheader11609

.preheader11609:                                  ; preds = %.preheader11609.loopexit, %_Py_EnterRecursivePy.exit11432.thread
  %.65.ph.in = phi ptr [ %i.lql, %_Py_EnterRecursivePy.exit11432.thread ], [ %i.llx, %.preheader11609.loopexit ]
  %.32.ph = phi ptr [ %i.lqk, %_Py_EnterRecursivePy.exit11432.thread ], [ %i.lpk, %.preheader11609.loopexit ] ; 2 uses
  %.4.ph = phi ptr [ %.3, %_Py_EnterRecursivePy.exit11432.thread ], [ %.1.ph, %.preheader11609.loopexit ]
  %.09034.ph.in.in = load i16, ptr %.32.ph, align 2, !tbaa !66 ; 2 uses
  %.pn.in = and i16 %.09034.ph.in.in, 255
  %.pn = zext nneg i16 %.pn.in to i64
  %.09034.ph.in = lshr i16 %.09034.ph.in.in, 8
  %.09034.ph = zext nneg i16 %.09034.ph.in to i32
  %.65.ph = load ptr, ptr %.65.ph.in, align 8, !tbaa !65
  %i.lqm = getelementptr i8, ptr %0, i64 64       ; 13 uses
  %i.lqn = or disjoint i64 ptrtoint (ptr @_Py_TrueStruct to i64), 1 ; 4 uses
  %i.lqo = or disjoint i64 ptrtoint (ptr @_Py_FalseStruct to i64), 1 ; 7 uses
  %i.lqp = getelementptr i8, ptr %0, i64 24       ; 26 uses
  %i.lqq = getelementptr i8, ptr %0, i64 16       ; 31 uses
  %i.lqr = getelementptr i8, ptr %0, i64 52       ; 39 uses
  %i.lqs = getelementptr i8, ptr %0, i64 136      ; 10 uses
  %i.lqt = getelementptr i8, ptr %0, i64 1000     ; 2 uses
  %i.lqu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.lqv = getelementptr i8, ptr %0, i64 256      ; 10 uses
  %i.lqw = getelementptr i8, ptr %0, i64 264      ; 6 uses
  %i.lqx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 76), align 4 ; 2 uses
  %i.lqy = sext i32 %i.lqx to i64
  %i.lqz = load i32, ptr @_Py_InitCleanup, align 8
  %.not.i.i10644 = icmp sgt i32 %i.lqz, -1
  %i.lra = or disjoint i64 ptrtoint (ptr @_Py_InitCleanup to i64), 1
  %.sroa.0.0.i.i = select i1 %.not.i.i10644, i64 ptrtoint (ptr @_Py_InitCleanup to i64), i64 %i.lra
  %i.lrb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 72), align 8
  %i.lrc = sext i32 %i.lrb to i64
  %i.lrd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lre = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.lrf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.lrg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.lrh = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.lri = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.lrj = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  br label %.backedge

bb.bvz:                                           ; preds = %_Py_EnterRecursivePy.exit
  %i.lrk = load i32, ptr %i.an, align 4, !tbaa !45
  %i.lrl = add i32 %i.lrk, 1
  store i32 %i.lrl, ptr %i.an, align 4, !tbaa !45
  %i.lrm = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  store ptr %i.lrm, ptr %i.ai, align 8, !tbaa !42
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.lrn = getelementptr i8, ptr %i.lrm, i64 72
  store i16 0, ptr %i.lrn, align 8, !tbaa !165
  %i.lro = getelementptr i8, ptr %i.lrm, i64 8
  %i.lrp = load ptr, ptr %i.lro, align 8, !tbaa !44
  store ptr %i.lrp, ptr %i.ai, align 8, !tbaa !42
  br label %PyStackRef_AsPyObjectSteal.exit11044

PyStackRef_AsPyObjectSteal.exit11044:             ; preds = %bb.aqa, %bb.apz, %bb.apy, %bb.bvz, %bb.bvw, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.bvz ], [ null, %bb.bvw ], [ %i.gkw, %bb.apy ], [ %i.gky, %bb.apz ], [ %i.gky, %bb.aqa ]
  ret ptr %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader11609
  %.4.val1003611541 = phi ptr [ %.65.ph, %.preheader11609 ], [ %.4.val1003611541.be, %.backedge.backedge ] ; 740 uses
  %.32 = phi ptr [ %.32.ph, %.preheader11609 ], [ %.32.be, %.backedge.backedge ] ; 635 uses
  %.09034 = phi i32 [ %.09034.ph, %.preheader11609 ], [ %.09034.be, %.backedge.backedge ] ; 282 uses
  %.4 = phi ptr [ %.4.ph, %.preheader11609 ], [ %.4.be, %.backedge.backedge ] ; 962 uses
  %.pn.pn = phi i64 [ %.pn, %.preheader11609 ], [ %.pn.pn.be, %.backedge.backedge ]
  %.4.val100361154114683 = ptrtoaddr ptr %.4.val1003611541 to i64
  %.in = getelementptr [8 x i8], ptr @Test_EvalFrame.opcode_targets_table, i64 %.pn.pn
  %i.lrq = load ptr, ptr %.in, align 8, !tbaa !35
  indirectbr ptr %i.lrq, [label %bb.jx, label %bb.hh, label %bb.jp, label %bb.bl, label %bb.os, label %bb.wn, label %bb.xb, label %bb.xf, label %bb.ace, label %bb.adq, label %bb.adt, label %bb.adx, label %bb.aeb, label %bb.aeh, label %bb.afo, label %bb.age, label %bb.agk, label %bb.bih, label %bb.agr, label %bb.agu, label %bb.apx, label %bb.avp, label %bb.ayv, label %bb.bca, label %bb.bcv, label %bb.bcx, label %bb.bcz, label %bb.bdb, label %bb.bdc, label %bb.bdd, label %bb.bdo, label %bb.bej, label %bb.bem, label %bb.beq, label %bb.bit, label %bb.biy, label %bb.bka, label %bb.boq, label %bb.bpj, label %bb.brb, label %bb.bsg, label %bb.bsk, label %bb.bso, label %bb.bur, label %bb.m, label %bb.ic, label %bb.il, label %bb.in, label %bb.iq, label %bb.jg, label %bb.jm, label %bb.jv, label %bb.jy, label %bb.px, label %bb.qb, label %bb.qr, label %bb.xz, label %bb.zx, label %bb.aau, label %bb.aay, label %bb.aba, label %bb.abe, label %bb.abi, label %bb.abq, label %bb.abv, label %bb.abz, label %bb.ack, label %bb.acr, label %bb.ada, label %bb.aea, label %bb.aen, label %bb.agg, label %bb.ahd, label %bb.ahi, label %bb.aqb, label %bb.aqg, label %bb.aqk, label %bb.aqm, label %bb.aqn, label %bb.aqs, label %bb.ard, label %bb.avt, label %bb.avw, label %bb.avx, label %bb.awb, label %bb.awd, label %bb.awe, label %bb.awf, label %bb.awg, label %bb.awk, label %bb.awn, label %bb.awu, label %bb.axw, label %bb.aza, label %bb.bac, label %bb.bad, label %bb.bah, label %bb.bbw, label %bb.bce, label %bb.bcm, label %bb.bdr, label %bb.bdu, label %bb.bea, label %bb.beg, label %bb.ber, label %bb.bht, label %bb.bja, label %bb.bks, label %bb.bkx, label %bb.blb, label %bb.blf, label %bb.bni, label %bb.bnp, label %bb.bns, label %bb.bnw, label %bb.bob, label %bb.bof, label %bb.bra, label %bb.bsp, label %bb.bsz, label %bb.buz, label %bb.bvb, label %bb.bsf, label %bb.adw, label %bb.amg, label %bb.alx, label %bb.ain, label %bb.ajn, label %bb.bii, label %bb.u, label %bb.ag, label %bb.as, label %bb.be, label %bb.cf, label %bb.cr, label %bb.dd, label %bb.dl, label %bb.dv, label %bb.eh, label %bb.ep, label %bb.fb, label %bb.fn, label %bb.gj, label %bb.gv, label %bb.kr, label %bb.lf, label %bb.lu, label %bb.mj, label %bb.mo, label %bb.mt, label %bb.my, label %bb.ni, label %bb.ny, label %bb.qh, label %bb.rn, label %bb.sd, label %bb.sh, label %bb.sr, label %bb.ta, label %bb.tm, label %bb.tt, label %bb.ua, label %bb.ul, label %bb.uz, label %bb.vd, label %bb.vk, label %bb.vs, label %bb.vz, label %bb.wg, label %bb.yq, label %bb.zb, label %bb.zm, label %bb.aag, label %bb.aan, label %bb.aet, label %bb.aex, label %bb.afd, label %bb.afi, label %bb.aqj, label %bb.aql, label %bb.arl, label %bb.aru, label %bb.ase, label %bb.asn, label %bb.asx, label %bb.atc, label %bb.atg, label %bb.atm, label %bb.atw, label %bb.auc, label %bb.auk, label %bb.aut, label %bb.avc, label %bb.ayd, label %bb.ayn, label %bb.bba, label %bb.bbk, label %bb.bir, label %bb.bjv, label %bb.blo, label %bb.bmd, label %bb.bmq, label %bb.bpt, label %bb.bqh, label %bb.brh, label %bb.brl, label %bb.brn, label %bb.brt, label %bb.brx, label %bb.brz, label %bb.btm, label %bb.btx, label %bb.bui, label %bb.ahr, label %bb.amp, label %bb.akl, label %bb.aps, label %bb.app, label %bb.api, label %bb.aou, label %bb.aol, label %bb.aof, label %bb.apc, label %bb.anv, label %bb.amb, label %bb.alt, label %bb.aln, label %bb.ali, label %bb.any, label %bb.ale]
}

declare void @_PyEval_FrameClearAndPop(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_Instrument(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_BinaryOp(i64, i64, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare void @_PyFloat_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare i64 @_PyCompactLong_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyLong_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Concat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyUnicode_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare void @PyUnicode_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyCompactLong_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyErr_SetKeyError(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @_PyFrame_PushUnchecked(ptr nofree noundef captures(none) %0, i64 %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %1, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158  ; 14 uses
  %i.g = getelementptr i8, ptr %i.d, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !160
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !158
  %i.k = getelementptr i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr i8, ptr %i.f, i64 16
  store i64 %1, ptr %i.l, align 8, !tbaa !34
  %i.m = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = or i64 %i.n, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = add nuw i32 %i.m, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !34
  %i.q = ptrtoint ptr %i.d to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !tbaa !34
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = getelementptr i8, ptr %i.f, i64 24
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !78
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !78
  %i.u = getelementptr i8, ptr %i.f, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !162
  %i.v = getelementptr i8, ptr %i.f, i64 80       ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 72       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !163  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !65
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !164
  %i.ac = getelementptr i8, ptr %i.d, i64 208
  %i.ad = getelementptr i8, ptr %i.f, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !47
  %i.ae = getelementptr i8, ptr %i.f, i64 72
  store i16 0, ptr %i.ae, align 8, !tbaa !165
  %i.af = getelementptr i8, ptr %i.f, i64 74
  store i8 0, ptr %i.af, align 2, !tbaa !166
  %i.ag = getelementptr i8, ptr %i.f, i64 75
  store i8 0, ptr %i.ag, align 1, !tbaa !167
  %i.ah = icmp slt i32 %2, %i.x
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_PyFrame_Initialize.exit

.lr.ph.preheader.i:                               ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.ai = sext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i
  store i64 1, ptr %i.aj, align 8, !tbaa !34
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !163
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %_PyFrame_Initialize.exit, !llvm.loop !168

_PyFrame_Initialize.exit:                         ; preds = %.lr.ph.i, %_PyStackRef_FromPyObjectNew.exit.i
  ret ptr %i.f
}

declare ptr @_PyList_SliceSubscript(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyCompactLong_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyList_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyTuple_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyUnicode_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyInterpolation_Build(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyList_FromStackRefStealOnSuccess(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_Py_BuildMap_StackRefSteal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #1

declare i32 @_PySet_AddTakeRef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_BuildString_StackRefSteal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyTemplate_Build(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Py_Specialize_Call(i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyFunction_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare ptr @_PyEvalFramePushAndInit(ptr noundef, i64, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_4
