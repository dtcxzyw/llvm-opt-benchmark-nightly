Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Python-ast?download=true
inline.NumInlined: 1007
inline.NumDeleted: 32
begin_hunk_0_@ast_type_init:bb.a
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.au, label %Py_XDECREF.exit169.thread

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %.5228) #9
  br label %Py_XDECREF.exit169.thread

Py_XDECREF.exit169.thread:                        ; preds = %bb.f, %Py_DECREF.exit148, %bb.t, %bb.au, %bb.at, %Py_DECREF.exit.thread222, %Py_DECREF.exit, %bb.b, %bb.c, %bb.e, %bb.h, %bb.i, %bb.j
  %.12219239 = phi i32 [ %.12227, %bb.at ], [ -1, %bb.e ], [ %.12227, %Py_DECREF.exit.thread222 ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.t ], [ -1, %bb.b ], [ -1, %bb.c ], [ %.12227, %bb.au ], [ %.12, %Py_DECREF.exit ], [ -1, %bb.f ], [ %i.ah, %Py_DECREF.exit148 ] ; 4 uses
  %.090220237 = phi ptr [ %i.s, %bb.at ], [ %i.s, %bb.e ], [ %i.s, %Py_DECREF.exit.thread222 ], [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.t ], [ null, %bb.b ], [ null, %bb.c ], [ %i.s, %bb.au ], [ %i.s, %Py_DECREF.exit ], [ %i.s, %Py_DECREF.exit148 ], [ %i.s, %bb.f ] ; 4 uses
  %i.dv = load i32, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %.not.i.i171 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i171, label %bb.av, label %Py_XDECREF.exit172

bb.av:                                            ; preds = %Py_XDECREF.exit169.thread
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.o, align 8, !tbaa !16
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aw, label %Py_XDECREF.exit172

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #9
  br label %Py_XDECREF.exit172

Py_XDECREF.exit172:                               ; preds = %Py_XDECREF.exit169.thread, %bb.av, %bb.aw
  %.not.i173 = icmp eq ptr %.090220237, null
  br i1 %.not.i173, label %Py_XDECREF.exit175, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit172
  %i.dy = load i32, ptr %.090220237, align 8, !tbaa !16 ; 2 uses
  %.not.i.i174 = icmp sgt i32 %i.dy, -1
  br i1 %.not.i.i174, label %bb.ay, label %Py_XDECREF.exit175

bb.ay:                                            ; preds = %bb.ax
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %.090220237, align 8, !tbaa !16
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.az, label %Py_XDECREF.exit175

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.090220237) #9
  br label %Py_XDECREF.exit175

.split106:                                        ; preds = %bb.ao, %bb.an, %.split, %bb.z
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !15
  call fastcc void @Py_XDECREF(ptr noundef %i.eb)
  br label %Py_DECREF.exit

Py_XDECREF.exit175:                               ; preds = %get_ast_state.exit.thread176, %bb.az, %bb.ay, %bb.ax, %Py_XDECREF.exit172
  %.089 = phi i32 [ -1, %get_ast_state.exit.thread176 ], [ %.12219239, %Py_XDECREF.exit172 ], [ %.12219239, %bb.ax ], [ %.12219239, %bb.ay ], [ %.12219239, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %get_ast_state.exit.thread

get_ast_state.exit.thread:                        ; preds = %_PyOnceFlag_CallOnce.exit.i, %Py_XDECREF.exit175
  %.1 = phi i32 [ %.089, %Py_XDECREF.exit175 ], [ -1, %_PyOnceFlag_CallOnce.exit.i ]
  ret i32 %.1
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #2

declare void @PyObject_GC_Del(ptr noundef) #2

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #2

declare ptr @PyType_GetSlot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ast_repr_max_depth(ptr noundef %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 80024    ; 3 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %get_ast_state.exit.thread136, label %_PyOnceFlag_CallOnce.exit.i

_PyOnceFlag_CallOnce.exit.i:                      ; preds = %bb.a
  %i.h = tail call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.e, ptr noundef nonnull @init_types, ptr noundef nonnull %i.e) #9, !inline_history !0
  %.fr.i = freeze i32 %i.h
  %i.i = icmp slt i32 %.fr.i, 0
  br i1 %i.i, label %get_ast_state.exit.thread, label %get_ast_state.exit.thread136

get_ast_state.exit.thread136:                     ; preds = %bb.a, %_PyOnceFlag_CallOnce.exit.i
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %get_ast_state.exit.thread136
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val128 = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.l = getelementptr i8, ptr %.val128, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !396
  %i.n = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.390, ptr noundef %i.m) #9
  br label %get_ast_state.exit.thread

