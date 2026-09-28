Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3gmx16nbnxn_atomdata_t12reduceForcesENS_12AtomLocalityERKNS_7GridSetENS_8ArrayRefINS_11BasicVectorIfEEEE:bb.a
    i32 2, label %bb.g
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.013.i = phi i32 [ %i.ai, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %.0.i = phi i32 [ %i.aj, %bb.f ], [ %i.ai, %bb.e ], [ %i.aj, %bb.d ] ; 3 uses
  %.not.i.i = icmp sgt i32 %.013.i, %.0.i
  br i1 %.not.i.i, label %bb.h, label %_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.35, i32 noundef 111) #33
  unreachable

_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit: ; preds = %bb.g
  %.sroa.2.0.insert.ext.i = zext i32 %.0.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.013.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %6, align 8
  %i.ak = icmp eq i32 %.0.i, %.013.i
  br i1 %i.ak, label %_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.al = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 3) ; 2 uses
  store i32 %i.al, ptr %i.b, align 4, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !138
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 144               ; 2 uses
  %i.au = icmp ugt i64 %i.at, 1
  br i1 %i.au, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1569) #33
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.av, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ax = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !99
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bc = trunc i64 %i.at to i32                  ; 2 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !93
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.bc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(656) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.bd = load i8, ptr %i.f, align 1, !tbaa !201, !range !119, !noundef !122
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !111
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bh = phi ptr [ %i.bg, %bb.s ], [ null, %bb.r ]
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !205
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.al)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN3gmx16nbnxn_atomdata_t12reduceForcesENS_12AtomLocalityERKNS_7GridSetENS_8ArrayRefINS_11BasicVectorIfEEEE.omp_outlined, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %0, ptr nonnull %6, ptr nonnull %i.c, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit.thread

_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit.thread: ; preds = %bb.d, %_ZN3gmxL12getAtomRangeENS_12AtomLocalityERKNS_7GridSetE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx16nbnxn_atomdata_t12reduceForcesENS_12AtomLocalityERKNS_7GridSetENS_8ArrayRefINS_11BasicVectorIfEEEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !93     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.g, ptr %i.b, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !93
  %i.h = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !93
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !93
  %i.k = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %.not105 = icmp sgt i32 %i.k, %i.j
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 125
  %i.m = load i8, ptr %i.l, align 1, !tbaa !201, !range !119, !noundef !122
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 420 ; 2 uses
  %i.p = load i32, ptr %5, align 4, !tbaa !203    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !204
  %i.s = sub nsw i32 %i.r, %i.p
  %i.t = load i32, ptr %2, align 4, !tbaa !93
  %i.u = load i32, ptr %i.o, align 4, !tbaa !130
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 600 ; 4 uses
  %i.w = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.z = shufflevector <2 x i32> %i.y, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit
  %.0106 = phi i32 [ %i.k, %.lr.ph ], [ %i.ag, %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit ] ; 3 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !130
  %i.ad = icmp eq i32 %i.ac, 3
  %i.ae = select i1 %i.ad, i32 8, i32 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.af = phi i32 [ %i.ae, %bb.d ], [ 1, %bb.c ]
  %i.ag = add i32 %.0106, 1
  %i.ah = insertelement <2 x i32> poison, i32 %.0106, i64 0
  %i.ai = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aj = add <2 x i32> %i.ai, <i32 0, i32 1>
  %i.ak = mul nsw <2 x i32> %i.z, %i.aj
  %i.al = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.am = shufflevector <2 x i32> %i.al, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = sdiv <2 x i32> %i.ak, %i.am
  %i.ao = sdiv <2 x i32> %i.an, %i.ab
  %i.ap = mul <2 x i32> %i.ao, %i.am              ; 9 uses
  %i.aq = add <2 x i32> %i.ap, %i.x               ; 15 uses
  switch i32 %i.u, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.as = load ptr, ptr %6, align 8, !tbaa !205   ; 4 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !416   ; 9 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  %.val = load ptr, ptr %i.au, align 8, !tbaa !76 ; 9 uses
  %i.av = icmp eq ptr %i.as, null
  %shift = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = icmp slt <2 x i32> %i.ap, %shift
  %i.ax = extractelement <2 x i1> %i.aw, i64 0    ; 2 uses
  br i1 %i.av, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.f
  br i1 %i.ax, label %.lr.ph.preheader.i, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph.preheader.i:                               ; preds = %.preheader1.i
  %i.ay = extractelement <2 x i32> %i.aq, i64 0
  %i.az = sext i32 %i.ay to i64                   ; 6 uses
  %i.ba = extractelement <2 x i32> %i.aq, i64 1
  %wide.trip.count.i = sext i32 %i.ba to i64      ; 3 uses
  %i.bb = sub nsw i64 %wide.trip.count.i, %i.az
  %xtraiter187 = and i64 %i.bb, 1
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !93
  %i.be = mul nsw i32 %i.bd, 3
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bf ; 3 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !79
  %i.bi = getelementptr inbounds [12 x i8], ptr %i.at, i64 %i.az ; 4 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !79
  %i.bk = fadd float %i.bh, %i.bj
  store float %i.bk, ptr %i.bi, align 4, !tbaa !79
  %i.bl = getelementptr i8, ptr %i.bg, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !79
  %i.bp = fadd float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !79
  %i.bq = getelementptr i8, ptr %i.bg, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !79
  %i.bu = fadd float %i.br, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !79
  %indvars.iv.next.i.prol = add nsw i64 %i.az, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.az, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bv = add nsw i64 %wide.trip.count.i, -1
  %i.bw = icmp eq i64 %i.bv, %i.az
  br i1 %i.bw, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %i.ax, label %.lr.ph5.preheader.i, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph5.preheader.i:                              ; preds = %.preheader.i
  %i.bx = sext <2 x i32> %i.aq to <2 x i64>       ; 3 uses
  %i.by = extractelement <2 x i64> %i.bx, i64 0   ; 5 uses
  %i.bz = extractelement <2 x i64> %i.bx, i64 1   ; 4 uses
  %i.ca = sub nsw i64 %i.bz, %i.by                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph5.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph5.preheader.i
  %i.cb = mul nsw <2 x i64> %i.bx, splat (i64 12) ; 2 uses
  %i.cc = extractelement <2 x i64> %i.cb, i64 0   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cc
  %i.cd = extractelement <2 x i64> %i.cb, i64 1   ; 2 uses
  %scevgep135 = getelementptr i8, ptr %i.at, i64 %i.cd
  %scevgep136 = getelementptr i8, ptr %.val, i64 %i.cc
  %scevgep137 = getelementptr i8, ptr %.val, i64 %i.cd
  %bound0 = icmp ult ptr %scevgep, %scevgep137
  %bound1 = icmp ult ptr %scevgep136, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph5.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.ce = add nsw i64 %n.vec, %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = add i64 %index, %i.by                   ; 2 uses
  %i.cg = mul nsw i64 %i.cf, 12
  %i.ch = getelementptr inbounds i8, ptr %.val, i64 %i.cg
  %wide.vec = load <24 x float>, ptr %i.ch, align 4, !tbaa !79, !alias.scope !417
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.at, i64 %i.cf ; 2 uses
  %wide.vec140 = load <24 x float>, ptr %i.ci, align 4, !tbaa !79, !alias.scope !418, !noalias !417
  %interleaved.vec = fadd <24 x float> %wide.vec, %wide.vec140
  store <24 x float> %interleaved.vec, ptr %i.ci, align 4, !tbaa !79, !alias.scope !418, !noalias !417
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph5.i.preheader

