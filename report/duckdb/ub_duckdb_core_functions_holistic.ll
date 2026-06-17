inline.NumInlined: 37317
inline.NumDeleted: 10738
begin_hunk_0_@_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE5frontEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !59
  store i64 %i.i, ptr %i.b, align 8, !tbaa !59
  %.not.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.not, label %bb.b, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_112ReuseIndexesEPmRKNS_6vectorINS_11FrameBoundsELb1ESaIS3_EEES7_(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %.val.val = load ptr, ptr %2, align 8, !tbaa !2217 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val.val31 = load ptr, ptr %i.d, align 8, !tbaa !2217 ; 3 uses
  %.not4.i = icmp eq ptr %.val.val, %.val.val31
  br i1 %.not4.i, label %._crit_edge.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.val.val3193 = ptrtoint ptr %.val.val31 to i64
  %.val.val94 = ptrtoint ptr %.val.val to i64
  %i.e = add i64 %.val.val3193, -16
  %i.f = sub i64 %i.e, %.val.val94                ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.lr.ph.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693948      ; 3 uses
  %i.i = shl i64 %n.vec, 4
  %i.j = getelementptr i8, ptr %.val.val, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.k = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.val.val, i64 %i.k
  %i.l = getelementptr i8, ptr %.val.val, i64 %i.k
  %next.gep96 = getelementptr i8, ptr %i.l, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99.a = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.m = add <2 x i64> %strided.vec97, %vec.phi
  %i.n = add <2 x i64> %strided.vec100, %vec.phi95
  %i.o = sub <2 x i64> %i.m, %strided.vec         ; 2 uses
  %i.p = sub <2 x i64> %i.n, %strided.vec99.a     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.r = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit, label %.lr.ph.i.preheader116

.lr.ph.i.preheader116:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.06.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.01.05.i.ph = phi ptr [ %.val.val, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader116, %.lr.ph.i
  %.06.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader116 ]
  %.sroa.01.05.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader116 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1993
  %i.u = load i64, ptr %.sroa.01.05.i, align 8, !tbaa !1995
  %i.v = add i64 %i.t, %.06.i
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %.val.val31
  br i1 %.not.i, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit, label %.lr.ph.i, !llvm.loop !2254

_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit:   ; preds = %.lr.ph.i, %middle.block
  %.lcssa92 = phi i64 [ %i.r, %middle.block ], [ %i.w, %.lr.ph.i ] ; 5 uses
  %.not61 = icmp eq i64 %.lcssa92, 0
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2252 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !2208  ; 3 uses
  %.not5.i = icmp eq ptr %i.z, %i.aa
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 3 uses
  br i1 %.not5.i, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel, label %.lr.ph.split

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel: ; preds = %.lr.ph
  %exitcond68.peel.not = icmp eq i64 %.lcssa92, 1
  br i1 %exitcond68.peel.not, label %._crit_edge.thread, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel
  %i.af = add i64 %.lcssa92, -1                   ; 2 uses
  %i.ag = add i64 %.lcssa92, -2
  %xtraiter = and i64 %i.af, 7                    ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 7
  br i1 %i.ah, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader
  %unroll_iter = and i64 %i.af, -8
  br label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new
  %.02948.us = phi i64 [ 1, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new ], [ %i.ai, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new ], [ %niter.next.7, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us ]
  %i.ai = add nuw i64 %.02948.us, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.loopexit.unr-lcssa, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us, !llvm.loop !2255

._crit_edge:                                      ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread
  %.02849 = phi i64 [ %i.az, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %.02948 = phi i64 [ %i.ba, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02948
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59 ; 3 uses
  %.not30 = icmp eq i64 %.02849, %.02948
  br i1 %.not30, label %.lr.ph.i33.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02849
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !59
  br label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.b, %.lr.ph.split
  br label %.lr.ph.i33

5:                                                ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit
  %6 = add nuw i64 %.0122.i, 1                    ; 2 uses
  %exitcond66.not = icmp eq i64 %6, %i.ae
  br i1 %exitcond66.not, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread, label %.lr.ph.i33, !llvm.loop !2257

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %5
  %.0122.i = phi i64 [ %6, %5 ], [ 0, %.lr.ph.i33.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.0122.i, ptr %i.b, align 8, !tbaa !59
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !59
  %exitcond.not = icmp eq i64 %.0122.i, %i.ae
  br i1 %exitcond.not, label %.noexc.i, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit, !prof !54

.noexc.i:                                         ; preds = %.lr.ph.i33
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ao, ptr %3, align 8, !tbaa !22
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ao, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.c ], [ true, %.noexc ] ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.an
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.au) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.am) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.e ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i.i

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit: ; preds = %.lr.ph.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0122.i ; 2 uses
  %7 = load i64, ptr %i.aw, align 8, !tbaa !1995
  %.not.i34 = icmp ule i64 %7, %i.ak
  %8 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ax = load i64, ptr %8, align 8
  %9 = icmp ult i64 %i.ak, %i.ax
  %or.cond.not.not.i = select i1 %.not.i34, i1 %9, i1 false
  br i1 %or.cond.not.not.i, label %bb.h, label %5

bb.h:                                             ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit
  %i.ay = add i64 %.02849, 1
  br label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread: ; preds = %5, %bb.h
  %i.az = phi i64 [ %i.ay, %bb.h ], [ %.02849, %5 ] ; 3 uses
  %i.ba = add nuw i64 %.02948, 1                  ; 2 uses
  %exitcond67.not = icmp eq i64 %i.ba, %.lcssa92
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2258

bb.i:                                             ; preds = %._crit_edge
  %i.bb = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1995
  %i.bd = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !1995
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.be) ; 2 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1993
  %i.bj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1993
  %i.bm = tail call noundef i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bl) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 %i.bm, ptr %4, align 8, !tbaa !1995
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !1993
  %i.bo = icmp ult i64 %i.bf, %i.bm
  br i1 %i.bo, label %.lr.ph.i35, label %_ZN6duckdb17AggregateExecutor15IntersectFramesINS_12_GLOBAL__N_120QuantileReuseUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEES9_RT_.exit

