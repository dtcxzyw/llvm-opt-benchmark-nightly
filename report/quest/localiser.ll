Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/localiser?download=true
inline.NumInlined: 2300
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z22doesChannelRequireComm5Quregi:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #20
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z31doAnyLocalStatesHaveQubitValues5QuregSt6vectorIiSaIiEES2_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.g = phi ptr [ %i.t, %bb.c ], [ %i.e, %.preheader ]
  %.069 = phi i64 [ %i.r, %bb.c ], [ 0, %.preheader ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.069
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = tail call noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef %i.i, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %1, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.069
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = tail call noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef %i.m, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.o = load ptr, ptr %2, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.069
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %.not8 = icmp eq i32 %i.n, %i.q
  br i1 %.not8, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add nuw i64 %.069, 1                     ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.t = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %.not12 = icmp ult i64 %i.r, %i.x
  br i1 %.not12, label %.lr.ph, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

declare noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z27removePrefixQubitsAndStates5QuregRSt6vectorIiSaIiEES3_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not69 = icmp eq ptr %i.c, %i.d
  br i1 %.not69, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 4 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !14
  store ptr %i.j, ptr %i.a, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.l = phi ptr [ null, %bb.b ], [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.m = phi ptr [ null, %bb.b ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not70 = icmp eq ptr %i.p, %i.q
  br i1 %.not70, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit30, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i24

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i24: ; preds = %bb.e
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i27 unwind label %bb.f ; 4 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i27: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i24
  store ptr %i.w, ptr %4, align 8, !tbaa !14
  store ptr %i.w, ptr %i.n, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit30

_ZNSt6vectorIiSaIiEE7reserveEm.exit30:            ; preds = %bb.e, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i27
  %i.y = phi ptr [ null, %bb.e ], [ %i.x, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i27 ]
  %i.z = phi ptr [ null, %bb.e ], [ %i.w, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i27 ] ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ab = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30
  %i.ac = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i24, %bb.d, %bb.q, %._crit_edge
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %4, align 8, !tbaa !14
  br label %bb.u

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit30, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42
  %i.ae = phi ptr [ %i.cf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.z, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 8 uses
  %i.af = phi ptr [ %i.cg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 4 uses
  %i.ag = phi ptr [ %i.ch, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.z, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 4 uses
  %i.ah = phi ptr [ %i.ci, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.m, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 6 uses
  %i.ai = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.l, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 4 uses
  %i.aj = phi ptr [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.m, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 4 uses
  %i.ak = phi ptr [ %i.cn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ %i.ab, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ]
  %.051 = phi i64 [ %i.cl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42 ], [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit30 ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.051
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15
  %i.an = invoke noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef %i.am, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  br i1 %i.an, label %bb.h, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %1, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.051 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %bb.h
  %i.as = ptrtoint ptr %i.ai to i64
  %i.at = ptrtoint ptr %i.ah to i64
  %i.au = sub i64 %i.as, %i.at                    ; 6 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775804
  br i1 %i.av, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.n, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.aw = ashr exact i64 %i.au, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 2305843009213693951)
  %i.ba = select i1 %i.ay, i64 2305843009213693951, i64 %i.az ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #19
          to label %.noexc32 unwind label %.loopexit ; 5 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  %i.be = load i32, ptr %i.ap, align 4, !tbaa !15
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !15
  %i.bf = icmp sgt i64 %i.au, 0
  br i1 %i.bf, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 4 %i.ah, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.au) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bc, ptr %3, align 8, !tbaa !14
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  store ptr %i.bh, ptr %i.i, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.i
  %i.bi = phi ptr [ %i.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.bj = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ai, %bb.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ar, %bb.i ] ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.051 ; 2 uses
  %.not.i33 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !15
  store i32 %i.bn, ptr %i.ag, align 4, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.bo, ptr %i.n, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bp = ptrtoint ptr %i.af to i64
  %i.bq = ptrtoint ptr %i.ae to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775804
  br i1 %i.bs, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i34

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i34: ; preds = %bb.n
  %i.bt = ashr exact i64 %i.br, 2                 ; 3 uses
  %.sroa.speculated.i.i.i35 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i35, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 2
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #19
          to label %.noexc41 unwind label %.loopexit ; 5 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i34
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  %i.cb = load i32, ptr %i.bm, align 4, !tbaa !15
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !15
  %i.cc = icmp sgt i64 %i.br, 0
  br i1 %i.cc, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i37

bb.o:                                             ; preds = %.noexc41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.ae, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i37

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i37: ; preds = %bb.o, %.noexc41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %.not.i17.i.i38 = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i38, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i37
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.br) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i37
  store ptr %i.bz, ptr %4, align 8, !tbaa !14
  store ptr %i.cd, ptr %i.n, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx ; 2 uses
  store ptr %i.ce, ptr %i.v, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit42

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i34
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIiSaIiEE9push_backERKi.exit42:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39, %bb.m, %bb.g
  %i.cf = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39 ], [ %i.ae, %bb.m ], [ %i.ae, %bb.g ]
  %i.cg = phi ptr [ %i.ce, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39 ], [ %i.af, %bb.m ], [ %i.af, %bb.g ]
  %i.ch = phi ptr [ %i.cd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39 ], [ %i.bo, %bb.m ], [ %i.ag, %bb.g ]
  %i.ci = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39 ], [ %i.bi, %bb.m ], [ %i.ah, %bb.g ]
  %i.cj = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39 ], [ %i.bj, %bb.m ], [ %i.ai, %bb.g ]
  %i.ck = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i39 ], [ %i.bk, %bb.m ], [ %i.aj, %bb.g ]
  %i.cl = add nuw i64 %.051, 1                    ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cn = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  %i.cs = icmp ult i64 %i.cl, %i.cr
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !36

bb.q:                                             ; preds = %._crit_edge
  %i.ct = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.f       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cu = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cz = load ptr, ptr %3, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i44.a = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i44.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit45, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit45

_ZNSt6vectorIiSaIiEED2Ev.exit45:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %i.de = phi ptr [ %.pre, %bb.f ], [ %i.ae, %.loopexit ], [ %i.ae, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i46.a = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i46.a, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !16
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.pre52 = load ptr, ptr %3, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %.pre52, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !16
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.pre52 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.pre52, i64 noundef %i.do) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !15
  store i32 %i.r, ptr %i.o, align 4, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #20
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !16
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
end_hunk_0
begin_hunk_1_@_Z27getQubitsSwappedToMaxSuffix5QuregSt6vectorIiSaIiEE:bb.a

_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader: ; preds = %bb.v
  %.not31 = icmp eq ptr %i.ao, %i.ak
  %i.bq = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.br = insertelement <2 x ptr> %i.bq, ptr %i.ao, i64 1
  br i1 %.not31, label %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge, label %.lr.ph34

_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit: ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit
  %i.bs = load <2 x ptr>, ptr %2, align 8, !tbaa !9
  br label %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge

_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge: ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader
  %i.bt = phi <2 x ptr> [ %i.bs, %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit ], [ %i.br, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ]
  store <2 x ptr> %i.bt, ptr %0, align 8, !tbaa !9
  br label %bb.y

.lr.ph34:                                         ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader, %_Z27getIndOfNextLeftmostZeroBitxi.exit
  %.in = phi i64 [ %i.bu, %_Z27getIndOfNextLeftmostZeroBitxi.exit ], [ %i.as, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ]
  %.01233 = phi i32 [ %.1, %_Z27getIndOfNextLeftmostZeroBitxi.exit ], [ %.0.i17, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ] ; 4 uses
  %.01332 = phi i64 [ %.114, %_Z27getIndOfNextLeftmostZeroBitxi.exit ], [ %.06.i.lcssa, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ] ; 2 uses
  %i.bu = add i64 %.in, -1                        ; 4 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !15 ; 2 uses
  %i.by = call noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef %i.bx, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  br i1 %i.by, label %_Z27getIndOfNextLeftmostZeroBitxi.exit, label %bb.w, !llvm.loop !71

bb.w:                                             ; preds = %.lr.ph34
  %i.bz = load ptr, ptr %2, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu
  store i32 %.01233, ptr %i.ca, align 4, !tbaa !15
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = zext nneg i32 %.01233 to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = xor i64 %i.ce, %i.cc
  %i.cg = xor i64 %i.cf, %.01332                  ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.in.i = phi i32 [ %.01233, %bb.w ], [ %.0.i15, %bb.x ]
  %.0.i15 = add nsw i32 %.0.in.i, -1              ; 3 uses
  %i.ch = zext nneg i32 %.0.i15 to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = and i64 %i.ci, %i.cg
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %_Z27getIndOfNextLeftmostZeroBitxi.exit, label %bb.x, !llvm.loop !70

_Z27getIndOfNextLeftmostZeroBitxi.exit:           ; preds = %bb.x, %.lr.ph34
  %.114 = phi i64 [ %.01332, %.lr.ph34 ], [ %i.cg, %bb.x ]
  %.1 = phi i32 [ %.01233, %.lr.ph34 ], [ %.0.i15, %bb.x ]
  %.not = icmp eq i64 %i.bu, 0
  br i1 %.not, label %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit, label %.lr.ph34

bb.y:                                             ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge, %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z27getNonSwappedCtrlsAndStatesSt6vectorIiSaIiEES1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 8 %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not64 = icmp eq ptr %i.c, %i.d
  br i1 %.not64, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !14
  store ptr %i.j, ptr %i.a, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.l = phi ptr [ null, %bb.b ], [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.m = phi ptr [ null, %bb.b ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc21 unwind label %bb.f

.noexc21:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not65 = icmp eq ptr %i.p, %i.q
  br i1 %.not65, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit23, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17: ; preds = %bb.e
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20 unwind label %bb.f ; 4 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17
  store ptr %i.w, ptr %5, align 8, !tbaa !14
  store ptr %i.w, ptr %i.n, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit23

_ZNSt6vectorIiSaIiEE7reserveEm.exit23:            ; preds = %bb.e, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20
  %i.y = phi ptr [ null, %bb.e ], [ %i.x, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20 ]
  %i.z = phi ptr [ null, %bb.e ], [ %i.w, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20 ] ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ab = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23
  invoke void @_ZNSt11_Tuple_implILm0EJSt6vectorIiSaIiEES2_EEC2IRS2_JS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt5tupleIJSt6vectorIiSaIiEES2_EEC2IRS2_S5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS7_T0_EEEbE4typeELb1EEEOS7_OS8_.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %5, align 8, !tbaa !14
  br label %bb.r

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit23, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36
  %i.ad = phi ptr [ %i.ce, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.z, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 8 uses
  %i.ae = phi ptr [ %i.cf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.af = phi ptr [ %i.cg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.z, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.ag = phi ptr [ %i.ch, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.m, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 6 uses
  %i.ah = phi ptr [ %i.ci, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.l, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.ai = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.m, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.aj = phi ptr [ %i.cm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.ab, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ]
  %.045 = phi i64 [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.045 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.045
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = icmp eq i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36

bb.g:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ah to i64
  %i.as = ptrtoint ptr %i.ag to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.m, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #19
          to label %.noexc26 unwind label %.loopexit ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  %i.bd = load i32, ptr %i.ak, align 4, !tbaa !15
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !15
  %i.be = icmp sgt i64 %i.at, 0
  br i1 %i.be, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.ag, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.at) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bb, ptr %4, align 8, !tbaa !14
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.h
  %i.bh = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ag, %bb.h ] ; 2 uses
  %i.bi = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ah, %bb.h ] ; 2 uses
  %i.bj = phi ptr [ %i.bf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.045 ; 2 uses
  %.not.i27 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15
  store i32 %i.bm, ptr %i.af, align 4, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.bn, ptr %i.n, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bo = ptrtoint ptr %i.ae to i64
  %i.bp = ptrtoint ptr %i.ad to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 6 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i28

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i28: ; preds = %bb.m
  %i.bs = ashr exact i64 %i.bq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i29, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #19
          to label %.noexc35 unwind label %.loopexit ; 5 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i28
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  %i.ca = load i32, ptr %i.bl, align 4, !tbaa !15
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !15
  %i.cb = icmp sgt i64 %i.bq, 0
  br i1 %i.cb, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i31

bb.n:                                             ; preds = %.noexc35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.ad, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i31

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i31: ; preds = %bb.n, %.noexc35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i17.i.i32 = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i32, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bq) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i31
  store ptr %i.by, ptr %5, align 8, !tbaa !14
  store ptr %i.cc, ptr %i.n, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  store ptr %i.cd, ptr %i.v, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i28
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIiSaIiEE9push_backERKi.exit36:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33, %bb.l, %.lr.ph
  %i.ce = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33 ], [ %i.ad, %bb.l ], [ %i.ad, %.lr.ph ]
  %i.cf = phi ptr [ %i.cd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33 ], [ %i.ae, %bb.l ], [ %i.ae, %.lr.ph ]
  %i.cg = phi ptr [ %i.cc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33 ], [ %i.bn, %bb.l ], [ %i.af, %.lr.ph ]
  %i.ch = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33 ], [ %i.bh, %bb.l ], [ %i.ag, %.lr.ph ]
  %i.ci = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33 ], [ %i.bi, %bb.l ], [ %i.ah, %.lr.ph ]
  %i.cj = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i33 ], [ %i.bj, %bb.l ], [ %i.ai, %.lr.ph ]
  %i.ck = add nuw i64 %.045, 1                    ; 2 uses
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.cm = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  %i.cr = icmp ult i64 %i.ck, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !72

_ZNSt5tupleIJSt6vectorIiSaIiEES2_EEC2IRS2_S5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS7_T0_EEEbE4typeELb1EEEOS7_OS8_.exit: ; preds = %._crit_edge
  %i.cs = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt5tupleIJSt6vectorIiSaIiEES2_EEC2IRS2_S5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS7_T0_EEEbE4typeELb1EEEOS7_OS8_.exit
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt5tupleIJSt6vectorIiSaIiEES2_EEC2IRS2_S5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS7_T0_EEEbE4typeELb1EEEOS7_OS8_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cx = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i38.a = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i38.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit39, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.cy = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit39

_ZNSt6vectorIiSaIiEED2Ev.exit39:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %i.dc = phi ptr [ %.pre, %bb.f ], [ %i.ad, %.loopexit ], [ %i.ad, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i40.a = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i40.a, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !16
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.pre46 = load ptr, ptr %4, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %.pre46, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !16
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %.pre46 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %.pre46, i64 noundef %i.dm) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

_ZNSt6vectorIiSaIiEED2Ev.exit43:                  ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z50getSpoofedDistributedBufferlessQuregFromLocalQureg5QuregS_(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Qureg) align 8 captures(none) initializes((0, 104)) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 72, i1 false), !tbaa.struct !73
  %i.a = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.d, ptr %i.e, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %.idx = select i1 %.not, i64 0, i64 %i.a
  %i.j = getelementptr inbounds [16 x i8], ptr %i.i, i64 %.idx
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.k, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  ret void
}

declare void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.FullStateDiagMatr) align 8 captures(none) initializes((0, 96)) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 80, i1 false), !tbaa.struct !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !84
  %i.i = sext i32 %i.h to i64
  %i.j = sdiv i64 %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.k, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef i64 @_Z35util_getGlobalColumnOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i64 [ %i.n, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.s, ptr %i.t, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !87
  %.not2 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  %.idx = select i1 %.not2, i64 0, i64 %i.p
  %i.y = getelementptr inbounds [16 x i8], ptr %i.x, i64 %.idx
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.y, ptr %i.z, align 8, !tbaa !88
end_hunk_1
begin_hunk_2_@_Z22getNonTracedQubitOrder5QuregSt6vectorIiSaIiEES2_:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !182

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ca = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  store ptr %i.ca, ptr %i.ax, align 8, !tbaa !12
  %i.cb = invoke noundef i64 @_Z15util_getBitMaskSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.ci = load ptr, ptr %2, align 8, !tbaa !14
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 2 uses
  %i.cn = sub nsw i64 %i.o, %i.cm                 ; 3 uses
  %i.co = icmp ugt i64 %i.cn, 2305843009213693951
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc49 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit67.thread

.noexc49:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not163 = icmp eq i64 %i.o, %i.cm
  br i1 %.not163, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.cq = shl nuw nsw i64 %i.cn, 2
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #19
          to label %.noexc50 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit67.thread ; 4 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %0, align 8, !tbaa !14
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !12
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cn ; 2 uses
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.p, %.noexc50
  %.promoted97 = phi ptr [ null, %bb.p ], [ %i.cr, %.noexc50 ] ; 5 uses
  %.promoted = phi ptr [ null, %bb.p ], [ %i.ct, %.noexc50 ] ; 3 uses
  br i1 %.not115.a, label %._crit_edge103.thread, label %.lr.ph102

._crit_edge103.thread:                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  store ptr %.promoted, ptr %i.cp, align 8
  store ptr %.promoted97, ptr %0, align 8
  br label %.thread

.lr.ph102:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.x

._crit_edge103:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %i.es, ptr %i.cp, align 8
  store ptr %i.er, ptr %0, align 8
  %i.cv = ptrtoint ptr %i.eq to i64
  %i.cw = ptrtoint ptr %i.er to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i.i.i51, label %.thread, label %bb.q

.thread:                                          ; preds = %._crit_edge103.thread, %._crit_edge103
  %.lcssa170 = phi ptr [ %.promoted, %._crit_edge103.thread ], [ %i.es, %._crit_edge103 ]
  %.lcssa98168 = phi ptr [ %.promoted97, %._crit_edge103.thread ], [ %i.er, %._crit_edge103 ]
  %i.cy = phi ptr [ %.promoted97, %._crit_edge103.thread ], [ %i.eq, %._crit_edge103 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.da, align 8, !tbaa !16
  br label %bb.ae

bb.q:                                             ; preds = %._crit_edge103
  %i.db = icmp ugt i64 %i.cx, 9223372036854775804
  br i1 %i.db, label %.noexc.i.i53, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i52, !prof !33

.noexc.i.i53:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc54 unwind label %bb.ai

.noexc54:                                         ; preds = %.noexc.i.i53
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i52: ; preds = %bb.q
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #19
          to label %.noexc55 unwind label %bb.ai  ; 5 uses

.noexc55:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i52
  store ptr %i.dc, ptr %5, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cx ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !16
  %i.dg = icmp samesign ugt i64 %i.cx, 4
  br i1 %i.dg, label %bb.r, label %bb.s, !prof !109

bb.r:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %i.er, i64 %i.cx, i1 false)
  br label %bb.ae

bb.s:                                             ; preds = %.noexc55
  %i.dh = icmp eq i64 %i.cx, 4
  br i1 %i.dh, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.di = load i32, ptr %i.er, align 4, !tbaa !15
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !15
  br label %bb.ae

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

bb.v:                                             ; preds = %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit67.thread:           ; preds = %bb.o, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

bb.x:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dr = phi ptr [ %.promoted97, %.lr.ph102 ], [ %i.eq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %.028101 = phi i64 [ 0, %.lr.ph102 ], [ %i.et, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.ds = phi ptr [ %.promoted, %.lr.ph102 ], [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.dt = phi ptr [ %.promoted97, %.lr.ph102 ], [ %i.er, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.du = and i64 %.028101, 4294967295
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.cb
  %.not39 = icmp eq i64 %i.dw, 0
  br i1 %.not39, label %bb.y, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.076.0, i64 %.028101 ; 2 uses
  %.not.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !15
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  store ptr %i.dz, ptr %i.cu, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aa:                                            ; preds = %bb.y
  %i.ea = ptrtoint ptr %i.dr to i64
  %i.eb = ptrtoint ptr %i.dt to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775804
  br i1 %i.ed, label %bb.ab, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ds, ptr %i.cp, align 8
  store ptr %i.dt, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc60.a unwind label %.loopexit.split-lp

.noexc60.a:                                       ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.ee = ashr exact i64 %i.ec, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #19
          to label %.noexc61 unwind label %.loopexit ; 4 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ec ; 2 uses
  %i.em = load i32, ptr %i.dx, align 4, !tbaa !15
  store i32 %i.em, ptr %i.el, align 4, !tbaa !15
  %i.en = icmp sgt i64 %i.ec, 0
  br i1 %i.en, label %bb.ac, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ac:                                            ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.dt, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ac, %.noexc61
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.ec) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.eo, ptr %i.cu, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ds, ptr %i.cp, align 8
  store ptr %i.dt, ptr %0, align 8
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.z, %bb.x
  %i.eq = phi ptr [ %i.eo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dz, %bb.z ], [ %i.dr, %bb.x ] ; 7 uses
  %i.er = phi ptr [ %i.ek, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dt, %bb.z ], [ %i.dt, %bb.x ] ; 11 uses
  %i.es = phi ptr [ %i.ep, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ds, %bb.z ], [ %i.ds, %bb.x ] ; 7 uses
  %i.et = add nuw i64 %.028101, 1                 ; 2 uses
  %exitcond130.not = icmp eq i64 %i.et, %i.o
  br i1 %exitcond130.not, label %._crit_edge103, label %bb.x, !llvm.loop !183

bb.ae:                                            ; preds = %bb.t, %bb.s, %bb.r, %.thread
  %.not.i.i.i.i51171 = phi i1 [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ], [ true, %.thread ]
  %.lcssa169 = phi ptr [ %i.es, %bb.r ], [ %i.es, %bb.s ], [ %i.es, %bb.t ], [ %.lcssa170, %.thread ] ; 2 uses
  %.lcssa98167 = phi ptr [ %i.er, %bb.r ], [ %i.er, %bb.s ], [ %i.er, %bb.t ], [ %.lcssa98168, %.thread ] ; 3 uses
  %i.eu = phi ptr [ %i.eq, %bb.r ], [ %i.eq, %bb.s ], [ %i.eq, %bb.t ], [ %i.cy, %.thread ]
  %i.ev = phi ptr [ %i.df, %bb.r ], [ %i.df, %bb.s ], [ %i.df, %bb.t ], [ %i.da, %.thread ] ; 2 uses
  %i.ew = phi ptr [ %i.de, %bb.r ], [ %i.de, %bb.s ], [ %i.de, %bb.t ], [ null, %.thread ]
  %i.ex = phi ptr [ %i.dd, %bb.r ], [ %i.dd, %bb.s ], [ %i.dd, %bb.t ], [ %i.cz, %.thread ]
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !12
  %i.ey = invoke noundef i64 @_Z15util_getBitMaskSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.af unwind label %bb.aj     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.ez = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit63, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !16
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fd) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit63

_ZNSt6vectorIiSaIiEED2Ev.exit63:                  ; preds = %bb.af, %bb.ag
  br i1 %.not.i.i.i.i51171, label %._crit_edge114, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit63
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.al, %_ZNSt6vectorIiSaIiEED2Ev.exit63
  %.not.i.i.i64 = icmp eq ptr %.sroa.076.0, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIiSaIiEED2Ev.exit65, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge114
  %i.fe = sub i64 %.sroa.19.0, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0, i64 noundef %i.fe) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit65

_ZNSt6vectorIiSaIiEED2Ev.exit65:                  ; preds = %._crit_edge114, %bb.ah
  ret void

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i52, %.noexc.i.i53
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

bb.aj:                                            ; preds = %bb.ae
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIiSaIiEED2Ev.exit67, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !16
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.al
  %.sroa.072.0112 = phi ptr [ %i.gb, %bb.al ], [ %.lcssa98167, %.lr.ph113.preheader ] ; 3 uses
  %i.fm = load i32, ptr %.sroa.072.0112, align 4, !tbaa !15 ; 5 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph108, label %bb.al

.lr.ph108:                                        ; preds = %.lr.ph113
  %wide.trip.count = zext nneg i32 %i.fm to i64   ; 3 uses
  %min.iters.check200 = icmp ult i32 %i.fm, 8
  br i1 %min.iters.check200, label %scalar.ph199.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph108
  %n.vec202 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.fo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fm, i64 0
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next208, %vector.body203 ]
  %vec.ind205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph201 ], [ %vec.ind.next209, %vector.body203 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.fo, %vector.ph201 ], [ %i.fx, %vector.body203 ]
  %vec.phi206 = phi <4 x i32> [ zeroinitializer, %vector.ph201 ], [ %i.fy, %vector.body203 ]
  %i.fp = shl nuw <4 x i64> splat (i64 1), %vec.ind205
  %i.fq = shl nuw <4 x i64> splat (i64 16), %vec.ind205
  %i.fr = and <4 x i64> %i.fp, %broadcast.splat
  %i.fs = and <4 x i64> %i.fq, %broadcast.splat
  %i.ft = icmp eq <4 x i64> %i.fr, zeroinitializer
  %i.fu = icmp eq <4 x i64> %i.fs, zeroinitializer
  %i.fv = sext <4 x i1> %i.ft to <4 x i32>
  %i.fw = sext <4 x i1> %i.fu to <4 x i32>
  %i.fx = add <4 x i32> %vec.phi, %i.fv           ; 2 uses
  %i.fy = add <4 x i32> %vec.phi206, %i.fw        ; 2 uses
  %index.next208 = add nuw i64 %index204, 8       ; 2 uses
  %vec.ind.next209 = add nuw <4 x i64> %vec.ind205, splat (i64 8)
  %i.fz = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.fz, label %middle.block210, label %vector.body203, !llvm.loop !184