.lr.ph5.i.preheader:                              ; preds = %vector.memcheck, %.lr.ph5.preheader.i, %middle.block
  %indvars.iv8.i.ph = phi i64 [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph5.preheader.i ], [ %i.ce, %middle.block ] ; 6 uses
  %i.ck = sub nsw i64 %i.bz, %indvars.iv8.i.ph
  %.neg = add nsw i64 %indvars.iv8.i.ph, 1
  %xtraiter189 = and i64 %i.ck, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph5.i.prol.loopexit, label %.lr.ph5.i.prol

.lr.ph5.i.prol:                                   ; preds = %.lr.ph5.i.preheader
  %.idx.i.prol = mul nsw i64 %indvars.iv8.i.ph, 12
  %i.cl = getelementptr inbounds i8, ptr %.val, i64 %.idx.i.prol ; 3 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !79
  %i.cn = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv8.i.ph ; 4 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  %i.cp = fadd float %i.cm, %i.co
  store float %i.cp, ptr %i.cn, align 4, !tbaa !79
  %i.cq = getelementptr i8, ptr %i.cl, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !79
  %i.cu = fadd float %i.cr, %i.ct
  store float %i.cu, ptr %i.cs, align 4, !tbaa !79
  %i.cv = getelementptr i8, ptr %i.cl, i64 8
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !79
  %i.cz = fadd float %i.cw, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !79
  %indvars.iv.next9.i.prol = add nsw i64 %indvars.iv8.i.ph, 1
  br label %.lr.ph5.i.prol.loopexit

.lr.ph5.i.prol.loopexit:                          ; preds = %.lr.ph5.i.prol, %.lr.ph5.i.preheader
  %indvars.iv8.i.unr = phi i64 [ %indvars.iv8.i.ph, %.lr.ph5.i.preheader ], [ %indvars.iv.next9.i.prol, %.lr.ph5.i.prol ]
  %i.da = icmp eq i64 %i.bz, %.neg
  br i1 %i.da, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.lr.ph5.i.prol.loopexit, %.lr.ph5.i
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i.1, %.lr.ph5.i ], [ %indvars.iv8.i.unr, %.lr.ph5.i.prol.loopexit ] ; 4 uses
  %.idx.i = mul nsw i64 %indvars.iv8.i, 12
  %i.db = getelementptr inbounds i8, ptr %.val, i64 %.idx.i ; 3 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !79
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv8.i ; 4 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !79
  %i.df = fadd float %i.dc, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !79
  %i.dg = getelementptr i8, ptr %i.db, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !79
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !79
  %i.dk = fadd float %i.dh, %i.dj
  store float %i.dk, ptr %i.di, align 4, !tbaa !79
  %i.dl = getelementptr i8, ptr %i.db, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !79
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !79
  %i.dp = fadd float %i.dm, %i.do
  store float %i.dp, ptr %i.dn, align 4, !tbaa !79
  %indvars.iv.next9.i = add nsw i64 %indvars.iv8.i, 1 ; 2 uses
  %.idx.i.1 = mul nsw i64 %indvars.iv.next9.i, 12
  %i.dq = getelementptr inbounds i8, ptr %.val, i64 %.idx.i.1 ; 3 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !79
  %i.ds = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv.next9.i ; 4 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !79
  %i.du = fadd float %i.dr, %i.dt
  store float %i.du, ptr %i.ds, align 4, !tbaa !79
  %i.dv = getelementptr i8, ptr %i.dq, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !79
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !79
  %i.dz = fadd float %i.dw, %i.dy
  store float %i.dz, ptr %i.dx, align 4, !tbaa !79
  %i.ea = getelementptr i8, ptr %i.dq, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !79
  %i.ee = fadd float %i.eb, %i.ed
  store float %i.ee, ptr %i.ec, align 4, !tbaa !79
  %indvars.iv.next9.i.1 = add nsw i64 %indvars.iv8.i, 2 ; 2 uses
  %exitcond12.not.i.1 = icmp eq i64 %indvars.iv.next9.i.1, %i.bz
  br i1 %exitcond12.not.i.1, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph5.i, !llvm.loop !403

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !93
  %i.eh = mul nsw i32 %i.eg, 3
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ei ; 3 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !79
  %i.el = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv.i ; 4 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !79
  %i.en = fadd float %i.ek, %i.em
  store float %i.en, ptr %i.el, align 4, !tbaa !79
  %i.eo = getelementptr i8, ptr %i.ej, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !79
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !79
  %i.es = fadd float %i.ep, %i.er
  store float %i.es, ptr %i.eq, align 4, !tbaa !79
  %i.et = getelementptr i8, ptr %i.ej, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !79
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !79
  %i.ex = fadd float %i.eu, %i.ew
  store float %i.ex, ptr %i.ev, align 4, !tbaa !79
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv.next.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !93
  %i.fa = mul nsw i32 %i.ez, 3
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.fb ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !79
  %i.fe = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv.next.i ; 4 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !79
  %i.fg = fadd float %i.fd, %i.ff
  store float %i.fg, ptr %i.fe, align 4, !tbaa !79
  %i.fh = getelementptr i8, ptr %i.fc, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !79
  %i.fl = fadd float %i.fi, %i.fk
  store float %i.fl, ptr %i.fj, align 4, !tbaa !79
  %i.fm = getelementptr i8, ptr %i.fc, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !79
  %i.fq = fadd float %i.fn, %i.fp
  store float %i.fq, ptr %i.fo, align 4, !tbaa !79
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i, !llvm.loop !404

