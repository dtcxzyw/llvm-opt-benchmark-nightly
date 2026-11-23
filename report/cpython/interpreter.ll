Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/interpreter?download=true
inline.NumInlined: 2198
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Test_EvalFrame:bb.a
PyStackRef_XCLOSE.exit10818:                      ; preds = %bb.we, %bb.wf, %bb.wg
  %i.dhu = load atomic i64, ptr %i.lur monotonic, align 8
  %i.dhv = and i64 %i.dhu, 255
  %.not.i10819 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i10819, label %check_periodics.exit10821.thread, label %check_periodics.exit10821

check_periodics.exit10821.thread:                 ; preds = %PyStackRef_XCLOSE.exit10818
  %.4.val1017411533 = load ptr, ptr %i.dhe, align 8, !tbaa !80
  br label %bb.wh

check_periodics.exit10821:                        ; preds = %PyStackRef_XCLOSE.exit10818
  %i.dhw = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10174 = load ptr, ptr %i.dhe, align 8, !tbaa !80 ; 2 uses
  %.not9535 = icmp eq i32 %i.dhw, 0
  br i1 %.not9535, label %bb.wh, label %.loopexit.loopexit

bb.wh:                                            ; preds = %check_periodics.exit10821.thread, %check_periodics.exit10821
  %.4.val1017411535 = phi ptr [ %.4.val1017411533, %check_periodics.exit10821.thread ], [ %.4.val10174, %check_periodics.exit10821 ]
  %i.dhx = load i16, ptr %i.dgw, align 2, !tbaa !132 ; 2 uses
  %.sroa.22694.0.extract.shift = lshr i16 %i.dhx, 8
  %.sroa.22694.0.extract.trunc = zext nneg i16 %.sroa.22694.0.extract.shift to i32
  %i.dhy = and i16 %i.dhx, 255
  %i.dhz = zext nneg i16 %i.dhy to i64
  br label %.backedge.backedge

bb.wi:                                            ; preds = %.backedge
  %i.dia = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dia, align 8, !tbaa !63
  %i.dib = getelementptr i8, ptr %.32, i64 8      ; 4 uses
  %i.dic = getelementptr i8, ptr %.4.val1003511564, i64 -16 ; 2 uses
  %.sroa.02692.0.copyload = load i64, ptr %i.dic, align 8, !tbaa !60
  %i.did = icmp eq i64 %.sroa.02692.0.copyload, 1
  br i1 %i.did, label %bb.wj, label %_PyThreadState_HasStackSpace.exit10637.thread

bb.wj:                                            ; preds = %bb.wi
  %i.die = getelementptr i8, ptr %.4.val1003511564, i64 -24 ; 2 uses
  %.sroa.02691.0.copyload = load i64, ptr %i.die, align 8, !tbaa !60
  %i.dif = and i64 %.sroa.02691.0.copyload, -2
  %.not9533 = icmp eq i64 %i.dif, ptrtoint (ptr @PyType_Type to i64)
  br i1 %.not9533, label %bb.wk, label %_PyThreadState_HasStackSpace.exit10637.thread

bb.wk:                                            ; preds = %bb.wj
  %i.dig = getelementptr i8, ptr %.4.val1003511564, i64 -8
  %.sroa.02689.0.copyload = load i64, ptr %i.dig, align 8, !tbaa !60 ; 3 uses
  %i.dih = and i64 %.sroa.02689.0.copyload, -2
  %i.dii = inttoptr i64 %i.dih to ptr
  %i.dij = getelementptr i8, ptr %i.dii, i64 8
  %.val9876 = load ptr, ptr %i.dij, align 8, !tbaa !73 ; 4 uses
  %i.dik = load i32, ptr %.val9876, align 8, !tbaa !60 ; 2 uses
  %.not.i10822 = icmp sgt i32 %i.dik, -1
  br i1 %.not.i10822, label %bb.wm, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  %i.dil = ptrtoint ptr %.val9876 to i64
  %i.dim = or i64 %i.dil, 1
  br label %_PyStackRef_FromPyObjectNew.exit10824

bb.wm:                                            ; preds = %bb.wk
  %i.din = add nuw i32 %i.dik, 1
  store i32 %i.din, ptr %.val9876, align 8, !tbaa !60
  %i.dio = ptrtoint ptr %.val9876 to i64
  br label %_PyStackRef_FromPyObjectNew.exit10824

_PyStackRef_FromPyObjectNew.exit10824:            ; preds = %bb.wl, %bb.wm
  %.sroa.0.0.i10823 = phi i64 [ %i.dim, %bb.wl ], [ %i.dio, %bb.wm ]
  store i64 %.sroa.0.0.i10823, ptr %i.die, align 8, !tbaa !60
  %i.dip = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.dic, ptr %i.dip, align 8, !tbaa !80
  %i.diq = and i64 %.sroa.02689.0.copyload, 1
  %.not.not.i10825 = icmp eq i64 %i.diq, 0
  br i1 %.not.not.i10825, label %bb.wn, label %PyStackRef_XCLOSE.exit10826

bb.wn:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10824
  %i.dir = inttoptr i64 %.sroa.02689.0.copyload to ptr ; 3 uses
  %i.dis = load i32, ptr %i.dir, align 8, !tbaa !60
  %i.dit = add i32 %i.dis, -1                     ; 2 uses
  store i32 %i.dit, ptr %i.dir, align 8, !tbaa !60
  %i.diu = icmp eq i32 %i.dit, 0
  br i1 %i.diu, label %bb.wo, label %PyStackRef_XCLOSE.exit10826

bb.wo:                                            ; preds = %bb.wn
  call void @_Py_Dealloc(ptr noundef nonnull %i.dir) #8
  br label %PyStackRef_XCLOSE.exit10826

PyStackRef_XCLOSE.exit10826:                      ; preds = %_PyStackRef_FromPyObjectNew.exit10824, %bb.wn, %bb.wo
  %.4.val10173 = load ptr, ptr %i.dip, align 8, !tbaa !80
  %i.div = load i16, ptr %i.dib, align 2, !tbaa !132 ; 2 uses
  %.sroa.22682.0.extract.shift = lshr i16 %i.div, 8
  %.sroa.22682.0.extract.trunc = zext nneg i16 %.sroa.22682.0.extract.shift to i32
  %i.diw = and i16 %i.div, 255
  %i.dix = zext nneg i16 %i.diw to i64
  br label %.backedge.backedge

