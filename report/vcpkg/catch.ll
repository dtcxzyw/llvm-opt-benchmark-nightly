Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/catch?download=true
inline.NumInlined: 17856
inline.NumDeleted: 5985
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5Catch14splitStringRefENS_9StringRefEc:bb.a
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #59
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.aa, align 8, !tbaa !165
  %.sroa.647.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.647.0..sroa_idx48, align 8, !tbaa !166
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.noexc20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !167, !alias.scope !1548
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc20 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.r) #57
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !342
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !344
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %i.af = phi ptr [ %i.d, %bb.e ], [ %i.ae, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.d, %bb.c ]
  %i.ag = phi ptr [ %i.o, %bb.e ], [ %i.ad, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.e, %bb.c ]
  %i.ah = phi ptr [ %i.f, %bb.e ], [ %i.z, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ]
  %i.ai = add nuw i64 %.01664, 1                  ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge71, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit
  %.pre-phi = phi i64 [ %.pre, %._crit_edge71 ], [ %i.ai, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.d, %._crit_edge71 ], [ %i.af, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.ak = phi ptr [ %i.e, %._crit_edge71 ], [ %i.ag, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.al = phi ptr [ %i.f, %._crit_edge71 ], [ %i.ah, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %.1 = phi i64 [ %.01763, %._crit_edge71 ], [ %i.ai, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1544

bb.j:                                             ; preds = %._crit_edge
  %i.am = sub nuw i64 %2, %.1                     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i26 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !165
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !166
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !342
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775792
  br i1 %i.au, label %bb.m, label %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i27

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
          to label %.noexc39 unwind label %bb.o

.noexc39:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i27: ; preds = %bb.l
  %i.av = ashr exact i64 %i.at, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i28, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i29 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i29)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #59
          to label %.noexc40 unwind label %bb.o   ; 5 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 2 uses
  store ptr %i.an, ptr %i.bc, align 8, !tbaa !165
  %.sroa.6.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx43, align 8, !tbaa !166
  %.not10.i.i.i.i.i.i30 = icmp eq ptr %i.al, %i.aj
  br i1 %.not10.i.i.i.i.i.i30, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i35, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %.noexc40, %.lr.ph.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i32 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i31 ], [ %i.bb, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i.i33 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i31 ], [ %i.al, %.noexc40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i33, i64 16, i1 false), !tbaa.struct !167, !alias.scope !1549
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i33, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.bd, %i.aj
  br i1 %.not.i.i.i.i.i.i34, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i35, label %.lr.ph.i.i.i.i.i.i31, !llvm.loop !15

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i31, %.noexc40
  %.0.lcssa.i.i.i.i.i.i36 = phi ptr [ %i.bb, %.noexc40 ], [ %i.be, %.lr.ph.i.i.i.i.i.i31 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i36, i64 16
  %.not.i23.i.i.i37 = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i37, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i38, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.at) #57
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i38

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i38: ; preds = %bb.n, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i35
  store ptr %i.bb, ptr %0, align 8, !tbaa !343
  store ptr %i.bf, ptr %i.ao, align 8, !tbaa !342
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !344
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit41

bb.o:                                             ; preds = %_ZNKSt6vectorIN5Catch9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i27, %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %i.bi = phi ptr [ %i.aj, %bb.o ], [ %i.d, %.loopexit ], [ %i.d, %.loopexit.split-lp ]
  %i.bj = phi ptr [ %i.al, %bb.o ], [ %i.f, %.loopexit ], [ %i.f, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #57
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit: ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn

_ZNSt6vectorIN5Catch9StringRefESaIS1_EE9push_backEOS1_.exit41: ; preds = %bb.a, %bb.k, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i38, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZN5Catch4trimENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.critedge2.thread42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01219 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.01219
  %i.b = load i8, ptr %i.a, align 1, !tbaa !141
  switch i8 %i.b, label %.critedge [
    i8 32, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.c = add nuw i64 %.01219, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.critedge2.thread42, label %.lr.ph, !llvm.loop !13

.critedge:                                        ; preds = %.lr.ph
  %i.d = icmp ugt i64 %1, %.01219
  br i1 %i.d, label %.lr.ph25, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge
  %i.e = sub i64 %1, %.01219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.01219
  %i.g = sub nuw i64 %1, %.01219
  %.sroa.speculated.i38 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.g)
  br label %.critedge2.thread42

.lr.ph25:                                         ; preds = %.critedge, %bb.c
  %.024 = phi i64 [ %i.h, %bb.c ], [ %1, %.critedge ] ; 2 uses
  %i.h = add i64 %.024, -1                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !141
  switch i8 %i.j, label %.critedge2 [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph25, %.lr.ph25, %.lr.ph25, %.lr.ph25
  %i.k = icmp ugt i64 %i.h, %.01219
  br i1 %i.k, label %.lr.ph25, label %.critedge2, !llvm.loop !14

.critedge2:                                       ; preds = %bb.c, %.lr.ph25
  %.0.lcssa = phi i64 [ %.024, %.lr.ph25 ], [ %.01219, %bb.c ]
  %i.l = sub i64 %.0.lcssa, %.01219
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.01219
  %i.n = sub nuw i64 %1, %.01219
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.n)
  br label %.critedge2.thread42

.critedge2.thread42:                              ; preds = %bb.b, %bb.a, %.critedge2, %.critedge2.thread
  %i.o = phi i64 [ %.sroa.speculated.i38, %.critedge2.thread ], [ %.sroa.speculated.i, %.critedge2 ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.p = phi ptr [ %i.f, %.critedge2.thread ], [ %i.m, %.critedge2 ], [ @.str.157, %bb.a ], [ @.str.157, %bb.b ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.p, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.o, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch6Detail8EnumInfoD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !348
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #57
  br label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK5Catch6Detail8EnumInfo6lookupEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1550 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1550 ; 2 uses
  %.not1318 = icmp eq ptr %i.b, %i.d
  br i1 %.not1318, label %.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.07.019 = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = load i32, ptr %.sroa.07.019, align 8, !tbaa !350
  %.not = icmp eq i32 %i.e, %1
  br i1 %.not, label %.split.loop.exit14, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.019, i64 24 ; 2 uses
  %.not13 = icmp eq ptr %i.f, %i.d
  br i1 %.not13, label %.split.loop.exit, label %.lr.ph

.split.loop.exit14:                               ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.019, i64 8
  %.sroa.0.0.copyload.le = load ptr, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %.sroa.07.019, i64 16
  %.sroa.3.0.copyload.le = load i64, ptr %.sroa.3.0..sroa_idx.le, align 8
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %bb.a, %.split.loop.exit14
  %.sroa.0.3 = phi ptr [ %.sroa.0.0.copyload.le, %.split.loop.exit14 ], [ @.str.111, %bb.a ], [ @.str.111, %bb.b ]
  %.sroa.3.3 = phi i64 [ %.sroa.3.0.copyload.le, %.split.loop.exit14 ], [ 29, %bb.a ], [ 29, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch6Detail12makeEnumInfoENS_9StringRefES1_RKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.67") align 8 initializes((0, 8)) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.55", align 8    ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #59 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !352
  store ptr %1, ptr %i.a, align 8, !tbaa !165
  store i64 %2, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1559 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !1560   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, 384307168202282325
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.381) #58
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.f, %i.g
  br i1 %.not41, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.o = mul nuw nsw i64 %i.k, 24
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59
          to label %.noexc16 unwind label %bb.f   ; 4 uses

.noexc16:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE11_M_allocateEm.exit.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !347  ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !1561 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc16, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %.noexc16 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !1562
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1554

_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc16
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !348
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #57
  br label %_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.p, ptr %i.d, align 8, !tbaa !347
  store ptr %i.p, ptr %i.n, align 8, !tbaa !1561
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.k
  store ptr %i.y, ptr %i.m, align 8, !tbaa !348
  br label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  invoke void @_ZN5Catch6Detail10parseEnumsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.55") align 8 %6, ptr %3, i64 %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE7reserveEm.exit
  %i.z = load ptr, ptr %5, align 8, !tbaa !233    ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !233 ; 2 uses
  %.not28 = icmp eq ptr %i.z, %i.aa
  %.pre31 = load ptr, ptr %6, align 8, !tbaa !343 ; 7 uses
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1561
  br label %bb.h

._crit_edge:                                      ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %.pre31, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !344
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %.pre31 to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre31, i64 noundef %i.af) #57
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  ret void

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIiN5Catch9StringRefEESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE7reserveEm.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit21

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit
  %i.ai = phi ptr [ %.pre, %.lr.ph ], [ %i.bk, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit ] ; 6 uses
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit ] ; 2 uses
  %.sroa.023.029 = phi ptr [ %i.z, %.lr.ph ], [ %i.bm, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.023.029, align 4, !tbaa !135 ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.pre31, i64 %.030 ; 2 uses
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !348
  %.not.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.aj, ptr %i.ai, align 8, !tbaa !350
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !167
end_hunk_0
