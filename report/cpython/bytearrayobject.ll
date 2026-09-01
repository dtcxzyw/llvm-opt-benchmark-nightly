Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytearrayobject?download=true
inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_rsplit:bb.a
  %i.li = icmp slt i64 %.020.i.i, 12
  br i1 %i.li, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.lj = getelementptr i8, ptr %i.gw, i64 24
  %.val.i23.i = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.lk = getelementptr [8 x i8], ptr %.val.i23.i, i64 %.020.i.i
  store ptr %i.ks, ptr %i.lk, align 8, !tbaa !11
  br label %Py_DECREF.exit61.i.i

bb.dp:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.ll = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.ks) #17, !inline_history !187
  %.not59.i.i = icmp eq i32 %i.ll, 0
  %i.lm = load i32, ptr %i.ks, align 8, !tbaa !22 ; 3 uses
  %.not.i60.i.i = icmp sgt i32 %i.lm, -1          ; 2 uses
  br i1 %.not59.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.dr, label %Py_DECREF.exit67.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.ln = add nsw i32 %i.lm, -1                   ; 2 uses
  store i32 %i.ln, ptr %i.ks, align 8, !tbaa !22
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.ds, label %Py_DECREF.exit67.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_Py_Dealloc(ptr noundef nonnull %i.ks) #17, !inline_history !187
  br label %Py_DECREF.exit67.i.i

bb.dt:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.du, label %Py_DECREF.exit61.i.i

bb.du:                                            ; preds = %bb.dt
  %i.lp = add nsw i32 %i.lm, -1                   ; 2 uses
  store i32 %i.lp, ptr %i.ks, align 8, !tbaa !22
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.dv, label %Py_DECREF.exit61.i.i

bb.dv:                                            ; preds = %bb.du
  call void @_Py_Dealloc(ptr noundef nonnull %i.ks) #17, !inline_history !187
  br label %Py_DECREF.exit61.i.i

Py_DECREF.exit61.i.i:                             ; preds = %bb.dv, %bb.du, %bb.dt, %bb.do
  %i.lr = add i64 %.020.i.i, 1
  %i.ls = getelementptr i8, ptr %i.gw, i64 16
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !25
  %i.lt = call i32 @PyList_Reverse(ptr noundef nonnull %i.gw) #17, !inline_history !187
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %Py_DECREF.exit67.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit67.i.i:                             ; preds = %bb.cs, %Py_DECREF.exit61.i.i, %bb.ds, %bb.dr, %bb.dq, %bb.dl, %bb.dk, %bb.dj, %fastsearch.exit.thread.thread.i.i, %bb.dh, %bb.dd, %bb.dc, %bb.db, %bb.cw, %bb.cv, %bb.cu, %bb.cr
  %i.lv = load i32, ptr %i.gw, align 8, !tbaa !22 ; 2 uses
  %.not.i.i22.i = icmp sgt i32 %i.lv, -1
  br i1 %.not.i.i22.i, label %bb.dw, label %stringlib_rsplit.exit.i

bb.dw:                                            ; preds = %Py_DECREF.exit67.i.i
  %i.lw = add nsw i32 %i.lv, -1                   ; 2 uses
  store i32 %i.lw, ptr %i.gw, align 8, !tbaa !22
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.dx, label %stringlib_rsplit.exit.i

