inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE6RehashENS0_16PtrComprCageBaseE:bb.a
  %.sroa.0.0.in.i.us = and i32 %i.be, %i.bc       ; 2 uses
  %.sroa.0.0.i.us = zext i32 %.sroa.0.0.in.i.us to i64 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.bf, %.03587.us
  br i1 %exitcond.not.i.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us, label %.lr.ph.i.us, !llvm.loop !77

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us: ; preds = %.lr.ph.i.us, %bb.i, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us
  %spec.select.i.us = phi i64 [ %.sroa.0.021.i.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us ], [ %.sroa.0.0.i.us, %bb.i ], [ %.sroa.065.084.us, %.lr.ph.i.us ] ; 5 uses
  %i.bg = icmp eq i64 %.sroa.065.084.us, %spec.select.i.us
  br i1 %i.bg, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.bh = trunc nuw i64 %spec.select.i.us to i32
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %0, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8 ; 5 uses
  %i.bn = load i64, ptr %.sroa.0.0.i.i, align 8
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %.critedge.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us: ; preds = %bb.j
  %i.bp = load i64, ptr %i.y, align 8
  %.not81.us = icmp eq i64 %i.bm, %i.bp
  br i1 %.not81.us, label %.critedge.us, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us
  %i.bq = and i64 %i.bm, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = add nsw i64 %i.bm, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.0.copyload.i.i.i.i.i.i.i37.us = load double, ptr %i.bu, align 1
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

bb.m:                                             ; preds = %bb.k
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = sitofp i32 %i.bw to double
  br label %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us

_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us: ; preds = %bb.m, %bb.l
  %i.by = phi double [ %i.bx, %bb.m ], [ %.0.copyload.i.i.i.i.i.i.i37.us, %bb.l ]
  %i.bz = fptoui double %i.by to i32
  %i.ca = load i64, ptr %i.z, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = call noundef i32 @_Z11halfsiphashjm(i32 noundef %i.bz, i64 noundef %i.ce) #28
  %i.cg = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  %.sroa.0.0.in20.i39.us = and i32 %i.cj, %i.cf   ; 2 uses
  %.sroa.0.021.i40.us = zext i32 %.sroa.0.0.in20.i39.us to i64 ; 2 uses
  br i1 %.not22.i.us, label %.lr.ph.i43.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us

.lr.ph.i43.us:                                    ; preds = %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us, %bb.n
  %.sroa.0.025.i44.us = phi i64 [ %.sroa.0.0.i48.us, %bb.n ], [ %.sroa.0.021.i40.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.sroa.0.0.in24.i45.us = phi i32 [ %.sroa.0.0.in.i47.us, %bb.n ], [ %.sroa.0.0.in20.i39.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ]
  %.023.i46.us = phi i32 [ %i.cm, %bb.n ], [ 1, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ] ; 2 uses
  %i.ck = icmp eq i64 %spec.select.i.us, %.sroa.0.025.i44.us
  br i1 %i.ck, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i43.us
  %i.cl = add i32 %.023.i46.us, %.sroa.0.0.in24.i45.us
  %i.cm = add nuw nsw i32 %.023.i46.us, 1         ; 2 uses
  %.sroa.0.0.in.i47.us = and i32 %i.cl, %i.cj     ; 2 uses
  %.sroa.0.0.i48.us = zext i32 %.sroa.0.0.in.i47.us to i64 ; 2 uses
  %exitcond.not.i49.us = icmp eq i32 %i.cm, %.03587.us
  br i1 %exitcond.not.i49.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us, label %.lr.ph.i43.us, !llvm.loop !77

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us: ; preds = %bb.n, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us
  %spec.select.i42.us = phi i64 [ %.sroa.0.021.i40.us, %_ZN2v88internal25NumberDictionaryBaseShape13HashForObjectENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i38.us ], [ %.sroa.0.0.i48.us, %bb.n ]
  %.not82.us = icmp eq i64 %spec.select.i42.us, %spec.select.i.us
  br i1 %.not82.us, label %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us, label %.critedge.us

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us: ; preds = %.lr.ph.i43.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us
  %i.cn = add i64 %.sroa.065.084.us, 1
  br label %bb.p

.critedge.us:                                     ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit36.us, %bb.j
  %i.co = load i32, ptr %1, align 4
  call void @_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE4SwapENS0_13InternalIndexES5_NS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %.sroa.065.084.us, i64 %spec.select.i.us, i32 noundef %i.co)
  br label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit.us
  %i.cp = add nuw nsw i64 %.sroa.065.084.us, 1
  br label %bb.p, !llvm.loop !78

