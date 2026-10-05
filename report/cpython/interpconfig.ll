Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/interpconfig?download=true
inline.NumInlined: 32
inline.NumDeleted: 7
begin_hunk_0_@_PyInterpreterConfig_AsDict:bb.a

_Py_NewRef.exit91:                                ; preds = %_Py_NewRef.exit90
  %i.bq = add nuw i32 %i.bo, 1                    ; 2 uses
  store i32 %i.bq, ptr %i.bn, align 8, !tbaa !13
  %.not.i66 = icmp sgt i32 %i.bq, -1
  br i1 %.not.i66, label %bb.t, label %Py_DECREF.exit67

bb.t:                                             ; preds = %_Py_NewRef.exit91
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !13
  %i.br = icmp eq i32 %i.bo, 0
  br i1 %i.br, label %bb.u, label %Py_DECREF.exit67

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bn) #6
  br label %Py_DECREF.exit67

Py_DECREF.exit67:                                 ; preds = %_Py_NewRef.exit90, %_Py_NewRef.exit91, %bb.t, %bb.u
  %i.bs = icmp slt i32 %i.bl, 0
  br i1 %i.bs, label %.thread98, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit67
  %i.bt = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !18
  %.not54 = icmp eq i32 %i.bu, 0
  %i.bv = select i1 %.not54, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, -1073741825
  br i1 %i.bx, label %_Py_NewRef.exit92, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = add nuw i32 %i.bw, 1
  store i32 %i.by, ptr %i.bv, align 8, !tbaa !13
  br label %_Py_NewRef.exit92

_Py_NewRef.exit92:                                ; preds = %bb.v, %bb.w
  %i.bz = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.bv) #6
  %i.ca = load i32, ptr %i.bt, align 4, !tbaa !18
  %.not55 = icmp eq i32 %i.ca, 0
  %i.cb = select i1 %.not55, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !13 ; 4 uses
  %i.cd = icmp ugt i32 %i.cc, -1073741825
  br i1 %i.cd, label %Py_DECREF.exit65, label %_Py_NewRef.exit93

_Py_NewRef.exit93:                                ; preds = %_Py_NewRef.exit92
  %i.ce = add nuw i32 %i.cc, 1                    ; 2 uses
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !13
  %.not.i64 = icmp sgt i32 %i.ce, -1
  br i1 %.not.i64, label %bb.x, label %Py_DECREF.exit65

bb.x:                                             ; preds = %_Py_NewRef.exit93
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !13
  %i.cf = icmp eq i32 %i.cc, 0
  br i1 %i.cf, label %bb.y, label %Py_DECREF.exit65

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #6
  br label %Py_DECREF.exit65

Py_DECREF.exit65:                                 ; preds = %_Py_NewRef.exit92, %_Py_NewRef.exit93, %bb.x, %bb.y
  %i.cg = icmp slt i32 %i.bz, 0
  br i1 %i.cg, label %.thread98, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit65
  %i.ch = getelementptr i8, ptr %0, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !19 ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 3
  br i1 %i.cj, label %switch.lookup, label %gil_flag_to_str.exit

gil_flag_to_str.exit:                             ; preds = %bb.z
  %i.ck = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.ck, ptr noundef nonnull @.str.11) #6
  br label %.thread98

switch.lookup:                                    ; preds = %bb.z
  %i.cl = zext nneg i32 %i.ci to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._PyInterpreterConfig_AsDict, i64 %i.cl
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cm = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %switch.load) #6 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.thread98, label %bb.aa

bb.aa:                                            ; preds = %switch.lookup
  %i.co = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.cm) #6
  %i.cp = load i32, ptr %i.cm, align 8, !tbaa !13 ; 2 uses
  %.not.i62 = icmp sgt i32 %i.cp, -1
  br i1 %.not.i62, label %bb.ab, label %Py_DECREF.exit63

bb.ab:                                            ; preds = %bb.aa
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.cm, align 8, !tbaa !13
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ac, label %Py_DECREF.exit63

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cm) #6
  br label %Py_DECREF.exit63

