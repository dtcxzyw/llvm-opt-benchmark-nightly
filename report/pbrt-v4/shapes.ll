Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt13BilinearPatch13CreatePatchesEPKNS_17BilinearPatchMeshEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %wide.load41 = load <4 x ptr>, ptr %i.ag, align 8, !tbaa !212
  store <4 x ptr> %wide.load41, ptr %i.af, align 8, !tbaa !212
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !473

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %.pre24.i, %n.vec39
  br i1 %cmp.n43, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ] ; 4 uses
  %i.ai = sub i64 %.pre24.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.prol
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !212
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !212
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !474

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.am = sub i64 %indvars.iv.i.i.ph, %.pre24.i
  %i.an = icmp ugt i64 %i.am, -8
  br i1 %i.an, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPKN4pbrt17BilinearPatchMeshEE15allocate_objectIS5_EEPT_m.exit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPKN4pbrt17BilinearPatchMeshEE17deallocate_objectIS5_EEvPT_m.exit.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !480
  %i.ap = shl i64 %i.ao, 3
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !481 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %.pre.i.i, i64 noundef %i.ap, i64 noundef 8), !inline_history !475
  %.pre2.pre.i = load i64, ptr %i.e, align 8, !tbaa !479
  br label %_ZN4pstd3pmr21polymorphic_allocatorIPKN4pbrt17BilinearPatchMeshEE17deallocate_objectIS5_EEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPKN4pbrt17BilinearPatchMeshEE17deallocate_objectIS5_EEvPT_m.exit.i.i: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.pre2.i = phi i64 [ %.pre2.pre.i, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ]
  store i64 %spec.select.i, ptr %i.i, align 8, !tbaa !480
  store ptr %.0.i.i.i.i.i, ptr %.phi.trans.insert.i.i, align 8, !tbaa !210
  br label %_ZN4pstd6vectorIPKN4pbrt17BilinearPatchMeshENS_3pmr21polymorphic_allocatorIS4_EEE9push_backERKS4_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !212
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !212
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !212
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !212
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !212
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !212
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.2
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !212
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !212
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.3
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !212
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !212
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.4
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !212
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !212
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.5
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !212
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !212
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.6
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !212
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !212
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre24.i
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !476

_ZN4pstd6vectorIPKN4pbrt17BilinearPatchMeshENS_3pmr21polymorphic_allocatorIS4_EEE9push_backERKS4_.exit: ; preds = %bb.d, %bb.e, %_ZN4pstd3pmr21polymorphic_allocatorIPKN4pbrt17BilinearPatchMeshEE17deallocate_objectIS5_EEvPT_m.exit.i.i
  %i.bs = phi i64 [ %.pre2.i, %_ZN4pstd3pmr21polymorphic_allocatorIPKN4pbrt17BilinearPatchMeshEE17deallocate_objectIS5_EEvPT_m.exit.i.i ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !210
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %1, ptr %i.bv, align 8, !tbaa !212
  %i.bw = add i64 %i.bs, 1
  store i64 %i.bw, ptr %i.e, align 8, !tbaa !479
  %i.bx = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZZN4pbrt13BilinearPatch13CreatePatchesEPKNS_17BilinearPatchMeshEN4pstd3pmr21polymorphic_allocatorISt4byteEEE13allMeshesLock) #32 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !482 ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 4 uses
  %i.cb = ptrtoint ptr %2 to i64
  store i64 %i.cb, ptr %0, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bz, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.thread, label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit

_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.thread: ; preds = %_ZN4pstd6vectorIPKN4pbrt17BilinearPatchMeshENS_3pmr21polymorphic_allocatorIS4_EEE9push_backERKS4_.exit
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !107
  br label %._crit_edge

