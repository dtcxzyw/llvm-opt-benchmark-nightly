Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_frame?download=true
inline.NumInlined: 8030
inline.NumDeleted: 4373
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE18__assign_with_sizeB8nn180100IPS2_S7_EEvT_T0_l:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !458 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  tail call void @_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__assign_with_sizeB8nn180100IPS2_S7_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(536) %storemerge8.i.i.i.i, ptr noundef %i.at, ptr noundef %i.av, i64 noundef %i.az) #29
  br label %_ZN3jxl15QuantizedSplineaSERKS0_.exit.i.i.i.i

_ZN3jxl15QuantizedSplineaSERKS0_.exit.i.i.i.i:    ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ba, ptr noundef nonnull align 8 dereferenceable(512) %i.bb, i64 512, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 536 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i, i64 536 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %2
  br i1 %.not.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !894

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit.loopexit: ; preds = %_ZN3jxl15QuantizedSplineaSERKS0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !451
  %.pre51 = ptrtoint ptr %i.bd to i64
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit: ; preds = %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit.loopexit, %bb.g
  %.pre-phi52 = phi i64 [ %.pre51, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit.loopexit ], [ %i.e, %bb.g ]
  %i.be = phi ptr [ %.pre, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit.loopexit ], [ %i.i, %bb.g ] ; 2 uses
  %storemerge.lcssa.i.i.i.i = phi ptr [ %i.bd, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit.loopexit ], [ %i.c, %bb.g ] ; 2 uses
  %i.bf = sub i64 %.pre-phi52, %i.e
  %i.bg = getelementptr inbounds i8, ptr %i.c, i64 %i.bf
  %.not6.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i, %i.be
  br i1 %.not6.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i
  %.07.i.i = phi ptr [ %i.bh, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i ], [ %i.be, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %.07.i.i, i64 -536 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !457 ; 4 uses
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds i8, ptr %.07.i.i, i64 -528
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !458
  %i.bk = getelementptr inbounds i8, ptr %.07.i.i, i64 -520
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !459
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bo) #33
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i, %i.bh
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl15QuantizedSplineES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_.exit
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !451
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE13__vdeallocateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !451 ; 2 uses
  %.not6.i.i.i.i17 = icmp eq ptr %i.c, %i.bq
  br i1 %.not6.i.i.i.i17, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %bb.k, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i19 = phi ptr [ %i.br, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i ], [ %i.bq, %bb.k ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.07.i.i.i.i19, i64 -536 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !457 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.bt = getelementptr inbounds i8, ptr %.07.i.i.i.i19, i64 -528
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !458
  %i.bu = getelementptr inbounds i8, ptr %.07.i.i.i.i19, i64 -520
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !459
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.by) #33
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i18
  %.not.i.i.i.i20 = icmp eq ptr %i.c, %i.br
  br i1 %.not.i.i.i.i20, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i.i18, !llvm.loop !8

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !450 ; 2 uses
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !452
  %.pre42 = ptrtoint ptr %.pre41 to i64
  %.pre43 = ptrtoint ptr %.pre.i to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  br label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i, %bb.k
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i ], [ %i.f, %bb.k ]
  %i.bz = phi ptr [ %.pre.i, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.loopexit.i ], [ %i.c, %bb.k ]
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !451
  tail call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %.pre-phi46) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE13__vdeallocateEv.exit

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE13__vdeallocateEv.exit: ; preds = %bb.j, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i
  %i.ca = phi ptr [ %i.b, %bb.j ], [ null, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i ]
  %i.cb = icmp ugt i64 %3, 34415567301696924
  br i1 %i.cb, label %bb.m, label %_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit

bb.m:                                             ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE13__vdeallocateEv.exit
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sdiv exact i64 %i.cc, 536               ; 2 uses
  %.not.i21 = icmp ult i64 %i.cd, 17207783650848462
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %3)
  %.0.i = select i1 %.not.i21, i64 %.sroa.speculated.i, i64 34415567301696924 ; 3 uses
  %i.cf = icmp ugt i64 %.0.i, 34415567301696924
  br i1 %i.cf, label %bb.n, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit

bb.n:                                             ; preds = %_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  tail call void @_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  %i.cg = mul nuw i64 %.0.i, 536
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #32 ; 7 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !450
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !451
  %i.cj = getelementptr inbounds nuw [536 x i8], ptr %i.ch, i64 %.0.i
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !452
  %.not13.i.i.i22 = icmp eq ptr %1, %2
  br i1 %.not13.i.i.i22, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit31, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28
  %.015.i.i.i24 = phi ptr [ %i.cz, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28 ], [ %1, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ] ; 4 uses
  %.01114.i.i.i25 = phi ptr [ %i.da, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28 ], [ %i.ch, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ] ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01114.i.i.i25, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01114.i.i.i25, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.01114.i.i.i25, i8 0, i64 24, i1 false)
  %i.cm = load ptr, ptr %.015.i.i.i24, align 8, !tbaa !457 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.015.i.i.i24, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !458 ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.co, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i26, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i23
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.p, label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i.i.i27

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(536) %.01114.i.i.i25) #31
  unreachable

_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i.i.i27: ; preds = %bb.o
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #32 ; 5 uses
  store ptr %i.ct, ptr %.01114.i.i.i25, align 8, !tbaa !457
  store ptr %i.ct, ptr %i.ck, align 8, !tbaa !458
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !459
  %i.cv = and i64 %i.cr, 9223372036854775792      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr align 8 %i.cm, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  store ptr %i.cw, ptr %i.ck, align 8, !tbaa !458
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28: ; preds = %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i23
  %i.cx = getelementptr inbounds nuw i8, ptr %.01114.i.i.i25, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.015.i.i.i24, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.cx, ptr noundef nonnull align 8 dereferenceable(512) %i.cy, i64 512, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.015.i.i.i24, i64 536 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01114.i.i.i25, i64 536 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.cz, %2
  br i1 %.not.i.i.i29, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit31, label %.lr.ph.i.i.i23, !llvm.loop !7

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit31: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit
  %.011.lcssa.i.i.i30 = phi ptr [ %i.ch, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ], [ %i.da, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE9constructB8nn180100IS3_JRS3_EvEEvRS4_PT_DpOT0_.exit.i.i.i28 ]
  %i.db = ptrtoint ptr %.011.lcssa.i.i.i30 to i64
  %i.dc = ptrtoint ptr %i.ch to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.ch, i64 %i.dd
  store ptr %i.de, ptr %i.ci, align 8, !tbaa !451
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__assign_with_sizeB8nn180100IPS2_S7_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !457    ; 24 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 5 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4
  %.not = icmp ugt i64 %3, %i.i
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !458  ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.m = sub i64 %i.l, %i.g                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 4
  %i.o = icmp ugt i64 %3, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.m ; 3 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.q = add i64 %i.l, -16
  %i.r = sub i64 %i.q, %i.g                       ; 3 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.r, 368
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i.i.preheader83, label %vector.memcheck52

vector.memcheck52:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.u = and i64 %i.r, -16                        ; 2 uses
  %i.v = or disjoint i64 %i.u, 8                  ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep54 = getelementptr i8, ptr %1, i64 %i.v
  %scevgep55 = getelementptr i8, ptr %i.e, i64 8
  %i.w = add i64 %i.u, 16                         ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.e, i64 %i.w
  %scevgep57 = getelementptr i8, ptr %1, i64 8
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.w
  %bound059 = icmp ult ptr %i.e, %scevgep54
  %bound160 = icmp ult ptr %1, %scevgep53
  %found.conflict61 = and i1 %bound059, %bound160
  %bound062 = icmp ult ptr %scevgep55, %scevgep58
  %bound163 = icmp ult ptr %scevgep57, %scevgep56
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %found.conflict61, %found.conflict64
  br i1 %conflict.rdx65, label %.lr.ph.i.i.i.i.i.preheader83, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck52
  %n.vec69 = and i64 %i.t, 2305843009213693950    ; 3 uses
  %i.x = shl i64 %n.vec69, 4                      ; 2 uses
  %i.y = getelementptr i8, ptr %i.e, i64 %i.x
  %i.z = getelementptr i8, ptr %1, i64 %i.x
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body70 ] ; 2 uses
  %i.aa = shl i64 %index71, 4                     ; 3 uses
  %i.ab = or disjoint i64 %i.aa, 16               ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.e, i64 %i.aa
  %next.gep73 = getelementptr i8, ptr %i.e, i64 %i.ab
  %next.gep74 = getelementptr i8, ptr %1, i64 %i.aa
  %next.gep75 = getelementptr i8, ptr %1, i64 %i.ab
  %wide.load76 = load <2 x i64>, ptr %next.gep74, align 8
  %wide.load77 = load <2 x i64>, ptr %next.gep75, align 8
  store <2 x i64> %wide.load76, ptr %next.gep72, align 8
  store <2 x i64> %wide.load77, ptr %next.gep73, align 8
  %index.next78 = add nuw i64 %index71, 2         ; 2 uses
  %i.ac = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.ac, label %middle.block79, label %vector.body70, !llvm.loop !895

