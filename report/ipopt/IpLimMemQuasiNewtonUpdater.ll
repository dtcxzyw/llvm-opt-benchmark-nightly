Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLimMemQuasiNewtonUpdater?download=true
inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5Ipopt24LimMemQuasiNewtonUpdater16ShiftDenseVectorERNS_8SmartPtrINS_11DenseVectorEEEd:bb.a
  %wide.trip.count = zext i32 %i.az to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 11
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bb = sub i64 %i.ay, %i.af
  %i.bc = add i64 %i.bb, -9
  %diff.check = icmp ult i64 %i.bc, 31
  br i1 %diff.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !147
  %wide.load39 = load <2 x double>, ptr %i.bf, align 8, !tbaa !147
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x double> %wide.load, ptr %i.bg, align 8, !tbaa !147
  store <2 x double> %wide.load39, ptr %i.bh, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader40, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader40 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader40 ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !147
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.prol
  store double %i.bk, ptr %i.bl, align 8, !tbaa !147
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !515

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader40
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader40 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN5Ipopt11DenseVector6ValuesEv.exit27
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bo
  store double %2, ptr %i.bp, align 8, !tbaa !147
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !42
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.j, align 8, !tbaa !42
  %i.bs = load ptr, ptr %1, align 8, !tbaa !93    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !42
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !42
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(248) %i.bs) #20, !inline_history !25
  br label %bb.m

bb.k:                                             ; preds = %bb.e, %.noexc, %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.h, %.noexc24, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !147
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  store double %i.cd, ptr %i.ce, align 8, !tbaa !147
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !147
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next
  store double %i.cg, ptr %i.ch, align 8, !tbaa !147
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.2
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !147
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.1
  store double %i.cj, ptr %i.ck, align 8, !tbaa !147
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.3
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !147
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.2
  store double %i.cm, ptr %i.cn, align 8, !tbaa !147
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !516

bb.m:                                             ; preds = %._crit_edge, %bb.i, %bb.j
  store ptr %i.h, ptr %1, align 8, !tbaa !93
  %i.co = load i32, ptr %i.j, align 8, !tbaa !42
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.j, align 8, !tbaa !42
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.n, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(248) %i.h) #20, !inline_history !20
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit:   ; preds = %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %bb.k, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.l ], [ %i.ca, %bb.k ] ; 2 uses
  %i.cu = load i32, ptr %i.j, align 8, !tbaa !42
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.j, align 8, !tbaa !42
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(248) %i.h) #20, !inline_history !20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater12ShiftLMatrixERNS_8SmartPtrINS_14DenseGenMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !159  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154, !noalias !529
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !529 ; 11 uses
  invoke void @_ZN5Ipopt14DenseGenMatrixC1EPKNS_19DenseGenMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %_ZNK5Ipopt14DenseGenMatrix21MakeNewDenseGenMatrixEv.exit unwind label %bb.b, !noalias !529

