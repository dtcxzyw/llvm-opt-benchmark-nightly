Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2800
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@charmapencode_output:bb.a
  %i.cr = getelementptr i8, ptr %i.cm, i64 32
  br label %_PyBytesWriter_GetData.exit90

_PyBytesWriter_GetData.exit90:                    ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i89 = phi ptr [ %i.cr, %bb.ah ], [ %.val.i88, %bb.ag ], [ %2, %bb.ae ]
  %i.cs = load i64, ptr %3, align 8, !tbaa !647
  %i.ct = getelementptr i8, ptr %.0.i89, i64 %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 8 %i.ca, i64 %.val76, i1 false)
  %i.cu = load i64, ptr %3, align 8, !tbaa !647
  %i.cv = add i64 %i.cu, %.val76
  store i64 %i.cv, ptr %3, align 8, !tbaa !647
  br label %bb.ai

bb.ai:                                            ; preds = %_PyBytesWriter_GetData.exit90, %_PyBytesWriter_GetData.exit85
  %i.cw = load i32, ptr %i.ax, align 8, !tbaa !658 ; 2 uses
  %.not.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit70

bb.aj:                                            ; preds = %bb.ai
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.ax, align 8, !tbaa !658
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ak, label %Py_DECREF.exit70

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #33
  br label %Py_DECREF.exit70

Py_DECREF.exit70:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.ak, %bb.aj, %bb.ai, %bb.ad, %bb.ac, %.critedge64, %bb.v, %bb.u, %.critedge, %bb.q, %bb.p, %bb.o, %bb.m, %_PyBytesWriter_GetData.exit, %bb.h
  %.3 = phi i32 [ 2, %bb.v ], [ 2, %bb.h ], [ 2, %bb.m ], [ 2, %bb.ad ], [ 1, %bb.q ], [ 0, %_PyBytesWriter_GetData.exit ], [ 0, %bb.ak ], [ 1, %bb.o ], [ 1, %bb.p ], [ 2, %.critedge ], [ 2, %bb.u ], [ 2, %.critedge64 ], [ 2, %bb.ac ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.3
}

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsCharmapString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !guid !1136 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !655
  %i.c = and i64 %.val7, 268435456
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_PyUnicode_EncodeCharmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Translate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !1137 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !650
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !655
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !648
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.b

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = tail call fastcc ptr @_PyUnicode_TranslateCharmap(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.b

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit.thread, %_PyUnicode_EnsureUnicode.exit
  %.0 = phi ptr [ %i.f, %_PyUnicode_EnsureUnicode.exit ], [ null, %_PyUnicode_EnsureUnicode.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_TranslateCharmap(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !guid !1140 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca [128 x i8], align 16              ; 5 uses
  %3 = alloca %struct._PyUnicodeWriter, align 8   ; 24 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %Py_XDECREF.exit101

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i = load i32, ptr %i.l, align 8           ; 3 uses
  %i.m = and i32 %.val.i, 32
  %.not.i66 = icmp eq i32 %i.m, 0
  br i1 %.not.i66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.n, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.o, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 6 uses
  %i.p = lshr i32 %.val.i, 2
  %i.q = and i32 %i.p, 7                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val65 = load i64, ptr %i.r, align 8, !tbaa !660 ; 8 uses
  %i.s = icmp eq i64 %.val65, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = tail call ptr @PyUnicode_FromObject(ptr noundef nonnull %0)
  br label %Py_XDECREF.exit101

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %3) #33
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !668
  %i.w = icmp ugt i32 %i.v, 126
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !669
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !670
  %i.ab = sub i64 %i.y, %i.aa
  %.not = icmp sgt i64 %.val65, %i.ab
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %3, i64 noundef %.val65, i32 noundef 127) #33
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %Py_XDECREF.exit97.thread, label %.critedge

Py_XDECREF.exit97.thread:                         ; preds = %bb.i
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %3) #33
  br label %Py_XDECREF.exit101