middle.block210:                                  ; preds = %vector.body203
  %bin.rdx = add <4 x i32> %i.fy, %i.fx
  %i.ga = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n211 = icmp eq i64 %n.vec202, %wide.trip.count
  br i1 %cmp.n211, label %._crit_edge109, label %scalar.ph199.preheader

scalar.ph199.preheader:                           ; preds = %.lr.ph108, %middle.block210
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph108 ], [ %n.vec202, %middle.block210 ]
  %.ph = phi i32 [ %i.fm, %.lr.ph108 ], [ %i.ga, %middle.block210 ]
  br label %scalar.ph199

._crit_edge109:                                   ; preds = %scalar.ph199, %middle.block210
  %.lcssa = phi i32 [ %i.ga, %middle.block210 ], [ %i.gf, %scalar.ph199 ]
  store i32 %.lcssa, ptr %.sroa.072.0112, align 4, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge109, %.lr.ph113
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.072.0112, i64 4 ; 2 uses
  %.not88 = icmp eq ptr %i.gb, %i.eu
  br i1 %.not88, label %._crit_edge114, label %.lr.ph113

scalar.ph199:                                     ; preds = %scalar.ph199.preheader, %scalar.ph199
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph199 ], [ %indvars.iv.ph, %scalar.ph199.preheader ] ; 2 uses
  %i.gc = phi i32 [ %i.gf, %scalar.ph199 ], [ %.ph, %scalar.ph199.preheader ]
  %i.gd = shl nuw i64 1, %indvars.iv
  %i.ge = and i64 %i.gd, %i.ey
  %.not = icmp eq i64 %i.ge, 0
  %.neg = sext i1 %.not to i32
  %i.gf = add i32 %i.gc, %.neg                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond132.not, label %._crit_edge109, label %scalar.ph199, !llvm.loop !185