_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit: ; preds = %_ZN4pstd6vectorIPKN4pbrt17BilinearPatchMeshENS_3pmr21polymorphic_allocatorIS4_EEE9push_backERKS4_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = shl nsw i64 %i.ca, 3                    ; 2 uses
  %i.cg = load ptr, ptr %2, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cf, i64 noundef 8), !inline_history !0 ; 3 uses
  %.pre.pre = load i32, ptr %i.by, align 4, !tbaa !482 ; 2 uses
  store i64 %i.ca, ptr %i.ce, align 8, !tbaa !108
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %i.cf, i1 false), !tbaa !111
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !107
  %i.ck = icmp eq i32 %.pre.pre, 0
  br i1 %i.ck, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit
  %i.cl = sext i32 %.pre.pre to i64
  %i.cm = mul nsw i64 %i.cl, 12
  %i.cn = load ptr, ptr %2, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cm, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt13BilinearPatchEEEPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !477

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt13BilinearPatchEEEPT_m.exit: ; preds = %bb.h
  %.pre25 = load i32, ptr %i.by, align 4, !tbaa !482
  %i.cr = icmp sgt i32 %.pre25, 0
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit.thread, %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEC2EmRKS5_.exit, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt13BilinearPatchEEEPT_m.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt13BilinearPatchEEEPT_m.exit, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt13BilinearPatchEEEPT_m.exit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %indvars.iv ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN4pbrt13BilinearPatchC2EPKNS_17BilinearPatchMeshEii(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull %1, i32 noundef %i.h, i32 noundef %i.ct)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = or i64 %i.cu, 720575940379279360
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load i32, ptr %i.by, align 4, !tbaa !482
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !478

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.h
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp44
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt13BilinearPatch4InitEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32, i64 noundef 8), !inline_history !483 ; 3 uses
  %i.e = ptrtoint ptr %0 to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr @_ZN4pbrt13BilinearPatch9allMeshesE, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt13BilinearPatchC2EPKNS_17BilinearPatchMeshEii(ptr noundef nonnull align 4 dereferenceable(12) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [4 x [4 x %"class.pbrt::Point3"]], align 16 ; 24 uses
  store i32 %2, ptr %0, align 4, !tbaa !215
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !216
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL8blpBytesE) ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !66
  %i.d = add i64 %i.c, 12
  store i64 %i.d, ptr %i.b, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217
  %i.g = shl nsw i32 %3, 2
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !218  ; 4 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !89
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.r, align 4 ; 5 uses
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5113.0.copyload = load float, ptr %.sroa.5113.0..sroa_idx, align 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !89
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %.sroa.0109.0.copyload = load <2 x float>, ptr %i.v, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %.sroa.0107.0.copyload = load <2 x float>, ptr %i.z, align 4 ; 4 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4108.0.copyload = load float, ptr %.sroa.4108.0..sroa_idx, align 4 ; 2 uses
  %i.aa = tail call noundef zeroext i1 @_ZNK4pbrt13BilinearPatch11IsRectangleEPKNS_17BilinearPatchMeshE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1)
  br i1 %i.aa, label %bb.b, label %.preheader167

bb.b:                                             ; preds = %bb.a
  %i.ab = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %.sroa.5113.0.copyload, i64 1
  %i.af = fsub <2 x float> %i.ac, %i.ae           ; 2 uses
  %i.ag = fsub <2 x float> %.sroa.0114.0.copyload, %.sroa.0109.0.copyload ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %.sroa.0114.0.copyload, %.sroa.0111.0.copyload ; 2 uses
  %i.aj = fmul <2 x float> %i.ai, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.al = shufflevector <2 x float> %i.ah, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = fmul <2 x float> %i.af, %i.af
  %i.ao = fadd <2 x float> %i.an, %i.am           ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = tail call noundef float @sqrtf(float noundef %i.ap) #32
  %i.ar = extractelement <2 x float> %i.ao, i64 1
  %i.as = tail call noundef float @sqrtf(float noundef %i.ar) #32
  %i.at = fmul float %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.at, ptr %i.au, align 4, !tbaa !485
  br label %bb.d

