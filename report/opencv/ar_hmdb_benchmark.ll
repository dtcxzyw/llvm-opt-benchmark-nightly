Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ar_hmdb_benchmark?download=true
inline.NumInlined: 1782
inline.NumDeleted: 802
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7cvflann11KMeansIndexINS_2L2IfEEE10buildIndexEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !54
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !172 ; 3 uses
  br i1 %.not.i, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge24

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %i.m = phi i32 [ %i.s, %bb.g ], [ %.pre, %.preheader.i ]
  %i.n = phi ptr [ %i.t, %bb.g ], [ %i.k, %.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !180  ; 2 uses
  %.not6.i = icmp eq ptr %i.p, null
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #32
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  store ptr null, ptr %i.r, align 8, !tbaa !180
  %.pre.i = load i32, ptr %.phi.trans.insert, align 4, !tbaa !172
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.s = phi i32 [ %i.m, %.lr.ph.i ], [ %.pre.i, %bb.f ] ; 3 uses
  %i.t = phi ptr [ %i.n, %.lr.ph.i ], [ %i.q, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit, !llvm.loop !11

_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit: ; preds = %bb.g, %bb.e
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  br label %bb.h

._crit_edge24:                                    ; preds = %_ZN7cvflann15PooledAllocator8allocateINS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEEEPT_m.exit, %.preheader.i, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit
  ret void

bb.h:                                             ; preds = %.lr.ph23, %_ZN7cvflann15PooledAllocator8allocateINS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEEEPT_m.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next, %_ZN7cvflann15PooledAllocator8allocateINS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEEEPT_m.exit ] ; 7 uses
  %i.af = load i64, ptr %i.z, align 8, !tbaa !182 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 4611686018427387903
  %i.ah = shl i64 %i.af, 2
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #34 ; 3 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !180
  %i.am = load i64, ptr %i.z, align 8, !tbaa !182 ; 5 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <4 x i32> %vec.ind, ptr %i.an, align 4, !tbaa !99
  store <4 x i32> %step.add, ptr %i.ao, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader34

.lr.ph.preheader34:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01721.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.h
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !156 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 48
  br i1 %i.ar, label %bb.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !183
  %i.as = add nsw i32 %i.aq, -48
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.at = load i32, ptr %i.ab, align 8, !tbaa !158
  %i.au = add nsw i32 %i.at, %i.aq
  store i32 %i.au, ptr %i.ab, align 8, !tbaa !158
  %i.av = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #36 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.not.i.i, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %bb.i
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !185
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.48, i64 27, i64 1, ptr %i.aw) #37 ; 0 uses
  br label %_ZN7cvflann15PooledAllocator8allocateINS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEEEPT_m.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !181
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !141
  store ptr %i.av, ptr %i.ac, align 8, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.az = phi i32 [ %i.as, %._crit_edge.i.i ], [ 8136, %bb.j ]
  %i.ba = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr %i.bb, ptr %.phi.trans.insert.i.i, align 8, !tbaa !183
  store i32 %i.az, ptr %i.aa, align 8, !tbaa !156
  %i.bc = load i32, ptr %i.ad, align 4, !tbaa !157
  %i.bd = add nsw i32 %i.bc, 48
  store i32 %i.bd, ptr %i.ad, align 4, !tbaa !157
  br label %_ZN7cvflann15PooledAllocator8allocateINS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEEEPT_m.exit