bb.wp:                                            ; preds = %.backedge
  %i.diy = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.diy, align 8, !tbaa !63
  %i.diz = getelementptr i8, ptr %.32, i64 2      ; 4 uses
  %i.dja = getelementptr i8, ptr %.4.val1003511564, i64 -8
  %.sroa.02667.0.copyload = load i64, ptr %i.dja, align 8, !tbaa !60 ; 5 uses
  %i.djb = getelementptr i8, ptr %.4.val1003511564, i64 -16
  %.sroa.02674.0.copyload = load i64, ptr %i.djb, align 8, !tbaa !60 ; 5 uses
  %i.djc = and i64 %.sroa.02667.0.copyload, -2
  %i.djd = inttoptr i64 %i.djc to ptr             ; 2 uses
  %i.dje = getelementptr i8, ptr %.4, i64 64      ; 6 uses
  store ptr %.4.val1003511564, ptr %i.dje, align 8, !tbaa !80
  %i.djf = call i32 @_PyEval_CheckExceptStarTypeValid(ptr noundef %0, ptr noundef %i.djd) #8
  %.4.val10172 = load ptr, ptr %i.dje, align 8, !tbaa !80 ; 4 uses
  %i.djg = icmp slt i32 %i.djf, 0
  br i1 %i.djg, label %bb.wq, label %bb.wv

bb.wq:                                            ; preds = %bb.wp
  %i.djh = getelementptr i8, ptr %.4.val10172, i64 -8
  store i64 1, ptr %i.djh, align 8, !tbaa !60
  %i.dji = and i64 %.sroa.02667.0.copyload, 1
  %.not.not.i10827 = icmp eq i64 %i.dji, 0
  br i1 %.not.not.i10827, label %bb.wr, label %PyStackRef_CLOSE.exit10828

bb.wr:                                            ; preds = %bb.wq
  %i.djj = inttoptr i64 %.sroa.02667.0.copyload to ptr ; 3 uses
  %i.djk = load i32, ptr %i.djj, align 8, !tbaa !60
  %i.djl = add i32 %i.djk, -1                     ; 2 uses
  store i32 %i.djl, ptr %i.djj, align 8, !tbaa !60
  %i.djm = icmp eq i32 %i.djl, 0
  br i1 %i.djm, label %bb.ws, label %PyStackRef_CLOSE.exit10828

bb.ws:                                            ; preds = %bb.wr
  call void @_Py_Dealloc(ptr noundef nonnull %i.djj) #8
  br label %PyStackRef_CLOSE.exit10828

PyStackRef_CLOSE.exit10828:                       ; preds = %bb.wq, %bb.wr, %bb.ws
  %i.djn = getelementptr i8, ptr %.4.val10172, i64 -16
  store i64 1, ptr %i.djn, align 8, !tbaa !60
  %i.djo = and i64 %.sroa.02674.0.copyload, 1
  %.not.not.i10829 = icmp eq i64 %i.djo, 0
  br i1 %.not.not.i10829, label %bb.wt, label %PyStackRef_CLOSE.exit10830

bb.wt:                                            ; preds = %PyStackRef_CLOSE.exit10828
  %i.djp = inttoptr i64 %.sroa.02674.0.copyload to ptr ; 3 uses
  %i.djq = load i32, ptr %i.djp, align 8, !tbaa !60
  %i.djr = add i32 %i.djq, -1                     ; 2 uses
  store i32 %i.djr, ptr %i.djp, align 8, !tbaa !60
  %i.djs = icmp eq i32 %i.djr, 0
  br i1 %i.djs, label %bb.wu, label %PyStackRef_CLOSE.exit10830

bb.wu:                                            ; preds = %bb.wt
  call void @_Py_Dealloc(ptr noundef nonnull %i.djp) #8
  br label %PyStackRef_CLOSE.exit10830

PyStackRef_CLOSE.exit10830:                       ; preds = %PyStackRef_CLOSE.exit10828, %bb.wt, %bb.wu
  %.4.val10171 = load ptr, ptr %i.dje, align 8, !tbaa !80
  %i.djt = getelementptr i8, ptr %.4.val10171, i64 -16
  br label %.loopexit