common.resume:                                    ; preds = %bb.v, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70 ], [ %.pn.pn.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21, !noalias !529
  br label %common.resume

_ZNK5Ipopt14DenseGenMatrix21MakeNewDenseGenMatrixEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42, !noalias !529
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !42, !noalias !529
  %i.n = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i8 1, ptr %i.o, align 8, !tbaa !190
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK5Ipopt14DenseGenMatrix21MakeNewDenseGenMatrixEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !191  ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i8 1, ptr %i.s, align 8, !tbaa !190
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit52 unwind label %bb.e

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit52:        ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 4 uses
  %i.v = add i32 %i.f, -1                         ; 3 uses
  %i.w = icmp sgt i32 %i.f, 1
  br i1 %i.w, label %.preheader95.preheader, label %.preheader

.preheader95.preheader:                           ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit52
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count119 = zext i32 %i.v to i64      ; 6 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add i64 %i.z, %i.r
  %min.iters.check = icmp ult i32 %i.f, 5
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = add i64 %i.ab, -9
  %diff.check = icmp ult i64 %i.ac, 31
  %n.vec = and i64 %wide.trip.count119, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count119
  %xtraiter = and i64 %wide.trip.count119, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader95

.preheader95:                                     ; preds = %.preheader95.preheader, %._crit_edge
  %indvars.iv116 = phi i64 [ 0, %.preheader95.preheader ], [ %indvars.iv.next117, %._crit_edge ] ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 3 uses
  %i.ad = mul nuw nsw i64 %indvars.iv.next117, %i.y
  %i.ae = mul nuw nsw i64 %indvars.iv116, %i.y
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad ; 6 uses
  %invariant.gep140 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ae ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader95, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader95 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !147
  %wide.load153 = load <2 x double>, ptr %i.ah, align 8, !tbaa !147
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !147
  store <2 x double> %wide.load153, ptr %i.aj, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader95, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader95 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.prol
  %i.al = load double, ptr %gep.prol, align 8, !tbaa !147
  %gep141.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.prol
  store double %i.al, ptr %gep141.prol, align 8, !tbaa !147
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !521

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count119
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge, label %scalar.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ap = zext nneg i32 %i.v to i64               ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.at = zext nneg i32 %i.f to i64
  %invariant.gep144.sink = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ap
  br label %bb.f

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseGenMatrix21MakeNewDenseGenMatrixEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.e:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %.lr.ph, label %.preheader95, !llvm.loop !522

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.aw = load double, ptr %gep, align 8, !tbaa !147
  %gep141 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140, i64 %indvars.iv
  store double %i.aw, ptr %gep141, align 8, !tbaa !147
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ax = load double, ptr %gep.1, align 8, !tbaa !147
  %gep141.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next
  store double %i.ax, ptr %gep141.1, align 8, !tbaa !147
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ay = load double, ptr %gep.2, align 8, !tbaa !147
  %gep141.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.1
  store double %i.ay, ptr %gep141.2, align 8, !tbaa !147
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.az = load double, ptr %gep.3, align 8, !tbaa !147
  %gep141.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140, i64 %indvars.iv.next.2
  store double %i.az, ptr %gep141.3, align 8, !tbaa !147
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count119
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !523

.preheader:                                       ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit52
  %i.ba = icmp sgt i32 %i.f, 0
  br i1 %i.ba, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %.preheader
  %i.bb = mul nuw nsw i32 %i.v, %i.f
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.bd
  %i.be = zext nneg i32 %i.f to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bf, i1 false), !tbaa !147
  br label %._crit_edge106

bb.f:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %indvars.iv121 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next122, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ] ; 4 uses
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !130, !noalias !530
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ap
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !131, !noalias !530 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.f
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !134, !noalias !530
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ap
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !78, !noalias !530 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.f
  %.0.i3.i = phi ptr [ %i.bl, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bi, %bb.f ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !42, !noalias !530
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !42, !noalias !530
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !130, !noalias !531
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv121
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !131, !noalias !531 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.br, null
  br i1 %.not.i.i53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i57, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i54

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i57: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !134, !noalias !531
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv121
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !78, !noalias !531 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i58, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit59, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i54

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i54: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i57, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i55 = phi ptr [ %i.bu, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i57 ], [ %i.br, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i3.i55, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !42, !noalias !531
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !42, !noalias !531
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit59

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit59: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i54, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i57
  %.0.i4.i56 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i57 ], [ %.0.i3.i55, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i54 ] ; 10 uses
  %i.by = icmp eq ptr %.0.i4.i, %.0.i4.i56
  br i1 %i.by, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit59
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !144
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !122
  %.not.i.i60 = icmp eq i32 %i.ca, %i.cc
  br i1 %.not.i.i60, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef double %i.cf(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.n, !inline_history !160 ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.cg, ptr %i.ch, align 8, !tbaa !145
  %i.ci = load i32, ptr %i.cb, align 8, !tbaa !122
  store i32 %i.ci, ptr %i.bz, align 8, !tbaa !144
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.i:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.ck = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56)
          to label %.noexc61 unwind label %.thread

.noexc61:                                         ; preds = %bb.i
  br i1 %i.ck, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %.noexc61
  %i.cl = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef double %i.cn(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56)
          to label %.noexc62 unwind label %.thread, !inline_history !160

.noexc62:                                         ; preds = %bb.j
  store double %i.co, ptr %i.a, align 8, !tbaa !147
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc61, %.noexc62
  %i.cp = load double, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc
  %i.cq = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cg, %.noexc ] ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.cr, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.cp, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.cs = mul nuw nsw i64 %indvars.iv121, %i.at
  %gep145 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep144.sink, i64 %i.cs
  store double %.sink, ptr %gep145, align 8, !tbaa !147
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i4.i56, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !42
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !42
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %.0.i4.i56, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.l, %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !42
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !42
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.de = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.m
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %i.ap
  br i1 %exitcond125.not, label %.preheader, label %bb.f, !llvm.loop !528

