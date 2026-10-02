Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_specatomcomm?download=true
inline.NumInlined: 743
inline.NumDeleted: 330
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_Z16dd_move_x_specatPK12gmx_domdec_tP24gmx_domdec_specat_comm_tPA3_KfPN3gmx11BasicVectorIfEESA_b:bb.a
  br label %.loopexit281.split

bb.v:                                             ; preds = %bb.o
  %i.pq = load ptr, ptr %i.n, align 8, !tbaa !136 ; 5 uses
  %i.pr = load ptr, ptr %i.nr, align 8, !tbaa !137
  %i.ps = load ptr, ptr %i.no, align 8, !tbaa !138
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = ashr exact i64 %i.pv, 1
  %.not.i241 = icmp eq ptr %i.ns, null
  %i.px = getelementptr inbounds nuw [12 x i8], ptr %i.ns, i64 %i.pw
  %spec.select.i242 = select i1 %.not.i241, ptr null, ptr %i.px
  %i.py = getelementptr inbounds nuw i8, ptr %i.no, i64 24 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !135
  %i.qa = shl nsw i32 %i.pz, 1
  %i.qb = sext i32 %i.qa to i64
  %.not.i245 = icmp eq ptr %i.pq, null
  %i.qc = getelementptr inbounds nuw [12 x i8], ptr %i.pq, i64 %i.qb
  %spec.select.i246 = select i1 %.not.i245, ptr null, ptr %i.qc
  store ptr %i.pq, ptr %7, align 8
  store ptr %spec.select.i246, ptr %i.o, align 8
  %i.qd = trunc nuw nsw i64 %indvars.iv388 to i32
  tail call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %0, i32 noundef %i.qd, i32 noundef 1, ptr %i.ns, ptr %spec.select.i242, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %7)
  %i.qe = load i32, ptr %i.py, align 8, !tbaa !135 ; 4 uses
  %i.qf = icmp sgt i32 %i.qe, 0
  br i1 %i.qf, label %.lr.ph294.preheader, label %.loopexit281.split

.lr.ph294.preheader:                              ; preds = %bb.v
  %i.qg = sext i32 %.0211342 to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.qe to i64   ; 4 uses
  %invariant.gep = getelementptr [12 x i8], ptr %3, i64 %i.qg ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.qh = icmp ult i32 %i.qe, 8
  br i1 %i.qh, label %.epil.preheader, label %.lr.ph294.preheader.new

.lr.ph294.preheader.new:                          ; preds = %.lr.ph294.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.y

._crit_edge.unr-lcssa:                            ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph294.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph294.preheader ], [ %indvars.iv.next.7, %._crit_edge.unr-lcssa ]
  %.1213292.epil.init = phi ptr [ %i.pq, %.lr.ph294.preheader ], [ %i.rn, %._crit_edge.unr-lcssa ]
  %lcmp.mod598 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod598)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.w ] ; 2 uses
  %.1213292.epil = phi ptr [ %.1213292.epil.init, %.epil.preheader ], [ %i.qi, %bb.w ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %gep.epil = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.epil, ptr noundef nonnull align 4 dereferenceable(12) %.1213292.epil, i64 12, i1 false), !tbaa.struct !148
  %i.qi = getelementptr inbounds nuw i8, ptr %.1213292.epil, i64 12 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.w, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.unr-lcssa
  %.lcssa585 = phi ptr [ %i.rn, %._crit_edge.unr-lcssa ], [ %i.qi, %bb.w ] ; 2 uses
  %invariant.gep472 = getelementptr [12 x i8], ptr %4, i64 %i.qg ; 9 uses
  %xtraiter603 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.qj = icmp ult i32 %i.qe, 8
  br i1 %i.qj, label %.epil.preheader602, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter607 = and i64 %wide.trip.count, 2147483640
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %._crit_edge.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.1.7, %bb.x ] ; 9 uses
  %.1213292.1 = phi ptr [ %.lcssa585, %._crit_edge.new ], [ %i.qy, %bb.x ] ; 9 uses
  %niter608 = phi i64 [ 0, %._crit_edge.new ], [ %niter608.next.7, %bb.x ]
  %gep473 = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473, ptr noundef nonnull align 4 dereferenceable(12) %.1213292.1, i64 12, i1 false), !tbaa.struct !148
  %i.qk = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 12
  %i.ql = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.1 = getelementptr i8, ptr %i.ql, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.1, ptr noundef nonnull align 4 dereferenceable(12) %i.qk, i64 12, i1 false), !tbaa.struct !148
  %i.qm = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 24
  %i.qn = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.2 = getelementptr i8, ptr %i.qn, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.2, ptr noundef nonnull align 4 dereferenceable(12) %i.qm, i64 12, i1 false), !tbaa.struct !148
  %i.qo = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 36
  %i.qp = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.3 = getelementptr i8, ptr %i.qp, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.3, ptr noundef nonnull align 4 dereferenceable(12) %i.qo, i64 12, i1 false), !tbaa.struct !148
  %i.qq = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 48
  %i.qr = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.4 = getelementptr i8, ptr %i.qr, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.4, ptr noundef nonnull align 4 dereferenceable(12) %i.qq, i64 12, i1 false), !tbaa.struct !148
  %i.qs = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 60
  %i.qt = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.5 = getelementptr i8, ptr %i.qt, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.5, ptr noundef nonnull align 4 dereferenceable(12) %i.qs, i64 12, i1 false), !tbaa.struct !148
  %i.qu = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 72
  %i.qv = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.6 = getelementptr i8, ptr %i.qv, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.6, ptr noundef nonnull align 4 dereferenceable(12) %i.qu, i64 12, i1 false), !tbaa.struct !148
  %i.qw = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 84
  %i.qx = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1
  %gep473.7 = getelementptr i8, ptr %i.qx, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.7, ptr noundef nonnull align 4 dereferenceable(12) %i.qw, i64 12, i1 false), !tbaa.struct !148
  %i.qy = getelementptr inbounds nuw i8, ptr %.1213292.1, i64 96 ; 2 uses
  %indvars.iv.next.1.7 = add nuw nsw i64 %indvars.iv.1, 8 ; 2 uses
  %niter608.next.7 = add i64 %niter608, 8         ; 2 uses
  %niter608.ncmp.7 = icmp eq i64 %niter608.next.7, %unroll_iter607
  br i1 %niter608.ncmp.7, label %.loopexit281.split.loopexit.unr-lcssa, label %bb.x, !llvm.loop !197

bb.y:                                             ; preds = %bb.y, %.lr.ph294.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph294.preheader.new ], [ %indvars.iv.next.7, %bb.y ] ; 9 uses
  %.1213292 = phi ptr [ %i.pq, %.lr.ph294.preheader.new ], [ %i.rn, %bb.y ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph294.preheader.new ], [ %niter.next.7, %bb.y ]
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep, ptr noundef nonnull align 4 dereferenceable(12) %.1213292, i64 12, i1 false), !tbaa.struct !148
  %i.qz = getelementptr inbounds nuw i8, ptr %.1213292, i64 12
  %i.ra = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ra, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.1, ptr noundef nonnull align 4 dereferenceable(12) %i.qz, i64 12, i1 false), !tbaa.struct !148
  %i.rb = getelementptr inbounds nuw i8, ptr %.1213292, i64 24
  %i.rc = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.rc, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.2, ptr noundef nonnull align 4 dereferenceable(12) %i.rb, i64 12, i1 false), !tbaa.struct !148
  %i.rd = getelementptr inbounds nuw i8, ptr %.1213292, i64 36
  %i.re = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.re, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.3, ptr noundef nonnull align 4 dereferenceable(12) %i.rd, i64 12, i1 false), !tbaa.struct !148
  %i.rf = getelementptr inbounds nuw i8, ptr %.1213292, i64 48
  %i.rg = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.4 = getelementptr i8, ptr %i.rg, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.4, ptr noundef nonnull align 4 dereferenceable(12) %i.rf, i64 12, i1 false), !tbaa.struct !148
  %i.rh = getelementptr inbounds nuw i8, ptr %.1213292, i64 60
  %i.ri = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.5 = getelementptr i8, ptr %i.ri, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.5, ptr noundef nonnull align 4 dereferenceable(12) %i.rh, i64 12, i1 false), !tbaa.struct !148
  %i.rj = getelementptr inbounds nuw i8, ptr %.1213292, i64 72
  %i.rk = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.6 = getelementptr i8, ptr %i.rk, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.6, ptr noundef nonnull align 4 dereferenceable(12) %i.rj, i64 12, i1 false), !tbaa.struct !148
  %i.rl = getelementptr inbounds nuw i8, ptr %.1213292, i64 84
  %i.rm = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.7 = getelementptr i8, ptr %i.rm, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep.7, ptr noundef nonnull align 4 dereferenceable(12) %i.rl, i64 12, i1 false), !tbaa.struct !148
  %i.rn = getelementptr inbounds nuw i8, ptr %.1213292, i64 96 ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %bb.y, !llvm.loop !197

