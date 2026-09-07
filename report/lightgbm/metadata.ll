Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metadata?download=true
inline.NumInlined: 5658
inline.NumDeleted: 1671
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8LightGBM8Metadata13InsertWeightsEPKfii:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %1, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.s, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM8Metadata8SetQueryEPKii(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  tail call void @_ZN8LightGBM8Metadata22SetQueriesFromIteratorIPKiEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM8Metadata22SetQueriesFromIteratorIPKiEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(300) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !110
  store ptr %2, ptr %i.b, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.g = icmp eq ptr %2, %1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %.not.i.i9 = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i9, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.i, ptr %i.j, align 8, !tbaa !79
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.l, align 8, !tbaa !59
  br label %bb.n

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !76
  %i.m = invoke i32 @OMP_NUM_THREADS()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.m)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN8LightGBM8Metadata22SetQueriesFromIteratorIPKiEEvT_S4_.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %.not = icmp eq i32 %i.o, %i.p
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.91, i32 noundef %i.o, i32 noundef %i.p)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %._crit_edge, %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #18 ; 0 uses
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ab = shl i64 %i.w, 30
  %sext = add i64 %i.ab, 4294967296
  %i.ac = ashr i64 %sext, 32                      ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !77 ; 5 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 3 uses
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i64 %i.ac, %i.aj
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.al)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.g

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.i
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.am = icmp ult i64 %i.ac, %i.aj
  br i1 %i.am, label %bb.k, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i10, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i11

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i11:      ; preds = %bb.k
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !79
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i11, %bb.k, %bb.j
  %i.ao = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.af, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i11 ], [ %i.af, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !76
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !59
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !110
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  invoke void @_ZN8LightGBM8Metadata21CalculateQueryWeightsEv(ptr noundef nonnull align 8 dereferenceable(300) %0)
          to label %bb.m unwind label %bb.g

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.as = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !76
  %i.av = add nsw i32 %i.au, %i.as                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !76
  %i.ax = load i32, ptr %i.z, align 8, !tbaa !59
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.l, label %._crit_edge, !llvm.loop !883

bb.m:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 298
  store i8 0, ptr %i.ba, align 2, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.bb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #18 ; 0 uses
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM8Metadata22SetQueriesFromIteratorIPKiEEvT_S4_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 14 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !110
  %i.h = load ptr, ptr %3, align 8, !tbaa !110
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %i.m, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.o, ptr %i.b, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !76
  %i.p = load i32, ptr %0, align 4, !tbaa !76     ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.p, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.q = load i32, ptr %i.b, align 4, !tbaa !76
  %i.r = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.o) ; 6 uses
  store i32 %i.r, ptr %i.b, align 4, !tbaa !76
  %i.s = load i32, ptr %i.a, align 4, !tbaa !76   ; 4 uses
  %.not14 = icmp sgt i32 %i.s, %i.r
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !110    ; 8 uses
  %i.u = sext i32 %i.s to i64                     ; 6 uses
  %i.v = add i32 %i.r, 1                          ; 2 uses
  %i.w = sub i32 %i.r, %i.s                       ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = shl nsw i64 %i.u, 2
  %scevgep19 = getelementptr i8, ptr %i.t, i64 %i.z
  %i.aa = sub i32 %i.r, %i.s
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep20 = getelementptr i8, ptr %i.ae, i64 4
  %bound0 = icmp ult ptr %i.e, %scevgep20
  %bound1 = icmp ult ptr %scevgep19, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 8589934584               ; 3 uses
  %i.af = add nsw i64 %n.vec, %i.u
  %invariant.gep = getelementptr [4 x i8], ptr %i.t, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi21 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !76, !alias.scope !890
  %wide.load22 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !76, !alias.scope !890
  %i.ah = add <4 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.ai = add <4 x i32> %vec.phi21, %wide.load22  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !886

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ai, %i.ah
  %i.ak = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !76, !alias.scope !891, !noalias !890
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph ], [ %i.af, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ak, %middle.block ] ; 2 uses
  %i.al = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.am = sub i32 %i.v, %i.al
  %i.an = sub i32 %i.r, %i.al
  %xtraiter = and i32 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = phi i32 [ %i.ar, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !76
  %i.ar = add nsw i32 %i.ao, %i.aq                ; 3 uses
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !76
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !888

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.ar, %scalar.ph.prol ]
  %i.as = icmp ult i32 %i.an, 3
  br i1 %i.as, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.at = phi i32 [ %i.bi, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.au = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !76
  %i.aw = add nsw i32 %i.at, %i.av                ; 2 uses
  store i32 %i.aw, ptr %i.e, align 4, !tbaa !76
  %i.ax = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !76
  %i.ba = add nsw i32 %i.aw, %i.az                ; 2 uses
  store i32 %i.ba, ptr %i.e, align 4, !tbaa !76
  %i.bb = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !76
  %i.be = add nsw i32 %i.ba, %i.bd                ; 2 uses
  store i32 %i.be, ptr %i.e, align 4, !tbaa !76
  %i.bf = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !76
  %i.bi = add nsw i32 %i.be, %i.bh                ; 2 uses
  store i32 %i.bi, ptr %i.e, align 4, !tbaa !76
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.v, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !889

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.p)
  store ptr %i.e, ptr %i.f, align 8
  %i.bj = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.p, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZN8LightGBM8Metadata22SetQueriesFromIteratorIPKiEEvT_S4_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bj, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.bk = load i32, ptr %4, align 4, !tbaa !76
  %i.bl = load i32, ptr %i.e, align 4, !tbaa !76
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %4, align 4, !tbaa !76
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.p, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bn = load i32, ptr %i.e, align 4, !tbaa !76
  %i.bo = atomicrmw add ptr %4, i32 %i.bn monotonic, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM8Metadata22SetQueriesFromIteratorIPKiEEvT_S4_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76
  %i.d = load i32, ptr %i.a, align 4, !tbaa !76
  %i.e = add nsw i32 %i.d, %i.c
  store i32 %i.e, ptr %i.b, align 4, !tbaa !76
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #23

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !76
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !79
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #35
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !76
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !76
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #37
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !78
  br label %bb.h
end_hunk_0