Py_DECREF.exit63:                                 ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.cs = icmp slt i32 %i.co, 0
  br i1 %i.cs, label %.thread98, label %Py_DECREF.exit

.thread98:                                        ; preds = %Py_DECREF.exit63, %switch.lookup, %gil_flag_to_str.exit, %Py_DECREF.exit65, %Py_DECREF.exit67, %Py_DECREF.exit69, %Py_DECREF.exit71, %Py_DECREF.exit73, %Py_DECREF.exit75
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %.not.i = icmp sgt i32 %i.ct, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %.thread98
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.a, align 8, !tbaa !13
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ae, %bb.ad, %.thread98, %Py_DECREF.exit63, %bb.a
  %.042 = phi ptr [ null, %bb.a ], [ %i.a, %Py_DECREF.exit63 ], [ null, %.thread98 ], [ null, %bb.ad ], [ null, %bb.ae ]
  ret ptr %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyDict_New() local_unnamed_addr #2

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyInterpreterConfig_InitFromDict(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !34
  %i.c = and i64 %.val3, 536870912
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.7) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @interp_config_from_dict(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @interp_config_from_dict(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca [20 x i8], align 16               ; 2 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = tail call ptr @PyDict_New() #6           ; 31 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_DECREF.exit79, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @PyDict_Update(ptr noundef nonnull %i.k, ptr noundef %0) #6
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %config_dict_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.o = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #6
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_config_dict_get.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !22   ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_config_dict_get.exit.thread.i, label %bb.e

_config_dict_get.exit.thread.i:                   ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %_config_dict_get_bool.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %i.s = icmp eq ptr %i.q, @_Py_TrueStruct        ; 2 uses
  %3 = icmp ne ptr %i.q, @_Py_FalseStruct
  %or.cond.i = xor i1 %i.s, %3
  br i1 %or.cond.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.not.i8.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i8.i, label %bb.g, label %Py_DECREF.exit9.i

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %Py_DECREF.exit9.i

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %Py_DECREF.exit9.i

Py_DECREF.exit9.i:                                ; preds = %bb.h, %bb.g, %bb.f
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %i.x = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.w, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str) #6 ; 0 uses
  br label %_config_dict_get_bool.exit

bb.i:                                             ; preds = %bb.e
  %i.y = zext i1 %i.s to i32
  %i.z = load i32, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i, label %bb.j, label %config_dict_get.exit.thread120

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.q, align 8, !tbaa !13
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %config_dict_get.exit.thread120

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %config_dict_get.exit.thread120

_config_dict_get_bool.exit:                       ; preds = %Py_DECREF.exit9.i, %_config_dict_get.exit.thread.i
  %i.ac = call ptr @PyErr_Occurred() #6
  %.not = icmp ne ptr %i.ac, null                 ; 2 uses
  %brmerge = or i1 %2, %.not
  br i1 %brmerge, label %config_dict_get.exit, label %bb.l

bb.l:                                             ; preds = %_config_dict_get_bool.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ad = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, ptr noundef nonnull %i.e) #6
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = icmp eq ptr %i.af, null
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br i1 %or.cond, label %bb.m, label %config_dict_get.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ah = call ptr @PyErr_Occurred() #6
  %.not.i81 = icmp eq ptr %i.ah, null
  br i1 %.not.i81, label %bb.n, label %config_dict_get.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.aj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str) #6 ; 0 uses
  br label %config_dict_get.exit.thread

config_dict_get.exit.thread120:                   ; preds = %bb.i, %bb.j, %bb.k
  store i32 %i.y, ptr %1, align 4, !tbaa !12
  %i.ak = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, ptr noundef null) #6 ; 0 uses
  br label %bb.o

config_dict_get.exit:                             ; preds = %_config_dict_get_bool.exit
  br i1 %.not, label %config_dict_get.exit.thread, label %bb.o

bb.o:                                             ; preds = %config_dict_get.exit.thread120, %config_dict_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.al = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.d) #6
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_config_dict_get.exit.thread.i88, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !22  ; 9 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_config_dict_get.exit.thread.i88, label %bb.q

