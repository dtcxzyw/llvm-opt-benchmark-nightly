inline.NumInlined: 778
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 38
begin_hunk_0_@save:bb.a
  %.not.i39.i = icmp eq i32 %i.yr, 0
  br i1 %.not.i39.i, label %.thread.i42.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ys = getelementptr i8, ptr %1, i64 104
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !50
  %.fr.i40.i = freeze i64 %i.yt
  %i.yu = icmp eq i64 %.fr.i40.i, -1              ; 2 uses
  %spec.select.i41.i = select i1 %i.yu, i64 10, i64 1
  br label %.thread.i42.i

.thread.i42.i:                                    ; preds = %bb.fg, %bb.ff
  %i.yv = phi i1 [ false, %bb.ff ], [ %i.yu, %bb.fg ]
  %i.yw = phi i64 [ 1, %bb.ff ], [ %spec.select.i41.i, %bb.fg ] ; 2 uses
  %i.yx = add i64 %i.yw, %i.yq                    ; 2 uses
  %i.yy = load i64, ptr %i.ve, align 8, !tbaa !82
  %i.yz = icmp sgt i64 %i.yx, %i.yy
  br i1 %i.yz, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %.thread.i42.i
  %i.za = xor i64 %i.yw, 4611686018427387903
  %.not48.i49.i = icmp slt i64 %i.yq, %i.za
  br i1 %.not48.i49.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.zb = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_Pickler_Write.exit27.thread.i

bb.fj:                                            ; preds = %bb.fh
  %i.zc = sdiv i64 %i.yx, 2
  %i.zd = mul i64 %i.zc, 3                        ; 2 uses
  store i64 %i.zd, ptr %i.ve, align 8, !tbaa !82
  %i.ze = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.vo, i64 noundef %i.zd) #14
  %i.zf = icmp slt i32 %i.ze, 0
  br i1 %i.zf, label %_Pickler_Write.exit27.thread.i, label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %bb.fj
  %.pre9.pre.i = load i64, ptr %i.vb, align 8, !tbaa !51
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge13.i, %.thread.i42.i
  %.pre9.i = phi i64 [ %.pre9.pre.i, %._crit_edge13.i ], [ %i.yq, %.thread.i42.i ] ; 3 uses
  %i.zg = load ptr, ptr %i.vo, align 8, !tbaa !48
  %i.zh = getelementptr i8, ptr %i.zg, i64 32     ; 2 uses
  br i1 %i.yv, label %bb.fl, label %.lr.ph.i44.i

bb.fl:                                            ; preds = %bb.fk
  %i.zi = getelementptr i8, ptr %1, i64 104
  store i64 %.pre9.i, ptr %i.zi, align 8, !tbaa !50
  %i.zj = getelementptr i8, ptr %i.zh, i64 %.pre9.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.zj, i8 -2, i64 9, i1 false), !tbaa !46
  %i.zk = load i64, ptr %i.vb, align 8, !tbaa !51
  %i.zl = add i64 %i.zk, 9                        ; 2 uses
  store i64 %i.zl, ptr %i.vb, align 8, !tbaa !51
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %bb.fl, %bb.fk
  %i.zm = phi i64 [ %i.zl, %bb.fl ], [ %.pre9.i, %bb.fk ]
  %i.zn = getelementptr i8, ptr %i.zh, i64 %i.zm
  store i8 10, ptr %i.zn, align 1, !tbaa !46
  %i.zo = load i64, ptr %i.vb, align 8, !tbaa !51
  %i.zp = add i64 %i.zo, 1
  store i64 %i.zp, ptr %i.vb, align 8, !tbaa !51
  br label %_Pickler_Write.exit27.thread.i

_Pickler_Write.exit27.thread.i:                   ; preds = %.lr.ph.i44.i, %bb.fj, %bb.fi, %_Pickler_Write.exit38.i, %bb.fa, %bb.ez, %bb.ev, %bb.es, %bb.er
  %.014.i = phi i32 [ -1, %bb.fj ], [ -1, %_Pickler_Write.exit38.i ], [ -1, %bb.es ], [ -1, %bb.ev ], [ 0, %.lr.ph.i44.i ], [ -1, %bb.fi ], [ -1, %bb.er ], [ -1, %bb.ez ], [ -1, %bb.fa ]
  %.0.i184 = phi ptr [ %i.vz, %bb.fj ], [ %i.vz, %_Pickler_Write.exit38.i ], [ null, %bb.es ], [ null, %bb.ev ], [ %i.vz, %.lr.ph.i44.i ], [ %i.vz, %bb.fi ], [ null, %bb.er ], [ %i.vz, %bb.ez ], [ %i.vz, %bb.fa ]
  tail call void @PyMem_Free(ptr noundef %.0.i184) #14
  br label %_Pickler_OpcodeBoundary.exit

