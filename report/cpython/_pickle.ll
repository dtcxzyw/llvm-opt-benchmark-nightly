Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_pickle?download=true
inline.NumInlined: 778
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 38
begin_hunk_0_@save:bb.a
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !27
  %i.aby = tail call ptr @PyDict_GetItemWithError(ptr noundef %i.abx, ptr noundef %.val) #14 ; 5 uses
  store ptr %i.aby, ptr %i.g, align 8, !tbaa !45
  %i.abz = icmp eq ptr %i.aby, null
  br i1 %i.abz, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aca = tail call ptr @PyErr_Occurred() #14
  %.not136 = icmp eq ptr %i.aca, null
  br i1 %.not136, label %Py_INCREF.exit.thread257, label %.thread

bb.gt:                                            ; preds = %bb.gr
  %i.acb = load i32, ptr %i.aby, align 8, !tbaa !51 ; 2 uses
  %i.acc = icmp ugt i32 %i.acb, -1073741825
  br i1 %i.acc, label %Py_INCREF.exit.thread, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.acd = add nuw i32 %i.acb, 1
  store i32 %i.acd, ptr %i.aby, align 8, !tbaa !51
  br label %Py_INCREF.exit

bb.gv:                                            ; preds = %bb.gq
  %i.ace = call i32 @PyMapping_GetOptionalItem(ptr noundef nonnull %i.abu, ptr noundef %.val, ptr noundef nonnull %i.g) #14
  %i.acf = icmp slt i32 %i.ace, 0
  br i1 %i.acf, label %.thread, label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.gu, %bb.gv
  %.pr.pr = load ptr, ptr %i.g, align 8, !tbaa !45 ; 2 uses
  %.not137 = icmp eq ptr %.pr.pr, null
  br i1 %.not137, label %Py_INCREF.exit.thread257, label %Py_INCREF.exit.thread

Py_INCREF.exit.thread:                            ; preds = %bb.gt, %Py_INCREF.exit
  %i.acg = phi ptr [ %.pr.pr, %Py_INCREF.exit ], [ %i.aby, %bb.gt ]
  %i.ach = load i32, ptr %2, align 8, !tbaa !51   ; 2 uses
  %i.aci = icmp ugt i32 %i.ach, -1073741825
  br i1 %i.aci, label %_Py_NewRef.exit, label %bb.gw

bb.gw:                                            ; preds = %Py_INCREF.exit.thread
  %i.acj = add nuw i32 %i.ach, 1
  store i32 %i.acj, ptr %2, align 8, !tbaa !51
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
  %i.acp = load ptr, ptr %i.g, align 8, !tbaa !45
  %.not139 = icmp eq ptr %i.acp, null
  br i1 %.not139, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.acq = getelementptr i8, ptr %1, i64 88
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !47
  %i.acs = sext i32 %i.acr to i64
  %i.act = call ptr @PyLong_FromLong(i64 noundef %i.acs) #14 ; 2 uses
  %.not141 = icmp eq ptr %i.act, null
  br i1 %.not141, label %.thread, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.acu = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.acv = call fastcc ptr @_Pickle_FastCall(ptr noundef %i.acu, ptr noundef nonnull %i.act)
  br label %bb.hg

bb.hc:                                            ; preds = %bb.gz
  %i.acw = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68992), ptr noundef nonnull %i.g) #14
  %i.acx = icmp slt i32 %i.acw, 0
  br i1 %i.acx, label %.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.acy = load ptr, ptr %i.g, align 8, !tbaa !45 ; 2 uses
  %.not140 = icmp eq ptr %i.acy, null
  br i1 %.not140, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acz = call ptr @PyObject_CallNoArgs(ptr noundef nonnull %i.acy) #14
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  %i.ada = getelementptr i8, ptr %0, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !25
  %i.adc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.adb, ptr noundef nonnull @.str.15, ptr noundef %2) #14 ; 0 uses
  br label %.thread

bb.hg:                                            ; preds = %bb.hb, %bb.he, %_Py_NewRef.exit
  %.2 = phi ptr [ %i.ack, %_Py_NewRef.exit ], [ %i.acz, %bb.he ], [ %i.acv, %bb.hb ] ; 2 uses
  %i.add = icmp eq ptr %.2, null
  br i1 %i.add, label %.thread, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.gj
  %.3 = phi ptr [ %i.abk, %bb.gj ], [ %.2, %bb.hg ] ; 8 uses
  %i.ade = getelementptr i8, ptr %.3, i64 8
  %.3.val144 = load ptr, ptr %i.ade, align 8, !tbaa !57
  %i.adf = getelementptr i8, ptr %.3.val144, i64 168
  %.val146 = load i64, ptr %i.adf, align 8, !tbaa !64 ; 2 uses
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
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !25
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
  %i.ado = load ptr, ptr %i.g, align 8, !tbaa !45
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp eq ptr %i.e, %0
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_PyMemoTable_Lookup.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.023.i = phi i64 [ %i.j, %.preheader.i ], [ %i.c, %bb.a ]
  %.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = mul i64 %.023.i, 5
  %i.i = add nsw i64 %.0.i, 1
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = and i64 %i.j, %.0.val                    ; 2 uses
  %i.l = getelementptr [16 x i8], ptr %.24.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.m, %0
  %or.cond28.i = or i1 %i.n, %i.o
  %i.p = lshr i64 %.0.i, 5
  br i1 %or.cond28.i, label %_PyMemoTable_Lookup.exit, label %.preheader.i

