inline.NumInlined: 195
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tuple_concat:bb.a
  %.val4564 = load i64, ptr %i.a, align 8, !tbaa !45 ; 3 uses
  %i.am = icmp sgt i64 %.val4564, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_Py_NewRef.exit56, %tuple_alloc.exit.thread60
  %.val45.lcssa = phi i64 [ %.val4564, %tuple_alloc.exit.thread60 ], [ %.val45, %_Py_NewRef.exit56 ]
  %i.an = getelementptr i8, ptr %1, i64 32
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %.val45.lcssa
  %.val66 = load i64, ptr %i.m, align 8, !tbaa !45 ; 2 uses
  %i.ap = icmp sgt i64 %.val66, 0
  br i1 %i.ap, label %.lr.ph69, label %._crit_edge70

.lr.ph:                                           ; preds = %tuple_alloc.exit.thread60, %_Py_NewRef.exit56
  %.val4574 = phi i64 [ %.val45, %_Py_NewRef.exit56 ], [ %.val4564, %tuple_alloc.exit.thread60 ]
  %.03965 = phi i64 [ %i.aw, %_Py_NewRef.exit56 ], [ 0, %tuple_alloc.exit.thread60 ] ; 3 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ak, i64 %.03965
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = icmp ugt i32 %i.as, -1073741825
  br i1 %i.at, label %_Py_NewRef.exit56, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.au = add nuw i32 %i.as, 1
  store i32 %i.au, ptr %i.ar, align 8, !tbaa !46
  %.val45.pre = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_Py_NewRef.exit56

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
  %.not18.i = icmp eq ptr %i.y, null
  br i1 %.not18.i, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread53.sink.split

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
  %2 = ptrtoaddr ptr %.2.i55 to i64               ; 3 uses
  %3 = shl i64 %1, 3
  %4 = add i64 %3, %2
  %5 = add i64 %4, 32
  %6 = add i64 %2, 40
  %7 = tail call i64 @llvm.umax.i64(i64 %5, i64 %6)
  %8 = add i64 %7, -33
  %9 = sub i64 %8, %2                             ; 2 uses
  %10 = lshr i64 %9, 3
  %11 = add nuw nsw i64 %10, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %9, 24
  br i1 %min.iters.check, label %.lr.ph60.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.preheader
  %n.vec = and i64 %11, 4611686018427387900       ; 3 uses
  %12 = shl i64 %n.vec, 3
  %13 = getelementptr i8, ptr %i.ac, i64 %12
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %14 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ac, i64 %14 ; 2 uses
  %15 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !25
  store <2 x ptr> %broadcast.splat, ptr %15, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit, label %.lr.ph60.preheader79