bb.c:                                             ; preds = %get_ast_state.exit.thread136
  %i.o = tail call i32 @Py_ReprEnter(ptr noundef %0) #9 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %get_ast_state.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val127 = load ptr, ptr %i.q, align 8, !tbaa !127
  %i.r = getelementptr i8, ptr %.val127, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !396
  %i.t = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.390, ptr noundef %i.s) #9
  br label %get_ast_state.exit.thread

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.u = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val126 = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.v = getelementptr i8, ptr %i.d, i64 81184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !285
  %i.x = call i32 @PyObject_GetOptionalAttr(ptr noundef %.val126, ptr noundef %i.w, ptr noundef nonnull %i.b) #9
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @Py_ReprLeave(ptr noundef nonnull %0) #9
  br label %Py_DECREF.exit108

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.aa = call i64 @PySequence_Size(ptr noundef %i.z) #9 ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @Py_ReprLeave(ptr noundef nonnull %0) #9
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %.not.i107 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i107, label %bb.j, label %Py_DECREF.exit108

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !16
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %Py_DECREF.exit108

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #9
  br label %Py_DECREF.exit108

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %i.aa, 0
  br i1 %i.ag, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @Py_ReprLeave(ptr noundef nonnull %0) #9
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !16 ; 2 uses
  %.not.i105 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i105, label %bb.n, label %Py_DECREF.exit106

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !16
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %Py_DECREF.exit106

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #9
  br label %Py_DECREF.exit106

Py_DECREF.exit106:                                ; preds = %bb.m, %bb.n, %bb.o
  %.val125 = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.al = getelementptr i8, ptr %.val125, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !396
  %i.an = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.391, ptr noundef %i.am) #9
  br label %Py_DECREF.exit108

bb.p:                                             ; preds = %bb.l
  %.val124 = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.ao = getelementptr i8, ptr %.val124, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !396
  %i.aq = call ptr @PyUnicodeWriter_Create(i64 noundef 0) #9 ; 10 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %select.unfold152, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %i.aq, ptr noundef %i.ap, i64 noundef -1) #9
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %select.unfold152, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.aq, i32 noundef 40) #9
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %select.unfold152, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = add nsw i32 %1, -1                      ; 4 uses
  %i.ay = getelementptr i8, ptr %i.d, i64 80032
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

bb.s:                                             ; preds = %Py_DECREF.exit86
  %i.az = add nuw nsw i64 %.063168, 1             ; 2 uses
  %exitcond184.not = icmp eq i64 %i.az, %i.aa
  br i1 %exitcond184.not, label %._crit_edge, label %bb.t, !llvm.loop !428

bb.t:                                             ; preds = %.lr.ph169, %bb.s
  %.063168 = phi i64 [ 0, %.lr.ph169 ], [ %i.az, %bb.s ] ; 3 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bb = call ptr @PySequence_GetItem(ptr noundef %i.ba, i64 noundef %.063168) #9 ; 17 uses
  %.not76 = icmp eq ptr %i.bb, null
  br i1 %.not76, label %select.unfold152, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = call ptr @PyObject_GetAttr(ptr noundef %0, ptr noundef nonnull %i.bb) #9 ; 11 uses
  %.not77 = icmp eq ptr %i.bc, null
  br i1 %.not77, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %.not.i103 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i103, label %bb.w, label %select.unfold152

bb.w:                                             ; preds = %bb.v
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !16
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %select.unfold152.sink.split, label %select.unfold152

