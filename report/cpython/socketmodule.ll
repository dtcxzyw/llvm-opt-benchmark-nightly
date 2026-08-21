Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/socketmodule?download=true
inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@sock_recvmsg_into:bb.a
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ac = getelementptr [16 x i8], ptr %i.n, i64 %.04263 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !161
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !163
  %i.ag = add nuw nsw i64 %.04263, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.l, %bb.e
  %.182 = phi ptr [ null, %bb.e ], [ %i.q, %bb.l ]
  %.04580 = phi ptr [ null, %bb.e ], [ %i.n, %bb.l ] ; 2 uses
  %.042.lcssa = phi i64 [ 0, %bb.e ], [ %i.i, %bb.l ]
  %i.ah = trunc i64 %i.i to i32
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !6
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !51
  %i.ak = call fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef %.04580, i32 noundef %i.ah, i32 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @makeval_recvmsg_into, ptr noundef null)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.146 = phi ptr [ %.04580, %._crit_edge ], [ %i.n, %bb.k ] ; 2 uses
  %.143 = phi i64 [ %.042.lcssa, %._crit_edge ], [ %.04263, %bb.k ] ; 2 uses
  %.2 = phi ptr [ %.182, %._crit_edge ], [ %i.q, %bb.k ] ; 3 uses
  %.0 = phi ptr [ %i.ak, %._crit_edge ], [ null, %bb.k ] ; 2 uses
  %.not68 = icmp eq i64 %.143, 0
  br i1 %.not68, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %.loopexit, %.lr.ph66
  %.04464 = phi i64 [ %i.am, %.lr.ph66 ], [ 0, %.loopexit ] ; 2 uses
  %i.al = getelementptr [80 x i8], ptr %.2, i64 %.04464
  call void @PyBuffer_Release(ptr noundef %i.al) #11
  %i.am = add nuw i64 %.04464, 1                  ; 2 uses
  %exitcond70.not = icmp eq i64 %i.am, %.143
  br i1 %exitcond70.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !168

._crit_edge67:                                    ; preds = %.lr.ph66, %bb.h, %bb.d, %.loopexit
  %.090 = phi ptr [ null, %bb.h ], [ %.0, %.loopexit ], [ null, %bb.d ], [ %.0, %.lr.ph66 ] ; 3 uses
  %.289 = phi ptr [ null, %bb.h ], [ %.2, %.loopexit ], [ null, %bb.d ], [ %.2, %.lr.ph66 ]
  %.14688 = phi ptr [ %i.n, %bb.h ], [ %.146, %.loopexit ], [ null, %bb.d ], [ %.146, %.lr.ph66 ]
  call void @PyMem_Free(ptr noundef %.289) #11
  call void @PyMem_Free(ptr noundef %.14688) #11
  %i.an = load i32, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %._crit_edge67
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !23
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.m, %._crit_edge67, %bb.b, %bb.a
  %.047 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.090, %._crit_edge67 ], [ %.090, %bb.m ], [ %.090, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.047
}