bb.fm:                                            ; preds = %bb.ed
  %i.zq = getelementptr i8, ptr %1, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !81 ; 2 uses
  %.val148 = load i64, ptr %i.zr, align 8, !tbaa !79 ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zr, i64 24
  %.val149 = load ptr, ptr %i.zs, align 8, !tbaa !80 ; 3 uses
  %i.zt = ptrtoint ptr %2 to i64
  %i.zu = ashr i64 %i.zt, 3                       ; 2 uses
  %i.zv = and i64 %.val148, %i.zu                 ; 3 uses
  %i.zw = getelementptr [16 x i8], ptr %.val149, i64 %i.zv
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !97 ; 3 uses
  %i.zy = icmp eq ptr %i.zx, null
  %i.zz = icmp eq ptr %i.zx, %2
  %or.cond.i.i = or i1 %i.zy, %i.zz
  br i1 %or.cond.i.i, label %PyMemoTable_Get.exit, label %.preheader.i.i186

.preheader.i.i186:                                ; preds = %bb.fm, %.preheader.i.i186
  %.023.i.i = phi i64 [ %i.aac, %.preheader.i.i186 ], [ %i.zv, %bb.fm ]
  %.0.i.i = phi i64 [ %i.aai, %.preheader.i.i186 ], [ %i.zu, %bb.fm ] ; 2 uses
  %i.aaa = mul i64 %.023.i.i, 5
  %i.aab = add nsw i64 %.0.i.i, 1
  %i.aac = add i64 %i.aab, %i.aaa                 ; 2 uses
  %i.aad = and i64 %i.aac, %.val148               ; 2 uses
  %i.aae = getelementptr [16 x i8], ptr %.val149, i64 %i.aad
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !97 ; 3 uses
  %i.aag = icmp eq ptr %i.aaf, null
  %i.aah = icmp eq ptr %i.aaf, %2
  %or.cond28.i.i = or i1 %i.aag, %i.aah
  %i.aai = lshr i64 %.0.i.i, 5
  br i1 %or.cond28.i.i, label %PyMemoTable_Get.exit, label %.preheader.i.i186

