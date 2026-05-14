inline.NumInlined: 1843
inline.NumDeleted: 893
begin_hunk_0_@_ZNK6duckdb15ReservoirSample10ShuffleSelERNS_15SelectionVectorEmm:bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01727.prol
  store i32 %i.o, ptr %i.p, align 4, !tbaa !3
  %i.q = add nuw i64 %.01727.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN6duckdb15SelectionVectorC2Em.exit.prol.loopexit, label %_ZN6duckdb15SelectionVectorC2Em.exit.prol, !llvm.loop !225

_ZN6duckdb15SelectionVectorC2Em.exit.prol.loopexit: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.prol, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader58
  %.01727.unr = phi i64 [ %.01727.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader58 ], [ %i.q, %_ZN6duckdb15SelectionVectorC2Em.exit.prol ]
  %i.r = sub i64 %.01727.ph, %2
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit

_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader: ; preds = %.lr.ph
  br i1 %min.iters.check47, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader57, label %vector.ph48

vector.ph48:                                      ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader
  %n.vec50 = and i64 %2, -8                       ; 3 uses
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next53, %vector.body51 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph48 ], [ %vec.ind.next, %vector.body51 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index52 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %vec.ind, ptr %i.t, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.u, align 4, !tbaa !3
  %index.next53 = add nuw i64 %index52, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.v = icmp eq i64 %index.next53, %n.vec50
  br i1 %i.v, label %middle.block54, label %vector.body51, !llvm.loop !227

middle.block54:                                   ; preds = %vector.body51
  %cmp.n55 = icmp eq i64 %2, %n.vec50
  br i1 %cmp.n55, label %.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader57

_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader57: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader, %middle.block54
  %.01727.us.ph = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader ], [ %n.vec50, %middle.block54 ]
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.us

_ZN6duckdb15SelectionVectorC2Em.exit.us:          ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader57, %_ZN6duckdb15SelectionVectorC2Em.exit.us
  %.01727.us = phi i64 [ %i.y, %_ZN6duckdb15SelectionVectorC2Em.exit.us ], [ %.01727.us.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.us.preheader57 ] ; 3 uses
  %i.w = trunc i64 %.01727.us to i32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01727.us
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %i.y = add nuw i64 %.01727.us, 1                ; 2 uses
  %exitcond33.not = icmp eq i64 %i.y, %2
  br i1 %exitcond33.not, label %.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.us, !llvm.loop !228

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #29
  br label %.body