_config_dict_get.exit.thread.i88:                 ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_config_dict_get_bool.exit89

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.ap = icmp eq ptr %i.an, @_Py_TrueStruct      ; 2 uses
  %4 = icmp ne ptr %i.an, @_Py_FalseStruct
  %or.cond.i82 = xor i1 %i.ap, %4
  br i1 %or.cond.i82, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %.not.i8.i86 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i8.i86, label %bb.s, label %Py_DECREF.exit9.i87

bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !13
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.t, label %Py_DECREF.exit9.i87

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #6
  br label %Py_DECREF.exit9.i87

Py_DECREF.exit9.i87:                              ; preds = %bb.t, %bb.s, %bb.r
  %i.at = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %i.au = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.at, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %_config_dict_get_bool.exit89

bb.u:                                             ; preds = %bb.q
  %i.av = zext i1 %i.ap to i32
  %i.aw = load i32, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %.not.i.i83 = icmp sgt i32 %i.aw, -1
  br i1 %.not.i.i83, label %bb.v, label %config_dict_get.exit92.thread126

bb.v:                                             ; preds = %bb.u
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.an, align 8, !tbaa !13
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.w, label %config_dict_get.exit92.thread126

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #6
  br label %config_dict_get.exit92.thread126

_config_dict_get_bool.exit89:                     ; preds = %Py_DECREF.exit9.i87, %_config_dict_get.exit.thread.i88
  %i.az = call ptr @PyErr_Occurred() #6
  %.not56 = icmp ne ptr %i.az, null               ; 2 uses
  %brmerge68 = or i1 %2, %.not56
  br i1 %brmerge68, label %config_dict_get.exit92, label %bb.x

bb.x:                                             ; preds = %_config_dict_get_bool.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ba = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c) #6
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = icmp eq ptr %i.bc, null
  %or.cond153 = select i1 %i.bb, i1 true, i1 %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br i1 %or.cond153, label %bb.y, label %config_dict_get.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.be = call ptr @PyErr_Occurred() #6
  %.not.i91 = icmp eq ptr %i.be, null
  br i1 %.not.i91, label %bb.z, label %config_dict_get.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.bg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bf, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %config_dict_get.exit.thread

config_dict_get.exit92.thread126:                 ; preds = %bb.u, %bb.v, %bb.w
  %i.bh = getelementptr i8, ptr %1, i64 4
  store i32 %i.av, ptr %i.bh, align 4, !tbaa !14
  %i.bi = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.1, ptr noundef null) #6 ; 0 uses
  br label %bb.aa

config_dict_get.exit92:                           ; preds = %_config_dict_get_bool.exit89
  br i1 %.not56, label %config_dict_get.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %config_dict_get.exit92.thread126, %config_dict_get.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bj = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #6
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %_config_dict_get.exit.thread.i99, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !22  ; 9 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_config_dict_get.exit.thread.i99, label %bb.ac

_config_dict_get.exit.thread.i99:                 ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_config_dict_get_bool.exit100

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.bn = icmp eq ptr %i.bl, @_Py_TrueStruct      ; 2 uses
  %5 = icmp ne ptr %i.bl, @_Py_FalseStruct
  %or.cond.i93 = xor i1 %i.bn, %5
  br i1 %or.cond.i93, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bo = load i32, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %.not.i8.i97 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i8.i97, label %bb.ae, label %Py_DECREF.exit9.i98

bb.ae:                                            ; preds = %bb.ad
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bl, align 8, !tbaa !13
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.af, label %Py_DECREF.exit9.i98

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #6
  br label %Py_DECREF.exit9.i98

Py_DECREF.exit9.i98:                              ; preds = %bb.af, %bb.ae, %bb.ad
  %i.br = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %i.bs = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.br, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %_config_dict_get_bool.exit100

bb.ag:                                            ; preds = %bb.ac
  %i.bt = zext i1 %i.bn to i32
  %i.bu = load i32, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %.not.i.i94 = icmp sgt i32 %i.bu, -1
  br i1 %.not.i.i94, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.bl, align 8, !tbaa !13
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #6
  br label %.thread