PyMemoTable_Get.exit:                             ; preds = %.preheader.i.i186, %bb.fm
  %i.aaj = phi ptr [ %i.zx, %bb.fm ], [ %i.aaf, %.preheader.i.i186 ]
  %i.aak = phi i64 [ %i.zv, %bb.fm ], [ %i.aad, %.preheader.i.i186 ]
  %i.aal = getelementptr [16 x i8], ptr %.val149, i64 %i.aak
  %i.aam = icmp eq ptr %i.aaj, null
  %i.aan = getelementptr i8, ptr %i.aal, i64 8
  %.not132207 = icmp eq ptr %i.aan, null
  %.not132 = or i1 %i.aam, %.not132207
  br i1 %.not132, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %PyMemoTable_Get.exit
  %i.aao = tail call fastcc i32 @memo_get(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %_Pickler_OpcodeBoundary.exit

bb.fo:                                            ; preds = %PyMemoTable_Get.exit
  %i.aap = icmp eq ptr %.val, @PyBytes_Type
  br i1 %i.aap, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aaq = tail call fastcc i32 @save_bytes(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %_Pickler_OpcodeBoundary.exit

bb.fq:                                            ; preds = %bb.fo
  %i.aar = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %i.aar, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aas = tail call fastcc i32 @save_unicode(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %_Pickler_OpcodeBoundary.exit

bb.fs:                                            ; preds = %bb.fq
  %i.aat = tail call fastcc i32 @_Py_EnterRecursiveCall()
  %.not133 = icmp eq i32 %i.aat, 0
  br i1 %.not133, label %bb.ft, label %_Pickler_OpcodeBoundary.exit

bb.ft:                                            ; preds = %bb.fs
  %i.aau = icmp eq ptr %.val, @PyDict_Type
  br i1 %i.aau, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aav = tail call fastcc i32 @save_dict(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.fv:                                            ; preds = %bb.ft
  %i.aaw = icmp eq ptr %.val, @PySet_Type
  br i1 %i.aaw, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.aax = tail call fastcc i32 @save_set(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.fx:                                            ; preds = %bb.fv
  %i.aay = icmp eq ptr %.val, @PyFrozenSet_Type
  br i1 %i.aay, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aaz = tail call fastcc i32 @save_frozenset(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.fz:                                            ; preds = %bb.fx
  %i.aba = icmp eq ptr %.val, @PyList_Type
  br i1 %i.aba, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.abb = tail call fastcc i32 @save_list(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.gb:                                            ; preds = %bb.fz
  %i.abc = icmp eq ptr %.val, @PyTuple_Type
  br i1 %i.abc, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.abd = tail call fastcc i32 @save_tuple(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.gd:                                            ; preds = %bb.gb
  %i.abe = icmp eq ptr %.val, @PyByteArray_Type
  br i1 %i.abe, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.abf = tail call fastcc i32 @save_bytearray(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.gf:                                            ; preds = %bb.gd
  %i.abg = icmp eq ptr %.val, @PyPickleBuffer_Type
  br i1 %i.abg, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.abh = tail call fastcc i32 @save_picklebuffer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.gh:                                            ; preds = %bb.gf
  %i.abi = getelementptr i8, ptr %1, i64 48
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !99 ; 2 uses
  %.not134 = icmp eq ptr %i.abj, null
  br i1 %.not134, label %Py_DECREF.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.abk = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.abj, ptr noundef %2) #14 ; 6 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %.not135 = icmp eq ptr %i.abk, @_Py_NotImplementedStruct
  br i1 %.not135, label %bb.gk, label %bb.hh

bb.gk:                                            ; preds = %bb.gj
  %i.abm = load i32, ptr %i.abk, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp sgt i32 %i.abm, -1
  br i1 %.not.i, label %bb.gl, label %Py_DECREF.exit

bb.gl:                                            ; preds = %bb.gk
  %i.abn = add nsw i32 %i.abm, -1                 ; 2 uses
  store i32 %i.abn, ptr %i.abk, align 8, !tbaa !46
  %i.abo = icmp eq i32 %i.abn, 0
  br i1 %i.abo, label %bb.gm, label %Py_DECREF.exit

bb.gm:                                            ; preds = %bb.gl
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abk) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.gm, %bb.gl, %bb.gk, %bb.gh
  %i.abp = icmp eq ptr %.val, @PyType_Type
  br i1 %i.abp, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %Py_DECREF.exit
  %i.abq = tail call fastcc i32 @save_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %.thread

bb.go:                                            ; preds = %Py_DECREF.exit
  %i.abr = icmp eq ptr %.val, @PyFunction_Type
  br i1 %i.abr, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.abs = tail call fastcc i32 @save_global(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %.thread

bb.gq:                                            ; preds = %bb.go
  %i.abt = getelementptr i8, ptr %1, i64 40
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !100 ; 2 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  %i.abw = getelementptr i8, ptr %0, i64 24
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !22
  %i.aby = tail call ptr @PyDict_GetItemWithError(ptr noundef %i.abx, ptr noundef %.val) #14 ; 5 uses
  store ptr %i.aby, ptr %i.g, align 8, !tbaa !40
  %i.abz = icmp eq ptr %i.aby, null
  br i1 %i.abz, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aca = tail call ptr @PyErr_Occurred() #14
  %.not136 = icmp eq ptr %i.aca, null
  br i1 %.not136, label %Py_INCREF.exit.thread257, label %.thread

bb.gt:                                            ; preds = %bb.gr
  %i.acb = load i32, ptr %i.aby, align 8, !tbaa !46 ; 2 uses
  %i.acc = icmp ugt i32 %i.acb, -1073741825
  br i1 %i.acc, label %Py_INCREF.exit.thread, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.acd = add nuw i32 %i.acb, 1
  store i32 %i.acd, ptr %i.aby, align 8, !tbaa !46
  br label %Py_INCREF.exit

bb.gv:                                            ; preds = %bb.gq
  %i.ace = call i32 @PyMapping_GetOptionalItem(ptr noundef nonnull %i.abu, ptr noundef %.val, ptr noundef nonnull %i.g) #14
  %i.acf = icmp slt i32 %i.ace, 0
  br i1 %i.acf, label %.thread, label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.gu, %bb.gv
  %.pr.pr = load ptr, ptr %i.g, align 8, !tbaa !40 ; 2 uses
  %.not137 = icmp eq ptr %.pr.pr, null
  br i1 %.not137, label %Py_INCREF.exit.thread257, label %Py_INCREF.exit.thread

Py_INCREF.exit.thread:                            ; preds = %bb.gt, %Py_INCREF.exit
  %i.acg = phi ptr [ %.pr.pr, %Py_INCREF.exit ], [ %i.aby, %bb.gt ]
  %i.ach = load i32, ptr %2, align 8, !tbaa !46   ; 2 uses
  %i.aci = icmp ugt i32 %i.ach, -1073741825
  br i1 %i.aci, label %_Py_NewRef.exit, label %bb.gw

bb.gw:                                            ; preds = %Py_INCREF.exit.thread
  %i.acj = add nuw i32 %i.ach, 1
  store i32 %i.acj, ptr %2, align 8, !tbaa !46
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %Py_INCREF.exit.thread, %bb.gw
  %i.ack = call fastcc ptr @_Pickle_FastCall(ptr noundef nonnull %i.acg, ptr noundef nonnull %2)
  br label %bb.hg

Py_INCREF.exit.thread257:                         ; preds = %bb.gs, %Py_INCREF.exit
  %i.acl = call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyType_Type) #14
  %.not138 = icmp eq i32 %i.acl, 0
  br i1 %.not138, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %Py_INCREF.exit.thread257
  %i.acm = call fastcc i32 @save_global(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %.thread

bb.gy:                                            ; preds = %Py_INCREF.exit.thread257
  %i.acn = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69048), ptr noundef nonnull %i.g) #14
  %i.aco = icmp slt i32 %i.acn, 0
  br i1 %i.aco, label %.thread, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.acp = load ptr, ptr %i.g, align 8, !tbaa !40
  %.not139 = icmp eq ptr %i.acp, null
  br i1 %.not139, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.acq = getelementptr i8, ptr %1, i64 88
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !41
  %i.acs = sext i32 %i.acr to i64
  %i.act = call ptr @PyLong_FromLong(i64 noundef %i.acs) #14 ; 2 uses
  %.not141 = icmp eq ptr %i.act, null
  br i1 %.not141, label %.thread, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.acu = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.acv = call fastcc ptr @_Pickle_FastCall(ptr noundef %i.acu, ptr noundef nonnull %i.act)
  br label %bb.hg

bb.hc:                                            ; preds = %bb.gz
  %i.acw = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68992), ptr noundef nonnull %i.g) #14
  %i.acx = icmp slt i32 %i.acw, 0
  br i1 %i.acx, label %.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.acy = load ptr, ptr %i.g, align 8, !tbaa !40 ; 2 uses
  %.not140 = icmp eq ptr %i.acy, null
  br i1 %.not140, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acz = call ptr @PyObject_CallNoArgs(ptr noundef nonnull %i.acy) #14
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  %i.ada = getelementptr i8, ptr %0, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !20
  %i.adc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.adb, ptr noundef nonnull @.str.15, ptr noundef %2) #14 ; 0 uses
  br label %.thread

bb.hg:                                            ; preds = %bb.hb, %bb.he, %_Py_NewRef.exit
  %.2 = phi ptr [ %i.ack, %_Py_NewRef.exit ], [ %i.acz, %bb.he ], [ %i.acv, %bb.hb ] ; 2 uses
  %i.add = icmp eq ptr %.2, null
  br i1 %i.add, label %.thread, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.gj
  %.3 = phi ptr [ %i.abk, %bb.gj ], [ %.2, %bb.hg ] ; 8 uses
  %i.ade = getelementptr i8, ptr %.3, i64 8
  %.3.val144 = load ptr, ptr %i.ade, align 8, !tbaa !52
  %i.adf = getelementptr i8, ptr %.3.val144, i64 168
  %.val146 = load i64, ptr %i.adf, align 8, !tbaa !53 ; 2 uses
  %i.adg = and i64 %.val146, 268435456
  %.not142 = icmp eq i64 %i.adg, 0
  br i1 %.not142, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.adh = call fastcc i32 @save_global(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %.3)
  br label %.thread

bb.hj:                                            ; preds = %bb.hh
  %i.adi = and i64 %.val146, 67108864
  %.not143 = icmp eq i64 %i.adi, 0
  br i1 %.not143, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.adj = getelementptr i8, ptr %0, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !20
  %i.adl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.adk, ptr noundef nonnull @.str.16, ptr noundef nonnull %.3) #14 ; 0 uses
  call void (ptr, ...) @_PyErr_FormatNote(ptr noundef nonnull @.str.17, ptr noundef %2) #14
  br label %.thread

bb.hl:                                            ; preds = %bb.hj
  %i.adm = call fastcc i32 @save_reduce(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.3, ptr noundef %2)
  %i.adn = icmp slt i32 %i.adm, 0
  br i1 %i.adn, label %bb.hm, label %.thread

bb.hm:                                            ; preds = %bb.hl
  call void (ptr, ...) @_PyErr_FormatNote(ptr noundef nonnull @.str.17, ptr noundef %2) #14
  br label %.thread

.thread:                                          ; preds = %bb.ha, %bb.hf, %bb.hk, %bb.gi, %bb.gs, %bb.gv, %bb.gy, %bb.hc, %bb.hg, %bb.hm, %bb.hl, %bb.hi, %bb.gx, %bb.gp, %bb.gn, %bb.gg, %bb.ge, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.fu
  %.5 = phi ptr [ null, %bb.fu ], [ null, %bb.fw ], [ null, %bb.fy ], [ null, %bb.ga ], [ null, %bb.gc ], [ null, %bb.ge ], [ null, %bb.gg ], [ null, %bb.gx ], [ %.3, %bb.hi ], [ %.3, %bb.hm ], [ %.3, %bb.hl ], [ null, %bb.gn ], [ null, %bb.gp ], [ null, %bb.gi ], [ %.3, %bb.hk ], [ null, %bb.gs ], [ null, %bb.hg ], [ null, %bb.gy ], [ null, %bb.hc ], [ null, %bb.hf ], [ null, %bb.gv ], [ null, %bb.ha ]
  %.0105 = phi i32 [ %i.aav, %bb.fu ], [ %i.aax, %bb.fw ], [ %i.aaz, %bb.fy ], [ %i.abb, %bb.ga ], [ %i.abd, %bb.gc ], [ %i.abf, %bb.ge ], [ %i.abh, %bb.gg ], [ %i.acm, %bb.gx ], [ %i.adh, %bb.hi ], [ -1, %bb.hm ], [ 0, %bb.hl ], [ %i.abq, %bb.gn ], [ %i.abs, %bb.gp ], [ -1, %bb.gi ], [ -1, %bb.hk ], [ -1, %bb.gs ], [ -1, %bb.hg ], [ -1, %bb.gy ], [ -1, %bb.hc ], [ -1, %bb.hf ], [ -1, %bb.gv ], [ -1, %bb.ha ]
  %i.ado = load ptr, ptr %i.g, align 8, !tbaa !40
  call fastcc void @Py_XDECREF(ptr noundef %i.ado)
  call fastcc void @Py_XDECREF(ptr noundef %.5)
  br label %_Pickler_OpcodeBoundary.exit

_Pickler_OpcodeBoundary.exit:                     ; preds = %_Pickler_Write.exit27.thread.i, %bb.en, %.thread.i, %.lr.ph.i15.i, %bb.bi, %bb.bh, %.lr.ph.i.i161, %bb.bb, %bb.ba, %.lr.ph.i.i, %bb.as, %bb.ar, %save_pers.exit.thread, %Py_XDECREF.exit.i.i, %bb.d, %bb.fs, %save_pers.exit, %.thread, %bb.fr, %bb.fp, %bb.fn, %save_long.exit
  %.0 = phi i32 [ -1, %bb.fs ], [ -1, %save_pers.exit.thread ], [ -1, %bb.as ], [ %.269.i, %save_long.exit ], [ -1, %bb.bb ], [ %i.aao, %bb.fn ], [ %i.aaq, %bb.fp ], [ %i.aas, %bb.fr ], [ %.024.i, %save_pers.exit ], [ %.0105, %.thread ], [ -1, %bb.d ], [ -1, %Py_XDECREF.exit.i.i ], [ 0, %.lr.ph.i.i ], [ -1, %bb.ar ], [ 0, %.lr.ph.i.i161 ], [ -1, %bb.bi ], [ 0, %.lr.ph.i15.i ], [ -1, %bb.bh ], [ -1, %bb.ba ], [ %.014.i, %_Pickler_Write.exit27.thread.i ], [ 0, %bb.en ], [ -1, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  ret i32 %.0
}

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyBytes_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc ptr @PyMemoTable_Get(i64 %.0.val, ptr nofree readonly captures(ret: address, provenance) %.24.val, ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ashr i64 %i.a, 3                         ; 2 uses
  %i.c = and i64 %i.b, %.0.val                    ; 3 uses
  %i.d = getelementptr [16 x i8], ptr %.24.val, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp eq ptr %i.e, %0
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_PyMemoTable_Lookup.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.023.i = phi i64 [ %i.j, %.preheader.i ], [ %i.c, %bb.a ]
end_hunk_0
begin_hunk_1_@save_bytearray:bb.a

bb.h:                                             ; preds = %Py_DECREF.exit22
  %i.n = tail call fastcc i32 @save_reduce(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.1, ptr noundef nonnull %2) ; 3 uses
  %i.o = load i32, ptr %.1, align 8, !tbaa !46    ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %.1, align 8, !tbaa !46
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #14
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %2, i64 40
  %.val = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.s = getelementptr i8, ptr %2, i64 16
  %.val24 = load i64, ptr %i.s, align 8, !tbaa !38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.t = icmp slt i64 %.val24, 0
  br i1 %i.t, label %_save_bytearray_data.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 -106, ptr %i.a, align 1, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i64 %.val24, ptr %i.u, align 1
  %i.v = call fastcc i32 @_Pickler_write_bytes(ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef 9, ptr noundef %.val, i64 noundef %.val24, ptr noundef nonnull %2)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_save_bytearray_data.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call fastcc i32 @memo_put(ptr noundef readonly %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %_save_bytearray_data.exit

_save_bytearray_data.exit:                        ; preds = %bb.k, %bb.l, %bb.m
  %.0.i = phi i32 [ -1, %bb.l ], [ -1, %bb.k ], [ %i.x, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.j, %bb.i, %bb.h, %Py_DECREF.exit22, %_save_bytearray_data.exit
  %.119 = phi i32 [ %.0.i, %_save_bytearray_data.exit ], [ %i.n, %bb.j ], [ -1, %Py_DECREF.exit22 ], [ %i.n, %bb.h ], [ %i.n, %bb.i ], [ -1, %bb.d ]
  ret i32 %.119
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @save_picklebuffer(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 10 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp slt i32 %i.d, 5
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.43) #14
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.h = call i32 @PyObject_GetBuffer(ptr noundef %2, ptr noundef nonnull %3, i32 noundef 284) #14
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %3, i8 noundef signext 65) #14
  %.not34 = icmp eq i32 %i.k, 0
  br i1 %.not34, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.44) #14
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %1, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %.not35 = icmp eq ptr %i.o, null
  br i1 %.not35, label %.thread44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.o, ptr noundef %2) #14 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.p) #14 ; 2 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.p, align 8, !tbaa !46
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.j, %bb.k
  switch i32 %i.r, label %.thread44 [
    i32 -1, label %.sink.split
    i32 0, label %bb.n
  ]

.thread44:                                        ; preds = %Py_DECREF.exit, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !144
  %.not38 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %3, align 8, !tbaa !145    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !146  ; 2 uses
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread44
  %i.aa = call fastcc i32 @_save_bytes_data(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.x, i64 noundef %i.z)
  br label %.sink.split

bb.m:                                             ; preds = %.thread44
  %i.ab = call fastcc i32 @_save_bytearray_data(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.x, i64 noundef %i.z)
  br label %.sink.split

bb.n:                                             ; preds = %Py_DECREF.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 -105, ptr %i.a, align 1, !tbaa !46
  %i.ac = call fastcc i64 @_Pickler_Write(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %.thread49, label %bb.o

.thread49:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !144
  %.not37 = icmp eq i32 %i.af, 0
  br i1 %.not37, label %.thread47, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i8 -104, ptr %i.b, align 1, !tbaa !46
  %i.ag = call fastcc i64 @_Pickler_Write(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 1)
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %i.ah, label %.thread47, label %bb.q

.thread47:                                        ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.sink.split

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %.thread49, %bb.h, %bb.q, %Py_DECREF.exit, %bb.m, %bb.l, %.thread47
  %.027.ph = phi i32 [ 0, %.thread47 ], [ %i.aa, %bb.l ], [ %i.ab, %bb.m ], [ %i.r, %Py_DECREF.exit ], [ -1, %bb.q ], [ -1, %bb.h ], [ -1, %.thread49 ], [ -1, %bb.f ]
  call void @PyBuffer_Release(ptr noundef nonnull %3) #14
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.c
  %.027 = phi i32 [ -1, %bb.c ], [ %.027.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  %.128 = phi i32 [ -1, %bb.b ], [ %.027, %bb.r ]
  ret i32 %.128
}

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @save_type(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, @_PyNone_Type
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, ptr noundef nonnull @PyType_Type, ptr noundef nonnull @_Py_NoneStruct) #14, !inline_history !147 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %save_singleton_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @save_reduce(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %2), !inline_history !147 ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %bb.d, label %save_singleton_type.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !46
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %save_singleton_type.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #14, !inline_history !147
  br label %save_singleton_type.exit

bb.f:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, @PyEllipsis_Type
  br i1 %i.h, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, ptr noundef nonnull @PyType_Type, ptr noundef nonnull @_Py_EllipsisObject) #14, !inline_history !147 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %save_singleton_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call fastcc i32 @save_reduce(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %2), !inline_history !147 ; 3 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not.i.i17 = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i17, label %bb.i, label %save_singleton_type.exit

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.i, align 8, !tbaa !46
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %save_singleton_type.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #14, !inline_history !147
  br label %save_singleton_type.exit

bb.k:                                             ; preds = %bb.f
  %i.o = icmp eq ptr %2, @_PyNotImplemented_Type
  br i1 %i.o, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.p = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, ptr noundef nonnull @PyType_Type, ptr noundef nonnull @_Py_NotImplementedStruct) #14, !inline_history !147 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %save_singleton_type.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = tail call fastcc i32 @save_reduce(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull %2), !inline_history !147 ; 3 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %.not.i.i22 = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i22, label %bb.n, label %save_singleton_type.exit

bb.n:                                             ; preds = %bb.m
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.p, align 8, !tbaa !46
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.o, label %save_singleton_type.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #14, !inline_history !147
  br label %save_singleton_type.exit

bb.p:                                             ; preds = %bb.k
  %i.v = tail call fastcc i32 @save_global(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  br label %save_singleton_type.exit

save_singleton_type.exit:                         ; preds = %bb.l, %bb.o, %bb.n, %bb.m, %bb.g, %bb.j, %bb.i, %bb.h, %bb.b, %bb.e, %bb.d, %bb.c, %bb.p
  %.0 = phi i32 [ %i.v, %bb.p ], [ %i.d, %bb.c ], [ %i.k, %bb.h ], [ -1, %bb.b ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ -1, %bb.g ], [ %i.k, %bb.j ], [ %i.k, %bb.i ], [ -1, %bb.l ], [ %i.r, %bb.o ], [ %i.r, %bb.n ], [ %i.r, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @save_global(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 20 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 18 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca [5 x i8], align 1                 ; 10 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr null, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %3, align 8, !tbaa !46
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  store ptr %3, ptr %i.d, align 8, !tbaa !40
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.m = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68768), ptr noundef nonnull %i.d) #14
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %Py_XDECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @PyObject_GetAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67864)) #14 ; 3 uses
  store ptr %i.q, ptr %i.d, align 8, !tbaa !40
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_XDECREF.exit196, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_Py_NewRef.exit
  %i.s = phi ptr [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %3, %_Py_NewRef.exit ]
  %i.t = call ptr @PyUnicode_Split(ptr noundef nonnull %i.s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 107296), i64 noundef -1) #14 ; 14 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.t, i64 16       ; 8 uses
  %.val39.i = load i64, ptr %i.v, align 8, !tbaa !38 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 24       ; 7 uses
  %.024.i405410 = add i64 %.val39.i, -1           ; 2 uses
  %i.x = icmp slt i64 %.024.i405410, 1
  br i1 %i.x, label %mangle_dotted_path.exit, label %.lr.ph408