.preheader:                                       ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.prol.loopexit, %_ZN6duckdb15SelectionVectorC2Em.exit, %_ZN6duckdb15SelectionVectorC2Em.exit.us, %middle.block, %middle.block54, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %.not30 = icmp eq i64 %3, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph29

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.prol.loopexit, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.01727 = phi i64 [ %i.ap, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ %.01727.unr, %_ZN6duckdb15SelectionVectorC2Em.exit.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01727
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01727
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = add nuw i64 %.01727, 1                  ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = add nuw i64 %.01727, 2                  ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %i.al = add nuw i64 %.01727, 3                  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.al
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = add nuw i64 %.01727, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ap, %2
  br i1 %exitcond.not.3, label %.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !135 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.as, align 8, !tbaa !138
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !140
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #29, !inline_history !145
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !141
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.bf, %bb.g ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.h, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %._crit_edge, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bh = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

.lr.ph29:                                         ; preds = %.preheader, %bb.l
  %.028 = phi i64 [ %i.br, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.bi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.028)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %.lr.ph29
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %.not.i23 = icmp eq ptr %i.bk, null
  br i1 %.not.i23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bo = phi i32 [ %i.bn, %bb.k ], [ %i.bj, %bb.j ]
  %i.bp = load ptr, ptr %1, align 8, !tbaa !137
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.028
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !3
  %i.br = add nuw i64 %.028, 1                    ; 2 uses
  %exitcond34.not = icmp eq i64 %i.br, %3
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph29, !llvm.loop !230

bb.m:                                             ; preds = %.lr.ph29
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  br label %.body

.body:                                            ; preds = %bb.b, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %i.z, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bt = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIjSaIjEED2Ev.exit26, label %bb.n

bb.n:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit26

_ZNSt6vectorIjSaIjEED2Ev.exit26:                  ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample16NormalizeWeightsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.3, %bb.l ] ; 27 uses
  %.sroa.11.0 = phi ptr [ null, %bb.a ], [ %.sroa.11.1, %bb.l ] ; 13 uses
  %.sroa.18.0 = phi ptr [ null, %bb.a ], [ %.sroa.18.1, %bb.l ] ; 2 uses
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %.loopexit24 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %.loopexit29

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.k, align 8
  %.not.i.i = icmp eq ptr %.sroa.11.0, %.sroa.18.0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE9push_backEOS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = ptrtoint ptr %.sroa.11.0 to i64
  %i.m = ptrtoint ptr %.sroa.0.0 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.h, label %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
          to label %.noexc unwind label %.loopexit.split-lp30

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #27
          to label %.noexc5 unwind label %.loopexit29 ; 5 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %.sroa.11.0
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc5, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %.noexc5 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0, %.noexc5 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !231
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %.sroa.11.0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc5 ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.0) #28
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0.3 = phi ptr [ %i.v, %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.f ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.0, %bb.f ]
  %.sroa.18.1 = phi ptr [ %i.z, %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.0, %bb.f ]
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 16
  %i.aa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %.loopexit29 ; 2 uses

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE9push_backEOS1_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 16
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load double, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ak = load double, ptr %i.ac, align 8, !tbaa !51
  store double %i.ak, ptr %i.aj, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !50
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.an, %i.ag
  %i.ap = ashr exact i64 %i.ao, 4
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_T0_SF_T1_T2_(ptr nonnull %i.ac, i64 noundef 0, i64 noundef %i.ap, double %.sroa.03.0.copyload.i.i.i, i64 %.sroa.4.0.copyload.i.i.i)
          to label %.noexc6 unwind label %.loopexit29