middle.block79:                                   ; preds = %vector.body70
  %cmp.n80 = icmp eq i64 %i.t, %n.vec69
  br i1 %cmp.n80, label %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i.preheader83

.lr.ph.i.i.i.i.i.preheader83:                     ; preds = %vector.memcheck52, %.lr.ph.i.i.i.i.i.preheader, %middle.block79
  %storemerge8.i.i.i.i.i.ph = phi ptr [ %i.e, %vector.memcheck52 ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block79 ]
  %.07.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck52 ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader83, %.lr.ph.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %storemerge8.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader83 ] ; 2 uses
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader83 ] ; 2 uses
  %i.ad = load <2 x i64>, ptr %.07.i.i.i.i.i, align 8, !tbaa !142
  store <2 x i64> %i.ad, ptr %storemerge8.i.i.i.i.i, align 8, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !896

_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block79, %bb.c
  %.not12.i.i.i = icmp eq ptr %i.p, %2
  br i1 %.not12.i.i.i, label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit ] ; 2 uses
  %.01113.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.k, %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01113.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i, i64 16, i1 false), !tbaa.struct !900
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01113.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %2
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !897

_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = ptrtoint ptr %i.ah to i64
  br label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit

_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.loopexit, %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit.loopexit ], [ %i.l, %_ZNSt3__14copyB8nn180100IPNS_4pairIllEES3_EET0_T_S5_S4_.exit ]
  %i.ai = sub i64 %.pre-phi, %i.l
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 %i.ai
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !458
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.not6.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ak = add i64 %i.b, -16
  %i.al = sub i64 %i.ak, %i.a                     ; 3 uses
  %i.am = lshr i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 368
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader84, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ao = and i64 %i.al, -16                      ; 2 uses
  %i.ap = or disjoint i64 %i.ao, 8                ; 2 uses
  %scevgep38 = getelementptr i8, ptr %i.e, i64 %i.ap
  %scevgep39 = getelementptr i8, ptr %1, i64 %i.ap
  %scevgep40 = getelementptr i8, ptr %i.e, i64 8
  %i.aq = add i64 %i.ao, 16                       ; 2 uses
  %scevgep41 = getelementptr i8, ptr %i.e, i64 %i.aq
  %scevgep42 = getelementptr i8, ptr %1, i64 8
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.aq
  %bound0 = icmp ult ptr %i.e, %scevgep39
  %bound1 = icmp ult ptr %1, %scevgep38
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %scevgep40, %scevgep43
  %bound145 = icmp ult ptr %scevgep42, %scevgep41
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.preheader84, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 2305843009213693950     ; 3 uses
  %i.ar = shl i64 %n.vec, 4                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.e, i64 %i.ar   ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 4                       ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.au
  %next.gep47 = getelementptr i8, ptr %i.e, i64 %i.av
  %next.gep48 = getelementptr i8, ptr %1, i64 %i.au
  %next.gep49 = getelementptr i8, ptr %1, i64 %i.av
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8
  %wide.load50 = load <2 x i64>, ptr %next.gep49, align 8
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load50, ptr %next.gep47, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !898

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader84

