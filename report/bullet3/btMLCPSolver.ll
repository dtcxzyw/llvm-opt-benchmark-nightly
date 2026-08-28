Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMLCPSolver?download=true
inline.NumInlined: 547
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12btMLCPSolver9solveMLCPERK19btContactSolverInfo:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

bb.t:                                             ; preds = %bb.b
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !42 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !118
  %i.er = load ptr, ptr %i.ej, align 8, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(25) %i.eo, i32 noundef %i.eq, i1 noundef zeroext true)
  br label %bb.u

bb.u:                                             ; preds = %_ZN9btMatrixXIfED2Ev.exit, %bb.t, %bb.a
  %.011 = phi i1 [ true, %bb.a ], [ %.010.in, %_ZN9btMatrixXIfED2Ev.exit ], [ %i.eu, %bb.t ]
  ret i1 %.011
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12btMLCPSolver14createMLCPFastERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1392) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 4 uses
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %4 = alloca %class.CProfileSample, align 1      ; 4 uses
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  %6 = alloca %class.CProfileSample, align 1      ; 4 uses
  %7 = alloca %class.CProfileSample, align 1      ; 6 uses
  %8 = alloca %class.CProfileSample, align 1      ; 6 uses
  %9 = alloca %class.CProfileSample, align 1      ; 6 uses
  %10 = alloca %class.CProfileSample, align 1     ; 6 uses
  %11 = alloca %class.CProfileSample, align 1     ; 6 uses
  %12 = alloca %class.CProfileSample, align 1     ; 6 uses
  %13 = alloca %class.CProfileSample, align 1     ; 6 uses
  %14 = alloca %class.CProfileSample, align 1     ; 6 uses
  %15 = alloca %class.CProfileSample, align 1     ; 6 uses
  %16 = alloca %class.CProfileSample, align 1     ; 5 uses
  %17 = alloca %class.CProfileSample, align 1     ; 5 uses
  %18 = alloca %class.CProfileSample, align 1     ; 6 uses
  %i.a = load i8, ptr @interleaveContactAndFriction, align 1, !tbaa !76, !range !63, !noundef !66
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, i32 3, i32 1             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 3 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %i.k = icmp slt i32 %i.j, %i.e
  br i1 %i.k, label %bb.c, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.e to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.m, i32 noundef 16)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i: ; preds = %.noexc, %bb.c
  %i.o = phi i32 [ %.pre.i.i, %.noexc ], [ %i.g, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.n, %.noexc ], [ null, %bb.c ] ; 9 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 9 uses
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %i.s = ptrtoaddr ptr %i.r to i64
  %.0.i.i.i.i953 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.o to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.t = sub i64 %i.s, %.0.i.i.i.i953
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond1091 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1091, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !103
  %wide.load954 = load <4 x float>, ptr %i.w, align 4, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %wide.load, ptr %i.u, align 4, !tbaa !103
  store <4 x float> %wide.load954, ptr %i.x, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i.prol
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !103
  store float %i.ab, ptr %i.z, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !120

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !103
  store float %i.ag, ptr %i.ae, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !103
  store float %i.aj, ptr %i.ah, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.1
  %i.am = load float, ptr %i.al, align 4, !tbaa !103
  store float %i.am, ptr %i.ak, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.2
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !103
  store float %i.ap, ptr %i.an, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !121

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !11, !range !63, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.r)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i unwind label %bb.t

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 1, ptr %i.at, align 8, !tbaa !11
  store ptr %.0.i.i.i.i, ptr %i.q, align 8, !tbaa !17
  store i32 %i.e, ptr %i.i, align 8, !tbaa !19
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %i.au = phi ptr [ %.pre.i, %..lr.ph.i_crit_edge.i ], [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i ]
  %i.av = sext i32 %i.g to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.e to i64
  %i.aw = shl nsw i64 %i.av, 2
  %scevgep.i = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ax = sub nsw i64 %wide.trip.count.i.i, %i.av
  %i.ay = shl nuw nsw i64 %i.ax, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ay, i1 false), !tbaa !103
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i, %bb.a
  store i32 %i.e, ptr %i.f, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !18 ; 3 uses
  %i.bb = icmp sgt i32 %i.e, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !19
  %i.be = icmp slt i32 %i.bd, %i.e
  br i1 %i.be, label %bb.h, label %..lr.ph.i_crit_edge.i381

..lr.ph.i_crit_edge.i381:                         ; preds = %bb.g
  %.phi.trans.insert.i382 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.pre.i383 = load ptr, ptr %.phi.trans.insert.i382, align 8, !tbaa !17
  br label %.lr.ph.i.i384

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i387 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i387, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i389, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sext i32 %i.e to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bg, i32 noundef 16)
          to label %.noexc400 unwind label %bb.t

.noexc400:                                        ; preds = %bb.i
  %.pre.i.i388 = load i32, ptr %i.az, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i389

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i389: ; preds = %.noexc400, %bb.h
  %i.bi = phi i32 [ %.pre.i.i388, %.noexc400 ], [ %i.ba, %bb.h ] ; 3 uses
  %.0.i.i.i.i390 = phi ptr [ %i.bh, %.noexc400 ], [ null, %bb.h ] ; 9 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17 ; 9 uses
  br i1 %i.bj, label %.lr.ph.i.i.i.i395, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i391

.lr.ph.i.i.i.i395:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i389
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %.0.i.i.i.i390956 = ptrtoaddr ptr %.0.i.i.i.i390 to i64
  %wide.trip.count.i.i.i.i396 = zext nneg i32 %i.bi to i64 ; 5 uses
  %min.iters.check959 = icmp ult i32 %i.bi, 8
  %i.bn = sub i64 %i.bm, %.0.i.i.i.i390956
  %diff.check957 = icmp ugt i64 %i.bn, -32
  %or.cond1092 = select i1 %min.iters.check959, i1 true, i1 %diff.check957
  br i1 %or.cond1092, label %scalar.ph958.preheader, label %vector.ph960

vector.ph960:                                     ; preds = %.lr.ph.i.i.i.i395
  %n.vec961 = and i64 %wide.trip.count.i.i.i.i396, 2147483640 ; 3 uses
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %vector.ph960
  %index963 = phi i64 [ 0, %vector.ph960 ], [ %index.next966, %vector.body962 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i390, i64 %index963 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index963 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load964 = load <4 x float>, ptr %i.bp, align 4, !tbaa !103
  %wide.load965 = load <4 x float>, ptr %i.bq, align 4, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> %wide.load964, ptr %i.bo, align 4, !tbaa !103
  store <4 x float> %wide.load965, ptr %i.br, align 4, !tbaa !103
  %index.next966 = add nuw i64 %index963, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next966, %n.vec961
  br i1 %i.bs, label %middle.block967, label %vector.body962, !llvm.loop !122

middle.block967:                                  ; preds = %vector.body962
  %cmp.n968 = icmp eq i64 %n.vec961, %wide.trip.count.i.i.i.i396
  br i1 %cmp.n968, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393, label %scalar.ph958.preheader

scalar.ph958.preheader:                           ; preds = %.lr.ph.i.i.i.i395, %middle.block967
  %indvars.iv.i.i.i.i397.ph = phi i64 [ 0, %.lr.ph.i.i.i.i395 ], [ %n.vec961, %middle.block967 ] ; 3 uses
  %xtraiter1102 = and i64 %wide.trip.count.i.i.i.i396, 3 ; 2 uses
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %scalar.ph958.prol.loopexit, label %scalar.ph958.prol

scalar.ph958.prol:                                ; preds = %scalar.ph958.preheader, %scalar.ph958.prol
  %indvars.iv.i.i.i.i397.prol = phi i64 [ %indvars.iv.next.i.i.i.i398.prol, %scalar.ph958.prol ], [ %indvars.iv.i.i.i.i397.ph, %scalar.ph958.preheader ] ; 3 uses
  %prol.iter1104 = phi i64 [ %prol.iter1104.next, %scalar.ph958.prol ], [ 0, %scalar.ph958.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i390, i64 %indvars.iv.i.i.i.i397.prol
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i397.prol
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !103
  store float %i.bv, ptr %i.bt, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i398.prol = add nuw nsw i64 %indvars.iv.i.i.i.i397.prol, 1 ; 2 uses
  %prol.iter1104.next = add i64 %prol.iter1104, 1 ; 2 uses
  %prol.iter1104.cmp.not = icmp eq i64 %prol.iter1104.next, %xtraiter1102
  br i1 %prol.iter1104.cmp.not, label %scalar.ph958.prol.loopexit, label %scalar.ph958.prol, !llvm.loop !123

scalar.ph958.prol.loopexit:                       ; preds = %scalar.ph958.prol, %scalar.ph958.preheader
  %indvars.iv.i.i.i.i397.unr = phi i64 [ %indvars.iv.i.i.i.i397.ph, %scalar.ph958.preheader ], [ %indvars.iv.next.i.i.i.i398.prol, %scalar.ph958.prol ]
  %i.bw = sub nsw i64 %indvars.iv.i.i.i.i397.ph, %wide.trip.count.i.i.i.i396
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393, label %scalar.ph958

scalar.ph958:                                     ; preds = %scalar.ph958.prol.loopexit, %scalar.ph958
  %indvars.iv.i.i.i.i397 = phi i64 [ %indvars.iv.next.i.i.i.i398.3, %scalar.ph958 ], [ %indvars.iv.i.i.i.i397.unr, %scalar.ph958.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i390, i64 %indvars.iv.i.i.i.i397
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i397
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !103
  store float %i.ca, ptr %i.by, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i398 = add nuw nsw i64 %indvars.iv.i.i.i.i397, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i390, i64 %indvars.iv.next.i.i.i.i398
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.i398
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !103
  store float %i.cd, ptr %i.cb, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i398.1 = add nuw nsw i64 %indvars.iv.i.i.i.i397, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i390, i64 %indvars.iv.next.i.i.i.i398.1
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.i398.1
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !103
  store float %i.cg, ptr %i.ce, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i398.2 = add nuw nsw i64 %indvars.iv.i.i.i.i397, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i390, i64 %indvars.iv.next.i.i.i.i398.2
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.i398.2
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !103
  store float %i.cj, ptr %i.ch, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i398.3 = add nuw nsw i64 %indvars.iv.i.i.i.i397, 4 ; 2 uses
  %exitcond.not.i.i.i.i399.3 = icmp eq i64 %indvars.iv.next.i.i.i.i398.3, %wide.trip.count.i.i.i.i396
  br i1 %exitcond.not.i.i.i.i399.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393, label %scalar.ph958, !llvm.loop !124

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i391: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i389
  %.not.i5.i.i.i392 = icmp eq ptr %i.bl, null
  br i1 %.not.i5.i.i.i392, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393: ; preds = %scalar.ph958.prol.loopexit, %scalar.ph958, %middle.block967, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i391
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !11, !range !63, !noundef !66
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.j, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bl)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394 unwind label %bb.t

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394: ; preds = %bb.j, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i393, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i391
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i8 1, ptr %i.cn, align 8, !tbaa !11
  store ptr %.0.i.i.i.i390, ptr %i.bk, align 8, !tbaa !17
  store i32 %i.e, ptr %i.bc, align 8, !tbaa !19
  %.pr.pre = load i32, ptr %i.f, align 4, !tbaa !18
  br label %.lr.ph.i.i384

.lr.ph.i.i384:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394, %..lr.ph.i_crit_edge.i381
  %.pr = phi i32 [ %i.e, %..lr.ph.i_crit_edge.i381 ], [ %.pr.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394 ]
  %i.co = phi ptr [ %.pre.i383, %..lr.ph.i_crit_edge.i381 ], [ %.0.i.i.i.i390, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i394 ]
  %i.cp = sext i32 %i.ba to i64                   ; 2 uses
  %wide.trip.count.i.i385 = sext i32 %i.e to i64
  %i.cq = shl nsw i64 %i.cp, 2
  %scevgep.i386 = getelementptr i8, ptr %i.co, i64 %i.cq
  %i.cr = sub nsw i64 %wide.trip.count.i.i385, %i.cp
  %i.cs = shl nuw nsw i64 %i.cr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i386, i8 0, i64 %i.cs, i1 false), !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i384, %bb.f
  %i.ct = phi i32 [ %.pr, %.lr.ph.i.i384 ], [ %i.e, %bb.f ] ; 2 uses
  store i32 %i.e, ptr %i.az, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %_ZN9btVectorXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17
  %i.cw = sext i32 %i.ct to i64
  %i.cx = shl nuw nsw i64 %i.cw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 %i.cx, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE7setZeroEv.exit

_ZN9btVectorXIfE7setZeroEv.exit:                  ; preds = %_Z9btSetZeroIfEvPT_i.exit.i, %bb.k
  %.not.i403 = icmp eq i32 %i.e, 0                ; 6 uses
  br i1 %.not.i403, label %._crit_edge, label %_ZN9btVectorXIfE7setZeroEv.exit405

_ZN9btVectorXIfE7setZeroEv.exit405:               ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.da = sext i32 %i.e to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cz, i8 0, i64 %i.db, i1 false), !tbaa !103
  %i.dc = icmp sgt i32 %i.e, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9btVectorXIfE7setZeroEv.exit405
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 640
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %_ZN9btVectorXIfE7setZeroEv.exit, %_ZN9btVectorXIfE7setZeroEv.exit405
  %i.dh = phi i1 [ false, %_ZN9btVectorXIfE7setZeroEv.exit ], [ false, %_ZN9btVectorXIfE7setZeroEv.exit405 ], [ true, %bb.w ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18 ; 3 uses
  %i.dk = icmp sgt i32 %i.e, %i.dj
  br i1 %i.dk, label %bb.l, label %_ZN9btVectorXIfE6resizeEi.exit425

bb.l:                                             ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !19
  %i.dn = icmp slt i32 %i.dm, %i.e
  br i1 %i.dn, label %bb.m, label %..lr.ph.i_crit_edge.i406

..lr.ph.i_crit_edge.i406:                         ; preds = %bb.l
  %.phi.trans.insert.i407 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.pre.i408 = load ptr, ptr %.phi.trans.insert.i407, align 8, !tbaa !17
  br label %.lr.ph.i.i409

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i403, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i414, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = sext i32 %i.e to i64
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dp, i32 noundef 16)
  %.pre.i.i413 = load i32, ptr %i.di, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i414

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i414: ; preds = %bb.n, %bb.m
  %i.dr = phi i32 [ %.pre.i.i413, %bb.n ], [ %i.dj, %bb.m ] ; 3 uses
  %.0.i.i.i.i415 = phi ptr [ %i.dq, %bb.n ], [ null, %bb.m ] ; 9 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !17 ; 9 uses
  br i1 %i.ds, label %.lr.ph.i.i.i.i420, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i416

.lr.ph.i.i.i.i420:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i414
  %i.dv = ptrtoaddr ptr %i.du to i64
  %.0.i.i.i.i415971 = ptrtoaddr ptr %.0.i.i.i.i415 to i64
  %wide.trip.count.i.i.i.i421 = zext nneg i32 %i.dr to i64 ; 5 uses
  %min.iters.check974 = icmp ult i32 %i.dr, 8
  %i.dw = sub i64 %i.dv, %.0.i.i.i.i415971
  %diff.check972 = icmp ugt i64 %i.dw, -32
  %or.cond1093 = select i1 %min.iters.check974, i1 true, i1 %diff.check972
  br i1 %or.cond1093, label %scalar.ph973.preheader, label %vector.ph975

vector.ph975:                                     ; preds = %.lr.ph.i.i.i.i420
  %n.vec976 = and i64 %wide.trip.count.i.i.i.i421, 2147483640 ; 3 uses
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph975
  %index978 = phi i64 [ 0, %vector.ph975 ], [ %index.next981, %vector.body977 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i415, i64 %index978 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index978 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load979 = load <4 x float>, ptr %i.dy, align 4, !tbaa !103
  %wide.load980 = load <4 x float>, ptr %i.dz, align 4, !tbaa !103
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x float> %wide.load979, ptr %i.dx, align 4, !tbaa !103
  store <4 x float> %wide.load980, ptr %i.ea, align 4, !tbaa !103
  %index.next981 = add nuw i64 %index978, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next981, %n.vec976
  br i1 %i.eb, label %middle.block982, label %vector.body977, !llvm.loop !125

middle.block982:                                  ; preds = %vector.body977
  %cmp.n983 = icmp eq i64 %n.vec976, %wide.trip.count.i.i.i.i421
  br i1 %cmp.n983, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418, label %scalar.ph973.preheader

scalar.ph973.preheader:                           ; preds = %.lr.ph.i.i.i.i420, %middle.block982
  %indvars.iv.i.i.i.i422.ph = phi i64 [ 0, %.lr.ph.i.i.i.i420 ], [ %n.vec976, %middle.block982 ] ; 3 uses
  %xtraiter1105 = and i64 %wide.trip.count.i.i.i.i421, 3 ; 2 uses
  %lcmp.mod1106.not = icmp eq i64 %xtraiter1105, 0
  br i1 %lcmp.mod1106.not, label %scalar.ph973.prol.loopexit, label %scalar.ph973.prol

scalar.ph973.prol:                                ; preds = %scalar.ph973.preheader, %scalar.ph973.prol
  %indvars.iv.i.i.i.i422.prol = phi i64 [ %indvars.iv.next.i.i.i.i423.prol, %scalar.ph973.prol ], [ %indvars.iv.i.i.i.i422.ph, %scalar.ph973.preheader ] ; 3 uses
  %prol.iter1107 = phi i64 [ %prol.iter1107.next, %scalar.ph973.prol ], [ 0, %scalar.ph973.preheader ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i415, i64 %indvars.iv.i.i.i.i422.prol
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i.i.i.i422.prol
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !103
  store float %i.ee, ptr %i.ec, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i423.prol = add nuw nsw i64 %indvars.iv.i.i.i.i422.prol, 1 ; 2 uses
  %prol.iter1107.next = add i64 %prol.iter1107, 1 ; 2 uses
  %prol.iter1107.cmp.not = icmp eq i64 %prol.iter1107.next, %xtraiter1105
  br i1 %prol.iter1107.cmp.not, label %scalar.ph973.prol.loopexit, label %scalar.ph973.prol, !llvm.loop !126

scalar.ph973.prol.loopexit:                       ; preds = %scalar.ph973.prol, %scalar.ph973.preheader
  %indvars.iv.i.i.i.i422.unr = phi i64 [ %indvars.iv.i.i.i.i422.ph, %scalar.ph973.preheader ], [ %indvars.iv.next.i.i.i.i423.prol, %scalar.ph973.prol ]
  %i.ef = sub nsw i64 %indvars.iv.i.i.i.i422.ph, %wide.trip.count.i.i.i.i421
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418, label %scalar.ph973

scalar.ph973:                                     ; preds = %scalar.ph973.prol.loopexit, %scalar.ph973
  %indvars.iv.i.i.i.i422 = phi i64 [ %indvars.iv.next.i.i.i.i423.3, %scalar.ph973 ], [ %indvars.iv.i.i.i.i422.unr, %scalar.ph973.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i415, i64 %indvars.iv.i.i.i.i422
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.i.i.i.i422
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !103
  store float %i.ej, ptr %i.eh, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i423 = add nuw nsw i64 %indvars.iv.i.i.i.i422, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i415, i64 %indvars.iv.next.i.i.i.i423
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i.i.i.i423
  %i.em = load float, ptr %i.el, align 4, !tbaa !103
  store float %i.em, ptr %i.ek, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i423.1 = add nuw nsw i64 %indvars.iv.i.i.i.i422, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i415, i64 %indvars.iv.next.i.i.i.i423.1
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i.i.i.i423.1
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !103
  store float %i.ep, ptr %i.en, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i423.2 = add nuw nsw i64 %indvars.iv.i.i.i.i422, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i415, i64 %indvars.iv.next.i.i.i.i423.2
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i.i.i.i423.2
  %i.es = load float, ptr %i.er, align 4, !tbaa !103
  store float %i.es, ptr %i.eq, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i423.3 = add nuw nsw i64 %indvars.iv.i.i.i.i422, 4 ; 2 uses
  %exitcond.not.i.i.i.i424.3 = icmp eq i64 %indvars.iv.next.i.i.i.i423.3, %wide.trip.count.i.i.i.i421
  br i1 %exitcond.not.i.i.i.i424.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418, label %scalar.ph973, !llvm.loop !127

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i416: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i414
  %.not.i5.i.i.i417 = icmp eq ptr %i.du, null
  br i1 %.not.i5.i.i.i417, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i419, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418: ; preds = %scalar.ph973.prol.loopexit, %scalar.ph973, %middle.block982, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i416
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !11, !range !63, !noundef !66
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.o, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i419

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.du)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i419

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i419: ; preds = %bb.o, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i418, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i416
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 1, ptr %i.ew, align 8, !tbaa !11
  store ptr %.0.i.i.i.i415, ptr %i.dt, align 8, !tbaa !17
  store i32 %i.e, ptr %i.dl, align 8, !tbaa !19
  br label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i419, %..lr.ph.i_crit_edge.i406
  %i.ex = phi ptr [ %.pre.i408, %..lr.ph.i_crit_edge.i406 ], [ %.0.i.i.i.i415, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i419 ]
  %i.ey = sext i32 %i.dj to i64                   ; 2 uses
  %wide.trip.count.i.i410 = sext i32 %i.e to i64
  %i.ez = shl nsw i64 %i.ey, 2
  %scevgep.i411 = getelementptr i8, ptr %i.ex, i64 %i.ez
  %i.fa = sub nsw i64 %wide.trip.count.i.i410, %i.ey
  %i.fb = shl nuw nsw i64 %i.fa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i411, i8 0, i64 %i.fb, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit425

_ZN9btVectorXIfE6resizeEi.exit425:                ; preds = %._crit_edge, %.lr.ph.i.i409
  store i32 %i.e, ptr %i.di, align 4, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !18 ; 3 uses
  %i.fe = icmp sgt i32 %i.e, %i.fd
  br i1 %i.fe, label %bb.p, label %_ZN9btVectorXIfE6resizeEi.exit445

bb.p:                                             ; preds = %_ZN9btVectorXIfE6resizeEi.exit425
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !19
  %i.fh = icmp slt i32 %i.fg, %i.e
  br i1 %i.fh, label %bb.q, label %..lr.ph.i_crit_edge.i426

..lr.ph.i_crit_edge.i426:                         ; preds = %bb.p
  %.phi.trans.insert.i427 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.pre.i428 = load ptr, ptr %.phi.trans.insert.i427, align 8, !tbaa !17
  br label %.lr.ph.i.i429

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i403, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i434, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = sext i32 %i.e to i64
  %i.fj = shl nsw i64 %i.fi, 2
  %i.fk = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fj, i32 noundef 16)
  %.pre.i.i433 = load i32, ptr %i.fc, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i434

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i434: ; preds = %bb.r, %bb.q
  %i.fl = phi i32 [ %.pre.i.i433, %bb.r ], [ %i.fd, %bb.q ] ; 3 uses
  %.0.i.i.i.i435 = phi ptr [ %i.fk, %bb.r ], [ null, %bb.q ] ; 9 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !17 ; 9 uses
  br i1 %i.fm, label %.lr.ph.i.i.i.i440, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i436

.lr.ph.i.i.i.i440:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i434
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %.0.i.i.i.i435986 = ptrtoaddr ptr %.0.i.i.i.i435 to i64
  %wide.trip.count.i.i.i.i441 = zext nneg i32 %i.fl to i64 ; 5 uses
  %min.iters.check989 = icmp ult i32 %i.fl, 8
  %i.fq = sub i64 %i.fp, %.0.i.i.i.i435986
  %diff.check987 = icmp ugt i64 %i.fq, -32
  %or.cond1094 = select i1 %min.iters.check989, i1 true, i1 %diff.check987
  br i1 %or.cond1094, label %scalar.ph988.preheader, label %vector.ph990

vector.ph990:                                     ; preds = %.lr.ph.i.i.i.i440
  %n.vec991 = and i64 %wide.trip.count.i.i.i.i441, 2147483640 ; 3 uses
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next996, %vector.body992 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i435, i64 %index993 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index993 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load994 = load <4 x float>, ptr %i.fs, align 4, !tbaa !103
  %wide.load995 = load <4 x float>, ptr %i.ft, align 4, !tbaa !103
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x float> %wide.load994, ptr %i.fr, align 4, !tbaa !103
  store <4 x float> %wide.load995, ptr %i.fu, align 4, !tbaa !103
  %index.next996 = add nuw i64 %index993, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next996, %n.vec991
  br i1 %i.fv, label %middle.block997, label %vector.body992, !llvm.loop !128

middle.block997:                                  ; preds = %vector.body992
  %cmp.n998 = icmp eq i64 %n.vec991, %wide.trip.count.i.i.i.i441
  br i1 %cmp.n998, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438, label %scalar.ph988.preheader

scalar.ph988.preheader:                           ; preds = %.lr.ph.i.i.i.i440, %middle.block997
  %indvars.iv.i.i.i.i442.ph = phi i64 [ 0, %.lr.ph.i.i.i.i440 ], [ %n.vec991, %middle.block997 ] ; 3 uses
  %xtraiter1108 = and i64 %wide.trip.count.i.i.i.i441, 3 ; 2 uses
  %lcmp.mod1109.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1109.not, label %scalar.ph988.prol.loopexit, label %scalar.ph988.prol

scalar.ph988.prol:                                ; preds = %scalar.ph988.preheader, %scalar.ph988.prol
  %indvars.iv.i.i.i.i442.prol = phi i64 [ %indvars.iv.next.i.i.i.i443.prol, %scalar.ph988.prol ], [ %indvars.iv.i.i.i.i442.ph, %scalar.ph988.preheader ] ; 3 uses
  %prol.iter1110 = phi i64 [ %prol.iter1110.next, %scalar.ph988.prol ], [ 0, %scalar.ph988.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i435, i64 %indvars.iv.i.i.i.i442.prol
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.i.i.i442.prol
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !103
  store float %i.fy, ptr %i.fw, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i443.prol = add nuw nsw i64 %indvars.iv.i.i.i.i442.prol, 1 ; 2 uses
  %prol.iter1110.next = add i64 %prol.iter1110, 1 ; 2 uses
  %prol.iter1110.cmp.not = icmp eq i64 %prol.iter1110.next, %xtraiter1108
  br i1 %prol.iter1110.cmp.not, label %scalar.ph988.prol.loopexit, label %scalar.ph988.prol, !llvm.loop !129

scalar.ph988.prol.loopexit:                       ; preds = %scalar.ph988.prol, %scalar.ph988.preheader
  %indvars.iv.i.i.i.i442.unr = phi i64 [ %indvars.iv.i.i.i.i442.ph, %scalar.ph988.preheader ], [ %indvars.iv.next.i.i.i.i443.prol, %scalar.ph988.prol ]
  %i.fz = sub nsw i64 %indvars.iv.i.i.i.i442.ph, %wide.trip.count.i.i.i.i441
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438, label %scalar.ph988

scalar.ph988:                                     ; preds = %scalar.ph988.prol.loopexit, %scalar.ph988
  %indvars.iv.i.i.i.i442 = phi i64 [ %indvars.iv.next.i.i.i.i443.3, %scalar.ph988 ], [ %indvars.iv.i.i.i.i442.unr, %scalar.ph988.prol.loopexit ] ; 6 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i435, i64 %indvars.iv.i.i.i.i442
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.i.i.i442
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !103
  store float %i.gd, ptr %i.gb, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i443 = add nuw nsw i64 %indvars.iv.i.i.i.i442, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i435, i64 %indvars.iv.next.i.i.i.i443
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next.i.i.i.i443
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !103
  store float %i.gg, ptr %i.ge, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i443.1 = add nuw nsw i64 %indvars.iv.i.i.i.i442, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i435, i64 %indvars.iv.next.i.i.i.i443.1
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next.i.i.i.i443.1
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !103
  store float %i.gj, ptr %i.gh, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i443.2 = add nuw nsw i64 %indvars.iv.i.i.i.i442, 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i435, i64 %indvars.iv.next.i.i.i.i443.2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next.i.i.i.i443.2
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !103
  store float %i.gm, ptr %i.gk, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i443.3 = add nuw nsw i64 %indvars.iv.i.i.i.i442, 4 ; 2 uses
  %exitcond.not.i.i.i.i444.3 = icmp eq i64 %indvars.iv.next.i.i.i.i443.3, %wide.trip.count.i.i.i.i441
  br i1 %exitcond.not.i.i.i.i444.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438, label %scalar.ph988, !llvm.loop !130

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i436: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i434
  %.not.i5.i.i.i437 = icmp eq ptr %i.fo, null
  br i1 %.not.i5.i.i.i437, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i439, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438: ; preds = %scalar.ph988.prol.loopexit, %scalar.ph988, %middle.block997, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i436
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !11, !range !63, !noundef !66
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.s, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i439

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fo)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i439

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i439: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i438, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i436
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 1, ptr %i.gq, align 8, !tbaa !11
  store ptr %.0.i.i.i.i435, ptr %i.fn, align 8, !tbaa !17
  store i32 %i.e, ptr %i.ff, align 8, !tbaa !19
  br label %.lr.ph.i.i429

.lr.ph.i.i429:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i439, %..lr.ph.i_crit_edge.i426
  %i.gr = phi ptr [ %.pre.i428, %..lr.ph.i_crit_edge.i426 ], [ %.0.i.i.i.i435, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i439 ]
  %i.gs = sext i32 %i.fd to i64                   ; 2 uses
  %wide.trip.count.i.i430 = sext i32 %i.e to i64
  %i.gt = shl nsw i64 %i.gs, 2
  %scevgep.i431 = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gu = sub nsw i64 %wide.trip.count.i.i430, %i.gs
  %i.gv = shl nuw nsw i64 %i.gu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i431, i8 0, i64 %i.gv, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit445

_ZN9btVectorXIfE6resizeEi.exit445:                ; preds = %_ZN9btVectorXIfE6resizeEi.exit425, %.lr.ph.i.i429
  store i32 %i.e, ptr %i.fc, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull @.str.4)
  br i1 %i.dh, label %.lr.ph731, label %._crit_edge732