bb.g:                                             ; preds = %bb.e
  %i.fr = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.fs = load ptr, ptr %6, align 8, !tbaa !205   ; 4 uses
  %i.ft = load ptr, ptr %7, align 8, !tbaa !416   ; 9 uses
  %i.fu = getelementptr i8, ptr %i.fr, i64 8
  %.val39 = load ptr, ptr %i.fu, align 8, !tbaa !76 ; 9 uses
  %i.fv = icmp eq ptr %i.fs, null
  %shift171 = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.fw = icmp slt <2 x i32> %i.ap, %shift171
  %i.fx = extractelement <2 x i1> %i.fw, i64 0    ; 2 uses
  br i1 %i.fv, label %.preheader.i49, label %.preheader1.i42

.preheader1.i42:                                  ; preds = %bb.g
  br i1 %i.fx, label %.lr.ph.preheader.i43, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph.preheader.i43:                             ; preds = %.preheader1.i42
  %i.fy = extractelement <2 x i32> %i.aq, i64 0
  %i.fz = sext i32 %i.fy to i64                   ; 6 uses
  %i.ga = extractelement <2 x i32> %i.aq, i64 1
  %wide.trip.count.i44 = sext i32 %i.ga to i64    ; 3 uses
  %i.gb = sub nsw i64 %wide.trip.count.i44, %i.fz
  %xtraiter183 = and i64 %i.gb, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i45.prol.loopexit, label %.lr.ph.i45.prol

.lr.ph.i45.prol:                                  ; preds = %.lr.ph.preheader.i43
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.fz
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !93
  %i.ge = shl nsw i32 %i.gd, 2
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.gf ; 3 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !79
  %i.gi = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %i.fz ; 4 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !79
  %i.gk = fadd float %i.gh, %i.gj
  store float %i.gk, ptr %i.gi, align 4, !tbaa !79
  %i.gl = getelementptr i8, ptr %i.gg, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !79
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !79
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4, !tbaa !79
  %i.gq = getelementptr i8, ptr %i.gg, i64 8
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !79
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !79
  %i.gu = fadd float %i.gr, %i.gt
  store float %i.gu, ptr %i.gs, align 4, !tbaa !79
  %indvars.iv.next.i47.prol = add nsw i64 %i.fz, 1
  br label %.lr.ph.i45.prol.loopexit

.lr.ph.i45.prol.loopexit:                         ; preds = %.lr.ph.i45.prol, %.lr.ph.preheader.i43
  %indvars.iv.i46.unr = phi i64 [ %i.fz, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47.prol, %.lr.ph.i45.prol ]
  %i.gv = add nsw i64 %wide.trip.count.i44, -1
  %i.gw = icmp eq i64 %i.gv, %i.fz
  br i1 %i.gw, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i45

.preheader.i49:                                   ; preds = %bb.g
  br i1 %i.fx, label %.lr.ph5.preheader.i50, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph5.preheader.i50:                            ; preds = %.preheader.i49
  %i.gx = extractelement <2 x i32> %i.aq, i64 0
  %i.gy = sext i32 %i.gx to i64                   ; 7 uses
  %i.gz = extractelement <2 x i32> %i.aq, i64 1
  %wide.trip.count11.i51 = sext i32 %i.gz to i64  ; 6 uses
  %i.ha = sub nsw i64 %wide.trip.count11.i51, %i.gy ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.ha, 9
  br i1 %min.iters.check154, label %.lr.ph5.i52.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph5.preheader.i50
  %i.hb = mul nsw i64 %i.gy, 12
  %scevgep145 = getelementptr i8, ptr %i.ft, i64 %i.hb
  %i.hc = mul nsw i64 %wide.trip.count11.i51, 12
  %scevgep146 = getelementptr i8, ptr %i.ft, i64 %i.hc
  %i.hd = shl nsw i64 %i.gy, 4
  %scevgep147 = getelementptr i8, ptr %.val39, i64 %i.hd
  %scevgep148 = getelementptr i8, ptr %.val39, i64 -4
  %i.he = shl nsw i64 %wide.trip.count11.i51, 4
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.he
  %bound0150 = icmp ult ptr %scevgep145, %scevgep149
  %bound1151 = icmp ult ptr %scevgep147, %scevgep146
  %found.conflict152 = and i1 %bound0150, %bound1151
  br i1 %found.conflict152, label %.lr.ph5.i52.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck144
  %i.hf = and i64 %i.ha, 7                        ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  %i.hh = select i1 %i.hg, i64 8, i64 %i.hf
  %n.vec156 = sub nsw i64 %i.ha, %i.hh            ; 2 uses
  %i.hi = add nsw i64 %n.vec156, %i.gy
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next168, %vector.body157 ] ; 2 uses
  %i.hj = add i64 %index158, %i.gy                ; 2 uses
  %i.hk = shl nsw i64 %i.hj, 4
  %i.hl = getelementptr inbounds i8, ptr %.val39, i64 %i.hk
  %wide.vec159 = load <32 x float>, ptr %i.hl, align 4, !tbaa !79, !alias.scope !419 ; 3 uses
  %strided.vec160 = shufflevector <32 x float> %wide.vec159, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec161 = shufflevector <32 x float> %wide.vec159, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.hm = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %i.hj ; 2 uses
  %wide.vec163 = load <24 x float>, ptr %i.hm, align 4, !tbaa !79, !alias.scope !420, !noalias !419 ; 3 uses
  %strided.vec164 = shufflevector <24 x float> %wide.vec163, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec165 = shufflevector <24 x float> %wide.vec163, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.hn = fadd <8 x float> %strided.vec160, %strided.vec164
  %i.ho = fadd <8 x float> %strided.vec161, %strided.vec165
  %i.hp = shufflevector <8 x float> %i.hn, <8 x float> %i.ho, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hq = shufflevector <32 x float> %wide.vec159, <32 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hr = shufflevector <24 x float> %wide.vec163, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hs = fadd <16 x float> %i.hq, %i.hr
  %interleaved.vec167 = shufflevector <16 x float> %i.hp, <16 x float> %i.hs, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec167, ptr %i.hm, align 4, !tbaa !79, !alias.scope !420, !noalias !419
  %index.next168 = add nuw i64 %index158, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next168, %n.vec156
  br i1 %i.ht, label %.lr.ph5.i52.preheader, label %vector.body157, !llvm.loop !408