_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us: ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.us, %bb.e
  %i.cq = add nuw nsw i64 %.sroa.065.084.us, 1
  br label %bb.p, !llvm.loop !78

bb.p:                                             ; preds = %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us, %bb.o, %.critedge.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us
  %.sroa.065.2.us = phi i64 [ %i.cq, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %i.cp, %bb.o ], [ %.sroa.065.084.us, %.critedge.us ], [ %i.cn, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us ] ; 2 uses
  %.4.us = phi i1 [ %.186.us, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.us ], [ %.186.us, %bb.o ], [ %.186.us, %.critedge.us ], [ false, %_ZN2v88internal9HashTableINS0_22SimpleNumberDictionaryENS0_27SimpleNumberDictionaryShapeEE13EntryForProbeENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEEiNS0_13InternalIndexE.exit50.thread.us ] ; 2 uses
  %i.cr = icmp ult i64 %.sroa.065.2.us, %i.x
  br i1 %i.cr, label %bb.e, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.p
  %i.cs = add nuw nsw i32 %.03587.us, 1
  br i1 %.4.us, label %.split.us, label %.preheader.us, !llvm.loop !79

.split.us:                                        ; preds = %._crit_edge.us
  %i.ct = load i64, ptr %i.y, align 8             ; 3 uses
  %i.cu = load i64, ptr %.sroa.0.0.i.i, align 8   ; 3 uses
  %i.cv = icmp eq i64 %i.x, 1
  br i1 %i.cv, label %.lr.ph.epil.preheader, label %.split.us.new

.split.us.new:                                    ; preds = %.split.us
  %unroll_iter = and i64 %i.x, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %i.cw = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.cw, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.split.us
  %.sroa.053.089.epil.init = phi i64 [ 0, %.split.us ], [ %i.dt, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.cx = trunc i64 %.sroa.053.089.epil.init to i32
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 40     ; 2 uses
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %i.dd = icmp eq i64 %i.dc, %i.ct
  br i1 %i.dd, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.epil.preheader
  store atomic volatile i64 %i.cu, ptr %i.db monotonic, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.epil.preheader, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic volatile i64 0, ptr %i.de monotonic, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

.lr.ph:                                           ; preds = %bb.t, %.split.us.new
  %.sroa.053.089 = phi i64 [ 0, %.split.us.new ], [ %i.dt, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.split.us.new ], [ %niter.next.1, %bb.t ]
  %i.df = trunc i64 %.sroa.053.089 to i32
  %i.dg = shl nsw i32 %i.df, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %0, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 40     ; 2 uses
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8
  %i.dl = icmp eq i64 %i.dk, %i.ct
  br i1 %i.dl, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %.lr.ph
  store atomic volatile i64 %i.cu, ptr %i.dj monotonic, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.r, %.lr.ph
  %i.dm = trunc i64 %.sroa.053.089 to i32
  %i.dn = shl i32 %i.dm, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %0, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 56     ; 2 uses
  %i.dr = load atomic volatile i64, ptr %i.dq monotonic, align 8
  %i.ds = icmp eq i64 %i.dr, %i.ct
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.1
  store atomic volatile i64 %i.cu, ptr %i.dq monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.1
  %i.dt = add nuw nsw i64 %.sroa.053.089, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray4SortEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2 ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = icmp sgt i16 %i.d, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge180

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = lshr i16 %i.d, 1                         ; 2 uses
  %.zext = zext nneg i16 %i.g to i32              ; 2 uses
  %.not192 = icmp eq i16 %i.d, 1
  br i1 %.not192, label %._crit_edge180, label %.lr.ph172

.lr.ph172:                                        ; preds = %._crit_edge
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E) ; 2 uses
  %i.i = zext nneg i16 %i.g to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 8
  %i.j = mul nuw nsw i64 %indvars.iv, 103079215104
  %sext.i.i = add nuw nsw i64 %i.j, 137438953472
  %i.k = lshr exact i64 %sext.i.i, 32
  %i.l = or disjoint i64 %i.k, 7
  %i.m = add i64 %i.l, %.sroa.01.0.copyload.i.i
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %sh.diff.i = lshr i64 %i.o, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.p = and i32 %tr.sh.diff.i, -1047554
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 10
  %i.r = or i32 %i.p, %i.q
  %i.s = ashr exact i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 32
  store atomic volatile i64 %i.u, ptr %i.n monotonic, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

