Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cv10OcvDftImplD2Ev:bb.a
bb.d:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit3
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #20
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit6

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit6:           ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit3, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.not.i.i7 = icmp eq ptr %i.n, %i.o
  %i.p = icmp eq ptr %i.n, null
  %or.cond.i8 = or i1 %.not.i.i7, %i.p
  br i1 %or.cond.i8, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit6
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit9

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit9:           ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit6, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit9, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !85
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !1
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i11 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.l, label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21
  br label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !89 ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aq, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !85
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #21, !inline_history !1
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #21, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i13 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i15 = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !90

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #21
  br label %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %_ZNSt12__shared_ptrIN2cv3hal5DFT1DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.r
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv10OcvDftImplD0Ev(ptr noundef nonnull align 8 dereferenceable(4312) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN2cv10OcvDftImplD2Ev(ptr noundef nonnull align 8 dead_on_return(4312) dereferenceable(4312) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 4312) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !583
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !583
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv10OcvDftImpl6rowDftEPKhmPhmbb(ptr noundef nonnull align 8 dereferenceable(4312) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %i.c = icmp ne i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i8, ptr %i.d, align 4, !range !44
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond53 = select i1 %i.c, i1 true, i1 %i.f   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.047 = select i1 %or.cond53, i32 %i.h, i32 1   ; 4 uses
  %.0 = select i1 %or.cond53, i32 %i.b, i32 %i.h  ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %i.k = mul nsw i32 %.0, %i.j                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %7 = load i8, ptr %i.l, align 8, !tbaa !62, !range !44, !noundef !45
  %8 = trunc nuw i8 %7 to i1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  %or.cond56 = select i1 %8, i1 %11, i1 false
  %12 = trunc i32 %.0 to i1
  %13 = icmp sgt i32 %.0, 1
  %or.cond = and i1 %13, %12
  %or.cond58 = select i1 %or.cond56, i1 %or.cond, i1 false
  %14 = sext i32 %i.j to i64
  %.046 = select i1 %or.cond58, i64 %14, i64 0
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.m = load i8, ptr %15, align 2, !tbaa !64, !range !44, !noundef !45
  %i.n = trunc nuw i8 %i.m to i1
  %.not = xor i1 %i.n, true
  %or.cond3 = and i1 %5, %.not
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %.0, 1
  %.not50 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.in = select i1 %.not50, ptr %i.p, ptr %i.i
  %i.q = load i32, ptr %.in, align 4, !tbaa !42
  %i.r = add nsw i32 %i.q, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.045 = phi i32 [ %i.r, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.u = icmp slt i32 %i.t, 1
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %.047)
  %.044 = select i1 %i.u, i32 %.047, i32 %i.v     ; 5 uses
  %i.w = icmp sgt i32 %.044, 0                    ; 2 uses
  br i1 %i.w, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = sext i32 %.045 to i64
  %wide.trip.count = zext nneg i32 %.044 to i64
  br label %bb.d

.preheader:                                       ; preds = %bb.h, %bb.c
  %.043.lcssa = phi i32 [ 0, %bb.c ], [ %.044, %bb.h ] ; 2 uses
  %i.aa = icmp slt i32 %.043.lcssa, %.047
  br i1 %i.aa, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %.preheader
  %i.ab = sext i32 %.045 to i64                   ; 9 uses
  %i.ac = zext nneg i32 %.043.lcssa to i64        ; 4 uses
  %wide.trip.count67 = zext nneg i32 %.047 to i64 ; 3 uses
  %i.ad = sub nsw i64 %wide.trip.count67, %i.ac
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph61, %.prol.preheader
  %indvars.iv64.prol = phi i64 [ %indvars.iv.next65.prol, %.prol.preheader ], [ %i.ac, %.lr.ph61 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph61 ]
  %i.ae = mul i64 %4, %indvars.iv64.prol
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.prol = add nuw nsw i64 %indvars.iv64.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !584

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph61
  %indvars.iv64.unr = phi i64 [ %i.ac, %.lr.ph61 ], [ %indvars.iv.next65.prol, %.prol.preheader ]
  %i.ag = sub nsw i64 %i.ac, %wide.trip.count67
  %i.ah = icmp ugt i64 %i.ag, -8
  br i1 %i.ah, label %._crit_edge, label %.lr.ph61.new

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ai = mul i64 %2, %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = mul i64 %4, %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.l, align 8, !tbaa !62, !range !44, !noundef !45
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.042 = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.aj, ptr noundef %.042)
  %i.as = load i8, ptr %i.l, align 8, !tbaa !62, !range !44, !noundef !45
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds i8, ptr %.042, i64 %.046
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.au, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !585

.lr.ph61.new:                                     ; preds = %.prol.loopexit, %.lr.ph61.new
  %indvars.iv64 = phi i64 [ %indvars.iv.next65.7, %.lr.ph61.new ], [ %indvars.iv64.unr, %.prol.loopexit ] ; 9 uses
  %i.av = mul i64 %4, %indvars.iv64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %i.ax = mul i64 %4, %indvars.iv.next65
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2
  %i.az = mul i64 %4, %indvars.iv.next65.1
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.az
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.2 = add nuw nsw i64 %indvars.iv64, 3
  %i.bb = mul i64 %4, %indvars.iv.next65.2
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.3 = add nuw nsw i64 %indvars.iv64, 4
  %i.bd = mul i64 %4, %indvars.iv.next65.3
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.be, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.4 = add nuw nsw i64 %indvars.iv64, 5
  %i.bf = mul i64 %4, %indvars.iv.next65.4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.5 = add nuw nsw i64 %indvars.iv64, 6
  %i.bh = mul i64 %4, %indvars.iv.next65.5
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %i.bh
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bi, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.6 = add nuw nsw i64 %indvars.iv64, 7
  %i.bj = mul i64 %4, %indvars.iv.next65.6
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.ab, i1 false)
  %indvars.iv.next65.7 = add nuw nsw i64 %indvars.iv64, 8 ; 2 uses
  %exitcond68.not.7 = icmp eq i64 %indvars.iv.next65.7, %wide.trip.count67
  br i1 %exitcond68.not.7, label %._crit_edge, label %.lr.ph61.new, !llvm.loop !586

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph61.new, %.preheader
  br i1 %6, label %bb.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