bb.dx:                                            ; preds = %bb.dw
  call void @_Py_Dealloc(ptr noundef nonnull %i.gw) #17, !inline_history !187
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.dx, %bb.dw, %Py_DECREF.exit67.i.i, %Py_DECREF.exit61.i.i, %bb.cj, %bb.ci, %bb.ch, %Py_DECREF.exit62.i.i.i, %bb.cg, %bb.ax, %bb.aw
  %.053.i.i = phi ptr [ null, %bb.aw ], [ %i.gw, %Py_DECREF.exit61.i.i ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.ax ], [ %i.dw, %bb.cg ], [ null, %Py_DECREF.exit62.i.i.i ], [ null, %bb.ch ], [ null, %Py_DECREF.exit67.i.i ], [ null, %bb.dw ], [ null, %bb.dx ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #17, !inline_history !186
  br label %bytearray_rsplit_impl.exit

bytearray_rsplit_impl.exit:                       ; preds = %bb.j, %.critedge68.i.i, %Py_DECREF.exit76.i.i, %bb.as, %bb.at, %bb.au, %stringlib_rsplit.exit.i
  %.0.i = phi ptr [ %.053.i.i, %stringlib_rsplit.exit.i ], [ null, %bb.au ], [ null, %bb.j ], [ %i.ab, %.critedge68.i.i ], [ null, %Py_DECREF.exit76.i.i ], [ null, %bb.as ], [ null, %bb.at ]
  %i.ly = load i64, ptr %i.t, align 8, !tbaa !14
  %i.lz = add i64 %i.ly, -1
  store i64 %i.lz, ptr %i.t, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.dy

bb.dy:                                            ; preds = %Py_DECREF.exit.thread, %bytearray_rsplit_impl.exit, %bb.c
  %.036 = phi ptr [ %.0.i, %bytearray_rsplit_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rstrip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.64, i64 noundef %2, i64 noundef 0, i64 noundef 1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc ptr @bytearray_strip_impl_helper(ptr noundef readonly %0, ptr noundef %.0, i32 noundef 1), !inline_history !194
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.08 = phi ptr [ %i.d, %bb.e ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_split(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !25
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytearray_split._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.dt, label %.thread53

.thread53:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not45 = icmp eq i64 %i.i, 0
  br i1 %.not45, label %.thread58, label %bb.d

bb.d:                                             ; preds = %.thread53
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %.not46 = icmp eq ptr %i.j, null
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not47 = icmp eq i64 %i.i, 1
  br i1 %.not47, label %.thread58, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.034 = phi ptr [ %i.j, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call ptr @_PyNumber_Index(ptr noundef %i.l) #17 ; 5 uses
  %.not48 = icmp eq ptr %i.m, null
  br i1 %.not48, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.m) #17 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !22
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.r = icmp eq i64 %i.n, -1
  br i1 %i.r, label %Py_DECREF.exit.thread, label %.thread58

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.s = call ptr @PyErr_Occurred() #17
  %.not49 = icmp eq ptr %i.s, null
  br i1 %.not49, label %.thread58, label %bb.dt

.thread58:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.e, %.thread53
  %.135 = phi ptr [ @_Py_NoneStruct, %.thread53 ], [ %i.j, %bb.e ], [ %.034, %Py_DECREF.exit ], [ %.034, %Py_DECREF.exit.thread ] ; 2 uses
  %.1 = phi i64 [ -1, %.thread53 ], [ -1, %bb.e ], [ %i.n, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.t = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !14
  %i.w = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !23 ; 10 uses
  %i.x = getelementptr i8, ptr %0, i64 16
  %.val16.i = load i64, ptr %i.x, align 8, !tbaa !25 ; 17 uses
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %.1, i64 9223372036854775807) ; 9 uses
  %i.y = icmp eq ptr %.135, @_Py_NoneStruct
  br i1 %i.y, label %bb.j, label %bb.at

bb.j:                                             ; preds = %.thread58
  %i.z = call i64 @llvm.umin.i64(i64 %.1, i64 11)
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = call ptr @PyList_New(i64 noundef %i.aa) #17, !inline_history !195 ; 10 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bytearray_split_impl.exit, label %.preheader6.i.i

.preheader6.i.i:                                  ; preds = %bb.j
  %.not28.i = icmp eq i64 %.1, 0
  br i1 %.not28.i, label %.critedge._crit_edge.i.i, label %.preheader5.lr.ph.i.i

.preheader5.lr.ph.i.i:                            ; preds = %.preheader6.i.i
  %i.ad = getelementptr i8, ptr %i.ab, i64 24
  br label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %Py_DECREF.exit82.i.i, %.preheader5.lr.ph.i.i
  %.017.i.i = phi i64 [ 0, %.preheader5.lr.ph.i.i ], [ %i.bx, %Py_DECREF.exit82.i.i ] ; 5 uses
  %.06316.i.i = phi i64 [ 0, %.preheader5.lr.ph.i.i ], [ %.2.lcssa.i.i, %Py_DECREF.exit82.i.i ] ; 3 uses
  %i.ae = icmp slt i64 %.06316.i.i, %.val16.i
  br i1 %i.ae, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader5.i.i, %bb.k
  %.16413.i.i = phi i64 [ %i.al, %bb.k ], [ %.06316.i.i, %.preheader5.i.i ] ; 3 uses
  %i.af = getelementptr i8, ptr %.val.i, i64 %.16413.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = and i32 %i.aj, 8
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.al = add i64 %.16413.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %.val16.i
  br i1 %exitcond.not.i.i, label %.critedge._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !196

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader5.i.i
  %.164.lcssa.i.i = phi i64 [ %.06316.i.i, %.preheader5.i.i ], [ %.16413.i.i, %.lr.ph.i.i ] ; 7 uses
  %i.am = icmp eq i64 %.164.lcssa.i.i, %.val16.i
  br i1 %i.am, label %.critedge._crit_edge.thread.i.i, label %.preheader4.preheader.i.i

.preheader4.preheader.i.i:                        ; preds = %.critedge.i.i
  %i.an = add i64 %.164.lcssa.i.i, 1
  %smax.i.i = call i64 @llvm.smax.i64(i64 %.val16.i, i64 %i.an) ; 3 uses
  %i.ao = add i64 %smax.i.i, -1                   ; 2 uses
  %exitcond25.not.i.i269 = icmp eq i64 %.164.lcssa.i.i, %i.ao
  br i1 %exitcond25.not.i.i269, label %.critedge2.i.i, label %.lr.ph

.preheader4.i.i:                                  ; preds = %.lr.ph
  %exitcond25.not.i.i = icmp eq i64 %.2.i.i, %i.ao
  br i1 %exitcond25.not.i.i, label %.critedge2.i.i, label %.lr.ph, !llvm.loop !197

.lr.ph:                                           ; preds = %.preheader4.preheader.i.i, %.preheader4.i.i
  %.2.in.i.i270 = phi i64 [ %.2.i.i, %.preheader4.i.i ], [ %.164.lcssa.i.i, %.preheader4.preheader.i.i ]
  %.2.i.i = add i64 %.2.in.i.i270, 1              ; 4 uses
  %i.ap = getelementptr i8, ptr %.val.i, i64 %.2.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = and i32 %i.at, 8
  %.not72.i.i = icmp eq i32 %i.au, 0
  br i1 %.not72.i.i, label %.preheader4.i.i, label %..critedge2.i.i_crit_edge, !llvm.loop !197

..critedge2.i.i_crit_edge:                        ; preds = %.lr.ph
  br label %.critedge2.i.i, !llvm.loop !197

.critedge2.i.i:                                   ; preds = %.preheader4.i.i, %..critedge2.i.i_crit_edge, %.preheader4.preheader.i.i
  %.2.lcssa.i.i = phi i64 [ %smax.i.i, %.preheader4.preheader.i.i ], [ %.2.i.i, %..critedge2.i.i_crit_edge ], [ %smax.i.i, %.preheader4.i.i ] ; 4 uses
  %i.av = getelementptr i8, ptr %.val.i, i64 %.164.lcssa.i.i ; 2 uses
  %i.aw = sub i64 %.2.lcssa.i.i, %.164.lcssa.i.i  ; 5 uses
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge2.i.i
  %i.ay = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str) #17, !inline_history !198
  br label %Py_DECREF.exit84.i.i

bb.m:                                             ; preds = %.critedge2.i.i
  %i.az = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !198 ; 17 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %Py_DECREF.exit84.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.az, i64 48
  store i64 0, ptr %i.bb, align 8, !tbaa !14
  %i.bc = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.aw) #17, !inline_history !198 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !21
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i.i.i, label %bb.p, label %Py_DECREF.exit84.i.i

bb.p:                                             ; preds = %bb.o
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !22
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %Py_DECREF.exit84.i.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #17, !inline_history !198
  br label %Py_DECREF.exit84.i.i

bb.r:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %i.bc, i64 32     ; 3 uses
  %i.bj = getelementptr i8, ptr %i.az, i64 40
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr i8, ptr %i.az, i64 32
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !24
  %i.bl = getelementptr i8, ptr %i.az, i64 16
  store i64 %i.aw, ptr %i.bl, align 8, !tbaa !25
  %i.bm = getelementptr i8, ptr %i.az, i64 24
  store i64 %i.aw, ptr %i.bm, align 8, !tbaa !26
  %i.bn = icmp ne ptr %i.av, null
  %i.bo = icmp ne i64 %.2.lcssa.i.i, %.164.lcssa.i.i
  %or.cond.i.i.i = and i1 %i.bn, %i.bo
  br i1 %or.cond.i.i.i, label %bb.s, label %PyByteArray_FromStringAndSize.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull readonly align 1 %i.av, i64 %i.aw, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i.i

PyByteArray_FromStringAndSize.exit.i.i:           ; preds = %bb.s, %bb.r
  %i.bp = icmp samesign ult i64 %.017.i.i, 12
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %PyByteArray_FromStringAndSize.exit.i.i
  %.val89.i.i = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.bq = getelementptr [8 x i8], ptr %.val89.i.i, i64 %.017.i.i
  store ptr %i.az, ptr %i.bq, align 8, !tbaa !11
  br label %Py_DECREF.exit82.i.i

bb.u:                                             ; preds = %PyByteArray_FromStringAndSize.exit.i.i
  %i.br = call i32 @PyList_Append(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.az) #17, !inline_history !195
  %.not73.i.i = icmp eq i32 %i.br, 0
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !22 ; 3 uses
  %.not.i81.i.i = icmp sgt i32 %i.bs, -1          ; 2 uses
  br i1 %.not73.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i81.i.i, label %bb.w, label %Py_DECREF.exit84.i.i

bb.w:                                             ; preds = %bb.v
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.az, align 8, !tbaa !22
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.x, label %Py_DECREF.exit84.i.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #17, !inline_history !195
  br label %Py_DECREF.exit84.i.i

bb.y:                                             ; preds = %bb.u
  br i1 %.not.i81.i.i, label %bb.z, label %Py_DECREF.exit82.i.i

bb.z:                                             ; preds = %bb.y
  %i.bv = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.az, align 8, !tbaa !22
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.aa, label %Py_DECREF.exit82.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #17, !inline_history !195
  br label %Py_DECREF.exit82.i.i

Py_DECREF.exit82.i.i:                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.t
  %i.bx = add nuw nsw i64 %.017.i.i, 1            ; 2 uses
  %exitcond26.not.i.i = icmp eq i64 %i.bx, %spec.store.select.i
  br i1 %exitcond26.not.i.i, label %.critedge._crit_edge.i.i, label %.preheader5.i.i, !llvm.loop !199

.critedge._crit_edge.i.i:                         ; preds = %Py_DECREF.exit82.i.i, %.preheader6.i.i
  %.3.i.i = phi i64 [ 0, %.preheader6.i.i ], [ %.2.lcssa.i.i, %Py_DECREF.exit82.i.i ] ; 2 uses
  %i.by = icmp slt i64 %.3.i.i, %.val16.i
  br i1 %i.by, label %.preheader.i.i, label %.critedge._crit_edge.thread.i.i

.preheader.i.i:                                   ; preds = %.critedge._crit_edge.i.i, %bb.ab
  %.422.i.i = phi i64 [ %i.cf, %bb.ab ], [ %.3.i.i, %.critedge._crit_edge.i.i ] ; 5 uses
  %i.bz = getelementptr i8, ptr %.val.i, i64 %.422.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = and i32 %i.cd, 8
  %.not74.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not74.i.i, label %.critedge4.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %i.cf = add i64 %.422.i.i, 1                    ; 2 uses
  %exitcond27.not.i.i = icmp eq i64 %i.cf, %.val16.i
  br i1 %exitcond27.not.i.i, label %.critedge._crit_edge.thread.i.i, label %.preheader.i.i, !llvm.loop !200

.critedge4.i.i:                                   ; preds = %.preheader.i.i
  %5 = getelementptr i8, ptr %.val.i, i64 %.422.i.i
  %.not75.i.i = icmp eq i64 %.422.i.i, %.val16.i
  br i1 %.not75.i.i, label %.critedge._crit_edge.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge4.i.i
  %i.cg = sub i64 %.val16.i, %.422.i.i            ; 5 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ci, ptr noundef nonnull @.str) #17, !inline_history !198
  br label %Py_DECREF.exit84.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cj = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !198 ; 17 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %Py_DECREF.exit84.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr i8, ptr %i.cj, i64 48
  store i64 0, ptr %i.cl, align 8, !tbaa !14
  %i.cm = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.cg) #17, !inline_history !198 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cj, i64 56
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !21
  %i.co = icmp eq ptr %i.cm, null
  br i1 %i.co, label %bb.ag, label %PyByteArray_FromStringAndSize.exit93.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cp = load i32, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %.not.i.i92.i.i = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i92.i.i, label %bb.ah, label %Py_DECREF.exit84.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.cj, align 8, !tbaa !22
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ai, label %Py_DECREF.exit84.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #17, !inline_history !198
  br label %Py_DECREF.exit84.i.i

