inline.NumInlined: 62
inline.NumDeleted: 19
begin_hunk_0_@reader_parse_frame_table:bb.a
  %i.ca = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.ca, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_i32.exit83

bb.af:                                            ; preds = %bb.ad
  %i.cb = trunc nuw i64 %i.bx to i32
  br label %decode_varint_i32.exit83

decode_varint_i32.exit83:                         ; preds = %bb.ac, %bb.ae, %bb.af
  %.0.i.i80 = phi i32 [ %i.cb, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %i.cc = tail call ptr @PyErr_Occurred() #11
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.ce = icmp eq i64 %i.cd, %i.bu
  br i1 %i.ce, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %decode_varint_i32.exit83
  %i.cf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.cf, ptr noundef nonnull @.str.55) #11
  br label %.critedge

bb.ah:                                            ; preds = %decode_varint_i32.exit83
  %.not.i81 = icmp eq ptr %i.cc, null
  %i.cg = lshr i32 %.0.i.i80, 1
  %i.ch = and i32 %.0.i.i80, 1
  %i.ci = sub nsw i32 0, %i.ch
  %i.cj = xor i32 %i.cg, %i.ci
  %.0.i82 = select i1 %.not.i81, i32 %i.cj, i32 0
  %i.ck = load i32, ptr %i.bt, align 4, !tbaa !53 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1
  %i.cm = add i32 %i.ck, %.0.i82
  %spec.select111 = select i1 %i.cl, i32 -1, i32 %i.cm
  %i.cn = getelementptr i8, ptr %i.m, i64 20
  store i32 %spec.select111, ptr %i.cn, align 4, !tbaa !54
  %.not62 = icmp ult i64 %i.cd, %2
  br i1 %.not62, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.co, ptr noundef nonnull @.str.56) #11
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.cp = add nuw i64 %i.cd, 1                    ; 2 uses
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !43
  %i.cq = getelementptr i8, ptr %1, i64 %i.cd
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !27
  %i.cs = getelementptr i8, ptr %i.m, i64 24
  store i8 %i.cr, ptr %i.cs, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.b, align 8, !tbaa !39
  %i.cu = zext i32 %i.ct to i64
  %.not63 = icmp samesign ult i64 %indvars.iv.next, %i.cu
  br i1 %.not63, label %.lr.ph, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %bb.aj, %.thread, %bb.d, %bb.h, %bb.m, %bb.r, %bb.w, %bb.ab, %bb.ag, %bb.ai
  %.not6391 = phi i32 [ -1, %bb.ai ], [ -1, %bb.h ], [ -1, %bb.m ], [ -1, %bb.r ], [ -1, %bb.w ], [ -1, %bb.ab ], [ -1, %bb.ag ], [ 0, %bb.d ], [ 0, %.thread ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %bb.c
  %.6 = phi i32 [ %.not6391, %.critedge ], [ -1, %bb.c ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define hidden void @binary_reader_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @PyMem_Free(ptr noundef %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call i32 @munmap(ptr noundef nonnull %i.c, i64 noundef %i.e) #11 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @close(i32 noundef %i.h) #11 ; 0 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  tail call void @PyMem_Free(ptr noundef %i.l) #11
  %i.m = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.j, label %.preheader33

.preheader33:                                     ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %.not38 = icmp eq i32 %i.p, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %Py_XDECREF.exit
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader33
  %i.q = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.n, %.preheader33 ]
  tail call void @PyMem_Free(ptr noundef %i.q) #11
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader33, %Py_XDECREF.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Py_XDECREF.exit ], [ 0, %.preheader33 ] ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !27
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.lr.ph, %bb.g, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.o, align 8, !tbaa !38
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !58

bb.j:                                             ; preds = %._crit_edge, %bb.f
  %i.aa = getelementptr i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  tail call void @PyMem_Free(ptr noundef %i.ab) #11
  %i.ac = getelementptr i8, ptr %0, i64 152       ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %.not32 = icmp eq ptr %i.ad, null
  br i1 %.not32, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !60
  %.not39 = icmp eq i64 %i.af, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36

._crit_edge37.loopexit:                           ; preds = %.lr.ph36
  %.pre41 = load ptr, ptr %i.ac, align 8, !tbaa !59
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %.preheader
  %i.ag = phi ptr [ %.pre41, %._crit_edge37.loopexit ], [ %i.ad, %.preheader ]
  tail call void @PyMem_Free(ptr noundef %i.ag) #11
  br label %bb.k

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %.035 = phi i64 [ %i.al, %.lr.ph36 ], [ 0, %.preheader ] ; 2 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.ai = getelementptr [48 x i8], ptr %i.ah, i64 %.035
  %i.aj = getelementptr i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  tail call void @PyMem_Free(ptr noundef %i.ak) #11
  %i.al = add nuw i64 %.035, 1                    ; 2 uses
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !60
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph36, label %._crit_edge37.loopexit, !llvm.loop !64

bb.k:                                             ; preds = %._crit_edge37, %bb.j
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i64 @binary_reader_replay(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 38 uses
  %i.b = tail call i32 @PyObject_HasAttrString(ptr noundef %1, ptr noundef nonnull @.str.6) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.7) #11
  br label %bb.dq

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.8) #11 ; 5 uses
  %.not219 = icmp eq ptr %i.d, null
  br i1 %.not219, label %bb.dq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @RemoteDebugging_GetState(ptr noundef nonnull %i.d) #11 ; 4 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not.i246 = icmp sgt i32 %i.f, -1
  br i1 %.not.i246, label %bb.e, label %Py_DECREF.exit247

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !27
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit247

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #11
  br label %Py_DECREF.exit247

Py_DECREF.exit247:                                ; preds = %bb.d, %bb.e, %bb.f
  %.not220 = icmp eq ptr %i.e, null
  br i1 %.not220, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Py_DECREF.exit247
  %i.i = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.9) #11
  br label %bb.dq