.lr.ph5.i52.preheader:                            ; preds = %vector.body157, %vector.memcheck144, %.lr.ph5.preheader.i50
  %indvars.iv8.i53.ph = phi i64 [ %i.gy, %vector.memcheck144 ], [ %i.gy, %.lr.ph5.preheader.i50 ], [ %i.hi, %vector.body157 ] ; 6 uses
  %i.hu = sub nsw i64 %wide.trip.count11.i51, %indvars.iv8.i53.ph
  %xtraiter185 = and i64 %i.hu, 1
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph5.i52.prol.loopexit, label %.lr.ph5.i52.prol

.lr.ph5.i52.prol:                                 ; preds = %.lr.ph5.i52.preheader
  %.idx.i54.prol = shl nsw i64 %indvars.iv8.i53.ph, 4
  %i.hv = getelementptr inbounds i8, ptr %.val39, i64 %.idx.i54.prol ; 3 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !79
  %i.hx = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %indvars.iv8.i53.ph ; 4 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !79
  %i.hz = fadd float %i.hw, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !79
  %i.ia = getelementptr i8, ptr %i.hv, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !79
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !79
  %i.ie = fadd float %i.ib, %i.id
  store float %i.ie, ptr %i.ic, align 4, !tbaa !79
  %i.if = getelementptr i8, ptr %i.hv, i64 8
  %i.ig = load float, ptr %i.if, align 4, !tbaa !79
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !79
  %i.ij = fadd float %i.ig, %i.ii
  store float %i.ij, ptr %i.ih, align 4, !tbaa !79
  %indvars.iv.next9.i55.prol = add nsw i64 %indvars.iv8.i53.ph, 1
  br label %.lr.ph5.i52.prol.loopexit

.lr.ph5.i52.prol.loopexit:                        ; preds = %.lr.ph5.i52.prol, %.lr.ph5.i52.preheader
  %indvars.iv8.i53.unr = phi i64 [ %indvars.iv8.i53.ph, %.lr.ph5.i52.preheader ], [ %indvars.iv.next9.i55.prol, %.lr.ph5.i52.prol ]
  %i.ik = add nsw i64 %wide.trip.count11.i51, -1
  %i.il = icmp eq i64 %indvars.iv8.i53.ph, %i.ik
  br i1 %i.il, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph5.i52

.lr.ph5.i52:                                      ; preds = %.lr.ph5.i52.prol.loopexit, %.lr.ph5.i52
  %indvars.iv8.i53 = phi i64 [ %indvars.iv.next9.i55.1, %.lr.ph5.i52 ], [ %indvars.iv8.i53.unr, %.lr.ph5.i52.prol.loopexit ] ; 4 uses
  %.idx.i54 = shl nsw i64 %indvars.iv8.i53, 4
  %i.im = getelementptr inbounds i8, ptr %.val39, i64 %.idx.i54 ; 3 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !79
  %i.io = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %indvars.iv8.i53 ; 4 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !79
  %i.iq = fadd float %i.in, %i.ip
  store float %i.iq, ptr %i.io, align 4, !tbaa !79
  %i.ir = getelementptr i8, ptr %i.im, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !79
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !79
  %i.iv = fadd float %i.is, %i.iu
  store float %i.iv, ptr %i.it, align 4, !tbaa !79
  %i.iw = getelementptr i8, ptr %i.im, i64 8
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !79
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !79
  %i.ja = fadd float %i.ix, %i.iz
  store float %i.ja, ptr %i.iy, align 4, !tbaa !79
  %indvars.iv.next9.i55 = add nsw i64 %indvars.iv8.i53, 1 ; 2 uses
  %.idx.i54.1 = shl nsw i64 %indvars.iv.next9.i55, 4
  %i.jb = getelementptr inbounds i8, ptr %.val39, i64 %.idx.i54.1 ; 3 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !79
  %i.jd = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %indvars.iv.next9.i55 ; 4 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !79
  %i.jf = fadd float %i.jc, %i.je
  store float %i.jf, ptr %i.jd, align 4, !tbaa !79
  %i.jg = getelementptr i8, ptr %i.jb, i64 4
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !79
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !79
  %i.jk = fadd float %i.jh, %i.jj
  store float %i.jk, ptr %i.ji, align 4, !tbaa !79
  %i.jl = getelementptr i8, ptr %i.jb, i64 8
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !79
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !79
  %i.jp = fadd float %i.jm, %i.jo
  store float %i.jp, ptr %i.jn, align 4, !tbaa !79
  %indvars.iv.next9.i55.1 = add nsw i64 %indvars.iv8.i53, 2 ; 2 uses
  %exitcond12.not.i56.1 = icmp eq i64 %indvars.iv.next9.i55.1, %wide.trip.count11.i51
  br i1 %exitcond12.not.i56.1, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph5.i52, !llvm.loop !409

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.prol.loopexit, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47.1, %.lr.ph.i45 ], [ %indvars.iv.i46.unr, %.lr.ph.i45.prol.loopexit ] ; 4 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %indvars.iv.i46
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !93
  %i.js = shl nsw i32 %i.jr, 2
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.jt ; 3 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !79
  %i.jw = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %indvars.iv.i46 ; 4 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !79
  %i.jy = fadd float %i.jv, %i.jx
  store float %i.jy, ptr %i.jw, align 4, !tbaa !79
  %i.jz = getelementptr i8, ptr %i.ju, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !79
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !79
  %i.kd = fadd float %i.ka, %i.kc
  store float %i.kd, ptr %i.kb, align 4, !tbaa !79
  %i.ke = getelementptr i8, ptr %i.ju, i64 8
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !79
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !79
  %i.ki = fadd float %i.kf, %i.kh
  store float %i.ki, ptr %i.kg, align 4, !tbaa !79
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %indvars.iv.next.i47
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !93
  %i.kl = shl nsw i32 %i.kk, 2
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.km ; 3 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !79
  %i.kp = getelementptr inbounds [12 x i8], ptr %i.ft, i64 %indvars.iv.next.i47 ; 4 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !79
  %i.kr = fadd float %i.ko, %i.kq
  store float %i.kr, ptr %i.kp, align 4, !tbaa !79
  %i.ks = getelementptr i8, ptr %i.kn, i64 4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !79
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !79
  %i.kw = fadd float %i.kt, %i.kv
  store float %i.kw, ptr %i.ku, align 4, !tbaa !79
  %i.kx = getelementptr i8, ptr %i.kn, i64 8
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !79
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !79
  %i.lb = fadd float %i.ky, %i.la
  store float %i.lb, ptr %i.kz, align 4, !tbaa !79
  %indvars.iv.next.i47.1 = add nsw i64 %indvars.iv.i46, 2 ; 2 uses
  %exitcond.not.i48.1 = icmp eq i64 %indvars.iv.next.i47.1, %wide.trip.count.i44
  br i1 %exitcond.not.i48.1, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i45, !llvm.loop !410

