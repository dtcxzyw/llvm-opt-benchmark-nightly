Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuGridBroadphase?download=true
inline.NumInlined: 333
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN13b3OpenCLArrayIiE6resizeEmb:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.c, label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58, !range !82, !noundef !83
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = shl i64 %1, 2
  %i.l = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = call ptr %i.l(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !6 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !76
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.20)
  br label %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %bb.f, label %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = shl i64 %i.q, 2
  %i.y = call i32 %i.s(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.o, i64 noundef 0, i64 noundef 0, i64 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !7 ; 0 uses
  br label %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i
  %.01017.i = phi i64 [ 0, %.thread.i ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !range !82
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit

bb.h:                                             ; preds = %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i
  %i.ae = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !84
  %i.af = call i32 %i.ae(ptr noundef nonnull %i.aa), !inline_history !8 ; 0 uses
  br label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %.not.i12.i = icmp ne ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !82
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i13.i = select i1 %.not.i12.i, i1 %i.ak, i1 false
  br i1 %or.cond.i13.i, label %bb.j, label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !84
  %i.am = tail call i32 %i.al(ptr noundef nonnull %i.ah), !inline_history !8 ; 0 uses
  br label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12

_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12:   ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.k

_ZN13b3OpenCLArrayIiE7reserveEmb.exit:            ; preds = %_ZNK13b3OpenCLArrayIiE8copyToCLEP7_cl_memmmm.exit.i, %bb.h
  store ptr %i.o, ptr %i.z, align 8, !tbaa !86
  store i64 %.01017.i, ptr %i.e, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not.i, label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread12, %_ZN13b3OpenCLArrayIiE7reserveEmb.exit
  br label %_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread

_ZN13b3OpenCLArrayIiE7reserveEmb.exit.thread:     ; preds = %_ZN13b3OpenCLArrayIiE7reserveEmb.exit, %bb.a, %bb.b, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %_ZN13b3OpenCLArrayIiE7reserveEmb.exit ]
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.b ], [ true, %bb.a ], [ true, %_ZN13b3OpenCLArrayIiE7reserveEmb.exit ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !101
  ret i1 %.010
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19b3GpuGridBroadphase29calculateOverlappingPairsHostEi(ptr noundef nonnull align 8 dereferenceable(592) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.23)
  store i32 0, ptr %i.a, align 4, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load i8, ptr %i.i, align 8, !tbaa !63, !range !82, !noundef !83
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.h)
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 1, ptr %i.l, align 8, !tbaa !63
  store ptr null, ptr %i.g, align 8, !tbaa !64
  store i32 0, ptr %i.d, align 8, !tbaa !66
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.n = sext i32 %i.b to i64                     ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !165

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.n, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.r = icmp ugt i32 %i.b, -4
  br i1 %i.r, label %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.v = getelementptr [16 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = getelementptr i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.y = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.z = getelementptr i8, ptr %i.y, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.ab = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 0
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit, label %.lr.ph.i.new, !llvm.loop !166

_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNK13b3OpenCLArrayI9b3SapAabbE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.ad, ptr noundef nonnull align 8 dereferenceable(25) %i.ae, i1 noundef zeroext true)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph28, label %._crit_edge

.lr.ph28:                                         ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.f

.loopexit:                                        ; preds = %bb.n
  %.pre35 = sext i32 %i.do to i64
  %i.am = icmp slt i64 %indvars.iv.next33, %.pre35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1
  br i1 %i.am, label %bb.f, label %._crit_edge, !llvm.loop !167

._crit_edge:                                      ; preds = %bb.f, %.loopexit, %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN13b3OpenCLArrayI6b3Int4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.ao, ptr noundef nonnull align 8 dereferenceable(25) %i.an, i1 noundef zeroext true)
  ret void

