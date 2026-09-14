Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN3fmt2v96detail6bigint13divmod_assignERKS2_:bb.a
  %i.ek = phi i32 [ %.promoted.i, %.lr.ph27.i ], [ %i.en, %bb.i ]
  %.126.i = phi i64 [ 1, %.lr.ph27.i ], [ %i.eo, %bb.i ]
  %i.el = zext i32 %i.ek to i64
  %i.em = sub nsw i64 %i.el, %.126.i              ; 3 uses
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = lshr i64 %i.em, 63
  %.not13.i = icmp sgt i64 %i.em, -1
  br i1 %.not13.i, label %._crit_edge.i15, label %bb.i, !llvm.loop !966

._crit_edge.i15:                                  ; preds = %bb.i
  store i32 %i.en, ptr %i.dj, align 4, !tbaa !76
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %._crit_edge.i15, %.preheader.i, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26
  %i.ep = load ptr, ptr %i.cl, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 1) ; 2 uses
  %i.eq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %.lr.ph102, label %.critedge.i.i

.lr.ph102:                                        ; preds = %.preheader.thread.i
  %i.es = and i64 %i.cp, 2147483647
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.et = trunc nuw i64 %i.ew to i32              ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.k, label %.critedge.i.i, !llvm.loop !18

bb.k:                                             ; preds = %.lr.ph102, %bb.j
  %i.ev = phi i32 [ %i.eq, %.lr.ph102 ], [ %i.et, %bb.j ]
  %indvars.iv.i14.i101 = phi i64 [ %i.es, %.lr.ph102 ], [ %i.ew, %bb.j ]
  %i.ew = add nsw i64 %indvars.iv.i14.i101, -1    ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !76
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.j, label %..critedge.i.i_crit_edge, !llvm.loop !18

..critedge.i.i_crit_edge:                         ; preds = %bb.k
  br label %.critedge.i.i, !llvm.loop !18

.critedge.i.i:                                    ; preds = %bb.j, %..critedge.i.i_crit_edge, %.preheader.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %.preheader.thread.i ], [ %i.ev, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.j ]
  %i.fa = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.fb = load i64, ptr %i.cm, align 8, !tbaa !316 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.l, label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.fd = load ptr, ptr %0, align 8, !tbaa !69
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.fa), !call_target !325, !inline_history !967
  %.pre.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !316
  br label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.l
  %i.ff = phi i64 [ %i.fb, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.l ]
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ff) ; 5 uses
  store i64 %..i.i.i.i, ptr %i.a, align 8, !tbaa !321
  %i.fg = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.fh = trunc nuw i64 %..i.i.i.i to i32         ; 3 uses
  %i.fi = load i32, ptr %i.d, align 8, !tbaa !320 ; 2 uses
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = load i64, ptr %i.g, align 8, !tbaa !321 ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 4 uses
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !320
  %i.fn = add nsw i32 %i.fm, %i.fl                ; 2 uses
  %.not.i16 = icmp eq i32 %i.fj, %i.fn
  br i1 %.not.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit
  %i.fo = icmp sgt i32 %i.fj, %i.fn
  br i1 %i.fo, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.n:                                             ; preds = %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit
  %i.fp = sub nsw i32 %i.fh, %i.fl
  %spec.store.select.i18 = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0) ; 3 uses
  %i.fq = load ptr, ptr %i.cl, align 8
  %i.fr = load ptr, ptr %i.ac, align 8
  %smin62 = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i18, i32 %i.fh)
  %i.fs = trunc nuw i64 %..i.i.i.i to i32
  %.not35.not.i21106 = icmp slt i32 %spec.store.select.i18, %i.fs
  br i1 %.not35.not.i21106, label %.lr.ph110, label %._crit_edge111

bb.o:                                             ; preds = %.lr.ph110
  %i.ft = trunc nuw i64 %i.fu to i32
  %.not35.not.i21 = icmp slt i32 %spec.store.select.i18, %i.ft
  br i1 %.not35.not.i21, label %.lr.ph110, label %._crit_edge111, !llvm.loop !16

.lr.ph110:                                        ; preds = %bb.n, %bb.o
  %.0.in.i20108 = phi i32 [ %.0.i23, %bb.o ], [ %i.fl, %bb.n ]
  %indvars.iv.i19107 = phi i64 [ %i.fu, %bb.o ], [ %..i.i.i.i, %bb.n ]
  %i.fu = add nsw i64 %indvars.iv.i19107, -1      ; 3 uses
  %.0.i23 = add nsw i32 %.0.in.i20108, -1         ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !76 ; 2 uses
  %i.fx = zext i32 %.0.i23 to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !76 ; 2 uses
  %.not37.i24 = icmp eq i32 %i.fw, %i.fz
  br i1 %.not37.i24, label %bb.o, label %.loopexit.i25, !llvm.loop !16

._crit_edge111:                                   ; preds = %bb.o, %bb.n
  %.0.in.i20.lcssa = phi i32 [ %i.fl, %bb.n ], [ %.0.i23, %bb.o ]
  %or.cond.not48 = icmp sgt i32 %.0.in.i20.lcssa, %smin62
  br i1 %or.cond.not48, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge

.loopexit.i25:                                    ; preds = %.lr.ph110
  %i.ga = icmp ugt i32 %i.fw, %i.fz
  br i1 %i.ga, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge: ; preds = %.loopexit.i25, %bb.m, %._crit_edge111
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26, !llvm.loop !968

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge111, %.loopexit.i25, %bb.m, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.fg, %bb.m ], [ %i.fg, %.loopexit.i25 ], [ %i.fg, %._crit_edge111 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !316  ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !315  ; 4 uses
  %i.j = icmp ugt i64 %.0, 2305843009213693951
  br i1 %i.j, label %bb.d, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit, !prof !258

bb.d:                                             ; preds = %.thread, %bb.c
  %.027 = phi i64 [ %i.g, %.thread ], [ %.0, %bb.c ]
  %i.k = icmp ugt i64 %.027, 4611686018427387903
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit:     ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.0, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !321  ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !82

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %bb.i, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.i, align 4, !tbaa !76
  store i32 %i.r, ptr %i.m, align 4, !tbaa !76
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.g, %bb.h, %bb.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !315
  store i64 %.0, ptr %i.a, align 8, !tbaa !316
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.s
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  %i.t = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.t) #35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::basic_memory_buffer.87", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !321  ; 11 uses
  %i.c = trunc i64 %i.b to i32                    ; 9 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !316  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !315
  store i64 %i.j, ptr %i.f, align 8, !tbaa !316
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k, i64 %.idx.i.i, i1 false), !tbaa !76
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.e, align 8, !tbaa !315
  store i64 %i.j, ptr %i.f, align 8, !tbaa !316
  store ptr %i.k, ptr %i.g, align 8, !tbaa !315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.h, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi i64 [ %i.j, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.j, %bb.b ]
  %i.p = icmp ugt i64 %i.b, %i.j
  br i1 %i.p, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.q = lshr i64 %i.j, 1
  %i.r = add i64 %i.q, %i.j                       ; 3 uses
  %i.s = icmp ugt i64 %i.b, %i.r
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.r, 4611686018427387903
  br i1 %i.t, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.u = call i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.b, %bb.d ] ; 5 uses
  %i.v = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !258

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.027.i = phi i64 [ %i.u, %.thread.i ], [ %.0.i, %bb.f ]
  %i.w = icmp ugt i64 %.027.i, 4611686018427387903
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc110 unwind label %bb.n