.lr.ph179:                                        ; preds = %.thread
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E) ; 2 uses
  %i.w = zext nneg i32 %i.e to i64
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph172, %.thread
  %indvars.iv182 = phi i64 [ %i.i, %.lr.ph172 ], [ %indvars.iv.next183, %.thread ] ; 2 uses
  %indvars.iv.next183 = add nsw i64 %indvars.iv182, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next183 to i32
  %1 = and i64 %indvars.iv.next183, 4294967295
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.x = mul i64 %1, 103079215104
  %sext.i.i.i.i = add i64 %i.x, 137438953472
  %i.y = ashr exact i64 %sext.i.i.i.i, 32
  %i.z = or disjoint i64 %i.y, 7
  %i.aa = add i64 %i.z, %.sroa.01.0.copyload.i.i.i.i
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %sum.shift.i.i.i = lshr i64 %i.ac, 41
  %i.ad = and i64 %sum.shift.i.i.i, 1023
  %i.ae = mul nuw nsw i64 %i.ad, 103079215104
  %sext.i.i.i = add nuw nsw i64 %i.ae, 137438953472
  %i.af = lshr exact i64 %sext.i.i.i, 32
  %i.ag = add i64 %.sroa.01.0.copyload.i.i.i.i, -1
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load atomic i32, ptr %i.am acquire, align 4 ; 3 uses
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNK2v88internal4Name4hashEv.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.al, i32 noundef %i.an)
  br label %_ZNK2v88internal4Name4hashEv.exit

_ZNK2v88internal4Name4hashEv.exit:                ; preds = %bb.b, %bb.c
  %.0.in.i = phi i32 [ %i.aq, %bb.c ], [ %i.an, %bb.b ]
  %.0.i = lshr i32 %.0.in.i, 2
  %i.ar = trunc nuw i64 %indvars.iv182 to i32     ; 2 uses
  %.not73.not165.not = icmp slt i32 %.zext, %i.ar
  br i1 %.not73.not165.not, label %.thread, label %.lr.ph167

