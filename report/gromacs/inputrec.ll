Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/inputrec?download=true
inline.NumInlined: 1031
inline.NumDeleted: 672
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z36integratorHasConservedEnergyQuantityPK10t_inputrec:bb.a
  %i.q = fcmp oeq float %i.p, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  %i.r = phi i1 [ true, %._crit_edge ], [ false, %bb.d ], [ false, %bb.c ], [ %i.q, %bb.e ]
  %i.s = and i32 %i.d, -2
  %switch = icmp ne i32 %i.s, 4
  %spec.select = select i1 %switch, i1 %i.r, i1 false
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %spec.select, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z33integratorHasReferenceTemperatureRK10t_inputrec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %switch.edge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !216  ; 2 uses
  %i.e = icmp ult i32 %i.d, 10
  br i1 %i.e, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = trunc nuw i32 %i.d to i10
  %switch.downshift = lshr i10 -120, %switch.cast
  %switch.masked = trunc i10 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %switch.lookup, %bb.a
  %i.f = phi i1 [ %switch.masked, %switch.lookup ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z20doSimulatedAnnealingRK10t_inputrec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load i32, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !407
  %.not.not = icmp ne i32 %i.g, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !602

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %.not.not, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z20inputrec2nboundeddimPK10t_inputrec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !242  ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit, label %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit.thread

_Z19inputrecPbcXY2WallsPK10t_inputrec.exit:       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load i32, ptr %i.d, align 8, !tbaa !275
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit.thread

_Z19inputrecPbcXY2WallsPK10t_inputrec.exit.thread: ; preds = %bb.a, %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit
  %i.g = tail call noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef %i.b)
  br label %bb.b

bb.b:                                             ; preds = %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit, %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit.thread
  %.0 = phi i32 [ %i.g, %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit.thread ], [ 3, %_Z19inputrecPbcXY2WallsPK10t_inputrec.exit ]
  ret i32 %.0
}