.lr.ph731:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit445
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !39 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !17 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !17 ; 3 uses
  %wide.trip.count821 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter1111 = and i64 %wide.trip.count821, 1
  %i.hc = icmp eq i32 %i.e, 1
  br i1 %i.hc, label %.epil.preheader, label %.lr.ph731.new

.lr.ph731.new:                                    ; preds = %.lr.ph731
  %unroll_iter = and i64 %wide.trip.count821, 2147483646
  br label %bb.x

bb.t:                                             ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit646

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !68 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 108
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !131 ; 3 uses
  %i.hi = call noundef float @llvm.fabs.f32(float %i.hh)
  %i.hj = fcmp olt float %i.hi, f0x34000000
  br i1 %i.hj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 112
  %i.hl = load float, ptr %i.hk, align 8, !tbaa !132
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 128
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !133
  %i.ho = fdiv float %i.hl, %i.hh
  %i.hp = load ptr, ptr %i.df, align 8, !tbaa !17
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv
  store float %i.ho, ptr %i.hq, align 4, !tbaa !103
  %i.hr = fdiv float %i.hn, %i.hh
  %i.hs = load ptr, ptr %i.dg, align 8, !tbaa !17
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv
  store float %i.hr, ptr %i.ht, align 4, !tbaa !103
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.u, !llvm.loop !134

._crit_edge732.loopexit.unr-lcssa:                ; preds = %bb.x
  %lcmp.mod1112.not = icmp eq i64 %xtraiter1111, 0
  br i1 %lcmp.mod1112.not, label %._crit_edge732, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge732.loopexit.unr-lcssa, %.lr.ph731
  %indvars.iv818.epil.init = phi i64 [ 0, %.lr.ph731 ], [ %indvars.iv.next819.1, %._crit_edge732.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1113 = trunc i32 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod1113)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv818.epil.init
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !68 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 120
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !135
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv818.epil.init
  store float %i.hx, ptr %i.hy, align 4, !tbaa !103
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 124
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !136
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv818.epil.init
  store float %i.ia, ptr %i.ib, align 4, !tbaa !103
  br label %._crit_edge732

._crit_edge732:                                   ; preds = %.epil.preheader, %._crit_edge732.loopexit.unr-lcssa, %_ZN9btVectorXIfE6resizeEi.exit445
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ic = load i32, ptr %i.d, align 4, !tbaa !40
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !137 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.5)
          to label %bb.y unwind label %bb.ap

bb.x:                                             ; preds = %bb.x, %.lr.ph731.new
  %indvars.iv818 = phi i64 [ 0, %.lr.ph731.new ], [ %indvars.iv.next819.1, %bb.x ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph731.new ], [ %niter.next.1, %bb.x ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv818
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !68 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 120
  %i.ii = load float, ptr %i.ih, align 8, !tbaa !135
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv818
  store float %i.ii, ptr %i.ij, align 4, !tbaa !103
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 124
  %i.il = load float, ptr %i.ik, align 4, !tbaa !136
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv818
  store float %i.il, ptr %i.im, align 4, !tbaa !103
  %indvars.iv.next819 = or disjoint i64 %indvars.iv818, 1 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next819
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !68 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 120
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !135
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next819
  store float %i.iq, ptr %i.ir, align 4, !tbaa !103
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 124
  %i.it = load float, ptr %i.is, align 4, !tbaa !136
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next819
  store float %i.it, ptr %i.iu, align 4, !tbaa !103
  %indvars.iv.next819.1 = add nuw nsw i64 %indvars.iv818, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge732.loopexit.unr-lcssa, label %bb.x, !llvm.loop !138

bb.y:                                             ; preds = %._crit_edge732
  %i.iv = icmp sgt i32 %i.ie, 0
  br i1 %i.iv, label %bb.z, label %.loopexit724

bb.z:                                             ; preds = %bb.y
  %i.iw = zext nneg i32 %i.ie to i64
  %i.ix = shl nuw nsw i64 %i.iw, 2                ; 2 uses
  %i.iy = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ix, i32 noundef 16)
          to label %.lr.ph.i unwind label %bb.aq  ; 2 uses

.lr.ph.i:                                         ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr align 4 %i.iy, i8 -1, i64 %i.ix, i1 false), !tbaa !69
  br label %.loopexit724

.loopexit724:                                     ; preds = %.lr.ph.i, %bb.y
  %.sroa.10692.2 = phi ptr [ null, %bb.y ], [ %i.iy, %.lr.ph.i ] ; 8 uses
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull @.str.6)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.loopexit724
  %i.iz = load i32, ptr %i.d, align 4, !tbaa !40  ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %bb.ab, label %_ZN20btAlignedObjectArrayI11btJointNodeE7reserveEi.exit

bb.ab:                                            ; preds = %bb.aa
  %i.jb = shl nuw nsw i32 %i.iz, 1                ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 4
  %i.je = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.jd, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI11btJointNodeE7reserveEi.exit unwind label %bb.as

_ZN20btAlignedObjectArrayI11btJointNodeE7reserveEi.exit: ; preds = %bb.aa, %bb.ab
  %.sroa.22658.6 = phi ptr [ null, %bb.aa ], [ %i.je, %bb.ab ] ; 6 uses
  %.sroa.15.3 = phi i32 [ 0, %bb.aa ], [ %i.jb, %bb.ab ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull @.str.7)
          to label %bb.ac unwind label %bb.au

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayI11btJointNodeE7reserveEi.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.jg = shl nsw i32 %i.ic, 1                    ; 2 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.jf, i32 noundef %i.jg, i32 noundef 8)
          to label %bb.ad unwind label %bb.av

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull @.str.8)
          to label %bb.ae unwind label %bb.ax

bb.ae:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 920
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.jh, i32 noundef %i.jg, i32 noundef 8)
          to label %bb.af unwind label %bb.ay

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.22)
          to label %.noexc455 unwind label %bb.ay

.noexc455:                                        ; preds = %bb.af
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !18 ; 2 uses
  %.not.i453 = icmp eq i32 %i.jj, 0
  br i1 %.not.i453, label %bb.ag, label %_Z9btSetZeroIfEvPT_i.exit.i454

_Z9btSetZeroIfEvPT_i.exit.i454:                   ; preds = %.noexc455
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !17
  %i.jm = sext i32 %i.jj to i64
  %i.jn = shl nuw nsw i64 %i.jm, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jl, i8 0, i64 %i.jn, i1 false), !tbaa !103
  br label %bb.ag
end_hunk_0
begin_hunk_1_@_ZN12btMLCPSolver14createMLCPFastERK19btContactSolverInfo:bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #14
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn340 = phi { ptr, i32 } [ %i.yj, %bb.cg ], [ %i.yi, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.el

bb.ci:                                            ; preds = %bb.cb
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cc
  %i.yl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #14
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn342 = phi { ptr, i32 } [ %i.yl, %bb.cj ], [ %i.yk, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.el

bb.cl:                                            ; preds = %bb.cd
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cm:                                            ; preds = %.lr.ph786, %._crit_edge782
  %indvars.iv860 = phi i64 [ 0, %.lr.ph786 ], [ %indvars.iv.next861, %._crit_edge782 ] ; 5 uses
  %.0278785 = phi i32 [ 0, %.lr.ph786 ], [ %i.afh, %._crit_edge782 ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv860
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !69 ; 3 uses
  %i.yp = sext i32 %.0278785 to i64
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !68 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 152
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !142 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 156
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !143 ; 2 uses
  %i.yw = icmp slt i32 %.0278785, %i.yd
  br i1 %i.yw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.yx = load ptr, ptr %i.ye, align 8, !tbaa !150
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv860
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !151
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.za = phi i32 [ %i.yz, %bb.cn ], [ %i.c, %bb.cm ]
  %.fr802 = freeze i32 %i.za                      ; 6 uses
  %i.zb = sext i32 %i.yo to i64
  %.idx = shl nsw i64 %i.zb, 6
  %i.zc = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.idx ; 2 uses
  %i.zd = sext i32 %i.yt to i64
  %i.ze = getelementptr inbounds [4 x i8], ptr %.sroa.10692.2, i64 %i.zd
  %.0277773 = load i32, ptr %i.ze, align 4, !tbaa !69 ; 2 uses
  %i.zf = icmp sgt i32 %.0277773, -1
  %i.zg = icmp sgt i32 %.fr802, 0
  %or.cond947 = and i1 %i.zf, %i.zg
  br i1 %or.cond947, label %.lr.ph776.split.us, label %._crit_edge777

.lr.ph776.split.us:                               ; preds = %bb.co, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us
  %.0277774.us = phi i32 [ %.0277.us, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ], [ %.0277773, %bb.co ]
  %i.zh = zext nneg i32 %.0277774.us to i64
  %i.zi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22658.0.lcssa, i64 %i.zh ; 3 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !157
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !158 ; 2 uses
  %i.zm = sext i32 %i.zj to i64                   ; 3 uses
  %i.zn = icmp sgt i64 %indvars.iv860, %i.zm
  br i1 %i.zn, label %bb.cp, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

bb.cp:                                            ; preds = %.lr.ph776.split.us
  %i.zo = icmp slt i32 %i.zl, %i.yd
  br i1 %i.zo, label %bb.cq, label %.preheader.lr.ph.i.us

bb.cq:                                            ; preds = %bb.cp
  %i.zp = load ptr, ptr %i.ye, align 8, !tbaa !150
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.zp, i64 %i.zm
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !151
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.cq, %bb.cp
  %i.zs = phi i32 [ %i.zr, %bb.cq ], [ %i.c, %bb.cp ] ; 3 uses
  %i.zt = sext i32 %i.zl to i64
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.zt
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !68
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 156
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !143
  %i.zy = icmp eq i32 %i.zx, %i.yt
  %i.zz = shl nsw i32 %i.zs, 3
  %i.aaa = select i1 %i.zy, i32 %i.zz, i32 0
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %i.zm
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !69 ; 2 uses
  %i.aae = sext i32 %i.aad to i64
  %.idx353.us = shl nsw i64 %i.aae, 6
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx353.us
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aab
  %i.aah = icmp sgt i32 %i.zs, 0
  br i1 %i.aah, label %.preheader.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.038.i.us = phi ptr [ %i.aca, %._crit_edge.i.us ], [ %i.zc, %.preheader.lr.ph.i.us ] ; 7 uses
  %.03437.i.us = phi i32 [ %i.acb, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ] ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 16
  %i.aal = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 20
  %i.aam = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 24
  %i.aan = add nsw i32 %.03437.i.us, %i.yo
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us, %.preheader.i.us
  %.03236.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.abz, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 2 uses
  %.03335.i.us = phi ptr [ %i.aag, %.preheader.i.us ], [ %i.aby, %_ZN9btMatrixXIfE7addElemEiif.exit.i.us ] ; 7 uses
  %i.aao = load float, ptr %.038.i.us, align 4, !tbaa !103
  %i.aap = load float, ptr %.03335.i.us, align 4, !tbaa !103
  %i.aaq = fmul float %i.aao, %i.aap
  %i.aar = load float, ptr %i.aai, align 4, !tbaa !103
  %i.aas = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 4
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !103
  %i.aau = call float @llvm.fmuladd.f32(float %i.aar, float %i.aat, float %i.aaq)
  %i.aav = load float, ptr %i.aaj, align 4, !tbaa !103
  %i.aaw = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 8
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !103
  %i.aay = call float @llvm.fmuladd.f32(float %i.aav, float %i.aax, float %i.aau)
  %i.aaz = load float, ptr %i.aak, align 4, !tbaa !103
  %i.aba = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 16
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !103
  %i.abc = call float @llvm.fmuladd.f32(float %i.aaz, float %i.abb, float %i.aay)
  %i.abd = load float, ptr %i.aal, align 4, !tbaa !103
  %i.abe = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 20
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !103
  %i.abg = call float @llvm.fmuladd.f32(float %i.abd, float %i.abf, float %i.abc)
  %i.abh = load float, ptr %i.aam, align 4, !tbaa !103
  %i.abi = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 24
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !103
  %i.abk = call float @llvm.fmuladd.f32(float %i.abh, float %i.abj, float %i.abg) ; 3 uses
  %i.abl = fcmp une float %i.abk, 0.000000e+00
  br i1 %i.abl, label %bb.cs, label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

bb.cs:                                            ; preds = %bb.cr
  %i.abm = add nsw i32 %.03236.i.us, %i.aad
  %i.abn = load i32, ptr %i.yf, align 4, !tbaa !106
  %i.abo = mul nsw i32 %i.abn, %i.aan
  %i.abp = add nsw i32 %i.abm, %i.abo
  %i.abq = load ptr, ptr %i.yg, align 8, !tbaa !17
  %i.abr = sext i32 %i.abp to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abq, i64 %i.abr ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !103 ; 2 uses
  %i.abu = fcmp oeq float %i.abt, 0.000000e+00
  br i1 %i.abu, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.abv = fadd float %i.abk, %i.abt
  br label %.sink.split.i.i.us

bb.cu:                                            ; preds = %bb.cs
  %i.abw = load i32, ptr %i.yh, align 8, !tbaa !160
  %i.abx = add nsw i32 %i.abw, 1
  store i32 %i.abx, ptr %i.yh, align 8, !tbaa !160
  br label %.sink.split.i.i.us

.sink.split.i.i.us:                               ; preds = %bb.cu, %bb.ct
  %.sink.i.i.us = phi float [ %i.abk, %bb.cu ], [ %i.abv, %bb.ct ]
  store float %.sink.i.i.us, ptr %i.abs, align 4, !tbaa !103
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

_ZN9btMatrixXIfE7addElemEiif.exit.i.us:           ; preds = %.sink.split.i.i.us, %bb.cr
  %i.aby = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 32
  %i.abz = add nuw nsw i32 %.03236.i.us, 1        ; 2 uses
  %exitcond.not.i543.us = icmp eq i32 %i.abz, %i.zs
  br i1 %exitcond.not.i543.us, label %._crit_edge.i.us, label %bb.cr, !llvm.loop !176

._crit_edge.i.us:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us
  %i.aca = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 32
  %i.acb = add nuw nsw i32 %.03437.i.us, 1        ; 2 uses
  %exitcond40.not.i.us = icmp eq i32 %i.acb, %.fr802
  br i1 %exitcond40.not.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, label %.preheader.i.us, !llvm.loop !177

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us: ; preds = %._crit_edge.i.us, %.preheader.lr.ph.i.us, %.lr.ph776.split.us
  %i.acc = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %.0277.us = load i32, ptr %i.acc, align 4, !tbaa !69 ; 2 uses
  %i.acd = icmp sgt i32 %.0277.us, -1
  br i1 %i.acd, label %.lr.ph776.split.us, label %._crit_edge777, !llvm.loop !178

._crit_edge777:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, %bb.co
  %i.ace = sext i32 %i.yv to i64
  %i.acf = getelementptr inbounds [4 x i8], ptr %.sroa.10692.2, i64 %i.ace
  %.0276778 = load i32, ptr %i.acf, align 4, !tbaa !69 ; 2 uses
  %i.acg = icmp sgt i32 %.0276778, -1
  br i1 %i.acg, label %.lr.ph781, label %._crit_edge782

.lr.ph781:                                        ; preds = %._crit_edge777
  %i.ach = icmp sgt i32 %.fr802, 0
  %i.aci = sext i32 %.fr802 to i64
  %.idx351 = shl nuw nsw i64 %i.aci, 5
  %i.acj = getelementptr inbounds nuw i8, ptr %i.zc, i64 %.idx351
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph781, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556
  %.0276779 = phi i32 [ %.0276778, %.lr.ph781 ], [ %.0276, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556 ]
  %i.ack = zext nneg i32 %.0276779 to i64
  %i.acl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22658.0.lcssa, i64 %i.ack ; 3 uses
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !157
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 12
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !158 ; 2 uses
  %i.acp = sext i32 %i.acm to i64                 ; 3 uses
  %i.acq = icmp sgt i64 %indvars.iv860, %i.acp
  br i1 %i.acq, label %bb.cw, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556

bb.cw:                                            ; preds = %bb.cv
  %i.acr = icmp slt i32 %i.aco, %i.yd
  br i1 %i.acr, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.acs = load ptr, ptr %i.ye, align 8, !tbaa !150
  %i.act = getelementptr inbounds [8 x i8], ptr %i.acs, i64 %i.acp
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !151
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.acv = phi i32 [ %i.acu, %bb.cx ], [ %i.c, %bb.cw ] ; 3 uses
  %i.acw = sext i32 %i.aco to i64
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.acw
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !68
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 156
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !143
  %i.adb = icmp eq i32 %i.ada, %i.yv
  %i.adc = shl nsw i32 %i.acv, 3
  %i.add = select i1 %i.adb, i32 %i.adc, i32 0
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %i.acp
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !69 ; 2 uses
  %i.adh = sext i32 %i.adg to i64
  %.idx352 = shl nsw i64 %i.adh, 6
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx352
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.ade
  %i.adk = icmp sgt i32 %i.acv, 0
  %or.cond = select i1 %i.ach, i1 %i.adk, i1 false
  br i1 %or.cond, label %.preheader.i545, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556

.preheader.i545:                                  ; preds = %bb.cy, %._crit_edge.i552
  %.038.i546 = phi ptr [ %i.adr, %._crit_edge.i552 ], [ %i.acj, %bb.cy ] ; 7 uses
  %.03437.i547 = phi i32 [ %i.ads, %._crit_edge.i552 ], [ 0, %bb.cy ] ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.038.i546, i64 4
  %i.adm = getelementptr inbounds nuw i8, ptr %.038.i546, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %.038.i546, i64 16
  %i.ado = getelementptr inbounds nuw i8, ptr %.038.i546, i64 20
  %i.adp = getelementptr inbounds nuw i8, ptr %.038.i546, i64 24
  %i.adq = add nsw i32 %.03437.i547, %i.yo
  br label %bb.cz

._crit_edge.i552:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i550
  %i.adr = getelementptr inbounds nuw i8, ptr %.038.i546, i64 32
  %i.ads = add nuw nsw i32 %.03437.i547, 1        ; 2 uses
  %exitcond40.not.i553 = icmp eq i32 %i.ads, %.fr802
  br i1 %exitcond40.not.i553, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556, label %.preheader.i545, !llvm.loop !177

bb.cz:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i550, %.preheader.i545
  %.03236.i548 = phi i32 [ 0, %.preheader.i545 ], [ %i.afe, %_ZN9btMatrixXIfE7addElemEiif.exit.i550 ] ; 2 uses
  %.03335.i549 = phi ptr [ %i.adj, %.preheader.i545 ], [ %i.afd, %_ZN9btMatrixXIfE7addElemEiif.exit.i550 ] ; 7 uses
  %i.adt = load float, ptr %.038.i546, align 4, !tbaa !103
  %i.adu = load float, ptr %.03335.i549, align 4, !tbaa !103
  %i.adv = fmul float %i.adt, %i.adu
  %i.adw = load float, ptr %i.adl, align 4, !tbaa !103
  %i.adx = getelementptr inbounds nuw i8, ptr %.03335.i549, i64 4
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !103
  %i.adz = call float @llvm.fmuladd.f32(float %i.adw, float %i.ady, float %i.adv)
  %i.aea = load float, ptr %i.adm, align 4, !tbaa !103
  %i.aeb = getelementptr inbounds nuw i8, ptr %.03335.i549, i64 8
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !103
  %i.aed = call float @llvm.fmuladd.f32(float %i.aea, float %i.aec, float %i.adz)
  %i.aee = load float, ptr %i.adn, align 4, !tbaa !103
  %i.aef = getelementptr inbounds nuw i8, ptr %.03335.i549, i64 16
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !103
  %i.aeh = call float @llvm.fmuladd.f32(float %i.aee, float %i.aeg, float %i.aed)
  %i.aei = load float, ptr %i.ado, align 4, !tbaa !103
  %i.aej = getelementptr inbounds nuw i8, ptr %.03335.i549, i64 20
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !103
  %i.ael = call float @llvm.fmuladd.f32(float %i.aei, float %i.aek, float %i.aeh)
  %i.aem = load float, ptr %i.adp, align 4, !tbaa !103
  %i.aen = getelementptr inbounds nuw i8, ptr %.03335.i549, i64 24
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !103
  %i.aep = call float @llvm.fmuladd.f32(float %i.aem, float %i.aeo, float %i.ael) ; 3 uses
  %i.aeq = fcmp une float %i.aep, 0.000000e+00
  br i1 %i.aeq, label %bb.da, label %_ZN9btMatrixXIfE7addElemEiif.exit.i550

bb.da:                                            ; preds = %bb.cz
  %i.aer = add nsw i32 %.03236.i548, %i.adg
  %i.aes = load i32, ptr %i.yf, align 4, !tbaa !106
  %i.aet = mul nsw i32 %i.aes, %i.adq
  %i.aeu = add nsw i32 %i.aer, %i.aet
  %i.aev = load ptr, ptr %i.yg, align 8, !tbaa !17
  %i.aew = sext i32 %i.aeu to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.aew ; 2 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !103 ; 2 uses
  %i.aez = fcmp oeq float %i.aey, 0.000000e+00
  br i1 %i.aez, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.afa = load i32, ptr %i.yh, align 8, !tbaa !160
  %i.afb = add nsw i32 %i.afa, 1
  store i32 %i.afb, ptr %i.yh, align 8, !tbaa !160
  br label %.sink.split.i.i554

bb.dc:                                            ; preds = %bb.da
  %i.afc = fadd float %i.aep, %i.aey
  br label %.sink.split.i.i554

.sink.split.i.i554:                               ; preds = %bb.dc, %bb.db
  %.sink.i.i555 = phi float [ %i.aep, %bb.db ], [ %i.afc, %bb.dc ]
  store float %.sink.i.i555, ptr %i.aex, align 4, !tbaa !103
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i550

_ZN9btMatrixXIfE7addElemEiif.exit.i550:           ; preds = %.sink.split.i.i554, %bb.cz
  %i.afd = getelementptr inbounds nuw i8, ptr %.03335.i549, i64 32
  %i.afe = add nuw nsw i32 %.03236.i548, 1        ; 2 uses
  %exitcond.not.i551 = icmp eq i32 %i.afe, %i.acv
  br i1 %exitcond.not.i551, label %._crit_edge.i552, label %bb.cz, !llvm.loop !176

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556: ; preds = %._crit_edge.i552, %bb.cy, %bb.cv
  %i.aff = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %.0276 = load i32, ptr %i.aff, align 4, !tbaa !69 ; 2 uses
  %i.afg = icmp sgt i32 %.0276, -1
  br i1 %i.afg, label %bb.cv, label %._crit_edge782, !llvm.loop !179

._crit_edge782:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit556, %._crit_edge777
  %i.afh = add nsw i32 %.fr802, %.0278785         ; 2 uses
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1
  %i.afi = icmp slt i32 %i.afh, %i.xw
  br i1 %i.afi, label %bb.cm, label %._crit_edge787, !llvm.loop !180

bb.dd:                                            ; preds = %._crit_edge787
  %i.afj = load i32, ptr %i.d, align 4, !tbaa !40 ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph792, label %._crit_edge793

.lr.ph792:                                        ; preds = %bb.dd
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !39
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !144
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !67
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %i.mo, i64 28
  %scevgep1020 = getelementptr i8, ptr %i.ms, i64 -4
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph792, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit579
  %indvars.iv863 = phi i64 [ 0, %.lr.ph792 ], [ %indvars.iv.next864, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit579 ] ; 2 uses
  %.0275788 = phi i32 [ 0, %.lr.ph792 ], [ %i.aok, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit579 ] ; 8 uses
  %i.afv = sext i32 %.0275788 to i64              ; 3 uses
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.afm, i64 %i.afv
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !68
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 156
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !143
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr inbounds [248 x i8], ptr %i.afo, i64 %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 240
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !145
  %i.age = icmp slt i32 %.0275788, %i.afq
  br i1 %i.age, label %bb.df, label %.preheader.lr.ph.i557

bb.df:                                            ; preds = %bb.de
  %i.agf = load ptr, ptr %i.afr, align 8, !tbaa !150
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %indvars.iv863
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !151 ; 3 uses
  %i.agi = icmp sgt i32 %i.agh, 0
  br i1 %i.agi, label %.preheader.lr.ph.i557, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit579

.preheader.lr.ph.i557:                            ; preds = %bb.de, %bb.df
  %i.agj = phi i32 [ %i.agh, %bb.df ], [ %i.c, %bb.de ] ; 11 uses
  %.pn948 = shl nsw i64 %i.afv, 4                 ; 2 uses
  %i.agk = getelementptr [4 x i8], ptr %i.mo, i64 %.pn948 ; 3 uses
  %i.agl = getelementptr [4 x i8], ptr %i.ms, i64 %.pn948 ; 10 uses
  %i.agm = load i32, ptr %i.aft, align 4          ; 3 uses
  %i.agn = load ptr, ptr %i.afu, align 8          ; 4 uses
  %.promoted40.i = load i32, ptr %i.afs, align 8, !tbaa !160
  %wide.trip.count.i558 = zext nneg i32 %i.agj to i64 ; 6 uses
  %i.ago = add nsw i64 %wide.trip.count.i558, -1  ; 2 uses
  %i.agp = shl nsw i64 %i.afv, 6                  ; 2 uses
  %i.agq = add nsw i32 %i.agj, -1
  %i.agr = zext i32 %i.agq to i64
  %i.ags = shl nuw nsw i64 %i.agr, 5
  %i.agt = getelementptr i8, ptr %scevgep1015, i64 %i.agp
  %scevgep1016 = getelementptr i8, ptr %i.agt, i64 %i.ags
  %i.agu = add i32 %i.agm, 1
  %i.agv = mul i32 %.0275788, %i.agu
  %i.agw = shl nuw nsw i64 %wide.trip.count.i558, 2
  %scevgep1018 = getelementptr i8, ptr %i.agn, i64 %i.agw
  %i.agx = shl nuw nsw i64 %wide.trip.count.i558, 5
  %i.agy = getelementptr i8, ptr %scevgep1020, i64 %i.agp
end_hunk_1
begin_hunk_2_@_ZN12btMLCPSolver14createMLCPFastERK19btContactSolverInfo:bb.a
scalar.ph1049.prol.loopexit:                      ; preds = %scalar.ph1049.prol, %scalar.ph1049.preheader
  %indvars.iv.i584.unr = phi i64 [ %indvars.iv.i584.ph, %scalar.ph1049.preheader ], [ %indvars.iv.next.i585.prol, %scalar.ph1049.prol ]
  %i.aqs = sub nsw i64 %indvars.iv.i584.ph, %indvars.iv19.i
  %i.aqt = icmp ugt i64 %i.aqs, -4
  br i1 %i.aqt, label %._crit_edge.i587, label %scalar.ph1049

._crit_edge.i587:                                 ; preds = %scalar.ph1049.prol.loopexit, %scalar.ph1049, %middle.block1058
  %i.aqu = trunc nuw nsw i64 %indvars.iv19.i to i32
  %i.aqv = add i32 %.promoted.i, %i.aqu
  store i32 %i.aqv, ptr %i.aqg, align 8, !tbaa !160
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.i587, %.preheader.i581
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit, label %.preheader.i581, !llvm.loop !197

scalar.ph1049:                                    ; preds = %scalar.ph1049.prol.loopexit, %scalar.ph1049
  %indvars.iv.i584 = phi i64 [ %indvars.iv.next.i585.3, %scalar.ph1049 ], [ %indvars.iv.i584.unr, %scalar.ph1049.prol.loopexit ] ; 6 uses
  %i.aqw = getelementptr [4 x i8], ptr %i.aqj, i64 %indvars.iv.i584
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !103
  %i.aqy = mul nsw i64 %indvars.iv.i584, %i.aqh
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aqy
  store float %i.aqx, ptr %gep.i, align 4, !tbaa !103
  %indvars.iv.next.i585 = add nuw nsw i64 %indvars.iv.i584, 1 ; 2 uses
  %i.aqz = getelementptr [4 x i8], ptr %i.aqj, i64 %indvars.iv.next.i585
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !103
  %i.arb = mul nsw i64 %indvars.iv.next.i585, %i.aqh
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.arb
  store float %i.ara, ptr %gep.i.1, align 4, !tbaa !103
  %indvars.iv.next.i585.1 = add nuw nsw i64 %indvars.iv.i584, 2 ; 2 uses
  %i.arc = getelementptr [4 x i8], ptr %i.aqj, i64 %indvars.iv.next.i585.1
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !103
  %i.are = mul nsw i64 %indvars.iv.next.i585.1, %i.aqh
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.are
  store float %i.ard, ptr %gep.i.2, align 4, !tbaa !103
  %indvars.iv.next.i585.2 = add nuw nsw i64 %indvars.iv.i584, 3 ; 2 uses
  %i.arf = getelementptr [4 x i8], ptr %i.aqj, i64 %indvars.iv.next.i585.2
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !103
  %i.arh = mul nsw i64 %indvars.iv.next.i585.2, %i.aqh
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.arh
  store float %i.arg, ptr %gep.i.3, align 4, !tbaa !103
  %indvars.iv.next.i585.3 = add nuw nsw i64 %indvars.iv.i584, 4 ; 2 uses
  %exitcond.not.i586.3 = icmp eq i64 %indvars.iv.next.i585.3, %indvars.iv19.i
  br i1 %exitcond.not.i586.3, label %._crit_edge.i587, label %scalar.ph1049, !llvm.loop !198

_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit: ; preds = %bb.dp, %bb.do
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull @.str.16)
          to label %bb.dq unwind label %bb.ec

bb.dq:                                            ; preds = %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 4 uses
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !18 ; 3 uses
  %i.ark = icmp sgt i32 %i.e, %i.arj
  br i1 %i.ark, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 8, !tbaa !19
  %i.arn = icmp slt i32 %i.arm, %i.e
  br i1 %i.arn, label %bb.ds, label %..lr.ph.i_crit_edge.i588

..lr.ph.i_crit_edge.i588:                         ; preds = %bb.dr
  %.phi.trans.insert.i589 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre.i590 = load ptr, ptr %.phi.trans.insert.i589, align 8, !tbaa !17
  br label %.lr.ph.i.i591

bb.ds:                                            ; preds = %bb.dr
  br i1 %.not.i403, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i596, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aro = sext i32 %i.e to i64
  %i.arp = shl nsw i64 %i.aro, 2
  %i.arq = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.arp, i32 noundef 16)
          to label %.noexc607 unwind label %bb.ed

.noexc607:                                        ; preds = %bb.dt
  %.pre.i.i595 = load i32, ptr %i.ari, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i596

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i596: ; preds = %.noexc607, %bb.ds
  %i.arr = phi i32 [ %.pre.i.i595, %.noexc607 ], [ %i.arj, %bb.ds ] ; 3 uses
  %.0.i.i.i.i597 = phi ptr [ %i.arq, %.noexc607 ], [ null, %bb.ds ] ; 9 uses
  %i.ars = icmp sgt i32 %i.arr, 0
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !17 ; 9 uses
  br i1 %i.ars, label %.lr.ph.i.i.i.i602, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i598

.lr.ph.i.i.i.i602:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i596
  %i.arv = ptrtoaddr ptr %i.aru to i64
  %.0.i.i.i.i5971062 = ptrtoaddr ptr %.0.i.i.i.i597 to i64
  %wide.trip.count.i.i.i.i603 = zext nneg i32 %i.arr to i64 ; 5 uses
  %min.iters.check1065 = icmp ult i32 %i.arr, 8
  %i.arw = sub i64 %i.arv, %.0.i.i.i.i5971062
  %diff.check1063 = icmp ugt i64 %i.arw, -32
  %or.cond1097 = select i1 %min.iters.check1065, i1 true, i1 %diff.check1063
  br i1 %or.cond1097, label %scalar.ph1064.preheader, label %vector.ph1066

vector.ph1066:                                    ; preds = %.lr.ph.i.i.i.i602
  %n.vec1067 = and i64 %wide.trip.count.i.i.i.i603, 2147483640 ; 3 uses
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %vector.ph1066
  %index1069 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1072, %vector.body1068 ] ; 3 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i597, i64 %index1069 ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %index1069 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  %wide.load1070 = load <4 x float>, ptr %i.ary, align 4, !tbaa !103
  %wide.load1071 = load <4 x float>, ptr %i.arz, align 4, !tbaa !103
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 16
  store <4 x float> %wide.load1070, ptr %i.arx, align 4, !tbaa !103
  store <4 x float> %wide.load1071, ptr %i.asa, align 4, !tbaa !103
  %index.next1072 = add nuw i64 %index1069, 8     ; 2 uses
  %i.asb = icmp eq i64 %index.next1072, %n.vec1067
  br i1 %i.asb, label %middle.block1073, label %vector.body1068, !llvm.loop !199