.lr.ph167:                                        ; preds = %_ZNK2v88internal4Name4hashEv.exit, %bb.l
  %.064166 = phi i32 [ %.161, %bb.l ], [ %indvars, %_ZNK2v88internal4Name4hashEv.exit ] ; 2 uses
  %i.as = shl nuw nsw i32 %.064166, 1             ; 2 uses
  %i.at = or disjoint i32 %i.as, 1                ; 3 uses
  %i.au = zext nneg i32 %i.at to i64
  %.sroa.01.0.copyload.i.i.i.i79 = load i64, ptr %0, align 8 ; 2 uses
  %i.av = mul i64 %i.au, 103079215104
  %sext.i.i.i.i80 = add i64 %i.av, 137438953472
  %i.aw = ashr exact i64 %sext.i.i.i.i80, 32
  %i.ax = or disjoint i64 %i.aw, 7
  %i.ay = add i64 %i.ax, %.sroa.01.0.copyload.i.i.i.i79
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %sum.shift.i.i.i81 = lshr i64 %i.ba, 41
  %i.bb = and i64 %sum.shift.i.i.i81, 1023
  %i.bc = mul nuw nsw i64 %i.bb, 103079215104
  %sext.i.i.i82 = add nuw nsw i64 %i.bc, 137438953472
  %i.bd = lshr exact i64 %sext.i.i.i82, 32
  %i.be = add i64 %.sroa.01.0.copyload.i.i.i.i79, -1
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load atomic i32, ptr %i.bk acquire, align 4 ; 3 uses
  %i.bm = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZNK2v88internal4Name4hashEv.exit85, label %bb.d, !prof !28

bb.d:                                             ; preds = %.lr.ph167
  %i.bo = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 55448
  %i.bs = load i8, ptr %i.br, align 8, !range !16
  %i.bt = trunc nuw i8 %i.bs to i1
  %not..i.i.i = xor i1 %i.bq, true
  %i.bu = select i1 %not..i.i.i, i1 true, i1 %i.bt
  br i1 %i.bu, label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 64088
  %i.bw = load i8, ptr %i.bv, align 8, !range !16, !noundef !17
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 64080
  %i.bz = load ptr, ptr %i.by, align 8
  br label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit

_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit: ; preds = %bb.d, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i
  %.pn.i.i = phi ptr [ %i.bz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %i.bo, %bb.d ]
  %i.ca = lshr i32 %i.bl, 4
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58472
  %i.cb = load ptr, ptr %.in.i.i, align 8
  %i.cc = tail call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, i32 noundef %i.ca) #28
  br label %_ZNK2v88internal4Name4hashEv.exit85

_ZNK2v88internal4Name4hashEv.exit85:              ; preds = %.lr.ph167, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit
  %.0.in.i83 = phi i32 [ %i.cc, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit ], [ %i.bl, %.lr.ph167 ]
  %.0.i84 = lshr i32 %.0.in.i83, 2                ; 3 uses
  %i.cd = add nuw nsw i32 %i.as, 2                ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %i.e
  br i1 %i.ce, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNK2v88internal4Name4hashEv.exit85
  %i.cf = zext nneg i32 %i.cd to i64
  %.sroa.01.0.copyload.i.i.i.i86 = load i64, ptr %0, align 8 ; 2 uses
  %i.cg = mul i64 %i.cf, 103079215104
  %sext.i.i.i.i87 = add i64 %i.cg, 137438953472
  %i.ch = ashr exact i64 %sext.i.i.i.i87, 32
  %i.ci = or disjoint i64 %i.ch, 7
  %i.cj = add i64 %i.ci, %.sroa.01.0.copyload.i.i.i.i86
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %sum.shift.i.i.i88 = lshr i64 %i.cl, 41
  %i.cm = and i64 %sum.shift.i.i.i88, 1023
  %i.cn = mul nuw nsw i64 %i.cm, 103079215104
  %sext.i.i.i89 = add nuw nsw i64 %i.cn, 137438953472
  %i.co = lshr exact i64 %sext.i.i.i89, 32
  %i.cp = add i64 %.sroa.01.0.copyload.i.i.i.i86, -1
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load atomic volatile i64, ptr %i.cr monotonic, align 8
  %i.ct = add i64 %i.cs, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load atomic i32, ptr %i.cv acquire, align 4 ; 3 uses
  %i.cx = and i32 %i.cw, 1
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZNK2v88internal4Name4hashEv.exit92, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.cz = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 55448
  %i.dd = load i8, ptr %i.dc, align 8, !range !16
  %i.de = trunc nuw i8 %i.dd to i1
  %not..i.i.i139 = xor i1 %i.db, true
  %i.df = select i1 %not..i.i.i139, i1 true, i1 %i.de
  br i1 %i.df, label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit143, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 64088
  %i.dh = load i8, ptr %i.dg, align 8, !range !16, !noundef !17
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i140, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i140: ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 64080
  %i.dk = load ptr, ptr %i.dj, align 8
  br label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit143