bb.wv:                                            ; preds = %bb.wp
  %i.dju = and i64 %.sroa.02674.0.copyload, -2
  %i.djv = inttoptr i64 %i.dju to ptr
  store ptr null, ptr %i.d, align 8, !tbaa !81
  store ptr null, ptr %i.e, align 8, !tbaa !81
  %i.djw = call i32 @_PyEval_ExceptionGroupMatch(ptr noundef nonnull %.4, ptr noundef %i.djv, ptr noundef %i.djd, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #8
  %i.djx = getelementptr i8, ptr %.4.val10172, i64 -8
  store i64 1, ptr %i.djx, align 8, !tbaa !60
  %i.djy = and i64 %.sroa.02667.0.copyload, 1
  %.not.not.i10831 = icmp eq i64 %i.djy, 0
  br i1 %.not.not.i10831, label %bb.ww, label %PyStackRef_CLOSE.exit10832

bb.ww:                                            ; preds = %bb.wv
  %i.djz = inttoptr i64 %.sroa.02667.0.copyload to ptr ; 3 uses
  %i.dka = load i32, ptr %i.djz, align 8, !tbaa !60
  %i.dkb = add i32 %i.dka, -1                     ; 2 uses
  store i32 %i.dkb, ptr %i.djz, align 8, !tbaa !60
  %i.dkc = icmp eq i32 %i.dkb, 0
  br i1 %i.dkc, label %bb.wx, label %PyStackRef_CLOSE.exit10832

bb.wx:                                            ; preds = %bb.ww
  call void @_Py_Dealloc(ptr noundef nonnull %i.djz) #8
  br label %PyStackRef_CLOSE.exit10832

PyStackRef_CLOSE.exit10832:                       ; preds = %bb.wv, %bb.ww, %bb.wx
  %i.dkd = getelementptr i8, ptr %.4.val10172, i64 -16
  store i64 1, ptr %i.dkd, align 8, !tbaa !60
  %i.dke = and i64 %.sroa.02674.0.copyload, 1
  %.not.not.i10833 = icmp eq i64 %i.dke, 0
  br i1 %.not.not.i10833, label %bb.wy, label %PyStackRef_CLOSE.exit10834

bb.wy:                                            ; preds = %PyStackRef_CLOSE.exit10832
  %i.dkf = inttoptr i64 %.sroa.02674.0.copyload to ptr ; 3 uses
  %i.dkg = load i32, ptr %i.dkf, align 8, !tbaa !60
  %i.dkh = add i32 %i.dkg, -1                     ; 2 uses
  store i32 %i.dkh, ptr %i.dkf, align 8, !tbaa !60
  %i.dki = icmp eq i32 %i.dkh, 0
  br i1 %i.dki, label %bb.wz, label %PyStackRef_CLOSE.exit10834

bb.wz:                                            ; preds = %bb.wy
  call void @_Py_Dealloc(ptr noundef nonnull %i.dkf) #8
  br label %PyStackRef_CLOSE.exit10834

PyStackRef_CLOSE.exit10834:                       ; preds = %PyStackRef_CLOSE.exit10832, %bb.wy, %bb.wz
  %.4.val10170 = load ptr, ptr %i.dje, align 8, !tbaa !80
  %i.dkj = getelementptr i8, ptr %.4.val10170, i64 -16 ; 3 uses
  %i.dkk = icmp slt i32 %i.djw, 0
  %i.dkl = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.dkm = icmp eq ptr %i.dkl, null
  %or.cond15 = select i1 %i.dkk, i1 true, i1 %i.dkm
  br i1 %or.cond15, label %.loopexit.loopexit, label %bb.xa

bb.xa:                                            ; preds = %PyStackRef_CLOSE.exit10834
  %i.dkn = icmp eq ptr %i.dkl, @_Py_NoneStruct
  br i1 %i.dkn, label %bb.xc, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  store ptr %i.dkj, ptr %i.dje, align 8, !tbaa !80
  call void @PyErr_SetHandledException(ptr noundef %i.dkl) #8
  %.4.val10169 = load ptr, ptr %i.dje, align 8, !tbaa !80
  %.pre13259 = load ptr, ptr %i.d, align 8, !tbaa !81
  br label %bb.xc

bb.xc:                                            ; preds = %bb.xb, %bb.xa
  %i.dko = phi ptr [ @_Py_NoneStruct, %bb.xa ], [ %.pre13259, %bb.xb ] ; 2 uses
  %.149054 = phi ptr [ %i.dkj, %bb.xa ], [ %.4.val10169, %bb.xb ] ; 3 uses
  %i.dkp = load ptr, ptr %i.e, align 8, !tbaa !81 ; 2 uses
  %i.dkq = getelementptr i8, ptr %i.dkp, i64 6
  %i.dkr = load i16, ptr %i.dkq, align 2, !tbaa !60
  %i.dks = and i16 %i.dkr, 1
  %i.dkt = ptrtoint ptr %i.dkp to i64
  %i.dku = zext nneg i16 %i.dks to i64
  %i.dkv = or i64 %i.dku, %i.dkt
  %i.dkw = getelementptr i8, ptr %i.dko, i64 6
  %i.dkx = load i16, ptr %i.dkw, align 2, !tbaa !60
  %i.dky = and i16 %i.dkx, 1
  %i.dkz = ptrtoint ptr %i.dko to i64
  %i.dla = zext nneg i16 %i.dky to i64
  %i.dlb = or i64 %i.dla, %i.dkz
  store i64 %i.dkv, ptr %.149054, align 8, !tbaa !60
  %i.dlc = getelementptr i8, ptr %.149054, i64 8
  store i64 %i.dlb, ptr %i.dlc, align 8, !tbaa !60
  %i.dld = getelementptr i8, ptr %.149054, i64 16
  %i.dle = load i16, ptr %i.diz, align 2, !tbaa !132 ; 2 uses
  %.sroa.22651.0.extract.shift = lshr i16 %i.dle, 8
  %.sroa.22651.0.extract.trunc = zext nneg i16 %.sroa.22651.0.extract.shift to i32
  %i.dlf = and i16 %i.dle, 255
  %i.dlg = zext nneg i16 %i.dlf to i64
  br label %.backedge.backedge

bb.xd:                                            ; preds = %.backedge
  %i.dlh = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dlh, align 8, !tbaa !63
  %i.dli = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.dlj = getelementptr i8, ptr %.4.val1003511564, i64 -8
  %.sroa.02647.0.copyload = load i64, ptr %i.dlj, align 8, !tbaa !60 ; 3 uses
  %i.dlk = getelementptr i8, ptr %.4.val1003511564, i64 -16
  %.sroa.02649.0.copyload = load i64, ptr %i.dlk, align 8, !tbaa !60
  %i.dll = and i64 %.sroa.02647.0.copyload, -2
  %i.dlm = inttoptr i64 %i.dll to ptr             ; 2 uses
  %i.dln = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1003511564, ptr %i.dln, align 8, !tbaa !80
  %i.dlo = call i32 @_PyEval_CheckExceptTypeValid(ptr noundef %0, ptr noundef %i.dlm) #8
  %.4.val10168 = load ptr, ptr %i.dln, align 8, !tbaa !80
  %i.dlp = icmp slt i32 %i.dlo, 0
  br i1 %i.dlp, label %.loopexit.loopexit, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.dlq = and i64 %.sroa.02649.0.copyload, -2
  %i.dlr = inttoptr i64 %i.dlq to ptr
  %i.dls = call i32 @PyErr_GivenExceptionMatches(ptr noundef %i.dlr, ptr noundef %i.dlm) #8
  %.4.val10167 = load ptr, ptr %i.dln, align 8, !tbaa !80
  %i.dlt = getelementptr i8, ptr %.4.val10167, i64 -8
  store ptr %i.dlt, ptr %i.dln, align 8, !tbaa !80
  %i.dlu = and i64 %.sroa.02647.0.copyload, 1
  %.not.not.i10835 = icmp eq i64 %i.dlu, 0
  br i1 %.not.not.i10835, label %bb.xf, label %PyStackRef_CLOSE.exit10836

bb.xf:                                            ; preds = %bb.xe
  %i.dlv = inttoptr i64 %.sroa.02647.0.copyload to ptr ; 3 uses
  %i.dlw = load i32, ptr %i.dlv, align 8, !tbaa !60
  %i.dlx = add i32 %i.dlw, -1                     ; 2 uses
  store i32 %i.dlx, ptr %i.dlv, align 8, !tbaa !60
  %i.dly = icmp eq i32 %i.dlx, 0
  br i1 %i.dly, label %bb.xg, label %PyStackRef_CLOSE.exit10836

bb.xg:                                            ; preds = %bb.xf
  call void @_Py_Dealloc(ptr noundef nonnull %i.dlv) #8
  br label %PyStackRef_CLOSE.exit10836

PyStackRef_CLOSE.exit10836:                       ; preds = %bb.xe, %bb.xf, %bb.xg
  %.4.val10166 = load ptr, ptr %i.dln, align 8, !tbaa !80 ; 2 uses
  %.not9723 = icmp eq i32 %i.dls, 0
  %.9734 = select i1 %.not9723, i64 ptrtoint (ptr @_Py_FalseStruct to i64), i64 ptrtoint (ptr @_Py_TrueStruct to i64)
  %.sroa.02646.0 = or disjoint i64 %.9734, 1
  store i64 %.sroa.02646.0, ptr %.4.val10166, align 8, !tbaa !60
  %i.dlz = getelementptr i8, ptr %.4.val10166, i64 8
  %i.dma = load i16, ptr %i.dli, align 2, !tbaa !132 ; 2 uses
  %.sroa.22638.0.extract.shift = lshr i16 %i.dma, 8
  %.sroa.22638.0.extract.trunc = zext nneg i16 %.sroa.22638.0.extract.shift to i32
  %i.dmb = and i16 %i.dma, 255
  %i.dmc = zext nneg i16 %i.dmb to i64
  br label %.backedge.backedge

bb.xh:                                            ; preds = %.backedge
  %i.dmd = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dmd, align 8, !tbaa !63
  %i.dme = getelementptr i8, ptr %.32, i64 2      ; 8 uses
  %i.dmf = getelementptr i8, ptr %.4.val1003511564, i64 -8
  %.sroa.02627.0.copyload = load i64, ptr %i.dmf, align 8, !tbaa !60 ; 3 uses
  %i.dmg = getelementptr i8, ptr %.4.val1003511564, i64 -16
  %.sroa.02631.0.copyload = load i64, ptr %i.dmg, align 8, !tbaa !60 ; 2 uses
  %i.dmh = getelementptr i8, ptr %.4.val1003511564, i64 -24
  %.sroa.02634.0.copyload = load i64, ptr %i.dmh, align 8, !tbaa !60 ; 2 uses
  %i.dmi = and i64 %.sroa.02627.0.copyload, -2
  %i.dmj = inttoptr i64 %i.dmi to ptr             ; 5 uses
  %i.dmk = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.4.val1003511564, ptr %i.dmk, align 8, !tbaa !80
  %i.dml = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !81
  %i.dmm = call i32 @PyErr_GivenExceptionMatches(ptr noundef %i.dmj, ptr noundef %i.dml) #8
  %.4.val10165 = load ptr, ptr %i.dmk, align 8, !tbaa !80 ; 4 uses
  %.not9722 = icmp eq i32 %i.dmm, 0
  br i1 %.not9722, label %bb.xr, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.dmn = getelementptr i8, ptr %i.dmj, i64 72
  %i.dmo = load ptr, ptr %i.dmn, align 8, !tbaa !256 ; 4 uses
  %i.dmp = load i32, ptr %i.dmo, align 8, !tbaa !60 ; 2 uses
  %.not.i10837 = icmp sgt i32 %i.dmp, -1
  br i1 %.not.i10837, label %bb.xk, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.dmq = ptrtoint ptr %i.dmo to i64
  %i.dmr = or i64 %i.dmq, 1
  br label %_PyStackRef_FromPyObjectNew.exit10839

bb.xk:                                            ; preds = %bb.xi
  %i.dms = add nuw i32 %i.dmp, 1
  store i32 %i.dms, ptr %i.dmo, align 8, !tbaa !60
  %i.dmt = ptrtoint ptr %i.dmo to i64
  br label %_PyStackRef_FromPyObjectNew.exit10839

_PyStackRef_FromPyObjectNew.exit10839:            ; preds = %bb.xj, %bb.xk
  %.sroa.0.0.i10838 = phi i64 [ %i.dmr, %bb.xj ], [ %i.dmt, %bb.xk ] ; 2 uses
  store ptr %.4.val10165, ptr %i.dmk, align 8, !tbaa !80
  %i.dmu = getelementptr i8, ptr %.4.val10165, i64 -24
  store i64 %.sroa.0.0.i10838, ptr %i.dmu, align 8, !tbaa !60
  %i.dmv = and i64 %.sroa.02634.0.copyload, 1
  %.not.not.i10840 = icmp eq i64 %i.dmv, 0
  br i1 %.not.not.i10840, label %bb.xl, label %PyStackRef_CLOSE.exit10841

bb.xl:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10839
  %i.dmw = inttoptr i64 %.sroa.02634.0.copyload to ptr ; 3 uses
  %i.dmx = load i32, ptr %i.dmw, align 8, !tbaa !60
  %i.dmy = add i32 %i.dmx, -1                     ; 2 uses
  store i32 %i.dmy, ptr %i.dmw, align 8, !tbaa !60
  %i.dmz = icmp eq i32 %i.dmy, 0
  br i1 %i.dmz, label %bb.xm, label %PyStackRef_CLOSE.exit10841

bb.xm:                                            ; preds = %bb.xl
  call void @_Py_Dealloc(ptr noundef nonnull %i.dmw) #8
  br label %PyStackRef_CLOSE.exit10841

PyStackRef_CLOSE.exit10841:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10839, %bb.xl, %bb.xm
  %i.dna = getelementptr i8, ptr %.4.val10165, i64 -8
  store i64 1, ptr %i.dna, align 8, !tbaa !60
  %i.dnb = and i64 %.sroa.02627.0.copyload, 1
  %.not.not.i10842 = icmp eq i64 %i.dnb, 0
  br i1 %.not.not.i10842, label %bb.xn, label %PyStackRef_CLOSE.exit10843

bb.xn:                                            ; preds = %PyStackRef_CLOSE.exit10841
  %i.dnc = inttoptr i64 %.sroa.02627.0.copyload to ptr ; 3 uses
  %i.dnd = load i32, ptr %i.dnc, align 8, !tbaa !60
  %i.dne = add i32 %i.dnd, -1                     ; 2 uses
  store i32 %i.dne, ptr %i.dnc, align 8, !tbaa !60
  %i.dnf = icmp eq i32 %i.dne, 0
  br i1 %i.dnf, label %bb.xo, label %PyStackRef_CLOSE.exit10843

bb.xo:                                            ; preds = %bb.xn
  call void @_Py_Dealloc(ptr noundef nonnull %i.dnc) #8
  br label %PyStackRef_CLOSE.exit10843

PyStackRef_CLOSE.exit10843:                       ; preds = %PyStackRef_CLOSE.exit10841, %bb.xn, %bb.xo
  %i.dng = getelementptr i8, ptr %.4.val10165, i64 -16
  store i64 1, ptr %i.dng, align 8, !tbaa !60
  %i.dnh = and i64 %.sroa.02631.0.copyload, 1
  %.not.not.i10844 = icmp eq i64 %i.dnh, 0
  br i1 %.not.not.i10844, label %bb.xp, label %PyStackRef_CLOSE.exit10845

bb.xp:                                            ; preds = %PyStackRef_CLOSE.exit10843
  %i.dni = inttoptr i64 %.sroa.02631.0.copyload to ptr ; 3 uses
  %i.dnj = load i32, ptr %i.dni, align 8, !tbaa !60
  %i.dnk = add i32 %i.dnj, -1                     ; 2 uses
  store i32 %i.dnk, ptr %i.dni, align 8, !tbaa !60
  %i.dnl = icmp eq i32 %i.dnk, 0
  br i1 %i.dnl, label %bb.xq, label %PyStackRef_CLOSE.exit10845

bb.xq:                                            ; preds = %bb.xp
  call void @_Py_Dealloc(ptr noundef nonnull %i.dni) #8
  br label %PyStackRef_CLOSE.exit10845

PyStackRef_CLOSE.exit10845:                       ; preds = %PyStackRef_CLOSE.exit10843, %bb.xp, %bb.xq
  %.4.val10164 = load ptr, ptr %i.dmk, align 8, !tbaa !80 ; 3 uses
  %i.dnm = getelementptr i8, ptr %.4.val10164, i64 -24
  store i64 %i.aa, ptr %i.dnm, align 8, !tbaa !60
  %i.dnn = getelementptr i8, ptr %.4.val10164, i64 -16
  store i64 %.sroa.0.0.i10838, ptr %i.dnn, align 8, !tbaa !60
  %i.dno = getelementptr i8, ptr %.4.val10164, i64 -8
  %i.dnp = load i16, ptr %i.dme, align 2, !tbaa !132 ; 2 uses
  %.sroa.22612.0.extract.shift = lshr i16 %i.dnp, 8
  %.sroa.22612.0.extract.trunc = zext nneg i16 %.sroa.22612.0.extract.shift to i32
  %i.dnq = and i16 %i.dnp, 255
  %i.dnr = zext nneg i16 %i.dnq to i64
  br label %.backedge.backedge

bb.xr:                                            ; preds = %bb.xh
  %i.dns = load i32, ptr %i.dmj, align 8, !tbaa !60 ; 2 uses
  %i.dnt = icmp ugt i32 %i.dns, -1073741825
  br i1 %i.dnt, label %_Py_NewRef.exit10846, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.dnu = add nuw i32 %i.dns, 1
  store i32 %i.dnu, ptr %i.dmj, align 8, !tbaa !60
  br label %_Py_NewRef.exit10846

end_hunk_0
begin_hunk_1_@Test_EvalFrame:bb.a
bb.bfo:                                           ; preds = %bb.bfj, %bb.bfi
  %i.jgj = and i64 %.val226.val.i, 1073741824
  %.not171.i = icmp eq i64 %i.jgj, 0
  br i1 %.not171.i, label %bb.bfr, label %bb.bfp

bb.bfp:                                           ; preds = %bb.bfo
  %i.jgk = load i32, ptr %.val226.i, align 8, !tbaa !60 ; 2 uses
  %i.jgl = icmp ugt i32 %i.jgk, -1073741825
  br i1 %i.jgl, label %Py_INCREF.exit.i, label %bb.bfq

bb.bfq:                                           ; preds = %bb.bfp
  %i.jgm = add nuw i32 %i.jgk, 1
  store i32 %i.jgm, ptr %.val226.i, align 8, !tbaa !60
  br label %Py_INCREF.exit.i

bb.bfr:                                           ; preds = %bb.bfo
  %i.jgn = load i32, ptr %i.jfn, align 8, !tbaa !60 ; 2 uses
  %.not172.i = icmp sgt i32 %i.jgn, -1
  br i1 %.not172.i, label %bb.bfs, label %.thread247.i

bb.bfs:                                           ; preds = %bb.bfr
  %i.jgo = add nsw i32 %i.jgn, -1                 ; 2 uses
  store i32 %i.jgo, ptr %i.jfn, align 8, !tbaa !60
  %i.jgp = icmp eq i32 %i.jgo, 0
  br i1 %i.jgp, label %bb.bft, label %.thread247.i

bb.bft:                                           ; preds = %bb.bfs
  %i.jgq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not173.i = icmp eq ptr %i.jgq, null
  br i1 %.not173.i, label %bb.bfv, label %bb.bfu

bb.bfu:                                           ; preds = %bb.bft
  %i.jgr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jgs = call i32 %i.jgq(ptr noundef nonnull %i.jfn, i32 noundef 1, ptr noundef %i.jgr) #8, !inline_history !109 ; 0 uses
  %.val214.pre.i = load ptr, ptr %i.jfo, align 8, !tbaa !73
  br label %bb.bfv

bb.bfv:                                           ; preds = %bb.bfu, %bb.bft
  %.val214.i = phi ptr [ %.val214.pre.i, %bb.bfu ], [ %.val226.i, %bb.bft ]
  %i.jgt = getelementptr i8, ptr %.val214.i, i64 48
  %i.jgu = load ptr, ptr %i.jgt, align 8, !tbaa !79
  call void %i.jgu(ptr noundef nonnull %i.jfn) #8, !inline_history !109
  br label %.thread247.i

.thread247.i:                                     ; preds = %bb.bfv, %bb.bfs, %bb.bfr
  %i.jgv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !81
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jgv, ptr noundef nonnull @.str.24) #8
  br label %bb.bhi

