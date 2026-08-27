Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/object_reading?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@read_py_long:bb.a
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 33776
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !10
  %.not79 = icmp eq i32 %i.ac, 0
  br i1 %.not79, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !46
  %i.ae = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ad) #8
  %.not80 = icmp eq i32 %i.ae, 0
  br i1 %.not80, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i
  %i.af = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 128
  %.val87 = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ah = icmp eq ptr %.val87, null
  br i1 %i.ah, label %_PyErr_Occurred.exit91.thread, label %_PyErr_Occurred.exit91

_PyErr_Occurred.exit91:                           ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %.val87, i64 8
  %.val.i89 = load ptr, ptr %i.ai, align 8, !tbaa !61
  %.not81 = icmp eq ptr %.val.i89, null
  br i1 %.not81, label %_PyErr_Occurred.exit91.thread, label %bb.k

_PyErr_Occurred.exit91.thread:                    ; preds = %bb.j, %_PyErr_Occurred.exit91
  %i.aj = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  %i.ak = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.af, ptr noundef %i.aj, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %_PyErr_Occurred.exit91
  %i.al = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  %i.am = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.al, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %bb.af

bb.l:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %0, i64 33448     ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.ap = sub i64 32, %i.ao
  %i.aq = sdiv i64 %i.ap, 4
  %.not = icmp sgt i64 %i.y, %i.aq
  %i.ar = shl nuw nsw i64 %i.y, 2                 ; 3 uses
  %i.as = call ptr @PyMem_RawMalloc(i64 noundef %i.ar) #8 ; 10 uses
  %.not68 = icmp eq ptr %i.as, null               ; 2 uses
  br i1 %.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not68, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.at = call ptr @PyErr_NoMemory() #8           ; 0 uses
  %i.au = getelementptr i8, ptr %0, i64 33776
  %i.av = load i32, ptr %i.au, align 8, !tbaa !10
  %.not76 = icmp eq i32 %i.av, 0
  br i1 %.not76, label %bb.af, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !46
  %i.ax = call i32 @PyErr_ExceptionMatches(ptr noundef %i.aw) #8
  %.not77 = icmp eq i32 %i.ax, 0
  br i1 %.not77, label %bb.p, label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.ay = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 128
  %.val86 = load ptr, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.ba = icmp eq ptr %.val86, null
  br i1 %i.ba, label %_PyErr_Occurred.exit94.thread, label %_PyErr_Occurred.exit94

_PyErr_Occurred.exit94:                           ; preds = %bb.p
  %i.bb = getelementptr i8, ptr %.val86, i64 8
  %.val.i92 = load ptr, ptr %i.bb, align 8, !tbaa !61
  %.not78 = icmp eq ptr %.val.i92, null
  br i1 %.not78, label %_PyErr_Occurred.exit94.thread, label %bb.q

_PyErr_Occurred.exit94.thread:                    ; preds = %bb.p, %_PyErr_Occurred.exit94
  %i.bc = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !46
  %i.bd = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.ay, ptr noundef %i.bc, ptr noundef nonnull @.str.18) #8 ; 0 uses
  br label %bb.af

bb.q:                                             ; preds = %_PyErr_Occurred.exit94
  %i.be = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !46
  %i.bf = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.be, ptr noundef nonnull @.str.18) #8 ; 0 uses
  br label %bb.af

bb.r:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.a, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 1 %i.bg, i64 %i.ar, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.r
  %xtraiter = and i64 %i.y, 3                     ; 3 uses
  %i.bh = icmp ult i64 %i.v, 32
  br i1 %i.bh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.y, 124
  br label %bb.ad

bb.s:                                             ; preds = %bb.l
  br i1 %.not68, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bi = call ptr @PyErr_NoMemory() #8           ; 0 uses
  %i.bj = getelementptr i8, ptr %0, i64 33776
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !10
  %.not69 = icmp eq i32 %i.bk, 0
  br i1 %.not69, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !46
  %i.bm = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bl) #8
  %.not70 = icmp eq i32 %i.bm, 0
  br i1 %.not70, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.bn = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 128
  %.val85 = load ptr, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.bp = icmp eq ptr %.val85, null
  br i1 %i.bp, label %_PyErr_Occurred.exit97.thread, label %_PyErr_Occurred.exit97