.loopexit281.split.loopexit.unr-lcssa:            ; preds = %bb.x
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %.loopexit281.split, label %.epil.preheader602

.epil.preheader602:                               ; preds = %.loopexit281.split.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.1.7, %.loopexit281.split.loopexit.unr-lcssa ]
  %.1213292.1.epil.init = phi ptr [ %.lcssa585, %._crit_edge ], [ %i.qy, %.loopexit281.split.loopexit.unr-lcssa ]
  %lcmp.mod606 = icmp ne i64 %xtraiter603, 0
  tail call void @llvm.assume(i1 %lcmp.mod606)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader602
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader602 ], [ %indvars.iv.next.1.epil, %bb.z ] ; 2 uses
  %.1213292.1.epil = phi ptr [ %.1213292.1.epil.init, %.epil.preheader602 ], [ %i.ro, %bb.z ] ; 2 uses
  %epil.iter604 = phi i64 [ 0, %.epil.preheader602 ], [ %epil.iter604.next, %bb.z ]
  %gep473.epil = getelementptr [12 x i8], ptr %invariant.gep472, i64 %indvars.iv.1.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %gep473.epil, ptr noundef nonnull align 4 dereferenceable(12) %.1213292.1.epil, i64 12, i1 false), !tbaa.struct !148
  %i.ro = getelementptr inbounds nuw i8, ptr %.1213292.1.epil, i64 12
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %.loopexit281.split, label %bb.z, !llvm.loop !198

.loopexit281.split:                               ; preds = %.loopexit281.split.loopexit.unr-lcssa, %bb.z, %bb.v, %bb.u
  %i.rp = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !135
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit281.split, %.loopexit280
  %.pn = phi i32 [ %i.nn, %.loopexit280 ], [ %i.rq, %.loopexit281.split ]
  %.1 = add nsw i32 %.pn, %.0211342
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %i.rr = load i32, ptr %i.a, align 8, !tbaa !119
  %i.rs = sext i32 %i.rr to i64
  %i.rt = icmp slt i64 %indvars.iv.next389, %i.rs
  br i1 %i.rt, label %bb.b, label %._crit_edge346, !llvm.loop !199
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z26setup_specat_communicationP12gmx_domdec_tPSt6vectorIiSaIiEEP24gmx_domdec_specat_comm_tPN3gmx9HashedMapIiEEiiPKcSC_(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::array.105", align 4   ; 13 uses
  %9 = alloca %"struct.std::array.105", align 8   ; 8 uses
  %10 = alloca %"struct.std::array.105", align 4  ; 8 uses
  %11 = alloca %"class.gmx::ArrayRef.106", align 8 ; 5 uses
  %12 = alloca %"class.gmx::ArrayRef.106", align 8 ; 5 uses
  %13 = alloca %"class.gmx::ArrayRef.106", align 8 ; 3 uses
  %14 = alloca %"class.gmx::ArrayRef.106", align 8 ; 3 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store i64 0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.a = load ptr, ptr @debug, align 8, !tbaa !225 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %.0218.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.0218.sroa.gep337 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.0218.sroa.gep340 = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 6 uses
  %.0218.sroa.gep341 = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef %6) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137
  %i.e = load ptr, ptr %1, align 8, !tbaa !138
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr i64 %i.h, 2                         ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 9 uses
  store i32 %i.j, ptr %8, align 4, !tbaa !133
  store i32 %i.j, ptr %.0218.sroa.gep340, align 4, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !119  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.u = zext nneg i32 %i.l to i64
  br label %.peel.begin

._crit_edge:                                      ; preds = %bb.o, %bb.c
  %.0.lcssa = phi i32 [ %i.j, %bb.c ], [ %.lcssa601, %bb.o ]
  %i.v = load ptr, ptr @debug, align 8, !tbaa !225 ; 2 uses
  %.not241 = icmp eq ptr %i.v, null
  br i1 %.not241, label %bb.ab, label %bb.aa

.peel.begin:                                      ; preds = %.lr.ph, %bb.o
  %indvars.iv440 = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next441, %bb.o ] ; 2 uses
  %.0384 = phi i32 [ %i.j, %.lr.ph ], [ %.lcssa601, %bb.o ] ; 2 uses
  %indvars.iv.next441 = add nsw i64 %indvars.iv440, -1 ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next441
  %i.x = load i32, ptr %i.w, align 4, !tbaa !133  ; 2 uses
  %i.y = load i32, ptr %i.o, align 8, !tbaa !226
  %i.z = icmp slt i32 %i.x, %i.y                  ; 2 uses
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !133
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next441 ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next441 to i32 ; 4 uses
  br i1 %i.z, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.peel.begin
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !133 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 2
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !133
  %i.ak = add nsw i32 %i.ah, -1
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.peel.begin
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0218.sroa.phi.peel = phi ptr [ %.0218.sroa.gep, %bb.f ], [ %.0218.sroa.gep337, %bb.e ]
  %.0218.sroa.phi339.peel = phi ptr [ %.0218.sroa.gep340, %bb.f ], [ %.0218.sroa.gep341, %bb.e ]
  %.0218.peel = phi ptr [ %8, %bb.f ], [ %9, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %spec.select.i.peel = select i1 %.not.i, ptr null, ptr %i.am
  store ptr %i.ae, ptr %11, align 8
  store ptr %spec.select.i.peel, ptr %i.q, align 8
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %0, i32 noundef %i.ag, i32 noundef 0, ptr nonnull %.0218.peel, ptr nonnull %.0218.sroa.phi.peel, ptr noundef nonnull byval(%"class.gmx::ArrayRef.106") align 8 %11)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !133 ; 2 uses
  %i.ap = add nsw i32 %i.ao, %.0384               ; 4 uses
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !137 ; 4 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !138   ; 9 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = ashr exact i64 %i.av, 2                 ; 7 uses
  %i.ax = icmp ult i64 %i.aw, %i.aq
  br i1 %i.ax, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp ugt i64 %i.aw, %i.aq
  br i1 %i.ay, label %bb.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i.peel, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.peel

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.peel:   ; preds = %bb.i
  store ptr %i.az, ptr %i.c, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel

bb.j:                                             ; preds = %bb.g
  %i.ba = sub nuw nsw i64 %i.aq, %i.aw            ; 6 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !227
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.at
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = icmp ult i64 %i.aw, 2305843009213693952
  call void @llvm.assume(i1 %i.bf)
  %i.bg = xor i64 %i.aw, 2305843009213693951      ; 2 uses
  %i.bh = icmp ule i64 %i.be, %i.bg
  call void @llvm.assume(i1 %i.bh)
  %.not28.i.peel = icmp ult i64 %i.be, %i.ba
  br i1 %.not28.i.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 4, !tbaa !133
  %i.bi = getelementptr i8, ptr %i.ar, i64 4      ; 3 uses
  %i.bj = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.peel, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.peel

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.peel: ; preds = %bb.k
  %.idx.i.i.i.i.i.i.peel = shl nuw nsw i64 %i.bj, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i.i.peel, i1 false), !tbaa !133
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.peel
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.peel

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.peel: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.peel, %bb.k
  %.0.i.i.i.i.peel = phi ptr [ %i.bl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.peel ], [ %i.bi, %bb.k ]
  store ptr %.0.i.i.i.i.peel, ptr %i.c, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel

