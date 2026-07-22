inline.NumInlined: 34
inline.NumDeleted: 14
begin_hunk_0_@iomodule_clear:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #6
  br label %Py_DECREF.exit115

Py_DECREF.exit115:                                ; preds = %bb.ab, %bb.aa, %bb.z, %Py_DECREF.exit117
  %i.au = getelementptr i8, ptr %.val, i64 80     ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49 ; 4 uses
  %.not98 = icmp eq ptr %i.av, null
  br i1 %.not98, label %Py_DECREF.exit113, label %bb.ac

bb.ac:                                            ; preds = %Py_DECREF.exit115
  store ptr null, ptr %i.au, align 8, !tbaa !49
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %.not.i112 = icmp sgt i32 %i.aw, -1
  br i1 %.not.i112, label %bb.ad, label %Py_DECREF.exit113

bb.ad:                                            ; preds = %bb.ac
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !29
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.ae, label %Py_DECREF.exit113

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.av) #6
  br label %Py_DECREF.exit113

Py_DECREF.exit113:                                ; preds = %bb.ae, %bb.ad, %bb.ac, %Py_DECREF.exit115
  %i.az = getelementptr i8, ptr %.val, i64 88     ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49 ; 4 uses
  %.not99 = icmp eq ptr %i.ba, null
  br i1 %.not99, label %Py_DECREF.exit111, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit113
  store ptr null, ptr %i.az, align 8, !tbaa !49
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !29 ; 2 uses
  %.not.i110 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i110, label %bb.ag, label %Py_DECREF.exit111

bb.ag:                                            ; preds = %bb.af
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !29
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ah, label %Py_DECREF.exit111

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #6
  br label %Py_DECREF.exit111

Py_DECREF.exit111:                                ; preds = %bb.ah, %bb.ag, %bb.af, %Py_DECREF.exit113
  %i.be = getelementptr i8, ptr %.val, i64 96     ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49 ; 4 uses
  %.not100 = icmp eq ptr %i.bf, null
  br i1 %.not100, label %Py_DECREF.exit109, label %bb.ai

bb.ai:                                            ; preds = %Py_DECREF.exit111
  store ptr null, ptr %i.be, align 8, !tbaa !49
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %.not.i108 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i108, label %bb.aj, label %Py_DECREF.exit109

bb.aj:                                            ; preds = %bb.ai
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !29
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ak, label %Py_DECREF.exit109

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bf) #6
  br label %Py_DECREF.exit109

Py_DECREF.exit109:                                ; preds = %bb.ak, %bb.aj, %bb.ai, %Py_DECREF.exit111
  %i.bj = getelementptr i8, ptr %.val, i64 104    ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49 ; 4 uses
  %.not101 = icmp eq ptr %i.bk, null
  br i1 %.not101, label %Py_DECREF.exit107, label %bb.al

bb.al:                                            ; preds = %Py_DECREF.exit109
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  %.not.i106 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i106, label %bb.am, label %Py_DECREF.exit107

bb.am:                                            ; preds = %bb.al
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !29
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.an, label %Py_DECREF.exit107

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #6
  br label %Py_DECREF.exit107

Py_DECREF.exit107:                                ; preds = %bb.an, %bb.am, %bb.al, %Py_DECREF.exit109
  %i.bo = getelementptr i8, ptr %.val, i64 112    ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !49 ; 4 uses
  %.not102 = icmp eq ptr %i.bp, null
  br i1 %.not102, label %Py_DECREF.exit105, label %bb.ao

bb.ao:                                            ; preds = %Py_DECREF.exit107
  store ptr null, ptr %i.bo, align 8, !tbaa !49
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !29 ; 2 uses
  %.not.i104 = icmp sgt i32 %i.bq, -1
  br i1 %.not.i104, label %bb.ap, label %Py_DECREF.exit105

bb.ap:                                            ; preds = %bb.ao
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !29
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.aq, label %Py_DECREF.exit105

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #6
  br label %Py_DECREF.exit105

Py_DECREF.exit105:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %Py_DECREF.exit107
  %i.bt = getelementptr i8, ptr %.val, i64 120    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 4 uses
  %.not103 = icmp eq ptr %i.bu, null
  br i1 %.not103, label %Py_DECREF.exit, label %bb.ar

