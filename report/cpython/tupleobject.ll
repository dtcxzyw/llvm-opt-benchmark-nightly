Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/tupleobject?download=true
inline.NumInlined: 195
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tuple_concat:bb.a
bb.d:                                             ; preds = %._crit_edge72
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.j = getelementptr i8, ptr %.val53, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
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
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !0
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i64 %i.s, 21
  br i1 %i.v, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr i8, ptr %i.x, i64 11200
  %i.z = getelementptr [16 x i8], ptr %i.y, i64 %i.s ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !17
  %i.ac = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !19
  tail call void @_Py_NewReference(ptr noundef nonnull %i.aa) #9, !inline_history !0
  br label %tuple_alloc.exit.thread60.sink.split

.critedge.i:                                      ; preds = %bb.l
  %i.af = icmp samesign ugt i64 %i.s, 1152921504606846971
  br i1 %i.af, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.m
  %i.ag = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %i.s) #9, !inline_history !0 ; 2 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread60.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.ah = tail call ptr @PyErr_NoMemory() #9, !inline_history !0 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread60

tuple_alloc.exit.thread60.sink.split:             ; preds = %.critedge.thread.i, %bb.n
  %.sink88 = phi ptr [ %i.aa, %bb.n ], [ %i.ag, %.critedge.thread.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.sink88, i64 24
  store i64 -1, ptr %i.aj, align 8, !tbaa !24
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
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 3 uses
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
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !26
  %i.aw = add nuw nsw i64 %.03965, 1              ; 2 uses
  %i.ax = icmp slt i64 %i.aw, %.val45
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !80

._crit_edge70:                                    ; preds = %_Py_NewRef.exit57, %._crit_edge
  %i.ay = getelementptr i8, ptr %.2.i62, i64 -16  ; 2 uses
  %i.az = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14 ; 7 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 7408
  %i.bc = getelementptr i8, ptr %i.ba, i64 7416   ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !29
  %i.bh = and i64 %i.bg, 3
  %i.bi = or i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !29
  %i.bj = getelementptr i8, ptr %.2.i62, i64 -8   ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !28
  %i.bl = and i64 %i.bk, 3
  %i.bm = or i64 %i.bl, %i.bd
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !28
  %i.bn = getelementptr i8, ptr %i.ba, i64 7672
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !33
  %i.bp = xor i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = ptrtoint ptr %i.bb to i64
  %i.bs = or i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.ay, align 8, !tbaa !29
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !28
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26 ; 3 uses
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
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !26
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
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !0
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.h
  %i.n = icmp samesign ult i64 %i.l, 21
  br i1 %i.n, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr i8, ptr %i.p, i64 11200
  %i.r = getelementptr [16 x i8], ptr %i.q, i64 %i.l ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  store ptr %i.t, ptr %i.r, align 8, !tbaa !17
  %i.u = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !19
  tail call void @_Py_NewReference(ptr noundef nonnull %i.s) #9, !inline_history !0
  br label %tuple_alloc.exit.thread53.sink.split

.critedge.i:                                      ; preds = %bb.j
  %i.x = icmp samesign ugt i64 %i.l, 1152921504606846971
  br i1 %i.x, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.k
  %i.y = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %i.l) #9, !inline_history !0 ; 2 uses
  %.not18.i = icmp eq ptr %i.y, null
  br i1 %.not18.i, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread53.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.z = tail call ptr @PyErr_NoMemory() #9, !inline_history !0 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_Py_NewRef.exit, label %tuple_alloc.exit.thread53

