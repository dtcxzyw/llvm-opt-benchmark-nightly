inline.NumInlined: 62
inline.NumDeleted: 9
loop-unroll.NumUnrolled: 2
begin_hunk_0_@collect_frames_with_cache:bb.a
  %i.am = getelementptr i8, ptr %0, i64 33872     ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !133
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !133
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %Py_DECREF.exit54.i, %bb.l
  %.not50.i = icmp eq ptr %.038.i, null
  br i1 %.not50.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !104 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val.i = load i64, ptr %i.ar, align 8, !tbaa !105 ; 2 uses
  %i.as = call i32 @PyList_SetSlice(ptr noundef %i.aq, i64 noundef %.val.i, i64 noundef %.val.i, ptr noundef nonnull %.038.i) #10
  %i.at = load i32, ptr %.038.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.at, -1
  br i1 %.not.i.i, label %bb.w, label %Py_DECREF.exit.i

bb.w:                                             ; preds = %bb.v
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %.038.i, align 8, !tbaa !77
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.x, label %Py_DECREF.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %.038.i) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.x, %bb.w, %bb.v
  %i.aw = icmp sgt i32 %i.as, -1
  br i1 %i.aw, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %Py_DECREF.exit.i
  %i.ax = getelementptr i8, ptr %0, i64 33808
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !78
  %.not51.i = icmp eq i32 %i.ay, 0
  br i1 %.not51.i, label %bb.ab, label %.thread69.i

