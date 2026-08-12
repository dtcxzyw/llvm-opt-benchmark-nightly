inline.NumInlined: 763
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv:bb.a
  %i.pb = icmp samesign ult i64 %indvars.iv.next.i.i50.6, %i.ka
  tail call void @llvm.assume(i1 %i.pb)
  %i.pc = mul nuw nsw i64 %indvars.iv.next.i.i50.6, %i.kb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.pc
  %i.pe = mul nuw nsw i64 %indvars.iv.next.i.i50.6, %i.jz ; 2 uses
  %i.pf = add nuw nsw i64 %i.pe, %i.jy
  %i.pg = icmp samesign ule i64 %i.pf, %i.iz
  tail call void @llvm.assume(i1 %i.pg)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.pe
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !111
  store i8 %i.pi, ptr %i.pd, align 1, !tbaa !111
  %indvars.iv.next.i.i50.7 = add nuw nsw i64 %indvars.iv.i.i49, 8 ; 2 uses
  %.not.i.i51.7 = icmp eq i64 %indvars.iv.next.i.i50.7, %i.ka
  br i1 %.not.i.i51.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48, !llvm.loop !250

bb.aa:                                            ; preds = %bb.u
  tail call void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerLSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader: ; preds = %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i
  %indvars.iv46.i.i.epil.init = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i ], [ %indvars.iv.next47.i.i.7, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod202 = icmp ne i64 %xtraiter199, 0
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader
  %indvars.iv46.i.i.epil = phi i64 [ %indvars.iv46.i.i.epil.init, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader ], [ %indvars.iv.next47.i.i.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil ] ; 4 uses
  %epil.iter200 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader ], [ %epil.iter200.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil ]
  %i.pj = icmp samesign ult i64 %indvars.iv46.i.i.epil, %i.db
  tail call void @llvm.assume(i1 %i.pj)
  %i.pk = mul nuw nsw i64 %indvars.iv46.i.i.epil, %i.dc
  %i.pl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.pk
  %i.pm = mul nuw nsw i64 %indvars.iv46.i.i.epil, %i.dd ; 2 uses
  %i.pn = add nuw nsw i64 %i.pm, %i.ca
  %i.po = icmp samesign ule i64 %i.pn, %i.bb
  tail call void @llvm.assume(i1 %i.po)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.pm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pl, ptr nonnull align 1 %i.pp, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.epil = add nuw nsw i64 %indvars.iv46.i.i.epil, 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, !llvm.loop !251

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit191.unr-lcssa: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader: ; preds = %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit191.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52
  %indvars.iv46.i.i54.epil.init = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52 ], [ %indvars.iv.next47.i.i55.7, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit191.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter193, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader
  %indvars.iv46.i.i54.epil = phi i64 [ %indvars.iv46.i.i54.epil.init, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader ], [ %indvars.iv.next47.i.i55.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader ], [ %epil.iter.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil ]
  %i.pq = icmp samesign ult i64 %indvars.iv46.i.i54.epil, %i.kz
  tail call void @llvm.assume(i1 %i.pq)
  %i.pr = mul nuw nsw i64 %indvars.iv46.i.i54.epil, %i.la
  %i.ps = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.pr
  %i.pt = mul nuw nsw i64 %indvars.iv46.i.i54.epil, %i.lb ; 2 uses
  %i.pu = add nuw nsw i64 %i.pt, %i.jy
  %i.pv = icmp samesign ule i64 %i.pu, %i.iz
  tail call void @llvm.assume(i1 %i.pv)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.pt
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ps, ptr nonnull align 1 %i.pw, i64 %i.jy, i1 false)
  %indvars.iv.next47.i.i55.epil = add nuw nsw i64 %indvars.iv46.i.i54.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter193
  br i1 %epil.iter.cmp.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, !llvm.loop !252

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit:  ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit191.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, %middle.block, %vec.epilog.middle.block, %middle.block163, %vec.epilog.middle.block187, %bb.z, %bb.y, %bb.g, %bb.f, %bb.r, %bb.t, %bb.aa, %bb.s, %bb.p, %bb.n, %bb.l, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !253
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !253 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !253
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !253
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !253
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !259
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted36.us = load i32, ptr %i.ad, align 8
  %i.ap = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, 3
  call void @llvm.assume(i1 %i.aq)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, 8
  %i.as = icmp samesign ult i64 %indvars.iv, %i.an
  %i.at = mul nuw nsw i64 %indvars.iv, %i.ao
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %.01537.us = phi i32 [ 0, %.preheader.us ], [ %i.cr, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.av = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.bu, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.aw = phi i32 [ %.promoted36.us, %.preheader.us ], [ %i.bp, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.ax = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 16
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.aw, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ap
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.aw, %i.ar
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aw) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or disjoint i32 %i.av, 32
  %i.bl = sub nuw nsw i32 32, %i.av
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bj, %i.bm
  %i.bo = or i64 %i.bn, %.promoted8.i.i.i.us
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !259
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bp = phi i32 [ %i.aw, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bq = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.br = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bs = lshr i64 %i.bq, 48
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %i.bu = add nsw i32 %i.br, -16                  ; 2 uses
  store i32 %i.bu, ptr %i.ab, align 8, !tbaa !258
  %i.bv = shl i64 %i.bq, 16
  store i64 %i.bv, ptr %3, align 8, !tbaa !256
  %i.bw = lshr i32 %i.bt, 10
  %i.bx = and i32 %i.bw, 31                       ; 3 uses
  %i.by = and i32 %i.bt, 1023                     ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, 13               ; 4 uses
  %i.ca = icmp eq i32 %i.bx, 31
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cb = add nuw nsw i32 %i.bx, 112
  %i.cc = icmp eq i32 %i.bx, 0
  br i1 %i.cc, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp eq i32 %i.by, 0
  br i1 %i.cd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.ce = sub nuw nsw i32 121, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cf = shl i32 %i.bz, %.lr.ph.tripcount.i.us
  %i.cg = and i32 %i.cf, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.cb, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.ce, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bz, %bb.h ], [ %i.bz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cg, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ch = shl nuw i32 %i.bt, 16
  %i.ci = and i32 %i.ch, -2147483648
  %i.cj = shl nuw nsw i32 %.116.i.us, 23
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = or i32 %i.ck, %.1.i.us
  %i.cm = load i32, ptr %i.ak, align 8, !tbaa !235
  %i.cn = add nsw i32 %i.cm, %.01537.us           ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, %i.i
  call void @llvm.assume(i1 %i.co)
  call void @llvm.assume(i1 %i.as)
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cp
  store i32 %i.cl, ptr %i.cq, align 4, !tbaa !263
  %i.cr = add nuw nsw i32 %.01537.us, 1           ; 2 uses
  %exitcond41.not = icmp eq i32 %i.cr, %i.ah
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !265

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.cs = load i32, ptr %i.al, align 4, !tbaa !216
  %i.ct = shl nsw i32 %i.cs, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ct)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cv = icmp sgt i32 %1, %i.cu
  br i1 %i.cv, label %.preheader.us, label %._crit_edge39, !llvm.loop !266

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.038 = phi i32 [ %i.cy, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cw = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cx = shl nsw i32 %i.cw, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cx)
  %i.cy = add i32 %.038, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %1
  br i1 %exitcond.not, label %._crit_edge39, label %.preheader, !llvm.loop !266

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

._crit_edge39:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerLSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !267
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !267 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !267
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !267
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !267
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !270
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted36.us = load i32, ptr %i.ad, align 8
  %i.ap = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, 3
  call void @llvm.assume(i1 %i.aq)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, 8
  %i.as = icmp samesign ult i64 %indvars.iv, %i.an
  %i.at = mul nuw nsw i64 %indvars.iv, %i.ao
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %.01537.us = phi i32 [ 0, %.preheader.us ], [ %i.co, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.av = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.bs, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.aw = phi i32 [ %.promoted36.us, %.preheader.us ], [ %i.bn, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.ax = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 16
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.aw, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ap
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.aw, %i.ar
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aw) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bj = or disjoint i32 %i.av, 32
  %i.bk = zext nneg i32 %i.av to i64
  %i.bl = shl nuw nsw i64 %i.bi, %i.bk
  %i.bm = or i64 %.promoted8.i.i.i.us, %i.bl
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !270
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bn = phi i32 [ %i.aw, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bo = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bp = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bq = trunc i64 %i.bo to i32                  ; 3 uses
  %i.br = lshr i64 %i.bo, 16
  store i64 %i.br, ptr %3, align 8, !tbaa !256
  %i.bs = add nsw i32 %i.bp, -16                  ; 2 uses
  store i32 %i.bs, ptr %i.ab, align 8, !tbaa !258
  %i.bt = lshr i32 %i.bq, 10
  %i.bu = and i32 %i.bt, 31                       ; 3 uses
  %i.bv = and i32 %i.bq, 1023                     ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 13               ; 4 uses
  %i.bx = icmp eq i32 %i.bu, 31
  br i1 %i.bx, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.by = add nuw nsw i32 %i.bu, 112
  %i.bz = icmp eq i32 %i.bu, 0
  br i1 %i.bz, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp eq i32 %i.bv, 0
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true) ; 2 uses
  %i.cb = sub nuw nsw i32 121, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cc = shl i32 %i.bw, %.lr.ph.tripcount.i.us
  %i.cd = and i32 %i.cc, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.by, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cb, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bw, %bb.h ], [ %i.bw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cd, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ce = shl i32 %i.bq, 16
  %i.cf = and i32 %i.ce, -2147483648
  %i.cg = shl nuw nsw i32 %.116.i.us, 23
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = or i32 %i.ch, %.1.i.us
  %i.cj = load i32, ptr %i.ak, align 8, !tbaa !235
  %i.ck = add nsw i32 %i.cj, %.01537.us           ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ck, %i.i
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.as)
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cm
  store i32 %i.ci, ptr %i.cn, align 4, !tbaa !263
  %i.co = add nuw nsw i32 %.01537.us, 1           ; 2 uses
  %exitcond41.not = icmp eq i32 %i.co, %i.ah
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !272

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.cp = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cq = shl nsw i32 %i.cp, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = icmp sgt i32 %1, %i.cr
  br i1 %i.cs, label %.preheader.us, label %._crit_edge39, !llvm.loop !273

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.038 = phi i32 [ %i.cv, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ct = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cu = shl nsw i32 %i.ct, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cu)
  %i.cv = add i32 %.038, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %1
  br i1 %exitcond.not, label %._crit_edge39, label %.preheader, !llvm.loop !273

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

._crit_edge39:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !274
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !274 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !274
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !274
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !274
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !259
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted36.us = load i32, ptr %i.ad, align 8
  %i.ap = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, 3
  call void @llvm.assume(i1 %i.aq)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, 8
  %i.as = icmp samesign ult i64 %indvars.iv, %i.an
  %i.at = mul nuw nsw i64 %indvars.iv, %i.ao
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %.01537.us = phi i32 [ 0, %.preheader.us ], [ %i.cr, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.av = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.bu, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.aw = phi i32 [ %.promoted36.us, %.preheader.us ], [ %i.bp, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.ax = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 24
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.aw, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ap
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.aw, %i.ar
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aw) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or disjoint i32 %i.av, 32
  %i.bl = sub nuw nsw i32 32, %i.av
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bj, %i.bm
  %i.bo = or i64 %i.bn, %.promoted8.i.i.i.us
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !259
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bp = phi i32 [ %i.aw, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bq = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.br = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bs = lshr i64 %i.bq, 40
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %i.bu = add nsw i32 %i.br, -24                  ; 2 uses
  store i32 %i.bu, ptr %i.ab, align 8, !tbaa !258
  %i.bv = shl i64 %i.bq, 24
  store i64 %i.bv, ptr %3, align 8, !tbaa !256
  %i.bw = lshr i32 %i.bt, 16
  %i.bx = and i32 %i.bw, 127                      ; 3 uses
  %i.by = and i32 %i.bt, 65535                    ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, 7                ; 4 uses
  %i.ca = icmp eq i32 %i.bx, 127
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cb = add nuw nsw i32 %i.bx, 64
  %i.cc = icmp eq i32 %i.bx, 0
  br i1 %i.cc, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp eq i32 %i.by, 0
  br i1 %i.cd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.ce = sub nuw nsw i32 73, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cf = shl i32 %i.bz, %.lr.ph.tripcount.i.us
  %i.cg = and i32 %i.cf, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.cb, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.ce, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bz, %bb.h ], [ %i.bz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cg, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ch = shl nuw i32 %i.bt, 8
  %i.ci = and i32 %i.ch, -2147483648
  %i.cj = shl nuw nsw i32 %.116.i.us, 23
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = or i32 %i.ck, %.1.i.us
  %i.cm = load i32, ptr %i.ak, align 8, !tbaa !235
  %i.cn = add nsw i32 %i.cm, %.01537.us           ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, %i.i
  call void @llvm.assume(i1 %i.co)
  call void @llvm.assume(i1 %i.as)
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cp
  store i32 %i.cl, ptr %i.cq, align 4, !tbaa !263
  %i.cr = add nuw nsw i32 %.01537.us, 1           ; 2 uses
  %exitcond41.not = icmp eq i32 %i.cr, %i.ah
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !277

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %i.cs = load i32, ptr %i.al, align 4, !tbaa !216
  %i.ct = shl nsw i32 %i.cs, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ct)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cv = icmp sgt i32 %1, %i.cu
  br i1 %i.cv, label %.preheader.us, label %._crit_edge39, !llvm.loop !278

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.038 = phi i32 [ %i.cy, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cw = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cx = shl nsw i32 %i.cw, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cx)
  %i.cy = add i32 %.038, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %1
  br i1 %exitcond.not, label %._crit_edge39, label %.preheader, !llvm.loop !278

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

._crit_edge39:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerLSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !279
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !279 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !279
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !279
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !279
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !270
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted36.us = load i32, ptr %i.ad, align 8
  %i.ap = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, 3
  call void @llvm.assume(i1 %i.aq)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, 8
  %i.as = icmp samesign ult i64 %indvars.iv, %i.an
  %i.at = mul nuw nsw i64 %indvars.iv, %i.ao
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %.01537.us = phi i32 [ 0, %.preheader.us ], [ %i.co, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.av = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.bs, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.aw = phi i32 [ %.promoted36.us, %.preheader.us ], [ %i.bn, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %i.ax = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 24
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.aw, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ap
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.aw, %i.ar
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aw) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bj = or disjoint i32 %i.av, 32
  %i.bk = zext nneg i32 %i.av to i64
  %i.bl = shl nuw nsw i64 %i.bi, %i.bk
  %i.bm = or i64 %.promoted8.i.i.i.us, %i.bl
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !270
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bn = phi i32 [ %i.aw, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bo = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bp = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bq = trunc i64 %i.bo to i32                  ; 3 uses
  %i.br = lshr i64 %i.bo, 24
  store i64 %i.br, ptr %3, align 8, !tbaa !256
  %i.bs = add nsw i32 %i.bp, -24                  ; 2 uses
  store i32 %i.bs, ptr %i.ab, align 8, !tbaa !258
  %i.bt = lshr i32 %i.bq, 16
  %i.bu = and i32 %i.bt, 127                      ; 3 uses
  %i.bv = and i32 %i.bq, 65535                    ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 7                ; 4 uses
  %i.bx = icmp eq i32 %i.bu, 127
  br i1 %i.bx, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.by = add nuw nsw i32 %i.bu, 64
  %i.bz = icmp eq i32 %i.bu, 0
  br i1 %i.bz, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp eq i32 %i.bv, 0
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true) ; 2 uses
  %i.cb = sub nuw nsw i32 73, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cc = shl i32 %i.bw, %.lr.ph.tripcount.i.us
  %i.cd = and i32 %i.cc, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.by, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cb, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bw, %bb.h ], [ %i.bw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cd, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ce = shl i32 %i.bq, 8
  %i.cf = and i32 %i.ce, -2147483648
  %i.cg = shl nuw nsw i32 %.116.i.us, 23
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = or i32 %i.ch, %.1.i.us
  %i.cj = load i32, ptr %i.ak, align 8, !tbaa !235
  %i.ck = add nsw i32 %i.cj, %.01537.us           ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ck, %i.i
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.as)
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cm
  store i32 %i.ci, ptr %i.cn, align 4, !tbaa !263
  %i.co = add nuw nsw i32 %.01537.us, 1           ; 2 uses
  %exitcond41.not = icmp eq i32 %i.co, %i.ah
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !282

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %i.cp = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cq = shl nsw i32 %i.cp, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = icmp sgt i32 %1, %i.cr
  br i1 %i.cs, label %.preheader.us, label %._crit_edge39, !llvm.loop !283

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.038 = phi i32 [ %i.cv, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ct = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cu = shl nsw i32 %i.ct, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cu)
  %i.cv = add i32 %.038, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %1
  br i1 %exitcond.not, label %._crit_edge39, label %.preheader, !llvm.loop !283

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

._crit_edge39:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerMSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !284
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !284 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !284
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !284
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !284
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !259
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext nneg i32 %i.i to i64
  %i.an = zext i32 %2 to i64
  %i.ao = zext nneg i32 %i.k to i64
  %i.ap = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ %i.an, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted35.us = load i32, ptr %i.ad, align 8
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !213 ; 6 uses
  %i.ar = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 3
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp ne i32 %i.aq, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %i.aq, 33
  call void @llvm.assume(i1 %i.au)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.av = add nuw nsw i32 %i.ar, 8
  %i.aw = sub nuw nsw i32 64, %i.aq
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = icmp samesign ult i64 %indvars.iv42, %i.ao
  %i.ba = mul nuw nsw i64 %indvars.iv42, %i.ap
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ba
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bc = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.ca, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.bd = phi i32 [ %.promoted35.us, %.preheader.us ], [ %i.bw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.be = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.be)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.aq
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = add nuw nsw i32 %i.bd, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bf, %i.ar
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ugt i32 %i.bd, %i.av
  br i1 %i.bi, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bd) ; 3 uses
  %i.bj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bj)
  %i.bk = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 5
  call void @llvm.assume(i1 %i.bl)
  %i.bm = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bh, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bp = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i32 %i.bc, 32
  %i.bs = sub nuw nsw i32 32, %i.bc
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bq, %i.bt
  %i.bv = or i64 %i.bu, %.promoted8.i.i.i.us
  store i32 %i.bf, ptr %i.ad, align 8, !tbaa !259
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bw = phi i32 [ %i.bd, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bx = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.by = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.br, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bz = lshr i64 %i.bx, %i.ax
  %i.ca = sub nsw i32 %i.by, %i.aq                ; 2 uses
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !258
  %i.cb = shl i64 %i.bx, %i.ay
  store i64 %i.cb, ptr %3, align 8, !tbaa !256
  %i.cc = trunc i64 %i.bz to i16
  %i.cd = icmp samesign ult i64 %indvars.iv, %i.am
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 %i.az)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  store i16 %i.cc, ptr %i.ce, align 2, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !287

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cf = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cg = shl nsw i32 %i.cf, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cg)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next43 to i32
  %i.ci = icmp sgt i32 %1, %i.ch
  br i1 %i.ci, label %.preheader.us, label %._crit_edge38, !llvm.loop !288

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01437 = phi i32 [ %i.cl, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cj = load i32, ptr %i.al, align 4, !tbaa !216
  %i.ck = shl nsw i32 %i.cj, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ck)
  %i.cl = add i32 %.01437, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !288

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB16", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !289
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !289 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !289
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !289
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !289
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !292
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB16EEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge41

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext nneg i32 %i.i to i64
  %i.an = zext i32 %2 to i64
  %i.ao = zext nneg i32 %i.k to i64
  %i.ap = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv45 = phi i64 [ %i.an, %.preheader.us.preheader ], [ %indvars.iv.next46, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted35.us = load i32, ptr %i.ad, align 8
  %.promoted36.us = load i64, ptr %3, align 8
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !213 ; 6 uses
  %i.ar = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 3
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp ne i32 %i.aq, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %i.aq, 33
  call void @llvm.assume(i1 %i.au)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.av = add nuw nsw i32 %i.ar, 8
  %i.aw = sub nuw nsw i32 64, %i.aq
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = icmp samesign ult i64 %indvars.iv45, %i.ao
  %i.ba = mul nuw nsw i64 %indvars.iv45, %i.ap
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ba
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bc = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.cc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.bd = phi i32 [ %.promoted35.us, %.preheader.us ], [ %i.by, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %.promoted8.i.i.i3738.us = phi i64 [ %.promoted36.us, %.preheader.us ], [ %i.cd, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 2 uses
  %i.be = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.be)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.aq
  br i1 %.not.i.i.us, label %bb.d, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = add nuw nsw i32 %i.bd, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bf, %i.ar
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ugt i32 %i.bd, %i.av
  br i1 %i.bi, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bd) ; 3 uses
  %i.bj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bj)
  %i.bk = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 5
  call void @llvm.assume(i1 %i.bl)
  %i.bm = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bh, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.2.0.extract.shift.i.i.i.us = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us, 16
  %.sroa.2.0.extract.trunc.i.i.i.us = zext nneg i32 %.sroa.2.0.extract.shift.i.i.i.us to i64
  %i.bp = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bq = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us, 65535
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nuw nsw i64 48, %i.bp
  %i.bt = shl nuw i64 %i.br, %i.bs
  %indvars.iv.next13.1.i.i.i.us = add nuw nsw i32 %i.bc, 32
  %i.bu = sub nuw nsw i64 32, %i.bp
  %i.bv = shl nuw nsw i64 %.sroa.2.0.extract.trunc.i.i.i.us, %i.bu
  %i.bw = or i64 %i.bt, %i.bv
  %i.bx = or i64 %i.bw, %.promoted8.i.i.i3738.us
  store i32 %i.bf, ptr %i.ad, align 8, !tbaa !292
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %bb.c, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us
  %i.by = phi i32 [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us ], [ %i.bd, %bb.c ]
  %i.bz = phi i64 [ %i.bx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us ], [ %.promoted8.i.i.i3738.us, %bb.c ] ; 2 uses
  %i.ca = phi i32 [ %indvars.iv.next13.1.i.i.i.us, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us ], [ %i.bc, %bb.c ]
  %i.cb = lshr i64 %i.bz, %i.ax
  %i.cc = sub nsw i32 %i.ca, %i.aq                ; 2 uses
  store i32 %i.cc, ptr %i.ab, align 8, !tbaa !258
  %i.cd = shl i64 %i.bz, %i.ay                    ; 2 uses
  store i64 %i.cd, ptr %3, align 8, !tbaa !256
  %i.ce = trunc i64 %i.cb to i16
  %i.cf = icmp samesign ult i64 %indvars.iv, %i.am
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 %i.az)
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  store i16 %i.ce, ptr %i.cg, align 2, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond44.not, label %._crit_edge.us, label %bb.c, !llvm.loop !294

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !216
  %i.ci = shl nsw i32 %i.ch, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ci)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %i.ck = icmp sgt i32 %1, %i.cj
  br i1 %i.ck, label %.preheader.us, label %._crit_edge41, !llvm.loop !295

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01440 = phi i32 [ %i.cn, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cl = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cm = shl nsw i32 %i.cl, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cm)
  %i.cn = add i32 %.01440, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, %1
  br i1 %exitcond.not, label %._crit_edge41, label %.preheader, !llvm.loop !295

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv) #6
  unreachable