.noexc6:                                          ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %.noexc6, %bb.j
  %i.aq = phi ptr [ %i.ae, %bb.j ], [ %.pre.i, %.noexc6 ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16
  store ptr %i.ar, ptr %i.ad, align 8, !tbaa !54
  br label %bb.b, !llvm.loop !235

.loopexit24:                                      ; preds = %bb.b
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp25:                             ; preds = %._crit_edge, %bb.aa
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit29:                                      ; preds = %bb.d, %_ZNSt6vectorISt4pairIdmESaIS1_EE9push_backEOS1_.exit, %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %bb.d ], [ %.sroa.0.0, %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.3, %_ZNSt6vectorISt4pairIdmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0.3, %bb.k ]
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp30:                             ; preds = %bb.h
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.c
  %.not.i.i7 = icmp eq ptr %.sroa.0.0, %.sroa.11.0
  br i1 %.not.i.i7, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEEZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EvT_SC_T0_.exit.thread", label %bb.n

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEEZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EvT_SC_T0_.exit.thread": ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.as = ptrtoint ptr %.sroa.11.0 to i64
  %i.at = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 4                 ; 4 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = xor i64 %i.ax, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.0.0, ptr %.sroa.11.0, i64 noundef %i.ay)
  %i.az = icmp sgt i64 %i.au, 256
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %.preheader.i24.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.q ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %bb.q ], [ 16, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.q ], [ %.sroa.0.0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.08.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.08.020.i.idx.i.i.i ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %i.ba = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load double, ptr %.sroa.08.020.i.ptr.i.i.i, align 8 ; 2 uses
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.p

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.o
  %i.bb = add i64 %indvar, 1
  %i.bc = lshr exact i64 %.sroa.08.020.i.idx.i.i.i, 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32 ; 2 uses
  %xtraiter104 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bc, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %.069.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bg = load double, ptr %i.be, align 8, !tbaa !51
  store double %i.bg, ptr %i.bf, align 8, !tbaa !48
  %i.bh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !46
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !50
  %i.bk = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !236

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bl = icmp ult i64 %indvar, 3
  br i1 %i.bl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !51
  store double %i.bo, ptr %i.bn, align 8, !tbaa !48
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !46
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !50
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !51
  store double %i.bu, ptr %i.bt, align 8, !tbaa !48
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !46
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !50
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -48
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -48
  %i.ca = load double, ptr %i.by, align 8, !tbaa !51
  store double %i.ca, ptr %i.bz, align 8, !tbaa !48
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !46
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -40
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !50
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !51
  store double %i.cg, ptr %i.cf, align 8, !tbaa !48
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !46
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !50
  %i.ck = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -4
  %i.cl = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, !llvm.loop !237

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store double %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.0.0, align 8, !tbaa !48
  store i64 %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !50
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.2.0..sroa_idx.i9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 8
  %.sroa.2.0.copyload.i10.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i9.i.i.i.i.i, align 8 ; 2 uses
  %i.cm = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i10.i.i.i.i.i
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i.i.i
  %.sroa.2.0.copyload.i12.i.i.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.2.0.copyload.i10.i.i.i.i.i, %bb.p ]
  %.sroa.06.011.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.p ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.011.i.i.i.i.i, i64 -16 ; 3 uses
  %i.cn = load double, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !51
  store double %i.cn, ptr %.sroa.06.011.i.i.i.i.i, align 8, !tbaa !48
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i.i.i.i, i64 8
  store i64 %.sroa.2.0.copyload.i12.i.i.i.i.i, ptr %i.co, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.011.i.i.i.i.i, i64 -24
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !238

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.p
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.p ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store double %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.cq, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i8 = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i8, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_.exit.i.i.i", label %bb.o, !llvm.loop !239

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_.exit.i.i.i": ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 256 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.cr, %.sroa.11.0
  br i1 %.not6.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.cx, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.cr, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_.exit.i.i.i" ] ; 6 uses
  %.sroa.04.0.copyload.i.i.i.i.i = load double, ptr %.sroa.0.07.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i9.i.i13.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i10.i.i14.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i9.i.i13.i.i.i, align 8 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i10.i.i14.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i18.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i18.i.i.i
  %.sroa.2.0.copyload.i12.i.i19.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i23.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.2.0.copyload.i10.i.i14.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.06.011.i.i20.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i21.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.011.i.i20.i.i.i, i64 -16 ; 3 uses
  %i.ct = load double, ptr %.sroa.0.0.i.i21.i.i.i, align 8, !tbaa !51
  store double %i.ct, ptr %.sroa.06.011.i.i20.i.i.i, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i20.i.i.i, i64 8
  store i64 %.sroa.2.0.copyload.i12.i.i19.i.i.i, ptr %i.cu, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx.i.i.i22.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.011.i.i20.i.i.i, i64 -24
  %.sroa.2.0.copyload.i.i.i23.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i22.i.i.i, align 8 ; 2 uses
  %i.cv = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i23.i.i.i
  br i1 %i.cv, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !238

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.06.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.0.i.i21.i.i.i, %.lr.ph.i.i18.i.i.i ] ; 2 uses
  store double %.sroa.04.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i16.i.i.i, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %i.cw, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cx, %.sroa.11.0
  br i1 %.not.i17.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i12.i.i.i, !llvm.loop !240

.preheader.i24.i.i.i:                             ; preds = %bb.n
  %.sroa.08.017.i25.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %.not18.i26.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i, %.sroa.11.0
  br i1 %.not18.i26.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %.preheader.i24.i.i.i
  %.sroa.2.0..sroa_idx.i.i28.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i27.i.i.i
  %.sroa.08.020.i29.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i, %.lr.ph.i27.i.i.i ], [ %.sroa.08.0.i39.i.i.i, %bb.u ] ; 8 uses
  %.pn19.i30.i.i.i = phi ptr [ %.sroa.0.0, %.lr.ph.i27.i.i.i ], [ %.sroa.08.020.i29.i.i.i, %bb.u ] ; 3 uses
  %.sroa.22.0..sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i30.i.i.i, i64 24
  %.sroa.22.0.copyload.i.i32.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i31.i.i.i, align 8 ; 5 uses
  %.sroa.2.0.copyload.i.i33.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i28.i.i.i, align 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb15ReservoirSample16NormalizeWeightsEv:bb.a
