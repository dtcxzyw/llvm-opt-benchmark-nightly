inline.NumInlined: 37
inline.NumDeleted: 10
begin_hunk_0_@PyPreConfig_InitPythonConfig:bb.a
  store i32 -1, ptr %i.b, align 4, !tbaa !50
  %i.c = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.c, align 4, !tbaa !57
  store <4 x i32> <i32 2, i32 1, i32 0, i32 1>, ptr %0, align 4, !tbaa !7
  store <4 x i32> <i32 1, i32 -1, i32 -1, i32 -1>, ptr %i.a, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PyPreConfig_InitIsolatedConfig(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.c, align 4, !tbaa !57
  store <4 x i32> <i32 3, i32 0, i32 1, i32 0>, ptr %0, align 4, !tbaa !7
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.b, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_PyPreConfig_InitFromPreConfig(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !50
  %i.c = getelementptr i8, ptr %1, i64 36         ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !57
  store <4 x i32> <i32 2, i32 1, i32 0, i32 1>, ptr %1, align 4, !tbaa !7
  store <4 x i32> <i32 1, i32 -1, i32 -1, i32 -1>, ptr %i.a, align 4, !tbaa !7
  %i.d = load <4 x i32>, ptr %2, align 4, !tbaa !7
  store <4 x i32> %i.d, ptr %1, align 4, !tbaa !7
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = getelementptr i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !7
  store <4 x i32> %i.h, ptr %i.a, align 4, !tbaa !7
  %i.i = getelementptr i8, ptr %2, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !57
  store i32 %i.j, ptr %i.c, align 4, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_PyPreConfig_InitFromConfig(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !58
  switch i32 %i.a, label %bb.d [
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = getelementptr i8, ptr %0, i64 32
  store i32 -1, ptr %i.c, align 4, !tbaa !50
  %i.d = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !57
  store <4 x i32> <i32 2, i32 1, i32 0, i32 1>, ptr %0, align 4, !tbaa !7
  store <4 x i32> <i32 1, i32 -1, i32 -1, i32 -1>, ptr %i.b, align 4, !tbaa !7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.g, align 4, !tbaa !57
  store <4 x i32> <i32 3, i32 0, i32 1, i32 0>, ptr %0, align 4, !tbaa !7
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.f, align 4, !tbaa !50
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 -1>, ptr %0, align 4, !tbaa !7
  %i.h = getelementptr i8, ptr %0, i64 16
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr i8, ptr %0, i64 32
  store i32 -1, ptr %i.i, align 4, !tbaa !50
  %i.j = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.j, align 4, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %1, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60   ; 2 uses
  %.not15.i = icmp eq i32 %i.o, -1
  br i1 %.not15.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.p, align 4, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %.not16.i = icmp eq i32 %i.r, -1
  br i1 %.not16.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %0, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !41   ; 2 uses
  %.not17.i = icmp eq i32 %i.u, -1
  br i1 %.not17.i, label %_PyPreConfig_GetConfig.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %0, i64 32
  store i32 %i.u, ptr %i.v, align 4, !tbaa !50
  br label %_PyPreConfig_GetConfig.exit

_PyPreConfig_GetConfig.exit:                      ; preds = %bb.k, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_PyPreConfig_GetConfig(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %.not15 = icmp eq i32 %i.e, -1
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %.not16 = icmp eq i32 %i.h, -1
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41   ; 2 uses
  %.not17 = icmp eq i32 %i.k, -1
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %0, i64 32
  store i32 %i.k, ptr %i.l, align 4, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPreConfig_AsDict(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyDict_New() #13          ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !62
  %i.d = sext i32 %i.c to i64
  %i.e = tail call ptr @PyLong_FromLong(i64 noundef %i.d) #13 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e) #13
  %i.h = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not.i131 = icmp sgt i32 %i.h, -1
  br i1 %.not.i131, label %bb.d, label %Py_DECREF.exit132

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !56
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %Py_DECREF.exit132

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %Py_DECREF.exit132

Py_DECREF.exit132:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.k = icmp slt i32 %i.g, 0
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit132
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = sext i32 %i.m to i64
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef %i.n) #13 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.o) #13
  %i.r = load i32, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %.not.i129 = icmp sgt i32 %i.r, -1
  br i1 %.not.i129, label %bb.h, label %Py_DECREF.exit130

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.o, align 8, !tbaa !56
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %Py_DECREF.exit130

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #13
  br label %Py_DECREF.exit130

Py_DECREF.exit130:                                ; preds = %bb.g, %bb.h, %bb.i
  %i.u = icmp slt i32 %i.q, 0
  br i1 %i.u, label %.thread, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit130
  %i.v = getelementptr i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = sext i32 %i.w to i64
  %i.y = tail call ptr @PyLong_FromLong(i64 noundef %i.x) #13 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.y) #13
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !56  ; 2 uses
  %.not.i127 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i127, label %bb.l, label %Py_DECREF.exit128

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.y, align 8, !tbaa !56
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %Py_DECREF.exit128

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #13
  br label %Py_DECREF.exit128

Py_DECREF.exit128:                                ; preds = %bb.k, %bb.l, %bb.m
  %i.ae = icmp slt i32 %i.aa, 0
  br i1 %i.ae, label %.thread, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit128
  %i.af = getelementptr i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !48
  %i.ah = sext i32 %i.ag to i64
  %i.ai = tail call ptr @PyLong_FromLong(i64 noundef %i.ah) #13 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ai) #13
  %i.al = load i32, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %.not.i125 = icmp sgt i32 %i.al, -1
  br i1 %.not.i125, label %bb.p, label %Py_DECREF.exit126

bb.p:                                             ; preds = %bb.o
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ai, align 8, !tbaa !56
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.q, label %Py_DECREF.exit126

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #13
  br label %Py_DECREF.exit126

Py_DECREF.exit126:                                ; preds = %bb.o, %bb.p, %bb.q
  %i.ao = icmp slt i32 %i.ak, 0
  br i1 %i.ao, label %.thread, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit126
  %i.ap = getelementptr i8, ptr %0, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.ar = sext i32 %i.aq to i64
  %i.as = tail call ptr @PyLong_FromLong(i64 noundef %i.ar) #13 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.as) #13
  %i.av = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %.not.i123 = icmp sgt i32 %i.av, -1
  br i1 %.not.i123, label %bb.t, label %Py_DECREF.exit124

bb.t:                                             ; preds = %bb.s
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.as, align 8, !tbaa !56
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %Py_DECREF.exit124

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.as) #13
  br label %Py_DECREF.exit124

Py_DECREF.exit124:                                ; preds = %bb.s, %bb.t, %bb.u
  %i.ay = icmp slt i32 %i.au, 0
  br i1 %i.ay, label %.thread, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit124
  %i.az = getelementptr i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !64
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call ptr @PyLong_FromLong(i64 noundef %i.bb) #13 ; 5 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.bc) #13
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %.not.i121 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i121, label %bb.x, label %Py_DECREF.exit122

bb.x:                                             ; preds = %bb.w
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !56
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %Py_DECREF.exit122

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #13
  br label %Py_DECREF.exit122

Py_DECREF.exit122:                                ; preds = %bb.w, %bb.x, %bb.y
  %i.bi = icmp slt i32 %i.be, 0
  br i1 %i.bi, label %.thread, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit122
  %i.bj = getelementptr i8, ptr %0, i64 24
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !65
  %i.bl = sext i32 %i.bk to i64
  %i.bm = tail call ptr @PyLong_FromLong(i64 noundef %i.bl) #13 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.bm) #13
  %i.bp = load i32, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %.not.i119 = icmp sgt i32 %i.bp, -1
  br i1 %.not.i119, label %bb.ab, label %Py_DECREF.exit120

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bm, align 8, !tbaa !56
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.ac, label %Py_DECREF.exit120

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #13
  br label %Py_DECREF.exit120

Py_DECREF.exit120:                                ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.bs = icmp slt i32 %i.bo, 0
  br i1 %i.bs, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %Py_DECREF.exit120
  %i.bt = getelementptr i8, ptr %0, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !66
  %i.bv = sext i32 %i.bu to i64
  %i.bw = tail call ptr @PyLong_FromLong(i64 noundef %i.bv) #13 ; 5 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bw) #13
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %.not.i117 = icmp sgt i32 %i.bz, -1
  br i1 %.not.i117, label %bb.af, label %Py_DECREF.exit118

bb.af:                                            ; preds = %bb.ae
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.bw, align 8, !tbaa !56
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ag, label %Py_DECREF.exit118

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bw) #13
  br label %Py_DECREF.exit118

Py_DECREF.exit118:                                ; preds = %bb.ae, %bb.af, %bb.ag
  %i.cc = icmp slt i32 %i.by, 0
  br i1 %i.cc, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %Py_DECREF.exit118
  %i.cd = getelementptr i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !50
  %i.cf = sext i32 %i.ce to i64
  %i.cg = tail call ptr @PyLong_FromLong(i64 noundef %i.cf) #13 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.cg) #13
  %i.cj = load i32, ptr %i.cg, align 8, !tbaa !56 ; 2 uses
  %.not.i115 = icmp sgt i32 %i.cj, -1
  br i1 %.not.i115, label %bb.aj, label %Py_DECREF.exit116

bb.aj:                                            ; preds = %bb.ai
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.cg, align 8, !tbaa !56
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ak, label %Py_DECREF.exit116

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #13
  br label %Py_DECREF.exit116

Py_DECREF.exit116:                                ; preds = %bb.ai, %bb.aj, %bb.ak
  %i.cm = icmp slt i32 %i.ci, 0
  br i1 %i.cm, label %.thread, label %bb.al

bb.al:                                            ; preds = %Py_DECREF.exit116
  %i.cn = getelementptr i8, ptr %0, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !57
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call ptr @PyLong_FromLong(i64 noundef %i.cp) #13 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.cq) #13
  %i.ct = load i32, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %.not.i113 = icmp sgt i32 %i.ct, -1
  br i1 %.not.i113, label %bb.an, label %Py_DECREF.exit114

bb.an:                                            ; preds = %bb.am
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cq, align 8, !tbaa !56
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ao, label %Py_DECREF.exit114

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #13
  br label %Py_DECREF.exit114

Py_DECREF.exit114:                                ; preds = %bb.am, %bb.an, %bb.ao
  %i.cw = icmp slt i32 %i.cs, 0
  br i1 %i.cw, label %.thread, label %Py_DECREF.exit

.thread:                                          ; preds = %Py_DECREF.exit114, %bb.al, %Py_DECREF.exit116, %bb.ah, %Py_DECREF.exit118, %bb.ad, %Py_DECREF.exit120, %bb.z, %Py_DECREF.exit122, %bb.v, %Py_DECREF.exit124, %bb.r, %Py_DECREF.exit126, %bb.n, %Py_DECREF.exit128, %bb.j, %Py_DECREF.exit130, %bb.f, %Py_DECREF.exit132, %bb.b
  %i.cx = load i32, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %.not.i = icmp sgt i32 %i.cx, -1
  br i1 %.not.i, label %bb.ap, label %Py_DECREF.exit

bb.ap:                                            ; preds = %.thread
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.a, align 8, !tbaa !56
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.aq, label %Py_DECREF.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.aq, %bb.ap, %.thread, %Py_DECREF.exit114, %bb.a
  %.0 = phi ptr [ %i.a, %Py_DECREF.exit114 ], [ null, %bb.a ], [ null, %.thread ], [ null, %bb.ap ], [ null, %bb.aq ]
  ret ptr %.0
}

declare ptr @PyDict_New() local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_str_to_int(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  %i.b = tail call ptr @__errno_location() #15    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = call i64 @__isoc23_strtol(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4, !tbaa !7
  %i.g = icmp eq i32 %i.f, 34
  %i.h = add i64 %i.c, -2147483648
  %or.cond = icmp ult i64 %i.h, -4294967296
  %or.cond8 = select i1 %i.g, i1 true, i1 %or.cond
  br i1 %or.cond8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nsw i64 %i.c to i32
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden void @_Py_get_env_flag(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %_Py_GetEnv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef readonly %2) #13 ; 4 uses
  %.not6.i = icmp eq ptr %i.b, null
  br i1 %.not6.i, label %_Py_GetEnv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %i.b, align 1, !tbaa !56
  %.not7.i = icmp eq i8 %i.c, 0
  br i1 %.not7.i, label %_Py_GetEnv.exit.thread, label %_Py_GetEnv.exit

_Py_GetEnv.exit:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %i.b, ptr %i.a, align 8, !tbaa !11
  %i.d = tail call ptr @__errno_location() #15    ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.e = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56
  %.not.i7 = icmp eq i8 %i.g, 0
  br i1 %.not.i7, label %bb.d, label %_Py_str_to_int.exit.thread

bb.d:                                             ; preds = %_Py_GetEnv.exit
  %i.h = load i32, ptr %i.d, align 4, !tbaa !7
  %i.i = icmp eq i32 %i.h, 34
  %i.j = add i64 %i.e, -2147483648
  %or.cond.i = icmp ult i64 %i.j, -4294967296
  %or.cond8.i = select i1 %i.i, i1 true, i1 %or.cond.i
  br i1 %or.cond8.i, label %_Py_str_to_int.exit.thread, label %_Py_str_to_int.exit

_Py_str_to_int.exit.thread:                       ; preds = %_Py_GetEnv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

_Py_str_to_int.exit:                              ; preds = %bb.d
  %i.k = trunc nuw nsw i64 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.l = icmp slt i64 %i.e, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Py_str_to_int.exit.thread, %_Py_str_to_int.exit
  br label %bb.f

bb.f:                                             ; preds = %_Py_str_to_int.exit, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ %i.k, %_Py_str_to_int.exit ] ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !7
  %i.n = icmp slt i32 %i.m, %.0
  br i1 %i.n, label %bb.g, label %_Py_GetEnv.exit.thread

bb.g:                                             ; preds = %bb.f
  store i32 %.0, ptr %1, align 4, !tbaa !7
  br label %_Py_GetEnv.exit.thread

_Py_GetEnv.exit.thread:                           ; preds = %bb.b, %bb.c, %bb.a, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden void @_PyPreConfig_Read(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.PyStatus, align 8           ; 7 uses
  %4 = alloca %struct.PyStatus, align 8           ; 7 uses
  %5 = alloca %struct._PyPreCmdline, align 8      ; 11 uses
  %6 = alloca %struct.PyStatus, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_PyRuntime_Initialize(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %4) #13
  %i.b = load <2 x i32>, ptr %4, align 8
  %.sroa.016.0.copyload = load i32, ptr %4, align 8, !tbaa !7
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load <2 x ptr>, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load <2 x i32>, ptr %.sroa.19.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not = icmp eq i32 %.sroa.016.0.copyload, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x i32> %i.b, ptr %0, align 8
  %.sroa.17.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.c, ptr %.sroa.17.0..sroa_idx38, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.d, ptr %.sroa.19.0..sroa_idx62, align 8
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !62
  %.not.i = icmp eq i32 %i.e, 1
  br i1 %.not.i, label %bb.d, label %preconfig_get_global_vars.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr @Py_IsolatedFlag, align 4, !tbaa !7
  store i32 %i.i, ptr %i.f, align 4, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  %.not6.i = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not6.i to i32
  store i32 %i.n, ptr %i.j, align 4, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr @Py_UTF8Mode, align 4, !tbaa !7 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %preconfig_get_global_vars.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %1, i64 28
  store i32 %i.o, ptr %i.q, align 4, !tbaa !66
  br label %preconfig_get_global_vars.exit

preconfig_get_global_vars.exit:                   ; preds = %bb.c, %bb.h, %bb.i
  %i.r = call ptr @setlocale(i32 noundef 0, ptr noundef null) #13 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %preconfig_get_global_vars.exit
  store i32 1, ptr %0, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyPreConfig_Read, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.16, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.x, align 4
  br label %bb.az

bb.k:                                             ; preds = %preconfig_get_global_vars.exit
  %i.y = call ptr @_PyMem_RawStrdup(ptr noundef nonnull %i.r) #13 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %0, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyPreConfig_Read, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ae, align 4
  br label %bb.az

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %1, i64 8
  %i.ag = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.ah = load <4 x i32>, ptr %1, align 4, !tbaa !7, !noalias !67 ; 3 uses
  %i.ai = getelementptr i8, ptr %1, i64 16        ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63, !noalias !67 ; 3 uses
  %i.ak = getelementptr i8, ptr %1, i64 32        ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 20        ; 11 uses
  %i.am = getelementptr i8, ptr %1, i64 24        ; 7 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !67 ; 3 uses
  %i.ao = getelementptr i8, ptr %1, i64 28        ; 5 uses
  %i.ap = getelementptr i8, ptr %1, i64 36        ; 4 uses
  %i.aq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !7, !noalias !67 ; 4 uses
  %.not112 = icmp eq i32 %i.aj, 0
  br i1 %.not112, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = call ptr @_Py_SetLocaleFromEnv(i32 noundef 0) #13 ; 0 uses
  %i.as = load <4 x i32>, ptr %1, align 4, !tbaa !7
  %.pre179.pre = load i32, ptr %i.ai, align 4, !tbaa !63
  %.pre182.pre = load i32, ptr %i.am, align 4, !tbaa !65
  %i.at = load <2 x i32>, ptr %i.ak, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre182 = phi i32 [ %.pre182.pre, %bb.n ], [ %i.an, %bb.m ]
  %.pre179 = phi i32 [ %.pre179.pre, %bb.n ], [ 0, %bb.m ]
  %i.au = phi <4 x i32> [ %i.as, %bb.n ], [ %i.ah, %bb.m ]
  %i.av = phi <2 x i32> [ %i.at, %bb.n ], [ %i.aq, %bb.m ]
  %.pr = load i32, ptr %i.ao, align 4, !tbaa !66
  %.pre181 = load i32, ptr %i.al, align 4, !tbaa !64
  %i.aw = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  %i.ax = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !7
  %i.ay = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 -1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i32 -1, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 -1, ptr %i.bb, align 8
  %.not113 = icmp eq ptr %2, null
  %.sroa.17.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.19.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.be = extractelement <2 x i32> %i.aq, i64 0
  %i.bf = extractelement <2 x i32> %i.aq, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread
  %i.bg = phi i32 [ %.pre182, %bb.o ], [ %i.an, %.thread ]
  %i.bh = phi i32 [ %.pre181, %bb.o ], [ %i.em, %.thread ]
  %i.bi = phi i32 [ %.pre179, %bb.o ], [ %i.aj, %.thread ]
  %i.bj = phi i1 [ false, %bb.o ], [ true, %.thread ]
  %.0104170 = phi i32 [ 0, %bb.o ], [ %.1105, %.thread ] ; 2 uses
  %i.bk = phi i32 [ %.pr, %bb.o ], [ %i.ek, %.thread ] ; 3 uses
  %i.bl = phi <4 x i32> [ %i.au, %bb.o ], [ %i.ah, %.thread ]
  %i.bm = phi <2 x i32> [ %i.av, %bb.o ], [ %i.aq, %.thread ]
  store <4 x i32> %i.bl, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !63
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10636), align 4, !tbaa !64
  store i32 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10640), align 8, !tbaa !65
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10644), align 4, !tbaa !66
  store <2 x i32> %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  br i1 %.not113, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_PyArgv_AsWstrList(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %6, ptr noundef nonnull readonly %2, ptr noundef nonnull %5)
  %i.bn = load <2 x i32>, ptr %6, align 8
  %.sroa.016.0.copyload23 = load i32, ptr %6, align 8, !tbaa !7
  %i.bo = load <2 x ptr>, ptr %.sroa.17.0..sroa_idx44, align 8, !tbaa !11
  %i.bp = load <2 x i32>, ptr %.sroa.19.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not114 = icmp eq i32 %.sroa.016.0.copyload23, 0
  br i1 %.not114, label %bb.r, label %.thread146

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !70
  call void @_PyPreCmdline_Read(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %3, ptr noundef nonnull %5, ptr noundef nonnull %1), !noalias !70
  %i.bq = load <2 x i32>, ptr %3, align 8, !noalias !70
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8, !tbaa !7, !noalias !70
  %i.br = load <2 x ptr>, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !tbaa !11, !noalias !70
  %i.bs = load <2 x i32>, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !70
  %.not.i119 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i119, label %bb.s, label %.thread146

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.ba, align 4, !tbaa !49, !noalias !70
  %i.bu = load <2 x i32>, ptr %i.az, align 8, !tbaa !7, !noalias !70
  store <2 x i32> %i.bu, ptr %i.af, align 4, !tbaa !7, !noalias !70
  %i.bv = load i32, ptr %i.bb, align 8, !tbaa !39, !noalias !70
  store i32 %i.bv, ptr %i.ak, align 4, !tbaa !50, !noalias !70
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !63, !noalias !70
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %preconfig_init_coerce_c_locale.exit.i.sink.split

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %_Py_GetEnv.exit.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = call ptr @getenv(ptr noundef nonnull @.str.19) #13, !noalias !70 ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i.i.i, label %_Py_GetEnv.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !56, !noalias !70
  switch i8 %i.by, label %_Py_GetEnv.exit.tail.thread.i.i [
    i8 0, label %_Py_GetEnv.exit.thread.i.i
    i8 48, label %_Py_GetEnv.exit.tail.i.i
  ]

