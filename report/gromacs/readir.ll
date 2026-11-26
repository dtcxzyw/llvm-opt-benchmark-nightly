Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readir?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_Z27processConstantAccelerationP10t_inputrecRK10gmx_mtop_t:bb.a
  %i.gr = fcmp ogt double %i.gq, f0x3EB0C6F7A0B5ED8D
  br i1 %i.gr, label %bb.af, label %.split92.us

bb.af:                                            ; preds = %.loopexit.1
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !343
  %i.gt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.713, ptr noundef nonnull @.str.712, ptr noundef nonnull @.str.714) #34 ; 0 uses
  %i.gu = invoke noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.gv = icmp sgt i32 %i.gu, 2
  br i1 %i.gv, label %.lr.ph89.2, label %.split92.us

.lr.ph89.2:                                       ; preds = %bb.ag
  %i.gw = fpext float %.lcssa166 to double
  %i.gx = fdiv double %i.gw, %.lcssa
  %i.gy = fptrunc double %i.gx to float           ; 2 uses
  %i.gz = load ptr, ptr %i.el, align 8, !tbaa !294
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %wide.trip.count108.2 = and i64 %i.i, 2147483647
  %min.iters.check150 = icmp samesign ult i64 %wide.trip.count, 9
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph89.2
  %i.ha = and i64 %i.i, 7                         ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  %i.hc = select i1 %i.hb, i64 8, i64 %i.ha
  %n.vec152 = sub nsw i64 %wide.trip.count, %i.hc ; 2 uses
  %broadcast.splatinsert153 = insertelement <8 x float> poison, float %i.gy, i64 0
  %broadcast.splat154 = shufflevector <8 x float> %broadcast.splatinsert153, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph151
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body155 ]
  %vec.ind157 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph151 ], [ %vec.ind.next162, %vector.body155 ] ; 2 uses
  %wide.gep158 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.2, <8 x i64> %vec.ind157 ; 2 uses
  %i.hd = extractelement <8 x ptr> %wide.gep158, i64 0
  %wide.vec159 = load <24 x float>, ptr %i.hd, align 4, !tbaa !149
  %strided.vec160 = shufflevector <24 x float> %wide.vec159, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.he = fsub <8 x float> %strided.vec160, %broadcast.splat154
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.he, <8 x ptr> align 4 %wide.gep158, <8 x i1> splat (i1 true)), !tbaa !149
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %vec.ind.next162 = add nuw nsw <8 x i64> %vec.ind157, splat (i64 8)
  %i.hf = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.hf, label %scalar.ph149.preheader, label %vector.body155, !llvm.loop !833

scalar.ph149.preheader:                           ; preds = %vector.body155, %.lr.ph89.2
  %indvars.iv105.2.ph = phi i64 [ 0, %.lr.ph89.2 ], [ %n.vec152, %vector.body155 ]
  br label %scalar.ph149

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %indvars.iv105.2 = phi i64 [ %indvars.iv.next106.2, %scalar.ph149 ], [ %indvars.iv105.2.ph, %scalar.ph149.preheader ] ; 2 uses
  %gep.2 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.2, i64 %indvars.iv105.2 ; 2 uses
  %i.hg = load float, ptr %gep.2, align 4, !tbaa !149
  %i.hh = fsub float %i.hg, %i.gy
  store float %i.hh, ptr %gep.2, align 4, !tbaa !149
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105.2, 1 ; 2 uses
  %exitcond109.2.not = icmp eq i64 %indvars.iv.next106.2, %wide.trip.count108.2
  br i1 %exitcond109.2.not, label %.split92.us, label %scalar.ph149, !llvm.loop !834

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64, %bb.w ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i73 = icmp eq ptr %.sroa.075.0, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIfSaIfEED2Ev.exit74, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp
  %i.hi = ptrtoint ptr %.sroa.075.0 to i64
  %i.hj = sub i64 %.sroa.12.0, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0, i64 noundef %i.hj) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit74

_ZNSt6vectorIfSaIfEED2Ev.exit74:                  ; preds = %bb.ah, %.loopexit.split-lp
  resume { ptr, i32 } %.pn64.pn.pn

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.aa, %.split92.us, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress uwtable
define void @_Z12triple_checkPKcRK10t_inputrecRK10gmx_mtop_tP14WarningHandler(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(768) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca [4096 x i8], align 16             ; 18 uses
  %i.e = alloca [4096 x i8], align 16             ; 15 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %13 = alloca %"class.std::optional.629", align 8 ; 11 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
  invoke void @_ZN14WarningHandler20setFileAndLineNumberERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef -1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.i) #30
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %9, align 8, !tbaa !21     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !233
  %.not = icmp eq i32 %i.p, 2
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.q = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2)
  %i.r = and i24 %i.q, 65793
  %i.s = icmp eq i24 %i.r, 65793
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 202, ptr nonnull @.str.716)
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.gc

.critedge:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !141
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.y = load float, ptr %i.x, align 4, !tbaa !143 ; 3 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !144
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !135
  switch i32 %i.ae, label %._crit_edge.thread [
    i32 0, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.j
    i32 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !151
  switch i32 %i.ag, label %._crit_edge.thread [
    i32 6, label %bb.k
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !413 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !415 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !414 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ai to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ao = icmp ult i32 %i.ai, 4
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.m

._crit_edge.unr-lcssa:                            ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0372.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated343.3, %._crit_edge.unr-lcssa ]
  %.0351371.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated338.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod871 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod871)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 3 uses
  %.0372.epil = phi float [ %.0372.epil.init, %.epil.preheader ], [ %.sroa.speculated343.epil, %bb.l ] ; 2 uses
  %.0351371.epil = phi float [ %.0351371.epil.init, %.epil.preheader ], [ %.sroa.speculated338.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil
  %15 = load float, ptr %14, align 4, !tbaa !149  ; 2 uses
  %16 = fcmp olt float %.0372.epil, %15
  %.sroa.speculated343.epil = select i1 %16, float %15, float %.0372.epil ; 2 uses
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.epil
  %18 = load float, ptr %17, align 4, !tbaa !149  ; 2 uses
  %19 = fcmp olt float %.0351371.epil, %18
  %.sroa.speculated338.epil = select i1 %19, float %18, float %.0351371.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !836

._crit_edge:                                      ; preds = %bb.l, %._crit_edge.unr-lcssa
  %.sroa.speculated343.lcssa = phi float [ %.sroa.speculated343.3, %._crit_edge.unr-lcssa ], [ %.sroa.speculated343.epil, %bb.l ] ; 2 uses
  %.sroa.speculated338.lcssa = phi float [ %.sroa.speculated338.3, %._crit_edge.unr-lcssa ], [ %.sroa.speculated338.epil, %bb.l ]
  %i.ap = fpext float %.sroa.speculated338.lcssa to double ; 2 uses
  %i.aq = fcmp ogt float %.sroa.speculated343.lcssa, 0.000000e+00
  br i1 %i.aq, label %bb.n, label %._crit_edge.thread

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.m ] ; 6 uses
  %.0372 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %.sroa.speculated343.3, %bb.m ] ; 2 uses
  %.0351371 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %.sroa.speculated338.3, %bb.m ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.m ]
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %21 = load float, ptr %20, align 4, !tbaa !149  ; 2 uses
  %22 = fcmp olt float %.0372, %21
  %.sroa.speculated343 = select i1 %22, float %21, float %.0372 ; 2 uses
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %24 = load float, ptr %23, align 4, !tbaa !149  ; 2 uses
  %25 = fcmp olt float %.0351371, %24
  %.sroa.speculated338 = select i1 %25, float %24, float %.0351371 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  %27 = load float, ptr %26, align 4, !tbaa !149  ; 2 uses
  %28 = fcmp olt float %.sroa.speculated343, %27
  %.sroa.speculated343.1 = select i1 %28, float %27, float %.sroa.speculated343 ; 2 uses
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next
  %30 = load float, ptr %29, align 4, !tbaa !149  ; 2 uses
  %31 = fcmp olt float %.sroa.speculated338, %30
  %.sroa.speculated338.1 = select i1 %31, float %30, float %.sroa.speculated338 ; 2 uses
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %33 = load float, ptr %32, align 4, !tbaa !149  ; 2 uses
  %34 = fcmp olt float %.sroa.speculated343.1, %33
  %.sroa.speculated343.2 = select i1 %34, float %33, float %.sroa.speculated343.1 ; 2 uses
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %36 = load float, ptr %35, align 4, !tbaa !149  ; 2 uses
  %37 = fcmp olt float %.sroa.speculated338.1, %36
  %.sroa.speculated338.2 = select i1 %37, float %36, float %.sroa.speculated338.1 ; 2 uses
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.as = load float, ptr %i.ar, align 4, !tbaa !149 ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated343.2, %i.as
  %.sroa.speculated343.3 = select i1 %i.at, float %i.as, float %.sroa.speculated343.2 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.av = load float, ptr %i.au, align 4, !tbaa !149 ; 2 uses
  %i.aw = fcmp olt float %.sroa.speculated338.2, %i.av
  %.sroa.speculated338.3 = select i1 %i.aw, float %i.av, float %.sroa.speculated338.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !837