.critedge:                                        ; preds = %bb.h, %bb.i
  %.not56 = icmp eq ptr %2, null
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ae = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.3) #34
  %i.af = icmp eq i32 %i.ae, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %i.ag = phi i1 [ false, %.critedge ], [ %i.af, %bb.j ] ; 2 uses
  %.val = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ah = and i32 %.val, 64
  %.not57 = icmp eq i32 %i.ah, 0
  br i1 %.not57, label %bb.ax, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %.val.i67 = load i64, ptr %i.r, align 8, !tbaa !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.g, i8 -1, i64 128, i1 false)
  %i.ai = and i32 %.val, 32
  %.not.i.i68 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.i.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.aj, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.n, %bb.m
  %.0.i.i69 = phi ptr [ %.0.i.i.i, %bb.m ], [ %.val4.i.i, %bb.n ] ; 4 uses
  %i.ak = getelementptr i8, ptr %.0.i.i69, i64 %.val.i67 ; 3 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !678   ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %.val.i37.i = load i32, ptr %i.am, align 8      ; 3 uses
  %i.an = and i32 %.val.i37.i, 32
  %.not.i38.i = icmp eq i32 %i.an, 0
  br i1 %.not.i38.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ao = and i32 %.val.i37.i, 64
  %.not.i.i39.i = icmp eq i32 %i.ao, 0
  %.0.v.i.i40.i = select i1 %.not.i.i39.i, i64 56, i64 40
  %.0.i.i41.i = getelementptr i8, ptr %i.al, i64 %.0.v.i.i40.i
  br label %_PyUnicode_DATA.exit44.i

bb.p:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ap = getelementptr i8, ptr %i.al, i64 56
  %.val4.i43.i = load ptr, ptr %i.ap, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit44.i

_PyUnicode_DATA.exit44.i:                         ; preds = %bb.p, %bb.o
  %.0.i42.i = phi ptr [ %.0.i.i41.i, %bb.o ], [ %.val4.i43.i, %bb.p ] ; 2 uses
  %i.aq = icmp ult ptr %.0.i.i69, %i.ak
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit44.i, %bb.ap
  %.03078.i = phi ptr [ %.1.i, %bb.ap ], [ %.0.i42.i, %_PyUnicode_DATA.exit44.i ] ; 5 uses
  %.03177.i = phi ptr [ %i.ci, %bb.ap ], [ %.0.i.i69, %_PyUnicode_DATA.exit44.i ] ; 4 uses
  %i.ar = load i8, ptr %.03177.i, align 1, !tbaa !658 ; 4 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.g, i64 %i.as   ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !658 ; 2 uses
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %bb.q, label %.thread72.i

bb.q:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.aw = zext i8 %i.ar to i32
  %i.ax = call fastcc i32 @charmaptranslate_lookup(i32 noundef %i.aw, ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef %i.f)
  %.not.i45.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i45.i, label %bb.r, label %bb.au

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !648 ; 14 uses
  %i.az = icmp eq ptr %i.ay, @_Py_NoneStruct
  br i1 %i.az, label %.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %bb.s
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread72.i

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %.val19.i.i = load ptr, ptr %i.bb, align 8, !tbaa !650
  %i.bc = getelementptr i8, ptr %.val19.i.i, i64 168
  %.val21.i.i = load i64, ptr %i.bc, align 8, !tbaa !655 ; 2 uses
  %i.bd = and i64 %.val21.i.i, 16777216
  %.not16.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not16.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = load i32, ptr %i.f, align 4, !tbaa !44  ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 127
  br i1 %i.bf, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = trunc nuw nsw i32 %i.be to i8
  br label %.sink.split.i.i