.lr.ph.i.i.i.i.i.i49.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol
  %.010.i.i.i.i.i.i50.i.i.i.prol = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %i.db, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ]
  %.069.i.i.i.i.i.i51.i.i.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i52.i.i.i.prol = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %.sroa.08.020.i29.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ]
  %i.de = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i.prol, i64 -16 ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i.prol, i64 -16 ; 3 uses
  %i.dg = load double, ptr %i.de, align 8, !tbaa !51
  store double %i.dg, ptr %i.df, align 8, !tbaa !48
  %i.dh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i.prol, i64 -8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !46
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i.prol, i64 -8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !50
  %i.dk = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, !llvm.loop !241

.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i.unr = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.069.i.i.i.i.i.i51.i.i.i.unr = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.078.i.i.i.i.i.i52.i.i.i.unr = phi ptr [ %.sroa.08.020.i29.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.de, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %i.dl = icmp ult i64 %i.db, 4
  br i1 %i.dl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i, label %.lr.ph.i.i.i.i.i.i49.i.i.i

.lr.ph.i.i.i.i.i.i49.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.010.i.i.i.i.i.i50.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i51.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.069.i.i.i.i.i.i51.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i52.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.078.i.i.i.i.i.i52.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 8 uses
  %i.dm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -16
  %i.dn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -16
  %i.do = load double, ptr %i.dm, align 8, !tbaa !51
  store double %i.do, ptr %i.dn, align 8, !tbaa !48
  %i.dp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !46
  %i.dr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !50
  %i.ds = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -32
  %i.dt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -32
  %i.du = load double, ptr %i.ds, align 8, !tbaa !51
  store double %i.du, ptr %i.dt, align 8, !tbaa !48
  %i.dv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !46
  %i.dx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -24
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !50
  %i.dy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -48
  %i.dz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -48
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !51
  store double %i.ea, ptr %i.dz, align 8, !tbaa !48
  %i.eb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !46
  %i.ed = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -40
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !50
  %i.ee = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -64 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -64 ; 2 uses
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !51
  store double %i.eg, ptr %i.ef, align 8, !tbaa !48
  %i.eh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -56
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !46
  %i.ej = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -56
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !50
  %i.ek = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i, -4
  %i.el = icmp sgt i64 %.010.i.i.i.i.i.i50.i.i.i, 4
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i49.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i, !llvm.loop !237

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i, %bb.s
  store double %.sroa.0.0.copyload.i34.i.i.i, ptr %.sroa.0.0, align 8, !tbaa !48
  store i64 %.sroa.22.0.copyload.i.i32.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i28.i.i.i, align 8, !tbaa !50
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.sroa.2.0..sroa_idx.i9.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i30.i.i.i, i64 8
  %.sroa.2.0.copyload.i10.i.i36.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i9.i.i35.i.i.i, align 8 ; 2 uses
  %i.em = icmp ult i64 %.sroa.22.0.copyload.i.i32.i.i.i, %.sroa.2.0.copyload.i10.i.i36.i.i.i
  br i1 %i.em, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i37.i.i.i"

.lr.ph.i.i41.i.i.i:                               ; preds = %bb.t, %.lr.ph.i.i41.i.i.i
  %.sroa.2.0.copyload.i12.i.i42.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i46.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.sroa.2.0.copyload.i10.i.i36.i.i.i, %bb.t ]
  %.sroa.06.011.i.i43.i.i.i = phi ptr [ %.sroa.0.0.i.i44.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.sroa.08.020.i29.i.i.i, %bb.t ] ; 4 uses
  %.sroa.0.0.i.i44.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.011.i.i43.i.i.i, i64 -16 ; 3 uses
  %i.en = load double, ptr %.sroa.0.0.i.i44.i.i.i, align 8, !tbaa !51
  store double %i.en, ptr %.sroa.06.011.i.i43.i.i.i, align 8, !tbaa !48
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i43.i.i.i, i64 8
  store i64 %.sroa.2.0.copyload.i12.i.i42.i.i.i, ptr %i.eo, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx.i.i.i45.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.011.i.i43.i.i.i, i64 -24
  %.sroa.2.0.copyload.i.i.i46.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i45.i.i.i, align 8 ; 2 uses
  %i.ep = icmp ult i64 %.sroa.22.0.copyload.i.i32.i.i.i, %.sroa.2.0.copyload.i.i.i46.i.i.i
  br i1 %i.ep, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i37.i.i.i", !llvm.loop !238

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i37.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i, %bb.t
  %.sroa.06.0.lcssa.i.i38.i.i.i = phi ptr [ %.sroa.08.020.i29.i.i.i, %bb.t ], [ %.sroa.0.0.i.i44.i.i.i, %.lr.ph.i.i41.i.i.i ] ; 2 uses
  store double %.sroa.0.0.copyload.i34.i.i.i, ptr %.sroa.06.0.lcssa.i.i38.i.i.i, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i38.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i.i32.i.i.i, ptr %i.eq, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i37.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i
  %.sroa.08.0.i39.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i29.i.i.i, i64 16 ; 2 uses
  %.not.i40.i.i.i = icmp eq ptr %.sroa.08.0.i39.i.i.i, %.sroa.11.0
  br i1 %.not.i40.i.i.i, label %.lr.ph.preheader, label %bb.r, !llvm.loop !239