bb.n:                                             ; preds = %._crit_edge
  %i.ax = fmul double %i.ap, 5.000000e-01
  %i.ay = fpext float %i.y to double              ; 2 uses
  %i.az = fmul double %i.ax, %i.ay
  %i.ba = fpext float %.sroa.speculated343.lcssa to double ; 2 uses
  %i.bb = fmul nnan double %i.ba, f0x3F91072C483AF26D
  %i.bc = fdiv double %i.az, %i.bb                ; 2 uses
  %i.bd = fcmp ogt double %i.bc, f0x3F60624DEFFFFFFF
  br i1 %i.bd, label %bb.o, label %._crit_edge.thread

bb.o:                                             ; preds = %bb.n
  %i.be = fptrunc double %i.bc to float           ; 2 uses
  %i.bf = fmul nnan float %i.be, 1.000000e+02
  %i.bg = fpext float %i.bf to double
  %i.bh = fmul nnan float %i.y, 1.000000e-03
  %i.bi = fdiv float %i.bh, %i.be
  %i.bj = fpext float %i.bi to double
  %i.bk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.717, double noundef %i.ay, double noundef %i.ba, double noundef %i.ap, double noundef %i.bg, double noundef f0x3FB99999A0000000, double noundef %i.bj) #30 ; 0 uses
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.bl, ptr nonnull %i.e)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge, %bb.o, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !151 ; 2 uses
  %i.bo = and i32 %i.bn, -2
  %switch = icmp eq i32 %i.bo, 4
  br i1 %switch, label %.preheader365, label %.loopexit364

.preheader365:                                    ; preds = %._crit_edge.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !413
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %.preheader365
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 3 uses
  br label %bb.p

._crit_edge377.loopexit:                          ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit249
  %.pre527 = load i32, ptr %i.bm, align 8, !tbaa !151
  %i.bt = icmp slt i32 %i.cm, 1
  br label %._crit_edge377

._crit_edge377:                                   ; preds = %._crit_edge377.loopexit, %.preheader365
  %.not618 = phi i1 [ %i.bt, %._crit_edge377.loopexit ], [ true, %.preheader365 ]
  %i.bu = phi i32 [ %.pre527, %._crit_edge377.loopexit ], [ %i.bn, %.preheader365 ]
  %i.bv = icmp eq i32 %i.bu, 5
  br i1 %i.bv, label %bb.s, label %.loopexit364

bb.p:                                             ; preds = %.lr.ph376, %_ZL10_low_checkbPKcP14WarningHandler.exit249
  %indvars.iv429 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next430, %_ZL10_low_checkbPKcP14WarningHandler.exit249 ] ; 5 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv429 to i32 ; 2 uses
  %i.bx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.718, i32 noundef %i.bw) #30 ; 0 uses
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !414 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !149
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv429
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !149 ; 2 uses
  %i.cc = fcmp une float %i.bz, %i.cb
  br i1 %i.cc, label %bb.q, label %_ZL10_low_checkbPKcP14WarningHandler.exit

bb.q:                                             ; preds = %bb.p
  %i.cd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.cd, ptr nonnull %i.d)
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !414
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv429
  %.pre526 = load float, ptr %.phi.trans.insert, align 4, !tbaa !149
  br label %_ZL10_low_checkbPKcP14WarningHandler.exit

_ZL10_low_checkbPKcP14WarningHandler.exit:        ; preds = %bb.p, %bb.q
  %i.ce = phi float [ %i.cb, %bb.p ], [ %.pre526, %bb.q ]
  %i.cf = fpext float %i.ce to double
  %i.cg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.719, i32 noundef %i.bw, double noundef %i.cf) #30 ; 0 uses
  %i.ch = load ptr, ptr %i.bs, align 8, !tbaa !414
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv429
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !149
  %i.ck = fcmp olt float %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.r, label %_ZL10_low_checkbPKcP14WarningHandler.exit249

bb.r:                                             ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit
  %i.cl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.cl, ptr nonnull %i.d)
  br label %_ZL10_low_checkbPKcP14WarningHandler.exit249

_ZL10_low_checkbPKcP14WarningHandler.exit249:     ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit, %bb.r
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bp, align 8, !tbaa !413 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next430, %i.cn
  br i1 %i.co, label %bb.p, label %._crit_edge377.loopexit, !llvm.loop !838

bb.s:                                             ; preds = %._crit_edge377
  %i.cp = load i32, ptr %i.o, align 8, !tbaa !233
  %.not231 = icmp eq i32 %i.cp, 2
  %brmerge = or i1 %.not231, %.not618
  br i1 %brmerge, label %.loopexit364, label %.lr.ph379

.lr.ph379:                                        ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph379, %_ZL10_low_checkbPKcP14WarningHandler.exit250
  %indvars.iv432 = phi i64 [ 0, %.lr.ph379 ], [ %indvars.iv.next433, %_ZL10_low_checkbPKcP14WarningHandler.exit250 ] ; 4 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !414
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv432
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !149
  %i.cw = fpext float %i.cv to double
  %i.cx = load double, ptr %i.cr, align 8, !tbaa !136
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = call double @llvm.rint.f64(double %i.cy)
  %i.da = fptosi double %i.cz to i32              ; 2 uses
  %i.db = load i32, ptr %i.bm, align 8, !tbaa !151
  %i.dc = call noundef ptr @_Z17enumValueToString19TemperatureCoupling(i32 noundef %i.db)
  %i.dd = load i32, ptr %i.cs, align 4, !tbaa !232
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !414
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv432
  %i.dg = load float, ptr %i.df, align 4, !tbaa !149
  %i.dh = fpext float %i.dg to double
  %i.di = trunc nuw nsw i64 %indvars.iv432 to i32
  %i.dj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.720, i32 noundef %i.di, ptr noundef %i.dc, i32 noundef %i.dd, double noundef %i.dh, i32 noundef %i.da) #30 ; 0 uses
  %i.dk = load i32, ptr %i.cs, align 4, !tbaa !232
  %i.dl = srem i32 %i.da, %i.dk
  %.not356 = icmp eq i32 %i.dl, 0
  br i1 %.not356, label %_ZL10_low_checkbPKcP14WarningHandler.exit250, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.dm, ptr nonnull %i.d)
  br label %_ZL10_low_checkbPKcP14WarningHandler.exit250

_ZL10_low_checkbPKcP14WarningHandler.exit250:     ; preds = %bb.t, %bb.u
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %i.dn = load i32, ptr %i.bp, align 8, !tbaa !413
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next433, %i.do
  br i1 %i.dp, label %bb.t, label %.loopexit364, !llvm.loop !839

.loopexit364:                                     ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit250, %bb.s, %._crit_edge.thread, %._crit_edge377
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !135
  switch i32 %i.dr, label %.critedge2 [
    i32 0, label %.thread
    i32 12, label %.thread
    i32 11, label %.thread
    i32 10, label %.thread
  ]