bb.l:                                             ; preds = %bb.j
  %i.bm = icmp ult i64 %i.bg, %i.ba
  br i1 %i.bm, label %.loopexit603, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.peel

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.peel: ; preds = %bb.l
  %.sroa.speculated.i.i.peel = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ba)
  %i.bn = add nuw nsw i64 %.sroa.speculated.i.i.peel, %i.aw
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951) ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #15 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.av ; 3 uses
  store i32 0, ptr %i.br, align 4, !tbaa !133
  %i.bs = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.peel, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.peel

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.peel: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.peel
  %i.bu = getelementptr i8, ptr %i.br, i64 4
  %.idx.i.i.i.i.i31.i.peel = shl nuw nsw i64 %i.bs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bu, i8 0, i64 %.idx.i.i.i.i.i31.i.peel, i1 false), !tbaa !133
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.peel

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.peel: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.peel, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.peel
  %i.bv = icmp sgt i64 %i.av, 0
  br i1 %i.bv, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.peel

bb.m:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.peel
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.peel

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.peel: ; preds = %bb.m, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.peel
  %.not.i35.i.peel = icmp eq ptr %i.as, null
  br i1 %.not.i35.i.peel, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.peel, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.peel
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !227
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.by) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.peel

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.peel: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.peel
  store ptr %i.bq, ptr %1, align 8, !tbaa !138
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ba
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !137
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.ca, ptr %i.s, align 8, !tbaa !227
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel

_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel:          ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.peel, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.peel, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.peel, %bb.i, %bb.h
  %i.cb = phi ptr [ %i.bq, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.peel ], [ %i.as, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.peel ], [ %i.as, %bb.h ], [ %i.as, %bb.i ], [ %i.as, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.peel ] ; 4 uses
  %i.cc = load i32, ptr %.0218.sroa.phi339.peel, align 4, !tbaa !133
  %i.cd = sext i32 %i.cc to i64
  %.not.i262.peel = icmp eq ptr %i.cb, null       ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cd
  %spec.select.i263.peel = select i1 %.not.i262.peel, ptr null, ptr %i.ce
  %i.cf = sext i32 %.0384 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cf ; 2 uses
  %i.ch = sext i32 %i.ao to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %spec.select.i267.peel = select i1 %.not.i262.peel, ptr null, ptr %i.ci
  store ptr %i.cg, ptr %12, align 8
  store ptr %spec.select.i267.peel, ptr %i.t, align 8
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %0, i32 noundef %i.ag, i32 noundef 0, ptr %i.cb, ptr %spec.select.i263.peel, ptr noundef nonnull byval(%"class.gmx::ArrayRef.106") align 8 %12)
  br i1 %i.ad, label %bb.o, label %.peel.newph

.peel.newph:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.ck
  store ptr %i.cj, ptr %11, align 8
  store ptr %spec.select.i, ptr %i.q, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.cm = sext i32 %i.ap to i64
  br i1 %i.z, label %bb.r, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel
  %.lcssa601 = phi i32 [ %i.ap, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.peel ], [ %i.ct, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 3 uses
  store i32 %.lcssa601, ptr %.0218.sroa.gep340, align 4, !tbaa !133
  %i.cn = icmp sgt i64 %indvars.iv440, 1
  br i1 %i.cn, label %.peel.begin, label %._crit_edge, !llvm.loop !210

bb.p:                                             ; preds = %.peel.newph
  %i.co = load i32, ptr %i.ab, align 4, !tbaa !133
  %i.cp = icmp sgt i32 %i.co, 2
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !133
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.peel.newph
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0218.sroa.phi = phi ptr [ %.0218.sroa.gep, %bb.r ], [ %.0218.sroa.gep337, %bb.q ]
  %.0218.sroa.phi339 = phi ptr [ %.0218.sroa.gep340, %bb.r ], [ %.0218.sroa.gep341, %bb.q ]
  %.0218 = phi ptr [ %8, %bb.r ], [ %9, %bb.q ]
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, ptr nonnull %.0218, ptr nonnull %.0218.sroa.phi, ptr noundef nonnull byval(%"class.gmx::ArrayRef.106") align 8 %11)
  %i.cs = load i32, ptr %i.cl, align 4, !tbaa !133 ; 2 uses
  %i.ct = add nsw i32 %i.cs, %i.ap                ; 2 uses
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !137 ; 4 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !138   ; 9 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = ashr exact i64 %i.cz, 2                 ; 7 uses
  %i.db = icmp ult i64 %i.da, %i.cu
  br i1 %i.db, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dc = sub nuw nsw i64 %i.cu, %i.da            ; 6 uses
  %i.dd = load ptr, ptr %i.s, align 8, !tbaa !227
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cx
  %i.dg = ashr exact i64 %i.df, 2                 ; 2 uses
  %i.dh = icmp ult i64 %i.da, 2305843009213693952
  call void @llvm.assume(i1 %i.dh)
  %i.di = xor i64 %i.da, 2305843009213693951      ; 2 uses
  %i.dj = icmp ule i64 %i.dg, %i.di
  call void @llvm.assume(i1 %i.dj)
  %.not28.i = icmp ult i64 %i.dg, %i.dc
  br i1 %.not28.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cv, align 4, !tbaa !133
  %i.dk = getelementptr i8, ptr %i.cv, i64 4      ; 3 uses
  %i.dl = add nsw i64 %i.dc, -1                   ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.u
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dl, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dk, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !133
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.u
  %.0.i.i.i.i = phi ptr [ %i.dn, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dk, %bb.u ]
  store ptr %.0.i.i.i.i, ptr %i.c, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %bb.t
  %i.do = icmp ult i64 %i.di, %i.dc
  br i1 %i.do, label %.loopexit603, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

.loopexit603:                                     ; preds = %bb.l, %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.v
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 %i.dc)
  %i.dp = add nuw nsw i64 %.sroa.speculated.i.i, %i.da
  %i.dq = call i64 @llvm.umin.i64(i64 %i.dp, i64 2305843009213693951) ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #15 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.cz ; 3 uses
  store i32 0, ptr %i.dt, align 4, !tbaa !133
  %i.du = add nsw i64 %i.dc, -1                   ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.dw = getelementptr i8, ptr %i.dt, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.du, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dw, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !133
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.dx = icmp sgt i64 %i.cz, 0
  br i1 %i.dx, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.w:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 4 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.w, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.cw, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.dy = load ptr, ptr %i.s, align 8, !tbaa !227
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.ea) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.ds, ptr %1, align 8, !tbaa !138
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dc
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !137
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.ec, ptr %i.s, align 8, !tbaa !227
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.y:                                             ; preds = %bb.s
  %i.ed = icmp ugt i64 %i.da, %i.cu
  br i1 %i.ed, label %bb.z, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.z:                                             ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, %i.ee
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.z
  store ptr %i.ee, ptr %i.c, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, %bb.y, %bb.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ef = phi ptr [ %i.ds, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.cw, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i ], [ %i.cw, %bb.y ], [ %i.cw, %bb.z ], [ %i.cw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.eg = load i32, ptr %.0218.sroa.phi339, align 4, !tbaa !133
  %i.eh = sext i32 %i.eg to i64
  %.not.i262 = icmp eq ptr %i.ef, null            ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eh
  %spec.select.i263 = select i1 %.not.i262, ptr null, ptr %i.ei
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.cm ; 2 uses
  %i.ek = sext i32 %i.cs to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %spec.select.i267 = select i1 %.not.i262, ptr null, ptr %i.el
  store ptr %i.ej, ptr %12, align 8
  store ptr %spec.select.i267, ptr %i.t, align 8
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, ptr %i.ef, ptr %spec.select.i263, ptr noundef nonnull byval(%"class.gmx::ArrayRef.106") align 8 %12)
  br label %bb.o

bb.aa:                                            ; preds = %._crit_edge
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 24, i64 1, ptr nonnull %i.v) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.em = load i32, ptr %i.k, align 8, !tbaa !119
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph412, label %._crit_edge413

.lr.ph412:                                        ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.fi = icmp eq i32 %5, 2
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.ac

._crit_edge413:                                   ; preds = %._crit_edge406, %bb.ab
  %.0225.lcssa = phi i32 [ %4, %bb.ab ], [ %i.qe, %._crit_edge406 ] ; 3 uses
  %.0223.lcssa = phi i32 [ 0, %bb.ab ], [ %i.nk, %._crit_edge406 ] ; 3 uses
  %.not242 = icmp eq i32 %.0223.lcssa, %i.j
  br i1 %.not242, label %bb.cv, label %bb.ch