PyByteArray_FromStringAndSize.exit93.i.i:         ; preds = %bb.af
  %i.cs = getelementptr i8, ptr %i.cm, i64 32     ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cj, i64 40
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !23
  %i.cu = getelementptr i8, ptr %i.cj, i64 32
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !24
  %i.cv = getelementptr i8, ptr %i.cj, i64 16
  store i64 %i.cg, ptr %i.cv, align 8, !tbaa !25
  %i.cw = getelementptr i8, ptr %i.cj, i64 24
  store i64 %i.cg, ptr %i.cw, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr nonnull readonly align 1 %5, i64 %i.cg, i1 false)
  %i.cx = icmp ult i64 %.1, 12
  br i1 %i.cx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %PyByteArray_FromStringAndSize.exit93.i.i
  %i.cy = getelementptr i8, ptr %i.ab, i64 24
  %.val.i.i = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.cz = getelementptr [8 x i8], ptr %.val.i.i, i64 %spec.store.select.i
  store ptr %i.cj, ptr %i.cz, align 8, !tbaa !11
  br label %Py_DECREF.exit78.i.i

bb.ak:                                            ; preds = %PyByteArray_FromStringAndSize.exit93.i.i
  %i.da = call i32 @PyList_Append(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.cj) #17, !inline_history !195
  %.not76.i.i = icmp eq i32 %i.da, 0
  %i.db = load i32, ptr %i.cj, align 8, !tbaa !22 ; 3 uses
  %.not.i77.i.i = icmp sgt i32 %i.db, -1          ; 2 uses
  br i1 %.not76.i.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not.i77.i.i, label %bb.am, label %Py_DECREF.exit84.i.i