.lr.ph60.preheader79:                             ; preds = %.lr.ph60.preheader, %middle.block
  %.04259.ph = phi ptr [ %i.ac, %.lr.ph60.preheader ], [ %13, %middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader79, %.lr.ph60
  %.04259 = phi ptr [ %i.ao, %.lr.ph60 ], [ %.04259.ph, %.lr.ph60.preheader79 ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.04259, i64 8    ; 2 uses
  store ptr %i.af, ptr %.04259, align 8, !tbaa !25
  %i.ap = icmp ult ptr %i.ao, %i.am
  br i1 %i.ap, label %.lr.ph60, label %_Py_memory_repeat.exit, !llvm.loop !83

bb.o:                                             ; preds = %tuple_alloc.exit.thread53
  %i.aq = getelementptr [8 x i8], ptr %i.ae, i64 %.val ; 2 uses
  %i.ar = icmp ult ptr %i.ae, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o, %_Py_RefcntAdd.exit50
  %.058 = phi ptr [ %i.ba, %_Py_RefcntAdd.exit50 ], [ %i.ae, %bb.o ] ; 3 uses
  %.157 = phi ptr [ %i.bb, %_Py_RefcntAdd.exit50 ], [ %i.ac, %bb.o ] ; 2 uses
  %i.as = load ptr, ptr %.058, align 8, !tbaa !25 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.at, -1
  br i1 %.not.i49, label %bb.p, label %_Py_RefcntAdd.exit50

bb.p:                                             ; preds = %.lr.ph
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nuw i64 %1, %i.au                   ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 2147483647
  %i.ax = trunc i64 %i.av to i32
  %i.ay = select i1 %i.aw, i32 -1073741824, i32 %i.ax
  store i32 %i.ay, ptr %i.as, align 8, !tbaa !46
  %.pre = load ptr, ptr %.058, align 8, !tbaa !25
  br label %_Py_RefcntAdd.exit50

_Py_RefcntAdd.exit50:                             ; preds = %.lr.ph, %bb.p
  %i.az = phi ptr [ %i.as, %.lr.ph ], [ %.pre, %bb.p ]
  %i.ba = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %i.bb = getelementptr i8, ptr %.157, i64 8
  store ptr %i.az, ptr %.157, align 8, !tbaa !25
  %i.bc = icmp ult ptr %i.ba, %i.aq
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %_Py_RefcntAdd.exit50, %bb.o
  %i.bd = shl i64 %i.l, 3                         ; 3 uses
  %i.be = shl i64 %.val, 3                        ; 2 uses
  %i.bf = icmp slt i64 %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph.i, label %_Py_memory_repeat.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.015.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.bg = sub i64 %i.bd, %.015.i
  %i.bh = tail call i64 @llvm.smin.i64(i64 %.015.i, i64 %i.bg) ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ac, i64 %.015.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.ac, i64 %i.bh, i1 false)
  %i.bj = add i64 %i.bh, %.015.i                  ; 2 uses
  %i.bk = icmp slt i64 %i.bj, %i.bd
  br i1 %i.bk, label %.lr.ph.i, label %_Py_memory_repeat.exit, !llvm.loop !85

_Py_memory_repeat.exit:                           ; preds = %.lr.ph.i, %.lr.ph60, %middle.block, %_Py_RefcntAdd.exit, %._crit_edge
  %i.bl = getelementptr i8, ptr %.2.i55, i64 -16  ; 2 uses
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !12 ; 7 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 7408
  %i.bp = getelementptr i8, ptr %i.bn, i64 7416   ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !29
  %i.bu = and i64 %i.bt, 3
  %i.bv = or i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !29
  %i.bw = getelementptr i8, ptr %.2.i55, i64 -8   ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !27
  %i.by = and i64 %i.bx, 3
  %i.bz = or i64 %i.by, %i.bq
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !27
  %i.ca = getelementptr i8, ptr %i.bn, i64 7672
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !30
  %i.cc = xor i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = ptrtoint ptr %i.bo to i64
  %i.cf = or i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bl, align 8, !tbaa !29
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !27
  %i.cg = getelementptr i8, ptr %i.bn, i64 7428   ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = add i32 %i.ch, 1                        ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !34
  %i.cj = getelementptr i8, ptr %i.bn, i64 7656   ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !35
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !35
  %i.cm = getelementptr i8, ptr %i.bn, i64 7424
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !36
  %i.co = icmp sgt i32 %i.ci, %i.cn
  br i1 %i.co, label %bb.q, label %_Py_NewRef.exit

bb.q:                                             ; preds = %_Py_memory_repeat.exit
  %i.cp = getelementptr i8, ptr %i.bn, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.cp) #9
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %.critedge.thread.i, %bb.i, %bb.q, %_Py_memory_repeat.exit, %bb.e, %bb.d, %bb.c, %tuple_alloc.exit, %bb.g
  %.144 = phi ptr [ null, %tuple_alloc.exit ], [ %0, %bb.d ], [ %i.k, %bb.g ], [ %.2.i55, %bb.q ], [ %0, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.e ], [ %.2.i55, %_Py_memory_repeat.exit ], [ null, %bb.i ], [ null, %.critedge.thread.i ]
  ret ptr %.144
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
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !86
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @tuple_subscript(ptr nofree noundef captures(ret: address, provenance) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.d, align 8, !tbaa !37 ; 3 uses
  %i.e = getelementptr i8, ptr %.val50, i64 96
  %.val50.val = load ptr, ptr %i.e, align 8, !tbaa !87 ; 2 uses
  %.not.i = icmp eq ptr %.val50.val, null
  br i1 %.not.i, label %_PyIndex_Check.exit.thread, label %_PyIndex_Check.exit

_PyIndex_Check.exit:                              ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val50.val, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %.not63 = icmp eq ptr %i.g, null
  br i1 %.not63, label %_PyIndex_Check.exit.thread, label %bb.b

bb.b:                                             ; preds = %_PyIndex_Check.exit
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !25
  %i.i = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %1, ptr noundef %i.h) #9 ; 4 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyErr_Occurred() #9
  %.not44 = icmp eq ptr %i.k, null
  br i1 %.not44, label %.thread, label %tuple_item.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %.thread, label %..thread54_crit_edge