_ZNSt6vectorIiSaIiEED2Ev.exit67:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak, %bb.aj, %bb.ai
  %i.gg = phi ptr [ %.lcssa169, %bb.ak ], [ %i.dr, %.loopexit.split-lp ], [ %i.es, %bb.ai ], [ %.lcssa169, %bb.aj ], [ %i.dr, %.loopexit ]
  %i.gh = phi ptr [ %.lcssa98167, %bb.ak ], [ %i.dt, %.loopexit.split-lp ], [ %i.er, %bb.ai ], [ %.lcssa98167, %bb.aj ], [ %i.dt, %.loopexit ] ; 3 uses
  %.pn40 = phi { ptr, i32 } [ %i.fg, %bb.ak ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ff, %bb.ai ], [ %i.fg, %bb.aj ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit67
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gk) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit67.thread, %bb.am, %_ZNSt6vectorIiSaIiEED2Ev.exit67, %bb.w, %bb.v, %bb.u
  %.pn40.pn = phi { ptr, i32 } [ %i.dk, %bb.w ], [ %i.dj, %bb.u ], [ %i.dk, %bb.v ], [ %.pn40, %_ZNSt6vectorIiSaIiEED2Ev.exit67 ], [ %.pn40, %bb.am ], [ %i.dq, %_ZNSt6vectorIiSaIiEED2Ev.exit67.thread ]
  %.not.i.i.i70 = icmp eq ptr %.sroa.076.0, null