bb.h:                                             ; preds = %bb.e
  %i.lc = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.ld = load ptr, ptr %6, align 8, !tbaa !205   ; 4 uses
  %i.le = load ptr, ptr %7, align 8, !tbaa !416   ; 4 uses
  %i.lf = getelementptr i8, ptr %i.lc, i64 8
  %.val40 = load ptr, ptr %i.lf, align 8, !tbaa !76 ; 15 uses
  %i.lg = icmp eq ptr %i.ld, null
  %shift172 = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.lh = icmp slt <2 x i32> %i.ap, %shift172
  %i.li = extractelement <2 x i1> %i.lh, i64 0    ; 2 uses
  br i1 %i.lg, label %.preheader1.i63, label %.preheader2.i

.preheader2.i:                                    ; preds = %bb.h
  br i1 %i.li, label %.lr.ph.preheader.i57, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph.preheader.i57:                             ; preds = %.preheader2.i
  %i.lj = extractelement <2 x i32> %i.aq, i64 0
  %i.lk = sext i32 %i.lj to i64                   ; 6 uses
  %i.ll = extractelement <2 x i32> %i.aq, i64 1
  %wide.trip.count.i58 = sext i32 %i.ll to i64    ; 3 uses
  %i.lm = sub nsw i64 %wide.trip.count.i58, %i.lk
  %xtraiter181 = and i64 %i.lm, 1
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i59.prol.loopexit, label %.lr.ph.i59.prol

.lr.ph.i59.prol:                                  ; preds = %.lr.ph.preheader.i57
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.lk
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !93 ; 2 uses
  %i.lp = and i32 %i.lo, -4
  %i.lq = mul nsw i32 %i.lp, 3
  %i.lr = and i32 %i.lo, 3
  %i.ls = or disjoint i32 %i.lq, %i.lr
  %i.lt = getelementptr inbounds [12 x i8], ptr %i.le, i64 %i.lk ; 4 uses
  %i.lu = sext i32 %i.ls to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.lu ; 3 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !79
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !79
  %i.ly = fadd float %i.lw, %i.lx
  store float %i.ly, ptr %i.lt, align 4, !tbaa !79
  %i.lz = getelementptr i8, ptr %i.lv, i64 16
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !79
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !79
  %i.md = fadd float %i.ma, %i.mc
  store float %i.md, ptr %i.mb, align 4, !tbaa !79
  %i.me = getelementptr i8, ptr %i.lv, i64 32
  %i.mf = load float, ptr %i.me, align 4, !tbaa !79
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !79
  %i.mi = fadd float %i.mf, %i.mh
  store float %i.mi, ptr %i.mg, align 4, !tbaa !79
  %indvars.iv.next.i61.prol = add nsw i64 %i.lk, 1
  br label %.lr.ph.i59.prol.loopexit

.lr.ph.i59.prol.loopexit:                         ; preds = %.lr.ph.i59.prol, %.lr.ph.preheader.i57
  %indvars.iv.i60.unr = phi i64 [ %i.lk, %.lr.ph.preheader.i57 ], [ %indvars.iv.next.i61.prol, %.lr.ph.i59.prol ]
  %i.mj = add nsw i64 %wide.trip.count.i58, -1
  %i.mk = icmp eq i64 %i.mj, %i.lk
  br i1 %i.mk, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i59

