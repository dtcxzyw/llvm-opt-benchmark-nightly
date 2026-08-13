inline.NumInlined: 80
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.va_start.p0
declare void @llvm.va_start.p0(ptr) #4

declare ptr @PyUnicode_FromFormatV(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare ptr @PyType_GetName(ptr noundef) local_unnamed_addr #2

declare void @PyUnicode_AppendAndDel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @_ctypes_callproc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.ffi_cif, align 8            ; 7 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %i.b, ptr noundef %2) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val109 = load i64, ptr %i.e, align 8, !tbaa !36 ; 14 uses
  %i.f = icmp sgt i64 %.val109, 1024
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.8, i64 noundef %.val109, i32 noundef 1024) #10 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = mul i64 %.val109, 48                     ; 2 uses
  %i.k = alloca i8, i64 %i.j, align 16            ; 7 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.k, i8 0, i64 %i.j, i1 false)
  %.not.not = icmp eq ptr %4, null
  br i1 %.not.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i64 %.val109, 0
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.d
  %i.m = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %i.n = icmp sgt i64 %.val109, 0
  br i1 %i.n, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = getelementptr i8, ptr %4, i64 32
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.e
  %i.q = getelementptr i8, ptr %2, i64 32
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.f
  %.095138.us = phi i64 [ %i.t, %bb.f ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.096137.us = phi ptr [ %i.w, %bb.f ], [ %i.k, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.095138.us
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = add nuw nsw i64 %.095138.us, 1           ; 4 uses
  %i.u = call fastcc i32 @ConvParam(ptr noundef %0, ptr noundef %i.s, i64 noundef %i.t, ptr noundef %.096137.us)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.lr.ph143.preheader.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.w = getelementptr i8, ptr %.096137.us, i64 48
  %exitcond152.not = icmp eq i64 %i.t, %.val109
  br i1 %exitcond152.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.l
  %.095138 = phi i64 [ %.pre-phi, %bb.l ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %.096137 = phi ptr [ %i.au, %bb.l ], [ %i.k, %.lr.ph.split.preheader ] ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.o, i64 %.095138
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %i.z = icmp sgt i64 %.val, %.095138
  br i1 %i.z, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.split
  %i.aa = getelementptr [8 x i8], ptr %i.p, i64 %.095138
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = tail call ptr @PyObject_CallOneArg(ptr noundef %i.ab, ptr noundef %i.y) #10 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.split174, label %bb.h

.split174:                                        ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = add nuw nsw i64 %.095138, 1
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.af, ptr noundef nonnull @.str.9, i64 noundef %i.ag)
  br label %.lr.ph143.preheader

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw nsw i64 %.095138, 1             ; 3 uses
  %i.ai = call fastcc i32 @ConvParam(ptr noundef %0, ptr noundef nonnull %i.ac, i64 noundef %i.ah, ptr noundef %.096137)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.am = icmp eq i32 %i.ai, -1
  br i1 %i.am, label %.split, label %bb.l

.split:                                           ; preds = %Py_DECREF.exit
  %i.an = getelementptr i8, ptr %0, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.ao, ptr noundef nonnull @.str.9, i64 noundef %i.ah)
  br label %.lr.ph143.preheader

bb.k:                                             ; preds = %.lr.ph.split
  %i.ap = add nuw nsw i64 %.095138, 1             ; 3 uses
  %i.aq = call fastcc i32 @ConvParam(ptr noundef %0, ptr noundef %i.y, i64 noundef %i.ap, ptr noundef %.096137)
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %.split.us, label %bb.l

.split.us:                                        ; preds = %bb.k
  %i.as = getelementptr i8, ptr %0, i64 176
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.at, ptr noundef nonnull @.str.9, i64 noundef %i.ap)
  br label %.lr.ph143.preheader