bb.h:                                             ; preds = %Py_DECREF.exit247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !43
  %i.j = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.k = icmp eq ptr %2, null
  %i.l = icmp eq ptr %2, @_Py_NoneStruct
  %or.cond.i.not432 = or i1 %i.k, %i.l            ; 3 uses
  br i1 %or.cond.i.not432, label %invoke_progress_callback.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr %i.j, align 8, !tbaa !33
  %i.n = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, i64 noundef 0, i32 noundef %i.m) #11 ; 4 uses
  %.not.i254 = icmp eq ptr %i.n, null
  br i1 %.not.i254, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.k, label %invoke_progress_callback.exit

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !27
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %invoke_progress_callback.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #11
  br label %invoke_progress_callback.exit

invoke_progress_callback.exit:                    ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %i.r = getelementptr i8, ptr %0, i64 144        ; 9 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = icmp ult i64 %i.s, 13
  br i1 %i.t, label %._crit_edge428, label %.thread.lr.ph

.thread.lr.ph:                                    ; preds = %invoke_progress_callback.exit
  %i.u = getelementptr i8, ptr %0, i64 136        ; 7 uses
  %i.v = getelementptr i8, ptr %0, i64 60
  %i.w = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 152 ; 4 uses
  %i.x = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 64
  %i.z = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 216       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 176       ; 2 uses
  br label %.thread

.thread:                                          ; preds = %.thread.lr.ph, %invoke_progress_callback.exit295.thread
  %i.af = phi i64 [ 0, %.thread.lr.ph ], [ %i.lg, %invoke_progress_callback.exit295.thread ] ; 4 uses
  %.0174427 = phi i64 [ 0, %.thread.lr.ph ], [ %.8182, %invoke_progress_callback.exit295.thread ] ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !40  ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %.0.copyload85 = load i64, ptr %i.ah, align 1   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.0.copyload = load i32, ptr %i.aj, align 1     ; 2 uses
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !26
  %.not221 = icmp eq i32 %i.ak, 0                 ; 2 uses
  %i.al = tail call i64 @llvm.bswap.i64(i64 %.0.copyload85)
  %i.am = tail call i32 @llvm.bswap.i32(i32 %.0.copyload)
  %i.an = select i1 %.not221, i64 %.0.copyload85, i64 %i.al ; 5 uses
  %i.ao = select i1 %.not221, i32 %.0.copyload, i32 %i.am ; 5 uses
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !60  ; 3 uses
  %.not53.i = icmp eq i64 %i.ap, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59 ; 4 uses
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.n
  %.03852.i = phi i64 [ %i.aw, %bb.n ], [ 0, %.thread ] ; 2 uses
  %i.aq = getelementptr [48 x i8], ptr %.pre.i, i64 %.03852.i ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !65
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !66
  %i.av = icmp eq i32 %i.au, %i.ao
  br i1 %i.av, label %reader_get_or_create_thread_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.aw = add nuw i64 %.03852.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.ap
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !67

._crit_edge.i:                                    ; preds = %.thread
  %.not.i256 = icmp eq ptr %.pre.i, null
  br i1 %.not.i256, label %bb.o, label %._crit_edge.thread.i

bb.o:                                             ; preds = %._crit_edge.i
  store i64 16, ptr %i.x, align 8, !tbaa !68
  %i.ax = tail call ptr @PyMem_Calloc(i64 noundef 16, i64 noundef 48) #11 ; 3 uses
  store ptr %i.ax, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  %.not40.i = icmp eq ptr %i.ax, null
  br i1 %.not40.i, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call ptr @PyErr_NoMemory() #11     ; 0 uses
  br label %.critedge

._crit_edge.thread.i:                             ; preds = %bb.n, %._crit_edge.i
  %i.az = load i64, ptr %i.x, align 8, !tbaa !68  ; 5 uses
  %.not41.i = icmp ult i64 %i.ap, %i.az
  br i1 %.not41.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull @.str.58) #11
  br label %grow_array.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bc = shl nuw i64 %i.az, 1
  %i.bd = icmp samesign ugt i64 %i.az, 192153584101141162
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull @.str.59) #11
  br label %grow_array.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.bf = mul nuw i64 %i.az, 96
  %i.bg = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.bf) #11 ; 3 uses
  %.not.i.i255 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i255, label %bb.v, label %grow_array.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call ptr @PyErr_NoMemory() #11     ; 0 uses
  br label %grow_array.exit.thread.i

grow_array.exit.thread.i:                         ; preds = %bb.v, %bb.t, %bb.r
  store ptr null, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %.critedge

grow_array.exit.i:                                ; preds = %bb.u
  store i64 %i.bc, ptr %i.x, align 8, !tbaa !43
  store ptr %i.bg, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %grow_array.exit.i, %._crit_edge.thread.i, %bb.o
  %i.bi = phi ptr [ %i.bg, %grow_array.exit.i ], [ %.pre.i, %._crit_edge.thread.i ], [ %i.ax, %bb.o ]
  %i.bj = load i64, ptr %i.w, align 8, !tbaa !60  ; 2 uses
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.w, align 8, !tbaa !60
  %i.bl = getelementptr [48 x i8], ptr %i.bi, i64 %i.bj ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i8 0, i64 40, i1 false)
  store i64 %i.an, ptr %i.bl, align 8, !tbaa !65
  store i32 %i.ao, ptr %i.bm, align 8, !tbaa !66
  %i.bn = load i64, ptr %i.y, align 8, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !69
  %i.bp = getelementptr i8, ptr %i.bl, i64 40
  store i64 256, ptr %i.bp, align 8, !tbaa !70
  %i.bq = tail call ptr @PyMem_Malloc(i64 noundef 1024) #11 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 24
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !61
  %.not43.i = icmp eq ptr %i.bq, null
  br i1 %.not43.i, label %bb.x, label %.reader_get_or_create_thread_state.exit_crit_edge

.reader_get_or_create_thread_state.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !40
  br label %reader_get_or_create_thread_state.exit

bb.x:                                             ; preds = %bb.w
  %i.bs = tail call ptr @PyErr_NoMemory() #11     ; 0 uses
  br label %.critedge

