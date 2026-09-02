Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3Solver?download=true
inline.NumInlined: 615
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK13b3OpenCLArrayIjE10copyToHostER20b3AlignedObjectArrayIjEb:bb.a
.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.n = load i32, ptr %i.d, align 4, !tbaa !112  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !21
  %wide.load10 = load <4 x i32>, ptr %i.v, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !21
  store <4 x i32> %wide.load10, ptr %i.w, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !224

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !21
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !21
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !21
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !21
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !21
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i, label %scalar.ph, !llvm.loop !225

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.41)
  store i32 0, ptr %i.d, align 4, !tbaa !112
  br label %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i

_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ], [ %i.k, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %middle.block ], [ %i.c, %scalar.ph ], [ %i.c, %scalar.ph.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !111 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !110, !range !69, !noundef !77
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aq)
  br label %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK20b3AlignedObjectArrayIjE4copyEiiPj.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !110
  store ptr %.0.i12.i.i, ptr %i.ap, align 8, !tbaa !111
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !113
  %.pr.pre = load i64, ptr %i.a, align 8, !tbaa !74
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i
  %.pr = phi i64 [ %i.b, %..lr.ph.i_crit_edge ], [ %.pr.pre, %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i ]
  %i.av = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i, %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i ]
  %i.aw = sext i32 %i.e to i64
  %sext3 = shl i64 %i.b, 32
  %i.ax = shl nsw i64 %i.aw, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.ay = ashr exact i64 %sext3, 30
  %i.az = sub nsw i64 %i.ay, %i.ax
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.az, i1 false), !tbaa !21
  br label %_ZN20b3AlignedObjectArrayIjE6resizeEiRKj.exit