.preheader167:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %4, i8 0, i64 192, i1 false), !tbaa !28
  %i.av = insertelement <4 x float> poison, float %.sroa.4108.0.copyload, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %.sroa.5113.0.copyload, i64 1
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ay = fmul <4 x float> %i.ax, <float 0.000000e+00, float f0x3EAAAAAB, float 0.000000e+00, float f0x3F2AAAAB>
  %i.az = insertelement <4 x float> poison, float %.sroa.5113.0.copyload, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %.sroa.4108.0.copyload, i64 1
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bc = fmul <4 x float> %i.bb, <float 1.000000e+00, float f0x3F2AAAAA, float 1.000000e+00, float f0x3EAAAAAA>
  %5 = fadd <4 x float> %i.ay, %i.bc              ; 4 uses
  %i.bd = fmul <2 x float> %.sroa.0111.0.copyload, zeroinitializer
  %i.be = fadd <2 x float> %.sroa.0107.0.copyload, %i.bd ; 4 uses
  %i.bf = fmul <2 x float> %.sroa.0114.0.copyload, zeroinitializer
  %i.bg = fadd <2 x float> %.sroa.0109.0.copyload, %i.bf ; 4 uses
  %6 = insertelement <4 x float> poison, float %.sroa.5.0.copyload, i64 0
  %7 = insertelement <4 x float> %6, float %.sroa.6.0.copyload, i64 1
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %9 = fmul <4 x float> %8, <float 0.000000e+00, float f0x3EAAAAAB, float 0.000000e+00, float f0x3F2AAAAB>
  %10 = insertelement <4 x float> poison, float %.sroa.6.0.copyload, i64 0
  %11 = insertelement <4 x float> %10, float %.sroa.5.0.copyload, i64 1
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %13 = fmul <4 x float> %12, <float 1.000000e+00, float f0x3F2AAAAA, float 1.000000e+00, float f0x3EAAAAAA>
  %14 = fadd <4 x float> %9, %13                  ; 4 uses
  %i.bh = fmul <2 x float> %.sroa.0107.0.copyload, splat (float f0x3F2AAAAB)
  %i.bi = fmul <2 x float> %.sroa.0111.0.copyload, splat (float f0x3EAAAAAA)
  %i.bj = fadd <2 x float> %i.bh, %i.bi           ; 4 uses
  %i.bk = fmul <2 x float> %.sroa.0109.0.copyload, splat (float f0x3F2AAAAB)
  %i.bl = fmul <2 x float> %.sroa.0114.0.copyload, splat (float f0x3EAAAAAA)
  %i.bm = fadd <2 x float> %i.bk, %i.bl           ; 4 uses
  %15 = fmul <2 x float> %.sroa.0107.0.copyload, splat (float f0x3EAAAAAB)
  %i.bn = fmul <2 x float> %.sroa.0111.0.copyload, splat (float f0x3F2AAAAA)
  %i.bo = fadd <2 x float> %15, %i.bn             ; 4 uses
  %16 = fmul <2 x float> %.sroa.0109.0.copyload, splat (float f0x3EAAAAAB)
  %17 = fmul <2 x float> %.sroa.0114.0.copyload, splat (float f0x3F2AAAAA)
  %18 = fadd <2 x float> %16, %17                 ; 4 uses
  %i.bp = fmul <2 x float> %.sroa.0107.0.copyload, zeroinitializer
  %i.bq = fadd <2 x float> %i.bp, %.sroa.0111.0.copyload ; 4 uses
  %i.br = fmul <2 x float> %.sroa.0109.0.copyload, zeroinitializer
  %19 = fadd <2 x float> %i.br, %.sroa.0114.0.copyload ; 4 uses
  %i.bs = fmul <2 x float> %i.bq, zeroinitializer
  %i.bt = fadd <2 x float> %19, %i.bs
  store <2 x float> %i.bt, ptr %4, align 16
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = fmul <2 x float> %i.bo, zeroinitializer
  %i.bv = fadd <2 x float> %18, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %i.bv, ptr %i.bw, align 4
  %i.bx = fmul <2 x float> %i.bj, zeroinitializer
  %i.by = fadd <2 x float> %i.bm, %i.bx
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x float> %i.by, ptr %20, align 8
  %i.bz = fmul <2 x float> %i.be, zeroinitializer
  %i.ca = fadd <2 x float> %i.bg, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 36
  store <2 x float> %i.ca, ptr %i.cb, align 4
  %21 = fmul <4 x float> %5, zeroinitializer
  %22 = fadd <4 x float> %14, %21
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <10 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 2>
  call void @llvm.masked.store.v10f32.p0(<10 x float> %23, ptr align 8 %.sroa.480.0..sroa_idx, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>)
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cd = fmul <2 x float> %19, splat (float f0x3F2AAAAA)
  %i.ce = fmul <2 x float> %i.bq, splat (float f0x3EAAAAAB)
  %i.cf = fadd <2 x float> %i.cd, %i.ce
  store <2 x float> %i.cf, ptr %i.cc, align 16
  %.sroa.480.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cg = fmul <2 x float> %18, splat (float f0x3F2AAAAA)
  %i.ch = fmul <2 x float> %i.bo, splat (float f0x3EAAAAAB)
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 60
  store <2 x float> %i.ci, ptr %i.cj, align 4
  %i.ck = fmul <2 x float> %i.bm, splat (float f0x3F2AAAAA)
  %i.cl = fmul <2 x float> %i.bj, splat (float f0x3EAAAAAB)
  %i.cm = fadd <2 x float> %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %i.cm, ptr %i.cn, align 8
  %i.co = fmul <2 x float> %i.bg, splat (float f0x3F2AAAAA)
  %i.cp = fmul <2 x float> %i.be, splat (float f0x3EAAAAAB)
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 84
  store <2 x float> %i.cq, ptr %i.cr, align 4
  %24 = fmul <4 x float> %14, splat (float f0x3F2AAAAA)
  %25 = fmul <4 x float> %5, splat (float f0x3EAAAAAB)
  %26 = fadd <4 x float> %24, %25
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <10 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 2>
  call void @llvm.masked.store.v10f32.p0(<10 x float> %27, ptr align 8 %.sroa.480.0..sroa_idx.1, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>)
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cs = fmul <2 x float> %19, splat (float f0x3EAAAAAA)
  %i.ct = fmul <2 x float> %i.bq, splat (float f0x3F2AAAAB)
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  store <2 x float> %i.cu, ptr %28, align 16
  %.sroa.480.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cv = fmul <2 x float> %18, splat (float f0x3EAAAAAA)
  %i.cw = fmul <2 x float> %i.bo, splat (float f0x3F2AAAAB)
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 108
  store <2 x float> %i.cx, ptr %i.cy, align 4
  %i.cz = fmul <2 x float> %i.bm, splat (float f0x3EAAAAAA)
  %i.da = fmul <2 x float> %i.bj, splat (float f0x3F2AAAAB)
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 120
  store <2 x float> %i.db, ptr %i.dc, align 8
  %i.dd = fmul <2 x float> %i.bg, splat (float f0x3EAAAAAA)
  %i.de = fmul <2 x float> %i.be, splat (float f0x3F2AAAAB)
  %i.df = fadd <2 x float> %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 132
  store <2 x float> %i.df, ptr %i.dg, align 4
  %29 = fmul <4 x float> %14, splat (float f0x3EAAAAAA)
  %30 = fmul <4 x float> %5, splat (float f0x3F2AAAAB)
  %31 = fadd <4 x float> %29, %30
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <10 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 2>
  call void @llvm.masked.store.v10f32.p0(<10 x float> %32, ptr align 8 %.sroa.480.0..sroa_idx.2, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>)
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 144
  %33 = fmul <2 x float> %19, zeroinitializer
  %34 = fadd <2 x float> %33, %i.bq
  store <2 x float> %34, ptr %i.dh, align 16
  %.sroa.480.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %35 = fmul <2 x float> %18, zeroinitializer
  %36 = fadd <2 x float> %35, %i.bo
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 156
  store <2 x float> %36, ptr %37, align 4
  %38 = fmul <2 x float> %i.bm, zeroinitializer
  %39 = fadd <2 x float> %38, %i.bj
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store <2 x float> %39, ptr %40, align 8
  %41 = fmul <2 x float> %i.bg, zeroinitializer
  %42 = fadd <2 x float> %41, %i.be
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 180
  store <2 x float> %42, ptr %43, align 4
  %44 = fmul <4 x float> %14, zeroinitializer
  %45 = fadd <4 x float> %44, %5
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <10 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 2>
  call void @llvm.masked.store.v10f32.p0(<10 x float> %46, ptr align 8 %.sroa.480.0..sroa_idx.3, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader167, %.preheader
  %indvars.iv181 = phi i64 [ 0, %.preheader167 ], [ %indvars.iv.next182, %.preheader ] ; 2 uses
  %.lcssa172173 = phi float [ 0.000000e+00, %.preheader167 ], [ %i.hz, %.preheader ]
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %indvars.iv181 ; 16 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 60
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.dj, align 16 ; 4 uses
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.dn, align 4 ; 6 uses
  %i.do = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !184
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 76
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.013.0.copyload.1 = load <2 x float>, ptr %i.du, align 8 ; 6 uses
  %.sroa.214.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.214.0.copyload.1 = load float, ptr %.sroa.214.0..sroa_idx.1, align 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 84
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  %.sroa.013.0.copyload.2 = load <2 x float>, ptr %i.dx, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.dj, i64 44
  %.sroa.214.0.copyload.2 = load float, ptr %.sroa.214.0..sroa_idx.2, align 4
  %i.dy = load <2 x float>, ptr %i.dl, align 4, !tbaa !28 ; 3 uses
  %i.dz = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %.sroa.224.0..sroa_idx, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison) ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eb = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.dk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !185 ; 2 uses
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ed = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dp, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !183 ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ef = load <4 x float>, ptr %i.dm, align 4, !tbaa !28 ; 6 uses
  %i.eg = shufflevector <4 x float> %i.ed, <4 x float> %i.ef, <2 x i32> <i32 0, i32 5>
  %i.eh = fsub <2 x float> %i.eg, %i.do           ; 3 uses
  %i.ei = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> %i.ef, <2 x i32> <i32 0, i32 5>
  %i.ek = shufflevector <2 x float> %.sroa.023.0.copyload, <2 x float> %.sroa.013.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.el = fsub <2 x float> %i.ej, %i.ek
  %i.em = shufflevector <4 x float> %i.eb, <4 x float> %i.ef, <2 x i32> <i32 0, i32 6>
  %i.en = fsub <2 x float> %i.em, %.sroa.013.0.copyload ; 3 uses
  %i.eo = shufflevector <4 x float> %i.ei, <4 x float> %i.ef, <2 x i32> <i32 1, i32 6>
  %i.ep = shufflevector <2 x float> %.sroa.023.0.copyload, <2 x float> %.sroa.013.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.eq = fsub <2 x float> %i.eo, %i.ep
  %i.er = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.es = fsub <2 x float> %i.er, %i.ea           ; 3 uses
  %i.et = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = shufflevector <2 x float> %.sroa.023.0.copyload, <2 x float> %.sroa.013.0.copyload.1, <2 x i32> <i32 1, i32 2>
  %i.ev = fsub <2 x float> %i.et, %i.eu           ; 3 uses
  %i.ew = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> %.sroa.013.0.copyload.1, <2 x i32> <i32 0, i32 2>
  %i.ex = fsub <2 x float> %i.ec, %i.ew
  %i.ey = shufflevector <2 x float> %.sroa.023.0.copyload, <2 x float> %.sroa.013.0.copyload.1, <2 x i32> <i32 0, i32 3>
  %i.ez = fsub <2 x float> %i.dy, %i.ey           ; 3 uses
  %i.fa = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> %.sroa.013.0.copyload.1, <2 x i32> <i32 1, i32 3>
  %i.fb = fsub <2 x float> %i.ee, %i.fa
  %i.fc = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fd = insertelement <2 x float> %i.fc, float %i.dr, i64 0
  %i.fe = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %.sroa.214.0.copyload.1, i64 1
  %i.fg = fsub <2 x float> %i.fd, %i.ff           ; 3 uses
  %i.fh = fmul <2 x float> %i.es, %i.fb           ; 2 uses
  %i.fi = fneg <2 x float> %i.fh
  %i.fj = shufflevector <2 x float> %i.ev, <2 x float> %i.en, <2 x i32> <i32 0, i32 3>
  %i.fk = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.fj, <2 x float> %i.fg, <2 x float> %i.fi)
  %i.fl = fneg <2 x float> %i.es
  %i.fm = shufflevector <2 x float> %i.eh, <2 x float> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.fn = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.fl, <2 x float> %i.fm, <2 x float> %i.fh)
  %i.fo = fadd <2 x float> %i.fk, %i.fn           ; 2 uses
  %i.fp = fmul <2 x float> %i.el, %i.fg           ; 2 uses
  %i.fq = fneg <2 x float> %i.fp
  %i.fr = shufflevector <2 x float> %i.en, <2 x float> %i.ev, <2 x i32> <i32 0, i32 3>
  %i.fs = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.es, <2 x float> %i.fr, <2 x float> %i.fq)
  %i.ft = shufflevector <2 x float> %i.ez, <2 x float> %i.eh, <2 x i32> <i32 0, i32 3>
  %i.fu = fneg <2 x float> %i.ft
  %i.fv = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.fu, <2 x float> %i.fg, <2 x float> %i.fp)
  %i.fw = fadd <2 x float> %i.fs, %i.fv           ; 2 uses
  %i.fx = fmul <2 x float> %i.en, %i.ev           ; 2 uses
  %i.fy = fneg <2 x float> %i.fx
  %i.fz = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.eh, <2 x float> %i.ez, <2 x float> %i.fy)
  %i.ga = fneg <2 x float> %i.eq
  %i.gb = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ga, <2 x float> %i.ex, <2 x float> %i.fx)
  %i.gc = fadd <2 x float> %i.fz, %i.gb           ; 2 uses
  %i.gd = fmul <2 x float> %i.fo, %i.fo
  %i.ge = fmul <2 x float> %i.fw, %i.fw
  %i.gf = fadd <2 x float> %i.gd, %i.ge
  %i.gg = fmul <2 x float> %i.gc, %i.gc
  %i.gh = fadd <2 x float> %i.gg, %i.gf
  %i.gi = load <2 x float>, ptr %i.dv, align 4, !tbaa !28
  %i.gj = load <2 x float>, ptr %i.dw, align 8, !tbaa !28
  %i.gk = fsub <2 x float> %i.gi, %.sroa.013.0.copyload.1 ; 2 uses
  %i.gl = shufflevector <2 x float> %.sroa.013.0.copyload.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x float> %i.gl, float %.sroa.214.0.copyload.1, i64 1
  %i.gn = fsub <2 x float> %i.gj, %i.gm           ; 3 uses
  %i.go = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  %i.gp = fneg float %i.go
  %i.gq = fneg <2 x float> %i.gn
  %i.gr = load <2 x float>, ptr %i.dt, align 4, !tbaa !28
  %i.gs = load <2 x float>, ptr %i.ds, align 8, !tbaa !28
  %i.gt = fsub <2 x float> %i.gs, %.sroa.013.0.copyload.2 ; 3 uses
  %i.gu = shufflevector <2 x float> %.sroa.013.0.copyload.2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gv = insertelement <2 x float> %i.gu, float %.sroa.214.0.copyload.2, i64 1
  %i.gw = fsub <2 x float> %i.gr, %i.gv           ; 2 uses
  %i.gx = extractelement <2 x float> %i.gw, i64 1 ; 2 uses
  %i.gy = fmul float %i.go, %i.gx                 ; 2 uses
  %i.gz = fneg float %i.gy
  %i.ha = extractelement <2 x float> %i.gn, i64 1
  %i.hb = extractelement <2 x float> %i.gt, i64 0
  %i.hc = tail call noundef float @llvm.fma.f32(float %i.ha, float %i.hb, float %i.gz)
  %i.hd = tail call noundef float @llvm.fma.f32(float %i.gp, float %i.gx, float %i.gy)
  %i.he = fadd float %i.hc, %i.hd                 ; 2 uses
  %i.hf = fmul <2 x float> %i.gn, %i.gt           ; 2 uses
  %i.hg = fneg <2 x float> %i.hf
  %i.hh = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gk, <2 x float> %i.gw, <2 x float> %i.hg)
  %i.hi = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gq, <2 x float> %i.gt, <2 x float> %i.hf)
  %i.hj = fadd <2 x float> %i.hh, %i.hi           ; 2 uses
  %i.hk = fmul float %i.he, %i.he
  %i.hl = fmul <2 x float> %i.hj, %i.hj           ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 1
  %i.hn = fadd float %i.hm, %i.hk
  %i.ho = extractelement <2 x float> %i.hl, i64 0
  %i.hp = fadd float %i.ho, %i.hn
  %sqrt.2 = tail call float @llvm.sqrt.f32(float %i.hp)
  %i.hq = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gh)
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hs = insertelement <4 x float> %i.hr, float %sqrt.2, i64 2
  %i.ht = fmul <4 x float> %i.hs, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float poison> ; 3 uses
  %i.hu = extractelement <4 x float> %i.ht, i64 0
  %i.hv = fadd float %.lcssa172173, %i.hu
  %i.hw = extractelement <4 x float> %i.ht, i64 1
  %i.hx = fadd float %i.hv, %i.hw
  %i.hy = extractelement <4 x float> %i.ht, i64 2
  %i.hz = fadd float %i.hx, %i.hy                 ; 2 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next182, 3
  br i1 %exitcond184.not, label %bb.c, label %.preheader, !llvm.loop !484