end_hunk_2
begin_hunk_3_@_Z46localiser_densmatr_calcProbOfMultiQubitOutcome5QuregSt6vectorIiSaIiEES2_:bb.a
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.069.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !15
  %i.bg = invoke noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef %i.bf, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc30 unwind label %bb.ab

.noexc30:                                         ; preds = %.lr.ph.i
  br i1 %i.bg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc30
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !15
  %i.bi = invoke noundef i32 @_Z22util_getRankBitOfQubiti5Qureg(i32 noundef %i.bh, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc31 unwind label %bb.ab

.noexc31:                                         ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.069.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !15
  %.not8.i = icmp eq i32 %i.bi, %i.bk
  br i1 %.not8.i, label %bb.s, label %.thread

bb.s:                                             ; preds = %.noexc31, %.noexc30
  %i.bl = add nuw i64 %.069.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %umax
  br i1 %exitcond.not, label %.loopexit133, label %.lr.ph.i, !llvm.loop !35

.loopexit133:                                     ; preds = %bb.s, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit29
  %.not.i.i.i32 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit33, label %.thread

.thread:                                          ; preds = %.noexc31, %.loopexit133
  %.1.i123 = phi i1 [ true, %.loopexit133 ], [ false, %.noexc31 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.au) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

_ZNSt6vectorIiSaIiEED2Ev.exit33:                  ; preds = %.loopexit133, %.thread
  %.1.i124 = phi i1 [ true, %.loopexit133 ], [ %.1.i123, %.thread ]
  %.not.i.i.i34 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33, %bb.t
  br i1 %.1.i124, label %.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit75

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit35
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.bn = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not172 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not172, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !73
  br label %.thread125

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !73
  %i.bo = ptrtoint ptr %.sroa.10102.1 to i64
  %i.bp = ptrtoint ptr %.sroa.097.2 to i64        ; 5 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i36 = icmp eq ptr %.sroa.10102.1, %.sroa.097.2
  br i1 %.not.i.i.i.i36, label %.thread125, label %bb.u

.thread125:                                       ; preds = %._crit_edge.thread, %._crit_edge
  %i.br = phi i64 [ 0, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  %.sroa.15.0.lcssa252 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.15.1, %._crit_edge ]
  %.sroa.10.0.lcssa250 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.10.1, %._crit_edge ]
  %.sroa.0.0.lcssa247 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.0.1, %._crit_edge ]
  %.sroa.15105.0.lcssa244 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.15105.2, %._crit_edge ]
  %.sroa.097.0.lcssa241 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.097.2, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.bt, align 8, !tbaa !16
  br label %bb.ap

bb.u:                                             ; preds = %._crit_edge
  %i.bu = icmp ugt i64 %i.bq, 9223372036854775804
  br i1 %i.bu, label %.noexc.i.i38, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i37, !prof !33

.noexc.i.i38:                                     ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc39 unwind label %bb.ba

.noexc39:                                         ; preds = %.noexc.i.i38
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i37: ; preds = %bb.u
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #19
          to label %.noexc40 unwind label %bb.ba  ; 5 uses

.noexc40:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i37
  store ptr %i.bv, ptr %6, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bq ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !16
  %i.bz = icmp samesign ugt i64 %i.bq, 4
  br i1 %i.bz, label %bb.v, label %bb.w, !prof !109

bb.v:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %.sroa.097.2, i64 %i.bq, i1 false)
  br label %bb.ap

bb.w:                                             ; preds = %.noexc40
  %i.ca = icmp eq i64 %i.bq, 4
  br i1 %i.ca, label %bb.x, label %bb.ap

bb.x:                                             ; preds = %bb.w
  %i.cb = load i32, ptr %.sroa.097.2, align 4, !tbaa !15
  store i32 %i.cb, ptr %i.bv, align 4, !tbaa !15
  br label %bb.ap

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43.sink.split

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i20, %.noexc.i.i21, %bb.bh
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit47

bb.ab:                                            ; preds = %bb.r, %.lr.ph.i
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIiSaIiEED2Ev.exit45.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.au) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit45.thread

_ZNSt6vectorIiSaIiEED2Ev.exit45:                  ; preds = %.noexc.i.i26, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i25
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIiSaIiEED2Ev.exit47, label %_ZNSt6vectorIiSaIiEED2Ev.exit45.thread

_ZNSt6vectorIiSaIiEED2Ev.exit45.thread:           ; preds = %bb.ab, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit45
  %.pn128 = phi { ptr, i32 } [ %i.ch, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.ab ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit47

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61
  %i.ci = phi ptr [ %i.ea, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ %i.bn, %.preheader ]
  %.0166 = phi i64 [ %i.dy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ 0, %.preheader ] ; 4 uses
  %.sroa.15.0165 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ null, %.preheader ] ; 6 uses
  %.sroa.10.0164 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ null, %.preheader ] ; 4 uses
  %.sroa.0.0163 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ null, %.preheader ] ; 8 uses
  %.sroa.15105.0162 = phi ptr [ %.sroa.15105.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ null, %.preheader ] ; 7 uses
  %.sroa.10102.0161 = phi ptr [ %.sroa.10102.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ null, %.preheader ] ; 4 uses
  %.sroa.097.0160 = phi ptr [ %.sroa.097.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61 ], [ null, %.preheader ] ; 9 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0166
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cl = invoke noundef zeroext i1 @_Z23util_isBraQubitInSuffixi5Qureg(i32 noundef %i.ck, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %.lr.ph
  br i1 %i.cl, label %bb.ae, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load ptr, ptr %1, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0166 ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.10102.0161, %.sroa.15105.0162
  br i1 %.not.i48, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !15
  store i32 %i.co, ptr %.sroa.10102.0161, align 4, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cp = ptrtoint ptr %.sroa.15105.0162 to i64
  %i.cq = ptrtoint ptr %.sroa.097.0160 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 6 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc50.a unwind label %.loopexit.split-lp

.noexc50.a:                                       ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.ct = ashr exact i64 %i.cr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 2305843009213693951)
  %i.cx = select i1 %i.cv, i64 2305843009213693951, i64 %i.cw ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #19
          to label %.noexc51 unwind label %.loopexit ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  %i.db = load i32, ptr %i.cn, align 4, !tbaa !15
  store i32 %i.db, ptr %i.da, align 4, !tbaa !15
  %i.dc = icmp sgt i64 %i.cr, 0
  br i1 %i.dc, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ai:                                            ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %.sroa.097.0160, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ai, %.noexc51
  %.not.i17.i.i = icmp eq ptr %.sroa.097.0160, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0160, i64 noundef %i.cr) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.af
  %.sroa.097.4 = phi ptr [ %i.cz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.097.0160, %bb.af ] ; 4 uses
  %.pn = phi ptr [ %i.da, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10102.0161, %bb.af ]
  %.sroa.15105.4 = phi ptr [ %i.dd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15105.0162, %bb.af ] ; 4 uses
  %.sroa.10102.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0166 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.10.0164, %.sroa.15.0165
  br i1 %.not.i52, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !15
  store i32 %i.dg, ptr %.sroa.10.0164, align 4, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.10.0164, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.di = ptrtoint ptr %.sroa.15.0165 to i64
  %i.dj = ptrtoint ptr %.sroa.0.0163 to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 6 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775804
  br i1 %i.dl, label %bb.am, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i53

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i53: ; preds = %bb.al
  %i.dm = ashr exact i64 %i.dk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i54, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 2305843009213693951)
  %i.dq = select i1 %i.do, i64 2305843009213693951, i64 %i.dp ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #19
          to label %.noexc60 unwind label %.loopexit ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i53
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dk ; 2 uses
  %i.du = load i32, ptr %i.df, align 4, !tbaa !15
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !15
  %i.dv = icmp sgt i64 %i.dk, 0
  br i1 %i.dv, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i56

