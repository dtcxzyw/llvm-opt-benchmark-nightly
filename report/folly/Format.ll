Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Format?download=true
inline.NumInlined: 2530
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3fmt2v96detail6bigint13divmod_assignERKS2_:bb.a
  %i.ek = phi i32 [ %.promoted.i, %.lr.ph27.i ], [ %i.en, %bb.i ]
  %.126.i = phi i64 [ 1, %.lr.ph27.i ], [ %i.eo, %bb.i ]
  %i.el = zext i32 %i.ek to i64
  %i.em = sub nsw i64 %i.el, %.126.i              ; 3 uses
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = lshr i64 %i.em, 63
  %.not13.i = icmp sgt i64 %i.em, -1
  br i1 %.not13.i, label %._crit_edge.i15, label %bb.i, !llvm.loop !532

._crit_edge.i15:                                  ; preds = %bb.i
  store i32 %i.en, ptr %i.dj, align 4, !tbaa !78
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
  br i1 %i.eu, label %bb.k, label %.critedge.i.i, !llvm.loop !27

bb.k:                                             ; preds = %.lr.ph102, %bb.j
  %i.ev = phi i32 [ %i.eq, %.lr.ph102 ], [ %i.et, %bb.j ]
  %indvars.iv.i14.i101 = phi i64 [ %i.es, %.lr.ph102 ], [ %i.ew, %bb.j ]
  %i.ew = add nsw i64 %indvars.iv.i14.i101, -1    ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !78
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.j, label %..critedge.i.i_crit_edge, !llvm.loop !27

..critedge.i.i_crit_edge:                         ; preds = %bb.k
  br label %.critedge.i.i, !llvm.loop !27

.critedge.i.i:                                    ; preds = %bb.j, %..critedge.i.i_crit_edge, %.preheader.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %.preheader.thread.i ], [ %i.ev, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.j ]
  %i.fa = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.fb = load i64, ptr %i.cm, align 8, !tbaa !248 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.l, label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.fd = load ptr, ptr %0, align 8, !tbaa !73
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.fa), !call_target !259, !inline_history !533
  %.pre.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !248
  br label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.l
  %i.ff = phi i64 [ %i.fb, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.l ]
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ff) ; 5 uses
  store i64 %..i.i.i.i, ptr %i.a, align 8, !tbaa !253
  %i.fg = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.fh = trunc nuw i64 %..i.i.i.i to i32         ; 3 uses
  %i.fi = load i32, ptr %i.d, align 8, !tbaa !252 ; 2 uses
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = load i64, ptr %i.g, align 8, !tbaa !253 ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 4 uses
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !252
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
  br i1 %.not35.not.i21, label %.lr.ph110, label %._crit_edge111, !llvm.loop !25

.lr.ph110:                                        ; preds = %bb.n, %bb.o
  %.0.in.i20108 = phi i32 [ %.0.i23, %bb.o ], [ %i.fl, %bb.n ]
  %indvars.iv.i19107 = phi i64 [ %i.fu, %bb.o ], [ %..i.i.i.i, %bb.n ]
  %i.fu = add nsw i64 %indvars.iv.i19107, -1      ; 3 uses
  %.0.i23 = add nsw i32 %.0.in.i20108, -1         ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !78 ; 2 uses
  %i.fx = zext i32 %.0.i23 to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !78 ; 2 uses
  %.not37.i24 = icmp eq i32 %i.fw, %i.fz
  br i1 %.not37.i24, label %bb.o, label %.loopexit.i25, !llvm.loop !25

._crit_edge111:                                   ; preds = %bb.o, %bb.n
  %.0.in.i20.lcssa = phi i32 [ %i.fl, %bb.n ], [ %.0.i23, %bb.o ]
  %or.cond.not48 = icmp sgt i32 %.0.in.i20.lcssa, %smin62
  br i1 %or.cond.not48, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge

.loopexit.i25:                                    ; preds = %.lr.ph110
  %i.ga = icmp ugt i32 %i.fw, %i.fz
  br i1 %i.ga, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge: ; preds = %.loopexit.i25, %bb.m, %._crit_edge111
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26, !llvm.loop !534

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge111, %.loopexit.i25, %bb.m, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.fg, %bb.m ], [ %i.fg, %.loopexit.i25 ], [ %i.fg, %._crit_edge111 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !248  ; 3 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247  ; 4 uses
  %i.j = icmp ugt i64 %.0, 2305843009213693951
  br i1 %i.j, label %bb.d, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit, !prof !201

bb.d:                                             ; preds = %.thread, %bb.c
  %.027 = phi i64 [ %i.g, %.thread ], [ %.0, %bb.c ]
  %i.k = icmp ugt i64 %.027, 4611686018427387903
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit:     ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.0, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !253  ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !55

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %bb.i, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.i, align 4, !tbaa !78
  store i32 %i.r, ptr %i.m, align 4, !tbaa !78
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.g, %bb.h, %bb.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !247
  store i64 %.0, ptr %i.a, align 8, !tbaa !248
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
define linkonce_odr void @_ZN3fmt2v96detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::basic_memory_buffer.45", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253  ; 11 uses
  %i.c = trunc i64 %i.b to i32                    ; 9 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !248  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !247
  store i64 %i.j, ptr %i.f, align 8, !tbaa !248
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k, i64 %.idx.i.i, i1 false), !tbaa !78
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.e, align 8, !tbaa !247
  store i64 %i.j, ptr %i.f, align 8, !tbaa !248
  store ptr %i.k, ptr %i.g, align 8, !tbaa !247
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.h, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi i64 [ %i.j, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.j, %bb.b ]
  %i.p = icmp ugt i64 %i.b, %i.j
  br i1 %i.p, label %bb.d, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

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
  br i1 %i.v, label %bb.g, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !201

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.027.i = phi i64 [ %i.u, %.thread.i ], [ %.0.i, %bb.f ]
  %i.w = icmp ugt i64 %.027.i, 4611686018427387903
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc110 unwind label %bb.n

.noexc110:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc111 unwind label %bb.n

.noexc111:                                        ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.0.i, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #37
          to label %.noexc112 unwind label %bb.n  ; 3 uses

.noexc112:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !253 ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !55

bb.j:                                             ; preds = %.noexc112
  %.idx.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %.noexc112
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !78
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !78
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store ptr %i.y, ptr %i.e, align 8, !tbaa !247
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !248
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.n, %i.ae
  br i1 %.not.i, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.af = shl i64 %i.j, 2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.af) #35
  %.pre.i.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !248
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.m ], [ %.0.i, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i ]
  %.pre = load i64, ptr %i.i, align 8, !tbaa !248
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.i, %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit: ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, %.noexc.i
  %i.ai = phi i64 [ %i.o, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.aj = phi i64 [ %i.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.b, i64 %i.aj)
  store i64 %..i.i.i.i, ptr %i.ak, align 8, !tbaa !253
  %i.al = zext i32 %i.d to i64                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.o, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

bb.o:                                             ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !73
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.al)
          to label %.noexc unwind label %bb.p, !inline_history !536

.noexc:                                           ; preds = %bb.o
  %.pre.i.i45 = load i64, ptr %i.i, align 8, !tbaa !248
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit: ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit, %.noexc
  %i.ap = phi i64 [ %i.ai, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit ], [ %.pre.i.i45, %.noexc ] ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ap) ; 4 uses
  store i64 %..i.i, ptr %i.a, align 8, !tbaa !253
  %i.aq = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.aq, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !247 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.r
  %indvars.iv74 = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.ce, %bb.r ] ; 2 uses
  %xtraiter = and i64 %indvars.iv74, 1
  %i.as = icmp eq i64 %indvars.iv, 0
  br i1 %i.as, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv74, 9223372036854775806
  br label %bb.q