..thread54_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %.thread54

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val46 = load i64, ptr %i.m, align 8, !tbaa !45 ; 2 uses
  %i.n = add i64 %.val46, %i.i                    ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %.thread54

.thread54:                                        ; preds = %..thread54_crit_edge, %.thread
  %.val.i = phi i64 [ %.val46, %.thread ], [ %.val.i.pre, %..thread54_crit_edge ]
  %.03556 = phi i64 [ %i.n, %.thread ], [ %i.i, %..thread54_crit_edge ] ; 2 uses
  %.not.i51 = icmp slt i64 %.03556, %.val.i
  br i1 %.not.i51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread54, %.thread
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.1) #9
  br label %tuple_item.exit

bb.f:                                             ; preds = %.thread54
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.03556
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %tuple_item.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %i.t, 1
  store i32 %i.v, ptr %i.s, align 8, !tbaa !46
  br label %tuple_item.exit

_PyIndex_Check.exit.thread:                       ; preds = %bb.a, %_PyIndex_Check.exit
  %.not = icmp eq ptr %.val50, @PySlice_Type
  br i1 %.not, label %bb.h, label %bb.v

bb.h:                                             ; preds = %_PyIndex_Check.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.w = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val45 = load i64, ptr %i.y, align 8, !tbaa !45
  %i.z = load i64, ptr %i.c, align 8, !tbaa !59
  %i.aa = call i64 @PySlice_AdjustIndices(i64 noundef %.val45, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.z) #9 ; 10 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %_Py_NewRef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !59
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = icmp eq i64 %i.ae, 1
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.val = load i64, ptr %i.y, align 8, !tbaa !45
  %i.ag = icmp eq i64 %i.aa, %.val
  br i1 %i.ag, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %0, i64 8
  %.val48 = load ptr, ptr %i.ah, align 8, !tbaa !37
  %.not64 = icmp eq ptr %.val48, @PyTuple_Type
  br i1 %.not64, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %_Py_NewRef.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %0, align 8, !tbaa !46
  br label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.al = icmp samesign ult i64 %i.aa, 21
  br i1 %i.al, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.ao = getelementptr i8, ptr %i.an, i64 11200
  %i.ap = getelementptr [16 x i8], ptr %i.ao, i64 %i.aa ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !15
  %i.as = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !19
  call void @_Py_NewReference(ptr noundef nonnull %i.aq) #9, !inline_history !11
  br label %.lr.ph.preheader.sink.split

.critedge.i:                                      ; preds = %bb.o
  %i.av = icmp samesign ugt i64 %i.aa, 1152921504606846971
  br i1 %i.av, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.p
  %i.aw = call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %i.aa) #9, !inline_history !11 ; 2 uses
  %.not18.i = icmp eq ptr %i.aw, null
  br i1 %.not18.i, label %_Py_NewRef.exit, label %.lr.ph.preheader.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.ax = call ptr @PyErr_NoMemory() #9, !inline_history !11 ; 2 uses
  %.not43 = icmp eq ptr %i.ax, null
  br i1 %.not43, label %_Py_NewRef.exit, label %.lr.ph.preheader