.preheader1.i63:                                  ; preds = %bb.h
  br i1 %i.li, label %.lr.ph9.preheader.i, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph9.preheader.i:                              ; preds = %.preheader1.i63
  %i.ml = extractelement <2 x i32> %i.aq, i64 0
  %i.mm = sext i32 %i.ml to i64
  %i.mn = extractelement <2 x i32> %i.aq, i64 1
  %i.mo = sext i32 %i.mn to i64
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %.lr.ph9.i, %.lr.ph9.preheader.i
  %indvars.iv21.i = phi i64 [ %i.mm, %.lr.ph9.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph9.i ] ; 4 uses
  %i.mp = getelementptr inbounds [12 x i8], ptr %i.le, i64 %indvars.iv21.i ; 13 uses
  %.idx.i64 = mul nsw i64 %indvars.iv21.i, 12
  %i.mq = getelementptr inbounds i8, ptr %.val40, i64 %.idx.i64
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !79
  %i.ms = load float, ptr %i.mp, align 4, !tbaa !79
  %i.mt = fadd float %i.mr, %i.ms
  store float %i.mt, ptr %i.mp, align 4, !tbaa !79
  %i.mu = mul i64 %indvars.iv21.i, 12884901888    ; 11 uses
  %sext.i = add i64 %i.mu, 17179869184
  %i.mv = ashr exact i64 %sext.i, 30
  %i.mw = getelementptr inbounds i8, ptr %.val40, i64 %i.mv
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !79
  %i.my = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !79
  %i.na = fadd float %i.mx, %i.mz
  store float %i.na, ptr %i.my, align 4, !tbaa !79
  %sext27.i = add i64 %i.mu, 34359738368
  %i.nb = ashr exact i64 %sext27.i, 30
  %i.nc = getelementptr inbounds i8, ptr %.val40, i64 %i.nb
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !79
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !79
  %i.ng = fadd float %i.nd, %i.nf
  store float %i.ng, ptr %i.ne, align 4, !tbaa !79
  %i.nh = getelementptr i8, ptr %i.mp, i64 12     ; 2 uses
  %sext29.i = add i64 %i.mu, 4294967296
  %i.ni = ashr exact i64 %sext29.i, 30
  %i.nj = getelementptr inbounds i8, ptr %.val40, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !79
  %i.nl = load float, ptr %i.nh, align 4, !tbaa !79
  %i.nm = fadd float %i.nk, %i.nl
  store float %i.nm, ptr %i.nh, align 4, !tbaa !79
  %sext28.i = add i64 %i.mu, 21474836480
  %i.nn = ashr exact i64 %sext28.i, 30
  %i.no = getelementptr inbounds i8, ptr %.val40, i64 %i.nn
  %i.np = load float, ptr %i.no, align 4, !tbaa !79
  %i.nq = getelementptr i8, ptr %i.mp, i64 16     ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !79
  %i.ns = fadd float %i.np, %i.nr
  store float %i.ns, ptr %i.nq, align 4, !tbaa !79
  %sext30.i = add i64 %i.mu, 38654705664
  %i.nt = ashr exact i64 %sext30.i, 30
  %i.nu = getelementptr inbounds i8, ptr %.val40, i64 %i.nt
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !79
  %i.nw = getelementptr i8, ptr %i.mp, i64 20     ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !79
  %i.ny = fadd float %i.nv, %i.nx
  store float %i.ny, ptr %i.nw, align 4, !tbaa !79
  %i.nz = getelementptr i8, ptr %i.mp, i64 24     ; 2 uses
  %sext32.i = add i64 %i.mu, 8589934592
  %i.oa = ashr exact i64 %sext32.i, 30
  %i.ob = getelementptr inbounds i8, ptr %.val40, i64 %i.oa
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !79
  %i.od = load float, ptr %i.nz, align 4, !tbaa !79
  %i.oe = fadd float %i.oc, %i.od
  store float %i.oe, ptr %i.nz, align 4, !tbaa !79
  %sext31.i = add i64 %i.mu, 25769803776
  %i.of = ashr exact i64 %sext31.i, 30
  %i.og = getelementptr inbounds i8, ptr %.val40, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !79
  %i.oi = getelementptr i8, ptr %i.mp, i64 28     ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !79
  %i.ok = fadd float %i.oh, %i.oj
  store float %i.ok, ptr %i.oi, align 4, !tbaa !79
  %sext33.i = add i64 %i.mu, 42949672960
  %i.ol = ashr exact i64 %sext33.i, 30
  %i.om = getelementptr inbounds i8, ptr %.val40, i64 %i.ol
  %i.on = load float, ptr %i.om, align 4, !tbaa !79
  %i.oo = getelementptr i8, ptr %i.mp, i64 32     ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !79
  %i.oq = fadd float %i.on, %i.op
  store float %i.oq, ptr %i.oo, align 4, !tbaa !79
  %i.or = getelementptr i8, ptr %i.mp, i64 36     ; 2 uses
  %sext35.i = add i64 %i.mu, 12884901888
  %i.os = ashr exact i64 %sext35.i, 30
  %i.ot = getelementptr inbounds i8, ptr %.val40, i64 %i.os
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !79
  %i.ov = load float, ptr %i.or, align 4, !tbaa !79
  %i.ow = fadd float %i.ou, %i.ov
  store float %i.ow, ptr %i.or, align 4, !tbaa !79
  %sext34.i = add i64 %i.mu, 30064771072
  %i.ox = ashr exact i64 %sext34.i, 30
  %i.oy = getelementptr inbounds i8, ptr %.val40, i64 %i.ox
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !79
  %i.pa = getelementptr i8, ptr %i.mp, i64 40     ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !79
  %i.pc = fadd float %i.oz, %i.pb
  store float %i.pc, ptr %i.pa, align 4, !tbaa !79
  %sext36.i = add i64 %i.mu, 47244640256
  %i.pd = ashr exact i64 %sext36.i, 30
  %i.pe = getelementptr inbounds i8, ptr %.val40, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !79
  %i.pg = getelementptr i8, ptr %i.mp, i64 44     ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !79
  %i.pi = fadd float %i.pf, %i.ph
  store float %i.pi, ptr %i.pg, align 4, !tbaa !79
  %indvars.iv.next22.i = add nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %i.pj = icmp slt i64 %indvars.iv.next22.i, %i.mo
  br i1 %i.pj, label %.lr.ph9.i, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, !llvm.loop !411

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.prol.loopexit, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61.1, %.lr.ph.i59 ], [ %indvars.iv.i60.unr, %.lr.ph.i59.prol.loopexit ] ; 4 uses
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %indvars.iv.i60
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !93 ; 2 uses
  %i.pm = and i32 %i.pl, -4
  %i.pn = mul nsw i32 %i.pm, 3
  %i.po = and i32 %i.pl, 3
  %i.pp = or disjoint i32 %i.pn, %i.po
  %i.pq = getelementptr inbounds [12 x i8], ptr %i.le, i64 %indvars.iv.i60 ; 4 uses
  %i.pr = sext i32 %i.pp to i64
  %i.ps = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.pr ; 3 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !79
  %i.pu = load float, ptr %i.pq, align 4, !tbaa !79
  %i.pv = fadd float %i.pt, %i.pu
  store float %i.pv, ptr %i.pq, align 4, !tbaa !79
  %i.pw = getelementptr i8, ptr %i.ps, i64 16
  %i.px = load float, ptr %i.pw, align 4, !tbaa !79
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !79
  %i.qa = fadd float %i.px, %i.pz
  store float %i.qa, ptr %i.py, align 4, !tbaa !79
  %i.qb = getelementptr i8, ptr %i.ps, i64 32
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !79
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !79
  %i.qf = fadd float %i.qc, %i.qe
  store float %i.qf, ptr %i.qd, align 4, !tbaa !79
  %indvars.iv.next.i61 = add nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %indvars.iv.next.i61
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !93 ; 2 uses
  %i.qi = and i32 %i.qh, -4
  %i.qj = mul nsw i32 %i.qi, 3
  %i.qk = and i32 %i.qh, 3
  %i.ql = or disjoint i32 %i.qj, %i.qk
  %i.qm = getelementptr inbounds [12 x i8], ptr %i.le, i64 %indvars.iv.next.i61 ; 4 uses
  %i.qn = sext i32 %i.ql to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.qn ; 3 uses
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !79
  %i.qq = load float, ptr %i.qm, align 4, !tbaa !79
  %i.qr = fadd float %i.qp, %i.qq
  store float %i.qr, ptr %i.qm, align 4, !tbaa !79
  %i.qs = getelementptr i8, ptr %i.qo, i64 16
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !79
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !79
  %i.qw = fadd float %i.qt, %i.qv
  store float %i.qw, ptr %i.qu, align 4, !tbaa !79
  %i.qx = getelementptr i8, ptr %i.qo, i64 32
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !79
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !79
  %i.rb = fadd float %i.qy, %i.ra
  store float %i.rb, ptr %i.qz, align 4, !tbaa !79
  %indvars.iv.next.i61.1 = add nsw i64 %indvars.iv.i60, 2 ; 2 uses
  %exitcond.not.i62.1 = icmp eq i64 %indvars.iv.next.i61.1, %wide.trip.count.i58
  br i1 %exitcond.not.i62.1, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i59, !llvm.loop !412