.thread:                                          ; preds = %.loopexit364, %.loopexit364, %.loopexit364, %.loopexit364
  %i.ds = load i32, ptr %i.o, align 8, !tbaa !233
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %.thread
  %i.du = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.dv = icmp slt i32 %i.du, 1                   ; 6 uses
  %i.dw = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.dx = icmp slt i32 %i.dw, 2                   ; 6 uses
  %i.dy = call noundef i32 @_Z8ndof_comPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.dz = icmp slt i32 %i.dy, 3                   ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !416 ; 4 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %iter.check, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit

iter.check:                                       ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !417 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.eb to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.eb, 4
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check652 = icmp ult i32 %i.eb, 32
  br i1 %min.iters.check652, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.a, %vector.body ] ; 5 uses
  %vec.phi.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi653.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %vec.phi654.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fj, %vector.body ]
  %vec.phi655.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fk, %vector.body ]
  %vec.phi656.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %vec.phi657.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fa, %vector.body ]
  %vec.phi658.a = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fb, %vector.body ]
  %vec.phi659 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fc, %vector.body ]
  %vec.phi660 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.phi661 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.es, %vector.body ]
  %vec.phi662 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi663 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %index
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %index
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
end_hunk_0
begin_hunk_1_@_Z12triple_checkPKcRK10t_inputrecRK10gmx_mtop_tP14WarningHandler:bb.a
  %i.ev = icmp ne <8 x i32> %strided.vec664, zeroinitializer
  %i.ew = icmp ne <8 x i32> %strided.vec668, zeroinitializer
  %i.ex = icmp ne <8 x i32> %strided.vec672, zeroinitializer
  %i.ey = icmp ne <8 x i32> %strided.vec676, zeroinitializer
  %i.ez = or <8 x i1> %vec.phi656.a, %i.ev        ; 2 uses
  %i.fa = or <8 x i1> %vec.phi657.a, %i.ew        ; 2 uses
  %i.fb = or <8 x i1> %vec.phi658.a, %i.ex        ; 2 uses
  %i.fc = or <8 x i1> %vec.phi659, %i.ey          ; 2 uses
  %i.fd = icmp ne <8 x i32> %strided.vec665, zeroinitializer
  %i.fe = icmp ne <8 x i32> %strided.vec669, zeroinitializer
  %i.ff = icmp ne <8 x i32> %strided.vec673, zeroinitializer
  %i.fg = icmp ne <8 x i32> %strided.vec677, zeroinitializer
  %i.fh = or <8 x i1> %vec.phi.a, %i.fd           ; 2 uses
  %i.fi = or <8 x i1> %vec.phi653.a, %i.fe        ; 2 uses
  %i.fj = or <8 x i1> %vec.phi654.a, %i.ff        ; 2 uses
  %i.fk = or <8 x i1> %vec.phi655.a, %i.fg        ; 2 uses
  %index.next.a = add nuw i64 %index, 32          ; 2 uses
  %i.fl = icmp eq i64 %index.next.a, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.fi, %i.fh
  %bin.rdx678 = or <8 x i1> %i.fj, %bin.rdx
  %bin.rdx679 = or <8 x i1> %i.fk, %bin.rdx678
  %bin.rdx679.fr = freeze <8 x i1> %bin.rdx679
  %i.fm = bitcast <8 x i1> %bin.rdx679.fr to i8
  %i.fn = icmp ne i8 %i.fm, 0
  %rdx.select = or i1 %i.fn, %i.dz                ; 3 uses
  %bin.rdx680 = or <8 x i1> %i.fa, %i.ez
  %bin.rdx681 = or <8 x i1> %i.fb, %bin.rdx680
  %bin.rdx682 = or <8 x i1> %i.fc, %bin.rdx681
  %bin.rdx682.fr = freeze <8 x i1> %bin.rdx682
  %i.fo = bitcast <8 x i1> %bin.rdx682.fr to i8
  %i.fp = icmp ne i8 %i.fo, 0
  %rdx.select683 = or i1 %i.fp, %i.dx             ; 3 uses
  %bin.rdx684 = or <8 x i1> %i.es, %i.er
  %bin.rdx685 = or <8 x i1> %i.et, %bin.rdx684
  %bin.rdx686 = or <8 x i1> %i.eu, %bin.rdx685
  %bin.rdx686.fr = freeze <8 x i1> %bin.rdx686
  %i.fq = bitcast <8 x i1> %bin.rdx686.fr to i8
  %i.fr = icmp ne i8 %i.fq, 0
  %rdx.select687 = or i1 %i.fr, %i.dv             ; 3 uses
  %cmp.n.a = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n.a, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !423

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %i.dz, %vector.main.loop.iter.check ]
  %bc.merge.rdx688 = phi i1 [ %rdx.select683, %vec.epilog.iter.check ], [ %i.dx, %vector.main.loop.iter.check ]
  %bc.merge.rdx689 = phi i1 [ %rdx.select687, %vec.epilog.iter.check ], [ %i.dv, %vector.main.loop.iter.check ]
  %n.vec690 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %i.fs = xor i1 %bc.merge.rdx, %i.dz
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.fs, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ft = xor i1 %bc.merge.rdx688, %i.dx
  %broadcast.splatinsert691 = insertelement <4 x i1> poison, i1 %i.ft, i64 0
  %broadcast.splat692 = shufflevector <4 x i1> %broadcast.splatinsert691, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.fu = xor i1 %bc.merge.rdx689, %i.dv
  %broadcast.splatinsert693 = insertelement <4 x i1> poison, i1 %i.fu, i64 0
  %broadcast.splat694 = shufflevector <4 x i1> %broadcast.splatinsert693, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index695 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next703, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi696 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr796, %vec.epilog.vector.body ]
  %vec.phi697 = phi <4 x i1> [ %broadcast.splat692, %vec.epilog.ph ], [ %.fr797, %vec.epilog.vector.body ]
  %vec.phi698 = phi <4 x i1> [ %broadcast.splat694, %vec.epilog.ph ], [ %.fr798, %vec.epilog.vector.body ]
  %i.fv = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %index695
  %wide.vec699 = load <12 x i32>, ptr %i.fv, align 4, !tbaa !169 ; 3 uses
  %strided.vec700 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec701 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec702 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.fw = icmp ne <4 x i32> %strided.vec700, zeroinitializer
  %i.fx = or <4 x i1> %vec.phi698, %i.fw
  %.fr798 = freeze <4 x i1> %i.fx                 ; 2 uses
  %i.fy = icmp ne <4 x i32> %strided.vec701, zeroinitializer
  %i.fz = or <4 x i1> %vec.phi697, %i.fy
  %.fr797 = freeze <4 x i1> %i.fz                 ; 2 uses
  %i.ga = icmp ne <4 x i32> %strided.vec702, zeroinitializer
  %i.gb = or <4 x i1> %vec.phi696, %i.ga
  %.fr796 = freeze <4 x i1> %i.gb                 ; 2 uses
  %index.next703 = add nuw i64 %index695, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next703, %n.vec690
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !841

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gd = bitcast <4 x i1> %.fr796 to i4
  %i.ge = icmp ne i4 %i.gd, 0
  %rdx.select704 = or i1 %i.ge, %i.dz             ; 2 uses
  %i.gf = bitcast <4 x i1> %.fr797 to i4
  %i.gg = icmp ne i4 %i.gf, 0
  %rdx.select705 = or i1 %i.gg, %i.dx             ; 2 uses
  %i.gh = bitcast <4 x i1> %.fr798 to i4
  %i.gi = icmp ne i4 %i.gh, 0
  %rdx.select706 = or i1 %i.gi, %i.dv             ; 2 uses
  %cmp.n707 = icmp eq i64 %n.vec690, %wide.trip.count.i
  br i1 %cmp.n707, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.7.0.i.ph = phi i1 [ %i.dz, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select704, %vec.epilog.middle.block ]
  %.sroa.4.0.i.ph = phi i1 [ %i.dx, %iter.check ], [ %rdx.select683, %vec.epilog.iter.check ], [ %rdx.select705, %vec.epilog.middle.block ]
  %.sroa.0.0.i.ph = phi i1 [ %i.dv, %iter.check ], [ %rdx.select687, %vec.epilog.iter.check ], [ %rdx.select706, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec690, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.7.0.i = phi i1 [ %.sroa.7.2.i, %.preheader.i ], [ %.sroa.7.0.i.ph, %.preheader.i.preheader ]
  %.sroa.4.0.i = phi i1 [ %.sroa.4.2.i, %.preheader.i ], [ %.sroa.4.0.i.ph, %.preheader.i.preheader ]
  %.sroa.0.0.i = phi i1 [ %spec.select.i, %.preheader.i ], [ %.sroa.0.0.i.ph, %.preheader.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv.i ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !169
  %.not.i = icmp ne i32 %i.gk, 0
  %spec.select.i = select i1 %.not.i, i1 true, i1 %.sroa.0.0.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !169
  %.not.1.i = icmp ne i32 %i.gm, 0
  %.sroa.4.2.i = select i1 %.not.1.i, i1 true, i1 %.sroa.4.0.i ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !169
  %.not.2.i = icmp ne i32 %i.go, 0
  %.sroa.7.2.i = select i1 %.not.2.i, i1 true, i1 %.sroa.7.0.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %.preheader.i, !llvm.loop !842

_ZL21haveAbsoluteReferenceRK10t_inputrec.exit:    ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.v
  %.sroa.7.1.i = phi i1 [ %i.dz, %bb.v ], [ %rdx.select704, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.sroa.7.2.i, %.preheader.i ]
  %.sroa.4.1.i = phi i1 [ %i.dx, %bb.v ], [ %rdx.select705, %vec.epilog.middle.block ], [ %rdx.select683, %middle.block ], [ %.sroa.4.2.i, %.preheader.i ]
  %.sroa.0.1.i = phi i1 [ %i.dv, %bb.v ], [ %rdx.select706, %vec.epilog.middle.block ], [ %rdx.select687, %middle.block ], [ %spec.select.i, %.preheader.i ]
  %or.cond.i251 = select i1 %.sroa.0.1.i, i1 %.sroa.4.1.i, i1 false
  %i.gp = select i1 %or.cond.i251, i1 %.sroa.7.1.i, i1 false
  br i1 %i.gp, label %.critedge2, label %bb.w

bb.w:                                             ; preds = %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit
  %i.gq = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2)
  %i.gr = and i24 %i.gq, 65793
  %i.gs = icmp eq i24 %i.gr, 65793
  br i1 %i.gs, label %.critedge2, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !173
  %i.gv = icmp slt i64 %i.gu, 11
  br i1 %i.gv, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gw = load i32, ptr %i.bm, align 8, !tbaa !151
  %i.gx = add i32 %i.gw, -6
  %spec.select = icmp ult i32 %i.gx, -2
  br i1 %spec.select, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %bb.y
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 158, ptr nonnull @.str.721)
  br label %.critedge2