bb.i:                                             ; preds = %._crit_edge
  %i.bl = load i32, ptr %9, align 4, !tbaa !77
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %bb.j, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !76
  %i.bp = icmp eq i32 %i.bo, 5
  %i.bq = icmp sgt i32 %.0, 2
  %or.cond.i = and i1 %i.bq, %i.w                 ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = lshr i64 %4, 2
  br i1 %or.cond.i, label %.lr.ph37.split.i.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

.lr.ph37.split.i.i:                               ; preds = %bb.k
  %i.bs = add nuw nsw i32 %.0, 1
  %i.bt = lshr i32 %i.bs, 1                       ; 2 uses
  %i.bu = zext nneg i32 %.0 to i64                ; 3 uses
  %wide.trip.count57.i.i = zext nneg i32 %.044 to i64
  %wide.trip.count52.i.i = zext nneg i32 %i.bt to i64
  %i.bv = add nsw i64 %wide.trip.count52.i.i, -1  ; 3 uses
  %xtraiter76 = and i64 %i.bv, 1
  %i.bw = icmp eq i32 %i.bt, 2
  %unroll_iter79 = and i64 %i.bv, -2
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  %lcmp.mod78 = trunc i64 %i.bv to i1
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph37.split.i.i
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i, %._crit_edge.us.i.i ], [ 0, %.lr.ph37.split.i.i ] ; 2 uses
  %i.bx = mul i64 %indvars.iv54.i.i, %i.br
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx ; 6 uses
  br i1 %i.bw, label %.epil.preheader75, label %.lr.ph.us.i.i.new