Py_INCREF.exit.i:                                 ; preds = %bb.bfq, %bb.bfp, %bb.bfm
  %.0150.i = phi ptr [ %.0.i.i.i11249, %bb.bfm ], [ %i.jfn, %bb.bfp ], [ %i.jfn, %bb.bfq ] ; 12 uses
  %.0148.i = phi ptr [ %i.jfn, %bb.bfm ], [ %.val226.i, %bb.bfp ], [ %.val226.i, %bb.bfq ] ; 11 uses
  %.not175.i = icmp eq ptr %i.jer, null
  br i1 %.not175.i, label %bb.bgq, label %bb.bfw

bb.bfw:                                           ; preds = %Py_INCREF.exit.i
  %i.jgw = getelementptr i8, ptr %i.jer, i64 8    ; 3 uses
  %.val225.i = load ptr, ptr %i.jgw, align 8, !tbaa !73 ; 2 uses
  %i.jgx = getelementptr i8, ptr %.val225.i, i64 168
  %.val225.val.i = load i64, ptr %i.jgx, align 8, !tbaa !209 ; 2 uses
  %i.jgy = and i64 %.val225.val.i, 2147483648
  %.not.i11250 = icmp eq i64 %i.jgy, 0
  br i1 %.not.i11250, label %bb.bgj, label %bb.bfx