bb.ac:                                            ; preds = %.lr.ph412, %._crit_edge406
  %indvars.iv453 = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next454, %._crit_edge406 ] ; 7 uses
  %.2410 = phi i32 [ %.0.lcssa, %.lr.ph412 ], [ %i.hf, %._crit_edge406 ]
  %.0223408 = phi i32 [ 0, %.lr.ph412 ], [ %i.nk, %._crit_edge406 ]
  %.0225407 = phi i32 [ %4, %.lr.ph412 ], [ %i.qe, %._crit_edge406 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv453
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !133 ; 2 uses
  %i.fq = load i32, ptr %i.ep, align 8, !tbaa !226
  %.not251 = icmp slt i32 %i.fp, %i.fq
  br i1 %.not251, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !133
  %i.fu = icmp sgt i32 %i.ft, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fv = phi i1 [ true, %bb.ac ], [ %i.fu, %bb.ad ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [64 x i8], ptr %i.eu, i64 %indvars.iv453 ; 7 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv453
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv453 ; 2 uses
  %i.fz = zext i1 %i.fv to i64
  %i.ga = trunc nuw nsw i64 %indvars.iv453 to i32
  %i.gb = trunc nuw nsw i64 %indvars.iv453 to i32 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !137
  %i.ge = load ptr, ptr %i.fw, align 8, !tbaa !138
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2                 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !135 ; 2 uses
  br i1 %i.fv, label %bb.bs, label %bb.bt

bb.ag:                                            ; preds = %bb.ae, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit
  %indvars.iv446 = phi i64 [ %i.fz, %bb.ae ], [ %indvars.iv.next447, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit ] ; 8 uses
  %.3402 = phi i32 [ %.2410, %bb.ae ], [ %i.hf, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit ]
  %.1224400 = phi i32 [ %.0223408, %bb.ae ], [ %i.nk, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit ]
  %.1226399 = phi i32 [ %.0225407, %bb.ae ], [ %i.qe, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit ] ; 3 uses
  %i.gl = sext i32 %.1226399 to i64               ; 3 uses
  %i.gm = load ptr, ptr %i.es, align 8, !tbaa !151 ; 2 uses
  %i.gn = load i32, ptr %i.et, align 8, !tbaa !152 ; 2 uses
  %i.go = load ptr, ptr %i.er, align 8, !tbaa !151
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = shl nsw i64 %i.gr, 3
  %i.gt = zext i32 %i.gn to i64
  %i.gu = add nsw i64 %i.gs, %i.gt                ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gl
  br i1 %i.gv, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %bb.ah

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.ag
  %i.gw = sub nuw i64 %i.gl, %i.gu
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.er, ptr %i.gm, i32 %i.gn, i64 noundef %i.gw, i1 noundef zeroext false)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, %bb.ag
  %i.gx = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %indvars.iv446 ; 7 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv446 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !133
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !133 ; 4 uses
  %i.hc = load ptr, ptr @debug, align 8, !tbaa !225 ; 2 uses
  %.not252 = icmp eq ptr %i.hc, null
  br i1 %.not252, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hd = trunc nuw nsw i64 %indvars.iv446 to i32
  %i.he = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.hc, ptr noundef nonnull @.str.2, i32 noundef %i.ga, i32 noundef %i.hd, i32 noundef %i.hb) #14 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hf = sub nsw i32 %.3402, %i.hb               ; 3 uses
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !138 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 6 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !137
  %.not.i.i270 = icmp eq ptr %i.hi, %i.hg
  br i1 %.not.i.i270, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i271

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i271:     ; preds = %bb.aj
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.aj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i271
  %i.hj = load ptr, ptr %i.ev, align 8, !tbaa !138 ; 3 uses
  %i.hk = load ptr, ptr %i.ew, align 8, !tbaa !137 ; 2 uses
  %.not.i.i272 = icmp eq ptr %i.hk, %i.hj
  br i1 %.not.i.i272, label %_ZNSt6vectorIiSaIiEE5clearEv.exit274, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i273

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i273:     ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.hj, ptr %i.ew, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit274

_ZNSt6vectorIiSaIiEE5clearEv.exit274:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i273
  %i.hl = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.hj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i273 ]
  store i32 0, ptr %8, align 4, !tbaa !133
  %i.hm = icmp sgt i32 %i.hb, 0
  br i1 %i.hm, label %.lr.ph387, label %._crit_edge393

.lr.ph387:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit274
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  %i.ho = sext i32 %i.hf to i64
  %i.hp = sext i32 %i.gz to i64
  %wide.trip.count = zext nneg i32 %i.hb to i64
  br label %bb.ak

._crit_edge388:                                   ; preds = %.thread
  %.pre467 = load ptr, ptr %i.gx, align 8, !tbaa !142 ; 4 uses
  %.pre468 = load ptr, ptr %i.hh, align 8, !tbaa !142 ; 4 uses
  %.not353389 = icmp eq ptr %.pre467, %.pre468
  br i1 %.not353389, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %._crit_edge388
  %i.hq = load ptr, ptr %i.er, align 8, !tbaa !151
  br label %bb.bg

bb.ak:                                            ; preds = %.lr.ph387, %.thread
  %i.hr = phi ptr [ %i.hl, %.lr.ph387 ], [ %i.ls, %.thread ] ; 4 uses
  %indvars.iv443 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next444, %.thread ] ; 3 uses
  %i.hs = load ptr, ptr %1, align 8, !tbaa !138
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %indvars.iv443
  %i.hu = getelementptr [4 x i8], ptr %i.ht, i64 %i.ho
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !133 ; 7 uses
  %i.hw = load ptr, ptr %i.ex, align 8, !tbaa !228 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load i8, ptr %i.hx, align 8, !tbaa !230
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ia = sext i32 %i.hv to i64
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !233
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !235 ; 2 uses
  %i.if = icmp eq i32 %i.ie, -1
  br i1 %i.if, label %.loopexit, label %_ZNK11gmx_ga2la_t4findEi.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !242
  %i.ii = and i32 %i.ih, %i.hv
  %i.ij = load ptr, ptr %i.hw, align 8, !tbaa !243
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %.0.i.i.i = phi i32 [ %i.ii, %bb.am ], [ %i.iq, %bb.ap ]
  %i.ik = sext i32 %.0.i.i.i to i64
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %i.ik ; 4 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !245
  %i.in = icmp eq i32 %i.im, %i.hv
  br i1 %i.in, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !235
  br label %_ZNK11gmx_ga2la_t4findEi.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !246 ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  br i1 %i.ir, label %bb.an, label %.loopexit, !llvm.loop !211

_ZNK11gmx_ga2la_t4findEi.exit.i:                  ; preds = %bb.ao, %bb.al
  %i.is = phi i32 [ %i.ie, %bb.al ], [ %.pre.i, %bb.ao ]
  %.0.i.i = phi ptr [ %i.ic, %bb.al ], [ %i.io, %bb.ao ]
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %_ZNK11gmx_ga2la_t8findHomeEi.exit, label %.loopexit

end_hunk_0
begin_hunk_1_@_Z26setup_specat_communicationP12gmx_domdec_tPSt6vectorIiSaIiEEP24gmx_domdec_specat_comm_tPN3gmx9HashedMapIiEEiiPKcSC_:bb.a
  %i.ja = icmp eq i32 %i.iz, %i.hv
  br i1 %i.ja, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !158 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.aq, label %.thread, !llvm.loop !212

bb.as:                                            ; preds = %bb.aq
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  br label %_ZNK11gmx_ga2la_t8findHomeEi.exit

_ZNK11gmx_ga2la_t8findHomeEi.exit:                ; preds = %_ZNK11gmx_ga2la_t4findEi.exit.i, %bb.as
  %storemerge259.in = phi ptr [ %i.je, %bb.as ], [ %.0.i.i, %_ZNK11gmx_ga2la_t4findEi.exit.i ]
  %storemerge259 = load i32, ptr %storemerge259.in, align 4, !tbaa !133 ; 7 uses
  %i.jf = icmp sgt i32 %storemerge259, -1
  br i1 %i.jf, label %bb.at, label %.thread

