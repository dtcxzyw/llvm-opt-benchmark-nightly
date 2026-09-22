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
          to label %.noexc113 unwind label %bb.n

.noexc113:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc114 unwind label %bb.n

.noexc114:                                        ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.0.i, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38
          to label %.noexc115 unwind label %bb.n  ; 3 uses

.noexc115:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !321 ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !82

bb.j:                                             ; preds = %.noexc115
  %.idx.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %.noexc115
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
  %.pre96.pre97 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.aq, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !315 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.s
  %indvars.iv74 = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.s ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 5 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.cf, %bb.s ] ; 2 uses
  %xtraiter = and i64 %indvars.iv74, 1
  %i.as = icmp eq i64 %indvars.iv, 0
  br i1 %i.as, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv74, 9223372036854775806
  br label %bb.r

.preheader.loopexit:                              ; preds = %bb.s
  %.pre96.pre = load ptr, ptr %i.g, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %.pre96 = phi ptr [ %.pre96.pre97, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %.pre96.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %i.cf, %.preheader.loopexit ]
  %i.at = icmp sgt i32 %i.d, %i.c
  br i1 %i.at, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.au = load ptr, ptr %i.e, align 8             ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  %i.aw = and i64 %i.b, 4294967295
  %i.ax = add i32 %i.c, -2
  %invariant.op = sub i32 1, %i.c
  %indvars.iv85.prol = add nsw i64 %i.av, -1      ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.prol
  br label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %bb.r, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.r ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.r ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bt, %bb.r ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.r ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !76
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !76
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw i64 %i.bf, %i.bc
  %i.bh = zext i64 %i.bg to i128
  %i.bi = add i128 %.150, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !76
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.bq = zext i32 %i.bp to i64
  %i.br = mul nuw i64 %i.bq, %i.bm
  %i.bs = zext i64 %i.br to i128
  %i.bt = add i128 %i.bi, %i.bs                   ; 3 uses
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
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bt, %.unr-lcssa ]
  %lcmp.mod153 = trunc i64 %indvars.iv74 to i1
  call void @llvm.assume(i1 %lcmp.mod153)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !76
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65.epil.init
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !76
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bw
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add i128 %.150.epil.init, %i.cb
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa150 = phi i128 [ %i.bt, %.unr-lcssa ], [ %i.cc, %.epil.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.pre96.pre97, i64 %indvars.iv
  %i.ce = trunc i128 %.lcssa150 to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !76
  %i.cf = lshr i128 %.lcssa150, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !971

._crit_edge62.loopexit:                           ; preds = %._crit_edge
  %.pre95 = load ptr, ptr %i.g, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader
  %i.cg = phi ptr [ %.pre95, %._crit_edge62.loopexit ], [ %.pre96, %.preheader ]
  %i.ch = trunc nuw i64 %..i.i to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ch, i32 1) ; 2 uses
  %i.ci = trunc nuw i64 %..i.i to i32             ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %.lr.ph145, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph145
  %i.ck = trunc nuw i64 %i.cn to i32              ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph145, label %.critedge.i, !llvm.loop !18

.lr.ph145:                                        ; preds = %._crit_edge62, %bb.t
  %i.cm = phi i32 [ %i.ck, %bb.t ], [ %i.ci, %._crit_edge62 ]
  %indvars.iv.i144 = phi i64 [ %i.cn, %bb.t ], [ %..i.i, %._crit_edge62 ]
  %i.cn = add nsw i64 %indvars.iv.i144, -1        ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !76
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %..critedge.i_crit_edge, !llvm.loop !18

..critedge.i_crit_edge:                           ; preds = %.lr.ph145
  br label %.critedge.i, !llvm.loop !18

.critedge.i:                                      ; preds = %bb.t, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cm, %..critedge.i_crit_edge ], [ %smin.i, %bb.t ]
  %i.cr = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cs = icmp ult i64 %i.ap, %i.cr
  br i1 %i.cs, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.critedge.i
  %i.ct = load ptr, ptr %0, align 8, !tbaa !69
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cr)
          to label %.noexc46 unwind label %bb.y, !inline_history !972

.noexc46:                                         ; preds = %bb.u
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !316
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.aw, %.lr.ph61 ], [ %indvars.iv.next92, %._crit_edge ] ; 3 uses
  %indvars.iv81 = phi i32 [ 1, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.ef, %._crit_edge ] ; 3 uses
  %i.cv = trunc nuw i64 %indvars.iv91 to i32
  %.reass.reass = add i32 %i.cv, %invariant.op
  %i.cw = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.cx = sext i32 %indvars.iv81 to i64           ; 3 uses
  %i.cy = sub i32 %indvar, %i.c
  %i.cz = and i32 %i.cy, 1
  %lcmp.mod155.not.not = icmp eq i32 %i.cz, 0
  br i1 %lcmp.mod155.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next84.prol = add nsw i64 %i.cx, 1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cx
  %i.db = load i32, ptr %i.da, align 4, !tbaa !76
  %i.dc = zext i32 %i.db to i64
  %i.dd = load i32, ptr %i.ay, align 4, !tbaa !76
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw i64 %i.de, %i.dc
  %i.dg = zext i64 %i.df to i128
  %i.dh = add nsw i128 %.259, %i.dg               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa149.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.dh, %.lr.ph.prol ]
  %indvars.iv85.in.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv85.prol, %.lr.ph.prol ]
  %indvars.iv83.unr = phi i64 [ %i.cx, %.lr.ph.preheader ], [ %indvars.iv.next84.prol, %.lr.ph.prol ]
  %.355.unr = phi i128 [ %.259, %.lr.ph.preheader ], [ %i.dh, %.lr.ph.prol ]
  %i.di = icmp eq i32 %i.ax, %indvar
  br i1 %i.di, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85.in = phi i64 [ %indvars.iv85.1, %.lr.ph ], [ %indvars.iv85.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph ], [ %indvars.iv83.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.355 = phi i128 [ %i.ec, %.lr.ph ], [ %.355.unr, %.lr.ph.prol.loopexit ]
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv85.in
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !76
  %i.dp = zext i32 %i.do to i64
  %i.dq = mul nuw i64 %i.dp, %i.dl
  %i.dr = zext i64 %i.dq to i128
  %i.ds = add i128 %.355, %i.dr
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !76
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !76
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.dw
  %i.eb = zext i64 %i.ea to i128
  %i.ec = add i128 %i.ds, %i.eb                   ; 2 uses
  %lftr.wideiv121.1 = trunc i64 %indvars.iv.next84.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv121.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !973

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.v
  %.3.lcssa = phi i128 [ %.259, %bb.v ], [ %.lcssa149.unr, %.lr.ph.prol.loopexit ], [ %i.ec, %.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre96, i64 %indvars.iv91
  %i.ee = trunc i128 %.3.lcssa to i32
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !76
  %i.ef = lshr i128 %.3.lcssa, 32
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %indvars.iv.next82 = add i32 %indvars.iv81, 1
  %exitcond94.not = icmp eq i32 %indvars.iv81, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond94.not, label %._crit_edge62.loopexit, label %bb.v, !llvm.loop !974

bb.w:                                             ; preds = %.noexc46, %.critedge.i
  %i.eg = phi i64 [ %i.ap, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.eg)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !321
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !320
  %i.ej = shl nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !320
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = load i64, ptr %i.f, align 8, !tbaa !316
  %i.en = shl i64 %i.em, 2
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.y:                                             ; preds = %bb.u
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.eo, %bb.y ]
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = load i64, ptr %i.f, align 8, !tbaa !316
  %i.es = shl i64 %i.er, 2
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #35
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
end_hunk_0