middle.block1073:                                 ; preds = %vector.body1068
  %cmp.n1074 = icmp eq i64 %n.vec1067, %wide.trip.count.i.i.i.i603
  br i1 %cmp.n1074, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600, label %scalar.ph1064.preheader

scalar.ph1064.preheader:                          ; preds = %.lr.ph.i.i.i.i602, %middle.block1073
  %indvars.iv.i.i.i.i604.ph = phi i64 [ 0, %.lr.ph.i.i.i.i602 ], [ %n.vec1067, %middle.block1073 ] ; 3 uses
  %xtraiter1138 = and i64 %wide.trip.count.i.i.i.i603, 3 ; 2 uses
  %lcmp.mod1139.not = icmp eq i64 %xtraiter1138, 0
  br i1 %lcmp.mod1139.not, label %scalar.ph1064.prol.loopexit, label %scalar.ph1064.prol

scalar.ph1064.prol:                               ; preds = %scalar.ph1064.preheader, %scalar.ph1064.prol
  %indvars.iv.i.i.i.i604.prol = phi i64 [ %indvars.iv.next.i.i.i.i605.prol, %scalar.ph1064.prol ], [ %indvars.iv.i.i.i.i604.ph, %scalar.ph1064.preheader ] ; 3 uses
  %prol.iter1140 = phi i64 [ %prol.iter1140.next, %scalar.ph1064.prol ], [ 0, %scalar.ph1064.preheader ]
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i597, i64 %indvars.iv.i.i.i.i604.prol
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv.i.i.i.i604.prol
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !103
  store float %i.ase, ptr %i.asc, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i605.prol = add nuw nsw i64 %indvars.iv.i.i.i.i604.prol, 1 ; 2 uses
  %prol.iter1140.next = add i64 %prol.iter1140, 1 ; 2 uses
  %prol.iter1140.cmp.not = icmp eq i64 %prol.iter1140.next, %xtraiter1138
  br i1 %prol.iter1140.cmp.not, label %scalar.ph1064.prol.loopexit, label %scalar.ph1064.prol, !llvm.loop !200

scalar.ph1064.prol.loopexit:                      ; preds = %scalar.ph1064.prol, %scalar.ph1064.preheader
  %indvars.iv.i.i.i.i604.unr = phi i64 [ %indvars.iv.i.i.i.i604.ph, %scalar.ph1064.preheader ], [ %indvars.iv.next.i.i.i.i605.prol, %scalar.ph1064.prol ]
  %i.asf = sub nsw i64 %indvars.iv.i.i.i.i604.ph, %wide.trip.count.i.i.i.i603
  %i.asg = icmp ugt i64 %i.asf, -4
  br i1 %i.asg, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600, label %scalar.ph1064

scalar.ph1064:                                    ; preds = %scalar.ph1064.prol.loopexit, %scalar.ph1064
  %indvars.iv.i.i.i.i604 = phi i64 [ %indvars.iv.next.i.i.i.i605.3, %scalar.ph1064 ], [ %indvars.iv.i.i.i.i604.unr, %scalar.ph1064.prol.loopexit ] ; 6 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i597, i64 %indvars.iv.i.i.i.i604
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv.i.i.i.i604
  %i.asj = load float, ptr %i.asi, align 4, !tbaa !103
  store float %i.asj, ptr %i.ash, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i605 = add nuw nsw i64 %indvars.iv.i.i.i.i604, 1 ; 2 uses
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i597, i64 %indvars.iv.next.i.i.i.i605
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv.next.i.i.i.i605
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !103
  store float %i.asm, ptr %i.ask, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i605.1 = add nuw nsw i64 %indvars.iv.i.i.i.i604, 2 ; 2 uses
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i597, i64 %indvars.iv.next.i.i.i.i605.1
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv.next.i.i.i.i605.1
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !103
  store float %i.asp, ptr %i.asn, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i605.2 = add nuw nsw i64 %indvars.iv.i.i.i.i604, 3 ; 2 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i597, i64 %indvars.iv.next.i.i.i.i605.2
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv.next.i.i.i.i605.2
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !103
  store float %i.ass, ptr %i.asq, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i605.3 = add nuw nsw i64 %indvars.iv.i.i.i.i604, 4 ; 2 uses
  %exitcond.not.i.i.i.i606.3 = icmp eq i64 %indvars.iv.next.i.i.i.i605.3, %wide.trip.count.i.i.i.i603
  br i1 %exitcond.not.i.i.i.i606.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600, label %scalar.ph1064, !llvm.loop !201

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i598: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i596
  %.not.i5.i.i.i599 = icmp eq ptr %i.aru, null
  br i1 %.not.i5.i.i.i599, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i601, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600: ; preds = %scalar.ph1064.prol.loopexit, %scalar.ph1064, %middle.block1073, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i598
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.asu = load i8, ptr %i.ast, align 8, !tbaa !11, !range !63, !noundef !66
  %i.asv = trunc nuw i8 %i.asu to i1
  br i1 %i.asv, label %bb.du, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i601

bb.du:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aru)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i601 unwind label %bb.ed

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i601: ; preds = %bb.du, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i600, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i598
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i8 1, ptr %i.asw, align 8, !tbaa !11
  store ptr %.0.i.i.i.i597, ptr %i.art, align 8, !tbaa !17
  store i32 %i.e, ptr %i.arl, align 8, !tbaa !19
  br label %.lr.ph.i.i591

.lr.ph.i.i591:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i601, %..lr.ph.i_crit_edge.i588
  %i.asx = phi ptr [ %.pre.i590, %..lr.ph.i_crit_edge.i588 ], [ %.0.i.i.i.i597, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i601 ]
  %i.asy = sext i32 %i.arj to i64                 ; 2 uses
  %wide.trip.count.i.i592 = sext i32 %i.e to i64
  %i.asz = shl nsw i64 %i.asy, 2
  %scevgep.i593 = getelementptr i8, ptr %i.asx, i64 %i.asz
  %i.ata = sub nsw i64 %wide.trip.count.i.i592, %i.asy
  %i.atb = shl nuw nsw i64 %i.ata, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i593, i8 0, i64 %i.atb, i1 false), !tbaa !103
  br label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i591, %bb.dq
  store i32 %i.e, ptr %i.ari, align 4, !tbaa !18
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 3 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !18 ; 3 uses
  %i.ate = icmp sgt i32 %i.e, %i.atd
  br i1 %i.ate, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 8, !tbaa !19
  %i.ath = icmp slt i32 %i.atg, %i.e
  br i1 %i.ath, label %bb.dx, label %..lr.ph.i_crit_edge.i610

..lr.ph.i_crit_edge.i610:                         ; preds = %bb.dw
  %.phi.trans.insert.i611 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.pre.i612 = load ptr, ptr %.phi.trans.insert.i611, align 8, !tbaa !17
  br label %.lr.ph.i.i613

bb.dx:                                            ; preds = %bb.dw
  br i1 %.not.i403, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i618, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ati = sext i32 %i.e to i64
  %i.atj = shl nsw i64 %i.ati, 2
  %i.atk = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.atj, i32 noundef 16)
          to label %.noexc629 unwind label %bb.ed

.noexc629:                                        ; preds = %bb.dy
  %.pre.i.i617 = load i32, ptr %i.atc, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i618

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i618: ; preds = %.noexc629, %bb.dx
  %i.atl = phi i32 [ %.pre.i.i617, %.noexc629 ], [ %i.atd, %bb.dx ] ; 3 uses
  %.0.i.i.i.i619 = phi ptr [ %i.atk, %.noexc629 ], [ null, %bb.dx ] ; 9 uses
  %i.atm = icmp sgt i32 %i.atl, 0
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !17 ; 9 uses
  br i1 %i.atm, label %.lr.ph.i.i.i.i624, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i620

.lr.ph.i.i.i.i624:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i618
  %i.atp = ptrtoaddr ptr %i.ato to i64
  %.0.i.i.i.i6191077 = ptrtoaddr ptr %.0.i.i.i.i619 to i64
  %wide.trip.count.i.i.i.i625 = zext nneg i32 %i.atl to i64 ; 5 uses
  %min.iters.check1080 = icmp ult i32 %i.atl, 8
  %i.atq = sub i64 %i.atp, %.0.i.i.i.i6191077
  %diff.check1078 = icmp ugt i64 %i.atq, -32
  %or.cond1098 = select i1 %min.iters.check1080, i1 true, i1 %diff.check1078
  br i1 %or.cond1098, label %scalar.ph1079.preheader, label %vector.ph1081

vector.ph1081:                                    ; preds = %.lr.ph.i.i.i.i624
  %n.vec1082 = and i64 %wide.trip.count.i.i.i.i625, 2147483640 ; 3 uses
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %vector.ph1081
  %index1084 = phi i64 [ 0, %vector.ph1081 ], [ %index.next1087, %vector.body1083 ] ; 3 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i619, i64 %index1084 ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %index1084 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %wide.load1085 = load <4 x float>, ptr %i.ats, align 4, !tbaa !103
  %wide.load1086 = load <4 x float>, ptr %i.att, align 4, !tbaa !103
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 16
  store <4 x float> %wide.load1085, ptr %i.atr, align 4, !tbaa !103
  store <4 x float> %wide.load1086, ptr %i.atu, align 4, !tbaa !103
  %index.next1087 = add nuw i64 %index1084, 8     ; 2 uses
  %i.atv = icmp eq i64 %index.next1087, %n.vec1082
  br i1 %i.atv, label %middle.block1088, label %vector.body1083, !llvm.loop !202

middle.block1088:                                 ; preds = %vector.body1083
  %cmp.n1089 = icmp eq i64 %n.vec1082, %wide.trip.count.i.i.i.i625
  br i1 %cmp.n1089, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622, label %scalar.ph1079.preheader

scalar.ph1079.preheader:                          ; preds = %.lr.ph.i.i.i.i624, %middle.block1088
  %indvars.iv.i.i.i.i626.ph = phi i64 [ 0, %.lr.ph.i.i.i.i624 ], [ %n.vec1082, %middle.block1088 ] ; 3 uses
  %xtraiter1141 = and i64 %wide.trip.count.i.i.i.i625, 3 ; 2 uses
  %lcmp.mod1142.not = icmp eq i64 %xtraiter1141, 0
  br i1 %lcmp.mod1142.not, label %scalar.ph1079.prol.loopexit, label %scalar.ph1079.prol

scalar.ph1079.prol:                               ; preds = %scalar.ph1079.preheader, %scalar.ph1079.prol
  %indvars.iv.i.i.i.i626.prol = phi i64 [ %indvars.iv.next.i.i.i.i627.prol, %scalar.ph1079.prol ], [ %indvars.iv.i.i.i.i626.ph, %scalar.ph1079.preheader ] ; 3 uses
  %prol.iter1143 = phi i64 [ %prol.iter1143.next, %scalar.ph1079.prol ], [ 0, %scalar.ph1079.preheader ]
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i619, i64 %indvars.iv.i.i.i.i626.prol
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %indvars.iv.i.i.i.i626.prol
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !103
  store float %i.aty, ptr %i.atw, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i627.prol = add nuw nsw i64 %indvars.iv.i.i.i.i626.prol, 1 ; 2 uses
  %prol.iter1143.next = add i64 %prol.iter1143, 1 ; 2 uses
  %prol.iter1143.cmp.not = icmp eq i64 %prol.iter1143.next, %xtraiter1141
  br i1 %prol.iter1143.cmp.not, label %scalar.ph1079.prol.loopexit, label %scalar.ph1079.prol, !llvm.loop !203

scalar.ph1079.prol.loopexit:                      ; preds = %scalar.ph1079.prol, %scalar.ph1079.preheader
  %indvars.iv.i.i.i.i626.unr = phi i64 [ %indvars.iv.i.i.i.i626.ph, %scalar.ph1079.preheader ], [ %indvars.iv.next.i.i.i.i627.prol, %scalar.ph1079.prol ]
  %i.atz = sub nsw i64 %indvars.iv.i.i.i.i626.ph, %wide.trip.count.i.i.i.i625
  %i.aua = icmp ugt i64 %i.atz, -4
  br i1 %i.aua, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622, label %scalar.ph1079

scalar.ph1079:                                    ; preds = %scalar.ph1079.prol.loopexit, %scalar.ph1079
  %indvars.iv.i.i.i.i626 = phi i64 [ %indvars.iv.next.i.i.i.i627.3, %scalar.ph1079 ], [ %indvars.iv.i.i.i.i626.unr, %scalar.ph1079.prol.loopexit ] ; 6 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i619, i64 %indvars.iv.i.i.i.i626
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %indvars.iv.i.i.i.i626
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !103
  store float %i.aud, ptr %i.aub, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i627 = add nuw nsw i64 %indvars.iv.i.i.i.i626, 1 ; 2 uses
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i619, i64 %indvars.iv.next.i.i.i.i627
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %indvars.iv.next.i.i.i.i627
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !103
  store float %i.aug, ptr %i.aue, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i627.1 = add nuw nsw i64 %indvars.iv.i.i.i.i626, 2 ; 2 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i619, i64 %indvars.iv.next.i.i.i.i627.1
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %indvars.iv.next.i.i.i.i627.1
  %i.auj = load float, ptr %i.aui, align 4, !tbaa !103
  store float %i.auj, ptr %i.auh, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i627.2 = add nuw nsw i64 %indvars.iv.i.i.i.i626, 3 ; 2 uses
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i619, i64 %indvars.iv.next.i.i.i.i627.2
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %indvars.iv.next.i.i.i.i627.2
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !103
  store float %i.aum, ptr %i.auk, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i627.3 = add nuw nsw i64 %indvars.iv.i.i.i.i626, 4 ; 2 uses
  %exitcond.not.i.i.i.i628.3 = icmp eq i64 %indvars.iv.next.i.i.i.i627.3, %wide.trip.count.i.i.i.i625
  br i1 %exitcond.not.i.i.i.i628.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622, label %scalar.ph1079, !llvm.loop !204

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i620: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i618
  %.not.i5.i.i.i621 = icmp eq ptr %i.ato, null
  br i1 %.not.i5.i.i.i621, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i623, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622: ; preds = %scalar.ph1079.prol.loopexit, %scalar.ph1079, %middle.block1088, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i620
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.auo = load i8, ptr %i.aun, align 8, !tbaa !11, !range !63, !noundef !66
  %i.aup = trunc nuw i8 %i.auo to i1
  br i1 %i.aup, label %bb.dz, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i623