bb.at:                                            ; preds = %_ZNK11gmx_ga2la_t8findHomeEi.exit
  %i.jg = icmp slt i64 %indvars.iv443, %i.hp      ; 2 uses
  br i1 %i.jg, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jh = load ptr, ptr %i.er, align 8, !tbaa !151
  %i.ji = lshr i32 %storemerge259, 6
  %.zext350 = zext nneg i32 %i.ji to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.zext350
  %i.jk = and i32 %storemerge259, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw i64 1, %i.jl
  %i.jn = load i64, ptr %i.jj, align 8, !tbaa !159
  %i.jo = and i64 %i.jn, %i.jm
  %.not355 = icmp eq i64 %i.jo, 0
  br i1 %.not355, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.at, %bb.au
  %i.jp = load ptr, ptr %i.hh, align 8, !tbaa !137 ; 4 uses
  %i.jq = load ptr, ptr %i.hn, align 8, !tbaa !227
  %.not.i277 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not.i277, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge
  store i32 %storemerge259, ptr %i.jp, align 4, !tbaa !133
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  store ptr %i.jr, ptr %i.hh, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aw:                                            ; preds = %.critedge
  %i.js = load ptr, ptr %i.gx, align 8, !tbaa !138 ; 4 uses
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 5 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775804
  br i1 %i.jw, label %bb.ax, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aw
  %i.jx = ashr exact i64 %i.jv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 2305843009213693951)
  %i.kb = select i1 %i.jz, i64 2305843009213693951, i64 %i.ka ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.kc = shl nuw nsw i64 %i.kb, 2
  %i.kd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #15 ; 4 uses
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 %i.jv ; 2 uses
  store i32 %storemerge259, ptr %i.ke, align 4, !tbaa !133
  %i.kf = icmp sgt i64 %i.jv, 0
  br i1 %i.kf, label %bb.ay, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ay:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kd, ptr align 4 %i.js, i64 %i.jv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ay, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %.not.i17.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.kh = load ptr, ptr %i.hn, align 8, !tbaa !227
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.kj) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.az, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.kd, ptr %i.gx, align 8, !tbaa !138
  store ptr %i.kg, ptr %i.hh, align 8, !tbaa !137
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.kk, ptr %i.hn, align 8, !tbaa !227
  %.pre = load ptr, ptr %i.ew, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.kl = phi ptr [ %i.hr, %bb.av ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 4 uses
  %i.km = load ptr, ptr %i.er, align 8, !tbaa !151
  %i.kn = lshr i32 %storemerge259, 6
  %.zext = zext nneg i32 %i.kn to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.zext ; 2 uses
  %i.kp = and i32 %storemerge259, 63
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl nuw i64 1, %i.kq
  %i.ks = load i64, ptr %i.ko, align 8, !tbaa !159
  %i.kt = or i64 %i.ks, %i.kr
  store i64 %i.kt, ptr %i.ko, align 8, !tbaa !159
  %i.ku = load ptr, ptr %i.ez, align 8, !tbaa !227
  %.not.i282 = icmp eq ptr %i.kl, %i.ku
  br i1 %.not.i282, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.hv, ptr %i.kl, align 4, !tbaa !133
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 2 uses
  store ptr %i.kv, ptr %i.ew, align 8, !tbaa !137
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit289

bb.bb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.kw = load ptr, ptr %i.ev, align 8, !tbaa !138 ; 4 uses
  %i.kx = ptrtoint ptr %i.kl to i64
  %i.ky = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.kz = sub i64 %i.kx, %i.ky                    ; 5 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775804
  br i1 %i.la, label %bb.bc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i283

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i283: ; preds = %bb.bb
  %i.lb = ashr exact i64 %i.kz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i284 = call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.lc = add nsw i64 %.sroa.speculated.i.i.i284, %i.lb ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  %i.le = call i64 @llvm.umin.i64(i64 %i.lc, i64 2305843009213693951)
  %i.lf = select i1 %i.ld, i64 2305843009213693951, i64 %i.le ; 3 uses
  %.not.i.i.i285 = icmp ne i64 %i.lf, 0
  call void @llvm.assume(i1 %.not.i.i.i285)
  %i.lg = shl nuw nsw i64 %i.lf, 2
  %i.lh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #15 ; 4 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 %i.kz ; 2 uses
  store i32 %i.hv, ptr %i.li, align 4, !tbaa !133
  %i.lj = icmp sgt i64 %i.kz, 0
  br i1 %i.lj, label %bb.bd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i286

bb.bd:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i283
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lh, ptr align 4 %i.kw, i64 %i.kz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i286

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i286: ; preds = %bb.bd, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i283
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  %.not.i17.i.i287 = icmp eq ptr %i.kw, null
  br i1 %.not.i17.i.i287, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i288, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i286
  %i.ll = load ptr, ptr %i.ez, align 8, !tbaa !227
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.ln) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i288

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i288: ; preds = %bb.be, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i286
  store ptr %i.lh, ptr %i.ev, align 8, !tbaa !138
  store ptr %i.lk, ptr %i.ew, align 8, !tbaa !137
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lf
  store ptr %i.lo, ptr %i.ez, align 8, !tbaa !227
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit289

_ZNSt6vectorIiSaIiEE9push_backERKi.exit289:       ; preds = %bb.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i288
  %i.lp = phi ptr [ %i.kv, %bb.ba ], [ %i.lk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i288 ] ; 2 uses
  br i1 %i.jg, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit289
  %i.lq = load i32, ptr %8, align 4, !tbaa !133
  %i.lr = add nsw i32 %i.lq, 1
  store i32 %i.lr, ptr %8, align 4, !tbaa !133
  br label %.thread

.thread:                                          ; preds = %bb.ar, %bb.au, %bb.bf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit289, %_ZNK11gmx_ga2la_t8findHomeEi.exit
  %i.ls = phi ptr [ %i.hr, %_ZNK11gmx_ga2la_t8findHomeEi.exit ], [ %i.hr, %bb.au ], [ %i.lp, %bb.bf ], [ %i.lp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit289 ], [ %i.hr, %bb.ar ]
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge388, label %bb.ak, !llvm.loop !213

._crit_edge393:                                   ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEE5clearEv.exit274, %._crit_edge388
  %i.lt = phi ptr [ %i.hg, %_ZNSt6vectorIiSaIiEE5clearEv.exit274 ], [ %.pre467, %._crit_edge388 ], [ %.pre467, %bb.bg ]
  %i.lu = phi ptr [ %i.hg, %_ZNSt6vectorIiSaIiEE5clearEv.exit274 ], [ %.pre468, %._crit_edge388 ], [ %.pre468, %bb.bg ]
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = lshr exact i64 %i.lx, 2
  %i.lz = trunc i64 %i.ly to i32
  store i32 %i.lz, ptr %.0218.sroa.gep340, align 4, !tbaa !133
  %i.ma = icmp eq i64 %indvars.iv446, 0
  %i.mb = zext i1 %i.ma to i32                    ; 2 uses
  store ptr %10, ptr %13, align 8
  store ptr %16, ptr %17, align 8
  call void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %0, i32 noundef %i.gb, i32 noundef %i.mb, ptr nonnull %8, ptr nonnull %.0218.sroa.gep, ptr noundef nonnull byval(%"class.gmx::ArrayRef.106") align 8 %13)
  %i.mc = load ptr, ptr @debug, align 8, !tbaa !225 ; 2 uses
  %.not253 = icmp eq ptr %i.mc, null
  br i1 %.not253, label %bb.bj, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph392, %bb.bg
  %.sroa.0323.0390 = phi ptr [ %.pre467, %.lr.ph392 ], [ %i.mo, %bb.bg ] ; 2 uses
  %i.md = load i32, ptr %.sroa.0323.0390, align 4, !tbaa !133 ; 2 uses
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = sdiv i32 %i.md, 64
  %.sext = sext i32 %i.mf to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %.sext
  %i.mh = and i64 %i.me, -9223372036854775745
  %i.mi = icmp ugt i64 %i.mh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i294 = select i1 %i.mi, i64 -8, i64 0
  %storemerge.i.i.i.i.i295 = getelementptr inbounds i8, ptr %i.mg, i64 %storemerge.idx.i.i.i.i.i294 ; 2 uses
  %i.mj = and i64 %i.me, 63
  %i.mk = shl nuw i64 1, %i.mj
  %i.ml = xor i64 %i.mk, -1
  %i.mm = load i64, ptr %storemerge.i.i.i.i.i295, align 8, !tbaa !159
  %i.mn = and i64 %i.mm, %i.ml
  store i64 %i.mn, ptr %storemerge.i.i.i.i.i295, align 8, !tbaa !159
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0323.0390, i64 4 ; 2 uses
  %.not353 = icmp eq ptr %i.mo, %.pre468
  br i1 %.not353, label %._crit_edge393, label %bb.bg