; Function Attrs: nounwind uwtable
define internal ptr @_socket_socket_sendmsg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %union.sock_addr, align 8           ; 4 uses
  %4 = alloca %struct.msghdr, align 8             ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.sock_sendmsg, align 8       ; 6 uses
  %i.d = add i64 %2, -1
  %or.cond = icmp ult i64 %i.d, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.562, i64 noundef %2, i64 noundef 1, i64 noundef 4) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !24
  %i.g = icmp slt i64 %2, 2
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = tail call i32 @PyLong_AsInt(ptr noundef %i.l) #11 ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_Occurred() #11
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %bb.g, label %bb.ak

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = icmp samesign ult i64 %2, 4
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.h
  %.018 = phi ptr [ null, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.g ], [ %i.i, %bb.h ] ; 2 uses
  %.017 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.g ], [ %i.r, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.s = icmp ne ptr %.0, null
  %i.t = icmp ne ptr %.0, @_Py_NoneStruct
  %or.cond.i = and i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.u = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef %3, ptr noundef %i.c, ptr noundef nonnull @.str.562)
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread144.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.641, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef nonnull %.0) #11
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_socket_socket_sendmsg_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %3, ptr %4, align 8, !tbaa !170
  %i.x = load i32, ptr %i.c, align 4, !tbaa !6
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !173
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.z = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.641, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #11
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_socket_socket_sendmsg_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = call fastcc i32 @sock_sendmsg_iovec(ptr noundef %i.f, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.thread144.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp eq ptr %.018, null
  br i1 %i.ad, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = call ptr @PySequence_Tuple(ptr noundef nonnull %.018) #11 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.642) #11
  br label %.thread144.thread.i

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %.val.i = load i64, ptr %i.ah, align 8, !tbaa !67 ; 5 uses
  %i.ai = icmp sgt i64 %.val.i, 0
  br i1 %i.ai, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.aj = icmp samesign ugt i64 %.val.i, 104811045873349725
  br i1 %i.aj, label %.thread140.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = mul nuw nsw i64 %.val.i, 88
  %i.al = call ptr @PyMem_Malloc(i64 noundef %i.ak) #11 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread140.i, label %.thread.i

.thread140.i:                                     ; preds = %bb.t, %bb.s
  %i.an = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %.thread144.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.r, %bb.o
  %.089139.i = phi ptr [ %i.ae, %bb.t ], [ %i.ae, %bb.r ], [ null, %bb.o ] ; 3 uses
  %.0102138.i = phi i64 [ %.val.i, %bb.t ], [ %.val.i, %bb.r ], [ 0, %bb.o ] ; 5 uses
  %.097.i = phi ptr [ %i.al, %bb.t ], [ null, %bb.r ], [ null, %bb.o ] ; 9 uses
  %i.ao = getelementptr i8, ptr %.089139.i, i64 32
  %smax.i = call i64 @llvm.smax.i64(i64 %.0102138.i, i64 0) ; 7 uses
  %exitcond.not.i72 = icmp slt i64 %.0102138.i, 1
  br i1 %exitcond.not.i72, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %get_CMSG_SPACE.exit.i
  %exitcond.not.i = icmp eq i64 %i.aw, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread.i, %bb.u
  %i.ap = phi i64 [ %i.be, %bb.u ], [ 0, %.thread.i ]
  %.099.i73 = phi i64 [ %i.aw, %bb.u ], [ 0, %.thread.i ] ; 4 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %.099.i73
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr [88 x i8], ptr %.097.i, i64 %.099.i73 ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.ar, ptr noundef nonnull @.str.643, ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.au) #11
  %.not121.i = icmp eq i32 %i.av, 0
  br i1 %.not121.i, label %.thread144.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.aw = add nuw i64 %.099.i73, 1                ; 4 uses
  %i.ax = getelementptr i8, ptr %i.as, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !174 ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 2147483623
  br i1 %i.az, label %6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = add nuw nsw i64 %i.ay, 7
  %i.bb = and i64 %i.ba, 4294967288
  %i.bc = add nuw nsw i64 %i.bb, 16               ; 2 uses
  %i.bd = icmp samesign ult i64 %i.bc, %i.ay
  br i1 %i.bd, label %6, label %get_CMSG_SPACE.exit.i

6:                                                ; preds = %bb.w, %bb.v
  %7 = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %7, ptr noundef nonnull @.str.644) #11
  br label %.thread144.i

get_CMSG_SPACE.exit.i:                            ; preds = %bb.w
  %i.be = add nuw nsw i64 %i.bc, %i.ap            ; 3 uses
  %i.bf = icmp samesign ugt i64 %i.be, 2147483647
  br i1 %i.bf, label %8, label %bb.u

8:                                                ; preds = %get_CMSG_SPACE.exit.i
  %9 = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %9, ptr noundef nonnull @.str.645) #11
  br label %.thread144.i