bb.an:                                            ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 4 %.sroa.0.0163, i64 %i.dk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i56

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i56: ; preds = %bb.an, %.noexc60
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %.not.i17.i.i57 = icmp eq ptr %.sroa.0.0163, null
  br i1 %.not.i17.i.i57, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i56
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0163, i64 noundef %i.dk) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i56
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dq
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i53
  %.sroa.097.1.ph = phi ptr [ %.sroa.097.0160, %.lr.ph ], [ %.sroa.097.0160, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.097.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i53 ]
  %.sroa.15105.1.ph = phi ptr [ %.sroa.15105.0162, %.lr.ph ], [ %.sroa.15105.0162, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.15105.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i53 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit79.a

.loopexit.split-lp:                               ; preds = %bb.ah, %bb.am
  %.sroa.097.1.ph131 = phi ptr [ %.sroa.097.4, %bb.am ], [ %.sroa.097.0160, %bb.ah ]
  %.sroa.15105.1.ph132 = phi ptr [ %.sroa.15105.4, %bb.am ], [ %.sroa.15105.0162, %bb.ah ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit79.a

_ZNSt6vectorIiSaIiEE9push_backERKi.exit61:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58, %bb.ak, %bb.ad
  %.sroa.097.2 = phi ptr [ %.sroa.097.0160, %bb.ad ], [ %.sroa.097.4, %bb.ak ], [ %.sroa.097.4, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58 ] ; 10 uses
  %.sroa.10102.1 = phi ptr [ %.sroa.10102.0161, %bb.ad ], [ %.sroa.10102.2, %bb.ak ], [ %.sroa.10102.2, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58 ] ; 3 uses
  %.sroa.15105.2 = phi ptr [ %.sroa.15105.0162, %bb.ad ], [ %.sroa.15105.4, %bb.ak ], [ %.sroa.15105.4, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58 ] ; 6 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0163, %bb.ad ], [ %.sroa.0.0163, %bb.ak ], [ %i.ds, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58 ] ; 6 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0164, %bb.ad ], [ %i.dh, %bb.ak ], [ %i.dw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58 ] ; 5 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0165, %bb.ad ], [ %.sroa.15.0165, %bb.ak ], [ %i.dx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i58 ] ; 6 uses
  %i.dy = add nuw i64 %.0166, 1                   ; 2 uses
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ea = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !llvm.loop !190

bb.ap:                                            ; preds = %bb.x, %bb.w, %bb.v, %.thread125
  %i.eg = phi i64 [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %bb.x ], [ %i.br, %.thread125 ]
  %.sroa.15.0.lcssa251 = phi ptr [ %.sroa.15.1, %bb.v ], [ %.sroa.15.1, %bb.w ], [ %.sroa.15.1, %bb.x ], [ %.sroa.15.0.lcssa252, %.thread125 ] ; 3 uses
  %.sroa.10.0.lcssa249 = phi ptr [ %.sroa.10.1, %bb.v ], [ %.sroa.10.1, %bb.w ], [ %.sroa.10.1, %bb.x ], [ %.sroa.10.0.lcssa250, %.thread125 ] ; 2 uses
  %.sroa.0.0.lcssa246 = phi ptr [ %.sroa.0.1, %bb.v ], [ %.sroa.0.1, %bb.w ], [ %.sroa.0.1, %bb.x ], [ %.sroa.0.0.lcssa247, %.thread125 ] ; 8 uses
  %.sroa.15105.0.lcssa243 = phi ptr [ %.sroa.15105.2, %bb.v ], [ %.sroa.15105.2, %bb.w ], [ %.sroa.15105.2, %bb.x ], [ %.sroa.15105.0.lcssa244, %.thread125 ] ; 3 uses
  %.sroa.097.0.lcssa240 = phi ptr [ %.sroa.097.2, %bb.v ], [ %.sroa.097.2, %bb.w ], [ %.sroa.097.2, %bb.x ], [ %.sroa.097.0.lcssa241, %.thread125 ] ; 4 uses
  %i.eh = phi ptr [ %i.by, %bb.v ], [ %i.by, %bb.w ], [ %i.by, %bb.x ], [ %i.bt, %.thread125 ] ; 2 uses
  %i.ei = phi ptr [ %i.bx, %bb.v ], [ %i.bx, %bb.w ], [ %i.bx, %bb.x ], [ null, %.thread125 ]
  %i.ej = phi ptr [ %i.bw, %bb.v ], [ %i.bw, %bb.w ], [ %i.bw, %bb.x ], [ %i.bs, %.thread125 ]
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !12
  %i.ek = ptrtoint ptr %.sroa.10.0.lcssa249 to i64
  %i.el = ptrtoint ptr %.sroa.0.0.lcssa246 to i64 ; 2 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i62 = icmp eq ptr %.sroa.10.0.lcssa249, %.sroa.0.0.lcssa246
  br i1 %.not.i.i.i.i62, label %.thread130, label %bb.aq

.thread130:                                       ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eo = getelementptr inbounds i8, ptr null, i64 %i.em ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !16
  br label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.eq = icmp ugt i64 %i.em, 9223372036854775804
  br i1 %i.eq, label %.noexc.i.i64, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i63, !prof !33

.noexc.i.i64:                                     ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc65 unwind label %bb.bb

.noexc65:                                         ; preds = %.noexc.i.i64
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i63: ; preds = %bb.aq
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #19
          to label %.noexc66 unwind label %bb.bb  ; 5 uses

.noexc66:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i63
  store ptr %i.er, ptr %7, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr %i.er, ptr %i.es, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.em ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !16
  %i.ev = icmp samesign ugt i64 %i.em, 4
  br i1 %i.ev, label %bb.ar, label %bb.as, !prof !109

bb.ar:                                            ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.er, ptr align 4 %.sroa.0.0.lcssa246, i64 %i.em, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %.noexc66
  %i.ew = icmp eq i64 %i.em, 4
  br i1 %i.ew, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ex = load i32, ptr %.sroa.0.0.lcssa246, align 4, !tbaa !15
  store i32 %i.ex, ptr %i.er, align 4, !tbaa !15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %.thread130
  %i.ey = phi ptr [ %i.eu, %bb.ar ], [ %i.eu, %bb.as ], [ %i.eu, %bb.at ], [ %i.ep, %.thread130 ] ; 2 uses
  %i.ez = phi ptr [ %i.et, %bb.ar ], [ %i.et, %bb.as ], [ %i.et, %bb.at ], [ %i.eo, %.thread130 ]
  %i.fa = phi ptr [ %i.es, %bb.ar ], [ %i.es, %bb.as ], [ %i.es, %bb.at ], [ %i.en, %.thread130 ]
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !12
  %i.fb = invoke noundef double @_Z46accel_densmatr_calcProbOfMultiQubitOutcome_sub5QuregSt6vectorIiSaIiEES2_(ptr noundef nonnull byval(%struct.Qureg) align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.fc = load double, ptr %i.a, align 8, !tbaa !188
  %i.fd = fadd double %i.fb, %i.fc
  store double %i.fd, ptr %i.a, align 8, !tbaa !188
  %i.fe = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i68.a = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i68.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit69.a, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !16
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fi) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69.a

_ZNSt6vectorIiSaIiEED2Ev.exit69.a:                ; preds = %bb.av, %bb.aw
  %i.fj = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i70.a = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i70.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit71.a, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69.a
  %i.fk = load ptr, ptr %i.eh, align 8, !tbaa !16
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fn) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit71.a

