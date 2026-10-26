Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codeobject?download=true
inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@code_dealloc:bb.a
bb.ba:                                            ; preds = %Py_XDECREF.exit68, %Py_XDECREF.exit80
  %i.db = getelementptr i8, ptr %0, i64 144
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !247
  %.not40 = icmp eq ptr %i.dc, null
  br i1 %.not40, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dd = getelementptr i8, ptr %0, i64 176
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !162 ; 7 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %free_monitoring_data.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dg = getelementptr i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !248 ; 2 uses
  %.not.i81 = icmp eq ptr %i.dh, null
  br i1 %.not.i81, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @PyMem_Free(ptr noundef nonnull %i.dh) #14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.di = getelementptr i8, ptr %i.de, i64 96
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !165 ; 2 uses
  %.not17.i = icmp eq ptr %i.dj, null
  br i1 %.not17.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @PyMem_Free(ptr noundef nonnull %i.dj) #14
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.dk = getelementptr i8, ptr %i.de, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !249 ; 2 uses
  %.not18.i = icmp eq ptr %i.dl, null
  br i1 %.not18.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @PyMem_Free(ptr noundef nonnull %i.dl) #14
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.dm = getelementptr i8, ptr %i.de, i64 112
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !250 ; 2 uses
  %.not19.i = icmp eq ptr %i.dn, null
  br i1 %.not19.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @PyMem_Free(ptr noundef nonnull %i.dn) #14
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.do = getelementptr i8, ptr %i.de, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !251 ; 2 uses
  %.not20.i = icmp eq ptr %i.dp, null
  br i1 %.not20.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @PyMem_Free(ptr noundef nonnull %i.dp) #14
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  tail call void @PyMem_Free(ptr noundef nonnull %i.de) #14
  br label %free_monitoring_data.exit

free_monitoring_data.exit:                        ; preds = %bb.bc, %bb.bn
  tail call void @PyObject_Free(ptr noundef nonnull %0) #14
  br label %_PyObject_ResurrectEnd.exit.thread