._crit_edge:                                      ; preds = %bb.u, %.thread.i
  %.lcssa = phi i64 [ 0, %.thread.i ], [ %i.be, %bb.u ] ; 9 uses
  %.not166.i = icmp slt i64 %.0102138.i, 1
  br i1 %.not166.i, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.bg = call ptr @PyMem_Malloc(i64 noundef %.lcssa) #11 ; 15 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bi = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %.thread144.i

bb.z:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !176
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.lcssa, ptr %i.bk, align 8, !tbaa !177
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bg, i8 0, i64 %.lcssa, i1 false)
  %i.bl = getelementptr i8, ptr %.097.i, i64 8
  %i.bm = getelementptr i8, ptr %.097.i, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !174 ; 3 uses
  %i.bo = icmp samesign ult i64 %.lcssa, 16
  br i1 %i.bo, label %__cmsg_nxthdr.exit.thread.i, label %__cmsg_nxthdr.exit.peel.i

__cmsg_nxthdr.exit.peel.i:                        ; preds = %bb.z
  %i.bp = icmp ugt i64 %i.bn, 2147483631
  br i1 %i.bp, label %.loopexit199.i, label %cmsg_min_space.exit.peel.i

cmsg_min_space.exit.peel.i:                       ; preds = %__cmsg_nxthdr.exit.peel.i
  %i.bq = add nuw nsw i64 %i.bn, 16               ; 3 uses
  %i.br = icmp samesign ugt i64 %i.bq, %.lcssa
  br i1 %i.br, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %cmsg_min_space.exit.peel.i
  store i64 %i.bq, ptr %i.bg, align 8, !tbaa !51
  %i.bs = getelementptr i8, ptr %i.bg, i64 16     ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = load i32, ptr %.097.i, align 8, !tbaa !178
  %i.bv = getelementptr i8, ptr %i.bg, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !6
  %i.bw = getelementptr i8, ptr %.097.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !179
  %i.by = getelementptr i8, ptr %i.bg, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !6
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !180
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr align 1 %i.bz, i64 %i.bn, i1 false)
  %exitcond197.peel.not.i = icmp eq i64 %.0102138.i, 1
  br i1 %exitcond197.peel.not.i, label %.loopexit.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.ab
  %i.ca = getelementptr i8, ptr %i.bg, i64 %.lcssa
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bg to i64               ; 2 uses
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.af
  %i.cd = phi i64 [ %i.cz, %bb.af ], [ %i.bq, %.peel.next.i.preheader ] ; 3 uses
  %.085180.i = phi ptr [ %i.cs, %bb.af ], [ %i.bg, %.peel.next.i.preheader ] ; 2 uses
  %.0103179.i = phi i64 [ %i.ds, %bb.af ], [ 1, %.peel.next.i.preheader ] ; 2 uses
  %i.ce = getelementptr [88 x i8], ptr %.097.i, i64 %.0103179.i ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !174 ; 5 uses
  %i.ci = sub nsw i64 0, %i.cd
  %i.cj = and i64 %i.ci, 7
  %i.ck = or disjoint i64 %i.cj, 16               ; 2 uses
  %i.cl = ptrtoint ptr %.085180.i to i64
  %i.cm = sub i64 %i.cb, %i.cl                    ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.ck
  %i.co = sub nuw i64 %i.cm, %i.ck
  %i.cp = icmp ult i64 %i.co, %i.cd
  %or.cond.i.i = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %__cmsg_nxthdr.exit.thread.i, label %__cmsg_nxthdr.exit.i

__cmsg_nxthdr.exit.i:                             ; preds = %.peel.next.i
  %i.cq = add nuw nsw i64 %i.cd, 7
  %i.cr = and i64 %i.cq, -8
  %i.cs = getelementptr i8, ptr %.085180.i, i64 %i.cr ; 7 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %__cmsg_nxthdr.exit.thread.i, label %bb.ac

__cmsg_nxthdr.exit.thread.i:                      ; preds = %__cmsg_nxthdr.exit.i, %.peel.next.i, %bb.z
  %i.cu = phi ptr [ @.str.647, %bb.z ], [ @.str.648, %.peel.next.i ], [ @.str.648, %__cmsg_nxthdr.exit.i ]
  %i.cv = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  %i.cw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cv, ptr noundef nonnull @.str.646, ptr noundef nonnull %i.cu) #11 ; 0 uses
  br label %.thread144.i