bb.ar:                                            ; preds = %Py_DECREF.exit105
  store ptr null, ptr %i.bt, align 8, !tbaa !49
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp sgt i32 %i.bv, -1
  br i1 %.not.i, label %bb.as, label %Py_DECREF.exit

bb.as:                                            ; preds = %bb.ar
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !29
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.at, label %Py_DECREF.exit

bb.at:                                            ; preds = %bb.as
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bu) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.at, %bb.as, %bb.ar, %Py_DECREF.exit105
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @iomodule_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @iomodule_clear(ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInit__io() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @_PyIO_Module) #6
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_io_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [6 x i8], align 1                 ; 7 uses
  %i.d = alloca [8 x ptr], align 16               ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 16
  %.val153 = load i64, ptr %i.i, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %.val153, %bb.b ], [ 0, %bb.a ]
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = add i64 %i.k, -1                         ; 2 uses
  %i.m = add i64 %2, -1
  %i.n = icmp ult i64 %i.m, 8
  %i.o = icmp ne ptr %1, null
  %i.p = and i1 %i.o, %i.n
  %or.cond5 = and i1 %.not, %i.p
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_io_open._parser, i32 noundef 1, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not116 = icmp eq ptr %i.q, null
  br i1 %.not116, label %bb.dr, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %1, %bb.c ]   ; 8 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 7 uses
  %.not117 = icmp eq i64 %i.l, 0
  br i1 %.not117, label %bb.at, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.t = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 3 uses
  %.not118 = icmp eq ptr %i.u, null
  br i1 %.not118, label %.thread158, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val148 = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr i8, ptr %.val148, i64 168
  %.val152 = load i64, ptr %i.w, align 8, !tbaa !51
  %i.x = and i64 %.val152, 268435456
  %.not119 = icmp eq i64 %i.x, 0
  br i1 %.not119, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.u) #6
  br label %bb.dr

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %4 = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.y = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %4, ptr noundef nonnull %i.e) #6 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread155, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #7
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !52
  %.not120 = icmp eq i64 %i.aa, %i.ab
  br i1 %.not120, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.17) #6
  br label %.thread155

bb.k:                                             ; preds = %bb.i
  %i.ad = add i64 %i.k, -2                        ; 2 uses
  %.not121 = icmp eq i64 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br i1 %.not121, label %bb.at, label %.thread158

.thread155:                                       ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.dr

.thread158:                                       ; preds = %bb.k, %bb.e
  %.191 = phi i64 [ %i.l, %bb.e ], [ %i.ad, %bb.k ] ; 2 uses
  %.087 = phi ptr [ @.str.14, %bb.e ], [ %i.y, %bb.k ] ; 6 uses
  %i.ae = getelementptr i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %.not122 = icmp eq ptr %i.af, null
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.thread158
  %i.ag = call i32 @PyLong_AsInt(ptr noundef nonnull %i.af) #6 ; 3 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @PyErr_Occurred() #6
  %.not123 = icmp eq ptr %i.ai, null
  br i1 %.not123, label %bb.n, label %bb.dr

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = add i64 %.191, -1                       ; 2 uses
  %.not124 = icmp eq i64 %i.aj, 0
  br i1 %.not124, label %bb.at, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread158
  %.292 = phi i64 [ %i.aj, %bb.n ], [ %.191, %.thread158 ] ; 2 uses
  %.085 = phi i32 [ %i.ag, %bb.n ], [ -1, %.thread158 ] ; 5 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 24      ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11 ; 4 uses
  %.not125 = icmp eq ptr %i.al, null
  br i1 %.not125, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = icmp eq ptr %i.al, @_Py_NoneStruct
  br i1 %i.am, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val147 = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr i8, ptr %.val147, i64 168
  %.val151 = load i64, ptr %i.ao, align 8, !tbaa !51
  %i.ap = and i64 %.val151, 268435456
  %.not126 = icmp eq i64 %i.ap, 0
  br i1 %.not126, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %5 = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.aq = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %5, ptr noundef nonnull %i.f) #6 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.thread162, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #7
  %i.at = load i64, ptr %i.f, align 8, !tbaa !52
  %.not127 = icmp eq i64 %i.as, %i.at
  br i1 %.not127, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.17) #6
  br label %.thread162

.thread162:                                       ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.dr

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.al) #6
  br label %bb.dr