bb.x:                                             ; preds = %bb.u
  %i.bg = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  %.val123 = load ptr, ptr %i.bg, align 8, !tbaa !127 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val123, i64 168
  %.val130 = load i64, ptr %i.bh, align 8, !tbaa !133
  %i.bi = and i64 %.val130, 100663296
  %or.cond = icmp eq i64 %i.bi, 0
  br i1 %or.cond, label %bb.bb, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 80024  ; 3 uses
  %i.bl = load atomic i8, ptr %i.bk seq_cst, align 1
  %i.bm = icmp eq i8 %i.bl, 4
  br i1 %i.bm, label %get_ast_state.exit135.thread138, label %_PyOnceFlag_CallOnce.exit.i132

_PyOnceFlag_CallOnce.exit.i132:                   ; preds = %bb.y
  %i.bn = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.bk, ptr noundef nonnull @init_types, ptr noundef nonnull %i.bk) #9, !inline_history !429
  %.fr.i133 = freeze i32 %i.bn
  %i.bo = icmp slt i32 %.fr.i133, 0
  br i1 %i.bo, label %ast_repr_list.exit, label %get_ast_state.exit135.thread138

get_ast_state.exit135.thread138:                  ; preds = %bb.y, %_PyOnceFlag_CallOnce.exit.i132
  %i.bp = call i64 @PySequence_Size(ptr noundef nonnull %i.bc) #9, !inline_history !430
  %.fr170 = freeze i64 %i.bp                      ; 7 uses
  %i.bq = icmp slt i64 %.fr170, 0
  br i1 %i.bq, label %ast_repr_list.exit, label %bb.z

bb.z:                                             ; preds = %get_ast_state.exit135.thread138
  %i.br = icmp eq i64 %.fr170, 0
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = call ptr @PyObject_Repr(ptr noundef nonnull %i.bc) #9, !inline_history !430
  br label %ast_repr_list.exit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.bt = call ptr @PyUnicodeWriter_Create(i64 noundef 0) #9, !inline_history !430 ; 14 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.thread148, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = call ptr @PySequence_GetItem(ptr noundef nonnull %i.bc, i64 noundef 0) #9, !inline_history !430 ; 23 uses
  store ptr %i.bv, ptr %i.a, align 16, !tbaa !15
  %.not.i131 = icmp eq ptr %i.bv, null
  br i1 %.not.i131, label %.thread148, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not157 = icmp eq i64 %.fr170, 1
  br i1 %.not157, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = add nsw i64 %.fr170, -1
  %i.bx = call ptr @PySequence_GetItem(ptr noundef nonnull %i.bc, i64 noundef %i.bw) #9, !inline_history !430 ; 3 uses
  store ptr %i.bx, ptr %i.aw, align 8, !tbaa !15
  %.not51.i = icmp eq ptr %i.bx, null
  br i1 %.not51.i, label %.thread148, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.by = phi ptr [ %i.bx, %bb.ae ], [ null, %bb.ad ] ; 15 uses
  %.val57.i = load ptr, ptr %i.bg, align 8, !tbaa !127
  %i.bz = getelementptr i8, ptr %.val57.i, i64 168
  %.val58.i = load i64, ptr %i.bz, align 8, !tbaa !133
  %i.ca = and i64 %.val58.i, 33554432
  %.not52.i = icmp eq i64 %i.ca, 0                ; 2 uses
  %i.cb = select i1 %.not52.i, i32 40, i32 91
  %i.cc = call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.bt, i32 noundef %i.cb) #9, !inline_history !430
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.thread148, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.ce = call i64 @llvm.umin.i64(i64 %.fr170, i64 2)
  %i.cf = icmp samesign ugt i64 %.fr170, 2
  %i.cg = getelementptr i8, ptr %i.bj, i64 80032  ; 3 uses
  br i1 %i.cf, label %.lr.ph.split, label %.lr.ph.split.us.preheader._crit_edge