_PyErr_Occurred.exit97:                           ; preds = %bb.v
  %i.bq = getelementptr i8, ptr %.val85, i64 8
  %.val.i95 = load ptr, ptr %i.bq, align 8, !tbaa !61
  %.not71 = icmp eq ptr %.val.i95, null
  br i1 %.not71, label %_PyErr_Occurred.exit97.thread, label %bb.w

_PyErr_Occurred.exit97.thread:                    ; preds = %bb.v, %_PyErr_Occurred.exit97
  %i.br = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !46
  %i.bs = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.bn, ptr noundef %i.br, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %bb.af

bb.w:                                             ; preds = %_PyErr_Occurred.exit97
  %i.bt = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !46
  %i.bu = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.bt, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %bb.af

bb.x:                                             ; preds = %bb.s
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !81
  %i.bw = add i64 %i.bv, %1
  %i.bx = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.b, i64 noundef %i.bw, i64 noundef %i.ar, ptr noundef nonnull %i.as)
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.y, label %.preheader

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr i8, ptr %0, i64 33776
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !10
  %.not72 = icmp eq i32 %i.ca, 0
  br i1 %.not72, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !46
  %i.cc = call i32 @PyErr_ExceptionMatches(ptr noundef %i.cb) #8
  %.not73 = icmp eq i32 %i.cc, 0
  br i1 %.not73, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.cd = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 128
  %.val = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 2 uses
  %i.cf = icmp eq ptr %.val, null
  br i1 %i.cf, label %_PyErr_Occurred.exit100.thread, label %_PyErr_Occurred.exit100

_PyErr_Occurred.exit100:                          ; preds = %bb.aa
  %i.cg = getelementptr i8, ptr %.val, i64 8
  %.val.i98 = load ptr, ptr %i.cg, align 8, !tbaa !61
  %.not74 = icmp eq ptr %.val.i98, null
  br i1 %.not74, label %_PyErr_Occurred.exit100.thread, label %bb.ab

_PyErr_Occurred.exit100.thread:                   ; preds = %bb.aa, %_PyErr_Occurred.exit100
  %i.ch = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  %i.ci = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.cd, ptr noundef %i.ch, ptr noundef nonnull @.str.20) #8 ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_PyErr_Occurred.exit100
  %i.cj = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  %i.ck = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.cj, ptr noundef nonnull @.str.20) #8 ; 0 uses
  br label %bb.ae

.unr-lcssa:                                       ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.061112.epil.init = phi i64 [ 0, %.preheader ], [ %i.du, %.unr-lcssa ]
  %.062111.epil.init = phi i64 [ 0, %.preheader ], [ %i.dt, %.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %.061112.epil = phi i64 [ %i.cr, %bb.ac ], [ %.061112.epil.init, %.epil.preheader ] ; 3 uses
  %.062111.epil = phi i64 [ %i.cq, %bb.ac ], [ %.062111.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.ac ], [ 0, %.epil.preheader ]
  %i.cl = getelementptr [4 x i8], ptr %i.as, i64 %.061112.epil
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !6
  %i.cn = zext i32 %i.cm to i64
  %i.co = mul nuw nsw i64 %.061112.epil, 30
  %i.cp = shl i64 %i.cn, %i.co
  %i.cq = add i64 %i.cp, %.062111.epil            ; 2 uses
  %i.cr = add nuw nsw i64 %.061112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ac, !llvm.loop !82

.epilog-lcssa:                                    ; preds = %bb.ac, %.unr-lcssa
  %.lcssa = phi i64 [ %i.dt, %.unr-lcssa ], [ %i.cq, %bb.ac ] ; 2 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.as) #8
  %i.cs = sub i64 0, %.lcssa
  %spec.select = select i1 %i.x, i64 %i.cs, i64 %.lcssa
  br label %bb.af