.critedge2:                                       ; preds = %.loopexit364, %bb.x, %bb.w, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, %.thread, %bb.z, %bb.y
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 8 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !152 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, 5
  br i1 %i.ha, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.critedge2
  %i.hb = call noundef zeroext i1 @_Z23haveEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  br i1 %i.hb, label %thread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hc = load i32, ptr %i.gy, align 4, !tbaa !152
  %i.hd = call noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.hc)
  %i.he = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.722, ptr noundef %i.hd) #30 ; 0 uses
  %i.hf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.hf, ptr nonnull %i.e)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.aa, %bb.ab
  %.pr = load i32, ptr %i.gy, align 4, !tbaa !152
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split, %.critedge2
  %i.hg = phi i32 [ %.pr, %thread-pre-split ], [ %i.gz, %.critedge2 ] ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 2
  br i1 %i.hh, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.hi = load i32, ptr %i.bm, align 8, !tbaa !151
  %i.hj = icmp eq i32 %i.hi, 2
  br i1 %i.hj, label %.preheader362, label %.thread581

.preheader362:                                    ; preds = %bb.ad
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !413 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph382, label %._crit_edge383

.lr.ph382:                                        ; preds = %.preheader362
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !414 ; 9 uses
  %wide.trip.count438 = zext nneg i32 %i.hl to i64 ; 2 uses
  %xtraiter873 = and i64 %wide.trip.count438, 7   ; 3 uses
  %i.hp = icmp ult i32 %i.hl, 8
  br i1 %i.hp, label %.epil.preheader872, label %.lr.ph382.new

.lr.ph382.new:                                    ; preds = %.lr.ph382
  %unroll_iter878 = and i64 %wide.trip.count438, 2147483640
  br label %bb.af

._crit_edge383.loopexit.unr-lcssa:                ; preds = %bb.af
  %lcmp.mod875.not = icmp eq i64 %xtraiter873, 0
  br i1 %lcmp.mod875.not, label %._crit_edge383.loopexit, label %.epil.preheader872

.epil.preheader872:                               ; preds = %._crit_edge383.loopexit.unr-lcssa, %.lr.ph382
  %indvars.iv435.epil.init = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next436.7, %._crit_edge383.loopexit.unr-lcssa ]
  %.0352380.epil.init = phi float [ 0.000000e+00, %.lr.ph382 ], [ %.sroa.speculated.7, %._crit_edge383.loopexit.unr-lcssa ]
  %lcmp.mod877 = icmp ne i64 %xtraiter873, 0
  call void @llvm.assume(i1 %lcmp.mod877)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader872
  %indvars.iv435.epil = phi i64 [ %indvars.iv435.epil.init, %.epil.preheader872 ], [ %indvars.iv.next436.epil, %bb.ae ] ; 2 uses
  %.0352380.epil = phi float [ %.0352380.epil.init, %.epil.preheader872 ], [ %.sroa.speculated.epil, %bb.ae ] ; 2 uses
  %epil.iter874 = phi i64 [ 0, %.epil.preheader872 ], [ %epil.iter874.next, %bb.ae ]
  %38 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435.epil
  %39 = load float, ptr %38, align 4, !tbaa !149  ; 2 uses
  %40 = fcmp olt float %.0352380.epil, %39
  %.sroa.speculated.epil = select i1 %40, float %39, float %.0352380.epil ; 2 uses
  %indvars.iv.next436.epil = add nuw nsw i64 %indvars.iv435.epil, 1
  %epil.iter874.next = add i64 %epil.iter874, 1   ; 2 uses
  %epil.iter874.cmp.not = icmp eq i64 %epil.iter874.next, %xtraiter873
  br i1 %epil.iter874.cmp.not, label %._crit_edge383.loopexit, label %bb.ae, !llvm.loop !843