bb.dz:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ato)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i623 unwind label %bb.ed

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i623: ; preds = %bb.dz, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i622, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i620
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.auq, align 8, !tbaa !11
  store ptr %.0.i.i.i.i619, ptr %i.atn, align 8, !tbaa !17
  store i32 %i.e, ptr %i.atf, align 8, !tbaa !19
  br label %.lr.ph.i.i613

.lr.ph.i.i613:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i623, %..lr.ph.i_crit_edge.i610
  %i.aur = phi ptr [ %.pre.i612, %..lr.ph.i_crit_edge.i610 ], [ %.0.i.i.i.i619, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i623 ]
  %i.aus = sext i32 %i.atd to i64                 ; 2 uses
  %wide.trip.count.i.i614 = sext i32 %i.e to i64
  %i.aut = shl nsw i64 %i.aus, 2
  %scevgep.i615 = getelementptr i8, ptr %i.aur, i64 %i.aut
  %i.auu = sub nsw i64 %wide.trip.count.i.i614, %i.aus
  %i.auv = shl nuw nsw i64 %i.auu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i615, i8 0, i64 %i.auv, i1 false), !tbaa !103
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i613, %bb.dv
  store i32 %i.e, ptr %i.atc, align 4, !tbaa !18
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !205
  %i.auy = and i32 %i.aux, 4
  %.not = icmp eq i32 %i.auy, 0
  br i1 %.not, label %bb.ef, label %.preheader

.preheader:                                       ; preds = %bb.ea
  %i.auz = load i32, ptr %i.d, align 4, !tbaa !40 ; 4 uses
  %i.ava = icmp sgt i32 %i.auz, 0
  br i1 %i.ava, label %.lr.ph801, label %_ZN9btVectorXIfE7setZeroEv.exit637

.lr.ph801:                                        ; preds = %.preheader
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !39 ; 3 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !17 ; 3 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !17 ; 3 uses
  %wide.trip.count874 = zext nneg i32 %i.auz to i64 ; 2 uses
  %xtraiter1145 = and i64 %wide.trip.count874, 1
  %i.avh = icmp eq i32 %i.auz, 1
  br i1 %i.avh, label %.epil.preheader1144, label %.lr.ph801.new

.lr.ph801.new:                                    ; preds = %.lr.ph801
  %unroll_iter1148 = and i64 %wide.trip.count874, 2147483646
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dl
  %i.avi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.el

bb.ec:                                            ; preds = %_ZN9btMatrixXIfE24copyLowerToUpperTriangleEv.exit
  %i.avj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ed:                                            ; preds = %bb.dz, %bb.dy, %bb.du, %bb.dt
  %i.avk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #14
  br label %bb.ek

bb.ee:                                            ; preds = %bb.ee, %.lr.ph801.new
  %indvars.iv871 = phi i64 [ 0, %.lr.ph801.new ], [ %indvars.iv.next872.1, %bb.ee ] ; 5 uses
  %niter1149 = phi i64 [ 0, %.lr.ph801.new ], [ %niter1149.next.1, %bb.ee ]
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv871
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !68 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 100
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !206
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %indvars.iv871
  store float %i.avo, ptr %i.avp, align 4, !tbaa !103
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avm, i64 96
  %i.avr = load float, ptr %i.avq, align 8, !tbaa !207
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %indvars.iv871
  store float %i.avr, ptr %i.avs, align 4, !tbaa !103
  %indvars.iv.next872 = or disjoint i64 %indvars.iv871, 1 ; 3 uses
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv.next872
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !68 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 100
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !206
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %indvars.iv.next872
  store float %i.avw, ptr %i.avx, align 4, !tbaa !103
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avu, i64 96
  %i.avz = load float, ptr %i.avy, align 8, !tbaa !207
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %indvars.iv.next872
  store float %i.avz, ptr %i.awa, align 4, !tbaa !103
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871, 2 ; 2 uses
  %niter1149.next.1 = add i64 %niter1149, 2       ; 2 uses
  %niter1149.ncmp.1 = icmp eq i64 %niter1149.next.1, %unroll_iter1148
  br i1 %niter1149.ncmp.1, label %_ZN9btVectorXIfE7setZeroEv.exit637.loopexit.unr-lcssa, label %bb.ee, !llvm.loop !208

bb.ef:                                            ; preds = %bb.ea
  %i.awb = load i32, ptr %i.ari, align 4, !tbaa !18 ; 2 uses
  %.not.i632 = icmp eq i32 %i.awb, 0
  br i1 %.not.i632, label %_ZN9btVectorXIfE7setZeroEv.exit634, label %_Z9btSetZeroIfEvPT_i.exit.i633

_Z9btSetZeroIfEvPT_i.exit.i633:                   ; preds = %bb.ef
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !17
  %i.awe = sext i32 %i.awb to i64
  %i.awf = shl nuw nsw i64 %i.awe, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awd, i8 0, i64 %i.awf, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE7setZeroEv.exit634

_ZN9btVectorXIfE7setZeroEv.exit634:               ; preds = %_Z9btSetZeroIfEvPT_i.exit.i633, %bb.ef
  br i1 %.not.i403, label %_ZN9btVectorXIfE7setZeroEv.exit637, label %_Z9btSetZeroIfEvPT_i.exit.i636

_Z9btSetZeroIfEvPT_i.exit.i636:                   ; preds = %_ZN9btVectorXIfE7setZeroEv.exit634
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !17
  %i.awi = sext i32 %i.e to i64
  %i.awj = shl nuw nsw i64 %i.awi, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awh, i8 0, i64 %i.awj, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE7setZeroEv.exit637

_ZN9btVectorXIfE7setZeroEv.exit637.loopexit.unr-lcssa: ; preds = %bb.ee
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %_ZN9btVectorXIfE7setZeroEv.exit637, label %.epil.preheader1144

.epil.preheader1144:                              ; preds = %_ZN9btVectorXIfE7setZeroEv.exit637.loopexit.unr-lcssa, %.lr.ph801
  %indvars.iv871.epil.init = phi i64 [ 0, %.lr.ph801 ], [ %indvars.iv.next872.1, %_ZN9btVectorXIfE7setZeroEv.exit637.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1147 = trunc i32 %i.auz to i1
  call void @llvm.assume(i1 %lcmp.mod1147)
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv871.epil.init
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !68 ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 100
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !206
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %indvars.iv871.epil.init
  store float %i.awn, ptr %i.awo, align 4, !tbaa !103
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awl, i64 96
  %i.awq = load float, ptr %i.awp, align 8, !tbaa !207
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %indvars.iv871.epil.init
  store float %i.awq, ptr %i.awr, align 4, !tbaa !103
  br label %_ZN9btVectorXIfE7setZeroEv.exit637

_ZN9btVectorXIfE7setZeroEv.exit637:               ; preds = %.epil.preheader1144, %_ZN9btVectorXIfE7setZeroEv.exit637.loopexit.unr-lcssa, %.preheader, %_Z9btSetZeroIfEvPT_i.exit.i636, %_ZN9btVectorXIfE7setZeroEv.exit634
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %.not.i.i.i638.not = icmp eq ptr %.sroa.22658.0.lcssa, null
  br i1 %.not.i.i.i638.not, label %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZN9btVectorXIfE7setZeroEv.exit637
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.22658.0.lcssa)
          to label %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aws = landingpad { ptr, i32 }
          catch ptr null
  %i.awt = extractvalue { ptr, i32 } %i.aws, 0
  call void @__clang_call_terminate(ptr %i.awt) #13
  unreachable

_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit: ; preds = %_ZN9btVectorXIfE7setZeroEv.exit637, %bb.eg
  %.not.i.i.i639.not = icmp eq ptr %.sroa.10692.2, null
  br i1 %.not.i.i.i639.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10692.2)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.awu = landingpad { ptr, i32 }
          catch ptr null
  %i.awv = extractvalue { ptr, i32 } %i.awu, 0
  call void @__clang_call_terminate(ptr %i.awv) #13
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit, %bb.ei
  ret void

bb.ek:                                            ; preds = %bb.ed, %bb.ec
  %.pn346 = phi { ptr, i32 } [ %i.avk, %bb.ed ], [ %i.avj, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.el

bb.el:                                            ; preds = %bb.aw, %bb.be, %bb.ce, %bb.dm, %bb.eb, %bb.ek, %bb.ck, %bb.ch, %bb.az
  %.sroa.22658.5 = phi ptr [ %.sroa.22658.4, %bb.ce ], [ %.sroa.22658.0.lcssa, %bb.ek ], [ %.sroa.22658.0.lcssa, %bb.eb ], [ %.sroa.22658.0.lcssa, %bb.dm ], [ %.sroa.22658.0.lcssa, %bb.ck ], [ %.sroa.22658.0.lcssa, %bb.ch ], [ %.sroa.22658.6, %bb.be ], [ %.sroa.22658.6, %bb.az ], [ %.sroa.22658.6, %bb.aw ] ; 2 uses
  %.pn366.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn366.pn.pn.pn, %bb.ce ], [ %.pn346, %bb.ek ], [ %i.avi, %bb.eb ], [ %.pn354.pn.pn, %bb.dm ], [ %.pn342, %bb.ck ], [ %.pn340, %bb.ch ], [ %.pn337.pn, %bb.be ], [ %.pn335, %bb.az ], [ %.pn333, %bb.aw ] ; 2 uses
  %.not.i.i.i641.not = icmp eq ptr %.sroa.22658.5, null
  br i1 %.not.i.i.i641.not, label %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.22658.5)
          to label %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aww = landingpad { ptr, i32 }
          catch ptr null
  %i.awx = extractvalue { ptr, i32 } %i.aww, 0
  call void @__clang_call_terminate(ptr %i.awx) #13
  unreachable

_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643: ; preds = %bb.at, %bb.el, %bb.em
  %.pn366.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn366.pn.pn.pn.pn.pn.pn.pn, %bb.em ], [ %.pn331, %bb.at ], [ %.pn366.pn.pn.pn.pn.pn.pn.pn, %bb.el ] ; 2 uses
  %.not.i.i.i644.not = icmp eq ptr %.sroa.10692.2, null
  br i1 %.not.i.i.i644.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit646, label %bb.eo

bb.eo:                                            ; preds = %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10692.2)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit646 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.awy = landingpad { ptr, i32 }
          catch ptr null
  %i.awz = extractvalue { ptr, i32 } %i.awy, 0
  call void @__clang_call_terminate(ptr %i.awz) #13
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit646:         ; preds = %bb.eo, %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643, %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643.thread, %bb.t
  %.pn377.pn = phi { ptr, i32 } [ %i.hd, %bb.t ], [ %.pn, %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643.thread ], [ %.pn366.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayI11btJointNodeED2Ev.exit643 ], [ %.pn366.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eo ]
  resume { ptr, i32 } %.pn377.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12btMLCPSolver10createMLCPERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(1392) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 4 uses
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %4 = alloca %struct.btMatrixX, align 8          ; 15 uses
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  %6 = alloca %struct.btMatrixX, align 8          ; 15 uses
  %7 = alloca %class.CProfileSample, align 1      ; 6 uses
  %8 = alloca %struct.btMatrixX, align 8          ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 47 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 3 uses
  %i.g = icmp sgt i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN9btVectorXIfE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = icmp slt i32 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre.i.i, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 9 uses
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %i.r = ptrtoaddr ptr %i.q to i64
  %.0.i.i.i.i496 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.s = sub i64 %i.r, %.0.i.i.i.i496
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond660 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond660, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !103
  %wide.load497 = load <4 x float>, ptr %i.v, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x float> %wide.load, ptr %i.t, align 4, !tbaa !103
  store <4 x float> %wide.load497, ptr %i.w, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.prol
  %i.aa = load float, ptr %i.z, align 4, !tbaa !103
  store float %i.aa, ptr %i.y, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !210

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !103
  store float %i.af, ptr %i.ad, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !103
  store float %i.ai, ptr %i.ag, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i.1
  %i.al = load float, ptr %i.ak, align 4, !tbaa !103
  store float %i.al, ptr %i.aj, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i.2
  %i.ao = load float, ptr %i.an, align 4, !tbaa !103
  store float %i.ao, ptr %i.am, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !211

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !11, !range !63, !noundef !66
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 1, ptr %i.as, align 8, !tbaa !11
  store ptr %.0.i.i.i.i, ptr %i.p, align 8, !tbaa !17
  store i32 %i.d, ptr %i.h, align 8, !tbaa !19
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %i.at = phi ptr [ %.pre.i, %..lr.ph.i_crit_edge.i ], [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i ]
  %i.au = sext i32 %i.f to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.d to i64
  %i.av = shl nsw i64 %i.au, 2
  %scevgep.i = getelementptr i8, ptr %i.at, i64 %i.av
  %i.aw = sub nsw i64 %wide.trip.count.i.i, %i.au
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ax, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit

_ZN9btVectorXIfE6resizeEi.exit:                   ; preds = %bb.a, %.lr.ph.i.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !110
  %.not = icmp eq i32 %i.az, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18 ; 4 uses
  br i1 %.not, label %_ZN9btVectorXIfE6resizeEi.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZN9btVectorXIfE6resizeEi.exit
  %i.ba = icmp sgt i32 %i.d, %.pre
  br i1 %i.ba, label %bb.g, label %_ZN9btVectorXIfE6resizeEi.exit185

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !19
  %i.bd = icmp slt i32 %i.bc, %i.d
  br i1 %i.bd, label %bb.h, label %..lr.ph.i_crit_edge.i166

..lr.ph.i_crit_edge.i166:                         ; preds = %bb.g
  %.phi.trans.insert.i167 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.pre.i168 = load ptr, ptr %.phi.trans.insert.i167, align 8, !tbaa !17
  br label %.lr.ph.i.i169

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i172 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i172, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i174, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = sext i32 %i.d to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bf, i32 noundef 16)
  %.pre.i.i173 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i174

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i174: ; preds = %bb.i, %bb.h
  %i.bh = phi i32 [ %.pre.i.i173, %bb.i ], [ %.pre, %bb.h ] ; 3 uses
  %.0.i.i.i.i175 = phi ptr [ %i.bg, %bb.i ], [ null, %bb.h ] ; 9 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17 ; 9 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i180, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i176

.lr.ph.i.i.i.i180:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i174
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %.0.i.i.i.i175499 = ptrtoaddr ptr %.0.i.i.i.i175 to i64
  %wide.trip.count.i.i.i.i181 = zext nneg i32 %i.bh to i64 ; 5 uses
  %min.iters.check502 = icmp ult i32 %i.bh, 8
  %i.bm = sub i64 %i.bl, %.0.i.i.i.i175499
  %diff.check500 = icmp ugt i64 %i.bm, -32
  %or.cond661 = select i1 %min.iters.check502, i1 true, i1 %diff.check500
  br i1 %or.cond661, label %scalar.ph501.preheader, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph.i.i.i.i180
  %n.vec504 = and i64 %wide.trip.count.i.i.i.i181, 2147483640 ; 3 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i175, i64 %index506 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index506 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load507 = load <4 x float>, ptr %i.bo, align 4, !tbaa !103
  %wide.load508 = load <4 x float>, ptr %i.bp, align 4, !tbaa !103
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x float> %wide.load507, ptr %i.bn, align 4, !tbaa !103
  store <4 x float> %wide.load508, ptr %i.bq, align 4, !tbaa !103
  %index.next509 = add nuw i64 %index506, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.br, label %middle.block510, label %vector.body505, !llvm.loop !212

middle.block510:                                  ; preds = %vector.body505
  %cmp.n511 = icmp eq i64 %n.vec504, %wide.trip.count.i.i.i.i181
  br i1 %cmp.n511, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178, label %scalar.ph501.preheader

scalar.ph501.preheader:                           ; preds = %.lr.ph.i.i.i.i180, %middle.block510
  %indvars.iv.i.i.i.i182.ph = phi i64 [ 0, %.lr.ph.i.i.i.i180 ], [ %n.vec504, %middle.block510 ] ; 3 uses
  %xtraiter675 = and i64 %wide.trip.count.i.i.i.i181, 3 ; 2 uses
  %lcmp.mod676.not = icmp eq i64 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %scalar.ph501.prol.loopexit, label %scalar.ph501.prol

scalar.ph501.prol:                                ; preds = %scalar.ph501.preheader, %scalar.ph501.prol
  %indvars.iv.i.i.i.i182.prol = phi i64 [ %indvars.iv.next.i.i.i.i183.prol, %scalar.ph501.prol ], [ %indvars.iv.i.i.i.i182.ph, %scalar.ph501.preheader ] ; 3 uses
  %prol.iter677 = phi i64 [ %prol.iter677.next, %scalar.ph501.prol ], [ 0, %scalar.ph501.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i175, i64 %indvars.iv.i.i.i.i182.prol
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.i182.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !103
  store float %i.bu, ptr %i.bs, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i183.prol = add nuw nsw i64 %indvars.iv.i.i.i.i182.prol, 1 ; 2 uses
  %prol.iter677.next = add i64 %prol.iter677, 1   ; 2 uses
  %prol.iter677.cmp.not = icmp eq i64 %prol.iter677.next, %xtraiter675
  br i1 %prol.iter677.cmp.not, label %scalar.ph501.prol.loopexit, label %scalar.ph501.prol, !llvm.loop !213

scalar.ph501.prol.loopexit:                       ; preds = %scalar.ph501.prol, %scalar.ph501.preheader
  %indvars.iv.i.i.i.i182.unr = phi i64 [ %indvars.iv.i.i.i.i182.ph, %scalar.ph501.preheader ], [ %indvars.iv.next.i.i.i.i183.prol, %scalar.ph501.prol ]
  %i.bv = sub nsw i64 %indvars.iv.i.i.i.i182.ph, %wide.trip.count.i.i.i.i181
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178, label %scalar.ph501

scalar.ph501:                                     ; preds = %scalar.ph501.prol.loopexit, %scalar.ph501
  %indvars.iv.i.i.i.i182 = phi i64 [ %indvars.iv.next.i.i.i.i183.3, %scalar.ph501 ], [ %indvars.iv.i.i.i.i182.unr, %scalar.ph501.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i175, i64 %indvars.iv.i.i.i.i182
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.i182
  %i.bz = load float, ptr %i.by, align 4, !tbaa !103
  store float %i.bz, ptr %i.bx, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i183 = add nuw nsw i64 %indvars.iv.i.i.i.i182, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i175, i64 %indvars.iv.next.i.i.i.i183
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i183
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !103
  store float %i.cc, ptr %i.ca, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i183.1 = add nuw nsw i64 %indvars.iv.i.i.i.i182, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i175, i64 %indvars.iv.next.i.i.i.i183.1
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i183.1
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !103
  store float %i.cf, ptr %i.cd, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i183.2 = add nuw nsw i64 %indvars.iv.i.i.i.i182, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i175, i64 %indvars.iv.next.i.i.i.i183.2
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i183.2
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !103
  store float %i.ci, ptr %i.cg, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i183.3 = add nuw nsw i64 %indvars.iv.i.i.i.i182, 4 ; 2 uses
  %exitcond.not.i.i.i.i184.3 = icmp eq i64 %indvars.iv.next.i.i.i.i183.3, %wide.trip.count.i.i.i.i181
  br i1 %exitcond.not.i.i.i.i184.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178, label %scalar.ph501, !llvm.loop !214

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i176: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i174
  %.not.i5.i.i.i177 = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i.i.i177, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i179, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178: ; preds = %scalar.ph501.prol.loopexit, %scalar.ph501, %middle.block510, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i176
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !11, !range !63, !noundef !66
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.j, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i179

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i179

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i179: ; preds = %bb.j, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i178, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i176
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i8 1, ptr %i.cm, align 8, !tbaa !11
  store ptr %.0.i.i.i.i175, ptr %i.bj, align 8, !tbaa !17
  store i32 %i.d, ptr %i.bb, align 8, !tbaa !19
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i179, %..lr.ph.i_crit_edge.i166
  %i.cn = phi ptr [ %.pre.i168, %..lr.ph.i_crit_edge.i166 ], [ %.0.i.i.i.i175, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i179 ]
  %i.co = sext i32 %.pre to i64                   ; 2 uses
  %wide.trip.count.i.i170 = sext i32 %i.d to i64
  %i.cp = shl nsw i64 %i.co, 2
  %scevgep.i171 = getelementptr i8, ptr %i.cn, i64 %i.cp
  %i.cq = sub nsw i64 %wide.trip.count.i.i170, %i.co
  %i.cr = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i171, i8 0, i64 %i.cr, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit185

_ZN9btVectorXIfE6resizeEi.exit185:                ; preds = %bb.f, %.lr.ph.i.i169
  store i32 %i.d, ptr %.phi.trans.insert, align 4, !tbaa !18
  br label %_ZN9btVectorXIfE6resizeEi.exit._crit_edge

_ZN9btVectorXIfE6resizeEi.exit._crit_edge:        ; preds = %_ZN9btVectorXIfE6resizeEi.exit, %_ZN9btVectorXIfE6resizeEi.exit185
  %i.cs = phi i32 [ %i.d, %_ZN9btVectorXIfE6resizeEi.exit185 ], [ %.pre, %_ZN9btVectorXIfE6resizeEi.exit ] ; 2 uses
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %_ZN9btVectorXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %_ZN9btVectorXIfE6resizeEi.exit._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.cv = sext i32 %i.cs to i64
  %i.cw = shl nuw nsw i64 %i.cv, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cu, i8 0, i64 %i.cw, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE7setZeroEv.exit

_ZN9btVectorXIfE7setZeroEv.exit:                  ; preds = %_ZN9btVectorXIfE6resizeEi.exit._crit_edge, %_Z9btSetZeroIfEvPT_i.exit.i
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !18  ; 2 uses
  %.not.i186 = icmp eq i32 %i.cx, 0
  br i1 %.not.i186, label %_ZN9btVectorXIfE7setZeroEv.exit188, label %_Z9btSetZeroIfEvPT_i.exit.i187

_Z9btSetZeroIfEvPT_i.exit.i187:                   ; preds = %_ZN9btVectorXIfE7setZeroEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.da = sext i32 %i.cx to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cz, i8 0, i64 %i.db, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE7setZeroEv.exit188

_ZN9btVectorXIfE7setZeroEv.exit188:               ; preds = %_ZN9btVectorXIfE7setZeroEv.exit, %_Z9btSetZeroIfEvPT_i.exit.i187
  %i.dc = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9btVectorXIfE7setZeroEv.exit188
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 640
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.k

._crit_edge:                                      ; preds = %bb.n, %_ZN9btVectorXIfE7setZeroEv.exit188
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.di = mul nsw i32 %i.b, 6                     ; 3 uses
  tail call void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.dh, i32 noundef %i.di, i32 noundef %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.22)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !18 ; 2 uses
  %.not.i189 = icmp eq i32 %i.dk, 0
  br i1 %.not.i189, label %_ZN9btMatrixXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i190

_Z9btSetZeroIfEvPT_i.exit.i190:                   ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !17
  %i.dn = sext i32 %i.dk to i64
  %i.do = shl nuw nsw i64 %i.dn, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dm, i8 0, i64 %i.do, i1 false), !tbaa !103
  br label %_ZN9btMatrixXIfE7setZeroEv.exit

_ZN9btMatrixXIfE7setZeroEv.exit:                  ; preds = %._crit_edge, %_Z9btSetZeroIfEvPT_i.exit.i190
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.dp = icmp sgt i32 %i.b, 0
  br i1 %i.dp, label %.lr.ph393, label %bb.o

.lr.ph393:                                        ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !144
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !106 ; 7 uses
  %i.dv = add i32 %i.du, 1                        ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !17 ; 20 uses
  %.promoted = load i32, ptr %i.ds, align 8, !tbaa !160
  %wide.trip.count431 = zext nneg i32 %i.b to i64
  br label %bb.x

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !68 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 108 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !131 ; 2 uses
  %i.ec = fcmp une float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 112
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !132
  %i.ef = fdiv float %i.ee, %i.eb
  %i.eg = load ptr, ptr %i.df, align 8, !tbaa !17
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  store float %i.ef, ptr %i.eh, align 4, !tbaa !103
  %i.ei = load i32, ptr %i.ay, align 4, !tbaa !110
  %.not165 = icmp eq i32 %i.ei, 0
  br i1 %.not165, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 128
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !133
  %i.el = load float, ptr %i.ea, align 4, !tbaa !131
  %i.em = fdiv float %i.ek, %i.el
  %i.en = load ptr, ptr %i.dg, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv
  store float %i.em, ptr %i.eo, align 4, !tbaa !103
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !215

._crit_edge394:                                   ; preds = %.split390.us
  %i.ep = mul i32 %i.b, 12
  %i.eq = add i32 %.promoted, %i.ep
  store i32 %i.eq, ptr %i.ds, align 8, !tbaa !160
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge394, %_ZN9btMatrixXIfE7setZeroEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  call void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.er, i32 noundef %i.d, i32 noundef %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.22)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18 ; 2 uses
  %.not.i191 = icmp eq i32 %i.et, 0
  br i1 %.not.i191, label %_ZN9btMatrixXIfE7setZeroEv.exit193, label %_Z9btSetZeroIfEvPT_i.exit.i192

_Z9btSetZeroIfEvPT_i.exit.i192:                   ; preds = %bb.o
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !17
  %i.ew = sext i32 %i.et to i64
  %i.ex = shl nuw nsw i64 %i.ew, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ev, i8 0, i64 %i.ex, i1 false), !tbaa !103
  br label %_ZN9btMatrixXIfE7setZeroEv.exit193

_ZN9btMatrixXIfE7setZeroEv.exit193:               ; preds = %bb.o, %_Z9btSetZeroIfEvPT_i.exit.i192
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !18 ; 3 uses
  %i.fa = icmp sgt i32 %i.d, %i.ez
  br i1 %i.fa, label %bb.p, label %_ZN9btVectorXIfE6resizeEi.exit213