bb.ad:                                            ; preds = %bb.ad, %.preheader.new
  %.061112 = phi i64 [ 0, %.preheader.new ], [ %i.du, %bb.ad ] ; 6 uses
  %.062111 = phi i64 [ 0, %.preheader.new ], [ %i.dt, %bb.ad ]
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.ad ]
  %i.ct = getelementptr [4 x i8], ptr %i.as, i64 %.061112
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !6
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul nuw nsw i64 %.061112, 30
  %i.cx = shl i64 %i.cv, %i.cw
  %i.cy = add i64 %i.cx, %.062111
  %i.cz = or disjoint i64 %.061112, 1             ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.as, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !6
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.cz, 30
  %i.de = shl i64 %i.dc, %i.dd
  %i.df = add i64 %i.de, %i.cy
  %i.dg = or disjoint i64 %.061112, 2             ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.as, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !6
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw nsw i64 %i.dg, 30
  %i.dl = shl i64 %i.dj, %i.dk
  %i.dm = add i64 %i.dl, %i.df
  %i.dn = or disjoint i64 %.061112, 3             ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.as, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !6
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw nsw i64 %i.dn, 30
  %i.ds = shl i64 %i.dq, %i.dr
  %i.dt = add i64 %i.ds, %i.dm                    ; 3 uses
  %i.du = add nuw nsw i64 %.061112, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ad, !llvm.loop !84

bb.ae:                                            ; preds = %_PyErr_Occurred.exit100.thread, %bb.ab, %bb.y, %bb.z
  call void @PyMem_RawFree(ptr noundef nonnull %i.as) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.f, %_PyErr_Occurred.exit91.thread, %bb.k, %bb.i, %bb.h, %bb.t, %bb.u, %bb.w, %_PyErr_Occurred.exit97.thread, %bb.n, %bb.o, %bb.q, %_PyErr_Occurred.exit94.thread, %bb.ae, %.epilog-lcssa, %bb.b, %bb.c, %bb.e, %_PyErr_Occurred.exit.thread
  %.2 = phi i64 [ -1, %bb.b ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.h ], [ 0, %bb.f ], [ -1, %_PyErr_Occurred.exit91.thread ], [ -1, %bb.k ], [ -1, %bb.i ], [ %spec.select, %.epilog-lcssa ], [ -1, %bb.n ], [ -1, %bb.ae ], [ -1, %_PyErr_Occurred.exit94.thread ], [ -1, %bb.q ], [ -1, %bb.o ], [ -1, %_PyErr_Occurred.exit97.thread ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %5 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @read_remote_memory_fallback(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.k ]    ; 6 uses
  %i.f = getelementptr i8, ptr %3, i64 %.0
  store ptr %i.f, ptr %4, align 16, !tbaa !86
  %i.g = sub i64 %2, %.0                          ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !tbaa !88
  %i.h = add i64 %.0, %1                          ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %5, align 16, !tbaa !86
  store i64 %i.g, ptr %i.e, align 8, !tbaa !88
  %i.j = load i32, ptr %0, align 8, !tbaa !72
  %i.k = call i64 @process_vm_readv(i32 noundef %i.j, ptr noundef nonnull %4, i64 noundef 1, ptr noundef nonnull %5, i64 noundef 1, i64 noundef 0) #8 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @__errno_location() #9     ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6
  %i.o = icmp eq i32 %i.n, 38
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call fastcc i32 @read_remote_memory_fallback(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !46
  %i.r = call ptr @PyErr_SetFromErrno(ptr noundef %i.q) #8 ; 0 uses
  %i.s = load i32, ptr %i.m, align 4, !tbaa !6
  %i.t = icmp eq i32 %i.s, 3
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !46
  %i.v = call i32 @PyErr_ExceptionMatches(ptr noundef %i.u) #8
  %.not39 = icmp eq i32 %i.v, 0
  br i1 %.not39, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.w = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 128
  %.val = load ptr, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.y = icmp eq ptr %.val, null
  br i1 %i.y, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !61
  %.not40 = icmp eq ptr %.val.i, null
  br i1 %.not40, label %_PyErr_Occurred.exit.thread, label %bb.j

_PyErr_Occurred.exit.thread:                      ; preds = %bb.i, %_PyErr_Occurred.exit
  %i.aa = load ptr, ptr @PyExc_OSError, align 8, !tbaa !46
  %i.ab = load i32, ptr %0, align 8, !tbaa !72
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !6
  %i.ad = call ptr @strerror(i32 noundef %i.ac) #8
  %i.ae = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.w, ptr noundef %i.aa, ptr noundef nonnull @.str.22, i32 noundef %i.ab, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %.0, ptr noundef %i.ad) #8 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %_PyErr_Occurred.exit
  %i.af = load ptr, ptr @PyExc_OSError, align 8, !tbaa !46
  %i.ag = load i32, ptr %0, align 8, !tbaa !72
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !6
  %i.ai = call ptr @strerror(i32 noundef %i.ah) #8
  %i.aj = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.af, ptr noundef nonnull @.str.22, i32 noundef %i.ag, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %.0, ptr noundef %i.ai) #8 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.d
  %i.ak = add i64 %i.k, %.0
  %i.al = load i64, ptr %i.d, align 8, !tbaa !88
  %.not38 = icmp eq i64 %i.k, %i.al
  br i1 %.not38, label %.loopexit, label %bb.d, !llvm.loop !89

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.j, %_PyErr_Occurred.exit.thread, %bb.g, %bb.f
  %.036 = phi i32 [ %i.p, %bb.f ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.036, %.loopexit ]
  ret i32 %.1
}