.lr.ph.preheader.sink.split:                      ; preds = %.critedge.thread.i, %bb.q
  %.sink77 = phi ptr [ %i.aq, %bb.q ], [ %i.aw, %.critedge.thread.i ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.sink77, i64 24
  store i64 -1, ptr %i.ay, align 8, !tbaa !20
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.sink.split, %tuple_alloc.exit
  %.2.i59 = phi ptr [ %i.ax, %tuple_alloc.exit ], [ %.sink77, %.lr.ph.preheader.sink.split ] ; 5 uses
  %i.az = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ba = getelementptr i8, ptr %.2.i59, i64 32   ; 3 uses
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %xtraiter = and i64 %i.aa, 1
  %i.bc = icmp eq i64 %i.aa, 1
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %_Py_NewRef.exit52.1, %.lr.ph.preheader.new
  %.066 = phi i64 [ %i.bb, %.lr.ph.preheader.new ], [ %i.bt, %_Py_NewRef.exit52.1 ] ; 2 uses
  %.03465 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bu, %_Py_NewRef.exit52.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_Py_NewRef.exit52.1 ]
  %i.bd = getelementptr [8 x i8], ptr %i.az, i64 %.066
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, -1073741825
  br i1 %i.bg, label %_Py_NewRef.exit52, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bh = add nuw i32 %i.bf, 1
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !46
  br label %_Py_NewRef.exit52

_Py_NewRef.exit52:                                ; preds = %.lr.ph, %bb.r
  %i.bi = getelementptr [8 x i8], ptr %i.ba, i64 %.03465
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !25
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !59
  %i.bk = add i64 %i.bj, %.066                    ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.az, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, -1073741825
  br i1 %i.bo, label %_Py_NewRef.exit52.1, label %bb.s

bb.s:                                             ; preds = %_Py_NewRef.exit52
  %i.bp = add nuw i32 %i.bn, 1
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !46
  br label %_Py_NewRef.exit52.1

_Py_NewRef.exit52.1:                              ; preds = %bb.s, %_Py_NewRef.exit52
  %i.bq = getelementptr [8 x i8], ptr %i.ba, i64 %.03465
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !25
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !59
  %i.bt = add i64 %i.bs, %i.bk                    ; 2 uses
  %i.bu = add nuw nsw i64 %.03465, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !90

._crit_edge.unr-lcssa:                            ; preds = %_Py_NewRef.exit52.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.066.epil.init = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %i.bt, %._crit_edge.unr-lcssa ]
  %.03465.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bu, %._crit_edge.unr-lcssa ]
  %lcmp.mod78 = trunc i64 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bv = getelementptr [8 x i8], ptr %i.az, i64 %.066.epil.init
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !46 ; 2 uses
  %i.by = icmp ugt i32 %i.bx, -1073741825
  br i1 %i.by, label %_Py_NewRef.exit52.epil, label %bb.t

bb.t:                                             ; preds = %.lr.ph.epil.preheader
  %i.bz = add nuw i32 %i.bx, 1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !46
  br label %_Py_NewRef.exit52.epil