.thread:                                          ; preds = %.noexc62, %bb.j, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %lpad.phi88 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i4.i56, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !42
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !42
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %.0.i4.i56, align 8, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i56) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread: ; preds = %bb.o, %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !42
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !42
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.q, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.q:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %i.ds = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

._crit_edge106:                                   ; preds = %.lr.ph105, %.preheader
  %i.dv = load i32, ptr %i.k, align 8, !tbaa !42
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.k, align 8, !tbaa !42
  %i.dx = load ptr, ptr %1, align 8, !tbaa !94    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge106
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !42
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !42
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(104) %i.dx) #20, !inline_history !26
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge106, %bb.r, %bb.s
  store ptr %i.i, ptr %1, align 8, !tbaa !94
  %i.ef = load i32, ptr %i.k, align 8, !tbaa !42
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.k, align 8, !tbaa !42
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(104) %i.i) #20, !inline_history !17
  br label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit: ; preds = %bb.t, %bb.u
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70:      ; preds = %bb.d, %bb.e, %bb.q, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.d ], [ %i.av, %bb.e ], [ %lpad.phi88, %bb.q ], [ %lpad.phi88, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread ] ; 2 uses
  %i.el = load i32, ptr %i.k, align 8, !tbaa !42
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.k, align 8, !tbaa !42
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70
  %i.eo = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(104) %i.i) #20, !inline_history !17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater16ShiftSdotSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186, !noalias !542
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !542 ; 11 uses
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit unwind label %bb.b, !noalias !542

common.resume:                                    ; preds = %bb.v, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64 ], [ %.pn.pn.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21, !noalias !542
  br label %common.resume

_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42, !noalias !542
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !42, !noalias !542
  %i.n = load ptr, ptr %1, align 8, !tbaa !96     ; 3 uses
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i8 1, ptr %i.o, align 8, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209  ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.i)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45 unwind label %bb.e

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45:        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i8 1, ptr %i.s, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209  ; 3 uses
  %i.v = add i32 %i.f, -1                         ; 3 uses
  %i.w = icmp sgt i32 %i.f, 1
  br i1 %i.w, label %.preheader87.preheader, label %.preheader

.preheader87.preheader:                           ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = zext nneg i32 %i.v to i64
  %i.z = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64         ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = sub i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, -9
  %diff.check = icmp ult i64 %i.ad, 31
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ae = mul nuw nsw i64 %indvars.iv.next, %i.z
  %i.af = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae ; 2 uses
  %invariant.gep124 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af ; 2 uses
  %i.ag = tail call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 %wide.trip.count)
  %i.ah = sub nsw i64 %i.ag, %indvars.iv          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ai = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !147
  %wide.load137 = load <2 x double>, ptr %i.am, align 8, !tbaa !147
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %wide.load, ptr %i.an, align 8, !tbaa !147
  store <2 x double> %wide.load137, ptr %i.ao, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.ai, %middle.block ], [ %indvars.iv, %.preheader87 ]
  br label %scalar.ph