.noexc110:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc111 unwind label %bb.n

.noexc111:                                        ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.0.i, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38
          to label %.noexc112 unwind label %bb.n  ; 3 uses

.noexc112:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !321 ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !82

bb.j:                                             ; preds = %.noexc112
  %.idx.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %.noexc112
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !76
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !76
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store ptr %i.y, ptr %i.e, align 8, !tbaa !315
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !316
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.n, %i.ae
  br i1 %.not.i, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.af = shl i64 %i.j, 2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.af) #35
  %.pre.i.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !316
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.m ], [ %.0.i, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i ]
  %.pre = load i64, ptr %i.i, align 8, !tbaa !316
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.i, %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

bb.o:                                             ; preds = %.noexc.i, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.ai = phi i64 [ %i.o, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.aj = phi i64 [ %i.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.b, i64 %i.aj)
  store i64 %..i.i.i.i, ptr %i.ak, align 8, !tbaa !321
  %i.al = zext i32 %i.d to i64                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.p, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %0, align 8, !tbaa !69
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.al)
          to label %.noexc unwind label %bb.q, !inline_history !969

.noexc:                                           ; preds = %bb.p
  %.pre.i.i45 = load i64, ptr %i.i, align 8, !tbaa !316
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit: ; preds = %bb.o, %.noexc
  %i.ap = phi i64 [ %i.ai, %bb.o ], [ %.pre.i.i45, %.noexc ] ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ap) ; 4 uses
  store i64 %..i.i, ptr %i.a, align 8, !tbaa !321
  %i.aq = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.aq, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !315 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.s
  %indvars.iv74 = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.s ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 5 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.ce, %bb.s ] ; 2 uses
  %xtraiter = and i64 %indvars.iv74, 1
  %i.as = icmp eq i64 %indvars.iv, 0
  br i1 %i.as, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv74, 9223372036854775806
  br label %bb.r

.preheader.loopexit:                              ; preds = %bb.s
  %.pre93.pre = load ptr, ptr %i.g, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %i.ce, %.preheader.loopexit ]
  %i.at = icmp sgt i32 %i.d, %i.c
  br i1 %i.at, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.au = load ptr, ptr %i.e, align 8             ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  %2 = and i64 %i.b, 4294967295
  %i.aw = add i32 %i.c, -2
  %invariant.op = sub i32 1, %i.c
  %indvars.iv85.prol = add nsw i64 %i.av, -1      ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.prol
  br label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %bb.r, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.r ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.r ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bs, %bb.r ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.r ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !76
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !76
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.be, %i.bb
  %i.bg = zext i64 %i.bf to i128
  %i.bh = add i128 %.150, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !76
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !76
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw i64 %i.bp, %i.bl
  %i.br = zext i64 %i.bq to i128
  %i.bs = add i128 %i.bh, %i.br                   ; 3 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.r, !llvm.loop !970

.unr-lcssa:                                       ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49
  %indvars.iv67.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next68.1, %.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ %indvars.iv, %.preheader49 ], [ %indvars.iv.next66.1, %.unr-lcssa ]
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv74 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !76
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !76
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw i64 %i.by, %i.bv
  %i.ca = zext i64 %i.bz to i128
  %i.cb = add i128 %.150.epil.init, %i.ca
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.bs, %.unr-lcssa ], [ %i.cb, %.epil.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  %i.cd = trunc i128 %.lcssa147 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !76
  %i.ce = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !971

._crit_edge62.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %i.g, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader
  %i.cf = phi ptr [ %.pre92, %._crit_edge62.loopexit ], [ %.pre93, %.preheader ]
  %i.cg = trunc nuw i64 %..i.i to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cg, i32 1) ; 2 uses
  %i.ch = trunc nuw i64 %..i.i to i32             ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph142, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph142
  %i.cj = trunc nuw i64 %i.cm to i32              ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph142, label %.critedge.i, !llvm.loop !18

.lr.ph142:                                        ; preds = %._crit_edge62, %bb.t
  %i.cl = phi i32 [ %i.cj, %bb.t ], [ %i.ch, %._crit_edge62 ]
  %indvars.iv.i141 = phi i64 [ %i.cm, %bb.t ], [ %..i.i, %._crit_edge62 ]
  %i.cm = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !76
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %..critedge.i_crit_edge, !llvm.loop !18

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %bb.t, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cl, %..critedge.i_crit_edge ], [ %smin.i, %bb.t ]
  %i.cq = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cr = icmp ult i64 %i.ap, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.critedge.i
  %i.cs = load ptr, ptr %0, align 8, !tbaa !69
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cq)
          to label %.noexc46 unwind label %bb.y, !inline_history !972