_Py_GetEnv.exit.tail.i.i:                         ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !70
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %_Py_GetEnv.exit.tail.thread.i.i

bb.x:                                             ; preds = %_Py_GetEnv.exit.tail.i.i
  %i.cc = load i32, ptr %i.al, align 4, !tbaa !64, !noalias !70
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %_Py_GetEnv.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %_Py_GetEnv.exit.thread.i.i

_Py_GetEnv.exit.tail.thread.i.i:                  ; preds = %_Py_GetEnv.exit.tail.i.i, %bb.w
  %i.ce = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(5) @.str.21) #14, !noalias !70
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_Py_GetEnv.exit.tail.thread.i.i
  %i.cg = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !70
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %_Py_GetEnv.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.am, align 4, !tbaa !65, !noalias !70
  br label %_Py_GetEnv.exit.thread.i.i

bb.ab:                                            ; preds = %_Py_GetEnv.exit.tail.thread.i.i
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !64, !noalias !70
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ac, label %_Py_GetEnv.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %_Py_GetEnv.exit.thread.i.i

_Py_GetEnv.exit.thread.i.i:                       ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !64, !noalias !70 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = icmp eq i32 %i.ck, 1
  %or.cond.i.i = or i1 %i.cl, %i.cm
  br i1 %or.cond.i.i, label %.sink.split.i.i, label %bb.ad