_ZN7cvflann15PooledAllocator8allocateINS_11KMeansIndexINS_2L2IfEEE10KMeansNodeEEEPT_m.exit: ; preds = %.thread.i.i, %bb.k
  %.1.i.i = phi ptr [ %i.ba, %bb.k ], [ null, %.thread.i.i ] ; 2 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  store ptr %.1.i.i, ptr %i.bf, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i, i8 0, i64 48, i1 false)
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !179
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !180
  %i.bm = load i64, ptr %i.z, align 8, !tbaa !182
  %i.bn = trunc i64 %i.bm to i32
  tail call void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE21computeNodeStatisticsEPNS3_10KMeansNodeEPij(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %i.bi, ptr noundef %i.bl, i32 noundef %i.bn)
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !179
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !180
  %i.bu = load i64, ptr %i.z, align 8, !tbaa !182
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !171
  tail call void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE17computeClusteringEPNS3_10KMeansNodeEPiiii(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %i.bq, ptr noundef %i.bt, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.x, align 4, !tbaa !172
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.h, label %._crit_edge24, !llvm.loop !384

.lr.ph:                                           ; preds = %.lr.ph.preheader34, %.lr.ph
  %.01721 = phi i64 [ %i.cc, %.lr.ph ], [ %.01721.ph, %.lr.ph.preheader34 ] ; 3 uses
  %i.ca = trunc i64 %.01721 to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.01721
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !99
  %i.cc = add nuw i64 %.01721, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !385
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7cvflann11KMeansIndexINS_2L2IfEEE17getClusterCentersERNS_6MatrixIfEE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.1", align 1  ; 3 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !137
  %.fr98 = freeze i64 %i.a                        ; 2 uses
  %i.b = trunc i64 %.fr98 to i32                  ; 7 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN7cvflann11KMeansIndexINS_2L2IfEEE17getClusterCentersERNS_6MatrixIfEE, ptr noundef nonnull @.str.31, i32 noundef 560) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !54
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = shl i64 %.fr98, 3
  %i.k = and i64 %i.j, 17179869176
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #34 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !179  ; 5 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !179
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load float, ptr %i.p, align 8, !tbaa !187
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !188
  %i.t = sitofp i32 %i.s to float
  %i.u = fmul float %i.q, %i.t                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %.fr97 = freeze i32 %i.w                        ; 7 uses
  %invariant.op.i = add i32 %.fr97, -1
  %i.x = icmp sgt i32 %.fr97, 1
  %wide.trip.count106.i = zext i32 %.fr97 to i64  ; 4 uses
  %i.y = icmp sgt i32 %.fr97, 0
  br i1 %i.y, label %.preheader.i.us.preheader, label %.preheader.i.us72.preheader

.preheader.i.us.preheader:                        ; preds = %.preheader.lr.ph.i
  %xtraiter = and i64 %wide.trip.count106.i, 1
  %i.z = icmp eq i32 %.fr97, 1
  %unroll_iter = and i64 %wide.trip.count106.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod145 = trunc i32 %.fr97 to i1
  %i.aa = add nsw i64 %wide.trip.count106.i, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %.fr97, 5
  %n.vec = and i64 %i.aa, -4                      ; 4 uses
  %i.ab = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %.preheader.i.us

.preheader.i.us72.preheader:                      ; preds = %.preheader.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !189
  %.not.i.us78125 = icmp eq ptr %i.ad, null
  br i1 %.not.i.us78125, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread, label %._crit_edge73.i.split.us86

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %.loopexit.i.us
  %.05782.i.us = phi float [ %.256.i.us.us, %.loopexit.i.us ], [ %i.u, %.preheader.i.us.preheader ]
  %.06081.i.us = phi i32 [ %.161.lcssa.i.us, %.loopexit.i.us ], [ 1, %.preheader.i.us.preheader ] ; 7 uses
  %i.ae = icmp sgt i32 %.06081.i.us, 0
  br i1 %i.ae, label %.lr.ph72.preheader.i.us, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread121

_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread121: ; preds = %.preheader.i.us
  %i.af = tail call noundef i32 (ptr, ...) @_ZN7cvflann6Logger4infoEPKcz(ptr noundef nonnull @.str.64, i32 noundef %i.b, i32 noundef %.06081.i.us) ; 0 uses
  br label %._crit_edge96.split

.lr.ph72.preheader.i.us:                          ; preds = %.preheader.i.us
  %wide.trip.count96.i.us = zext nneg i32 %.06081.i.us to i64 ; 4 uses
  br label %.lr.ph72.i.us.us