.noexc46:                                         ; preds = %bb.u
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !316
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ %2, %.lr.ph61 ], [ %indvars.iv.next92, %._crit_edge ] ; 3 uses
  %.03360 = phi i32 [ 1, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.ed, %._crit_edge ] ; 3 uses
  %3 = trunc nuw i64 %indvars.iv91 to i32
  %.reass.reass = add i32 %3, %invariant.op
  %i.cu = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.cv = sext i32 %.03360 to i64                 ; 3 uses
  %i.cw = sub i32 %indvar, %i.c
  %i.cx = and i32 %i.cw, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.cx, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next84.prol = add nsw i64 %i.cv, 1
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !76
  %i.da = zext i32 %i.cz to i64
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !76
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw i64 %i.dc, %i.da
  %i.de = zext i64 %i.dd to i128
  %i.df = add nsw i128 %.259, %i.de               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa146.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.df, %.lr.ph.prol ]
  %indvars.iv85.in.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv85.prol, %.lr.ph.prol ]
  %indvars.iv83.unr = phi i64 [ %i.cv, %.lr.ph.preheader ], [ %indvars.iv.next84.prol, %.lr.ph.prol ]
  %.355.unr = phi i128 [ %.259, %.lr.ph.preheader ], [ %i.df, %.lr.ph.prol ]
  %i.dg = icmp eq i32 %i.aw, %indvar
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85.in = phi i64 [ %indvars.iv85.1, %.lr.ph ], [ %indvars.iv85.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph ], [ %indvars.iv83.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.355 = phi i128 [ %i.ea, %.lr.ph ], [ %.355.unr, %.lr.ph.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !76
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv85.in
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !76
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.dj
  %i.dp = zext i64 %i.do to i128
  %i.dq = add i128 %.355, %i.dp
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !76
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !76
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul nuw i64 %i.dx, %i.du
  %i.dz = zext i64 %i.dy to i128
  %i.ea = add i128 %i.dq, %i.dz                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next84.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !973

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.v
  %.3.lcssa = phi i128 [ %.259, %bb.v ], [ %.lcssa146.unr, %.lr.ph.prol.loopexit ], [ %i.ea, %.lr.ph ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre93, i64 %indvars.iv91
  %i.ec = trunc i128 %.3.lcssa to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !76
  %i.ed = lshr i128 %.3.lcssa, 32
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %indvars.iv.next82 = add i32 %.03360, 1
  %exitcond91.not = icmp eq i32 %.03360, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge62.loopexit, label %bb.v, !llvm.loop !974

bb.w:                                             ; preds = %.noexc46, %.critedge.i
  %i.ee = phi i64 [ %i.ap, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.ee)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !321
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !320
  %i.eh = shl nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !320
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !316
  %i.el = shl i64 %i.ek, 2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.y:                                             ; preds = %bb.u
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.em, %bb.y ]
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = load i64, ptr %i.f, align 8, !tbaa !316
  %i.eq = shl i64 %i.ep, 2
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::detail::float_specs", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.100, align 8            ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %8 = alloca %class.anon.102, align 8            ; 12 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %10 = alloca %class.anon.103, align 8           ; 11 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %11 = alloca %class.anon.104, align 8           ; 9 uses
  %.fr134 = freeze i64 %3                         ; 4 uses
  store i64 %.fr134, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.j = load ptr, ptr %1, align 8, !tbaa !310    ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !311  ; 10 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.m = lshr i64 %.fr134, 32                     ; 2 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 7 uses
  %i.o = lshr i64 %.fr134, 40                     ; 2 uses
  %i.p = trunc i64 %i.o to i8                     ; 4 uses
  store i8 %i.p, ptr %i.c, align 1, !tbaa !156
  %.not = icmp ne i8 %i.p, 0
  %i.q = zext i1 %.not to i32
  %i.r = add i32 %i.l, %i.q
  %i.s = zext i32 %i.r to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.t = and i32 %i.n, 131072                     ; 3 uses
  %.not63 = icmp eq i32 %i.t, 0
  %i.u = trunc i64 %.fr134 to i32                 ; 7 uses
  br i1 %.not63, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef signext i8 @_ZN3fmt2v96detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.w = phi i8 [ %i.v, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.w, ptr %i.d, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !312  ; 3 uses
  %i.z = add nsw i32 %i.l, %i.y                   ; 10 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = trunc i64 %i.m to i8
  switch i8 %i.ab, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread103 [
    i8 1, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 0, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  ]

_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.c
  %i.ac = icmp slt i32 %i.z, -3
  %i.ad = icmp sgt i32 %i.u, 0
  %spec.select.i = select i1 %i.ad, i32 %i.u, i32 16
  %i.ae = icmp sgt i32 %i.z, %spec.select.i
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread103

_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.c, %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  %i.ag = and i32 %i.n, 524288
  %.not71 = icmp eq i32 %i.ag, 0
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ah = sub nsw i32 %i.u, %i.l
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 0) ; 2 uses
  %i.ai = zext nneg i32 %spec.store.select to i64
  %i.aj = add nuw nsw i64 %i.ai, %i.s
  br label %bb.g

bb.e:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ak = icmp eq i32 %i.l, 1
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.d, align 1, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.al = phi i8 [ %i.w, %bb.d ], [ 0, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.am = phi i32 [ %spec.store.select, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.0 = phi i64 [ %i.aj, %bb.d ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  %i.an = sub nsw i32 1, %i.z
  %i.ao = icmp slt i32 %i.z, 1
  %i.ap = select i1 %i.ao, i32 %i.an, i32 %i.aa   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 99
  %i.ar = icmp sgt i32 %i.ap, 999
  %i.as = select i1 %i.ar, i64 4, i64 3
  %.058 = select i1 %i.aq, i64 %i.as, i64 2
  %.not72.not = icmp eq i8 %i.al, 0               ; 2 uses
  %i.at = select i1 %.not72.not, i64 2, i64 3
  %i.au = add nuw nsw i64 %.0, %.058
  %i.av = add nuw nsw i64 %i.au, %i.at            ; 6 uses
  %i.aw = and i32 %i.n, 65536
  %.not73 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not73, i8 101, i8 69        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 %i.p, ptr %6, align 8, !tbaa !379
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ay, align 8, !tbaa !380
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.l, ptr %i.az, align 8, !tbaa !381
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.al, ptr %i.ba, align 4, !tbaa !382
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.am, ptr %i.bb, align 8, !tbaa !383
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %i.ax, ptr %i.bc, align 4, !tbaa !384
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i32 %i.aa, ptr %i.bd, align 8, !tbaa !385
  %i.be = load i32, ptr %2, align 4, !tbaa !151
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SH_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE_EESI_SI_SP_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.av, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(36) %6)
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45 ; 8 uses
  %i.bj = add i64 %i.bi, %i.av                    ; 5 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bl = sub i64 9223372036854775807, %i.bi
  %i.bm = icmp ult i64 %i.bl, %i.av
  br i1 %i.bm, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bn = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v:bb.a
  %i.ab = icmp eq ptr %i.aa, %i.x
  br i1 %i.ab, label %common.resume, label %common.resume.sink.split

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !43, !alias.scope !1081
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !45, !alias.scope !1081
  store i8 0, ptr %i.ad, align 8, !tbaa !37, !alias.scope !1081
  %i.af = load i8, ptr %i.ac, align 8, !tbaa !85, !range !51, !noalias !1081, !noundef !52
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !noalias !1081
  %i.ai = icmp ult i64 %i.ah, 2
  %not..i.i.i.i = xor i1 %i.ag, true
  %narrow.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ai, !prof !122
  %.0.i.i.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.i.i.i.i.i.i.i.i)
          to label %.noexc.i11 unwind label %bb.h

.noexc.i11:                                       ; preds = %bb.g
  %i.aj = load i8, ptr %i.ac, align 8, !tbaa !85, !range !51, !noalias !1081, !noundef !52
  %i.ak = zext nneg i8 %i.aj to i64
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ak, ptr noundef nonnull align 8 %0)
          to label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i11, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1081 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %common.resume, label %common.resume.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61, !noalias !1082 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45, !noalias !1082 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !43, !alias.scope !1084
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = icmp slt i64 %i.ar, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.at, i8 0, i64 9, i1 false), !alias.scope !1084
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
          to label %.noexc.i.i unwind label %bb.o

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ar, 15
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  switch i64 %i.ar, label %bb.m [
    i64 0, label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !37, !noalias !1085
  store i8 %i.av, ptr %i.as, align 8, !tbaa !37, !alias.scope !1084, !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 1 %i.ap, i64 %i.ar, i1 false), !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %._crit_edge.i.i unwind label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1084, !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1084 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.as
  br i1 %i.ay, label %common.resume, label %common.resume.sink.split

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit: ; preds = %bb.k, %bb.l, %bb.m, %._crit_edge.i.i
  %i.az = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.as, %bb.m ], [ %i.as, %bb.l ], [ %i.as, %bb.k ]
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !45, !alias.scope !1084, !noalias !1086
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 0, ptr %i.ba, align 1, !tbaa !37, !noalias !1086
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.8, i32 noundef %i.a) #7
  unreachable

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit: ; preds = %.noexc.i11, %bb.e, %.noexc.i, %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK5folly7dynamic4findENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !88
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.d, i32 noundef %i.c) #7
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !394  ; 2 uses
  %i.g = icmp ult i64 %i.f, 512
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.h = icmp samesign ult i64 %i.f, 256
  br i1 %i.h, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90   ; 3 uses
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = shl i64 %i.j, 1
  %i.n = and i64 %i.m, 14
  %i.o = lshr i64 %i.j, 3
  %i.p = and i64 %i.o, 1
  %i.q = or disjoint i64 %i.n, %i.p               ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !64
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, !prof !82

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aa, %i.x
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ab = icmp eq ptr %2, %1
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.v, i64 %i.aa)
  %i.ac = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ac, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

