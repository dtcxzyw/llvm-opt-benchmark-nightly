Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_ht_common?download=true
inline.NumInlined: 84
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z12write_headerPhmRKSt6vectorI21CodestreamChannelInfoSaIS1_EE:bb.a
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
define hidden noundef range(i64 6, 4294967302) i64 @_Z11read_headerPvmRSt6vectorI21CodestreamChannelInfoSaIS1_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = icmp slt i64 %1, 2
  br i1 %i.c, label %bb.b, label %_ZN12MemoryReader11pull_uint16Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.n, %bb.x, %bb.r, %bb.k, %bb.d
  %.sink = phi ptr [ %i.n, %bb.g ], [ %i.am, %bb.n ], [ %i.bq, %bb.x ], [ %i.ap, %bb.r ], [ %i.q, %bb.k ], [ %i.d, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.an, %bb.n ], [ %i.br, %bb.x ], [ %i.aq, %bb.r ], [ %i.r, %bb.k ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #13
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryReader11pull_uint16Ev.exit:            ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %0, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.f, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i16
  %i.m = or disjoint i16 %i.i, %i.l
  %.not = icmp eq i16 %i.m, 18516
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.h:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit
  %i.p = icmp samesign ult i64 %1, 6
  br i1 %i.p, label %bb.i, label %_ZN12MemoryReader11pull_uint32Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryReader11pull_uint32Ev.exit:            ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.t = load i8, ptr %i.j, align 1, !tbaa !17
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.s, align 1, !tbaa !17
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.u, 16
  %i.z = shl nuw nsw i64 %i.x, 8
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.aa, %i.ad
  %i.af = shl nuw nsw i64 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = or disjoint i64 %i.af, %i.ai
  %i.ak = add nuw nsw i64 %i.aj, 6                ; 2 uses
  %i.al = icmp samesign ugt i64 %i.ak, %1
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN12MemoryReader11pull_uint32Ev.exit
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %_ZN12MemoryReader11pull_uint32Ev.exit
  %i.ao = icmp samesign ult i64 %1, 8
  br i1 %i.ao, label %bb.p, label %_ZN12MemoryReader11pull_uint16Ev.exit18

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.9)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12MemoryReader11pull_uint16Ev.exit18:          ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.as = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.ax = zext i8 %i.aw to i64
  %i.ay = or disjoint i64 %i.au, %i.ax            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11 ; 4 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !12    ; 5 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 4 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4                 ; 3 uses
  %i.bg = icmp ugt i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit18
  %i.bh = sub nuw nsw i64 %i.ay, %i.bf
  tail call void @_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bh)
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !11
  %.pre31 = load ptr, ptr %2, align 8, !tbaa !12  ; 2 uses
  %.pre32 = ptrtoint ptr %.pre31 to i64
  br label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit

bb.t:                                             ; preds = %_ZN12MemoryReader11pull_uint16Ev.exit18
  %i.bi = icmp ult i64 %i.ay, %i.bf
  br i1 %i.bi, label %bb.u, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.ay ; 3 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bj
  br i1 %.not.i.i, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !11
  br label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit: ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre32, %bb.s ], [ %i.bd, %bb.t ], [ %i.bd, %bb.u ], [ %i.bd, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i ]
  %i.bk = phi ptr [ %.pre31, %bb.s ], [ %i.bb, %bb.t ], [ %i.bb, %bb.u ], [ %i.bb, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bl = phi ptr [ %.pre, %bb.s ], [ %i.ba, %bb.t ], [ %i.ba, %bb.u ], [ %i.bj, %_ZSt8_DestroyIP21CodestreamChannelInfoS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not30 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit
  %i.bm = ptrtoint ptr %i.bl to i64
  %3 = sub i64 %i.bm, %.pre-phi
  %4 = ashr exact i64 %3, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE6resizeEm.exit
  ret i64 %i.ak

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit
  %.029 = phi i64 [ %i.cb, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.028 = phi ptr [ %i.bw, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit ], [ %i.av, %.lr.ph.preheader ] ; 4 uses
  %i.bn = ptrtoint ptr %.sroa.5.028 to i64
  %i.bo = sub i64 %i.b, %i.bn
  %i.bp = icmp slt i64 %i.bo, 2
  br i1 %i.bp, label %bb.v, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit

bb.v:                                             ; preds = %.lr.ph
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull @.str.9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #15
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE2atEm.exit: ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.5.028, i64 1
  %i.bt = load i8, ptr %.sroa.5.028, align 1, !tbaa !17
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.5.028, i64 2
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.029
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !16
  %i.cb = add nuw nsw i64 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %umax
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

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EE13_M_deallocateEPS0_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #17
  br label %_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EE13_M_deallocateEPS0_m.exit38

_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP21CodestreamChannelInfomS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EE13_M_deallocateEPS0_m.exit38, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8
end_hunk_0
