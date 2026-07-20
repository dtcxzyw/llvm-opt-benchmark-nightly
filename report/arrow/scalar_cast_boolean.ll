inline.NumInlined: 719
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !259, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !145
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !145
  %i.p = load i8, ptr %i.n, align 1, !tbaa !55
  %.not46 = icmp eq i8 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !262

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.r, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.t, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.040 = phi ptr [ %i.x, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ak, %.preheader48 ] ; 2 uses
  %.14155 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.bc, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !259, !nonnull !116, !align !261 ; 9 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !145 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !145
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ak = add nsw i64 %.in, -1
  %i.al = load i8, ptr %.promoted53, align 1, !tbaa !55
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !145
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !55
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !145
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !55
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !145
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !55
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !145
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !55
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !145
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !55
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !145
  %i.ar = load i8, ptr %i.ah, align 1, !tbaa !55
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !145
  %i.as = load i8, ptr %i.ai, align 1, !tbaa !55
  %i.at = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 1
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 2
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 3
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 4
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 5
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.ar, i64 6
  %i.ba = insertelement <8 x i8> %i.az, i8 %i.as, i64 7
  %i.bb = icmp ne <8 x i8> %i.ba, zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.14155, i64 1 ; 2 uses
  store <8 x i1> %i.bb, ptr %.14155, align 1, !tbaa !55
  %i.bd = icmp samesign ugt i64 %.in, 1
  br i1 %i.bd, label %.preheader48, label %._crit_edge56, !llvm.loop !264

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.141.lcssa = phi ptr [ %.040, %bb.e ], [ %i.bc, %.preheader48 ]
  %i.be = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.be, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259, !nonnull !116, !align !261 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bh, align 8, !tbaa !145 ; 2 uses
  %xtraiter = and i64 %i.be, 1
  %i.bi = icmp eq i64 %i.be, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %i.be, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %i.bj = phi ptr [ %.promoted64, %.lr.ph61.new ], [ %i.bp, %bb.f ] ; 3 uses
  %.13759 = phi i8 [ 1, %.lr.ph61.new ], [ %i.bt, %bb.f ] ; 3 uses
  %.13958 = phi i8 [ 0, %.lr.ph61.new ], [ %i.bs, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !145
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !55
  %.not47 = icmp eq i8 %i.bl, 0
  %i.bm = select i1 %.not47, i8 0, i8 %.13759
  %i.bn = or i8 %i.bm, %.13958
  %i.bo = shl nuw i8 %.13759, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 3 uses
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !145
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !55
  %.not47.1 = icmp eq i8 %i.bq, 0
  %i.br = select i1 %.not47.1, i8 0, i8 %i.bo
  %i.bs = or i8 %i.br, %i.bn                      ; 3 uses
  %i.bt = shl nuw i8 %.13759, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !265

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi ptr [ %.promoted64, %.lr.ph61 ], [ %i.bp, %._crit_edge62.loopexit.unr-lcssa ] ; 2 uses
  %.13759.epil.init = phi i8 [ 1, %.lr.ph61 ], [ %i.bt, %._crit_edge62.loopexit.unr-lcssa ]
  %.13958.epil.init = phi i8 [ 0, %.lr.ph61 ], [ %i.bs, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bu = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.bu, ptr %i.bh, align 8, !tbaa !145
  %i.bv = load i8, ptr %.epil.init, align 1, !tbaa !55
  %.not47.epil = icmp eq i8 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13759.epil.init
  %i.bx = or i8 %i.bw, %.13958.epil.init
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %.preheader
  %.139.lcssa = phi i8 [ 0, %.preheader ], [ %i.bs, %._crit_edge62.loopexit.unr-lcssa ], [ %i.bx, %.epil.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge56, %._crit_edge62, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !266, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !167
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !167
  %i.p = load i8, ptr %i.n, align 1, !tbaa !55
  %.not46 = icmp eq i8 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !268

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.r, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.t, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.040 = phi ptr [ %i.x, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ak, %.preheader48 ] ; 2 uses
  %.14155 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.bc, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !266, !nonnull !116, !align !261 ; 9 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !167
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ak = add nsw i64 %.in, -1
  %i.al = load i8, ptr %.promoted53, align 1, !tbaa !55
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !167
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !55
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !167
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !55
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !167
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !55
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !167
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !55
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !167
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !55
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !167
  %i.ar = load i8, ptr %i.ah, align 1, !tbaa !55
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !167
  %i.as = load i8, ptr %i.ai, align 1, !tbaa !55
  %i.at = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 1
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 2
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 3
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 4
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 5
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.ar, i64 6
  %i.ba = insertelement <8 x i8> %i.az, i8 %i.as, i64 7
  %i.bb = icmp ne <8 x i8> %i.ba, zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.14155, i64 1 ; 2 uses
  store <8 x i1> %i.bb, ptr %.14155, align 1, !tbaa !55
  %i.bd = icmp samesign ugt i64 %.in, 1
  br i1 %i.bd, label %.preheader48, label %._crit_edge56, !llvm.loop !269

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.141.lcssa = phi ptr [ %.040, %bb.e ], [ %i.bc, %.preheader48 ]
  %i.be = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.be, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !266, !nonnull !116, !align !261 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bh, align 8, !tbaa !167 ; 2 uses
  %xtraiter = and i64 %i.be, 1
  %i.bi = icmp eq i64 %i.be, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %i.be, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %i.bj = phi ptr [ %.promoted64, %.lr.ph61.new ], [ %i.bp, %bb.f ] ; 3 uses
  %.13759 = phi i8 [ 1, %.lr.ph61.new ], [ %i.bt, %bb.f ] ; 3 uses
  %.13958 = phi i8 [ 0, %.lr.ph61.new ], [ %i.bs, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !167
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !55
  %.not47 = icmp eq i8 %i.bl, 0
  %i.bm = select i1 %.not47, i8 0, i8 %.13759
  %i.bn = or i8 %i.bm, %.13958
  %i.bo = shl nuw i8 %.13759, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 3 uses
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !167
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !55
  %.not47.1 = icmp eq i8 %i.bq, 0
  %i.br = select i1 %.not47.1, i8 0, i8 %i.bo
  %i.bs = or i8 %i.br, %i.bn                      ; 3 uses
  %i.bt = shl nuw i8 %.13759, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !270

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi ptr [ %.promoted64, %.lr.ph61 ], [ %i.bp, %._crit_edge62.loopexit.unr-lcssa ] ; 2 uses
  %.13759.epil.init = phi i8 [ 1, %.lr.ph61 ], [ %i.bt, %._crit_edge62.loopexit.unr-lcssa ]
  %.13958.epil.init = phi i8 [ 0, %.lr.ph61 ], [ %i.bs, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bu = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.bu, ptr %i.bh, align 8, !tbaa !167
  %i.bv = load i8, ptr %.epil.init, align 1, !tbaa !55
  %.not47.epil = icmp eq i8 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13759.epil.init
  %i.bx = or i8 %i.bw, %.13958.epil.init
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %.preheader
  %.139.lcssa = phi i8 [ 0, %.preheader ], [ %i.bs, %._crit_edge62.loopexit.unr-lcssa ], [ %i.bx, %.epil.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge56, %._crit_edge62, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.n, align 2, !tbaa !273
  %.not46 = icmp eq i16 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !177
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.r, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.x, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ag, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !271, !nonnull !116, !align !261 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !177 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !177
  %i.ae = load <8 x i16>, ptr %.promoted53, align 2, !tbaa !273
  %i.af = icmp ne <8 x i16> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.14156, align 1, !tbaa !55
  %i.ah = icmp samesign ugt i64 %.in, 1
  br i1 %i.ah, label %.preheader48, label %._crit_edge57, !llvm.loop !275

._crit_edge57:                                    ; preds = %.preheader48, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ag, %.preheader48 ]
  %i.ai = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.ai, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !271, !nonnull !116, !align !261 ; 2 uses
  %.promoted65 = load ptr, ptr %i.al, align 8, !tbaa !177 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.ai, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.an = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bd, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13959 = phi i8 [ 0, %.lr.ph62.new ], [ %i.bg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !273
  %.not47 = icmp eq i16 %i.ap, 0
  %i.aq = select i1 %.not47, i8 0, i8 %.13760
  %i.ar = or i8 %i.aq, %.13959
  %i.as = shl nuw i8 %.13760, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.au = load i16, ptr %i.ao, align 2, !tbaa !273
  %.not47.1 = icmp eq i16 %i.au, 0
  %i.av = select i1 %.not47.1, i8 0, i8 %i.as
  %i.aw = or i8 %i.av, %i.ar
  %i.ax = shl nuw i8 %.13760, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.az = load i16, ptr %i.at, align 2, !tbaa !273
  %.not47.2 = icmp eq i16 %i.az, 0
  %i.ba = select i1 %.not47.2, i8 0, i8 %i.ax
  %i.bb = or i8 %i.ba, %i.aw
  %i.bc = shl nuw i8 %.13760, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.be = load i16, ptr %i.ay, align 2, !tbaa !273
  %.not47.3 = icmp eq i16 %i.be, 0
  %i.bf = select i1 %.not47.3, i8 0, i8 %i.bc
  %i.bg = or i8 %i.bf, %i.bb                      ; 3 uses
  %i.bh = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !276

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bd, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bh, %._crit_edge63.unr-lcssa ]
  %.13959.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.bg, %._crit_edge63.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bi = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 2 uses
  %.13959.epil = phi i8 [ %.13959.epil.init, %.epil.preheader ], [ %i.bm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !273
  %.not47.epil = icmp eq i16 %i.bk, 0
  %i.bl = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bm = or i8 %i.bl, %.13959.epil               ; 2 uses
  %i.bn = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !277

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.bg, %._crit_edge63.unr-lcssa ], [ %i.bm, %bb.h ]
  %i.bo = shl nuw nsw i64 %i.ai, 1
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bo
  store ptr %scevgep, ptr %i.al, align 8, !tbaa !177
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !188
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.n, align 2, !tbaa !273
  %.not46 = icmp eq i16 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !281

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.r, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.x, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ag, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !279, !nonnull !116, !align !261 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !188 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !188
  %i.ae = load <8 x i16>, ptr %.promoted53, align 2, !tbaa !273
  %i.af = icmp ne <8 x i16> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.14156, align 1, !tbaa !55
  %i.ah = icmp samesign ugt i64 %.in, 1
  br i1 %i.ah, label %.preheader48, label %._crit_edge57, !llvm.loop !282

._crit_edge57:                                    ; preds = %.preheader48, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ag, %.preheader48 ]
  %i.ai = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.ai, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !279, !nonnull !116, !align !261 ; 2 uses
  %.promoted65 = load ptr, ptr %i.al, align 8, !tbaa !188 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.ai, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.an = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bd, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13959 = phi i8 [ 0, %.lr.ph62.new ], [ %i.bg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !273
  %.not47 = icmp eq i16 %i.ap, 0
  %i.aq = select i1 %.not47, i8 0, i8 %.13760
  %i.ar = or i8 %i.aq, %.13959
  %i.as = shl nuw i8 %.13760, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.au = load i16, ptr %i.ao, align 2, !tbaa !273
  %.not47.1 = icmp eq i16 %i.au, 0
  %i.av = select i1 %.not47.1, i8 0, i8 %i.as
  %i.aw = or i8 %i.av, %i.ar
  %i.ax = shl nuw i8 %.13760, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.az = load i16, ptr %i.at, align 2, !tbaa !273
  %.not47.2 = icmp eq i16 %i.az, 0
  %i.ba = select i1 %.not47.2, i8 0, i8 %i.ax
  %i.bb = or i8 %i.ba, %i.aw
  %i.bc = shl nuw i8 %.13760, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.be = load i16, ptr %i.ay, align 2, !tbaa !273
  %.not47.3 = icmp eq i16 %i.be, 0
  %i.bf = select i1 %.not47.3, i8 0, i8 %i.bc
  %i.bg = or i8 %i.bf, %i.bb                      ; 3 uses
  %i.bh = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !283

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bd, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bh, %._crit_edge63.unr-lcssa ]
  %.13959.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.bg, %._crit_edge63.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bi = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 2 uses
  %.13959.epil = phi i8 [ %.13959.epil.init, %.epil.preheader ], [ %i.bm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !273
  %.not47.epil = icmp eq i16 %i.bk, 0
  %i.bl = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bm = or i8 %i.bl, %.13959.epil               ; 2 uses
  %i.bn = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !284

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.bg, %._crit_edge63.unr-lcssa ], [ %i.bm, %bb.h ]
  %i.bo = shl nuw nsw i64 %i.ai, 1
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bo
  store ptr %scevgep, ptr %i.al, align 8, !tbaa !188
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !285, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %.not46 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !287

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.r, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.x, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ag, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !285, !nonnull !116, !align !261 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !198 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !198
  %i.ae = load <8 x i32>, ptr %.promoted53, align 4, !tbaa !3
  %i.af = icmp ne <8 x i32> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.14156, align 1, !tbaa !55
  %i.ah = icmp samesign ugt i64 %.in, 1
  br i1 %i.ah, label %.preheader48, label %._crit_edge57, !llvm.loop !288

._crit_edge57:                                    ; preds = %.preheader48, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ag, %.preheader48 ]
  %i.ai = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.ai, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !285, !nonnull !116, !align !261 ; 2 uses
  %.promoted65 = load ptr, ptr %i.al, align 8, !tbaa !198 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.ai, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.an = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bd, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13959 = phi i8 [ 0, %.lr.ph62.new ], [ %i.bg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %.not47 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not47, i8 0, i8 %.13760
  %i.ar = or i8 %i.aq, %.13959
  %i.as = shl nuw i8 %.13760, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !3
  %.not47.1 = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not47.1, i8 0, i8 %i.as
  %i.aw = or i8 %i.av, %i.ar
  %i.ax = shl nuw i8 %.13760, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.az = load i32, ptr %i.at, align 4, !tbaa !3
  %.not47.2 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not47.2, i8 0, i8 %i.ax
  %i.bb = or i8 %i.ba, %i.aw
  %i.bc = shl nuw i8 %.13760, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !3
  %.not47.3 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not47.3, i8 0, i8 %i.bc
  %i.bg = or i8 %i.bf, %i.bb                      ; 3 uses
  %i.bh = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !289

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bd, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bh, %._crit_edge63.unr-lcssa ]
  %.13959.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.bg, %._crit_edge63.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bi = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 2 uses
  %.13959.epil = phi i8 [ %.13959.epil.init, %.epil.preheader ], [ %i.bm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  %.not47.epil = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bm = or i8 %i.bl, %.13959.epil               ; 2 uses
  %i.bn = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !290

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.bg, %._crit_edge63.unr-lcssa ], [ %i.bm, %bb.h ]
  %i.bo = shl nuw nsw i64 %i.ai, 2
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bo
  store ptr %scevgep, ptr %i.al, align 8, !tbaa !198
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !291, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !209
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %.not46 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !293

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !209
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.r, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.x, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ag, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !291, !nonnull !116, !align !261 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !209 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !209
  %i.ae = load <8 x i32>, ptr %.promoted53, align 4, !tbaa !3
  %i.af = icmp ne <8 x i32> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.14156, align 1, !tbaa !55
  %i.ah = icmp samesign ugt i64 %.in, 1
  br i1 %i.ah, label %.preheader48, label %._crit_edge57, !llvm.loop !294

._crit_edge57:                                    ; preds = %.preheader48, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ag, %.preheader48 ]
  %i.ai = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.ai, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !291, !nonnull !116, !align !261 ; 2 uses
  %.promoted65 = load ptr, ptr %i.al, align 8, !tbaa !209 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.ai, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.an = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bd, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13959 = phi i8 [ 0, %.lr.ph62.new ], [ %i.bg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %.not47 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not47, i8 0, i8 %.13760
  %i.ar = or i8 %i.aq, %.13959
  %i.as = shl nuw i8 %.13760, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !3
  %.not47.1 = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not47.1, i8 0, i8 %i.as
  %i.aw = or i8 %i.av, %i.ar
  %i.ax = shl nuw i8 %.13760, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.az = load i32, ptr %i.at, align 4, !tbaa !3
  %.not47.2 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not47.2, i8 0, i8 %i.ax
  %i.bb = or i8 %i.ba, %i.aw
  %i.bc = shl nuw i8 %.13760, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !3
  %.not47.3 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not47.3, i8 0, i8 %i.bc
  %i.bg = or i8 %i.bf, %i.bb                      ; 3 uses
  %i.bh = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !295

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bd, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bh, %._crit_edge63.unr-lcssa ]
  %.13959.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.bg, %._crit_edge63.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bi = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 2 uses
  %.13959.epil = phi i8 [ %.13959.epil.init, %.epil.preheader ], [ %i.bm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  %.not47.epil = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bm = or i8 %i.bl, %.13959.epil               ; 2 uses
  %i.bn = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !296

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.bg, %._crit_edge63.unr-lcssa ], [ %i.bm, %bb.h ]
  %i.bo = shl nuw nsw i64 %i.ai, 2
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bo
  store ptr %scevgep, ptr %i.al, align 8, !tbaa !209
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !297, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !219
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !299
  %.not46 = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !219
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.r, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.x, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ag, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !297, !nonnull !116, !align !261 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !219 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !219
  %i.ae = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !299
  %i.af = icmp ne <8 x i64> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.14156, align 1, !tbaa !55
  %i.ah = icmp samesign ugt i64 %.in, 1
  br i1 %i.ah, label %.preheader48, label %._crit_edge57, !llvm.loop !301

._crit_edge57:                                    ; preds = %.preheader48, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ag, %.preheader48 ]
  %i.ai = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.ai, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !297, !nonnull !116, !align !261 ; 2 uses
  %.promoted65 = load ptr, ptr %i.al, align 8, !tbaa !219 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.ai, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.an = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bd, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13959 = phi i8 [ 0, %.lr.ph62.new ], [ %i.bg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !299
  %.not47 = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not47, i8 0, i8 %.13760
  %i.ar = or i8 %i.aq, %.13959
  %i.as = shl nuw i8 %.13760, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !299
  %.not47.1 = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not47.1, i8 0, i8 %i.as
  %i.aw = or i8 %i.av, %i.ar
  %i.ax = shl nuw i8 %.13760, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.az = load i64, ptr %i.at, align 8, !tbaa !299
  %.not47.2 = icmp eq i64 %i.az, 0
  %i.ba = select i1 %.not47.2, i8 0, i8 %i.ax
  %i.bb = or i8 %i.ba, %i.aw
  %i.bc = shl nuw i8 %.13760, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !299
  %.not47.3 = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not47.3, i8 0, i8 %i.bc
  %i.bg = or i8 %i.bf, %i.bb                      ; 3 uses
  %i.bh = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !302

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bd, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bh, %._crit_edge63.unr-lcssa ]
  %.13959.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.bg, %._crit_edge63.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bi = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 2 uses
  %.13959.epil = phi i8 [ %.13959.epil.init, %.epil.preheader ], [ %i.bm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !299
  %.not47.epil = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bm = or i8 %i.bl, %.13959.epil               ; 2 uses
  %i.bn = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !303

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.bg, %._crit_edge63.unr-lcssa ], [ %i.bm, %bb.h ]
  %i.bo = shl nuw nsw i64 %i.ai, 3
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bo
  store ptr %scevgep, ptr %i.al, align 8, !tbaa !219
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !304, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !230
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !299
  %.not46 = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !306

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !230
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.r, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.x, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ag, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !304, !nonnull !116, !align !261 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !230
  %i.ae = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !299
  %i.af = icmp ne <8 x i64> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.14156, align 1, !tbaa !55
  %i.ah = icmp samesign ugt i64 %.in, 1
  br i1 %i.ah, label %.preheader48, label %._crit_edge57, !llvm.loop !307

._crit_edge57:                                    ; preds = %.preheader48, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ag, %.preheader48 ]
  %i.ai = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.ai, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !304, !nonnull !116, !align !261 ; 2 uses
  %.promoted65 = load ptr, ptr %i.al, align 8, !tbaa !230 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.ai, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.an = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bd, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13959 = phi i8 [ 0, %.lr.ph62.new ], [ %i.bg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !299
  %.not47 = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not47, i8 0, i8 %.13760
  %i.ar = or i8 %i.aq, %.13959
  %i.as = shl nuw i8 %.13760, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !299
  %.not47.1 = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not47.1, i8 0, i8 %i.as
  %i.aw = or i8 %i.av, %i.ar
  %i.ax = shl nuw i8 %.13760, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.az = load i64, ptr %i.at, align 8, !tbaa !299
  %.not47.2 = icmp eq i64 %i.az, 0
  %i.ba = select i1 %.not47.2, i8 0, i8 %i.ax
  %i.bb = or i8 %i.ba, %i.aw
  %i.bc = shl nuw i8 %.13760, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !299
  %.not47.3 = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not47.3, i8 0, i8 %i.bc
  %i.bg = or i8 %i.bf, %i.bb                      ; 3 uses
  %i.bh = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !308

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bd, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bh, %._crit_edge63.unr-lcssa ]
  %.13959.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.bg, %._crit_edge63.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bi = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 2 uses
  %.13959.epil = phi i8 [ %.13959.epil.init, %.epil.preheader ], [ %i.bm, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !299
  %.not47.epil = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bm = or i8 %i.bl, %.13959.epil               ; 2 uses
  %i.bn = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !309

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.bg, %._crit_edge63.unr-lcssa ], [ %i.bm, %bb.h ]
  %i.bo = shl nuw nsw i64 %i.ai, 3
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bo
  store ptr %scevgep, ptr %i.al, align 8, !tbaa !230
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !310, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !240
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03549 = phi i64 [ %2, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %.03648 = phi i8 [ %i.k, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03847 = phi i8 [ %i.h, %.lr.ph ], [ %i.s, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !312
  %i.q = fcmp une float %i.p, 0.000000e+00
  %i.r = select i1 %i.q, i8 %.03648, i8 0
  %i.s = or i8 %i.r, %.03847                      ; 2 uses
  %i.t = shl i8 %.03648, 1                        ; 2 uses
  %i.u = add nsw i64 %.03549, -1                  ; 2 uses
  %i.v = icmp ne i8 %i.t, 0
  %i.w = icmp samesign ugt i64 %.03549, 1
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %bb.d, label %._crit_edge, !llvm.loop !314

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !240
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.s, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.u, %._crit_edge ], [ %2, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.y, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.z = icmp sgt i64 %.1, 7
  br i1 %i.z, label %.preheader46.lr.ph, label %._crit_edge55

.preheader46.lr.ph:                               ; preds = %bb.f
  %i.aa = lshr i64 %.1, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %.preheader46
  %.in = phi i64 [ %i.aa, %.preheader46.lr.ph ], [ %i.ae, %.preheader46 ] ; 2 uses
  %.14154 = phi ptr [ %.040, %.preheader46.lr.ph ], [ %i.ah, %.preheader46 ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !310, !nonnull !116, !align !261 ; 2 uses
  %.promoted51 = load ptr, ptr %i.ac, align 8, !tbaa !240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted51, i64 32
  %i.ae = add nsw i64 %.in, -1
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !240
  %i.af = load <8 x float>, ptr %.promoted51, align 4, !tbaa !312
  %i.ag = fcmp une <8 x float> %i.af, zeroinitializer
  %i.ah = getelementptr inbounds nuw i8, ptr %.14154, i64 1 ; 2 uses
  store <8 x i1> %i.ag, ptr %.14154, align 1, !tbaa !55
  %i.ai = icmp samesign ugt i64 %.in, 1
  br i1 %i.ai, label %.preheader46, label %._crit_edge55, !llvm.loop !315

._crit_edge55:                                    ; preds = %.preheader46, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ah, %.preheader46 ]
  %i.aj = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.aj, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph60, label %bb.i

.lr.ph60:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !310, !nonnull !116, !align !261 ; 2 uses
  %.promoted63 = load ptr, ptr %i.am, align 8, !tbaa !240 ; 3 uses
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.aj, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.aj, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %i.ao = phi ptr [ %.promoted63, %.lr.ph60.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.bm, %bb.g ] ; 5 uses
  %.13957 = phi i8 [ 0, %.lr.ph60.new ], [ %i.bl, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !312
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, i8 %.13758, i8 0
  %i.at = or i8 %i.as, %.13957
  %i.au = shl nuw i8 %.13758, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load float, ptr %i.ap, align 4, !tbaa !312
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  %i.ay = select i1 %i.ax, i8 %i.au, i8 0
  %i.az = or i8 %i.ay, %i.at
  %i.ba = shl nuw i8 %.13758, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bc = load float, ptr %i.av, align 4, !tbaa !312
  %i.bd = fcmp une float %i.bc, 0.000000e+00
  %i.be = select i1 %i.bd, i8 %i.ba, i8 0
  %i.bf = or i8 %i.be, %i.az
  %i.bg = shl nuw i8 %.13758, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bi = load float, ptr %i.bb, align 4, !tbaa !312
  %i.bj = fcmp une float %i.bi, 0.000000e+00
  %i.bk = select i1 %i.bj, i8 %i.bg, i8 0
  %i.bl = or i8 %i.bk, %i.bf                      ; 3 uses
  %i.bm = shl nuw i8 %.13758, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge61.unr-lcssa, label %bb.g, !llvm.loop !316

._crit_edge61.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.unr-lcssa, %.lr.ph60
  %.epil.init = phi ptr [ %.promoted63, %.lr.ph60 ], [ %i.bh, %._crit_edge61.unr-lcssa ]
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.bm, %._crit_edge61.unr-lcssa ]
  %.13957.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.bl, %._crit_edge61.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bn = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bo, %bb.h ] ; 2 uses
  %.13758.epil = phi i8 [ %.13758.epil.init, %.epil.preheader ], [ %i.bt, %bb.h ] ; 2 uses
  %.13957.epil = phi i8 [ %.13957.epil.init, %.epil.preheader ], [ %i.bs, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load float, ptr %i.bn, align 4, !tbaa !312
  %i.bq = fcmp une float %i.bp, 0.000000e+00
  %i.br = select i1 %i.bq, i8 %.13758.epil, i8 0
  %i.bs = or i8 %i.br, %.13957.epil               ; 2 uses
  %i.bt = shl nuw i8 %.13758.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.h, !llvm.loop !317

._crit_edge61:                                    ; preds = %bb.h, %._crit_edge61.unr-lcssa
  %.lcssa = phi i8 [ %i.bl, %._crit_edge61.unr-lcssa ], [ %i.bs, %bb.h ]
  %i.bu = shl nuw nsw i64 %i.aj, 2
  %scevgep = getelementptr i8, ptr %.promoted63, i64 %i.bu
  store ptr %scevgep, ptr %i.am, align 8, !tbaa !240
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge61 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !318, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !251
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03549 = phi i64 [ %2, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %.03648 = phi i8 [ %i.k, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03847 = phi i8 [ %i.h, %.lr.ph ], [ %i.s, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !320
  %i.q = fcmp une double %i.p, 0.000000e+00
  %i.r = select i1 %i.q, i8 %.03648, i8 0
  %i.s = or i8 %i.r, %.03847                      ; 2 uses
  %i.t = shl i8 %.03648, 1                        ; 2 uses
  %i.u = add nsw i64 %.03549, -1                  ; 2 uses
  %i.v = icmp ne i8 %i.t, 0
  %i.w = icmp samesign ugt i64 %.03549, 1
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %bb.d, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !251
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.038.lcssa = phi i8 [ %i.s, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.u, %._crit_edge ], [ %2, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.040 = phi ptr [ %i.y, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 3 uses
  %i.z = icmp sgt i64 %.1, 7
  br i1 %i.z, label %.preheader46.lr.ph, label %._crit_edge55

.preheader46.lr.ph:                               ; preds = %bb.f
  %i.aa = lshr i64 %.1, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %.preheader46
  %.in = phi i64 [ %i.aa, %.preheader46.lr.ph ], [ %i.ae, %.preheader46 ] ; 2 uses
  %.14154 = phi ptr [ %.040, %.preheader46.lr.ph ], [ %i.ah, %.preheader46 ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !318, !nonnull !116, !align !261 ; 2 uses
  %.promoted51 = load ptr, ptr %i.ac, align 8, !tbaa !251 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted51, i64 64
  %i.ae = add nsw i64 %.in, -1
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !251
  %i.af = load <8 x double>, ptr %.promoted51, align 8, !tbaa !320
  %i.ag = fcmp une <8 x double> %i.af, zeroinitializer
  %i.ah = getelementptr inbounds nuw i8, ptr %.14154, i64 1 ; 2 uses
  store <8 x i1> %i.ag, ptr %.14154, align 1, !tbaa !55
  %i.ai = icmp samesign ugt i64 %.in, 1
  br i1 %i.ai, label %.preheader46, label %._crit_edge55, !llvm.loop !323

._crit_edge55:                                    ; preds = %.preheader46, %bb.f
  %.141.lcssa = phi ptr [ %.040, %bb.f ], [ %i.ah, %.preheader46 ]
  %i.aj = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.aj, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph60, label %bb.i

.lr.ph60:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !318, !nonnull !116, !align !261 ; 2 uses
  %.promoted63 = load ptr, ptr %i.am, align 8, !tbaa !251 ; 3 uses
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.aj, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.aj, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %i.ao = phi ptr [ %.promoted63, %.lr.ph60.new ], [ %i.bh, %bb.g ] ; 5 uses
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.bm, %bb.g ] ; 5 uses
  %.13957 = phi i8 [ 0, %.lr.ph60.new ], [ %i.bl, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !320
  %i.ar = fcmp une double %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, i8 %.13758, i8 0
  %i.at = or i8 %i.as, %.13957
  %i.au = shl nuw i8 %.13758, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load double, ptr %i.ap, align 8, !tbaa !320
  %i.ax = fcmp une double %i.aw, 0.000000e+00
  %i.ay = select i1 %i.ax, i8 %i.au, i8 0
  %i.az = or i8 %i.ay, %i.at
  %i.ba = shl nuw i8 %.13758, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bc = load double, ptr %i.av, align 8, !tbaa !320
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  %i.be = select i1 %i.bd, i8 %i.ba, i8 0
  %i.bf = or i8 %i.be, %i.az
  %i.bg = shl nuw i8 %.13758, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.bi = load double, ptr %i.bb, align 8, !tbaa !320
  %i.bj = fcmp une double %i.bi, 0.000000e+00
  %i.bk = select i1 %i.bj, i8 %i.bg, i8 0
  %i.bl = or i8 %i.bk, %i.bf                      ; 3 uses
  %i.bm = shl nuw i8 %.13758, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge61.unr-lcssa, label %bb.g, !llvm.loop !324

._crit_edge61.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.unr-lcssa, %.lr.ph60
  %.epil.init = phi ptr [ %.promoted63, %.lr.ph60 ], [ %i.bh, %._crit_edge61.unr-lcssa ]
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.bm, %._crit_edge61.unr-lcssa ]
  %.13957.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.bl, %._crit_edge61.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bn = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bo, %bb.h ] ; 2 uses
  %.13758.epil = phi i8 [ %.13758.epil.init, %.epil.preheader ], [ %i.bt, %bb.h ] ; 2 uses
  %.13957.epil = phi i8 [ %.13957.epil.init, %.epil.preheader ], [ %i.bs, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !320
  %i.bq = fcmp une double %i.bp, 0.000000e+00
  %i.br = select i1 %i.bq, i8 %.13758.epil, i8 0
  %i.bs = or i8 %i.br, %.13957.epil               ; 2 uses
  %i.bt = shl nuw i8 %.13758.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.h, !llvm.loop !325

._crit_edge61:                                    ; preds = %bb.h, %._crit_edge61.unr-lcssa
  %.lcssa = phi i8 [ %i.bl, %._crit_edge61.unr-lcssa ], [ %i.bs, %bb.h ]
  %i.bu = shl nuw nsw i64 %i.aj, 3
  %scevgep = getelementptr i8, ptr %.promoted63, i64 %i.bu
  store ptr %scevgep, ptr %i.am, align 8, !tbaa !251
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %.preheader
  %.139.lcssa = phi i8 [ %.lcssa, %._crit_edge61 ], [ 0, %.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !326
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !326
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329, !noalias !326, !nonnull !116, !align !261
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #20, !noalias !326
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !326 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !326
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !326
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !339    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !339    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !55
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !340
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !340
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !66
end_hunk_0