.sink.split.i.i:                                  ; preds = %_Py_GetEnv.exit.thread.i.i
  %i.cn = call i32 @_Py_LegacyLocaleDetected(i32 noundef 0) #13, !noalias !70
  %.not21.i.i = icmp eq i32 %i.cn, 0
  %..i.i = select i1 %.not21.i.i, i32 0, i32 2
  store i32 %..i.i, ptr %i.al, align 4, !tbaa !64, !noalias !70
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i.i, %_Py_GetEnv.exit.thread.i.i
  %i.co = load i32, ptr %i.am, align 4, !tbaa !65, !noalias !70
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %preconfig_init_coerce_c_locale.exit.i.sink.split, label %preconfig_init_coerce_c_locale.exit.i

preconfig_init_coerce_c_locale.exit.i.sink.split: ; preds = %bb.ad, %bb.t
  store i32 0, ptr %i.am, align 4, !tbaa !65, !noalias !70
  br label %preconfig_init_coerce_c_locale.exit.i

preconfig_init_coerce_c_locale.exit.i:            ; preds = %preconfig_init_coerce_c_locale.exit.i.sink.split, %bb.ad
  %i.cq = load i32, ptr %i.ao, align 4, !tbaa !66, !noalias !73
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %preconfig_init_coerce_c_locale.exit.i
  %i.cs = load i64, ptr %i.bc, align 8, !tbaa !32, !noalias !73 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_Py_get_xoption.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !21, !noalias !73
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph.i.i.i
  %.01929.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dh, %bb.aj ] ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %.01929.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !30, !noalias !73 ; 5 uses
  %i.cx = call ptr @wcschr(ptr noundef %i.cw, i32 noundef 61) #14, !noalias !73 ; 3 uses
  %.not.i.i24.i = icmp eq ptr %i.cx, null         ; 2 uses
  br i1 %.not.i.i24.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dc = call i64 @wcslen(ptr noundef %i.cw) #14, !noalias !73
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.018.i.i.i = phi i64 [ %i.db, %bb.ag ], [ %i.dc, %bb.ah ] ; 2 uses
  %i.dd = call i32 @wcsncmp(ptr noundef %i.cw, ptr noundef nonnull @.str.22, i64 noundef %.018.i.i.i) #14, !noalias !73
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = and i64 %.018.i.i.i, 4611686018427387903
  %i.dg = icmp eq i64 %i.df, 4
  %or.cond.i25.i = and i1 %i.de, %i.dg
  br i1 %or.cond.i25.i, label %_Py_get_xoption.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = add nuw nsw i64 %.01929.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dh, %i.cs
  br i1 %exitcond.not.i.i.i, label %_Py_get_xoption.exit.thread.i.i, label %bb.af, !llvm.loop !55