bb.am:                                            ; preds = %bb.al
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %i.cj, align 8, !tbaa !22
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.an, label %Py_DECREF.exit84.i.i

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #17, !inline_history !195
  br label %Py_DECREF.exit84.i.i

bb.ao:                                            ; preds = %bb.ak
  br i1 %.not.i77.i.i, label %bb.ap, label %Py_DECREF.exit78.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.de = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.de, ptr %i.cj, align 8, !tbaa !22
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.aq, label %Py_DECREF.exit78.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #17, !inline_history !195
  br label %Py_DECREF.exit78.i.i

Py_DECREF.exit78.i.i:                             ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.aj
  %i.dg = add nuw i64 %spec.store.select.i, 1
  br label %.critedge._crit_edge.thread.i.i

.critedge._crit_edge.thread.i.i:                  ; preds = %.critedge.i.i, %bb.k, %bb.ab, %Py_DECREF.exit78.i.i, %.critedge4.i.i, %.critedge._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.dg, %Py_DECREF.exit78.i.i ], [ %spec.store.select.i, %.critedge4.i.i ], [ %spec.store.select.i, %.critedge._crit_edge.i.i ], [ %.017.i.i, %bb.k ], [ %spec.store.select.i, %bb.ab ], [ %.017.i.i, %.critedge.i.i ]
  %i.dh = getelementptr i8, ptr %i.ab, i64 16
  store i64 %.1.i.i, ptr %i.dh, align 8, !tbaa !25
  br label %bytearray_split_impl.exit