_ZNSt6vectorIiSaIiEED2Ev.exit71.a:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69.a, %bb.ax
  %.not.i.i.i72.a = icmp eq ptr %.sroa.0.0.lcssa246, null
  br i1 %.not.i.i.i72.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit73.a, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit71.a
  %i.fo = ptrtoint ptr %.sroa.15.0.lcssa251 to i64
  %i.fp = sub i64 %i.fo, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa246, i64 noundef %i.fp) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit73.a

_ZNSt6vectorIiSaIiEED2Ev.exit73.a:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit71.a, %bb.ay
  %.not.i.i.i74.a = icmp eq ptr %.sroa.097.0.lcssa240, null
  br i1 %.not.i.i.i74.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit75, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73.a
  %i.fq = ptrtoint ptr %.sroa.15105.0.lcssa243 to i64
  %i.fr = sub i64 %i.fq, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0.lcssa240, i64 noundef %i.fr) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

bb.ba:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i37, %.noexc.i.i38
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit79.a

bb.bb:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i63, %.noexc.i.i64
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit77.a

bb.bc:                                            ; preds = %bb.au
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i76.a = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i76.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit77.a, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fw = load ptr, ptr %i.ey, align 8, !tbaa !16
  %i.fx = ptrtoint ptr %i.fw to i64
end_hunk_3
begin_hunk_4_@_Z36localiser_statevec_calcExpecPauliStr5Qureg8PauliStr:bb.a
  %i.pv = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i193 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i193, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !16
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qa) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ej, %bb.ei
  %i.qb = load ptr, ptr %9, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.qc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !16
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qb to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qg) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.qh = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i194 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i194, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i195, label %bb.el

bb.el:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !16
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qm) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i195

_ZNSt6vectorIiSaIiEED2Ev.exit.i195:               ; preds = %bb.el, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.qn = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.1.i196 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i.i.1.i196, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit197, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i195
  %i.qo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !16
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = ptrtoint ptr %i.qn to i64
  %i.qs = sub i64 %i.qq, %i.qr
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.qs) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit197

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit197:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i195, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.qt = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i198 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i.i198, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i199, label %bb.en

bb.en:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit197
  %i.qu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !16
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qy) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i199

_ZNSt6vectorIiSaIiEED2Ev.exit.i199:               ; preds = %bb.en, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit197
  %i.qz = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.1.i200 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i.1.i200, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit201, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i199
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !16
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.qz to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.re) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit201

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit201:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i199, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.rf = load ptr, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.i202 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i202, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i203, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit201
  %i.rg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !16
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rk) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i203

_ZNSt6vectorIiSaIiEED2Ev.exit.i203:               ; preds = %bb.ep, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit201
  %i.rl = load ptr, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.1.i204 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.1.i204, label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i203
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !16
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rl to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i

_ZNSt6vectorIiSaIiEED2Ev.exit.1.i:                ; preds = %bb.eq, %_ZNSt6vectorIiSaIiEED2Ev.exit.i203
  %i.rr = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i.2.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i
  %i.rs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !16
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.rr to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef %i.rw) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.load = load double, ptr %i.a, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert

_ZNSt6vectorIiSaIiEED2Ev.exit108:                 ; preds = %bb.ec, %_ZNSt6vectorIiSaIiEED2Ev.exit190, %bb.eg, %bb.bg, %_ZNSt6vectorIiSaIiEED2Ev.exit106, %bb.ba, %bb.eh, %_ZNSt6vectorIiSaIiEED2Ev.exit162
  %.pn51 = phi { ptr, i32 } [ %i.pu, %bb.eh ], [ %.pn44.pn, %bb.bg ], [ %.pn38.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit162 ], [ %i.fg, %bb.ba ], [ %.pn44.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit106 ], [ %i.ph, %bb.ec ], [ %.pn48, %_ZNSt6vectorIiSaIiEED2Ev.exit190 ], [ %.pn48, %bb.eg ]
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit102

_ZNSt6vectorIiSaIiEED2Ev.exit102:                 ; preds = %bb.az, %bb.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit108, %bb.ax
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %_ZNSt6vectorIiSaIiEED2Ev.exit108 ], [ %i.ez, %bb.ax ], [ %i.fa, %bb.ay ], [ %i.fa, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit100

_ZNSt6vectorIiSaIiEED2Ev.exit100:                 ; preds = %bb.aw, %bb.av, %_ZNSt6vectorIiSaIiEED2Ev.exit102, %bb.au
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit102 ], [ %i.es, %bb.au ], [ %i.et, %bb.av ], [ %i.et, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit98

_ZNSt6vectorIiSaIiEED2Ev.exit98:                  ; preds = %bb.at, %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit100, %bb.ar
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit100 ], [ %i.el, %bb.ar ], [ %i.em, %bb.as ], [ %i.em, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn51.pn.pn.pn
}

declare { double, double } @_Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { double, double } @_Z36localiser_densmatr_calcExpecPauliStr5Qureg8PauliStr(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::complex", align 8      ; 4 uses
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.a = tail call { double, double } @_Z42getDensMatrExpecPauliStrTermOfOnlyThisNode5Qureg8PauliStr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 %1, i64 %2) ; 3 uses
  %i.b = extractvalue { double, double } %i.a, 0
  store double %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = extractvalue { double, double } %i.a, 1
  store double %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %3)
  %.fca.0.load.pre = load double, ptr %3, align 8
  %.fca.1.load.pre = load double, ptr %i.c, align 8
  %i.g = insertvalue { double, double } poison, double %.fca.0.load.pre, 0
  %i.h = insertvalue { double, double } %i.g, double %.fca.1.load.pre, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.fca.1.insert.merged = phi { double, double } [ %i.h, %bb.b ], [ %i.a, %bb.a ]
  ret { double, double } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z39localiser_statevec_calcExpecPauliStrSum5Qureg11PauliStrSum(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<unsigned long long, std::pair<const unsigned long long, std::vector<std::tuple<PauliStr, std::complex<double>>>>, std::allocator<std::pair<const unsigned long long, std::vector<std::tuple<PauliStr, std::complex<double>>>>>, std::__detail::_Select1st, std::equal_to<unsigned long long>, std::hash<unsigned long long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::complex", align 16     ; 5 uses
  %4 = alloca %"class.std::unordered_map.49", align 8 ; 15 uses
  %.sroa.0178 = alloca %"struct.std::_Tuple_impl.70", align 8 ; 7 uses
  %5 = alloca %"struct.std::array.46", align 8    ; 16 uses
  %6 = alloca %"struct.std::array", align 8       ; 10 uses
  %7 = alloca %"class.std::vector", align 8       ; 7 uses
  %8 = alloca %"struct.std::array", align 8       ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 7 uses
  %10 = alloca %"struct.std::array", align 8      ; 13 uses
  %11 = alloca %"class.std::vector", align 8      ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 7 uses
  %13 = alloca %"class.std::vector", align 8      ; 7 uses
  %14 = alloca %"class.std::vector", align 8      ; 7 uses
  %15 = alloca %"class.std::vector", align 8      ; 7 uses
  %16 = alloca %"class.std::vector", align 8      ; 7 uses
  tail call void @_Z29assert_localiserGivenStateVec5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !191
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 1, ptr %i.b, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = load i64, ptr %1, align 8, !tbaa !194    ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge311

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197
  %.sroa.0179.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0178, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !198 ; 2 uses
  %.not180307 = icmp eq ptr %.pre, null
  br i1 %.not180307, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0178)
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0178, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !199
  %.sroa.025.0.copyload = load i64, ptr %i.bc, align 8, !tbaa !74
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.226.0.copyload = load i64, ptr %.sroa.226.0..sroa_idx, align 8, !tbaa !74
  %i.be = invoke noundef i64 @_Z33paulis_getKeyOfSameMixedAmpsGroup8PauliStr(i64 %.sroa.025.0.copyload, i64 %.sroa.226.0.copyload)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bf = ashr i64 %i.be, %i.n                    ; 5 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !193 ; 2 uses
  %i.bh = urem i64 %i.bf, %i.bg                   ; 3 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !191
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !54 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !74
  %i.bo = icmp eq i64 %i.bf, %i.bn
  br i1 %i.bo, label %.loopexit217.a, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %bb.f
  %i.bp = icmp eq i64 %i.bf, %i.bs
  br i1 %i.bp, label %.loopexit217.a, label %.lr.ph.i.i.i.i, !llvm.loop !200

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.020.i.i.i.i = phi ptr [ %i.bq, %bb.e ], [ %i.bl, %bb.d ]
  %i.bq = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !74 ; 2 uses
  %i.bt = urem i64 %i.bs, %i.bg
  %.not19.i.i.i.i = icmp eq i64 %i.bt, %i.bh
  br i1 %.not19.i.i.i.i, label %bb.e, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !200

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.f
  br label %.loopexit.i.i, !llvm.loop !200

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %4, ptr %2, align 8, !tbaa !201
  %i.bu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.noexc unwind label %.loopexit218 ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bu, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bf, ptr %i.bv, align 8, !tbaa !205
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store ptr %i.bu, ptr %i.o, align 8, !tbaa !212
  %i.bx = invoke ptr @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeISA_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.bh, i64 noundef %i.bf, ptr noundef nonnull %i.bu, i64 noundef 1)
          to label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.g

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit217.a

