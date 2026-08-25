Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/subdivision2d?download=true
inline.NumInlined: 844
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8Subdiv2D6insertENS_6Point_IfEE:bb.a

bb.an:                                            ; preds = %bb.am
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.in
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !12 ; 2 uses
  %i.mi = ashr i32 %i.mh, 2
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.hs, i64 %i.mj
  %i.ml = and i32 %i.mh, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !12
  %i.mp = xor i32 %i.mo, 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.an
  %i.mq = phi ptr [ %i.hs, %bb.an ], [ %i.lv, %bb.aj ]
  %storemerge = phi i32 [ %i.mp, %bb.an ], [ %i.mc, %bb.aj ]
  %i.mr = add nuw nsw i32 %.04491, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.mr, %i.hr
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !59

.loopexit:                                        ; preds = %bb.ao, %bb.am, %bb.ah, %._crit_edge97
  %.0 = phi i32 [ %.0.pre, %._crit_edge97 ], [ %i.dw, %bb.ah ], [ %i.dw, %bb.am ], [ %i.dw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ms = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i32 %.0

bb.ar:                                            ; preds = %bb.ak, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.me, %bb.al ], [ %i.d, %bb.f ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.md, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn58.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8Subdiv2D6insertERKSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv8Subdiv2D6insertERKSt6vectorINS_6Point_IfEESaIS3_EEE25__cv_trace_location_fn496)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.h = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.a ]
  %.07 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.a ]    ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.i, align 4
  %i.j = invoke noundef i32 @_ZN2cv8Subdiv2D6insertENS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(80) %0, <2 x float> %.sroa.0.0.copyload)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.07, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.m = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !64

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN2cv8Subdiv2D12clearVoronoiEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8    ; 7 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5                   ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.010 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.010 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  store i32 0, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.010 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  store i32 0, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  store i32 0, ptr %i.r, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.010 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 124
  store i32 0, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 116
  store i32 0, ptr %i.u, align 4, !tbaa !12
  %i.v = add nuw i64 %.010, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !65

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.010.epil = phi i64 [ %i.z, %.lr.ph.epil ], [ %.010.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.010.epil ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 0, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !12
  %i.z = add nuw i64 %.010.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !66

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !13    ; 8 uses
  %.not15 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not15, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %._crit_edge
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.ai = icmp eq i64 %i.af, 16
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph13.new

.lr.ph13.new:                                     ; preds = %.lr.ph13
  %unroll_iter25 = and i64 %i.ag, -2
  %.promoted = load i32, ptr %i.ah, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph13.new
  %1 = phi i32 [ %.promoted, %.lr.ph13.new ], [ %3, %bb.f ] ; 2 uses
  %.111 = phi i64 [ 0, %.lr.ph13.new ], [ %i.ba, %bb.f ] ; 5 uses
  %niter26 = phi i64 [ 0, %.lr.ph13.new ], [ %niter26.next.1, %bb.f ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.111
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = trunc i64 %.111 to i32                  ; 2 uses
  %sext = shl i64 %.111, 32
  %i.ao = ashr exact i64 %sext, 28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ao ; 2 uses
  store i32 %1, ptr %i.ap, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 -1, ptr %i.aq, align 4, !tbaa !43
  store i32 %i.an, ptr %i.ah, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %2 = phi i32 [ %1, %bb.b ], [ %i.an, %bb.c ]    ; 2 uses
  %i.ar = or disjoint i64 %.111, 1                ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !43
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = trunc i64 %i.ar to i32                  ; 2 uses
  %sext.1 = shl i64 %i.ar, 32
  %i.ax = ashr exact i64 %sext.1, 28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ax ; 2 uses
  store i32 %2, ptr %i.ay, align 4, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 -1, ptr %i.az, align 4, !tbaa !43
  store i32 %i.aw, ptr %i.ah, align 4, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %3 = phi i32 [ %i.aw, %bb.e ], [ %2, %bb.d ]
  %i.ba = add nuw i64 %.111, 2                    ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %._crit_edge14.loopexit.unr-lcssa, label %bb.b, !llvm.loop !68

._crit_edge14.loopexit.unr-lcssa:                 ; preds = %bb.f
  %i.bb = and i64 %i.af, 16
  %lcmp.mod23.not = icmp eq i64 %i.bb, 0
  br i1 %lcmp.mod23.not, label %._crit_edge14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge14.loopexit.unr-lcssa, %.lr.ph13
  %.111.epil.init = phi i64 [ 0, %.lr.ph13 ], [ %i.ba, %._crit_edge14.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod24 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.111.epil.init
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %._crit_edge14

bb.g:                                             ; preds = %.epil.preheader
  %i.bg = trunc i64 %.111.epil.init to i32
  %i.bh = load i32, ptr %i.ah, align 4, !tbaa !35
  %sext.epil = shl i64 %.111.epil.init, 32
  %i.bi = ashr exact i64 %sext.epil, 28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bi ; 2 uses
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 -1, ptr %i.bk, align 4, !tbaa !43
  store i32 %i.bg, ptr %i.ah, align 4, !tbaa !35
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %._crit_edge14.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.bl, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8Subdiv2D11calcVoronoiEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %1 = alloca %"struct.cv::Subdiv2D::Vertex", align 4 ; 4 uses
  %2 = alloca %"struct.cv::Subdiv2D::Vertex", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !8    ; 10 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5                   ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 4
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.k, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.010.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.010.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 0, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.010.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 60
  store i32 0, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  store i32 0, ptr %i.r, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.010.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 92
  store i32 0, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  store i32 0, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.010.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  store i32 0, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  store i32 0, ptr %i.x, align 4, !tbaa !12
  %i.y = add nuw i64 %.010.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.y, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i64 [ %i.ac, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.010.i.epil ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store i32 0, ptr %i.aa, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !12
  %i.ac = add nuw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !71

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !13    ; 8 uses
  %.not15.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not15.i, label %_ZN2cv8Subdiv2D12clearVoronoiEv.exit, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %._crit_edge.i
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 4                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 6 uses
  %i.al = icmp eq i64 %i.ai, 16
  br i1 %i.al, label %.epil.preheader, label %.lr.ph13.i.new

.lr.ph13.i.new:                                   ; preds = %.lr.ph13.i
  %unroll_iter112 = and i64 %i.aj, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph13.i.new
  %.111.i = phi i64 [ 0, %.lr.ph13.i.new ], [ %i.bf, %bb.g ] ; 5 uses
  %niter113 = phi i64 [ 0, %.lr.ph13.i.new ], [ %niter113.next.1, %bb.g ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.111.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = trunc i64 %.111.i to i32
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !35
  %sext.i = shl i64 %.111.i, 32
  %i.as = ashr exact i64 %sext.i, 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.as ; 2 uses
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !43
  store i32 %i.aq, ptr %i.ak, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = or disjoint i64 %.111.i, 1              ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = trunc i64 %i.av to i32
  %i.bb = load i32, ptr %i.ak, align 4, !tbaa !35
  %sext.i.1 = shl i64 %i.av, 32
  %i.bc = ashr exact i64 %sext.i.1, 28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bc ; 2 uses
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -1, ptr %i.be, align 4, !tbaa !43
  store i32 %i.ba, ptr %i.ak, align 4, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = add nuw i64 %.111.i, 2                  ; 2 uses
  %niter113.next.1 = add i64 %niter113, 2         ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %_ZN2cv8Subdiv2D12clearVoronoiEv.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !68

_ZN2cv8Subdiv2D12clearVoronoiEv.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %i.bg = and i64 %i.ai, 16
  %lcmp.mod110.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod110.not, label %_ZN2cv8Subdiv2D12clearVoronoiEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv8Subdiv2D12clearVoronoiEv.exit.loopexit.unr-lcssa, %.lr.ph13.i
  %.111.i.epil.init = phi i64 [ 0, %.lr.ph13.i ], [ %i.bf, %_ZN2cv8Subdiv2D12clearVoronoiEv.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod111 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.111.i.epil.init
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.bk = icmp sgt i32 %i.bj, 0
end_hunk_0