bb.f:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !39
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = lshr i64 %i.ah, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.am = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !394
  %i.ap = and i64 %i.ao, 255                      ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ap
  %i.ar = xor i64 %notmask.i, -1                  ; 2 uses
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !398 ; 2 uses
  %i.at = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.at
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %bb.h
  %.024.i53.us = phi i64 [ %i.bu, %bb.h ], [ %i.aq, %bb.f ]
  %.026.i52.us = phi i64 [ %i.bv, %bb.h ], [ %i.ah, %bb.f ] ; 2 uses
  %i.au = and i64 %.026.i52.us, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 80
  call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 3, i32 1)
  %i.ay = load <16 x i8>, ptr %i.aw, align 16     ; 2 uses
  %i.az = icmp eq <16 x i8> %i.ay, %i.an
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 16383
  %.not.us = icmp eq i32 %i.bc, 0
  %i.bd = extractelement <16 x i8> %i.ay, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.be = icmp ne ptr %i.aw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.be)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.019.0.us.us = phi i32 [ %i.bi, %.critedge.i.us.us ], [ %i.bb, %.preheader.us ] ; 4 uses
  %i.bf = icmp ne i32 %.sroa.019.0.us.us, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.us.us, i1 true)
  %i.bh = add nsw i32 %.sroa.019.0.us.us, -1
  %i.bi = and i32 %i.bh, %.sroa.019.0.us.us       ; 2 uses
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = getelementptr i8, ptr %i.aw, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !96 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.bp = icmp eq i32 %i.bo, 6
  br i1 %i.bp, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, label %.critedge.i.us.us, !prof !82

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us: ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !45
  %.not.i.i.i.i9.us.us = icmp eq i64 %i.ag, %i.br
  br i1 %.not.i.i.i.i9.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i.us.us, !prof !1089

.critedge.i.us.us:                                ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us, %bb.g
  %i.bs = and i32 %i.bi, 16382
  %.not42.us.us = icmp eq i32 %i.bs, 0
  br i1 %.not42.us.us, label %.loopexit.split.us.us, label %bb.g, !llvm.loop !1087

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.bt = icmp eq i8 %i.bd, 0
  br i1 %i.bt, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.h, !prof !82

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bu = add i64 %.024.i53.us, -1                ; 2 uses
  %i.bv = add i64 %i.ak, %.026.i52.us
  %.not.i.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split.us, !llvm.loop !1088

.split:                                           ; preds = %bb.f, %bb.j
  %.024.i53 = phi i64 [ %i.cz, %bb.j ], [ %i.aq, %bb.f ]
  %.026.i52 = phi i64 [ %i.da, %bb.j ], [ %i.ah, %bb.f ] ; 2 uses
  %i.bw = and i64 %.026.i52, %i.ar
  %i.bx = shl nuw nsw i64 %i.bw, 7
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bx ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1)
  %i.ca = load <16 x i8>, ptr %i.by, align 16     ; 2 uses
  %i.cb = icmp eq <16 x i8> %i.ca, %i.an
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 16383
  %.not = icmp eq i32 %i.ce, 0
  %i.cf = extractelement <16 x i8> %i.ca, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.cg = icmp ne ptr %i.by, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cg)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.019.0 = phi i32 [ %i.ck, %.critedge.i ], [ %i.cd, %.preheader ] ; 4 uses
  %i.ch = icmp ne i32 %.sroa.019.0, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.cj = add nsw i32 %.sroa.019.0, -1
  %i.ck = and i32 %i.cj, %.sroa.019.0             ; 2 uses
  %i.cl = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr i8, ptr %i.by, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !96 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !64
  %i.cr = icmp eq i32 %i.cq, 6
  br i1 %i.cr, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, label %.critedge.i, !prof !82

_ZNK5folly7dynamic11stringPieceEv.exit.i.i8:      ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !45
  %.not.i.i.i.i9 = icmp eq i64 %i.ag, %i.ct
  br i1 %.not.i.i.i.i9, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11, label %.critedge.i, !prof !1089

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61
  %bcmp.i.i.i.i10 = call i32 @bcmp(ptr %1, ptr %i.cv, i64 %i.ag)
  %i.cw = icmp eq i32 %bcmp.i.i.i.i10, 0
  br i1 %i.cw, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i, !prof !1090

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8, %bb.i, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11
  %i.cx = and i32 %i.ck, 16382
  %.not42 = icmp eq i32 %i.cx, 0
  br i1 %.not42, label %.loopexit.split, label %bb.i, !llvm.loop !1087

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.cy = icmp eq i8 %i.cf, 0
  br i1 %i.cy, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.j, !prof !82

bb.j:                                             ; preds = %.loopexit.split
  %i.cz = add i64 %.024.i53, -1                   ; 2 uses
  %i.da = add i64 %i.ak, %.026.i52
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %.split, !llvm.loop !1088

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us
  %.us-phi = phi ptr [ %i.bl, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.cn, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11 ]
  %.us-phi48 = phi i64 [ %i.bj, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i8.us.us ], [ %i.cl, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit11 ]
  %i.db = getelementptr i8, ptr %.us-phi, i64 16
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit: ; preds = %.loopexit.split, %bb.j, %bb.h, %.loopexit.split.us.us, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.c
  %.sroa.7.1 = phi i64 [ %i.q, %bb.e ], [ 0, %bb.c ], [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.q, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %.us-phi48, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ 0, %bb.h ], [ 0, %.loopexit.split.us.us ], [ 0, %bb.j ], [ 0, %.loopexit.split ]
  %.sroa.018.1 = phi ptr [ %i.l, %bb.e ], [ null, %bb.c ], [ null, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread ], [ %i.l, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.db, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ null, %bb.h ], [ null, %.loopexit.split.us.us ], [ null, %bb.j ], [ null, %.loopexit.split ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.018.1, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092, !nonnull !52, !align !71 ; 2 uses
  store i32 6, ptr %2, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !400  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !401  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !43
  %i.j = icmp eq ptr %i.c, null
  %i.k = icmp ne ptr %i.e, null
  %or.cond.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #36
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.h, 0
  br i1 %i.m, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.h, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !122

.noexc9.i.i:                                      ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #38 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !61
  store i64 %i.h, ptr %i.i, align 8, !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.c, align 1, !tbaa !37
  store i8 %i.r, ptr %i.q, align 1, !tbaa !37
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.h, i1 false)
  br label %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit

_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.t, align 1, !tbaa !37
  %i.u = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i1 %i.u