Py_DECREF.exit84.i.i:                             ; preds = %bb.m, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.q, %bb.p, %bb.o, %bb.l
  %i.di = load i32, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.di, -1
  br i1 %.not.i.i.i, label %bb.ar, label %bytearray_split_impl.exit

bb.ar:                                            ; preds = %Py_DECREF.exit84.i.i
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.ab, align 8, !tbaa !22
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.as, label %bytearray_split_impl.exit

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #17, !inline_history !195
  br label %bytearray_split_impl.exit

bb.at:                                            ; preds = %.thread58
  %i.dl = call i32 @PyObject_GetBuffer(ptr noundef %.135, ptr noundef nonnull %4, i32 noundef 0) #17, !inline_history !201
  %.not.i50 = icmp eq i32 %i.dl, 0
  br i1 %.not.i50, label %bb.au, label %bytearray_split_impl.exit

bb.au:                                            ; preds = %bb.at
  %i.dm = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !27 ; 3 uses
  switch i64 %i.do, label %bb.ck [
    i64 0, label %bb.av
    i64 1, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.dp = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.dp, ptr noundef nonnull @.str.103) #17, !inline_history !202
  br label %stringlib_split.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !22
  %i.dr = call i64 @llvm.umin.i64(i64 %.1, i64 11)
  %i.ds = add nuw nsw i64 %i.dr, 1
  %i.dt = call ptr @PyList_New(i64 noundef %i.ds) #17, !inline_history !203 ; 10 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %stringlib_split.exit.i, label %.preheader3.i.i.i