._crit_edge383.loopexit:                          ; preds = %bb.ae, %._crit_edge383.loopexit.unr-lcssa
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.7, %._crit_edge383.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %bb.ae ]
  %i.hq = fpext float %.sroa.speculated.lcssa to double
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.preheader362
  %.0352.lcssa = phi double [ 0.000000e+00, %.preheader362 ], [ %i.hq, %._crit_edge383.loopexit ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !238
  %i.ht = fpext float %i.hs to double
  %i.hu = fmul double %.0352.lcssa, 1.900000e+00
  %i.hv = fcmp ogt double %i.hu, %i.ht
  br i1 %i.hv, label %bb.ag, label %.thread581

bb.af:                                            ; preds = %bb.af, %.lr.ph382.new
  %indvars.iv435 = phi i64 [ 0, %.lr.ph382.new ], [ %indvars.iv.next436.7, %bb.af ] ; 9 uses
  %.0352380 = phi float [ 0.000000e+00, %.lr.ph382.new ], [ %.sroa.speculated.7, %bb.af ] ; 2 uses
  %niter879 = phi i64 [ 0, %.lr.ph382.new ], [ %niter879.next.7, %bb.af ]
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %42 = load float, ptr %41, align 4, !tbaa !149  ; 2 uses
  %43 = fcmp olt float %.0352380, %42
  %.sroa.speculated = select i1 %43, float %42, float %.0352380 ; 2 uses
  %44 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 4
  %46 = load float, ptr %45, align 4, !tbaa !149  ; 2 uses
  %47 = fcmp olt float %.sroa.speculated, %46
  %.sroa.speculated.1 = select i1 %47, float %46, float %.sroa.speculated ; 2 uses
  %48 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = load float, ptr %49, align 4, !tbaa !149  ; 2 uses
  %51 = fcmp olt float %.sroa.speculated.1, %50
  %.sroa.speculated.2 = select i1 %51, float %50, float %.sroa.speculated.1 ; 2 uses
  %52 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 12
  %54 = load float, ptr %53, align 4, !tbaa !149  ; 2 uses
  %55 = fcmp olt float %.sroa.speculated.2, %54
  %.sroa.speculated.3 = select i1 %55, float %54, float %.sroa.speculated.2 ; 2 uses
  %56 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %58 = load float, ptr %57, align 4, !tbaa !149  ; 2 uses
  %59 = fcmp olt float %.sroa.speculated.3, %58
  %.sroa.speculated.4 = select i1 %59, float %58, float %.sroa.speculated.3 ; 2 uses
  %60 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 20
  %62 = load float, ptr %61, align 4, !tbaa !149  ; 2 uses
  %63 = fcmp olt float %.sroa.speculated.4, %62
  %.sroa.speculated.5 = select i1 %63, float %62, float %.sroa.speculated.4 ; 2 uses
  %64 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 24
  %66 = load float, ptr %65, align 4, !tbaa !149  ; 2 uses
  %67 = fcmp olt float %.sroa.speculated.5, %66
  %.sroa.speculated.6 = select i1 %67, float %66, float %.sroa.speculated.5 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv435
  %68 = getelementptr inbounds nuw i8, ptr %i.hw, i64 28
  %i.hx = load float, ptr %68, align 4, !tbaa !149 ; 2 uses
  %i.hy = fcmp olt float %.sroa.speculated.6, %i.hx
  %.sroa.speculated.7 = select i1 %i.hy, float %i.hx, float %.sroa.speculated.6 ; 3 uses
  %indvars.iv.next436.7 = add nuw nsw i64 %indvars.iv435, 8 ; 2 uses
  %niter879.next.7 = add i64 %niter879, 8         ; 2 uses
  %niter879.ncmp.7 = icmp eq i64 %niter879.next.7, %unroll_iter878
  br i1 %niter879.ncmp.7, label %._crit_edge383.loopexit.unr-lcssa, label %bb.af, !llvm.loop !844

bb.ag:                                            ; preds = %._crit_edge383
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.hz = call noundef ptr @_Z17enumValueToString19TemperatureCoupling(i32 noundef 2)
  %i.ia = load i32, ptr %i.gy, align 4, !tbaa !152
  %i.ib = call noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.ia)
  %i.ic = load float, ptr %i.hr, align 8, !tbaa !238
  %i.id = fpext float %i.ic to double
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.723, ptr noundef %i.hz, ptr noundef %i.ib, ptr noundef nonnull @.str.349, double noundef %i.id, ptr noundef nonnull @.str.342, double noundef %.0352.lcssa)
  %i.ie = load ptr, ptr %10, align 8, !tbaa !21
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !23
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.ig, ptr %i.ie)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ih = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !22
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %.pre528 = load i32, ptr %i.gy, align 4, !tbaa !152
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.ai
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !22
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.gc

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ac
  %i.is = phi i32 [ %i.hg, %bb.ac ], [ %.pre528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.not233 = icmp eq i32 %i.is, 0
  br i1 %.not233, label %.thread355, label %.thread581

.thread581:                                       ; preds = %bb.ad, %._crit_edge383, %bb.aj
  %i.it = phi i32 [ %i.is, %bb.aj ], [ 2, %._crit_edge383 ], [ 2, %bb.ad ]
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !263
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %.thread581
  %i.ix = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2) ; 3 uses
  %i.iy = trunc i24 %i.ix to i1
  br i1 %i.iy, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !149 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !149 ; 2 uses
  %i.jd = fmul float %i.jc, %i.jc
  %i.je = call float @llvm.fmuladd.f32(float %i.ja, float %i.ja, float %i.jd)
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.jg = load float, ptr %i.jf, align 8, !tbaa !149 ; 2 uses
  %i.jh = call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.jg, float %i.je)
  %i.ji = fcmp ogt float %i.jh, 0.000000e+00
  br i1 %i.ji, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.aq, %bb.ao, %bb.al
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 125, ptr nonnull @.str.724)
  br label %.loopexit361

bb.an:                                            ; preds = %bb.ak, %bb.al
  %i.jj = and i24 %i.ix, 256
  %.not575 = icmp eq i24 %i.jj, 0
  br i1 %.not575, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !149 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.jn = load float, ptr %i.jm, align 8, !tbaa !149 ; 2 uses
  %i.jo = fmul float %i.jn, %i.jn
  %i.jp = call float @llvm.fmuladd.f32(float %i.jl, float %i.jl, float %i.jo)
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !149 ; 2 uses
  %i.js = call noundef float @llvm.fmuladd.f32(float %i.jr, float %i.jr, float %i.jp)
  %i.jt = fcmp ogt float %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ju = and i24 %i.ix, 65536
  %.not576 = icmp eq i24 %i.ju, 0
  br i1 %.not576, label %.loopexit361, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.jw = load float, ptr %i.jv, align 8, !tbaa !149 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !149 ; 2 uses
  %i.jz = fmul float %i.jy, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %i.jw, float %i.jw, float %i.jz)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.kc = load float, ptr %i.kb, align 8, !tbaa !149 ; 2 uses
  %i.kd = call noundef float @llvm.fmuladd.f32(float %i.kc, float %i.kc, float %i.ka)
  %i.ke = fcmp ogt float %i.kd, 0.000000e+00
  br i1 %i.ke, label %bb.am, label %.loopexit361

.loopexit361:                                     ; preds = %bb.ap, %bb.aq, %bb.am
  %.pr354.pre = load i32, ptr %i.gy, align 4, !tbaa !152
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit361, %.thread581
  %.pr354 = phi i32 [ %.pr354.pre, %.loopexit361 ], [ %i.it, %.thread581 ]
  %i.kf = icmp eq i32 %.pr354, 4
  br i1 %i.kf, label %bb.as, label %.thread355

bb.as:                                            ; preds = %bb.ar
  %i.kg = call noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  br i1 %i.kg, label %.thread355, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kh = load i32, ptr %i.gy, align 4, !tbaa !152
  %i.ki = call noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.kh)
  %i.kj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.725, ptr noundef %i.ki) #30 ; 0 uses
  %i.kk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.kk, ptr nonnull %i.e)
  br label %.thread355