bb.w:                                             ; preds = %bb.u, %bb.p
  %.082 = phi ptr [ %i.aq, %bb.u ], [ null, %bb.p ] ; 2 uses
  %i.av = add i64 %.292, -1                       ; 2 uses
  %.not128 = icmp eq i64 %i.av, 0
  br i1 %.not128, label %bb.at, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.o
  %.393 = phi i64 [ %i.av, %bb.w ], [ %.292, %bb.o ] ; 2 uses
  %.183 = phi ptr [ %.082, %bb.w ], [ null, %bb.o ] ; 4 uses
  %i.aw = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 4 uses
  %.not129 = icmp eq ptr %i.ax, null
  br i1 %.not129, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = icmp eq ptr %i.ax, @_Py_NoneStruct
  br i1 %i.ay, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %.val146 = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.ba = getelementptr i8, ptr %.val146, i64 168
  %.val150 = load i64, ptr %i.ba, align 8, !tbaa !51
  %i.bb = and i64 %.val150, 268435456
  %.not130 = icmp eq i64 %i.bb, 0
  br i1 %.not130, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %6 = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.bc = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %6, ptr noundef nonnull %i.g) #6 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread165, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #7
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !52
  %.not131 = icmp eq i64 %i.be, %i.bf
  br i1 %.not131, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.17) #6
  br label %.thread165

.thread165:                                       ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.dr

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.ax) #6
  br label %bb.dr

bb.af:                                            ; preds = %bb.ad, %bb.y
  %.079 = phi ptr [ %i.bc, %bb.ad ], [ null, %bb.y ] ; 2 uses
  %i.bh = add i64 %.393, -1                       ; 2 uses
  %.not132 = icmp eq i64 %i.bh, 0
  br i1 %.not132, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.x
  %.4 = phi i64 [ %i.bh, %bb.af ], [ %.393, %bb.x ] ; 2 uses
  %.180 = phi ptr [ %.079, %bb.af ], [ null, %bb.x ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.r, i64 40      ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 4 uses
  %.not133 = icmp eq ptr %i.bj, null
  br i1 %.not133, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = icmp eq ptr %i.bj, @_Py_NoneStruct
  br i1 %i.bk, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bm = getelementptr i8, ptr %.val, i64 168
  %.val149 = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.bn = and i64 %.val149, 268435456
  %.not134 = icmp eq i64 %i.bn, 0
  br i1 %.not134, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %7 = load ptr, ptr %i.bi, align 8, !tbaa !11
  %i.bo = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %7, ptr noundef nonnull %i.h) #6 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.thread168, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #7
  %i.br = load i64, ptr %i.h, align 8, !tbaa !52
  %.not135 = icmp eq i64 %i.bq, %i.br
  br i1 %.not135, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bs = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.bs, ptr noundef nonnull @.str.17) #6
  br label %.thread168

.thread168:                                       ; preds = %bb.aj, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.dr

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bj) #6
  br label %bb.dr