.preheader:                                       ; preds = %.loopexit, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.aq = icmp sgt i32 %i.f, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = zext nneg i32 %i.v to i64               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.f to i64 ; 2 uses
  %invariant.gep128.sink = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.as
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.e:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader87, !llvm.loop !535

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next105
  %i.aw = load double, ptr %gep, align 8, !tbaa !147
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %indvars.iv104
  store double %i.aw, ptr %gep125, align 8, !tbaa !147
  %i.ax = icmp samesign ult i64 %indvars.iv.next105, %i.y
  br i1 %i.ax, label %scalar.ph, label %.loopexit, !llvm.loop !536

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60, %.preheader
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !42
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.k, align 8, !tbaa !42
  %i.ba = load ptr, ptr %1, align 8, !tbaa !96    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !42
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(97) %i.ba) #20, !inline_history !27
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %indvars.iv108 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next109, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60 ] ; 4 uses
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !130, !noalias !543 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.as
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !131, !noalias !543 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.h
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !134, !noalias !543
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.as
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78, !noalias !543 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i46, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.h
  %.0.i3.i = phi ptr [ %i.bn, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !42, !noalias !543
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !42, !noalias !543
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv108
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !131, !noalias !544 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i47, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bt = load ptr, ptr %i.at, align 8, !tbaa !134, !noalias !544
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv108
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !78, !noalias !544 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i49 = phi ptr [ %i.bv, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %i.bs, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i3.i49, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !42, !noalias !544
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !42, !noalias !544
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51
  %.0.i4.i50 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %.0.i3.i49, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48 ] ; 10 uses
  %i.bz = icmp eq ptr %.0.i4.i, %.0.i4.i50
  br i1 %i.bz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !144
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !122
  %.not.i.i54 = icmp eq i32 %i.cb, %i.cd
  br i1 %.not.i.i54, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef double %i.cg(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.p, !inline_history !160 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.ch, ptr %i.ci, align 8, !tbaa !145
  %i.cj = load i32, ptr %i.cc, align 8, !tbaa !122
  store i32 %i.cj, ptr %i.ca, align 8, !tbaa !144
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.k:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.cl = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc55 unwind label %.thread

.noexc55:                                         ; preds = %bb.k
  br i1 %i.cl, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.noexc55
  %i.cm = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef double %i.co(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc56 unwind label %.thread, !inline_history !160

.noexc56:                                         ; preds = %bb.l
  store double %i.cp, ptr %i.a, align 8, !tbaa !147
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc55, %.noexc56
  %i.cq = load double, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.m

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc
  %i.cr = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ch, %.noexc ] ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.cs, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.cq, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.ct = mul nuw nsw i64 %indvars.iv108, %wide.trip.count111
  %gep129 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep128.sink, i64 %i.ct
  store double %.sink, ptr %gep129, align 8, !tbaa !147
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !42
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !42
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %.0.i4.i50, align 8, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.n, %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !42
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !42
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.df = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.o
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %bb.h, !llvm.loop !541

.thread:                                          ; preds = %.noexc56, %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %lpad.phi81 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.p ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !42
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !42
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.r, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %.0.i4.i50, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread: ; preds = %bb.q, %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !42
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !42
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.s:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %i.dt = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.t:                                             ; preds = %._crit_edge, %bb.f, %bb.g
  store ptr %i.i, ptr %1, align 8, !tbaa !96
  %i.dw = load i32, ptr %i.k, align 8, !tbaa !42
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.k, align 8, !tbaa !42
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !18
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.t, %bb.u
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64:      ; preds = %bb.d, %bb.e, %bb.s, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.d ], [ %i.av, %bb.e ], [ %lpad.phi81, %bb.s ], [ %lpad.phi81, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread ] ; 2 uses
  %i.ec = load i32, ptr %i.k, align 8, !tbaa !42
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.k, align 8, !tbaa !42
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.041 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.h = add nsw i32 %.041, 1                     ; 3 uses
  invoke void @_ZN5Ipopt19DenseSymMatrixSpaceC1Ei(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %i.h)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !42
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209  ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !96     ; 4 uses
  %.not100 = icmp eq ptr %i.t, null
  br i1 %.not100, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.t)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50 unwind label %bb.l

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50:        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i8 1, ptr %i.u, align 8, !tbaa !208
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209  ; 3 uses
  %i.x = icmp sgt i32 %.041, 0
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50
  %i.y = zext nneg i32 %.041 to i64               ; 8 uses
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  %i.ac = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.ad = shl nuw nsw i64 %i.z, 3
  %i.ae = add nuw nsw i64 %i.ac, 8
  %i.af = shl nuw nsw i64 %i.y, 3
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.ac
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit159
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit159 ] ; 12 uses
  %i.ai = mul nuw nsw i64 %indvars.iv, %i.y
  %i.aj = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ai ; 6 uses
  %invariant.gep142 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aj ; 6 uses
  %i.ak = sub nsw i64 %i.y, %indvars.iv           ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