bb.p:                                             ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit193
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !19
  %i.fd = icmp slt i32 %i.fc, %i.d
  br i1 %i.fd, label %bb.q, label %..lr.ph.i_crit_edge.i194

..lr.ph.i_crit_edge.i194:                         ; preds = %bb.p
  %.phi.trans.insert.i195 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.pre.i196 = load ptr, ptr %.phi.trans.insert.i195, align 8, !tbaa !17
  br label %.lr.ph.i.i197

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i200 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i200, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i202, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = sext i32 %i.d to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ff, i32 noundef 16)
  %.pre.i.i201 = load i32, ptr %i.ey, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i202

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i202: ; preds = %bb.r, %bb.q
  %i.fh = phi i32 [ %.pre.i.i201, %bb.r ], [ %i.ez, %bb.q ] ; 3 uses
  %.0.i.i.i.i203 = phi ptr [ %i.fg, %bb.r ], [ null, %bb.q ] ; 9 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !17 ; 9 uses
  br i1 %i.fi, label %.lr.ph.i.i.i.i208, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i204

.lr.ph.i.i.i.i208:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i202
  %i.fl = ptrtoaddr ptr %i.fk to i64
  %.0.i.i.i.i203514 = ptrtoaddr ptr %.0.i.i.i.i203 to i64
  %wide.trip.count.i.i.i.i209 = zext nneg i32 %i.fh to i64 ; 5 uses
  %min.iters.check517 = icmp ult i32 %i.fh, 8
  %i.fm = sub i64 %i.fl, %.0.i.i.i.i203514
  %diff.check515 = icmp ugt i64 %i.fm, -32
  %or.cond662 = select i1 %min.iters.check517, i1 true, i1 %diff.check515
  br i1 %or.cond662, label %scalar.ph516.preheader, label %vector.ph518

vector.ph518:                                     ; preds = %.lr.ph.i.i.i.i208
  %n.vec519 = and i64 %wide.trip.count.i.i.i.i209, 2147483640 ; 3 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next524, %vector.body520 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i203, i64 %index521 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index521 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load522 = load <4 x float>, ptr %i.fo, align 4, !tbaa !103
  %wide.load523 = load <4 x float>, ptr %i.fp, align 4, !tbaa !103
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <4 x float> %wide.load522, ptr %i.fn, align 4, !tbaa !103
  store <4 x float> %wide.load523, ptr %i.fq, align 4, !tbaa !103
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next524, %n.vec519
  br i1 %i.fr, label %middle.block525, label %vector.body520, !llvm.loop !216

middle.block525:                                  ; preds = %vector.body520
  %cmp.n526 = icmp eq i64 %n.vec519, %wide.trip.count.i.i.i.i209
  br i1 %cmp.n526, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206, label %scalar.ph516.preheader

scalar.ph516.preheader:                           ; preds = %.lr.ph.i.i.i.i208, %middle.block525
  %indvars.iv.i.i.i.i210.ph = phi i64 [ 0, %.lr.ph.i.i.i.i208 ], [ %n.vec519, %middle.block525 ] ; 3 uses
  %xtraiter678 = and i64 %wide.trip.count.i.i.i.i209, 3 ; 2 uses
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %scalar.ph516.prol.loopexit, label %scalar.ph516.prol

scalar.ph516.prol:                                ; preds = %scalar.ph516.preheader, %scalar.ph516.prol
  %indvars.iv.i.i.i.i210.prol = phi i64 [ %indvars.iv.next.i.i.i.i211.prol, %scalar.ph516.prol ], [ %indvars.iv.i.i.i.i210.ph, %scalar.ph516.preheader ] ; 3 uses
  %prol.iter680 = phi i64 [ %prol.iter680.next, %scalar.ph516.prol ], [ 0, %scalar.ph516.preheader ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i203, i64 %indvars.iv.i.i.i.i210.prol
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i.i.i.i210.prol
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !103
  store float %i.fu, ptr %i.fs, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i211.prol = add nuw nsw i64 %indvars.iv.i.i.i.i210.prol, 1 ; 2 uses
  %prol.iter680.next = add i64 %prol.iter680, 1   ; 2 uses
  %prol.iter680.cmp.not = icmp eq i64 %prol.iter680.next, %xtraiter678
  br i1 %prol.iter680.cmp.not, label %scalar.ph516.prol.loopexit, label %scalar.ph516.prol, !llvm.loop !217

scalar.ph516.prol.loopexit:                       ; preds = %scalar.ph516.prol, %scalar.ph516.preheader
  %indvars.iv.i.i.i.i210.unr = phi i64 [ %indvars.iv.i.i.i.i210.ph, %scalar.ph516.preheader ], [ %indvars.iv.next.i.i.i.i211.prol, %scalar.ph516.prol ]
  %i.fv = sub nsw i64 %indvars.iv.i.i.i.i210.ph, %wide.trip.count.i.i.i.i209
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206, label %scalar.ph516

scalar.ph516:                                     ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516
  %indvars.iv.i.i.i.i210 = phi i64 [ %indvars.iv.next.i.i.i.i211.3, %scalar.ph516 ], [ %indvars.iv.i.i.i.i210.unr, %scalar.ph516.prol.loopexit ] ; 6 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i203, i64 %indvars.iv.i.i.i.i210
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i.i.i.i210
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !103
  store float %i.fz, ptr %i.fx, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i211 = add nuw nsw i64 %indvars.iv.i.i.i.i210, 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i203, i64 %indvars.iv.next.i.i.i.i211
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i211
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !103
  store float %i.gc, ptr %i.ga, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i211.1 = add nuw nsw i64 %indvars.iv.i.i.i.i210, 2 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i203, i64 %indvars.iv.next.i.i.i.i211.1
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i211.1
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !103
  store float %i.gf, ptr %i.gd, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i211.2 = add nuw nsw i64 %indvars.iv.i.i.i.i210, 3 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i203, i64 %indvars.iv.next.i.i.i.i211.2
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i211.2
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !103
  store float %i.gi, ptr %i.gg, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i211.3 = add nuw nsw i64 %indvars.iv.i.i.i.i210, 4 ; 2 uses
  %exitcond.not.i.i.i.i212.3 = icmp eq i64 %indvars.iv.next.i.i.i.i211.3, %wide.trip.count.i.i.i.i209
  br i1 %exitcond.not.i.i.i.i212.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206, label %scalar.ph516, !llvm.loop !218

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i204: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i202
  %.not.i5.i.i.i205 = icmp eq ptr %i.fk, null
  br i1 %.not.i5.i.i.i205, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i207, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206: ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516, %middle.block525, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i204
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !11, !range !63, !noundef !66
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.s, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i207

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fk)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i207

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i207: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i206, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i204
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 1, ptr %i.gm, align 8, !tbaa !11
  store ptr %.0.i.i.i.i203, ptr %i.fj, align 8, !tbaa !17
  store i32 %i.d, ptr %i.fb, align 8, !tbaa !19
  br label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i207, %..lr.ph.i_crit_edge.i194
  %i.gn = phi ptr [ %.pre.i196, %..lr.ph.i_crit_edge.i194 ], [ %.0.i.i.i.i203, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i207 ]
  %i.go = sext i32 %i.ez to i64                   ; 2 uses
  %wide.trip.count.i.i198 = sext i32 %i.d to i64
  %i.gp = shl nsw i64 %i.go, 2
  %scevgep.i199 = getelementptr i8, ptr %i.gn, i64 %i.gp
  %i.gq = sub nsw i64 %wide.trip.count.i.i198, %i.go
  %i.gr = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i199, i8 0, i64 %i.gr, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit213

_ZN9btVectorXIfE6resizeEi.exit213:                ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit193, %.lr.ph.i.i197
  store i32 %i.d, ptr %i.ey, align 4, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !18 ; 3 uses
  %i.gu = icmp sgt i32 %i.d, %i.gt
  br i1 %i.gu, label %bb.t, label %_ZN9btVectorXIfE6resizeEi.exit233

bb.t:                                             ; preds = %_ZN9btVectorXIfE6resizeEi.exit213
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !19
  %i.gx = icmp slt i32 %i.gw, %i.d
  br i1 %i.gx, label %bb.u, label %..lr.ph.i_crit_edge.i214

..lr.ph.i_crit_edge.i214:                         ; preds = %bb.t
  %.phi.trans.insert.i215 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.pre.i216 = load ptr, ptr %.phi.trans.insert.i215, align 8, !tbaa !17
  br label %.lr.ph.i.i217

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i220 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i220, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gy = sext i32 %i.d to i64
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.gz, i32 noundef 16)
  %.pre.i.i221 = load i32, ptr %i.gs, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222: ; preds = %bb.v, %bb.u
  %i.hb = phi i32 [ %.pre.i.i221, %bb.v ], [ %i.gt, %bb.u ] ; 3 uses
  %.0.i.i.i.i223 = phi ptr [ %i.ha, %bb.v ], [ null, %bb.u ] ; 9 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !17 ; 9 uses
  br i1 %i.hc, label %.lr.ph.i.i.i.i228, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224

.lr.ph.i.i.i.i228:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222
  %i.hf = ptrtoaddr ptr %i.he to i64
  %.0.i.i.i.i223529 = ptrtoaddr ptr %.0.i.i.i.i223 to i64
  %wide.trip.count.i.i.i.i229 = zext nneg i32 %i.hb to i64 ; 5 uses
  %min.iters.check532 = icmp ult i32 %i.hb, 8
  %i.hg = sub i64 %i.hf, %.0.i.i.i.i223529
  %diff.check530 = icmp ugt i64 %i.hg, -32
  %or.cond663 = select i1 %min.iters.check532, i1 true, i1 %diff.check530
  br i1 %or.cond663, label %scalar.ph531.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %.lr.ph.i.i.i.i228
  %n.vec534 = and i64 %wide.trip.count.i.i.i.i229, 2147483640 ; 3 uses
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph533
  %index536 = phi i64 [ 0, %vector.ph533 ], [ %index.next539, %vector.body535 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %index536 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index536 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load537 = load <4 x float>, ptr %i.hi, align 4, !tbaa !103
  %wide.load538 = load <4 x float>, ptr %i.hj, align 4, !tbaa !103
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %wide.load537, ptr %i.hh, align 4, !tbaa !103
  store <4 x float> %wide.load538, ptr %i.hk, align 4, !tbaa !103
  %index.next539 = add nuw i64 %index536, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next539, %n.vec534
  br i1 %i.hl, label %middle.block540, label %vector.body535, !llvm.loop !219

middle.block540:                                  ; preds = %vector.body535
  %cmp.n541 = icmp eq i64 %n.vec534, %wide.trip.count.i.i.i.i229
  br i1 %cmp.n541, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, label %scalar.ph531.preheader

scalar.ph531.preheader:                           ; preds = %.lr.ph.i.i.i.i228, %middle.block540
  %indvars.iv.i.i.i.i230.ph = phi i64 [ 0, %.lr.ph.i.i.i.i228 ], [ %n.vec534, %middle.block540 ] ; 3 uses
  %xtraiter681 = and i64 %wide.trip.count.i.i.i.i229, 3 ; 2 uses
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %scalar.ph531.prol.loopexit, label %scalar.ph531.prol

scalar.ph531.prol:                                ; preds = %scalar.ph531.preheader, %scalar.ph531.prol
  %indvars.iv.i.i.i.i230.prol = phi i64 [ %indvars.iv.next.i.i.i.i231.prol, %scalar.ph531.prol ], [ %indvars.iv.i.i.i.i230.ph, %scalar.ph531.preheader ] ; 3 uses
  %prol.iter683 = phi i64 [ %prol.iter683.next, %scalar.ph531.prol ], [ 0, %scalar.ph531.preheader ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.i.i.i.i230.prol
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i230.prol
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !103
  store float %i.ho, ptr %i.hm, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i231.prol = add nuw nsw i64 %indvars.iv.i.i.i.i230.prol, 1 ; 2 uses
  %prol.iter683.next = add i64 %prol.iter683, 1   ; 2 uses
  %prol.iter683.cmp.not = icmp eq i64 %prol.iter683.next, %xtraiter681
  br i1 %prol.iter683.cmp.not, label %scalar.ph531.prol.loopexit, label %scalar.ph531.prol, !llvm.loop !220

scalar.ph531.prol.loopexit:                       ; preds = %scalar.ph531.prol, %scalar.ph531.preheader
  %indvars.iv.i.i.i.i230.unr = phi i64 [ %indvars.iv.i.i.i.i230.ph, %scalar.ph531.preheader ], [ %indvars.iv.next.i.i.i.i231.prol, %scalar.ph531.prol ]
  %i.hp = sub nsw i64 %indvars.iv.i.i.i.i230.ph, %wide.trip.count.i.i.i.i229
  %i.hq = icmp ugt i64 %i.hp, -4
  br i1 %i.hq, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, label %scalar.ph531

scalar.ph531:                                     ; preds = %scalar.ph531.prol.loopexit, %scalar.ph531
  %indvars.iv.i.i.i.i230 = phi i64 [ %indvars.iv.next.i.i.i.i231.3, %scalar.ph531 ], [ %indvars.iv.i.i.i.i230.unr, %scalar.ph531.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.i.i.i.i230
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i230
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !103
  store float %i.ht, ptr %i.hr, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i231 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.next.i.i.i.i231
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i231
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !103
  store float %i.hw, ptr %i.hu, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i231.1 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.next.i.i.i.i231.1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i231.1
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !103
  store float %i.hz, ptr %i.hx, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i231.2 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 3 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.next.i.i.i.i231.2
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i231.2
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !103
  store float %i.ic, ptr %i.ia, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i231.3 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 4 ; 2 uses
  %exitcond.not.i.i.i.i232.3 = icmp eq i64 %indvars.iv.next.i.i.i.i231.3, %wide.trip.count.i.i.i.i229
  br i1 %exitcond.not.i.i.i.i232.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, label %scalar.ph531, !llvm.loop !221

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222
  %.not.i5.i.i.i225 = icmp eq ptr %i.he, null
  br i1 %.not.i5.i.i.i225, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226: ; preds = %scalar.ph531.prol.loopexit, %scalar.ph531, %middle.block540, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !11, !range !63, !noundef !66
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.w, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227

bb.w:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.he)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 1, ptr %i.ig, align 8, !tbaa !11
  store ptr %.0.i.i.i.i223, ptr %i.hd, align 8, !tbaa !17
  store i32 %i.d, ptr %i.gv, align 8, !tbaa !19
  br label %.lr.ph.i.i217

.lr.ph.i.i217:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227, %..lr.ph.i_crit_edge.i214
  %i.ih = phi ptr [ %.pre.i216, %..lr.ph.i_crit_edge.i214 ], [ %.0.i.i.i.i223, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227 ]
  %i.ii = sext i32 %i.gt to i64                   ; 2 uses
  %wide.trip.count.i.i218 = sext i32 %i.d to i64
  %i.ij = shl nsw i64 %i.ii, 2
  %scevgep.i219 = getelementptr i8, ptr %i.ih, i64 %i.ij
  %i.ik = sub nsw i64 %wide.trip.count.i.i218, %i.ii
  %i.il = shl nuw nsw i64 %i.ik, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i219, i8 0, i64 %i.il, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit233

_ZN9btVectorXIfE6resizeEi.exit233:                ; preds = %_ZN9btVectorXIfE6resizeEi.exit213, %.lr.ph.i.i217
  store i32 %i.d, ptr %i.gs, align 4, !tbaa !18
  br i1 %i.dc, label %.lr.ph397, label %._crit_edge398

.lr.ph397:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit233
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !39
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !144 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %wide.trip.count436 = zext nneg i32 %i.d to i64
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph393, %.split390.us
  %indvars.iv428 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next429, %.split390.us ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [248 x i8], ptr %i.dr, i64 %indvars.iv428 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 128
  %i.iz = mul nuw nsw i64 %indvars.iv428, 6       ; 8 uses
  %i.ja = load float, ptr %i.iy, align 4, !tbaa !103
  %i.jb = trunc nuw nsw i64 %i.iz to i32
  %i.jc = mul i32 %i.dv, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.jd
  store float %i.ja, ptr %i.je, align 4, !tbaa !103
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 132
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !103
  %i.jh = trunc i64 %i.iz to i32
  %i.ji = or disjoint i32 %i.jh, 1
  %i.jj = mul i32 %i.dv, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.jk
  store float %i.jg, ptr %i.jl, align 4, !tbaa !103
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 136
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !103
  %i.jo = trunc i64 %i.iz to i32
  %i.jp = add i32 %i.jo, 2
  %i.jq = mul i32 %i.dv, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.jr
  store float %i.jn, ptr %i.js, align 4, !tbaa !103
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ix, i64 240
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !145 ; 10 uses
  %i.jv = add nuw nsw i64 %i.iz, 3                ; 4 uses
  %.not164 = icmp eq ptr %i.ju, null
  br i1 %.not164, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.x
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 372
  %i.jx = trunc i64 %i.jv to i32
  %i.jy = mul i32 %i.du, %i.jx
  %i.jz = trunc nsw i64 %i.jv to i32              ; 3 uses
  %i.ka = add i32 %i.jy, %i.jz                    ; 3 uses
  %i.kb = load float, ptr %i.jw, align 4, !tbaa !103
  %i.kc = sext i32 %i.ka to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.kc
  store float %i.kb, ptr %i.kd, align 4, !tbaa !103
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 376
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !103
  %i.kg = add i32 %i.ka, 1
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.kh
  store float %i.kf, ptr %i.ki, align 4, !tbaa !103
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ju, i64 380
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !103
  %i.kl = add i32 %i.ka, 2
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.km
  store float %i.kk, ptr %i.kn, align 4, !tbaa !103
  %i.ko = trunc i64 %i.iz to i32
  %i.kp = add i32 %i.ko, 4
  %i.kq = mul i32 %i.kp, %i.du
  %i.kr = add i32 %i.kq, %i.jz                    ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ju, i64 388
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !103
  %i.ku = sext i32 %i.kr to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ku
  store float %i.kt, ptr %i.kv, align 4, !tbaa !103
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ju, i64 392
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !103
  %i.ky = add i32 %i.kr, 1
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.kz
  store float %i.kx, ptr %i.la, align 4, !tbaa !103
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ju, i64 396
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !103
  %i.ld = add i32 %i.kr, 2
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.le
  store float %i.lc, ptr %i.lf, align 4, !tbaa !103
  %i.lg = trunc i64 %i.iz to i32
  %i.lh = add i32 %i.lg, 5
  %i.li = mul i32 %i.lh, %i.du
  %i.lj = add i32 %i.li, %i.jz                    ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ju, i64 404
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !103
  %i.lm = sext i32 %i.lj to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.lm
  store float %i.ll, ptr %i.ln, align 4, !tbaa !103
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ju, i64 408
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !103
  %i.lq = add i32 %i.lj, 1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.lr
  store float %i.lp, ptr %i.ls, align 4, !tbaa !103
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ju, i64 412
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !103
  br label %.split390.us

.preheader.us.preheader:                          ; preds = %bb.x
  %i.lv = trunc i64 %i.jv to i32
  %i.lw = mul i32 %i.du, %i.lv
  %i.lx = trunc nsw i64 %i.jv to i32              ; 3 uses
  %i.ly = add i32 %i.lw, %i.lx                    ; 3 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.lz
  store float 0.000000e+00, ptr %i.ma, align 4, !tbaa !103
  %i.mb = add i32 %i.ly, 1
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mc
  store float 0.000000e+00, ptr %i.md, align 4, !tbaa !103
  %i.me = add i32 %i.ly, 2
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mf
  store float 0.000000e+00, ptr %i.mg, align 4, !tbaa !103
  %i.mh = trunc i64 %i.iz to i32
  %i.mi = add i32 %i.mh, 4
  %i.mj = mul i32 %i.mi, %i.du
  %i.mk = add i32 %i.mj, %i.lx                    ; 3 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ml
  store float 0.000000e+00, ptr %i.mm, align 4, !tbaa !103
  %i.mn = add i32 %i.mk, 1
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mo
  store float 0.000000e+00, ptr %i.mp, align 4, !tbaa !103
  %i.mq = add i32 %i.mk, 2
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mr
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !103
  %i.mt = trunc i64 %i.iz to i32
  %i.mu = add i32 %i.mt, 5
  %i.mv = mul i32 %i.mu, %i.du
  %i.mw = add i32 %i.mv, %i.lx                    ; 3 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mx
  store float 0.000000e+00, ptr %i.my, align 4, !tbaa !103
  %i.mz = add i32 %i.mw, 1
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.na
  store float 0.000000e+00, ptr %i.nb, align 4, !tbaa !103
  br label %.split390.us

.split390.us:                                     ; preds = %.preheader.preheader, %.preheader.us.preheader
  %.sink495 = phi i32 [ %i.lj, %.preheader.preheader ], [ %i.mw, %.preheader.us.preheader ]
  %.sink = phi float [ %i.lu, %.preheader.preheader ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.nc = add i32 %.sink495, 2
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.nd
  store float %.sink, ptr %i.ne, align 4, !tbaa !103
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge394, label %bb.x, !llvm.loop !222

._crit_edge398:                                   ; preds = %bb.ag, %_ZN9btVectorXIfE6resizeEi.exit233
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZNK9btMatrixXIfE9transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.btMatrixX) align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.er)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.nf, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 20, i1 false)
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !18 ; 10 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 1244 ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !18 ; 3 uses
  %i.nk = icmp sgt i32 %i.nh, %i.nj
  br i1 %i.nk, label %bb.y, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i: ; preds = %._crit_edge398
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.pre10.i.i.i = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !17
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i

bb.y:                                             ; preds = %._crit_edge398
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !19
  %i.nn = icmp slt i32 %i.nm, %i.nh
  br i1 %i.nn, label %bb.z, label %..lr.ph.i_crit_edge.i.i.i

..lr.ph.i_crit_edge.i.i.i:                        ; preds = %bb.y
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !17
  br label %.lr.ph.i.i.i.i234

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i.i.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.no = sext i32 %i.nh to i64
  %i.np = shl nsw i64 %i.no, 2
  %i.nq = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.np, i32 noundef 16)
          to label %.noexc unwind label %bb.br

.noexc:                                           ; preds = %bb.aa
  %.pre.i.i.i.i = load i32, ptr %i.ni, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i: ; preds = %.noexc, %bb.z
  %i.nr = phi i32 [ %.pre.i.i.i.i, %.noexc ], [ %i.nj, %bb.z ] ; 3 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.nq, %.noexc ], [ null, %bb.z ] ; 9 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !17 ; 9 uses
  br i1 %i.ns, label %.lr.ph.i.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i
  %i.nv = ptrtoaddr ptr %i.nu to i64
  %.0.i.i.i.i.i.i544 = ptrtoaddr ptr %.0.i.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.nr to i64 ; 5 uses
  %min.iters.check547 = icmp ult i32 %i.nr, 8
  %i.nw = sub i64 %i.nv, %.0.i.i.i.i.i.i544
  %diff.check545 = icmp ugt i64 %i.nw, -32
  %or.cond664 = select i1 %min.iters.check547, i1 true, i1 %diff.check545
  br i1 %or.cond664, label %scalar.ph546.preheader, label %vector.ph548

vector.ph548:                                     ; preds = %.lr.ph.i.i.i.i.i.i
  %n.vec549 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next554, %vector.body550 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %index551 ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index551 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %wide.load552 = load <4 x float>, ptr %i.ny, align 4, !tbaa !103
  %wide.load553 = load <4 x float>, ptr %i.nz, align 4, !tbaa !103
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <4 x float> %wide.load552, ptr %i.nx, align 4, !tbaa !103
  store <4 x float> %wide.load553, ptr %i.oa, align 4, !tbaa !103
  %index.next554 = add nuw i64 %index551, 8       ; 2 uses
  %i.ob = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.ob, label %middle.block555, label %vector.body550, !llvm.loop !223

middle.block555:                                  ; preds = %vector.body550
  %cmp.n556 = icmp eq i64 %n.vec549, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n556, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, label %scalar.ph546.preheader

scalar.ph546.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block555
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %n.vec549, %middle.block555 ] ; 3 uses
  %xtraiter684 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %scalar.ph546.prol.loopexit, label %scalar.ph546.prol

scalar.ph546.prol:                                ; preds = %scalar.ph546.preheader, %scalar.ph546.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph546.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph546.preheader ] ; 3 uses
  %prol.iter686 = phi i64 [ %prol.iter686.next, %scalar.ph546.prol ], [ 0, %scalar.ph546.preheader ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.oe = load float, ptr %i.od, align 4, !tbaa !103
  store float %i.oe, ptr %i.oc, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter686.next = add i64 %prol.iter686, 1   ; 2 uses
  %prol.iter686.cmp.not = icmp eq i64 %prol.iter686.next, %xtraiter684
  br i1 %prol.iter686.cmp.not, label %scalar.ph546.prol.loopexit, label %scalar.ph546.prol, !llvm.loop !224

scalar.ph546.prol.loopexit:                       ; preds = %scalar.ph546.prol, %scalar.ph546.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph546.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph546.prol ]
  %i.of = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.og = icmp ugt i64 %i.of, -4
  br i1 %i.og, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, label %scalar.ph546

scalar.ph546:                                     ; preds = %scalar.ph546.prol.loopexit, %scalar.ph546
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %scalar.ph546 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph546.prol.loopexit ] ; 6 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i.i.i.i.i
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !103
  store float %i.oj, ptr %i.oh, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.om = load float, ptr %i.ol, align 4, !tbaa !103
  store float %i.om, ptr %i.ok, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.op = load float, ptr %i.oo, align 4, !tbaa !103
  store float %i.op, ptr %i.on, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.os = load float, ptr %i.or, align 4, !tbaa !103
  store float %i.os, ptr %i.oq, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, label %scalar.ph546, !llvm.loop !225

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i5.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i: ; preds = %scalar.ph546.prol.loopexit, %scalar.ph546, %middle.block555, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ou = load i8, ptr %i.ot, align 8, !tbaa !11, !range !63, !noundef !66
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.ab, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i