.lr.ph408:                                        ; preds = %bb.h, %Py_DECREF.exit.i
  %.024.i405413 = phi i64 [ %.024.i405, %Py_DECREF.exit.i ], [ %.024.i405410, %bb.h ]
  %.024.in.ph.i412 = phi i64 [ %.024.i407, %Py_DECREF.exit.i ], [ %.val39.i, %bb.h ]
  %.025.ph.i411 = phi i32 [ %spec.select.i, %Py_DECREF.exit.i ], [ 0, %bb.h ] ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %.024.i = add i64 %.024.i407, -1                ; 2 uses
  %i.y = icmp slt i64 %.024.i, 1
  br i1 %i.y, label %mangle_dotted_path.exit, label %bb.j, !llvm.loop !148

bb.j:                                             ; preds = %.lr.ph408, %bb.i
  %.024.i407 = phi i64 [ %.024.i405413, %.lr.ph408 ], [ %.024.i, %bb.i ] ; 6 uses
  %.024.in.i406 = phi i64 [ %.024.in.ph.i412, %.lr.ph408 ], [ %.024.i407, %bb.i ]
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %.024.i407
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 6 uses
  %i.ac = call i32 @_Py_IsPrivateName(ptr noundef %i.ab) #14
  %.not.i151 = icmp eq i32 %i.ac, 0
  br i1 %.not.i151, label %bb.i, label %bb.k, !llvm.loop !148

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.024.in.i406
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = call ptr @_Py_Mangle(ptr noundef %i.ag, ptr noundef %i.ab) #14 ; 3 uses
  %.not36.i = icmp eq ptr %i.ah, null
  br i1 %.not36.i, label %Py_XDECREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not35.i = icmp eq ptr %i.ah, %i.ab
  %spec.select.i = select i1 %.not35.i, i32 %.025.ph.i411, i32 1 ; 2 uses
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.ai = getelementptr [8 x i8], ptr %.val.i, i64 %.024.i407
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !40
  %i.aj = load i32, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i, label %bb.m, label %Py_DECREF.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !46
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #14
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.n, %bb.m, %bb.l
  %.024.i405 = add i64 %.024.i407, -1             ; 2 uses
  %i.am = icmp slt i64 %.024.i405, 1
  br i1 %i.am, label %mangle_dotted_path.exit, label %.lr.ph408