reader_get_or_create_thread_state.exit:           ; preds = %bb.m, %.reader_get_or_create_thread_state.exit_crit_edge
  %i.bt = phi ptr [ %.pre, %.reader_get_or_create_thread_state.exit_crit_edge ], [ %i.ag, %bb.m ] ; 3 uses
  %.2.i = phi ptr [ %i.bl, %.reader_get_or_create_thread_state.exit_crit_edge ], [ %i.aq, %bb.m ] ; 19 uses
  %i.bu = add i64 %i.af, 13                       ; 4 uses
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.af
  %i.bw = getelementptr i8, ptr %i.bv, i64 12
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27  ; 3 uses
  switch i8 %i.bx, label %bb.dg [
    i8 0, label %bb.y
    i8 1, label %bb.bd
    i8 2, label %bb.bd
    i8 3, label %bb.bd
  ]

bb.y:                                             ; preds = %reader_get_or_create_thread_state.exit
  %i.by = load i64, ptr %i.r, align 8, !tbaa !41
  %i.bz = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.bt, ptr noundef nonnull %i.a, i64 noundef %i.by) ; 2 uses
  %i.ca = tail call ptr @PyErr_Occurred() #11
  %.not.i257 = icmp eq ptr %i.ca, null
  br i1 %.not.i257, label %bb.z, label %decode_varint_u32.exit

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp ugt i64 %i.bz, 4294967295
  br i1 %i.cb, label %bb.aa, label %bb.ab, !prof !44

bb.aa:                                            ; preds = %bb.z
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !43
  %i.cc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.cc, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit

bb.ab:                                            ; preds = %bb.z
  %i.cd = trunc nuw i64 %i.bz to i32
  br label %decode_varint_u32.exit

decode_varint_u32.exit:                           ; preds = %bb.y, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.cd, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.y ] ; 5 uses
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.cf = icmp eq i64 %i.ce, %i.bu
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %decode_varint_u32.exit
  %i.cg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.10) #11
  br label %.critedge

bb.ad:                                            ; preds = %decode_varint_u32.exit
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !41  ; 2 uses
  %i.ci = sub i64 %i.ch, %i.ce
  %i.cj = lshr i64 %i.ci, 1                       ; 2 uses
  %i.ck = zext i32 %.0.i to i64                   ; 7 uses
  %i.cl = icmp samesign ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.cn = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cm, ptr noundef nonnull @.str.11, i32 noundef %.0.i, i64 noundef %i.cj) #11 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.co = load <2 x i64>, ptr %i.ae, align 8, !tbaa !43
  %i.cp = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.ck, i64 1
  %i.cq = add <2 x i64> %i.co, %i.cp
  store <2 x i64> %i.cq, ptr %i.ae, align 8, !tbaa !43
  %.not232419.not = icmp eq i32 %.0.i, 0
  br i1 %.not232419.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.cr = getelementptr i8, ptr %.2.i, i64 16     ; 6 uses
  %i.cs = getelementptr i8, ptr %.2.i, i64 24
  %i.ct = getelementptr i8, ptr %.2.i, i64 32
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.cv = call fastcc i64 @decode_varint_u64(ptr noundef %i.cu, ptr noundef %i.a, i64 noundef %i.ch)
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.cx = icmp eq i64 %i.cw, %i.ce
  br i1 %i.cx, label %Py_XDECREF.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.cy = load i64, ptr %i.r, align 8, !tbaa !41
  %.not227.peel = icmp ult i64 %i.cw, %i.cy
  br i1 %.not227.peel, label %bb.ah, label %Py_XDECREF.exit262

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.da = add nuw i64 %i.cw, 1
  store i64 %i.da, ptr %i.a, align 8, !tbaa !43
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.cw
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !27  ; 2 uses
  %i.dd = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.de = add i64 %i.dd, %i.cv
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !69
  %i.df = tail call ptr @PyList_New(i64 noundef %i.ck) #11 ; 5 uses
  %.not230.peel = icmp eq ptr %i.df, null
  br i1 %.not230.peel, label %.critedge, label %._crit_edge493

._crit_edge493:                                   ; preds = %bb.ah
  %.pre494 = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.dg = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %.pre494) #11 ; 2 uses
  %.not231.not.peel = icmp eq ptr %i.dg, null
  br i1 %.not231.not.peel, label %.loopexit484, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge493
  %i.dh = getelementptr i8, ptr %i.df, i64 24
  %.1186.val.peel = load ptr, ptr %i.dh, align 8, !tbaa !71
  store ptr %i.dg, ptr %.1186.val.peel, align 8, !tbaa !19
  %exitcond.peel.not = icmp eq i32 %.0.i, 1
  br i1 %exitcond.peel.not, label %.loopexit565, label %.peel.next

.peel.next:                                       ; preds = %bb.ai, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 1, %bb.ai ] ; 2 uses
  %.0185423 = phi ptr [ %.1186, %bb.ay ], [ %i.df, %bb.ai ] ; 14 uses
  %.0190422 = phi i8 [ %.1191, %bb.ay ], [ %i.dc, %bb.ai ] ; 3 uses
  %.0195421 = phi i64 [ %i.ev, %bb.ay ], [ 1, %bb.ai ] ; 2 uses
  %3 = load i64, ptr %i.a, align 8, !tbaa !43
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.dj = load i64, ptr %i.r, align 8, !tbaa !41
  %i.dk = call fastcc i64 @decode_varint_u64(ptr noundef %i.di, ptr noundef %i.a, i64 noundef %i.dj)
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.dm = icmp eq i64 %i.dl, %3
  br i1 %i.dm, label %.loopexit482, label %bb.al

.loopexit482:                                     ; preds = %.peel.next
  %i.dn = load i32, ptr %.0185423, align 8, !tbaa !27 ; 2 uses
  %.not.i.i259 = icmp sgt i32 %i.dn, -1
  br i1 %.not.i.i259, label %bb.aj, label %Py_XDECREF.exit

bb.aj:                                            ; preds = %.loopexit482
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %.0185423, align 8, !tbaa !27
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ak, label %Py_XDECREF.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185423) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.lr.ph, %.loopexit482, %bb.aj, %bb.ak
  %i.dq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.dq, ptr noundef nonnull @.str.12) #11
  br label %.critedge

bb.al:                                            ; preds = %.peel.next
  %i.dr = load i64, ptr %i.r, align 8, !tbaa !41
  %.not227 = icmp ult i64 %i.dl, %i.dr
  br i1 %.not227, label %bb.ap, label %.loopexit483