_Py_NewRef.exit52.epil:                           ; preds = %bb.t, %.lr.ph.epil.preheader
  %i.ca = getelementptr [8 x i8], ptr %i.ba, i64 %.03465.epil.init
  store ptr %i.bw, ptr %i.ca, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %_Py_NewRef.exit52.epil
  %i.cb = getelementptr i8, ptr %.2.i59, i64 -16  ; 2 uses
  %i.cc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 7 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 7408
  %i.cf = getelementptr i8, ptr %i.cd, i64 7416   ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !27 ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !29
  %i.ck = and i64 %i.cj, 3
  %i.cl = or i64 %i.ck, %i.ci
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !29
  %i.cm = getelementptr i8, ptr %.2.i59, i64 -8   ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.co = and i64 %i.cn, 3
  %i.cp = or i64 %i.co, %i.cg
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !27
  %i.cq = getelementptr i8, ptr %i.cd, i64 7672
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !30
  %i.cs = xor i32 %i.cr, 1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = ptrtoint ptr %i.ce to i64
  %i.cv = or i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.cb, align 8, !tbaa !29
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !27
  %i.cw = getelementptr i8, ptr %i.cd, i64 7428   ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !34
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !34
  %i.cz = getelementptr i8, ptr %i.cd, i64 7656   ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !35
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !35
  %i.dc = getelementptr i8, ptr %i.cd, i64 7424
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !36
  %i.de = icmp sgt i32 %i.cy, %i.dd
  br i1 %i.de, label %bb.u, label %_Py_NewRef.exit

bb.u:                                             ; preds = %._crit_edge
  %i.df = getelementptr i8, ptr %i.cd, i64 7400
  call void @_Py_TriggerGC(ptr noundef %i.df) #9
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %.critedge.thread.i, %bb.u, %._crit_edge, %bb.n, %bb.m, %bb.i, %tuple_alloc.exit, %bb.h
  %.2 = phi ptr [ null, %bb.h ], [ null, %tuple_alloc.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.i ], [ %.2.i59, %bb.u ], [ %0, %bb.m ], [ %0, %bb.n ], [ %.2.i59, %._crit_edge ], [ null, %.critedge.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %tuple_item.exit

bb.v:                                             ; preds = %_PyIndex_Check.exit.thread
  %i.dg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  %i.dh = getelementptr i8, ptr %.val50, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79
  %i.dj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dg, ptr noundef nonnull @.str.10, ptr noundef %i.di) #9 ; 0 uses
  br label %tuple_item.exit

tuple_item.exit:                                  ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.v, %_Py_NewRef.exit
  %.3 = phi ptr [ null, %bb.v ], [ %.2, %_Py_NewRef.exit ], [ null, %bb.c ], [ null, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  ret ptr %.3
}

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare i32 @PySlice_Unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PySlice_AdjustIndices(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @tuple___getnewargs__(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %.val.i, i64 0)
  %i.b = icmp sgt i64 %.val.i, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val20.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %.val20.i.i, @PyTuple_Type
  br i1 %.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %tuple___getnewargs___impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %0, align 8, !tbaa !46
  br label %tuple___getnewargs___impl.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = tail call ptr @PyTuple_FromArray(ptr noundef %i.g, i64 noundef %spec.select.i.i), !inline_history !91
  br label %tuple___getnewargs___impl.exit

tuple___getnewargs___impl.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.016.i.i = phi ptr [ %i.h, %bb.e ], [ %0, %bb.c ], [ %0, %bb.d ]
  %i.i = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.17, ptr noundef %.016.i.i) #9, !inline_history !92
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_index(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !59
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.12, i64 noundef %2, i64 noundef 1, i64 noundef 3) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %tuple_index_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %._crit_edge18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.h, ptr noundef nonnull %i.a) #9
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %tuple_index_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %._crit_edge18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #9
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %tuple_index_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !59
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ] ; 3 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val32.i = load i64, ptr %i.q, align 8, !tbaa !45 ; 3 uses
  %i.r = add i64 %.val32.i, %i.o
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  %.023.i = select i1 %i.p, i64 %spec.store.select.i, i64 %i.o ; 2 uses
  %i.s = icmp slt i64 %i.n, 0
  %i.t = add i64 %.val32.i, %i.n
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.n, i64 %.val32.i)
  %.022.i = select i1 %i.s, i64 %i.t, i64 %spec.select.i ; 2 uses
  %i.u = icmp slt i64 %.023.i, %.022.i
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge18
  %i.v = getelementptr i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %.02138.i = phi i64 [ %.023.i, %.lr.ph.i ], [ %i.ab, %bb.i ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.02138.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.y = call i32 @PyObject_RichCompareBool(ptr noundef %i.x, ptr noundef %i.e, i32 noundef 2) #9 ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.aa = call ptr @PyLong_FromSsize_t(i64 noundef %.02138.i) #9
  br label %tuple_index_impl.exit

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.i, label %tuple_index_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %.02138.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %.022.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !93

._crit_edge.i:                                    ; preds = %bb.i, %._crit_edge18
  %i.ac = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.18) #9
  br label %tuple_index_impl.exit