_PyObject_ResurrectEnd.exit.thread:               ; preds = %notify_code_watchers.exit, %_PyObject_ResurrectEnd.exit, %free_monitoring_data.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @code_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i32 -1, i32 %i.b          ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 3 uses
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val17 = load i64, ptr %i.f, align 8, !tbaa !128
  %i.g = and i64 %.val17, 268435456
  %.not16 = icmp eq i64 %i.g, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.j = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.26, ptr noundef %i.i, ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef %.) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.m = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.27, ptr noundef %i.l, ptr noundef nonnull %0, i32 noundef %.) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.012 = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define internal i64 @code_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.c = tail call i64 @PyObject_Hash(ptr noundef %i.b) #14 ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.f = tail call i64 @PyObject_Hash(ptr noundef %i.e) #14 ; 2 uses
  %.not92 = icmp eq i64 %i.f, -1
  br i1 %.not92, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.i = tail call i64 @PyObject_Hash(ptr noundef %i.h) #14 ; 2 uses
  %.not93 = icmp eq i64 %i.i, -1
  br i1 %.not93, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153
  %i.l = tail call i64 @PyObject_Hash(ptr noundef %i.k) #14 ; 2 uses
  %.not94 = icmp eq i64 %i.l, -1
  br i1 %.not94, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.o = tail call i64 @PyObject_Hash(ptr noundef %i.n) #14 ; 2 uses
  %.not95 = icmp eq i64 %i.o, -1
  br i1 %.not95, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.r = tail call i64 @PyObject_Hash(ptr noundef %i.q) #14 ; 2 uses
  %.not96 = icmp eq i64 %i.r, -1
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = xor i64 %i.c, 20221211
  %i.t = mul i64 %i.s, 1000003
  %i.u = xor i64 %i.f, %i.t
  %i.v = mul i64 %i.u, 1000003
  %i.w = xor i64 %i.i, %i.v
  %i.x = mul i64 %i.w, 1000003
  %i.y = xor i64 %i.l, %i.x
  %i.z = mul i64 %i.y, 1000003
  %i.aa = xor i64 %i.o, %i.z
  %i.ab = mul i64 %i.aa, 1000003
  %i.ac = xor i64 %i.r, %i.ab
  %i.ad = mul i64 %i.ac, 1000003
  %i.ae = getelementptr i8, ptr %0, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !195
  %i.ag = sext i32 %i.af to i64
  %i.ah = xor i64 %i.ad, %i.ag
  %i.ai = mul i64 %i.ah, 1000003
  %i.aj = getelementptr i8, ptr %0, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !196
  %i.al = sext i32 %i.ak to i64
  %i.am = xor i64 %i.ai, %i.al
  %i.an = mul i64 %i.am, 1000003
  %i.ao = getelementptr i8, ptr %0, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !197
  %i.aq = sext i32 %i.ap to i64
  %i.ar = xor i64 %i.an, %i.aq
  %i.as = mul i64 %i.ar, 1000003
  %i.at = getelementptr i8, ptr %0, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !147
  %i.av = sext i32 %i.au to i64
  %i.aw = xor i64 %i.as, %i.av
  %i.ax = mul i64 %i.aw, 1000003
  %i.ay = getelementptr i8, ptr %0, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !149
  %i.ba = sext i32 %i.az to i64
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = mul i64 %i.bb, 1000003
  %i.bd = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val97 = load i64, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.be = xor i64 %i.bc, %.val97
  %.68698 = mul i64 %i.be, 1000003                ; 2 uses
  %i.bf = icmp sgt i64 %.val97, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.686.lcssa = phi i64 [ %.68698, %bb.g ], [ %.686, %.lr.ph ]
  %..686 = tail call i64 @llvm.umin.i64(i64 %.686.lcssa, i64 -2)
  br label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.686101 = phi i64 [ %.686, %.lr.ph ], [ %.68698, %bb.g ]
  %.073100 = phi i32 [ %i.bq, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.bg = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef nonnull %0, i32 noundef %.073100) #14 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.bg, 8
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %i.bh = and i16 %i.bg, 255
  %i.bi = zext nneg i16 %i.bh to i64              ; 2 uses
  %i.bj = xor i64 %.686101, %i.bi
  %i.bk = mul i64 %i.bj, 1000003
  %i.bl = xor i64 %i.bk, %.sroa.5.0.extract.trunc
  %i.bm = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !114
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %.073100, 1
  %i.bq = add i32 %i.bp, %i.bo                    ; 2 uses
  %.686 = mul i64 %i.bl, 1000003                  ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %.val = load i64, ptr %i.bd, align 8, !tbaa !133
  %i.bs = icmp sgt i64 %.val, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !252

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.6 = phi i64 [ %..686, %._crit_edge ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i64 %.6
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @code_richcompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = add i32 %2, -4
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %Py_DECREF.exit88, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val94 = load ptr, ptr %i.b, align 8, !tbaa !122
  %.not = icmp eq ptr %.val94, @PyCode_Type
  br i1 %.not, label %bb.c, label %Py_DECREF.exit88

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val93 = load ptr, ptr %i.c, align 8, !tbaa !122
  %.not102 = icmp eq ptr %.val93, @PyCode_Type
  br i1 %.not102, label %bb.d, label %Py_DECREF.exit88

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = getelementptr i8, ptr %1, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.h = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.e, ptr noundef %i.g, i32 noundef 2) #14
  %.not80 = icmp eq i32 %i.h, 0
  br i1 %.not80, label %.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !195
  %i.k = getelementptr i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !195
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread100

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !196
  %i.p = getelementptr i8, ptr %1, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !196
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %.thread100

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !197
  %i.u = getelementptr i8, ptr %1, i64 60
  %i.v = load i32, ptr %i.u, align 4, !tbaa !197
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.h, label %.thread100

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %0, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !147
  %i.z = getelementptr i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !147
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %.thread100

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !149
  %i.ae = getelementptr i8, ptr %1, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !149
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %.thread100

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val92 = load i64, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 16
  %.val91 = load i64, ptr %i.ai, align 8, !tbaa !133
  %i.aj = icmp eq i64 %.val92, %.val91
  br i1 %i.aj, label %.preheader, label %.thread100

.preheader:                                       ; preds = %bb.j
  %i.ak = icmp sgt i64 %.val92, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.0104 = phi i32 [ %i.at, %bb.k ], [ 0, %.preheader ] ; 3 uses
  %i.al = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef nonnull %0, i32 noundef %.0104) #14 ; 2 uses
  %i.am = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef %1, i32 noundef %.0104) #14
  %.not81 = icmp eq i16 %i.al, %i.am
  br i1 %.not81, label %bb.k, label %.thread100