.lr.ph.split.us.preheader._crit_edge:             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.cg, align 8, !tbaa !159
  %.phi.trans.insert = getelementptr i8, ptr %i.bv, i64 8
  %.val.i.us.peel.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  %3 = call i32 @PyType_IsSubtype(ptr noundef %.val.i.us.peel.pre, ptr noundef %.pre) #9, !inline_history !430
  %.not54.i.us.peel = icmp eq i32 %3, 0
  br i1 %.not54.i.us.peel, label %13, label %4

4:                                                ; preds = %.lr.ph.split.us.preheader._crit_edge
  %5 = call fastcc ptr @ast_repr_max_depth(ptr noundef nonnull %i.bv, i32 noundef %i.ax), !inline_history !430 ; 5 uses
  %.not55.i.us.peel = icmp eq ptr %5, null
  br i1 %.not55.i.us.peel, label %.thread148, label %6

6:                                                ; preds = %4
  %7 = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.bt, ptr noundef nonnull %5) #9, !inline_history !430
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr %5, align 8, !tbaa !16       ; 2 uses
  %.not.i.i.us.peel = icmp sgt i32 %9, -1
  br i1 %.not.i.i.us.peel, label %bb.ag, label %12

bb.ag:                                            ; preds = %6
  %10 = add nsw i32 %9, -1                        ; 2 uses
  store i32 %10, ptr %5, align 8, !tbaa !16
  %i.ch = icmp eq i32 %10, 0
  br i1 %i.ch, label %11, label %12

11:                                               ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %5) #9, !inline_history !430
  br label %12

12:                                               ; preds = %11, %bb.ag, %6
  br i1 %8, label %.thread144.us.peel, label %.thread148

13:                                               ; preds = %.lr.ph.split.us.preheader._crit_edge
  %14 = call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv) #9, !inline_history !430
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %.thread148, label %.thread144.us.peel

.thread144.us.peel:                               ; preds = %13, %12
  %exitcond.not.peel = icmp eq i64 %.fr170, 1
  br i1 %exitcond.not.peel, label %.thread150, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.thread144.us.peel
  %i.ci = call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.392, i64 noundef 2) #9, !inline_history !430
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.thread148, label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph.split.us
  %i.ck = load ptr, ptr %2, align 8, !tbaa !15    ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val.i.us = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !159
  %i.cn = call i32 @PyType_IsSubtype(ptr noundef %.val.i.us, ptr noundef %i.cm) #9, !inline_history !430
  %.not54.i.us = icmp eq i32 %i.cn, 0
  br i1 %.not54.i.us, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge262
  %i.co = call fastcc ptr @ast_repr_max_depth(ptr noundef nonnull %i.ck, i32 noundef %i.ax), !inline_history !430 ; 5 uses
  %.not55.i.us = icmp eq ptr %i.co, null
  br i1 %.not55.i.us, label %.thread148, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.co) #9, !inline_history !430
  %i.cq = icmp sgt i32 %i.cp, -1
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.us = icmp sgt i32 %i.cr, -1
  br i1 %.not.i.i.us, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.co, align 8, !tbaa !16
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.co) #9, !inline_history !430
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  br i1 %i.cq, label %.thread150, label %.thread148

bb.am:                                            ; preds = %._crit_edge262
  %i.cu = call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.ck) #9, !inline_history !430
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread148, label %.thread150

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread144
  %.0.i167 = phi i64 [ %i.dn, %.thread144 ], [ 0, %.lr.ph ] ; 3 uses
  %.not53.i = icmp eq i64 %.0.i167, 0             ; 2 uses
  br i1 %.not53.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split
  %i.cw = call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.392, i64 noundef 2) #9, !inline_history !430
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.thread148, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.split
  %i.cy = getelementptr [8 x i8], ptr %i.a, i64 %.0.i167
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !15 ; 3 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %.val.i = load ptr, ptr %i.da, align 8, !tbaa !127
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !159
  %i.dc = call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef %i.db) #9, !inline_history !430
  %.not54.i = icmp eq i32 %i.dc, 0
  br i1 %.not54.i, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dd = call fastcc ptr @ast_repr_max_depth(ptr noundef nonnull %i.cz, i32 noundef %i.ax), !inline_history !430 ; 5 uses
  %.not55.i = icmp eq ptr %i.dd, null
  br i1 %.not55.i, label %.thread148, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.de = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.dd) #9, !inline_history !430
  %i.df = icmp sgt i32 %i.de, -1
  %i.dg = load i32, ptr %i.dd, align 8, !tbaa !16 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.dd, align 8, !tbaa !16
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.dd) #9, !inline_history !430
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  br i1 %i.df, label %bb.av, label %.thread148