end_hunk_0
begin_hunk_1_@_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_:bb.a
bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef double %i.cx(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc60 unwind label %bb.w, !inline_history !160 ; 2 uses

.noexc60:                                         ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.cy, ptr %i.cz, align 8, !tbaa !145
  %i.da = load i32, ptr %i.ct, align 8, !tbaa !122
  store i32 %i.da, ptr %i.cr, align 8, !tbaa !144
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.r:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.dc = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %.noexc61 unwind label %.thread

.noexc61:                                         ; preds = %bb.r
  br i1 %i.dc, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.noexc61
  %i.dd = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef double %i.df(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %.noexc62 unwind label %.thread, !inline_history !160

.noexc62:                                         ; preds = %bb.s
  store double %i.dg, ptr %i.a, align 8, !tbaa !147
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc61, %.noexc62
  %i.dh = load double, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.t

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc60
  %i.di = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cy, %.noexc60 ] ; 2 uses
  %i.dj = fmul double %i.di, %i.di
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.dj, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.dh, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.dk = mul nuw nsw i64 %indvars.iv124, %i.bn
  %gep147 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep146.sink, i64 %i.dk
  store double %.sink, ptr %gep147, align 8, !tbaa !147
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !42
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !42
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.u, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dp = load ptr, ptr %.0.i4.i55, align 8, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.u, %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !42
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !42
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.v, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dw = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.v
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.bn
  br i1 %exitcond128.not, label %._crit_edge, label %bb.o, !llvm.loop !556

.thread:                                          ; preds = %.noexc62, %bb.s, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %lpad.phi93 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i4.i55, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !42
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !42
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.y, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

bb.y:                                             ; preds = %bb.x
  %i.ed = load ptr, ptr %.0.i4.i55, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i55) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread: ; preds = %bb.x, %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !42
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !42
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.z, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.z:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %i.ek = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

bb.aa:                                            ; preds = %._crit_edge, %bb.m, %bb.n
  store ptr %i.l, ptr %1, align 8, !tbaa !96
  %i.en = load i32, ptr %i.n, align 8, !tbaa !42
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.n, align 8, !tbaa !42
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ab, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(97) %i.l) #20, !inline_history !18
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.ab, %bb.aa
  %i.et = load i32, ptr %i.i, align 8, !tbaa !42
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.i, align 8, !tbaa !42
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ac, label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit

bb.ac:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !19
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit, %bb.ac
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70:      ; preds = %bb.k, %bb.l, %bb.z, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.bc, %bb.k ], [ %lpad.phi93, %bb.z ], [ %lpad.phi93, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit68.thread ] ; 2 uses
  %i.ez = load i32, ptr %i.n, align 8, !tbaa !42
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.n, align 8, !tbaa !42
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ad, label %.body

bb.ad:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(97) %i.l) #20, !inline_history !18
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70, %bb.ad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.bb, %bb.j ], [ %.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70 ], [ %.pn.pn.pn, %bb.ad ] ; 2 uses
  %i.ff = load i32, ptr %i.i, align 8, !tbaa !42
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.i, align 8, !tbaa !42
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.ae:                                            ; preds = %.body
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !19
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76: ; preds = %bb.ae, %.body, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ae ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater16ShiftSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186, !noalias !571
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !571 ; 11 uses
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit unwind label %bb.b, !noalias !571

common.resume:                                    ; preds = %bb.v, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64 ], [ %.pn.pn.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21, !noalias !571
  br label %common.resume

_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42, !noalias !571
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !42, !noalias !571
  %i.n = load ptr, ptr %1, align 8, !tbaa !96     ; 3 uses
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i8 1, ptr %i.o, align 8, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209  ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.i)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45 unwind label %bb.e

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45:        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i8 1, ptr %i.s, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209  ; 3 uses
  %i.v = add i32 %i.f, -1                         ; 3 uses
  %i.w = icmp sgt i32 %i.f, 1
  br i1 %i.w, label %.preheader87.preheader, label %.preheader