bb.h:                                             ; preds = %_ZN5folly7dynamicC2IRKNS_5RangeIPKcEEvEEOT_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.v
}

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA87_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(87) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !54
  %i.b = load i64, ptr %1, align 8, !tbaa !39     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.b, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @llvm.abs.i64(i64 %i.b, i1 false) ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = sub nuw nsw i64 64, %i.d
  %i.f = mul nuw nsw i64 %i.e, 39
  %i.g = lshr i64 %i.f, 7                         ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = icmp uge i64 %i.c, %i.i
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  br label %_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIA87_clJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i = lshr i64 %i.b, 63
  %i.m = add nuw nsw i64 %.lobit.i.i.i, 87
  %i.n = add nuw nsw i64 %i.m, %.0.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.n)
  %i.o = load ptr, ptr %2, align 8, !tbaa !54     ; 6 uses
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(87) %0) #34 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE6expectEc:bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !37
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.p = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.t = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.w = load i64, ptr %i.u, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.q, align 8, !tbaa !37
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.z) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0, label %bb.g, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0, label %bb.g, label %bb.j

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread
  %.pn.pn17.ph = phi { ptr, i32 } [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.pn.pn17 = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %.pn.pn17.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !400
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !400
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !401
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i32
  br label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit

_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit: ; preds = %bb.h, %bb.i
  %i.ah = phi i32 [ %i.ag, %bb.i ], [ -1, %bb.h ]
  store i32 %i.ah, ptr %i.c, align 4, !tbaa !409
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  %.pn.pn16 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %.pn.pn17, %bb.g ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  resume { ptr, i32 } %.pn.pn16

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1244   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #36
  unreachable

_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #34
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i) #34
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1243

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i19) #34
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i19) #34
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1243

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !414
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5folly7dynamicESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1244
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !413
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !414
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic6atImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplImJRmDnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSC_IKS4_S4_EEEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.folly::dynamic", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i83 = phi i64 [ %i.i, %bb.b ], [ %i.ao, %bb.f ]
  %.026.i82 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.f ] ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !394
  %i.l = and i64 %i.k, 255
  %notmask.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i, -1
  %i.n = and i64 %.026.i82, %i.m
  %i.o = load ptr, ptr %1, align 8, !tbaa !398
  %i.p = shl nuw nsw i64 %i.n, 7
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 3, i32 1)
  %i.s = load <16 x i8>, ptr %i.q, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.g
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 16383
  %.not70 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not70, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.q, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.043.0 = phi i32 [ %i.ac, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.043.0, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.ab = add nsw i32 %.sroa.043.0, -1
  %i.ac = and i32 %i.ab, %.sroa.043.0             ; 2 uses
  %i.ad = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ah = load i64, ptr %4, align 8, !tbaa !39
  store i32 4, ptr %7, align 8, !tbaa !64
  store i64 %i.ah, ptr %i.j, align 8, !tbaa !39
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !96
  %i.aj = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  resume { ptr, i32 } %i.ak

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.d
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %i.aj, label %bb.g, label %.critedge.i, !prof !82

.critedge.i:                                      ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.al = and i32 %i.ac, 16382
  %.not71 = icmp eq i32 %i.al, 0
  br i1 %.not71, label %.loopexit.loopexit, label %bb.d, !llvm.loop !1245

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !421
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.am = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.x, %bb.c ]
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %.thread68.loopexit, label %bb.f, !prof !82

bb.f:                                             ; preds = %.loopexit
  %i.ao = add i64 %.024.i83, -1                   ; 2 uses
  %i.ap = add i64 %i.d, %.026.i82
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread68.loopexit, label %bb.c, !llvm.loop !1246

bb.g:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemImEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.aq = getelementptr i8, ptr %i.af, i64 16
  br label %bb.o

.thread68.loopexit:                               ; preds = %.loopexit, %bb.f
  %.pre92 = load i64, ptr %i.a, align 8, !tbaa !394
  br label %.thread68

.thread68:                                        ; preds = %.thread68.loopexit, %bb.a
  %i.ar = phi i64 [ %.pre92, %.thread68.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = lshr i64 %i.ar, 8                       ; 2 uses
  %i.at = and i64 %i.ar, 255                      ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !398   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64               ; 2 uses
  %i.az = shl i64 %i.ay, %i.at                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.as, %i.az
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread68
  %i.ba = shl nuw i64 1, %i.at
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.as, i64 noundef %i.ba, i64 noundef %i.ay, i64 noundef %i.az)
  %.pre93 = load i64, ptr %i.a, align 8, !tbaa !394
  %.pre94 = load ptr, ptr %1, align 8, !tbaa !398
  %.pre95 = and i64 %.pre93, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.h
  %.pre-phi = phi i64 [ %i.at, %.thread68 ], [ %.pre95, %bb.h ]
  %i.bb = phi ptr [ %i.au, %.thread68 ], [ %.pre94, %bb.h ] ; 4 uses
  %notmask.i32 = shl nsw i64 -1, %.pre-phi
  %i.bc = xor i64 %notmask.i32, -1                ; 2 uses
  %i.bd = and i64 %2, %i.bc
  %i.be = shl nuw nsw i64 %i.bd, 7                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16, !tbaa !37
  %i.bh = icmp eq <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bj, 0
  br i1 %.not72, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bk = shl i64 %3, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bm = phi i64 [ %i.be, %bb.i ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.i ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !421 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bp, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !421
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.br = add i64 %i.bl, %.029                    ; 2 uses
  %i.bs = and i64 %i.br, %i.bc
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt
  %i.bv = load <16 x i8>, ptr %i.bu, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.by, 0
  br i1 %.not73, label %bb.j, label %bb.l, !llvm.loop !1247

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.ca = extractelement <16 x i8> %i.bv, i64 14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = add i8 %i.ca, 16
  store i8 %i.cc, ptr %i.cb, align 2, !tbaa !422
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.037.0.in = phi i16 [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.l ]
  %.1 = phi ptr [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.037.0.in, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !37
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.48) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.m
  %i.ci = trunc i64 %3 to i8
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !37
  %i.cj = shl nuw nsw i64 %i.ce, 3
  %i.ck = getelementptr i8, ptr %.1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 3 uses
  %i.cm = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cl, i64 %i.ce, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink114 = phi ptr [ %i.aq, %bb.g ], [ %i.cl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa109.sink = phi i64 [ %i.ad, %bb.g ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink114, ptr %0, align 8, !tbaa !416
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa109.sink, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !425
  ret void
}

declare noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !96
  %i.b = load i64, ptr %5, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !64
  store i64 %i.b, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.e, align 8, !tbaa !37
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #34 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !24

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #37
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.l = and i64 %2, 255                          ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = lshr i64 %i.l, 1
  %i.o = ptrtoint ptr %1 to i64
  %i.p = or i64 %i.n, %i.o                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !90
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.p, ptr %i.q, align 8, !tbaa !39
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESF_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !394  ; 2 uses
  %i.v = and i64 %i.u, -256
  %i.w = add i64 %i.v, 256
  %i.x = and i64 %i.u, 255
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.t, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !394
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.225", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  store i64 %2, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !398    ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !426
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %.056154 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.48) #41
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !37
  %i.bo = shl i64 %.056154, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.058153, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !96
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !96
  store ptr null, ptr %i.bt, align 8, !tbaa !96
  %i.bv = add nuw i64 %.056154, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.157 = phi i64 [ %i.bv, %bb.g ], [ %.056154, %bb.d ] ; 3 uses
  %i.bw = add i64 %.058153, 1
  %i.bx = icmp ult i64 %.157, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !1252

bb.i:                                             ; preds = %bb.h
  %i.by = add i64 %.157, -1                       ; 2 uses
  %i.bz = shl i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 16     ; 2 uses
  %i.cc = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = and i64 %i.by, 255                      ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !39
  br label %bb.af

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph152.preheader

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp slt i64 %4, 0
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !122

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #38
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !426
  %.pre163 = load i64, ptr %i.b, align 8, !tbaa !39
  %.pre164 = load i64, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %.pre165 = shl i64 %.pre163, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %4, i1 false)
  %.not60149 = icmp eq i64 %.pre164, 0
  br i1 %.not60149, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.thread, %bb.o
  %.0127178 = phi ptr [ %7, %.thread ], [ %i.ck, %bb.o ] ; 5 uses
  %i.cm = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cn = phi i64 [ %1, %.thread ], [ %.pre164, %bb.o ]
  %.pre-phi177 = phi i64 [ %i.p, %.thread ], [ %.pre165, %bb.o ]
  %i.co = getelementptr i8, ptr %i.cm, i64 %.pre-phi177
  br label %.lr.ph152