.preheader.loopexit:                              ; preds = %bb.r
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
  br label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %bb.q, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.q ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.q ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bs, %bb.q ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.q ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !78
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !78
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.be, %i.bb
  %i.bg = zext i64 %i.bf to i128
  %i.bh = add i128 %.150, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !78
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !78
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw i64 %i.bp, %i.bl
  %i.br = zext i64 %i.bq to i128
  %i.bs = add i128 %i.bh, %i.br                   ; 3 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.q, !llvm.loop !537

.unr-lcssa:                                       ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.r, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49
  %indvars.iv67.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next68.1, %.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ %indvars.iv, %.preheader49 ], [ %indvars.iv.next66.1, %.unr-lcssa ]
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv74 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !78
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !78
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw i64 %i.by, %i.bv
  %i.ca = zext i64 %i.bz to i128
  %i.cb = add i128 %.150.epil.init, %i.ca
  br label %bb.r

bb.r:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.bs, %.unr-lcssa ], [ %i.cb, %.epil.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  %i.cd = trunc i128 %.lcssa147 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !78
  %i.ce = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !538

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

bb.s:                                             ; preds = %.lr.ph142
  %i.cj = trunc nuw i64 %i.cm to i32              ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph142, label %.critedge.i, !llvm.loop !27

.lr.ph142:                                        ; preds = %._crit_edge62, %bb.s
  %i.cl = phi i32 [ %i.cj, %bb.s ], [ %i.ch, %._crit_edge62 ]
  %indvars.iv.i141 = phi i64 [ %i.cm, %bb.s ], [ %..i.i, %._crit_edge62 ]
  %i.cm = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !78
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.s, label %..critedge.i_crit_edge, !llvm.loop !27

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !27

.critedge.i:                                      ; preds = %bb.s, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cl, %..critedge.i_crit_edge ], [ %smin.i, %bb.s ]
  %i.cq = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cr = icmp ult i64 %i.ap, %i.cq
  br i1 %i.cr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.critedge.i
  %i.cs = load ptr, ptr %0, align 8, !tbaa !73
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cq)
          to label %.noexc46 unwind label %bb.x, !inline_history !539