bb.ao:                                            ; preds = %bb.am, %bb.ah
  %.076 = phi ptr [ %i.bo, %bb.am ], [ null, %bb.ah ] ; 2 uses
  %i.bt = add i64 %.4, -1                         ; 2 uses
  %.not136 = icmp eq i64 %i.bt, 0
  br i1 %.not136, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ag
  %.5 = phi i64 [ %i.bt, %bb.ao ], [ %.4, %bb.ag ]
  %.177 = phi ptr [ %.076, %bb.ao ], [ null, %bb.ag ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.r, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not137 = icmp eq ptr %i.bv, null
  br i1 %.not137, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bv) #6 ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.dr, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not138 = icmp eq i64 %.5, 1
  br i1 %.not138, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.074 = phi i32 [ %i.bw, %bb.ar ], [ 1, %bb.ap ]
  %i.by = getelementptr i8, ptr %i.r, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.k, %bb.ar, %bb.ao, %bb.af, %bb.w, %bb.n, %.thread, %bb.as
  %.188 = phi ptr [ %.087, %bb.as ], [ %.087, %bb.ar ], [ %.087, %bb.ao ], [ %.087, %bb.af ], [ %.087, %bb.w ], [ %.087, %bb.n ], [ @.str.14, %.thread ], [ %i.y, %bb.k ] ; 5 uses
  %.186 = phi i32 [ %.085, %bb.as ], [ %.085, %bb.ar ], [ %.085, %bb.ao ], [ %.085, %bb.af ], [ %.085, %bb.w ], [ %i.ag, %bb.n ], [ -1, %.thread ], [ -1, %bb.k ] ; 4 uses
  %.284 = phi ptr [ %.183, %bb.as ], [ %.183, %bb.ar ], [ %.183, %bb.ao ], [ %.183, %bb.af ], [ %.082, %bb.w ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.k ] ; 2 uses
  %.281 = phi ptr [ %.180, %bb.as ], [ %.180, %bb.ar ], [ %.180, %bb.ao ], [ %.079, %bb.af ], [ null, %bb.w ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.k ] ; 2 uses
  %.278 = phi ptr [ %.177, %bb.as ], [ %.177, %bb.ar ], [ %.076, %bb.ao ], [ null, %bb.af ], [ null, %bb.w ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.k ] ; 2 uses
  %.175 = phi i32 [ %.074, %bb.as ], [ %i.bw, %bb.ar ], [ 1, %bb.ao ], [ 1, %bb.af ], [ 1, %bb.w ], [ 1, %bb.n ], [ 1, %.thread ], [ 1, %bb.k ]
  %.073 = phi ptr [ %i.bz, %bb.as ], [ @_Py_NoneStruct, %bb.ar ], [ @_Py_NoneStruct, %bb.ao ], [ @_Py_NoneStruct, %bb.af ], [ @_Py_NoneStruct, %bb.w ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ca = call i32 @PyNumber_Check(ptr noundef %i.s) #6
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !29  ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, -1073741825
  br i1 %i.cc, label %_Py_NewRef.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cd = add nuw i32 %i.cb, 1
  store i32 %i.cd, ptr %i.s, align 8, !tbaa !29
  br label %_Py_NewRef.exit.thread.i

bb.aw:                                            ; preds = %bb.at
  %i.ce = call ptr @PyOS_FSPath(ptr noundef %i.s) #6 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_io_open_impl.exit, label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.aw
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  %.0181.val239.i = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.ch = getelementptr i8, ptr %.0181.val239.i, i64 168
  %.val241.i = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.ci = and i64 %.val241.i, 402653184
  %or.cond298.i = icmp eq i64 %i.ci, 0
  br i1 %or.cond298.i, label %Py_DECREF.exit.thread292.i, label %_Py_NewRef.exit.thread.i

Py_DECREF.exit.thread292.i:                       ; preds = %_Py_NewRef.exit.i
  %i.cj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ck = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cj, ptr noundef nonnull @.str.22, ptr noundef %i.s) #6 ; 0 uses
  br label %Py_DECREF.exit.i

_Py_NewRef.exit.thread.i:                         ; preds = %_Py_NewRef.exit.i, %bb.av, %bb.au
  %.0181250.i = phi ptr [ %i.ce, %_Py_NewRef.exit.i ], [ %i.s, %bb.au ], [ %i.s, %bb.av ] ; 12 uses
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.188) #7 ; 2 uses
  %.not320.i = icmp eq i64 %i.cl, 0
  br i1 %.not320.i, label %.thread443.i, label %.lr.ph.i

.thread443.i:                                     ; preds = %_Py_NewRef.exit.thread.i
  store i8 0, ptr %i.c, align 1, !tbaa !29
  br label %bb.br

bb.ax:                                            ; preds = %bb.be
  %i.cm = add nuw i64 %.0134313.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %i.cl
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