_config_dict_get_bool.exit100:                    ; preds = %Py_DECREF.exit9.i98, %_config_dict_get.exit.thread.i99
  %i.bx = call ptr @PyErr_Occurred() #6
  %.not57 = icmp ne ptr %i.bx, null               ; 2 uses
  %brmerge70 = or i1 %2, %.not57
  br i1 %brmerge70, label %bb.aj, label %.thread132

.thread132:                                       ; preds = %_config_dict_get_bool.exit100
  call fastcc void @config_dict_get(ptr noundef %i.k, ptr noundef nonnull @.str.2)
  br label %config_dict_get.exit.thread

.thread:                                          ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.by = getelementptr i8, ptr %1, i64 8
  store i32 %i.bt, ptr %i.by, align 4, !tbaa !15
  %i.bz = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.2, ptr noundef null) #6 ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %_config_dict_get_bool.exit100
  br i1 %.not57, label %config_dict_get.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.thread, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ca = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #6
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %_config_dict_get.exit.thread.i107, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !22  ; 9 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_config_dict_get.exit.thread.i107, label %bb.am

_config_dict_get.exit.thread.i107:                ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_config_dict_get_bool.exit108

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ce = icmp eq ptr %i.cc, @_Py_TrueStruct      ; 2 uses
  %6 = icmp ne ptr %i.cc, @_Py_FalseStruct
  %or.cond.i101 = xor i1 %i.ce, %6
  br i1 %or.cond.i101, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.cf = load i32, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %.not.i8.i105 = icmp sgt i32 %i.cf, -1
  br i1 %.not.i8.i105, label %bb.ao, label %Py_DECREF.exit9.i106

bb.ao:                                            ; preds = %bb.an
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.cc, align 8, !tbaa !13
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ap, label %Py_DECREF.exit9.i106

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #6
  br label %Py_DECREF.exit9.i106

Py_DECREF.exit9.i106:                             ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ci = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %i.cj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ci, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %_config_dict_get_bool.exit108

bb.aq:                                            ; preds = %bb.am
  %i.ck = zext i1 %i.ce to i32
  %i.cl = load i32, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %.not.i.i102 = icmp sgt i32 %i.cl, -1
  br i1 %.not.i.i102, label %bb.ar, label %.thread137

bb.ar:                                            ; preds = %bb.aq
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.cc, align 8, !tbaa !13
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.as, label %.thread137

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #6
  br label %.thread137

_config_dict_get_bool.exit108:                    ; preds = %Py_DECREF.exit9.i106, %_config_dict_get.exit.thread.i107
  %i.co = call ptr @PyErr_Occurred() #6
  %.not58 = icmp ne ptr %i.co, null               ; 2 uses
  %brmerge72 = or i1 %2, %.not58
  br i1 %brmerge72, label %bb.at, label %.thread139

.thread139:                                       ; preds = %_config_dict_get_bool.exit108
  call fastcc void @config_dict_get(ptr noundef %i.k, ptr noundef nonnull @.str.3)
  br label %config_dict_get.exit.thread

.thread137:                                       ; preds = %bb.aq, %bb.ar, %bb.as
  %i.cp = getelementptr i8, ptr %1, i64 12
  store i32 %i.ck, ptr %i.cp, align 4, !tbaa !16
  %i.cq = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.3, ptr noundef null) #6 ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %_config_dict_get_bool.exit108
  br i1 %.not58, label %config_dict_get.exit.thread, label %bb.au

bb.au:                                            ; preds = %.thread137, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.cr = call fastcc i32 @_config_dict_get_bool(ptr noundef %i.k, ptr noundef nonnull @.str.4, ptr noundef %i.g)
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.av, label %.thread141

bb.av:                                            ; preds = %bb.au
  %i.ct = call ptr @PyErr_Occurred() #6
  %.not59 = icmp ne ptr %i.ct, null               ; 2 uses
  %brmerge74 = or i1 %2, %.not59
  br i1 %brmerge74, label %bb.aw, label %.thread143

