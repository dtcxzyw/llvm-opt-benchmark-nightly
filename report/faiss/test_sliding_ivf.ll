inline.NumInlined: 718
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z17make_index_slicesPKN5faiss5IndexERSt6vectorISt10unique_ptrIS0_St14default_deleteIS0_EESaIS7_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !tbaa !77
  store i32 2147483647, ptr %i.f, align 4, !tbaa !79
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit, %bb.k
  %.lcssa33 = phi i64 [ 0, %bb.k ], [ %i.cd, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !11    ; 4 uses
  %i.bv = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i64 noundef %.lcssa33, ptr noundef %i.bu, ptr noundef %.sroa.027.0)
          to label %bb.n unwind label %bb.l

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit24

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit24

bb.l:                                             ; preds = %._crit_edge
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %bb.k, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit
  %.039 = phi i64 [ %i.cc, %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit ], [ 0, %bb.k ] ; 2 uses
  %i.bz = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(5000) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit unwind label %bb.m

_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit: ; preds = %.lr.ph
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.027.0, i64 %.039
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !19
  %i.cc = add nuw i64 %.039, 1                    ; 2 uses
  %i.cd = load i64, ptr @nb, align 8, !tbaa !19   ; 2 uses
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !80

bb.m:                                             ; preds = %.lr.ph
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i.i.i21 = icmp eq ptr %.sroa.027.0, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = ptrtoint ptr %.sroa.11.0 to i64
  %i.ch = ptrtoint ptr %.sroa.027.0 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.0, i64 noundef %i.ci) #18
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  %.not.i.i.i22 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.bu to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cm) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.cn = add nuw nsw i32 %.01440, 1              ; 2 uses
  %i.co = load i32, ptr @total_size, align 4, !tbaa !10
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.b, label %._crit_edge43, !llvm.loop !81

bb.q:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i.i.i23 = icmp eq ptr %.sroa.027.0, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIlSaIlEED2Ev.exit24, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = ptrtoint ptr %.sroa.11.0 to i64
  %i.cr = ptrtoint ptr %.sroa.027.0 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.0, i64 noundef %i.cs) #18
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit24

_ZNSt6vectorIlSaIlEED2Ev.exit24:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %.pn, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ct = load ptr, ptr %2, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIfSaIfEED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit24
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit26

_ZNSt6vectorIfSaIfEED2Ev.exit26:                  ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit24, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !77
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 4 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.i = add nuw i32 %i.h, 1                      ; 2 uses
  %i.j = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.h, %i.m
  br i1 %.not21, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = xor i32 %i.h, -1
  %i.o = urem i32 %i.n, %i.i                      ; 2 uses
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.r = mul i64 %i.q, %i.k                       ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !82

_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.u = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !77
  store i32 -1, ptr %i.v, align 4, !tbaa !79
  %i.w = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 32                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !83

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = load i32, ptr %2, align 4, !tbaa !77
  %i.ag = trunc i64 %.0 to i32
  %i.ah = add i32 %i.af, %i.ag
  ret i32 %i.ah
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z17make_merged_indexPKN5faiss5IndexERKSt6vectorISt10unique_ptrIS0_St14default_deleteIS0_EESaIS7_EEi(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef %0) ; 3 uses
  %i.b = load i32, ptr @window_size, align 4, !tbaa !10 ; 2 uses
  %.not.not26 = icmp sgt i32 %i.b, 0
  br i1 %.not.not26, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sub i32 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret ptr %i.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %4 = trunc nuw i64 %indvars.iv to i32
  %i.e = icmp sgt i32 %4, -2
  %i.f = load i32, ptr @total_size, align 4
  %.not = icmp sgt i32 %i.f, %indvars
  %or.cond = select i1 %i.e, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %5 = and i64 %indvars.iv.next, 4294967295
  %i.g = load ptr, ptr %1, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %5
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = tail call noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef %i.i) ; 7 uses
  %i.k = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef %i.a)
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef %i.j)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(273) %i.k, ptr noundef nonnull align 8 dereferenceable(36) %i.l, i64 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !84
  store i64 %i.q, ptr %i.d, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i: ; preds = %bb.f
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(36) %i.j) #17, !inline_history !54
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i, %bb.f, %bb.b
  %.not.not = icmp sgt i32 %2, %indvars
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !88

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.u, %bb.g ]
  %.not.i19 = icmp eq ptr %i.j, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i20

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i20: ; preds = %bb.i
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(36) %i.j) #17, !inline_history !54
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit21: ; preds = %bb.i, %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i20
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z19test_sliding_windowPKc(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %3 = alloca %"struct.faiss::ivflib::SlidingIndexWindow", align 8 ; 9 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %5 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_Z18make_trained_indexPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 9 uses
  invoke void @_Z17make_index_slicesPKN5faiss5IndexERSt6vectorISt10unique_ptrIS0_St14default_deleteIS0_EESaIS7_EE(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef %i.c)
          to label %bb.c unwind label %bb.j       ; 8 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN5faiss6ivflib18SlidingIndexWindowC1EPNS_5IndexE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.d)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.e = load i64, ptr @nq, align 8, !tbaa !19
  %i.f = load i32, ptr @d, align 4, !tbaa !10
  %i.g = sext i32 %i.f to i64
  %i.h = mul i64 %i.e, %i.g
  invoke void @_Z9make_datam(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 noundef %i.h)
          to label %.preheader unwind label %bb.l