bb.l:                                             ; preds = %Py_DECREF.exit, %bb.k
  %.pre-phi = phi i64 [ %i.ah, %Py_DECREF.exit ], [ %i.ap, %bb.k ] ; 2 uses
  %i.au = getelementptr i8, ptr %.096137, i64 48
  %exitcond.not = icmp eq i64 %.pre-phi, %.val109
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.l, %bb.f, %.thread, %bb.e
  %i.av = phi i1 [ false, %.thread ], [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.l ] ; 6 uses
  %i.aw = phi i64 [ %.val, %.thread ], [ 0, %bb.f ], [ 0, %bb.e ], [ %.val, %bb.l ]
  %i.ax = icmp eq ptr %5, @_Py_NoneStruct         ; 2 uses
  br i1 %i.ax, label %_ctypes_get_ffi_type.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ay = icmp eq ptr %5, null
  br i1 %i.ay, label %_ctypes_get_ffi_type.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %5, ptr noundef %i.ba) #10
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %_ctypes_get_ffi_type.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bd = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %5, ptr noundef %i.bc) #10 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %.not8.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not8.i.i.i, label %_ctypes_get_ffi_type.exit.thread, label %_ctypes_get_ffi_type.exit

_ctypes_get_ffi_type.exit:                        ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %i.bd, i64 32     ; 2 uses
  %.not108 = icmp eq ptr %i.bf, null
  br i1 %.not108, label %GetResult.exit, label %_ctypes_get_ffi_type.exit.thread

_ctypes_get_ffi_type.exit.thread:                 ; preds = %bb.o, %bb.n, %bb.m, %._crit_edge, %_ctypes_get_ffi_type.exit
  %.0100129 = phi ptr [ %i.bf, %_ctypes_get_ffi_type.exit ], [ @ffi_type_void, %._crit_edge ], [ @ffi_type_sint32, %bb.m ], [ @ffi_type_sint32, %bb.n ], [ @ffi_type_sint32, %bb.o ] ; 3 uses
  %i.bg = load i64, ptr %.0100129, align 8, !tbaa !41
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 8)
  %i.bh = alloca i8, i64 %spec.select, align 16   ; 6 uses
  %i.bi = shl i64 %.val109, 3                     ; 2 uses
  %i.bj = alloca i8, i64 %i.bi, align 16          ; 5 uses
  %i.bk = alloca i8, i64 %i.bi, align 16          ; 5 uses
  br i1 %i.av, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %_ctypes_get_ffi_type.exit.thread
  %xtraiter = and i64 %.val109, 1
  %i.bl = icmp eq i64 %.val109, 1
  br i1 %i.bl, label %.lr.ph140.epil.preheader, label %.lr.ph140.preheader.new

.lr.ph140.preheader.new:                          ; preds = %.lr.ph140.preheader
  %unroll_iter = and i64 %.val109, -2
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.r, %.lr.ph140.preheader.new
  %.1139 = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %i.cd, %bb.r ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %niter.next.1, %bb.r ]
  %i.bm = getelementptr [48 x i8], ptr %i.k, i64 %.1139 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !42 ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bk, i64 %.1139
  store ptr %i.bn, ptr %i.bo, align 16, !tbaa !44
  %i.bp = getelementptr i8, ptr %i.bn, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !45
  %i.br = icmp eq i16 %i.bq, 13
  %i.bs = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  br i1 %i.br, label %bb.p, label %.lr.ph140.1

bb.p:                                             ; preds = %.lr.ph140
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !16
  br label %.lr.ph140.1

.lr.ph140.1:                                      ; preds = %.lr.ph140, %bb.p
  %.sink = phi ptr [ %i.bt, %bb.p ], [ %i.bs, %.lr.ph140 ]
  %i.bu = getelementptr [8 x i8], ptr %i.bj, i64 %.1139
  store ptr %.sink, ptr %i.bu, align 16, !tbaa !46
  %8 = getelementptr [48 x i8], ptr %i.k, i64 %.1139 ; 2 uses
  %9 = getelementptr i8, ptr %8, i64 48
  %i.bv = load ptr, ptr %9, align 16, !tbaa !42   ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bk, i64 %.1139
  %10 = getelementptr i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %10, align 8, !tbaa !44
  %i.bx = getelementptr i8, ptr %i.bv, i64 10
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !45
  %i.bz = icmp eq i16 %i.by, 13
  %i.ca = getelementptr i8, ptr %8, i64 64        ; 2 uses
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph140.1
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph140.1
  %.sink.1 = phi ptr [ %i.cb, %bb.q ], [ %i.ca, %.lr.ph140.1 ]
  %i.cc = getelementptr [8 x i8], ptr %i.bj, i64 %.1139
  %11 = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.sink.1, ptr %11, align 8, !tbaa !46
  %i.cd = add nuw nsw i64 %.1139, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge141.loopexit.unr-lcssa, label %.lr.ph140, !llvm.loop !47