_Py_get_xoption.exit.i.i:                         ; preds = %bb.ai
  %.not.i26.i = icmp eq ptr %i.cw, null
  br i1 %.not.i26.i, label %_Py_get_xoption.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %_Py_get_xoption.exit.i.i
  br i1 %.not.i.i24.i, label %.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %i.dj = call i32 @wcscmp(ptr noundef %i.di, ptr noundef nonnull @.str.23) #14, !noalias !73
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.sink.split.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dl = call i32 @wcscmp(ptr noundef %i.di, ptr noundef nonnull @.str.24) #14, !noalias !73
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.sink.split.i, label %.thread146

_Py_get_xoption.exit.thread.i.i:                  ; preds = %bb.aj, %_Py_get_xoption.exit.i.i, %bb.ae
  %i.dn = load i32, ptr %i.ag, align 4, !tbaa !48, !noalias !73
  %.not.i22.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i22.i.i, label %.sink.split.i, label %bb.an

bb.an:                                            ; preds = %_Py_get_xoption.exit.thread.i.i
  %i.do = call ptr @getenv(ptr noundef nonnull @.str.26) #13, !noalias !73 ; 4 uses
  %.not6.i.i22.i = icmp eq ptr %i.do, null
  br i1 %.not6.i.i22.i, label %.sink.split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !56, !noalias !73
  switch i8 %i.dp, label %.thread146 [
    i8 0, label %.sink.split.i
    i8 49, label %_Py_GetEnv.exit.tail.i23.i
    i8 48, label %.tail.i.i
  ]