bb.ac:                                            ; preds = %__cmsg_nxthdr.exit.i
  %i.cx = icmp ugt i64 %i.ch, 2147483631
  br i1 %i.cx, label %.loopexit199.i, label %cmsg_min_space.exit.i

.loopexit199.i:                                   ; preds = %bb.ac, %__cmsg_nxthdr.exit.peel.i
  %i.cy = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.cy, ptr noundef nonnull @.str.649) #11
  br label %.thread144.i

cmsg_min_space.exit.i:                            ; preds = %bb.ac
  %i.cz = add nuw nsw i64 %i.ch, 16               ; 3 uses
  %i.da = ptrtoint ptr %i.cs to i64
  %i.db = sub i64 %i.da, %i.cc                    ; 2 uses
  %i.dc = sub nuw nsw i64 -17, %i.ch
  %.not.i.i = icmp ugt i64 %i.db, %i.dc
  %i.dd = add i64 %i.db, %i.cz
  %i.de = icmp ugt i64 %i.dd, %.lcssa
  %narrow.i.not.i = select i1 %.not.i.i, i1 true, i1 %i.de
  br i1 %narrow.i.not.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %cmsg_min_space.exit.i
  store i64 %i.cz, ptr %i.cs, align 8, !tbaa !51
  %i.df = getelementptr i8, ptr %i.cs, i64 16     ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.cc                    ; 2 uses
  %i.dj = icmp ugt i64 %i.di, %.lcssa
  %i.dk = sub nuw i64 %.lcssa, %i.di
  %.not120.i = icmp ult i64 %i.dk, %i.ch
  %or.cond168.i = select i1 %i.dj, i1 true, i1 %.not120.i
  br i1 %or.cond168.i, label %.critedge.i, label %bb.af

.critedge.i:                                      ; preds = %bb.ae, %bb.ad, %cmsg_min_space.exit.i, %bb.aa, %cmsg_min_space.exit.peel.i
  %i.dl = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.dl, ptr noundef nonnull @.str.650) #11
  br label %.thread144.i

bb.af:                                            ; preds = %bb.ae
  %i.dm = load i32, ptr %i.ce, align 8, !tbaa !178
  %i.dn = getelementptr i8, ptr %i.cs, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !6
  %i.do = getelementptr i8, ptr %i.ce, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !179
  %i.dq = getelementptr i8, ptr %i.cs, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !6
  %i.dr = load ptr, ptr %i.cf, align 8, !tbaa !180
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 1 %i.dr, i64 %i.ch, i1 false)
  %i.ds = add nuw nsw i64 %.0103179.i, 1          ; 2 uses
  %exitcond197.not.i = icmp eq i64 %.0102138.i, %i.ds
  br i1 %exitcond197.not.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !181

.loopexit.i:                                      ; preds = %bb.af, %bb.ab, %._crit_edge
  %.095.i = phi ptr [ null, %._crit_edge ], [ %i.bg, %bb.ab ], [ %i.bg, %bb.af ] ; 2 uses
  store ptr %4, ptr %5, align 8, !tbaa !182
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.017, ptr %i.dt, align 8, !tbaa !185
  %i.du = getelementptr i8, ptr %0, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !93
  %i.dw = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @sock_sendmsg_impl, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, i64 noundef %i.dv)
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %.thread144.i, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !186
  %i.ea = call ptr @PyLong_FromSsize_t(i64 noundef %i.dz) #11
  br label %.thread144.i

.thread144.thread.i:                              ; preds = %.thread140.i, %bb.q, %bb.n, %bb.j
  %.190.ph.i = phi ptr [ null, %bb.q ], [ null, %bb.j ], [ %i.ae, %.thread140.i ], [ null, %bb.n ]
  call void @PyMem_Free(ptr noundef null) #11
  br label %._crit_edge.i