.preheader:                                       ; preds = %bb.d
  %i.i = load i32, ptr @total_size, align 4, !tbaa !10 ; 2 uses
  %i.j = load i32, ptr @window_size, align 4, !tbaa !10 ; 2 uses
  %i.k = add nsw i32 %i.j, %i.i
  %i.l = icmp sgt i32 %i.k, 0
  %.pre = load ptr, ptr %4, align 8               ; 8 uses
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit70, %.preheader
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %.pre to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.w) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.y, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !96

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.x, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ai = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.y, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i, label %_ZN5faiss6ivflib18SlidingIndexWindowD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !97
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #18
  br label %_ZN5faiss6ivflib18SlidingIndexWindowD2Ev.exit

_ZN5faiss6ivflib18SlidingIndexWindowD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i: ; preds = %_ZN5faiss6ivflib18SlidingIndexWindowD2Ev.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(36) %i.d) #17, !inline_history !54
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5faiss6ivflib18SlidingIndexWindowD2Ev.exit, %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !64    ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.ar, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(36) %i.au) #17, !inline_history !98
  br label %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !99

_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ar to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bd) #18
  br label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN7testing8internal16ContainerPrinter10PrintValueISt6vectorIlSaIlEEvEEvRKT_PSo:bb.a

._crit_edge.thread:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !42
  %i.ax = load ptr, ptr %1, align 8, !tbaa !35
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !144
  %.not.i26 = icmp eq i64 %i.bc, 0
  br i1 %.not.i26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

bb.o:                                             ; preds = %._crit_edge.thread
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 125) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z21test_sliding_invlistsPKc(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %5 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_Z18make_trained_indexPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 4 uses
  invoke void @_Z17make_index_slicesPKN5faiss5IndexERSt6vectorISt10unique_ptrIS0_St14default_deleteIS0_EESaIS7_EE(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef %i.c)
          to label %bb.c unwind label %bb.h       ; 8 uses

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef %i.d)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = load i64, ptr @nq, align 8, !tbaa !19
  %i.g = load i32, ptr @d, align 4, !tbaa !10
  %i.h = sext i32 %i.g to i64
  %i.i = mul i64 %i.f, %i.h
  invoke void @_Z9make_datam(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i64 noundef %i.i)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %bb.d
  %i.j = load i32, ptr @total_size, align 4, !tbaa !10
  %i.k = load i32, ptr @window_size, align 4, !tbaa !10 ; 2 uses
  %i.l = add nsw i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.k

._crit_edge204:                                   ; preds = %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EED2Ev.exit, %.preheader
  %i.t = load ptr, ptr %3, align 8, !tbaa !11     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge204
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge204, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(36) %i.d) #17, !inline_history !54
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i
  %i.ac = load ptr, ptr %2, align 8, !tbaa !64    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.ac, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(36) %i.af) #17, !inline_history !98
  br label %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.aj, %i.ae
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !99

_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ao) #18
  br label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ap = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  %.not.i51 = icmp eq ptr %i.ap, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit53, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i52

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i52: ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(36) %i.ap) #17, !inline_history !54
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit53

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit53: ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 0

bb.g:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit99

bb.h:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit99

bb.i:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.j:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit96

bb.k:                                             ; preds = %.lr.ph203, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EED2Ev.exit
  %i.ax = phi i32 [ %i.k, %.lr.ph203 ], [ %i.fw, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EED2Ev.exit ] ; 2 uses
  %.014202 = phi i32 [ 0, %.lr.ph203 ], [ %i.fu, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EED2Ev.exit ] ; 4 uses
  %.not.not194 = icmp sgt i32 %i.ax, 0
  br i1 %.not.not194, label %.lr.ph.preheader, label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.ay = sub nsw i32 %.014202, %i.ax
  %12 = zext i32 %i.ay to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit
  %i.az = ptrtoint ptr %.sroa.11.1 to i64
  %i.ba = ptrtoint ptr %.sroa.0105.1 to i64       ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 3
  %i.bd = icmp eq ptr %.sroa.11.1, %.sroa.0105.1
  br i1 %i.bd, label %bb.bi, label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit
  %indvars.iv = phi i64 [ %12, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %.sroa.16.0197 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.16.1, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit ] ; 6 uses
  %.sroa.11.0196 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.11.1, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit ] ; 4 uses
  %.sroa.0105.0195 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.0105.1, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %13 = trunc nuw i64 %indvars.iv to i32
  %i.be = icmp sgt i32 %13, -2
  %i.bf = load i32, ptr @total_size, align 4
  %.not = icmp sgt i32 %i.bf, %indvars
  %or.cond = select i1 %i.be, i1 %.not, i1 false
  br i1 %or.cond, label %bb.l, label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit

bb.l:                                             ; preds = %.lr.ph
  %14 = and i64 %indvars.iv.next, 4294967295
  %i.bg = load ptr, ptr %2, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %14
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = invoke noundef ptr @_ZN5faiss6ivflib17extract_index_ivfEPNS_5IndexE(ptr noundef %i.bi)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %.not.i54 = icmp eq ptr %.sroa.11.0196, %.sroa.16.0197
  br i1 %.not.i54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !152
  store ptr %i.bl, ptr %.sroa.11.0196, align 8, !tbaa !152
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.11.0196, i64 8
  br label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %.sroa.16.0197 to i64
  %i.bo = ptrtoint ptr %.sroa.0105.0195 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIPKN5faiss13InvertedListsESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPKN5faiss13InvertedListsESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i55 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i55)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #20
          to label %.noexc56 unwind label %.loopexit ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIPKN5faiss13InvertedListsESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !152
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !152
  %i.ca = icmp sgt i64 %i.bp, 0
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.q:                                             ; preds = %.noexc56
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %.sroa.0105.0195, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.q, %.noexc56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0105.0195, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0195, i64 noundef %i.bp) #18
  br label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.n, %.lr.ph
  %.sroa.0105.1 = phi ptr [ %.sroa.0105.0195, %.lr.ph ], [ %i.bx, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0105.0195, %bb.n ] ; 9 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0196, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.bm, %bb.n ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0197, %.lr.ph ], [ %i.cc, %_ZNSt6vectorIPKN5faiss13InvertedListsESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.16.0197, %bb.n ] ; 5 uses
  %.not.not = icmp sgt i32 %.014202, %indvars
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !154

.loopexit:                                        ; preds = %bb.l, %_ZNKSt6vectorIPKN5faiss13InvertedListsESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.s:                                             ; preds = %._crit_edge
  %i.cd = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20
          to label %bb.t unwind label %bb.ab      ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bc to i32
  invoke void @_ZN5faiss19HStackInvertedListsC1EiPPKNS_13InvertedListsE(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i32 noundef %i.ce, ptr noundef %.sroa.0105.1)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5faiss8IndexIVF16replace_invlistsEPNS_13InvertedListsEb(ptr noundef nonnull align 8 dereferenceable(273) %i.e, ptr noundef nonnull %i.cd, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cf = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  invoke void @_Z12search_indexPN5faiss5IndexEPKf(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %4, ptr noundef %i.d, ptr noundef %i.cf)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %1, align 8, !tbaa !33
  %i.ch = invoke noundef ptr @_Z17make_merged_indexPKN5faiss5IndexERKSt6vectorISt10unique_ptrIS0_St14default_deleteIS0_EESaIS7_EEi(ptr noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.014202)
          to label %bb.x unwind label %bb.ae      ; 7 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_Z12search_indexPN5faiss5IndexEPKf(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, ptr noundef %i.ch, ptr noundef %i.cf)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.cj = load ptr, ptr %5, align 8, !tbaa !55
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 2 uses
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.cp = load ptr, ptr %4, align 8, !tbaa !55
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 2 uses
  store i64 %i.ct, ptr %i.b, align 8, !tbaa !19
  %i.cu = icmp eq i64 %i.cn, %i.ct
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ag

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ag

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cv = load i8, ptr %6, align 8, !tbaa !100, !range !109, !noundef !110
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.aq, label %bb.ah

bb.ab:                                            ; preds = %bb.u, %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ac:                                            ; preds = %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 56) #18
  br label %bb.bo

bb.ad:                                            ; preds = %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit92

bb.ae:                                            ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit90

bb.af:                                            ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit87

bb.ag:                                            ; preds = %bb.aa, %bb.z
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.at

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !111 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !43
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aj, %bb.ai
  %i.df = phi ptr [ %i.de, %bb.aj ], [ @.str.13, %bb.ai ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 184, ptr noundef %i.df)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.dg = load ptr, ptr %7, align 8, !tbaa !112   ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.al
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #17, !inline_history !114
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit62

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.ao ], [ %i.dl, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.dn = load ptr, ptr %7, align 8, !tbaa !112   ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.ap
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #17, !inline_history !114
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61, %bb.ap, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.am ], [ %.pn, %bb.ap ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #17
  br label %bb.at

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !111 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ar
end_hunk_1