.lr.ph72.i.us.us:                                 ; preds = %bb.f, %.lr.ph72.preheader.i.us
  %indvars.iv93.i.us.us = phi i64 [ 0, %.lr.ph72.preheader.i.us ], [ %indvars.iv.next94.i.us.us, %bb.f ] ; 3 uses
  %.05370.i.us.us = phi i32 [ -1, %.lr.ph72.preheader.i.us ], [ %.2.i.us.us, %bb.f ] ; 2 uses
  %.05469.i.us.us = phi float [ f0x7F7FFFFF, %.lr.ph72.preheader.i.us ], [ %.256.i.us.us, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv93.i.us.us
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !179 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 4 uses
  %.not.i.us.us = icmp eq ptr %i.aj, null
  br i1 %.not.i.us.us, label %bb.f, label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph72.i.us.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load float, ptr %i.ak, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !188
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fneg float %i.al
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ao, float %.05782.i.us) ; 2 uses
  br i1 %i.z, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.preheader.us.us, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.preheader.us.us ] ; 3 uses
  %.05067.i.us.us = phi float [ %i.bh, %.lr.ph.i.us.us ], [ %i.aq, %.lr.ph.i.preheader.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.preheader.us.us ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.us.us
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !179 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load float, ptr %i.at, align 8, !tbaa !187
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !188
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ax, float %.05067.i.us.us)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.us.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !179 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !187
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !188
  %i.bg = sitofp i32 %i.bf to float
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bg, float %i.ay) ; 3 uses
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !386

._crit_edge.i.loopexit.us.us.unr-lcssa:           ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.i.loopexit.us.us.unr-lcssa, %.lr.ph.i.preheader.us.us
  %indvars.iv.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %indvars.iv.next.i.us.us.1, %._crit_edge.i.loopexit.us.us.unr-lcssa ]
  %.05067.i.us.us.epil.init = phi float [ %i.aq, %.lr.ph.i.preheader.us.us ], [ %i.bh, %._crit_edge.i.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.us.us.epil.init
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !179 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !187
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !188
  %i.bo = sitofp i32 %i.bn to float
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bo, float %.05067.i.us.us.epil.init)
  br label %._crit_edge.i.loopexit.us.us