mangle_dotted_path.exit:                          ; preds = %Py_DECREF.exit.i, %bb.i, %bb.h
  %.025.ph.i.lcssa = phi i32 [ %.025.ph.i411, %bb.i ], [ 0, %bb.h ], [ %spec.select.i, %Py_DECREF.exit.i ]
  %cond.not = icmp eq i32 %.025.ph.i.lcssa, 0
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !40  ; 4 uses
  br i1 %cond.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %mangle_dotted_path.exit
  %i.an = call ptr @PyUnicode_Join(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 107296), ptr noundef nonnull %i.t) #14 ; 2 uses
  store ptr %i.an, ptr %i.d, align 8, !tbaa !40
  %i.ao = load i32, ptr %.pre, align 8, !tbaa !46 ; 2 uses
  %.not.i137 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i137, label %bb.p, label %Py_DECREF.exit138

bb.p:                                             ; preds = %bb.o
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %.pre, align 8, !tbaa !46
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %Py_DECREF.exit138thread-pre-split

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #14
  br label %Py_DECREF.exit138thread-pre-split

Py_DECREF.exit138thread-pre-split:                ; preds = %bb.q, %bb.p
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %Py_DECREF.exit138

Py_DECREF.exit138:                                ; preds = %Py_DECREF.exit138thread-pre-split, %bb.o
  %i.ar = phi ptr [ %.pr, %Py_DECREF.exit138thread-pre-split ], [ %i.an, %bb.o ] ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %Py_XDECREF.exit, label %bb.r

bb.r:                                             ; preds = %mangle_dotted_path.exit, %Py_DECREF.exit138
  %i.at = phi ptr [ %.pre, %mangle_dotted_path.exit ], [ %i.ar, %Py_DECREF.exit138 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.val.i.i = load i64, ptr %i.v, align 8, !tbaa !38 ; 2 uses
  %i.au = icmp sgt i64 %.val.i.i, 0
  br i1 %i.au, label %.critedge.i.i, label %.loopexit.i

bb.s:                                             ; preds = %.critedge.i.i
  %i.av = add nuw nsw i64 %.01012.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %.val.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.critedge.i.i, !llvm.loop !151

.critedge.i.i:                                    ; preds = %bb.r, %bb.s
  %.01012.i.i = phi i64 [ %i.av, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.01012.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.ay, ptr noundef nonnull @.str.52) #14
  %.not.i140.i = icmp eq i32 %i.az, 0
  br i1 %.not.i140.i, label %bb.s, label %check_dotted_path.exit.i

check_dotted_path.exit.i:                         ; preds = %.critedge.i.i
  %i.ba = getelementptr i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
end_hunk_1
