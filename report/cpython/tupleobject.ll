inline.NumInlined: 195
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tuple_concat:bb.a
_Py_NewRef.exit56:                                ; preds = %.lr.ph, %bb.o
  %.val45 = phi i64 [ %.val4574, %.lr.ph ], [ %.val45.pre, %bb.o ] ; 3 uses
  %i.av = getelementptr [8 x i8], ptr %i.al, i64 %.03965
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !25
  %i.aw = add nuw nsw i64 %.03965, 1              ; 2 uses
  %i.ax = icmp slt i64 %i.aw, %.val45
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !80

._crit_edge70:                                    ; preds = %_Py_NewRef.exit57, %._crit_edge
  %i.ay = getelementptr i8, ptr %.2.i62, i64 -16  ; 2 uses
  %i.az = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12 ; 7 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 7408
  %i.bc = getelementptr i8, ptr %i.ba, i64 7416   ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !29
  %i.bh = and i64 %i.bg, 3
  %i.bi = or i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !29
  %i.bj = getelementptr i8, ptr %.2.i62, i64 -8   ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.bl = and i64 %i.bk, 3
  %i.bm = or i64 %i.bl, %i.bd
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !27
  %i.bn = getelementptr i8, ptr %i.ba, i64 7672
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !30
  %i.bp = xor i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = ptrtoint ptr %i.bb to i64
  %i.bs = or i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.ay, align 8, !tbaa !29
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !27
  %i.bt = getelementptr i8, ptr %i.ba, i64 7428   ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !34
  %i.bv = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !34
  %i.bw = getelementptr i8, ptr %i.ba, i64 7656   ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !35
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !35
  %i.bz = getelementptr i8, ptr %i.ba, i64 7424
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !36
  %i.cb = icmp sgt i32 %i.bv, %i.ca
  br i1 %i.cb, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %._crit_edge70
  %i.cc = getelementptr i8, ptr %i.ba, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.cc) #9
  br label %_Py_NewRef.exit