._crit_edge.i.loopexit.us.us:                     ; preds = %._crit_edge.i.loopexit.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa = phi float [ %i.bh, %._crit_edge.i.loopexit.us.us.unr-lcssa ], [ %i.bp, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %i.bq = fcmp olt float %.lcssa, %.05469.i.us.us ; 2 uses
  %.155.i.us.us = select i1 %i.bq, float %.lcssa, float %.05469.i.us.us
  %i.br = trunc nuw nsw i64 %indvars.iv93.i.us.us to i32
  %.1.i.us.us = select i1 %i.bq, i32 %i.br, i32 %.05370.i.us.us
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.loopexit.us.us, %.lr.ph72.i.us.us
  %.256.i.us.us = phi float [ %.155.i.us.us, %._crit_edge.i.loopexit.us.us ], [ %.05469.i.us.us, %.lr.ph72.i.us.us ] ; 2 uses
  %.2.i.us.us = phi i32 [ %.1.i.us.us, %._crit_edge.i.loopexit.us.us ], [ %.05370.i.us.us, %.lr.ph72.i.us.us ] ; 3 uses
  %indvars.iv.next94.i.us.us = add nuw nsw i64 %indvars.iv93.i.us.us, 1 ; 2 uses
  %exitcond97.not.i.us.us = icmp eq i64 %indvars.iv.next94.i.us.us, %wide.trip.count96.i.us
  br i1 %exitcond97.not.i.us.us, label %._crit_edge73.i.split.us.us, label %.lr.ph72.i.us.us, !llvm.loop !387

._crit_edge73.i.split.us.us:                      ; preds = %bb.f
  %i.bs = icmp eq i32 %.2.i.us.us, -1
  %.reass.i.us = add i32 %invariant.op.i, %.06081.i.us
  %i.bt = icmp sgt i32 %.reass.i.us, %i.b
  %or.cond.i.us = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.us, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge73.i.split.us.us
  %i.bu = sext i32 %.2.i.us.us to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !179
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !189 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !179
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !179
  br i1 %i.x, label %.lr.ph79.i.us.preheader, label %.loopexit.i.us

.lr.ph79.i.us.preheader:                          ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph79.i.us.preheader141, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79.i.us.preheader
  %i.ca = add nsw i64 %n.vec, %wide.trip.count96.i.us ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %wide.trip.count96.i.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %wide.load = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !179
  %wide.load127 = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !179
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load, ptr %gep, align 8, !tbaa !179
  store <2 x ptr> %wide.load127, ptr %i.ce, align 8, !tbaa !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.loopexit.i.us, label %.lr.ph79.i.us.preheader141

.lr.ph79.i.us.preheader141:                       ; preds = %.lr.ph79.i.us.preheader, %middle.block
  %indvars.iv101.i.us.ph = phi i64 [ %wide.trip.count96.i.us, %.lr.ph79.i.us.preheader ], [ %i.ca, %middle.block ]
  %indvars.iv99.i.us.ph = phi i64 [ 1, %.lr.ph79.i.us.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph79.i.us

.lr.ph79.i.us:                                    ; preds = %.lr.ph79.i.us.preheader141, %.lr.ph79.i.us
  %indvars.iv101.i.us = phi i64 [ %indvars.iv.next102.i.us, %.lr.ph79.i.us ], [ %indvars.iv101.i.us.ph, %.lr.ph79.i.us.preheader141 ] ; 2 uses
  %indvars.iv99.i.us = phi i64 [ %indvars.iv.next100.i.us, %.lr.ph79.i.us ], [ %indvars.iv99.i.us.ph, %.lr.ph79.i.us.preheader141 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv99.i.us
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !179
  %indvars.iv.next102.i.us = add nuw nsw i64 %indvars.iv101.i.us, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv101.i.us
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !179
  %indvars.iv.next100.i.us = add nuw nsw i64 %indvars.iv99.i.us, 1 ; 2 uses
  %exitcond107.not.i.us = icmp eq i64 %indvars.iv.next100.i.us, %wide.trip.count106.i
  br i1 %exitcond107.not.i.us, label %.loopexit.loopexit.i.us, label %.lr.ph79.i.us, !llvm.loop !389

.loopexit.loopexit.i.us:                          ; preds = %.lr.ph79.i.us, %middle.block
  %indvars.iv.next102.i.us.lcssa = phi i64 [ %i.ca, %middle.block ], [ %indvars.iv.next102.i.us, %.lr.ph79.i.us ]
  %i.cj = trunc nuw nsw i64 %indvars.iv.next102.i.us.lcssa to i32
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.g
  %.161.lcssa.i.us = phi i32 [ %.06081.i.us, %bb.g ], [ %i.cj, %.loopexit.loopexit.i.us ] ; 3 uses
  %i.ck = icmp slt i32 %.161.lcssa.i.us, %i.b
  br i1 %i.ck, label %.preheader.i.us, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit

._crit_edge73.i.split.us86:                       ; preds = %.preheader.i.us72.preheader, %.loopexit.i.us89
  %.05782.i.us73126 = phi float [ %i.cs, %.loopexit.i.us89 ], [ %i.u, %.preheader.i.us72.preheader ]
  %i.cl = phi ptr [ %i.cx, %.loopexit.i.us89 ], [ %i.o, %.preheader.i.us72.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !187
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !188
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = fneg float %i.cn
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cq, float %.05782.i.us73126) ; 2 uses
  %i.ct = fcmp uge float %i.cs, f0x7F7FFFFF
  br i1 %i.ct, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread, label %.loopexit.i.us89

.loopexit.i.us89:                                 ; preds = %._crit_edge73.i.split.us86
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !179
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !189
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !179 ; 3 uses
  store ptr %i.cx, ptr %i.l, align 8, !tbaa !179
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !189
  %.not.i.us78 = icmp eq ptr %i.cz, null
  br i1 %.not.i.us78, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread, label %._crit_edge73.i.split.us86

_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread: ; preds = %.loopexit.i.us89, %._crit_edge73.i.split.us86, %.preheader.i.us72.preheader, %bb.e
  %4 = tail call noundef i32 (ptr, ...) @_ZN7cvflann6Logger4infoEPKcz(ptr noundef nonnull @.str.64, i32 noundef %i.b, i32 noundef 1) ; 0 uses
  br label %.lr.ph95

_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit: ; preds = %.loopexit.i.us, %._crit_edge73.i.split.us.us
  %.060.lcssa.i.ph = phi i32 [ %.06081.i.us, %._crit_edge73.i.split.us.us ], [ %.161.lcssa.i.us, %.loopexit.i.us ] ; 4 uses
  %5 = tail call noundef i32 (ptr, ...) @_ZN7cvflann6Logger4infoEPKcz(ptr noundef nonnull @.str.64, i32 noundef %i.b, i32 noundef %.060.lcssa.i.ph) ; 0 uses
  %6 = icmp sgt i32 %.060.lcssa.i.ph, 0
  br i1 %6, label %.lr.ph95, label %._crit_edge96.split

.lr.ph95:                                         ; preds = %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit
  %.060.lcssa.i120 = phi i32 [ 1, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread ], [ %.060.lcssa.i.ph, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.db = load i64, ptr %i.da, align 8, !tbaa !190 ; 7 uses
  %.not99 = icmp eq i64 %i.db, 0
  br i1 %.not99, label %._crit_edge96.split, label %.lr.ph95.split

.lr.ph95.split:                                   ; preds = %.lr.ph95
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !139 ; 2 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !140 ; 2 uses
  %wide.trip.count110 = zext nneg i32 %.060.lcssa.i120 to i64
  %i.dh = shl i64 %i.dg, 2
  %min.iters.check130 = icmp ult i64 %i.db, 8
  %n.vec132 = and i64 %i.db, -8                   ; 3 uses
  %cmp.n139 = icmp eq i64 %i.db, %n.vec132
  %xtraiter146 = and i64 %i.db, 3                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph95.split, %._crit_edge
  %indvars.iv107 = phi i64 [ 0, %.lr.ph95.split ], [ %indvars.iv.next108, %._crit_edge ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv107
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !179
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !191 ; 7 uses
  %i.dl = mul i64 %i.dg, %indvars.iv107
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dl ; 6 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dn = ptrtoaddr ptr %i.dk to i64
  %i.do = mul i64 %i.dh, %indvars.iv107
  %i.dp = add i64 %i.do, %i.df
  %i.dq = sub i64 %i.dn, %i.dp
  %diff.check = icmp ugt i64 %i.dq, -32
  br i1 %diff.check, label %scalar.ph129.preheader, label %vector.body133

vector.body133:                                   ; preds = %vector.memcheck, %vector.body133
  %index134 = phi i64 [ %index.next137, %vector.body133 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index134 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load135 = load <4 x float>, ptr %i.dr, align 4, !tbaa !91
  %wide.load136 = load <4 x float>, ptr %i.ds, align 4, !tbaa !91
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index134 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x float> %wide.load135, ptr %i.dt, align 4, !tbaa !91
  store <4 x float> %wide.load136, ptr %i.du, align 4, !tbaa !91
  %index.next137 = add nuw i64 %index134, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.dv, label %middle.block138, label %vector.body133, !llvm.loop !390

middle.block138:                                  ; preds = %vector.body133
  br i1 %cmp.n139, label %._crit_edge, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block138
  %.093.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec132, %middle.block138 ] ; 3 uses
  br i1 %lcmp.mod147.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %.093.prol = phi i64 [ %i.dz, %scalar.ph129.prol ], [ %.093.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.093.prol
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !91
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.093.prol
  store float %i.dx, ptr %i.dy, align 4, !tbaa !91
  %i.dz = add nuw i64 %.093.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !391

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %.093.unr = phi i64 [ %.093.ph, %scalar.ph129.preheader ], [ %i.dz, %scalar.ph129.prol ]
  %i.ea = sub i64 %.093.ph, %i.db
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge, label %scalar.ph129

._crit_edge:                                      ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block138
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge96.split, label %.lr.ph, !llvm.loop !392

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %.093 = phi i64 [ %i.er, %scalar.ph129 ], [ %.093.unr, %scalar.ph129.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.093
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !91
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.093
  store float %i.ed, ptr %i.ee, align 4, !tbaa !91
  %i.ef = add nuw i64 %.093, 1                    ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !91
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ef
  store float %i.eh, ptr %i.ei, align 4, !tbaa !91
  %i.ej = add nuw i64 %.093, 2                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !91
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ej
  store float %i.el, ptr %i.em, align 4, !tbaa !91
  %i.en = add nuw i64 %.093, 3                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !91
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.en
  store float %i.ep, ptr %i.eq, align 4, !tbaa !91
  %i.er = add nuw i64 %.093, 4                    ; 2 uses
  %exitcond106.not.3 = icmp eq i64 %i.er, %i.db
  br i1 %exitcond106.not.3, label %._crit_edge, label %scalar.ph129, !llvm.loop !393

._crit_edge96.split:                              ; preds = %._crit_edge, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread121, %.lr.ph95, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit
  %.060.lcssa.i119 = phi i32 [ %.06081.i.us, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit.thread121 ], [ %.060.lcssa.i120, %.lr.ph95 ], [ %.060.lcssa.i.ph, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE22getMinVarianceClustersEPNS3_10KMeansNodeEPS5_iRf.exit ], [ %.060.lcssa.i120, %._crit_edge ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #32
  ret i32 %.060.lcssa.i119
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_2L2IfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN7cvflann11KMeansIndexINS_2L2IfEEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !172  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.f = phi i32 [ %i.j, %bb.c ], [ %i.d, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEPNS3_10KMeansNodeE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef nonnull %i.i)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !172
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %.lr.ph.i
  %i.j = phi i32 [ %i.f, %.lr.ph.i ], [ %.pre.i, %.noexc ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit, !llvm.loop !12

_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit: ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.m = icmp eq ptr %.pre, null
  br i1 %i.m, label %bb.d, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit.thread

_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit.thread: ; preds = %.preheader.i, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit
  %i.n = phi ptr [ %.pre, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit ], [ %i.b, %.preheader.i ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit, %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_centersEv.exit.thread, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !177  ; 3 uses
  %.not2 = icmp eq ptr %i.p, null
  br i1 %.not2, label %bb.g, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !172  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i5, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit

.lr.ph.i5:                                        ; preds = %.preheader.i4, %bb.f
  %i.t = phi i32 [ %i.z, %bb.f ], [ %i.r, %.preheader.i4 ]
  %i.u = phi ptr [ %i.aa, %bb.f ], [ %i.p, %.preheader.i4 ] ; 2 uses
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %bb.f ], [ 0, %.preheader.i4 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i6
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !180  ; 2 uses
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i5
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !177  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i6
  store ptr null, ptr %i.y, align 8, !tbaa !180
  %.pre.i7 = load i32, ptr %i.q, align 4, !tbaa !172
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i5
  %i.z = phi i32 [ %i.t, %.lr.ph.i5 ], [ %.pre.i7, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.u, %.lr.ph.i5 ], [ %i.x, %bb.e ] ; 2 uses
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i8, %i.ab
  br i1 %i.ac, label %.lr.ph.i5, label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit, !llvm.loop !11

_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit: ; preds = %bb.f, %.preheader.i4
  %i.ad = phi ptr [ %i.p, %.preheader.i4 ], [ %i.aa, %bb.f ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN7cvflann11KMeansIndexINS_2L2IfEEE12free_indicesEv.exit, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !181 ; 2 uses
  %.not2.i = icmp eq ptr %i.af, null
  br i1 %.not2.i, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.g, %.lr.ph.i9
  %i.ag = phi ptr [ %i.ah, %.lr.ph.i9 ], [ %i.af, %bb.g ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !141 ; 3 uses
  tail call void @free(ptr noundef nonnull %i.ag) #30
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !181
  %.not.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i10, label %_ZN7cvflann15PooledAllocatorD2Ev.exit, label %.lr.ph.i9, !llvm.loop !10

_ZN7cvflann15PooledAllocatorD2Ev.exit:            ; preds = %.lr.ph.i9, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !121
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef %i.ak)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN7cvflann15PooledAllocatorD2Ev.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZN7cvflann15PooledAllocatorD2Ev.exit
  ret void

bb.i:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_RKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !142 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !13

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
end_hunk_0