tuple_index_impl.exit:                            ; preds = %bb.h, %._crit_edge.i, %.thread.i, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ %i.aa, %.thread.i ], [ null, %._crit_edge.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_count(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val18.i = load i64, ptr %i.a, align 8, !tbaa !45
  %i.b = icmp sgt i64 %.val18.i, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.01120.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.01219.i = phi i64 [ 0, %.lr.ph.i ], [ %.2.i, %bb.e ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.01120.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.e, ptr noundef %1, i32 noundef 2) #9 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.01219.i, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.f, 0
  br i1 %i.i, label %tuple_count_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.i = phi i64 [ %i.h, %bb.c ], [ %.01219.i, %bb.d ] ; 2 uses
  %i.j = add nuw nsw i64 %.01120.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !45
  %i.k = icmp slt i64 %i.j, %.val.i
  br i1 %i.k, label %bb.b, label %._crit_edge.i, !llvm.loop !94

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.012.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %bb.e ]
  %i.l = tail call ptr @PyLong_FromSsize_t(i64 noundef %.012.lcssa.i) #9
  br label %tuple_count_impl.exit

tuple_count_impl.exit:                            ; preds = %bb.d, %._crit_edge.i
  %.215.i = phi ptr [ %i.l, %._crit_edge.i ], [ null, %bb.d ]
  ret ptr %.215.i
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyEval_SliceIndexNotNone(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tuple_new_impl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, @PyTuple_Type
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %tuple_new_impl.exit.thread, label %tuple_new_impl.exit

tuple_new_impl.exit:                              ; preds = %bb.b
  %i.b = tail call ptr @PySequence_Tuple(ptr noundef nonnull %1) #9, !inline_history !95 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %tuple_subtype_new.exit, label %tuple_new_impl.exit.thread

tuple_new_impl.exit.thread:                       ; preds = %bb.b, %tuple_new_impl.exit
  %.0.i810 = phi ptr [ %i.b, %tuple_new_impl.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.b ] ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = getelementptr i8, ptr %.0.i810, i64 16
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !45 ; 6 uses
  %i.g = tail call ptr %i.e(ptr noundef %0, i64 noundef %.val.i) #9, !inline_history !97 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %tuple_new_impl.exit.thread
  %i.i = icmp sgt i64 %.val.i, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr i8, ptr %.0.i810, i64 32   ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  %xtraiter = and i64 %.val.i, 1
  %i.l = icmp eq i64 %.val.i, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.val.i, 9223372036854775806
  br label %bb.f

bb.c:                                             ; preds = %tuple_new_impl.exit.thread
  %i.m = load i32, ptr %.0.i810, align 8, !tbaa !46 ; 2 uses
  %.not.i23.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i23.i, label %bb.d, label %tuple_subtype_new.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %.0.i810, align 8, !tbaa !46
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %tuple_subtype_new.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i810) #9, !inline_history !97
  br label %tuple_subtype_new.exit

bb.f:                                             ; preds = %_Py_NewRef.exit.1, %.lr.ph.new
  %.0.i12 = phi i64 [ 0, %.lr.ph.new ], [ %i.ac, %_Py_NewRef.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_Py_NewRef.exit.1 ]
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.0.i12
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.q, align 8, !tbaa !46
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.g
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %.0.i12
  store ptr %i.q, ptr %i.u, align 8, !tbaa !25
  %i.v = or disjoint i64 %.0.i12, 1               ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_NewRef.exit.1, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !46
  br label %_Py_NewRef.exit.1

_Py_NewRef.exit.1:                                ; preds = %bb.h, %_Py_NewRef.exit
  %i.ab = getelementptr [8 x i8], ptr %i.k, i64 %i.v
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !25
  %i.ac = add nuw nsw i64 %.0.i12, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !98

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_Py_NewRef.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i12.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %.val.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ad = getelementptr [8 x i8], ptr %i.j, i64 %.0.i12.epil.init
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %_Py_NewRef.exit.epil, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !46
  br label %_Py_NewRef.exit.epil

_Py_NewRef.exit.epil:                             ; preds = %bb.i, %.epil.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.k, i64 %.0.i12.epil.init
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %_Py_NewRef.exit.epil, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.aj = load i32, ptr %.0.i810, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %._crit_edge
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %.0.i810, align 8, !tbaa !46
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %Py_DECREF.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i810) #9, !inline_history !97
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.k, %bb.j, %._crit_edge
  %i.am = getelementptr i8, ptr %i.g, i64 24
  store i64 -1, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr i8, ptr %i.g, i64 -16     ; 3 uses
  %.val26.i = load i64, ptr %i.an, align 8, !tbaa !29
  %.not11 = icmp eq i64 %.val26.i, 0
  br i1 %.not11, label %bb.l, label %tuple_subtype_new.exit