.lr.ph69:                                         ; preds = %._crit_edge, %_Py_NewRef.exit57
  %.val76 = phi i64 [ %.val, %_Py_NewRef.exit57 ], [ %.val66, %._crit_edge ]
  %.03867 = phi i64 [ %i.cj, %_Py_NewRef.exit57 ], [ 0, %._crit_edge ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.an, i64 %.03867
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !25 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !46 ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, -1073741825
  br i1 %i.cg, label %_Py_NewRef.exit57, label %bb.q

bb.q:                                             ; preds = %.lr.ph69
  %i.ch = add nuw i32 %i.cf, 1
  store i32 %i.ch, ptr %i.ce, align 8, !tbaa !46
  %.val.pre = load i64, ptr %i.m, align 8, !tbaa !45
  br label %_Py_NewRef.exit57

_Py_NewRef.exit57:                                ; preds = %.lr.ph69, %bb.q
  %.val = phi i64 [ %.val76, %.lr.ph69 ], [ %.val.pre, %bb.q ] ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.ao, i64 %.03867
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !25
  %i.cj = add nuw nsw i64 %.03867, 1              ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %.val
  br i1 %i.ck, label %.lr.ph69, label %._crit_edge70, !llvm.loop !81

_Py_NewRef.exit:                                  ; preds = %.critedge.thread.i, %bb.k, %bb.p, %._crit_edge70, %bb.i, %bb.h, %bb.g, %bb.c, %bb.b, %tuple_alloc.exit, %bb.d
  %.3 = phi ptr [ null, %tuple_alloc.exit ], [ null, %bb.d ], [ %1, %bb.c ], [ %0, %bb.h ], [ %.2.i62, %bb.p ], [ %1, %bb.b ], [ %0, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.i ], [ %.2.i62, %._crit_edge70 ], [ null, %bb.k ], [ null, %.critedge.thread.i ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_repeat(ptr nofree noundef captures(address, ret: address, provenance) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !45  ; 6 uses
  %i.b = icmp eq i64 %.val, 0                     ; 2 uses
  %i.c = icmp eq i64 %1, 1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val48 = load ptr, ptr %i.d, align 8, !tbaa !37
  %.not = icmp eq ptr %.val48, @PyTuple_Type
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %0, align 8, !tbaa !46
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp slt i64 %1, 1
  %or.cond3 = or i1 %i.h, %i.b
  br i1 %or.cond3, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = udiv i64 9223372036854775807, %1
  %i.j = icmp sgt i64 %.val, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @PyErr_NoMemory() #9
  br label %_Py_NewRef.exit

bb.h:                                             ; preds = %bb.f
  %i.l = mul i64 %.val, %1                        ; 7 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !11
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.h
  %i.n = icmp samesign ult i64 %i.l, 21
  br i1 %i.n, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %i.p, i64 11200
  %i.r = getelementptr [16 x i8], ptr %i.q, i64 %i.l ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  store ptr %i.t, ptr %i.r, align 8, !tbaa !15
  %i.u = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !19
  tail call void @_Py_NewReference(ptr noundef nonnull %i.s) #9, !inline_history !11
  br label %tuple_alloc.exit.thread53.sink.split

.critedge.i:                                      ; preds = %bb.j
  %i.x = icmp samesign ugt i64 %i.l, 1152921504606846971
  br i1 %i.x, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.k
  %i.y = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %i.l) #9, !inline_history !11 ; 2 uses
  %.not17.i = icmp eq ptr %i.y, null
  br i1 %.not17.i, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread53.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.z = tail call ptr @PyErr_NoMemory() #9, !inline_history !11 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread53

tuple_alloc.exit.thread53.sink.split:             ; preds = %.critedge.thread.i, %bb.l
  %.sink77 = phi ptr [ %i.s, %bb.l ], [ %i.y, %.critedge.thread.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sink77, i64 24
  store i64 -1, ptr %i.ab, align 8, !tbaa !20
  br label %tuple_alloc.exit.thread53

tuple_alloc.exit.thread53:                        ; preds = %tuple_alloc.exit.thread53.sink.split, %tuple_alloc.exit
  %.2.i55 = phi ptr [ %i.z, %tuple_alloc.exit ], [ %.sink77, %tuple_alloc.exit.thread53.sink.split ] ; 6 uses
  %i.ac = getelementptr i8, ptr %.2.i55, i64 32   ; 8 uses
  %i.ad = icmp eq i64 %.val, 1
  %i.ae = getelementptr i8, ptr %0, i64 32        ; 4 uses
  br i1 %i.ad, label %bb.m, label %bb.o

bb.m:                                             ; preds = %tuple_alloc.exit.thread53
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i, label %bb.n, label %_Py_RefcntAdd.exit

bb.n:                                             ; preds = %bb.m
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nuw i64 %1, %i.ah                   ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 2147483647
  %i.ak = trunc i64 %i.ai to i32
  %i.al = select i1 %i.aj, i32 -1073741824, i32 %i.ak
  store i32 %i.al, ptr %i.af, align 8, !tbaa !46
  br label %_Py_RefcntAdd.exit

_Py_RefcntAdd.exit:                               ; preds = %bb.m, %bb.n
  %i.am = getelementptr [8 x i8], ptr %i.ac, i64 %i.l ; 2 uses
  %i.an = icmp ult ptr %i.ac, %i.am
  br i1 %i.an, label %.lr.ph60.preheader, label %_Py_memory_repeat.exit

.lr.ph60.preheader:                               ; preds = %_Py_RefcntAdd.exit
  %2 = ptrtoint ptr %.2.i55 to i64                ; 3 uses
  %i.ao = shl i64 %1, 3
  %i.ap = add i64 %i.ao, %2
  %i.aq = add i64 %i.ap, 32
  %i.ar = add i64 %2, 40
  %i.as = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = sub i64 %i.as, %2
  %i.au = add i64 %i.at, -33                      ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 24
  br i1 %min.iters.check, label %.lr.ph60.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.preheader
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.ac, i64 %i.ax
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !25
  store <2 x ptr> %broadcast.splat, ptr %i.ba, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit, label %.lr.ph60.preheader79

.lr.ph60.preheader79:                             ; preds = %.lr.ph60.preheader, %middle.block
  %.04359.ph = phi ptr [ %i.ac, %.lr.ph60.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader79, %.lr.ph60
  %.04359 = phi ptr [ %i.bc, %.lr.ph60 ], [ %.04359.ph, %.lr.ph60.preheader79 ] ; 2 uses
  %i.bc = getelementptr i8, ptr %.04359, i64 8    ; 2 uses
  store ptr %i.af, ptr %.04359, align 8, !tbaa !25
  %i.bd = icmp ult ptr %i.bc, %i.am
  br i1 %i.bd, label %.lr.ph60, label %_Py_memory_repeat.exit, !llvm.loop !83

bb.o:                                             ; preds = %tuple_alloc.exit.thread53
  %i.be = getelementptr [8 x i8], ptr %i.ae, i64 %.val ; 2 uses
  %i.bf = icmp ult ptr %i.ae, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o, %_Py_RefcntAdd.exit50
  %.04258 = phi ptr [ %i.bo, %_Py_RefcntAdd.exit50 ], [ %i.ae, %bb.o ] ; 3 uses
  %.14457 = phi ptr [ %i.bp, %_Py_RefcntAdd.exit50 ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = load ptr, ptr %.04258, align 8, !tbaa !25 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !46 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i49, label %bb.p, label %_Py_RefcntAdd.exit50

bb.p:                                             ; preds = %.lr.ph
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = add nuw i64 %1, %i.bi                   ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 2147483647
  %i.bl = trunc i64 %i.bj to i32
  %i.bm = select i1 %i.bk, i32 -1073741824, i32 %i.bl
  store i32 %i.bm, ptr %i.bg, align 8, !tbaa !46
  %.pre = load ptr, ptr %.04258, align 8, !tbaa !25
  br label %_Py_RefcntAdd.exit50

_Py_RefcntAdd.exit50:                             ; preds = %.lr.ph, %bb.p
  %i.bn = phi ptr [ %i.bg, %.lr.ph ], [ %.pre, %bb.p ]
  %i.bo = getelementptr i8, ptr %.04258, i64 8    ; 2 uses
  %i.bp = getelementptr i8, ptr %.14457, i64 8
  store ptr %i.bn, ptr %.14457, align 8, !tbaa !25
  %i.bq = icmp ult ptr %i.bo, %i.be
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %_Py_RefcntAdd.exit50, %bb.o
  %i.br = shl i64 %i.l, 3                         ; 3 uses
  %i.bs = shl i64 %.val, 3                        ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph.i, label %_Py_memory_repeat.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.015.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %i.bs, %._crit_edge ] ; 4 uses
  %i.bu = sub i64 %i.br, %.015.i
  %i.bv = tail call i64 @llvm.smin.i64(i64 %.015.i, i64 %i.bu) ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ac, i64 %.015.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.ac, i64 %i.bv, i1 false)
  %i.bx = add i64 %i.bv, %.015.i                  ; 2 uses
  %i.by = icmp slt i64 %i.bx, %i.br
  br i1 %i.by, label %.lr.ph.i, label %_Py_memory_repeat.exit, !llvm.loop !85

_Py_memory_repeat.exit:                           ; preds = %.lr.ph.i, %.lr.ph60, %middle.block, %_Py_RefcntAdd.exit, %._crit_edge
  %i.bz = getelementptr i8, ptr %.2.i55, i64 -16  ; 2 uses
  %i.ca = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !12 ; 7 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 7408
  %i.cd = getelementptr i8, ptr %i.cb, i64 7416   ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !29
  %i.ci = and i64 %i.ch, 3
  %i.cj = or i64 %i.ci, %i.cg
  store i64 %i.cj, ptr %i.cf, align 8, !tbaa !29
  %i.ck = getelementptr i8, ptr %.2.i55, i64 -8   ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.cm = and i64 %i.cl, 3
  %i.cn = or i64 %i.cm, %i.ce
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !27
  %i.co = getelementptr i8, ptr %i.cb, i64 7672
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !30
  %i.cq = xor i32 %i.cp, 1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = ptrtoint ptr %i.cc to i64
  %i.ct = or i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.bz, align 8, !tbaa !29
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !27
  %i.cu = getelementptr i8, ptr %i.cb, i64 7428   ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !34
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !34
  %i.cx = getelementptr i8, ptr %i.cb, i64 7656   ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !35
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !35
  %i.da = getelementptr i8, ptr %i.cb, i64 7424
  %i.db = load i32, ptr %i.da, align 8, !tbaa !36
  %i.dc = icmp sgt i32 %i.cw, %i.db
  br i1 %i.dc, label %bb.q, label %_Py_NewRef.exit

bb.q:                                             ; preds = %_Py_memory_repeat.exit
  %i.dd = getelementptr i8, ptr %i.cb, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.dd) #9
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %.critedge.thread.i, %bb.i, %bb.q, %_Py_memory_repeat.exit, %bb.e, %bb.d, %bb.c, %tuple_alloc.exit, %bb.g
  %.1 = phi ptr [ null, %tuple_alloc.exit ], [ %0, %bb.d ], [ %i.k, %bb.g ], [ %.2.i55, %bb.q ], [ %0, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.e ], [ %.2.i55, %_Py_memory_repeat.exit ], [ null, %bb.i ], [ null, %.critedge.thread.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @tuple_item(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !45
  %.not = icmp slt i64 %1, %.val
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.1) #9
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !46
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tuple_contains(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.010 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.c ]   ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = icmp slt i64 %.010, %.val
  br i1 %i.c, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  %.08.lcssa = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  ret i32 %.08.lcssa

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %.010
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.e, ptr noundef %1, i32 noundef 2) #9 ; 2 uses
  %i.g = add nuw nsw i64 %.010, 1
  %i.h = icmp eq i32 %i.f, 0
end_hunk_0