bb.bfx:                                           ; preds = %bb.bfw
  %i.jgz = getelementptr i8, ptr %i.jer, i64 168
  %.val221.i = load i64, ptr %i.jgz, align 8, !tbaa !209
  %i.jha = and i64 %.val221.i, 1073741824
  %.not177.i = icmp eq i64 %i.jha, 0
  br i1 %.not177.i, label %bb.bgj, label %bb.bfy

bb.bfy:                                           ; preds = %bb.bfx
  %i.jhb = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %.val.i.i.i227.i = load ptr, ptr %i.jgw, align 8, !tbaa !73 ; 2 uses
  %i.jhc = getelementptr i8, ptr %.val.i.i.i227.i, i64 168
  %.val6.i.i.i228.i = load i64, ptr %i.jhc, align 8, !tbaa !209
  %i.jhd = and i64 %.val6.i.i.i228.i, 2048
  %.not.i.i.i229.i = icmp eq i64 %i.jhd, 0
  br i1 %.not.i.i.i229.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i233.i, label %_PyVectorcall_FunctionInline.exit.i.i230.i

_PyVectorcall_FunctionInline.exit.i.i230.i:       ; preds = %bb.bfy
  %i.jhe = getelementptr i8, ptr %.val.i.i.i227.i, i64 56
  %i.jhf = load i64, ptr %i.jhe, align 8, !tbaa !310
  %i.jhg = getelementptr i8, ptr %i.jer, i64 %i.jhf
  %.0.copyload.i.i.i231.i = load ptr, ptr %i.jhg, align 1 ; 2 uses
  %i.jhh = icmp eq ptr %.0.copyload.i.i.i231.i, null
  br i1 %i.jhh, label %_PyVectorcall_FunctionInline.exit.thread.i.i233.i, label %bb.bfz