_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit143: ; preds = %bb.h, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i140
  %.pn.i.i141 = phi ptr [ %i.dk, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i140 ], [ %i.cz, %bb.h ]
  %i.dl = lshr i32 %i.cw, 4
  %.in.i.i142 = getelementptr inbounds nuw i8, ptr %.pn.i.i141, i64 58472
  %i.dm = load ptr, ptr %.in.i.i142, align 8
  %i.dn = tail call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, i32 noundef %i.dl) #28
  br label %_ZNK2v88internal4Name4hashEv.exit92

_ZNK2v88internal4Name4hashEv.exit92:              ; preds = %bb.g, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit143
  %.0.in.i90 = phi i32 [ %i.dn, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit143 ], [ %i.cw, %bb.g ]
  %.0.i91 = lshr i32 %.0.in.i90, 2                ; 2 uses
  %i.do = icmp samesign ugt i32 %.0.i91, %.0.i84
  %spec.select = select i1 %i.do, i32 %i.cd, i32 %i.at
  %spec.select75 = tail call i32 @llvm.umax.i32(i32 %.0.i91, i32 %.0.i84)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal4Name4hashEv.exit92, %_ZNK2v88internal4Name4hashEv.exit85
  %.161 = phi i32 [ %spec.select, %_ZNK2v88internal4Name4hashEv.exit92 ], [ %i.at, %_ZNK2v88internal4Name4hashEv.exit85 ] ; 3 uses
  %.159 = phi i32 [ %spec.select75, %_ZNK2v88internal4Name4hashEv.exit92 ], [ %.0.i84, %_ZNK2v88internal4Name4hashEv.exit85 ]
  %.not74 = icmp samesign ugt i32 %.159, %.0.i
  br i1 %.not74, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = sext i32 %.064166 to i64
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.dq = mul i64 %i.dp, 103079215104
  %sext.i.i.i93 = add i64 %i.dq, 137438953472
  %i.dr = ashr exact i64 %sext.i.i.i93, 32
  %i.ds = or disjoint i64 %i.dr, 7
  %i.dt = add i64 %i.ds, %.sroa.01.0.copyload.i.i.i
  %i.du = inttoptr i64 %i.dt to ptr               ; 3 uses
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = sext i32 %.161 to i64
  %i.dx = mul i64 %i.dw, 103079215104
  %sext.i.i6.i = add i64 %i.dx, 137438953472
  %i.dy = ashr exact i64 %sext.i.i6.i, 32
  %i.dz = or disjoint i64 %i.dy, 7                ; 2 uses
  %i.ea = add i64 %.sroa.01.0.copyload.i.i.i, %i.dz
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = load atomic volatile i64, ptr %i.du monotonic, align 8
  %sh.diff.i94 = lshr i64 %i.ec, 31
  %tr.sh.diff.i95 = trunc i64 %sh.diff.i94 to i32
  %i.ee = and i32 %tr.sh.diff.i95, 1047552
  %sh.diff.i.i = lshr i64 %i.ed, 31
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ef = and i32 %tr.sh.diff.i.i, -1047554
  %i.eg = or disjoint i32 %i.ef, %i.ee
  %i.eh = ashr exact i32 %i.eg, 1
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 32
  store atomic volatile i64 %i.ej, ptr %i.du monotonic, align 8
  %.sroa.01.0.copyload.i.i10.i = load i64, ptr %0, align 8
  %i.ek = add i64 %.sroa.01.0.copyload.i.i10.i, %i.dz
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.em = load atomic volatile i64, ptr %i.el monotonic, align 8
  %sh.diff14.i = lshr i64 %i.dv, 31
  %tr.sh.diff15.i = trunc i64 %sh.diff14.i to i32
  %i.en = and i32 %tr.sh.diff15.i, 1047552
  %sh.diff.i12.i = lshr i64 %i.em, 31
  %tr.sh.diff.i13.i = trunc i64 %sh.diff.i12.i to i32
  %i.eo = and i32 %tr.sh.diff.i13.i, -1047554
  %i.ep = or disjoint i32 %i.eo, %i.en
  %i.eq = ashr exact i32 %i.ep, 1
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 32
  store atomic volatile i64 %i.es, ptr %i.el monotonic, align 8
  %.not73.not = icmp slt i32 %.161, %.zext
  br i1 %.not73.not, label %.lr.ph167, label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %_ZNK2v88internal4Name4hashEv.exit
  %i.et = icmp sgt i32 %i.ar, 1
  br i1 %i.et, label %bb.b, label %.lr.ph179, !llvm.loop !81