_Py_GetEnv.exit.tail.i23.i:                       ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !73
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %.sink.split.i, label %.thread146

.tail.i.i:                                        ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !noalias !73
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %.sink.split.i, label %.thread146

.sink.split.i:                                    ; preds = %.tail.i.i, %_Py_GetEnv.exit.tail.i23.i, %bb.ao, %bb.an, %_Py_get_xoption.exit.thread.i.i, %bb.am, %bb.al, %bb.ak
  %.sink.i = phi i32 [ 0, %.tail.i.i ], [ 1, %bb.ak ], [ 0, %bb.am ], [ 1, %bb.al ], [ 1, %_Py_GetEnv.exit.tail.i23.i ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %_Py_get_xoption.exit.thread.i.i ]
  store i32 %.sink.i, ptr %i.ao, align 4, !tbaa !66, !noalias !73
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i, %preconfig_init_coerce_c_locale.exit.i
  %i.dw = load i32, ptr %i.ap, align 4, !tbaa !57, !noalias !76
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aq, label %preconfig_read.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load i32, ptr %i.ag, align 4, !tbaa !48, !noalias !76
  %.not.i.i28.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i28.i, label %.thread13.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = call ptr @getenv(ptr noundef nonnull @.str.29) #13, !noalias !76 ; 3 uses
  %.not6.i.i29.i = icmp eq ptr %i.dz, null
  br i1 %.not6.i.i29.i, label %.thread13.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !56, !noalias !76
  %.not7.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not7.i.i.i, label %.thread13.i.i, label %_Py_GetEnv.exit.i.i