_PyVectorcall_FunctionInline.exit.thread.i.i233.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i230.i, %bb.bfy
  %i.jhi = call ptr @_PyObject_MakeTpCall(ptr noundef %i.jhb, ptr noundef nonnull %i.jer, ptr noundef null, i64 noundef 0, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit234.i

bb.bfz:                                           ; preds = %_PyVectorcall_FunctionInline.exit.i.i230.i
  %i.jhj = call ptr %.0.copyload.i.i.i231.i(ptr noundef nonnull %i.jer, ptr noundef null, i64 noundef 0, ptr noundef null) #8, !inline_history !108
  %i.jhk = call ptr @_Py_CheckFunctionResult(ptr noundef %i.jhb, ptr noundef nonnull %i.jer, ptr noundef %i.jhj, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit234.i

_PyObject_CallNoArgs.exit234.i:                   ; preds = %bb.bfz, %_PyVectorcall_FunctionInline.exit.thread.i.i233.i
  %.0.i.i232.i = phi ptr [ %i.jhi, %_PyVectorcall_FunctionInline.exit.thread.i.i233.i ], [ %i.jhk, %bb.bfz ] ; 10 uses
  %i.jhl = icmp eq ptr %.0.i.i232.i, null
  br i1 %i.jhl, label %.thread.i, label %bb.bga

bb.bga:                                           ; preds = %_PyObject_CallNoArgs.exit234.i
  %i.jhm = getelementptr i8, ptr %.0.i.i232.i, i64 8 ; 2 uses
  %.val213.i = load ptr, ptr %i.jhm, align 8, !tbaa !73 ; 2 uses
  %i.jhn = getelementptr i8, ptr %.val213.i, i64 168
  %.val220.i = load i64, ptr %i.jhn, align 8, !tbaa !209
  %i.jho = and i64 %.val220.i, 1073741824
  %.not181.i = icmp eq i64 %i.jho, 0
  br i1 %.not181.i, label %bb.bgb, label %bb.bgg

bb.bgb:                                           ; preds = %bb.bga
  %i.jhp = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !81
  %i.jhq = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jhp, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.jer, ptr noundef nonnull %.val213.i) #8 ; 0 uses
  %i.jhr = load i32, ptr %.0.i.i232.i, align 8, !tbaa !60 ; 2 uses
  %.not182.i = icmp sgt i32 %i.jhr, -1
  br i1 %.not182.i, label %bb.bgc, label %.thread.i

bb.bgc:                                           ; preds = %bb.bgb
  %i.jhs = add nsw i32 %i.jhr, -1                 ; 2 uses
  store i32 %i.jhs, ptr %.0.i.i232.i, align 8, !tbaa !60
  %i.jht = icmp eq i32 %i.jhs, 0
  br i1 %i.jht, label %bb.bgd, label %.thread.i

bb.bgd:                                           ; preds = %bb.bgc
  %i.jhu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not183.i = icmp eq ptr %i.jhu, null
  br i1 %.not183.i, label %bb.bgf, label %bb.bge

bb.bge:                                           ; preds = %bb.bgd
  %i.jhv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jhw = call i32 %i.jhu(ptr noundef nonnull %.0.i.i232.i, i32 noundef 1, ptr noundef %i.jhv) #8, !inline_history !109 ; 0 uses
  br label %bb.bgf

bb.bgf:                                           ; preds = %bb.bge, %bb.bgd
  %.val211.i = load ptr, ptr %i.jhm, align 8, !tbaa !73
  %i.jhx = getelementptr i8, ptr %.val211.i, i64 48
  %i.jhy = load ptr, ptr %i.jhx, align 8, !tbaa !79
  call void %i.jhy(ptr noundef nonnull %.0.i.i232.i) #8, !inline_history !109
  br label %.thread.i

bb.bgg:                                           ; preds = %bb.bga
  %i.jhz = load i32, ptr %i.jer, align 8, !tbaa !60 ; 2 uses
  %.not184.i = icmp sgt i32 %i.jhz, -1
  br i1 %.not184.i, label %bb.bgh, label %bb.bgp

bb.bgh:                                           ; preds = %bb.bgg
  %i.jia = add nsw i32 %i.jhz, -1                 ; 2 uses
  store i32 %i.jia, ptr %i.jer, align 8, !tbaa !60
  %i.jib = icmp eq i32 %i.jia, 0
  br i1 %i.jib, label %bb.bgi, label %bb.bgp

bb.bgi:                                           ; preds = %bb.bgh
  %i.jic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not185.i = icmp eq ptr %i.jic, null
  br i1 %.not185.i, label %.sink.split.sink.split.i, label %.sink.split.sink.split.sink.split.i

bb.bgj:                                           ; preds = %bb.bfx, %bb.bfw
  %i.jid = and i64 %.val225.val.i, 1073741824
  %.not178.i = icmp eq i64 %i.jid, 0
  br i1 %.not178.i, label %bb.bgk, label %bb.bgp

bb.bgk:                                           ; preds = %bb.bgj
  %i.jie = icmp eq ptr %i.jer, @_Py_NoneStruct
  br i1 %i.jie, label %bb.bgl, label %bb.bgo

bb.bgl:                                           ; preds = %bb.bgk
  %i.jif = load i32, ptr %i.jer, align 8, !tbaa !60 ; 2 uses
  %.not179.i = icmp sgt i32 %i.jif, -1
  br i1 %.not179.i, label %bb.bgm, label %bb.bgp

bb.bgm:                                           ; preds = %bb.bgl
  %i.jig = add nsw i32 %i.jif, -1                 ; 2 uses
  store i32 %i.jig, ptr %i.jer, align 8, !tbaa !60
  %i.jih = icmp eq i32 %i.jig, 0
  br i1 %i.jih, label %bb.bgn, label %bb.bgp

bb.bgn:                                           ; preds = %bb.bgm
  %i.jii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not180.i = icmp eq ptr %i.jii, null
  br i1 %.not180.i, label %.sink.split.i, label %.sink.split.sink.split.sink.split.i

bb.bgo:                                           ; preds = %bb.bgk
  %i.jij = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !81
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.jij, ptr noundef nonnull @.str.25) #8
  br label %.thread.i

.sink.split.sink.split.sink.split.i:              ; preds = %bb.bgn, %bb.bgi
  %.sink277.i = phi ptr [ %i.jic, %bb.bgi ], [ %i.jii, %bb.bgn ]
  %.0153.ph.ph.ph.i = phi ptr [ %.0.i.i232.i, %bb.bgi ], [ null, %bb.bgn ]
  %i.jik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jil = call i32 %.sink277.i(ptr noundef nonnull %i.jer, i32 noundef 1, ptr noundef %i.jik) #8, !inline_history !109 ; 0 uses
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %.sink.split.sink.split.sink.split.i, %bb.bgi
  %.0153.ph.ph.i = phi ptr [ %.0.i.i232.i, %bb.bgi ], [ %.0153.ph.ph.ph.i, %.sink.split.sink.split.sink.split.i ]
  %.val208.pre.i = load ptr, ptr %i.jgw, align 8, !tbaa !73
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bgn
  %6 = phi ptr [ @_Py_NoneStruct, %bb.bgn ], [ %i.jer, %.sink.split.sink.split.i ]
  %.val210.sink.i = phi ptr [ %.val225.i, %bb.bgn ], [ %.val208.pre.i, %.sink.split.sink.split.i ]
  %.0153.ph.i = phi ptr [ null, %bb.bgn ], [ %.0153.ph.ph.i, %.sink.split.sink.split.i ]
  %i.jim = getelementptr i8, ptr %.val210.sink.i, i64 48
  %i.jin = load ptr, ptr %i.jim, align 8, !tbaa !79
  call void %i.jin(ptr noundef nonnull %6) #8, !inline_history !109
  br label %bb.bgp