.loopexit:                                        ; preds = %bb.aa, %.lr.ph152
  %.1.lcssa = phi i64 [ %.042150, %.lr.ph152 ], [ %i.de, %bb.aa ] ; 2 uses
  %.not60 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph152, !llvm.loop !1253

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.loopexit
  %.043151.pn = phi ptr [ %.043151, %.loopexit ], [ %i.co, %.lr.ph152.preheader ]
  %.042150 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph152.preheader ] ; 2 uses
  %.043151 = getelementptr i8, ptr %.043151.pn, i64 -128 ; 6 uses
  %i.cp = load <16 x i8>, ptr %.043151, align 16, !tbaa !37
  %i.cq = icmp eq <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 16383                    ; 2 uses
  %i.ct = xor i16 %i.cs, 16383
  %.sroa.090.0.extract.trunc = zext nneg i16 %i.ct to i32 ; 2 uses
  %cond = icmp eq i16 %i.cs, 16383
  br i1 %cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph152
  %i.cu = icmp ne ptr %.043151, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.087.0142 = phi i32 [ %.sroa.090.0.extract.trunc, %.lr.ph ], [ %.sroa.087.1, %bb.r ] ; 3 uses
  %.sroa.8.0141 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %i.cv = and i32 %.sroa.087.0142, 1
  %.not.i76 = icmp eq i32 %i.cv, 0
  br i1 %.not.i76, label %bb.q, label %bb.r, !prof !122

bb.q:                                             ; preds = %bb.p
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.087.0142, i1 true) ; 2 uses
  %i.cx = add i32 %i.cw, %.sroa.8.0141
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cx, %bb.q ], [ %.sroa.8.0141, %bb.p ] ; 2 uses
  %.pn131 = phi i32 [ %i.cy, %bb.q ], [ 1, %bb.p ]
  %.sroa.087.1 = lshr i32 %.sroa.087.0142, %.pn131 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.cz = zext i32 %.sroa.8.1.in to i64
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = getelementptr i8, ptr %.043151, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !96
  call void @llvm.prefetch.p0(ptr %i.dd, i32 0, i32 3, i32 1)
  %.not128 = icmp eq i32 %.sroa.087.1, 0
  br i1 %.not128, label %.lr.ph147, label %bb.p

.lr.ph147:                                        ; preds = %bb.r, %bb.aa
  %.1146 = phi i64 [ %i.de, %bb.aa ], [ %.042150, %bb.r ]
  %.sroa.090.0145 = phi i32 [ %.sroa.090.1, %bb.aa ], [ %.sroa.090.0.extract.trunc, %bb.r ] ; 3 uses
  %.sroa.892.0144 = phi i32 [ %.sroa.892.1, %bb.aa ], [ 0, %bb.r ] ; 2 uses
  %i.de = add i64 %.1146, -1                      ; 2 uses
  %i.df = and i32 %.sroa.090.0145, 1
  %.not.i78 = icmp eq i32 %i.df, 0
  br i1 %.not.i78, label %bb.s, label %bb.t, !prof !122

bb.s:                                             ; preds = %.lr.ph147
  %i.dg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.090.0145, i1 true) ; 2 uses
  %i.dh = add i32 %i.dg, %.sroa.892.0144
  %i.di = add nuw nsw i32 %i.dg, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph147, %bb.s
  %.sroa.892.1.in = phi i32 [ %i.dh, %bb.s ], [ %.sroa.892.0144, %.lr.ph147 ] ; 2 uses
  %.pn130 = phi i32 [ %i.di, %bb.s ], [ 1, %.lr.ph147 ]
  %.sroa.090.1 = lshr i32 %.sroa.090.0145, %.pn130 ; 2 uses
  %.sroa.892.1 = add i32 %.sroa.892.1.in, 1
  %i.dj = zext i32 %.sroa.892.1.in to i64         ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = getelementptr i8, ptr %.043151, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 16     ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !96
  %i.do = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dn)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dp = lshr i64 %i.do, 56
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1) ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.043151, i64 %i.dj
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !37
  %i.ds = zext i8 %i.dr to i64
  %i.dt = icmp eq i64 %.sroa.speculated.i.i, %i.ds
  br i1 %i.dt, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.48) #41
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %bb.ae, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83

bb.x:                                             ; preds = %bb.u
  %i.dv = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = load i64, ptr %i.ba, align 8, !tbaa !394
  %i.dy = and i64 %i.dx, 255
  %notmask.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !398   ; 2 uses
  %i.eb = and i64 %i.do, %i.dz                    ; 4 uses
  %i.ec = shl nuw nsw i64 %i.eb, 7                ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0127178, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !37  ; 2 uses
  %i.ef = icmp ult i8 %i.ee, 14
  br i1 %i.ef, label %._crit_edge.i, label %.lr.ph.i82, !prof !1260