.loopexit483:                                     ; preds = %bb.al
  %.not.i260 = icmp eq ptr %.0185423, null
  br i1 %.not.i260, label %Py_XDECREF.exit262, label %bb.am

bb.am:                                            ; preds = %.loopexit483
  %i.ds = load i32, ptr %.0185423, align 8, !tbaa !27 ; 2 uses
  %.not.i.i261 = icmp sgt i32 %i.ds, -1
  br i1 %.not.i.i261, label %bb.an, label %Py_XDECREF.exit262

bb.an:                                            ; preds = %bb.am
  %i.dt = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dt, ptr %.0185423, align 8, !tbaa !27
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ao, label %Py_XDECREF.exit262

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185423) #11
  br label %Py_XDECREF.exit262

Py_XDECREF.exit262:                               ; preds = %bb.ag, %.loopexit483, %bb.am, %bb.an, %bb.ao
  %i.dv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.dv, ptr noundef nonnull @.str.13) #11
  br label %.critedge

bb.ap:                                            ; preds = %bb.al
  %i.dw = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.dx = add nuw i64 %i.dl, 1
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !43
  %i.dy = getelementptr i8, ptr %i.dw, i64 %i.dl
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27  ; 2 uses
  %i.ea = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.eb = add i64 %i.ea, %i.dk                    ; 2 uses
  store i64 %i.eb, ptr %i.cr, align 8, !tbaa !69
  %.not228 = icmp eq i8 %i.dz, %.0190422
  br i1 %.not228, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load ptr, ptr %i.cs, align 8, !tbaa !61
  %i.ed = load i64, ptr %i.ct, align 8, !tbaa !76
  %i.ee = getelementptr i8, ptr %.0185423, i64 16
  %.val.i = load i64, ptr %i.ee, align 8, !tbaa !77
  %i.ef = tail call i32 @PyList_SetSlice(ptr noundef nonnull %.0185423, i64 noundef %.0195421, i64 noundef %.val.i, ptr noundef null) #11
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %emit_batch.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eh = tail call fastcc i32 @emit_sample(ptr noundef nonnull readonly %i.e, ptr noundef %1, i64 noundef %i.an, i32 noundef %i.ao, i8 noundef zeroext %.0190422, ptr noundef readonly %i.ec, i64 noundef %i.ed, ptr noundef nonnull readonly %0, ptr noundef nonnull %.0185423)
  %i.ei = icmp sgt i32 %i.eh, -1
  br label %emit_batch.exit

emit_batch.exit:                                  ; preds = %bb.aq, %bb.ar
  %.0.i263 = phi i1 [ %i.ei, %bb.ar ], [ false, %bb.aq ]
  %i.ej = load i32, ptr %.0185423, align 8, !tbaa !27 ; 2 uses
  %.not.i244 = icmp sgt i32 %i.ej, -1
  br i1 %.not.i244, label %bb.as, label %Py_DECREF.exit245

bb.as:                                            ; preds = %emit_batch.exit
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %.0185423, align 8, !tbaa !27
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.at, label %Py_DECREF.exit245

bb.at:                                            ; preds = %bb.as
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185423) #11
  br label %Py_DECREF.exit245

Py_DECREF.exit245:                                ; preds = %emit_batch.exit, %bb.as, %bb.at
  br i1 %.0.i263, label %bb.au, label %.critedge

bb.au:                                            ; preds = %Py_DECREF.exit245
  %i.em = trunc nuw i64 %indvars.iv to i32
  %i.en = sub i32 %.0.i, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = tail call ptr @PyList_New(i64 noundef %i.eo) #11 ; 2 uses
  %.not230 = icmp eq ptr %i.ep, null
  br i1 %.not230, label %.critedge, label %._crit_edge495

._crit_edge495:                                   ; preds = %bb.au
  %.pre496 = load i64, ptr %i.cr, align 8, !tbaa !69
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge495, %bb.ap
  %i.eq = phi i64 [ %i.eb, %bb.ap ], [ %.pre496, %._crit_edge495 ]
  %.1196 = phi i64 [ %.0195421, %bb.ap ], [ 0, %._crit_edge495 ] ; 2 uses
  %.1191 = phi i8 [ %.0190422, %bb.ap ], [ %i.dz, %._crit_edge495 ] ; 2 uses
  %.1186 = phi ptr [ %.0185423, %bb.ap ], [ %i.ep, %._crit_edge495 ] ; 4 uses
  %i.er = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.eq) #11 ; 2 uses
  %.not231.not = icmp eq ptr %i.er, null
  br i1 %.not231.not, label %.loopexit484, label %bb.ay

.loopexit484:                                     ; preds = %._crit_edge493, %bb.av
  %.1186.lcssa = phi ptr [ %.1186, %bb.av ], [ %i.df, %._crit_edge493 ] ; 3 uses
  %i.es = load i32, ptr %.1186.lcssa, align 8, !tbaa !27 ; 2 uses
  %.not.i242 = icmp sgt i32 %i.es, -1
  br i1 %.not.i242, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %.loopexit484
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %.1186.lcssa, align 8, !tbaa !27
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1186.lcssa) #11
  br label %.critedge

bb.ay:                                            ; preds = %bb.av
  %i.ev = add i64 %.1196, 1                       ; 2 uses
  %i.ew = getelementptr i8, ptr %.1186, i64 24
  %.1186.val = load ptr, ptr %i.ew, align 8, !tbaa !71
  %i.ex = getelementptr [8 x i8], ptr %.1186.val, i64 %.1196
  store ptr %i.er, ptr %i.ex, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ck
  br i1 %exitcond.not, label %.loopexit565, label %.peel.next, !llvm.loop !78

.loopexit565:                                     ; preds = %bb.ay, %bb.ai
  %.0195.lcssa.ph = phi i64 [ 1, %bb.ai ], [ %i.ev, %bb.ay ]
  %.0190.lcssa.ph = phi i8 [ %i.dc, %bb.ai ], [ %.1191, %bb.ay ]
  %.0185.lcssa.ph = phi ptr [ %i.df, %bb.ai ], [ %.1186, %bb.ay ] ; 6 uses
  %i.ey = getelementptr i8, ptr %.2.i, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !61
  %i.fa = getelementptr i8, ptr %.2.i, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !76
  %i.fc = getelementptr i8, ptr %.0185.lcssa.ph, i64 16
  %.val.i264 = load i64, ptr %i.fc, align 8, !tbaa !77
  %i.fd = tail call i32 @PyList_SetSlice(ptr noundef nonnull %.0185.lcssa.ph, i64 noundef %.0195.lcssa.ph, i64 noundef %.val.i264, ptr noundef null) #11
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %emit_batch.exit266, label %bb.az