bb.c:                                             ; preds = %.preheader
  store float %i.hz, ptr %i.di, align 4, !tbaa !485
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4pbrt13BilinearPatch11IsRectangleEPKNS_17BilinearPatchMeshE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !216
  %i.e = shl nsw i32 %i.d, 2
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218  ; 4 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !89
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %.sroa.0264.0.copyload = load <2 x float>, ptr %i.l, align 4 ; 9 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %.sroa.0254.0.copyload = load <2 x float>, ptr %i.p, align 4 ; 6 uses
  %.sroa.10262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10262.0.copyload = load float, ptr %.sroa.10262.0..sroa_idx, align 4 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !89
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %.sroa.0244.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 7 uses
  %.sroa.10252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.10252.0.copyload = load float, ptr %.sroa.10252.0..sroa_idx, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.w ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 5 uses
  %i.y = fcmp oeq <2 x float> %.sroa.0264.0.copyload, %.sroa.0244.0.copyload
  %i.z = extractelement <2 x i1> %i.y, i64 0
  %.sroa.0264.4.vec.extract = extractelement <2 x float> %.sroa.0264.0.copyload, i64 1 ; 3 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.0244.0.copyload, i64 1 ; 2 uses
  %i.aa = fcmp oeq float %.sroa.0264.4.vec.extract, %.sroa.01.4.vec.extract.i
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = fcmp oeq float %.sroa.12.0.copyload, %.sroa.10252.0.copyload
  %or.cond = select i1 %or.cond.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %.critedge, label %_ZNK4pbrt6Tuple3INS_6Point3EfEeqENS1_IfEE.exit.thread