.thread143:                                       ; preds = %bb.av
  call fastcc void @config_dict_get(ptr noundef %i.k, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %config_dict_get.exit.thread

.thread141:                                       ; preds = %bb.au
  %i.cu = load i32, ptr %i.g, align 4, !tbaa !10
  %i.cv = getelementptr i8, ptr %1, i64 16
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !17
  %i.cw = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.4, ptr noundef null) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br i1 %.not59, label %config_dict_get.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %.thread141, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.cx = call fastcc i32 @_config_dict_get_bool(ptr noundef %i.k, ptr noundef nonnull @.str.5, ptr noundef %i.h)
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ay, label %.thread145

bb.ay:                                            ; preds = %bb.ax
  %i.cz = call ptr @PyErr_Occurred() #6
  %.not60 = icmp ne ptr %i.cz, null               ; 2 uses
  %brmerge76 = or i1 %2, %.not60
  br i1 %brmerge76, label %bb.az, label %.thread147

.thread147:                                       ; preds = %bb.ay
  call fastcc void @config_dict_get(ptr noundef %i.k, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %config_dict_get.exit.thread

.thread145:                                       ; preds = %bb.ax
  %i.da = load i32, ptr %i.h, align 4, !tbaa !10
  %i.db = getelementptr i8, ptr %1, i64 20
  store i32 %i.da, ptr %i.db, align 4, !tbaa !18
  %i.dc = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.5, ptr noundef null) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br i1 %.not60, label %config_dict_get.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %.thread145, %bb.az
  %i.dd = call fastcc i32 @_config_dict_copy_str(ptr noundef %i.k, ptr noundef %i.i)
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.df = call ptr @PyErr_Occurred() #6
  %.not61 = icmp eq ptr %i.df, null
  br i1 %.not61, label %bb.bc, label %config_dict_get.exit.thread

bb.bc:                                            ; preds = %bb.bb
  br i1 %2, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @config_dict_get(ptr noundef %i.k, ptr noundef nonnull @.str.6)
  br label %config_dict_get.exit.thread

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.dg = call fastcc i32 @gil_flag_from_str(ptr noundef %i.i, ptr noundef %i.j)
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.bf, label %.thread149

.thread149:                                       ; preds = %bb.be
  %i.di = load i32, ptr %i.j, align 4, !tbaa !10
  %i.dj = getelementptr i8, ptr %1, i64 24
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !19
  %i.dk = call i32 @PyDict_PopString(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.6, ptr noundef null) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %config_dict_get.exit.thread

bb.bg:                                            ; preds = %.thread149, %bb.bc
  %i.dl = getelementptr i8, ptr %i.k, i64 16
  %.val = load i64, ptr %i.dl, align 8, !tbaa !38 ; 3 uses
  %i.dm = icmp eq i64 %.val, 1
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.dn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.do = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dn, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.k) #6 ; 0 uses
  br label %config_dict_get.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.dp = icmp sgt i64 %.val, 0
  br i1 %i.dp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.dr = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dq, ptr noundef nonnull @.str.13, i64 noundef %.val, ptr noundef nonnull %i.k) #6 ; 0 uses
  br label %config_dict_get.exit.thread

bb.bk:                                            ; preds = %bb.bi
  %i.ds = load i32, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %.not.i78 = icmp sgt i32 %i.ds, -1
  br i1 %.not.i78, label %bb.bl, label %Py_DECREF.exit79

bb.bl:                                            ; preds = %bb.bk
  %i.dt = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dt, ptr %i.k, align 8, !tbaa !13
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %Py_DECREF.exit79.sink.split, label %Py_DECREF.exit79

config_dict_get.exit.thread:                      ; preds = %bb.x, %bb.l, %bb.z, %bb.y, %bb.n, %bb.m, %bb.bf, %.thread147, %.thread143, %.thread139, %.thread132, %bb.az, %bb.aw, %bb.at, %bb.aj, %config_dict_get.exit92, %config_dict_get.exit, %bb.bb, %bb.b, %bb.bj, %bb.bh, %bb.bd
  %i.dv = load i32, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %.not.i = icmp sgt i32 %i.dv, -1
  br i1 %.not.i, label %bb.bm, label %Py_DECREF.exit79