bb.bgp:                                           ; preds = %.sink.split.i, %bb.bgm, %bb.bgl, %bb.bgj, %bb.bgh, %bb.bgg
  %.0153.i = phi ptr [ %i.jer, %bb.bgj ], [ %.0.i.i232.i, %bb.bgg ], [ %.0.i.i232.i, %bb.bgh ], [ null, %bb.bgl ], [ null, %bb.bgm ], [ %.0153.ph.i, %.sink.split.i ]
  call void @PyException_SetCause(ptr noundef nonnull %.0150.i, ptr noundef %.0153.i) #8
  br label %bb.bgq

bb.bgq:                                           ; preds = %bb.bgp, %Py_INCREF.exit.i
  call void @_PyErr_SetObject(ptr noundef %0, ptr noundef nonnull %.0148.i, ptr noundef nonnull %.0150.i) #8
  %i.jio = load i32, ptr %.0150.i, align 8, !tbaa !60 ; 2 uses
  %.not186.i = icmp sgt i32 %i.jio, -1
  br i1 %.not186.i, label %bb.bgr, label %bb.bgv

bb.bgr:                                           ; preds = %bb.bgq
  %i.jip = add nsw i32 %i.jio, -1                 ; 2 uses
  store i32 %i.jip, ptr %.0150.i, align 8, !tbaa !60
  %i.jiq = icmp eq i32 %i.jip, 0
  br i1 %i.jiq, label %bb.bgs, label %bb.bgv

bb.bgs:                                           ; preds = %bb.bgr
  %i.jir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not187.i = icmp eq ptr %i.jir, null
  br i1 %.not187.i, label %bb.bgu, label %bb.bgt

bb.bgt:                                           ; preds = %bb.bgs
  %i.jis = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jit = call i32 %i.jir(ptr noundef nonnull %.0150.i, i32 noundef 1, ptr noundef %i.jis) #8, !inline_history !109 ; 0 uses
  br label %bb.bgu

bb.bgu:                                           ; preds = %bb.bgt, %bb.bgs
  %i.jiu = getelementptr i8, ptr %.0150.i, i64 8
  %.0150.val.i = load ptr, ptr %i.jiu, align 8, !tbaa !73
  %i.jiv = getelementptr i8, ptr %.0150.val.i, i64 48
  %i.jiw = load ptr, ptr %i.jiv, align 8, !tbaa !79
  call void %i.jiw(ptr noundef nonnull %.0150.i) #8, !inline_history !109
  br label %bb.bgv

bb.bgv:                                           ; preds = %bb.bgu, %bb.bgr, %bb.bgq
  %i.jix = load i32, ptr %.0148.i, align 8, !tbaa !60 ; 2 uses
  %.not188.i = icmp sgt i32 %i.jix, -1
  br i1 %.not188.i, label %bb.bgw, label %do_raise.exit

bb.bgw:                                           ; preds = %bb.bgv
  %i.jiy = add nsw i32 %i.jix, -1                 ; 2 uses
  store i32 %i.jiy, ptr %.0148.i, align 8, !tbaa !60
  %i.jiz = icmp eq i32 %i.jiy, 0
  br i1 %i.jiz, label %bb.bgx, label %do_raise.exit

bb.bgx:                                           ; preds = %bb.bgw
  %i.jja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not189.i = icmp eq ptr %i.jja, null
  br i1 %.not189.i, label %bb.bgz, label %bb.bgy

bb.bgy:                                           ; preds = %bb.bgx
  %i.jjb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jjc = call i32 %i.jja(ptr noundef nonnull %.0148.i, i32 noundef 1, ptr noundef %i.jjb) #8, !inline_history !109 ; 0 uses
  br label %bb.bgz

bb.bgz:                                           ; preds = %bb.bgy, %bb.bgx
  %i.jjd = getelementptr i8, ptr %.0148.i, i64 8
  %.0148.val.i = load ptr, ptr %i.jjd, align 8, !tbaa !73
  %i.jje = getelementptr i8, ptr %.0148.val.i, i64 48
  %i.jjf = load ptr, ptr %i.jje, align 8, !tbaa !79
  call void %i.jjf(ptr noundef nonnull %.0148.i) #8, !inline_history !109
  br label %do_raise.exit

.thread.i:                                        ; preds = %bb.bgo, %bb.bgf, %bb.bgc, %bb.bgb, %_PyObject_CallNoArgs.exit234.i, %bb.bfn
  %.1151.i = phi ptr [ %.0.i.i.i11249, %bb.bfn ], [ %.0150.i, %bb.bgo ], [ %.0150.i, %_PyObject_CallNoArgs.exit234.i ], [ %.0150.i, %bb.bgc ], [ %.0150.i, %bb.bgf ], [ %.0150.i, %bb.bgb ] ; 5 uses
  %.1149.i = phi ptr [ %i.jfn, %bb.bfn ], [ %.0148.i, %bb.bgo ], [ %.0148.i, %_PyObject_CallNoArgs.exit234.i ], [ %.0148.i, %bb.bgc ], [ %.0148.i, %bb.bgf ], [ %.0148.i, %bb.bgb ] ; 3 uses
  %i.jjg = load i32, ptr %.1151.i, align 8, !tbaa !60 ; 2 uses
  %.not191.i = icmp sgt i32 %i.jjg, -1
  br i1 %.not191.i, label %bb.bha, label %.thread243.i

bb.bha:                                           ; preds = %.thread.i
  %i.jjh = add nsw i32 %i.jjg, -1                 ; 2 uses
  store i32 %i.jjh, ptr %.1151.i, align 8, !tbaa !60
  %i.jji = icmp eq i32 %i.jjh, 0
  br i1 %i.jji, label %bb.bhb, label %.thread243.i

bb.bhb:                                           ; preds = %bb.bha
  %i.jjj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not192.i = icmp eq ptr %i.jjj, null
  br i1 %.not192.i, label %bb.bhd, label %bb.bhc

bb.bhc:                                           ; preds = %bb.bhb
  %i.jjk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jjl = call i32 %i.jjj(ptr noundef nonnull %.1151.i, i32 noundef 1, ptr noundef %i.jjk) #8, !inline_history !109 ; 0 uses
  br label %bb.bhd

bb.bhd:                                           ; preds = %bb.bhc, %bb.bhb
  %i.jjm = getelementptr i8, ptr %.1151.i, i64 8
  %.1151.val.i = load ptr, ptr %i.jjm, align 8, !tbaa !73
  %i.jjn = getelementptr i8, ptr %.1151.val.i, i64 48
  %i.jjo = load ptr, ptr %i.jjn, align 8, !tbaa !79
  call void %i.jjo(ptr noundef nonnull %.1151.i) #8, !inline_history !109
  br label %.thread243.i

