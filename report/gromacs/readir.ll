Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readir?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_Z27processConstantAccelerationP10t_inputrecRK10gmx_mtop_t:bb.a
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  %wide.trip.count108.1 = and i64 %i.i, 2147483647
  %min.iters.check134 = icmp samesign ult i64 %wide.trip.count, 9
  br i1 %min.iters.check134, label %scalar.ph133.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph89.1
  %i.gh = and i64 %i.i, 7                         ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  %i.gj = select i1 %i.gi, i64 8, i64 %i.gh
  %n.vec136 = sub nsw i64 %wide.trip.count, %i.gj ; 2 uses
  %broadcast.splatinsert137 = insertelement <8 x float> poison, float %i.gf, i64 0
  %broadcast.splat138 = shufflevector <8 x float> %broadcast.splatinsert137, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next145, %vector.body139 ]
  %vec.ind141 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph135 ], [ %vec.ind.next146, %vector.body139 ] ; 2 uses
  %wide.gep142 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.1, <8 x i64> %vec.ind141 ; 2 uses
  %i.gk = extractelement <8 x ptr> %wide.gep142, i64 0
  %wide.vec143 = load <24 x float>, ptr %i.gk, align 4, !tbaa !149
  %strided.vec144 = shufflevector <24 x float> %wide.vec143, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.gl = fsub <8 x float> %strided.vec144, %broadcast.splat138
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gl, <8 x ptr> align 4 %wide.gep142, <8 x i1> splat (i1 true)), !tbaa !149
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %vec.ind.next146 = add nuw nsw <8 x i64> %vec.ind141, splat (i64 8)
  %i.gm = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.gm, label %scalar.ph133.preheader, label %vector.body139, !llvm.loop !831

scalar.ph133.preheader:                           ; preds = %vector.body139, %.lr.ph89.1
  %indvars.iv105.1.ph = phi i64 [ 0, %.lr.ph89.1 ], [ %n.vec136, %vector.body139 ]
  br label %scalar.ph133

scalar.ph133:                                     ; preds = %scalar.ph133.preheader, %scalar.ph133
  %indvars.iv105.1 = phi i64 [ %indvars.iv.next106.1, %scalar.ph133 ], [ %indvars.iv105.1.ph, %scalar.ph133.preheader ] ; 2 uses
  %gep.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.1, i64 %indvars.iv105.1 ; 2 uses
  %i.gn = load float, ptr %gep.1, align 4, !tbaa !149
  %i.go = fsub float %i.gn, %i.gf
  store float %i.go, ptr %gep.1, align 4, !tbaa !149
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105.1, 1 ; 2 uses
  %exitcond109.1.not = icmp eq i64 %indvars.iv.next106.1, %wide.trip.count108.1
  br i1 %exitcond109.1.not, label %.loopexit.1, label %scalar.ph133, !llvm.loop !832

.loopexit.1:                                      ; preds = %scalar.ph133, %bb.ae, %.loopexit
  %i.gp = call noundef float @llvm.fabs.f32(float %.lcssa166)
  %i.gq = fpext float %i.gp to double
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

.critedge:                                        ; preds = %bb.d, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.e
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
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !149 ; 2 uses
  %i.ar = fcmp olt float %.0372.epil, %i.aq
  %.sroa.speculated343.epil = select i1 %i.ar, float %i.aq, float %.0372.epil ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.epil
  %i.at = load float, ptr %i.as, align 4, !tbaa !149 ; 2 uses
  %i.au = fcmp olt float %.0351371.epil, %i.at
  %.sroa.speculated338.epil = select i1 %i.au, float %i.at, float %.0351371.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !836

