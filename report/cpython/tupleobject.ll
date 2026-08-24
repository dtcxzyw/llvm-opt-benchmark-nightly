Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/tupleobject?download=true
inline.NumInlined: 195
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tuple_concat:bb.a
bb.d:                                             ; preds = %._crit_edge72
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  %i.j = getelementptr i8, ptr %.val53, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.9, ptr noundef %i.k) #9 ; 0 uses
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %._crit_edge72
  %i.m = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val48 = load i64, ptr %i.m, align 8, !tbaa !45 ; 2 uses
  %i.n = icmp eq i64 %.val48, 0
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val52 = load ptr, ptr %i.o, align 8, !tbaa !37
  %.not63 = icmp eq ptr %.val52, @PyTuple_Type
  br i1 %.not63, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %0, align 8, !tbaa !46
  br label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = add i64 %.val48, %.val49                 ; 6 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_Py_NewRef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !11
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i64 %i.s, 21
  br i1 %i.v, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr i8, ptr %i.x, i64 11200
  %i.z = getelementptr [16 x i8], ptr %i.y, i64 %i.s ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !19
  tail call void @_Py_NewReference(ptr noundef nonnull %i.aa) #9, !inline_history !11
  br label %tuple_alloc.exit.thread60.sink.split

.critedge.i:                                      ; preds = %bb.l
  %i.af = icmp samesign ugt i64 %i.s, 1152921504606846971
  br i1 %i.af, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.m
  %i.ag = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %i.s) #9, !inline_history !11 ; 2 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread60.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.ah = tail call ptr @PyErr_NoMemory() #9, !inline_history !11 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread60

tuple_alloc.exit.thread60.sink.split:             ; preds = %.critedge.thread.i, %bb.n
  %.sink88 = phi ptr [ %i.aa, %bb.n ], [ %i.ag, %.critedge.thread.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.sink88, i64 24
  store i64 -1, ptr %i.aj, align 8, !tbaa !20
  br label %tuple_alloc.exit.thread60

tuple_alloc.exit.thread60:                        ; preds = %tuple_alloc.exit.thread60.sink.split, %tuple_alloc.exit
  %.2.i62 = phi ptr [ %i.ah, %tuple_alloc.exit ], [ %.sink88, %tuple_alloc.exit.thread60.sink.split ] ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 32
  %i.al = getelementptr i8, ptr %.2.i62, i64 32   ; 2 uses
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
  %i.ao = add i64 %7, -33
  %8 = sub i64 %i.ao, %2                          ; 2 uses
  %9 = lshr i64 %8, 3
  %i.ap = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  br i1 %min.iters.check, label %.lr.ph60.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !25
  store <2 x ptr> %broadcast.splat, ptr %i.at, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit, label %.lr.ph60.preheader79

.lr.ph60.preheader79:                             ; preds = %.lr.ph60.preheader, %middle.block
  %.04259.ph = phi ptr [ %i.ac, %.lr.ph60.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader79, %.lr.ph60
  %.04259 = phi ptr [ %i.av, %.lr.ph60 ], [ %.04259.ph, %.lr.ph60.preheader79 ] ; 2 uses
  %i.av = getelementptr i8, ptr %.04259, i64 8    ; 2 uses
  store ptr %i.af, ptr %.04259, align 8, !tbaa !25
  %i.aw = icmp ult ptr %i.av, %i.am
  br i1 %i.aw, label %.lr.ph60, label %_Py_memory_repeat.exit, !llvm.loop !83

bb.o:                                             ; preds = %tuple_alloc.exit.thread53
  %i.ax = getelementptr [8 x i8], ptr %i.ae, i64 %.val ; 2 uses
  %i.ay = icmp ult ptr %i.ae, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o, %_Py_RefcntAdd.exit50.a
  %.058 = phi ptr [ %i.bh, %_Py_RefcntAdd.exit50.a ], [ %i.ae, %bb.o ] ; 3 uses
  %.157 = phi ptr [ %i.bi, %_Py_RefcntAdd.exit50.a ], [ %i.ac, %bb.o ] ; 2 uses
  %i.az = load ptr, ptr %.058, align 8, !tbaa !25 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !46 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.ba, -1
  br i1 %.not.i49, label %bb.p, label %_Py_RefcntAdd.exit50.a

bb.p:                                             ; preds = %.lr.ph
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add nuw i64 %1, %i.bb                   ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 2147483647
  %i.be = trunc i64 %i.bc to i32
  %i.bf = select i1 %i.bd, i32 -1073741824, i32 %i.be
  store i32 %i.bf, ptr %i.az, align 8, !tbaa !46
  %.pre.a = load ptr, ptr %.058, align 8, !tbaa !25
  br label %_Py_RefcntAdd.exit50.a

_Py_RefcntAdd.exit50.a:                           ; preds = %.lr.ph, %bb.p
  %i.bg = phi ptr [ %i.az, %.lr.ph ], [ %.pre.a, %bb.p ]
  %i.bh = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %i.bi = getelementptr i8, ptr %.157, i64 8
  store ptr %i.bg, ptr %.157, align 8, !tbaa !25
  %i.bj = icmp ult ptr %i.bh, %i.ax
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %_Py_RefcntAdd.exit50.a, %bb.o
  %i.bk = shl i64 %i.l, 3                         ; 3 uses
  %i.bl = shl i64 %.val, 3                        ; 2 uses
  %i.bm = icmp slt i64 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph.i, label %_Py_memory_repeat.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.015.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %i.bl, %._crit_edge ] ; 4 uses
  %i.bn = sub i64 %i.bk, %.015.i
  %i.bo = tail call i64 @llvm.smin.i64(i64 %.015.i, i64 %i.bn) ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ac, i64 %.015.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.ac, i64 %i.bo, i1 false)
  %i.bq = add i64 %i.bo, %.015.i                  ; 2 uses
  %i.br = icmp slt i64 %i.bq, %i.bk
  br i1 %i.br, label %.lr.ph.i, label %_Py_memory_repeat.exit, !llvm.loop !85