bb.bh:                                            ; preds = %._crit_edge393
  %i.mp = sub nuw nsw i64 1, %indvars.iv446
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !133
  %i.ms = load i32, ptr %.0218.sroa.gep340, align 4, !tbaa !133
  %i.mt = load i32, ptr %8, align 4, !tbaa !133
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv446
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !133
  %i.mw = load i32, ptr %i.fb, align 4, !tbaa !133
  %i.mx = load i32, ptr %10, align 4, !tbaa !133
  %i.my = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mc, ptr noundef nonnull @.str.3, i32 noundef %i.mr, i32 noundef %i.ms, i32 noundef %i.mt, i32 noundef %i.mv, i32 noundef %i.mw, i32 noundef %i.mx) #14 ; 0 uses
  %i.mz = load i8, ptr @gmx_debug_at, align 1, !tbaa !252, !range !140, !noundef !141
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nb = load ptr, ptr %i.ev, align 8, !tbaa !142 ; 2 uses
  %i.nc = load ptr, ptr %i.ew, align 8, !tbaa !142 ; 2 uses
  %.not354394 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not354394, label %._crit_edge398, label %.lr.ph397

._crit_edge398:                                   ; preds = %.lr.ph397, %bb.bi
  %i.nd = load ptr, ptr @debug, align 8, !tbaa !225
  %fputc255 = call i32 @fputc(i32 10, ptr %i.nd)  ; 0 uses
  br label %bb.bj

.lr.ph397:                                        ; preds = %bb.bi, %.lr.ph397
  %.sroa.0318.0395 = phi ptr [ %i.ni, %.lr.ph397 ], [ %i.nb, %bb.bi ] ; 2 uses
  %i.ne = load i32, ptr %.sroa.0318.0395, align 4, !tbaa !133
  %i.nf = load ptr, ptr @debug, align 8, !tbaa !225
  %i.ng = add nsw i32 %i.ne, 1
  %i.nh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nf, ptr noundef nonnull @.str.4, i32 noundef %i.ng) #14 ; 0 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0318.0395, i64 4 ; 2 uses
  %.not354 = icmp eq ptr %i.ni, %i.nc
  br i1 %.not354, label %._crit_edge398, label %.lr.ph397

bb.bj:                                            ; preds = %bb.bh, %._crit_edge398, %._crit_edge393
  %i.nj = load i32, ptr %10, align 4, !tbaa !133
  %i.nk = add nsw i32 %i.nj, %.1224400            ; 3 uses
  %i.nl = load i32, ptr %i.fb, align 4, !tbaa !133 ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 3 uses
  store i32 %i.nl, ptr %i.nm, align 8, !tbaa !135
  %i.nn = add nsw i32 %i.nl, %.1226399
  %i.no = sext i32 %i.nn to i64                   ; 4 uses
  %i.np = load ptr, ptr %i.fd, align 8, !tbaa !253 ; 5 uses
  %i.nq = load ptr, ptr %i.fc, align 8, !tbaa !254 ; 14 uses
  %i.nr = ptrtoint ptr %i.np to i64               ; 3 uses
  %i.ns = ptrtoint ptr %i.nq to i64               ; 4 uses
  %i.nt = sub i64 %i.nr, %i.ns                    ; 2 uses
  %i.nu = ashr exact i64 %i.nt, 2                 ; 7 uses
  %i.nv = icmp ult i64 %i.nu, %i.no
  br i1 %i.nv, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.nw = sub nuw nsw i64 %i.no, %i.nu            ; 5 uses
  %i.nx = load ptr, ptr %i.fe, align 8, !tbaa !255
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = sub i64 %i.ny, %i.nr
  %i.oa = ashr exact i64 %i.nz, 2                 ; 2 uses
  %i.ob = icmp ult i64 %i.nu, 2305843009213693952
  call void @llvm.assume(i1 %i.ob)
  %i.oc = xor i64 %i.nu, 2305843009213693951      ; 2 uses
  %i.od = icmp ule i64 %i.oa, %i.oc
  call void @llvm.assume(i1 %i.od)
  %.not37.i.i = icmp ult i64 %i.oa, %i.nw
  br i1 %.not37.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oe = shl nuw nsw i64 %i.nw, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.np, i64 %i.oe
  store ptr %scevgep.i.i.i, ptr %i.fd, align 8, !tbaa !253
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm.exit

bb.bm:                                            ; preds = %bb.bk
  %i.of = icmp ult i64 %i.oc, %i.nw
  br i1 %i.of, label %bb.bn, label %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #17
  unreachable