._crit_edge:                                      ; preds = %bb.l, %._crit_edge.unr-lcssa
  %.sroa.speculated343.lcssa = phi float [ %.sroa.speculated343.3, %._crit_edge.unr-lcssa ], [ %.sroa.speculated343.epil, %bb.l ] ; 2 uses
  %.sroa.speculated338.lcssa = phi float [ %.sroa.speculated338.3, %._crit_edge.unr-lcssa ], [ %.sroa.speculated338.epil, %bb.l ]
  %i.av = fpext float %.sroa.speculated338.lcssa to double ; 2 uses
  %i.aw = fcmp ogt float %.sroa.speculated343.lcssa, 0.000000e+00
  br i1 %i.aw, label %bb.n, label %._crit_edge.thread

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.m ] ; 6 uses
  %.0372 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %.sroa.speculated343.3, %bb.m ] ; 2 uses
  %.0351371 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %.sroa.speculated338.3, %bb.m ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.m ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !149 ; 2 uses
  %i.az = fcmp olt float %.0372, %i.ay
  %.sroa.speculated343 = select i1 %i.az, float %i.ay, float %.0372 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !149 ; 2 uses
  %i.bc = fcmp olt float %.0351371, %i.bb
  %.sroa.speculated338 = select i1 %i.bc, float %i.bb, float %.0351371 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.be = load float, ptr %i.bd, align 4, !tbaa !149 ; 2 uses
  %i.bf = fcmp olt float %.sroa.speculated343, %i.be
  %.sroa.speculated343.1 = select i1 %i.bf, float %i.be, float %.sroa.speculated343 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !149 ; 2 uses
  %i.bi = fcmp olt float %.sroa.speculated338, %i.bh
  %.sroa.speculated338.1 = select i1 %i.bi, float %i.bh, float %.sroa.speculated338 ; 2 uses
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !149 ; 2 uses
  %i.bl = fcmp olt float %.sroa.speculated343.1, %i.bk
  %.sroa.speculated343.2 = select i1 %i.bl, float %i.bk, float %.sroa.speculated343.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !149 ; 2 uses
  %i.bo = fcmp olt float %.sroa.speculated338.1, %i.bn
  %.sroa.speculated338.2 = select i1 %i.bo, float %i.bn, float %.sroa.speculated338.1 ; 2 uses
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !149 ; 2 uses
  %i.br = fcmp olt float %.sroa.speculated343.2, %i.bq
  %.sroa.speculated343.3 = select i1 %i.br, float %i.bq, float %.sroa.speculated343.2 ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !149 ; 2 uses
  %i.bu = fcmp olt float %.sroa.speculated338.2, %i.bt
  %.sroa.speculated338.3 = select i1 %i.bu, float %i.bt, float %.sroa.speculated338.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !837

bb.n:                                             ; preds = %._crit_edge
  %i.bv = fmul double %i.av, 5.000000e-01
  %i.bw = fpext float %i.y to double              ; 2 uses
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = fpext float %.sroa.speculated343.lcssa to double ; 2 uses
  %i.bz = fmul nnan double %i.by, f0x3F91072C483AF26D
  %i.ca = fdiv double %i.bx, %i.bz                ; 2 uses
  %i.cb = fcmp ogt double %i.ca, f0x3F60624DEFFFFFFF
  br i1 %i.cb, label %bb.o, label %._crit_edge.thread

bb.o:                                             ; preds = %bb.n
  %i.cc = fptrunc double %i.ca to float           ; 2 uses
  %i.cd = fmul nnan float %i.cc, 1.000000e+02
  %i.ce = fpext float %i.cd to double
  %i.cf = fmul nnan float %i.y, 1.000000e-03
  %i.cg = fdiv float %i.cf, %i.cc
  %i.ch = fpext float %i.cg to double
  %i.ci = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.717, double noundef %i.bw, double noundef %i.by, double noundef %i.av, double noundef %i.ce, double noundef f0x3FB99999A0000000, double noundef %i.ch) #30 ; 0 uses
  %i.cj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.cj, ptr nonnull %i.e)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge, %bb.o, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %.critedge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !151 ; 2 uses
  %i.cm = and i32 %i.cl, -2
  %switch = icmp eq i32 %i.cm, 4
  br i1 %switch, label %.preheader365, label %.loopexit364

.preheader365:                                    ; preds = %._crit_edge.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !413
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %.preheader365
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 3 uses
  br label %bb.p

._crit_edge377.loopexit:                          ; preds = %_ZL10_low_checkbPKcP14WarningHandler.exit249
  %.pre527 = load i32, ptr %i.ck, align 8, !tbaa !151
  %i.cr = icmp slt i32 %i.dk, 1
  br label %._crit_edge377