_Py_memory_repeat.exit:                           ; preds = %.lr.ph.i, %.lr.ph60, %middle.block, %_Py_RefcntAdd.exit, %._crit_edge
  %i.bs = getelementptr i8, ptr %.2.i55, i64 -16  ; 2 uses
  %i.bt = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 7 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 7408
  %i.bw = getelementptr i8, ptr %i.bu, i64 7416   ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !27 ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !29
  %i.cb = and i64 %i.ca, 3
  %i.cc = or i64 %i.cb, %i.bz
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !29
  %i.cd = getelementptr i8, ptr %.2.i55, i64 -8   ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27
  %i.cf = and i64 %i.ce, 3
  %i.cg = or i64 %i.cf, %i.bx
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !27
  %i.ch = getelementptr i8, ptr %i.bu, i64 7672
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !30
  %i.cj = xor i32 %i.ci, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = ptrtoint ptr %i.bv to i64
  %i.cm = or i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.bs, align 8, !tbaa !29
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !27
  %i.cn = getelementptr i8, ptr %i.bu, i64 7428   ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !34
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !34
  %i.cq = getelementptr i8, ptr %i.bu, i64 7656   ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !35
  %i.ct = getelementptr i8, ptr %i.bu, i64 7424
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !36
  %i.cv = icmp sgt i32 %i.cp, %i.cu
  br i1 %i.cv, label %bb.q, label %_Py_NewRef.exit

bb.q:                                             ; preds = %_Py_memory_repeat.exit
  %i.cw = getelementptr i8, ptr %i.bu, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.cw) #9
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
end_hunk_0
begin_hunk_1_@tuple_new_impl:bb.a
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
end_hunk_1