.lr.ph.us.i.i.new:                                ; preds = %.lr.ph.us.i.i, %.lr.ph.us.i.i.new
  %indvars.iv48.i.i = phi i64 [ %indvars.iv.next49.i.i.1, %.lr.ph.us.i.i.new ], [ 1, %.lr.ph.us.i.i ] ; 4 uses
  %niter80 = phi i64 [ %niter80.next.1, %.lr.ph.us.i.i.new ], [ 0, %.lr.ph.us.i.i ]
  %.idx61.i.i = shl nuw nsw i64 %indvars.iv48.i.i, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx61.i.i ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !109
  %i.cb = sub nsw i64 %i.bu, %indvars.iv48.i.i
  %.idx62.i.i = shl nsw i64 %i.cb, 3
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %.idx62.i.i ; 2 uses
  store float %i.ca, ptr %i.cc, align 4, !tbaa !109
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !109
  %i.cf = fneg float %i.ce
  %i.cg = getelementptr i8, ptr %i.cc, i64 4
  store float %i.cf, ptr %i.cg, align 4, !tbaa !109
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %.idx61.i.i.1 = shl nuw nsw i64 %indvars.iv.next49.i.i, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx61.i.i.1 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !109
  %i.cj = sub nsw i64 %i.bu, %indvars.iv.next49.i.i
  %.idx62.i.i.1 = shl nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds i8, ptr %i.by, i64 %.idx62.i.i.1 ; 2 uses
  store float %i.ci, ptr %i.ck, align 4, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !109
  %i.cn = fneg float %i.cm
  %i.co = getelementptr i8, ptr %i.ck, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !109
  %indvars.iv.next49.i.i.1 = add nuw nsw i64 %indvars.iv48.i.i, 2 ; 2 uses
  %niter80.next.1 = add nuw i64 %niter80, 2       ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.lr.ph.us.i.i.new, !llvm.loop !3

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.lr.ph.us.i.i.new
  br i1 %lcmp.mod77.not, label %._crit_edge.us.i.i, label %.epil.preheader75