.lr.ph.preheader:                                 ; preds = %bb.u, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_.exit.i15.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_.exit.i.i.i", %.preheader.i24.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !46
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.y, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEEZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EvT_SC_T0_.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.er = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aa unwind label %.loopexit.split-lp25 ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %i.es = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %.lr.ph
  %i.et = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %.not.i.i9 = icmp ult i64 %i.et, %i.av
  br i1 %.not.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %i.et, i64 noundef %i.av) #30
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  invoke void @_ZNSt14priority_queueISt4pairIdmESt6vectorIS1_SaIS1_EESt4lessIS1_EE7emplaceIJRdRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !46
  %i.ex = add i64 %i.ew, 1                        ; 2 uses
  store i64 %i.ex, ptr %i.a, align 8, !tbaa !46
  %i.ey = icmp ult i64 %i.ex, %i.av
  br i1 %i.ey, label %.lr.ph, label %._crit_edge, !llvm.loop !242

.loopexit:                                        ; preds = %.lr.ph, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.ae

bb.aa:                                            ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !47 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !48
  %i.fc = invoke noundef double @_ZN6duckdb12RandomEngine12NextRandom32Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.er)
          to label %.noexc11 unwind label %.loopexit.split-lp25

.noexc11:                                         ; preds = %bb.aa
  %i.fd = fneg double %i.fb                       ; 2 uses
  %i.fe = call double @log(double noundef %i.fc) #29, !tbaa !3
  %i.ff = call double @log(double noundef %i.fd) #29, !tbaa !3
  %i.fg = fdiv double %i.fe, %i.ff                ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store double %i.fd, ptr %i.fh, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !50
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !37
  %i.fl = fcmp oge double %i.fg, 1.000000e+00
  %i.fm = call double @llvm.fabs.f64(double %i.fg)
  %i.fn = fcmp one double %i.fm, +inf
  %or.cond.i = and i1 %i.fl, %i.fn
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc11
  %i.fo = call double @llvm.ceil.f64(double %i.fg)
  %i.fp = fptoui double %i.fo to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc11
  %.sink.i = phi i64 [ %i.fp, %bb.ab ], [ 1, %.noexc11 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store i64 %.sink.i, ptr %i.fq, align 8, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  store i64 0, ptr %i.fr, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.0) #28
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit:        ; preds = %bb.ac, %bb.ad
  ret void

bb.ae:                                            ; preds = %.loopexit29, %.loopexit.split-lp30, %.loopexit24, %.loopexit.split-lp25, %bb.z
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.loopexit.split-lp25 ], [ %.sroa.0.0, %.loopexit24 ], [ %.sroa.0.1.ph, %.loopexit29 ], [ %.sroa.0.0, %.loopexit.split-lp30 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.z ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp25 ], [ %lpad.loopexit26, %.loopexit24 ], [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ]
  %.not.i.i.i12 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit13, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #28
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit13