._crit_edge180:                                   ; preds = %.thread161, %bb.a, %._crit_edge
  ret void

bb.m:                                             ; preds = %.lr.ph179, %.thread161
  %indvars.iv185 = phi i64 [ %i.w, %.lr.ph179 ], [ %indvars.iv.next186, %.thread161 ] ; 2 uses
  %indvars.iv.next186 = add nsw i64 %indvars.iv185, -1 ; 4 uses
  %.sroa.01.0.copyload.i.i.i96 = load i64, ptr %0, align 8 ; 2 uses
  %i.eu = add i64 %.sroa.01.0.copyload.i.i.i96, 39
  %i.ev = inttoptr i64 %i.eu to ptr               ; 3 uses
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8
  %i.ex = mul i64 %indvars.iv.next186, 103079215104
  %sext.i.i6.i97 = add i64 %i.ex, 137438953472
  %i.ey = ashr exact i64 %sext.i.i6.i97, 32
  %i.ez = or disjoint i64 %i.ey, 7                ; 2 uses
  %i.fa = add i64 %.sroa.01.0.copyload.i.i.i96, %i.ez
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load atomic volatile i64, ptr %i.fb monotonic, align 8
  %i.fd = load atomic volatile i64, ptr %i.ev monotonic, align 8
  %sh.diff.i98 = lshr i64 %i.fc, 31
  %tr.sh.diff.i99 = trunc i64 %sh.diff.i98 to i32
  %i.fe = and i32 %tr.sh.diff.i99, 1047552
  %sh.diff.i.i100 = lshr i64 %i.fd, 31
  %tr.sh.diff.i.i101 = trunc i64 %sh.diff.i.i100 to i32
  %i.ff = and i32 %tr.sh.diff.i.i101, -1047554
  %i.fg = or disjoint i32 %i.ff, %i.fe
  %i.fh = ashr exact i32 %i.fg, 1
  %i.fi = sext i32 %i.fh to i64
  %i.fj = shl nsw i64 %i.fi, 32
  store atomic volatile i64 %i.fj, ptr %i.ev monotonic, align 8
  %.sroa.01.0.copyload.i.i10.i102 = load i64, ptr %0, align 8
  %i.fk = add i64 %.sroa.01.0.copyload.i.i10.i102, %i.ez
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = load atomic volatile i64, ptr %i.fl monotonic, align 8
  %sh.diff14.i103 = lshr i64 %i.ew, 31
  %tr.sh.diff15.i104 = trunc i64 %sh.diff14.i103 to i32
  %i.fn = and i32 %tr.sh.diff15.i104, 1047552
  %sh.diff.i12.i105 = lshr i64 %i.fm, 31
  %tr.sh.diff.i13.i106 = trunc i64 %sh.diff.i12.i105 to i32
  %i.fo = and i32 %tr.sh.diff.i13.i106, -1047554
  %i.fp = or disjoint i32 %i.fo, %i.fn
  %i.fq = ashr exact i32 %i.fp, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 32
  store atomic volatile i64 %i.fs, ptr %i.fl monotonic, align 8
  %.sroa.01.0.copyload.i.i.i.i107 = load i64, ptr %0, align 8 ; 2 uses
  %i.ft = add i64 %.sroa.01.0.copyload.i.i.i.i107, 39
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load atomic volatile i64, ptr %i.fu monotonic, align 8
  %sum.shift.i.i.i108 = lshr i64 %i.fv, 41
  %i.fw = and i64 %sum.shift.i.i.i108, 1023
  %i.fx = mul nuw nsw i64 %i.fw, 103079215104
  %sext.i.i.i109 = add nuw nsw i64 %i.fx, 137438953472
  %i.fy = lshr exact i64 %sext.i.i.i109, 32
  %i.fz = add i64 %.sroa.01.0.copyload.i.i.i.i107, -1
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load atomic volatile i64, ptr %i.gb monotonic, align 8
  %i.gd = add i64 %i.gc, -1
  %i.ge = inttoptr i64 %i.gd to ptr               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load atomic i32, ptr %i.gf acquire, align 4 ; 3 uses
  %i.gh = and i32 %i.gg, 1
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_ZNK2v88internal4Name4hashEv.exit112, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  %i.gj = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.ge, i32 noundef %i.gg)
  br label %_ZNK2v88internal4Name4hashEv.exit112