_Py_GetEnv.exit.i.i:                              ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !76
  %i.eb = call i32 @_PyMem_GetAllocatorName(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.a) #13, !noalias !76
  %i.ec = icmp sgt i32 %i.eb, -1
  br i1 %i.ec, label %.thread.i.i, label %bb.au

.thread.i.i:                                      ; preds = %_Py_GetEnv.exit.i.i
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !76 ; 2 uses
  store i32 %i.ed, ptr %i.ap, align 4, !tbaa !57, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !76
  %i.ee = icmp ne i32 %i.ed, 0
  br label %.thread13.i.i

.thread13.i.i:                                    ; preds = %.thread.i.i, %bb.as, %bb.ar, %bb.aq
  %.not.i30.i = phi i1 [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.aq ], [ %i.ee, %.thread.i.i ]
  %i.ef = load i32, ptr %i.ak, align 4, !tbaa !50, !noalias !76
  %.not10.i.i = icmp eq i32 %i.ef, 0
  %brmerge.i.i = select i1 %.not10.i.i, i1 true, i1 %.not.i30.i
  br i1 %brmerge.i.i, label %preconfig_read.exit, label %bb.at

bb.at:                                            ; preds = %.thread13.i.i
  store i32 2, ptr %i.ap, align 4, !tbaa !57, !noalias !76
  br label %preconfig_read.exit