bb.g:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

.loopexit217.a:                                   ; preds = %bb.e, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.d
  %.pn.i.i = phi ptr [ %i.bx, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bl, %bb.d ], [ %i.bq, %bb.e ] ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !213 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !214
  %.not.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit217.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0178, i64 32, i1 false)
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !213
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !213
  br label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %.loopexit217.a
  %i.cf = load ptr, ptr %.1.i.i, align 8, !tbaa !215 ; 5 uses
  %i.cg = ptrtoint ptr %i.ca to i64
  %i.ch = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775776
  br i1 %i.cj, label %bb.j, label %_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc66 unwind label %.loopexit.split-lp219

.noexc66:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ck = ashr exact i64 %i.ci, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 288230376151711743)
  %i.co = select i1 %i.cm, i64 288230376151711743, i64 %i.cn ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 5
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #19
          to label %.noexc67 unwind label %.loopexit218 ; 5 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0178, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.cf, %i.ca
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc67, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %i.cq, %.noexc67 ] ; 3 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.cf, %.noexc67 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !126, !alias.scope !216
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !199, !alias.scope !216
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, %i.ca
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !220

_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc67
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cq, %.noexc67 ], [ %i.cv, %.lr.ph.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.cx = load ptr, ptr %i.cb, align 8, !tbaa !214
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cz) #20
  br label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.cq, ptr %.1.i.i, align 8, !tbaa !215
  store ptr %i.cw, ptr %i.bz, align 8, !tbaa !213
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.da, ptr %i.cb, align 8, !tbaa !214
  br label %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0178)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !221

bb.l:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit218:                                     ; preds = %.loopexit.i.i, %_ZNKSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp219:                            ; preds = %bb.j
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit218, %.loopexit.split-lp219, %bb.g, %bb.l
  %.pn63 = phi { ptr, i32 } [ %i.db, %bb.l ], [ %i.by, %bb.g ], [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0178)
  br label %bb.db

._crit_edge311:                                   ; preds = %._crit_edge306, %bb.a, %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !29
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.cy, label %bb.cw