_ZNK2v88internal4Name4hashEv.exit112:             ; preds = %bb.m, %bb.n
  %.0.in.i110 = phi i32 [ %i.gj, %bb.n ], [ %i.gg, %bb.m ]
  %.0.i111 = lshr i32 %.0.in.i110, 2
  %i.gk = trunc nuw nsw i64 %indvars.iv.next186 to i32
  %i.gl = lshr i32 %i.gk, 1                       ; 2 uses
  %.not.not173.not = icmp eq i32 %i.gl, 0
  br i1 %.not.not173.not, label %.thread161, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZNK2v88internal4Name4hashEv.exit112, %bb.w
  %.054174 = phi i32 [ %.153, %bb.w ], [ 0, %_ZNK2v88internal4Name4hashEv.exit112 ] ; 2 uses
  %i.gm = shl nsw i32 %.054174, 1                 ; 2 uses
  %i.gn = or disjoint i32 %i.gm, 1                ; 3 uses
  %i.go = sext i32 %i.gn to i64
  %.sroa.01.0.copyload.i.i.i.i113 = load i64, ptr %0, align 8 ; 2 uses
  %i.gp = mul i64 %i.go, 103079215104
  %sext.i.i.i.i114 = add i64 %i.gp, 137438953472
  %i.gq = ashr exact i64 %sext.i.i.i.i114, 32
  %i.gr = or disjoint i64 %i.gq, 7
  %i.gs = add i64 %i.gr, %.sroa.01.0.copyload.i.i.i.i113
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = load atomic volatile i64, ptr %i.gt monotonic, align 8
  %sum.shift.i.i.i115 = lshr i64 %i.gu, 41
  %i.gv = and i64 %sum.shift.i.i.i115, 1023
  %i.gw = mul nuw nsw i64 %i.gv, 103079215104
  %sext.i.i.i116 = add nuw nsw i64 %i.gw, 137438953472
  %i.gx = lshr exact i64 %sext.i.i.i116, 32
  %i.gy = add i64 %.sroa.01.0.copyload.i.i.i.i113, -1
  %i.gz = add i64 %i.gy, %i.gx
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load atomic volatile i64, ptr %i.ha monotonic, align 8
  %i.hc = add i64 %i.hb, -1
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load atomic i32, ptr %i.he acquire, align 4 ; 3 uses
  %i.hg = and i32 %i.hf, 1
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %_ZNK2v88internal4Name4hashEv.exit119, label %bb.o, !prof !28