.thread144.i:                                     ; preds = %.lr.ph, %bb.ag, %.loopexit.i, %.critedge.i, %.loopexit199.i, %__cmsg_nxthdr.exit.thread.i, %bb.y, %8, %6
  %.2101.i = phi i64 [ %smax.i, %bb.y ], [ %smax.i, %__cmsg_nxthdr.exit.thread.i ], [ %smax.i, %.critedge.i ], [ %smax.i, %.loopexit.i ], [ %smax.i, %bb.ag ], [ %i.aw, %8 ], [ %smax.i, %.loopexit199.i ], [ %i.aw, %6 ], [ %.099.i73, %.lr.ph ] ; 2 uses
  %.196.i = phi ptr [ null, %bb.y ], [ %i.bg, %__cmsg_nxthdr.exit.thread.i ], [ %i.bg, %.critedge.i ], [ %.095.i, %.loopexit.i ], [ %.095.i, %bb.ag ], [ null, %8 ], [ %i.bg, %.loopexit199.i ], [ null, %6 ], [ null, %.lr.ph ]
  %.088.i = phi ptr [ null, %bb.y ], [ null, %__cmsg_nxthdr.exit.thread.i ], [ null, %.critedge.i ], [ null, %.loopexit.i ], [ %i.ea, %bb.ag ], [ null, %8 ], [ null, %.loopexit199.i ], [ null, %6 ], [ null, %.lr.ph ] ; 2 uses
  call void @PyMem_Free(ptr noundef %.196.i) #11
  %10 = icmp sgt i64 %.2101.i, 0
  br i1 %10, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread144.i, %.lr.ph.i
  %.1104181.i = phi i64 [ %i.ed, %.lr.ph.i ], [ 0, %.thread144.i ] ; 2 uses
  %i.eb = getelementptr [88 x i8], ptr %.097.i, i64 %.1104181.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  call void @PyBuffer_Release(ptr noundef %i.ec) #11
  %i.ed = add nuw nsw i64 %.1104181.i, 1          ; 2 uses
  %exitcond200.not.i = icmp eq i64 %i.ed, %.2101.i
  br i1 %exitcond200.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !187

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread144.i, %.thread144.thread.i
  %.088231.i = phi ptr [ null, %.thread144.thread.i ], [ %.088.i, %.thread144.i ], [ %.088.i, %.lr.ph.i ]
  %.190230.i = phi ptr [ %.190.ph.i, %.thread144.thread.i ], [ %.089139.i, %.thread144.i ], [ %.089139.i, %.lr.ph.i ] ; 4 uses
  %.198229.i = phi ptr [ null, %.thread144.thread.i ], [ %.097.i, %.thread144.i ], [ %.097.i, %.lr.ph.i ]
  call void @PyMem_Free(ptr noundef %.198229.i) #11
  %.not.i129.i = icmp eq ptr %.190230.i, null
  br i1 %.not.i129.i, label %Py_XDECREF.exit.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.ee = load i32, ptr %.190230.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ee, -1
  br i1 %.not.i.i.i, label %bb.ai, label %Py_XDECREF.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %.190230.i, align 8, !tbaa !23
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.aj, label %Py_XDECREF.exit.i

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %.190230.i) #11
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.aj, %bb.ai, %bb.ah, %._crit_edge.i
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !188
  call void @PyMem_Free(ptr noundef %i.ei) #11
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !169 ; 2 uses
  br i1 %i.ek, label %.lr.ph183.i, label %._crit_edge184.i

.lr.ph183.i:                                      ; preds = %Py_XDECREF.exit.i, %.lr.ph183.i
  %.2105182.i = phi i64 [ %i.em, %.lr.ph183.i ], [ 0, %Py_XDECREF.exit.i ] ; 2 uses
  %i.el = getelementptr [80 x i8], ptr %.pre.i, i64 %.2105182.i
  call void @PyBuffer_Release(ptr noundef %i.el) #11
  %i.em = add nuw nsw i64 %.2105182.i, 1          ; 2 uses
  %exitcond201.not.i = icmp eq i64 %i.em, %i.ej
  br i1 %exitcond201.not.i, label %._crit_edge184.i, label %.lr.ph183.i, !llvm.loop !189