bb.k:                                             ; preds = %.lr.ph
  %i.an = and i16 %i.al, 255
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !114
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %.0104, 1
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.val = load i64, ptr %i.ah, align 8, !tbaa !133
  %i.av = icmp sgt i64 %.val, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !253

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.aw = getelementptr i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !151
  %i.ay = tail call ptr @_PyCode_ConstantKey(ptr noundef %i.ax) ; 8 uses
  %.not82 = icmp eq ptr %i.ay, null
  br i1 %.not82, label %Py_DECREF.exit88, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.az = getelementptr i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !151
  %i.bb = tail call ptr @_PyCode_ConstantKey(ptr noundef %i.ba) ; 5 uses
  %.not83 = icmp eq ptr %i.bb, null
  br i1 %.not83, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.ay, align 8, !tbaa !114 ; 2 uses
  %.not.i87 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i87, label %bb.n, label %Py_DECREF.exit88

bb.n:                                             ; preds = %bb.m
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.ay, align 8, !tbaa !114
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %Py_DECREF.exit88

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #14
  br label %Py_DECREF.exit88

bb.p:                                             ; preds = %bb.l
  %i.bf = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bb, i32 noundef 2) #14 ; 2 uses
  %i.bg = load i32, ptr %i.ay, align 8, !tbaa !114 ; 2 uses
  %.not.i85 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i85, label %bb.q, label %Py_DECREF.exit86

bb.q:                                             ; preds = %bb.p
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.ay, align 8, !tbaa !114
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %Py_DECREF.exit86

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #14
  br label %Py_DECREF.exit86

Py_DECREF.exit86:                                 ; preds = %bb.p, %bb.q, %bb.r
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %Py_DECREF.exit86
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.bb, align 8, !tbaa !114
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit86, %bb.s, %bb.t
  %i.bm = icmp slt i32 %i.bf, 1
  br i1 %i.bm, label %bb.y, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit
  %i.bn = getelementptr i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !152
  %i.bp = getelementptr i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !152
  %i.br = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.bo, ptr noundef %i.bq, i32 noundef 2) #14 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr i8, ptr %0, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !153
  %i.bv = getelementptr i8, ptr %1, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !153
  %i.bx = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.bu, ptr noundef %i.bw, i32 noundef 2) #14 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %bb.y, label %bb.w

end_hunk_0
begin_hunk_1_@code_new_impl:bb.a
  br i1 %i.q, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not60 = icmp eq ptr %17, null
  br i1 %.not60, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = tail call fastcc ptr @validate_and_copy_tuple(ptr noundef nonnull %17)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.s = tail call ptr @PyTuple_New(i64 noundef 0) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.r, %bb.q ], [ %i.s, %bb.r ]  ; 3 uses
  %i.t = icmp eq ptr %.0, null
  br i1 %i.t, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.u = tail call ptr @PyUnstable_Code_NewWithPosOnlyArgs(i32 noundef %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %.045, ptr noundef nonnull readonly %.0, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15), !inline_history !2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k, %bb.o, %bb.s
  %.049 = phi ptr [ null, %bb.s ], [ %i.u, %bb.t ], [ null, %bb.k ], [ null, %bb.o ] ; 4 uses
  %.146 = phi ptr [ %.045, %bb.s ], [ %.045, %bb.t ], [ null, %bb.k ], [ null, %bb.o ] ; 4 uses
  %.1 = phi ptr [ null, %bb.s ], [ %.0, %bb.t ], [ null, %bb.k ], [ null, %bb.o ] ; 4 uses
  %i.v = load i32, ptr %i.k, align 8, !tbaa !114  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.k, align 8, !tbaa !114
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.w, label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.u, %bb.v, %bb.w
  br i1 %i.n, label %Py_XDECREF.exit63, label %bb.x

bb.x:                                             ; preds = %Py_XDECREF.exit
  %i.y = load i32, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %.not.i.i62 = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i62, label %bb.y, label %Py_XDECREF.exit63

bb.y:                                             ; preds = %bb.x
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.m, align 8, !tbaa !114
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.z, label %Py_XDECREF.exit63

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #14
  br label %Py_XDECREF.exit63

Py_XDECREF.exit63:                                ; preds = %Py_XDECREF.exit, %bb.x, %bb.y, %bb.z
  %.not.i64 = icmp eq ptr %.146, null
  br i1 %.not.i64, label %Py_XDECREF.exit66, label %bb.aa