_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bm
  %.sroa.speculated.i.i.i298 = call i64 @llvm.umax.i64(i64 %i.nu, i64 %i.nw)
  %i.og = add nuw nsw i64 %.sroa.speculated.i.i.i298, %i.nu
  %i.oh = call i64 @llvm.umin.i64(i64 %i.og, i64 2305843009213693951) ; 2 uses
  %i.oi = shl nuw nsw i64 %i.oh, 2
  %i.oj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oi) #15 ; 10 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.nt
  %.not13.i.i.i.i = icmp eq ptr %i.nq, %i.np
  br i1 %.not13.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i
  %i.ol = ptrtoaddr ptr %i.oj to i64
  %i.om = add i64 %i.nr, -4
  %i.on = sub i64 %i.om, %i.ns                    ; 3 uses
  %i.oo = lshr i64 %i.on, 2
  %i.op = add nuw nsw i64 %i.oo, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.on, 28
  %i.oq = sub i64 %i.ns, %i.ol
  %diff.check = icmp ugt i64 %i.oq, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check571 = icmp ult i64 %i.on, 124
  br i1 %min.iters.check571, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.or = and i64 %i.op, 24
  %n.vec = and i64 %i.op, 9223372036854775776     ; 4 uses
  %i.os = shl i64 %n.vec, 2                       ; 2 uses
  %i.ot = getelementptr i8, ptr %i.oj, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.nq, i64 %i.os
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ov = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.oj, i64 %i.ov ; 4 uses
  %next.gep572 = getelementptr i8, ptr %i.nq, i64 %i.ov ; 4 uses
  %i.ow = getelementptr i8, ptr %next.gep572, i64 32
  %i.ox = getelementptr i8, ptr %next.gep572, i64 64
  %i.oy = getelementptr i8, ptr %next.gep572, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep572, align 4, !tbaa !133
  %wide.load573 = load <8 x i32>, ptr %i.ow, align 4, !tbaa !133
  %wide.load574 = load <8 x i32>, ptr %i.ox, align 4, !tbaa !133
  %wide.load575 = load <8 x i32>, ptr %i.oy, align 4, !tbaa !133
  %i.oz = getelementptr i8, ptr %next.gep, i64 32
  %i.pa = getelementptr i8, ptr %next.gep, i64 64
  %i.pb = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !133
  store <8 x i32> %wide.load573, ptr %i.oz, align 4, !tbaa !133
  store <8 x i32> %wide.load574, ptr %i.pa, align 4, !tbaa !133
  store <8 x i32> %wide.load575, ptr %i.pb, align 4, !tbaa !133
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pc = icmp eq i64 %index.next, %n.vec
  br i1 %i.pc, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.op, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.or, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec577 = and i64 %i.op, 9223372036854775800  ; 3 uses
  %i.pd = shl i64 %n.vec577, 2                    ; 2 uses
  %i.pe = getelementptr i8, ptr %i.oj, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.nq, i64 %i.pd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index578 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next582, %vec.epilog.vector.body ] ; 2 uses
  %i.pg = shl i64 %index578, 2                    ; 2 uses
  %next.gep579 = getelementptr i8, ptr %i.oj, i64 %i.pg
  %next.gep580 = getelementptr i8, ptr %i.nq, i64 %i.pg
  %wide.load581 = load <8 x i32>, ptr %next.gep580, align 4, !tbaa !133
  store <8 x i32> %wide.load581, ptr %next.gep579, align 4, !tbaa !133
  %index.next582 = add nuw i64 %index578, 8       ; 2 uses
  %i.ph = icmp eq i64 %index.next582, %n.vec577
  br i1 %i.ph, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !215

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n583 = icmp eq i64 %i.op, %n.vec577
  br i1 %cmp.n583, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.i.ph = phi ptr [ %i.oj, %iter.check ], [ %i.ot, %vec.epilog.iter.check ], [ %i.pe, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.i.i.ph = phi ptr [ %i.nq, %iter.check ], [ %i.ou, %vec.epilog.iter.check ], [ %i.pf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  %i.iu = icmp eq i32 %2, 63                      ; 2 uses
  %spec.select.idx.i.i.i.i.i.prol = select i1 %i.iu, i64 8, i64 0
  %spec.select.i.i.i.i.i124.prol = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx.i.i.i.i.i.prol
  %spec.select19.i.i.i.i.i125.prol = select i1 %i.iu, i32 0, i32 %i.it
  %i.iv = add nuw nsw i32 %i.gs, 1
  %i.iw = icmp eq i32 %i.gs, 63                   ; 2 uses
  %.sroa.59.1.i.i.i.i.i126.prol = select i1 %i.iw, i32 0, i32 %i.iv ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127.prol = select i1 %i.iw, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128.prol = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i86, i64 %.sroa.07.1.idx.i.i.i.i.i127.prol ; 2 uses
  %i.ix = add nsw i64 %i.ib, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol, %.lr.ph.i.i.i.i.i.preheader
  %.024.i.i.i.i.i118.unr = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ix, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.07.023.i.i.i.i.i119.unr = phi ptr [ %storemerge.i.i.i86, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.07.1.i.i.i.i.i128.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.59.022.i.i.i.i.i120.unr = phi i32 [ %i.gs, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.59.1.i.i.i.i.i126.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.516.021.i.i.i.i.i.unr = phi i32 [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %spec.select19.i.i.i.i.i125.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.013.020.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %spec.select.i.i.i.i.i124.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.59.1.i.i.i.i.i126.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.59.1.i.i.i.i.i126.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.07.1.i.i.i.i.i128.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.07.1.i.i.i.i.i128.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %i.iy = icmp eq i64 %i.ig, %i.ih
  br i1 %i.iy, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1
  %.024.i.i.i.i.i118 = phi i64 [ %i.kd, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.024.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i128.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.07.023.i.i.i.i.i119.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i120 = phi i32 [ %.sroa.59.1.i.i.i.i.i126.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.59.022.i.i.i.i.i120.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.516.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.013.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.iz = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.ja = shl nuw i64 1, %i.iz
  %i.jb = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.jc = shl nuw i64 1, %i.jb                    ; 2 uses
  %i.jd = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !159
  %i.je = and i64 %i.jd, %i.ja
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jf = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !159
  %i.jg = or i64 %i.jf, %i.jc
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jh = xor i64 %i.jc, -1
  %i.ji = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !159
  %i.jj = and i64 %i.ji, %i.jh
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.av, %bb.au
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.jg, %bb.au ], [ %i.jj, %bb.av ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !159
  %i.jk = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.jl = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.jl, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i125 = select i1 %i.jl, i32 0, i32 %i.jk ; 3 uses
  %i.jm = add i32 %.sroa.59.022.i.i.i.i.i120, 1
  %i.jn = icmp eq i32 %.sroa.59.022.i.i.i.i.i120, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126 = select i1 %i.jn, i32 0, i32 %i.jm ; 3 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.jn, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 4 uses
  %i.jo = zext nneg i32 %spec.select19.i.i.i.i.i125 to i64
  %i.jp = shl nuw i64 1, %i.jo
  %i.jq = zext nneg i32 %.sroa.59.1.i.i.i.i.i126 to i64
  %i.jr = shl nuw i64 1, %i.jq                    ; 2 uses
  %i.js = load i64, ptr %spec.select.i.i.i.i.i124, align 8, !tbaa !159
  %i.jt = and i64 %i.js, %i.jp
  %.not.i.i.i.i.i.i121.1 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i121.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %i.ju = load i64, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !159
  %i.jv = or i64 %i.ju, %i.jr
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1

bb.ax:                                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %i.jw = xor i64 %i.jr, -1
  %i.jx = load i64, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !159
  %i.jy = and i64 %i.jx, %i.jw
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1: ; preds = %bb.ax, %bb.aw
  %storemerge.i.i.i.i.i123.1 = phi i64 [ %i.jv, %bb.aw ], [ %i.jy, %bb.ax ]
  store i64 %storemerge.i.i.i.i.i123.1, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !159
  %i.jz = add i32 %spec.select19.i.i.i.i.i125, 1
  %i.ka = icmp eq i32 %spec.select19.i.i.i.i.i125, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.1 = select i1 %i.ka, i64 8, i64 0
  %spec.select.i.i.i.i.i124.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i124, i64 %spec.select.idx.i.i.i.i.i.1
  %spec.select19.i.i.i.i.i125.1 = select i1 %i.ka, i32 0, i32 %i.jz
  %i.kb = add i32 %.sroa.59.1.i.i.i.i.i126, 1
  %i.kc = icmp eq i32 %.sroa.59.1.i.i.i.i.i126, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126.1 = select i1 %i.kc, i32 0, i32 %i.kb ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127.1 = select i1 %i.kc, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i128, i64 %.sroa.07.1.idx.i.i.i.i.i127.1 ; 2 uses
  %i.kd = add nsw i64 %.024.i.i.i.i.i118, -2
  %i.ke = icmp sgt i64 %.024.i.i.i.i.i118, 2
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !270

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.gs, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i126.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.59.1.i.i.i.i.i126.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ]
  %.sroa.07.0.lcssa.i.i.i.i.i115 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.07.1.i.i.i.i.i128.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ]
  %i.kf = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %.not.i129 = icmp eq ptr %i.kf, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !271 ; 2 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = sub nsw i64 0, %i.kk
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.kl
  tail call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kj) #16
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.ay
  %i.kn = lshr i64 %i.eg, 6
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.kn
  store ptr %i.ko, ptr %i.b, align 8, !tbaa !271
  store ptr %i.ej, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i115, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.dz, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !155    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !281
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %i.p = mul i64 %n.vec, 12
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p     ; 2 uses
  %i.r = and i64 %1, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.s
  store <24 x i32> <i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.preheader57

.lr.ph.i.i.i.preheader57:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.057.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader57, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 4 uses
  %.057.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i32 0, ptr %i.u, align 4
  store i32 -1, ptr %.08.i.i.i, align 4, !tbaa !157
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i32 -1, ptr %i.v, align 4, !tbaa !158
  %i.w = add i64 %.057.i.i.i, -1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.x, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !161
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ult i64 %i.n, %1
  br i1 %i.y, label %bb.d, label %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #17
  unreachable

_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.z = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 768614336404564650) ; 2 uses
  %i.ab = mul nuw nsw i64 %i.aa, 12
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #15 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.f ; 4 uses
  %min.iters.check46 = icmp ult i64 %1, 8
  br i1 %min.iters.check46, label %.lr.ph.i.i.i30.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit
  %n.vec48 = and i64 %1, -8                       ; 3 uses
  %i.ae = mul i64 %n.vec48, 12
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = and i64 %1, 7
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.ah = mul i64 %index50, 12
  %next.gep51 = getelementptr i8, ptr %i.ad, i64 %i.ah
  store <24 x i32> <i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1>, ptr %next.gep51, align 4
  %index.next52 = add nuw i64 %index50, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.ai, label %middle.block53, label %vector.body49, !llvm.loop !275

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %1, %n.vec48
  br i1 %cmp.n54, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit, %middle.block53
  %.08.i.i.i31.ph = phi ptr [ %i.ad, %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.af, %middle.block53 ]
  %.057.i.i.i32.ph = phi i64 [ %1, %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %middle.block53 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.am, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.ph, %.lr.ph.i.i.i30.preheader ] ; 4 uses
  %.057.i.i.i32 = phi i64 [ %i.al, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.ph, %.lr.ph.i.i.i30.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 4
  store i32 0, ptr %i.aj, align 4
  store i32 -1, ptr %.08.i.i.i31, align 4, !tbaa !157
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i32 -1, ptr %i.ak, align 4, !tbaa !158
  %i.al = add i64 %.057.i.i.i32, -1               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 12
  %.not.i.i.i33 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !276

_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block53
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i37 ], [ %i.ac, %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !282, !alias.scope !283
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i38 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37, !llvm.loop !280

_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !281
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #16
  br label %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41

_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41: ; preds = %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ac, ptr %0, align 8, !tbaa !155
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.ad, i64 %1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !161
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.at, ptr %i.h, align 8, !tbaa !281
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIiE9hashEntryEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41, %bb.a
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10tmpi_comm_", !10, i64 0}
!12 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !10, i64 0}
!13 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !12, i64 0}
!14 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !13, i64 0}
!15 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !14, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !15, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !16, i64 0}
!18 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !17, i64 0}
!19 = !{!"_ZTSN3gmx7MpiCommE", !11, i64 0, !6, i64 8, !6, i64 12, !18, i64 16}
!20 = !{!"_ZTSN3gmx11BasicVectorIiEE", !5, i64 0}
!21 = !{!"p1 _ZTS20gmx_pme_comm_n_box_t", !10, i64 0}
!22 = !{!"_ZTS12UnitCellInfo", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 9}
!23 = !{!"_ZTSSt5arrayIN3gmx5RangeIiEELm4EE", !5, i64 0}
!24 = !{!"_ZTSSt5arrayIN3gmx11BasicVectorIiEELm8EE", !5, i64 0}
!25 = !{!"_ZTSSt5arrayIiLm9EE", !5, i64 0}
!26 = !{!"_ZTSSt5arrayIiLm8EE", !5, i64 0}
!27 = !{!"_ZTSSt5arrayIN3gmx22gmx_domdec_zone_size_tELm8EE", !5, i64 0}
!28 = !{!"_ZTSN3gmx11DomdecZonesE", !6, i64 0, !6, i64 4, !23, i64 8, !24, i64 40, !25, i64 136, !26, i64 172, !27, i64 204, !6, i64 588}
!29 = !{!"p1 _ZTS16AtomDistribution", !10, i64 0}
!30 = !{!"_ZTSSt10_Head_baseILm0EP16AtomDistributionLb0EE", !29, i64 0}
!31 = !{!"_ZTSSt11_Tuple_implILm0EJP16AtomDistributionSt14default_deleteIS0_EEE", !30, i64 0}
!32 = !{!"_ZTSSt5tupleIJP16AtomDistributionSt14default_deleteIS0_EEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_implI16AtomDistributionSt14default_deleteIS0_EE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_dataI16AtomDistributionSt14default_deleteIS0_ELb1ELb1EE", !33, i64 0}
!35 = !{!"_ZTSSt10unique_ptrI16AtomDistributionSt14default_deleteIS0_EE", !34, i64 0}
!36 = !{!"p1 _ZTS17gmx_reverse_top_t", !10, i64 0}
!37 = !{!"_ZTSSt10_Head_baseILm0EP17gmx_reverse_top_tLb0EE", !36, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJP17gmx_reverse_top_tSt14default_deleteIS0_EEE", !37, i64 0}
!39 = !{!"_ZTSSt5tupleIJP17gmx_reverse_top_tSt14default_deleteIS0_EEE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implI17gmx_reverse_top_tSt14default_deleteIS0_EE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataI17gmx_reverse_top_tSt14default_deleteIS0_ELb1ELb1EE", !40, i64 0}
!42 = !{!"_ZTSSt10unique_ptrI17gmx_reverse_top_tSt14default_deleteIS0_EE", !41, i64 0}
!43 = !{!"p1 _ZTSN3gmx9HashedMapIiEE", !10, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9HashedMapIiEELb0EE", !43, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9HashedMapIiEESt14default_deleteIS2_EEE", !44, i64 0}
!46 = !{!"_ZTSSt5tupleIJPN3gmx9HashedMapIiEESt14default_deleteIS2_EEE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9HashedMapIiEESt14default_deleteIS2_EE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9HashedMapIiEESt14default_deleteIS2_ELb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EE", !48, i64 0}
!50 = !{!"p1 _ZTS24gmx_domdec_specat_comm_t", !10, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EP24gmx_domdec_specat_comm_tLb0EE", !50, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJP24gmx_domdec_specat_comm_tSt14default_deleteIS0_EEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJP24gmx_domdec_specat_comm_tSt14default_deleteIS0_EEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataI24gmx_domdec_specat_comm_tSt14default_deleteIS0_ELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EE", !55, i64 0}
!57 = !{!"p1 int", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIiSaIiEE", !60, i64 0}
!62 = !{!"p1 _ZTS24gmx_domdec_constraints_t", !10, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm0EP24gmx_domdec_constraints_tLb0EE", !62, i64 0}
!64 = !{!"_ZTSSt11_Tuple_implILm0EJP24gmx_domdec_constraints_tSt14default_deleteIS0_EEE", !63, i64 0}
!65 = !{!"_ZTSSt5tupleIJP24gmx_domdec_constraints_tSt14default_deleteIS0_EEE", !64, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_implI24gmx_domdec_constraints_tSt14default_deleteIS0_EE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_dataI24gmx_domdec_constraints_tSt14default_deleteIS0_ELb1ELb1EE", !66, i64 0}
!68 = !{!"_ZTSSt10unique_ptrI24gmx_domdec_constraints_tSt14default_deleteIS0_EE", !67, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !71, i64 0}
!73 = !{!"p1 _ZTS11gmx_ga2la_t", !10, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EP11gmx_ga2la_tLb0EE", !73, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm0EJP11gmx_ga2la_tSt14default_deleteIS0_EEE", !74, i64 0}
!76 = !{!"_ZTSSt5tupleIJP11gmx_ga2la_tSt14default_deleteIS0_EEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implI11gmx_ga2la_tSt14default_deleteIS0_EE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_dataI11gmx_ga2la_tSt14default_deleteIS0_ELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt10unique_ptrI11gmx_ga2la_tSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"p1 _ZTS17gmx_domdec_comm_t", !10, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EP17gmx_domdec_comm_tLb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJP17gmx_domdec_comm_tSt14default_deleteIS0_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJP17gmx_domdec_comm_tSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implI17gmx_domdec_comm_tSt14default_deleteIS0_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataI17gmx_domdec_comm_tSt14default_deleteIS0_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrI17gmx_domdec_comm_tSt14default_deleteIS0_EE", !85, i64 0}
!87 = !{!"p1 _ZTSN3gmx12HaloExchangeE", !10, i64 0}
!88 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12HaloExchangeELb0EE", !87, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12HaloExchangeESt14default_deleteIS1_EEE", !88, i64 0}
!90 = !{!"_ZTSSt5tupleIJPN3gmx12HaloExchangeESt14default_deleteIS1_EEE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12HaloExchangeESt14default_deleteIS1_EE", !90, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12HaloExchangeESt14default_deleteIS1_ELb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt10unique_ptrIN3gmx12HaloExchangeESt14default_deleteIS1_EE", !92, i64 0}
!94 = !{!"long", !5, i64 0}
!95 = !{!"p1 _ZTSN3gmx19LocalAtomSetManagerE", !10, i64 0}
!96 = !{!"p1 _ZTSN3gmx20LocalTopologyCheckerE", !10, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx20LocalTopologyCheckerELb0EE", !96, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EEE", !97, i64 0}
!99 = !{!"_ZTSSt5tupleIJPN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EEE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx20LocalTopologyCheckerESt14default_deleteIS1_ELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt10unique_ptrIN3gmx20LocalTopologyCheckerESt14default_deleteIS1_EE", !101, i64 0}
!103 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!104 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !103, i64 0, !9, i64 4}
!105 = !{!"_ZTSN3gmx9AllocatorINS_11BasicVectorIfEENS_20HostAllocationPolicyEEE", !104, i64 0}
!106 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !10, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !105, i64 0, !107, i64 8}
end_hunk_2