bb.w:                                             ; preds = %bb.t
  %i.bh = and i64 %.val21.i.i, 268435456
  %.not17.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not17.i.i, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr i8, ptr %i.ay, i64 16
  %.val22.i.i = load i64, ptr %i.bi, align 8, !tbaa !660
  %.not18.i.i = icmp eq i64 %.val22.i.i, 1
  br i1 %.not18.i.i, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr i8, ptr %i.ay, i64 32
  %i.bk = load i32, ptr %i.bj, align 8            ; 5 uses
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = and i32 %i.bl, 7
  %i.bn = and i32 %i.bk, 32
  %.not.i19.i.i = icmp eq i32 %i.bn, 0            ; 3 uses
  switch i32 %i.bm, label %bb.af [
    i32 1, label %bb.z
    i32 2, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i19.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = and i32 %i.bk, 64
  %.not.i.i.i.i = icmp eq i32 %i.bo, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.ay, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bp = getelementptr i8, ptr %i.ay, i64 56
  %.val4.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.ab, %bb.aa
  %.0.i.i65.i = phi ptr [ %.0.i.i.i.i, %bb.aa ], [ %.val4.i.i.i, %bb.ab ]
  %i.bq = load i8, ptr %.0.i.i65.i, align 1, !tbaa !658
  %i.br = zext i8 %i.bq to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i19.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = and i32 %i.bk, 64
  %.not.i.i12.i.i = icmp eq i32 %i.bs, 0
  %.0.v.i.i13.i.i = select i1 %.not.i.i12.i.i, i64 56, i64 40
  %.0.i.i14.i.i = getelementptr i8, ptr %i.ay, i64 %.0.v.i.i13.i.i
  br label %_PyUnicode_DATA.exit17.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.bt = getelementptr i8, ptr %i.ay, i64 56
  %.val4.i16.i.i = load ptr, ptr %i.bt, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit17.i.i

_PyUnicode_DATA.exit17.i.i:                       ; preds = %bb.ae, %bb.ad
  %.0.i15.i.i = phi ptr [ %.0.i.i14.i.i, %bb.ad ], [ %.val4.i16.i.i, %bb.ae ]
  %i.bu = load i16, ptr %.0.i15.i.i, align 2, !tbaa !661
  %i.bv = zext i16 %i.bu to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.af:                                            ; preds = %bb.y
  br i1 %.not.i19.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = and i32 %i.bk, 64
  %.not.i.i20.i.i = icmp eq i32 %i.bw, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %i.ay, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.ah:                                            ; preds = %bb.af
  %i.bx = getelementptr i8, ptr %i.ay, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.bx, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.ah, %bb.ag
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.ag ], [ %.val4.i24.i.i, %bb.ah ]
  %i.by = load i32, ptr %.0.i23.i.i, align 4, !tbaa !44
  br label %PyUnicode_READ_CHAR.exit.i