.lr.ph.i82:                                       ; preds = %bb.x, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i
  %i.eg = phi i64 [ %i.eo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.ec, %bb.x ]
  %i.eh = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.x ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 15 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !421 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ek, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i82
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !421
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.y, %.lr.ph.i82
  %i.em = add nuw i64 %i.dw, %i.eh
  %i.en = and i64 %i.em, %i.dz                    ; 4 uses
  %i.eo = shl nuw nsw i64 %i.en, 7                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0127178, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !37  ; 2 uses
  %i.er = icmp ult i8 %i.eq, 14
  br i1 %i.er, label %._crit_edge.i, label %.lr.ph.i82, !prof !1261, !llvm.loop !1254

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, %bb.x
  %.lcssa22.i = phi i64 [ %i.eb, %bb.x ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.x ], [ 16, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.ec, %bb.x ], [ %i.eo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ee, %bb.x ], [ %i.eq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.pn.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0127178, i64 %.lcssa22.i
  %i.et = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.et, ptr %i.es, align 1, !tbaa !37
  %i.eu = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.eu ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !37
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.48) #41
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ey = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ey, ptr %i.ev, align 1, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !422
  %i.fb = add i8 %i.fa, %.0.lcssa.i
  store i8 %i.fb, ptr %i.ez, align 2, !tbaa !422
  %i.fc = shl nuw nsw i64 %i.eu, 3
  %i.fd = getelementptr i8, ptr %.lcssa21.i, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 16     ; 2 uses
  %i.ff = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.fg = load ptr, ptr %i.dm, align 8, !tbaa !96
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !96
  store ptr null, ptr %i.dm, align 8, !tbaa !96
  %.not129 = icmp eq i32 %.sroa.090.1, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph147, !llvm.loop !1255

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0127179 = phi ptr [ %i.ck, %bb.o ], [ %.0127178, %.loopexit ] ; 2 uses
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !394
  %i.fi = and i64 %i.fh, 255
  %i.fj = shl nuw i64 1, %i.fi
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.ab
  %.0.in = phi i64 [ %i.fj, %._crit_edge ], [ %.0, %bb.ab ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0127179, i64 %.0
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37  ; 3 uses
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.ab, label %bb.ac, !llvm.loop !1256

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %0, align 8, !tbaa !398
  %i.fo = shl nsw i64 %.0, 7
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %i.fo ; 2 uses
  %i.fq = zext nneg i8 %i.fl to i64
  %i.fr = add nsw i64 %i.fq, -1                   ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = getelementptr i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %i.fv = icmp ne ptr %i.fp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  %i.fw = icmp ult i8 %i.fl, 17
  call void @llvm.assume(i1 %i.fw)
  %i.fx = lshr i64 %i.fr, 1
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = or i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !39
  br i1 %.not, label %bb.ad, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %.0127179, i64 noundef %4) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %.0127178, i64 noundef %4) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83: ; preds = %bb.ae, %bb.w, %bb.n
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.n ], [ %i.du, %bb.w ], [ %i.du, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %.pn66.pn.pn.pn

bb.af:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !85
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !39
  %.not.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %i.c, align 8, !tbaa !426 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gd = load i64, ptr %i.e, align 8, !tbaa !39
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gd) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !69
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !69
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !428, !range !51, !noundef !52
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1263, !nonnull !52
  %i.e = load i8, ptr %i.d, align 1, !tbaa !85, !range !51, !noundef !52
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1264, !nonnull !52, !align !71
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1265, !nonnull !52, !align !71
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !426
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1266, !nonnull !52, !align !71
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1267 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1268, !nonnull !52, !align !71
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1269, !nonnull !52, !align !71
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1265, !nonnull !52, !align !71
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !426
  store ptr %i.z, ptr %i.q, align 8, !tbaa !398
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1270, !nonnull !52, !align !71
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !394
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !394
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #29

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #14

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #30 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4)
  tail call void @__cxa_rethrow() #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.48) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit: ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.f = load i8, ptr %i.e, align 2, !tbaa !422
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  %i.g = shl i64 %4, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !394
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1                   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !398    ; 4 uses
  %i.n = and i64 %3, %i.l
  %i.o = shl nuw nsw i64 %i.n, 7                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.c
  %.010.lcssa = phi i8 [ 0, %bb.c ], [ -16, %bb.e ]
  %i.r = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 14 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !422
  %i.v = add i8 %i.u, %.010.lcssa
  store i8 %i.v, ptr %i.t, align 2, !tbaa !422
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.w = phi i64 [ %i.ad, %bb.e ], [ %i.o, %bb.c ]
  %.01126 = phi i64 [ %i.ab, %bb.e ], [ %3, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !421   ; 2 uses
  %.not.i17 = icmp eq i8 %i.z, -2
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i8 %i.z, -1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !421
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ab = add i64 %i.h, %.01126                   ; 2 uses
  %i.ac = and i64 %i.ab, %i.l
  %i.ad = shl nuw nsw i64 %i.ac, 7                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4json12_GLOBAL__N_116make_parse_errorEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  br i1 %i.g, label %._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  store i8 39, ptr %i.d, align 1, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !43, !alias.scope !1275
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !45, !alias.scope !1275
  store i8 0, ptr %i.h, align 8, !tbaa !37, !alias.scope !1275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !1275
  store ptr %5, ptr %i.b, align 8, !tbaa !54, !noalias !1275
  %i.j = add i64 %i.f, 9                          ; 3 uses
  %.not.i = icmp ugt i64 %i.j, 15
  br i1 %.not.i, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
          to label %.noexc37 unwind label %bb.h

.noexc37:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.0.i = call i64 @llvm.umax.i64(i64 %i.j, i64 30) ; 2 uses
  %i.l = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !122

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc38 unwind label %bb.h

.noexc38:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.d
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
          to label %.noexc39 unwind label %bb.h   ; 3 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.o = load ptr, ptr %5, align 8, !tbaa !61     ; 4 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.f:                                             ; preds = %.noexc39
  %i.r = load i8, ptr %i.o, align 1, !tbaa !37
  store i8 %i.r, ptr %i.n, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %.noexc39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %.noexc39
  %i.s = icmp eq ptr %i.o, %i.h
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.t = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.t)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i
  store ptr %i.n, ptr %5, align 8, !tbaa !61
  store i64 %.0.i, ptr %i.h, align 8, !tbaa !37
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcPSC_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(8) @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA8_cS6_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.e, %bb.c, %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !1275
  %i.x = load ptr, ptr %5, align 8, !tbaa !61, !alias.scope !1275 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.h, align 8, !tbaa !37, !alias.scope !1275
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %.critedge17
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.critedge17 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA8_cS6_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !1275
  br label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !45
  store i8 0, ptr %i.ab, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA8_cS6_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !43, !alias.scope !1276
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !45, !alias.scope !1276
  store i8 0, ptr %i.ad, align 8, !tbaa !37, !alias.scope !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !1276
  store ptr %4, ptr %i.a, align 8, !tbaa !54, !noalias !1276
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41, label %bb.j, !prof !122

bb.j:                                             ; preds = %bb.i
  %i.af = zext i32 %1 to i64                      ; 2 uses
  %i.ag = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ah = sub nuw nsw i64 64, %i.ag
  %i.ai = mul nuw nsw i64 %i.ah, 39
  %i.aj = lshr i64 %i.ai, 7                       ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39, !noalias !1276
  %i.am = icmp ule i64 %i.al, %i.af
  %i.an = zext i1 %i.am to i64
  %i.ao = add nuw nsw i64 %i.aj, 29
  %i.ap = add nuw nsw i64 %i.ao, %i.an
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.j ], [ 30, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45, !noalias !1276
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45, !noalias !1276
  %i.au = add i64 %i.ar, %.0.i.i.i.i.i.i.i.i
  %i.av = add i64 %i.au, %i.at                    ; 3 uses
  %.not.i42 = icmp ugt i64 %i.av, 15
  br i1 %.not.i42, label %bb.k, label %.noexc.i24

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
          to label %.noexc51 unwind label %bb.q

.noexc51:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %.0.i44 = call i64 @llvm.umax.i64(i64 %i.av, i64 30) ; 2 uses
  %i.ax = add nuw i64 %.0.i44, 1                  ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i45, !prof !122

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc52 unwind label %bb.q

.noexc52:                                         ; preds = %bb.n
  unreachable
end_hunk_3
begin_hunk_4_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcPSC_EEEvDpRKT_:bb.a
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit
  %i.an = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14 ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.n, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13, %bb.n
  %i.aq = phi ptr [ %.pre.i.i.i, %bb.n ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 %i.ah, ptr %i.ar, align 1, !tbaa !37
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !45
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4json11parse_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA11_cccPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(11) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !54     ; 13 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %0) #34 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %0, align 1, !tbaa !37
  store i8 %i.o, ptr %i.n, align 1, !tbaa !37
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 dereferenceable(11) %0, i64 %i.b, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(11) %0, i64 noundef %i.b)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !37
  %i.r = load i8, ptr %1, align 1, !tbaa !37
  %i.s = load i64, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.w = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.x = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i14 ]
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.h, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.s, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13, %bb.h
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i13 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !37
  store i64 %i.t, ptr %i.c, align 8, !tbaa !45
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.t
  store i8 0, ptr %i.ad, align 1, !tbaa !37
  %i.ae = load i8, ptr %2, align 1, !tbaa !37
  %i.af = load i64, ptr %i.c, align 8, !tbaa !45  ; 4 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.i
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  %i.aj = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i18 ]
  %i.am = icmp ugt i64 %i.ag, %i.al
  br i1 %i.am, label %bb.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit19

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.af, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i17 = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit19

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvcPT_.exit19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16, %bb.i
  %i.an = phi ptr [ %.pre.i.i.i17, %bb.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 %i.ae, ptr %i.ao, align 1, !tbaa !37
  store i64 %i.ag, ptr %i.c, align 8, !tbaa !45
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ag
  store i8 0, ptr %i.aq, align 1, !tbaa !37
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSH_IKS4_S4_EEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.am, %bb.e ] ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !394
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1
  %i.m = and i64 %.026.i81, %i.l
  %i.n = load ptr, ptr %1, align 8, !tbaa !398
  %i.o = shl nuw nsw i64 %i.m, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = load <16 x i8>, ptr %i.p, align 16       ; 2 uses
  %i.s = icmp eq <16 x i8> %i.r, %i.g
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i32 %i.u, 16383
  %.not71 = icmp eq i32 %i.v, 0
  %i.w = extractelement <16 x i8> %i.r, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.x = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ah, %.critedge.i ], [ %i.u, %.preheader ] ; 4 uses
  %i.y = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
  br i1 %i.af, label %bb.f, label %.critedge.i, !prof !82