tuple_alloc.exit.thread53.sink.split:             ; preds = %.critedge.thread.i, %bb.l
  %.sink77 = phi ptr [ %i.s, %bb.l ], [ %i.y, %.critedge.thread.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sink77, i64 24
  store i64 -1, ptr %i.ab, align 8, !tbaa !24
  br label %tuple_alloc.exit.thread53

tuple_alloc.exit.thread53:                        ; preds = %tuple_alloc.exit.thread53.sink.split, %tuple_alloc.exit
  %.2.i55 = phi ptr [ %i.z, %tuple_alloc.exit ], [ %.sink77, %tuple_alloc.exit.thread53.sink.split ] ; 5 uses
  %i.ac = getelementptr i8, ptr %.2.i55, i64 32   ; 6 uses
  %i.ad = icmp eq i64 %.val, 1
  %i.ae = getelementptr i8, ptr %0, i64 32        ; 4 uses
  br i1 %i.ad, label %bb.m, label %bb.o

bb.m:                                             ; preds = %tuple_alloc.exit.thread53
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
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
  br i1 %i.an, label %.lr.ph60, label %_Py_memory_repeat.exit

.lr.ph60:                                         ; preds = %_Py_RefcntAdd.exit, %.lr.ph60
  %.04259 = phi ptr [ %i.ao, %.lr.ph60 ], [ %i.ac, %_Py_RefcntAdd.exit ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.04259, i64 8    ; 2 uses
  store ptr %i.af, ptr %.04259, align 8, !tbaa !26
  %i.ap = icmp ult ptr %i.ao, %i.am
  br i1 %i.ap, label %.lr.ph60, label %_Py_memory_repeat.exit, !llvm.loop !82

bb.o:                                             ; preds = %tuple_alloc.exit.thread53
  %i.aq = getelementptr [8 x i8], ptr %i.ae, i64 %.val ; 2 uses
  %i.ar = icmp ult ptr %i.ae, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o, %_Py_RefcntAdd.exit50.a
  %.058 = phi ptr [ %i.ba, %_Py_RefcntAdd.exit50.a ], [ %i.ae, %bb.o ] ; 3 uses
  %.157 = phi ptr [ %i.bb, %_Py_RefcntAdd.exit50.a ], [ %i.ac, %bb.o ] ; 2 uses
  %i.as = load ptr, ptr %.058, align 8, !tbaa !26 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.at, -1
  br i1 %.not.i49, label %bb.p, label %_Py_RefcntAdd.exit50.a

bb.p:                                             ; preds = %.lr.ph
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nuw i64 %1, %i.au                   ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 2147483647
  %i.ax = trunc i64 %i.av to i32
  %i.ay = select i1 %i.aw, i32 -1073741824, i32 %i.ax
  store i32 %i.ay, ptr %i.as, align 8, !tbaa !46
  %.pre.a = load ptr, ptr %.058, align 8, !tbaa !26
  br label %_Py_RefcntAdd.exit50.a

_Py_RefcntAdd.exit50.a:                           ; preds = %.lr.ph, %bb.p
  %i.az = phi ptr [ %i.as, %.lr.ph ], [ %.pre.a, %bb.p ]
  %i.ba = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %i.bb = getelementptr i8, ptr %.157, i64 8
  store ptr %i.az, ptr %.157, align 8, !tbaa !26
  %i.bc = icmp ult ptr %i.ba, %i.aq
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %_Py_RefcntAdd.exit50.a, %bb.o
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
  br i1 %i.bk, label %.lr.ph.i, label %_Py_memory_repeat.exit, !llvm.loop !84

_Py_memory_repeat.exit:                           ; preds = %.lr.ph.i, %.lr.ph60, %_Py_RefcntAdd.exit, %._crit_edge
  %i.bl = getelementptr i8, ptr %.2.i55, i64 -16  ; 2 uses
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14 ; 7 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 7408
  %i.bp = getelementptr i8, ptr %i.bn, i64 7416   ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !29
  %i.bu = and i64 %i.bt, 3
  %i.bv = or i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !29
  %i.bw = getelementptr i8, ptr %.2.i55, i64 -8   ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !28
  %i.by = and i64 %i.bx, 3
  %i.bz = or i64 %i.by, %i.bq
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !28
  %i.ca = getelementptr i8, ptr %i.bn, i64 7672
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !33
  %i.cc = xor i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = ptrtoint ptr %i.bo to i64
  %i.cf = or i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bl, align 8, !tbaa !29
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !28
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
  %i.c = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.1) #9
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 4 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.e, ptr noundef %1, i32 noundef 2) #9 ; 2 uses
  %i.g = add nuw nsw i64 %.010, 1
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !85
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  %.not63 = icmp eq ptr %i.g, null
  br i1 %.not63, label %_PyIndex_Check.exit.thread, label %bb.b

bb.b:                                             ; preds = %_PyIndex_Check.exit
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
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
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.1) #9
  br label %tuple_item.exit

bb.f:                                             ; preds = %.thread54
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.03556
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %tuple_item.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %i.t, 1
  store i32 %i.v, ptr %i.s, align 8, !tbaa !46
end_hunk_0