._crit_edge377:                                   ; preds = %._crit_edge377.loopexit, %.preheader365
  %.not618 = phi i1 [ %i.cr, %._crit_edge377.loopexit ], [ true, %.preheader365 ]
  %i.cs = phi i32 [ %.pre527, %._crit_edge377.loopexit ], [ %i.cl, %.preheader365 ]
  %i.ct = icmp eq i32 %i.cs, 5
  br i1 %i.ct, label %bb.s, label %.loopexit364

bb.p:                                             ; preds = %.lr.ph376, %_ZL10_low_checkbPKcP14WarningHandler.exit249
  %indvars.iv429 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next430, %_ZL10_low_checkbPKcP14WarningHandler.exit249 ] ; 5 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv429 to i32 ; 2 uses
  %i.cv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.718, i32 noundef %i.cu) #30 ; 0 uses
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !414 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !149
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv429
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !149 ; 2 uses
  %i.da = fcmp une float %i.cx, %i.cz
  br i1 %i.da, label %bb.q, label %_ZL10_low_checkbPKcP14WarningHandler.exit

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_Z12triple_checkPKcRK10t_inputrecRK10gmx_mtop_tP14WarningHandler:bb.a
  %vec.phi655 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi656 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fx, %vector.body ]
  %vec.phi657 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fy, %vector.body ]
  %vec.phi658 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fz, %vector.body ]
  %vec.phi659 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi660 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi661 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %vec.phi662 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi663 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 288
  %wide.vec = load <24 x i32>, ptr %i.fe, align 4, !tbaa !169 ; 3 uses
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec664 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec665 = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec666 = load <24 x i32>, ptr %i.fg, align 4, !tbaa !169 ; 3 uses
  %strided.vec667 = shufflevector <24 x i32> %wide.vec666, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec668 = shufflevector <24 x i32> %wide.vec666, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec669 = shufflevector <24 x i32> %wide.vec666, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec670 = load <24 x i32>, ptr %i.fi, align 4, !tbaa !169 ; 3 uses
  %strided.vec671 = shufflevector <24 x i32> %wide.vec670, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec672 = shufflevector <24 x i32> %wide.vec670, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec673 = shufflevector <24 x i32> %wide.vec670, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec674 = load <24 x i32>, ptr %i.fk, align 4, !tbaa !169 ; 3 uses
  %strided.vec675 = shufflevector <24 x i32> %wide.vec674, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec676 = shufflevector <24 x i32> %wide.vec674, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec677 = shufflevector <24 x i32> %wide.vec674, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.fl = icmp ne <8 x i32> %strided.vec, zeroinitializer
  %i.fm = icmp ne <8 x i32> %strided.vec667, zeroinitializer
  %i.fn = icmp ne <8 x i32> %strided.vec671, zeroinitializer
  %i.fo = icmp ne <8 x i32> %strided.vec675, zeroinitializer
  %i.fp = or <8 x i1> %vec.phi660, %i.fl          ; 2 uses
  %i.fq = or <8 x i1> %vec.phi661, %i.fm          ; 2 uses
  %i.fr = or <8 x i1> %vec.phi662, %i.fn          ; 2 uses
  %i.fs = or <8 x i1> %vec.phi663, %i.fo          ; 2 uses
  %i.ft = icmp ne <8 x i32> %strided.vec664, zeroinitializer
  %i.fu = icmp ne <8 x i32> %strided.vec668, zeroinitializer
  %i.fv = icmp ne <8 x i32> %strided.vec672, zeroinitializer
  %i.fw = icmp ne <8 x i32> %strided.vec676, zeroinitializer
  %i.fx = or <8 x i1> %vec.phi656, %i.ft          ; 2 uses
  %i.fy = or <8 x i1> %vec.phi657, %i.fu          ; 2 uses
  %i.fz = or <8 x i1> %vec.phi658, %i.fv          ; 2 uses
  %i.ga = or <8 x i1> %vec.phi659, %i.fw          ; 2 uses
  %i.gb = icmp ne <8 x i32> %strided.vec665, zeroinitializer
  %i.gc = icmp ne <8 x i32> %strided.vec669, zeroinitializer
  %i.gd = icmp ne <8 x i32> %strided.vec673, zeroinitializer
  %i.ge = icmp ne <8 x i32> %strided.vec677, zeroinitializer
  %i.gf = or <8 x i1> %vec.phi, %i.gb             ; 2 uses
  %i.gg = or <8 x i1> %vec.phi653, %i.gc          ; 2 uses
  %i.gh = or <8 x i1> %vec.phi654, %i.gd          ; 2 uses
  %i.gi = or <8 x i1> %vec.phi655, %i.ge          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.gg, %i.gf
  %bin.rdx678 = or <8 x i1> %i.gh, %bin.rdx
  %bin.rdx679 = or <8 x i1> %i.gi, %bin.rdx678
  %bin.rdx679.fr = freeze <8 x i1> %bin.rdx679
  %i.gk = bitcast <8 x i1> %bin.rdx679.fr to i8
  %i.gl = icmp ne i8 %i.gk, 0
  %rdx.select = or i1 %i.gl, %i.ex                ; 3 uses
  %bin.rdx680 = or <8 x i1> %i.fy, %i.fx
  %bin.rdx681 = or <8 x i1> %i.fz, %bin.rdx680
  %bin.rdx682 = or <8 x i1> %i.ga, %bin.rdx681
  %bin.rdx682.fr = freeze <8 x i1> %bin.rdx682
  %i.gm = bitcast <8 x i1> %bin.rdx682.fr to i8
  %i.gn = icmp ne i8 %i.gm, 0
  %rdx.select683 = or i1 %i.gn, %i.ev             ; 3 uses
  %bin.rdx684 = or <8 x i1> %i.fq, %i.fp
  %bin.rdx685 = or <8 x i1> %i.fr, %bin.rdx684
  %bin.rdx686 = or <8 x i1> %i.fs, %bin.rdx685
  %bin.rdx686.fr = freeze <8 x i1> %bin.rdx686
  %i.go = bitcast <8 x i1> %bin.rdx686.fr to i8
  %i.gp = icmp ne i8 %i.go, 0
  %rdx.select687 = or i1 %i.gp, %i.et             ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !423

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %i.ex, %vector.main.loop.iter.check ]
  %bc.merge.rdx688 = phi i1 [ %rdx.select683, %vec.epilog.iter.check ], [ %i.ev, %vector.main.loop.iter.check ]
  %bc.merge.rdx689 = phi i1 [ %rdx.select687, %vec.epilog.iter.check ], [ %i.et, %vector.main.loop.iter.check ]
  %n.vec690 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %i.gq = xor i1 %bc.merge.rdx, %i.ex
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.gq, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.gr = xor i1 %bc.merge.rdx688, %i.ev
  %broadcast.splatinsert691 = insertelement <4 x i1> poison, i1 %i.gr, i64 0
  %broadcast.splat692 = shufflevector <4 x i1> %broadcast.splatinsert691, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.gs = xor i1 %bc.merge.rdx689, %i.et
  %broadcast.splatinsert693 = insertelement <4 x i1> poison, i1 %i.gs, i64 0
  %broadcast.splat694 = shufflevector <4 x i1> %broadcast.splatinsert693, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index695 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next703, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi696 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr796, %vec.epilog.vector.body ]
  %vec.phi697 = phi <4 x i1> [ %broadcast.splat692, %vec.epilog.ph ], [ %.fr797, %vec.epilog.vector.body ]
  %vec.phi698 = phi <4 x i1> [ %broadcast.splat694, %vec.epilog.ph ], [ %.fr798, %vec.epilog.vector.body ]
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %index695
  %wide.vec699 = load <12 x i32>, ptr %i.gt, align 4, !tbaa !169 ; 3 uses
  %strided.vec700 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec701 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec702 = shufflevector <12 x i32> %wide.vec699, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.gu = icmp ne <4 x i32> %strided.vec700, zeroinitializer
  %i.gv = or <4 x i1> %vec.phi698, %i.gu
  %.fr798 = freeze <4 x i1> %i.gv                 ; 2 uses
  %i.gw = icmp ne <4 x i32> %strided.vec701, zeroinitializer
  %i.gx = or <4 x i1> %vec.phi697, %i.gw
  %.fr797 = freeze <4 x i1> %i.gx                 ; 2 uses
  %i.gy = icmp ne <4 x i32> %strided.vec702, zeroinitializer
  %i.gz = or <4 x i1> %vec.phi696, %i.gy
  %.fr796 = freeze <4 x i1> %i.gz                 ; 2 uses
  %index.next703 = add nuw i64 %index695, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next703, %n.vec690
  br i1 %i.ha, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !841

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hb = bitcast <4 x i1> %.fr796 to i4
  %i.hc = icmp ne i4 %i.hb, 0
  %rdx.select704 = or i1 %i.hc, %i.ex             ; 2 uses
  %i.hd = bitcast <4 x i1> %.fr797 to i4
  %i.he = icmp ne i4 %i.hd, 0
  %rdx.select705 = or i1 %i.he, %i.ev             ; 2 uses
  %i.hf = bitcast <4 x i1> %.fr798 to i4
  %i.hg = icmp ne i4 %i.hf, 0
  %rdx.select706 = or i1 %i.hg, %i.et             ; 2 uses
  %cmp.n707 = icmp eq i64 %n.vec690, %wide.trip.count.i
  br i1 %cmp.n707, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.7.0.i.ph = phi i1 [ %i.ex, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select704, %vec.epilog.middle.block ]
  %.sroa.4.0.i.ph = phi i1 [ %i.ev, %iter.check ], [ %rdx.select683, %vec.epilog.iter.check ], [ %rdx.select705, %vec.epilog.middle.block ]
  %.sroa.0.0.i.ph = phi i1 [ %i.et, %iter.check ], [ %rdx.select687, %vec.epilog.iter.check ], [ %rdx.select706, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec690, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.7.0.i = phi i1 [ %.sroa.7.2.i, %.preheader.i ], [ %.sroa.7.0.i.ph, %.preheader.i.preheader ]
  %.sroa.4.0.i = phi i1 [ %.sroa.4.2.i, %.preheader.i ], [ %.sroa.4.0.i.ph, %.preheader.i.preheader ]
  %.sroa.0.0.i = phi i1 [ %spec.select.i, %.preheader.i ], [ %.sroa.0.0.i.ph, %.preheader.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.fc, i64 %indvars.iv.i ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !169
  %.not.i = icmp ne i32 %i.hi, 0
  %spec.select.i = select i1 %.not.i, i1 true, i1 %.sroa.0.0.i ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !169
  %.not.1.i = icmp ne i32 %i.hk, 0
  %.sroa.4.2.i = select i1 %.not.1.i, i1 true, i1 %.sroa.4.0.i ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !169
  %.not.2.i = icmp ne i32 %i.hm, 0
  %.sroa.7.2.i = select i1 %.not.2.i, i1 true, i1 %.sroa.7.0.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, label %.preheader.i, !llvm.loop !842

_ZL21haveAbsoluteReferenceRK10t_inputrec.exit:    ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.v
  %.sroa.7.1.i = phi i1 [ %i.ex, %bb.v ], [ %rdx.select704, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.sroa.7.2.i, %.preheader.i ]
  %.sroa.4.1.i = phi i1 [ %i.ev, %bb.v ], [ %rdx.select705, %vec.epilog.middle.block ], [ %rdx.select683, %middle.block ], [ %.sroa.4.2.i, %.preheader.i ]
  %.sroa.0.1.i = phi i1 [ %i.et, %bb.v ], [ %rdx.select706, %vec.epilog.middle.block ], [ %rdx.select687, %middle.block ], [ %spec.select.i, %.preheader.i ]
  %or.cond.i251 = select i1 %.sroa.0.1.i, i1 %.sroa.4.1.i, i1 false
  %i.hn = select i1 %or.cond.i251, i1 %.sroa.7.1.i, i1 false
  br i1 %i.hn, label %.critedge2, label %bb.w

bb.w:                                             ; preds = %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit
  %i.ho = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2)
  %i.hp = and i24 %i.ho, 65793
  %i.hq = icmp eq i24 %i.hp, 65793
  br i1 %i.hq, label %.critedge2, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !173
  %i.ht = icmp slt i64 %i.hs, 11
  br i1 %i.ht, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hu = load i32, ptr %i.ck, align 8, !tbaa !151
  %i.hv = add i32 %i.hu, -6
  %spec.select = icmp ult i32 %i.hv, -2
  br i1 %spec.select, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %bb.y
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 158, ptr nonnull @.str.721)
  br label %.critedge2