.preheader87.preheader:                           ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = zext nneg i32 %i.v to i64
  %i.z = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64         ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = sub i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, -9
  %diff.check = icmp ult i64 %i.ad, 31
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ae = mul nuw nsw i64 %indvars.iv.next, %i.z
  %i.af = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae ; 2 uses
  %invariant.gep124 = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af ; 2 uses
  %i.ag = tail call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 %wide.trip.count)
  %i.ah = sub nsw i64 %i.ag, %indvars.iv          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  %brmerge = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ai = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !147
  %wide.load137 = load <2 x double>, ptr %i.am, align 8, !tbaa !147
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %wide.load, ptr %i.an, align 8, !tbaa !147
  store <2 x double> %wide.load137, ptr %i.ao, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.ai, %middle.block ], [ %indvars.iv, %.preheader87 ]
  br label %scalar.ph

.preheader:                                       ; preds = %.loopexit, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit45
  %i.aq = icmp sgt i32 %i.f, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = zext nneg i32 %i.v to i64               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.trip.count111 = zext nneg i32 %i.f to i64 ; 2 uses
  %invariant.gep128.sink = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.as
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5Ipopt14DenseSymMatrix21MakeNewDenseSymMatrixEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.e:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader87, !llvm.loop !564

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next105
  %i.ay = load double, ptr %gep, align 8, !tbaa !147
  %gep125 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep124, i64 %indvars.iv104
  store double %i.ay, ptr %gep125, align 8, !tbaa !147
  %i.az = icmp samesign ult i64 %indvars.iv.next105, %i.y
  br i1 %i.az, label %scalar.ph, label %.loopexit, !llvm.loop !565

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60, %.preheader
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !42
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.k, align 8, !tbaa !42
  %i.bc = load ptr, ptr %1, align 8, !tbaa !96    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !42
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !42
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(97) %i.bc) #20, !inline_history !27
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60
  %indvars.iv108 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next109, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60 ] ; 4 uses
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !130, !noalias !572
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.as
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !131, !noalias !572 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.h
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !134, !noalias !572
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.as
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !78, !noalias !572 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i46, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.h
  %.0.i3.i = phi ptr [ %i.bp, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bm, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !42, !noalias !572
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !42, !noalias !572
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !130, !noalias !573
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv108
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !131, !noalias !573 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i47, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bw = load ptr, ptr %i.av, align 8, !tbaa !134, !noalias !573
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv108
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !78, !noalias !573 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i49 = phi ptr [ %i.by, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %i.bv, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i3.i49, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !42, !noalias !573
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !42, !noalias !573
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51
  %.0.i4.i50 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i51 ], [ %.0.i3.i49, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i48 ] ; 10 uses
  %i.cc = icmp eq ptr %.0.i4.i, %.0.i4.i50
  br i1 %i.cc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !144
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !122
  %.not.i.i54 = icmp eq i32 %i.ce, %i.cg
  br i1 %.not.i.i54, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef double %i.cj(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.p, !inline_history !160 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.ck, ptr %i.cl, align 8, !tbaa !145
  %i.cm = load i32, ptr %i.cf, align 8, !tbaa !122
  store i32 %i.cm, ptr %i.cd, align 8, !tbaa !144
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.k:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  %i.co = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc55 unwind label %.thread

.noexc55:                                         ; preds = %bb.k
  br i1 %i.co, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.noexc55
  %i.cp = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef double %i.cr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc56 unwind label %.thread, !inline_history !160

.noexc56:                                         ; preds = %bb.l
  store double %i.cs, ptr %i.a, align 8, !tbaa !147
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc55, %.noexc56
  %i.ct = load double, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.m

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc
  %i.cu = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ck, %.noexc ] ; 2 uses
  %i.cv = fmul double %i.cu, %i.cu
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.cv, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.ct, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.cw = mul nuw nsw i64 %indvars.iv108, %wide.trip.count111
  %gep129 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep128.sink, i64 %i.cw
  store double %.sink, ptr %gep129, align 8, !tbaa !147
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !42
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !42
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.db = load ptr, ptr %.0.i4.i50, align 8, !tbaa !44
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.n, %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !42
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !42
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.di = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.o
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %bb.h, !llvm.loop !570

.thread:                                          ; preds = %.noexc56, %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %lpad.phi81 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.p ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !42
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !42
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.r, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %.0.i4.i50, align 8, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread: ; preds = %bb.q, %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !42
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !42
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.s:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %i.dw = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.t:                                             ; preds = %._crit_edge, %bb.f, %bb.g
  store ptr %i.i, ptr %1, align 8, !tbaa !96
  %i.dz = load i32, ptr %i.k, align 8, !tbaa !42
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.k, align 8, !tbaa !42
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !18
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.t, %bb.u
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64:      ; preds = %bb.d, %bb.e, %bb.s, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.d ], [ %i.ax, %bb.e ], [ %lpad.phi81, %bb.s ], [ %lpad.phi81, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread ] ; 2 uses
  %i.ef = load i32, ptr %i.k, align 8, !tbaa !42
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.k, align 8, !tbaa !42
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %i.ei = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater7RecalcYEdRKNS_6VectorERNS_17MultiVectorMatrixES5_RNS_8SmartPtrIS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, double noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182, !noalias !577 ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.b, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK5Ipopt17MultiVectorMatrix27MultiVectorMatrixOwnerSpaceEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42, !noalias !577
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !42, !noalias !577
  br label %_ZNK5Ipopt17MultiVectorMatrix27MultiVectorMatrixOwnerSpaceEv.exit