.noexc46:                                         ; preds = %bb.t
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !248
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ %2, %.lr.ph61 ], [ %indvars.iv.next92, %._crit_edge ] ; 3 uses
  %.03360 = phi i32 [ 1, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.ed, %._crit_edge ] ; 3 uses
  %3 = trunc nuw i64 %indvars.iv91 to i32
  %.reass.reass = add i32 %3, %invariant.op
  %i.cu = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.cv = sext i32 %.03360 to i64                 ; 3 uses
  %i.cw = sub i32 %indvar, %i.c
  %i.cx = and i32 %i.cw, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.cx, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next84.prol = add nsw i64 %i.cv, 1
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !78
  %i.da = zext i32 %i.cz to i64
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !78
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
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !78
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv85.in
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !78
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.dj
  %i.dp = zext i64 %i.do to i128
  %i.dq = add i128 %.355, %i.dp
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !78
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !78
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul nuw i64 %i.dx, %i.du
  %i.dz = zext i64 %i.dy to i128
  %i.ea = add i128 %i.dq, %i.dz                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next84.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !540

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.u
  %.3.lcssa = phi i128 [ %.259, %bb.u ], [ %.lcssa146.unr, %.lr.ph.prol.loopexit ], [ %i.ea, %.lr.ph ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre93, i64 %indvars.iv91
  %i.ec = trunc i128 %.3.lcssa to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !78
  %i.ed = lshr i128 %.3.lcssa, 32
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %indvars.iv.next82 = add i32 %.03360, 1
  %exitcond91.not = icmp eq i32 %.03360, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge62.loopexit, label %bb.u, !llvm.loop !541

bb.v:                                             ; preds = %.noexc46, %.critedge.i
  %i.ee = phi i64 [ %i.ap, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.ee)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !253
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !252
  %i.eh = shl nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !252
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !247 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !248
  %i.el = shl i64 %i.ek, 2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.x:                                             ; preds = %bb.t
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %i.em, %bb.x ]
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !247 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = load i64, ptr %i.f, align 8, !tbaa !248
  %i.eq = shl i64 %i.ep, 2
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt2v912format_errorE, i64 16), ptr %0, align 8, !tbaa !73
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN3fmt2v912format_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::detail::float_specs", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.58, align 8             ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %8 = alloca %class.anon.60, align 8             ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %10 = alloca %class.anon.61, align 8            ; 12 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %11 = alloca %class.anon.62, align 8            ; 10 uses
  %.fr140 = freeze i64 %3                         ; 4 uses
  store i64 %.fr140, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = load ptr, ptr %1, align 8, !tbaa !241    ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !242  ; 9 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 48, ptr %i.c, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.n = lshr i64 %.fr140, 32                     ; 2 uses
  %i.o = trunc nuw i64 %i.n to i32                ; 7 uses
  %i.p = lshr i64 %.fr140, 40
  %i.q = trunc i64 %i.p to i8                     ; 3 uses
  store i8 %i.q, ptr %i.d, align 1, !tbaa !207
  %.not = icmp ne i8 %i.q, 0
  %i.r = zext i1 %.not to i32
  %i.s = add i32 %i.m, %i.r
  %i.t = zext i32 %i.s to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.u = and i32 %i.o, 131072                     ; 3 uses
  %.not65 = icmp eq i32 %i.u, 0
  %i.v = trunc i64 %.fr140 to i32                 ; 7 uses
  br i1 %.not65, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef signext i8 @_ZN3fmt2v96detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi i8 [ %i.w, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.x, ptr %i.e, align 1, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !243  ; 3 uses
  %i.aa = add nsw i32 %i.m, %i.z                  ; 10 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = trunc i64 %i.n to i8
  switch i8 %i.ac, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread115 [
    i8 1, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 0, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  ]

_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.c
  %i.ad = icmp slt i32 %i.aa, -3
  %i.ae = icmp sgt i32 %i.v, 0
  %spec.select.i = select i1 %i.ae, i32 %i.v, i32 16
  %i.af = icmp sgt i32 %i.aa, %spec.select.i
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread115

_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.c, %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  %i.ah = and i32 %i.o, 524288
  %.not73 = icmp eq i32 %i.ah, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ai = sub nsw i32 %i.v, %i.m
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0) ; 2 uses
  %i.aj = zext nneg i32 %spec.store.select to i64
  %i.ak = add nuw nsw i64 %i.aj, %i.t
  br label %bb.g

bb.e:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.al = icmp eq i32 %i.m, 1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 1, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.am = phi i8 [ %i.x, %bb.d ], [ 0, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.054 = phi i32 [ %spec.store.select, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.0 = phi i64 [ %i.ak, %bb.d ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  %i.an = and i32 %i.o, 65536
  %.not75 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not75, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 %i.q, ptr %6, align 8, !tbaa !313
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ap, align 8, !tbaa !314
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.m, ptr %i.aq, align 8, !tbaa !315
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.am, ptr %i.ar, align 4, !tbaa !316
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.054, ptr %i.as, align 8, !tbaa !317
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 48, ptr %i.at, align 4, !tbaa !542
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !318
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.ab, ptr %i.av, align 8, !tbaa !319
  %i.aw = load i32, ptr %2, align 4, !tbaa !174   ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not74.not = icmp eq i8 %i.am, 0
  %i.ay = select i1 %.not74.not, i64 2, i64 3
  %i.az = icmp slt i32 %i.aa, 1
  %i.ba = sub nsw i32 1, %i.aa
  %i.bb = select i1 %i.az, i32 %i.ba, i32 %i.ab   ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 99
  %i.bd = icmp sgt i32 %i.bb, 999
  %i.be = select i1 %i.bd, i64 4, i64 3
  %.060 = select i1 %i.bc, i64 %i.be, i64 2
  %i.bf = add nuw nsw i64 %.0, %.060
  %i.bg = add nuw nsw i64 %i.bf, %i.ay
  %i.bh = zext nneg i32 %i.aw to i64
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 %i.bg) ; 3 uses
end_hunk_0