_PyMemoTable_Lookup.exit:                         ; preds = %.preheader.i, %bb.a
  %i.q = phi ptr [ %i.e, %bb.a ], [ %i.m, %.preheader.i ]
  %i.r = phi i64 [ %i.c, %bb.a ], [ %i.k, %.preheader.i ]
  %i.s = getelementptr [16 x i8], ptr %.24.val, i64 %i.r
  %i.t = icmp eq ptr %i.q, null
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.0 = select i1 %i.t, ptr null, ptr %i.u
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @memo_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !85 ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ashr i64 %i.e, 3                         ; 2 uses
  %i.g = and i64 %.val, %i.f                      ; 3 uses
  %i.h = getelementptr [16 x i8], ptr %.val19, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %i.i, %2
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %PyMemoTable_Get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.023.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.g, %bb.a ]
  %.0.i.i = phi i64 [ %i.t, %.preheader.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.l = mul i64 %.023.i.i, 5
  %i.m = add nsw i64 %.0.i.i, 1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = and i64 %i.n, %.val                      ; 2 uses
  %i.p = getelementptr [16 x i8], ptr %.val19, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp eq ptr %i.q, %2
  %or.cond28.i.i = or i1 %i.r, %i.s
  %i.t = lshr i64 %.0.i.i, 5
  br i1 %or.cond28.i.i, label %PyMemoTable_Get.exit, label %.preheader.i.i

PyMemoTable_Get.exit:                             ; preds = %.preheader.i.i, %bb.a
  %i.u = phi ptr [ %i.i, %bb.a ], [ %i.q, %.preheader.i.i ]
  %i.v = phi i64 [ %i.g, %bb.a ], [ %i.o, %.preheader.i.i ]
  %i.w = getelementptr [16 x i8], ptr %.val19, i64 %i.v
  %i.x = icmp eq ptr %i.u, null
  %i.y = getelementptr i8, ptr %i.w, i64 8        ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %PyMemoTable_Get.exit
  %i.ab = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !45
  tail call void @PyErr_SetObject(ptr noundef %i.ab, ptr noundef %2) #14
  br label %bb.s

bb.c:                                             ; preds = %PyMemoTable_Get.exit
  %i.ac = getelementptr i8, ptr %1, i64 92
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !48
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 103, ptr %i.a, align 16, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.af = load i64, ptr %i.y, align 8, !tbaa !65
  %i.ag = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.ae, i64 noundef 29, ptr noundef nonnull @.str.25, i64 noundef %i.af) #14 ; 0 uses
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15
  %i.ai = freeze i64 %i.ah
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.y, align 8, !tbaa !65  ; 4 uses
  %i.ak = icmp slt i64 %i.aj, 256
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 104, ptr %i.a, align 16, !tbaa !51
  %i.al = trunc i64 %i.aj to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !51
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.an = icmp samesign ult i64 %i.aj, 4294967296
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 106, ptr %i.a, align 16, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = bitcast i64 %i.aj to <8 x i8>
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %4, ptr %i.ao, align 1, !tbaa !51
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.26) #14
  br label %bb.s

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.d
  %.0 = phi i64 [ 2, %bb.f ], [ 5, %bb.h ], [ %i.ai, %bb.d ] ; 15 uses
  %i.ar = getelementptr i8, ptr %1, i64 96
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !54
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %1, i64 104
  %i.au = load i64, ptr %i.at, align 8, !tbaa !55
  %.fr.i = freeze i64 %i.au
  %i.av = icmp eq i64 %.fr.i, -1                  ; 2 uses
  %i.aw = add i64 %.0, 9
  %spec.select.i = select i1 %i.av, i64 %i.aw, i64 %.0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.ax = phi i1 [ false, %bb.j ], [ %i.av, %bb.k ]
  %i.ay = phi i64 [ %.0, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 72        ; 16 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.bb = add i64 %i.ba, %i.ay                    ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !87
  %i.be = icmp sgt i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread.i
  %i.bf = sub i64 4611686018427387903, %i.ay
  %.not48.i = icmp slt i64 %i.ba, %i.bf
  br i1 %.not48.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %_Pickler_Write.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bh = sdiv i64 %i.bb, 2
  %i.bi = mul i64 %i.bh, 3                        ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !87
  %i.bj = getelementptr i8, ptr %1, i64 64
  %i.bk = call i32 @_PyBytes_Resize(ptr noundef %i.bj, i64 noundef %i.bi) #14
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %_Pickler_Write.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.bm = getelementptr i8, ptr %1, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.bo = getelementptr i8, ptr %i.bn, i64 32     ; 9 uses
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = load i64, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 104
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !55
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.br, i8 -2, i64 9, i1 false), !tbaa !51
  %i.bs = load i64, ptr %i.az, align 8, !tbaa !56
  %i.bt = add i64 %i.bs, 9
  store i64 %i.bt, ptr %i.az, align 8, !tbaa !56
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = icmp slt i64 %.0, 8
  br i1 %i.bu, label %.preheader.i, label %bb.r