bb.au:                                            ; preds = %_Py_GetEnv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !76
  br label %.thread146

preconfig_read.exit:                              ; preds = %bb.at, %.thread13.i.i, %bb.ap
  %i.eg = load i32, ptr %i.al, align 4, !tbaa !64
  %i.eh = icmp eq i32 %i.eg, 0
  %7 = icmp ne i32 %.0104170, 0
  %or.cond = select i1 %i.eh, i1 true, i1 %7      ; 3 uses
  br i1 %or.cond, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %preconfig_read.exit
  %i.ei = call i32 @_Py_CoerceLegacyLocale(i32 noundef 0) #13 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %preconfig_read.exit
  %.1105 = phi i32 [ %.0104170, %preconfig_read.exit ], [ 1, %bb.av ]
  %i.ej = icmp eq i32 %i.bk, -1
  %i.ek = load i32, ptr %i.ao, align 4, !tbaa !66 ; 4 uses
  br i1 %i.ej, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.el = icmp ne i32 %i.ek, 1
  %or.cond165 = and i1 %or.cond, %i.el
  br i1 %or.cond165, label %.thread146, label %.thread

bb.ay:                                            ; preds = %bb.aw
  %.not116 = icmp eq i32 %i.ek, %i.bk
  %or.cond164 = and i1 %or.cond, %.not116
  br i1 %or.cond164, label %.thread146, label %.thread

.thread:                                          ; preds = %bb.ax, %bb.ay
  %i.em = load i32, ptr %i.al, align 4, !tbaa !64 ; 2 uses
  store <4 x i32> %i.ah, ptr %1, align 4, !tbaa !7
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !63
  store i32 %i.be, ptr %i.ak, align 4, !tbaa !50
  store i32 %i.an, ptr %i.am, align 4, !tbaa !65
  store i32 %i.bf, ptr %i.ap, align 4, !tbaa !57
  store i32 %i.ek, ptr %i.ao, align 4, !tbaa !66
  store i32 %i.em, ptr %i.al, align 4, !tbaa !64
  br i1 %i.bj, label %.thread146, label %bb.p