.epil.preheader75:                                ; preds = %._crit_edge.us.i.i.unr-lcssa, %.lr.ph.us.i.i
  %indvars.iv48.i.i.epil.init = phi i64 [ 1, %.lr.ph.us.i.i ], [ %indvars.iv.next49.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %.idx61.i.i.epil = shl nuw nsw i64 %indvars.iv48.i.i.epil.init, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx61.i.i.epil ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !109
  %i.cr = sub nsw i64 %i.bu, %indvars.iv48.i.i.epil.init
  %.idx62.i.i.epil = shl nsw i64 %i.cr, 3
  %i.cs = getelementptr inbounds i8, ptr %i.by, i64 %.idx62.i.i.epil ; 2 uses
  store float %i.cq, ptr %i.cs, align 4, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !109
  %i.cv = fneg float %i.cu
  %i.cw = getelementptr i8, ptr %i.cs, i64 4
  store float %i.cv, ptr %i.cw, align 4, !tbaa !109
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %.epil.preheader75
  %indvars.iv.next55.i.i = add nuw nsw i64 %indvars.iv54.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next55.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit, label %.lr.ph.us.i.i, !llvm.loop !4

bb.l:                                             ; preds = %bb.j
  %i.cx = lshr i64 %4, 3
  br i1 %or.cond.i, label %.lr.ph37.split.i11.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

.lr.ph37.split.i11.i:                             ; preds = %bb.l
  %i.cy = add nuw nsw i32 %.0, 1
  %i.cz = lshr i32 %i.cy, 1                       ; 2 uses
  %i.da = zext nneg i32 %.0 to i64                ; 3 uses
  %wide.trip.count57.i13.i = zext nneg i32 %.044 to i64
  %wide.trip.count52.i14.i = zext nneg i32 %i.cz to i64
  %i.db = add nsw i64 %wide.trip.count52.i14.i, -1 ; 3 uses
  %xtraiter72 = and i64 %i.db, 1
  %i.dc = icmp eq i32 %i.cz, 2
  %unroll_iter = and i64 %i.db, -2
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  %lcmp.mod74 = trunc i64 %i.db to i1
  br label %.lr.ph.us.i27.i

.lr.ph.us.i27.i:                                  ; preds = %._crit_edge.us.i34.i, %.lr.ph37.split.i11.i
  %indvars.iv54.i28.i = phi i64 [ %indvars.iv.next55.i35.i, %._crit_edge.us.i34.i ], [ 0, %.lr.ph37.split.i11.i ] ; 2 uses
  %i.dd = mul i64 %indvars.iv54.i28.i, %i.cx
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dd ; 6 uses
  br i1 %i.dc, label %.epil.preheader, label %.lr.ph.us.i27.i.new

.lr.ph.us.i27.i.new:                              ; preds = %.lr.ph.us.i27.i, %.lr.ph.us.i27.i.new
  %indvars.iv48.i29.i = phi i64 [ %indvars.iv.next49.i32.i.1, %.lr.ph.us.i27.i.new ], [ 1, %.lr.ph.us.i27.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i27.i.new ], [ 0, %.lr.ph.us.i27.i ]
  %.idx61.i30.i = shl nuw nsw i64 %indvars.iv48.i29.i, 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx61.i30.i ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !113
  %i.dh = sub nsw i64 %i.da, %indvars.iv48.i29.i
  %.idx62.i31.i = shl nsw i64 %i.dh, 4
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %.idx62.i31.i ; 2 uses
  store double %i.dg, ptr %i.di, align 8, !tbaa !113
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !113
  %i.dl = fneg double %i.dk
  %i.dm = getelementptr i8, ptr %i.di, i64 8
  store double %i.dl, ptr %i.dm, align 8, !tbaa !113
  %indvars.iv.next49.i32.i = add nuw nsw i64 %indvars.iv48.i29.i, 1 ; 2 uses
  %.idx61.i30.i.1 = shl nuw nsw i64 %indvars.iv.next49.i32.i, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx61.i30.i.1 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !113
  %i.dp = sub nsw i64 %i.da, %indvars.iv.next49.i32.i
  %.idx62.i31.i.1 = shl nsw i64 %i.dp, 4
  %i.dq = getelementptr inbounds i8, ptr %i.de, i64 %.idx62.i31.i.1 ; 2 uses
  store double %i.do, ptr %i.dq, align 8, !tbaa !113
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !113
  %i.dt = fneg double %i.ds
  %i.du = getelementptr i8, ptr %i.dq, i64 8
  store double %i.dt, ptr %i.du, align 8, !tbaa !113
  %indvars.iv.next49.i32.i.1 = add nuw nsw i64 %indvars.iv48.i29.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i34.i.unr-lcssa, label %.lr.ph.us.i27.i.new, !llvm.loop !5

._crit_edge.us.i34.i.unr-lcssa:                   ; preds = %.lr.ph.us.i27.i.new
  br i1 %lcmp.mod73.not, label %._crit_edge.us.i34.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i34.i.unr-lcssa, %.lr.ph.us.i27.i
  %indvars.iv48.i29.i.epil.init = phi i64 [ 1, %.lr.ph.us.i27.i ], [ %indvars.iv.next49.i32.i.1, %._crit_edge.us.i34.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %.idx61.i30.i.epil = shl nuw nsw i64 %indvars.iv48.i29.i.epil.init, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx61.i30.i.epil ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !113
  %i.dx = sub nsw i64 %i.da, %indvars.iv48.i29.i.epil.init
  %.idx62.i31.i.epil = shl nsw i64 %i.dx, 4
  %i.dy = getelementptr inbounds i8, ptr %i.de, i64 %.idx62.i31.i.epil ; 2 uses
  store double %i.dw, ptr %i.dy, align 8, !tbaa !113
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !113
  %i.eb = fneg double %i.ea
  %i.ec = getelementptr i8, ptr %i.dy, i64 8
  store double %i.eb, ptr %i.ec, align 8, !tbaa !113
  br label %._crit_edge.us.i34.i

._crit_edge.us.i34.i:                             ; preds = %._crit_edge.us.i34.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i35.i = add nuw nsw i64 %indvars.iv54.i28.i, 1 ; 2 uses
  %exitcond58.not.i36.i = icmp eq i64 %indvars.iv.next55.i35.i, %wide.trip.count57.i13.i
  br i1 %exitcond58.not.i36.i, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit, label %.lr.ph.us.i27.i, !llvm.loop !6

_ZN2cvL23complementComplexOutputEiPhmiii.exit:    ; preds = %._crit_edge.us.i34.i, %._crit_edge.us.i.i, %bb.l, %bb.k, %bb.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv10OcvDftImpl6colDftEPKhmPhmiib(ptr noundef nonnull align 8 dereferenceable(4312) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 169 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.j = load i8, ptr %i.i, align 1, !tbaa !63, !range !44, !noundef !45
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.m = load ptr, ptr %i.l, align 8
  %.0120 = select i1 %i.k, ptr %i.h, ptr %i.f     ; 35 uses
  %.0119 = select i1 %i.k, ptr %i.m, ptr %i.h     ; 29 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
end_hunk_0