bb.i:                                             ; preds = %bb.e
  %i.rc = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.rd = load ptr, ptr %6, align 8, !tbaa !205   ; 4 uses
  %i.re = load ptr, ptr %7, align 8, !tbaa !416   ; 4 uses
  %i.rf = getelementptr i8, ptr %i.rc, i64 8
  %.val41 = load ptr, ptr %i.rf, align 8, !tbaa !76 ; 27 uses
  %i.rg = icmp eq ptr %i.rd, null
  %shift173 = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.rh = icmp slt <2 x i32> %i.ap, %shift173
  %i.ri = extractelement <2 x i1> %i.rh, i64 0    ; 2 uses
  br i1 %i.rg, label %.preheader1.i72, label %.preheader2.i65

.preheader2.i65:                                  ; preds = %bb.i
  br i1 %i.ri, label %.lr.ph.preheader.i66, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph.preheader.i66:                             ; preds = %.preheader2.i65
  %i.rj = extractelement <2 x i32> %i.aq, i64 0
  %i.rk = sext i32 %i.rj to i64                   ; 6 uses
  %i.rl = extractelement <2 x i32> %i.aq, i64 1
  %wide.trip.count.i67 = sext i32 %i.rl to i64    ; 3 uses
  %i.rm = sub nsw i64 %wide.trip.count.i67, %i.rk
  %xtraiter = and i64 %i.rm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i68.prol.loopexit, label %.lr.ph.i68.prol

.lr.ph.i68.prol:                                  ; preds = %.lr.ph.preheader.i66
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rk
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !93 ; 2 uses
  %i.rp = and i32 %i.ro, -8
  %i.rq = mul nsw i32 %i.rp, 3
  %i.rr = and i32 %i.ro, 7
  %i.rs = or disjoint i32 %i.rq, %i.rr
  %i.rt = getelementptr inbounds [12 x i8], ptr %i.re, i64 %i.rk ; 4 uses
  %i.ru = sext i32 %i.rs to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %.val41, i64 %i.ru ; 3 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !79
  %i.rx = load float, ptr %i.rt, align 4, !tbaa !79
  %i.ry = fadd float %i.rw, %i.rx
  store float %i.ry, ptr %i.rt, align 4, !tbaa !79
  %i.rz = getelementptr i8, ptr %i.rv, i64 32
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !79
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 4 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !79
  %i.sd = fadd float %i.sa, %i.sc
  store float %i.sd, ptr %i.sb, align 4, !tbaa !79
  %i.se = getelementptr i8, ptr %i.rv, i64 64
  %i.sf = load float, ptr %i.se, align 4, !tbaa !79
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !79
  %i.si = fadd float %i.sf, %i.sh
  store float %i.si, ptr %i.sg, align 4, !tbaa !79
  %indvars.iv.next.i70.prol = add nsw i64 %i.rk, 1
  br label %.lr.ph.i68.prol.loopexit

.lr.ph.i68.prol.loopexit:                         ; preds = %.lr.ph.i68.prol, %.lr.ph.preheader.i66
  %indvars.iv.i69.unr = phi i64 [ %i.rk, %.lr.ph.preheader.i66 ], [ %indvars.iv.next.i70.prol, %.lr.ph.i68.prol ]
  %i.sj = add nsw i64 %wide.trip.count.i67, -1
  %i.sk = icmp eq i64 %i.sj, %i.rk
  br i1 %i.sk, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i68

.preheader1.i72:                                  ; preds = %bb.i
  br i1 %i.ri, label %.lr.ph9.preheader.i73, label %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit

.lr.ph9.preheader.i73:                            ; preds = %.preheader1.i72
  %i.sl = extractelement <2 x i32> %i.aq, i64 0
  %i.sm = sext i32 %i.sl to i64
  %i.sn = extractelement <2 x i32> %i.aq, i64 1
  %i.so = sext i32 %i.sn to i64
  br label %.lr.ph9.i74