.thread146:                                       ; preds = %bb.ax, %bb.ay, %bb.ao, %_Py_GetEnv.exit.tail.i23.i, %.tail.i.i, %bb.r, %bb.am, %bb.q, %.thread, %bb.au
  %i.en = phi <2 x i32> [ <i32 1, i32 0>, %bb.au ], [ zeroinitializer, %bb.ay ], [ <i32 1, i32 0>, %bb.am ], [ %i.bq, %bb.r ], [ <i32 1, i32 0>, %.tail.i.i ], [ <i32 1, i32 0>, %_Py_GetEnv.exit.tail.i23.i ], [ <i32 1, i32 0>, %bb.ao ], [ <i32 1, i32 0>, %.thread ], [ %i.bn, %bb.q ], [ zeroinitializer, %bb.ax ]
  %i.eo = phi <2 x i32> [ zeroinitializer, %bb.au ], [ zeroinitializer, %bb.ay ], [ zeroinitializer, %bb.am ], [ %i.bs, %bb.r ], [ zeroinitializer, %.tail.i.i ], [ zeroinitializer, %_Py_GetEnv.exit.tail.i23.i ], [ zeroinitializer, %bb.ao ], [ zeroinitializer, %.thread ], [ %i.bp, %bb.q ], [ zeroinitializer, %bb.ax ]
  %i.ep = phi <2 x ptr> [ <ptr @__func__.preconfig_init_allocator, ptr @.str.30>, %bb.au ], [ splat (ptr null), %bb.ay ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.25>, %bb.am ], [ %i.br, %bb.r ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.28>, %.tail.i.i ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.28>, %_Py_GetEnv.exit.tail.i23.i ], [ <ptr @__func__.preconfig_init_utf8_mode, ptr @.str.28>, %bb.ao ], [ <ptr @__func__._PyPreConfig_Read, ptr @.str.17>, %.thread ], [ %i.bo, %bb.q ], [ splat (ptr null), %bb.ax ]
  %i.eq = call ptr @setlocale(i32 noundef 0, ptr noundef nonnull %i.y) #13 ; 0 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.y) #13
  store <4 x i32> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store <4 x i32> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !7
  store <2 x i32> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10648), align 8, !tbaa !7
  call void @_PyWideStringList_Clear(ptr noundef nonnull %5) #13
  call void @_PyWideStringList_Clear(ptr noundef nonnull %i.bc) #13
  store <2 x i32> %i.en, ptr %0, align 8
  %.sroa.17.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ep, ptr %.sroa.17.0..sroa_idx48, align 8, !tbaa !11
  %.sroa.19.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.eo, ptr %.sroa.19.0..sroa_idx72, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.j, %.thread146, %bb.l, %bb.b
  ret void
}

declare void @_PyRuntime_Initialize(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @_Py_SetLocaleFromEnv(i32 noundef) local_unnamed_addr #1

declare i32 @_Py_CoerceLegacyLocale(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @_PyPreConfig_Write(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !7, !noalias !79 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63, !noalias !79 ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64, !noalias !79 ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 4, !tbaa !7, !noalias !79 ; 3 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !65, !noalias !79
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 836), align 4, !tbaa !82
  %.not2 = icmp eq i32 %i.i, 0
  br i1 %.not2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.j = extractelement <4 x i32> %i.g, i64 3     ; 2 uses
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @_PyMem_SetupAllocators(i32 noundef %i.j) #13
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyPreConfig_Write, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.18, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.q, align 4
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = extractelement <4 x i32> %i.a, i64 2     ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.r, ptr @Py_IsolatedFlag, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = extractelement <4 x i32> %i.a, i64 3     ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.t, 0
  %i.v = zext i1 %.not.i to i32
  store i32 %i.v, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = extractelement <4 x i32> %i.g, i64 1     ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.k, label %preconfig_set_global_vars.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.w, ptr @Py_UTF8Mode, align 4, !tbaa !7
  br label %preconfig_set_global_vars.exit

preconfig_set_global_vars.exit:                   ; preds = %bb.j, %bb.k
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %bb.o, label %bb.l

bb.l:                                             ; preds = %preconfig_set_global_vars.exit
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @_Py_CoerceLegacyLocale(i32 noundef %i.h) #13
  %.not6 = icmp eq i32 %i.y, 0
  %spec.select = select i1 %.not6, i32 0, i32 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.20.0 = phi i32 [ 0, %bb.l ], [ %spec.select, %bb.m ]
  %i.z = tail call ptr @_Py_SetLocaleFromEnv(i32 noundef 0) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %preconfig_set_global_vars.exit
  %.sroa.20.1 = phi i32 [ %i.e, %preconfig_set_global_vars.exit ], [ %.sroa.20.0, %bb.n ]
  store <4 x i32> %i.a, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10616), align 8, !tbaa !7
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10632), align 8, !tbaa !63
  store i32 %.sroa.20.1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10636), align 4, !tbaa !64
  store <4 x i32> %i.g, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10640), align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o, %bb.b
  ret void
}

declare i32 @_PyMem_SetupAllocators(i32 noundef) local_unnamed_addr #1

declare void @_PyOS_ResetGetOpt() local_unnamed_addr #1

declare i32 @_PyOS_GetOpt(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyWideStringList_Append(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @_Py_LegacyLocaleDetected(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @_PyMem_GetAllocatorName(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
end_hunk_0