declare noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 4) i32 @_Z8ndof_comPK10t_inputrec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !242
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load i32, ptr %i.c, align 8, !tbaa !275
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, i32 3, i32 2
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.530, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(65) @.str.10, i8 noundef zeroext 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1815) #22
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.06 = phi i32 [ 1, %bb.c ], [ %i.f, %bb.b ], [ 3, %bb.a ], [ 3, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_Z23maxReferenceTemperatureRK10t_inputrec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !216
  switch i32 %i.b, label %bb.c [
    i32 1, label %.loopexit
    i32 2, label %.loopexit
    i32 6, label %.loopexit
    i32 5, label %.loopexit
    i32 0, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i32, ptr %i.c, align 8, !tbaa !199
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.g = load i32, ptr %i.f, align 8, !tbaa !181  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 768
  %1 = load ptr, ptr %i.k, align 8                ; 5 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %i.g, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.l ] ; 6 uses
  %.01920 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %.1.3, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.l ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load float, ptr %i.m, align 4, !tbaa !127
  %i.o = fcmp ult float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !127 ; 2 uses
  %i.r = fcmp olt float %.01920, %i.q
  %.sroa.speculated = select i1 %i.r, float %i.q, float %.01920
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi float [ %.01920, %bb.d ], [ %.sroa.speculated, %bb.e ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.t = load float, ptr %i.s, align 4, !tbaa !127
  %i.u = fcmp ult float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.w = load float, ptr %i.v, align 4, !tbaa !127 ; 2 uses
  %i.x = fcmp olt float %.1, %i.w
  %.sroa.speculated.1 = select i1 %i.x, float %i.w, float %.1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.1 = phi float [ %.1, %bb.f ], [ %.sroa.speculated.1, %bb.g ] ; 3 uses
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.z = load float, ptr %i.y, align 4, !tbaa !127
  %i.aa = fcmp ult float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !127 ; 2 uses
  %i.ad = fcmp olt float %.1.1, %i.ac
  %.sroa.speculated.2 = select i1 %i.ad, float %i.ac, float %.1.1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.2 = phi float [ %.1.1, %bb.h ], [ %.sroa.speculated.2, %bb.i ] ; 3 uses
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.af = load float, ptr %i.ae, align 4, !tbaa !127
  %i.ag = fcmp ult float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !127 ; 2 uses
  %i.aj = fcmp olt float %.1.2, %i.ai
  %.sroa.speculated.3 = select i1 %i.aj, float %i.ai, float %.1.2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.3 = phi float [ %.1.2, %bb.j ], [ %.sroa.speculated.3, %bb.k ] ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !603

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.01920.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %.1.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.o ] ; 3 uses
  %.01920.epil = phi float [ %.01920.epil.init, %.epil.preheader ], [ %.1.epil, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.al = load float, ptr %i.ak, align 4, !tbaa !127
  %i.am = fcmp ult float %i.al, 0.000000e+00
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4, !tbaa !127 ; 2 uses
  %i.ap = fcmp olt float %.01920.epil, %i.ao
  %.sroa.speculated.epil = select i1 %i.ap, float %i.ao, float %.01920.epil
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.epil = phi float [ %.01920.epil, %bb.m ], [ %.sroa.speculated.epil, %bb.n ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.m, !llvm.loop !604

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a
  %.016 = phi float [ -1.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ %.1.3, %.loopexit.loopexit.unr-lcssa ], [ %.1.epil, %bb.o ]
  ret float %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z28haveEwaldSurfaceContributionRK10t_inputrec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.val = load i32, ptr %i.a, align 4, !tbaa !417
  switch i32 %.val, label %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit [
    i32 3, label %bb.b
    i32 14, label %bb.b
    i32 13, label %bb.b
    i32 15, label %bb.b
    i32 5, label %bb.b
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.c = load i32, ptr %i.b, align 4, !tbaa !261
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load float, ptr %i.e, align 8, !tbaa !262
  %i.g = fcmp une float %i.f, 0.000000e+00
  br label %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit

_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ %i.g, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z18haveFreeEnergyTypeRK10t_inputreci(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !345  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load double, ptr %i.j, align 8, !tbaa !346
  %i.l = fcmp ogt double %i.k, 0.000000e+00       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.l, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !605

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z26fepLambdasChangeAtSameRateRKN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIdSaIdEELS1_7EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !607
  %i.c = load ptr, ptr %0, align 8, !tbaa !148    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %.not3951 = icmp slt i32 %i.h, 2
  br i1 %.not3951, label %.critedge41, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.g, 4294967295
  %wide.trip.count = and i64 %i.i, 4294967295
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %.0.ptr.1, align 8, !tbaa !148
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %.0.ptr.2, align 8
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %.0.ptr.3, align 8
  %.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %.0.ptr.4, align 8
  %.0.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %.0.ptr.5, align 8
  %.0.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %.0.ptr.6, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.thread.6
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.thread.6 ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !346
  %i.s = load double, ptr %i.p, align 8, !tbaa !346
  %i.t = fsub double %i.r, %i.s
  %i.u = tail call noundef double @llvm.fabs.f64(double %i.t) ; 2 uses
  %i.v = fcmp ule double %i.u, f0x3E80000000000000 ; 2 uses
  %spec.select = select i1 %i.v, double 0.000000e+00, double %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !346
  %i.z = load double, ptr %i.w, align 8, !tbaa !346
  %i.aa = fsub double %i.y, %i.z
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.aa) ; 4 uses
  %i.ac = fcmp ule double %i.ab, f0x3E80000000000000 ; 2 uses
  %brmerge = or i1 %i.ac, %i.v
  %spec.select.mux = select i1 %i.ac, double %spec.select, double %i.ab
  br i1 %brmerge, label %.thread.1, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.ad = fsub double %i.ab, %spec.select
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ule double %i.ae, f0x3E80000000000000
  br i1 %i.af, label %.thread.1, label %.critedge41

.thread.1:                                        ; preds = %.preheader, %bb.b
  %.245.1 = phi double [ %i.ab, %bb.b ], [ %spec.select.mux, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !346
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !346
  %i.ak = fsub double %i.ai, %i.aj
  %i.al = tail call noundef double @llvm.fabs.f64(double %i.ak) ; 4 uses
  %i.am = fcmp ogt double %i.al, f0x3E80000000000000
  br i1 %i.am, label %bb.c, label %.thread.2

bb.c:                                             ; preds = %.thread.1
  %i.an = fcmp ogt double %.245.1, f0x3E80000000000000
  br i1 %i.an, label %bb.d, label %.thread.2

bb.d:                                             ; preds = %bb.c
  %i.ao = fsub double %i.al, %.245.1
  %i.ap = tail call noundef double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp ule double %i.ap, f0x3E80000000000000
  br i1 %i.aq, label %.thread.2, label %.critedge41

.thread.2:                                        ; preds = %bb.d, %bb.c, %.thread.1
  %.245.2 = phi double [ %i.al, %bb.d ], [ %i.al, %bb.c ], [ %.245.1, %.thread.1 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !346
  %i.au = load double, ptr %i.ar, align 8, !tbaa !346
  %i.av = fsub double %i.at, %i.au
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av) ; 4 uses
  %i.ax = fcmp ogt double %i.aw, f0x3E80000000000000
  br i1 %i.ax, label %bb.e, label %.thread.3

bb.e:                                             ; preds = %.thread.2
  %i.ay = fcmp ogt double %.245.2, f0x3E80000000000000
  br i1 %i.ay, label %bb.f, label %.thread.3

bb.f:                                             ; preds = %bb.e
  %i.az = fsub double %i.aw, %.245.2
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ule double %i.ba, f0x3E80000000000000
  br i1 %i.bb, label %.thread.3, label %.critedge41

.thread.3:                                        ; preds = %bb.f, %bb.e, %.thread.2
  %.245.3 = phi double [ %i.aw, %bb.f ], [ %i.aw, %bb.e ], [ %.245.2, %.thread.2 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !346
  %i.bf = load double, ptr %i.bc, align 8, !tbaa !346
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg) ; 4 uses
  %i.bi = fcmp ogt double %i.bh, f0x3E80000000000000
  br i1 %i.bi, label %bb.g, label %.thread.4

bb.g:                                             ; preds = %.thread.3
  %i.bj = fcmp ogt double %.245.3, f0x3E80000000000000
  br i1 %i.bj, label %bb.h, label %.thread.4

bb.h:                                             ; preds = %bb.g
  %i.bk = fsub double %i.bh, %.245.3
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ule double %i.bl, f0x3E80000000000000
end_hunk_0