PyUnicode_READ_CHAR.exit.i:                       ; preds = %_PyUnicode_DATA.exit25.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit.i.i
  %.0.i64.i = phi i32 [ %i.br, %_PyUnicode_DATA.exit.i.i ], [ %i.bv, %_PyUnicode_DATA.exit17.i.i ], [ %i.by, %_PyUnicode_DATA.exit25.i.i ] ; 2 uses
  %i.bz = icmp ugt i32 %.0.i64.i, 127
  br i1 %i.bz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %PyUnicode_READ_CHAR.exit.i
  %i.ca = trunc nuw nsw i32 %.0.i64.i to i8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ai, %bb.v, %bb.r
  %.sink.i.i = phi i8 [ %i.ca, %bb.ai ], [ %i.bg, %bb.v ], [ -2, %bb.r ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.at, align 1, !tbaa !658
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i, %PyUnicode_READ_CHAR.exit.i, %bb.x, %bb.w, %bb.u
  %i.cb = phi i8 [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %PyUnicode_READ_CHAR.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.cc = phi i1 [ true, %bb.w ], [ true, %bb.u ], [ true, %bb.x ], [ true, %PyUnicode_READ_CHAR.exit.i ], [ false, %.sink.split.i.i ]
  %i.cd = load i32, ptr %i.ay, align 8, !tbaa !658 ; 2 uses
  %.not.i.i47.i = icmp sgt i32 %i.cd, -1
  br i1 %.not.i.i47.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.ay, align 8, !tbaa !658
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #33
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br i1 %i.cc, label %._crit_edge.loopexit.i, label %.thread72.i

.thread72.i:                                      ; preds = %bb.am, %.thread.i, %.lr.ph.i
  %.133.i = phi i8 [ %i.au, %.lr.ph.i ], [ %i.cb, %bb.am ], [ %i.ar, %.thread.i ] ; 2 uses
  %i.cg = icmp eq i8 %.133.i, -2
  br i1 %i.cg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread72.i
  br i1 %i.ag, label %bb.ap, label %._crit_edge.loopexit.i

bb.ao:                                            ; preds = %.thread72.i
  store i8 %.133.i, ptr %.03078.i, align 1, !tbaa !658
  %i.ch = getelementptr i8, ptr %.03078.i, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1.i = phi ptr [ %.03078.i, %bb.an ], [ %i.ch, %bb.ao ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.03177.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ci, %i.ak
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1138

._crit_edge.loopexit.i:                           ; preds = %bb.ap, %bb.an, %bb.am
  %.031.lcssa.ph.i = phi ptr [ %.03177.i, %bb.an ], [ %i.ak, %bb.ap ], [ %.03177.i, %bb.am ]
  %.030.lcssa.ph.i = phi ptr [ %.03078.i, %bb.an ], [ %.1.i, %bb.ap ], [ %.03078.i, %bb.am ]
  %i.cj = phi i1 [ false, %bb.an ], [ true, %bb.ap ], [ false, %bb.am ]
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !678 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 32
  %.val.i48.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_PyUnicode_DATA.exit44.i
  %.val.i48.i = phi i32 [ %.val.i37.i, %_PyUnicode_DATA.exit44.i ], [ %.val.i48.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ck = phi ptr [ %i.al, %_PyUnicode_DATA.exit44.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.031.lcssa.i = phi ptr [ %.0.i.i69, %_PyUnicode_DATA.exit44.i ], [ %.031.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.030.lcssa.i = phi ptr [ %.0.i42.i, %_PyUnicode_DATA.exit44.i ], [ %.030.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.029.i = phi i1 [ true, %_PyUnicode_DATA.exit44.i ], [ %i.cj, %._crit_edge.loopexit.i ]
  %i.cl = and i32 %.val.i48.i, 32
  %.not.i49.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i49.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i
  %i.cm = and i32 %.val.i48.i, 64
  %.not.i.i50.i = icmp eq i32 %i.cm, 0
  %.0.v.i.i51.i = select i1 %.not.i.i50.i, i64 56, i64 40
  %.0.i.i52.i = getelementptr i8, ptr %i.ck, i64 %.0.v.i.i51.i
  br label %_PyUnicode_DATA.exit55.i

bb.ar:                                            ; preds = %._crit_edge.i
  %i.cn = getelementptr i8, ptr %i.ck, i64 56
  %.val4.i54.i = load ptr, ptr %i.cn, align 8, !tbaa !658
  br label %_PyUnicode_DATA.exit55.i

_PyUnicode_DATA.exit55.i:                         ; preds = %bb.ar, %bb.aq
  %.0.i53.i = phi ptr [ %.0.i.i52.i, %bb.aq ], [ %.val4.i54.i, %bb.ar ]
  %i.co = ptrtoint ptr %.030.lcssa.i to i64
  %i.cp = ptrtoint ptr %.0.i53.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !670
  %.val.i56.i = load i32, ptr %i.l, align 8       ; 2 uses
  %i.cs = and i32 %.val.i56.i, 32
  %.not.i57.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i57.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_PyUnicode_DATA.exit55.i
  %i.ct = and i32 %.val.i56.i, 64
  %.not.i.i58.i = icmp eq i32 %i.ct, 0
  %.0.v.i.i59.i = select i1 %.not.i.i58.i, i64 56, i64 40
  %.0.i.i60.i = getelementptr i8, ptr %0, i64 %.0.v.i.i59.i
  br label %bb.av

bb.at:                                            ; preds = %_PyUnicode_DATA.exit55.i
  %i.cu = getelementptr i8, ptr %0, i64 56
  %.val4.i62.i = load ptr, ptr %i.cu, align 8, !tbaa !658
  br label %bb.av

bb.au:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %3) #33
  br label %Py_XDECREF.exit101

bb.av:                                            ; preds = %bb.at, %bb.as
  %.0.i61.i = phi ptr [ %.0.i.i60.i, %bb.as ], [ %.val4.i62.i, %bb.at ]
  %i.cv = ptrtoint ptr %.031.lcssa.i to i64
  %i.cw = ptrtoint ptr %.0.i61.i to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br i1 %.029.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cy = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %3) #33
  br label %Py_XDECREF.exit101

bb.ax:                                            ; preds = %bb.k, %bb.av
  %.0127 = phi i64 [ %i.cx, %bb.av ], [ 0, %bb.k ] ; 2 uses
  %i.cz = icmp slt i64 %.0127, %.val65
  br i1 %i.cz, label %.lr.ph237, label %Py_XDECREF.exit93

.lr.ph237:                                        ; preds = %bb.ax
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph237, %Py_DECREF.exit63
  %.0118235 = phi ptr [ null, %.lr.ph237 ], [ %.2120, %Py_DECREF.exit63 ] ; 13 uses
  %.0121232 = phi ptr [ null, %.lr.ph237 ], [ %.2123, %Py_DECREF.exit63 ] ; 6 uses
  %.1128231 = phi i64 [ %.0127, %.lr.ph237 ], [ %.2129, %Py_DECREF.exit63 ] ; 7 uses
  switch i32 %i.q, label %bb.bb [
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.de = getelementptr i8, ptr %.0.i, i64 %.1128231
  %i.df = load i8, ptr %i.de, align 1, !tbaa !658
  %i.dg = zext i8 %i.df to i32
  br label %PyUnicode_READ.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dh = getelementptr [2 x i8], ptr %.0.i, i64 %.1128231
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !661
  %i.dj = zext i16 %i.di to i32
  br label %PyUnicode_READ.exit

bb.bb:                                            ; preds = %bb.ay
  %i.dk = getelementptr [4 x i8], ptr %.0.i, i64 %.1128231
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.az, %bb.ba, %bb.bb
  %.0.i71 = phi i32 [ %i.dg, %bb.az ], [ %i.dj, %bb.ba ], [ %i.dl, %bb.bb ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.dm = call fastcc i32 @charmaptranslate_lookup(i32 noundef %.0.i71, ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.d)
  %.not.i72 = icmp eq i32 %i.dm, 0
  br i1 %.not.i72, label %bb.bc, label %charmaptranslate_output.exit.thread

bb.bc:                                            ; preds = %PyUnicode_READ.exit
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !648 ; 19 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !668
  %.not.i27.i = icmp ugt i32 %.0.i71, %i.dp
  br i1 %.not.i27.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dq = load i64, ptr %i.da, align 8, !tbaa !669
  %i.dr = load i64, ptr %i.db, align 8, !tbaa !670 ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.critedge.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.du = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %.0.i71) #33
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %charmaptranslate_output.exit.thread, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.bf
  %.pre.i.i = load i64, ptr %i.db, align 8, !tbaa !670
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.be
  %i.dw = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.dr, %bb.be ] ; 5 uses
  %i.dx = load i32, ptr %i.dc, align 8, !tbaa !671
  %i.dy = load ptr, ptr %i.dd, align 8, !tbaa !672 ; 3 uses
  switch i32 %i.dx, label %bb.bi [
    i32 1, label %bb.bg
    i32 2, label %bb.bh
  ]

bb.bg:                                            ; preds = %.critedge.i.i
  %i.dz = trunc i32 %.0.i71 to i8
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dw
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !658
  %.pre11.i.i = load i64, ptr %i.db, align 8, !tbaa !670
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

bb.bh:                                            ; preds = %.critedge.i.i
  %i.eb = trunc i32 %.0.i71 to i16
  %i.ec = getelementptr [2 x i8], ptr %i.dy, i64 %i.dw
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !661
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

bb.bi:                                            ; preds = %.critedge.i.i
  %i.ed = getelementptr [4 x i8], ptr %i.dy, i64 %i.dw
  store i32 %.0.i71, ptr %i.ed, align 4, !tbaa !44
  br label %_PyUnicodeWriter_WriteCharInline.exit.i

_PyUnicodeWriter_WriteCharInline.exit.i:          ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.ee = phi i64 [ %.pre11.i.i, %bb.bg ], [ %i.dw, %bb.bh ], [ %i.dw, %bb.bi ]
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.db, align 8, !tbaa !670
  br label %bb.ci

bb.bj:                                            ; preds = %bb.bc
  %i.eg = icmp eq ptr %i.dn, @_Py_NoneStruct
  br i1 %i.eg, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.eh = load i32, ptr %i.dn, align 8, !tbaa !658 ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i17.i, label %bb.bl, label %bb.cj

bb.bl:                                            ; preds = %bb.bk
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.dn, align 8, !tbaa !658
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bm, label %bb.cj

bb.bm:                                            ; preds = %bb.bl
  call void @_Py_Dealloc(ptr noundef nonnull %i.dn) #33
  br label %bb.cj

bb.bn:                                            ; preds = %bb.bj
  %i.ek = getelementptr i8, ptr %i.dn, i64 8
  %.val24.i = load ptr, ptr %i.ek, align 8, !tbaa !650
  %i.el = getelementptr i8, ptr %.val24.i, i64 168
end_hunk_0