.thread355:                                       ; preds = %bb.aj, %bb.at, %bb.as, %bb.ar
  %i.kl = call noundef ptr @_Z28gmx_mtop_atomloop_block_initRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.km = call noundef zeroext i1 @_Z28gmx_mtop_atomloop_block_nextP23gmx_mtop_atomloop_blockPPK6t_atomPi(ptr noundef %i.kl, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %i.km, label %.lr.ph387.outer, label %.critedge416

.lr.ph387.outer:                                  ; preds = %.thread355, %.thread583
  %.0214386.ph = phi i1 [ true, %.thread583 ], [ false, %.thread355 ]
  br label %.lr.ph387

.lr.ph387:                                        ; preds = %.lr.ph387.outer, %bb.av
  %i.kn = load ptr, ptr %i.f, align 8, !tbaa !354 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !856
  %i.kq = fcmp une float %i.kp, 0.000000e+00
  br i1 %i.kq, label %.thread583, label %bb.au

bb.au:                                            ; preds = %.lr.ph387
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !857
  %i.kt = fcmp une float %i.ks, 0.000000e+00
  br i1 %i.kt, label %.thread583, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ku = call noundef zeroext i1 @_Z28gmx_mtop_atomloop_block_nextP23gmx_mtop_atomloop_blockPPK6t_atomPi(ptr noundef %i.kl, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %i.ku, label %.lr.ph387, label %._crit_edge388, !llvm.loop !845

.thread583:                                       ; preds = %.lr.ph387, %bb.au
  %i.kv = call noundef zeroext i1 @_Z28gmx_mtop_atomloop_block_nextP23gmx_mtop_atomloop_blockPPK6t_atomPi(ptr noundef %i.kl, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %i.kv, label %.lr.ph387.outer, label %._crit_edge388.thread, !llvm.loop !845

._crit_edge388:                                   ; preds = %bb.av
  br i1 %.0214386.ph, label %._crit_edge388.thread, label %.critedge416

.critedge416:                                     ; preds = %.thread355, %._crit_edge388
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.val = load i32, ptr %i.kw, align 4, !tbaa !145 ; 2 uses
  switch i32 %.val, label %bb.ay [
    i32 3, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 14, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 13, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 15, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 5, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 4, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 17, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 6, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
  ]

_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread: ; preds = %.critedge416, %.critedge416, %.critedge416, %.critedge416, %.critedge416, %.critedge416, %.critedge416, %.critedge416
  %i.kx = call noundef ptr @_Z17enumValueToString22CoulombInteractionType(i32 noundef %.val)
  %i.ky = call noundef ptr @_Z17enumValueToString22CoulombInteractionType(i32 noundef 0)
  %i.kz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.726, ptr noundef %i.kx, ptr noundef %i.ky) #30 ; 0 uses
  %i.la = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.la, ptr nonnull %i.d)
  br label %bb.ay

._crit_edge388.thread:                            ; preds = %.thread583, %._crit_edge388
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 364
end_hunk_1
begin_hunk_2_@_Z12double_checkP10t_inputrecPA3_fbbP14WarningHandler:bb.a

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(71) %i.a, ptr noundef nonnull align 1 dereferenceable(71) @.str.749, i64 71, i1 false)
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.z, ptr nonnull %i.a)
  %.pr.pre = load i32, ptr %i.q, align 4, !tbaa !135
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.k, %bb.h
  %i.aa = phi i32 [ %i.r, %bb.h ], [ %.pr.pre, %bb.k ] ; 2 uses
  switch i32 %i.aa, label %thread-pre-split.thread [
    i32 2, label %bb.l
    i32 6, label %bb.l
  ]

bb.l:                                             ; preds = %thread-pre-split, %thread-pre-split
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !266
  %i.ad = icmp slt i32 %i.ac, 8
  br i1 %i.ad, label %bb.m, label %thread-pre-split.thread

bb.m:                                             ; preds = %bb.l
  %i.ae = call noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef %i.aa)
  %i.af = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.750, ptr noundef %i.ae) #30 ; 0 uses
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.ag, ptr nonnull %i.a)
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.j, %bb.i, %thread-pre-split, %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !152
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.n, label %.thread

bb.n:                                             ; preds = %thread-pre-split.thread
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 52, ptr nonnull @.str.751)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %thread-pre-split.thread, %bb.n, %bb.g
  br i1 %3, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !152
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 59, ptr nonnull @.str.752)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !268
  %i.ap = fcmp ogt float %i.ao, 9.000000e+01
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(70) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.753, i64 70, i1 false)
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.aq, ptr nonnull %i.a)
  store float 9.000000e+01, ptr %i.an, align 4, !tbaa !268
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !176 ; 2 uses
  %.not39 = icmp eq i32 %i.ar, 1
  br i1 %.not39, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !144
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 119, ptr nonnull @.str.754)
  %.pre58 = load i32, ptr %i.b, align 8, !tbaa !176
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = phi i32 [ %.pre58, %bb.u ], [ %i.ar, %bb.t ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !142 ; 2 uses
  %i.ay = fmul float %i.ax, %i.ax
  %i.az = call noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef %i.av, ptr noundef %1)
  %i.ba = fcmp ult float %i.ay, %i.az
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(162) %i.a, ptr noundef nonnull align 1 dereferenceable(162) @.str.755, i64 162, i1 false)
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.bb, ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #6