_ZNK5Ipopt17MultiVectorMatrix27MultiVectorMatrixOwnerSpaceEv.exit: ; preds = %bb.a, %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #23
          to label %.noexc unwind label %.body    ; 5 uses

.noexc:                                           ; preds = %_ZNK5Ipopt17MultiVectorMatrix27MultiVectorMatrixOwnerSpaceEv.exit
  invoke void @_ZN5Ipopt17MultiVectorMatrixC1EPKNS_22MultiVectorMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZNK5Ipopt22MultiVectorMatrixSpace24MakeNewMultiVectorMatrixEv.exit unwind label %.body.thread

.body.thread:                                     ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 128) #21
  br label %bb.i

_ZNK5Ipopt22MultiVectorMatrixSpace24MakeNewMultiVectorMatrixEv.exit: ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !42
  %i.k = load ptr, ptr %5, align 8, !tbaa !92     ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK5Ipopt22MultiVectorMatrixSpace24MakeNewMultiVectorMatrixEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !42
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #20, !inline_history !1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZNK5Ipopt22MultiVectorMatrixSpace24MakeNewMultiVectorMatrixEv.exit
  store ptr %i.f, ptr %5, align 8, !tbaa !92
  invoke void @_ZN5Ipopt17MultiVectorMatrix23AddOneMultiVectorMatrixEdRKS0_d(ptr noundef nonnull align 8 dereferenceable(128) %i.f, double noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef 0.000000e+00)
          to label %bb.f unwind label %.body.thread16

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %5, align 8, !tbaa !92
  invoke void @_ZN5Ipopt17MultiVectorMatrix23AddOneMultiVectorMatrixEdRKS0_d(ptr noundef nonnull align 8 dereferenceable(128) %i.s, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(128) %4, double noundef 1.000000e+00)
          to label %bb.g unwind label %.body.thread16

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !42
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_22MultiVectorMatrixSpaceEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20, !inline_history !576
  br label %_ZN5Ipopt8SmartPtrIKNS_22MultiVectorMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_22MultiVectorMatrixSpaceEED2Ev.exit: ; preds = %bb.g, %bb.h
  ret void

.body.thread16:                                   ; preds = %bb.e, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %_ZNK5Ipopt17MultiVectorMatrix27MultiVectorMatrixOwnerSpaceEv.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_22MultiVectorMatrixSpaceEED2Ev.exit10, label %bb.i
end_hunk_1