bb.au:                                            ; preds = %bb.ao
  %i.dj = call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.cz) #9, !inline_history !430
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.thread148, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %.not53.i, label %bb.aw, label %.thread144

bb.aw:                                            ; preds = %bb.av
  %i.dl = call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.393, i64 noundef 5) #9, !inline_history !430
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %.thread148, label %.thread144

.thread144:                                       ; preds = %bb.aw, %bb.av
  %i.dn = add nuw nsw i64 %.0.i167, 1             ; 2 uses
  %exitcond183.not = icmp eq i64 %i.dn, %i.ce
  br i1 %exitcond183.not, label %.thread150, label %.lr.ph.split, !llvm.loop !431

.thread150:                                       ; preds = %.thread144, %.thread144.us.peel, %bb.al, %bb.am
  %i.do = select i1 %.not52.i, i32 41, i32 93
  %i.dp = call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.bt, i32 noundef %i.do) #9, !inline_history !430
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %.thread148, label %bb.ax

bb.ax:                                            ; preds = %.thread150
  %i.dr = load i32, ptr %i.bv, align 8, !tbaa !16 ; 2 uses
  %.not.i.i228 = icmp sgt i32 %i.dr, -1
  br i1 %.not.i.i228, label %bb.ay, label %Py_XDECREF.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.bv, align 8, !tbaa !16
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.az, label %Py_XDECREF.exit

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #9
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.ax, %bb.ay, %bb.az
  call fastcc void @Py_XDECREF(ptr noundef %i.by), !inline_history !430
  %i.du = call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.bt) #9, !inline_history !430
  br label %bb.ba

.thread148:                                       ; preds = %bb.an, %bb.au, %bb.aw, %bb.ap, %bb.at, %4, %12, %13, %bb.am, %bb.al, %bb.ah, %.lr.ph.split.us, %.thread150, %bb.af, %bb.ae, %bb.ac, %bb.ab
  %16 = phi ptr [ %i.by, %bb.al ], [ null, %bb.ab ], [ %i.by, %.thread150 ], [ %i.by, %bb.af ], [ null, %bb.ae ], [ null, %bb.ac ], [ %i.by, %bb.am ], [ %i.by, %13 ], [ %i.by, %12 ], [ %i.by, %4 ], [ %i.by, %.lr.ph.split.us ], [ %i.by, %bb.ah ], [ %i.by, %bb.at ], [ %i.by, %bb.ap ], [ %i.by, %bb.aw ], [ %i.by, %bb.au ], [ %i.by, %bb.an ]
  %17 = phi ptr [ %i.bv, %bb.al ], [ null, %bb.ab ], [ %i.bv, %.thread150 ], [ %i.bv, %bb.af ], [ %i.bv, %bb.ae ], [ null, %bb.ac ], [ %i.bv, %bb.am ], [ %i.bv, %13 ], [ %i.bv, %12 ], [ %i.bv, %4 ], [ %i.bv, %.lr.ph.split.us ], [ %i.bv, %bb.ah ], [ %i.bv, %bb.at ], [ %i.bv, %bb.ap ], [ %i.bv, %bb.aw ], [ %i.bv, %bb.au ], [ %i.bv, %bb.an ]
  call fastcc void @Py_XDECREF(ptr noundef %17), !inline_history !430
  call fastcc void @Py_XDECREF(ptr noundef %16), !inline_history !430
  call void @PyUnicodeWriter_Discard(ptr noundef %i.bt) #9, !inline_history !430
  br label %bb.ba