declare noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_readir.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 19, ptr %i.a, align 8, !tbaa !19
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !21
  %i.c = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !23
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !17
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !17
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !17
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 211), align 1, !tbaa !22
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev, ptr nonnull @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i16.p0(<4 x i16>, ptr captures(none), <4 x i1>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #29 = { noreturn }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { cold nounwind }
attributes #35 = { cold }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = distinct !{!2, !32}
!3 = distinct !{!3, !32}
!4 = distinct !{!4, !32}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !10, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!20, !18, i64 8}
!24 = !{!"p1 _ZTS20gmx_inputrec_strings", !14, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !28, i64 16}
!34 = !{!15, !15, i64 0}
!35 = !{!"p1 _ZTS8t_lambda", !14, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS10t_expanded", !14, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTS20IntegrationAlgorithm", !10, i64 0}
!40 = !{!"_ZTS12CutoffScheme", !10, i64 0}
!41 = !{!"_ZTS19ComRemovalAlgorithm", !10, i64 0}
!42 = !{!"double", !10, i64 0}
!43 = !{!"bool", !10, i64 0}
!44 = !{!"p1 _ZTSN3gmx8MtsLevelE", !14, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !47, i64 0}
!49 = !{!"float", !10, i64 0}
!50 = !{!"_ZTS13EwaldGeometry", !10, i64 0}
!51 = !{!"_ZTS12LongRangeVdW", !10, i64 0}
!52 = !{!"_ZTS7PbcType", !10, i64 0}
!53 = !{!"_ZTS26EnsembleTemperatureSetting", !10, i64 0}
!54 = !{!"_ZTS19TemperatureCoupling", !10, i64 0}
!55 = !{!"_ZTS16PressureCoupling", !10, i64 0}
!56 = !{!"_ZTS20PressureCouplingType", !10, i64 0}
!57 = !{!"_ZTS15RefCoordScaling", !10, i64 0}
!58 = !{!"_ZTS23PressureCouplingOptions", !55, i64 0, !56, i64 4, !11, i64 8, !49, i64 12, !10, i64 16, !10, i64 52, !57, i64 88}
!59 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !14, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !62, i64 0}
!64 = !{!"_ZTS22CoulombInteractionType", !10, i64 0}
!65 = !{!"_ZTS20InteractionModifiers", !10, i64 0}
!66 = !{!"_ZTS15VanDerWaalsType", !10, i64 0}
!67 = !{!"_ZTS24DispersionCorrectionType", !10, i64 0}
!68 = !{!"_ZTS26FreeEnergyPerturbationType", !10, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !35, i64 0}
!70 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !72, i64 0}
!74 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !73, i64 0}
!75 = !{!"p1 _ZTS9t_simtemp", !14, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !75, i64 0}
!77 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !76, i64 0}
!78 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !79, i64 0}
!81 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !80, i64 0}
!82 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !37, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !85, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTS27DistanceRestraintRefinement", !10, i64 0}
!89 = !{!"_ZTS26DistanceRestraintWeighting", !10, i64 0}
!90 = !{!"_ZTS19ConstraintAlgorithm", !10, i64 0}
!91 = !{!"_ZTS8WallType", !10, i64 0}
!92 = !{!"p1 _ZTS13pull_params_t", !14, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !97, i64 0}
!99 = !{!"p1 _ZTSN3gmx9AwhParamsE", !14, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !99, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !100, i64 0}
!102 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !103, i64 0}
!105 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !104, i64 0}
!106 = !{!"p1 _ZTS5t_rot", !14, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !111, i64 0}
!113 = !{!"_ZTS8SwapType", !10, i64 0}
!114 = !{!"p1 _ZTS12t_swapcoords", !14, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !114, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !115, i64 0}
!117 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !118, i64 0}
!120 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !119, i64 0}
!121 = !{!"p1 _ZTS5t_IMD", !14, i64 0}
!122 = !{!"p1 float", !14, i64 0}
!123 = !{!"p1 int", !14, i64 0}
!124 = !{!"any p2 pointer", !14, i64 0}
!125 = !{!"p2 float", !124, i64 0}
!126 = !{!"_ZTS9t_grpopts", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !122, i64 16, !122, i64 24, !14, i64 32, !123, i64 40, !125, i64 48, !125, i64 56, !122, i64 64, !63, i64 72, !123, i64 96, !123, i64 104, !11, i64 112}
!127 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !14, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !127, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !128, i64 0}
!130 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !131, i64 0}
!133 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !132, i64 0}
!134 = !{!"_ZTS10t_inputrec", !11, i64 0, !39, i64 4, !18, i64 8, !11, i64 16, !18, i64 24, !11, i64 32, !40, i64 36, !11, i64 40, !11, i64 44, !41, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !42, i64 80, !42, i64 88, !43, i64 96, !48, i64 104, !49, i64 128, !49, i64 132, !49, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !49, i64 156, !49, i64 160, !50, i64 164, !49, i64 168, !51, i64 172, !52, i64 176, !43, i64 180, !43, i64 181, !53, i64 184, !49, i64 188, !54, i64 192, !11, i64 196, !43, i64 200, !58, i64 204, !63, i64 296, !63, i64 320, !11, i64 344, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !64, i64 364, !65, i64 368, !49, i64 372, !49, i64 376, !49, i64 380, !49, i64 384, !43, i64 388, !66, i64 392, !65, i64 396, !49, i64 400, !49, i64 404, !67, i64 408, !49, i64 412, !49, i64 416, !68, i64 420, !74, i64 424, !43, i64 432, !81, i64 440, !43, i64 448, !87, i64 456, !88, i64 464, !49, i64 468, !89, i64 472, !43, i64 476, !11, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !11, i64 496, !49, i64 500, !49, i64 504, !11, i64 508, !49, i64 512, !11, i64 516, !11, i64 520, !90, i64 524, !11, i64 528, !49, i64 532, !11, i64 536, !43, i64 540, !49, i64 544, !18, i64 552, !11, i64 560, !91, i64 564, !49, i64 568, !10, i64 572, !10, i64 580, !49, i64 588, !43, i64 592, !98, i64 600, !43, i64 608, !105, i64 616, !43, i64 624, !112, i64 632, !113, i64 640, !120, i64 648, !43, i64 656, !121, i64 664, !49, i64 672, !10, i64 676, !11, i64 712, !11, i64 716, !11, i64 720, !11, i64 724, !49, i64 728, !49, i64 732, !49, i64 736, !49, i64 740, !126, i64 744, !43, i64 864, !43, i64 865, !43, i64 866, !43, i64 867, !127, i64 872, !133, i64 880}
!135 = !{!134, !39, i64 4}
!136 = !{!134, !42, i64 88}
!137 = !{!28, !28, i64 0}
!138 = !{!134, !64, i64 364}
!139 = !{!134, !49, i64 376}
!140 = !{!134, !49, i64 404}
!141 = !{!134, !40, i64 36}
!142 = !{!134, !49, i64 356}
!143 = !{!134, !49, i64 348}
!144 = !{!134, !11, i64 40}
!145 = !{!64, !64, i64 0}
!146 = !{!134, !66, i64 392}
!147 = !{!134, !65, i64 396}
!148 = !{!134, !65, i64 368}
!149 = !{!49, !49, i64 0}
!150 = !{!134, !49, i64 352}
!151 = !{!134, !54, i64 192}
end_hunk_2
begin_hunk_3_@llvm.masked.gather.v4f32.v4p0
!636 = !{!134, !49, i64 736}
!637 = !{!134, !49, i64 740}
!638 = !{!463}
!639 = !{!467}
!640 = !{!178, !15, i64 112}
!641 = !{!518}
!642 = !{!519}
!643 = !{!45, !44, i64 0}
!644 = !{!45, !44, i64 16}
!645 = distinct !{null, null}
!646 = distinct !{!646, !32}
!647 = distinct !{!647, !32}
!648 = !{!277, !276, i64 16}
!649 = !{!272, !271, i64 16}
!650 = distinct !{!650, i1 true, !"_ZN12_GLOBAL__N_115MdpErrorHandler13getOptionNameB5cxx11ERKN3gmx16KeyValueTreePathE"}
!651 = distinct !{!651, !650, !"_ZN12_GLOBAL__N_115MdpErrorHandler13getOptionNameB5cxx11ERKN3gmx16KeyValueTreePathE: argument 0"}
!652 = distinct !{null}
!653 = !{!651}
!654 = distinct !{null, null, null, null, null, null, null}
!655 = distinct !{!655, !32}
!656 = !{!313, !312, i64 24}
!657 = !{!313, !312, i64 16}
!658 = !{!"p1 _ZTSN3gmx3Any8IContentE", !14, i64 0}
!659 = !{!658, !658, i64 0}
!660 = distinct !{!660, !338}
!661 = distinct !{!661, !32}
!662 = distinct !{!662, !338}
!663 = distinct !{!663, i1 true, !"_ZSt19__relocate_object_aI11t_swapGroupS0_SaIS0_EEvPT_PT0_RT1_"}
!664 = distinct !{!664, !663, !"_ZSt19__relocate_object_aI11t_swapGroupS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!665 = distinct !{!665, !663, !"_ZSt19__relocate_object_aI11t_swapGroupS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!666 = distinct !{!666, !32}
!667 = !{!664}
!668 = !{!665}
!669 = !{!664, !665}
!670 = distinct !{!670, !32}
!671 = distinct !{!671, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!672 = distinct !{!672, !671, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!673 = !{!672}
!674 = !{!184, !183, i64 16}
!675 = distinct !{!675, !32, !335, !336}
!676 = distinct !{!676, !32, !335, !336}
!677 = distinct !{!677, !32, !336, !335}
!678 = distinct !{!678, !32, !335, !336}
!679 = distinct !{!679, !32, !335, !336}
!680 = distinct !{!680, !32, !336, !335}
!681 = distinct !{!681, !32, !335, !336}
!682 = distinct !{!682, !32, !335, !336}
!683 = distinct !{!683, !32, !336, !335}
!684 = distinct !{!684, !32, !335, !336}
!685 = distinct !{!685, !32, !335, !336}
!686 = distinct !{!686, !32, !336, !335}
!687 = !{!"branch_weights", i32 8, i32 24}
!688 = distinct !{!688, !32}
!689 = distinct !{!689, !32}
!690 = distinct !{!690, !32}
!691 = distinct !{!691, !32}
!692 = distinct !{!692, !32}
!693 = distinct !{!693, !32, !752}
!694 = distinct !{!694, !32}
!695 = distinct !{!695, !32}
!696 = distinct !{!696, !32}
!697 = distinct !{!697, !32}
!698 = distinct !{!698, !32}
!699 = distinct !{null, null}
!700 = distinct !{!700, i1 true, !"_ZL17convertGroupRvecsP14WarningHandlerN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKci"}
!701 = distinct !{!701, !700, !"_ZL17convertGroupRvecsP14WarningHandlerN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKci: argument 0"}
!702 = distinct !{!702, i1 true, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!703 = distinct !{!703, !702, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!704 = distinct !{!704, !702, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!705 = distinct !{!705, !32}
!706 = distinct !{!706, i1 true, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!707 = distinct !{!707, !706, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!708 = distinct !{!708, !706, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!709 = distinct !{!709, !32}
!710 = distinct !{!710, !32}
!711 = distinct !{!711, !32}
!712 = distinct !{!712, !32}
!713 = distinct !{!713, !32}
!714 = distinct !{!714, !32}
!715 = distinct !{!715, !32}
!716 = distinct !{!716, !32}
!717 = distinct !{!717, !32, !335, !336}
!718 = distinct !{!718, !32, !335, !336}
!719 = distinct !{!719, !32}
!720 = distinct !{!720, !338}
!721 = distinct !{!721, !32}
!722 = distinct !{!722, !32, !336, !335}
!723 = distinct !{!723, !32}
!724 = distinct !{!724, !32}
!725 = distinct !{!725, !32}
!726 = distinct !{!726, !32}
!727 = distinct !{!727, !32, !335, !336}
!728 = distinct !{!728, !32, !335, !336}
!729 = distinct !{!729, !32, !336, !335}
!730 = distinct !{!730, !32, !335, !336}
!731 = distinct !{!731, !32, !335, !336}
!732 = distinct !{!732, !32, !336, !335}
!733 = !{!"_ZTSSt22_Optional_payload_baseINSt10filesystem7__cxx114pathEE", !10, i64 0, !43, i64 40}
!734 = !{!733, !43, i64 40}
!735 = !{!349, !349, i64 0}
!736 = !{!356, !356, i64 0}
!737 = !{!"p1 _ZTS9t_resinfo", !14, i64 0}
!738 = !{!737, !737, i64 0}
!739 = !{!"p1 _ZTS9t_pdbinfo", !14, i64 0}
!740 = !{!739, !739, i64 0}
!741 = !{i64 0, i64 4, !169, i64 8, i64 8, !354, i64 16, i64 8, !736, i64 24, i64 8, !736, i64 32, i64 8, !736, i64 40, i64 4, !169, i64 48, i64 8, !738, i64 56, i64 8, !740, i64 64, i64 1, !203, i64 65, i64 1, !203, i64 66, i64 1, !203, i64 67, i64 1, !203, i64 68, i64 1, !203}
!742 = !{!392, !356, i64 8}
!743 = !{!392, !356, i64 16}
!744 = !{!14, !14, i64 0}
!745 = !{!125, !125, i64 0}
!746 = !{!134, !14, i64 776}
!747 = !{!134, !123, i64 784}
!748 = !{!134, !125, i64 792}
!749 = !{!"_ZTS18SimulatedAnnealing", !10, i64 0}
!750 = !{!749, !749, i64 0}
!751 = !{!134, !125, i64 800}
!752 = !{!"llvm.loop.peeled.count", i32 1}
!753 = !{!281, !11, i64 0}
!754 = !{!134, !121, i64 664}
!755 = !{!"_ZTS5t_IMD", !11, i64 0, !123, i64 8}
!756 = !{!755, !11, i64 0}
!757 = !{!"p1 _ZTSSt8functionIFvRKN3gmx19IndexGroupsAndNamesEEE", !14, i64 0}
!758 = !{!757, !757, i64 0}
!759 = !{!"_ZTSSt8functionIFvRKN3gmx19IndexGroupsAndNamesEEE", !171, i64 0, !14, i64 24}
!760 = !{!759, !14, i64 24}
!761 = !{!701}
!762 = !{i64 0, i64 12, !22}
!763 = !{!704, !703}
!764 = !{!708, !707}
!765 = !{!60, !59, i64 8}
!766 = !{!134, !11, i64 756}
!767 = !{!126, !123, i64 96}
!768 = !{!379, !379, i64 0}
!769 = !{!422, !421, i64 20}
!770 = !{!"_ZTS14gmx_molblock_t", !11, i64 0, !11, i64 4, !63, i64 8, !63, i64 32}
!771 = !{!770, !11, i64 0}
!772 = !{!375, !374, i64 0}
!773 = !{!"_ZTS7t_atoms", !11, i64 0, !353, i64 8, !356, i64 16, !356, i64 24, !356, i64 32, !11, i64 40, !737, i64 48, !739, i64 56, !43, i64 64, !43, i64 65, !43, i64 66, !43, i64 67, !43, i64 68}
!774 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !10, i64 0}
!775 = !{!"_ZTSN3gmx11ListOfListsIiEE", !402, i64 0, !402, i64 24}
!776 = !{!"_ZTS13gmx_moltype_t", !357, i64 0, !773, i64 8, !774, i64 80, !775, i64 2360}
!777 = !{!776, !353, i64 16}
!778 = !{!770, !11, i64 4}
!779 = !{!"_ZTS22t_interaction_function", !15, i64 0, !15, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!780 = !{!779, !11, i64 16}
!781 = !{!776, !11, i64 8}
!782 = !{!126, !122, i64 16}
!783 = !{!134, !11, i64 856}
!784 = distinct !{!784, !32, !335, !336}
!785 = distinct !{!785, !32, !335, !336}
!786 = distinct !{!786, !32}
!787 = distinct !{!787, !32, !336, !335}
!788 = distinct !{!788, i1 false, !"LVerDomain"}
!789 = distinct !{!789, !788}
!790 = distinct !{!790, !788}
!791 = distinct !{!791, !32, !335, !336}
!792 = distinct !{!792, !338}
!793 = distinct !{!793, !32, !335}
!794 = distinct !{!794, i1 false, !"LVerDomain"}
!795 = distinct !{!795, !794}
!796 = distinct !{!796, !794}
!797 = distinct !{!797, !32, !335, !336}
!798 = distinct !{!798, !32, !335, !336}
!799 = distinct !{!799, !338}
!800 = distinct !{!800, !32, !335}
!801 = distinct !{!801, !32}
!802 = !{!420, !420, i64 0}
!803 = !{!"branch_weights", i32 8, i32 56}
!804 = !{!789}
!805 = !{!790}
!806 = !{!795}
!807 = !{!796}
!808 = distinct !{!808, !32}
!809 = distinct !{!809, !32}
!810 = distinct !{!810, !32}
!811 = !{!134, !123, i64 848}
!812 = distinct !{!812, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!813 = distinct !{!813, !812, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!814 = distinct !{!814, !812, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!815 = distinct !{!815, !32}
!816 = distinct !{!816, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!817 = distinct !{!817, !816, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!818 = distinct !{!818, !816, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!819 = !{!813}
!820 = !{!814}
!821 = !{!813, !814}
!822 = !{!817}
!823 = !{!818}
!824 = !{!817, !818}
!825 = distinct !{!825, !338}
!826 = distinct !{!826, !32}
!827 = distinct !{!827, !32}
!828 = distinct !{!828, !338}
!829 = distinct !{!829, !32, !335, !336}
!830 = distinct !{!830, !32, !336, !335}
!831 = distinct !{!831, !32, !335, !336}
!832 = distinct !{!832, !32, !336, !335}
!833 = distinct !{!833, !32, !335, !336}
!834 = distinct !{!834, !32, !336, !335}
!835 = !{!422, !49, i64 0}
!836 = distinct !{!836, !338}
!837 = distinct !{!837, !32}
!838 = distinct !{!838, !32}
!839 = distinct !{!839, !32}
!840 = distinct !{!840, !32, !335, !336}
!841 = distinct !{!841, !32, !335, !336}
!842 = distinct !{!842, !32, !336, !335}
!843 = distinct !{!843, !338}
!844 = distinct !{!844, !32}
!845 = distinct !{!845, !32}
!846 = distinct !{!846, !32}
!847 = distinct !{!847, !32}
!848 = distinct !{!848, !32}
!849 = distinct !{!849, !32}
!850 = distinct !{!850, !32}
!851 = distinct !{!851, !32, !335, !336}
!852 = distinct !{!852, !32, !335, !336}
!853 = distinct !{!853, !32, !336, !335}
!854 = distinct !{!854, !32}
!855 = distinct !{!855, !32}
!856 = !{!422, !49, i64 4}
!857 = !{!422, !49, i64 12}
!858 = !{!408, !11, i64 8}
!859 = !{!408, !42, i64 64}
!860 = !{!289, !285, i64 40}
!861 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !10, i64 0, !43, i64 32}
!862 = !{!861, !43, i64 32}
!863 = !{!358, !14, i64 8}
!864 = !{!358, !14, i64 0}
!865 = !{!"_ZTS19InteractionFunction", !10, i64 0}
!866 = !{!865, !865, i64 0}
!867 = distinct !{!867, !32, !335, !336}
!868 = distinct !{!868, !32, !335, !336}
!869 = distinct !{!869, !32, !336, !335}
!870 = distinct !{!870, !32}
end_hunk_3