.lr.ph.i35:                                       ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i, %.lr.ph.i35
  %.sroa.4.0 = phi i64 [ %i.az, %.lr.ph.i35 ], [ %.sroa.4.1, %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i ] ; 7 uses
  %.05864.i = phi i64 [ %i.bf, %.lr.ph.i35 ], [ %.0.i, %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i ] ; 9 uses
  %.05963.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.eb, %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i ] ; 3 uses
  %.06062.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.dw, %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i ] ; 3 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !2252
  %i.br = load ptr, ptr %2, align 8, !tbaa !2208
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4
  %i.bw = icmp ult i64 %.06062.i, %i.bv
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.06062.i) ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1995
  %.not.i36 = icmp ule i64 %i.by, %.05864.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = icmp ult i64 %.05864.i, %i.ca
  %narrow.i = select i1 %.not.i36, i1 %i.cb, i1 false
  %i.cc = zext i1 %narrow.i to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.057.i = phi i8 [ %i.cc, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.056.i = phi ptr [ %i.bx, %bb.k ], [ %4, %bb.j ] ; 5 uses
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !2252
  %i.ce = load ptr, ptr %1, align 8, !tbaa !2208
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4
  %i.cj = icmp ult i64 %.05963.i, %i.ci
  br i1 %i.cj, label %bb.m, label %select.unfold.i

bb.m:                                             ; preds = %bb.l
  %i.ck = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.05963.i) ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1995
  %.not61.i = icmp ugt i64 %i.cl, %.05864.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp uge i64 %.05864.i, %i.cn
  %i.cp = select i1 %.not61.i, i1 true, i1 %i.co
  %i.cq = select i1 %i.cp, i8 0, i8 2
  %spec.select.i = or disjoint i8 %i.cq, %.057.i
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.m, %bb.l
  %.1.i = phi i8 [ %spec.select.i, %bb.m ], [ %.057.i, %bb.l ]
  %.055.i = phi ptr [ %i.ck, %bb.m ], [ %4, %bb.l ] ; 5 uses
  switch i8 %.1.i, label %bb.q [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
  ]

bb.n:                                             ; preds = %select.unfold.i
  %i.cr = load i64, ptr %.055.i, align 8, !tbaa !1995
  %i.cs = load i64, ptr %.056.i, align 8, !tbaa !1995
  %i.ct = tail call noundef i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cs)
  br label %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i

bb.o:                                             ; preds = %select.unfold.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1993
  %i.cw = load i64, ptr %.055.i, align 8, !tbaa !1995
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.cw)
  br label %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i