._crit_edge41:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB32EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB32", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !296
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !296 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !296
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !296
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !296
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !299
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext nneg i32 %i.i to i64
  %i.an = zext i32 %2 to i64
  %i.ao = zext nneg i32 %i.k to i64
  %i.ap = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ %i.an, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted35.us = load i32, ptr %i.ad, align 8
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !213 ; 6 uses
  %i.ar = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 3
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp ne i32 %i.aq, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %i.aq, 33
  call void @llvm.assume(i1 %i.au)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.av = add nuw nsw i32 %i.ar, 8
  %i.aw = sub nuw nsw i32 64, %i.aq
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = icmp samesign ult i64 %indvars.iv42, %i.ao
  %i.ba = mul nuw nsw i64 %indvars.iv42, %i.ap
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ba
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bc = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.bz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.bd = phi i32 [ %.promoted35.us, %.preheader.us ], [ %i.bv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.be = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.be)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.aq
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = add nuw nsw i32 %i.bd, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bf, %i.ar
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ugt i32 %i.bd, %i.av
  br i1 %i.bi, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bd) ; 3 uses
  %i.bj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bj)
  %i.bk = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 5
  call void @llvm.assume(i1 %i.bl)
  %i.bm = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bh, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bq = add nuw nsw i32 %i.bc, 32
  %i.br = sub nuw nsw i32 32, %i.bc
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 %i.bp, %i.bs
  %i.bu = or i64 %i.bt, %.promoted8.i.i.i.us
  store i32 %i.bf, ptr %i.ad, align 8, !tbaa !299
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bv = phi i32 [ %i.bd, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us ]
  %i.bw = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bx = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us ]
  %i.by = lshr i64 %i.bw, %i.ax
  %i.bz = sub nsw i32 %i.bx, %i.aq                ; 2 uses
  store i32 %i.bz, ptr %i.ab, align 8, !tbaa !258
  %i.ca = shl i64 %i.bw, %i.ay
  store i64 %i.ca, ptr %3, align 8, !tbaa !256
  %i.cb = trunc i64 %i.by to i16
  %i.cc = icmp samesign ult i64 %indvars.iv, %i.am
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 %i.az)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  store i16 %i.cb, ptr %i.cd, align 2, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !301

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.ce = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cf = shl nsw i32 %i.ce, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cf)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next43 to i32
  %i.ch = icmp sgt i32 %1, %i.cg
  br i1 %i.ch, label %.preheader.us, label %._crit_edge38, !llvm.loop !302

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01437 = phi i32 [ %i.ck, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cj = shl nsw i32 %i.ci, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cj)
  %i.ck = add i32 %.01437, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !302

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerLSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerLSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !303
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !303 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !303
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !303
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !303
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub i32 %i.t, %i.r                       ; 3 uses
  %i.x = zext i32 %i.r to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !270
  %i.ae = icmp samesign ult i32 %i.w, 4
  br i1 %i.ae, label %bb.b, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = mul i32 %i.ag, %i.f                     ; 2 uses
  %i.ai = icmp slt i32 %2, %1
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.aj = icmp sgt i32 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.aj, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.am = zext nneg i32 %i.i to i64
  %i.an = zext i32 %2 to i64
  %i.ao = zext nneg i32 %i.k to i64
  %i.ap = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ %i.an, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %.promoted.us = load i32, ptr %i.ab, align 8
  %.promoted35.us = load i32, ptr %i.ad, align 8
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !213 ; 6 uses
  %i.ar = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 3
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp ne i32 %i.aq, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %i.aq, 33
  call void @llvm.assume(i1 %i.au)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ac, align 8 ; 2 uses
  %i.av = add nuw nsw i32 %i.ar, 8
  %i.aw = sub nuw nsw i32 32, %i.aq
  %i.ax = lshr i32 -1, %i.aw
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = icmp samesign ult i64 %indvars.iv42, %i.ao
  %i.ba = mul nuw nsw i64 %indvars.iv42, %i.ap
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ba
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bc = phi i32 [ %.promoted.us, %.preheader.us ], [ %i.ca, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.bd = phi i32 [ %.promoted35.us, %.preheader.us ], [ %i.bu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %i.be = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.be)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.aq
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = add nuw nsw i32 %i.bd, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bf, %i.ar
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ugt i32 %i.bd, %i.av
  br i1 %i.bi, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bd) ; 3 uses
  %i.bj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.bj)
  %i.bk = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 5
  call void @llvm.assume(i1 %i.bl)
  %i.bm = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bh, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bq = add nuw nsw i32 %i.bc, 32
  %i.br = zext nneg i32 %i.bc to i64
  %i.bs = shl nuw nsw i64 %i.bp, %i.br
  %i.bt = or i64 %.promoted8.i.i.i.us, %i.bs
  store i32 %i.bf, ptr %i.ad, align 8, !tbaa !270
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bu = phi i32 [ %i.bd, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bv = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bw = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bx = trunc i64 %i.bv to i32
  %i.by = and i32 %i.ax, %i.bx
  %i.bz = lshr i64 %i.bv, %i.ay
  store i64 %i.bz, ptr %3, align 8, !tbaa !256
  %i.ca = sub nsw i32 %i.bw, %i.aq                ; 2 uses
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !258
  %i.cb = trunc i32 %i.by to i16
  %i.cc = icmp samesign ult i64 %indvars.iv, %i.am
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 %i.az)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  store i16 %i.cb, ptr %i.cd, align 2, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.c, !llvm.loop !306

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.ce = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cf = shl nsw i32 %i.ce, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cf)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next43 to i32
  %i.ch = icmp sgt i32 %1, %i.cg
  br i1 %i.ch, label %.preheader.us, label %._crit_edge38, !llvm.loop !307

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01437 = phi i32 [ %i.ck, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !216
  %i.cj = shl nsw i32 %i.ci, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cj)
  %i.ck = add i32 %.01437, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !307

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !222, !inline_history !308
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !108  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !229, !inline_history !308
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !112
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !112
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #10

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i6 = alloca i32, align 4             ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, 65
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !262  ; 9 uses
  %i.f = icmp sgt i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !259  ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp sgt i32 %1, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted20 = load i64, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8 ; 2 uses
  %i.l = add nuw nsw i32 %i.e, 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.021 = phi i32 [ %1, %.lr.ph ], [ %i.al, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.m = phi i32 [ %i.b, %.lr.ph ], [ %i.aj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.n = phi i32 [ %i.h, %.lr.ph ], [ %i.ah, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 5 uses
  %i.o = phi i64 [ %.promoted20, %.lr.ph ], [ %i.ak, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %.not.i = icmp samesign ult i32 %i.m, 32
  br i1 %.not.i, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.p = add nuw nsw i32 %i.n, 4                  ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.p, %i.e
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !230

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.q
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ugt i32 %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.g, !prof !230

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.n) ; 3 uses
  %i.t = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.t)
  %i.u = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 5
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.w
  %i.y = zext nneg i32 %i.u to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.r, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.z = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i)
  %i.aa = zext i32 %i.z to i64
  %i.ab = or disjoint i32 %i.m, 32
  %i.ac = sub nuw nsw i32 32, %i.m
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 %i.aa, %i.ad
  %i.af = or i64 %i.ae, %i.o
  store i32 %i.p, ptr %i.g, align 8, !tbaa !259
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.b, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i
  %i.ag = phi i64 [ %i.o, %bb.b ], [ %i.af, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ]
  %i.ah = phi i32 [ %i.n, %bb.b ], [ %i.p, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ] ; 2 uses
  %i.ai = phi i32 [ %i.m, %bb.b ], [ %i.ab, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i ]
  %i.aj = add nsw i32 %i.ai, -32                  ; 3 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !258
  %i.ak = shl i64 %i.ag, 32                       ; 2 uses
  store i64 %i.ak, ptr %0, align 8, !tbaa !256
  %i.al = add nsw i32 %.021, -32                  ; 2 uses
  %i.am = icmp sgt i32 %.021, 63
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !309

._crit_edge:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.a
  %i.an = phi i32 [ %i.h, %bb.a ], [ %i.ah, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.ao = phi i32 [ %i.b, %bb.a ], [ %i.aj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.al, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 6 uses
  %i.ap = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ap, label %bb.h, label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.aq = icmp samesign ult i32 %.0.lcssa, 33
  tail call void @llvm.assume(i1 %i.aq)
  %.not.i7 = icmp samesign ult i32 %i.ao, %.0.lcssa
  br i1 %.not.i7, label %bb.i, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %0, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i6)
  %i.as = add nuw nsw i32 %i.an, 4                ; 2 uses
  %.not.i.i8 = icmp samesign ugt i32 %i.as, %i.e
  br i1 %.not.i.i8, label %bb.k, label %bb.j, !prof !230

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i9 = load ptr, ptr %i.ar, align 8, !tbaa !211, !noalias !310
  %i.at = zext nneg i32 %i.an to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i9, i64 %i.at
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i10

bb.k:                                             ; preds = %bb.i
  %i.av = add nuw nsw i32 %i.e, 8
  %i.aw = icmp samesign ugt i32 %i.an, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !230

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.ar, align 8, !tbaa !211
  store i32 0, ptr %.sroa.0.i.i6, align 4
  %.sroa.speculated27.i.i.i15 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.an) ; 3 uses
  %i.ax = add nuw nsw i32 %.sroa.speculated27.i.i.i15, 4
  %.sroa.speculated.i.i.i16 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.ax)
  %i.ay = sub nsw i32 %.sroa.speculated.i.i.i16, %.sroa.speculated27.i.i.i15 ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, 5
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext nneg i32 %.sroa.speculated27.i.i.i15 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i14, i64 %i.ba
  %i.bc = zext nneg i32 %i.ay to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i6, ptr align 1 %i.bb, i64 %i.bc, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i10

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i10: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11 = phi ptr [ %.sroa.0.i.i6, %bb.m ], [ %i.au, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i6)
  %.promoted8.i.i13 = load i64, ptr %0, align 8
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12)
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i32 %i.ao, 32
  %i.bg = sub nuw nsw i32 32, %i.ao
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.be, %i.bh
  %i.bj = or i64 %i.bi, %.promoted8.i.i13
  store i32 %i.as, ptr %i.g, align 8, !tbaa !259
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17: ; preds = %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i10
  %i.bk = phi i64 [ %.pre, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge ], [ %i.bj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i10 ]
  %i.bl = phi i32 [ %i.ao, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i10 ] ; 2 uses
  %i.bm = icmp samesign ule i32 %.0.lcssa, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = sub nsw i32 %i.bl, %.0.lcssa
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !258
  %i.bo = zext nneg i32 %.0.lcssa to i64
  %i.bp = shl i64 %i.bk, %i.bo
  store i64 %i.bp, ptr %0, align 8, !tbaa !256
  br label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i6 = alloca i32, align 4             ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, 65
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !262  ; 9 uses
  %i.f = icmp sgt i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !270  ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp sgt i32 %1, 31
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted20 = load i64, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8 ; 2 uses
  %i.l = add nuw nsw i32 %i.e, 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.021 = phi i32 [ %1, %.lr.ph ], [ %i.aj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.m = phi i32 [ %i.b, %.lr.ph ], [ %i.ai, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.n = phi i32 [ %i.h, %.lr.ph ], [ %i.af, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 5 uses
  %i.o = phi i64 [ %.promoted20, %.lr.ph ], [ %i.ah, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %.not.i = icmp samesign ult i32 %i.m, 32
  br i1 %.not.i, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.p = add nuw nsw i32 %i.n, 4                  ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.p, %i.e
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !230

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.q
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ugt i32 %i.n, %i.l
  br i1 %i.s, label %bb.f, label %bb.g, !prof !230

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.n) ; 3 uses
  %i.t = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.t)
  %i.u = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 5
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.w
  %i.y = zext nneg i32 %i.u to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.r, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.z = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.aa = or disjoint i32 %i.m, 32
  %i.ab = zext nneg i32 %i.m to i64
  %i.ac = shl nuw nsw i64 %i.z, %i.ab
  %i.ad = or i64 %i.o, %i.ac
  store i32 %i.p, ptr %i.g, align 8, !tbaa !270
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.b, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i
  %i.ae = phi i64 [ %i.o, %bb.b ], [ %i.ad, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i ]
  %i.af = phi i32 [ %i.n, %bb.b ], [ %i.p, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i ] ; 2 uses
  %i.ag = phi i32 [ %i.m, %bb.b ], [ %i.aa, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i ]
  %i.ah = lshr i64 %i.ae, 32                      ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !256
  %i.ai = add nsw i32 %i.ag, -32                  ; 3 uses
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !258
  %i.aj = add nsw i32 %.021, -32                  ; 2 uses
  %i.ak = icmp sgt i32 %.021, 63
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !313

._crit_edge:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.a
  %i.al = phi i32 [ %i.h, %bb.a ], [ %i.af, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.am = phi i32 [ %i.b, %bb.a ], [ %i.ai, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.aj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 6 uses
  %i.an = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.an, label %bb.h, label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.ao = icmp samesign ult i32 %.0.lcssa, 33
  tail call void @llvm.assume(i1 %i.ao)
  %.not.i7 = icmp samesign ult i32 %i.am, %.0.lcssa
  br i1 %.not.i7, label %bb.i, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %0, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i6)
  %i.aq = add nuw nsw i32 %i.al, 4                ; 2 uses
  %.not.i.i8 = icmp samesign ugt i32 %i.aq, %i.e
  br i1 %.not.i.i8, label %bb.k, label %bb.j, !prof !230

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i9 = load ptr, ptr %i.ap, align 8, !tbaa !211, !noalias !314
  %i.ar = zext nneg i32 %i.al to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i9, i64 %i.ar
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i10

bb.k:                                             ; preds = %bb.i
  %i.at = add nuw nsw i32 %i.e, 8
  %i.au = icmp samesign ugt i32 %i.al, %i.at
  br i1 %i.au, label %bb.l, label %bb.m, !prof !230

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.ap, align 8, !tbaa !211
  store i32 0, ptr %.sroa.0.i.i6, align 4
  %.sroa.speculated27.i.i.i15 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.al) ; 3 uses
  %i.av = add nuw nsw i32 %.sroa.speculated27.i.i.i15, 4
  %.sroa.speculated.i.i.i16 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.av)
  %i.aw = sub nsw i32 %.sroa.speculated.i.i.i16, %.sroa.speculated27.i.i.i15 ; 2 uses
  %i.ax = icmp samesign ult i32 %i.aw, 5
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = zext nneg i32 %.sroa.speculated27.i.i.i15 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i14, i64 %i.ay
  %i.ba = zext nneg i32 %i.aw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i6, ptr align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i10

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i10: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11 = phi ptr [ %.sroa.0.i.i6, %bb.m ], [ %i.as, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i6)
  %.promoted8.i.i13 = load i64, ptr %0, align 8
  %i.bb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12 to i64
  %i.bc = add nuw nsw i32 %i.am, 32
  %i.bd = zext nneg i32 %i.am to i64
  %i.be = shl nuw nsw i64 %i.bb, %i.bd
  %i.bf = or i64 %.promoted8.i.i13, %i.be
  store i32 %i.aq, ptr %i.g, align 8, !tbaa !270
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17: ; preds = %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i10
  %i.bg = phi i64 [ %.pre, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i10 ]
  %i.bh = phi i32 [ %i.am, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge ], [ %i.bc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i10 ] ; 2 uses
  %i.bi = icmp samesign ule i32 %.0.lcssa, %i.bh
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = zext nneg i32 %.0.lcssa to i64
  %i.bk = lshr i64 %i.bg, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !256
  %i.bl = sub nsw i32 %i.bh, %.0.lcssa
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !258
  br label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i6 = alloca i32, align 4             ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, 65
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !262  ; 9 uses
  %i.f = icmp sgt i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !292  ; 4 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i32 %i.h, 1
  %i.k = icmp eq i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp sgt i32 %1, 31
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted23 = load i64, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.m, align 8 ; 2 uses
  %i.n = add nuw nsw i32 %i.e, 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.024 = phi i32 [ %1, %.lr.ph ], [ %i.ar, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.o = phi i32 [ %i.b, %.lr.ph ], [ %i.ap, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.p = phi i32 [ %i.h, %.lr.ph ], [ %i.al, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 5 uses
  %i.q = phi i64 [ %.promoted23, %.lr.ph ], [ %i.aq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %.not.i = icmp samesign ult i32 %i.o, 32
  br i1 %.not.i, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.r = add nuw nsw i32 %i.p, 4                  ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.r, %i.e
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !230

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.s
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ugt i32 %i.p, %i.n
  br i1 %i.u, label %bb.f, label %bb.g, !prof !230

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.p) ; 3 uses
  %i.v = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.v)
  %i.w = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, 5
  tail call void @llvm.assume(i1 %i.x)
  %i.y = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.y
  %i.aa = zext nneg i32 %i.w to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.t, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.2.0.extract.shift.i.i = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %.sroa.2.0.extract.trunc.i.i = zext nneg i32 %.sroa.2.0.extract.shift.i.i to i64
  %i.ab = zext nneg i32 %i.o to i64               ; 2 uses
  %i.ac = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 65535
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nuw nsw i64 48, %i.ab
  %i.af = shl nuw i64 %i.ad, %i.ae
  %indvars.iv.next13.1.i.i = or disjoint i32 %i.o, 32
  %i.ag = sub nuw nsw i64 32, %i.ab
  %i.ah = shl nuw nsw i64 %.sroa.2.0.extract.trunc.i.i, %i.ag
  %i.ai = or i64 %i.af, %i.ah
  %i.aj = or i64 %i.ai, %i.q
  store i32 %i.r, ptr %i.g, align 8, !tbaa !292
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.b, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i
  %i.ak = phi i64 [ %i.q, %bb.b ], [ %i.aj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i ]
  %i.al = phi i32 [ %i.p, %bb.b ], [ %i.r, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i ] ; 3 uses
  %i.am = phi i32 [ %i.o, %bb.b ], [ %indvars.iv.next13.1.i.i, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i ]
  %i.an = and i32 %i.al, 1
  %i.ao = icmp eq i32 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nsw i32 %i.am, -32                  ; 3 uses
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !258
  %i.aq = shl i64 %i.ak, 32                       ; 2 uses
  store i64 %i.aq, ptr %0, align 8, !tbaa !256
  %i.ar = add nsw i32 %.024, -32                  ; 2 uses
  %i.as = icmp sgt i32 %.024, 63
  br i1 %i.as, label %bb.b, label %._crit_edge, !llvm.loop !317

._crit_edge:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.a
  %i.at = phi i32 [ %i.h, %bb.a ], [ %i.al, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.au = phi i32 [ %i.b, %bb.a ], [ %i.ap, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ar, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 6 uses
  %i.av = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.av, label %bb.h, label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.aw = icmp samesign ult i32 %.0.lcssa, 33
  tail call void @llvm.assume(i1 %i.aw)
  %.not.i7 = icmp samesign ult i32 %i.au, %.0.lcssa
  br i1 %.not.i7, label %bb.i, label %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20_crit_edge

._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %0, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i6)
  %i.ay = add nuw nsw i32 %i.at, 4                ; 2 uses
  %.not.i.i8 = icmp samesign ugt i32 %i.ay, %i.e
  br i1 %.not.i.i8, label %bb.k, label %bb.j, !prof !230

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i9 = load ptr, ptr %i.ax, align 8, !tbaa !211, !noalias !318
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i9, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i10

bb.k:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i32 %i.e, 8
  %i.bc = icmp samesign ugt i32 %i.at, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.m, !prof !230

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv) #6
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.ax, align 8, !tbaa !211
  store i32 0, ptr %.sroa.0.i.i6, align 4
  %.sroa.speculated27.i.i.i18 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.at) ; 3 uses
  %i.bd = add nuw nsw i32 %.sroa.speculated27.i.i.i18, 4
  %.sroa.speculated.i.i.i19 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.bd)
  %i.be = sub nsw i32 %.sroa.speculated.i.i.i19, %.sroa.speculated27.i.i.i18 ; 2 uses
  %i.bf = icmp samesign ult i32 %i.be, 5
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = zext nneg i32 %.sroa.speculated27.i.i.i18 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 %i.bg
  %i.bi = zext nneg i32 %i.be to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i6, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i10

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i10: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11 = phi ptr [ %.sroa.0.i.i6, %bb.m ], [ %i.ba, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i6)
  %.sroa.2.0.extract.shift.i.i13 = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12, 16
  %.sroa.2.0.extract.trunc.i.i14 = zext nneg i32 %.sroa.2.0.extract.shift.i.i13 to i64
  %.promoted8.i.i15 = load i64, ptr %0, align 8, !tbaa !256
  %i.bj = zext nneg i32 %i.au to i64              ; 2 uses
  %i.bk = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12, 65535
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = sub nuw nsw i64 48, %i.bj
  %i.bn = shl nuw i64 %i.bl, %i.bm
  %i.bo = or i64 %i.bn, %.promoted8.i.i15
  %indvars.iv.next13.1.i.i16 = add nuw nsw i32 %i.au, 32
  %i.bp = sub nuw nsw i64 32, %i.bj
  %i.bq = shl nuw nsw i64 %.sroa.2.0.extract.trunc.i.i14, %i.bp
  %i.br = or i64 %i.bo, %i.bq
  store i32 %i.ay, ptr %i.g, align 8, !tbaa !292
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20: ; preds = %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20_crit_edge, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i10
  %i.bs = phi i64 [ %.pre, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20_crit_edge ], [ %i.br, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i10 ]
  %i.bt = phi i32 [ %i.au, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20_crit_edge ], [ %indvars.iv.next13.1.i.i16, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i10 ] ; 2 uses
  %i.bu = icmp samesign ule i32 %.0.lcssa, %i.bt
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = sub nsw i32 %i.bt, %.0.lcssa
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !258
  %i.bw = zext nneg i32 %.0.lcssa to i64
  %i.bx = shl i64 %i.bs, %i.bw
  store i64 %i.bx, ptr %0, align 8, !tbaa !256
  br label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit20, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i6 = alloca i32, align 4             ; 5 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, 65
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !262  ; 9 uses
  %i.f = icmp sgt i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !299  ; 4 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i32 %i.h, 3
  %i.k = icmp eq i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp sgt i32 %1, 31
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted20 = load i64, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.m, align 8 ; 2 uses
  %i.n = add nuw nsw i32 %i.e, 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.021 = phi i32 [ %1, %.lr.ph ], [ %i.ao, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.o = phi i32 [ %i.b, %.lr.ph ], [ %i.am, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.p = phi i32 [ %i.h, %.lr.ph ], [ %i.ai, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 5 uses
  %i.q = phi i64 [ %.promoted20, %.lr.ph ], [ %i.an, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %.not.i = icmp samesign ult i32 %i.o, 32
  br i1 %.not.i, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.r = add nuw nsw i32 %i.p, 4                  ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.r, %i.e
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !230

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.s
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ugt i32 %i.p, %i.n
  br i1 %i.u, label %bb.f, label %bb.g, !prof !230

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.p) ; 3 uses
  %i.v = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.v)
  %i.w = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, 5
  tail call void @llvm.assume(i1 %i.x)
  %i.y = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.y
  %i.aa = zext nneg i32 %i.w to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.t, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ab = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.ac = or disjoint i32 %i.o, 32
  %i.ad = sub nuw nsw i32 32, %i.o
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 %i.ab, %i.ae
  %i.ag = or i64 %i.af, %i.q
  store i32 %i.r, ptr %i.g, align 8, !tbaa !299
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.b, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i
  %i.ah = phi i64 [ %i.q, %bb.b ], [ %i.ag, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ]
  %i.ai = phi i32 [ %i.p, %bb.b ], [ %i.r, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ] ; 3 uses
  %i.aj = phi i32 [ %i.o, %bb.b ], [ %i.ac, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ]
  %i.ak = and i32 %i.ai, 3
  %i.al = icmp eq i32 %i.ak, 0
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nsw i32 %i.aj, -32                  ; 3 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !258
  %i.an = shl i64 %i.ah, 32                       ; 2 uses
  store i64 %i.an, ptr %0, align 8, !tbaa !256
  %i.ao = add nsw i32 %.021, -32                  ; 2 uses
  %i.ap = icmp sgt i32 %.021, 63
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !321

._crit_edge:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.a
  %i.aq = phi i32 [ %i.h, %bb.a ], [ %i.ai, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %i.ar = phi i32 [ %i.b, %bb.a ], [ %i.am, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 4 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ao, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 6 uses
  %i.as = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.as, label %bb.h, label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.at = icmp samesign ult i32 %.0.lcssa, 33
  tail call void @llvm.assume(i1 %i.at)
  %.not.i7 = icmp samesign ult i32 %i.ar, %.0.lcssa
  br i1 %.not.i7, label %bb.i, label %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge

._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %0, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i6)
  %i.av = add nuw nsw i32 %i.aq, 4                ; 2 uses
  %.not.i.i8 = icmp samesign ugt i32 %i.av, %i.e
  br i1 %.not.i.i8, label %bb.k, label %bb.j, !prof !230

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i9 = load ptr, ptr %i.au, align 8, !tbaa !211, !noalias !322
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i9, i64 %i.aw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i10

bb.k:                                             ; preds = %bb.i
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = icmp samesign ugt i32 %i.aq, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m, !prof !230

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #6
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.au, align 8, !tbaa !211
  store i32 0, ptr %.sroa.0.i.i6, align 4
  %.sroa.speculated27.i.i.i15 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.aq) ; 3 uses
  %i.ba = add nuw nsw i32 %.sroa.speculated27.i.i.i15, 4
  %.sroa.speculated.i.i.i16 = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.ba)
  %i.bb = sub nsw i32 %.sroa.speculated.i.i.i16, %.sroa.speculated27.i.i.i15 ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 5
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = zext nneg i32 %.sroa.speculated27.i.i.i15 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i14, i64 %i.bd
  %i.bf = zext nneg i32 %i.bb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i6, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i10

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i10: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11 = phi ptr [ %.sroa.0.i.i6, %bb.m ], [ %i.ax, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i11, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i6)
  %.promoted8.i.i13 = load i64, ptr %0, align 8
  %i.bg = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i12 to i64
  %i.bh = add nuw nsw i32 %i.ar, 32
  %i.bi = sub nuw nsw i32 32, %i.ar
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bg, %i.bj
  %i.bl = or i64 %i.bk, %.promoted8.i.i13
  store i32 %i.av, ptr %i.g, align 8, !tbaa !299
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17: ; preds = %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i10
  %i.bm = phi i64 [ %.pre, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge ], [ %i.bl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i10 ]
  %i.bn = phi i32 [ %i.ar, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17_crit_edge ], [ %i.bh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i10 ] ; 2 uses
  %i.bo = icmp samesign ule i32 %.0.lcssa, %i.bn
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = sub nsw i32 %i.bn, %.0.lcssa
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !258
  %i.bq = zext nneg i32 %.0.lcssa to i64
  %i.br = shl i64 %i.bm, %i.bq
  store i64 %i.br, ptr %0, align 8, !tbaa !256
  br label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit17, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 40}
!12 = !{!"_ZTSN8rawspeed24UncompressedDecompressorE", !13, i64 0, !19, i64 24, !25, i64 40, !25, i64 48, !8, i64 56, !8, i64 60, !26, i64 64, !8, i64 68}
!13 = !{!"_ZTSN8rawspeed10ByteStreamE", !14, i64 0, !8, i64 16}
!14 = !{!"_ZTSN8rawspeed10DataBufferE", !15, i64 0, !18, i64 12}
!15 = !{!"_ZTSN8rawspeed6BufferE", !16, i64 0, !8, i64 8}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"_ZTSN8rawspeed10EndiannessE", !9, i64 0}
!19 = !{!"_ZTSN8rawspeed8RawImageE", !20, i64 0}
!20 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !21, i64 0}
!21 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0, !23, i64 8}
!22 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !17, i64 0}
!23 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!24 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!25 = !{!"_ZTSN8rawspeed8iPoint2DE", !8, i64 0, !8, i64 4}
!26 = !{!"_ZTSN8rawspeed8BitOrderE", !9, i64 0}
!27 = !{!12, !8, i64 44}
!28 = !{!15, !8, i64 8}
!29 = !{!13, !8, i64 16}
!30 = !{!21, !22, i64 0}
!31 = !{!32, !16, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!35 = distinct !{!35, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!36 = !{!37, !8, i64 592}
!37 = !{!"_ZTSN8rawspeed12RawImageDataE", !38, i64 8, !25, i64 40, !8, i64 48, !8, i64 52, !45, i64 56, !46, i64 64, !8, i64 96, !51, i64 100, !52, i64 120, !57, i64 160, !62, i64 168, !67, i64 192, !72, i64 216, !8, i64 240, !45, i64 244, !76, i64 248, !39, i64 552, !91, i64 553, !92, i64 560, !8, i64 592, !8, i64 596, !25, i64 600, !25, i64 608, !97, i64 616}
!38 = !{!"_ZTSN8rawspeed8ErrorLogE", !39, i64 0, !40, i64 8}
!39 = !{!"_ZTSN8rawspeed5MutexE"}
!40 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!45 = !{!"bool", !9, i64 0}
!46 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !47, i64 0, !25, i64 24}
!47 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!51 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!52 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !53, i64 0}
!53 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !54, i64 0}
!54 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !55, i64 0}
!55 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !56, i64 0}
!56 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !45, i64 32}
!57 = !{!"_ZTSN8rawspeed8OptionalIiEE", !58, i64 0}
!58 = !{!"_ZTSSt8optionalIiE", !59, i64 0}
!59 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !60, i64 0}
!60 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !61, i64 0}
!61 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !45, i64 4}
!62 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !17, i64 0}
!67 = !{!"_ZTSSt6vectorIjSaIjEE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 int", !17, i64 0}
!72 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!76 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !77, i64 0, !78, i64 8, !83, i64 32, !8, i64 56, !25, i64 60, !88, i64 72, !88, i64 104, !88, i64 136, !88, i64 168, !88, i64 200, !88, i64 232, !88, i64 264, !8, i64 296}
!77 = !{!"double", !9, i64 0}
!78 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !79, i64 0}
!79 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !80, i64 0}
!80 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !81, i64 0}
!81 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !82, i64 0}
!82 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !45, i64 16}
!83 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !84, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!87 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !17, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !90, i64 8, !9, i64 16}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!90 = !{!"long", !9, i64 0}
!91 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!92 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !95, i64 0, !32, i64 8}
!95 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !96, i64 0}
!96 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!97 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !98, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !99, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !100, i64 0}
!100 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !101, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !102, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !103, i64 0}
!103 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !17, i64 0}
!104 = !{!37, !8, i64 608}
!105 = !{!37, !8, i64 48}
!106 = !{!37, !8, i64 612}
!107 = !{!15, !16, i64 0}
!108 = !{!8, !8, i64 0}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!9, !9, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"vtable pointer", !10, i64 0}
!114 = !DISubprogram(name: "setWithLookUp", linkageName: "_ZN8rawspeed12RawImageData13setWithLookUpEtPSt4bytePj", scope: !116, file: !115, line: 144, type: !118, scopeLine: 144, containingType: !116, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!115 = !DIFile(filename: "src/external/rawspeed/src/librawspeed/decompressors/../common/RawImage.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "2ca5ca40f0f87136378ae905a4cc586c")
!116 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RawImageData", scope: !117, file: !115, line: 111, size: 4992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN8rawspeed12RawImageDataE")
!117 = !DINamespace(name: "rawspeed", scope: null)
end_hunk_0