bb.m:                                             ; preds = %.lr.ph310, %._crit_edge306
  %.sroa.0175.0308 = phi ptr [ %.pre, %.lr.ph310 ], [ %i.dq, %._crit_edge306 ] ; 4 uses
  %i.de = phi <2 x double> [ zeroinitializer, %.lr.ph310 ], [ %i.dp, %._crit_edge306 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0175.0308, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0175.0308, i64 16
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !74
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %.not49 = icmp eq i32 %i.di, 0
  br i1 %.not49, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = load i32, ptr %i.p, align 4, !tbaa !98
  %i.dk = xor i32 %i.dj, %i.di
  invoke void @_Z26comm_exchangeAmpsToBuffers5Quregi(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %i.dk)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.p:                                             ; preds = %bb.n, %bb.m
  %_Z33getStateVecExpecAllSuffixPauliStr5QuregSt6vectorIiSaIiEES2_S2_._Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_ = phi ptr [ @_Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_, %bb.n ], [ @_Z33getStateVecExpecAllSuffixPauliStr5QuregSt6vectorIiSaIiEES2_S2_, %bb.m ]
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !222 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0175.0308, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !222 ; 2 uses
  %.not181302 = icmp eq ptr %i.dm, %i.do
  br i1 %.not181302, label %._crit_edge306, label %.lr.ph305

._crit_edge306:                                   ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit, %bb.p
  %i.dp = phi <2 x double> [ %i.de, %bb.p ], [ %i.ln, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit ]
  %i.dq = load ptr, ptr %.sroa.0175.0308, align 8, !tbaa !54 ; 2 uses
  %.not180.a = icmp eq ptr %i.dq, null
  br i1 %.not180.a, label %._crit_edge311, label %bb.m

.lr.ph305:                                        ; preds = %bb.p, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit
  %.sroa.0171.0303 = phi ptr [ %i.nh, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit ], [ %i.dm, %bb.p ] ; 4 uses
  %i.dr = phi <2 x double> [ %i.ln, %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit ], [ %i.de, %bb.p ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0171.0303, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %.sroa.0.0.copyload = load i64, ptr %i.ds, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0171.0303, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !74
  invoke void @_Z22paulis_getSeparateInds8PauliStr(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.46") align 8 %5, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.q unwind label %bb.ch

bb.q:                                             ; preds = %.lr.ph305
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !12  ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i68 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i68, label %.noexc70, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp ugt i64 %i.dx, 9223372036854775804
  br i1 %i.dy, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !33

.noexc.i.i:                                       ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.r
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge unwind label %.loopexit

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre315.a = load ptr, ptr %5, align 8, !tbaa !9 ; 2 uses
  %.pre316.a = load ptr, ptr %i.s, align 8, !tbaa !9
  %.pre331.a = ptrtoint ptr %.pre316.a to i64
  %.pre332 = ptrtoint ptr %.pre315.a to i64
  br label %.noexc70

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge, %bb.q
  %.pre-phi333 = phi i64 [ %.pre332, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ %i.dw, %bb.q ]
  %.pre-phi = phi i64 [ %.pre331.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ %i.dv, %bb.q ]
  %i.ea = phi ptr [ %.pre315.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ %i.du, %bb.q ] ; 2 uses
  %i.eb = phi ptr [ %i.dz, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc70_crit_edge ], [ null, %bb.q ] ; 6 uses
  store ptr %i.eb, ptr %7, align 8, !tbaa !14
  store ptr %i.eb, ptr %i.t, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dx
  store ptr %i.ec, ptr %i.u, align 8, !tbaa !16
  %i.ed = sub i64 %.pre-phi, %.pre-phi333         ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 4
  br i1 %i.ee, label %bb.s, label %bb.t, !prof !17

bb.s:                                             ; preds = %.noexc70
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eb, ptr align 4 %i.ea, i64 %i.ed, i1 false)
  br label %bb.v

bb.t:                                             ; preds = %.noexc70
  %i.ef = icmp eq i64 %i.ed, 4
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = load i32, ptr %i.ea, align 4, !tbaa !15
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.eh = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  store ptr %i.eh, ptr %i.t, align 8, !tbaa !12
  invoke void @_Z29util_getPrefixAndSuffixQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.w unwind label %bb.ci

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.en = load ptr, ptr %i.w, align 8, !tbaa !12  ; 2 uses
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !14  ; 3 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i72 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.i.i72, label %.noexc76, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.es = icmp ugt i64 %i.er, 9223372036854775804
  br i1 %i.es, label %.noexc.i.i74, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73, !prof !33

.noexc.i.i74:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc75.a unwind label %.loopexit.split-lp183

.noexc75.a:                                       ; preds = %.noexc.i.i74
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73: ; preds = %bb.y
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge unwind label %.loopexit182

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73
  %.pre317.a = load ptr, ptr %i.q, align 8, !tbaa !9 ; 2 uses
  %.pre318.a = load ptr, ptr %i.w, align 8, !tbaa !9
  %.pre334 = ptrtoint ptr %.pre318.a to i64
  %.pre336 = ptrtoint ptr %.pre317.a to i64
  br label %.noexc76

.noexc76:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre-phi337 = phi i64 [ %.pre336, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ %i.eq, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.pre-phi335 = phi i64 [ %.pre334, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ %i.ep, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.eu = phi ptr [ %.pre317.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ %i.eo, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.ev = phi ptr [ %i.et, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i73..noexc76_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 6 uses
  store ptr %i.ev, ptr %9, align 8, !tbaa !14
  store ptr %i.ev, ptr %i.x, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store ptr %i.ew, ptr %i.y, align 8, !tbaa !16
  %i.ex = sub i64 %.pre-phi335, %.pre-phi337      ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 4
  br i1 %i.ey, label %bb.z, label %bb.aa, !prof !17

bb.z:                                             ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ev, ptr align 4 %i.eu, i64 %i.ex, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc76
  %i.ez = icmp eq i64 %i.ex, 4
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !15
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex
  store ptr %i.fb, ptr %i.x, align 8, !tbaa !12
  invoke void @_Z29util_getPrefixAndSuffixQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 8 %8, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.ad unwind label %bb.ck

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %9, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.fc, null
end_hunk_4
begin_hunk_5_@_Z38localiser_densmatr_multiQubitProjector5QuregSt6vectorIiSaIiEES2_d:bb.a
  %5 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !33

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19
  %.pre = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %.pre15 = load ptr, ptr %i.a, align 8, !tbaa !9
  %.pre18 = ptrtoint ptr %.pre15 to i64
  %.pre19 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi20 = phi i64 [ %.pre19, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre18, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = sub i64 %.pre-phi, %.pre-phi20           ; 4 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.i, align 4, !tbaa !15
  store i32 %i.q, ptr %i.j, align 4, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  store ptr %i.r, ptr %i.k, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i4, label %.noexc7, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5, !prof !33

.noexc.i.i6:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5: ; preds = %bb.g
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge unwind label %bb.o

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5
  %.pre16 = load ptr, ptr %2, align 8, !tbaa !9   ; 2 uses
  %.pre17 = load ptr, ptr %i.s, align 8, !tbaa !9
  %.pre21 = ptrtoint ptr %.pre17 to i64
  %.pre23 = ptrtoint ptr %.pre16 to i64
  br label %.noexc7

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.pre-phi24 = phi i64 [ %.pre23, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge ], [ %i.w, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge ], [ %i.v, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.aa = phi ptr [ %.pre16, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge ], [ %i.u, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5..noexc7_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 5 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = sub i64 %.pre-phi22, %.pre-phi24        ; 4 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ab, ptr align 4 %i.aa, i64 %i.af, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc7
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %i.aa, align 4, !tbaa !15
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !12
  invoke void @_Z38accel_densmatr_multiQubitProjector_sub5QuregSt6vectorIiSaIiEES2_d(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, double noundef %3)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  %i.ap = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i5, %.noexc.i.i6
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12

bb.p:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12

_ZNSt6vectorIiSaIiEED2Ev.exit12:                  ; preds = %bb.q, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.av, %bb.p ], [ %i.av, %bb.q ]
  %i.bb = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12, %bb.r
  resume { ptr, i32 } %.pn
}

declare void @_Z38accel_densmatr_multiQubitProjector_sub5QuregSt6vectorIiSaIiEES2_d(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!13, !10, i64 16}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !21, !20}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !19, !21, !20}
!25 = distinct !{!25, !19, !20, !21}
!26 = distinct !{!26, !19, !21, !20}
!27 = distinct !{!27, !19, !20, !21}
!28 = distinct !{!28, !19, !21, !20}
!29 = !{!30, !6, i64 8}
!30 = !{!"_ZTS5Qureg", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96}
!31 = !{!"long long", !7, i64 0}
!32 = !{!"p1 _ZTSSt7complexIdE", !11, i64 0}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!30, !6, i64 24}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19, !20, !21}
!38 = distinct !{!38, !19, !21, !20}
!39 = distinct !{!39, !19, !20, !21}
!40 = distinct !{!40, !19, !21, !20}
!41 = distinct !{!41, !19}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !44, i64 0, !46, i64 8, !47, i64 16, !46, i64 24, !49, i64 32, !48, i64 48}
!44 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !45, i64 0}
!45 = !{!"any p2 pointer", !11, i64 0}
!46 = !{!"long", !7, i64 0}
!47 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!48 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!49 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !50, i64 0, !46, i64 8}
!50 = !{!"float", !7, i64 0}
!51 = !{!43, !46, i64 8}
!52 = !{!49, !50, i64 0}
!53 = !{!48, !48, i64 0}
!54 = !{!47, !48, i64 0}
!55 = distinct !{!55, !19}
!56 = !{!57, !6, i64 0}
!57 = !{!"_ZTSSt4pairIKiiE", !6, i64 0, !6, i64 4}
!58 = !{!57, !6, i64 4}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = !{!43, !48, i64 16}
!62 = distinct !{!62, !19}
!63 = !{!49, !46, i64 8}
!64 = !{!43, !46, i64 24}
!65 = !{!43, !48, i64 48}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19, !20, !21}
!68 = distinct !{!68, !19, !21, !20}
!69 = !{!30, !31, i64 56}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 8, !74, i64 40, i64 8, !74, i64 48, i64 8, !74, i64 56, i64 8, !74, i64 64, i64 8, !74, i64 72, i64 8, !75, i64 80, i64 8, !75, i64 88, i64 8, !75, i64 96, i64 8, !75}
!74 = !{!31, !31, i64 0}
!75 = !{!32, !32, i64 0}
!76 = !{!30, !32, i64 72}
!77 = !{!30, !6, i64 4}
!78 = !{!30, !32, i64 80}
!79 = !{i64 0, i64 4, !15, i64 8, i64 8, !74, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 32, i64 8, !74, i64 40, i64 8, !9, i64 48, i64 8, !9, i64 56, i64 8, !9, i64 64, i64 8, !9, i64 72, i64 8, !9, i64 80, i64 8, !75, i64 88, i64 8, !75}
!80 = !{!81, !6, i64 24}
!81 = !{!"_ZTS17FullStateDiagMatr", !6, i64 0, !31, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !31, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !32, i64 80, !32, i64 88}
!82 = !{!81, !6, i64 20}
!83 = !{!81, !31, i64 8}
!84 = !{!30, !6, i64 16}
!85 = !{!81, !31, i64 32}
!86 = !{!81, !32, i64 80}
!87 = !{!81, !6, i64 16}
!88 = !{!81, !32, i64 88}
!89 = !{!81, !6, i64 0}
!90 = !{!30, !6, i64 28}
!91 = !{!30, !6, i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"bool", !7, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_Z53getSpoofedLocalStateVecFromDistributedDensMatrBuffers5Qureg: argument 0"}
!96 = distinct !{!96, !"_Z53getSpoofedLocalStateVecFromDistributedDensMatrBuffers5Qureg"}
!97 = !{!30, !31, i64 32}
!98 = !{!30, !6, i64 12}
!99 = !{!30, !31, i64 48}
!100 = !{!101, !31, i64 8}
!101 = !{!"_ZTS21util_VectorIndexRange", !31, i64 0, !31, i64 8, !31, i64 16}
!102 = !{!101, !31, i64 0}
!103 = !{!101, !31, i64 16}
!104 = !{!105, !106, i64 16}
!105 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 long long", !11, i64 0}
!107 = !{!105, !106, i64 0}
!108 = !{!105, !106, i64 8}
!109 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!110 = distinct !{!110, !19}
!111 = !{!11, !11, i64 0}
!112 = !{!113, !11, i64 24}
!113 = !{!"_ZTSSt8functionIFvvEE", !114, i64 0, !11, i64 24}
!114 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!115 = !{!114, !11, i64 16}
!116 = !{!117, !118, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!118 = !{!"p1 _ZTSSt6vectorISt7complexIdESaIS1_EE", !11, i64 0}
!119 = !{!120, !32, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt7complexIdESaIS1_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!121 = distinct !{!121, !19}
!122 = !{!117, !118, i64 8}
!123 = !{!120, !32, i64 16}
!124 = distinct !{!124, !19}
!125 = !{!117, !118, i64 16}
!126 = !{i64 0, i64 16, !127}
!127 = !{!7, !7, i64 0}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{null, null}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr: argument 0"}
!133 = distinct !{!133, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr"}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr: argument 0"}
!139 = distinct !{!139, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr"}
!140 = !{!120, !32, i64 8}
!141 = !{!142, !11, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseI5QuregSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!143 = !{!142, !11, i64 16}
!144 = !{!142, !11, i64 8}
!145 = distinct !{!145, !19}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_Z43getSpoofedSerialStateVecFromDensMatrAndAmps5QuregPSt7complexIdE: argument 0"}
!148 = distinct !{!148, !"_Z43getSpoofedSerialStateVecFromDensMatrAndAmps5QuregPSt7complexIdE"}
!149 = !{i8 0, i8 2}
!150 = !{}
!151 = distinct !{!151, !19}
!152 = distinct !{!152, !19}
!153 = !{i64 0, i64 4, !15, i64 8, i64 8, !74, i64 16, i64 64, !127}
!154 = !{i64 0, i64 4, !15, i64 8, i64 8, !74, i64 16, i64 256, !127}
!155 = !{!156, !157, i64 40}
!156 = !{!"_ZTS8CompMatr", !6, i64 0, !31, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !157, i64 40, !32, i64 48, !32, i64 56}
!157 = !{!"p2 _ZTSSt7complexIdE", !45, i64 0}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZL12getCompMatr1PPSt7complexIdE: argument 0"}
!160 = distinct !{!160, !"_ZL12getCompMatr1PPSt7complexIdE"}
!161 = !{!162, !6, i64 0}
!162 = !{!"_ZTS9CompMatr1", !6, i64 0, !31, i64 8, !7, i64 16}
!163 = !{!162, !31, i64 8}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZL12getCompMatr2PPSt7complexIdE: argument 0"}
!166 = distinct !{!166, !"_ZL12getCompMatr2PPSt7complexIdE"}
!167 = !{!168, !6, i64 0}
!168 = !{!"_ZTS9CompMatr2", !6, i64 0, !31, i64 8, !7, i64 16}
!169 = !{!168, !31, i64 8}
end_hunk_5