bb.l:                                             ; preds = %Py_DECREF.exit.i
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 7 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 7408
  %i.ar = getelementptr i8, ptr %i.ap, i64 7416   ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !27 ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !29
  %i.aw = and i64 %i.av, 3
  %i.ax = or i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !29
  %i.ay = getelementptr i8, ptr %i.g, i64 -8      ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !27
  %i.ba = and i64 %i.az, 3
  %i.bb = or i64 %i.ba, %i.as
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !27
  %i.bc = getelementptr i8, ptr %i.ap, i64 7672
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !30
  %i.be = xor i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = ptrtoint ptr %i.aq to i64
  %i.bh = or i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.an, align 8, !tbaa !29
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !27
  %i.bi = getelementptr i8, ptr %i.ap, i64 7428   ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !34
  %i.bl = getelementptr i8, ptr %i.ap, i64 7656   ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !35
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !35
  %i.bo = getelementptr i8, ptr %i.ap, i64 7424
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !36
  %i.bq = icmp sgt i32 %i.bk, %i.bp
  br i1 %i.bq, label %bb.m, label %tuple_subtype_new.exit

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr i8, ptr %i.ap, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.br) #9
  br label %tuple_subtype_new.exit

bb.n:                                             ; preds = %bb.a
  br i1 %i.a, label %tuple_subtype_new.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = tail call ptr @PySequence_Tuple(ptr noundef nonnull %1) #9
  br label %tuple_subtype_new.exit

tuple_subtype_new.exit:                           ; preds = %bb.n, %Py_DECREF.exit.i, %tuple_new_impl.exit, %bb.e, %bb.d, %bb.c, %bb.l, %bb.m, %bb.o
  %.0 = phi ptr [ %i.bs, %bb.o ], [ %i.g, %bb.m ], [ null, %tuple_new_impl.exit ], [ %i.g, %Py_DECREF.exit.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ %i.g, %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.n ]
  ret ptr %.0
}

declare ptr @PySequence_Tuple(ptr noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoKwnames(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @tupleiter_len(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = sub i64 %.val, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call ptr @PyLong_FromSsize_t(i64 noundef %.0) #9
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @tupleiter_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyEval_GetBuiltin(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88752)) #9 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.23, ptr noundef %i.a, ptr noundef nonnull %i.c, i64 noundef %i.e) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.24, ptr noundef %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @tupleiter_setstate(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #9 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %.not1315 = icmp eq ptr %i.g, null
  br i1 %.not1315, label %bb.f, label %.thread16

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.a, 0
  br i1 %i.h, label %.thread16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val14 = load i64, ptr %i.i, align 8, !tbaa !45
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %.val14)
  br label %.thread16

.thread16:                                        ; preds = %bb.e, %.thread, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.e ], [ 0, %.thread ], [ 0, %bb.d ]
  %i.j = getelementptr i8, ptr %0, i64 16
  store i64 %.0, ptr %i.j, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %.thread16, %bb.b
  %.010 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.thread16 ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %.thread ]
  ret ptr %.010
}