.thread69.i:                                      ; preds = %bb.y
  %i.az = add i64 %.val59.i, -1
  %i.ba = getelementptr i8, ptr %0, i64 33864     ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !134
  %i.bc = add i64 %i.az, %i.bb
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !134
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 33808
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !78
  %i.bd = icmp eq i32 %.pre.i, 0
  br i1 %i.bd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread69.i
  %i.be = getelementptr i8, ptr %0, i64 33840     ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !135
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !135
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %Py_DECREF.exit.i, %Py_DECREF.exit56.i, %bb.k, %bb.h
  %.2.i = phi i32 [ -1, %bb.h ], [ -1, %Py_DECREF.exit56.i ], [ 0, %bb.z ], [ -1, %Py_DECREF.exit.i ], [ -1, %bb.k ], [ 0, %bb.aa ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.critedge73

bb.ac:                                            ; preds = %bb.c, %bb.a, %bb.b, %bb.d, %bb.e, %bb.g, %bb.f
  %i.bh = getelementptr i8, ptr %1, i64 48        ; 8 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %.val78 = load i64, ptr %i.bj, align 8, !tbaa !105
  %i.bk = tail call i32 @process_frame_chain(ptr noundef nonnull %0, ptr noundef %1)
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.critedge73, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = getelementptr i8, ptr %0, i64 33808     ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !78
  %.not65 = icmp eq i32 %i.bn, 0                  ; 2 uses
  br i1 %.not65, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %.val77 = load i64, ptr %i.bp, align 8, !tbaa !105
  %i.bq = sub i64 %.val77, %.val78
  %i.br = getelementptr i8, ptr %0, i64 33872     ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !133
  %i.bt = add i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !133
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bu = getelementptr i8, ptr %1, i64 88
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !100
  %.not66 = icmp eq i32 %i.bv, 0
  br i1 %.not66, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !104 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %.val76 = load i64, ptr %i.bx, align 8, !tbaa !105
  %i.by = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !113
  %i.ca = getelementptr i8, ptr %1, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !110
  %i.cc = getelementptr i8, ptr %1, i64 64        ; 3 uses
  %i.cd = getelementptr i8, ptr %1, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !112
  %i.cf = tail call i32 @frame_cache_lookup_and_extend(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %i.bz, ptr noundef %i.bw, ptr noundef %i.cb, ptr noundef %i.cc, i64 noundef %i.ce) #10 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.critedge73, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = icmp eq i32 %i.cf, 0
  br i1 %i.ch, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load i32, ptr %i.bm, align 8, !tbaa !78
  %.not70 = icmp eq i32 %i.ci, 0
  br i1 %.not70, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = getelementptr i8, ptr %0, i64 33848     ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !136
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !136
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.cm = load i64, ptr %i.by, align 8, !tbaa !113
  store i64 %i.cm, ptr %3, align 8, !tbaa !97
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = getelementptr i8, ptr %1, i64 8
  %i.cp = load <2 x i64>, ptr %i.co, align 8, !tbaa !70
  store <2 x i64> %i.cp, ptr %i.cn, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.cq, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = getelementptr i8, ptr %1, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !102
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !102
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 1, ptr %i.cu, align 8, !tbaa !103
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 0, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cx = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !137
  %i.cy = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %.val75 = load i64, ptr %i.cz, align 8, !tbaa !105
  store <2 x ptr> %i.cx, ptr %i.cw, align 8, !tbaa !137
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.db = load <2 x i64>, ptr %i.cc, align 8, !tbaa !70
  store <2 x i64> %i.db, ptr %i.da, align 8, !tbaa !70
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %i.dd = call i32 @process_frame_chain(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.df = load i64, ptr %i.da, align 8, !tbaa !111
  store i64 %i.df, ptr %i.cc, align 8, !tbaa !111
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !101
  %i.dh = getelementptr i8, ptr %1, i64 80
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !101
  %i.di = load i32, ptr %i.bm, align 8, !tbaa !78
  %.not71 = icmp eq i32 %i.di, 0
  br i1 %.not71, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dj = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %.val74 = load i64, ptr %i.dk, align 8, !tbaa !105
  %i.dl = sub i64 %.val74, %.val75
  %i.dm = getelementptr i8, ptr %0, i64 33872     ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !133
  %i.do = add i64 %i.dl, %i.dn
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !133
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread

bb.ao:                                            ; preds = %bb.ah
  %i.dp = getelementptr i8, ptr %1, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !117
  %i.dr = getelementptr i8, ptr %1, i64 80
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !101
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !78
  %.not68 = icmp eq i32 %i.ds, 0
  br i1 %.not68, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = getelementptr i8, ptr %0, i64 33856     ; 2 uses
  %4 = load i64, ptr %i.dt, align 8, !tbaa !138
  %5 = add i64 %4, 1
  store i64 %5, ptr %i.dt, align 8, !tbaa !138
  %i.du = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %.val = load i64, ptr %i.dv, align 8, !tbaa !105
  %i.dw = sub i64 %.val, %.val76
  %6 = getelementptr i8, ptr %0, i64 33864        ; 2 uses
  %7 = load i64, ptr %6, align 8, !tbaa !134
  %8 = add i64 %i.dw, %7
  store i64 %8, ptr %6, align 8, !tbaa !134
  br label %.thread

.critedge:                                        ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.critedge73

bb.aq:                                            ; preds = %bb.af
  %i.dx = getelementptr i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !113
  %i.dz = icmp ne i64 %i.dy, 0
  %brmerge = or i1 %.not65, %i.dz
  br i1 %brmerge, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ea = getelementptr i8, ptr %0, i64 33848     ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !136
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !136
  br label %.thread

.thread:                                          ; preds = %bb.aq, %bb.ao, %bb.an, %bb.ap, %bb.ar
  %i.ed = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.ee = getelementptr i8, ptr %1, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !110
  %i.eg = getelementptr i8, ptr %1, i64 64
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !111
  %i.ei = getelementptr i8, ptr %1, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !117
  %i.ek = getelementptr i8, ptr %1, i64 80
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !101
  %i.em = tail call i32 @frame_cache_store(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %i.ed, ptr noundef %i.ef, i64 noundef %i.eh, i64 noundef %i.ej, i64 noundef %i.el) #10
  %.lobit = ashr i32 %i.em, 31
  br label %.critedge73

.critedge73:                                      ; preds = %bb.ac, %.thread, %.critedge, %bb.ag, %bb.ab
  %.4 = phi i32 [ %.2.i, %bb.ab ], [ -1, %bb.ac ], [ %.lobit, %.thread ], [ -1, %.critedge ], [ -1, %bb.ag ]
  ret i32 %.4
}

declare i32 @frame_cache_lookup_and_extend(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @frame_cache_store(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyThreadState_GetCurrent() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %5 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !121
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @read_remote_memory_fallback(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.036 = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.k ]  ; 6 uses
  %i.f = getelementptr i8, ptr %3, i64 %.036
  store ptr %i.f, ptr %4, align 16, !tbaa !122
  %i.g = sub i64 %2, %.036                        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !tbaa !124
  %i.h = add i64 %.036, %1                        ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %5, align 16, !tbaa !122
  store i64 %i.g, ptr %i.e, align 8, !tbaa !124
  %i.j = load i32, ptr %0, align 8, !tbaa !95
  %i.k = call i64 @process_vm_readv(i32 noundef %i.j, ptr noundef nonnull %4, i64 noundef 1, ptr noundef nonnull %5, i64 noundef 1, i64 noundef 0) #10 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @__errno_location() #11    ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6
  %i.o = icmp eq i32 %i.n, 38
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call fastcc i32 @read_remote_memory_fallback(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.r = call ptr @PyErr_SetFromErrno(ptr noundef %i.q) #10 ; 0 uses
  %i.s = load i32, ptr %i.m, align 4, !tbaa !6
  %i.t = icmp eq i32 %i.s, 3
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !54
  %i.v = call i32 @PyErr_ExceptionMatches(ptr noundef %i.u) #10
  %.not39 = icmp eq i32 %i.v, 0
  br i1 %.not39, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.w = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 128
  %.val = load ptr, ptr %i.x, align 8, !tbaa !56  ; 2 uses
  %i.y = icmp eq ptr %.val, null
  br i1 %i.y, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !69
  %.not40 = icmp eq ptr %.val.i, null
  br i1 %.not40, label %_PyErr_Occurred.exit.thread, label %bb.j

_PyErr_Occurred.exit.thread:                      ; preds = %bb.i, %_PyErr_Occurred.exit
  %i.aa = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.ab = load i32, ptr %0, align 8, !tbaa !95
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !6
  %i.ad = call ptr @strerror(i32 noundef %i.ac) #10
  %i.ae = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.w, ptr noundef %i.aa, ptr noundef nonnull @.str.25, i32 noundef %i.ab, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %.036, ptr noundef %i.ad) #10 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %_PyErr_Occurred.exit
  %i.af = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.ag = load i32, ptr %0, align 8, !tbaa !95
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !6
  %i.ai = call ptr @strerror(i32 noundef %i.ah) #10
  %i.aj = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.af, ptr noundef nonnull @.str.25, i32 noundef %i.ag, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %.036, ptr noundef %i.ai) #10 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.d
  %i.ak = add i64 %i.k, %.036
  %i.al = load i64, ptr %i.d, align 8, !tbaa !124
  %.not38 = icmp eq i64 %i.k, %i.al
  br i1 %.not38, label %.loopexit, label %bb.d, !llvm.loop !139

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.j, %_PyErr_Occurred.exit.thread, %bb.g, %bb.f
  %.0 = phi i32 [ %i.p, %bb.f ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.0, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_remote_memory_fallback(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !121
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @open_proc_mem_fd(ptr noundef nonnull %0)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.030 = phi i64 [ 0, %bb.c ], [ %i.ag, %bb.h ]  ; 6 uses
  %i.g = getelementptr i8, ptr %3, i64 %.030
  store ptr %i.g, ptr %4, align 16, !tbaa !122
  %i.h = sub i64 %2, %.030                        ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !124
  %i.i = add i64 %.030, %1                        ; 3 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !121
  %i.k = call i64 @preadv64(i32 noundef %i.j, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %i.i) #10 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.n = call ptr @PyErr_SetFromErrno(ptr noundef %i.m) #10 ; 0 uses
  %i.o = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !54
  %i.p = call i32 @PyErr_ExceptionMatches(ptr noundef %i.o) #10
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 128
  %.val = load ptr, ptr %i.r, align 8, !tbaa !56  ; 2 uses
  %i.s = icmp eq ptr %.val, null
  br i1 %i.s, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !69
  %.not33 = icmp eq ptr %.val.i, null
  br i1 %.not33, label %_PyErr_Occurred.exit.thread, label %bb.g

_PyErr_Occurred.exit.thread:                      ; preds = %bb.f, %_PyErr_Occurred.exit
  %i.u = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.v = load i32, ptr %0, align 8, !tbaa !95
  %i.w = tail call ptr @__errno_location() #11
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = call ptr @strerror(i32 noundef %i.x) #10
  %i.z = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.q, ptr noundef %i.u, ptr noundef nonnull @.str.26, i32 noundef %i.v, i64 noundef %i.i, i64 noundef %i.h, i64 noundef %.030, ptr noundef %i.y) #10 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %_PyErr_Occurred.exit
  %i.aa = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.ab = load i32, ptr %0, align 8, !tbaa !95
  %i.ac = tail call ptr @__errno_location() #11
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6
  %i.ae = call ptr @strerror(i32 noundef %i.ad) #10
  %i.af = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.aa, ptr noundef nonnull @.str.26, i32 noundef %i.ab, i64 noundef %i.i, i64 noundef %i.h, i64 noundef %.030, ptr noundef %i.ae) #10 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ag = add i64 %i.k, %.030
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !124
  %.not34 = icmp eq i64 %i.k, %i.ah
  br i1 %.not34, label %.thread, label %bb.d, !llvm.loop !140

.thread:                                          ; preds = %bb.h, %_PyErr_Occurred.exit.thread, %bb.g, %bb.e
  %.2 = phi i32 [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.thread
  %.3 = phi i32 [ %.2, %.thread ], [ -1, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind
declare i64 @process_vm_readv(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @open_proc_mem_fd(ptr nofree noundef captures(none) initializes((4, 8)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr %0, align 8, !tbaa !95
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.b) #10 ; 0 uses
  %i.d = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 2) #10 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !121
  %i.f = icmp eq i32 %i.d, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.h = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.g) #10 ; 0 uses
  %i.i = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !54
  %i.j = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.i) #10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 128
  %.val = load ptr, ptr %i.l, align 8, !tbaa !56  ; 2 uses
  %i.m = icmp eq ptr %.val, null
  br i1 %i.m, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !69
  %.not5 = icmp eq ptr %.val.i, null
  br i1 %.not5, label %_PyErr_Occurred.exit.thread, label %bb.d

_PyErr_Occurred.exit.thread:                      ; preds = %bb.c, %_PyErr_Occurred.exit
  %i.o = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.p = tail call ptr @__errno_location() #11
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  %i.r = tail call ptr @strerror(i32 noundef %i.q) #10
  %i.s = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.k, ptr noundef %i.o, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a, ptr noundef %i.r) #10 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %_PyErr_Occurred.exit
  %i.t = load ptr, ptr @PyExc_OSError, align 8, !tbaa !54
  %i.u = tail call ptr @__errno_location() #11
  %i.v = load i32, ptr %i.u, align 4, !tbaa !6
  %i.w = tail call ptr @strerror(i32 noundef %i.v) #10
  %i.x = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.t, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a, ptr noundef %i.w) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %_PyErr_Occurred.exit.thread
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare i64 @preadv64(i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @process_vm_writev(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @pwritev64(i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @frame_cache_find(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyList_GetSlice(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !13, i64 8}
!11 = !{!"", !12, i64 0, !13, i64 8}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!16, !12, i64 16}
!16 = !{!"", !13, i64 0, !13, i64 8, !12, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !13, i64 33056}
!20 = !{!"", !21, i64 0, !23, i64 16, !13, i64 32800, !24, i64 32808, !7, i64 33632, !45, i64 33640, !13, i64 33744, !13, i64 33752, !13, i64 33760, !49, i64 33768, !7, i64 33776, !7, i64 33780, !7, i64 33784, !7, i64 33788, !7, i64 33792, !7, i64 33796, !7, i64 33800, !7, i64 33804, !7, i64 33808, !7, i64 33812, !12, i64 33816, !12, i64 33824, !50, i64 33832, !51, i64 33920, !7, i64 33936, !52, i64 33944, !13, i64 33952}
!21 = !{!"_object", !8, i64 0, !22, i64 8}
!22 = !{!"p1 _ZTS11_typeobject", !12, i64 0}
!23 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8, !13, i64 32776}
!24 = !{!"_Py_DebugOffsets", !8, i64 0, !13, i64 8, !13, i64 16, !25, i64 24, !26, i64 48, !27, i64 176, !28, i64 296, !29, i64 304, !30, i64 368, !31, i64 456, !32, i64 472, !33, i64 504, !34, i64 528, !35, i64 552, !36, i64 584, !37, i64 608, !38, i64 624, !39, i64 648, !40, i64 672, !41, i64 704, !42, i64 728, !43, i64 760, !44, i64 776}
!25 = !{!"_runtime_state", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_interpreter_state", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120}
!27 = !{!"_thread_state", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112}
!28 = !{!"", !13, i64 0}
!29 = !{!"_interpreter_frame", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!30 = !{!"_code_object", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80}
!31 = !{!"_pyobject", !13, i64 0, !13, i64 8}
!32 = !{!"_type_object", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!33 = !{!"_tuple_object", !13, i64 0, !13, i64 8, !13, i64 16}
!34 = !{!"_list_object", !13, i64 0, !13, i64 8, !13, i64 16}
!35 = !{!"_set_object", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!36 = !{!"_dict_object", !13, i64 0, !13, i64 8, !13, i64 16}
!37 = !{!"_float_object", !13, i64 0, !13, i64 8}
!38 = !{!"_long_object", !13, i64 0, !13, i64 8, !13, i64 16}
!39 = !{!"_bytes_object", !13, i64 0, !13, i64 8, !13, i64 16}
!40 = !{!"_unicode_object", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!41 = !{!"_gc", !13, i64 0, !13, i64 8, !13, i64 16}
!42 = !{!"_gen_object", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!43 = !{!"_llist_node", !13, i64 0, !13, i64 8}
!44 = !{!"_debugger_support", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!45 = !{!"_Py_AsyncioModuleDebugOffsets", !46, i64 0, !47, i64 56, !48, i64 72}
!46 = !{!"_asyncio_task_object", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!47 = !{!"_asyncio_interpreter_state", !13, i64 0, !13, i64 8}
!48 = !{!"_asyncio_thread_state", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!49 = !{!"p1 _ZTS15_Py_hashtable_t", !12, i64 0}
!50 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80}
!51 = !{!"", !52, i64 0, !13, i64 8}
!52 = !{!"p1 int", !12, i64 0}
!53 = !{!20, !7, i64 33776}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTS7_object", !12, i64 0}
!56 = !{!57, !55, i64 128}
!57 = !{!"_ts", !58, i64 0, !58, i64 8, !59, i64 16, !13, i64 24, !60, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !61, i64 72, !61, i64 80, !61, i64 88, !12, i64 96, !12, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !62, i64 136, !55, i64 144, !7, i64 152, !55, i64 160, !13, i64 168, !13, i64 176, !55, i64 184, !13, i64 192, !7, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !13, i64 232, !13, i64 240, !63, i64 248, !64, i64 256, !64, i64 264, !66, i64 272, !55, i64 288, !67, i64 296, !13, i64 304, !55, i64 312, !55, i64 320, !68, i64 328}
!58 = !{!"p1 _ZTS3_ts", !12, i64 0}
!59 = !{!"p1 _ZTS3_is", !12, i64 0}
!60 = !{!"", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!61 = !{!"p1 _ZTS19_PyInterpreterFrame", !12, i64 0}
!62 = !{!"p1 _ZTS14_err_stackitem", !12, i64 0}
!63 = !{!"p1 _ZTS12_stack_chunk", !12, i64 0}
!64 = !{!"p2 _ZTS7_object", !65, i64 0}
!65 = !{!"any p2 pointer", !12, i64 0}
!66 = !{!"_err_stackitem", !55, i64 0, !62, i64 8}
!67 = !{!"p1 _ZTS11_PyExitData", !12, i64 0}
!68 = !{!"", !7, i64 0, !8, i64 4}
!69 = !{!21, !22, i64 8}
!70 = !{!13, !13, i64 0}
!71 = !{!16, !13, i64 0}
!72 = !{!16, !13, i64 8}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = !{!20, !13, i64 33152}
!77 = !{!8, !8, i64 0}
!78 = !{!20, !7, i64 33808}
!79 = !{!20, !13, i64 33120}
!80 = !{!20, !13, i64 33128}
!81 = !{!20, !13, i64 33136}
!82 = !{!83, !13, i64 0}
!83 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16}
!84 = !{!83, !13, i64 8}
!85 = !{!83, !7, i64 16}
!86 = !{!23, !13, i64 32776}
!87 = !{!88, !7, i64 16}
!88 = !{!"page_cache_entry", !13, i64 0, !89, i64 8, !7, i64 16, !90, i64 24}
!89 = !{!"p1 omnipotent char", !12, i64 0}
!90 = !{!"p1 _ZTS16page_cache_entry", !12, i64 0}
!91 = !{!88, !13, i64 0}
!92 = !{!88, !89, i64 8}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !18}
!95 = !{!23, !7, i64 0}
!96 = !{!20, !13, i64 33160}
!97 = !{!98, !13, i64 0}
!98 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !12, i64 32, !7, i64 40, !55, i64 48, !99, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !7, i64 88}
!99 = !{!"p1 long", !12, i64 0}
!100 = !{!98, !7, i64 88}
!101 = !{!98, !13, i64 80}
!102 = !{!98, !12, i64 32}
!103 = !{!98, !7, i64 40}
!104 = !{!98, !55, i64 48}
!105 = !{!106, !13, i64 16}
!106 = !{!"PyVarObject", !21, i64 0, !13, i64 16}
!107 = !{!20, !7, i64 33796}
!108 = !{!98, !13, i64 16}
!109 = !{!20, !7, i64 33792}
!110 = !{!98, !99, i64 56}
!111 = !{!98, !13, i64 64}
!112 = !{!98, !13, i64 72}
!113 = !{!98, !13, i64 24}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.peeled.count", i32 1}
!117 = !{!98, !13, i64 8}
!118 = !{!20, !13, i64 33744}
!119 = !{!20, !13, i64 32880}
!120 = !{!20, !13, i64 33032}
!121 = !{!23, !7, i64 4}
!122 = !{!123, !12, i64 0}
!123 = !{!"iovec", !12, i64 0, !13, i64 8}
!124 = !{!123, !13, i64 8}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = !{!20, !13, i64 33000}
!128 = !{!20, !13, i64 32872}
!129 = !{!20, !12, i64 33824}
!130 = !{!131, !55, i64 8208}
!131 = !{!"", !13, i64 0, !8, i64 8, !13, i64 8200, !55, i64 8208}
!132 = !{!131, !13, i64 8200}
!133 = !{!20, !13, i64 33872}
!134 = !{!20, !13, i64 33864}
!135 = !{!20, !13, i64 33840}
!136 = !{!20, !13, i64 33848}
!137 = !{!12, !12, i64 0}
!138 = !{!20, !13, i64 33856}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !18}
end_hunk_0
