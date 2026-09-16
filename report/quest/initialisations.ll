Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/initialisations?download=true
inline.NumInlined: 281
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@setQuregToWeightedSum:bb.a
  %i.ae = sub i64 %.pre-phi, %.pre-phi37          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 104
  br i1 %i.af, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %.noexc18
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.z, i64 %i.ae, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc18
  %i.ag = icmp eq i64 %i.ae, 104
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 104, i1 false), !tbaa.struct !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !34
  invoke void @_Z40localiser_statevec_setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %7, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit:             ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #16
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, %bb.k
  %i.as = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit21

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit21:           ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ay = load ptr, ptr %4, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit23, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit21
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit23

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit23:    ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit21, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.n:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit29

bb.o:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27

bb.p:                                             ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i16
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25

bb.q:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %7, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25:           ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.bh, %bb.q ], [ %i.bh, %bb.r ] ; 2 uses
  %i.bn = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #16
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27:    ; preds = %bb.s, %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %.pn, %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit25 ], [ %.pn, %bb.s ] ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit29, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit29

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit29:           ; preds = %bb.t, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.n ], [ %.pn.pn, %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit27 ], [ %.pn.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.by = load ptr, ptr %4, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit31, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit29
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #16
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit31

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit31:    ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit29, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_Z23validate_numQuregsInSumiPKc(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z26validate_quregsCanBeSummed5QuregPS_iPKc(ptr noundef byval(%struct.Qureg) align 8, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z14util_getVectorPSt7complexIdEi(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z14util_getVectorP5Quregi(ptr dead_on_unwind writable sret(%"class.std::vector.5") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z40localiser_statevec_setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @setQuregToMixture(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.5", align 8     ; 11 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 7 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setQuregToMixture)
  tail call void @_Z29validate_quregIsDensityMatrix5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.setQuregToMixture)
  tail call void @_Z23validate_numQuregsInSumiPKc(i32 noundef %3, ptr noundef nonnull @__func__.setQuregToMixture)
  tail call void @_Z25validate_quregsCanBeMixed5QuregPS_iPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @__func__.setQuregToMixture)
  tail call void @_Z22validate_probabilitiesPdiPKc(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @__func__.setQuregToMixture)
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 4                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #15 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.c, i1 false)
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x double>, ptr %i.e, align 8, !tbaa !56
  %wide.load85 = load <2 x double>, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %interleaved.vec = shufflevector <2 x double> %wide.load, <2 x double> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.g, align 8
  %interleaved.vec86 = shufflevector <2 x double> %wide.load85, <2 x double> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec86, ptr %i.i, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader87

.lr.ph.preheader87:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.a
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.c
  %8 = ptrtoint ptr %7 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i84 = phi ptr [ null, %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit ] ; 2 uses
  %.sink.i80 = phi i64 [ 0, %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %8, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.050.076 = phi ptr [ null, %_ZNSt6vectorISt7complexIdESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.d, %._crit_edge.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_Z14util_getVectorP5Quregi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %4, ptr noundef %2, i32 noundef %3)
          to label %bb.b unwind label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader87, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader87 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.l, i64 0
  store <2 x double> %i.n, ptr %i.m, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

bb.b:                                             ; preds = %._crit_edge
  %i.o = ptrtoint ptr %.0.lcssa.i.i.i.i.i84 to i64 ; 2 uses
  %i.p = ptrtoint ptr %.sroa.050.076 to i64       ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i29 = icmp eq ptr %.0.lcssa.i.i.i.i.i84, %.sroa.050.076
  br i1 %.not.i.i.i.i29, label %.noexc32.thread, label %bb.c

.noexc32.thread:                                  ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr null, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !29
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt i64 %i.q, 9223372036854775792
  br i1 %i.u, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #14
          to label %.noexc31 unwind label %bb.o

.noexc31:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15
          to label %.noexc32 unwind label %bb.o   ; 5 uses

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.v, ptr %5, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !29
  %i.z = add i64 %i.o, -16
  %i.aa = sub i64 %i.z, %i.p
  %i.ab = and i64 %i.aa, -16
  %i.ac = add i64 %i.ab, 16                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %.sroa.050.076, i64 %i.ac, i1 false)
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc32, %.noexc32.thread
  %i.ad = phi ptr [ %i.t, %.noexc32.thread ], [ %i.y, %.noexc32 ] ; 2 uses
  %i.ae = phi ptr [ %i.r, %.noexc32.thread ], [ %i.w, %.noexc32 ]
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ null, %.noexc32.thread ], [ %scevgep, %.noexc32 ]
  store ptr %.0.lcssa.i.i.i.i.i30, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !35    ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i33 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i33, label %.noexc36, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.al = sdiv exact i64 %i.ak, 104
  %i.am = icmp ugt i64 %i.al, 88686269585142075
  br i1 %i.am, label %.noexc.i.i34, label %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i34:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #14
          to label %.noexc35 unwind label %bb.p

.noexc35:                                         ; preds = %.noexc.i.i34
  unreachable

_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #15
          to label %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge unwind label %bb.p

_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge: ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %.pre59 = load ptr, ptr %i.af, align 8, !tbaa !36
  %.pre60 = ptrtoint ptr %.pre59 to i64
  %.pre61 = ptrtoint ptr %.pre to i64
  br label %.noexc36

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge, %.loopexit
  %.pre-phi62 = phi i64 [ %.pre61, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge ], [ %i.aj, %.loopexit ]
  %.pre-phi = phi i64 [ %.pre60, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge ], [ %i.ai, %.loopexit ]
  %i.ao = phi ptr [ %.pre, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge ], [ %i.ah, %.loopexit ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i..noexc36_crit_edge ], [ null, %.loopexit ] ; 5 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !37
  %i.at = sub i64 %.pre-phi, %.pre-phi62          ; 4 uses
  %i.au = icmp sgt i64 %i.at, 104
  br i1 %i.au, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr align 8 %i.ao, i64 %i.at, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc36
  %i.av = icmp eq i64 %i.at, 104
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ap, ptr noundef nonnull align 8 dereferenceable(104) %i.ao, i64 104, i1 false), !tbaa.struct !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !34
  invoke void @_Z40localiser_statevec_setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %6, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit:             ; preds = %bb.i, %bb.j
  %i.bc = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #16
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, %bb.k
  %i.bh = load ptr, ptr %4, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit39, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit39

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit39:           ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not.i.i.i40 = icmp eq ptr %.sroa.050.076, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit41, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit39
  %i.bn = sub i64 %.sink.i80, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.076, i64 noundef %i.bn) #16
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit41

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit41:    ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit39, %bb.m
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit47

bb.o:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit45

bb.p:                                             ; preds = %_ZNSt15__new_allocatorI5QuregE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i34
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit43

bb.q:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #16
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit43

end_hunk_0