declare void @PyErr_Clear() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_remote_memory_fallback(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %4 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = load i32, ptr %0, align 8, !tbaa !72
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.e) #8 ; 0 uses
  %i.g = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 2) #8 ; 2 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !85
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %open_proc_mem_fd.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !46
  %i.j = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #8 ; 0 uses
  %i.k = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !46
  %i.l = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.k) #8
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %open_proc_mem_fd.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 128
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !48 ; 2 uses
  %i.o = icmp eq ptr %.val.i, null
  br i1 %i.o, label %_PyErr_Occurred.exit.thread.i, label %_PyErr_Occurred.exit.i

_PyErr_Occurred.exit.i:                           ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !tbaa !61
  %.not5.i = icmp eq ptr %.val.i.i, null
  br i1 %.not5.i, label %_PyErr_Occurred.exit.thread.i, label %bb.e

_PyErr_Occurred.exit.thread.i:                    ; preds = %_PyErr_Occurred.exit.i, %bb.d
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !46
  %i.r = tail call ptr @__errno_location() #9
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6
  %i.t = tail call ptr @strerror(i32 noundef %i.s) #8
  %i.u = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.m, ptr noundef %i.q, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.a, ptr noundef %i.t) #8 ; 0 uses
  br label %open_proc_mem_fd.exit.thread

bb.e:                                             ; preds = %_PyErr_Occurred.exit.i
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !46
  %i.w = tail call ptr @__errno_location() #9
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = tail call ptr @strerror(i32 noundef %i.x) #8
  %i.z = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.v, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.a, ptr noundef %i.y) #8 ; 0 uses
  br label %open_proc_mem_fd.exit.thread

open_proc_mem_fd.exit.thread:                     ; preds = %bb.c, %_PyErr_Occurred.exit.thread.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.l

open_proc_mem_fd.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.f:                                             ; preds = %open_proc_mem_fd.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.029 = phi i64 [ 0, %bb.f ], [ %i.bb, %bb.k ]  ; 6 uses
  %i.ab = getelementptr i8, ptr %3, i64 %.029
  store ptr %i.ab, ptr %4, align 16, !tbaa !86
end_hunk_0