bb.az:                                            ; preds = %.loopexit565
  %i.ff = tail call fastcc i32 @emit_sample(ptr noundef nonnull readonly %i.e, ptr noundef %1, i64 noundef %i.an, i32 noundef %i.ao, i8 noundef zeroext %.0190.lcssa.ph, ptr noundef readonly %i.ez, i64 noundef %i.fb, ptr noundef nonnull readonly %0, ptr noundef nonnull %.0185.lcssa.ph)
  %i.fg = icmp sgt i32 %i.ff, -1
  br label %emit_batch.exit266

emit_batch.exit266:                               ; preds = %.loopexit565, %bb.az
  %.0.i265 = phi i1 [ %i.fg, %bb.az ], [ false, %.loopexit565 ]
  %i.fh = load i32, ptr %.0185.lcssa.ph, align 8, !tbaa !27 ; 2 uses
  %.not.i240 = icmp sgt i32 %i.fh, -1
  br i1 %.not.i240, label %bb.ba, label %Py_DECREF.exit241

bb.ba:                                            ; preds = %emit_batch.exit266
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %.0185.lcssa.ph, align 8, !tbaa !27
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bb, label %Py_DECREF.exit241

bb.bb:                                            ; preds = %bb.ba
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0185.lcssa.ph) #11
  br label %Py_DECREF.exit241

Py_DECREF.exit241:                                ; preds = %emit_batch.exit266, %bb.ba, %bb.bb
  br i1 %.0.i265, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.af, %Py_DECREF.exit241
  %i.fk = add i64 %.0174427, %i.ck                ; 4 uses
  %i.fl = load i64, ptr %i.ad, align 8, !tbaa !80
  %i.fm = add i64 %i.fl, %i.ck
  store i64 %i.fm, ptr %i.ad, align 8, !tbaa !80
  %i.fn = srem i64 %i.fk, 1000
  %i.fo = icmp slt i64 %i.fn, %i.ck
  br i1 %i.fo, label %bb.bc, label %bb.dh

bb.bc:                                            ; preds = %._crit_edge
  %i.fp = load i32, ptr %i.j, align 8, !tbaa !33
  %i.fq = tail call fastcc i32 @invoke_progress_callback(ptr noundef %2, i64 noundef %i.fk, i32 noundef %i.fp)
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %.critedge, label %bb.dh

bb.bd:                                            ; preds = %reader_get_or_create_thread_state.exit, %reader_get_or_create_thread_state.exit, %reader_get_or_create_thread_state.exit
  %i.fs = load i64, ptr %i.r, align 8, !tbaa !41
  %i.ft = call fastcc i64 @decode_varint_u64(ptr noundef nonnull %i.bt, ptr noundef %i.a, i64 noundef %i.fs)
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.fv = icmp eq i64 %i.fu, %i.bu
  br i1 %i.fv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.fw, ptr noundef nonnull @.str.14) #11
  br label %.critedge

bb.bf:                                            ; preds = %bb.bd
  %i.fx = load i64, ptr %i.r, align 8, !tbaa !41  ; 7 uses
  %.not224 = icmp ult i64 %i.fu, %i.fx
  br i1 %.not224, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fy = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.fy, ptr noundef nonnull @.str.15) #11
  br label %.critedge

bb.bh:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.u, align 8, !tbaa !40  ; 7 uses
  %i.ga = add nuw i64 %i.fu, 1
  store i64 %i.ga, ptr %i.a, align 8, !tbaa !43
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.fu
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !27
  %i.gd = getelementptr i8, ptr %.2.i, i64 16     ; 3 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !69
  %i.gf = add i64 %i.ge, %i.ft
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !69
  %4 = load i64, ptr %i.a, align 8, !tbaa !43     ; 3 uses
  %i.gg = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 6 uses
  %i.gh = tail call ptr @PyErr_Occurred() #11
  %.not.i.i282 = icmp eq ptr %i.gh, null          ; 3 uses
  switch i8 %i.bx, label %bb.ch [
    i8 1, label %bb.bi
    i8 2, label %bb.br
  ]

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not.i.i282, label %bb.bj, label %decode_varint_u32.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.gi = icmp ugt i64 %i.gg, 4294967295
  br i1 %i.gi, label %bb.bk, label %bb.bl, !prof !44

bb.bk:                                            ; preds = %bb.bj
  store i64 %4, ptr %i.a, align 8, !tbaa !43
  %i.gj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.gj, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.gk = trunc nuw i64 %i.gg to i32
  br label %decode_varint_u32.exit.i

decode_varint_u32.exit.i:                         ; preds = %bb.bl, %bb.bk, %bb.bi
  %.0.i.i = phi i32 [ %i.gk, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.gl = zext i32 %.0.i.i to i64                 ; 3 uses
  %i.gm = getelementptr i8, ptr %.2.i, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !70 ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gl
  br i1 %i.go, label %decode_stack_full.exit, label %bb.bm

bb.bm:                                            ; preds = %decode_varint_u32.exit.i
  %i.gp = getelementptr i8, ptr %.2.i, i64 32
  store i64 %i.gl, ptr %i.gp, align 8, !tbaa !76
  %.not.i268 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i268, label %.loopexit323, label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %bb.bm
  %i.gq = getelementptr i8, ptr %.2.i, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %decode_varint_u32.exit22.i, %.lr.ph.i269
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i269 ], [ %indvars.iv.next.i, %decode_varint_u32.exit22.i ] ; 2 uses
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !43
  %i.gs = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 2 uses
  %i.gt = tail call ptr @PyErr_Occurred() #11
  %.not.i20.i = icmp eq ptr %i.gt, null
  br i1 %.not.i20.i, label %bb.bo, label %decode_varint_u32.exit22.i

bb.bo:                                            ; preds = %bb.bn
  %i.gu = icmp ugt i64 %i.gs, 4294967295
  br i1 %i.gu, label %bb.bp, label %bb.bq, !prof !44