_ZNK4pbrt6Tuple3INS_6Point3EfEeqENS1_IfEE.exit.thread: ; preds = %bb.a
  %.sroa.0235.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_18SurfaceInteractionEJRKfEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.au
  br i1 %i.cu, label %.body31, label %.body31.sink.split

.body31.sink.split:                               ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.bd, %bb.k ], [ %i.ct, %bb.o ]
  %.pn20.ph = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.cs, %bb.o ]
  %i.cv = load i64, ptr %i.au, align 8, !tbaa !62
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cw) #33
  br label %.body31

.body31:                                          ; preds = %.body31.sink.split, %bb.o, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.cs, %bb.o ], [ %.pn20.ph, %.body31.sink.split ] ; 2 uses
  %i.cx = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.z
  br i1 %i.cy, label %.body27, label %.body27.sink.split

.body27.sink.split:                               ; preds = %.body31, %bb.h
  %.sink84 = phi ptr [ %i.an, %bb.h ], [ %i.cx, %.body31 ]
  %.pn20.pn.ph = phi { ptr, i32 } [ %i.am, %bb.h ], [ %.pn20, %.body31 ]
  %i.cz = load i64, ptr %i.z, align 8, !tbaa !62
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.sink84, i64 noundef %i.da) #33
  br label %.body27

