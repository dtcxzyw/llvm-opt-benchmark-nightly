Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/bitstate?download=true
inline.NumInlined: 337
inline.NumDeleted: 226
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re28BitState9TrySearchEiPKc:bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ge
  %i.gg = icmp ugt ptr %.186.ph, %i.gf
  %i.gh = icmp sgt i32 %i.fu, 0
  %or.cond188 = and i1 %i.gg, %i.gh
  br i1 %or.cond188, label %.lr.ph.preheader, label %.loopexit

bb.ah:                                            ; preds = %bb.ae
  %.old = icmp sgt i32 %i.fu, 0
  br i1 %.old, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ah, %bb.ag
  %wide.trip.count = zext i32 %i.fu to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.fu, 8
  br i1 %min.iters.check, label %.lr.ph.preheader339, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.fy, i64 8
  %i.gi = shl nuw nsw i64 %wide.trip.count, 4     ; 2 uses
  %scevgep332 = getelementptr i8, ptr %i.fy, i64 %i.gi
  %scevgep333 = getelementptr i8, ptr %i.fw, i64 %i.gi
  %bound0 = icmp ult ptr %scevgep, %scevgep333
  %bound1 = icmp ult ptr %i.fw, %scevgep332
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader339, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gj = or disjoint i64 %index, 4               ; 2 uses
  %i.gk = shl nuw nsw i64 %index, 4
  %i.gl = shl nuw nsw i64 %i.gj, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gl
  %wide.vec = load <8 x ptr>, ptr %i.gm, align 8, !tbaa !67, !alias.scope !91 ; 2 uses
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec334 = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec335 = load <8 x ptr>, ptr %i.gn, align 8, !tbaa !67, !alias.scope !91 ; 2 uses
  %strided.vec336 = shufflevector <8 x ptr> %wide.vec335, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec337 = shufflevector <8 x ptr> %wide.vec335, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.go = ptrtoint <4 x ptr> %strided.vec334 to <4 x i64>
  %i.gp = ptrtoint <4 x ptr> %strided.vec337 to <4 x i64>
  %i.gq = ptrtoint <4 x ptr> %strided.vec to <4 x i64>
  %i.gr = ptrtoint <4 x ptr> %strided.vec336 to <4 x i64>
  %i.gs = sub <4 x i64> %i.go, %i.gq
  %i.gt = sub <4 x i64> %i.gp, %i.gr
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %index
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.gj
  %i.gw = inttoptr <4 x i64> %i.gs to <4 x ptr>
  %interleaved.vec = shufflevector <4 x ptr> %i.gw, <4 x ptr> %strided.vec, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec, ptr %i.gu, align 8, !tbaa !65
  %i.gx = inttoptr <4 x i64> %i.gt to <4 x ptr>
  %interleaved.vec338 = shufflevector <4 x ptr> %i.gx, <4 x ptr> %strided.vec336, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec338, ptr %i.gv, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader339

.lr.ph.preheader339:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader339
  %.idx.prol = shl nuw nsw i64 %indvars.iv.ph, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.prol ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !67 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !67
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.ph ; 2 uses
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !63
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.ha, ptr %.sroa.4.0..sroa_idx.prol, align 8, !tbaa !67
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader339
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader339 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.hh = add nsw i64 %wide.trip.count, -1
  %i.hi = icmp eq i64 %indvars.iv.ph, %i.hh
  br i1 %i.hi, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !67 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !67
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv ; 2 uses
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !63
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.hk, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.1 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !67 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !67
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.next ; 2 uses
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !63
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.hs, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !67
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !82

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.ah, %bb.ag, %bb.af
  %i.hz = load i8, ptr %i.an, align 1, !tbaa !71, !range !72, !noundef !73
  %i.ia = trunc nuw i8 %i.hz to i1
  %.not110 = xor i1 %i.ia, true
  %or.cond111 = select i1 %.not110, i1 true, i1 %.not
  br i1 %or.cond111, label %.thread121.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.o, %.loopexit, %bb.ac, %bb.w, %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread117
  %i.ib = phi i32 [ %i.by, %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread117 ], [ %i.by, %.loopexit ], [ %.pre236, %bb.w ], [ %i.by, %bb.ac ], [ %i.by, %bb.o ]
  %.276 = phi i1 [ %.175, %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread117 ], [ true, %.loopexit ], [ %.175, %bb.w ], [ %.175, %bb.ac ], [ %.175, %bb.o ] ; 2 uses
  %i.ic = and i32 %i.ib, 8
  %.not106 = icmp eq i32 %i.ic, 0
  br i1 %.not106, label %.split, label %.thread121

.split:                                           ; preds = %bb.ai
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1
  br label %bb.f

.thread121:                                       ; preds = %bb.ab, %bb.f, %bb.ai, %bb.c
  %.5 = phi i1 [ %.074186, %bb.c ], [ %.175, %bb.f ], [ %.276, %bb.ai ], [ %.175, %bb.ab ] ; 2 uses
  %i.id = load i32, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %bb.b, label %.thread121.thread