.preheader3.i.i.i:                                ; preds = %bb.aw
  %i.dv = icmp sgt i64 %.val16.i, 0
  br i1 %i.dv, label %.lr.ph20.i.i.i, label %.critedge.i.i.i

.lr.ph20.i.i.i:                                   ; preds = %.preheader3.i.i.i
  %i.dw = getelementptr i8, ptr %i.dt, i64 24
  %.not273 = icmp eq i64 %.1, 0
  br i1 %.not273, label %.critedge.i.i.i, label %.preheader.i.i.i

bb.ax:                                            ; preds = %Py_DECREF.exit66.i.i.i
  %i.dx = icmp sgt i64 %.in, 1
  br i1 %i.dx, label %.preheader.i.i.i, label %.critedge.i.i.i, !llvm.loop !204

.preheader.i.i.i:                                 ; preds = %.lr.ph20.i.i.i, %bb.ax
  %.in = phi i64 [ %i.dy, %bb.ax ], [ %spec.store.select.i, %.lr.ph20.i.i.i ] ; 2 uses
  %.04718.i.i.i264 = phi i64 [ %i.ff, %bb.ax ], [ 0, %.lr.ph20.i.i.i ] ; 5 uses
  %.019.i.i.i263 = phi i64 [ %i.fe, %bb.ax ], [ 0, %.lr.ph20.i.i.i ] ; 4 uses
  %i.dy = add nsw i64 %.in, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.bp
  %.14815.i.i.i = phi i64 [ %i.fh, %bb.bp ], [ %.04718.i.i.i264, %.preheader.i.i.i ] ; 5 uses
  %i.dz = getelementptr i8, ptr %.val.i, i64 %.14815.i.i.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !22
  %i.eb = icmp eq i8 %i.ea, %i.dq
  br i1 %i.eb, label %bb.ay, label %bb.bp

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  %i.ec = getelementptr i8, ptr %.val.i, i64 %.04718.i.i.i264 ; 2 uses
  %i.ed = sub i64 %.14815.i.i.i, %.04718.i.i.i264 ; 5 uses
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ef = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ef, ptr noundef nonnull @.str) #17, !inline_history !205
  br label %Py_DECREF.exit68.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.eg = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !205 ; 17 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %Py_DECREF.exit68.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ei = getelementptr i8, ptr %i.eg, i64 48
  store i64 0, ptr %i.ei, align 8, !tbaa !14
  %i.ej = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ed) #17, !inline_history !205 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.eg, i64 56
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !21
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.em = load i32, ptr %i.eg, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.em, -1
  br i1 %.not.i.i.i.i.i, label %bb.bd, label %Py_DECREF.exit68.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.eg, align 8, !tbaa !22
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.be, label %Py_DECREF.exit68.i.i.i

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #17, !inline_history !205
  br label %Py_DECREF.exit68.i.i.i

bb.bf:                                            ; preds = %bb.bb
  %i.ep = getelementptr i8, ptr %i.ej, i64 32     ; 3 uses
  %i.eq = getelementptr i8, ptr %i.eg, i64 40
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !23
  %i.er = getelementptr i8, ptr %i.eg, i64 32
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !24
  %i.es = getelementptr i8, ptr %i.eg, i64 16
  store i64 %i.ed, ptr %i.es, align 8, !tbaa !25
  %i.et = getelementptr i8, ptr %i.eg, i64 24
  store i64 %i.ed, ptr %i.et, align 8, !tbaa !26
  %i.eu = icmp ne ptr %i.ec, null
  %i.ev = icmp ne i64 %.14815.i.i.i, %.04718.i.i.i264
  %or.cond.i.i.i.i = and i1 %i.eu, %i.ev
  br i1 %or.cond.i.i.i.i, label %bb.bg, label %PyByteArray_FromStringAndSize.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr nonnull readonly align 1 %i.ec, i64 %i.ed, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i.i.i