_ZN20b3AlignedObjectArrayIjE6resizeEiRKj.exit:    ; preds = %.lr.ph.i, %bb.a
  %i.ba = phi i64 [ %.pr, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !112
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayIjE17copyToHostPointerEPjmmb.exit, label %bb.f

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayIjE6resizeEiRKj.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !76
  %.not.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !111
  %i.bf = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !75
  %i.bk = shl i64 %i.ba, 2
  %i.bl = tail call i32 %i.bf(ptr noundef %i.bh, ptr noundef %i.bj, i32 noundef 0, i64 noundef 0, i64 noundef %i.bk, ptr noundef nonnull %i.be, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !226 ; 0 uses
  br i1 %2, label %bb.h, label %_ZNK13b3OpenCLArrayIjE17copyToHostPointerEPjmmb.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr @__clewFinish, align 8, !tbaa !67
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bo = tail call i32 %i.bm(ptr noundef %i.bn), !inline_history !226 ; 0 uses
  br label %_ZNK13b3OpenCLArrayIjE17copyToHostPointerEPjmmb.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.42)
  br label %_ZNK13b3OpenCLArrayIjE17copyToHostPointerEPjmmb.exit

_ZNK13b3OpenCLArrayIjE17copyToHostPointerEPjmmb.exit: ; preds = %bb.i, %bb.h, %bb.g, %_ZN20b3AlignedObjectArrayIjE6resizeEiRKj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !69
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9SolveTask3runEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %.sroa.0 = alloca <4 x float>, align 16         ; 6 uses
  %.sroa.6 = alloca <4 x float>, align 16         ; 6 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.4..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.8..sroa_idx123 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.05678 = phi i32 [ 0, %bb.a ], [ %i.ti, %._crit_edge ] ; 2 uses
  %.05777 = phi i32 [ 0, %bb.a ], [ %i.th, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.i = load i32, ptr %i.c, align 8, !tbaa !126
  %i.j = shl nsw i32 %i.i, 7
  %i.k = add nuw nsw i32 %i.j, %.05678
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 4 uses
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %.critedge, label %.preheader70

.preheader70:                                     ; preds = %bb.b
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader70, %_ZL13solveFrictionR16b3GpuConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit
  %.05476 = phi i32 [ %i.tg, %_ZL13solveFrictionR16b3GpuConstraint4RK9b3Vector3RS1_S4_fRK11b3Matrix3x3S3_S4_S4_fS7_PfS8_.exit ], [ 0, %.preheader70 ] ; 2 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !127
  %i.s = add i32 %.05476, %.05777
  %i.t = add i32 %i.s, %i.r
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !231, !nonnull !77, !align !232
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [176 x i8], ptr %i.w, i64 %i.x ; 18 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !143
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !144
  %i.ad = load ptr, ptr %0, align 8, !tbaa !233, !nonnull !77, !align !232
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 2 uses
  %i.ag = sext i32 %i.aa to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [80 x i8], ptr %i.af, i64 %i.ag ; 13 uses
  %i.ai = sext i32 %i.ac to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [80 x i8], ptr %i.af, i64 %i.ai ; 16 uses
  %i.ak = load i8, ptr %i.f, align 8, !tbaa !128, !range !69, !noundef !77
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.preheader, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !148 ; 2 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !234, !nonnull !77, !align !232
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91 ; 2 uses
  %i.at = getelementptr inbounds [96 x i8], ptr %i.as, i64 %i.ag ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !148 ; 2 uses
  %i.ay = getelementptr inbounds [96 x i8], ptr %i.as, i64 %i.ai ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bt = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.f ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !24 ; 2 uses
  %i.bz = fcmp oeq float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load <4 x float>, ptr %i.y, align 16    ; 6 uses
  %i.cd = extractelement <4 x float> %i.cc, i64 2 ; 2 uses
  %i.ce = load float, ptr %i.bb, align 8, !tbaa !20
  %i.cf = load float, ptr %i.bc, align 8, !tbaa !20
  %i.cg = load float, ptr %i.bd, align 8, !tbaa !20
  %i.ch = load float, ptr %i.be, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !24
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !24 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !24 ; 2 uses
  %i.co = fmul float %i.ap, %i.cd
  %i.cp = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.cq = fneg <2 x float> %i.cp                  ; 4 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cs = fmul <2 x float> %i.bu, %i.cq
  %i.ct = load <3 x float>, ptr %i.ca, align 16, !tbaa !20 ; 2 uses
  %i.cu = load float, ptr %i.cb, align 4, !tbaa !20
  %i.cv = load <3 x float>, ptr %i.aj, align 16, !tbaa !20
  %i.cw = fsub <3 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = shufflevector <3 x float> %i.cw, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.cy = shufflevector <2 x float> %i.cq, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.cz = shufflevector <4 x float> %i.cc, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2> ; 2 uses
  %i.da = fmul <2 x float> %i.bw, %i.cp
  %i.db = load <3 x float>, ptr %i.ah, align 16, !tbaa !20
  %i.dc = insertelement <3 x float> %i.ct, float %i.cu, i64 1
  %i.dd = fsub <3 x float> %i.dc, %i.db           ; 2 uses
  %i.de = shufflevector <3 x float> %i.dd, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.df = fneg float %i.cd                        ; 3 uses
  %i.dg = insertelement <3 x float> %i.cy, float %i.df, i64 0 ; 2 uses
  %i.dh = fmul <3 x float> %i.dd, %i.dg
  %i.di = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.de, <3 x float> %i.cz, <3 x float> %i.dh) ; 8 uses
  %i.dj = extractelement <3 x float> %i.di, i64 0
  %i.dk = fmul <3 x float> %i.cw, %i.dg
  %i.dl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cx, <3 x float> %i.cz, <3 x float> %i.dk)
  %i.dm = fneg <3 x float> %i.dl                  ; 9 uses
  %i.dn = shufflevector <3 x float> %i.dm, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.do = shufflevector <3 x float> %i.dm, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.dp = shufflevector <3 x float> %i.dm, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dq = extractelement <3 x float> %i.dm, i64 0
  %i.dr = fmul float %i.ax, %i.df
  %i.ds = extractelement <3 x float> %i.di, i64 2
  %i.dt = extractelement <3 x float> %i.di, i64 1
  %i.du = extractelement <3 x float> %i.dm, i64 2
  %i.dv = extractelement <3 x float> %i.dm, i64 1
  %i.dw = load <2 x float>, ptr %i.am, align 16, !tbaa !20 ; 2 uses
  %i.dx = load <2 x float>, ptr %i.an, align 16, !tbaa !20 ; 2 uses
  %i.dy = load <2 x float>, ptr %i.au, align 16, !tbaa !20
  %i.dz = load <2 x float>, ptr %i.av, align 16, !tbaa !20
  %i.ea = shufflevector <3 x float> %i.di, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %i.eb = shufflevector <3 x float> %i.di, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.cc, <4 x float> %i.eb, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.ed = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.eg = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ei = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ej = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.el = fmul <4 x float> %i.ef, %i.ek
  %i.em = shufflevector <4 x float> %i.cc, <4 x float> %i.ea, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ep = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.er, <4 x float> %i.el)
  %i.et = shufflevector <4 x float> %i.cc, <4 x float> %i.eb, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.eu = insertelement <4 x float> %i.et, float %i.df, i64 2
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ew = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.cf, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.cg, i64 2
  %i.ez = insertelement <4 x float> %i.ey, float %i.ch, i64 3
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.ez, <4 x float> %i.es) ; 4 uses
  %shift = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.fa, %shift
  %shift102 = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop103 = fadd <4 x float> %foldExtExtBinop, %shift102
  %shift105 = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop106 = fadd <4 x float> %foldExtExtBinop103, %shift105
  %i.fb = extractelement <4 x float> %foldExtExtBinop106, i64 0
  %i.fc = fadd float %i.cj, %i.fb
  %i.fd = fmul float %i.by, %i.fc
  %i.fe = fadd float %i.cl, %i.fd                 ; 2 uses
  %i.ff = fcmp ogt float %i.fe, %i.cn
  %.sroa.speculated110.i = select i1 %i.ff, float %i.fe, float %i.cn ; 2 uses
  %i.fg = fcmp olt float %.sroa.speculated110.i, f0x7F7FFFFF
  %.sroa.speculated.i = select i1 %i.fg, float %.sroa.speculated110.i, float f0x7F7FFFFF ; 2 uses
end_hunk_0