bb.bp:                                            ; preds = %bb.bo
  store i64 %i.gr, ptr %i.a, align 8, !tbaa !43
  %i.gv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.gv, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit22.i

bb.bq:                                            ; preds = %bb.bo
  %i.gw = trunc nuw i64 %i.gs to i32
  br label %decode_varint_u32.exit22.i

decode_varint_u32.exit22.i:                       ; preds = %bb.bq, %bb.bp, %bb.bn
  %.0.i21.i = phi i32 [ %i.gw, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bn ]
  %i.gx = load ptr, ptr %i.gq, align 8, !tbaa !61
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %indvars.iv.i
  store i32 %.0.i21.i, ptr %i.gy, align 4, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i270 = icmp eq i64 %indvars.iv.next.i, %i.gl
  br i1 %exitcond.not.i270, label %.loopexit323, label %bb.bn, !llvm.loop !81

decode_stack_full.exit:                           ; preds = %decode_varint_u32.exit.i
  %i.gz = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.ha = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gz, ptr noundef nonnull @.str.61, i32 noundef %.0.i.i, i64 noundef %i.gn) #11 ; 0 uses
  br label %.critedge

.loopexit323:                                     ; preds = %decode_varint_u32.exit22.i, %bb.bm
  %i.hb = load i64, ptr %i.aa, align 8, !tbaa !82
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.aa, align 8, !tbaa !82
  br label %bb.cu

bb.br:                                            ; preds = %bb.bh
  br i1 %.not.i.i282, label %bb.bs, label %decode_varint_u32.exit.i272

bb.bs:                                            ; preds = %bb.br
  %i.hd = icmp ugt i64 %i.gg, 4294967295
  br i1 %i.hd, label %bb.bt, label %bb.bu, !prof !44

bb.bt:                                            ; preds = %bb.bs
  store i64 %4, ptr %i.a, align 8, !tbaa !43
  %i.he = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.he, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit.i272

bb.bu:                                            ; preds = %bb.bs
  %i.hf = trunc nuw i64 %i.gg to i32
  br label %decode_varint_u32.exit.i272

decode_varint_u32.exit.i272:                      ; preds = %bb.bu, %bb.bt, %bb.br
  %.0.i.i273 = phi i32 [ %i.hf, %bb.bu ], [ 0, %bb.bt ], [ 0, %bb.br ] ; 3 uses
  %i.hg = load i64, ptr %i.a, align 8, !tbaa !43
  %i.hh = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 2 uses
  %i.hi = tail call ptr @PyErr_Occurred() #11
  %.not.i45.i = icmp eq ptr %i.hi, null
  br i1 %.not.i45.i, label %bb.bv, label %decode_varint_u32.exit47.i

bb.bv:                                            ; preds = %decode_varint_u32.exit.i272
  %i.hj = icmp ugt i64 %i.hh, 4294967295
  br i1 %i.hj, label %bb.bw, label %bb.bx, !prof !44

bb.bw:                                            ; preds = %bb.bv
  store i64 %i.hg, ptr %i.a, align 8, !tbaa !43
  %i.hk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.hk, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit47.i

bb.bx:                                            ; preds = %bb.bv
  %i.hl = trunc nuw i64 %i.hh to i32
  br label %decode_varint_u32.exit47.i

decode_varint_u32.exit47.i:                       ; preds = %bb.bx, %bb.bw, %decode_varint_u32.exit.i272
  %.0.i46.i = phi i32 [ %i.hl, %bb.bx ], [ 0, %bb.bw ], [ 0, %decode_varint_u32.exit.i272 ] ; 3 uses
  %i.hm = zext i32 %.0.i.i273 to i64              ; 4 uses
  %i.hn = getelementptr i8, ptr %.2.i, i64 32     ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !76 ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %i.hm
  br i1 %i.hp, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %decode_varint_u32.exit47.i
  %i.hq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.hr = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hq, ptr noundef nonnull @.str.62, i32 noundef %.0.i.i273, i64 noundef %i.ho) #11 ; 0 uses
  br label %.critedge

bb.bz:                                            ; preds = %decode_varint_u32.exit47.i
  %i.hs = zext i32 %.0.i46.i to i64               ; 3 uses
  %i.ht = add nuw nsw i64 %i.hs, %i.hm            ; 3 uses
  %i.hu = getelementptr i8, ptr %.2.i, i64 40
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !70 ; 2 uses
  %i.hw = icmp ugt i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hx = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.hy = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hx, ptr noundef nonnull @.str.63, i64 noundef %i.ht, i64 noundef %i.hv) #11 ; 0 uses
  br label %.critedge

bb.cb:                                            ; preds = %bb.bz
  %i.hz = icmp ne i32 %.0.i46.i, 0
  %i.ia = icmp ne i32 %.0.i.i273, 0
  %or.cond.i274 = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %or.cond.i274, label %.thread.i, label %bb.cc

.thread.i:                                        ; preds = %bb.cb
  %i.ib = sub i64 %i.ho, %i.hm
  %i.ic = getelementptr i8, ptr %.2.i, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !61 ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.hs
  %i.if = getelementptr [4 x i8], ptr %i.id, i64 %i.ib
  %i.ig = shl nuw nsw i64 %i.hm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ie, ptr align 4 %i.if, i64 %i.ig, i1 false)
  br label %.lr.ph.i276

bb.cc:                                            ; preds = %bb.cb
  %.not.i275 = icmp eq i32 %.0.i46.i, 0
  br i1 %.not.i275, label %.loopexit324, label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %bb.cc, %.thread.i
  %i.ih = getelementptr i8, ptr %.2.i, i64 24
  br label %bb.cd

bb.cd:                                            ; preds = %decode_varint_u32.exit50.i, %.lr.ph.i276
  %indvars.iv.i277 = phi i64 [ 0, %.lr.ph.i276 ], [ %indvars.iv.next.i278, %decode_varint_u32.exit50.i ] ; 2 uses
  %i.ii = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ij = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 2 uses
  %i.ik = tail call ptr @PyErr_Occurred() #11
  %.not.i48.i = icmp eq ptr %i.ik, null
  br i1 %.not.i48.i, label %bb.ce, label %decode_varint_u32.exit50.i