bb.aa:                                            ; preds = %Py_XDECREF.exit63
  %i.ab = load i32, ptr %.146, align 8, !tbaa !114 ; 2 uses
  %.not.i.i65 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i65, label %bb.ab, label %Py_XDECREF.exit66

bb.ab:                                            ; preds = %bb.aa
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.146, align 8, !tbaa !114
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.ac, label %Py_XDECREF.exit66

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.146) #14
  br label %Py_XDECREF.exit66

Py_XDECREF.exit66:                                ; preds = %Py_XDECREF.exit63, %bb.aa, %bb.ab, %bb.ac
  %.not.i67 = icmp eq ptr %.1, null
  br i1 %.not.i67, label %Py_XDECREF.exit69, label %bb.ad

bb.ad:                                            ; preds = %Py_XDECREF.exit66
  %i.ae = load i32, ptr %.1, align 8, !tbaa !114  ; 2 uses
  %.not.i.i68 = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i68, label %bb.ae, label %Py_XDECREF.exit69

bb.ae:                                            ; preds = %bb.ad
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %.1, align 8, !tbaa !114
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.af, label %Py_XDECREF.exit69

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #14
  br label %Py_XDECREF.exit69

Py_XDECREF.exit69:                                ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.j, %Py_XDECREF.exit66, %bb.ad, %bb.ae, %bb.af
  %.0497182328 = phi ptr [ %.049, %bb.af ], [ %.049, %Py_XDECREF.exit66 ], [ %.049, %bb.ad ], [ %.049, %bb.ae ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0497182328
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @validate_and_copy_tuple(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val30 = load i64, ptr %i.a, align 8, !tbaa !133 ; 3 uses
  %i.b = tail call ptr @PyTuple_New(i64 noundef %.val30) #14 ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit26, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i64 %.val30, 0
  br i1 %i.d, label %.lr.ph, label %Py_DECREF.exit26

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = getelementptr i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Py_INCREF.exit
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %Py_INCREF.exit ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.033
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val31 = load ptr, ptr %i.i, align 8, !tbaa !122 ; 3 uses
  %.not = icmp eq ptr %.val31, @PyUnicode_Type
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %i.h, align 8, !tbaa !114
  br label %Py_INCREF.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val31, i64 168
  %.val29 = load i64, ptr %i.m, align 8, !tbaa !128
  %i.n = and i64 %.val29, 268435456
  %.not24 = icmp eq i64 %i.n, 0
  br i1 %.not24, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !113
  %i.p = getelementptr i8, ptr %.val31, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !283
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.98, ptr noundef %i.q) #14 ; 0 uses
  %i.s = load i32, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not.i25 = icmp sgt i32 %i.s, -1
  br i1 %.not.i25, label %bb.g, label %Py_DECREF.exit26

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.b, align 8, !tbaa !114
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit26.sink.split, label %Py_DECREF.exit26

bb.h:                                             ; preds = %bb.e
  %i.v = tail call ptr @_PyUnicode_Copy(ptr noundef nonnull %i.h) #14 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %Py_INCREF.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit26

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.b, align 8, !tbaa !114
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %Py_DECREF.exit26.sink.split, label %Py_DECREF.exit26

Py_INCREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.h
  %.020 = phi ptr [ %i.v, %bb.h ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %i.aa = getelementptr [8 x i8], ptr %i.f, i64 %.033
  store ptr %.020, ptr %i.aa, align 8, !tbaa !113
  %i.ab = add nuw nsw i64 %.033, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %.val30
  br i1 %exitcond.not, label %Py_DECREF.exit26, label %bb.b, !llvm.loop !282

Py_DECREF.exit26.sink.split:                      ; preds = %bb.j, %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #14
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %Py_INCREF.exit, %Py_DECREF.exit26.sink.split, %.preheader, %bb.j, %bb.i, %bb.g, %bb.f, %bb.a
  %.021 = phi ptr [ null, %bb.a ], [ %i.b, %.preheader ], [ null, %Py_DECREF.exit26.sink.split ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ %i.b, %Py_INCREF.exit ]
  ret ptr %.021
}

declare ptr @_PyUnicode_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !139}
!1 = distinct !{!1, !139}
!2 = distinct !{null}
!3 = distinct !{!3, !139}
!4 = distinct !{!4, !139}
!5 = distinct !{!5, !139}
!6 = distinct !{!6, !139}
!7 = distinct !{!7, !139}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !16, i64 0}
!20 = !{!"p1 _ZTS3_is", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!"long", !16, i64 0}
!24 = !{!"p1 _ZTS18_gil_runtime_state", !19, i64 0}
!25 = !{!"p1 _ZTS3_ts", !19, i64 0}
!26 = !{!"PyMutex", !16, i64 0}
!27 = !{!"_pending_calls", !25, i64 0, !26, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !16, i64 24, !17, i64 7224, !17, i64 7228}
!28 = !{!"_ceval_state", !23, i64 0, !17, i64 8, !24, i64 16, !17, i64 24, !27, i64 32}
!29 = !{!"p1 _ZTS18_PyThreadStateImpl", !19, i64 0}
!30 = !{!"pythreads", !23, i64 0, !25, i64 8, !29, i64 16, !25, i64 24, !23, i64 32, !23, i64 40}
!31 = !{!"p1 _ZTS14pyruntimestate", !19, i64 0}
!32 = !{!"", !23, i64 0, !23, i64 8}
!33 = !{!"gc_generation", !32, i64 0, !17, i64 16, !17, i64 20}
!34 = !{!"p1 _ZTS19_PyInterpreterFrame", !19, i64 0}
!35 = !{!"p1 _ZTS7_object", !19, i64 0}
!36 = !{!"_gc_runtime_state", !17, i64 0, !17, i64 4, !33, i64 8, !16, i64 32, !33, i64 80, !16, i64 104, !17, i64 224, !34, i64 232, !35, i64 240, !35, i64 248, !23, i64 256, !23, i64 264, !17, i64 272, !17, i64 276}
!37 = !{!"long long", !16, i64 0}
!38 = !{!"", !26, i64 0, !37, i64 8, !23, i64 16}
!39 = !{!"", !17, i64 0, !23, i64 8, !17, i64 16}
!40 = !{!"_import_state", !35, i64 0, !35, i64 8, !35, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !35, i64 40, !35, i64 48, !17, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !38, i64 88, !39, i64 112}
!41 = !{!"_gil_runtime_state", !23, i64 0, !25, i64 8, !17, i64 16, !23, i64 24, !16, i64 32, !16, i64 80, !16, i64 120, !16, i64 168}
!42 = !{!"codecs_state", !35, i64 0, !35, i64 8, !35, i64 16, !17, i64 24}
!43 = !{!"p1 int", !19, i64 0}
!44 = !{!"any p2 pointer", !19, i64 0}
!45 = !{!"p2 int", !44, i64 0}
!46 = !{!"", !23, i64 0, !45, i64 8}
!47 = !{!"PyConfig", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !23, i64 24, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !43, i64 64, !17, i64 72, !17, i64 76, !43, i64 80, !43, i64 88, !43, i64 96, !17, i64 104, !46, i64 112, !46, i64 128, !46, i64 144, !46, i64 160, !17, i64 176, !17, i64 180, !17, i64 184, !17, i64 188, !17, i64 192, !17, i64 196, !17, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !17, i64 284, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !17, i64 320, !46, i64 328, !43, i64 344, !43, i64 352, !43, i64 360, !43, i64 368, !43, i64 376, !43, i64 384, !43, i64 392, !17, i64 400, !43, i64 408, !43, i64 416, !43, i64 424, !43, i64 432, !17, i64 440, !17, i64 444, !17, i64 448}
!48 = !{!"p1 _ZTS12_xid_regitem", !19, i64 0}
!49 = !{!"", !17, i64 0, !17, i64 4, !26, i64 8, !48, i64 16}
!50 = !{!"_xid_lookup_state", !49, i64 0}
!51 = !{!"xi_exceptions", !35, i64 0, !35, i64 8, !35, i64 16}
!52 = !{!"", !50, i64 0, !51, i64 24}
!53 = !{!"_warnings_runtime_state", !35, i64 0, !35, i64 8, !35, i64 16, !38, i64 24, !23, i64 48, !35, i64 56}
!54 = !{!"p1 _ZTS15atexit_callback", !19, i64 0}
!55 = !{!"atexit_state", !54, i64 0, !35, i64 8}
!56 = !{!"_Bool", !16, i64 0}
!57 = !{!"", !16, i64 0}
!58 = !{!"_stoptheworld_state", !26, i64 0, !56, i64 1, !56, i64 2, !56, i64 3, !57, i64 4, !23, i64 8, !25, i64 16}
!59 = !{!"p1 _ZTS9_qsbr_pad", !19, i64 0}
!60 = !{!"p1 _ZTS18_qsbr_thread_state", !19, i64 0}
!61 = !{!"_qsbr_shared", !23, i64 0, !23, i64 8, !59, i64 16, !19, i64 24, !23, i64 32, !26, i64 40, !60, i64 48}
!62 = !{!"p1 _ZTS10llist_node", !19, i64 0}
!63 = !{!"llist_node", !62, i64 0, !62, i64 8}
!64 = !{!"p1 _ZTS15_obmalloc_state", !19, i64 0}
!65 = !{!"_Py_freelist", !19, i64 0, !23, i64 8}
!66 = !{!"_Py_freelists", !65, i64 0, !65, i64 16, !65, i64 32, !16, i64 48, !65, i64 368, !65, i64 384, !65, i64 400, !65, i64 416, !65, i64 432, !65, i64 448, !65, i64 464, !65, i64 480, !65, i64 496, !65, i64 512, !65, i64 528, !65, i64 544, !65, i64 560, !65, i64 576, !65, i64 592, !65, i64 608, !65, i64 624, !65, i64 640}
!67 = !{!"_py_object_state", !66, i64 0, !17, i64 656}
!68 = !{!"p1 omnipotent char", !19, i64 0}
!69 = !{!"_Py_unicode_fs_codec", !68, i64 0, !17, i64 8, !68, i64 16, !17, i64 24}
!70 = !{!"p2 _ZTS7_object", !44, i64 0}
!71 = !{!"_Py_unicode_ids", !23, i64 0, !70, i64 8}
!72 = !{!"_Py_unicode_state", !69, i64 0, !19, i64 32, !71, i64 40}
!73 = !{!"_Py_long_state", !17, i64 0}
!74 = !{!"p1 double", !19, i64 0}
!75 = !{!"_dtoa_state", !16, i64 0, !16, i64 64, !16, i64 128, !74, i64 2432}
!76 = !{!"_py_func_state", !17, i64 0, !16, i64 8}
!77 = !{!"p1 _ZTS15_Py_hashtable_t", !19, i64 0}
!78 = !{!"_py_code_state", !26, i64 0, !77, i64 8}
!79 = !{!"_Py_dict_state", !17, i64 0, !16, i64 8}
!80 = !{!"_Py_exc_state", !35, i64 0, !19, i64 8, !17, i64 16, !35, i64 24}
!81 = !{!"_Py_mem_interp_free_queue", !17, i64 0, !26, i64 4, !63, i64 8}
!82 = !{!"ast_state", !57, i64 0, !17, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !35, i64 312, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !35, i64 488, !35, i64 496, !35, i64 504, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !35, i64 840, !35, i64 848, !35, i64 856, !35, i64 864, !35, i64 872, !35, i64 880, !35, i64 888, !35, i64 896, !35, i64 904, !35, i64 912, !35, i64 920, !35, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992, !35, i64 1000, !35, i64 1008, !35, i64 1016, !35, i64 1024, !35, i64 1032, !35, i64 1040, !35, i64 1048, !35, i64 1056, !35, i64 1064, !35, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680, !35, i64 1688, !35, i64 1696, !35, i64 1704, !35, i64 1712, !35, i64 1720, !35, i64 1728, !35, i64 1736, !35, i64 1744, !35, i64 1752, !35, i64 1760, !35, i64 1768, !35, i64 1776, !35, i64 1784, !35, i64 1792, !35, i64 1800, !35, i64 1808, !35, i64 1816, !35, i64 1824, !35, i64 1832, !35, i64 1840, !35, i64 1848, !35, i64 1856, !35, i64 1864, !35, i64 1872, !35, i64 1880, !35, i64 1888, !35, i64 1896, !35, i64 1904, !35, i64 1912, !35, i64 1920, !35, i64 1928, !35, i64 1936, !35, i64 1944, !35, i64 1952, !35, i64 1960, !35, i64 1968, !35, i64 1976}
!83 = !{!"type_cache", !16, i64 0}
!84 = !{!"", !23, i64 0, !16, i64 8}
!85 = !{!"", !23, i64 0, !23, i64 8, !16, i64 16}
!86 = !{!"types_state", !17, i64 0, !83, i64 8, !84, i64 98312, !85, i64 108016, !26, i64 108512, !16, i64 108520}
!87 = !{!"callable_cache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!88 = !{!"short", !16, i64 0}
!89 = !{!"_PyOptimizationConfig", !88, i64 0, !88, i64 2, !88, i64 4, !88, i64 6, !56, i64 8, !56, i64 9}
!90 = !{!"p1 _ZTS17_PyExecutorObject", !19, i64 0}
!91 = !{!"_rare_events", !16, i64 0, !16, i64 1, !16, i64 2, !16, i64 3, !16, i64 4}
!92 = !{!"_Py_GlobalMonitors", !16, i64 0}
!93 = !{!"p1 _ZTS11_typeobject", !19, i64 0}
!94 = !{!"_Py_interp_cached_objects", !35, i64 0, !35, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64, !35, i64 72, !35, i64 80}
!95 = !{!"_object", !16, i64 0, !93, i64 8}
!96 = !{!"", !95, i64 0, !19, i64 16, !35, i64 24, !23, i64 32}
!97 = !{!"", !95, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !16, i64 64}
!98 = !{!"", !17, i64 0, !32, i64 8, !96, i64 24, !97, i64 64}
!99 = !{!"_Py_interp_static_objects", !98, i64 0}
!100 = !{!"", !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0}
!101 = !{!"p1 _ZTS14_err_stackitem", !19, i64 0}
!102 = !{!"p1 _ZTS12_stack_chunk", !19, i64 0}
!103 = !{!"_err_stackitem", !35, i64 0, !101, i64 8}
!104 = !{!"p1 _ZTS11_PyExitData", !19, i64 0}
!105 = !{!"", !17, i64 0, !16, i64 4}
!106 = !{!"_ts", !25, i64 0, !25, i64 8, !20, i64 16, !23, i64 24, !100, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !34, i64 72, !34, i64 80, !34, i64 88, !19, i64 96, !19, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !101, i64 136, !35, i64 144, !17, i64 152, !35, i64 160, !23, i64 168, !23, i64 176, !35, i64 184, !23, i64 192, !17, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !23, i64 232, !23, i64 240, !102, i64 248, !70, i64 256, !70, i64 264, !103, i64 272, !35, i64 288, !104, i64 296, !23, i64 304, !35, i64 312, !35, i64 320, !105, i64 328}
!107 = !{!"p1 _ZTS6_frame", !19, i64 0}
!108 = !{!"p1 _ZTS11_PyStackRef", !19, i64 0}
!109 = !{!"_PyInterpreterFrame", !16, i64 0, !34, i64 8, !16, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !107, i64 48, !19, i64 56, !108, i64 64, !88, i64 72, !16, i64 74, !16, i64 75, !16, i64 80}
!110 = !{!"_PyThreadStateImpl", !106, i64 0, !109, i64 848, !23, i64 936, !23, i64 944, !23, i64 952, !23, i64 960, !23, i64 968, !23, i64 976, !35, i64 984, !35, i64 992, !17, i64 1000, !63, i64 1008, !60, i64 1024, !63, i64 1032}
!111 = !{!"_is", !28, i64 0, !20, i64 7264, !23, i64 7272, !23, i64 7280, !17, i64 7288, !23, i64 7296, !17, i64 7304, !17, i64 7308, !17, i64 7312, !23, i64 7320, !30, i64 7328, !31, i64 7376, !25, i64 7384, !23, i64 7392, !36, i64 7400, !35, i64 7680, !35, i64 7688, !40, i64 7696, !41, i64 7832, !23, i64 8040, !42, i64 8048, !47, i64 8080, !23, i64 8536, !35, i64 8544, !35, i64 8552, !35, i64 8560, !19, i64 8568, !16, i64 8576, !16, i64 8640, !23, i64 8648, !16, i64 8656, !52, i64 10696, !35, i64 10744, !35, i64 10752, !35, i64 10760, !53, i64 10768, !55, i64 10832, !58, i64 10848, !61, i64 10872, !63, i64 10928, !26, i64 10944, !64, i64 10952, !35, i64 10960, !16, i64 10968, !16, i64 11032, !16, i64 11096, !16, i64 11160, !16, i64 11161, !67, i64 11168, !72, i64 11832, !73, i64 11888, !75, i64 11896, !76, i64 14336, !78, i64 79880, !79, i64 79896, !80, i64 79968, !81, i64 80000, !82, i64 80024, !86, i64 82008, !87, i64 223296, !16, i64 223328, !56, i64 223384, !56, i64 223385, !89, i64 223386, !90, i64 223400, !90, i64 223408, !90, i64 223416, !90, i64 223424, !23, i64 223432, !91, i64 223440, !19, i64 223448, !92, i64 223456, !57, i64 223472, !57, i64 223473, !23, i64 223480, !23, i64 223488, !16, i64 223496, !16, i64 224712, !16, i64 224776, !94, i64 224840, !99, i64 224928, !23, i64 225064, !110, i64 225072}
!112 = !{!111, !16, i64 11160}
!113 = !{!35, !35, i64 0}
!114 = !{!16, !16, i64 0}
!115 = !{!"_PyCodeConstructor", !35, i64 0, !35, i64 8, !35, i64 16, !17, i64 24, !35, i64 32, !17, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !35, i64 104}
!116 = !{!115, !17, i64 88}
!117 = !{!115, !17, i64 92}
!118 = !{!115, !17, i64 96}
!119 = !{!115, !17, i64 100}
!120 = !{!115, !17, i64 24}
!121 = !{!115, !35, i64 32}
!122 = !{!95, !93, i64 8}
!123 = !{!"PyVarObject", !95, i64 0, !23, i64 16}
!124 = !{!"p1 _ZTS11PyMethodDef", !19, i64 0}
!125 = !{!"p1 _ZTS11PyMemberDef", !19, i64 0}
!126 = !{!"p1 _ZTS11PyGetSetDef", !19, i64 0}
!127 = !{!"_typeobject", !123, i64 0, !68, i64 24, !23, i64 32, !23, i64 40, !19, i64 48, !23, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !23, i64 168, !68, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !23, i64 208, !19, i64 216, !19, i64 224, !124, i64 232, !125, i64 240, !126, i64 248, !93, i64 256, !35, i64 264, !19, i64 272, !19, i64 280, !23, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !19, i64 360, !35, i64 368, !19, i64 376, !17, i64 384, !19, i64 392, !19, i64 400, !16, i64 408, !88, i64 410}
!128 = !{!127, !23, i64 168}
!129 = !{!115, !35, i64 56}
!130 = !{!115, !35, i64 64}
!131 = !{!115, !35, i64 72}
!132 = !{!115, !35, i64 80}
!133 = !{!123, !23, i64 16}
!134 = !{!115, !35, i64 8}
!135 = !{!115, !35, i64 16}
!136 = !{!115, !35, i64 0}
!137 = !{!115, !35, i64 48}
!138 = !{!115, !35, i64 104}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!"p1 _ZTS19_PyCoMonitoringData", !19, i64 0}
!143 = !{!"PyCodeObject", !123, i64 0, !35, i64 24, !35, i64 32, !35, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !19, i64 152, !19, i64 160, !23, i64 168, !142, i64 176, !23, i64 184, !17, i64 192, !19, i64 200, !16, i64 208}
!144 = !{!143, !35, i64 112}
!145 = !{!143, !35, i64 120}
!146 = !{!143, !35, i64 128}
!147 = !{!143, !17, i64 48}
!148 = !{!115, !17, i64 40}
!149 = !{!143, !17, i64 68}
!150 = !{!143, !35, i64 136}
!151 = !{!143, !35, i64 24}
!152 = !{!143, !35, i64 32}
!153 = !{!143, !35, i64 96}
!154 = !{!143, !35, i64 104}
!155 = !{!143, !35, i64 40}
!156 = !{!143, !17, i64 72}
!157 = !{!143, !17, i64 80}
!158 = !{!143, !17, i64 84}
!159 = !{!143, !17, i64 88}
!160 = !{!143, !17, i64 92}
!161 = !{!143, !19, i64 200}
!162 = !{!143, !142, i64 176}
!163 = !{!"_Py_LocalMonitors", !16, i64 0}
!164 = !{!"_PyCoMonitoringData", !163, i64 0, !163, i64 11, !68, i64 24, !16, i64 32, !19, i64 96, !68, i64 104, !68, i64 112, !68, i64 120}
!165 = !{!164, !19, i64 96}
!166 = !{!"_opaque", !17, i64 0, !68, i64 8, !68, i64 16}
!167 = !{!"_line_offsets", !17, i64 0, !17, i64 4, !17, i64 8, !166, i64 16}
!168 = !{!167, !68, i64 24}
!169 = !{!167, !68, i64 32}
!170 = !{!167, !17, i64 0}
!171 = !{!167, !17, i64 4}
!172 = !{!167, !17, i64 16}
!173 = !{!167, !17, i64 8}
!174 = !{!"p1 _ZTS12PyCodeObject", !19, i64 0}
end_hunk_1