PyByteArray_FromStringAndSize.exit.i.i.i:         ; preds = %bb.bg, %bb.bf
  %i.ew = icmp slt i64 %.019.i.i.i263, 12
  br i1 %i.ew, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i.i.i
  %.val73.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !71
  %i.ex = getelementptr [8 x i8], ptr %.val73.i.i.i, i64 %.019.i.i.i263
  store ptr %i.eg, ptr %i.ex, align 8, !tbaa !11
  br label %Py_DECREF.exit66.i.i.i

bb.bi:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i.i.i
  %i.ey = call i32 @PyList_Append(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.eg) #17, !inline_history !203
  %.not60.i.i.i = icmp eq i32 %i.ey, 0
  %i.ez = load i32, ptr %i.eg, align 8, !tbaa !22 ; 3 uses
  %.not.i65.i.i.i = icmp sgt i32 %i.ez, -1        ; 2 uses
  br i1 %.not60.i.i.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not.i65.i.i.i, label %bb.bk, label %Py_DECREF.exit68.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.eg, align 8, !tbaa !22
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.bl, label %Py_DECREF.exit68.i.i.i

bb.bl:                                            ; preds = %bb.bk
  call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #17, !inline_history !203
  br label %Py_DECREF.exit68.i.i.i

bb.bm:                                            ; preds = %bb.bi
  br i1 %.not.i65.i.i.i, label %bb.bn, label %Py_DECREF.exit66.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.fc = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.eg, align 8, !tbaa !22
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.bo, label %Py_DECREF.exit66.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #17, !inline_history !203
  br label %Py_DECREF.exit66.i.i.i

Py_DECREF.exit66.i.i.i:                           ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bh
  %i.fe = add i64 %.019.i.i.i263, 1               ; 3 uses
  %i.ff = add nsw i64 %.14815.i.i.i, 1            ; 4 uses
  %i.fg = icmp slt i64 %i.ff, %.val16.i
  br i1 %i.fg, label %bb.ax, label %.loopexit.i.i.i..critedge.i.i.i.loopexit232_crit_edge, !llvm.loop !204

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.fh = add nsw i64 %.14815.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fh, %.val16.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !206

.loopexit.i.i.i..critedge.i.i.i.loopexit232_crit_edge: ; preds = %Py_DECREF.exit66.i.i.i
  br label %.critedge.i.i.i, !llvm.loop !204

.critedge.i.i.i:                                  ; preds = %bb.ax, %bb.bp, %.lr.ph20.i.i.i, %.loopexit.i.i.i..critedge.i.i.i.loopexit232_crit_edge, %.preheader3.i.i.i
  %.050.lcssa.i.i.i = phi i64 [ 0, %.preheader3.i.i.i ], [ %.04718.i.i.i264, %bb.bp ], [ %i.ff, %.loopexit.i.i.i..critedge.i.i.i.loopexit232_crit_edge ], [ 0, %.lr.ph20.i.i.i ], [ %i.ff, %bb.ax ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %.preheader3.i.i.i ], [ %.019.i.i.i263, %bb.bp ], [ %i.fe, %.loopexit.i.i.i..critedge.i.i.i.loopexit232_crit_edge ], [ 0, %.lr.ph20.i.i.i ], [ %i.fe, %bb.ax ] ; 4 uses
  %.not.i76.i.i = icmp sgt i64 %.050.lcssa.i.i.i, %.val16.i
  br i1 %.not.i76.i.i, label %bb.ch, label %bb.bq

bb.bq:                                            ; preds = %.critedge.i.i.i
  %i.fi = getelementptr i8, ptr %.val.i, i64 %.050.lcssa.i.i.i ; 2 uses
  %i.fj = sub i64 %.val16.i, %.050.lcssa.i.i.i    ; 5 uses
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %bb.br, label %bb.bs
end_hunk_0