bb.ba:                                            ; preds = %.thread148, %Py_XDECREF.exit
  %.043.i = phi ptr [ null, %.thread148 ], [ %i.du, %Py_XDECREF.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %ast_repr_list.exit

bb.bb:                                            ; preds = %bb.x
  %i.dv = load ptr, ptr %i.ay, align 8, !tbaa !159
  %i.dw = call i32 @PyType_IsSubtype(ptr noundef nonnull %.val123, ptr noundef %i.dv) #9
  %.not80 = icmp eq i32 %i.dw, 0
  br i1 %.not80, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dx = call fastcc ptr @ast_repr_max_depth(ptr noundef nonnull %i.bc, i32 noundef %i.ax)
  br label %ast_repr_list.exit

bb.bd:                                            ; preds = %bb.bb
  %i.dy = call ptr @PyObject_Repr(ptr noundef nonnull %i.bc) #9
  br label %ast_repr_list.exit

ast_repr_list.exit:                               ; preds = %_PyOnceFlag_CallOnce.exit.i132, %bb.ba, %bb.aa, %get_ast_state.exit135.thread138, %bb.bc, %bb.bd
  %.0 = phi ptr [ %i.dy, %bb.bd ], [ %i.dx, %bb.bc ], [ null, %_PyOnceFlag_CallOnce.exit.i132 ], [ %.043.i, %bb.ba ], [ %i.bs, %bb.aa ], [ null, %get_ast_state.exit135.thread138 ] ; 14 uses
  %i.dz = load i32, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %.not.i101 = icmp sgt i32 %i.dz, -1
  br i1 %.not.i101, label %bb.be, label %Py_DECREF.exit102

bb.be:                                            ; preds = %ast_repr_list.exit
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.bc, align 8, !tbaa !16
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.bf, label %Py_DECREF.exit102

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #9
  br label %Py_DECREF.exit102

Py_DECREF.exit102:                                ; preds = %ast_repr_list.exit, %bb.be, %bb.bf
  %.not81 = icmp eq ptr %.0, null
  br i1 %.not81, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %Py_DECREF.exit102
  %i.ec = load i32, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %.not.i99 = icmp sgt i32 %i.ec, -1
  br i1 %.not.i99, label %bb.bh, label %select.unfold152

bb.bh:                                            ; preds = %bb.bg
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.bb, align 8, !tbaa !16
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %select.unfold152.sink.split, label %select.unfold152

bb.bi:                                            ; preds = %Py_DECREF.exit102
  %.not82 = icmp eq i64 %.063168, 0
  br i1 %.not82, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ef = call i32 @PyUnicodeWriter_WriteASCII(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.392, i64 noundef 2) #9
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.eh = load i32, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.eh, -1
  br i1 %.not.i97, label %bb.bl, label %Py_DECREF.exit98

bb.bl:                                            ; preds = %bb.bk
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.bb, align 8, !tbaa !16
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bm, label %Py_DECREF.exit98

bb.bm:                                            ; preds = %bb.bl
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #9
  br label %Py_DECREF.exit98

Py_DECREF.exit98:                                 ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.ek = load i32, ptr %.0, align 8, !tbaa !16   ; 2 uses
  %.not.i95 = icmp sgt i32 %i.ek, -1
  br i1 %.not.i95, label %bb.bn, label %select.unfold152

bb.bn:                                            ; preds = %Py_DECREF.exit98
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %.0, align 8, !tbaa !16
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %select.unfold152.sink.split, label %select.unfold152

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %i.en = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bb) #9
  %i.eo = icmp slt i32 %i.en, 0
  %i.ep = load i32, ptr %i.bb, align 8, !tbaa !16 ; 3 uses
  %.not.i93 = icmp sgt i32 %i.ep, -1              ; 2 uses
  br i1 %i.eo, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not.i93, label %bb.bq, label %Py_DECREF.exit94

bb.bq:                                            ; preds = %bb.bp
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.bb, align 8, !tbaa !16
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.br, label %Py_DECREF.exit94

bb.br:                                            ; preds = %bb.bq
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #9
  br label %Py_DECREF.exit94