.critedge.i:                                      ; preds = %bb.d
  %i.ag = add nsw i32 %.sroa.044.0, -1
  %i.ah = and i32 %i.ag, %.sroa.044.0             ; 2 uses
  %i.ai = and i32 %i.ah, 16382
  %.not72 = icmp eq i32 %i.ai, 0
  br i1 %.not72, label %.loopexit.loopexit, label %bb.d, !llvm.loop !1282

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !421
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.aj = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.w, %bb.c ]
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.thread69.loopexit, label %bb.e, !prof !82

bb.e:                                             ; preds = %.loopexit
  %i.al = add i64 %.024.i82, -1                   ; 2 uses
  %i.am = add i64 %i.d, %.026.i81
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.thread69.loopexit, label %bb.c, !llvm.loop !1283

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  br label %bb.n

.thread69.loopexit:                               ; preds = %.loopexit, %bb.e
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !394
  br label %.thread69

.thread69:                                        ; preds = %.thread69.loopexit, %bb.a
  %i.ao = phi i64 [ %.pre89, %.thread69.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ap = lshr i64 %i.ao, 8                       ; 2 uses
  %i.aq = and i64 %i.ao, 255                      ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !398   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = and i8 %i.at, 15
  %i.av = zext nneg i8 %i.au to i64               ; 2 uses
  %i.aw = shl i64 %i.av, %i.aq                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.ap, %i.aw
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ax = shl nuw i64 1, %i.aq
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ap, i64 noundef %i.ax, i64 noundef %i.av, i64 noundef %i.aw)
  %.pre90 = load i64, ptr %i.a, align 8, !tbaa !394
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !398
  %.pre92 = and i64 %.pre90, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %i.aq, %.thread69 ], [ %.pre92, %bb.g ]
  %i.ay = phi ptr [ %i.ar, %.thread69 ], [ %.pre91, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.az = xor i64 %notmask.i33, -1                ; 2 uses
  %i.ba = and i64 %2, %i.az
  %i.bb = shl nuw nsw i64 %i.ba, 7                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16, !tbaa !37
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bg, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bh = shl i64 %3, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bj = phi i64 [ %i.bb, %bb.h ], [ %i.bq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !421 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bm, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !421
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bo = add i64 %i.bi, %.030                    ; 2 uses
  %i.bp = and i64 %i.bo, %i.az
  %i.bq = shl nuw nsw i64 %i.bp, 7                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq
  %i.bs = load <16 x i8>, ptr %i.br, align 16     ; 2 uses
  %i.bt = icmp eq <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = and i16 %i.bu, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bv, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !1284

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq ; 2 uses
  %i.bx = extractelement <16 x i8> %i.bs, i64 14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.bz = add i8 %i.bx, 16
  store i8 %i.bz, ptr %i.by, align 2, !tbaa !422
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bv, %bb.k ]
  %.1 = phi ptr [ %i.bc, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !37
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.48) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.cf = trunc i64 %3 to i8
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !37
  %i.cg = shl nuw nsw i64 %i.cb, 3
  %i.ch = getelementptr i8, ptr %.1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 3 uses
  %i.cj = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.ci, i64 %i.cb, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink109 = phi ptr [ %i.an, %bb.f ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa104.sink = phi i64 [ %i.aa, %bb.f ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !416
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !425
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 3 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !96
  %i.b = load i64, ptr %6, align 8, !tbaa !102
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %7, align 8, !tbaa !102
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e) #34
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #34 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.c, !inline_history !24

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !90
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.q, ptr %i.r, align 8, !tbaa !39
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESH_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESK_ImmEDpOT_EUlvE_PFvPSA_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !394  ; 2 uses
  %i.w = and i64 %i.v, -256
  %i.x = add i64 %i.w, 256
  %i.y = and i64 %i.v, 255
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %i.u, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA16_ciA11_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(11) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %0, ptr %i.a, align 8, !tbaa !54
  %i.d = load i32, ptr %2, align 4, !tbaa !76     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA16_ciJA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i, label %bb.b, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.d, i1 false)
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = mul nuw nsw i64 %i.h, 39
  %i.j = lshr i64 %i.i, 7                         ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = icmp ule i64 %i.l, %i.f
  %i.n = zext i1 %i.m to i64
  %i.o = add nuw nsw i64 %i.j, %i.n
  br label %_ZN5folly6detail15reserveInTargetIA16_ciJA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i

_ZN5folly6detail15reserveInTargetIA16_ciJA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i = lshr i32 %i.d, 31
  %narrow.i.i = add nuw nsw i32 %.lobit.i.i.i.i, 27
  %i.p = zext nneg i32 %narrow.i.i to i64
  %i.q = add nuw nsw i64 %.0.i.i.i.i.i.i.i, %i.p
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN5folly6detail15reserveInTargetIA16_ciJA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA16_ciA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJA16_ciA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit unwind label %bb.c

_ZN5folly11toAppendFitIJA16_ciA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

bb.c:                                             ; preds = %.noexc, %_ZN5folly6detail15reserveInTargetIA16_ciJA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.s = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.b, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i16 @_ZZN5folly4json12_GLOBAL__N_119decodeUnicodeEscapeINS1_14DefaultOptsPtrEEEvRNS1_5InputIT_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlvE_clEv(ptr nofree captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #6 align 2 {
bb.a:
  %.val7 = load ptr, ptr %.0.val, align 8, !tbaa !400 ; 5 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !401 ; 5 uses
  %i.b = ptrtoint ptr %.val8 to i64
  %i.c = ptrtoint ptr %.val7 to i64
  %i.d = sub i64 %i.b, %i.c
end_hunk_4