.lr.ph.i:                                         ; preds = %_Py_NewRef.exit.thread.i, %bb.ax
  %.0134313.i = phi i64 [ %i.cm, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 2 uses
  %.0135312.i = phi i32 [ %.1136.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0138311.i = phi i32 [ %.1139.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0142310.i = phi i32 [ %.1143.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0146309.i = phi i32 [ %.1147.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0150308.i = phi i32 [ %.1151.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0154307.i = phi i32 [ %.1155.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0163306.i = phi i32 [ %.1164.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %i.cn = getelementptr i8, ptr %.188, i64 %.0134313.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29  ; 2 uses
  %i.cp = sext i8 %i.co to i32
  switch i8 %i.co, label %bb.bf [
    i8 120, label %bb.be
    i8 114, label %bb.ay
    i8 119, label %bb.az
    i8 97, label %bb.ba
    i8 43, label %bb.bb
    i8 116, label %bb.bc
    i8 98, label %bb.bd
  ]

bb.ay:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.az:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.ba:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.bb:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.bc:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %.lr.ph.i
  %.1164.i = phi i32 [ 1, %bb.bd ], [ %.0163306.i, %bb.ay ], [ %.0163306.i, %bb.az ], [ %.0163306.i, %bb.ba ], [ %.0163306.i, %bb.bb ], [ %.0163306.i, %bb.bc ], [ %.0163306.i, %.lr.ph.i ] ; 2 uses
  %.1155.i = phi i32 [ %.0154307.i, %bb.bd ], [ %.0154307.i, %bb.ay ], [ %.0154307.i, %bb.az ], [ %.0154307.i, %bb.ba ], [ %.0154307.i, %bb.bb ], [ 1, %bb.bc ], [ %.0154307.i, %.lr.ph.i ] ; 2 uses
  %.1151.i = phi i32 [ %.0150308.i, %bb.bd ], [ %.0150308.i, %bb.ay ], [ %.0150308.i, %bb.az ], [ %.0150308.i, %bb.ba ], [ 1, %bb.bb ], [ %.0150308.i, %bb.bc ], [ %.0150308.i, %.lr.ph.i ] ; 2 uses
  %.1147.i = phi i32 [ %.0146309.i, %bb.bd ], [ %.0146309.i, %bb.ay ], [ %.0146309.i, %bb.az ], [ 1, %bb.ba ], [ %.0146309.i, %bb.bb ], [ %.0146309.i, %bb.bc ], [ %.0146309.i, %.lr.ph.i ] ; 4 uses
  %.1143.i = phi i32 [ %.0142310.i, %bb.bd ], [ %.0142310.i, %bb.ay ], [ 1, %bb.az ], [ %.0142310.i, %bb.ba ], [ %.0142310.i, %bb.bb ], [ %.0142310.i, %bb.bc ], [ %.0142310.i, %.lr.ph.i ] ; 4 uses
  %.1139.i = phi i32 [ %.0138311.i, %bb.bd ], [ 1, %bb.ay ], [ %.0138311.i, %bb.az ], [ %.0138311.i, %bb.ba ], [ %.0138311.i, %bb.bb ], [ %.0138311.i, %bb.bc ], [ %.0138311.i, %.lr.ph.i ] ; 4 uses
  %.1136.i = phi i32 [ %.0135312.i, %bb.bd ], [ %.0135312.i, %bb.ay ], [ %.0135312.i, %bb.az ], [ %.0135312.i, %bb.ba ], [ %.0135312.i, %bb.bb ], [ %.0135312.i, %bb.bc ], [ 1, %.lr.ph.i ] ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 1
  %i.cr = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cq, i32 noundef %i.cp) #7
  %.not204.i = icmp eq ptr %i.cr, null
  br i1 %.not204.i, label %bb.ax, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i
  %i.cs = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.ct = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cs, ptr noundef nonnull @.str.23, ptr noundef nonnull %.188) #6 ; 0 uses
  br label %Py_DECREF.exit.i

._crit_edge.i:                                    ; preds = %bb.ax
  %i.cu = icmp eq i32 %.1151.i, 0                 ; 2 uses
  %i.cv = icmp ne i32 %.1155.i, 0
  %i.cw = icmp ne i32 %.1164.i, 0                 ; 3 uses
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false     ; 2 uses
  %.not200.i = icmp eq i32 %.1136.i, 0
  br i1 %.not200.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 120, ptr %i.c, align 1, !tbaa !29
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i
  %.0169.i = phi ptr [ %i.cy, %bb.bg ], [ %i.c, %._crit_edge.i ] ; 3 uses
  %.not196.i = icmp eq i32 %.1139.i, 0            ; 3 uses
  br i1 %.not196.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cz = getelementptr i8, ptr %.0169.i, i64 1
  store i8 114, ptr %.0169.i, align 1, !tbaa !29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1170.i = phi ptr [ %i.cz, %bb.bi ], [ %.0169.i, %bb.bh ] ; 3 uses
  %.not201.i = icmp eq i32 %.1143.i, 0
  br i1 %.not201.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.da = getelementptr i8, ptr %.1170.i, i64 1
end_hunk_0
