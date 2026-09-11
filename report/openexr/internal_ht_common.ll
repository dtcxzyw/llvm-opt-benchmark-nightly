Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_ht_common?download=true
inline.NumInlined: 84
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z16make_channel_mapiP25exr_coding_channel_info_tRSt6vectorI21CodestreamChannelInfoSaIS2_EE:bb.a
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit225.unr-lcssa, label %bb.ak, !llvm.loop !20

.loopexit.loopexit225.unr-lcssa:                  ; preds = %bb.ak
  %i.gw = and i32 %0, 1
  %lcmp.mod.not = icmp eq i32 %i.gw, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit225.unr-lcssa, %.lr.ph174
  %.0173.epil.init = phi i64 [ 0, %.lr.ph174 ], [ %i.gv, %.loopexit.loopexit225.unr-lcssa ] ; 2 uses
  %.0121172.epil.init = phi i32 [ 0, %.lr.ph174 ], [ %i.gu, %.loopexit.loopexit225.unr-lcssa ]
  %lcmp.mod229 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.gx = trunc i64 %.0173.epil.init to i32
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.0173.epil.init ; 2 uses
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !16
  %i.gz = sext i32 %.0121172.epil.init to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit225.unr-lcssa, %bb.aj, %.preheader, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.lcssa228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_Z12write_headerPhmRKSt6vectorI21CodestreamChannelInfoSaIS1_EE(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %gepdiff = add i64 %1, -6
  %i.c = icmp slt i64 %gepdiff, 2
  br i1 %i.c, label %bb.b, label %_ZN12MemoryWriter11push_uint16Et.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.j, %bb.g, %bb.d
  %.sink = phi ptr [ %i.aq, %bb.l ], [ %i.z, %bb.j ], [ %i.v, %bb.g ], [ %i.d, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aa, %bb.j ], [ %i.w, %bb.g ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #13
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint16Et.exit:            ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = load ptr, ptr %2, align 8, !tbaa !12
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.g, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 4
  %i.l = lshr i64 %i.j, 12
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.m, ptr %i.a, align 1, !tbaa !17
  %i.o = trunc i64 %i.k to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !17
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.r = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %._crit_edge, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader: ; preds = %_ZN12MemoryWriter11push_uint16Et.exit
  %i.s = add i64 %1, -8
  %i.t = lshr i64 %i.s, 1                         ; 2 uses
  %exitcond32 = icmp eq i64 %i.t, 0
  br i1 %exitcond32, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge, label %_ZN12MemoryWriter11push_uint16Et.exit10

._crit_edge:                                      ; preds = %_ZN12MemoryWriter11push_uint16Et.exit10, %_ZN12MemoryWriter11push_uint16Et.exit
  %.sroa.5.0.lcssa = phi ptr [ %i.p, %_ZN12MemoryWriter11push_uint16Et.exit ], [ %i.az, %_ZN12MemoryWriter11push_uint16Et.exit10 ]
  %i.u = icmp slt i64 %1, 2
  br i1 %i.u, label %bb.e, label %_ZN12MemoryWriter11push_uint16Et.exit9

bb.e:                                             ; preds = %._crit_edge
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.8)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint16Et.exit9:           ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 72, ptr %0, align 1, !tbaa !17
  store i8 84, ptr %i.x, align 1, !tbaa !17
  %i.y = icmp samesign ult i64 %1, 6
  br i1 %i.y, label %bb.h, label %_ZN12MemoryWriter11push_uint32Ej.exit

bb.h:                                             ; preds = %_ZN12MemoryWriter11push_uint16Et.exit9
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.8)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint32Ej.exit:            ; preds = %_ZN12MemoryWriter11push_uint16Et.exit9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = ptrtoint ptr %.sroa.5.0.lcssa to i64
  %i.ad = ptrtoint ptr %i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = lshr i64 %i.ae, 24
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !17
  %i.ai = lshr i64 %i.ae, 16
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !17
  %i.al = lshr i64 %i.ae, 8
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !17
  %i.ao = trunc i64 %i.ae to i8
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !17
  %i.ap = add i64 %i.ae, 6
  ret i64 %i.ap

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit: ; preds = %_ZN12MemoryWriter11push_uint16Et.exit10
  %exitcond = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge, label %_ZN12MemoryWriter11push_uint16Et.exit10, !llvm.loop !37

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge: ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #15
  unreachable