bb.o:                                             ; preds = %.lr.ph175
  %i.hi = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.hj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.hk = trunc nuw i8 %i.hj to i1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 55448
  %i.hm = load i8, ptr %i.hl, align 8, !range !16
  %i.hn = trunc nuw i8 %i.hm to i1
  %not..i.i.i144 = xor i1 %i.hk, true
  %i.ho = select i1 %not..i.i.i144, i1 true, i1 %i.hn
  br i1 %i.ho, label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit148, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 64088
  %i.hq = load i8, ptr %i.hp, align 8, !range !16, !noundef !17
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i145, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i145: ; preds = %bb.p
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hi, i64 64080
  %i.ht = load ptr, ptr %i.hs, align 8
  br label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit148

_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit148: ; preds = %bb.o, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i145
  %.pn.i.i146 = phi ptr [ %i.ht, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i145 ], [ %i.hi, %bb.o ]
  %i.hu = lshr i32 %i.hf, 4
  %.in.i.i147 = getelementptr inbounds nuw i8, ptr %.pn.i.i146, i64 58472
  %i.hv = load ptr, ptr %.in.i.i147, align 8
  %i.hw = tail call noundef i32 @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi(ptr noundef nonnull align 8 dereferenceable(56) %i.hv, i32 noundef %i.hu) #28
  br label %_ZNK2v88internal4Name4hashEv.exit119

_ZNK2v88internal4Name4hashEv.exit119:             ; preds = %.lr.ph175, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit148
  %.0.in.i117 = phi i32 [ %i.hw, %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit148 ], [ %i.hf, %.lr.ph175 ]
  %.0.i118 = lshr i32 %.0.in.i117, 2              ; 3 uses
  %i.hx = add nsw i32 %i.gm, 2                    ; 2 uses
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = icmp sgt i64 %indvars.iv.next186, %i.hy
  br i1 %i.hz, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZNK2v88internal4Name4hashEv.exit119
  %.sroa.01.0.copyload.i.i.i.i120 = load i64, ptr %0, align 8 ; 2 uses
  %i.ia = mul i64 %i.hy, 103079215104
  %sext.i.i.i.i121 = add i64 %i.ia, 137438953472
  %i.ib = ashr exact i64 %sext.i.i.i.i121, 32
  %i.ic = or disjoint i64 %i.ib, 7
  %i.id = add i64 %i.ic, %.sroa.01.0.copyload.i.i.i.i120
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = load atomic volatile i64, ptr %i.ie monotonic, align 8
  %sum.shift.i.i.i122 = lshr i64 %i.if, 41
  %i.ig = and i64 %sum.shift.i.i.i122, 1023
  %i.ih = mul nuw nsw i64 %i.ig, 103079215104
  %sext.i.i.i123 = add nuw nsw i64 %i.ih, 137438953472
  %i.ii = lshr exact i64 %sext.i.i.i123, 32
  %i.ij = add i64 %.sroa.01.0.copyload.i.i.i.i120, -1
  %i.ik = add i64 %i.ij, %i.ii
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load atomic volatile i64, ptr %i.il monotonic, align 8
  %i.in = add i64 %i.im, -1
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load atomic i32, ptr %i.ip acquire, align 4 ; 3 uses
  %i.ir = and i32 %i.iq, 1
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_ZNK2v88internal4Name4hashEv.exit126, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r
  %i.it = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.iu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 55448
  %i.ix = load i8, ptr %i.iw, align 8, !range !16
  %i.iy = trunc nuw i8 %i.ix to i1
  %not..i.i.i149 = xor i1 %i.iv, true
  %i.iz = select i1 %not..i.i.i149, i1 true, i1 %i.iy
  br i1 %i.iz, label %_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj.exit153, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 64088
  %i.jb = load i8, ptr %i.ja, align 8, !range !16, !noundef !17
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i150, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i150: ; preds = %bb.t
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 64080
end_hunk_0