.critedge2:                                       ; preds = %bb.w, %_ZL21haveAbsoluteReferenceRK10t_inputrec.exit, %.loopexit364, %bb.x, %.thread, %bb.z, %bb.y
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 8 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !152 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 5
  br i1 %i.hy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.critedge2
  %i.hz = call noundef zeroext i1 @_Z23haveEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  br i1 %i.hz, label %thread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ia = load i32, ptr %i.hw, align 4, !tbaa !152
  %i.ib = call noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.ia)
  %i.ic = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.722, ptr noundef %i.ib) #30 ; 0 uses
  %i.id = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.id, ptr nonnull %i.e)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.aa, %bb.ab
  %.pr = load i32, ptr %i.hw, align 4, !tbaa !152
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split, %.critedge2
  %i.ie = phi i32 [ %.pr, %thread-pre-split ], [ %i.hx, %.critedge2 ] ; 2 uses
  %i.if = icmp eq i32 %i.ie, 2
  br i1 %i.if, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ig = load i32, ptr %i.ck, align 8, !tbaa !151
  %i.ih = icmp eq i32 %i.ig, 2
  br i1 %i.ih, label %.preheader362, label %.thread581

.preheader362:                                    ; preds = %bb.ad
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !413 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph382, label %._crit_edge383