declare ptr @_PyEval_GetBuiltin(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #2

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{null}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS3_is", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"_Py_freelist", !14, i64 0, !17, i64 8}
!17 = !{!"long", !9, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!16, !17, i64 8}
!20 = !{!21, !17, i64 24}
!21 = !{!"", !22, i64 0, !17, i64 24, !9, i64 32}
!22 = !{!"PyVarObject", !23, i64 0, !17, i64 16}
!23 = !{!"_object", !9, i64 0, !24, i64 8}
!24 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS7_object", !14, i64 0}
!27 = !{!28, !17, i64 8}
!28 = !{!"", !17, i64 0, !17, i64 8}
!29 = !{!28, !17, i64 0}
!30 = !{!31, !8, i64 272}
!31 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !32, i64 8, !9, i64 32, !32, i64 80, !9, i64 104, !8, i64 224, !33, i64 232, !26, i64 240, !26, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!32 = !{!"gc_generation", !28, i64 0, !8, i64 16, !8, i64 20}
!33 = !{!"p1 _ZTS19_PyInterpreterFrame", !14, i64 0}
!34 = !{!31, !8, i64 28}
!35 = !{!31, !17, i64 256}
!36 = !{!31, !8, i64 24}
!37 = !{!23, !24, i64 8}
!38 = !{!39, !17, i64 168}
!39 = !{!"_typeobject", !22, i64 0, !40, i64 24, !17, i64 32, !17, i64 40, !14, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !17, i64 168, !40, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !17, i64 208, !14, i64 216, !14, i64 224, !41, i64 232, !42, i64 240, !43, i64 248, !24, i64 256, !26, i64 264, !14, i64 272, !14, i64 280, !17, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !14, i64 360, !26, i64 368, !14, i64 376, !8, i64 384, !14, i64 392, !14, i64 400, !9, i64 408, !44, i64 410}
!40 = !{!"p1 omnipotent char", !14, i64 0}
!41 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!42 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!43 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!44 = !{!"short", !9, i64 0}
!45 = !{!22, !17, i64 16}
!46 = !{!9, !9, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !48}
!53 = distinct !{!53, !48, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !48, !54}
!59 = !{!17, !17, i64 0}
!60 = distinct !{null}
!61 = distinct !{!61, !48}
!62 = !{!39, !14, i64 320}
!63 = distinct !{!63, !48, !64}
!64 = !{!"llvm.loop.peeled.count", i32 1}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = !{!69, !17, i64 16}
!69 = !{!"", !23, i64 0, !17, i64 16, !14, i64 24}
!70 = !{!69, !14, i64 24}
!71 = !{!39, !14, i64 296}
!72 = distinct !{!72, !48}
!73 = !{!74, !14, i64 0}
!74 = !{!"_reftracer_runtime_state", !14, i64 0, !14, i64 8}
!75 = !{!74, !14, i64 8}
!76 = !{!39, !17, i64 32}
!77 = !{!39, !17, i64 40}
!78 = distinct !{!78, !48}
!79 = !{!39, !40, i64 24}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48, !54, !55}
!83 = distinct !{!83, !48, !55, !54}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = !{!39, !14, i64 96}
!88 = !{!89, !14, i64 264}
!89 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280}
!90 = distinct !{!90, !48}
!91 = distinct !{null, null}
!92 = distinct !{null}
!93 = distinct !{!93, !48}
!94 = distinct !{!94, !48}
!95 = distinct !{ptr @tuple_new_impl, null}
!96 = !{!39, !14, i64 304}
!97 = distinct !{null}
!98 = distinct !{!98, !48}
end_hunk_0