.preheader.i:                                     ; preds = %bb.q
  %i.bv = icmp sgt i64 %.0, 0
  br i1 %i.bv, label %.lr.ph.i, label %_Pickler_Write.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bw = load i8, ptr %i.a, align 16, !tbaa !51
  %i.bx = load i64, ptr %i.az, align 8, !tbaa !56
  %i.by = getelementptr i8, ptr %i.bo, i64 %i.bx
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !51
  %exitcond.not.i = icmp eq i64 %.0, 1
  br i1 %exitcond.not.i, label %_Pickler_Write.exit.thread23, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  %i.cb = load i64, ptr %i.az, align 8, !tbaa !56
  %i.cc = getelementptr i8, ptr %i.bo, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 1
  store i8 %i.ca, ptr %i.cd, align 1, !tbaa !51
  %exitcond.not.i.1 = icmp eq i64 %.0, 2
  br i1 %exitcond.not.i.1, label %_Pickler_Write.exit.thread23, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !51
  %i.cg = load i64, ptr %i.az, align 8, !tbaa !56
  %i.ch = getelementptr i8, ptr %i.bo, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 2
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !51
  %exitcond.not.i.2 = icmp eq i64 %.0, 3
  br i1 %exitcond.not.i.2, label %_Pickler_Write.exit.thread23, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !51
  %i.cl = load i64, ptr %i.az, align 8, !tbaa !56
  %i.cm = getelementptr i8, ptr %i.bo, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 3
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !51
  %exitcond.not.i.3 = icmp eq i64 %.0, 4
  br i1 %exitcond.not.i.3, label %_Pickler_Write.exit.thread23, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !51
  %i.cq = load i64, ptr %i.az, align 8, !tbaa !56
  %i.cr = getelementptr i8, ptr %i.bo, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store i8 %i.cp, ptr %i.cs, align 1, !tbaa !51
  %exitcond.not.i.4 = icmp eq i64 %.0, 5
  br i1 %exitcond.not.i.4, label %_Pickler_Write.exit.thread23, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !51
  %i.cv = load i64, ptr %i.az, align 8, !tbaa !56
  %i.cw = getelementptr i8, ptr %i.bo, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 5
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !51
  %exitcond.not.i.5 = icmp eq i64 %.0, 6
  br i1 %exitcond.not.i.5, label %_Pickler_Write.exit.thread23, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !51
  %i.da = load i64, ptr %i.az, align 8, !tbaa !56
  %i.db = getelementptr i8, ptr %i.bo, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 6
  store i8 %i.cz, ptr %i.dc, align 1, !tbaa !51
  br label %_Pickler_Write.exit.thread23

bb.r:                                             ; preds = %bb.q
  %i.dd = load i64, ptr %i.az, align 8, !tbaa !56
  %i.de = getelementptr i8, ptr %i.bo, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr nonnull readonly align 16 %i.a, i64 %.0, i1 false)
  br label %_Pickler_Write.exit.thread23

_Pickler_Write.exit.thread23:                     ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %bb.r
  %i.df = load i64, ptr %i.az, align 8, !tbaa !56
  %i.dg = add i64 %i.df, %.0
  store i64 %i.dg, ptr %i.az, align 8, !tbaa !56
  br label %bb.s

_Pickler_Write.exit:                              ; preds = %.preheader.i
  %i.dh = load i64, ptr %i.az, align 8, !tbaa !56
  %i.di = add i64 %i.dh, %.0
  store i64 %i.di, ptr %i.az, align 8, !tbaa !56
  %.not25 = icmp eq i64 %.0, 0
  br i1 %.not25, label %bb.s, label %_Pickler_Write.exit.thread

_Pickler_Write.exit.thread:                       ; preds = %bb.n, %bb.m, %_Pickler_Write.exit
  br label %bb.s

bb.s:                                             ; preds = %_Pickler_Write.exit.thread, %_Pickler_Write.exit, %_Pickler_Write.exit.thread23, %bb.i, %bb.b
  %.016 = phi i32 [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %_Pickler_Write.exit.thread ], [ 0, %_Pickler_Write.exit ], [ 0, %_Pickler_Write.exit.thread23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @save_bytes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %i.b = getelementptr i8, ptr %1, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = icmp slt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val29 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %i.f = icmp eq i64 %.val29, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.27, ptr noundef nonnull @PyBytes_Type) #14
  br label %Py_DECREF.exit26

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %2, i64 32
  %i.i = tail call ptr @PyUnicode_DecodeLatin1(ptr noundef %i.h, i64 noundef %.val29, ptr noundef nonnull @.str.28) #14 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 88
end_hunk_0