bb.bm:                                            ; preds = %config_dict_get.exit.thread
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.k, align 8, !tbaa !13
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %Py_DECREF.exit79.sink.split, label %Py_DECREF.exit79

Py_DECREF.exit79.sink.split:                      ; preds = %bb.bm, %bb.bl
  %.0.ph = phi i32 [ 0, %bb.bl ], [ -1, %bb.bm ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #6
  br label %Py_DECREF.exit79

Py_DECREF.exit79:                                 ; preds = %Py_DECREF.exit79.sink.split, %bb.bm, %config_dict_get.exit.thread, %bb.bl, %bb.bk, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.bm ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ -1, %config_dict_get.exit.thread ], [ %.0.ph, %Py_DECREF.exit79.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyInterpreterConfig_UpdateFromDict(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !34
  %i.c = and i64 %.val3, 536870912
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.7) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @interp_config_from_dict(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_PyInterpreterConfig_InitFromState(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8536
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 2048
  %i.e = and i32 %i.c, 256
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, i32 1, i32 2
  %i.i = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.j = shufflevector <4 x i32> %i.i, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.k = and <4 x i32> %i.j, <i32 32, i32 32768, i32 65536, i32 1024>
  store <4 x i32> %i.k, ptr %0, align 4, !tbaa !10
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !10
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.e, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !10
  ret i32 0
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_Update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_config_dict_get_bool(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a) #6
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_config_dict_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_config_dict_get.exit.thread, label %bb.c

_config_dict_get.exit.thread:                     ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.f = icmp eq ptr %i.d, @_Py_TrueStruct        ; 2 uses
  %3 = icmp ne ptr %i.d, @_Py_FalseStruct
  %or.cond = xor i1 %i.f, %3
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i8 = icmp sgt i32 %i.g, -1
  br i1 %.not.i8, label %bb.e, label %Py_DECREF.exit9

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !13
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %Py_DECREF.exit9

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #6
  br label %Py_DECREF.exit9

Py_DECREF.exit9:                                  ; preds = %bb.d, %bb.e, %bb.f
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %i.k = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.14, ptr noundef %1) #6 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.l = zext i1 %i.f to i32
  %i.m = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !13
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  store i32 %i.l, ptr %2, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %_config_dict_get.exit.thread, %Py_DECREF.exit9, %Py_DECREF.exit
  %.1 = phi i32 [ -1, %_config_dict_get.exit.thread ], [ -1, %Py_DECREF.exit9 ], [ 0, %Py_DECREF.exit ]
  ret i32 %.1
}

declare ptr @PyErr_Occurred() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @config_dict_get(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a) #6
  %i.c = icmp slt i32 %i.b, 0
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @PyErr_Occurred() #6
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.h = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.15, ptr noundef %1) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare i32 @PyDict_PopString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_config_dict_copy_str(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @PyDict_GetItemStringRef(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #6
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_config_dict_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_config_dict_get.exit.thread, label %bb.c

_config_dict_get.exit.thread:                     ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.g, align 8, !tbaa !34
  %i.h = and i64 %.val10, 268435456
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i7 = icmp sgt i32 %i.i, -1
  br i1 %.not.i7, label %bb.e, label %Py_DECREF.exit8

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 8, !tbaa !13
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %Py_DECREF.exit8

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #6
  br label %Py_DECREF.exit8

Py_DECREF.exit8:                                  ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %i.m = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6) #6 ; 0 uses
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.c
  %i.n = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.d) #6
  %i.o = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 19) #6 ; 0 uses
  %i.p = getelementptr i8, ptr %1, i64 19
  store i8 0, ptr %i.p, align 1, !tbaa !13
  %i.q = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.d, align 8, !tbaa !13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %_config_dict_get.exit.thread, %Py_DECREF.exit8
  %.0 = phi i32 [ -1, %Py_DECREF.exit8 ], [ -1, %_config_dict_get.exit.thread ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gil_flag_from_str(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.8) #7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.9) #7
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.10) #7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.16, ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.c ]
  store i32 %.0, ptr %1, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.07 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ]
  ret i32 %.07
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PyDict_GetItemStringRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
end_hunk_0