_ZNSt6vectorISt4pairIdmESaIS1_EED2Ev.exit13:      ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueISt4pairIdmESt6vectorIS1_SaIS1_EESt4lessIS1_EE7emplaceIJRdRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %1, align 8, !tbaa !51
  store double %i.e, ptr %i.b, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %2, align 8, !tbaa !46
  store i64 %i.g, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !54
  %.pre = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #30
  unreachable

_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load double, ptr %1, align 8, !tbaa !51
  store double %i.v, ptr %i.u, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %2, align 8, !tbaa !46
  store i64 %i.x, ptr %i.w, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !243
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !60

_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIdmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRdRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRdRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRdRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIdmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !45
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !55
  br label %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit

_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRdRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ac = phi ptr [ %i.h, %bb.b ], [ %i.aa, %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRdRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.ad = phi ptr [ %.pre, %bb.b ], [ %i.t, %_ZNSt6vectorISt4pairIdmESaIS1_EE17_M_realloc_insertIJRdRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.sroa.02.0.copyload.i = load double, ptr %i.ae, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4                 ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1                   ; 2 uses
  %i.ak = icmp sgt i64 %i.ai, 1
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEESt4lessIS3_EEvT_SB_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i
  %.022.i.i = phi i64 [ %.0923.i78.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i ], [ %i.aj, %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit ] ; 4 uses
  %.0923.in.i.i = add nsw i64 %.022.i.i, -1
  %.0923.i78.i = lshr i64 %.0923.in.i.i, 1        ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.0923.i78.i ; 3 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !48 ; 3 uses
  %i.an = fcmp olt double %i.am, %.sroa.02.0.copyload.i
  br i1 %i.an, label %.lr.ph._ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread_crit_edge.i.i, label %bb.f

.lr.ph._ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = fcmp olt double %.sroa.02.0.copyload.i, %i.am
  br i1 %i.ao, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEESt4lessIS3_EEvT_SB_T0_.exit, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.4.0.copyload.i
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEESt4lessIS3_EEvT_SB_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i, %.lr.ph._ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread_crit_edge.i.i
  %i.as = phi i64 [ %.pre.i.i, %.lr.ph._ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread_crit_edge.i.i ], [ %i.aq, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i ]
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %.022.i.i ; 2 uses
  store double %i.am, ptr %i.at, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !50
  %.not.i4 = icmp eq i64 %.0923.i78.i, 0
  br i1 %.not.i4, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEESt4lessIS3_EEvT_SB_T0_.exit, label %.lr.ph.i.i, !llvm.loop !61

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEESt4lessIS3_EEvT_SB_T0_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i, %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit
  %.0.lcssa.i.i = phi i64 [ %i.aj, %_ZNSt6vectorISt4pairIdmESaIS1_EE12emplace_backIJRdRmEEEvDpOT_.exit ], [ %.022.i.i, %bb.f ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.thread.i.i ], [ %.022.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessISt4pairIdmEEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_.exit.i.i ]
  %i.av = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %.0.lcssa.i.i ; 2 uses
  store double %.sroa.02.0.copyload.i, ptr %i.av, align 8, !tbaa !48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %i.aw, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample22EvictOverBudgetSamplesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %2 = alloca %"struct.std::pair", align 8        ; 5 uses
  %3 = alloca %"class.duckdb::vector.46", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not40 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = load i8, ptr %i.c, align 1, !range !164
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not40, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = uitofp i64 %i.i to double
  %i.k = fmul nnan double %i.j, 1.000000e-02
  %i.l = fptoui double %i.k to i64                ; 2 uses
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 2048) ; 7 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.p, align 8, !tbaa !103
  br label %bb.as

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !155
  %i.s = icmp eq i64 %i.m, %i.r
  br i1 %i.s, label %bb.as, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 1, ptr %i.u, align 8, !tbaa !255
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8, !tbaa !256
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
end_hunk_1