._crit_edge141.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge141, label %.lr.ph140.epil.preheader

.lr.ph140.epil.preheader:                         ; preds = %._crit_edge141.loopexit.unr-lcssa, %.lr.ph140.preheader
  %.1139.epil.init = phi i64 [ 0, %.lr.ph140.preheader ], [ %i.cd, %._crit_edge141.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod201 = trunc i64 %.val109 to i1
  call void @llvm.assume(i1 %lcmp.mod201)
  %i.ce = getelementptr [48 x i8], ptr %i.k, i64 %.1139.epil.init ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !42 ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.bk, i64 %.1139.epil.init
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !44
  %i.ch = getelementptr i8, ptr %i.cf, i64 10
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !45
  %i.cj = icmp eq i16 %i.ci, 13
  %i.ck = getelementptr i8, ptr %i.ce, i64 16     ; 2 uses
  br i1 %i.cj, label %bb.s, label %._crit_edge141.loopexit.epilog-lcssa

bb.s:                                             ; preds = %.lr.ph140.epil.preheader
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !16
  br label %._crit_edge141.loopexit.epilog-lcssa

._crit_edge141.loopexit.epilog-lcssa:             ; preds = %bb.s, %.lr.ph140.epil.preheader
  %.sink.epil = phi ptr [ %i.cl, %bb.s ], [ %i.ck, %.lr.ph140.epil.preheader ]
  %i.cm = getelementptr [8 x i8], ptr %i.bj, i64 %.1139.epil.init
  store ptr %.sink.epil, ptr %i.cm, align 8, !tbaa !46
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %._crit_edge141.loopexit.epilog-lcssa, %._crit_edge141.loopexit.unr-lcssa, %_ctypes_get_ffi_type.exit.thread
  %i.cn = trunc i64 %.val109 to i32               ; 3 uses
  %i.co = trunc i64 %i.aw to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = icmp sgt i32 %i.cn, %i.co
  %i.cr = and i1 %i.cp, %i.cq
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge141
  %i.cs = call i32 @ffi_prep_cif_var(ptr noundef nonnull %7, i32 noundef 2, i32 noundef %i.co, i32 noundef %i.cn, ptr noundef nonnull %.0100129, ptr noundef nonnull %i.bk) #10
  %.not35.i = icmp eq i32 %i.cs, 0
  br i1 %.not35.i, label %bb.v, label %_call_function_pointer.exit.thread.sink.split

bb.u:                                             ; preds = %._crit_edge141
  %i.ct = call i32 @ffi_prep_cif(ptr noundef nonnull %7, i32 noundef 2, i32 noundef %i.cn, ptr noundef nonnull %.0100129, ptr noundef nonnull %i.bk) #10
  %.not.i110 = icmp eq i32 %i.ct, 0
  br i1 %.not.i110, label %bb.v, label %_call_function_pointer.exit.thread.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cu = and i32 %3, 24
  %.not36.i = icmp eq i32 %i.cu, 0
  br i1 %.not36.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = call ptr @_ctypes_get_errobj(ptr noundef readonly %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_call_function_pointer.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.030.i = phi ptr [ %i.cv, %bb.w ], [ null, %bb.v ] ; 4 uses
  %i.cx = and i32 %3, 4
  %i.cy = icmp eq i32 %i.cx, 0                    ; 3 uses
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cz = call ptr @PyEval_SaveThread() #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.029.i = phi ptr [ %i.cz, %bb.y ], [ null, %bb.x ]
  %i.da = and i32 %3, 8
  %.not37.i = icmp eq i32 %i.da, 0
  br i1 %.not37.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !6
  %i.dd = tail call ptr @__errno_location() #11   ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !6
  store i32 %i.de, ptr %i.db, align 4, !tbaa !6
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !6
  call void @ffi_call(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj) #10
  %i.df = load i32, ptr %i.db, align 4, !tbaa !6
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !6
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !6
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !6
  br label %bb.ab

.critedge.i:                                      ; preds = %bb.z
  call void @ffi_call(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj) #10
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i, %bb.aa
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @PyEval_RestoreThread(ptr noundef %.029.i) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not.i.i = icmp eq ptr %.030.i, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i32, ptr %.030.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i112 = icmp sgt i32 %i.dh, -1
  br i1 %.not.i.i.i112, label %bb.af, label %Py_XDECREF.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %.030.i, align 8, !tbaa !16
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ag, label %Py_XDECREF.exit.i

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %.030.i) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  br i1 %i.cy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %Py_XDECREF.exit.i
  %i.dk = call ptr @PyErr_Occurred() #10
  %.not39.i = icmp eq ptr %i.dk, null
  br i1 %.not39.i, label %bb.ai, label %_call_function_pointer.exit.thread

_call_function_pointer.exit.thread.sink.split:    ; preds = %bb.u, %bb.t
  %.str.48.sink = phi ptr [ @.str.48, %bb.t ], [ @.str.49, %bb.u ]
  %i.dl = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.dl, ptr noundef nonnull %.str.48.sink) #10
  br label %_call_function_pointer.exit.thread