.body27:                                          ; preds = %.body27.sink.split, %.body31, %bb.h
  %.pn20.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %.pn20, %.body31 ], [ %.pn20.pn.ph, %.body27.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %.body27
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.body27 ], [ %i.cr, %bb.n ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #32
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.m
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %.body ], [ %i.cq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.u

bb.q:                                             ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !61
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load ptr, ptr %5, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.de, ptr %i.a, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @_ZTSN4pbrt18SurfaceInteractionE, ptr %i.b, align 8, !tbaa !274
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.120, i32 noundef 176, ptr noundef nonnull @.str.145, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %.noexc44 unwind label %bb.s

.noexc44:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dg = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.t
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !62
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.u:                                             ; preds = %bb.s, %bb.p
  %.pn25 = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn20.pn.pn.pn, %bb.p ]
  %i.dl = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.u
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !62
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn25
}

declare void @_ZNK4pbrt18SurfaceInteraction8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_shapes.cpp() #27 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !28
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !28
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !28
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !28
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGnTriHitsnTriTestsE, ptr noundef nonnull @"_ZN4pbrt3$_48__invokeERNS_16StatsAccumulatorE", ptr noundef nonnull @"_ZN4pbrt3$_58__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE")
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL22STATS_REGtriangleBytesE, ptr noundef nonnull @"_ZN4pbrt3$_68__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGcurveBytesE, ptr noundef nonnull @"_ZN4pbrt3$_78__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGnCurveHitsE, ptr noundef nonnull @"_ZN4pbrt3$_88__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL16STATS_REGnCurvesE, ptr noundef nonnull @"_ZN4pbrt3$_98__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL21STATS_REGnSplitCurvesE, ptr noundef nonnull @"_ZN4pbrt4$_108__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGnBLPHitsnBLPTestsE, ptr noundef nonnull @"_ZN4pbrt4$_118__invokeERNS_16StatsAccumulatorE", ptr noundef nonnull @"_ZN4pbrt4$_128__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE")
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL17STATS_REGblpBytesE, ptr noundef nonnull @"_ZN4pbrt4$_138__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL17STATS_REGnSpheresE, ptr noundef nonnull @"_ZN4pbrt4$_148__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGnCylindersE, ptr noundef nonnull @"_ZN4pbrt4$_158__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL15STATS_REGnDisksE, ptr noundef nonnull @"_ZN4pbrt4$_168__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL27STATS_REGdisplacedTrisDeltaE, ptr noundef nonnull @"_ZN4pbrt4$_178__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr>, <4 x ptr>, <4 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v10f32.p0(<10 x float>, ptr captures(none), <10 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { builtin allocsize(0) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{null, null, null, null, null, null}
!1 = distinct !{null}
!2 = distinct !{!2, !93}
!3 = distinct !{null}
!4 = distinct !{!4, !93}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !93}
!8 = distinct !{!8, !93}
!9 = distinct !{!9, !93}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"float", !15, i64 0}
!20 = !{!"any pointer", !15, i64 0}
!21 = !{!"p1 _ZTSN4pbrt9TransformE", !20, i64 0}
!22 = !{!"bool", !15, i64 0}
!23 = !{!"_ZTSN4pbrt6SphereE", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !21, i64 24, !21, i64 32, !22, i64 40, !22, i64 41}
!24 = !{!23, !21, i64 24}
!25 = !{!23, !19, i64 0}
!26 = !{!23, !19, i64 4}
!27 = !{!23, !19, i64 8}
!28 = !{!19, !19, i64 0}
!29 = !{!23, !22, i64 40}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!23, !19, i64 12}
!33 = !{!23, !19, i64 16}
!34 = !{!23, !19, i64 20}
!35 = !{!"_ZTSN4pstd8optionalIN4pbrt11ShapeSampleEEE", !15, i64 0, !22, i64 88}
!36 = !{!35, !22, i64 88}
!37 = !{!"_ZTSN4pbrt8IntervalE", !19, i64 0, !19, i64 4}
!38 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !38, i64 0}
!40 = !{!"_ZTSN4pbrt8Point3fiE", !39, i64 0}
!41 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!42 = !{!"_ZTSN4pbrt7Vector3IfEE", !41, i64 0}
!43 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!44 = !{!"_ZTSN4pbrt7Normal3IfEE", !43, i64 0}
!45 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !19, i64 0, !19, i64 4}
!46 = !{!"_ZTSN4pbrt6Point2IfEE", !45, i64 0}
!47 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !20, i64 0}
!48 = !{!"long", !15, i64 0}
!49 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !48, i64 0}
!50 = !{!"_ZTSN4pbrt6MediumE", !49, i64 0}
!51 = !{!"_ZTSN4pbrt11InteractionE", !40, i64 0, !19, i64 24, !42, i64 28, !44, i64 40, !46, i64 52, !47, i64 64, !50, i64 72}
!52 = !{!"_ZTSN4pbrt11ShapeSampleE", !51, i64 0, !19, i64 80}
!53 = !{!52, !19, i64 80}
!54 = !{!37, !19, i64 0}
!55 = !{!37, !19, i64 4}
!56 = !{!23, !21, i64 32}
!57 = !{!"p1 omnipotent char", !20, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !48, i64 8, !15, i64 16}
!61 = !{!60, !48, i64 8}
!62 = !{!15, !15, i64 0}
!63 = !{!60, !57, i64 0}
!64 = !{!"vtable pointer", !14, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!48, !48, i64 0}
!67 = !{!"_ZTSN4pbrt4DiskE", !21, i64 0, !21, i64 8, !22, i64 16, !22, i64 17, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32}
!68 = !{!67, !21, i64 0}
!69 = !{!67, !19, i64 24}
!70 = !{!67, !19, i64 20}
!71 = !{!67, !22, i64 16}
!72 = !{!67, !21, i64 8}
!73 = !{!"_ZTSN4pbrt8CylinderE", !21, i64 0, !21, i64 8, !22, i64 16, !22, i64 17, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32}
!74 = !{!73, !21, i64 0}
!75 = !{!73, !19, i64 20}
!76 = !{!73, !19, i64 24}
!77 = !{!73, !19, i64 28}
!78 = !{!73, !21, i64 8}
!79 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !20, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p1 _ZTSN4pstd6vectorIPKN4pbrt12TriangleMeshENS_3pmr21polymorphic_allocatorIS4_EEEE", !20, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"_ZTSN4pstd8optionalIN4pbrt20TriangleIntersectionEEE", !15, i64 0, !22, i64 16}
!84 = !{!83, !22, i64 16}
!85 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIPKN4pbrt12TriangleMeshEEE", !79, i64 0}
!86 = !{!"any p2 pointer", !20, i64 0}
!87 = !{!"p2 _ZTSN4pbrt12TriangleMeshE", !86, i64 0}
!88 = !{!"_ZTSN4pstd6vectorIPKN4pbrt12TriangleMeshENS_3pmr21polymorphic_allocatorIS4_EEEE", !85, i64 0, !87, i64 8, !48, i64 16, !48, i64 24}
!89 = !{!16, !16, i64 0}
!90 = !{!88, !87, i64 8}
!91 = !{!"p1 _ZTSN4pbrt12TriangleMeshE", !20, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!"p1 int", !20, i64 0}
!99 = !{!"p1 _ZTSN4pbrt6Point3IfEE", !20, i64 0}
!100 = !{!"p1 _ZTSN4pbrt7Normal3IfEE", !20, i64 0}
!101 = !{!"p1 _ZTSN4pbrt7Vector3IfEE", !20, i64 0}
!102 = !{!"p1 _ZTSN4pbrt6Point2IfEE", !20, i64 0}
!103 = !{!"_ZTSN4pbrt12TriangleMeshE", !16, i64 0, !16, i64 4, !98, i64 8, !99, i64 16, !100, i64 24, !101, i64 32, !102, i64 40, !98, i64 48, !22, i64 56, !22, i64 57}
!104 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEEE", !79, i64 0}
!105 = !{!"p1 _ZTSN4pbrt5ShapeE", !20, i64 0}
!106 = !{!"_ZTSN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEE", !104, i64 0, !105, i64 8, !48, i64 16, !48, i64 24}
!107 = !{!106, !48, i64 24}
!108 = !{!106, !48, i64 16}
!109 = !{!106, !105, i64 8}
!110 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEEE", !48, i64 0}
!111 = !{!110, !48, i64 0}
!112 = !{!"_ZTSN4pbrt8TriangleE", !16, i64 0, !16, i64 4}
!113 = !{!112, !16, i64 0}
!114 = !{!112, !16, i64 4}
!115 = !{!104, !79, i64 0}
!116 = !{!103, !98, i64 8}
!117 = !{!103, !99, i64 16}
!118 = !{!103, !100, i64 24}
!119 = !{!43, !19, i64 0}
!120 = !{!43, !19, i64 4}
!121 = !{!43, !19, i64 8}
!122 = !{!103, !22, i64 56}
!123 = !{!103, !22, i64 57}
!124 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!125 = !{!"_ZTSN4pbrt6Point3IfEE", !124, i64 0}
!126 = !{!"_ZTSN4pbrt3RayE", !125, i64 0, !42, i64 12, !19, i64 24, !50, i64 32}
!127 = !{!126, !19, i64 24}
!128 = !{!41, !19, i64 8}
!129 = !{!49, !48, i64 0}
!130 = !{!"_ZTSN4pbrt18SurfaceInteractionUt_E", !44, i64 0, !42, i64 12, !42, i64 24, !44, i64 36, !44, i64 48}
!131 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !48, i64 0}
!132 = !{!"_ZTSN4pbrt8MaterialE", !131, i64 0}
!133 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !48, i64 0}
!134 = !{!"_ZTSN4pbrt5LightE", !133, i64 0}
!135 = !{!"_ZTSN4pbrt18SurfaceInteractionE", !51, i64 0, !42, i64 80, !42, i64 92, !44, i64 104, !44, i64 116, !130, i64 128, !16, i64 188, !132, i64 192, !134, i64 200, !42, i64 208, !42, i64 220, !19, i64 232, !19, i64 236, !19, i64 240, !19, i64 244}
!136 = !{!"_ZTSN4pbrt17ShapeIntersectionE", !135, i64 0, !19, i64 248}
!137 = !{!136, !19, i64 248}
!138 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !15, i64 0, !22, i64 256}
!139 = !{!138, !22, i64 256}
!140 = !{!51, !19, i64 24}
!141 = !{!135, !16, i64 188}
!142 = !{!22, !22, i64 0}
!143 = !{!98, !98, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
end_hunk_1