.lr.ph382:                                        ; preds = %.preheader362
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !414 ; 9 uses
  %wide.trip.count438 = zext nneg i32 %i.ij to i64 ; 2 uses
  %xtraiter873 = and i64 %wide.trip.count438, 7   ; 3 uses
  %i.in = icmp ult i32 %i.ij, 8
  br i1 %i.in, label %.epil.preheader872, label %.lr.ph382.new

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
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435.epil
  %i.ip = load float, ptr %i.io, align 4, !tbaa !149 ; 2 uses
  %i.iq = fcmp olt float %.0352380.epil, %i.ip
  %.sroa.speculated.epil = select i1 %i.iq, float %i.ip, float %.0352380.epil ; 2 uses
  %indvars.iv.next436.epil = add nuw nsw i64 %indvars.iv435.epil, 1
  %epil.iter874.next = add i64 %epil.iter874, 1   ; 2 uses
  %epil.iter874.cmp.not = icmp eq i64 %epil.iter874.next, %xtraiter873
  br i1 %epil.iter874.cmp.not, label %._crit_edge383.loopexit, label %bb.ae, !llvm.loop !843

._crit_edge383.loopexit:                          ; preds = %bb.ae, %._crit_edge383.loopexit.unr-lcssa
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.7, %._crit_edge383.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %bb.ae ]
  %i.ir = fpext float %.sroa.speculated.lcssa to double
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.preheader362
  %.0352.lcssa = phi double [ 0.000000e+00, %.preheader362 ], [ %i.ir, %._crit_edge383.loopexit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.it = load float, ptr %i.is, align 8, !tbaa !238
  %i.iu = fpext float %i.it to double
  %i.iv = fmul double %.0352.lcssa, 1.900000e+00
  %i.iw = fcmp ogt double %i.iv, %i.iu
  br i1 %i.iw, label %bb.ag, label %.thread581

bb.af:                                            ; preds = %bb.af, %.lr.ph382.new
  %indvars.iv435 = phi i64 [ 0, %.lr.ph382.new ], [ %indvars.iv.next436.7, %bb.af ] ; 9 uses
  %.0352380 = phi float [ 0.000000e+00, %.lr.ph382.new ], [ %.sroa.speculated.7, %bb.af ] ; 2 uses
  %niter879 = phi i64 [ 0, %.lr.ph382.new ], [ %niter879.next.7, %bb.af ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !149 ; 2 uses
  %i.iz = fcmp olt float %.0352380, %i.iy
  %.sroa.speculated = select i1 %i.iz, float %i.iy, float %.0352380 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !149 ; 2 uses
  %i.jd = fcmp olt float %.sroa.speculated, %i.jc
  %.sroa.speculated.1 = select i1 %i.jd, float %i.jc, float %.sroa.speculated ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !149 ; 2 uses
  %i.jh = fcmp olt float %.sroa.speculated.1, %i.jg
  %.sroa.speculated.2 = select i1 %i.jh, float %i.jg, float %.sroa.speculated.1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !149 ; 2 uses
  %i.jl = fcmp olt float %.sroa.speculated.2, %i.jk
  %.sroa.speculated.3 = select i1 %i.jl, float %i.jk, float %.sroa.speculated.2 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !149 ; 2 uses
  %i.jp = fcmp olt float %.sroa.speculated.3, %i.jo
  %.sroa.speculated.4 = select i1 %i.jp, float %i.jo, float %.sroa.speculated.3 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.js = load float, ptr %i.jr, align 4, !tbaa !149 ; 2 uses
  %i.jt = fcmp olt float %.sroa.speculated.4, %i.js
  %.sroa.speculated.5 = select i1 %i.jt, float %i.js, float %.sroa.speculated.4 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !149 ; 2 uses
  %i.jx = fcmp olt float %.sroa.speculated.5, %i.jw
  %.sroa.speculated.6 = select i1 %i.jx, float %i.jw, float %.sroa.speculated.5 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv435
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 28
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !149 ; 2 uses
  %i.kb = fcmp olt float %.sroa.speculated.6, %i.ka
  %.sroa.speculated.7 = select i1 %i.kb, float %i.ka, float %.sroa.speculated.6 ; 3 uses
  %indvars.iv.next436.7 = add nuw nsw i64 %indvars.iv435, 8 ; 2 uses
  %niter879.next.7 = add i64 %niter879, 8         ; 2 uses
  %niter879.ncmp.7 = icmp eq i64 %niter879.next.7, %unroll_iter878
  br i1 %niter879.ncmp.7, label %._crit_edge383.loopexit.unr-lcssa, label %bb.af, !llvm.loop !844

bb.ag:                                            ; preds = %._crit_edge383
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.kc = call noundef ptr @_Z17enumValueToString19TemperatureCoupling(i32 noundef 2)
  %i.kd = load i32, ptr %i.hw, align 4, !tbaa !152
  %i.ke = call noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.kd)
  %i.kf = load float, ptr %i.is, align 8, !tbaa !238
  %i.kg = fpext float %i.kf to double
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.723, ptr noundef %i.kc, ptr noundef %i.ke, ptr noundef nonnull @.str.349, double noundef %i.kg, ptr noundef nonnull @.str.342, double noundef %.0352.lcssa)
  %i.kh = load ptr, ptr %10, align 8, !tbaa !21
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !23
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.kj, ptr %i.kh)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kk = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !22
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %.pre528 = load i32, ptr %i.hw, align 4, !tbaa !152
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.ai
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !22
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.gc

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ac
  %i.kv = phi i32 [ %i.ie, %bb.ac ], [ %.pre528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.not233 = icmp eq i32 %i.kv, 0
  br i1 %.not233, label %.thread355, label %.thread581

.thread581:                                       ; preds = %bb.ad, %._crit_edge383, %bb.aj
  %i.kw = phi i32 [ %i.kv, %bb.aj ], [ 2, %._crit_edge383 ], [ 2, %bb.ad ]
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !263
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %.thread581
  %i.la = call fastcc i24 @_ZL22havePositionRestraintsRK10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(768) %2) ; 3 uses
  %i.lb = trunc i24 %i.la to i1
  br i1 %i.lb, label %bb.al, label %bb.an
end_hunk_1