bb.l:                                             ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryWriter11push_uint16Et.exit10:          ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit
  %.sroa.5.02834 = phi ptr [ %i.az, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ %i.p, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader ] ; 3 uses
  %.02933 = phi i64 [ %i.ba, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ 0, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader ] ; 2 uses
  %i.as = phi ptr [ %i.bc, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ %i.r, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.02933
  %i.au = load i32, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.02834, i64 1
  store i8 %i.aw, ptr %.sroa.5.02834, align 1, !tbaa !17
  %i.ay = trunc i32 %i.au to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.02834, i64 2 ; 2 uses
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !17
  %i.ba = add nuw nsw i64 %.02933, 1              ; 3 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bc = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 4
  %i.bh = icmp ult i64 %i.ba, %i.bg
  br i1 %i.bh, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 6, 4294967302) i64 @_Z11read_headerPvmRSt6vectorI21CodestreamChannelInfoSaIS1_EE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 2
  br i1 %i.a, label %bb.b, label %_ZN12MemoryReader11pull_uint16Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.n, %bb.x, %bb.r, %bb.k, %bb.d
  %.sink = phi ptr [ %i.l, %bb.g ], [ %i.ak, %bb.n ], [ %i.bn, %bb.x ], [ %i.an, %bb.r ], [ %i.o, %bb.k ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.al, %bb.n ], [ %i.bo, %bb.x ], [ %i.ao, %bb.r ], [ %i.p, %bb.k ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #13
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryReader11pull_uint16Ev.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %0, align 1, !tbaa !17
  %i.f = zext i8 %i.e to i16
  %i.g = shl nuw i16 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.d, align 1, !tbaa !17
  %i.j = zext i8 %i.i to i16
  %i.k = or disjoint i16 %i.g, %i.j
  %.not = icmp eq i16 %i.k, 18516
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.h:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit
  %i.n = icmp samesign ult i64 %1, 6
  br i1 %i.n, label %bb.i, label %_ZN12MemoryReader11pull_uint32Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryReader11pull_uint32Ev.exit:            ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = load i8, ptr %i.h, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.q, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.s, 16
  %i.x = shl nuw nsw i64 %i.v, 8
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !17
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.y, %i.ab
  %i.ad = shl nuw nsw i64 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.af = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag
  %i.ai = add nuw nsw i64 %i.ah, 6                ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.ai, %1
  br i1 %i.aj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN12MemoryReader11pull_uint32Ev.exit
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %_ZN12MemoryReader11pull_uint32Ev.exit
  %i.am = icmp samesign ult i64 %1, 8
  br i1 %i.am, label %bb.p, label %_ZN12MemoryReader11pull_uint16Ev.exit18

bb.p:                                             ; preds = %bb.o
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.9)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryReader11pull_uint16Ev.exit18:          ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aq = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av            ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 4 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !12    ; 5 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 4 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4                 ; 3 uses
  %i.be = icmp ugt i64 %i.aw, %i.bd
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit18
  %i.bf = sub nuw nsw i64 %i.aw, %i.bd
  tail call void @_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bf)
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !11
  %.pre31 = load ptr, ptr %2, align 8, !tbaa !12  ; 2 uses
  %.pre32 = ptrtoint ptr %.pre31 to i64
  br label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit

bb.t:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit18
  %i.bg = icmp ult i64 %i.aw, %i.bd
  br i1 %i.bg, label %bb.u, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.aw ; 3 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.bh
  br i1 %.not.i.i, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !11
  br label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit: ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre32, %bb.s ], [ %i.bb, %bb.t ], [ %i.bb, %bb.u ], [ %i.bb, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i ]
  %i.bi = phi ptr [ %.pre31, %bb.s ], [ %i.az, %bb.t ], [ %i.az, %bb.u ], [ %i.az, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bj = phi ptr [ %.pre, %bb.s ], [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.bh, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not30 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %.pre-phi
  %i.bm = ashr exact i64 %i.bl, 4
  %3 = add nsw i64 %1, -8
  %4 = lshr i64 %3, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit
  ret i64 %i.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit
  %.029 = phi i64 [ %i.by, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.028 = phi ptr [ %i.bt, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ %i.at, %.lr.ph.preheader ] ; 3 uses
  %exitcond = icmp eq i64 %.029, %4
  br i1 %exitcond, label %bb.v, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit

bb.v:                                             ; preds = %.lr.ph
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull @.str.9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit: ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.5.028, i64 1
  %i.bq = load i8, ptr %.sroa.5.028, align 1, !tbaa !17
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.028, i64 2
  %i.bu = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.029
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !16
  %i.by = add nuw nsw i64 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !45
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !39

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !45
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !45
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !45
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !45
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !40

_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #15
  unreachable

_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !45
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !41

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !45
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !45
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !45
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !45
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !40

_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorI21CodestreamChannelInfoSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

end_hunk_0