bb.ab:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.nu)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i unwind label %bb.br

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i: ; preds = %bb.ab, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i8 1, ptr %i.ow, align 8, !tbaa !11
  store ptr %.0.i.i.i.i.i.i, ptr %i.nt, align 8, !tbaa !17
  store i32 %i.nh, ptr %i.nl, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i234

.lr.ph.i.i.i.i234:                                ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i, %..lr.ph.i_crit_edge.i.i.i
  %i.ox = phi ptr [ %.pre.i.i.i, %..lr.ph.i_crit_edge.i.i.i ], [ %.0.i.i.i.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i ] ; 2 uses
  %i.oy = sext i32 %i.nj to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i235 = sext i32 %i.nh to i64
  %i.oz = shl nsw i64 %i.oy, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.ox, i64 %i.oz
  %i.pa = sub nsw i64 %wide.trip.count.i.i.i.i235, %i.oy
  %i.pb = shl nuw nsw i64 %i.pa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i, i8 0, i64 %i.pb, i1 false), !tbaa !103
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i234, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i
  %i.pc = phi ptr [ %.pre10.i.i.i, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i ], [ %i.ox, %.lr.ph.i.i.i.i234 ] ; 7 uses
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !18
  %i.pd = icmp sgt i32 %i.nh, 0
  br i1 %i.pd, label %.lr.ph.i4.i.i.i, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i

.lr.ph.i4.i.i.i:                                  ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i
  %i.pe = ptrtoaddr ptr %i.pc to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !17 ; 7 uses
  %wide.trip.count.i5.i.i.i = zext nneg i32 %i.nh to i64 ; 5 uses
  %min.iters.check561 = icmp ult i32 %i.nh, 8
  %i.ph = ptrtoaddr ptr %i.pg to i64
  %i.pi = sub i64 %i.ph, %i.pe
  %diff.check559 = icmp ugt i64 %i.pi, -32
  %or.cond666 = select i1 %min.iters.check561, i1 true, i1 %diff.check559
  br i1 %or.cond666, label %scalar.ph560.preheader, label %vector.ph562

vector.ph562:                                     ; preds = %.lr.ph.i4.i.i.i
  %n.vec563 = and i64 %wide.trip.count.i5.i.i.i, 2147483640 ; 3 uses
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next568, %vector.body564 ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %index565 ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index565 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %wide.load566 = load <4 x float>, ptr %i.pk, align 4, !tbaa !103
  %wide.load567 = load <4 x float>, ptr %i.pl, align 4, !tbaa !103
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store <4 x float> %wide.load566, ptr %i.pj, align 4, !tbaa !103
  store <4 x float> %wide.load567, ptr %i.pm, align 4, !tbaa !103
  %index.next568 = add nuw i64 %index565, 8       ; 2 uses
  %i.pn = icmp eq i64 %index.next568, %n.vec563
  br i1 %i.pn, label %middle.block569, label %vector.body564, !llvm.loop !226

middle.block569:                                  ; preds = %vector.body564
  %cmp.n570 = icmp eq i64 %n.vec563, %wide.trip.count.i5.i.i.i
  br i1 %cmp.n570, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i, label %scalar.ph560.preheader

scalar.ph560.preheader:                           ; preds = %.lr.ph.i4.i.i.i, %middle.block569
  %indvars.iv.i6.i.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i.i ], [ %n.vec563, %middle.block569 ] ; 3 uses
  %xtraiter687 = and i64 %wide.trip.count.i5.i.i.i, 3 ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol

scalar.ph560.prol:                                ; preds = %scalar.ph560.preheader, %scalar.ph560.prol
  %indvars.iv.i6.i.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph560.prol ], [ %indvars.iv.i6.i.i.i.ph, %scalar.ph560.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %scalar.ph560.prol ], [ 0, %scalar.ph560.preheader ]
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i6.i.i.i.prol
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.i6.i.i.i.prol
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !103
  store float %i.pq, ptr %i.po, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i.prol, 1 ; 2 uses
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol, !llvm.loop !227

scalar.ph560.prol.loopexit:                       ; preds = %scalar.ph560.prol, %scalar.ph560.preheader
  %indvars.iv.i6.i.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.i.ph, %scalar.ph560.preheader ], [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph560.prol ]
  %i.pr = sub nsw i64 %indvars.iv.i6.i.i.i.ph, %wide.trip.count.i5.i.i.i
  %i.ps = icmp ugt i64 %i.pr, -4
  br i1 %i.ps, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i, label %scalar.ph560

scalar.ph560:                                     ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560
  %indvars.iv.i6.i.i.i = phi i64 [ %indvars.iv.next.i7.i.i.i.3, %scalar.ph560 ], [ %indvars.iv.i6.i.i.i.unr, %scalar.ph560.prol.loopexit ] ; 6 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i6.i.i.i
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.i6.i.i.i
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !103
  store float %i.pv, ptr %i.pt, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i = add nuw nsw i64 %indvars.iv.i6.i.i.i, 1 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.next.i7.i.i.i
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.next.i7.i.i.i
  %i.py = load float, ptr %i.px, align 4, !tbaa !103
  store float %i.py, ptr %i.pw, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 2 ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.next.i7.i.i.i.1
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.next.i7.i.i.i.1
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !103
  store float %i.qb, ptr %i.pz, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 3 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.next.i7.i.i.i.2
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.next.i7.i.i.i.2
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !103
  store float %i.qe, ptr %i.qc, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i.3, %wide.trip.count.i5.i.i.i
  br i1 %exitcond.not.i8.i.i.i.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i, label %scalar.ph560, !llvm.loop !228

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i:      ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560, %middle.block569, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 56
  invoke void @_ZN20btAlignedObjectArrayIS_IiEE13copyFromArrayERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.qf, ptr noundef nonnull align 8 dereferenceable(25) %i.qg)
          to label %_ZN9btMatrixXIfEaSEOS0_.exit unwind label %bb.br

bb.ac:                                            ; preds = %.lr.ph397, %bb.ag
  %indvars.iv433 = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next434, %bb.ag ] ; 6 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv433
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !68 ; 16 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 120
  %i.qk = load float, ptr %i.qj, align 8, !tbaa !135
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv433
  store float %i.qk, ptr %i.ql, align 4, !tbaa !103
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 124
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !136
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv433
  store float %i.qn, ptr %i.qo, align 4, !tbaa !103
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 152
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !142 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 156
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !143 ; 2 uses
  %i.qt = sext i32 %i.qq to i64
  %i.qu = getelementptr inbounds [248 x i8], ptr %i.it, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 240
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !145
  %.not162 = icmp eq ptr %i.qw, null
  br i1 %.not162, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qx = mul nsw i32 %i.qq, 6
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !103
  %i.ra = load i32, ptr %i.iu, align 8, !tbaa !160
  %i.rb = load i32, ptr %i.iv, align 4, !tbaa !106
  %i.rc = trunc nuw nsw i64 %indvars.iv433 to i32
  %i.rd = mul nsw i32 %i.rb, %i.rc
  %i.re = add i32 %i.rd, %i.qx                    ; 6 uses
  %i.rf = load ptr, ptr %i.iw, align 8, !tbaa !17 ; 6 uses
  %i.rg = sext i32 %i.re to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rg
  store float %i.qz, ptr %i.rh, align 4, !tbaa !103
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qi, i64 20
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !103
  %i.rk = add i32 %i.re, 1
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rl
  store float %i.rj, ptr %i.rm, align 4, !tbaa !103
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.ro = load float, ptr %i.rn, align 8, !tbaa !103
  %i.rp = add i32 %i.re, 2
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rq
  store float %i.ro, ptr %i.rr, align 4, !tbaa !103
  %i.rs = load float, ptr %i.qi, align 8, !tbaa !103
  %i.rt = add i32 %i.re, 3
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.ru
  store float %i.rs, ptr %i.rv, align 4, !tbaa !103
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !103
  %i.ry = add i32 %i.re, 4
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rz
  store float %i.rx, ptr %i.sa, align 4, !tbaa !103
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.sc = load float, ptr %i.sb, align 8, !tbaa !103
  %i.sd = add nsw i32 %i.ra, 6
  store i32 %i.sd, ptr %i.iu, align 8, !tbaa !160
  %i.se = add i32 %i.re, 5
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.sf
  store float %i.sc, ptr %i.sg, align 4, !tbaa !103
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.sh = sext i32 %i.qs to i64
  %i.si = getelementptr inbounds [248 x i8], ptr %i.it, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 240
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !145
  %.not163 = icmp eq ptr %i.sk, null
  br i1 %.not163, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sl = mul nsw i32 %i.qs, 6
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.sn = load float, ptr %i.sm, align 8, !tbaa !103
  %i.so = load i32, ptr %i.iu, align 8, !tbaa !160
  %i.sp = load i32, ptr %i.iv, align 4, !tbaa !106
  %i.sq = trunc nuw nsw i64 %indvars.iv433 to i32
  %i.sr = mul nsw i32 %i.sp, %i.sq
  %i.ss = add i32 %i.sr, %i.sl                    ; 6 uses
  %i.st = load ptr, ptr %i.iw, align 8, !tbaa !17 ; 6 uses
  %i.su = sext i32 %i.ss to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.su
  store float %i.sn, ptr %i.sv, align 4, !tbaa !103
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qi, i64 52
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !103
  %i.sy = add i32 %i.ss, 1
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.sz
  store float %i.sx, ptr %i.ta, align 4, !tbaa !103
  %i.tb = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  %i.tc = load float, ptr %i.tb, align 8, !tbaa !103
  %i.td = add i32 %i.ss, 2
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.te
  store float %i.tc, ptr %i.tf, align 4, !tbaa !103
end_hunk_2
begin_hunk_3_@_ZN12btMLCPSolver10createMLCPERK19btContactSolverInfo:bb.a
  %or.cond = select i1 %.not.i.i.i.i238, i1 %i.uo, i1 false
  br i1 %or.cond, label %bb.ak, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i

bb.ak:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ul)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  %i.uq = extractvalue { ptr, i32 } %i.up, 0
  call void @__clang_call_terminate(ptr %i.uq) #13
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i:      ; preds = %bb.ak, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i
  %i.ur = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.us, null
  %i.ut = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.uu = load i8, ptr %i.ut, align 8, !range !63
  %i.uv = trunc nuw i8 %i.uu to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1.i, i1 %i.uv, i1 false
  br i1 %or.cond.i.i.i, label %bb.am, label %_ZN9btMatrixXIfED2Ev.exit

bb.am:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.us)
          to label %_ZN9btMatrixXIfED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.uw = landingpad { ptr, i32 }
          catch ptr null
  %i.ux = extractvalue { ptr, i32 } %i.uw, 0
  call void @__clang_call_terminate(ptr %i.ux) #13
  unreachable

_ZN9btMatrixXIfED2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZN9btMatrixXIfEmlERKS0_(ptr dead_on_unwind nonnull writable sret(%struct.btMatrixX) align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.er, ptr noundef nonnull align 8 dereferenceable(88) %i.dh)
          to label %bb.ao unwind label %bb.bs

bb.ao:                                            ; preds = %_ZN9btMatrixXIfED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.uy, ptr noundef nonnull align 8 dereferenceable(88) %6, i64 20, i1 false)
  %i.uz = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !18 ; 10 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 1332 ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !18 ; 3 uses
  %i.vd = icmp sgt i32 %i.va, %i.vc
  br i1 %i.vd, label %bb.ap, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i242

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i242: ; preds = %bb.ao
  %.phi.trans.insert9.i.i.i243 = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.pre10.i.i.i244 = load ptr, ptr %.phi.trans.insert9.i.i.i243, align 8, !tbaa !17
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i245

bb.ap:                                            ; preds = %bb.ao
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !19
  %i.vg = icmp slt i32 %i.vf, %i.va
  br i1 %i.vg, label %bb.aq, label %..lr.ph.i_crit_edge.i.i.i252

..lr.ph.i_crit_edge.i.i.i252:                     ; preds = %bb.ap
  %.phi.trans.insert.i.i.i253 = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.pre.i.i.i254 = load ptr, ptr %.phi.trans.insert.i.i.i253, align 8, !tbaa !17
  br label %.lr.ph.i.i.i.i255

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i.i.i.i.i258 = icmp eq i32 %i.va, 0
  br i1 %.not.i.i.i.i.i.i258, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i260, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.vh = sext i32 %i.va to i64
  %i.vi = shl nsw i64 %i.vh, 2
  %i.vj = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.vi, i32 noundef 16)
          to label %.noexc271 unwind label %bb.bt

.noexc271:                                        ; preds = %bb.ar
  %.pre.i.i.i.i259 = load i32, ptr %i.vb, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i260

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i260: ; preds = %.noexc271, %bb.aq
  %i.vk = phi i32 [ %.pre.i.i.i.i259, %.noexc271 ], [ %i.vc, %bb.aq ] ; 3 uses
  %.0.i.i.i.i.i.i261 = phi ptr [ %i.vj, %.noexc271 ], [ null, %bb.aq ] ; 9 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !17 ; 9 uses
  br i1 %i.vl, label %.lr.ph.i.i.i.i.i.i266, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i262

.lr.ph.i.i.i.i.i.i266:                            ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i260
  %i.vo = ptrtoaddr ptr %i.vn to i64
  %.0.i.i.i.i.i.i261573 = ptrtoaddr ptr %.0.i.i.i.i.i.i261 to i64
  %wide.trip.count.i.i.i.i.i.i267 = zext nneg i32 %i.vk to i64 ; 5 uses
  %min.iters.check576 = icmp ult i32 %i.vk, 8
  %i.vp = sub i64 %i.vo, %.0.i.i.i.i.i.i261573
  %diff.check574 = icmp ugt i64 %i.vp, -32
  %or.cond667 = select i1 %min.iters.check576, i1 true, i1 %diff.check574
  br i1 %or.cond667, label %scalar.ph575.preheader, label %vector.ph577

vector.ph577:                                     ; preds = %.lr.ph.i.i.i.i.i.i266
  %n.vec578 = and i64 %wide.trip.count.i.i.i.i.i.i267, 2147483640 ; 3 uses
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next583, %vector.body579 ] ; 3 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i261, i64 %index580 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %index580 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %wide.load581 = load <4 x float>, ptr %i.vr, align 4, !tbaa !103
  %wide.load582 = load <4 x float>, ptr %i.vs, align 4, !tbaa !103
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store <4 x float> %wide.load581, ptr %i.vq, align 4, !tbaa !103
  store <4 x float> %wide.load582, ptr %i.vt, align 4, !tbaa !103
  %index.next583 = add nuw i64 %index580, 8       ; 2 uses
  %i.vu = icmp eq i64 %index.next583, %n.vec578
  br i1 %i.vu, label %middle.block584, label %vector.body579, !llvm.loop !230

middle.block584:                                  ; preds = %vector.body579
  %cmp.n585 = icmp eq i64 %n.vec578, %wide.trip.count.i.i.i.i.i.i267
  br i1 %cmp.n585, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264, label %scalar.ph575.preheader

scalar.ph575.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i266, %middle.block584
  %indvars.iv.i.i.i.i.i.i268.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i266 ], [ %n.vec578, %middle.block584 ] ; 3 uses
  %xtraiter690 = and i64 %wide.trip.count.i.i.i.i.i.i267, 3 ; 2 uses
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  br i1 %lcmp.mod691.not, label %scalar.ph575.prol.loopexit, label %scalar.ph575.prol

scalar.ph575.prol:                                ; preds = %scalar.ph575.preheader, %scalar.ph575.prol
  %indvars.iv.i.i.i.i.i.i268.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i269.prol, %scalar.ph575.prol ], [ %indvars.iv.i.i.i.i.i.i268.ph, %scalar.ph575.preheader ] ; 3 uses
  %prol.iter692 = phi i64 [ %prol.iter692.next, %scalar.ph575.prol ], [ 0, %scalar.ph575.preheader ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i261, i64 %indvars.iv.i.i.i.i.i.i268.prol
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv.i.i.i.i.i.i268.prol
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !103
  store float %i.vx, ptr %i.vv, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i269.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i268.prol, 1 ; 2 uses
  %prol.iter692.next = add i64 %prol.iter692, 1   ; 2 uses
  %prol.iter692.cmp.not = icmp eq i64 %prol.iter692.next, %xtraiter690
  br i1 %prol.iter692.cmp.not, label %scalar.ph575.prol.loopexit, label %scalar.ph575.prol, !llvm.loop !231

scalar.ph575.prol.loopexit:                       ; preds = %scalar.ph575.prol, %scalar.ph575.preheader
  %indvars.iv.i.i.i.i.i.i268.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i268.ph, %scalar.ph575.preheader ], [ %indvars.iv.next.i.i.i.i.i.i269.prol, %scalar.ph575.prol ]
  %i.vy = sub nsw i64 %indvars.iv.i.i.i.i.i.i268.ph, %wide.trip.count.i.i.i.i.i.i267
  %i.vz = icmp ugt i64 %i.vy, -4
  br i1 %i.vz, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264, label %scalar.ph575

scalar.ph575:                                     ; preds = %scalar.ph575.prol.loopexit, %scalar.ph575
  %indvars.iv.i.i.i.i.i.i268 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i269.3, %scalar.ph575 ], [ %indvars.iv.i.i.i.i.i.i268.unr, %scalar.ph575.prol.loopexit ] ; 6 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i261, i64 %indvars.iv.i.i.i.i.i.i268
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv.i.i.i.i.i.i268
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !103
  store float %i.wc, ptr %i.wa, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i269 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i268, 1 ; 2 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i261, i64 %indvars.iv.next.i.i.i.i.i.i269
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv.next.i.i.i.i.i.i269
  %i.wf = load float, ptr %i.we, align 4, !tbaa !103
  store float %i.wf, ptr %i.wd, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i269.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i268, 2 ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i261, i64 %indvars.iv.next.i.i.i.i.i.i269.1
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv.next.i.i.i.i.i.i269.1
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !103
  store float %i.wi, ptr %i.wg, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i269.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i268, 3 ; 2 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i261, i64 %indvars.iv.next.i.i.i.i.i.i269.2
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv.next.i.i.i.i.i.i269.2
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !103
  store float %i.wl, ptr %i.wj, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i269.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i268, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i270.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i269.3, %wide.trip.count.i.i.i.i.i.i267
  br i1 %exitcond.not.i.i.i.i.i.i270.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264, label %scalar.ph575, !llvm.loop !232

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i262: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i260
  %.not.i5.i.i.i.i.i263 = icmp eq ptr %i.vn, null
  br i1 %.not.i5.i.i.i.i.i263, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i265, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264: ; preds = %scalar.ph575.prol.loopexit, %scalar.ph575, %middle.block584, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i262
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.wn = load i8, ptr %i.wm, align 8, !tbaa !11, !range !63, !noundef !66
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %bb.as, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i265

bb.as:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.vn)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i265 unwind label %bb.bt

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i265: ; preds = %bb.as, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i264, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i262
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 1, ptr %i.wp, align 8, !tbaa !11
  store ptr %.0.i.i.i.i.i.i261, ptr %i.vm, align 8, !tbaa !17
  store i32 %i.va, ptr %i.ve, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i255

.lr.ph.i.i.i.i255:                                ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i265, %..lr.ph.i_crit_edge.i.i.i252
  %i.wq = phi ptr [ %.pre.i.i.i254, %..lr.ph.i_crit_edge.i.i.i252 ], [ %.0.i.i.i.i.i.i261, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i265 ] ; 2 uses
  %i.wr = sext i32 %i.vc to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i256 = sext i32 %i.va to i64
  %i.ws = shl nsw i64 %i.wr, 2
  %scevgep.i.i.i257 = getelementptr i8, ptr %i.wq, i64 %i.ws
  %i.wt = sub nsw i64 %wide.trip.count.i.i.i.i256, %i.wr
  %i.wu = shl nuw nsw i64 %i.wt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i257, i8 0, i64 %i.wu, i1 false), !tbaa !103
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i245

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i245: ; preds = %.lr.ph.i.i.i.i255, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i242
  %i.wv = phi ptr [ %.pre10.i.i.i244, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i242 ], [ %i.wq, %.lr.ph.i.i.i.i255 ] ; 7 uses
  store i32 %i.va, ptr %i.vb, align 4, !tbaa !18
  %i.ww = icmp sgt i32 %i.va, 0
  br i1 %i.ww, label %.lr.ph.i4.i.i.i247, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246

.lr.ph.i4.i.i.i247:                               ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i245
  %i.wx = ptrtoaddr ptr %i.wv to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !17 ; 7 uses
  %wide.trip.count.i5.i.i.i248 = zext nneg i32 %i.va to i64 ; 5 uses
  %min.iters.check590 = icmp ult i32 %i.va, 8
  %i.xa = ptrtoaddr ptr %i.wz to i64
  %i.xb = sub i64 %i.xa, %i.wx
  %diff.check588 = icmp ugt i64 %i.xb, -32
  %or.cond669 = select i1 %min.iters.check590, i1 true, i1 %diff.check588
  br i1 %or.cond669, label %scalar.ph589.preheader, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph.i4.i.i.i247
  %n.vec592 = and i64 %wide.trip.count.i5.i.i.i248, 2147483640 ; 3 uses
  br label %vector.body593

vector.body593:                                   ; preds = %vector.body593, %vector.ph591
  %index594 = phi i64 [ 0, %vector.ph591 ], [ %index.next597, %vector.body593 ] ; 3 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %index594 ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %index594 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %wide.load595 = load <4 x float>, ptr %i.xd, align 4, !tbaa !103
  %wide.load596 = load <4 x float>, ptr %i.xe, align 4, !tbaa !103
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store <4 x float> %wide.load595, ptr %i.xc, align 4, !tbaa !103
  store <4 x float> %wide.load596, ptr %i.xf, align 4, !tbaa !103
  %index.next597 = add nuw i64 %index594, 8       ; 2 uses
  %i.xg = icmp eq i64 %index.next597, %n.vec592
  br i1 %i.xg, label %middle.block598, label %vector.body593, !llvm.loop !233

middle.block598:                                  ; preds = %vector.body593
  %cmp.n599 = icmp eq i64 %n.vec592, %wide.trip.count.i5.i.i.i248
  br i1 %cmp.n599, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246, label %scalar.ph589.preheader

scalar.ph589.preheader:                           ; preds = %.lr.ph.i4.i.i.i247, %middle.block598
  %indvars.iv.i6.i.i.i249.ph = phi i64 [ 0, %.lr.ph.i4.i.i.i247 ], [ %n.vec592, %middle.block598 ] ; 3 uses
  %xtraiter693 = and i64 %wide.trip.count.i5.i.i.i248, 3 ; 2 uses
  %lcmp.mod694.not = icmp eq i64 %xtraiter693, 0
  br i1 %lcmp.mod694.not, label %scalar.ph589.prol.loopexit, label %scalar.ph589.prol

scalar.ph589.prol:                                ; preds = %scalar.ph589.preheader, %scalar.ph589.prol
  %indvars.iv.i6.i.i.i249.prol = phi i64 [ %indvars.iv.next.i7.i.i.i250.prol, %scalar.ph589.prol ], [ %indvars.iv.i6.i.i.i249.ph, %scalar.ph589.preheader ] ; 3 uses
  %prol.iter695 = phi i64 [ %prol.iter695.next, %scalar.ph589.prol ], [ 0, %scalar.ph589.preheader ]
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.i6.i.i.i249.prol
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv.i6.i.i.i249.prol
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !103
  store float %i.xj, ptr %i.xh, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i250.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i249.prol, 1 ; 2 uses
  %prol.iter695.next = add i64 %prol.iter695, 1   ; 2 uses
  %prol.iter695.cmp.not = icmp eq i64 %prol.iter695.next, %xtraiter693
  br i1 %prol.iter695.cmp.not, label %scalar.ph589.prol.loopexit, label %scalar.ph589.prol, !llvm.loop !234

scalar.ph589.prol.loopexit:                       ; preds = %scalar.ph589.prol, %scalar.ph589.preheader
  %indvars.iv.i6.i.i.i249.unr = phi i64 [ %indvars.iv.i6.i.i.i249.ph, %scalar.ph589.preheader ], [ %indvars.iv.next.i7.i.i.i250.prol, %scalar.ph589.prol ]
  %i.xk = sub nsw i64 %indvars.iv.i6.i.i.i249.ph, %wide.trip.count.i5.i.i.i248
  %i.xl = icmp ugt i64 %i.xk, -4
  br i1 %i.xl, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246, label %scalar.ph589

scalar.ph589:                                     ; preds = %scalar.ph589.prol.loopexit, %scalar.ph589
  %indvars.iv.i6.i.i.i249 = phi i64 [ %indvars.iv.next.i7.i.i.i250.3, %scalar.ph589 ], [ %indvars.iv.i6.i.i.i249.unr, %scalar.ph589.prol.loopexit ] ; 6 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.i6.i.i.i249
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv.i6.i.i.i249
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !103
  store float %i.xo, ptr %i.xm, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i250 = add nuw nsw i64 %indvars.iv.i6.i.i.i249, 1 ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.next.i7.i.i.i250
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv.next.i7.i.i.i250
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !103
  store float %i.xr, ptr %i.xp, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i250.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i249, 2 ; 2 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.next.i7.i.i.i250.1
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv.next.i7.i.i.i250.1
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !103
  store float %i.xu, ptr %i.xs, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i250.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i249, 3 ; 2 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.next.i7.i.i.i250.2
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv.next.i7.i.i.i250.2
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !103
  store float %i.xx, ptr %i.xv, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i250.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i249, 4 ; 2 uses
  %exitcond.not.i8.i.i.i251.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i250.3, %wide.trip.count.i5.i.i.i248
  br i1 %exitcond.not.i8.i.i.i251.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246, label %scalar.ph589, !llvm.loop !235

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246:   ; preds = %scalar.ph589.prol.loopexit, %scalar.ph589, %middle.block598, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i245
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.xz = getelementptr inbounds nuw i8, ptr %6, i64 56
  invoke void @_ZN20btAlignedObjectArrayIS_IiEE13copyFromArrayERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.xy, ptr noundef nonnull align 8 dereferenceable(25) %i.xz)
          to label %_ZN9btMatrixXIfEaSEOS0_.exit274 unwind label %bb.bt