bb.f:                                             ; preds = %.lr.ph28, %.loopexit
  %i.ap = phi i32 [ %i.ag, %.lr.ph28 ], [ %i.do, %.loopexit ] ; 3 uses
  %indvars.iv32 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next33, %.loopexit ] ; 2 uses
  %indvars.iv.a = phi i64 [ 1, %.lr.ph28 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next33, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.n
  %i.as = phi i32 [ %i.do, %bb.n ], [ %i.ap, %bb.f ] ; 2 uses
  %i.at = phi i32 [ %i.dp, %bb.n ], [ %i.ap, %bb.f ] ; 2 uses
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %bb.n ], [ %indvars.iv.a, %bb.f ] ; 2 uses
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %indvars.iv32 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %indvars.iv29 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load float, ptr %i.av, align 4, !tbaa !78
  %i.ba = load float, ptr %i.ay, align 4, !tbaa !78
  %i.bb = fcmp ule float %i.az, %i.ba
  %i.bc = load float, ptr %i.aw, align 4
  %i.bd = load float, ptr %i.ax, align 4
  %i.be = fcmp uge float %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !78
  %i.bj = fcmp ule float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = fcmp uge float %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !78
  %i.bt = fcmp ule float %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = fcmp uge float %i.bv, %i.bx
  %i.bz = select i1 %i.bt, i1 %i.by, i1 false
  %i.ca = select i1 %i.bz, i1 %i.bj, i1 false
  %i.cb = select i1 %i.ca, i1 %i.bo, i1 false
  %i.cc = select i1 %i.cb, i1 %i.bb, i1 false
  %i.cd = select i1 %i.cc, i1 %i.be, i1 false
  br i1 %i.cd, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !95 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !95 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.ch)
  %spec.select25 = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.ch)
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !65  ; 7 uses
  %i.cj = icmp slt i32 %i.ci, %1
  br i1 %i.cj, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ck = load i32, ptr %i.aj, align 8, !tbaa !66
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.ci, 0
  %i.cm = shl nsw i32 %i.ci, 1
  %i.cn = select i1 %.not.i.i, i32 1, i32 %i.cm   ; 6 uses
  %i.co = icmp slt i32 %i.ci, %i.cn
  br i1 %i.co, label %bb.j, label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i: ; preds = %bb.j
  %i.cp = sext i32 %i.cn to i64
  %i.cq = shl nsw i64 %i.cp, 4
  %i.cr = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cq, i32 noundef 16) ; 7 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !65  ; 4 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ct to i64 ; 2 uses
  %xtraiter47 = and i64 %wide.trip.count.i.i.i, 1
  %i.cv = icmp eq i32 %i.ct, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cw, ptr noundef nonnull align 16 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !96
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i.i
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cz, ptr noundef nonnull align 16 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !96
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.k, !llvm.loop !168

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i, %bb.j
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.23)
  store i32 0, ptr %i.a, align 4, !tbaa !65
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i32 %i.ct to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i.epil.init
  %i.dd = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dc, ptr noundef nonnull align 16 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !96
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.cr, %.split.i.i ], [ %i.cr, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cr, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.cn, %.split.i.i ], [ %i.cn, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader ]
  %i.df = load ptr, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  %.not.i10.i.i22 = icmp eq ptr %i.df, null
  br i1 %.not.i10.i.i22, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23, label %bb.l

bb.l:                                             ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  %i.dg = load i8, ptr %i.al, align 8, !tbaa !63, !range !82, !noundef !83
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.m, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.df)
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23: ; preds = %bb.m, %bb.l, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.al, align 8, !tbaa !63
  store ptr %.0.i12.i.i, ptr %i.ak, align 8, !tbaa !64
  store i32 %.0.i.i, ptr %i.aj, align 8, !tbaa !66
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !65
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit: ; preds = %bb.h, %bb.i, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23
  %i.di = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23 ], [ %i.ci, %bb.i ], [ %i.ci, %bb.h ]
  %i.dj = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  store i32 %spec.select25, ptr %i.dl, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx, align 4
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !65
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !65
  %.pre = load i32, ptr %i.af, align 4, !tbaa !53 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit, %.lr.ph
  %i.do = phi i32 [ %i.as, %bb.g ], [ %.pre, %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit ], [ %i.as, %.lr.ph ] ; 3 uses
  %i.dp = phi i32 [ %i.at, %bb.g ], [ %.pre, %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit ], [ %i.at, %.lr.ph ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.dq = trunc nuw i64 %indvars.iv.next30 to i32
  %i.dr = icmp sgt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.loopexit, !llvm.loop !169
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI9b3SapAabbE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53   ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 27
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i
end_hunk_0