.lr.ph.i.i.i.i.preheader84:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %storemerge8.i.i.i.i.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.07.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader84, %.lr.ph.i.i.i.i
  %storemerge8.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %storemerge8.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader84 ] ; 2 uses
  %.07.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader84 ] ; 2 uses
  %i.ax = load <2 x i64>, ptr %.07.i.i.i.i, align 8, !tbaa !142
  store <2 x i64> %i.ax, ptr %storemerge8.i.i.i.i, align 8, !tbaa !142
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %2
  br i1 %.not.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !899

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa37 = phi ptr [ %i.as, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i ]
  %.pre28 = ptrtoint ptr %.lcssa37 to i64
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit: ; preds = %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit.loopexit, %bb.d
  %.pre-phi29 = phi i64 [ %.pre28, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit.loopexit ], [ %i.g, %bb.d ]
  %i.ba = sub i64 %.pre-phi29, %i.g
  %i.bb = getelementptr inbounds i8, ptr %i.e, i64 %i.ba
  store ptr %i.bb, ptr %i.j, align 8, !tbaa !458
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE13__vdeallocateEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !458
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE13__vdeallocateEv.exit

_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE13__vdeallocateEv.exit: ; preds = %bb.e, %bb.f
  %i.bd = phi ptr [ %i.d, %bb.e ], [ null, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.be, label %bb.g, label %_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit

bb.g:                                             ; preds = %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE13__vdeallocateEv.exit
  %i.bf = ptrtoint ptr %i.bd to i64
  %.not.i16 = icmp ult ptr %i.bd, inttoptr (i64 9223372036854775792 to ptr)
  %i.bg = ashr exact i64 %i.bf, 3
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 1152921504606846975 ; 3 uses
  %i.bh = icmp ugt i64 %.0.i, 1152921504606846975
  br i1 %i.bh, label %bb.h, label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit

bb.h:                                             ; preds = %_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  tail call void @_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNKSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  %i.bi = shl nuw i64 %.0.i, 4
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #32 ; 8 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !457
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !458
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.0.i
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !459
  %.not12.i.i.i17 = icmp eq ptr %1, %2
  br i1 %.not12.i.i.i17, label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit
  %i.bm = add i64 %i.b, -16
  %i.bn = sub i64 %i.bm, %i.a
  %i.bo = and i64 %i.bn, -16
  %i.bp = add i64 %i.bo, 16                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %1, i64 %i.bp, i1 false)
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.bp
  br label %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit23

_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit23: ; preds = %.lr.ph.i.i.i18.preheader, %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit
  %.011.lcssa.i.i.i22 = phi ptr [ %i.bj, %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit ], [ %scevgep, %.lr.ph.i.i.i18.preheader ]
  %i.bq = ptrtoint ptr %.011.lcssa.i.i.i22 to i64
  %i.br = ptrtoint ptr %i.bj to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 %i.bs
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !458
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPNS_4pairIllEES4_S4_EENS2_IT0_T2_EES5_T1_S6_.exit, %_ZNSt3__16vectorINS_4pairIllEENS_9allocatorIS2_EEE18__construct_at_endIPS2_S7_EEvT_T0_m.exit23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE18__assign_with_sizeB8nn180100IPS3_S8_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !446  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !444    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !445  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ugt i64 %3, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.k ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPN3jxl6Spline5PointES4_EET0_T_S6_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.c, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !445
  br label %_ZNSt3__14copyB8nn180100IPN3jxl6Spline5PointES4_EET0_T_S6_S5_.exit

_ZNSt3__14copyB8nn180100IPN3jxl6Spline5PointES4_EET0_T_S6_S5_.exit: ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.i, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.q = ptrtoint ptr %2 to i64
  %i.r = sub i64 %i.q, %i.o                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100IPN3jxl6Spline5PointES4_EET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit

_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100IPN3jxl6Spline5PointES4_EET0_T_S6_S5_.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store ptr %i.s, ptr %i.h, align 8, !tbaa !445
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl6Spline5PointES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.c, ptr align 4 %1, i64 %i.v, i1 false)
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl6Spline5PointES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPN3jxl6Spline5PointES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_.exit: ; preds = %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  store ptr %i.w, ptr %i.h, align 8, !tbaa !445
end_hunk_0