_ZN9btMatrixXIfEaSEOS0_.exit274:                  ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246
  %i.ya = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !25 ; 2 uses
  %i.yc = icmp sgt i32 %i.yb, 0
  br i1 %i.yc, label %.lr.ph.i.i.i.i280, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i275

.lr.ph.i.i.i.i280:                                ; preds = %_ZN9btMatrixXIfEaSEOS0_.exit274
  %i.yd = getelementptr inbounds nuw i8, ptr %6, i64 72
  %zext.i.i.i281 = zext nneg i32 %i.yb to i64
  br label %bb.at

bb.at:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i285, %.lr.ph.i.i.i.i280
  %indvars.iv.i.i.i.i282 = phi i64 [ 0, %.lr.ph.i.i.i.i280 ], [ %indvars.iv.next.i.i.i.i286, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i285 ] ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !24
  %i.yf = getelementptr inbounds nuw [32 x i8], ptr %i.ye, i64 %indvars.iv.i.i.i.i282 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i.i.i283 = icmp ne ptr %i.yh, null
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.yj = load i8, ptr %i.yi, align 8, !range !63
  %i.yk = trunc nuw i8 %i.yj to i1
  %or.cond.i.i.i.i.i.i284 = select i1 %.not.i.i.i.i.i.i.i283, i1 %i.yk, i1 false
  br i1 %or.cond.i.i.i.i.i.i284, label %bb.au, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i285

bb.au:                                            ; preds = %bb.at
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yh)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i285 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yl = landingpad { ptr, i32 }
          catch ptr null
  %i.ym = extractvalue { ptr, i32 } %i.yl, 0
  call void @__clang_call_terminate(ptr %i.ym) #13
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i285: ; preds = %bb.au, %bb.at
  %indvars.iv.next.i.i.i.i286 = add nuw nsw i64 %indvars.iv.i.i.i.i282, 1 ; 2 uses
  %i.yn = icmp eq i64 %indvars.iv.next.i.i.i.i286, %zext.i.i.i281
  br i1 %i.yn, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i275, label %bb.at, !llvm.loop !64

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i275: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i285, %_ZN9btMatrixXIfEaSEOS0_.exit274
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i276 = icmp ne ptr %i.yp, null
  %i.yq = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.yr = load i8, ptr %i.yq, align 8, !range !63
  %i.ys = trunc nuw i8 %i.yr to i1
  %or.cond378 = select i1 %.not.i.i.i.i276, i1 %i.ys, i1 false
  br i1 %or.cond378, label %bb.aw, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i277

bb.aw:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i275
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yp)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i277 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  %i.yu = extractvalue { ptr, i32 } %i.yt, 0
  call void @__clang_call_terminate(ptr %i.yu) #13
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i277:   ; preds = %bb.aw, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i275
  %i.yv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i1.i278 = icmp ne ptr %i.yw, null
  %i.yx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.yy = load i8, ptr %i.yx, align 8, !range !63
  %i.yz = trunc nuw i8 %i.yy to i1
  %or.cond.i.i.i279 = select i1 %.not.i.i.i1.i278, i1 %i.yz, i1 false
  br i1 %or.cond.i.i.i279, label %bb.ay, label %_ZN9btMatrixXIfED2Ev.exit287

bb.ay:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i277
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yw)
          to label %_ZN9btMatrixXIfED2Ev.exit287 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.za = landingpad { ptr, i32 }
          catch ptr null
  %i.zb = extractvalue { ptr, i32 } %i.za, 0
  call void @__clang_call_terminate(ptr %i.zb) #13
  unreachable

_ZN9btMatrixXIfED2Ev.exit287:                     ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i277, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZN9btMatrixXIfEmlERKS0_(ptr dead_on_unwind nonnull writable sret(%struct.btMatrixX) align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.uy, ptr noundef nonnull align 8 dereferenceable(88) %i.nf)
          to label %bb.ba unwind label %bb.bv

bb.ba:                                            ; preds = %_ZN9btMatrixXIfED2Ev.exit287
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.zc, ptr noundef nonnull align 8 dereferenceable(88) %8, i64 20, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !18 ; 10 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !18 ; 3 uses
  %i.zh = icmp sgt i32 %i.ze, %i.zg
  br i1 %i.zh, label %bb.bb, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i288

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i288: ; preds = %bb.ba
  %.phi.trans.insert9.i.i.i289 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.pre10.i.i.i290 = load ptr, ptr %.phi.trans.insert9.i.i.i289, align 8, !tbaa !17
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i291

bb.bb:                                            ; preds = %bb.ba
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !19
  %i.zk = icmp slt i32 %i.zj, %i.ze
  br i1 %i.zk, label %bb.bc, label %..lr.ph.i_crit_edge.i.i.i298

..lr.ph.i_crit_edge.i.i.i298:                     ; preds = %bb.bb
  %.phi.trans.insert.i.i.i299 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.pre.i.i.i300 = load ptr, ptr %.phi.trans.insert.i.i.i299, align 8, !tbaa !17
  br label %.lr.ph.i.i.i.i301

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i.i.i.i304 = icmp eq i32 %i.ze, 0
  br i1 %.not.i.i.i.i.i.i304, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i306, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.zl = sext i32 %i.ze to i64
  %i.zm = shl nsw i64 %i.zl, 2
  %i.zn = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.zm, i32 noundef 16)
          to label %.noexc317 unwind label %bb.bw

.noexc317:                                        ; preds = %bb.bd
  %.pre.i.i.i.i305 = load i32, ptr %i.zf, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i306

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i306: ; preds = %.noexc317, %bb.bc
  %i.zo = phi i32 [ %.pre.i.i.i.i305, %.noexc317 ], [ %i.zg, %bb.bc ] ; 3 uses
  %.0.i.i.i.i.i.i307 = phi ptr [ %i.zn, %.noexc317 ], [ null, %bb.bc ] ; 9 uses
  %i.zp = icmp sgt i32 %i.zo, 0
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !17 ; 9 uses
  br i1 %i.zp, label %.lr.ph.i.i.i.i.i.i312, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i308

.lr.ph.i.i.i.i.i.i312:                            ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i306
  %i.zs = ptrtoaddr ptr %i.zr to i64
  %.0.i.i.i.i.i.i307602 = ptrtoaddr ptr %.0.i.i.i.i.i.i307 to i64
  %wide.trip.count.i.i.i.i.i.i313 = zext nneg i32 %i.zo to i64 ; 5 uses
  %min.iters.check605 = icmp ult i32 %i.zo, 8
  %i.zt = sub i64 %i.zs, %.0.i.i.i.i.i.i307602
  %diff.check603 = icmp ugt i64 %i.zt, -32
  %or.cond670 = select i1 %min.iters.check605, i1 true, i1 %diff.check603
  br i1 %or.cond670, label %scalar.ph604.preheader, label %vector.ph606

vector.ph606:                                     ; preds = %.lr.ph.i.i.i.i.i.i312
  %n.vec607 = and i64 %wide.trip.count.i.i.i.i.i.i313, 2147483640 ; 3 uses
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph606
  %index609 = phi i64 [ 0, %vector.ph606 ], [ %index.next612, %vector.body608 ] ; 3 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i307, i64 %index609 ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %index609 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %wide.load610 = load <4 x float>, ptr %i.zv, align 4, !tbaa !103
  %wide.load611 = load <4 x float>, ptr %i.zw, align 4, !tbaa !103
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  store <4 x float> %wide.load610, ptr %i.zu, align 4, !tbaa !103
  store <4 x float> %wide.load611, ptr %i.zx, align 4, !tbaa !103
  %index.next612 = add nuw i64 %index609, 8       ; 2 uses
  %i.zy = icmp eq i64 %index.next612, %n.vec607
  br i1 %i.zy, label %middle.block613, label %vector.body608, !llvm.loop !236

middle.block613:                                  ; preds = %vector.body608
  %cmp.n614 = icmp eq i64 %n.vec607, %wide.trip.count.i.i.i.i.i.i313
  br i1 %cmp.n614, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310, label %scalar.ph604.preheader

scalar.ph604.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i312, %middle.block613
  %indvars.iv.i.i.i.i.i.i314.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i312 ], [ %n.vec607, %middle.block613 ] ; 3 uses
  %xtraiter696 = and i64 %wide.trip.count.i.i.i.i.i.i313, 3 ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %scalar.ph604.prol.loopexit, label %scalar.ph604.prol

scalar.ph604.prol:                                ; preds = %scalar.ph604.preheader, %scalar.ph604.prol
  %indvars.iv.i.i.i.i.i.i314.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i315.prol, %scalar.ph604.prol ], [ %indvars.iv.i.i.i.i.i.i314.ph, %scalar.ph604.preheader ] ; 3 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %scalar.ph604.prol ], [ 0, %scalar.ph604.preheader ]
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i307, i64 %indvars.iv.i.i.i.i.i.i314.prol
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv.i.i.i.i.i.i314.prol
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !103
  store float %i.aab, ptr %i.zz, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i315.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i314.prol, 1 ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %scalar.ph604.prol.loopexit, label %scalar.ph604.prol, !llvm.loop !237

scalar.ph604.prol.loopexit:                       ; preds = %scalar.ph604.prol, %scalar.ph604.preheader
  %indvars.iv.i.i.i.i.i.i314.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i314.ph, %scalar.ph604.preheader ], [ %indvars.iv.next.i.i.i.i.i.i315.prol, %scalar.ph604.prol ]
  %i.aac = sub nsw i64 %indvars.iv.i.i.i.i.i.i314.ph, %wide.trip.count.i.i.i.i.i.i313
  %i.aad = icmp ugt i64 %i.aac, -4
  br i1 %i.aad, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310, label %scalar.ph604

scalar.ph604:                                     ; preds = %scalar.ph604.prol.loopexit, %scalar.ph604
  %indvars.iv.i.i.i.i.i.i314 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i315.3, %scalar.ph604 ], [ %indvars.iv.i.i.i.i.i.i314.unr, %scalar.ph604.prol.loopexit ] ; 6 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i307, i64 %indvars.iv.i.i.i.i.i.i314
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv.i.i.i.i.i.i314
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !103
  store float %i.aag, ptr %i.aae, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i315 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i314, 1 ; 2 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i307, i64 %indvars.iv.next.i.i.i.i.i.i315
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv.next.i.i.i.i.i.i315
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !103
  store float %i.aaj, ptr %i.aah, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i315.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i314, 2 ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i307, i64 %indvars.iv.next.i.i.i.i.i.i315.1
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv.next.i.i.i.i.i.i315.1
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !103
  store float %i.aam, ptr %i.aak, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i315.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i314, 3 ; 2 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i307, i64 %indvars.iv.next.i.i.i.i.i.i315.2
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv.next.i.i.i.i.i.i315.2
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !103
  store float %i.aap, ptr %i.aan, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i.i.i315.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i314, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i316.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i315.3, %wide.trip.count.i.i.i.i.i.i313
  br i1 %exitcond.not.i.i.i.i.i.i316.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310, label %scalar.ph604, !llvm.loop !238

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i308: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i306
  %.not.i5.i.i.i.i.i309 = icmp eq ptr %i.zr, null
  br i1 %.not.i5.i.i.i.i.i309, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i311, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310: ; preds = %scalar.ph604.prol.loopexit, %scalar.ph604, %middle.block613, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i308
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aar = load i8, ptr %i.aaq, align 8, !tbaa !11, !range !63, !noundef !66
  %i.aas = trunc nuw i8 %i.aar to i1
  br i1 %i.aas, label %bb.be, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i311

bb.be:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.zr)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i311 unwind label %bb.bw

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i311: ; preds = %bb.be, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i310, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i308
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 1, ptr %i.aat, align 8, !tbaa !11
  store ptr %.0.i.i.i.i.i.i307, ptr %i.zq, align 8, !tbaa !17
  store i32 %i.ze, ptr %i.zi, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i301

.lr.ph.i.i.i.i301:                                ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i311, %..lr.ph.i_crit_edge.i.i.i298
  %i.aau = phi ptr [ %.pre.i.i.i300, %..lr.ph.i_crit_edge.i.i.i298 ], [ %.0.i.i.i.i.i.i307, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i311 ] ; 2 uses
  %i.aav = sext i32 %i.zg to i64                  ; 2 uses
  %wide.trip.count.i.i.i.i302 = sext i32 %i.ze to i64
  %i.aaw = shl nsw i64 %i.aav, 2
  %scevgep.i.i.i303 = getelementptr i8, ptr %i.aau, i64 %i.aaw
  %i.aax = sub nsw i64 %wide.trip.count.i.i.i.i302, %i.aav
  %i.aay = shl nuw nsw i64 %i.aax, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i303, i8 0, i64 %i.aay, i1 false), !tbaa !103
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i291

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i291: ; preds = %.lr.ph.i.i.i.i301, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i288
  %i.aaz = phi ptr [ %.pre10.i.i.i290, %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i288 ], [ %i.aau, %.lr.ph.i.i.i.i301 ] ; 7 uses
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !18
  %i.aba = icmp sgt i32 %i.ze, 0
  br i1 %i.aba, label %.lr.ph.i4.i.i.i293, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292

.lr.ph.i4.i.i.i293:                               ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i291
  %i.abb = ptrtoaddr ptr %i.aaz to i64
  %i.abc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !17 ; 7 uses
  %wide.trip.count.i5.i.i.i294 = zext nneg i32 %i.ze to i64 ; 5 uses
  %min.iters.check619 = icmp ult i32 %i.ze, 8
  %i.abe = ptrtoaddr ptr %i.abd to i64
  %i.abf = sub i64 %i.abe, %i.abb
  %diff.check617 = icmp ugt i64 %i.abf, -32
  %or.cond672 = select i1 %min.iters.check619, i1 true, i1 %diff.check617
  br i1 %or.cond672, label %scalar.ph618.preheader, label %vector.ph620

vector.ph620:                                     ; preds = %.lr.ph.i4.i.i.i293
  %n.vec621 = and i64 %wide.trip.count.i5.i.i.i294, 2147483640 ; 3 uses
  br label %vector.body622

vector.body622:                                   ; preds = %vector.body622, %vector.ph620
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next626, %vector.body622 ] ; 3 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %index623 ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %index623 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %wide.load624 = load <4 x float>, ptr %i.abh, align 4, !tbaa !103
  %wide.load625 = load <4 x float>, ptr %i.abi, align 4, !tbaa !103
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  store <4 x float> %wide.load624, ptr %i.abg, align 4, !tbaa !103
  store <4 x float> %wide.load625, ptr %i.abj, align 4, !tbaa !103
  %index.next626 = add nuw i64 %index623, 8       ; 2 uses
  %i.abk = icmp eq i64 %index.next626, %n.vec621
  br i1 %i.abk, label %middle.block627, label %vector.body622, !llvm.loop !239

middle.block627:                                  ; preds = %vector.body622
  %cmp.n628 = icmp eq i64 %n.vec621, %wide.trip.count.i5.i.i.i294
  br i1 %cmp.n628, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292, label %scalar.ph618.preheader

scalar.ph618.preheader:                           ; preds = %.lr.ph.i4.i.i.i293, %middle.block627
  %indvars.iv.i6.i.i.i295.ph = phi i64 [ 0, %.lr.ph.i4.i.i.i293 ], [ %n.vec621, %middle.block627 ] ; 3 uses
  %xtraiter699 = and i64 %wide.trip.count.i5.i.i.i294, 3 ; 2 uses
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %scalar.ph618.prol.loopexit, label %scalar.ph618.prol

scalar.ph618.prol:                                ; preds = %scalar.ph618.preheader, %scalar.ph618.prol
  %indvars.iv.i6.i.i.i295.prol = phi i64 [ %indvars.iv.next.i7.i.i.i296.prol, %scalar.ph618.prol ], [ %indvars.iv.i6.i.i.i295.ph, %scalar.ph618.preheader ] ; 3 uses
  %prol.iter701 = phi i64 [ %prol.iter701.next, %scalar.ph618.prol ], [ 0, %scalar.ph618.preheader ]
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.i6.i.i.i295.prol
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.i6.i.i.i295.prol
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !103
  store float %i.abn, ptr %i.abl, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i296.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i295.prol, 1 ; 2 uses
  %prol.iter701.next = add i64 %prol.iter701, 1   ; 2 uses
  %prol.iter701.cmp.not = icmp eq i64 %prol.iter701.next, %xtraiter699
  br i1 %prol.iter701.cmp.not, label %scalar.ph618.prol.loopexit, label %scalar.ph618.prol, !llvm.loop !240

scalar.ph618.prol.loopexit:                       ; preds = %scalar.ph618.prol, %scalar.ph618.preheader
  %indvars.iv.i6.i.i.i295.unr = phi i64 [ %indvars.iv.i6.i.i.i295.ph, %scalar.ph618.preheader ], [ %indvars.iv.next.i7.i.i.i296.prol, %scalar.ph618.prol ]
  %i.abo = sub nsw i64 %indvars.iv.i6.i.i.i295.ph, %wide.trip.count.i5.i.i.i294
  %i.abp = icmp ugt i64 %i.abo, -4
  br i1 %i.abp, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292, label %scalar.ph618

scalar.ph618:                                     ; preds = %scalar.ph618.prol.loopexit, %scalar.ph618
  %indvars.iv.i6.i.i.i295 = phi i64 [ %indvars.iv.next.i7.i.i.i296.3, %scalar.ph618 ], [ %indvars.iv.i6.i.i.i295.unr, %scalar.ph618.prol.loopexit ] ; 6 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.i6.i.i.i295
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.i6.i.i.i295
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !103
  store float %i.abs, ptr %i.abq, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i296 = add nuw nsw i64 %indvars.iv.i6.i.i.i295, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.next.i7.i.i.i296
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.next.i7.i.i.i296
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !103
  store float %i.abv, ptr %i.abt, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i296.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i295, 2 ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.next.i7.i.i.i296.1
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.next.i7.i.i.i296.1
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !103
  store float %i.aby, ptr %i.abw, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i296.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i295, 3 ; 2 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.next.i7.i.i.i296.2
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %indvars.iv.next.i7.i.i.i296.2
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !103
  store float %i.acb, ptr %i.abz, align 4, !tbaa !103
  %indvars.iv.next.i7.i.i.i296.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i295, 4 ; 2 uses
  %exitcond.not.i8.i.i.i297.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i296.3, %wide.trip.count.i5.i.i.i294
  br i1 %exitcond.not.i8.i.i.i297.3, label %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292, label %scalar.ph618, !llvm.loop !241

_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292:   ; preds = %scalar.ph618.prol.loopexit, %scalar.ph618, %middle.block627, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i291
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.acd = getelementptr inbounds nuw i8, ptr %8, i64 56
  invoke void @_ZN20btAlignedObjectArrayIS_IiEE13copyFromArrayERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.acc, ptr noundef nonnull align 8 dereferenceable(25) %i.acd)
          to label %_ZN9btMatrixXIfEaSEOS0_.exit320 unwind label %bb.bw

_ZN9btMatrixXIfEaSEOS0_.exit320:                  ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292
  %i.ace = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !25 ; 2 uses
  %i.acg = icmp sgt i32 %i.acf, 0
  br i1 %i.acg, label %.lr.ph.i.i.i.i326, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i321

.lr.ph.i.i.i.i326:                                ; preds = %_ZN9btMatrixXIfEaSEOS0_.exit320
  %i.ach = getelementptr inbounds nuw i8, ptr %8, i64 72
  %zext.i.i.i327 = zext nneg i32 %i.acf to i64
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i331, %.lr.ph.i.i.i.i326
  %indvars.iv.i.i.i.i328 = phi i64 [ 0, %.lr.ph.i.i.i.i326 ], [ %indvars.iv.next.i.i.i.i332, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i331 ] ; 2 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !24
  %i.acj = getelementptr inbounds nuw [32 x i8], ptr %i.aci, i64 %indvars.iv.i.i.i.i328 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i.i.i329 = icmp ne ptr %i.acl, null
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.acn = load i8, ptr %i.acm, align 8, !range !63
  %i.aco = trunc nuw i8 %i.acn to i1
  %or.cond.i.i.i.i.i.i330 = select i1 %.not.i.i.i.i.i.i.i329, i1 %i.aco, i1 false
  br i1 %or.cond.i.i.i.i.i.i330, label %bb.bg, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i331

bb.bg:                                            ; preds = %bb.bf
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.acl)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i331 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.acp = landingpad { ptr, i32 }
          catch ptr null
  %i.acq = extractvalue { ptr, i32 } %i.acp, 0
  call void @__clang_call_terminate(ptr %i.acq) #13
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i331: ; preds = %bb.bg, %bb.bf
  %indvars.iv.next.i.i.i.i332 = add nuw nsw i64 %indvars.iv.i.i.i.i328, 1 ; 2 uses
  %i.acr = icmp eq i64 %indvars.iv.next.i.i.i.i332, %zext.i.i.i327
  br i1 %i.acr, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i321, label %bb.bf, !llvm.loop !64

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i321: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i331, %_ZN9btMatrixXIfEaSEOS0_.exit320
  %i.acs = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i322 = icmp ne ptr %i.act, null
  %i.acu = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.acv = load i8, ptr %i.acu, align 8, !range !63
  %i.acw = trunc nuw i8 %i.acv to i1
  %or.cond381 = select i1 %.not.i.i.i.i322, i1 %i.acw, i1 false
  br i1 %or.cond381, label %bb.bi, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i323

bb.bi:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i321
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.act)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i323 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.acx = landingpad { ptr, i32 }
          catch ptr null
  %i.acy = extractvalue { ptr, i32 } %i.acx, 0
  call void @__clang_call_terminate(ptr %i.acy) #13
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i323:   ; preds = %bb.bi, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i321
  %i.acz = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i1.i324 = icmp ne ptr %i.ada, null
  %i.adb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.adc = load i8, ptr %i.adb, align 8, !range !63
  %i.add = trunc nuw i8 %i.adc to i1
  %or.cond.i.i.i325 = select i1 %.not.i.i.i1.i324, i1 %i.add, i1 false
  br i1 %or.cond.i.i.i325, label %bb.bk, label %_ZN9btMatrixXIfED2Ev.exit333

bb.bk:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i323
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ada)
          to label %_ZN9btMatrixXIfED2Ev.exit333 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ade = landingpad { ptr, i32 }
          catch ptr null
  %i.adf = extractvalue { ptr, i32 } %i.ade, 0
  call void @__clang_call_terminate(ptr %i.adf) #13
  unreachable

_ZN9btMatrixXIfED2Ev.exit333:                     ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i323, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.adg = load i32, ptr %i.zc, align 8, !tbaa !105 ; 5 uses
  %i.adh = icmp sgt i32 %i.adg, 0
  br i1 %i.adh, label %.lr.ph400, label %bb.bm

.lr.ph400:                                        ; preds = %_ZN9btMatrixXIfED2Ev.exit333
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !106
  %i.adk = add i32 %i.adj, 1                      ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !17 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %.promoted402 = load i32, ptr %i.adp, align 8, !tbaa !160
  %wide.trip.count441 = zext nneg i32 %i.adg to i64 ; 2 uses
  %xtraiter702 = and i64 %wide.trip.count441, 1
  %i.adq = icmp eq i32 %i.adg, 1
  br i1 %i.adq, label %.epil.preheader, label %.lr.ph400.new

.lr.ph400.new:                                    ; preds = %.lr.ph400
  %unroll_iter = and i64 %wide.trip.count441, 2147483646
  br label %bb.by

._crit_edge401.unr-lcssa:                         ; preds = %bb.by
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703.not, label %._crit_edge401, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge401.unr-lcssa, %.lr.ph400
  %indvars.iv438.epil.init = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next439.1, %._crit_edge401.unr-lcssa ]
  %lcmp.mod704 = trunc i32 %i.adg to i1
  call void @llvm.assume(i1 %lcmp.mod704)
  %i.adr = trunc nuw nsw i64 %indvars.iv438.epil.init to i32
  %i.ads = mul i32 %i.adk, %i.adr
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.adt ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !103
  %i.adw = load float, ptr %i.adn, align 4, !tbaa !192
  %i.adx = load float, ptr %i.ado, align 4, !tbaa !193
  %i.ady = fdiv float %i.adw, %i.adx
  %i.adz = fadd float %i.adv, %i.ady
  store float %i.adz, ptr %i.adu, align 4, !tbaa !103
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge401.unr-lcssa, %.epil.preheader
  %i.aea = add i32 %i.adg, %.promoted402
  store i32 %i.aea, ptr %i.adp, align 8, !tbaa !160
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge401, %_ZN9btMatrixXIfED2Ev.exit333
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 3 uses
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !18 ; 3 uses
  %i.aed = icmp sgt i32 %i.d, %i.aec
  br i1 %i.aed, label %bb.bn, label %_ZN9btVectorXIfE6resizeEi.exit353

bb.bn:                                            ; preds = %bb.bm
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !19
  %i.aeg = icmp slt i32 %i.aef, %i.d
  br i1 %i.aeg, label %bb.bo, label %..lr.ph.i_crit_edge.i334