.thread243.i:                                     ; preds = %bb.bhd, %bb.bha, %.thread.i, %_PyObject_CallNoArgs.exit.i
  %.1149241246.i = phi ptr [ %i.jfn, %_PyObject_CallNoArgs.exit.i ], [ %.1149.i, %.thread.i ], [ %.1149.i, %bb.bhd ], [ %.1149.i, %bb.bha ] ; 5 uses
  %i.jjp = load i32, ptr %.1149241246.i, align 8, !tbaa !60 ; 2 uses
  %.not194.i = icmp sgt i32 %i.jjp, -1
  br i1 %.not194.i, label %bb.bhe, label %bb.bhi

bb.bhe:                                           ; preds = %.thread243.i
  %i.jjq = add nsw i32 %i.jjp, -1                 ; 2 uses
  store i32 %i.jjq, ptr %.1149241246.i, align 8, !tbaa !60
  %i.jjr = icmp eq i32 %i.jjq, 0
  br i1 %i.jjr, label %bb.bhf, label %bb.bhi

bb.bhf:                                           ; preds = %bb.bhe
  %i.jjs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not195.i = icmp eq ptr %i.jjs, null
  br i1 %.not195.i, label %bb.bhh, label %bb.bhg

bb.bhg:                                           ; preds = %bb.bhf
  %i.jjt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jju = call i32 %i.jjs(ptr noundef nonnull %.1149241246.i, i32 noundef 1, ptr noundef %i.jjt) #8, !inline_history !109 ; 0 uses
  br label %bb.bhh

bb.bhh:                                           ; preds = %bb.bhg, %bb.bhf
  %i.jjv = getelementptr i8, ptr %.1149241246.i, i64 8
  %.1149.val.i = load ptr, ptr %i.jjv, align 8, !tbaa !73
  %i.jjw = getelementptr i8, ptr %.1149.val.i, i64 48
  %i.jjx = load ptr, ptr %i.jjw, align 8, !tbaa !79
  call void %i.jjx(ptr noundef nonnull %.1149241246.i) #8, !inline_history !109
  br label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh, %bb.bhe, %.thread243.i, %.thread247.i
  %.not196.i = icmp eq ptr %i.jer, null
  br i1 %.not196.i, label %do_raise.exit, label %bb.bhj

bb.bhj:                                           ; preds = %bb.bhi
  %i.jjy = load i32, ptr %i.jer, align 8, !tbaa !60 ; 2 uses
  %.not197.i = icmp sgt i32 %i.jjy, -1
  br i1 %.not197.i, label %bb.bhk, label %do_raise.exit

bb.bhk:                                           ; preds = %bb.bhj
  %i.jjz = add nsw i32 %i.jjy, -1                 ; 2 uses
  store i32 %i.jjz, ptr %i.jer, align 8, !tbaa !60
  %i.jka = icmp eq i32 %i.jjz, 0
  br i1 %i.jka, label %bb.bhl, label %do_raise.exit

bb.bhl:                                           ; preds = %bb.bhk
  %i.jkb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !71 ; 2 uses
  %.not198.i = icmp eq ptr %i.jkb, null
  br i1 %.not198.i, label %bb.bhn, label %bb.bhm

bb.bhm:                                           ; preds = %bb.bhl
  %i.jkc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !72
  %i.jkd = call i32 %i.jkb(ptr noundef nonnull %i.jer, i32 noundef 1, ptr noundef %i.jkc) #8, !inline_history !109 ; 0 uses
  br label %bb.bhn

bb.bhn:                                           ; preds = %bb.bhm, %bb.bhl
  %i.jke = getelementptr i8, ptr %i.jer, i64 8
  %.val.i11251 = load ptr, ptr %i.jke, align 8, !tbaa !73
  %i.jkf = getelementptr i8, ptr %.val.i11251, i64 48
  %i.jkg = load ptr, ptr %i.jkf, align 8, !tbaa !79
  call void %i.jkg(ptr noundef nonnull %i.jer) #8, !inline_history !109
  br label %do_raise.exit

do_raise.exit:                                    ; preds = %bb.bff, %bb.bgv, %bb.bgw, %bb.bgz, %bb.bhi, %bb.bhj, %bb.bhk, %bb.bhn
  %i.jkh = phi ptr [ %i.jfd, %bb.bff ], [ %i.jfm, %bb.bgv ], [ %i.jfm, %bb.bhi ], [ %i.jfm, %bb.bgw ], [ %i.jfm, %bb.bgz ], [ %i.jfm, %bb.bhj ], [ %i.jfm, %bb.bhn ], [ %i.jfm, %bb.bhk ]
  %.4.val9966 = load ptr, ptr %i.jkh, align 8, !tbaa !80
  br label %.loopexit

bb.bho:                                           ; preds = %bb.bfg, %bb.bfh
  call void @_PyErr_SetRaisedException(ptr noundef %0, ptr noundef nonnull %i.jff) #8
  %.val.i11252 = load ptr, ptr %i.lus, align 8, !tbaa !62
  %i.jki = getelementptr i8, ptr %.val.i11252, i64 223471
  %i.jkj = load i8, ptr %i.jki, align 1, !tbaa !60
  %i.jkk = icmp eq i8 %i.jkj, 0
  br i1 %i.jkk, label %.preheader, label %bb.bhp

bb.bhp:                                           ; preds = %bb.bho
  %.val.i.i11253 = load i64, ptr %.4, align 8
  %i.jkl = and i64 %.val.i.i11253, -2
  %i.jkm = inttoptr i64 %i.jkl to ptr
  %i.jkn = getelementptr i8, ptr %i.jkm, i64 48
  %i.jko = load i32, ptr %i.jkn, align 8, !tbaa !69
  %i.jkp = and i32 %i.jko, 33554432
  %.not.i.i11254 = icmp eq i32 %i.jkp, 0
  br i1 %.not.i.i11254, label %bb.bhq, label %.preheader

bb.bhq:                                           ; preds = %bb.bhp
  %i.jkq = call ptr @PyErr_GetRaisedException() #8 ; 7 uses
  %i.jkr = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 15, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.jkq) #8
  %i.jks = icmp eq i32 %i.jkr, 0
  br i1 %i.jks, label %bb.bhr, label %bb.bhs

bb.bhr:                                           ; preds = %bb.bhq
  call void @PyErr_SetRaisedException(ptr noundef %i.jkq) #8
  br label %.preheader

bb.bhs:                                           ; preds = %bb.bhq
  %i.jkt = load i32, ptr %i.jkq, align 8, !tbaa !60 ; 2 uses
  %.not21.i.i11255 = icmp sgt i32 %i.jkt, -1
  br i1 %.not21.i.i11255, label %bb.bht, label %.preheader

bb.bht:                                           ; preds = %bb.bhs
  %i.jku = add nsw i32 %i.jkt, -1                 ; 2 uses
end_hunk_1