_call_function_pointer.exit.thread:               ; preds = %_call_function_pointer.exit.thread.sink.split, %bb.w, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.av, label %.lr.ph143.preheader, label %.loopexit

bb.ai:                                            ; preds = %bb.ah, %Py_XDECREF.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dm = icmp eq ptr %5, null
  br i1 %i.dm, label %.split175, label %bb.aj

.split175:                                        ; preds = %bb.ai
  %i.dn = load i32, ptr %i.bh, align 16, !tbaa !6
  %i.do = sext i32 %i.dn to i64
  %i.dp = call ptr @PyLong_FromLong(i64 noundef %i.do) #10 ; 2 uses
  br i1 %i.av, label %.lr.ph143.preheader, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.ax, label %GetResult.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !26
  %i.ds = call i32 @PyObject_IsInstance(ptr noundef nonnull %5, ptr noundef %i.dr) #10
  %.not.i.i.i113 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i113, label %.split177, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !26
  %i.du = call ptr @PyObject_GetTypeData(ptr noundef nonnull %5, ptr noundef %i.dt) #10 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !27
  %.not8.i.i.i114 = icmp eq i32 %i.dv, 0
  br i1 %.not8.i.i.i114, label %.split177, label %PyStgInfo_FromType.exit.i115

.split177:                                        ; preds = %bb.al, %bb.ak
  %i.dw = load i32, ptr %i.bh, align 16, !tbaa !6
  %i.dx = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %5, ptr noundef nonnull @.str.50, i32 noundef %i.dw) #10 ; 2 uses
  br i1 %i.av, label %.lr.ph143.preheader, label %.loopexit

PyStgInfo_FromType.exit.i115:                     ; preds = %bb.al
  %i.dy = getelementptr i8, ptr %i.du, i64 72     ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !48
  %.not.i116 = icmp eq ptr %i.dz, null
  br i1 %.not.i116, label %bb.as, label %bb.am

bb.am:                                            ; preds = %PyStgInfo_FromType.exit.i115
  %i.ea = call i32 @_ctypes_simple_instance(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %.not28.i = icmp eq i32 %i.ea, 0
  br i1 %.not28.i, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !48
  %i.ec = getelementptr i8, ptr %i.du, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !49
  %i.ee = call ptr %i.eb(ptr noundef nonnull %i.bh, i64 noundef %i.ed) #10, !inline_history !50 ; 8 uses
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !48
  %i.eg = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.51) #10
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51
  %i.ej = icmp eq ptr %i.ef, %i.ei
  br i1 %i.ej, label %bb.ao, label %Py_XDECREF.exit.i117

bb.ao:                                            ; preds = %bb.an
end_hunk_0