..lr.ph.i_crit_edge.i334:                         ; preds = %bb.bn
  %.phi.trans.insert.i335 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre.i336 = load ptr, ptr %.phi.trans.insert.i335, align 8, !tbaa !17
  br label %.lr.ph.i.i337

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i.i340 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i340, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i342, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aeh = sext i32 %i.d to i64
  %i.aei = shl nsw i64 %i.aeh, 2
  %i.aej = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aei, i32 noundef 16)
  %.pre.i.i341 = load i32, ptr %i.aeb, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i342

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i342: ; preds = %bb.bp, %bb.bo
  %i.aek = phi i32 [ %.pre.i.i341, %bb.bp ], [ %i.aec, %bb.bo ] ; 3 uses
  %.0.i.i.i.i343 = phi ptr [ %i.aej, %bb.bp ], [ null, %bb.bo ] ; 9 uses
  %i.ael = icmp sgt i32 %i.aek, 0
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !17 ; 9 uses
  br i1 %i.ael, label %.lr.ph.i.i.i.i348, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i344

.lr.ph.i.i.i.i348:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i342
  %i.aeo = ptrtoaddr ptr %i.aen to i64
  %.0.i.i.i.i343631 = ptrtoaddr ptr %.0.i.i.i.i343 to i64
  %wide.trip.count.i.i.i.i349 = zext nneg i32 %i.aek to i64 ; 5 uses
  %min.iters.check634 = icmp ult i32 %i.aek, 8
  %i.aep = sub i64 %i.aeo, %.0.i.i.i.i343631
  %diff.check632 = icmp ugt i64 %i.aep, -32
  %or.cond673 = select i1 %min.iters.check634, i1 true, i1 %diff.check632
  br i1 %or.cond673, label %scalar.ph633.preheader, label %vector.ph635

vector.ph635:                                     ; preds = %.lr.ph.i.i.i.i348
  %n.vec636 = and i64 %wide.trip.count.i.i.i.i349, 2147483640 ; 3 uses
  br label %vector.body637

vector.body637:                                   ; preds = %vector.body637, %vector.ph635
  %index638 = phi i64 [ 0, %vector.ph635 ], [ %index.next641, %vector.body637 ] ; 3 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i343, i64 %index638 ; 2 uses
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %index638 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %wide.load639 = load <4 x float>, ptr %i.aer, align 4, !tbaa !103
  %wide.load640 = load <4 x float>, ptr %i.aes, align 4, !tbaa !103
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  store <4 x float> %wide.load639, ptr %i.aeq, align 4, !tbaa !103
  store <4 x float> %wide.load640, ptr %i.aet, align 4, !tbaa !103
  %index.next641 = add nuw i64 %index638, 8       ; 2 uses
  %i.aeu = icmp eq i64 %index.next641, %n.vec636
  br i1 %i.aeu, label %middle.block642, label %vector.body637, !llvm.loop !242

middle.block642:                                  ; preds = %vector.body637
  %cmp.n643 = icmp eq i64 %n.vec636, %wide.trip.count.i.i.i.i349
  br i1 %cmp.n643, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346, label %scalar.ph633.preheader

scalar.ph633.preheader:                           ; preds = %.lr.ph.i.i.i.i348, %middle.block642
  %indvars.iv.i.i.i.i350.ph = phi i64 [ 0, %.lr.ph.i.i.i.i348 ], [ %n.vec636, %middle.block642 ] ; 3 uses
  %xtraiter705 = and i64 %wide.trip.count.i.i.i.i349, 3 ; 2 uses
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %scalar.ph633.prol.loopexit, label %scalar.ph633.prol

scalar.ph633.prol:                                ; preds = %scalar.ph633.preheader, %scalar.ph633.prol
  %indvars.iv.i.i.i.i350.prol = phi i64 [ %indvars.iv.next.i.i.i.i351.prol, %scalar.ph633.prol ], [ %indvars.iv.i.i.i.i350.ph, %scalar.ph633.preheader ] ; 3 uses
  %prol.iter707 = phi i64 [ %prol.iter707.next, %scalar.ph633.prol ], [ 0, %scalar.ph633.preheader ]
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i343, i64 %indvars.iv.i.i.i.i350.prol
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.i.i.i.i350.prol
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !103
  store float %i.aex, ptr %i.aev, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i351.prol = add nuw nsw i64 %indvars.iv.i.i.i.i350.prol, 1 ; 2 uses
  %prol.iter707.next = add i64 %prol.iter707, 1   ; 2 uses
  %prol.iter707.cmp.not = icmp eq i64 %prol.iter707.next, %xtraiter705
  br i1 %prol.iter707.cmp.not, label %scalar.ph633.prol.loopexit, label %scalar.ph633.prol, !llvm.loop !243

scalar.ph633.prol.loopexit:                       ; preds = %scalar.ph633.prol, %scalar.ph633.preheader
  %indvars.iv.i.i.i.i350.unr = phi i64 [ %indvars.iv.i.i.i.i350.ph, %scalar.ph633.preheader ], [ %indvars.iv.next.i.i.i.i351.prol, %scalar.ph633.prol ]
  %i.aey = sub nsw i64 %indvars.iv.i.i.i.i350.ph, %wide.trip.count.i.i.i.i349
  %i.aez = icmp ugt i64 %i.aey, -4
  br i1 %i.aez, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346, label %scalar.ph633

scalar.ph633:                                     ; preds = %scalar.ph633.prol.loopexit, %scalar.ph633
  %indvars.iv.i.i.i.i350 = phi i64 [ %indvars.iv.next.i.i.i.i351.3, %scalar.ph633 ], [ %indvars.iv.i.i.i.i350.unr, %scalar.ph633.prol.loopexit ] ; 6 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i343, i64 %indvars.iv.i.i.i.i350
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.i.i.i.i350
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !103
  store float %i.afc, ptr %i.afa, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i351 = add nuw nsw i64 %indvars.iv.i.i.i.i350, 1 ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i343, i64 %indvars.iv.next.i.i.i.i351
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i.i.i.i351
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !103
  store float %i.aff, ptr %i.afd, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i351.1 = add nuw nsw i64 %indvars.iv.i.i.i.i350, 2 ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i343, i64 %indvars.iv.next.i.i.i.i351.1
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i.i.i.i351.1
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !103
  store float %i.afi, ptr %i.afg, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i351.2 = add nuw nsw i64 %indvars.iv.i.i.i.i350, 3 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i343, i64 %indvars.iv.next.i.i.i.i351.2
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i.i.i.i351.2
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !103
  store float %i.afl, ptr %i.afj, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i351.3 = add nuw nsw i64 %indvars.iv.i.i.i.i350, 4 ; 2 uses
  %exitcond.not.i.i.i.i352.3 = icmp eq i64 %indvars.iv.next.i.i.i.i351.3, %wide.trip.count.i.i.i.i349
  br i1 %exitcond.not.i.i.i.i352.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346, label %scalar.ph633, !llvm.loop !244

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i344: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i342
  %.not.i5.i.i.i345 = icmp eq ptr %i.aen, null
  br i1 %.not.i5.i.i.i345, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i347, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346: ; preds = %scalar.ph633.prol.loopexit, %scalar.ph633, %middle.block642, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i344
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.afn = load i8, ptr %i.afm, align 8, !tbaa !11, !range !63, !noundef !66
  %i.afo = trunc nuw i8 %i.afn to i1
  br i1 %i.afo, label %bb.bq, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i347

bb.bq:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aen)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i347

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i347: ; preds = %bb.bq, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i346, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i344
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i8 1, ptr %i.afp, align 8, !tbaa !11
  store ptr %.0.i.i.i.i343, ptr %i.aem, align 8, !tbaa !17
  store i32 %i.d, ptr %i.aee, align 8, !tbaa !19
  br label %.lr.ph.i.i337

.lr.ph.i.i337:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i347, %..lr.ph.i_crit_edge.i334
  %i.afq = phi ptr [ %.pre.i336, %..lr.ph.i_crit_edge.i334 ], [ %.0.i.i.i.i343, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i347 ]
  %i.afr = sext i32 %i.aec to i64                 ; 2 uses
  %wide.trip.count.i.i338 = sext i32 %i.d to i64
  %i.afs = shl nsw i64 %i.afr, 2
  %scevgep.i339 = getelementptr i8, ptr %i.afq, i64 %i.afs
  %i.aft = sub nsw i64 %wide.trip.count.i.i338, %i.afr
  %i.afu = shl nuw nsw i64 %i.aft, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i339, i8 0, i64 %i.afu, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit353

_ZN9btVectorXIfE6resizeEi.exit353:                ; preds = %bb.bm, %.lr.ph.i.i337
  store i32 %i.d, ptr %i.aeb, align 4, !tbaa !18
  %i.afv = load i32, ptr %i.ay, align 4, !tbaa !110
  %.not160 = icmp eq i32 %i.afv, 0
  br i1 %.not160, label %bb.ce, label %bb.bz

bb.br:                                            ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i, %bb.ab, %bb.aa
  %i.afw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.cj

bb.bs:                                            ; preds = %_ZN9btMatrixXIfED2Ev.exit
  %i.afx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i246, %bb.as, %bb.ar
  %i.afy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #14
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.afy, %bb.bt ], [ %i.afx, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.cj

bb.bv:                                            ; preds = %_ZN9btMatrixXIfED2Ev.exit287
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit.i292, %bb.be, %bb.bd
  %i.aga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #14
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn156 = phi { ptr, i32 } [ %i.aga, %bb.bw ], [ %i.afz, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.cj

bb.by:                                            ; preds = %bb.by, %.lr.ph400.new
  %indvars.iv438 = phi i64 [ 0, %.lr.ph400.new ], [ %indvars.iv.next439.1, %bb.by ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph400.new ], [ %niter.next.1, %bb.by ]
  %i.agb = trunc nuw nsw i64 %indvars.iv438 to i32
  %i.agc = mul i32 %i.adk, %i.agb
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.agd ; 2 uses
  %i.agf = load float, ptr %i.age, align 4, !tbaa !103
  %i.agg = load float, ptr %i.adn, align 4, !tbaa !192
  %i.agh = load float, ptr %i.ado, align 4, !tbaa !193
  %i.agi = fdiv float %i.agg, %i.agh
  %i.agj = fadd float %i.agf, %i.agi
  store float %i.agj, ptr %i.age, align 4, !tbaa !103
  %i.agk = trunc i64 %indvars.iv438 to i32
  %i.agl = or disjoint i32 %i.agk, 1
  %i.agm = mul i32 %i.adk, %i.agl
  %i.agn = sext i32 %i.agm to i64
  %i.ago = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.agn ; 2 uses
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !103
  %i.agq = load float, ptr %i.adn, align 4, !tbaa !192
  %i.agr = load float, ptr %i.ado, align 4, !tbaa !193
  %i.ags = fdiv float %i.agq, %i.agr
  %i.agt = fadd float %i.agp, %i.ags
  store float %i.agt, ptr %i.ago, align 4, !tbaa !103
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge401.unr-lcssa, label %bb.by, !llvm.loop !245

bb.bz:                                            ; preds = %_ZN9btVectorXIfE6resizeEi.exit353
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 3 uses
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !18 ; 3 uses
  %i.agw = icmp sgt i32 %i.d, %i.agv
  br i1 %i.agw, label %bb.ca, label %_ZN9btVectorXIfE6resizeEi.exit373

bb.ca:                                            ; preds = %bb.bz
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.agy = load i32, ptr %i.agx, align 8, !tbaa !19
  %i.agz = icmp slt i32 %i.agy, %i.d
  br i1 %i.agz, label %bb.cb, label %..lr.ph.i_crit_edge.i354

..lr.ph.i_crit_edge.i354:                         ; preds = %bb.ca
  %.phi.trans.insert.i355 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.pre.i356 = load ptr, ptr %.phi.trans.insert.i355, align 8, !tbaa !17
  br label %.lr.ph.i.i357

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i.i360 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i360, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i362, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aha = sext i32 %i.d to i64
  %i.ahb = shl nsw i64 %i.aha, 2
  %i.ahc = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ahb, i32 noundef 16)
  %.pre.i.i361 = load i32, ptr %i.agu, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i362

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i362: ; preds = %bb.cc, %bb.cb
  %i.ahd = phi i32 [ %.pre.i.i361, %bb.cc ], [ %i.agv, %bb.cb ] ; 3 uses
  %.0.i.i.i.i363 = phi ptr [ %i.ahc, %bb.cc ], [ null, %bb.cb ] ; 9 uses
  %i.ahe = icmp sgt i32 %i.ahd, 0
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !17 ; 9 uses
  br i1 %i.ahe, label %.lr.ph.i.i.i.i368, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364

.lr.ph.i.i.i.i368:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i362
  %i.ahh = ptrtoaddr ptr %i.ahg to i64
  %.0.i.i.i.i363646 = ptrtoaddr ptr %.0.i.i.i.i363 to i64
  %wide.trip.count.i.i.i.i369 = zext nneg i32 %i.ahd to i64 ; 5 uses
  %min.iters.check649 = icmp ult i32 %i.ahd, 8
  %i.ahi = sub i64 %i.ahh, %.0.i.i.i.i363646
  %diff.check647 = icmp ugt i64 %i.ahi, -32
  %or.cond674 = select i1 %min.iters.check649, i1 true, i1 %diff.check647
  br i1 %or.cond674, label %scalar.ph648.preheader, label %vector.ph650

vector.ph650:                                     ; preds = %.lr.ph.i.i.i.i368
  %n.vec651 = and i64 %wide.trip.count.i.i.i.i369, 2147483640 ; 3 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph650
  %index653 = phi i64 [ 0, %vector.ph650 ], [ %index.next656, %vector.body652 ] ; 3 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %index653 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %index653 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %wide.load654 = load <4 x float>, ptr %i.ahk, align 4, !tbaa !103
  %wide.load655 = load <4 x float>, ptr %i.ahl, align 4, !tbaa !103
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  store <4 x float> %wide.load654, ptr %i.ahj, align 4, !tbaa !103
  store <4 x float> %wide.load655, ptr %i.ahm, align 4, !tbaa !103
  %index.next656 = add nuw i64 %index653, 8       ; 2 uses
  %i.ahn = icmp eq i64 %index.next656, %n.vec651
  br i1 %i.ahn, label %middle.block657, label %vector.body652, !llvm.loop !246

middle.block657:                                  ; preds = %vector.body652
  %cmp.n658 = icmp eq i64 %n.vec651, %wide.trip.count.i.i.i.i369
  br i1 %cmp.n658, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, label %scalar.ph648.preheader

scalar.ph648.preheader:                           ; preds = %.lr.ph.i.i.i.i368, %middle.block657
  %indvars.iv.i.i.i.i370.ph = phi i64 [ 0, %.lr.ph.i.i.i.i368 ], [ %n.vec651, %middle.block657 ] ; 3 uses
  %xtraiter708 = and i64 %wide.trip.count.i.i.i.i369, 3 ; 2 uses
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %scalar.ph648.prol.loopexit, label %scalar.ph648.prol

scalar.ph648.prol:                                ; preds = %scalar.ph648.preheader, %scalar.ph648.prol
  %indvars.iv.i.i.i.i370.prol = phi i64 [ %indvars.iv.next.i.i.i.i371.prol, %scalar.ph648.prol ], [ %indvars.iv.i.i.i.i370.ph, %scalar.ph648.preheader ] ; 3 uses
  %prol.iter710 = phi i64 [ %prol.iter710.next, %scalar.ph648.prol ], [ 0, %scalar.ph648.preheader ]
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.i.i.i.i370.prol
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.i.i.i.i370.prol
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !103
  store float %i.ahq, ptr %i.aho, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.prol = add nuw nsw i64 %indvars.iv.i.i.i.i370.prol, 1 ; 2 uses
  %prol.iter710.next = add i64 %prol.iter710, 1   ; 2 uses
  %prol.iter710.cmp.not = icmp eq i64 %prol.iter710.next, %xtraiter708
  br i1 %prol.iter710.cmp.not, label %scalar.ph648.prol.loopexit, label %scalar.ph648.prol, !llvm.loop !247

scalar.ph648.prol.loopexit:                       ; preds = %scalar.ph648.prol, %scalar.ph648.preheader
  %indvars.iv.i.i.i.i370.unr = phi i64 [ %indvars.iv.i.i.i.i370.ph, %scalar.ph648.preheader ], [ %indvars.iv.next.i.i.i.i371.prol, %scalar.ph648.prol ]
  %i.ahr = sub nsw i64 %indvars.iv.i.i.i.i370.ph, %wide.trip.count.i.i.i.i369
  %i.ahs = icmp ugt i64 %i.ahr, -4
  br i1 %i.ahs, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, label %scalar.ph648

scalar.ph648:                                     ; preds = %scalar.ph648.prol.loopexit, %scalar.ph648
  %indvars.iv.i.i.i.i370 = phi i64 [ %indvars.iv.next.i.i.i.i371.3, %scalar.ph648 ], [ %indvars.iv.i.i.i.i370.unr, %scalar.ph648.prol.loopexit ] ; 6 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.i.i.i.i370
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.i.i.i.i370
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !103
  store float %i.ahv, ptr %i.aht, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 1 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.next.i.i.i.i371
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next.i.i.i.i371
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !103
  store float %i.ahy, ptr %i.ahw, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.1 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 2 ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.next.i.i.i.i371.1
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next.i.i.i.i371.1
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !103
  store float %i.aib, ptr %i.ahz, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.2 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 3 ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i363, i64 %indvars.iv.next.i.i.i.i371.2
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next.i.i.i.i371.2
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !103
  store float %i.aie, ptr %i.aic, align 4, !tbaa !103
  %indvars.iv.next.i.i.i.i371.3 = add nuw nsw i64 %indvars.iv.i.i.i.i370, 4 ; 2 uses
  %exitcond.not.i.i.i.i372.3 = icmp eq i64 %indvars.iv.next.i.i.i.i371.3, %wide.trip.count.i.i.i.i369
  br i1 %exitcond.not.i.i.i.i372.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, label %scalar.ph648, !llvm.loop !248

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i362
  %.not.i5.i.i.i365 = icmp eq ptr %i.ahg, null
  br i1 %.not.i5.i.i.i365, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366: ; preds = %scalar.ph648.prol.loopexit, %scalar.ph648, %middle.block657, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.aig = load i8, ptr %i.aif, align 8, !tbaa !11, !range !63, !noundef !66
  %i.aih = trunc nuw i8 %i.aig to i1
  br i1 %i.aih, label %bb.cd, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367

bb.cd:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ahg)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367: ; preds = %bb.cd, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i366, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i364
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 1, ptr %i.aii, align 8, !tbaa !11
  store ptr %.0.i.i.i.i363, ptr %i.ahf, align 8, !tbaa !17
  store i32 %i.d, ptr %i.agx, align 8, !tbaa !19
  br label %.lr.ph.i.i357

.lr.ph.i.i357:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367, %..lr.ph.i_crit_edge.i354
  %i.aij = phi ptr [ %.pre.i356, %..lr.ph.i_crit_edge.i354 ], [ %.0.i.i.i.i363, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i367 ]
  %i.aik = sext i32 %i.agv to i64                 ; 2 uses
  %wide.trip.count.i.i358 = sext i32 %i.d to i64
  %i.ail = shl nsw i64 %i.aik, 2
  %scevgep.i359 = getelementptr i8, ptr %i.aij, i64 %i.ail
  %i.aim = sub nsw i64 %wide.trip.count.i.i358, %i.aik
  %i.ain = shl nuw nsw i64 %i.aim, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i359, i8 0, i64 %i.ain, i1 false), !tbaa !103
  br label %_ZN9btVectorXIfE6resizeEi.exit373

_ZN9btVectorXIfE6resizeEi.exit373:                ; preds = %bb.bz, %.lr.ph.i.i357
  store i32 %i.d, ptr %i.agu, align 4, !tbaa !18
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN9btVectorXIfE6resizeEi.exit373, %_ZN9btVectorXIfE6resizeEi.exit353
  %i.aio = load i32, ptr %i.c, align 4, !tbaa !40 ; 4 uses
  %i.aip = icmp sgt i32 %i.aio, 0
  br i1 %i.aip, label %.lr.ph406, label %._crit_edge407

.lr.ph406:                                        ; preds = %bb.ce
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !39 ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !17 ; 4 uses
  %i.aiu = load i32, ptr %i.ay, align 4, !tbaa !110
  %.not161 = icmp eq i32 %i.aiu, 0                ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %wide.trip.count446 = zext nneg i32 %i.aio to i64 ; 2 uses
  %xtraiter712 = and i64 %wide.trip.count446, 1
  %i.aiw = icmp eq i32 %i.aio, 1
  br i1 %i.aiw, label %.epil.preheader711, label %.lr.ph406.new

.lr.ph406.new:                                    ; preds = %.lr.ph406
  %unroll_iter715 = and i64 %wide.trip.count446, 2147483646
  br label %bb.cg

._crit_edge407.loopexit.unr-lcssa:                ; preds = %bb.ci
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %._crit_edge407, label %.epil.preheader711

.epil.preheader711:                               ; preds = %._crit_edge407.loopexit.unr-lcssa, %.lr.ph406
  %indvars.iv443.epil.init = phi i64 [ 0, %.lr.ph406 ], [ %indvars.iv.next444.1, %._crit_edge407.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod714 = trunc i32 %i.aio to i1
  call void @llvm.assume(i1 %lcmp.mod714)
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv443.epil.init
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !68 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 100
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !206
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv443.epil.init
  store float %i.aja, ptr %i.ajb, align 4, !tbaa !103
  br i1 %.not161, label %._crit_edge407, label %bb.cf

bb.cf:                                            ; preds = %.epil.preheader711
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiy, i64 96
  %i.ajd = load float, ptr %i.ajc, align 8, !tbaa !207
  %i.aje = load ptr, ptr %i.aiv, align 8, !tbaa !17
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %indvars.iv443.epil.init
  store float %i.ajd, ptr %i.ajf, align 4, !tbaa !103
  br label %._crit_edge407

._crit_edge407:                                   ; preds = %._crit_edge407.loopexit.unr-lcssa, %bb.cf, %.epil.preheader711, %bb.ce
  ret void

bb.cg:                                            ; preds = %bb.ci, %.lr.ph406.new
  %indvars.iv443 = phi i64 [ 0, %.lr.ph406.new ], [ %indvars.iv.next444.1, %bb.ci ] ; 6 uses
  %niter716 = phi i64 [ 0, %.lr.ph406.new ], [ %niter716.next.1, %bb.ci ]
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv443
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !68 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 100
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !206
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv443
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !103
  br i1 %.not161, label %.critedge, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 96
  %i.ajm = load float, ptr %i.ajl, align 8, !tbaa !207
  %i.ajn = load ptr, ptr %i.aiv, align 8, !tbaa !17
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %indvars.iv443
  store float %i.ajm, ptr %i.ajo, align 4, !tbaa !103
  %indvars.iv.next444 = or disjoint i64 %indvars.iv443, 1 ; 3 uses
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv.next444
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !68 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 100
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !206
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv.next444
  store float %i.ajs, ptr %i.ajt, align 4, !tbaa !103
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 96
  %i.ajv = load float, ptr %i.aju, align 8, !tbaa !207
  %i.ajw = load ptr, ptr %i.aiv, align 8, !tbaa !17
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %indvars.iv.next444
  store float %i.ajv, ptr %i.ajx, align 4, !tbaa !103
  br label %bb.ci

.critedge:                                        ; preds = %bb.cg
  %indvars.iv.next444.c = or disjoint i64 %indvars.iv443, 1 ; 2 uses
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv.next444.c
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !68
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 100
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !206
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv.next444.c
  store float %i.akb, ptr %i.akc, align 4, !tbaa !103
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge, %bb.ch
  %indvars.iv.next444.1 = add nuw nsw i64 %indvars.iv443, 2 ; 2 uses
  %niter716.next.1 = add i64 %niter716, 2         ; 2 uses
  %niter716.ncmp.1 = icmp eq i64 %niter716.next.1, %unroll_iter715
  br i1 %niter716.ncmp.1, label %._crit_edge407.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !249

bb.cj:                                            ; preds = %bb.bu, %bb.bx, %bb.br
  %.pn156.pn.pn = phi { ptr, i32 } [ %i.afw, %bb.br ], [ %.pn156, %bb.bx ], [ %.pn, %bb.bu ]
  resume { ptr, i32 } %.pn156.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK9btMatrixXIfE9transposeEv(ptr dead_on_unwind noalias writable sret(%struct.btMatrixX) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !106  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !105    ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !250
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i32 0, ptr %i.g, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !26
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.b, i32 noundef %i.c)
          to label %_ZN9btMatrixXIfEC2Eii.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.aj, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.q) #14
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.r) #14
  br label %common.resume

_ZN9btMatrixXIfEC2Eii.exit:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.22)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.s = load i32, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN9btMatrixXIfE7setZeroEv.exit, label %_Z9btSetZeroIfEvPT_i.exit.i

_Z9btSetZeroIfEvPT_i.exit.i:                      ; preds = %.noexc
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.u = sext i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.v, i1 false), !tbaa !103
  br label %_ZN9btMatrixXIfE7setZeroEv.exit

_ZN9btMatrixXIfE7setZeroEv.exit:                  ; preds = %.noexc, %_Z9btSetZeroIfEvPT_i.exit.i
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.w = load i32, ptr %i.a, align 4, !tbaa !106  ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader.lr.ph, label %._crit_edge20.split

.preheader.lr.ph:                                 ; preds = %_ZN9btMatrixXIfE7setZeroEv.exit
  %i.y = load i32, ptr %1, align 8, !tbaa !105    ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader.lr.ph.split, label %._crit_edge20.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = zext nneg i32 %i.w to i64               ; 3 uses
  %wide.trip.count25 = zext nneg i32 %i.w to i64
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.y, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod30 = trunc i32 %i.y to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
end_hunk_3