.thread121.thread:                                ; preds = %.thread121, %bb.ad, %.loopexit, %bb.a, %_ZN3re28BitState11ShouldVisitEiPKc.exit, %bb.h
  %.4 = phi i1 [ false, %_ZN3re28BitState11ShouldVisitEiPKc.exit ], [ false, %bb.h ], [ true, %bb.ad ], [ false, %bb.a ], [ true, %.loopexit ], [ %.5, %.thread121 ]
  ret i1 %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re26InstOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !70
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.f
}

declare noundef i32 @_ZN3re24Prog10EmptyFlagsESt17basic_string_viewIcSt11char_traitsIcEEPKc(i64, ptr, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re28BitState6SearchESt17basic_string_viewIcSt11char_traitsIcEES4_bbPS4_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(116) initializes((8, 40)) %0, i64 %1, ptr %2, i64 %3, ptr %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !63
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %3, ptr %i.b, align 8, !tbaa !63
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %4, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !67
  %i.c = icmp eq ptr %4, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.b, align 8, !tbaa !63
  store ptr %2, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.022.0.copyload = phi i64 [ %1, %bb.b ], [ %3, %bb.a ]
  %.sroa.223.0.copyload = phi ptr [ %2, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !133, !range !72, !noundef !73 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %.not = icmp ne ptr %.sroa.223.0.copyload, %2
  %or.cond.not = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !134, !range !72, !noundef !73 ; 3 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.223.0.copyload, i64 %.sroa.022.0.copyload
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not43 = icmp ne ptr %i.j, %i.k
  %or.cond98.not = select i1 %i.i, i1 %.not43, i1 false
  br i1 %or.cond98.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select71 = select i1 %5, i8 1, i8 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 %spec.select71, ptr %i.l, align 8, !tbaa !135
  %i.m = select i1 %6, i8 1, i8 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.m, ptr %i.n, align 1, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.h, ptr %i.o, align 2, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %7, ptr %i.p, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %8, ptr %i.q, align 8, !tbaa !52
  %i.r = icmp sgt i32 %8, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !136
  %i.v = trunc i64 %1 to i32
  %i.w = add i32 %i.v, 1
  %i.x = mul nsw i32 %i.u, %i.w                   ; 2 uses
  %i.y = add nsw i32 %i.x, 63
  %i.z = sdiv i32 %i.y, 64                        ; 2 uses
  %i.aa = icmp slt i32 %i.x, -126
  br i1 %i.aa, label %.noexc.i, label %_ZN3re28PODArrayImEC2Ei.exit, !prof !54

.noexc.i:                                         ; preds = %._crit_edge
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZN3re28PODArrayImEC2Ei.exit:                     ; preds = %._crit_edge
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !62
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZN3re28PODArrayImED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3re28PODArrayImEC2Ei.exit
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #17
  %.pre85 = load ptr, ptr %i.af, align 8, !tbaa !62
  br label %_ZN3re28PODArrayImED2Ev.exit

_ZN3re28PODArrayImED2Ev.exit:                     ; preds = %bb.f, %_ZN3re28PODArrayImEC2Ei.exit
  %i.ak = phi ptr [ %.pre85, %bb.f ], [ %i.ad, %_ZN3re28PODArrayImEC2Ei.exit ]
  store i32 %i.z, ptr %i.ae, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.ac, i1 false)
  %i.al = shl nsw i32 %8, 1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.al, i32 2) ; 2 uses
  %i.am = zext nneg i32 %spec.store.select to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !66
  %.not.i.i.i.i.i46 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i46, label %_ZN3re28PODArrayIPKcED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3re28PODArrayImED2Ev.exit
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !74
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #17
  %.pre86 = load ptr, ptr %i.aq, align 8, !tbaa !66
  br label %_ZN3re28PODArrayIPKcED2Ev.exit

_ZN3re28PODArrayIPKcED2Ev.exit:                   ; preds = %bb.g, %_ZN3re28PODArrayImED2Ev.exit
  %i.av = phi ptr [ %.pre86, %bb.g ], [ %i.ao, %_ZN3re28PODArrayImED2Ev.exit ]
  store i32 %spec.store.select, ptr %i.ap, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, i8 0, i64 %i.an, i1 false)
  %i.aw = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !55
  %.not.i.i.i.i.i48 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i48, label %_ZN3re28PODArrayINS_3JobEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3re28PODArrayIPKcED2Ev.exit
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #17
  br label %_ZN3re28PODArrayINS_3JobEED2Ev.exit

_ZN3re28PODArrayINS_3JobEED2Ev.exit:              ; preds = %bb.h, %_ZN3re28PODArrayIPKcED2Ev.exit
  store i32 64, ptr %i.ax, align 8, !tbaa !57
  %i.bd = load i8, ptr %i.l, align 8, !tbaa !135, !range !72, !noundef !73
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %.lr.ph77

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !52
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