.lr.ph9.i74:                                      ; preds = %.lr.ph9.i74, %.lr.ph9.preheader.i73
  %indvars.iv21.i75 = phi i64 [ %i.sm, %.lr.ph9.preheader.i73 ], [ %indvars.iv.next22.i88, %.lr.ph9.i74 ] ; 4 uses
  %i.sp = getelementptr inbounds [12 x i8], ptr %i.re, i64 %indvars.iv21.i75 ; 25 uses
  %.idx.i76 = mul nsw i64 %indvars.iv21.i75, 12
  %i.sq = getelementptr inbounds i8, ptr %.val41, i64 %.idx.i76
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !79
  %i.ss = load float, ptr %i.sp, align 4, !tbaa !79
  %i.st = fadd float %i.sr, %i.ss
  store float %i.st, ptr %i.sp, align 4, !tbaa !79
  %i.su = mul i64 %indvars.iv21.i75, 12884901888  ; 23 uses
  %sext.i77 = add i64 %i.su, 34359738368
  %i.sv = ashr exact i64 %sext.i77, 30
  %i.sw = getelementptr inbounds i8, ptr %.val41, i64 %i.sv
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !79
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sp, i64 4 ; 2 uses
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !79
  %i.ta = fadd float %i.sx, %i.sz
  store float %i.ta, ptr %i.sy, align 4, !tbaa !79
  %sext27.i78 = add i64 %i.su, 68719476736
  %i.tb = ashr exact i64 %sext27.i78, 30
  %i.tc = getelementptr inbounds i8, ptr %.val41, i64 %i.tb
  %i.td = load float, ptr %i.tc, align 4, !tbaa !79
  %i.te = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !79
  %i.tg = fadd float %i.td, %i.tf
  store float %i.tg, ptr %i.te, align 4, !tbaa !79
  %i.th = getelementptr i8, ptr %i.sp, i64 12     ; 2 uses
  %sext29.i79 = add i64 %i.su, 4294967296
  %i.ti = ashr exact i64 %sext29.i79, 30
  %i.tj = getelementptr inbounds i8, ptr %.val41, i64 %i.ti
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !79
  %i.tl = load float, ptr %i.th, align 4, !tbaa !79
  %i.tm = fadd float %i.tk, %i.tl
  store float %i.tm, ptr %i.th, align 4, !tbaa !79
  %sext28.i80 = add i64 %i.su, 38654705664
  %i.tn = ashr exact i64 %sext28.i80, 30
  %i.to = getelementptr inbounds i8, ptr %.val41, i64 %i.tn
  %i.tp = load float, ptr %i.to, align 4, !tbaa !79
  %i.tq = getelementptr i8, ptr %i.sp, i64 16     ; 2 uses
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !79
  %i.ts = fadd float %i.tp, %i.tr
  store float %i.ts, ptr %i.tq, align 4, !tbaa !79
  %sext30.i81 = add i64 %i.su, 73014444032
  %i.tt = ashr exact i64 %sext30.i81, 30
  %i.tu = getelementptr inbounds i8, ptr %.val41, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !79
  %i.tw = getelementptr i8, ptr %i.sp, i64 20     ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !79
  %i.ty = fadd float %i.tv, %i.tx
  store float %i.ty, ptr %i.tw, align 4, !tbaa !79
  %i.tz = getelementptr i8, ptr %i.sp, i64 24     ; 2 uses
  %sext32.i82 = add i64 %i.su, 8589934592
  %i.ua = ashr exact i64 %sext32.i82, 30
  %i.ub = getelementptr inbounds i8, ptr %.val41, i64 %i.ua
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !79
  %i.ud = load float, ptr %i.tz, align 4, !tbaa !79
  %i.ue = fadd float %i.uc, %i.ud
  store float %i.ue, ptr %i.tz, align 4, !tbaa !79
  %sext31.i83 = add i64 %i.su, 42949672960
  %i.uf = ashr exact i64 %sext31.i83, 30
  %i.ug = getelementptr inbounds i8, ptr %.val41, i64 %i.uf
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !79
  %i.ui = getelementptr i8, ptr %i.sp, i64 28     ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !79
  %i.uk = fadd float %i.uh, %i.uj
  store float %i.uk, ptr %i.ui, align 4, !tbaa !79
  %sext33.i84 = add i64 %i.su, 77309411328
  %i.ul = ashr exact i64 %sext33.i84, 30
  %i.um = getelementptr inbounds i8, ptr %.val41, i64 %i.ul
  %i.un = load float, ptr %i.um, align 4, !tbaa !79
  %i.uo = getelementptr i8, ptr %i.sp, i64 32     ; 2 uses
  %i.up = load float, ptr %i.uo, align 4, !tbaa !79
  %i.uq = fadd float %i.un, %i.up
  store float %i.uq, ptr %i.uo, align 4, !tbaa !79
  %i.ur = getelementptr i8, ptr %i.sp, i64 36     ; 2 uses
  %sext35.i85 = add i64 %i.su, 12884901888
  %i.us = ashr exact i64 %sext35.i85, 30
  %i.ut = getelementptr inbounds i8, ptr %.val41, i64 %i.us
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !79
  %i.uv = load float, ptr %i.ur, align 4, !tbaa !79
  %i.uw = fadd float %i.uu, %i.uv
  store float %i.uw, ptr %i.ur, align 4, !tbaa !79
  %sext34.i86 = add i64 %i.su, 47244640256
  %i.ux = ashr exact i64 %sext34.i86, 30
  %i.uy = getelementptr inbounds i8, ptr %.val41, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !79
  %i.va = getelementptr i8, ptr %i.sp, i64 40     ; 2 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !79
  %i.vc = fadd float %i.uz, %i.vb
  store float %i.vc, ptr %i.va, align 4, !tbaa !79
  %sext36.i87 = add i64 %i.su, 81604378624
  %i.vd = ashr exact i64 %sext36.i87, 30
  %i.ve = getelementptr inbounds i8, ptr %.val41, i64 %i.vd
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !79
  %i.vg = getelementptr i8, ptr %i.sp, i64 44     ; 2 uses
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !79
  %i.vi = fadd float %i.vf, %i.vh
  store float %i.vi, ptr %i.vg, align 4, !tbaa !79
  %i.vj = getelementptr i8, ptr %i.sp, i64 48     ; 2 uses
  %sext38.i = add i64 %i.su, 17179869184
  %i.vk = ashr exact i64 %sext38.i, 30
  %i.vl = getelementptr inbounds i8, ptr %.val41, i64 %i.vk
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !79
  %i.vn = load float, ptr %i.vj, align 4, !tbaa !79
  %i.vo = fadd float %i.vm, %i.vn
  store float %i.vo, ptr %i.vj, align 4, !tbaa !79
  %sext37.i = add i64 %i.su, 51539607552
  %i.vp = ashr exact i64 %sext37.i, 30
  %i.vq = getelementptr inbounds i8, ptr %.val41, i64 %i.vp
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !79
  %i.vs = getelementptr i8, ptr %i.sp, i64 52     ; 2 uses
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !79
  %i.vu = fadd float %i.vr, %i.vt
  store float %i.vu, ptr %i.vs, align 4, !tbaa !79
  %sext39.i = add i64 %i.su, 85899345920
  %i.vv = ashr exact i64 %sext39.i, 30
  %i.vw = getelementptr inbounds i8, ptr %.val41, i64 %i.vv
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !79
  %i.vy = getelementptr i8, ptr %i.sp, i64 56     ; 2 uses
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !79
  %i.wa = fadd float %i.vx, %i.vz
  store float %i.wa, ptr %i.vy, align 4, !tbaa !79
  %i.wb = getelementptr i8, ptr %i.sp, i64 60     ; 2 uses
  %sext41.i = add i64 %i.su, 21474836480
  %i.wc = ashr exact i64 %sext41.i, 30
  %i.wd = getelementptr inbounds i8, ptr %.val41, i64 %i.wc
  %i.we = load float, ptr %i.wd, align 4, !tbaa !79
  %i.wf = load float, ptr %i.wb, align 4, !tbaa !79
  %i.wg = fadd float %i.we, %i.wf
  store float %i.wg, ptr %i.wb, align 4, !tbaa !79
  %sext40.i = add i64 %i.su, 55834574848
  %i.wh = ashr exact i64 %sext40.i, 30
  %i.wi = getelementptr inbounds i8, ptr %.val41, i64 %i.wh
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !79
  %i.wk = getelementptr i8, ptr %i.sp, i64 64     ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !79
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.wk, align 4, !tbaa !79
  %sext42.i = add i64 %i.su, 90194313216
end_hunk_0