Py_DECREF.exit94:                                 ; preds = %bb.bp, %bb.bq, %bb.br
  %i.es = load i32, ptr %.0, align 8, !tbaa !16   ; 2 uses
  %.not.i91 = icmp sgt i32 %i.es, -1
  br i1 %.not.i91, label %bb.bs, label %select.unfold152

bb.bs:                                            ; preds = %Py_DECREF.exit94
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %.0, align 8, !tbaa !16
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %select.unfold152.sink.split, label %select.unfold152

bb.bt:                                            ; preds = %bb.bo
  br i1 %.not.i93, label %bb.bu, label %Py_DECREF.exit90

bb.bu:                                            ; preds = %bb.bt
  %i.ev = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.bb, align 8, !tbaa !16
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bv, label %Py_DECREF.exit90

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #9
  br label %Py_DECREF.exit90

Py_DECREF.exit90:                                 ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.ex = call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.aq, i32 noundef 61) #9
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %Py_DECREF.exit90
  %i.ez = load i32, ptr %.0, align 8, !tbaa !16   ; 2 uses
  %.not.i87 = icmp sgt i32 %i.ez, -1
  br i1 %.not.i87, label %bb.bx, label %select.unfold152

bb.bx:                                            ; preds = %bb.bw
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %.0, align 8, !tbaa !16
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %select.unfold152.sink.split, label %select.unfold152

bb.by:                                            ; preds = %Py_DECREF.exit90
  %i.fc = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.aq, ptr noundef nonnull %.0) #9
  %i.fd = icmp slt i32 %i.fc, 0
  %i.fe = load i32, ptr %.0, align 8, !tbaa !16   ; 2 uses
  %.not.i85 = icmp sgt i32 %i.fe, -1
  br i1 %.not.i85, label %bb.bz, label %Py_DECREF.exit86

bb.bz:                                            ; preds = %bb.by
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %.0, align 8, !tbaa !16
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ca, label %Py_DECREF.exit86

bb.ca:                                            ; preds = %bb.bz
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #9
  br label %Py_DECREF.exit86

Py_DECREF.exit86:                                 ; preds = %bb.by, %bb.bz, %bb.ca
  br i1 %i.fd, label %select.unfold152, label %bb.s

._crit_edge:                                      ; preds = %bb.s
  %i.fh = call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.aq, i32 noundef 41) #9
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %select.unfold152, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge
  call void @Py_ReprLeave(ptr noundef %0) #9
  %i.fj = load ptr, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !16 ; 2 uses
  %.not.i83 = icmp sgt i32 %i.fk, -1
  br i1 %.not.i83, label %bb.cc, label %Py_DECREF.exit84

bb.cc:                                            ; preds = %bb.cb
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !16
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.cd, label %Py_DECREF.exit84

bb.cd:                                            ; preds = %bb.cc
  call void @_Py_Dealloc(ptr noundef nonnull %i.fj) #9
  br label %Py_DECREF.exit84

Py_DECREF.exit84:                                 ; preds = %bb.cb, %bb.cc, %bb.cd
  %i.fn = call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.aq) #9
  br label %Py_DECREF.exit108

select.unfold152.sink.split:                      ; preds = %bb.bx, %bb.bs, %bb.bn, %bb.bh, %bb.w
  %.0.lcssa225.sink = phi ptr [ %.0, %bb.bs ], [ %.0, %bb.bn ], [ %i.bb, %bb.bh ], [ %i.bb, %bb.w ], [ %.0, %bb.bx ]
  call void @_Py_Dealloc(ptr noundef nonnull %.0.lcssa225.sink) #9
  br label %select.unfold152

select.unfold152:                                 ; preds = %Py_DECREF.exit86, %bb.t, %select.unfold152.sink.split, %bb.bx, %bb.bw, %bb.bs, %Py_DECREF.exit94, %bb.bn, %Py_DECREF.exit98, %bb.bh, %bb.bg, %bb.w, %bb.v, %._crit_edge, %bb.r, %bb.q, %bb.p
end_hunk_0