bb.ce:                                            ; preds = %bb.cd
  %i.il = icmp ugt i64 %i.ij, 4294967295
  br i1 %i.il, label %bb.cf, label %bb.cg, !prof !44

bb.cf:                                            ; preds = %bb.ce
  store i64 %i.ii, ptr %i.a, align 8, !tbaa !43
  %i.im = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.im, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit50.i

bb.cg:                                            ; preds = %bb.ce
  %i.in = trunc nuw i64 %i.ij to i32
  br label %decode_varint_u32.exit50.i

decode_varint_u32.exit50.i:                       ; preds = %bb.cg, %bb.cf, %bb.cd
  %.0.i49.i = phi i32 [ %i.in, %bb.cg ], [ 0, %bb.cf ], [ 0, %bb.cd ]
  %i.io = load ptr, ptr %i.ih, align 8, !tbaa !61
  %i.ip = getelementptr [4 x i8], ptr %i.io, i64 %indvars.iv.i277
  store i32 %.0.i49.i, ptr %i.ip, align 4, !tbaa !6
  %indvars.iv.next.i278 = add nuw nsw i64 %indvars.iv.i277, 1 ; 2 uses
  %exitcond.not.i279 = icmp eq i64 %indvars.iv.next.i278, %i.hs
  br i1 %exitcond.not.i279, label %.loopexit324, label %bb.cd, !llvm.loop !83

.loopexit324:                                     ; preds = %decode_varint_u32.exit50.i, %bb.cc
  store i64 %i.ht, ptr %i.hn, align 8, !tbaa !76
  %i.iq = load i64, ptr %i.z, align 8, !tbaa !84
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.z, align 8, !tbaa !84
  br label %bb.cu

bb.ch:                                            ; preds = %bb.bh
  br i1 %.not.i.i282, label %bb.ci, label %decode_varint_u32.exit.i283

bb.ci:                                            ; preds = %bb.ch
  %i.is = icmp ugt i64 %i.gg, 4294967295
  br i1 %i.is, label %bb.cj, label %decode_varint_u32.exit.i283, !prof !44

bb.cj:                                            ; preds = %bb.ci
  store i64 %4, ptr %i.a, align 8, !tbaa !43
  %i.it = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.it, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit.i283

decode_varint_u32.exit.i283:                      ; preds = %bb.cj, %bb.ci, %bb.ch
  %.0.i.i284 = phi i64 [ 0, %bb.ch ], [ 0, %bb.cj ], [ %i.gg, %bb.ci ] ; 3 uses
  %i.iu = load i64, ptr %i.a, align 8, !tbaa !43
  %i.iv = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 2 uses
  %i.iw = tail call ptr @PyErr_Occurred() #11
  %.not.i38.i = icmp eq ptr %i.iw, null
  br i1 %.not.i38.i, label %bb.ck, label %decode_varint_u32.exit40.i

bb.ck:                                            ; preds = %decode_varint_u32.exit.i283
  %i.ix = icmp ugt i64 %i.iv, 4294967295
  br i1 %i.ix, label %bb.cl, label %bb.cm, !prof !44

bb.cl:                                            ; preds = %bb.ck
  store i64 %i.iu, ptr %i.a, align 8, !tbaa !43
  %i.iy = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.iy, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit40.i

bb.cm:                                            ; preds = %bb.ck
  %i.iz = trunc nuw i64 %i.iv to i32
  br label %decode_varint_u32.exit40.i

decode_varint_u32.exit40.i:                       ; preds = %bb.cm, %bb.cl, %decode_varint_u32.exit.i283
  %.0.i39.i = phi i32 [ %i.iz, %bb.cm ], [ 0, %bb.cl ], [ 0, %decode_varint_u32.exit.i283 ] ; 2 uses
  %i.ja = getelementptr i8, ptr %.2.i, i64 32     ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !76 ; 2 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.jb, i64 %.0.i.i284) ; 2 uses
  %i.jc = zext i32 %.0.i39.i to i64               ; 3 uses
  %i.jd = add i64 %spec.select.i, %i.jc           ; 3 uses
  %i.je = getelementptr i8, ptr %.2.i, i64 40
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !70 ; 2 uses
  %i.jg = icmp ugt i64 %i.jd, %i.jf
  br i1 %i.jg, label %decode_stack_pop_push.exit.thread, label %bb.cn

decode_stack_pop_push.exit.thread:                ; preds = %decode_varint_u32.exit40.i
  %i.jh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.ji = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.jh, ptr noundef nonnull @.str.63, i64 noundef %i.jd, i64 noundef %i.jf) #11 ; 0 uses
  br label %.critedge

bb.cn:                                            ; preds = %decode_varint_u32.exit40.i
  %.not.not.i = icmp ugt i64 %i.jb, %.0.i.i284
  br i1 %.not.not.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.jj = getelementptr i8, ptr %.2.i, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !61 ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.jc
  %i.jm = getelementptr [4 x i8], ptr %i.jk, i64 %.0.i.i284
  %i.jn = shl i64 %spec.select.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jl, ptr align 4 %i.jm, i64 %i.jn, i1 false)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.not.i285 = icmp eq i32 %.0.i39.i, 0
  br i1 %.not.i285, label %.loopexit, label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %bb.cp
  %i.jo = getelementptr i8, ptr %.2.i, i64 24
  br label %bb.cq

bb.cq:                                            ; preds = %decode_varint_u32.exit43.i, %.lr.ph.i286
  %indvars.iv.i287 = phi i64 [ 0, %.lr.ph.i286 ], [ %indvars.iv.next.i288, %decode_varint_u32.exit43.i ] ; 2 uses
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !43
  %i.jq = call fastcc i64 @decode_varint_u64(ptr noundef nonnull readonly %i.fz, ptr noundef nonnull %i.a, i64 noundef %i.fx) ; 2 uses
  %i.jr = tail call ptr @PyErr_Occurred() #11
  %.not.i41.i = icmp eq ptr %i.jr, null
  br i1 %.not.i41.i, label %bb.cr, label %decode_varint_u32.exit43.i

bb.cr:                                            ; preds = %bb.cq
  %i.js = icmp ugt i64 %i.jq, 4294967295
  br i1 %i.js, label %bb.cs, label %bb.ct, !prof !44