bb.i:                                             ; preds = %_ZN3re28PODArrayINS_3JobEED2Ev.exit
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !66
  store ptr %2, ptr %i.bk, align 8, !tbaa !67
  %i.bl = load ptr, ptr %0, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !137
  %i.bo = tail call noundef zeroext i1 @_ZN3re28BitState9TrySearchEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %i.bn, ptr noundef %2)
  br label %.loopexit

.lr.ph77:                                         ; preds = %_ZN3re28PODArrayINS_3JobEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.lr.ph77
  %.075 = phi ptr [ %2, %.lr.ph77 ], [ %i.cl, %bb.r ] ; 7 uses
  %i.br = icmp ult ptr %.075, %i.bp
  %.pre88.a = load ptr, ptr %0, align 8, !tbaa !50 ; 7 uses
  br i1 %i.br, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre88.a, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !138 ; 2 uses
  %.not72 = icmp eq i64 %i.bt, 0
  br i1 %.not72, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = ptrtoint ptr %.075 to i64
  %i.bv = sub i64 %i.bq, %i.bu                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre88.a, i64 24
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !139, !range !72, !noundef !73
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = tail call noundef ptr @_ZN3re24Prog20PrefixAccel_ShiftDFAEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %.pre88.a, ptr noundef %.075, i64 noundef %i.bv)
  br label %_ZN3re24Prog11PrefixAccelEPKvm.exit

bb.n:                                             ; preds = %bb.l
  %.not.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call noundef ptr @_ZN3re24Prog24PrefixAccel_FrontAndBackEPKvm(ptr noundef nonnull align 8 dereferenceable(432) %.pre88.a, ptr noundef %.075, i64 noundef %i.bv)
  br label %_ZN3re24Prog11PrefixAccelEPKvm.exit

bb.p:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre88.a, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !65
  %i.cd = tail call noundef ptr @memchr(ptr noundef %.075, i32 noundef %i.cc, i64 noundef %i.bv) #21
  br label %_ZN3re24Prog11PrefixAccelEPKvm.exit

_ZN3re24Prog11PrefixAccelEPKvm.exit:              ; preds = %bb.m, %bb.o, %bb.p
  %.0.i = phi ptr [ %i.bz, %bb.m ], [ %i.ca, %bb.o ], [ %i.cd, %bb.p ] ; 2 uses
  %i.ce = icmp eq ptr %.0.i, null
  %spec.select = select i1 %i.ce, ptr %i.bp, ptr %.0.i
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %_ZN3re24Prog11PrefixAccelEPKvm.exit, %bb.k, %bb.j
  %i.cf = phi ptr [ %.pre88.a, %bb.j ], [ %.pre87, %_ZN3re24Prog11PrefixAccelEPKvm.exit ], [ %.pre88.a, %bb.k ]
  %.1 = phi ptr [ %.075, %bb.j ], [ %spec.select, %_ZN3re24Prog11PrefixAccelEPKvm.exit ], [ %.075, %bb.k ] ; 4 uses
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !66
  store ptr %.1, ptr %i.cg, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !137
  %i.cj = tail call noundef zeroext i1 @_ZN3re28BitState9TrySearchEiPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 noundef %i.ci, ptr noundef %.1) ; 3 uses
  br i1 %i.cj, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp eq ptr %.1, null
  %i.cl = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.not44 = icmp ugt ptr %i.cl, %i.bp
  %or.cond99 = select i1 %i.ck, i1 true, i1 %.not44
  br i1 %or.cond99, label %.loopexit, label %bb.j, !llvm.loop !97

.loopexit:                                        ; preds = %bb.r, %bb.q, %bb.d, %bb.c, %bb.i
  %.3 = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.bo, %bb.i ], [ %i.cj, %bb.q ], [ %i.cj, %bb.r ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re24Prog14SearchBitStateESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_i(ptr noundef nonnull align 8 dereferenceable(432) %0, i64 %1, ptr %2, i64 %3, ptr %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %10 = alloca %"class.re2::BitState", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.a = icmp eq i32 %6, 2                        ; 4 uses
  %i.b = icmp slt i32 %8, 1                       ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %spec.select29 = select i1 %i.b, ptr %9, ptr %7 ; 2 uses
  %.025 = select i1 %i.a, i32 %spec.select, i32 %8
  %.024 = select i1 %i.a, ptr %spec.select29, ptr %7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN3re28BitStateC1EPNS_4ProgE(ptr noundef nonnull align 8 dereferenceable(116) %10, ptr noundef nonnull %0)
  %i.c = icmp eq i32 %5, 1
  %i.d = or i1 %i.c, %i.a
  %i.e = icmp ne i32 %6, 0
  %i.f = invoke noundef zeroext i1 @_ZN3re28BitState6SearchESt17basic_string_viewIcSt11char_traitsIcEES4_bbPS4_i(ptr noundef nonnull align 8 dereferenceable(116) %10, i64 %1, ptr %2, i64 %3, ptr %4, i1 noundef zeroext %i.d, i1 noundef zeroext %i.e, ptr noundef %.024, i32 noundef %.025)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.g
end_hunk_0