bb.p:                                             ; preds = %select.unfold.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1993
  %i.da = load i64, ptr %.056.i, align 8, !tbaa !1995
  %i.db = tail call noundef i64 @llvm.umin.i64(i64 %i.cz, i64 %i.da) ; 6 uses
  %i.dc = icmp ult i64 %.05864.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.preheader, label %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.dd = sub nuw i64 %i.db, %.05864.i            ; 3 uses
  %min.iters.check102 = icmp ult i64 %i.dd, 4
  br i1 %min.iters.check102, label %.lr.ph.i.i.preheader113, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec105 = and i64 %i.dd, -4                   ; 4 uses
  %i.de = add i64 %.sroa.4.0, %n.vec105           ; 2 uses
  %i.df = add i64 %.05864.i, %n.vec105
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.05864.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.dg = getelementptr [8 x i8], ptr %0, i64 %.sroa.4.0
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next108, %vector.body106 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph103 ], [ %vec.ind.next, %vector.body106 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %index107 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x i64> %vec.ind, ptr %i.dh, align 8, !tbaa !59
  store <2 x i64> %step.add, ptr %i.di, align 8, !tbaa !59
  %index.next108 = add nuw i64 %index107, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.dj = icmp eq i64 %index.next108, %n.vec105
  br i1 %i.dj, label %middle.block109, label %vector.body106, !llvm.loop !2259

middle.block109:                                  ; preds = %vector.body106
  %cmp.n110 = icmp eq i64 %i.dd, %n.vec105
  br i1 %cmp.n110, label %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i, label %.lr.ph.i.i.preheader113

.lr.ph.i.i.preheader113:                          ; preds = %.lr.ph.i.i.preheader, %middle.block109
  %.sroa.4.2.ph = phi i64 [ %.sroa.4.0, %.lr.ph.i.i.preheader ], [ %i.de, %middle.block109 ]
  %.04.i.i.ph = phi i64 [ %.05864.i, %.lr.ph.i.i.preheader ], [ %i.df, %middle.block109 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader113, %.lr.ph.i.i
  %.sroa.4.2 = phi i64 [ %i.dk, %.lr.ph.i.i ], [ %.sroa.4.2.ph, %.lr.ph.i.i.preheader113 ] ; 2 uses
  %.04.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %.04.i.i.ph, %.lr.ph.i.i.preheader113 ] ; 2 uses
  %i.dk = add i64 %.sroa.4.2, 1                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.4.2
  store i64 %.04.i.i, ptr %i.dl, align 8, !tbaa !59
  %i.dm = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dm, %i.db
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i, label %.lr.ph.i.i, !llvm.loop !2260

bb.q:                                             ; preds = %select.unfold.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1993
  %i.dp = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1993
  %i.dr = tail call noundef i64 @llvm.umin.i64(i64 %i.do, i64 %i.dq)
  br label %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i

_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i: ; preds = %.lr.ph.i.i, %middle.block109, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.q ], [ %.sroa.4.0, %bb.n ], [ %.sroa.4.0, %bb.o ], [ %.sroa.4.0, %bb.p ], [ %i.de, %middle.block109 ], [ %i.dk, %.lr.ph.i.i ]
  %.0.i = phi i64 [ %i.dr, %bb.q ], [ %i.ct, %bb.n ], [ %i.cx, %bb.o ], [ %i.db, %bb.p ], [ %i.db, %middle.block109 ], [ %i.db, %.lr.ph.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !1993
  %i.du = icmp eq i64 %.0.i, %i.dt
  %i.dv = zext i1 %i.du to i64
  %i.dw = add i64 %.06062.i, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1993
  %i.dz = icmp eq i64 %.0.i, %i.dy
  %i.ea = zext i1 %i.dz to i64
  %i.eb = add i64 %.05963.i, %i.ea
  %i.ec = icmp ult i64 %.0.i, %i.bm
  br i1 %i.ec, label %bb.j, label %_ZN6duckdb17AggregateExecutor15IntersectFramesINS_12_GLOBAL__N_120QuantileReuseUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEES9_RT_.exit, !llvm.loop !2261

_ZN6duckdb17AggregateExecutor15IntersectFramesINS_12_GLOBAL__N_120QuantileReuseUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEES9_RT_.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_120QuantileReuseUpdater5RightEmm.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.loopexit

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us
  %i.ed = add nuw i64 %.02948.us, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.loopexit, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader: ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader
  %.02948.us.epil.init = phi i64 [ 1, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader ], [ %i.ai, %._crit_edge.thread.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader
  %.02948.us.epil = phi i64 [ %i.ee, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil ], [ %.02948.us.epil.init, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil ], [ 0, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader ]
  %i.ee = add nuw i64 %.02948.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.loopexit, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil, !llvm.loop !2262
end_hunk_0