bb.cs:                                            ; preds = %bb.cr
  store i64 %i.jp, ptr %i.a, align 8, !tbaa !43
  %i.jt = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.jt, ptr noundef nonnull @.str.60) #11
  br label %decode_varint_u32.exit43.i

bb.ct:                                            ; preds = %bb.cr
  %i.ju = trunc nuw i64 %i.jq to i32
  br label %decode_varint_u32.exit43.i

decode_varint_u32.exit43.i:                       ; preds = %bb.ct, %bb.cs, %bb.cq
  %.0.i42.i = phi i32 [ %i.ju, %bb.ct ], [ 0, %bb.cs ], [ 0, %bb.cq ]
  %i.jv = load ptr, ptr %i.jo, align 8, !tbaa !61
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %indvars.iv.i287
  store i32 %.0.i42.i, ptr %i.jw, align 4, !tbaa !6
  %indvars.iv.next.i288 = add nuw nsw i64 %indvars.iv.i287, 1 ; 2 uses
  %exitcond.not.i289 = icmp eq i64 %indvars.iv.next.i288, %i.jc
  br i1 %exitcond.not.i289, label %.loopexit, label %bb.cq, !llvm.loop !85

.loopexit:                                        ; preds = %decode_varint_u32.exit43.i, %bb.cp
  store i64 %i.jd, ptr %i.ja, align 8, !tbaa !76
  %i.jx = load i64, ptr %i.ab, align 8, !tbaa !86
  %i.jy = add i64 %i.jx, 1
  store i64 %i.jy, ptr %i.ab, align 8, !tbaa !86
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit324, %.loopexit, %.loopexit323
  %i.jz = load i64, ptr %i.ac, align 8, !tbaa !87
  %i.ka = add i64 %i.jz, 1
  store i64 %i.ka, ptr %i.ac, align 8, !tbaa !87
  %i.kb = load i64, ptr %i.gd, align 8, !tbaa !69
  %i.kc = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.kb) #11 ; 5 uses
  %.not225 = icmp eq ptr %i.kc, null
  br i1 %.not225, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kd = tail call ptr @PyList_New(i64 noundef 1) #11 ; 8 uses
  %.not226 = icmp eq ptr %i.kd, null
  br i1 %.not226, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.ke = load i32, ptr %i.kc, align 8, !tbaa !27 ; 2 uses
  %.not.i238 = icmp sgt i32 %i.ke, -1
  br i1 %.not.i238, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  store i32 %i.kf, ptr %i.kc, align 8, !tbaa !27
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.cy, label %.critedge

bb.cy:                                            ; preds = %bb.cx
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kc) #11
  br label %.critedge

bb.cz:                                            ; preds = %bb.cv
  %i.kh = getelementptr i8, ptr %i.kd, i64 24
  %.val = load ptr, ptr %i.kh, align 8, !tbaa !71
  store ptr %i.kc, ptr %.val, align 8, !tbaa !19
  %i.ki = getelementptr i8, ptr %.2.i, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !61
  %i.kk = getelementptr i8, ptr %.2.i, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !76
  %i.km = tail call fastcc i32 @emit_sample(ptr noundef %i.e, ptr noundef %1, i64 noundef %i.an, i32 noundef %i.ao, i8 noundef zeroext %i.gc, ptr noundef %i.kj, i64 noundef %i.kl, ptr noundef nonnull %0, ptr noundef %i.kd)
  %i.kn = icmp slt i32 %i.km, 0
  %i.ko = load i32, ptr %i.kd, align 8, !tbaa !27 ; 3 uses
  %.not.i236 = icmp sgt i32 %i.ko, -1             ; 2 uses
  br i1 %i.kn, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i236, label %bb.db, label %.critedge

bb.db:                                            ; preds = %bb.da
  %i.kp = add nsw i32 %i.ko, -1                   ; 2 uses
  store i32 %i.kp, ptr %i.kd, align 8, !tbaa !27
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.dc, label %.critedge

bb.dc:                                            ; preds = %bb.db
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kd) #11
  br label %.critedge

bb.dd:                                            ; preds = %bb.cz
  br i1 %.not.i236, label %bb.de, label %Py_DECREF.exit239

bb.de:                                            ; preds = %bb.dd
  %i.kr = add nsw i32 %i.ko, -1                   ; 2 uses
  store i32 %i.kr, ptr %i.kd, align 8, !tbaa !27
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.df, label %Py_DECREF.exit239

bb.df:                                            ; preds = %bb.de
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kd) #11
  br label %Py_DECREF.exit239

Py_DECREF.exit239:                                ; preds = %bb.df, %bb.de, %bb.dd
  %i.kt = add i64 %.0174427, 1
  %i.ku = load i64, ptr %i.ad, align 8, !tbaa !80
  %i.kv = add i64 %i.ku, 1
  store i64 %i.kv, ptr %i.ad, align 8, !tbaa !80
  br label %bb.dh

bb.dg:                                            ; preds = %reader_get_or_create_thread_state.exit
  %i.kw = zext i8 %i.bx to i32
  %i.kx = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.ky = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.kx, ptr noundef nonnull @.str.16, i32 noundef %i.kw) #11 ; 0 uses
  br label %.critedge

bb.dh:                                            ; preds = %Py_DECREF.exit239, %bb.bc, %._crit_edge
  %.8182 = phi i64 [ %i.kt, %Py_DECREF.exit239 ], [ %i.fk, %._crit_edge ], [ %i.fk, %bb.bc ] ; 4 uses
  %i.kz = srem i64 %.8182, 1000
  %i.la = icmp ne i64 %i.kz, 0
  %brmerge = or i1 %or.cond.i.not432, %i.la
  br i1 %brmerge, label %invoke_progress_callback.exit295.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lb = load i32, ptr %i.j, align 8, !tbaa !33
  %i.lc = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, i64 noundef %.8182, i32 noundef %i.lb) #11 ; 4 uses
  %.not.i293 = icmp eq ptr %i.lc, null
  br i1 %.not.i293, label %.critedge, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !27 ; 2 uses
  %.not.i.i294 = icmp sgt i32 %i.ld, -1
end_hunk_0
