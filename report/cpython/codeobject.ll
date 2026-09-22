Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codeobject?download=true
inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@code_dealloc:bb.a

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
  %i.bh = and i16 %i.bg, 255
  %i.bi = zext nneg i16 %i.bh to i64              ; 2 uses
  %i.bj = xor i64 %.686101, %i.bi
  %i.bk = mul i64 %i.bj, 1000003
  %1 = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %i.bl = xor i64 %i.bk, %1
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