._crit_edge184.i:                                 ; preds = %.lr.ph183.i, %Py_XDECREF.exit.i
  call void @PyMem_Free(ptr noundef %.pre.i) #11
  br label %_socket_socket_sendmsg_impl.exit

_socket_socket_sendmsg_impl.exit:                 ; preds = %bb.k, %bb.m, %._crit_edge184.i
  %.0106.i = phi ptr [ null, %bb.k ], [ %.088231.i, %._crit_edge184.i ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.f, %bb.b, %_socket_socket_sendmsg_impl.exit
  %.019 = phi ptr [ %.0106.i, %_socket_socket_sendmsg_impl.exit ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.019
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_sendmsg_afalg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.msghdr, align 8             ; 8 uses
  %5 = alloca %struct.sock_sendmsg, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 0, ptr %i.f, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.g = getelementptr i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87
  %.not = icmp eq i32 %i.h, 38
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.657) #11
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.658, ptr noundef nonnull @sock_sendmsg_afalg.keywords, ptr noundef nonnull %i.c, ptr noundef nonnull @PyLong_Type, ptr noundef nonnull %i.d, ptr noundef nonnull %3, ptr noundef nonnull @PyLong_Type, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %.not63 = icmp eq i32 %i.j, 0
  br i1 %.not63, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %.not64 = icmp eq ptr %i.k, null
  br i1 %.not64, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @PyLong_AsInt(ptr noundef nonnull %i.k) #11 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.e
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.659) #11
  br label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not65 = icmp eq ptr %i.o, null
  br i1 %.not65, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyLong_AsInt(ptr noundef nonnull %i.o) #11 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @PyErr_Occurred() #11
  %.not66 = icmp eq ptr %i.r, null
  br i1 %.not66, label %.thread75, label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.s = icmp slt i32 %i.p, 0
  br i1 %i.s, label %.thread75, label %bb.j

.thread75:                                        ; preds = %bb.h, %bb.i
  %i.t = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.660) #11
  br label %bb.w

bb.j:                                             ; preds = %bb.i, %bb.f
  %.049 = phi i32 [ %i.p, %bb.i ], [ -1, %bb.f ]  ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !32
  %.not67 = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 11
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 40
  %.047 = select i1 %.not67, i64 24, i64 %i.z     ; 2 uses
  %i.aa = icmp sgt i32 %.049, -1                  ; 3 uses
  %i.ab = add i64 %.047, 24
  %.1 = select i1 %i.aa, i64 %i.ab, i64 %.047     ; 4 uses
  %i.ac = call ptr @PyMem_Malloc(i64 noundef %.1) #11 ; 10 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 0, i64 %.1, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %.1, ptr %i.af, align 8, !tbaa !177
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !176
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.not68 = icmp eq ptr %i.ah, null
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call fastcc i32 @sock_sendmsg_iovec(ptr noundef nonnull %i.ah, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a)
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.w, label %._crit_edge79

._crit_edge79:                                    ; preds = %bb.m
  %.pre = load i64, ptr %i.af, align 8, !tbaa !177
  %.pre80 = load ptr, ptr %i.ag, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge79, %bb.l
  %i.ak = phi ptr [ %.pre80, %._crit_edge79 ], [ %i.ac, %bb.l ] ; 12 uses
  %i.al = phi i64 [ %.pre, %._crit_edge79 ], [ %.1, %bb.l ] ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  %i.an = icmp eq ptr %i.ak, null
  %i.ao = select i1 %i.am, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.661) #11
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %i.ak, i64 8
  store i32 279, ptr %i.aq, align 8, !tbaa !6
  %i.ar = getelementptr i8, ptr %i.ak, i64 12
  store i32 3, ptr %i.ar, align 4, !tbaa !6
  store i64 20, ptr %i.ak, align 8, !tbaa !51
end_hunk_0
