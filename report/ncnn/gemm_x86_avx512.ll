inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %i.ahy = add nsw i64 %indvars.iv360, %i.acc
  %.idx390 = shl nsw i64 %i.ahy, 5
  %i.ahz = getelementptr inbounds i8, ptr %i.ahx, i64 %.idx390 ; 2 uses
  br i1 %i.acs, label %.lr.ph308.epil.preheader, label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %.lr.ph308
  %.0607306 = phi ptr [ %i.ail, %.lr.ph308 ], [ %i.ahz, %.lr.ph308.preheader ] ; 2 uses
  %.39305 = phi ptr [ %i.aik, %.lr.ph308 ], [ %.36321, %.lr.ph308.preheader ] ; 5 uses
  %niter579 = phi i32 [ %niter579.next.3, %.lr.ph308 ], [ 0, %.lr.ph308.preheader ]
  %i.aia = load <8 x float>, ptr %.0607306, align 32, !tbaa !116
  store <8 x float> %i.aia, ptr %.39305, align 32, !tbaa !116
  %i.aib = getelementptr inbounds nuw i8, ptr %.39305, i64 32
  %i.aic = getelementptr inbounds nuw i8, ptr %.0607306, i64 %.idx648 ; 2 uses
  %i.aid = load <8 x float>, ptr %i.aic, align 32, !tbaa !116
  store <8 x float> %i.aid, ptr %i.aib, align 32, !tbaa !116
  %i.aie = getelementptr inbounds nuw i8, ptr %.39305, i64 64
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 %.idx648 ; 2 uses
  %i.aig = load <8 x float>, ptr %i.aif, align 32, !tbaa !116
  store <8 x float> %i.aig, ptr %i.aie, align 32, !tbaa !116
  %i.aih = getelementptr inbounds nuw i8, ptr %.39305, i64 96
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 %.idx648 ; 2 uses
  %i.aij = load <8 x float>, ptr %i.aii, align 32, !tbaa !116
  store <8 x float> %i.aij, ptr %i.aih, align 32, !tbaa !116
  %i.aik = getelementptr inbounds nuw i8, ptr %.39305, i64 128 ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aii, i64 %.idx648 ; 2 uses
  %niter579.next.3 = add i32 %niter579, 4         ; 2 uses
  %niter579.ncmp.3.not = icmp eq i32 %niter579.next.3, %unroll_iter578
  br i1 %niter579.ncmp.3.not, label %.loopexit.loopexit481.unr-lcssa, label %.lr.ph308, !llvm.loop !142

bb.y:                                             ; preds = %.split446
  br i1 %i.abz, label %.lr.ph313.preheader, label %.loopexit

.lr.ph313.preheader:                              ; preds = %bb.y
  %i.aim = load ptr, ptr %0, align 8, !tbaa !18
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.abw
  %i.aio = add nsw i64 %indvars.iv360, %i.acc
  %.idx391 = shl nsw i64 %i.aio, 4
  %i.aip = getelementptr inbounds i8, ptr %i.ain, i64 %.idx391 ; 2 uses
  br i1 %i.acr, label %.lr.ph313.epil.preheader, label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %.lr.ph313
  %.0605311 = phi ptr [ %i.ajb, %.lr.ph313 ], [ %i.aip, %.lr.ph313.preheader ] ; 2 uses
  %.41310 = phi ptr [ %i.aja, %.lr.ph313 ], [ %.36321, %.lr.ph313.preheader ] ; 5 uses
  %niter572 = phi i32 [ %niter572.next.3, %.lr.ph313 ], [ 0, %.lr.ph313.preheader ]
  %i.aiq = load <4 x float>, ptr %.0605311, align 16, !tbaa !116
  store <4 x float> %i.aiq, ptr %.41310, align 16, !tbaa !116
  %i.air = getelementptr inbounds nuw i8, ptr %.41310, i64 16
  %i.ais = getelementptr inbounds nuw i8, ptr %.0605311, i64 %.idx ; 2 uses
  %i.ait = load <4 x float>, ptr %i.ais, align 16, !tbaa !116
  store <4 x float> %i.ait, ptr %i.air, align 16, !tbaa !116
  %i.aiu = getelementptr inbounds nuw i8, ptr %.41310, i64 32
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ais, i64 %.idx ; 2 uses
  %i.aiw = load <4 x float>, ptr %i.aiv, align 16, !tbaa !116
  store <4 x float> %i.aiw, ptr %i.aiu, align 16, !tbaa !116
  %i.aix = getelementptr inbounds nuw i8, ptr %.41310, i64 48
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %.idx ; 2 uses
  %i.aiz = load <4 x float>, ptr %i.aiy, align 16, !tbaa !116
  store <4 x float> %i.aiz, ptr %i.aix, align 16, !tbaa !116
  %i.aja = getelementptr inbounds nuw i8, ptr %.41310, i64 64 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.idx ; 2 uses
  %niter572.next.3 = add nuw nsw i32 %niter572, 4 ; 2 uses
  %niter572.ncmp.3.not = icmp eq i32 %niter572.next.3, %unroll_iter571
  br i1 %niter572.ncmp.3.not, label %.loopexit.loopexit482.unr-lcssa, label %.lr.ph313, !llvm.loop !143

bb.z:                                             ; preds = %.split446
  br i1 %i.aca, label %.lr.ph318.preheader, label %.loopexit

.lr.ph318.preheader:                              ; preds = %bb.z
  %i.ajc = load ptr, ptr %0, align 8, !tbaa !18
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.abw
  %i.aje = getelementptr [4 x i8], ptr %i.ajd, i64 %indvars.iv360
  %i.ajf = getelementptr [4 x i8], ptr %i.aje, i64 %i.acc ; 2 uses
  br i1 %i.acq, label %.lr.ph318.epil.preheader, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %.0603316 = phi ptr [ %i.akd, %.lr.ph318 ], [ %i.ajf, %.lr.ph318.preheader ] ; 2 uses
  %.43315 = phi ptr [ %i.akc, %.lr.ph318 ], [ %.36321, %.lr.ph318.preheader ] ; 9 uses
  %niter565 = phi i32 [ %niter565.next.7, %.lr.ph318 ], [ 0, %.lr.ph318.preheader ]
  %i.ajg = load float, ptr %.0603316, align 4, !tbaa !68
  store float %i.ajg, ptr %.43315, align 4, !tbaa !68
  %i.ajh = getelementptr inbounds nuw i8, ptr %.43315, i64 4
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.0603316, i64 %i.k ; 2 uses
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !68
  store float %i.ajj, ptr %i.ajh, align 4, !tbaa !68
  %i.ajk = getelementptr inbounds nuw i8, ptr %.43315, i64 8
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.k ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !68
  store float %i.ajm, ptr %i.ajk, align 4, !tbaa !68
  %i.ajn = getelementptr inbounds nuw i8, ptr %.43315, i64 12
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.k ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !68
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !68
  %i.ajq = getelementptr inbounds nuw i8, ptr %.43315, i64 16
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.k ; 2 uses
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !68
  store float %i.ajs, ptr %i.ajq, align 4, !tbaa !68
  %i.ajt = getelementptr inbounds nuw i8, ptr %.43315, i64 20
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.k ; 2 uses
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !68
  store float %i.ajv, ptr %i.ajt, align 4, !tbaa !68
  %i.ajw = getelementptr inbounds nuw i8, ptr %.43315, i64 24
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.k ; 2 uses
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !68
  store float %i.ajy, ptr %i.ajw, align 4, !tbaa !68
  %i.ajz = getelementptr inbounds nuw i8, ptr %.43315, i64 28
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.k ; 2 uses
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !68
  store float %i.akb, ptr %i.ajz, align 4, !tbaa !68
  %i.akc = getelementptr inbounds nuw i8, ptr %.43315, i64 32 ; 3 uses
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.k ; 2 uses
  %niter565.next.7 = add nuw nsw i32 %niter565, 8 ; 2 uses
  %niter565.ncmp.7 = icmp eq i32 %niter565.next.7, %unroll_iter564
  br i1 %niter565.ncmp.7, label %.loopexit.loopexit483.unr-lcssa, label %.lr.ph318, !llvm.loop !144

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph303
  br i1 %lcmp.mod582.not, label %.loopexit, label %.lr.ph303.epil.preheader

.lr.ph303.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph303.preheader
  %.0609301.epil.init = phi ptr [ %i.ahj, %.lr.ph303.preheader ], [ %i.ahv, %.loopexit.loopexit.unr-lcssa ]
  %.37300.epil.init = phi ptr [ %.36321, %.lr.ph303.preheader ], [ %i.ahu, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod584)
  br label %.lr.ph303.epil

.lr.ph303.epil:                                   ; preds = %.lr.ph303.epil, %.lr.ph303.epil.preheader
  %.0609301.epil = phi ptr [ %i.akg, %.lr.ph303.epil ], [ %.0609301.epil.init, %.lr.ph303.epil.preheader ] ; 2 uses
  %.37300.epil = phi ptr [ %i.akf, %.lr.ph303.epil ], [ %.37300.epil.init, %.lr.ph303.epil.preheader ] ; 2 uses
  %epil.iter581 = phi i32 [ %epil.iter581.next, %.lr.ph303.epil ], [ 0, %.lr.ph303.epil.preheader ]
  %i.ake = load <16 x float>, ptr %.0609301.epil, align 64, !tbaa !116
  store <16 x float> %i.ake, ptr %.37300.epil, align 64, !tbaa !116
  %i.akf = getelementptr inbounds nuw i8, ptr %.37300.epil, i64 64 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.0609301.epil, i64 %.idx649
  %epil.iter581.next = add i32 %epil.iter581, 1   ; 2 uses
  %epil.iter581.cmp.not = icmp eq i32 %epil.iter581.next, %xtraiter580
  br i1 %epil.iter581.cmp.not, label %.loopexit, label %.lr.ph303.epil, !llvm.loop !145

.loopexit.loopexit481.unr-lcssa:                  ; preds = %.lr.ph308
  br i1 %lcmp.mod575.not, label %.loopexit, label %.lr.ph308.epil.preheader

.lr.ph308.epil.preheader:                         ; preds = %.loopexit.loopexit481.unr-lcssa, %.lr.ph308.preheader
  %.0607306.epil.init = phi ptr [ %i.ahz, %.lr.ph308.preheader ], [ %i.ail, %.loopexit.loopexit481.unr-lcssa ]
  %.39305.epil.init = phi ptr [ %.36321, %.lr.ph308.preheader ], [ %i.aik, %.loopexit.loopexit481.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod577)
  br label %.lr.ph308.epil

.lr.ph308.epil:                                   ; preds = %.lr.ph308.epil, %.lr.ph308.epil.preheader
  %.0607306.epil = phi ptr [ %i.akj, %.lr.ph308.epil ], [ %.0607306.epil.init, %.lr.ph308.epil.preheader ] ; 2 uses
  %.39305.epil = phi ptr [ %i.aki, %.lr.ph308.epil ], [ %.39305.epil.init, %.lr.ph308.epil.preheader ] ; 2 uses
  %epil.iter574 = phi i32 [ %epil.iter574.next, %.lr.ph308.epil ], [ 0, %.lr.ph308.epil.preheader ]
  %i.akh = load <8 x float>, ptr %.0607306.epil, align 32, !tbaa !116
  store <8 x float> %i.akh, ptr %.39305.epil, align 32, !tbaa !116
  %i.aki = getelementptr inbounds nuw i8, ptr %.39305.epil, i64 32 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.0607306.epil, i64 %.idx648
  %epil.iter574.next = add i32 %epil.iter574, 1   ; 2 uses
  %epil.iter574.cmp.not = icmp eq i32 %epil.iter574.next, %xtraiter573
  br i1 %epil.iter574.cmp.not, label %.loopexit, label %.lr.ph308.epil, !llvm.loop !146

.loopexit.loopexit482.unr-lcssa:                  ; preds = %.lr.ph313
  br i1 %lcmp.mod568.not, label %.loopexit, label %.lr.ph313.epil.preheader

.lr.ph313.epil.preheader:                         ; preds = %.loopexit.loopexit482.unr-lcssa, %.lr.ph313.preheader
  %.0605311.epil.init = phi ptr [ %i.aip, %.lr.ph313.preheader ], [ %i.ajb, %.loopexit.loopexit482.unr-lcssa ]
  %.41310.epil.init = phi ptr [ %.36321, %.lr.ph313.preheader ], [ %i.aja, %.loopexit.loopexit482.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod570)
  br label %.lr.ph313.epil

.lr.ph313.epil:                                   ; preds = %.lr.ph313.epil, %.lr.ph313.epil.preheader
  %.0605311.epil = phi ptr [ %i.akm, %.lr.ph313.epil ], [ %.0605311.epil.init, %.lr.ph313.epil.preheader ] ; 2 uses
  %.41310.epil = phi ptr [ %i.akl, %.lr.ph313.epil ], [ %.41310.epil.init, %.lr.ph313.epil.preheader ] ; 2 uses
  %epil.iter567 = phi i32 [ %epil.iter567.next, %.lr.ph313.epil ], [ 0, %.lr.ph313.epil.preheader ]
  %i.akk = load <4 x float>, ptr %.0605311.epil, align 16, !tbaa !116
  store <4 x float> %i.akk, ptr %.41310.epil, align 16, !tbaa !116
  %i.akl = getelementptr inbounds nuw i8, ptr %.41310.epil, i64 16 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.0605311.epil, i64 %.idx
  %epil.iter567.next = add i32 %epil.iter567, 1   ; 2 uses
  %epil.iter567.cmp.not = icmp eq i32 %epil.iter567.next, %xtraiter566
  br i1 %epil.iter567.cmp.not, label %.loopexit, label %.lr.ph313.epil, !llvm.loop !147

.loopexit.loopexit483.unr-lcssa:                  ; preds = %.lr.ph318
  br i1 %lcmp.mod561.not, label %.loopexit, label %.lr.ph318.epil.preheader

.lr.ph318.epil.preheader:                         ; preds = %.loopexit.loopexit483.unr-lcssa, %.lr.ph318.preheader
  %.0603316.epil.init = phi ptr [ %i.ajf, %.lr.ph318.preheader ], [ %i.akd, %.loopexit.loopexit483.unr-lcssa ]
  %.43315.epil.init = phi ptr [ %.36321, %.lr.ph318.preheader ], [ %i.akc, %.loopexit.loopexit483.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod563)
  br label %.lr.ph318.epil

.lr.ph318.epil:                                   ; preds = %.lr.ph318.epil, %.lr.ph318.epil.preheader
  %.0603316.epil = phi ptr [ %i.akp, %.lr.ph318.epil ], [ %.0603316.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %.43315.epil = phi ptr [ %i.ako, %.lr.ph318.epil ], [ %.43315.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %epil.iter560 = phi i32 [ %epil.iter560.next, %.lr.ph318.epil ], [ 0, %.lr.ph318.epil.preheader ]
  %i.akn = load float, ptr %.0603316.epil, align 4, !tbaa !68
  store float %i.akn, ptr %.43315.epil, align 4, !tbaa !68
  %i.ako = getelementptr inbounds nuw i8, ptr %.43315.epil, i64 4 ; 2 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %.0603316.epil, i64 %i.k
  %epil.iter560.next = add i32 %epil.iter560, 1   ; 2 uses
  %epil.iter560.cmp.not = icmp eq i32 %epil.iter560.next, %xtraiter559
  br i1 %epil.iter560.cmp.not, label %.loopexit, label %.lr.ph318.epil, !llvm.loop !148

.loopexit:                                        ; preds = %.loopexit.loopexit483.unr-lcssa, %.lr.ph318.epil, %.loopexit.loopexit482.unr-lcssa, %.lr.ph313.epil, %.loopexit.loopexit481.unr-lcssa, %.lr.ph308.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph303.epil, %bb.v, %.split446, %bb.w, %bb.x, %bb.y, %bb.z
  %.44 = phi ptr [ %.36321, %.split446 ], [ %.36321, %bb.z ], [ %i.akf, %.lr.ph303.epil ], [ %.36321, %bb.v ], [ %.36321, %bb.y ], [ %i.aki, %.lr.ph308.epil ], [ %.36321, %bb.x ], [ %.36321, %bb.w ], [ %i.akl, %.lr.ph313.epil ], [ %i.ahu, %.loopexit.loopexit.unr-lcssa ], [ %i.aik, %.loopexit.loopexit481.unr-lcssa ], [ %i.aja, %.loopexit.loopexit482.unr-lcssa ], [ %i.akc, %.loopexit.loopexit483.unr-lcssa ], [ %i.ako, %.lr.ph318.epil ]
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count
  br i1 %exitcond363.not, label %._crit_edge, label %bb.v, !llvm.loop !149

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 45 uses
  %i.l = icmp sgt i32 %2, 15
  br i1 %i.l, label %.lr.ph185, label %.preheader103

.lr.ph185:                                        ; preds = %bb.a
  %i.m = shl nsw i32 %3, 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp sgt i32 %4, 0                       ; 3 uses
  %i.p = shl nsw i32 %3, 3
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = shl nsw i32 %3, 2
  %i.s = sext i32 %i.r to i64                     ; 4 uses
  %i.t = sext i32 %3 to i64                       ; 16 uses
  %i.u = icmp sgt i32 %4, 15
  %i.v = and i32 %4, -16
  %i.w = zext nneg i32 %2 to i64
  %i.x = sext i32 %1 to i64                       ; 4 uses
  %i.y = add i32 %4, -1                           ; 3 uses
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %xtraiter = and i32 %4, 1
  %i.ac = icmp eq i32 %i.y, 0
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1208 = trunc i32 %4 to i1
  %xtraiter1209 = and i32 %4, 3                   ; 3 uses
  %i.ad = icmp ult i32 %i.y, 3
  %unroll_iter1213 = and i32 %4, 2147483644
  %lcmp.mod1210.not = icmp eq i32 %xtraiter1209, 0
  %lcmp.mod1212 = icmp ne i32 %xtraiter1209, 0
  %xtraiter1215 = and i32 %4, 7                   ; 3 uses
  %i.ae = icmp ult i32 %i.y, 7
  %unroll_iter1220 = and i32 %4, 2147483640
  %lcmp.mod1217.not = icmp eq i32 %xtraiter1215, 0
  %lcmp.mod1219 = icmp ne i32 %xtraiter1215, 0
  br label %bb.b

.preheader103.loopexit:                           ; preds = %.loopexit105
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.loopexit, %bb.a
  %.0586.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %.preheader103.loopexit ] ; 3 uses
  %.0583.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.9, %.preheader103.loopexit ] ; 2 uses
  %i.ag = or disjoint i32 %.0586.lcssa, 7
  %i.ah = icmp slt i32 %i.ag, %2
  br i1 %i.ah, label %.lr.ph234, label %.preheader98

.lr.ph234:                                        ; preds = %.preheader103
  %i.ai = shl nsw i32 %3, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp sgt i32 %4, 0                      ; 2 uses
  %i.al = shl nsw i32 %3, 2
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = sext i32 %3 to i64                      ; 8 uses
  %i.ao = icmp sgt i32 %4, 7
  %i.ap = and i32 %4, -8
  %i.aq = zext nneg i32 %.0586.lcssa to i64
  %i.ar = sext i32 %2 to i64
  %i.as = sext i32 %1 to i64                      ; 3 uses
  %invariant.op = add nsw i64 %i.ar, -7
  %i.at = add i32 %4, -1                          ; 2 uses
  %xtraiter1222 = and i32 %4, 3                   ; 3 uses
  %i.au = icmp ult i32 %i.at, 3
  %unroll_iter1227 = and i32 %4, 2147483644
  %lcmp.mod1224.not = icmp eq i32 %xtraiter1222, 0
  %lcmp.mod1226 = icmp ne i32 %xtraiter1222, 0
  %xtraiter1229 = and i32 %4, 7                   ; 3 uses
  %i.av = icmp ult i32 %i.at, 7
  %unroll_iter1234 = and i32 %4, 2147483640
  %lcmp.mod1231.not = icmp eq i32 %xtraiter1229, 0
  %lcmp.mod1233 = icmp ne i32 %xtraiter1229, 0
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph185, %.loopexit105
  %indvars.iv = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next, %.loopexit105 ] ; 5 uses
  %.0583184 = phi ptr [ %.0.val, %.lr.ph185 ], [ %.9, %.loopexit105 ] ; 13 uses
  br i1 %i.aa, label %.split, label %.loopexit105

.split:                                           ; preds = %bb.b
  switch i32 %i.ab, label %.loopexit105 [
    i32 4, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %.split
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit105

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aw = load ptr, ptr %0, align 8, !tbaa !18
  %i.ax = add nsw i64 %indvars.iv, %i.x
  %i.ay = mul i64 %i.k, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.n ; 2 uses
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1584111 = phi ptr [ %i.bx, %.lr.ph ], [ %.0583184, %.lr.ph.preheader ] ; 9 uses
  %.0600110 = phi ptr [ %i.by, %.lr.ph ], [ %i.ba, %.lr.ph.preheader ] ; 9 uses
  %niter1221 = phi i32 [ %niter1221.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bb = load <16 x float>, ptr %.0600110, align 64, !tbaa !116
  store <16 x float> %i.bb, ptr %.1584111, align 64, !tbaa !116
  %i.bc = getelementptr inbounds nuw i8, ptr %.1584111, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0600110, i64 64
  %i.be = load <16 x float>, ptr %i.bd, align 64, !tbaa !116
  store <16 x float> %i.be, ptr %i.bc, align 64, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %.1584111, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %.0600110, i64 128
  %i.bh = load <16 x float>, ptr %i.bg, align 64, !tbaa !116
  store <16 x float> %i.bh, ptr %i.bf, align 64, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.1584111, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %.0600110, i64 192
  %i.bk = load <16 x float>, ptr %i.bj, align 64, !tbaa !116
  store <16 x float> %i.bk, ptr %i.bi, align 64, !tbaa !116
  %i.bl = getelementptr inbounds nuw i8, ptr %.1584111, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %.0600110, i64 256
  %i.bn = load <16 x float>, ptr %i.bm, align 64, !tbaa !116
  store <16 x float> %i.bn, ptr %i.bl, align 64, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %.1584111, i64 320
  %i.bp = getelementptr inbounds nuw i8, ptr %.0600110, i64 320
  %i.bq = load <16 x float>, ptr %i.bp, align 64, !tbaa !116
  store <16 x float> %i.bq, ptr %i.bo, align 64, !tbaa !116
  %i.br = getelementptr inbounds nuw i8, ptr %.1584111, i64 384
  %i.bs = getelementptr inbounds nuw i8, ptr %.0600110, i64 384
  %i.bt = load <16 x float>, ptr %i.bs, align 64, !tbaa !116
  store <16 x float> %i.bt, ptr %i.br, align 64, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %.1584111, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %.0600110, i64 448
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !116
  store <16 x float> %i.bw, ptr %i.bu, align 64, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %.1584111, i64 512 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0600110, i64 512 ; 2 uses
  %niter1221.next.7 = add nuw nsw i32 %niter1221, 8 ; 2 uses
  %niter1221.ncmp.7 = icmp eq i32 %niter1221.next.7, %unroll_iter1220
  br i1 %niter1221.ncmp.7, label %.loopexit105.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !150

bb.d:                                             ; preds = %.split
  br i1 %i.o, label %.lr.ph116.preheader, label %.loopexit105

.lr.ph116.preheader:                              ; preds = %bb.d
  %i.bz = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ca = add nsw i64 %indvars.iv, %i.x           ; 2 uses
  %i.cb = add nsw i64 %i.ca, 8
  %i.cc = mul i64 %i.k, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.q ; 2 uses
  %i.cf = mul i64 %i.k, %i.ca
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.q ; 2 uses
  br i1 %i.ad, label %.lr.ph116.epil.preheader, label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %.lr.ph116
  %.3115 = phi ptr [ %i.dd, %.lr.ph116 ], [ %.0583184, %.lr.ph116.preheader ] ; 9 uses
  %.0602114 = phi ptr [ %i.de, %.lr.ph116 ], [ %i.ch, %.lr.ph116.preheader ] ; 5 uses
  %.0603113 = phi ptr [ %i.df, %.lr.ph116 ], [ %i.ce, %.lr.ph116.preheader ] ; 5 uses
  %niter1214 = phi i32 [ %niter1214.next.3, %.lr.ph116 ], [ 0, %.lr.ph116.preheader ]
  %i.ci = load <8 x float>, ptr %.0602114, align 32, !tbaa !116
  store <8 x float> %i.ci, ptr %.3115, align 32, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %.3115, i64 32
  %i.ck = load <8 x float>, ptr %.0603113, align 32, !tbaa !116
  store <8 x float> %i.ck, ptr %i.cj, align 32, !tbaa !116
  %i.cl = getelementptr inbounds nuw i8, ptr %.3115, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0602114, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %.0603113, i64 32
  %i.co = load <8 x float>, ptr %i.cm, align 32, !tbaa !116
  store <8 x float> %i.co, ptr %i.cl, align 32, !tbaa !116
  %i.cp = getelementptr inbounds nuw i8, ptr %.3115, i64 96
  %i.cq = load <8 x float>, ptr %i.cn, align 32, !tbaa !116
  store <8 x float> %i.cq, ptr %i.cp, align 32, !tbaa !116
  %i.cr = getelementptr inbounds nuw i8, ptr %.3115, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %.0602114, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0603113, i64 64
  %i.cu = load <8 x float>, ptr %i.cs, align 32, !tbaa !116
  store <8 x float> %i.cu, ptr %i.cr, align 32, !tbaa !116
  %i.cv = getelementptr inbounds nuw i8, ptr %.3115, i64 160
  %i.cw = load <8 x float>, ptr %i.ct, align 32, !tbaa !116
  store <8 x float> %i.cw, ptr %i.cv, align 32, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %.0580329 = phi ptr [ %i.apn, %.lr.ph332 ], [ %i.aow, %.lr.ph332.preheader ] ; 5 uses
  %.30328 = phi ptr [ %i.apm, %.lr.ph332 ], [ %.29350, %.lr.ph332.preheader ] ; 5 uses
  %niter1270 = phi i32 [ %niter1270.next.3, %.lr.ph332 ], [ 0, %.lr.ph332.preheader ]
  %i.apc = load <8 x float>, ptr %.0580329, align 1, !tbaa !116
  store <8 x float> %i.apc, ptr %.30328, align 1, !tbaa !116
  %i.apd = getelementptr inbounds nuw i8, ptr %.30328, i64 32
  %i.ape = getelementptr inbounds nuw i8, ptr %.0580329, i64 32
  %i.apf = load <8 x float>, ptr %i.ape, align 1, !tbaa !116
  store <8 x float> %i.apf, ptr %i.apd, align 1, !tbaa !116
  %i.apg = getelementptr inbounds nuw i8, ptr %.30328, i64 64
  %i.aph = getelementptr inbounds nuw i8, ptr %.0580329, i64 64
  %i.api = load <8 x float>, ptr %i.aph, align 1, !tbaa !116
  store <8 x float> %i.api, ptr %i.apg, align 1, !tbaa !116
  %i.apj = getelementptr inbounds nuw i8, ptr %.30328, i64 96
  %i.apk = getelementptr inbounds nuw i8, ptr %.0580329, i64 96
  %i.apl = load <8 x float>, ptr %i.apk, align 1, !tbaa !116
  store <8 x float> %i.apl, ptr %i.apj, align 1, !tbaa !116
  %i.apm = getelementptr inbounds nuw i8, ptr %.30328, i64 128 ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.0580329, i64 128 ; 3 uses
  %niter1270.next.3 = add i32 %niter1270, 4       ; 2 uses
  %niter1270.ncmp.3.not = icmp eq i32 %niter1270.next.3, %unroll_iter1269
  br i1 %niter1270.ncmp.3.not, label %.preheader90.loopexit.unr-lcssa, label %.lr.ph332, !llvm.loop !264

.preheader:                                       ; preds = %.lr.ph339, %.preheader90
  %.31.lcssa = phi ptr [ %.30.lcssa, %.preheader90 ], [ %i.aqx, %.lr.ph339 ] ; 7 uses
  %.1581.lcssa = phi ptr [ %.0580.lcssa, %.preheader90 ], [ %i.aqy, %.lr.ph339 ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader90 ], [ %i.aqz, %.lr.ph339 ] ; 5 uses
  %i.apo = icmp slt i32 %.1.lcssa, %4
  br i1 %i.apo, label %iter.check1125, label %._crit_edge347

iter.check1125:                                   ; preds = %.preheader
  %.1581.lcssa1104 = ptrtoaddr ptr %.1581.lcssa to i64
  %.31.lcssa1103 = ptrtoaddr ptr %.31.lcssa to i64
  %i.app = xor i32 %.1.lcssa, -1
  %i.apq = add i32 %4, %i.app                     ; 3 uses
  %i.apr = zext i32 %i.apq to i64
  %i.aps = add nuw nsw i64 %i.apr, 1              ; 5 uses
  %min.iters.check1105 = icmp ult i32 %i.apq, 7
  %i.apt = sub i64 %.1581.lcssa1104, %.31.lcssa1103
  %diff.check = icmp ugt i64 %i.apt, -256
  %or.cond = select i1 %min.iters.check1105, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph346.preheader, label %vector.main.loop.iter.check1106

vector.main.loop.iter.check1106:                  ; preds = %iter.check1125
  %min.iters.check1107 = icmp ult i32 %i.apq, 63
  br i1 %min.iters.check1107, label %vec.epilog.ph1129, label %vector.ph1108

vector.ph1108:                                    ; preds = %vector.main.loop.iter.check1106
  %i.apu = and i64 %i.aps, 56
  %n.vec1109 = and i64 %i.aps, 8589934528         ; 5 uses
  %i.apv = trunc i64 %n.vec1109 to i32
  %i.apw = add i32 %.1.lcssa, %i.apv
  %i.apx = shl nuw nsw i64 %n.vec1109, 2          ; 2 uses
  %i.apy = getelementptr i8, ptr %.1581.lcssa, i64 %i.apx
  %i.apz = getelementptr i8, ptr %.31.lcssa, i64 %i.apx ; 2 uses
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %vector.ph1108
  %index1111 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1118, %vector.body1110 ] ; 2 uses
  %i.aqa = shl i64 %index1111, 2                  ; 2 uses
  %next.gep1112 = getelementptr i8, ptr %.1581.lcssa, i64 %i.aqa ; 4 uses
  %next.gep1113 = getelementptr i8, ptr %.31.lcssa, i64 %i.aqa ; 4 uses
  %i.aqb = getelementptr i8, ptr %next.gep1112, i64 64
  %i.aqc = getelementptr i8, ptr %next.gep1112, i64 128
  %i.aqd = getelementptr i8, ptr %next.gep1112, i64 192
  %wide.load1114 = load <16 x float>, ptr %next.gep1112, align 4, !tbaa !68
  %wide.load1115 = load <16 x float>, ptr %i.aqb, align 4, !tbaa !68
  %wide.load1116 = load <16 x float>, ptr %i.aqc, align 4, !tbaa !68
  %wide.load1117 = load <16 x float>, ptr %i.aqd, align 4, !tbaa !68
  %i.aqe = getelementptr i8, ptr %next.gep1113, i64 64
  %i.aqf = getelementptr i8, ptr %next.gep1113, i64 128
  %i.aqg = getelementptr i8, ptr %next.gep1113, i64 192
  store <16 x float> %wide.load1114, ptr %next.gep1113, align 4, !tbaa !68
  store <16 x float> %wide.load1115, ptr %i.aqe, align 4, !tbaa !68
  store <16 x float> %wide.load1116, ptr %i.aqf, align 4, !tbaa !68
  store <16 x float> %wide.load1117, ptr %i.aqg, align 4, !tbaa !68
  %index.next1118 = add nuw i64 %index1111, 64    ; 2 uses
  %i.aqh = icmp eq i64 %index.next1118, %n.vec1109
  br i1 %i.aqh, label %middle.block1119, label %vector.body1110, !llvm.loop !265

middle.block1119:                                 ; preds = %vector.body1110
  %cmp.n1120 = icmp eq i64 %i.aps, %n.vec1109
  br i1 %cmp.n1120, label %._crit_edge347, label %vec.epilog.iter.check1127

vec.epilog.iter.check1127:                        ; preds = %middle.block1119
  %min.epilog.iters.check1128 = icmp eq i64 %i.apu, 0
  br i1 %min.epilog.iters.check1128, label %.lr.ph346.preheader, label %vec.epilog.ph1129, !prof !78

vec.epilog.ph1129:                                ; preds = %vector.main.loop.iter.check1106, %vec.epilog.iter.check1127
  %vec.epilog.resume.val1121 = phi i64 [ %n.vec1109, %vec.epilog.iter.check1127 ], [ 0, %vector.main.loop.iter.check1106 ]
  %n.vec1130 = and i64 %i.aps, 8589934584         ; 4 uses
  %i.aqi = trunc i64 %n.vec1130 to i32
  %i.aqj = add i32 %.1.lcssa, %i.aqi
  %i.aqk = shl nuw nsw i64 %n.vec1130, 2          ; 2 uses
  %i.aql = getelementptr i8, ptr %.1581.lcssa, i64 %i.aqk
  %i.aqm = getelementptr i8, ptr %.31.lcssa, i64 %i.aqk ; 2 uses
  br label %vec.epilog.vector.body1131

vec.epilog.vector.body1131:                       ; preds = %vec.epilog.vector.body1131, %vec.epilog.ph1129
  %index1132 = phi i64 [ %vec.epilog.resume.val1121, %vec.epilog.ph1129 ], [ %index.next1136, %vec.epilog.vector.body1131 ] ; 2 uses
  %i.aqn = shl i64 %index1132, 2                  ; 2 uses
  %next.gep1133 = getelementptr i8, ptr %.1581.lcssa, i64 %i.aqn
  %next.gep1134 = getelementptr i8, ptr %.31.lcssa, i64 %i.aqn
  %wide.load1135 = load <8 x float>, ptr %next.gep1133, align 4, !tbaa !68
  store <8 x float> %wide.load1135, ptr %next.gep1134, align 4, !tbaa !68
  %index.next1136 = add nuw i64 %index1132, 8     ; 2 uses
  %i.aqo = icmp eq i64 %index.next1136, %n.vec1130
  br i1 %i.aqo, label %vec.epilog.middle.block1137, label %vec.epilog.vector.body1131, !llvm.loop !266

vec.epilog.middle.block1137:                      ; preds = %vec.epilog.vector.body1131
  %cmp.n1138 = icmp eq i64 %i.aps, %n.vec1130
  br i1 %cmp.n1138, label %._crit_edge347, label %.lr.ph346.preheader

.lr.ph346.preheader:                              ; preds = %iter.check1125, %vec.epilog.iter.check1127, %vec.epilog.middle.block1137
  %.2345.ph = phi i32 [ %.1.lcssa, %iter.check1125 ], [ %i.apw, %vec.epilog.iter.check1127 ], [ %i.aqj, %vec.epilog.middle.block1137 ] ; 4 uses
  %.2582344.ph = phi ptr [ %.1581.lcssa, %iter.check1125 ], [ %i.apy, %vec.epilog.iter.check1127 ], [ %i.aql, %vec.epilog.middle.block1137 ] ; 2 uses
  %.32343.ph = phi ptr [ %.31.lcssa, %iter.check1125 ], [ %i.apz, %vec.epilog.iter.check1127 ], [ %i.aqm, %vec.epilog.middle.block1137 ] ; 2 uses
  %i.aqp = sub i32 %4, %.2345.ph
  %xtraiter1271 = and i32 %i.aqp, 7               ; 2 uses
  %lcmp.mod1272.not = icmp eq i32 %xtraiter1271, 0
  br i1 %lcmp.mod1272.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol

.lr.ph346.prol:                                   ; preds = %.lr.ph346.preheader, %.lr.ph346.prol
  %.2345.prol = phi i32 [ %i.aqt, %.lr.ph346.prol ], [ %.2345.ph, %.lr.ph346.preheader ]
  %.2582344.prol = phi ptr [ %i.aqs, %.lr.ph346.prol ], [ %.2582344.ph, %.lr.ph346.preheader ] ; 2 uses
  %.32343.prol = phi ptr [ %i.aqr, %.lr.ph346.prol ], [ %.32343.ph, %.lr.ph346.preheader ] ; 2 uses
  %prol.iter1273 = phi i32 [ %prol.iter1273.next, %.lr.ph346.prol ], [ 0, %.lr.ph346.preheader ]
  %i.aqq = load float, ptr %.2582344.prol, align 4, !tbaa !68
  store float %i.aqq, ptr %.32343.prol, align 4, !tbaa !68
  %i.aqr = getelementptr inbounds nuw i8, ptr %.32343.prol, i64 4 ; 3 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.2582344.prol, i64 4 ; 2 uses
  %i.aqt = add nuw nsw i32 %.2345.prol, 1         ; 2 uses
  %prol.iter1273.next = add i32 %prol.iter1273, 1 ; 2 uses
  %prol.iter1273.cmp.not = icmp eq i32 %prol.iter1273.next, %xtraiter1271
  br i1 %prol.iter1273.cmp.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol, !llvm.loop !267

.lr.ph346.prol.loopexit:                          ; preds = %.lr.ph346.prol, %.lr.ph346.preheader
  %.lcssa1146.unr = phi ptr [ poison, %.lr.ph346.preheader ], [ %i.aqr, %.lr.ph346.prol ]
  %.2345.unr = phi i32 [ %.2345.ph, %.lr.ph346.preheader ], [ %i.aqt, %.lr.ph346.prol ]
  %.2582344.unr = phi ptr [ %.2582344.ph, %.lr.ph346.preheader ], [ %i.aqs, %.lr.ph346.prol ]
  %.32343.unr = phi ptr [ %.32343.ph, %.lr.ph346.preheader ], [ %i.aqr, %.lr.ph346.prol ]
  %i.aqu = sub i32 %.2345.ph, %4
  %i.aqv = icmp ugt i32 %i.aqu, -8
  br i1 %i.aqv, label %._crit_edge347, label %.lr.ph346

.lr.ph339:                                        ; preds = %.preheader90, %.lr.ph339
  %.1338 = phi i32 [ %i.aqz, %.lr.ph339 ], [ %.0.lcssa, %.preheader90 ]
  %.1581337 = phi ptr [ %i.aqy, %.lr.ph339 ], [ %.0580.lcssa, %.preheader90 ] ; 2 uses
  %.31336 = phi ptr [ %i.aqx, %.lr.ph339 ], [ %.30.lcssa, %.preheader90 ] ; 2 uses
  %i.aqw = load <4 x float>, ptr %.1581337, align 1, !tbaa !116
  store <4 x float> %i.aqw, ptr %.31336, align 1, !tbaa !116
  %i.aqx = getelementptr inbounds nuw i8, ptr %.31336, i64 16 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.1581337, i64 16 ; 2 uses
  %i.aqz = add nuw nsw i32 %.1338, 4              ; 3 uses
  %i.ara = or disjoint i32 %i.aqz, 3
  %i.arb = icmp slt i32 %i.ara, %4
  br i1 %i.arb, label %.lr.ph339, label %.preheader, !llvm.loop !268

.lr.ph346:                                        ; preds = %.lr.ph346.prol.loopexit, %.lr.ph346
  %.2345 = phi i32 [ %i.asa, %.lr.ph346 ], [ %.2345.unr, %.lr.ph346.prol.loopexit ]
  %.2582344 = phi ptr [ %i.arz, %.lr.ph346 ], [ %.2582344.unr, %.lr.ph346.prol.loopexit ] ; 9 uses
  %.32343 = phi ptr [ %i.ary, %.lr.ph346 ], [ %.32343.unr, %.lr.ph346.prol.loopexit ] ; 9 uses
  %i.arc = load float, ptr %.2582344, align 4, !tbaa !68
  store float %i.arc, ptr %.32343, align 4, !tbaa !68
  %i.ard = getelementptr inbounds nuw i8, ptr %.32343, i64 4
  %i.are = getelementptr inbounds nuw i8, ptr %.2582344, i64 4
  %i.arf = load float, ptr %i.are, align 4, !tbaa !68
  store float %i.arf, ptr %i.ard, align 4, !tbaa !68
  %i.arg = getelementptr inbounds nuw i8, ptr %.32343, i64 8
  %i.arh = getelementptr inbounds nuw i8, ptr %.2582344, i64 8
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !68
  store float %i.ari, ptr %i.arg, align 4, !tbaa !68
  %i.arj = getelementptr inbounds nuw i8, ptr %.32343, i64 12
  %i.ark = getelementptr inbounds nuw i8, ptr %.2582344, i64 12
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !68
  store float %i.arl, ptr %i.arj, align 4, !tbaa !68
  %i.arm = getelementptr inbounds nuw i8, ptr %.32343, i64 16
  %i.arn = getelementptr inbounds nuw i8, ptr %.2582344, i64 16
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !68
  store float %i.aro, ptr %i.arm, align 4, !tbaa !68
  %i.arp = getelementptr inbounds nuw i8, ptr %.32343, i64 20
  %i.arq = getelementptr inbounds nuw i8, ptr %.2582344, i64 20
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !68
  store float %i.arr, ptr %i.arp, align 4, !tbaa !68
  %i.ars = getelementptr inbounds nuw i8, ptr %.32343, i64 24
  %i.art = getelementptr inbounds nuw i8, ptr %.2582344, i64 24
  %i.aru = load float, ptr %i.art, align 4, !tbaa !68
  store float %i.aru, ptr %i.ars, align 4, !tbaa !68
  %i.arv = getelementptr inbounds nuw i8, ptr %.32343, i64 28
  %i.arw = getelementptr inbounds nuw i8, ptr %.2582344, i64 28
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !68
  store float %i.arx, ptr %i.arv, align 4, !tbaa !68
  %i.ary = getelementptr inbounds nuw i8, ptr %.32343, i64 32 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.2582344, i64 32
  %i.asa = add nuw nsw i32 %.2345, 8              ; 2 uses
  %exitcond452.not.7 = icmp eq i32 %i.asa, %4
  br i1 %exitcond452.not.7, label %._crit_edge347, label %.lr.ph346, !llvm.loop !269

._crit_edge347:                                   ; preds = %.lr.ph346.prol.loopexit, %.lr.ph346, %middle.block1119, %vec.epilog.middle.block1137, %.preheader
  %.32.lcssa = phi ptr [ %.31.lcssa, %.preheader ], [ %i.aqm, %vec.epilog.middle.block1137 ], [ %i.apz, %middle.block1119 ], [ %.lcssa1146.unr, %.lr.ph346.prol.loopexit ], [ %i.ary, %.lr.ph346 ]
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond456.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count
  br i1 %exitcond456.not, label %._crit_edge352, label %bb.n, !llvm.loop !270

._crit_edge352:                                   ; preds = %._crit_edge347, %.preheader91
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !271 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15Gemm_x86_avx51215create_pipelineERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge, label %.noexc41.lr.ph

.noexc41.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 360 ; 2 uses
  br label %.noexc41

.noexc41:                                         ; preds = %.noexc41.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.068 = phi i32 [ %i.k, %.noexc41.lr.ph ], [ %i.aq, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.s = sdiv i32 %.068, %i.r                     ; 2 uses
  %i.t = srem i32 %.068, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.t                   ; 3 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !45
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 2 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !88, !noalias !273
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !273
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !273
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !273 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.p, align 4, !tbaa !86
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.aq = add nsw i32 %.068, 1
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.068, %i.ar
  br i1 %.not.not, label %.noexc41, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 45 uses
  %i.l = icmp sgt i32 %2, 15
  br i1 %i.l, label %.lr.ph186, label %.preheader104

.lr.ph186:                                        ; preds = %bb.a
  %i.m = shl nsw i32 %3, 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp sgt i32 %4, 0                       ; 3 uses
  %i.p = shl nsw i32 %3, 3
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = shl nsw i32 %3, 2
  %i.s = sext i32 %i.r to i64                     ; 4 uses
  %i.t = sext i32 %3 to i64                       ; 16 uses
  %i.u = icmp sgt i32 %4, 15
  %i.v = and i32 %4, -16
  %i.w = zext nneg i32 %2 to i64
  %i.x = sext i32 %1 to i64                       ; 4 uses
  %i.y = add i32 %4, -1                           ; 3 uses
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %xtraiter = and i32 %4, 1
  %i.ac = icmp eq i32 %i.y, 0
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1270 = trunc i32 %4 to i1
  %xtraiter1271 = and i32 %4, 3                   ; 3 uses
  %i.ad = icmp ult i32 %i.y, 3
  %unroll_iter1275 = and i32 %4, 2147483644
  %lcmp.mod1272.not = icmp eq i32 %xtraiter1271, 0
  %lcmp.mod1274 = icmp ne i32 %xtraiter1271, 0
  %xtraiter1277 = and i32 %4, 7                   ; 3 uses
  %i.ae = icmp ult i32 %i.y, 7
  %unroll_iter1282 = and i32 %4, 2147483640
  %lcmp.mod1279.not = icmp eq i32 %xtraiter1277, 0
  %lcmp.mod1281 = icmp ne i32 %xtraiter1277, 0
  br label %bb.b

.preheader104.loopexit:                           ; preds = %.loopexit106
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.loopexit, %bb.a
  %.0654.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %.preheader104.loopexit ] ; 3 uses
  %.0651.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.9, %.preheader104.loopexit ] ; 2 uses
  %i.ag = or disjoint i32 %.0654.lcssa, 7
  %i.ah = icmp slt i32 %i.ag, %2
  br i1 %i.ah, label %.lr.ph256, label %.preheader98

.lr.ph256:                                        ; preds = %.preheader104
  %i.ai = shl nsw i32 %3, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp sgt i32 %4, 0                      ; 2 uses
  %i.al = shl nsw i32 %3, 2
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = sext i32 %3 to i64                      ; 8 uses
  %i.ao = icmp sgt i32 %4, 7
  %i.ap = and i32 %4, -8
  %i.aq = zext nneg i32 %.0654.lcssa to i64
  %i.ar = sext i32 %2 to i64
  %i.as = sext i32 %1 to i64                      ; 3 uses
  %invariant.op = add nsw i64 %i.ar, -7
  %i.at = add i32 %4, -1                          ; 2 uses
  %xtraiter1284 = and i32 %4, 3                   ; 3 uses
  %i.au = icmp ult i32 %i.at, 3
  %unroll_iter1289 = and i32 %4, 2147483644
  %lcmp.mod1286.not = icmp eq i32 %xtraiter1284, 0
  %lcmp.mod1288 = icmp ne i32 %xtraiter1284, 0
  %xtraiter1291 = and i32 %4, 7                   ; 3 uses
  %i.av = icmp ult i32 %i.at, 7
  %unroll_iter1296 = and i32 %4, 2147483640
end_hunk_1
begin_hunk_2_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %.0648351 = phi ptr [ %i.arg, %.lr.ph354 ], [ %i.aqp, %.lr.ph354.preheader ] ; 5 uses
  %.31350 = phi ptr [ %i.arf, %.lr.ph354 ], [ %.30372, %.lr.ph354.preheader ] ; 5 uses
  %niter1332 = phi i32 [ %niter1332.next.3, %.lr.ph354 ], [ 0, %.lr.ph354.preheader ]
  %i.aqv = load <8 x float>, ptr %.0648351, align 1, !tbaa !116
  store <8 x float> %i.aqv, ptr %.31350, align 1, !tbaa !116
  %i.aqw = getelementptr inbounds nuw i8, ptr %.31350, i64 32
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0648351, i64 32
  %i.aqy = load <8 x float>, ptr %i.aqx, align 1, !tbaa !116
  store <8 x float> %i.aqy, ptr %i.aqw, align 1, !tbaa !116
  %i.aqz = getelementptr inbounds nuw i8, ptr %.31350, i64 64
  %i.ara = getelementptr inbounds nuw i8, ptr %.0648351, i64 64
  %i.arb = load <8 x float>, ptr %i.ara, align 1, !tbaa !116
  store <8 x float> %i.arb, ptr %i.aqz, align 1, !tbaa !116
  %i.arc = getelementptr inbounds nuw i8, ptr %.31350, i64 96
  %i.ard = getelementptr inbounds nuw i8, ptr %.0648351, i64 96
  %i.are = load <8 x float>, ptr %i.ard, align 1, !tbaa !116
  store <8 x float> %i.are, ptr %i.arc, align 1, !tbaa !116
  %i.arf = getelementptr inbounds nuw i8, ptr %.31350, i64 128 ; 3 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.0648351, i64 128 ; 3 uses
  %niter1332.next.3 = add i32 %niter1332, 4       ; 2 uses
  %niter1332.ncmp.3.not = icmp eq i32 %niter1332.next.3, %unroll_iter1331
  br i1 %niter1332.ncmp.3.not, label %.preheader90.loopexit.unr-lcssa, label %.lr.ph354, !llvm.loop !389

.preheader:                                       ; preds = %.lr.ph361, %.preheader90
  %.32.lcssa = phi ptr [ %.31.lcssa, %.preheader90 ], [ %i.asq, %.lr.ph361 ] ; 7 uses
  %.1649.lcssa = phi ptr [ %.0648.lcssa, %.preheader90 ], [ %i.asr, %.lr.ph361 ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader90 ], [ %i.ass, %.lr.ph361 ] ; 5 uses
  %i.arh = icmp slt i32 %.1.lcssa, %4
  br i1 %i.arh, label %iter.check1177, label %._crit_edge369

iter.check1177:                                   ; preds = %.preheader
  %.1649.lcssa1156 = ptrtoaddr ptr %.1649.lcssa to i64
  %.32.lcssa1155 = ptrtoaddr ptr %.32.lcssa to i64
  %i.ari = xor i32 %.1.lcssa, -1
  %i.arj = add i32 %4, %i.ari                     ; 3 uses
  %i.ark = zext i32 %i.arj to i64
  %i.arl = add nuw nsw i64 %i.ark, 1              ; 5 uses
  %min.iters.check1157 = icmp ult i32 %i.arj, 7
  %i.arm = sub i64 %.1649.lcssa1156, %.32.lcssa1155
  %diff.check = icmp ugt i64 %i.arm, -256
  %or.cond = select i1 %min.iters.check1157, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph368.preheader, label %vector.main.loop.iter.check1158

vector.main.loop.iter.check1158:                  ; preds = %iter.check1177
  %min.iters.check1159 = icmp ult i32 %i.arj, 63
  br i1 %min.iters.check1159, label %vec.epilog.ph1181, label %vector.ph1160

vector.ph1160:                                    ; preds = %vector.main.loop.iter.check1158
  %i.arn = and i64 %i.arl, 56
  %n.vec1161 = and i64 %i.arl, 8589934528         ; 5 uses
  %i.aro = trunc i64 %n.vec1161 to i32
  %i.arp = add i32 %.1.lcssa, %i.aro
  %i.arq = shl nuw nsw i64 %n.vec1161, 2          ; 2 uses
  %i.arr = getelementptr i8, ptr %.1649.lcssa, i64 %i.arq
  %i.ars = getelementptr i8, ptr %.32.lcssa, i64 %i.arq ; 2 uses
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1170, %vector.body1162 ] ; 2 uses
  %i.art = shl i64 %index1163, 2                  ; 2 uses
  %next.gep1164 = getelementptr i8, ptr %.1649.lcssa, i64 %i.art ; 4 uses
  %next.gep1165 = getelementptr i8, ptr %.32.lcssa, i64 %i.art ; 4 uses
  %i.aru = getelementptr i8, ptr %next.gep1164, i64 64
  %i.arv = getelementptr i8, ptr %next.gep1164, i64 128
  %i.arw = getelementptr i8, ptr %next.gep1164, i64 192
  %wide.load1166 = load <16 x float>, ptr %next.gep1164, align 4, !tbaa !68
  %wide.load1167 = load <16 x float>, ptr %i.aru, align 4, !tbaa !68
  %wide.load1168 = load <16 x float>, ptr %i.arv, align 4, !tbaa !68
  %wide.load1169 = load <16 x float>, ptr %i.arw, align 4, !tbaa !68
  %i.arx = getelementptr i8, ptr %next.gep1165, i64 64
  %i.ary = getelementptr i8, ptr %next.gep1165, i64 128
  %i.arz = getelementptr i8, ptr %next.gep1165, i64 192
  store <16 x float> %wide.load1166, ptr %next.gep1165, align 4, !tbaa !68
  store <16 x float> %wide.load1167, ptr %i.arx, align 4, !tbaa !68
  store <16 x float> %wide.load1168, ptr %i.ary, align 4, !tbaa !68
  store <16 x float> %wide.load1169, ptr %i.arz, align 4, !tbaa !68
  %index.next1170 = add nuw i64 %index1163, 64    ; 2 uses
  %i.asa = icmp eq i64 %index.next1170, %n.vec1161
  br i1 %i.asa, label %middle.block1171, label %vector.body1162, !llvm.loop !390

middle.block1171:                                 ; preds = %vector.body1162
  %cmp.n1172 = icmp eq i64 %i.arl, %n.vec1161
  br i1 %cmp.n1172, label %._crit_edge369, label %vec.epilog.iter.check1179

vec.epilog.iter.check1179:                        ; preds = %middle.block1171
  %min.epilog.iters.check1180 = icmp eq i64 %i.arn, 0
  br i1 %min.epilog.iters.check1180, label %.lr.ph368.preheader, label %vec.epilog.ph1181, !prof !78

vec.epilog.ph1181:                                ; preds = %vector.main.loop.iter.check1158, %vec.epilog.iter.check1179
  %vec.epilog.resume.val1173 = phi i64 [ %n.vec1161, %vec.epilog.iter.check1179 ], [ 0, %vector.main.loop.iter.check1158 ]
  %n.vec1182 = and i64 %i.arl, 8589934584         ; 4 uses
  %i.asb = trunc i64 %n.vec1182 to i32
  %i.asc = add i32 %.1.lcssa, %i.asb
  %i.asd = shl nuw nsw i64 %n.vec1182, 2          ; 2 uses
  %i.ase = getelementptr i8, ptr %.1649.lcssa, i64 %i.asd
  %i.asf = getelementptr i8, ptr %.32.lcssa, i64 %i.asd ; 2 uses
  br label %vec.epilog.vector.body1183

vec.epilog.vector.body1183:                       ; preds = %vec.epilog.vector.body1183, %vec.epilog.ph1181
  %index1184 = phi i64 [ %vec.epilog.resume.val1173, %vec.epilog.ph1181 ], [ %index.next1188, %vec.epilog.vector.body1183 ] ; 2 uses
  %i.asg = shl i64 %index1184, 2                  ; 2 uses
  %next.gep1185 = getelementptr i8, ptr %.1649.lcssa, i64 %i.asg
  %next.gep1186 = getelementptr i8, ptr %.32.lcssa, i64 %i.asg
  %wide.load1187 = load <8 x float>, ptr %next.gep1185, align 4, !tbaa !68
  store <8 x float> %wide.load1187, ptr %next.gep1186, align 4, !tbaa !68
  %index.next1188 = add nuw i64 %index1184, 8     ; 2 uses
  %i.ash = icmp eq i64 %index.next1188, %n.vec1182
  br i1 %i.ash, label %vec.epilog.middle.block1189, label %vec.epilog.vector.body1183, !llvm.loop !391

vec.epilog.middle.block1189:                      ; preds = %vec.epilog.vector.body1183
  %cmp.n1190 = icmp eq i64 %i.arl, %n.vec1182
  br i1 %cmp.n1190, label %._crit_edge369, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check1177, %vec.epilog.iter.check1179, %vec.epilog.middle.block1189
  %.2367.ph = phi i32 [ %.1.lcssa, %iter.check1177 ], [ %i.arp, %vec.epilog.iter.check1179 ], [ %i.asc, %vec.epilog.middle.block1189 ] ; 4 uses
  %.2650366.ph = phi ptr [ %.1649.lcssa, %iter.check1177 ], [ %i.arr, %vec.epilog.iter.check1179 ], [ %i.ase, %vec.epilog.middle.block1189 ] ; 2 uses
  %.33365.ph = phi ptr [ %.32.lcssa, %iter.check1177 ], [ %i.ars, %vec.epilog.iter.check1179 ], [ %i.asf, %vec.epilog.middle.block1189 ] ; 2 uses
  %i.asi = sub i32 %4, %.2367.ph
  %xtraiter1333 = and i32 %i.asi, 7               ; 2 uses
  %lcmp.mod1334.not = icmp eq i32 %xtraiter1333, 0
  br i1 %lcmp.mod1334.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %.2367.prol = phi i32 [ %i.asm, %.lr.ph368.prol ], [ %.2367.ph, %.lr.ph368.preheader ]
  %.2650366.prol = phi ptr [ %i.asl, %.lr.ph368.prol ], [ %.2650366.ph, %.lr.ph368.preheader ] ; 2 uses
  %.33365.prol = phi ptr [ %i.ask, %.lr.ph368.prol ], [ %.33365.ph, %.lr.ph368.preheader ] ; 2 uses
  %prol.iter1335 = phi i32 [ %prol.iter1335.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.asj = load float, ptr %.2650366.prol, align 4, !tbaa !68
  store float %i.asj, ptr %.33365.prol, align 4, !tbaa !68
  %i.ask = getelementptr inbounds nuw i8, ptr %.33365.prol, i64 4 ; 3 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.2650366.prol, i64 4 ; 2 uses
  %i.asm = add nuw nsw i32 %.2367.prol, 1         ; 2 uses
  %prol.iter1335.next = add i32 %prol.iter1335, 1 ; 2 uses
  %prol.iter1335.cmp.not = icmp eq i32 %prol.iter1335.next, %xtraiter1333
  br i1 %prol.iter1335.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !392

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %.lcssa1198.unr = phi ptr [ poison, %.lr.ph368.preheader ], [ %i.ask, %.lr.ph368.prol ]
  %.2367.unr = phi i32 [ %.2367.ph, %.lr.ph368.preheader ], [ %i.asm, %.lr.ph368.prol ]
  %.2650366.unr = phi ptr [ %.2650366.ph, %.lr.ph368.preheader ], [ %i.asl, %.lr.ph368.prol ]
  %.33365.unr = phi ptr [ %.33365.ph, %.lr.ph368.preheader ], [ %i.ask, %.lr.ph368.prol ]
  %i.asn = sub i32 %.2367.ph, %4
  %i.aso = icmp ugt i32 %i.asn, -8
  br i1 %i.aso, label %._crit_edge369, label %.lr.ph368

.lr.ph361:                                        ; preds = %.preheader90, %.lr.ph361
  %.1360 = phi i32 [ %i.ass, %.lr.ph361 ], [ %.0.lcssa, %.preheader90 ]
  %.1649359 = phi ptr [ %i.asr, %.lr.ph361 ], [ %.0648.lcssa, %.preheader90 ] ; 2 uses
  %.32358 = phi ptr [ %i.asq, %.lr.ph361 ], [ %.31.lcssa, %.preheader90 ] ; 2 uses
  %i.asp = load <4 x float>, ptr %.1649359, align 1, !tbaa !116
  store <4 x float> %i.asp, ptr %.32358, align 1, !tbaa !116
  %i.asq = getelementptr inbounds nuw i8, ptr %.32358, i64 16 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %.1649359, i64 16 ; 2 uses
  %i.ass = add nuw nsw i32 %.1360, 4              ; 3 uses
  %i.ast = or disjoint i32 %i.ass, 3
  %i.asu = icmp slt i32 %i.ast, %4
  br i1 %i.asu, label %.lr.ph361, label %.preheader, !llvm.loop !393

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %.2367 = phi i32 [ %i.att, %.lr.ph368 ], [ %.2367.unr, %.lr.ph368.prol.loopexit ]
  %.2650366 = phi ptr [ %i.ats, %.lr.ph368 ], [ %.2650366.unr, %.lr.ph368.prol.loopexit ] ; 9 uses
  %.33365 = phi ptr [ %i.atr, %.lr.ph368 ], [ %.33365.unr, %.lr.ph368.prol.loopexit ] ; 9 uses
  %i.asv = load float, ptr %.2650366, align 4, !tbaa !68
  store float %i.asv, ptr %.33365, align 4, !tbaa !68
  %i.asw = getelementptr inbounds nuw i8, ptr %.33365, i64 4
  %i.asx = getelementptr inbounds nuw i8, ptr %.2650366, i64 4
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !68
  store float %i.asy, ptr %i.asw, align 4, !tbaa !68
  %i.asz = getelementptr inbounds nuw i8, ptr %.33365, i64 8
  %i.ata = getelementptr inbounds nuw i8, ptr %.2650366, i64 8
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !68
  store float %i.atb, ptr %i.asz, align 4, !tbaa !68
  %i.atc = getelementptr inbounds nuw i8, ptr %.33365, i64 12
  %i.atd = getelementptr inbounds nuw i8, ptr %.2650366, i64 12
  %i.ate = load float, ptr %i.atd, align 4, !tbaa !68
  store float %i.ate, ptr %i.atc, align 4, !tbaa !68
  %i.atf = getelementptr inbounds nuw i8, ptr %.33365, i64 16
  %i.atg = getelementptr inbounds nuw i8, ptr %.2650366, i64 16
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !68
  store float %i.ath, ptr %i.atf, align 4, !tbaa !68
  %i.ati = getelementptr inbounds nuw i8, ptr %.33365, i64 20
  %i.atj = getelementptr inbounds nuw i8, ptr %.2650366, i64 20
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !68
  store float %i.atk, ptr %i.ati, align 4, !tbaa !68
  %i.atl = getelementptr inbounds nuw i8, ptr %.33365, i64 24
  %i.atm = getelementptr inbounds nuw i8, ptr %.2650366, i64 24
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !68
  store float %i.atn, ptr %i.atl, align 4, !tbaa !68
  %i.ato = getelementptr inbounds nuw i8, ptr %.33365, i64 28
  %i.atp = getelementptr inbounds nuw i8, ptr %.2650366, i64 28
  %i.atq = load float, ptr %i.atp, align 4, !tbaa !68
  store float %i.atq, ptr %i.ato, align 4, !tbaa !68
  %i.atr = getelementptr inbounds nuw i8, ptr %.33365, i64 32 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.2650366, i64 32
  %i.att = add nuw nsw i32 %.2367, 8              ; 2 uses
  %exitcond484.not.7 = icmp eq i32 %i.att, %4
  br i1 %exitcond484.not.7, label %._crit_edge369, label %.lr.ph368, !llvm.loop !394

._crit_edge369:                                   ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368, %middle.block1171, %vec.epilog.middle.block1189, %.preheader
  %.33.lcssa = phi ptr [ %.32.lcssa, %.preheader ], [ %i.asf, %vec.epilog.middle.block1189 ], [ %i.ars, %middle.block1171 ], [ %.lcssa1198.unr, %.lr.ph368.prol.loopexit ], [ %i.atr, %.lr.ph368 ]
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next486, %wide.trip.count
  br i1 %exitcond488.not, label %._crit_edge374, label %bb.n, !llvm.loop !395

._crit_edge374:                                   ; preds = %._crit_edge369, %.preheader91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 57 uses
  %i.l = icmp sgt i32 %2, 15
  br i1 %i.l, label %.lr.ph222, label %.preheader197

.lr.ph222:                                        ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 4 uses
  %i.o = icmp sgt i32 %4, 15
  %.idx663 = shl i64 %i.k, 6
  %i.p = icmp sgt i32 %4, 7
  %.idx662 = shl i64 %i.k, 5
  %i.q = icmp sgt i32 %4, 3
  %.idx661 = shl i64 %i.k, 4
  %i.r = icmp sgt i32 %4, 0
  %i.s = zext nneg i32 %2 to i64
  %i.t = sext i32 %1 to i64                       ; 4 uses
  %i.u = add i32 %4, -1
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.w = icmp eq i32 %i.v, 1
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.y = icmp ult i32 %i.u, 7
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod516 = icmp ne i32 %xtraiter, 0
  br label %bb.b

.preheader197.loopexit:                           ; preds = %.loopexit198
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.loopexit, %bb.a
  %.0615.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %.preheader197.loopexit ] ; 3 uses
  %.0614.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.8, %.preheader197.loopexit ] ; 2 uses
  %i.aa = or disjoint i32 %.0615.lcssa, 7
  %i.ab = icmp slt i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph247, label %.preheader192

.lr.ph247:                                        ; preds = %.preheader197
  %i.ac = sext i32 %3 to i64
  %i.ad = mul i64 %i.k, %i.ac                     ; 4 uses
  %i.ae = icmp sgt i32 %4, 15
  %.idx660 = shl i64 %i.k, 6
  %i.af = icmp sgt i32 %4, 7
  %.idx659 = shl i64 %i.k, 5
  %i.ag = icmp sgt i32 %4, 3
  %.idx658 = shl i64 %i.k, 4
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = zext nneg i32 %.0615.lcssa to i64
  %i.aj = sext i32 %2 to i64
  %i.ak = sext i32 %1 to i64                      ; 4 uses
  %invariant.op = add nsw i64 %i.aj, -7
  %i.al = add i32 %4, -1
  %i.am = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %xtraiter517 = and i32 %4, 3                    ; 3 uses
  %i.ap = icmp ult i32 %i.al, 3
  %unroll_iter522 = and i32 %4, 2147483644
  %lcmp.mod519.not = icmp eq i32 %xtraiter517, 0
  %lcmp.mod521 = icmp ne i32 %xtraiter517, 0
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph222, %.loopexit198
  %indvars.iv = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next, %.loopexit198 ] ; 5 uses
  %.0614221 = phi ptr [ %.0.val, %.lr.ph222 ], [ %.8, %.loopexit198 ] ; 11 uses
  br i1 %i.w, label %.split, label %.loopexit198

.split:                                           ; preds = %bb.b
  switch i32 %i.x, label %.loopexit198 [
    i32 4, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %.split
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit198

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aq = load ptr, ptr %0, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.n
  %i.as = add nsw i64 %indvars.iv, %i.t
  %.idx377 = shl nsw i64 %i.as, 6
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %.idx377
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1204 = phi ptr [ %i.fa, %.lr.ph ], [ %.0614221, %.lr.ph.preheader ] ; 17 uses
  %.0628203 = phi ptr [ %i.fb, %.lr.ph ], [ %i.at, %.lr.ph.preheader ] ; 17 uses
  %.0629202 = phi i32 [ %i.fc, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.au = load <16 x float>, ptr %.0628203, align 64, !tbaa !116 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0628203, i64 64
  %i.aw = load <16 x float>, ptr %i.av, align 64, !tbaa !116 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0628203, i64 128
  %i.ay = load <16 x float>, ptr %i.ax, align 64, !tbaa !116 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0628203, i64 192
  %i.ba = load <16 x float>, ptr %i.az, align 64, !tbaa !116 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0628203, i64 256
  %i.bc = load <16 x float>, ptr %i.bb, align 64, !tbaa !116 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0628203, i64 320
  %i.be = load <16 x float>, ptr %i.bd, align 64, !tbaa !116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0628203, i64 384
  %i.bg = load <16 x float>, ptr %i.bf, align 64, !tbaa !116 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0628203, i64 448
  %i.bi = load <16 x float>, ptr %i.bh, align 64, !tbaa !116 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0628203, i64 512
  %i.bk = load <16 x float>, ptr %i.bj, align 64, !tbaa !116 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0628203, i64 576
  %i.bm = load <16 x float>, ptr %i.bl, align 64, !tbaa !116 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0628203, i64 640
  %i.bo = load <16 x float>, ptr %i.bn, align 64, !tbaa !116 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0628203, i64 704
  %i.bq = load <16 x float>, ptr %i.bp, align 64, !tbaa !116 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0628203, i64 768
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !116 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0628203, i64 832
  %i.bu = load <16 x float>, ptr %i.bt, align 64, !tbaa !116 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0628203, i64 896
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !116 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0628203, i64 960
  %i.by = load <16 x float>, ptr %i.bx, align 64, !tbaa !116 ; 2 uses
  %i.bz = shufflevector <16 x float> %i.au, <16 x float> %i.aw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ca = shufflevector <16 x float> %i.au, <16 x float> %i.aw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cb = shufflevector <16 x float> %i.ay, <16 x float> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cc = shufflevector <16 x float> %i.ay, <16 x float> %i.ba, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cd = shufflevector <16 x float> %i.bc, <16 x float> %i.be, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ce = shufflevector <16 x float> %i.bc, <16 x float> %i.be, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cf = shufflevector <16 x float> %i.bg, <16 x float> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cg = shufflevector <16 x float> %i.bg, <16 x float> %i.bi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ch = shufflevector <16 x float> %i.bk, <16 x float> %i.bm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ci = shufflevector <16 x float> %i.bk, <16 x float> %i.bm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cj = shufflevector <16 x float> %i.bo, <16 x float> %i.bq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ck = shufflevector <16 x float> %i.bo, <16 x float> %i.bq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cl = shufflevector <16 x float> %i.bs, <16 x float> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cm = shufflevector <16 x float> %i.bs, <16 x float> %i.bu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cn = shufflevector <16 x float> %i.bw, <16 x float> %i.by, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.co = shufflevector <16 x float> %i.bw, <16 x float> %i.by, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cp = shufflevector <16 x float> %i.bz, <16 x float> %i.cb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cq = shufflevector <16 x float> %i.bz, <16 x float> %i.cb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cr = shufflevector <16 x float> %i.ca, <16 x float> %i.cc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cs = shufflevector <16 x float> %i.ca, <16 x float> %i.cc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ct = shufflevector <16 x float> %i.cd, <16 x float> %i.cf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cu = shufflevector <16 x float> %i.cd, <16 x float> %i.cf, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cv = shufflevector <16 x float> %i.ce, <16 x float> %i.cg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cw = shufflevector <16 x float> %i.ce, <16 x float> %i.cg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cx = shufflevector <16 x float> %i.ch, <16 x float> %i.cj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cy = shufflevector <16 x float> %i.ch, <16 x float> %i.cj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cz = shufflevector <16 x float> %i.ci, <16 x float> %i.ck, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.da = shufflevector <16 x float> %i.ci, <16 x float> %i.ck, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.db = shufflevector <16 x float> %i.cl, <16 x float> %i.cn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dc = shufflevector <16 x float> %i.cl, <16 x float> %i.cn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.dd = shufflevector <16 x float> %i.cm, <16 x float> %i.co, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.de = shufflevector <16 x float> %i.cm, <16 x float> %i.co, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.df = shufflevector <16 x float> %i.cp, <16 x float> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dg = shufflevector <16 x float> %i.cx, <16 x float> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dh = shufflevector <16 x float> %i.cq, <16 x float> %i.cu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.di = shufflevector <16 x float> %i.cy, <16 x float> %i.dc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dj = shufflevector <16 x float> %i.cr, <16 x float> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dk = shufflevector <16 x float> %i.cz, <16 x float> %i.dd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dl = shufflevector <16 x float> %i.cs, <16 x float> %i.cw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dm = shufflevector <16 x float> %i.da, <16 x float> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dn = shufflevector <16 x float> %i.cp, <16 x float> %i.ct, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.do = shufflevector <16 x float> %i.cx, <16 x float> %i.db, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dp = shufflevector <16 x float> %i.cq, <16 x float> %i.cu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x float> %i.cy, <16 x float> %i.dc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.cr, <16 x float> %i.cv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ds = shufflevector <16 x float> %i.cz, <16 x float> %i.dd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dt = shufflevector <16 x float> %i.cs, <16 x float> %i.cw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.du = shufflevector <16 x float> %i.da, <16 x float> %i.de, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dv = shufflevector <16 x float> %i.df, <16 x float> %i.dg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dw = shufflevector <16 x float> %i.dh, <16 x float> %i.di, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dx = shufflevector <16 x float> %i.dj, <16 x float> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dy = shufflevector <16 x float> %i.dl, <16 x float> %i.dm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dz = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ea = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.eb = shufflevector <16 x float> %i.dr, <16 x float> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ec = shufflevector <16 x float> %i.dt, <16 x float> %i.du, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ed = shufflevector <16 x float> %i.df, <16 x float> %i.dg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ee = shufflevector <16 x float> %i.dh, <16 x float> %i.di, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
end_hunk_2
begin_hunk_3_@_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %i.aib = add nsw i64 %indvars.iv360, %i.acf
  %.idx390 = shl nsw i64 %i.aib, 5
  %i.aic = getelementptr inbounds i8, ptr %i.aia, i64 %.idx390 ; 2 uses
  br i1 %i.acv, label %.lr.ph308.epil.preheader, label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %.lr.ph308
  %.0609306 = phi ptr [ %i.aio, %.lr.ph308 ], [ %i.aic, %.lr.ph308.preheader ] ; 2 uses
  %.39305 = phi ptr [ %i.ain, %.lr.ph308 ], [ %.36321, %.lr.ph308.preheader ] ; 5 uses
  %niter579 = phi i32 [ %niter579.next.3, %.lr.ph308 ], [ 0, %.lr.ph308.preheader ]
  %i.aid = load <8 x float>, ptr %.0609306, align 32, !tbaa !116
  store <8 x float> %i.aid, ptr %.39305, align 32, !tbaa !116
  %i.aie = getelementptr inbounds nuw i8, ptr %.39305, i64 32
  %i.aif = getelementptr inbounds nuw i8, ptr %.0609306, i64 %.idx650 ; 2 uses
  %i.aig = load <8 x float>, ptr %i.aif, align 32, !tbaa !116
  store <8 x float> %i.aig, ptr %i.aie, align 32, !tbaa !116
  %i.aih = getelementptr inbounds nuw i8, ptr %.39305, i64 64
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 %.idx650 ; 2 uses
  %i.aij = load <8 x float>, ptr %i.aii, align 32, !tbaa !116
  store <8 x float> %i.aij, ptr %i.aih, align 32, !tbaa !116
  %i.aik = getelementptr inbounds nuw i8, ptr %.39305, i64 96
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aii, i64 %.idx650 ; 2 uses
  %i.aim = load <8 x float>, ptr %i.ail, align 32, !tbaa !116
  store <8 x float> %i.aim, ptr %i.aik, align 32, !tbaa !116
  %i.ain = getelementptr inbounds nuw i8, ptr %.39305, i64 128 ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 %.idx650 ; 2 uses
  %niter579.next.3 = add i32 %niter579, 4         ; 2 uses
  %niter579.ncmp.3.not = icmp eq i32 %niter579.next.3, %unroll_iter578
  br i1 %niter579.ncmp.3.not, label %.loopexit.loopexit481.unr-lcssa, label %.lr.ph308, !llvm.loop !421

bb.y:                                             ; preds = %.split446
  br i1 %i.acc, label %.lr.ph313.preheader, label %.loopexit

.lr.ph313.preheader:                              ; preds = %bb.y
  %i.aip = load ptr, ptr %0, align 8, !tbaa !18
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.abz
  %i.air = add nsw i64 %indvars.iv360, %i.acf
  %.idx391 = shl nsw i64 %i.air, 4
  %i.ais = getelementptr inbounds i8, ptr %i.aiq, i64 %.idx391 ; 2 uses
  br i1 %i.acu, label %.lr.ph313.epil.preheader, label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %.lr.ph313
  %.0607311 = phi ptr [ %i.aje, %.lr.ph313 ], [ %i.ais, %.lr.ph313.preheader ] ; 2 uses
  %.41310 = phi ptr [ %i.ajd, %.lr.ph313 ], [ %.36321, %.lr.ph313.preheader ] ; 5 uses
  %niter572 = phi i32 [ %niter572.next.3, %.lr.ph313 ], [ 0, %.lr.ph313.preheader ]
  %i.ait = load <4 x float>, ptr %.0607311, align 16, !tbaa !116
  store <4 x float> %i.ait, ptr %.41310, align 16, !tbaa !116
  %i.aiu = getelementptr inbounds nuw i8, ptr %.41310, i64 16
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0607311, i64 %.idx ; 2 uses
  %i.aiw = load <4 x float>, ptr %i.aiv, align 16, !tbaa !116
  store <4 x float> %i.aiw, ptr %i.aiu, align 16, !tbaa !116
  %i.aix = getelementptr inbounds nuw i8, ptr %.41310, i64 32
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %.idx ; 2 uses
  %i.aiz = load <4 x float>, ptr %i.aiy, align 16, !tbaa !116
  store <4 x float> %i.aiz, ptr %i.aix, align 16, !tbaa !116
  %i.aja = getelementptr inbounds nuw i8, ptr %.41310, i64 48
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.idx ; 2 uses
  %i.ajc = load <4 x float>, ptr %i.ajb, align 16, !tbaa !116
  store <4 x float> %i.ajc, ptr %i.aja, align 16, !tbaa !116
  %i.ajd = getelementptr inbounds nuw i8, ptr %.41310, i64 64 ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %.idx ; 2 uses
  %niter572.next.3 = add nuw nsw i32 %niter572, 4 ; 2 uses
  %niter572.ncmp.3.not = icmp eq i32 %niter572.next.3, %unroll_iter571
  br i1 %niter572.ncmp.3.not, label %.loopexit.loopexit482.unr-lcssa, label %.lr.ph313, !llvm.loop !422

bb.z:                                             ; preds = %.split446
  br i1 %i.acd, label %.lr.ph318.preheader, label %.loopexit

.lr.ph318.preheader:                              ; preds = %bb.z
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !18
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.abz
  %i.ajh = getelementptr [4 x i8], ptr %i.ajg, i64 %indvars.iv360
  %i.aji = getelementptr [4 x i8], ptr %i.ajh, i64 %i.acf ; 2 uses
  br i1 %i.act, label %.lr.ph318.epil.preheader, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %.0605316 = phi ptr [ %i.akg, %.lr.ph318 ], [ %i.aji, %.lr.ph318.preheader ] ; 2 uses
  %.43315 = phi ptr [ %i.akf, %.lr.ph318 ], [ %.36321, %.lr.ph318.preheader ] ; 9 uses
  %niter565 = phi i32 [ %niter565.next.7, %.lr.ph318 ], [ 0, %.lr.ph318.preheader ]
  %i.ajj = load float, ptr %.0605316, align 4, !tbaa !68
  store float %i.ajj, ptr %.43315, align 4, !tbaa !68
  %i.ajk = getelementptr inbounds nuw i8, ptr %.43315, i64 4
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0605316, i64 %i.k ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !68
  store float %i.ajm, ptr %i.ajk, align 4, !tbaa !68
  %i.ajn = getelementptr inbounds nuw i8, ptr %.43315, i64 8
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.k ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !68
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !68
  %i.ajq = getelementptr inbounds nuw i8, ptr %.43315, i64 12
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.k ; 2 uses
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !68
  store float %i.ajs, ptr %i.ajq, align 4, !tbaa !68
  %i.ajt = getelementptr inbounds nuw i8, ptr %.43315, i64 16
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.k ; 2 uses
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !68
  store float %i.ajv, ptr %i.ajt, align 4, !tbaa !68
  %i.ajw = getelementptr inbounds nuw i8, ptr %.43315, i64 20
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.k ; 2 uses
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !68
  store float %i.ajy, ptr %i.ajw, align 4, !tbaa !68
  %i.ajz = getelementptr inbounds nuw i8, ptr %.43315, i64 24
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.k ; 2 uses
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !68
  store float %i.akb, ptr %i.ajz, align 4, !tbaa !68
  %i.akc = getelementptr inbounds nuw i8, ptr %.43315, i64 28
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.k ; 2 uses
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !68
  store float %i.ake, ptr %i.akc, align 4, !tbaa !68
  %i.akf = getelementptr inbounds nuw i8, ptr %.43315, i64 32 ; 3 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.k ; 2 uses
  %niter565.next.7 = add nuw nsw i32 %niter565, 8 ; 2 uses
  %niter565.ncmp.7 = icmp eq i32 %niter565.next.7, %unroll_iter564
  br i1 %niter565.ncmp.7, label %.loopexit.loopexit483.unr-lcssa, label %.lr.ph318, !llvm.loop !423

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph303
  br i1 %lcmp.mod582.not, label %.loopexit, label %.lr.ph303.epil.preheader

.lr.ph303.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph303.preheader
  %.0611301.epil.init = phi ptr [ %i.ahm, %.lr.ph303.preheader ], [ %i.ahy, %.loopexit.loopexit.unr-lcssa ]
  %.37300.epil.init = phi ptr [ %.36321, %.lr.ph303.preheader ], [ %i.ahx, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod584)
  br label %.lr.ph303.epil

.lr.ph303.epil:                                   ; preds = %.lr.ph303.epil, %.lr.ph303.epil.preheader
  %.0611301.epil = phi ptr [ %i.akj, %.lr.ph303.epil ], [ %.0611301.epil.init, %.lr.ph303.epil.preheader ] ; 2 uses
  %.37300.epil = phi ptr [ %i.aki, %.lr.ph303.epil ], [ %.37300.epil.init, %.lr.ph303.epil.preheader ] ; 2 uses
  %epil.iter581 = phi i32 [ %epil.iter581.next, %.lr.ph303.epil ], [ 0, %.lr.ph303.epil.preheader ]
  %i.akh = load <16 x float>, ptr %.0611301.epil, align 64, !tbaa !116
  store <16 x float> %i.akh, ptr %.37300.epil, align 64, !tbaa !116
  %i.aki = getelementptr inbounds nuw i8, ptr %.37300.epil, i64 64 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.0611301.epil, i64 %.idx651
  %epil.iter581.next = add i32 %epil.iter581, 1   ; 2 uses
  %epil.iter581.cmp.not = icmp eq i32 %epil.iter581.next, %xtraiter580
  br i1 %epil.iter581.cmp.not, label %.loopexit, label %.lr.ph303.epil, !llvm.loop !424

.loopexit.loopexit481.unr-lcssa:                  ; preds = %.lr.ph308
  br i1 %lcmp.mod575.not, label %.loopexit, label %.lr.ph308.epil.preheader

.lr.ph308.epil.preheader:                         ; preds = %.loopexit.loopexit481.unr-lcssa, %.lr.ph308.preheader
  %.0609306.epil.init = phi ptr [ %i.aic, %.lr.ph308.preheader ], [ %i.aio, %.loopexit.loopexit481.unr-lcssa ]
  %.39305.epil.init = phi ptr [ %.36321, %.lr.ph308.preheader ], [ %i.ain, %.loopexit.loopexit481.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod577)
  br label %.lr.ph308.epil

.lr.ph308.epil:                                   ; preds = %.lr.ph308.epil, %.lr.ph308.epil.preheader
  %.0609306.epil = phi ptr [ %i.akm, %.lr.ph308.epil ], [ %.0609306.epil.init, %.lr.ph308.epil.preheader ] ; 2 uses
  %.39305.epil = phi ptr [ %i.akl, %.lr.ph308.epil ], [ %.39305.epil.init, %.lr.ph308.epil.preheader ] ; 2 uses
  %epil.iter574 = phi i32 [ %epil.iter574.next, %.lr.ph308.epil ], [ 0, %.lr.ph308.epil.preheader ]
  %i.akk = load <8 x float>, ptr %.0609306.epil, align 32, !tbaa !116
  store <8 x float> %i.akk, ptr %.39305.epil, align 32, !tbaa !116
  %i.akl = getelementptr inbounds nuw i8, ptr %.39305.epil, i64 32 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.0609306.epil, i64 %.idx650
  %epil.iter574.next = add i32 %epil.iter574, 1   ; 2 uses
  %epil.iter574.cmp.not = icmp eq i32 %epil.iter574.next, %xtraiter573
  br i1 %epil.iter574.cmp.not, label %.loopexit, label %.lr.ph308.epil, !llvm.loop !425

.loopexit.loopexit482.unr-lcssa:                  ; preds = %.lr.ph313
  br i1 %lcmp.mod568.not, label %.loopexit, label %.lr.ph313.epil.preheader

.lr.ph313.epil.preheader:                         ; preds = %.loopexit.loopexit482.unr-lcssa, %.lr.ph313.preheader
  %.0607311.epil.init = phi ptr [ %i.ais, %.lr.ph313.preheader ], [ %i.aje, %.loopexit.loopexit482.unr-lcssa ]
  %.41310.epil.init = phi ptr [ %.36321, %.lr.ph313.preheader ], [ %i.ajd, %.loopexit.loopexit482.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod570)
  br label %.lr.ph313.epil

.lr.ph313.epil:                                   ; preds = %.lr.ph313.epil, %.lr.ph313.epil.preheader
  %.0607311.epil = phi ptr [ %i.akp, %.lr.ph313.epil ], [ %.0607311.epil.init, %.lr.ph313.epil.preheader ] ; 2 uses
  %.41310.epil = phi ptr [ %i.ako, %.lr.ph313.epil ], [ %.41310.epil.init, %.lr.ph313.epil.preheader ] ; 2 uses
  %epil.iter567 = phi i32 [ %epil.iter567.next, %.lr.ph313.epil ], [ 0, %.lr.ph313.epil.preheader ]
  %i.akn = load <4 x float>, ptr %.0607311.epil, align 16, !tbaa !116
  store <4 x float> %i.akn, ptr %.41310.epil, align 16, !tbaa !116
  %i.ako = getelementptr inbounds nuw i8, ptr %.41310.epil, i64 16 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.0607311.epil, i64 %.idx
  %epil.iter567.next = add i32 %epil.iter567, 1   ; 2 uses
  %epil.iter567.cmp.not = icmp eq i32 %epil.iter567.next, %xtraiter566
  br i1 %epil.iter567.cmp.not, label %.loopexit, label %.lr.ph313.epil, !llvm.loop !426

.loopexit.loopexit483.unr-lcssa:                  ; preds = %.lr.ph318
  br i1 %lcmp.mod561.not, label %.loopexit, label %.lr.ph318.epil.preheader

.lr.ph318.epil.preheader:                         ; preds = %.loopexit.loopexit483.unr-lcssa, %.lr.ph318.preheader
  %.0605316.epil.init = phi ptr [ %i.aji, %.lr.ph318.preheader ], [ %i.akg, %.loopexit.loopexit483.unr-lcssa ]
  %.43315.epil.init = phi ptr [ %.36321, %.lr.ph318.preheader ], [ %i.akf, %.loopexit.loopexit483.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod563)
  br label %.lr.ph318.epil

.lr.ph318.epil:                                   ; preds = %.lr.ph318.epil, %.lr.ph318.epil.preheader
  %.0605316.epil = phi ptr [ %i.aks, %.lr.ph318.epil ], [ %.0605316.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %.43315.epil = phi ptr [ %i.akr, %.lr.ph318.epil ], [ %.43315.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %epil.iter560 = phi i32 [ %epil.iter560.next, %.lr.ph318.epil ], [ 0, %.lr.ph318.epil.preheader ]
  %i.akq = load float, ptr %.0605316.epil, align 4, !tbaa !68
  store float %i.akq, ptr %.43315.epil, align 4, !tbaa !68
  %i.akr = getelementptr inbounds nuw i8, ptr %.43315.epil, i64 4 ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %.0605316.epil, i64 %i.k
  %epil.iter560.next = add i32 %epil.iter560, 1   ; 2 uses
  %epil.iter560.cmp.not = icmp eq i32 %epil.iter560.next, %xtraiter559
  br i1 %epil.iter560.cmp.not, label %.loopexit, label %.lr.ph318.epil, !llvm.loop !427

.loopexit:                                        ; preds = %.loopexit.loopexit483.unr-lcssa, %.lr.ph318.epil, %.loopexit.loopexit482.unr-lcssa, %.lr.ph313.epil, %.loopexit.loopexit481.unr-lcssa, %.lr.ph308.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph303.epil, %bb.v, %.split446, %bb.w, %bb.x, %bb.y, %bb.z
  %.44 = phi ptr [ %.36321, %.split446 ], [ %.36321, %bb.z ], [ %i.aki, %.lr.ph303.epil ], [ %.36321, %bb.v ], [ %.36321, %bb.y ], [ %i.akl, %.lr.ph308.epil ], [ %.36321, %bb.x ], [ %.36321, %bb.w ], [ %i.ako, %.lr.ph313.epil ], [ %i.ahx, %.loopexit.loopexit.unr-lcssa ], [ %i.ain, %.loopexit.loopexit481.unr-lcssa ], [ %i.ajd, %.loopexit.loopexit482.unr-lcssa ], [ %i.akf, %.loopexit.loopexit483.unr-lcssa ], [ %i.akr, %.lr.ph318.epil ]
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count
  br i1 %exitcond363.not, label %._crit_edge, label %bb.v, !llvm.loop !428

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn15Gemm_x86_avx51212forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 12 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %8 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 12 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i32, align 4                      ; 9 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 8 uses
  %i.x = alloca i32, align 4                      ; 9 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca i32, align 4                      ; 10 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %14 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 12 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 6 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 7 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 8 uses
  %i.ai = alloca i32, align 4                     ; 7 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %i.ak = alloca i32, align 4                     ; 6 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %i.am = alloca float, align 4                   ; 12 uses
  %18 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %19 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %20 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 10 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 5 uses
  %i.as = alloca i32, align 4                     ; 5 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = alloca i32, align 4                     ; 5 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %23 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 10 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %24 = alloca %"class.ncnn::Mat", align 16       ; 32 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !43
  %.not = icmp eq i32 %i.ax, 0                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4
  %.not134 = icmp eq i32 %i.az, 0                 ; 4 uses
  %or.cond173 = select i1 %.not, i1 true, i1 %.not134
  br i1 %or.cond173, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %1, align 8, !tbaa !106   ; 16 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !86
  %.not142 = icmp eq i32 %i.bi, 0
  br i1 %.not142, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !87
  %i.bl = icmp eq i32 %i.bk, 3
  %.in143.v = select i1 %i.bl, i64 56, i64 48
  %.in143 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in143.v
  %i.bm = load i32, ptr %.in143, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !60
  %i.bp = mul nsw i32 %i.bo, %i.bm
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !88
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !89
  %.not137 = icmp eq i32 %i.bt, 0                 ; 2 uses
  br i1 %.not134, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not137, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !88
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !87
  %i.by = icmp eq i32 %i.bx, 3
  %.in141.v = select i1 %i.by, i64 56, i64 48
  %.in141 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in141.v
  %i.bz = load i32, ptr %.in141, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !60
  %i.cc = mul nsw i32 %i.cb, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cd = phi i32 [ %i.bv, %bb.i ], [ %i.cc, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !54
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  br i1 %.not137, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !88
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !87
  %i.ck = icmp eq i32 %i.cj, 3
  %.in.v = select i1 %i.ck, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in.v
  %i.cl = load i32, ptr %.in, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !60
  %i.co = mul nsw i32 %i.cn, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cp = phi i32 [ %i.ch, %bb.m ], [ %i.co, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !86
  %.not138 = icmp eq i32 %i.cr, 0
  br i1 %.not138, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !87
  %i.cu = icmp eq i32 %i.ct, 3
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  br i1 %i.dvd, label %vec.epilog.middle.block3264, label %vec.epilog.vector.body3245, !llvm.loop !547

vec.epilog.middle.block3264:                      ; preds = %vec.epilog.vector.body3245
  %i.dve = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dvc)
  %i.dvf = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dva)
  %i.dvg = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.duy)
  %i.dvh = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.duw)
  %i.dvi = insertelement <4 x float> poison, float %i.dvh, i64 0
  %i.dvj = insertelement <4 x float> %i.dvi, float %i.dvg, i64 1
  %i.dvk = insertelement <4 x float> %i.dvj, float %i.dvf, i64 2
  %i.dvl = insertelement <4 x float> %i.dvk, float %i.dve, i64 3 ; 2 uses
  br i1 %cmp.n3265, label %._crit_edge2280.loopexit, label %.lr.ph2279.preheader

.lr.ph2279.preheader:                             ; preds = %iter.check3239, %vec.epilog.iter.check3241, %vec.epilog.middle.block3264
  %.028162273.ph = phi i32 [ 0, %iter.check3239 ], [ %i.ckj, %vec.epilog.iter.check3241 ], [ %i.ckm, %vec.epilog.middle.block3264 ]
  %.028172272.ph = phi ptr [ %.42309, %iter.check3239 ], [ %i.dmo, %vec.epilog.iter.check3241 ], [ %i.dmp, %vec.epilog.middle.block3264 ]
  %.1328842271.ph = phi ptr [ %.1228832299, %iter.check3239 ], [ %i.dtn, %vec.epilog.iter.check3241 ], [ %i.dup, %vec.epilog.middle.block3264 ]
  %.ph = phi <4 x float> [ zeroinitializer, %iter.check3239 ], [ %i.duo, %vec.epilog.iter.check3241 ], [ %i.dvl, %vec.epilog.middle.block3264 ]
  br label %.lr.ph2279

.lr.ph2279:                                       ; preds = %.lr.ph2279.preheader, %.lr.ph2279
  %.028162273 = phi i32 [ %i.dvt, %.lr.ph2279 ], [ %.028162273.ph, %.lr.ph2279.preheader ]
  %.028172272 = phi ptr [ %i.dvr, %.lr.ph2279 ], [ %.028172272.ph, %.lr.ph2279.preheader ] ; 2 uses
  %.1328842271 = phi ptr [ %i.dvs, %.lr.ph2279 ], [ %.1328842271.ph, %.lr.ph2279.preheader ] ; 2 uses
  %i.dvm = phi <4 x float> [ %i.dvq, %.lr.ph2279 ], [ %.ph, %.lr.ph2279.preheader ]
  %i.dvn = load <4 x float>, ptr %.028172272, align 4, !tbaa !68
  %i.dvo = load <4 x float>, ptr %.1328842271, align 4, !tbaa !68
  %i.dvp = fmul fast <4 x float> %i.dvo, %i.dvn
  %i.dvq = fadd fast <4 x float> %i.dvp, %i.dvm   ; 2 uses
  %i.dvr = getelementptr inbounds nuw i8, ptr %.028172272, i64 16 ; 2 uses
  %i.dvs = getelementptr inbounds nuw i8, ptr %.1328842271, i64 16
  %i.dvt = add nuw nsw i32 %.028162273, 4         ; 2 uses
  %i.dvu = or disjoint i32 %i.dvt, 3
  %i.dvv = icmp slt i32 %i.dvu, %8
  br i1 %i.dvv, label %.lr.ph2279, label %._crit_edge2280.loopexit, !llvm.loop !548

._crit_edge2280.loopexit:                         ; preds = %.lr.ph2279, %vec.epilog.middle.block3264, %middle.block3226
  %.lcssa2879 = phi ptr [ %i.dmp, %vec.epilog.middle.block3264 ], [ %i.dmo, %middle.block3226 ], [ %i.dvr, %.lr.ph2279 ]
  %i.dvw = phi <4 x float> [ %i.dvl, %vec.epilog.middle.block3264 ], [ %i.duo, %middle.block3226 ], [ %i.dvq, %.lr.ph2279 ]
  %i.dvx = getelementptr i8, ptr %.1228832299, i64 %i.cka
  %scevgep2585 = getelementptr i8, ptr %i.dvx, i64 16
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.12820, <4 x float> %i.dvw)
  br label %._crit_edge2280

._crit_edge2280:                                  ; preds = %._crit_edge2280.loopexit, %bb.kv
  %.132884.lcssa = phi ptr [ %.1228832299, %bb.kv ], [ %scevgep2585, %._crit_edge2280.loopexit ] ; 6 uses
  %.02817.lcssa = phi ptr [ %.42309, %bb.kv ], [ %.lcssa2879, %._crit_edge2280.loopexit ] ; 5 uses
  %.02816.lcssa = phi i32 [ 0, %bb.kv ], [ %i.cjt, %._crit_edge2280.loopexit ] ; 5 uses
  %.02815.lcssa = phi float [ %.12820, %bb.kv ], [ %op.rdx, %._crit_edge2280.loopexit ] ; 4 uses
  %i.dvy = icmp slt i32 %.02816.lcssa, %8
  br i1 %i.dvy, label %iter.check3166, label %._crit_edge2294

iter.check3166:                                   ; preds = %._crit_edge2280
  %i.dvz = xor i32 %.02816.lcssa, -1
  %i.dwa = add i32 %8, %i.dvz                     ; 3 uses
  %i.dwb = zext i32 %i.dwa to i64
  %i.dwc = add nuw nsw i64 %i.dwb, 1              ; 5 uses
  %min.iters.check3135 = icmp ult i32 %i.dwa, 7
  br i1 %min.iters.check3135, label %.lr.ph2293.preheader, label %vector.main.loop.iter.check3136

vector.main.loop.iter.check3136:                  ; preds = %iter.check3166
  %min.iters.check3137 = icmp ult i32 %i.dwa, 63
  br i1 %min.iters.check3137, label %vec.epilog.ph3170, label %vector.ph3138

vector.ph3138:                                    ; preds = %vector.main.loop.iter.check3136
  %i.dwd = and i64 %i.dwc, 56
  %n.vec3139 = and i64 %i.dwc, 8589934528         ; 5 uses
  %i.dwe = trunc i64 %n.vec3139 to i32
  %i.dwf = add i32 %.02816.lcssa, %i.dwe
  %i.dwg = shl nuw nsw i64 %n.vec3139, 2          ; 2 uses
  %i.dwh = getelementptr i8, ptr %.02817.lcssa, i64 %i.dwg
  %i.dwi = getelementptr i8, ptr %.132884.lcssa, i64 %i.dwg ; 2 uses
  %i.dwj = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.02815.lcssa, i64 0
  br label %vector.body3140

vector.body3140:                                  ; preds = %vector.body3140, %vector.ph3138
  %index3141 = phi i64 [ 0, %vector.ph3138 ], [ %index.next3156, %vector.body3140 ] ; 2 uses
  %vec.phi3142 = phi <16 x float> [ %i.dwj, %vector.ph3138 ], [ %i.dwv, %vector.body3140 ]
  %vec.phi3143 = phi <16 x float> [ zeroinitializer, %vector.ph3138 ], [ %i.dww, %vector.body3140 ]
  %vec.phi3144 = phi <16 x float> [ zeroinitializer, %vector.ph3138 ], [ %i.dwx, %vector.body3140 ]
  %vec.phi3145 = phi <16 x float> [ zeroinitializer, %vector.ph3138 ], [ %i.dwy, %vector.body3140 ]
  %i.dwk = shl i64 %index3141, 2                  ; 2 uses
  %next.gep3146 = getelementptr i8, ptr %.02817.lcssa, i64 %i.dwk ; 4 uses
  %next.gep3147 = getelementptr i8, ptr %.132884.lcssa, i64 %i.dwk ; 4 uses
  %i.dwl = getelementptr i8, ptr %next.gep3146, i64 64
  %i.dwm = getelementptr i8, ptr %next.gep3146, i64 128
  %i.dwn = getelementptr i8, ptr %next.gep3146, i64 192
  %wide.load3148 = load <16 x float>, ptr %next.gep3146, align 4, !tbaa !68
  %wide.load3149 = load <16 x float>, ptr %i.dwl, align 4, !tbaa !68
  %wide.load3150 = load <16 x float>, ptr %i.dwm, align 4, !tbaa !68
  %wide.load3151 = load <16 x float>, ptr %i.dwn, align 4, !tbaa !68
  %i.dwo = getelementptr i8, ptr %next.gep3147, i64 64
  %i.dwp = getelementptr i8, ptr %next.gep3147, i64 128
  %i.dwq = getelementptr i8, ptr %next.gep3147, i64 192
  %wide.load3152 = load <16 x float>, ptr %next.gep3147, align 4, !tbaa !68
  %wide.load3153 = load <16 x float>, ptr %i.dwo, align 4, !tbaa !68
  %wide.load3154 = load <16 x float>, ptr %i.dwp, align 4, !tbaa !68
  %wide.load3155 = load <16 x float>, ptr %i.dwq, align 4, !tbaa !68
  %i.dwr = fmul fast <16 x float> %wide.load3152, %wide.load3148
  %i.dws = fmul fast <16 x float> %wide.load3153, %wide.load3149
  %i.dwt = fmul fast <16 x float> %wide.load3154, %wide.load3150
  %i.dwu = fmul fast <16 x float> %wide.load3155, %wide.load3151
  %i.dwv = fadd fast <16 x float> %i.dwr, %vec.phi3142 ; 2 uses
  %i.dww = fadd fast <16 x float> %i.dws, %vec.phi3143 ; 2 uses
  %i.dwx = fadd fast <16 x float> %i.dwt, %vec.phi3144 ; 2 uses
  %i.dwy = fadd fast <16 x float> %i.dwu, %vec.phi3145 ; 2 uses
  %index.next3156 = add nuw i64 %index3141, 64    ; 2 uses
  %i.dwz = icmp eq i64 %index.next3156, %n.vec3139
  br i1 %i.dwz, label %middle.block3157, label %vector.body3140, !llvm.loop !549

middle.block3157:                                 ; preds = %vector.body3140
  %bin.rdx3158 = fadd fast <16 x float> %i.dww, %i.dwv
  %bin.rdx3159 = fadd fast <16 x float> %i.dwx, %bin.rdx3158
  %bin.rdx3160 = fadd fast <16 x float> %i.dwy, %bin.rdx3159
  %i.dxa = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx3160) ; 3 uses
  %cmp.n3161 = icmp eq i64 %i.dwc, %n.vec3139
  br i1 %cmp.n3161, label %._crit_edge2294, label %vec.epilog.iter.check3168

vec.epilog.iter.check3168:                        ; preds = %middle.block3157
  %min.epilog.iters.check3169 = icmp eq i64 %i.dwd, 0
  br i1 %min.epilog.iters.check3169, label %.lr.ph2293.preheader, label %vec.epilog.ph3170, !prof !78

vec.epilog.ph3170:                                ; preds = %vector.main.loop.iter.check3136, %vec.epilog.iter.check3168
  %vec.epilog.resume.val3162 = phi i64 [ %n.vec3139, %vec.epilog.iter.check3168 ], [ 0, %vector.main.loop.iter.check3136 ]
  %bc.merge.rdx3164 = phi float [ %i.dxa, %vec.epilog.iter.check3168 ], [ %.02815.lcssa, %vector.main.loop.iter.check3136 ]
  %n.vec3171 = and i64 %i.dwc, 8589934584         ; 4 uses
  %i.dxb = trunc i64 %n.vec3171 to i32
  %i.dxc = add i32 %.02816.lcssa, %i.dxb
  %i.dxd = shl nuw nsw i64 %n.vec3171, 2          ; 2 uses
  %i.dxe = getelementptr i8, ptr %.02817.lcssa, i64 %i.dxd
  %i.dxf = getelementptr i8, ptr %.132884.lcssa, i64 %i.dxd ; 2 uses
  %i.dxg = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx3164, i64 0
  br label %vec.epilog.vector.body3172

vec.epilog.vector.body3172:                       ; preds = %vec.epilog.vector.body3172, %vec.epilog.ph3170
  %index3173 = phi i64 [ %vec.epilog.resume.val3162, %vec.epilog.ph3170 ], [ %index.next3179, %vec.epilog.vector.body3172 ] ; 2 uses
  %vec.phi3174 = phi <8 x float> [ %i.dxg, %vec.epilog.ph3170 ], [ %i.dxj, %vec.epilog.vector.body3172 ]
  %i.dxh = shl i64 %index3173, 2                  ; 2 uses
  %next.gep3175 = getelementptr i8, ptr %.02817.lcssa, i64 %i.dxh
  %next.gep3176 = getelementptr i8, ptr %.132884.lcssa, i64 %i.dxh
  %wide.load3177 = load <8 x float>, ptr %next.gep3175, align 4, !tbaa !68
  %wide.load3178 = load <8 x float>, ptr %next.gep3176, align 4, !tbaa !68
  %i.dxi = fmul fast <8 x float> %wide.load3178, %wide.load3177
  %i.dxj = fadd fast <8 x float> %i.dxi, %vec.phi3174 ; 2 uses
  %index.next3179 = add nuw i64 %index3173, 8     ; 2 uses
  %i.dxk = icmp eq i64 %index.next3179, %n.vec3171
  br i1 %i.dxk, label %vec.epilog.middle.block3180, label %vec.epilog.vector.body3172, !llvm.loop !550

vec.epilog.middle.block3180:                      ; preds = %vec.epilog.vector.body3172
  %i.dxl = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dxj) ; 2 uses
  %cmp.n3181 = icmp eq i64 %i.dwc, %n.vec3171
  br i1 %cmp.n3181, label %._crit_edge2294, label %.lr.ph2293.preheader

.lr.ph2293.preheader:                             ; preds = %iter.check3166, %vec.epilog.iter.check3168, %vec.epilog.middle.block3180
  %.12291.ph = phi i32 [ %.02816.lcssa, %iter.check3166 ], [ %i.dwf, %vec.epilog.iter.check3168 ], [ %i.dxc, %vec.epilog.middle.block3180 ]
  %.128182290.ph = phi ptr [ %.02817.lcssa, %iter.check3166 ], [ %i.dwh, %vec.epilog.iter.check3168 ], [ %i.dxe, %vec.epilog.middle.block3180 ]
  %.22289.ph = phi float [ %.02815.lcssa, %iter.check3166 ], [ %i.dxa, %vec.epilog.iter.check3168 ], [ %i.dxl, %vec.epilog.middle.block3180 ]
  %.1428852288.ph = phi ptr [ %.132884.lcssa, %iter.check3166 ], [ %i.dwi, %vec.epilog.iter.check3168 ], [ %i.dxf, %vec.epilog.middle.block3180 ]
  br label %.lr.ph2293

.lr.ph2293:                                       ; preds = %.lr.ph2293.preheader, %.lr.ph2293
  %.12291 = phi i32 [ %i.dxs, %.lr.ph2293 ], [ %.12291.ph, %.lr.ph2293.preheader ]
  %.128182290 = phi ptr [ %i.dxq, %.lr.ph2293 ], [ %.128182290.ph, %.lr.ph2293.preheader ] ; 2 uses
  %.22289 = phi float [ %i.dxp, %.lr.ph2293 ], [ %.22289.ph, %.lr.ph2293.preheader ]
  %.1428852288 = phi ptr [ %i.dxr, %.lr.ph2293 ], [ %.1428852288.ph, %.lr.ph2293.preheader ] ; 2 uses
  %i.dxm = load float, ptr %.128182290, align 4, !tbaa !68
  %i.dxn = load float, ptr %.1428852288, align 4, !tbaa !68
  %i.dxo = fmul fast float %i.dxn, %i.dxm
  %i.dxp = fadd fast float %i.dxo, %.22289        ; 2 uses
  %i.dxq = getelementptr inbounds nuw i8, ptr %.128182290, i64 4
  %i.dxr = getelementptr inbounds nuw i8, ptr %.1428852288, i64 4 ; 2 uses
  %i.dxs = add nuw nsw i32 %.12291, 1             ; 2 uses
  %exitcond2586.not = icmp eq i32 %i.dxs, %8
  br i1 %exitcond2586.not, label %._crit_edge2294, label %.lr.ph2293, !llvm.loop !551

._crit_edge2294:                                  ; preds = %.lr.ph2293, %middle.block3157, %vec.epilog.middle.block3180, %._crit_edge2280
  %.142885.lcssa = phi ptr [ %.132884.lcssa, %._crit_edge2280 ], [ %i.dxf, %vec.epilog.middle.block3180 ], [ %i.dwi, %middle.block3157 ], [ %i.dxr, %.lr.ph2293 ]
  %.2.lcssa = phi float [ %.02815.lcssa, %._crit_edge2280 ], [ %i.dxl, %vec.epilog.middle.block3180 ], [ %i.dxa, %middle.block3157 ], [ %i.dxp, %.lr.ph2293 ] ; 2 uses
  br i1 %9, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %._crit_edge2294
  store float %.2.lcssa, ptr %.828942298, align 4, !tbaa !68
  %i.dxt = getelementptr inbounds nuw i8, ptr %.828942298, i64 4
  br label %bb.ky

bb.kx:                                            ; preds = %._crit_edge2294
  store float %.2.lcssa, ptr %.2929592297, align 4, !tbaa !68
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %.92895 = phi ptr [ %i.dxt, %bb.kw ], [ %.828942298, %bb.kx ]
  %i.dxu = getelementptr inbounds nuw i8, ptr %.2929592297, i64 4 ; 2 uses
  %i.dxv = add nuw nsw i32 %.428702300, 1         ; 2 uses
  %exitcond2587.not = icmp eq i32 %i.dxv, %6
  br i1 %exitcond2587.not, label %._crit_edge2303, label %.lr.ph2302, !llvm.loop !552

._crit_edge2303:                                  ; preds = %bb.ky, %.preheader
  %.292959.lcssa = phi ptr [ %.282958.lcssa, %.preheader ], [ %i.dxu, %bb.ky ]
  %.83.lcssa = phi ptr [ %.81.lcssa, %.preheader ], [ %.84, %bb.ky ]
  %i.dxw = getelementptr inbounds [4 x i8], ptr %.42309, i64 %i.cjq
  %indvars.iv.next2589 = add nuw nsw i64 %indvars.iv2588, 1 ; 2 uses
  %exitcond2591.not = icmp eq i64 %indvars.iv.next2589, %wide.trip.count
  br i1 %exitcond2591.not, label %._crit_edge2311, label %bb.jb, !llvm.loop !553

._crit_edge2311:                                  ; preds = %._crit_edge2303, %.preheader1538
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr nofree readonly %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 62 uses
  %i.l = icmp sgt i32 %2, 15
  br i1 %i.l, label %.lr.ph210, label %.preheader185

.lr.ph210:                                        ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 4 uses
  %i.o = icmp sgt i32 %4, 15
  %.idx761 = shl i64 %i.k, 6
  %i.p = icmp sgt i32 %4, 7
  %.idx760 = shl i64 %i.k, 5
  %i.q = icmp sgt i32 %4, 3
  %.idx759 = shl i64 %i.k, 4
  %i.r = icmp sgt i32 %4, 0
  %i.s = zext nneg i32 %2 to i64
  %i.t = sext i32 %1 to i64                       ; 4 uses
  %i.u = add i32 %4, -1
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.w = icmp eq i32 %i.v, 1
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.y = icmp ult i32 %i.u, 7
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod504 = icmp ne i32 %xtraiter, 0
  br label %bb.b

.preheader185.loopexit:                           ; preds = %.loopexit186
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.loopexit, %bb.a
  %.0719.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %.preheader185.loopexit ] ; 3 uses
  %.0708.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.8, %.preheader185.loopexit ] ; 2 uses
  %i.aa = or disjoint i32 %.0719.lcssa, 7
  %i.ab = icmp slt i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph235, label %.preheader180

.lr.ph235:                                        ; preds = %.preheader185
  %i.ac = sdiv i32 %3, 16
  %i.ad = shl nsw i32 %i.ac, 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.k, %i.ae
  %i.ag = icmp sgt i32 %4, 15
  %.idx758 = shl i64 %i.k, 6
  %i.ah = sext i32 %3 to i64
  %i.ai = mul i64 %i.k, %i.ah                     ; 3 uses
  %i.aj = icmp sgt i32 %4, 7
  %.idx757 = shl i64 %i.k, 5
  %i.ak = icmp sgt i32 %4, 3
  %.idx756 = shl i64 %i.k, 4
  %i.al = icmp sgt i32 %4, 0
  %i.am = zext nneg i32 %.0719.lcssa to i64
  %i.an = sext i32 %2 to i64
  %i.ao = sext i32 %1 to i64                      ; 4 uses
  %invariant.op = add nsw i64 %i.an, -7
  %i.ap = add i32 %4, -1
  %i.aq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %xtraiter505 = and i32 %4, 7                    ; 3 uses
  %i.at = icmp ult i32 %i.ap, 7
  %unroll_iter510 = and i32 %4, 2147483640
  %lcmp.mod507.not = icmp eq i32 %xtraiter505, 0
  %lcmp.mod509 = icmp ne i32 %xtraiter505, 0
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph210, %.loopexit186
  %indvars.iv = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next, %.loopexit186 ] ; 5 uses
  %.0708209 = phi ptr [ %.0.val, %.lr.ph210 ], [ %.8, %.loopexit186 ] ; 11 uses
  br i1 %i.w, label %.split, label %.loopexit186

.split:                                           ; preds = %bb.b
  switch i32 %i.x, label %.loopexit186 [
    i32 4, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %.split
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit186

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.au = load ptr, ptr %0, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.n
  %i.aw = add nsw i64 %indvars.iv, %i.t
  %.idx365 = shl nsw i64 %i.aw, 6
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %.idx365
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1192 = phi ptr [ %i.fe, %.lr.ph ], [ %.0708209, %.lr.ph.preheader ] ; 17 uses
  %.0726191 = phi ptr [ %i.ff, %.lr.ph ], [ %i.ax, %.lr.ph.preheader ] ; 17 uses
  %.0727190 = phi i32 [ %i.fg, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ay = load <16 x float>, ptr %.1192, align 64, !tbaa !116 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1192, i64 64
  %i.ba = load <16 x float>, ptr %i.az, align 64, !tbaa !116 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1192, i64 128
  %i.bc = load <16 x float>, ptr %i.bb, align 64, !tbaa !116 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1192, i64 192
  %i.be = load <16 x float>, ptr %i.bd, align 64, !tbaa !116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1192, i64 256
  %i.bg = load <16 x float>, ptr %i.bf, align 64, !tbaa !116 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1192, i64 320
  %i.bi = load <16 x float>, ptr %i.bh, align 64, !tbaa !116 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1192, i64 384
  %i.bk = load <16 x float>, ptr %i.bj, align 64, !tbaa !116 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1192, i64 448
  %i.bm = load <16 x float>, ptr %i.bl, align 64, !tbaa !116 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1192, i64 512
  %i.bo = load <16 x float>, ptr %i.bn, align 64, !tbaa !116 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1192, i64 576
  %i.bq = load <16 x float>, ptr %i.bp, align 64, !tbaa !116 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1192, i64 640
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !116 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1192, i64 704
  %i.bu = load <16 x float>, ptr %i.bt, align 64, !tbaa !116 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1192, i64 768
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !116 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1192, i64 832
  %i.by = load <16 x float>, ptr %i.bx, align 64, !tbaa !116 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1192, i64 896
  %i.ca = load <16 x float>, ptr %i.bz, align 64, !tbaa !116 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1192, i64 960
  %i.cc = load <16 x float>, ptr %i.cb, align 64, !tbaa !116 ; 2 uses
  %i.cd = shufflevector <16 x float> %i.ay, <16 x float> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ce = shufflevector <16 x float> %i.ay, <16 x float> %i.ba, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cf = shufflevector <16 x float> %i.bc, <16 x float> %i.be, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cg = shufflevector <16 x float> %i.bc, <16 x float> %i.be, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ch = shufflevector <16 x float> %i.bg, <16 x float> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ci = shufflevector <16 x float> %i.bg, <16 x float> %i.bi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cj = shufflevector <16 x float> %i.bk, <16 x float> %i.bm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ck = shufflevector <16 x float> %i.bk, <16 x float> %i.bm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cl = shufflevector <16 x float> %i.bo, <16 x float> %i.bq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cm = shufflevector <16 x float> %i.bo, <16 x float> %i.bq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cn = shufflevector <16 x float> %i.bs, <16 x float> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.co = shufflevector <16 x float> %i.bs, <16 x float> %i.bu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cp = shufflevector <16 x float> %i.bw, <16 x float> %i.by, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cq = shufflevector <16 x float> %i.bw, <16 x float> %i.by, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cr = shufflevector <16 x float> %i.ca, <16 x float> %i.cc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cs = shufflevector <16 x float> %i.ca, <16 x float> %i.cc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ct = shufflevector <16 x float> %i.cd, <16 x float> %i.cf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cu = shufflevector <16 x float> %i.cd, <16 x float> %i.cf, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cv = shufflevector <16 x float> %i.ce, <16 x float> %i.cg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cw = shufflevector <16 x float> %i.ce, <16 x float> %i.cg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cx = shufflevector <16 x float> %i.ch, <16 x float> %i.cj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cy = shufflevector <16 x float> %i.ch, <16 x float> %i.cj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cz = shufflevector <16 x float> %i.ci, <16 x float> %i.ck, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.da = shufflevector <16 x float> %i.ci, <16 x float> %i.ck, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.db = shufflevector <16 x float> %i.cl, <16 x float> %i.cn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dc = shufflevector <16 x float> %i.cl, <16 x float> %i.cn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.dd = shufflevector <16 x float> %i.cm, <16 x float> %i.co, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.de = shufflevector <16 x float> %i.cm, <16 x float> %i.co, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.df = shufflevector <16 x float> %i.cp, <16 x float> %i.cr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dg = shufflevector <16 x float> %i.cp, <16 x float> %i.cr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.dh = shufflevector <16 x float> %i.cq, <16 x float> %i.cs, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.di = shufflevector <16 x float> %i.cq, <16 x float> %i.cs, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.dj = shufflevector <16 x float> %i.ct, <16 x float> %i.cx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dk = shufflevector <16 x float> %i.db, <16 x float> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dl = shufflevector <16 x float> %i.cu, <16 x float> %i.cy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dm = shufflevector <16 x float> %i.dc, <16 x float> %i.dg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dn = shufflevector <16 x float> %i.cv, <16 x float> %i.cz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.do = shufflevector <16 x float> %i.dd, <16 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dp = shufflevector <16 x float> %i.cw, <16 x float> %i.da, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dq = shufflevector <16 x float> %i.de, <16 x float> %i.di, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.ct, <16 x float> %i.cx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ds = shufflevector <16 x float> %i.db, <16 x float> %i.df, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dt = shufflevector <16 x float> %i.cu, <16 x float> %i.cy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.du = shufflevector <16 x float> %i.dc, <16 x float> %i.dg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dv = shufflevector <16 x float> %i.cv, <16 x float> %i.cz, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dw = shufflevector <16 x float> %i.dd, <16 x float> %i.dh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dx = shufflevector <16 x float> %i.cw, <16 x float> %i.da, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dy = shufflevector <16 x float> %i.de, <16 x float> %i.di, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dz = shufflevector <16 x float> %i.dj, <16 x float> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ea = shufflevector <16 x float> %i.dl, <16 x float> %i.dm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.eb = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ec = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ed = shufflevector <16 x float> %i.dr, <16 x float> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ee = shufflevector <16 x float> %i.dt, <16 x float> %i.du, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii:bb.a
  %i.alp = add nsw i64 %indvars.iv348, %i.abz
  %.idx378 = shl nsw i64 %i.alp, 5
  %i.alq = getelementptr inbounds i8, ptr %i.alo, i64 %.idx378 ; 2 uses
  br i1 %i.acp, label %.lr.ph296.epil.preheader, label %.lr.ph296

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %.lr.ph296
  %.0707294 = phi ptr [ %i.amc, %.lr.ph296 ], [ %i.alq, %.lr.ph296.preheader ] ; 2 uses
  %.39293 = phi ptr [ %i.amb, %.lr.ph296 ], [ %.36309, %.lr.ph296.preheader ] ; 5 uses
  %niter546 = phi i32 [ %niter546.next.3, %.lr.ph296 ], [ 0, %.lr.ph296.preheader ]
  %i.alr = load <8 x float>, ptr %.39293, align 1, !tbaa !116
  store <8 x float> %i.alr, ptr %.0707294, align 32, !tbaa !116
  %i.als = getelementptr inbounds nuw i8, ptr %.39293, i64 32
  %i.alt = getelementptr inbounds nuw i8, ptr %.0707294, i64 %.idx748 ; 2 uses
  %i.alu = load <8 x float>, ptr %i.als, align 1, !tbaa !116
  store <8 x float> %i.alu, ptr %i.alt, align 32, !tbaa !116
  %i.alv = getelementptr inbounds nuw i8, ptr %.39293, i64 64
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 %.idx748 ; 2 uses
  %i.alx = load <8 x float>, ptr %i.alv, align 1, !tbaa !116
  store <8 x float> %i.alx, ptr %i.alw, align 32, !tbaa !116
  %i.aly = getelementptr inbounds nuw i8, ptr %.39293, i64 96
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 %.idx748 ; 2 uses
  %i.ama = load <8 x float>, ptr %i.aly, align 1, !tbaa !116
  store <8 x float> %i.ama, ptr %i.alz, align 32, !tbaa !116
  %i.amb = getelementptr inbounds nuw i8, ptr %.39293, i64 128 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 %.idx748 ; 2 uses
  %niter546.next.3 = add i32 %niter546, 4         ; 2 uses
  %niter546.ncmp.3.not = icmp eq i32 %niter546.next.3, %unroll_iter545
  br i1 %niter546.ncmp.3.not, label %.loopexit.loopexit469.unr-lcssa, label %.lr.ph296, !llvm.loop !579

bb.y:                                             ; preds = %.split434
  br i1 %i.abw, label %.lr.ph301.preheader, label %.loopexit

.lr.ph301.preheader:                              ; preds = %bb.y
  %i.amd = load ptr, ptr %0, align 8, !tbaa !18
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %i.abt
  %i.amf = add nsw i64 %indvars.iv348, %i.abz
  %.idx379 = shl nsw i64 %i.amf, 4
  %i.amg = getelementptr inbounds i8, ptr %i.ame, i64 %.idx379 ; 2 uses
  br i1 %i.aco, label %.lr.ph301.epil.preheader, label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph301.preheader, %.lr.ph301
  %.0705299 = phi ptr [ %i.ams, %.lr.ph301 ], [ %i.amg, %.lr.ph301.preheader ] ; 2 uses
  %.41298 = phi ptr [ %i.amr, %.lr.ph301 ], [ %.36309, %.lr.ph301.preheader ] ; 5 uses
  %niter539 = phi i32 [ %niter539.next.3, %.lr.ph301 ], [ 0, %.lr.ph301.preheader ]
  %i.amh = load <4 x float>, ptr %.41298, align 1, !tbaa !116
  store <4 x float> %i.amh, ptr %.0705299, align 16, !tbaa !116
  %i.ami = getelementptr inbounds nuw i8, ptr %.41298, i64 16
  %i.amj = getelementptr inbounds nuw i8, ptr %.0705299, i64 %.idx ; 2 uses
  %i.amk = load <4 x float>, ptr %i.ami, align 1, !tbaa !116
  store <4 x float> %i.amk, ptr %i.amj, align 16, !tbaa !116
  %i.aml = getelementptr inbounds nuw i8, ptr %.41298, i64 32
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 %.idx ; 2 uses
  %i.amn = load <4 x float>, ptr %i.aml, align 1, !tbaa !116
  store <4 x float> %i.amn, ptr %i.amm, align 16, !tbaa !116
  %i.amo = getelementptr inbounds nuw i8, ptr %.41298, i64 48
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 %.idx ; 2 uses
  %i.amq = load <4 x float>, ptr %i.amo, align 1, !tbaa !116
  store <4 x float> %i.amq, ptr %i.amp, align 16, !tbaa !116
  %i.amr = getelementptr inbounds nuw i8, ptr %.41298, i64 64 ; 3 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amp, i64 %.idx ; 2 uses
  %niter539.next.3 = add nuw nsw i32 %niter539, 4 ; 2 uses
  %niter539.ncmp.3.not = icmp eq i32 %niter539.next.3, %unroll_iter538
  br i1 %niter539.ncmp.3.not, label %.loopexit.loopexit470.unr-lcssa, label %.lr.ph301, !llvm.loop !580

bb.z:                                             ; preds = %.split434
  br i1 %i.abx, label %.lr.ph306.preheader, label %.loopexit

.lr.ph306.preheader:                              ; preds = %bb.z
  %i.amt = load ptr, ptr %0, align 8, !tbaa !18
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.abt
  %i.amv = getelementptr [4 x i8], ptr %i.amu, i64 %indvars.iv348
  %i.amw = getelementptr [4 x i8], ptr %i.amv, i64 %i.abz ; 2 uses
  br i1 %i.acn, label %.lr.ph306.epil.preheader, label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306.preheader, %.lr.ph306
  %.0703304 = phi ptr [ %i.anu, %.lr.ph306 ], [ %i.amw, %.lr.ph306.preheader ] ; 2 uses
  %.43303 = phi ptr [ %i.ant, %.lr.ph306 ], [ %.36309, %.lr.ph306.preheader ] ; 9 uses
  %niter532 = phi i32 [ %niter532.next.7, %.lr.ph306 ], [ 0, %.lr.ph306.preheader ]
  %i.amx = load float, ptr %.43303, align 4, !tbaa !68
  store float %i.amx, ptr %.0703304, align 4, !tbaa !68
  %i.amy = getelementptr inbounds nuw i8, ptr %.43303, i64 4
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %.0703304, i64 %i.k ; 2 uses
  %i.ana = load float, ptr %i.amy, align 4, !tbaa !68
  store float %i.ana, ptr %i.amz, align 4, !tbaa !68
  %i.anb = getelementptr inbounds nuw i8, ptr %.43303, i64 8
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %i.k ; 2 uses
  %i.and = load float, ptr %i.anb, align 4, !tbaa !68
  store float %i.and, ptr %i.anc, align 4, !tbaa !68
  %i.ane = getelementptr inbounds nuw i8, ptr %.43303, i64 12
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %i.k ; 2 uses
  %i.ang = load float, ptr %i.ane, align 4, !tbaa !68
  store float %i.ang, ptr %i.anf, align 4, !tbaa !68
  %i.anh = getelementptr inbounds nuw i8, ptr %.43303, i64 16
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %i.k ; 2 uses
  %i.anj = load float, ptr %i.anh, align 4, !tbaa !68
  store float %i.anj, ptr %i.ani, align 4, !tbaa !68
  %i.ank = getelementptr inbounds nuw i8, ptr %.43303, i64 20
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.ani, i64 %i.k ; 2 uses
  %i.anm = load float, ptr %i.ank, align 4, !tbaa !68
  store float %i.anm, ptr %i.anl, align 4, !tbaa !68
  %i.ann = getelementptr inbounds nuw i8, ptr %.43303, i64 24
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %i.k ; 2 uses
  %i.anp = load float, ptr %i.ann, align 4, !tbaa !68
  store float %i.anp, ptr %i.ano, align 4, !tbaa !68
  %i.anq = getelementptr inbounds nuw i8, ptr %.43303, i64 28
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.k ; 2 uses
  %i.ans = load float, ptr %i.anq, align 4, !tbaa !68
  store float %i.ans, ptr %i.anr, align 4, !tbaa !68
  %i.ant = getelementptr inbounds nuw i8, ptr %.43303, i64 32 ; 3 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.k ; 2 uses
  %niter532.next.7 = add nuw nsw i32 %niter532, 8 ; 2 uses
  %niter532.ncmp.7 = icmp eq i32 %niter532.next.7, %unroll_iter531
  br i1 %niter532.ncmp.7, label %.loopexit.loopexit471.unr-lcssa, label %.lr.ph306, !llvm.loop !581

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph291
  br i1 %lcmp.mod549.not, label %.loopexit, label %.lr.ph291.epil.preheader

.lr.ph291.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph291.preheader
  %.37290.epil.init = phi ptr [ %.36309, %.lr.ph291.preheader ], [ %i.all, %.loopexit.loopexit.unr-lcssa ]
  %.0710288.epil.init = phi ptr [ %i.ala, %.lr.ph291.preheader ], [ %i.alm, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod551)
  br label %.lr.ph291.epil

.lr.ph291.epil:                                   ; preds = %.lr.ph291.epil, %.lr.ph291.epil.preheader
  %.37290.epil = phi ptr [ %i.anw, %.lr.ph291.epil ], [ %.37290.epil.init, %.lr.ph291.epil.preheader ] ; 2 uses
  %.0710288.epil = phi ptr [ %i.anx, %.lr.ph291.epil ], [ %.0710288.epil.init, %.lr.ph291.epil.preheader ] ; 2 uses
  %epil.iter548 = phi i32 [ %epil.iter548.next, %.lr.ph291.epil ], [ 0, %.lr.ph291.epil.preheader ]
  %i.anv = load <16 x float>, ptr %.37290.epil, align 1, !tbaa !116
  store <16 x float> %i.anv, ptr %.0710288.epil, align 64, !tbaa !116
  %i.anw = getelementptr inbounds nuw i8, ptr %.37290.epil, i64 64 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.0710288.epil, i64 %.idx749
  %epil.iter548.next = add i32 %epil.iter548, 1   ; 2 uses
  %epil.iter548.cmp.not = icmp eq i32 %epil.iter548.next, %xtraiter547
  br i1 %epil.iter548.cmp.not, label %.loopexit, label %.lr.ph291.epil, !llvm.loop !582

.loopexit.loopexit469.unr-lcssa:                  ; preds = %.lr.ph296
  br i1 %lcmp.mod542.not, label %.loopexit, label %.lr.ph296.epil.preheader

.lr.ph296.epil.preheader:                         ; preds = %.loopexit.loopexit469.unr-lcssa, %.lr.ph296.preheader
  %.0707294.epil.init = phi ptr [ %i.alq, %.lr.ph296.preheader ], [ %i.amc, %.loopexit.loopexit469.unr-lcssa ]
  %.39293.epil.init = phi ptr [ %.36309, %.lr.ph296.preheader ], [ %i.amb, %.loopexit.loopexit469.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod544)
  br label %.lr.ph296.epil

.lr.ph296.epil:                                   ; preds = %.lr.ph296.epil, %.lr.ph296.epil.preheader
  %.0707294.epil = phi ptr [ %i.aoa, %.lr.ph296.epil ], [ %.0707294.epil.init, %.lr.ph296.epil.preheader ] ; 2 uses
  %.39293.epil = phi ptr [ %i.anz, %.lr.ph296.epil ], [ %.39293.epil.init, %.lr.ph296.epil.preheader ] ; 2 uses
  %epil.iter541 = phi i32 [ %epil.iter541.next, %.lr.ph296.epil ], [ 0, %.lr.ph296.epil.preheader ]
  %i.any = load <8 x float>, ptr %.39293.epil, align 1, !tbaa !116
  store <8 x float> %i.any, ptr %.0707294.epil, align 32, !tbaa !116
  %i.anz = getelementptr inbounds nuw i8, ptr %.39293.epil, i64 32 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.0707294.epil, i64 %.idx748
  %epil.iter541.next = add i32 %epil.iter541, 1   ; 2 uses
  %epil.iter541.cmp.not = icmp eq i32 %epil.iter541.next, %xtraiter540
  br i1 %epil.iter541.cmp.not, label %.loopexit, label %.lr.ph296.epil, !llvm.loop !583

.loopexit.loopexit470.unr-lcssa:                  ; preds = %.lr.ph301
  br i1 %lcmp.mod535.not, label %.loopexit, label %.lr.ph301.epil.preheader

.lr.ph301.epil.preheader:                         ; preds = %.loopexit.loopexit470.unr-lcssa, %.lr.ph301.preheader
  %.0705299.epil.init = phi ptr [ %i.amg, %.lr.ph301.preheader ], [ %i.ams, %.loopexit.loopexit470.unr-lcssa ]
  %.41298.epil.init = phi ptr [ %.36309, %.lr.ph301.preheader ], [ %i.amr, %.loopexit.loopexit470.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod537)
  br label %.lr.ph301.epil

.lr.ph301.epil:                                   ; preds = %.lr.ph301.epil, %.lr.ph301.epil.preheader
  %.0705299.epil = phi ptr [ %i.aod, %.lr.ph301.epil ], [ %.0705299.epil.init, %.lr.ph301.epil.preheader ] ; 2 uses
  %.41298.epil = phi ptr [ %i.aoc, %.lr.ph301.epil ], [ %.41298.epil.init, %.lr.ph301.epil.preheader ] ; 2 uses
  %epil.iter534 = phi i32 [ %epil.iter534.next, %.lr.ph301.epil ], [ 0, %.lr.ph301.epil.preheader ]
  %i.aob = load <4 x float>, ptr %.41298.epil, align 1, !tbaa !116
  store <4 x float> %i.aob, ptr %.0705299.epil, align 16, !tbaa !116
  %i.aoc = getelementptr inbounds nuw i8, ptr %.41298.epil, i64 16 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.0705299.epil, i64 %.idx
  %epil.iter534.next = add i32 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i32 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %.loopexit, label %.lr.ph301.epil, !llvm.loop !584

.loopexit.loopexit471.unr-lcssa:                  ; preds = %.lr.ph306
  br i1 %lcmp.mod528.not, label %.loopexit, label %.lr.ph306.epil.preheader

.lr.ph306.epil.preheader:                         ; preds = %.loopexit.loopexit471.unr-lcssa, %.lr.ph306.preheader
  %.0703304.epil.init = phi ptr [ %i.amw, %.lr.ph306.preheader ], [ %i.anu, %.loopexit.loopexit471.unr-lcssa ]
  %.43303.epil.init = phi ptr [ %.36309, %.lr.ph306.preheader ], [ %i.ant, %.loopexit.loopexit471.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod530)
  br label %.lr.ph306.epil

.lr.ph306.epil:                                   ; preds = %.lr.ph306.epil, %.lr.ph306.epil.preheader
  %.0703304.epil = phi ptr [ %i.aog, %.lr.ph306.epil ], [ %.0703304.epil.init, %.lr.ph306.epil.preheader ] ; 2 uses
  %.43303.epil = phi ptr [ %i.aof, %.lr.ph306.epil ], [ %.43303.epil.init, %.lr.ph306.epil.preheader ] ; 2 uses
  %epil.iter527 = phi i32 [ %epil.iter527.next, %.lr.ph306.epil ], [ 0, %.lr.ph306.epil.preheader ]
  %i.aoe = load float, ptr %.43303.epil, align 4, !tbaa !68
  store float %i.aoe, ptr %.0703304.epil, align 4, !tbaa !68
  %i.aof = getelementptr inbounds nuw i8, ptr %.43303.epil, i64 4 ; 2 uses
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %.0703304.epil, i64 %i.k
  %epil.iter527.next = add i32 %epil.iter527, 1   ; 2 uses
  %epil.iter527.cmp.not = icmp eq i32 %epil.iter527.next, %xtraiter526
  br i1 %epil.iter527.cmp.not, label %.loopexit, label %.lr.ph306.epil, !llvm.loop !585

.loopexit:                                        ; preds = %.loopexit.loopexit471.unr-lcssa, %.lr.ph306.epil, %.loopexit.loopexit470.unr-lcssa, %.lr.ph301.epil, %.loopexit.loopexit469.unr-lcssa, %.lr.ph296.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph291.epil, %bb.v, %.split434, %bb.w, %bb.x, %bb.y, %bb.z
  %.44 = phi ptr [ %.36309, %.split434 ], [ %.36309, %bb.z ], [ %i.anw, %.lr.ph291.epil ], [ %.36309, %bb.v ], [ %.36309, %bb.y ], [ %i.anz, %.lr.ph296.epil ], [ %.36309, %bb.x ], [ %.36309, %bb.w ], [ %i.aoc, %.lr.ph301.epil ], [ %i.all, %.loopexit.loopexit.unr-lcssa ], [ %i.amb, %.loopexit.loopexit469.unr-lcssa ], [ %i.amr, %.loopexit.loopexit470.unr-lcssa ], [ %i.ant, %.loopexit.loopexit471.unr-lcssa ], [ %i.aof, %.lr.ph306.epil ]
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count
  br i1 %exitcond351.not, label %._crit_edge, label %bb.v, !llvm.loop !586

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL11gemm_AT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not71 = icmp sgt i32 %i.k, %i.j
  br i1 %.not71, label %._crit_edge, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.072 = phi i32 [ %i.k, %.noexc45.lr.ph ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.p = sdiv i32 %.072, %i.o                     ; 2 uses
  %i.q = srem i32 %.072, %i.o                     ; 2 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = load i32, ptr %6, align 4, !tbaa !45
  %i.w = sub nsw i32 %i.v, %i.s
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.w) ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !45
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !88, !noalias !587
  %i.aa = load ptr, ptr %8, align 8, !tbaa !18, !noalias !587
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !587
  %i.ac = sext i32 %i.p to i64
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !587 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = sext i32 %i.z to i64
  %i.ai = sext i32 %i.q to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45
  %.not36 = icmp eq i32 %i.am, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.an = add nsw i32 %.072, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.072, %i.ao
  br i1 %.not.not, label %.noexc45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL11gemm_AT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %16) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not187 = icmp sgt i32 %i.k, %i.j
  br i1 %.not187, label %._crit_edge190, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.059188 = phi i32 [ %i.k, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aj = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %i.ak = sdiv i32 %.059188, %i.aj
  %i.al = srem i32 %.059188, %i.aj
  %i.am = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.ak                ; 5 uses
  %i.ao = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.al                ; 5 uses
  %i.aq = load i32, ptr %6, align 4, !tbaa !45
  %i.ar = sub nsw i32 %i.aq, %i.an
  %.sroa.speculated183 = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ar) ; 3 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !45
  %i.at = sub nsw i32 %i.as, %i.ap
  %.sroa.speculated179 = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  store i64 0, ptr %i.u, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.au = load i32, ptr %8, align 4, !tbaa !45
  %i.av = load i32, ptr %9, align 4, !tbaa !45
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %10, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %11, align 4, !tbaa !45
  %.not60 = icmp eq i32 %i.az, 0
end_hunk_5
begin_hunk_6_@_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined:bb.a
  %.0177.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.jo, %.preheader201.i.loopexit.unr-lcssa ], [ %i.jo, %.lr.ph277.i.epil.preheader ] ; 5 uses
  %i.ny = icmp slt i32 %.0177.lcssa.i, %.sroa.speculated
  br i1 %i.ny, label %.lr.ph284.i.preheader, label %._crit_edge285.i

.lr.ph284.i.preheader:                            ; preds = %.preheader201.i
  %i.nz = sub i32 %.sroa.speculated, %.0177.lcssa.i
  %xtraiter176 = and i32 %i.nz, 3                 ; 2 uses
  %lcmp.mod177.not = icmp eq i32 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.lr.ph284.i.prol.loopexit, label %.lr.ph284.i.prol

.lr.ph284.i.prol:                                 ; preds = %.lr.ph284.i.preheader, %.lr.ph284.i.prol
  %.1283.i.prol = phi i32 [ %i.og, %.lr.ph284.i.prol ], [ %.0177.lcssa.i, %.lr.ph284.i.preheader ]
  %.1179282.i.prol = phi ptr [ %i.of, %.lr.ph284.i.prol ], [ %.0178.lcssa.i, %.lr.ph284.i.preheader ] ; 3 uses
  %.11281.i.prol = phi ptr [ %i.oe, %.lr.ph284.i.prol ], [ %.10.lcssa.i, %.lr.ph284.i.preheader ] ; 3 uses
  %prol.iter178 = phi i32 [ %prol.iter178.next, %.lr.ph284.i.prol ], [ 0, %.lr.ph284.i.preheader ]
  %i.oa = load i8, ptr %.1179282.i.prol, align 1, !tbaa !116
  store i8 %i.oa, ptr %.11281.i.prol, align 1, !tbaa !116
  %i.ob = getelementptr inbounds nuw i8, ptr %.1179282.i.prol, i64 1
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !116
  %i.od = getelementptr inbounds nuw i8, ptr %.11281.i.prol, i64 1
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !116
  %i.oe = getelementptr inbounds nuw i8, ptr %.11281.i.prol, i64 2 ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %.1179282.i.prol, i64 %i.jl ; 2 uses
  %i.og = add nuw nsw i32 %.1283.i.prol, 1        ; 2 uses
  %prol.iter178.next = add i32 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i32 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.lr.ph284.i.prol.loopexit, label %.lr.ph284.i.prol, !llvm.loop !670

.lr.ph284.i.prol.loopexit:                        ; preds = %.lr.ph284.i.prol, %.lr.ph284.i.preheader
  %.lcssa148.unr = phi ptr [ poison, %.lr.ph284.i.preheader ], [ %i.oe, %.lr.ph284.i.prol ]
  %.1283.i.unr = phi i32 [ %.0177.lcssa.i, %.lr.ph284.i.preheader ], [ %i.og, %.lr.ph284.i.prol ]
  %.1179282.i.unr = phi ptr [ %.0178.lcssa.i, %.lr.ph284.i.preheader ], [ %i.of, %.lr.ph284.i.prol ]
  %.11281.i.unr = phi ptr [ %.10.lcssa.i, %.lr.ph284.i.preheader ], [ %i.oe, %.lr.ph284.i.prol ]
  %i.oh = sub i32 %.0177.lcssa.i, %.sroa.speculated
  %i.oi = icmp ugt i32 %i.oh, -4
  br i1 %i.oi, label %._crit_edge285.i, label %.lr.ph284.i

.lr.ph277.i:                                      ; preds = %.lr.ph277.i.preheader, %.lr.ph277.i
  %.0178274.i = phi ptr [ %i.pg, %.lr.ph277.i ], [ %i.nl, %.lr.ph277.i.preheader ] ; 4 uses
  %.10273.i = phi ptr [ %i.pf, %.lr.ph277.i ], [ %.9288.i, %.lr.ph277.i.preheader ] ; 9 uses
  %niter175 = phi i32 [ %niter175.next.1, %.lr.ph277.i ], [ 0, %.lr.ph277.i.preheader ]
  %i.oj = load i8, ptr %.0178274.i, align 1, !tbaa !116
  store i8 %i.oj, ptr %.10273.i, align 1, !tbaa !116
  %i.ok = getelementptr inbounds i8, ptr %.0178274.i, i64 %i.jl ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !116
  %i.om = getelementptr inbounds nuw i8, ptr %.10273.i, i64 1
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !116
  %i.on = getelementptr inbounds nuw i8, ptr %.0178274.i, i64 1
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !116
  %i.op = getelementptr inbounds nuw i8, ptr %.10273.i, i64 2
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !116
  %i.oq = getelementptr i8, ptr %i.ok, i64 1
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !116
  %i.os = getelementptr inbounds nuw i8, ptr %.10273.i, i64 3
  store i8 %i.or, ptr %i.os, align 1, !tbaa !116
  %i.ot = getelementptr inbounds nuw i8, ptr %.10273.i, i64 4
  %i.ou = getelementptr inbounds i8, ptr %.0178274.i, i64 %i.jn ; 4 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !116
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !116
  %i.ow = getelementptr inbounds i8, ptr %i.ou, i64 %i.jl ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !116
  %i.oy = getelementptr inbounds nuw i8, ptr %.10273.i, i64 5
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !116
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !116
  %i.pb = getelementptr inbounds nuw i8, ptr %.10273.i, i64 6
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !116
  %i.pc = getelementptr i8, ptr %i.ow, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !116
  %i.pe = getelementptr inbounds nuw i8, ptr %.10273.i, i64 7
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !116
  %i.pf = getelementptr inbounds nuw i8, ptr %.10273.i, i64 8 ; 3 uses
  %i.pg = getelementptr inbounds i8, ptr %i.ou, i64 %i.jn ; 3 uses
  %niter175.next.1 = add nuw nsw i32 %niter175, 2 ; 2 uses
  %niter175.ncmp.1.not = icmp eq i32 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1.not, label %.preheader201.i.loopexit.unr-lcssa, label %.lr.ph277.i, !llvm.loop !671

.lr.ph284.i:                                      ; preds = %.lr.ph284.i.prol.loopexit, %.lr.ph284.i
  %.1283.i = phi i32 [ %i.qf, %.lr.ph284.i ], [ %.1283.i.unr, %.lr.ph284.i.prol.loopexit ]
  %.1179282.i = phi ptr [ %i.qe, %.lr.ph284.i ], [ %.1179282.i.unr, %.lr.ph284.i.prol.loopexit ] ; 3 uses
  %.11281.i = phi ptr [ %i.qd, %.lr.ph284.i ], [ %.11281.i.unr, %.lr.ph284.i.prol.loopexit ] ; 9 uses
  %i.ph = load i8, ptr %.1179282.i, align 1, !tbaa !116
  store i8 %i.ph, ptr %.11281.i, align 1, !tbaa !116
  %i.pi = getelementptr inbounds nuw i8, ptr %.1179282.i, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !116
  %i.pk = getelementptr inbounds nuw i8, ptr %.11281.i, i64 1
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !116
  %i.pl = getelementptr inbounds nuw i8, ptr %.11281.i, i64 2
  %i.pm = getelementptr inbounds i8, ptr %.1179282.i, i64 %i.jl ; 3 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !116
  store i8 %i.pn, ptr %i.pl, align 1, !tbaa !116
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !116
  %i.pq = getelementptr inbounds nuw i8, ptr %.11281.i, i64 3
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !116
  %i.pr = getelementptr inbounds nuw i8, ptr %.11281.i, i64 4
  %i.ps = getelementptr inbounds i8, ptr %i.pm, i64 %i.jl ; 3 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !116
  store i8 %i.pt, ptr %i.pr, align 1, !tbaa !116
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !116
  %i.pw = getelementptr inbounds nuw i8, ptr %.11281.i, i64 5
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !116
  %i.px = getelementptr inbounds nuw i8, ptr %.11281.i, i64 6
  %i.py = getelementptr inbounds i8, ptr %i.ps, i64 %i.jl ; 3 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !116
  store i8 %i.pz, ptr %i.px, align 1, !tbaa !116
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !116
  %i.qc = getelementptr inbounds nuw i8, ptr %.11281.i, i64 7
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !116
  %i.qd = getelementptr inbounds nuw i8, ptr %.11281.i, i64 8 ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.py, i64 %i.jl
  %i.qf = add nuw nsw i32 %.1283.i, 4             ; 2 uses
  %exitcond339.not.i.3 = icmp eq i32 %i.qf, %.sroa.speculated
  br i1 %exitcond339.not.i.3, label %._crit_edge285.i, label %.lr.ph284.i, !llvm.loop !672

._crit_edge285.i:                                 ; preds = %.lr.ph284.i.prol.loopexit, %.lr.ph284.i, %.preheader201.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader201.i ], [ %.lcssa148.unr, %.lr.ph284.i.prol.loopexit ], [ %i.qd, %.lr.ph284.i ] ; 2 uses
  %indvars.iv.next341.i = add nuw nsw i64 %indvars.iv340.i, 2 ; 3 uses
  %i.qg = icmp slt i64 %indvars.iv.next341.i, %invariant.op367.i
  br i1 %i.qg, label %bb.l, label %.preheader.loopexit.i, !llvm.loop !673

.lr.ph296.i:                                      ; preds = %._crit_edge297.i, %.lr.ph296.preheader.i
  %indvars.iv344.i = phi i64 [ %i.na, %.lr.ph296.preheader.i ], [ %indvars.iv.next345.i, %._crit_edge297.i ] ; 2 uses
  %.12300.i = phi ptr [ %.9.lcssa.i, %.lr.ph296.preheader.i ], [ %.lcssa149, %._crit_edge297.i ] ; 2 uses
  %i.qh = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.qi = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.qj = sext i32 %i.qi to i64
  %i.qk = mul nsw i64 %i.qj, %i.mx
  %i.ql = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.qm = mul i64 %i.qk, %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qm
  %i.qo = getelementptr i8, ptr %i.qn, i64 %indvars.iv344.i
  %i.qp = getelementptr i8, ptr %i.qo, i64 %i.aj  ; 2 uses
  br i1 %i.nc, label %.epil.preheader179, label %.lr.ph296.i.new

.lr.ph296.i.new:                                  ; preds = %.lr.ph296.i, %.lr.ph296.i.new
  %.0176293.i = phi ptr [ %i.rn, %.lr.ph296.i.new ], [ %i.qp, %.lr.ph296.i ] ; 2 uses
  %.13292.i = phi ptr [ %i.rm, %.lr.ph296.i.new ], [ %.12300.i, %.lr.ph296.i ] ; 9 uses
  %niter185 = phi i32 [ %niter185.next.7, %.lr.ph296.i.new ], [ 0, %.lr.ph296.i ]
  %i.qq = load i8, ptr %.0176293.i, align 1, !tbaa !116
  store i8 %i.qq, ptr %.13292.i, align 1, !tbaa !116
  %i.qr = getelementptr inbounds nuw i8, ptr %.13292.i, i64 1
  %i.qs = getelementptr inbounds i8, ptr %.0176293.i, i64 %i.mz ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !116
  store i8 %i.qt, ptr %i.qr, align 1, !tbaa !116
  %i.qu = getelementptr inbounds nuw i8, ptr %.13292.i, i64 2
  %i.qv = getelementptr inbounds i8, ptr %i.qs, i64 %i.mz ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !116
  store i8 %i.qw, ptr %i.qu, align 1, !tbaa !116
  %i.qx = getelementptr inbounds nuw i8, ptr %.13292.i, i64 3
  %i.qy = getelementptr inbounds i8, ptr %i.qv, i64 %i.mz ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !116
  store i8 %i.qz, ptr %i.qx, align 1, !tbaa !116
  %i.ra = getelementptr inbounds nuw i8, ptr %.13292.i, i64 4
  %i.rb = getelementptr inbounds i8, ptr %i.qy, i64 %i.mz ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !116
  store i8 %i.rc, ptr %i.ra, align 1, !tbaa !116
  %i.rd = getelementptr inbounds nuw i8, ptr %.13292.i, i64 5
  %i.re = getelementptr inbounds i8, ptr %i.rb, i64 %i.mz ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !116
  store i8 %i.rf, ptr %i.rd, align 1, !tbaa !116
  %i.rg = getelementptr inbounds nuw i8, ptr %.13292.i, i64 6
  %i.rh = getelementptr inbounds i8, ptr %i.re, i64 %i.mz ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !116
  store i8 %i.ri, ptr %i.rg, align 1, !tbaa !116
  %i.rj = getelementptr inbounds nuw i8, ptr %.13292.i, i64 7
  %i.rk = getelementptr inbounds i8, ptr %i.rh, i64 %i.mz ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !116
  store i8 %i.rl, ptr %i.rj, align 1, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.13292.i, i64 8 ; 3 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rk, i64 %i.mz ; 2 uses
  %niter185.next.7 = add i32 %niter185, 8         ; 2 uses
  %niter185.ncmp.7 = icmp eq i32 %niter185.next.7, %unroll_iter184
  br i1 %niter185.ncmp.7, label %._crit_edge297.i.unr-lcssa, label %.lr.ph296.i.new, !llvm.loop !674

._crit_edge297.i.unr-lcssa:                       ; preds = %.lr.ph296.i.new
  br i1 %lcmp.mod181.not, label %._crit_edge297.i, label %.epil.preheader179

.epil.preheader179:                               ; preds = %._crit_edge297.i.unr-lcssa, %.lr.ph296.i
  %.0176293.i.epil.init = phi ptr [ %i.qp, %.lr.ph296.i ], [ %i.rn, %._crit_edge297.i.unr-lcssa ]
  %.13292.i.epil.init = phi ptr [ %.12300.i, %.lr.ph296.i ], [ %i.rm, %._crit_edge297.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader179
  %.0176293.i.epil = phi ptr [ %.0176293.i.epil.init, %.epil.preheader179 ], [ %i.rq, %bb.m ] ; 2 uses
  %.13292.i.epil = phi ptr [ %.13292.i.epil.init, %.epil.preheader179 ], [ %i.rp, %bb.m ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader179 ], [ %epil.iter.next, %bb.m ]
  %i.ro = load i8, ptr %.0176293.i.epil, align 1, !tbaa !116
  store i8 %i.ro, ptr %.13292.i.epil, align 1, !tbaa !116
  %i.rp = getelementptr inbounds nuw i8, ptr %.13292.i.epil, i64 1 ; 2 uses
  %i.rq = getelementptr inbounds i8, ptr %.0176293.i.epil, i64 %i.mz
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter180
  br i1 %epil.iter.cmp.not, label %._crit_edge297.i, label %bb.m, !llvm.loop !675

._crit_edge297.i:                                 ; preds = %bb.m, %._crit_edge297.i.unr-lcssa
  %.lcssa149 = phi ptr [ %i.rm, %._crit_edge297.i.unr-lcssa ], [ %i.rp, %bb.m ]
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1 ; 2 uses
  %exitcond347.not.i = icmp eq i64 %indvars.iv.next345.i, %wide.trip.count.i
  br i1 %exitcond347.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph296.i, !llvm.loop !676

bb.n:                                             ; preds = %.noexc40
  invoke fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated60, i32 noundef %.077, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.v

_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge297.i, %.lr.ph301.i, %.preheader.i, %bb.d, %bb.f, %bb.h, %bb.n
  %i.rr = load ptr, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %.not.i33 = icmp eq ptr %i.rr, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.rs = atomicrmw add ptr %i.rr, i32 -1 acq_rel, align 4
  %i.rt = icmp eq i32 %i.rs, 1
  br i1 %i.rt, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.ru = load ptr, ptr %i.u, align 8, !tbaa !17  ; 3 uses
  %.not3.i34 = icmp eq ptr %i.ru, null
  %i.rv = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.rw = load ptr, ptr %i.ru, align 8, !tbaa !9
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = load ptr, ptr %i.rx, align 8
  invoke void %i.ry(ptr noundef nonnull align 8 dereferenceable(8) %i.ru, ptr noundef %i.rv)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.t, !inline_history !19

bb.r:                                             ; preds = %bb.p
  %.not.i37 = icmp eq ptr %i.rv, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.rv) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  %i.sa = extractvalue { ptr, i32 } %i.rz, 0
  call void @__clang_call_terminate(ptr %i.sa) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.o, %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.sb = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.sc = add nsw i32 %i.sb, %.077                ; 2 uses
  %i.sd = load i32, ptr %4, align 4, !tbaa !45    ; 3 uses
  %i.se = icmp slt i32 %i.sc, %i.sd
  br i1 %i.se, label %.noexc40, label %._crit_edge.loopexit, !llvm.loop !677

._crit_edge81:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge81, %bb.a
  ret void

bb.v:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.n
  %i.sf = landingpad { ptr, i32 }
          catch ptr null
  %i.sg = extractvalue { ptr, i32 } %i.sf, 0
  call void @__clang_call_terminate(ptr %i.sg) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #14 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn27pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not173 = icmp eq i32 %i.b, 0
  br i1 %.not173, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not174 = icmp eq i32 %i.c, 0
  br i1 %.not174, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.d = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.e = icmp sgt i32 %3, 15
  br i1 %i.e, label %.lr.ph202, label %.preheader187

.lr.ph202:                                        ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %4 to i64
  %i.i = icmp sgt i32 %5, 1
  %i.j = and i32 %5, -2                           ; 2 uses
  %i.k = zext nneg i32 %3 to i64
  %i.l = sext i32 %2 to i64
  %i.m = add i32 %5, -2                           ; 2 uses
  %i.n = lshr i32 %i.m, 1
  %i.o = add nuw i32 %i.n, 1                      ; 2 uses
  %xtraiter = and i32 %i.o, 3                     ; 3 uses
  %i.p = icmp ult i32 %i.m, 6
  %unroll_iter = and i32 %i.o, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod489 = icmp ne i32 %xtraiter, 0
  br label %bb.h

.preheader187.loopexit:                           ; preds = %._crit_edge
  %i.q = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.loopexit, %bb.g
  %.0156.lcssa = phi i32 [ 0, %bb.g ], [ %i.q, %.preheader187.loopexit ] ; 3 uses
  %.0154.lcssa = phi ptr [ %i.d, %bb.g ], [ %.2.lcssa, %.preheader187.loopexit ] ; 2 uses
  %i.r = or disjoint i32 %.0156.lcssa, 7
  %i.s = icmp slt i32 %i.r, %3
  br i1 %i.s, label %.lr.ph221, label %.preheader185

.lr.ph221:                                        ; preds = %.preheader187
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = sext i32 %4 to i64
  %i.w = icmp sgt i32 %5, 1
  %i.x = and i32 %5, -2                           ; 2 uses
  %i.y = zext nneg i32 %.0156.lcssa to i64
  %i.z = sext i32 %3 to i64
  %i.aa = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.z, -7
  %i.ab = add i32 %5, -2                          ; 2 uses
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = add nuw i32 %i.ac, 1                    ; 2 uses
  %xtraiter492 = and i32 %i.ad, 3                 ; 3 uses
  %i.ae = icmp ult i32 %i.ab, 6
  %unroll_iter498 = and i32 %i.ad, -4
  %lcmp.mod494.not = icmp eq i32 %xtraiter492, 0
  %lcmp.mod497 = icmp ne i32 %xtraiter492, 0
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph202, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0154200 = phi ptr [ %i.d, %.lr.ph202 ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %i.af = add nsw i64 %indvars.iv, %i.l
  %i.ag = load ptr, ptr %0, align 8, !tbaa !18
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !88  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.af, %i.ai
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !59
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.h ; 3 uses
  %i.ao = insertelement <16 x i32> poison, i32 %i.ah, i64 0
  %i.ap = shufflevector <16 x i32> %i.ao, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aq = mul <16 x i32> %i.ap, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader188

.lr.ph.preheader:                                 ; preds = %bb.h
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader188.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader188, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader188.loopexit.unr-lcssa, %.lr.ph.preheader
  %.1155191.epil.init = phi ptr [ %.0154200, %.lr.ph.preheader ], [ %i.bs, %.preheader188.loopexit.unr-lcssa ]
  %.0165190.epil.init = phi ptr [ %i.an, %.lr.ph.preheader ], [ %i.bt, %.preheader188.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod489)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1155191.epil = phi ptr [ %i.at, %.lr.ph.epil ], [ %.1155191.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0165190.epil = phi ptr [ %i.au, %.lr.ph.epil ], [ %.0165190.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ar = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.0165190.epil, <16 x i32> %i.aq, <16 x i1> splat (i1 true), i32 1)
  %i.as = trunc <16 x i32> %i.ar to <16 x i16>
  store <16 x i16> %i.as, ptr %.1155191.epil, align 1, !tbaa !116
  %i.at = getelementptr inbounds nuw i8, ptr %.1155191.epil, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0165190.epil, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader188, label %.lr.ph.epil, !llvm.loop !678

.preheader188:                                    ; preds = %.preheader188.loopexit.unr-lcssa, %.lr.ph.epil, %bb.h
  %.0171.lcssa = phi i32 [ 0, %bb.h ], [ %i.j, %.lr.ph.epil ], [ %i.j, %.preheader188.loopexit.unr-lcssa ] ; 5 uses
  %.0165.lcssa = phi ptr [ %i.an, %bb.h ], [ %i.bt, %.preheader188.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.epil ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii:bb.a

.lr.ph257:                                        ; preds = %.lr.ph257.prol.loopexit, %.lr.ph257
  %.1256 = phi i32 [ %i.or, %.lr.ph257 ], [ %.1256.unr, %.lr.ph257.prol.loopexit ]
  %.1151255 = phi ptr [ %i.oq, %.lr.ph257 ], [ %.1151255.unr, %.lr.ph257.prol.loopexit ] ; 5 uses
  %.1153254 = phi ptr [ %i.op, %.lr.ph257 ], [ %.1153254.unr, %.lr.ph257.prol.loopexit ] ; 5 uses
  %.11253 = phi ptr [ %i.oo, %.lr.ph257 ], [ %.11253.unr, %.lr.ph257.prol.loopexit ] ; 9 uses
  %i.nt = load i8, ptr %.1153254, align 1, !tbaa !116
  store i8 %i.nt, ptr %.11253, align 1, !tbaa !116
  %i.nu = load i8, ptr %.1151255, align 1, !tbaa !116
  %i.nv = getelementptr inbounds nuw i8, ptr %.11253, i64 1
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !116
  %i.nw = getelementptr inbounds nuw i8, ptr %.11253, i64 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.1153254, i64 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.1151255, i64 1
  %i.nz = load i8, ptr %i.nx, align 1, !tbaa !116
  store i8 %i.nz, ptr %i.nw, align 1, !tbaa !116
  %i.oa = load i8, ptr %i.ny, align 1, !tbaa !116
  %i.ob = getelementptr inbounds nuw i8, ptr %.11253, i64 3
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !116
  %i.oc = getelementptr inbounds nuw i8, ptr %.11253, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %.1153254, i64 2
  %i.oe = getelementptr inbounds nuw i8, ptr %.1151255, i64 2
  %i.of = load i8, ptr %i.od, align 1, !tbaa !116
  store i8 %i.of, ptr %i.oc, align 1, !tbaa !116
  %i.og = load i8, ptr %i.oe, align 1, !tbaa !116
  %i.oh = getelementptr inbounds nuw i8, ptr %.11253, i64 5
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !116
  %i.oi = getelementptr inbounds nuw i8, ptr %.11253, i64 6
  %i.oj = getelementptr inbounds nuw i8, ptr %.1153254, i64 3
  %i.ok = getelementptr inbounds nuw i8, ptr %.1151255, i64 3
  %i.ol = load i8, ptr %i.oj, align 1, !tbaa !116
  store i8 %i.ol, ptr %i.oi, align 1, !tbaa !116
  %i.om = load i8, ptr %i.ok, align 1, !tbaa !116
  %i.on = getelementptr inbounds nuw i8, ptr %.11253, i64 7
  store i8 %i.om, ptr %i.on, align 1, !tbaa !116
  %i.oo = getelementptr inbounds nuw i8, ptr %.11253, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.1153254, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.1151255, i64 4
  %i.or = add nuw nsw i32 %.1256, 4               ; 2 uses
  %exitcond305.not.3 = icmp eq i32 %i.or, %5
  br i1 %exitcond305.not.3, label %._crit_edge258, label %.lr.ph257, !llvm.loop !715

._crit_edge258:                                   ; preds = %.lr.ph257.prol.loopexit, %.lr.ph257, %middle.block, %vec.epilog.middle.block, %.preheader182
  %.11.lcssa = phi ptr [ %.10.lcssa, %.preheader182 ], [ %i.mr, %vec.epilog.middle.block ], [ %i.mj, %middle.block ], [ %.lcssa477.unr, %.lr.ph257.prol.loopexit ], [ %i.oo, %.lr.ph257 ] ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 2 ; 3 uses
  %i.os = icmp slt i64 %indvars.iv.next307, %invariant.op333
  br i1 %i.os, label %bb.k, label %.preheader.loopexit, !llvm.loop !716

iter.check456:                                    ; preds = %.lr.ph269.preheader, %._crit_edge270
  %indvars.iv310 = phi i64 [ %i.km, %.lr.ph269.preheader ], [ %indvars.iv.next311, %._crit_edge270 ] ; 2 uses
  %.12273 = phi ptr [ %.9.lcssa, %.lr.ph269.preheader ], [ %.lcssa, %._crit_edge270 ] ; 7 uses
  %i.ot = add i64 %indvars.iv310, %i.kn
  %i.ou = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ov = load i32, ptr %i.ki, align 4, !tbaa !88
  %i.ow = sext i32 %i.ov to i64
  %i.ox = mul i64 %i.ot, %i.ow
  %i.oy = load i64, ptr %i.kj, align 8, !tbaa !59
  %i.oz = mul i64 %i.ox, %i.oy                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.oz
  %i.pb = getelementptr inbounds i8, ptr %i.pa, i64 %i.kk ; 6 uses
  br i1 %min.iters.check437, label %vec.epilog.scalar.ph457.preheader, label %vector.memcheck435

vector.memcheck435:                               ; preds = %iter.check456
  %i.pc = ptrtoaddr ptr %i.ou to i64
  %.12273436 = ptrtoaddr ptr %.12273 to i64
  %i.pd = add i64 %i.kk, %i.pc
  %i.pe = add i64 %i.pd, %i.oz
  %i.pf = sub i64 %i.pe, %.12273436
  %diff.check = icmp ugt i64 %i.pf, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph457.preheader, label %vector.main.loop.iter.check438

vector.main.loop.iter.check438:                   ; preds = %vector.memcheck435
  br i1 %min.iters.check439, label %vec.epilog.ph460, label %vector.ph440

vector.ph440:                                     ; preds = %vector.main.loop.iter.check438
  %i.pg = getelementptr i8, ptr %i.pb, i64 %n.vec441
  %i.ph = getelementptr i8, ptr %.12273, i64 %n.vec441 ; 2 uses
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next450, %vector.body442 ] ; 3 uses
  %next.gep444 = getelementptr i8, ptr %i.pb, i64 %index443 ; 4 uses
  %next.gep445 = getelementptr i8, ptr %.12273, i64 %index443 ; 4 uses
  %i.pi = getelementptr i8, ptr %next.gep444, i64 64
  %i.pj = getelementptr i8, ptr %next.gep444, i64 128
  %i.pk = getelementptr i8, ptr %next.gep444, i64 192
  %wide.load446 = load <64 x i8>, ptr %next.gep444, align 1, !tbaa !116
  %wide.load447 = load <64 x i8>, ptr %i.pi, align 1, !tbaa !116
  %wide.load448 = load <64 x i8>, ptr %i.pj, align 1, !tbaa !116
  %wide.load449 = load <64 x i8>, ptr %i.pk, align 1, !tbaa !116
  %i.pl = getelementptr i8, ptr %next.gep445, i64 64
  %i.pm = getelementptr i8, ptr %next.gep445, i64 128
  %i.pn = getelementptr i8, ptr %next.gep445, i64 192
  store <64 x i8> %wide.load446, ptr %next.gep445, align 1, !tbaa !116
  store <64 x i8> %wide.load447, ptr %i.pl, align 1, !tbaa !116
  store <64 x i8> %wide.load448, ptr %i.pm, align 1, !tbaa !116
  store <64 x i8> %wide.load449, ptr %i.pn, align 1, !tbaa !116
  %index.next450 = add nuw i64 %index443, 256     ; 2 uses
  %i.po = icmp eq i64 %index.next450, %n.vec441
  br i1 %i.po, label %middle.block451, label %vector.body442, !llvm.loop !717

middle.block451:                                  ; preds = %vector.body442
  br i1 %cmp.n452, label %._crit_edge270, label %vec.epilog.iter.check458

vec.epilog.iter.check458:                         ; preds = %middle.block451
  br i1 %min.epilog.iters.check459, label %vec.epilog.scalar.ph457.preheader, label %vec.epilog.ph460, !prof !718

vec.epilog.ph460:                                 ; preds = %vector.main.loop.iter.check438, %vec.epilog.iter.check458
  %vec.epilog.resume.val453 = phi i64 [ %n.vec441, %vec.epilog.iter.check458 ], [ 0, %vector.main.loop.iter.check438 ]
  %i.pp = getelementptr i8, ptr %i.pb, i64 %n.vec461
  %i.pq = getelementptr i8, ptr %.12273, i64 %n.vec461 ; 2 uses
  br label %vec.epilog.vector.body462

vec.epilog.vector.body462:                        ; preds = %vec.epilog.vector.body462, %vec.epilog.ph460
  %index463 = phi i64 [ %vec.epilog.resume.val453, %vec.epilog.ph460 ], [ %index.next467, %vec.epilog.vector.body462 ] ; 3 uses
  %next.gep464 = getelementptr i8, ptr %i.pb, i64 %index463
  %next.gep465 = getelementptr i8, ptr %.12273, i64 %index463
  %wide.load466 = load <16 x i8>, ptr %next.gep464, align 1, !tbaa !116
  store <16 x i8> %wide.load466, ptr %next.gep465, align 1, !tbaa !116
  %index.next467 = add nuw i64 %index463, 16      ; 2 uses
  %i.pr = icmp eq i64 %index.next467, %n.vec461
  br i1 %i.pr, label %vec.epilog.middle.block468, label %vec.epilog.vector.body462, !llvm.loop !719

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body462
  br i1 %cmp.n469, label %._crit_edge270, label %vec.epilog.scalar.ph457.preheader

vec.epilog.scalar.ph457.preheader:                ; preds = %vector.memcheck435, %iter.check456, %vec.epilog.iter.check458, %vec.epilog.middle.block468
  %.0267.ph = phi i32 [ 0, %iter.check456 ], [ 0, %vector.memcheck435 ], [ %i.kq, %vec.epilog.iter.check458 ], [ %i.kr, %vec.epilog.middle.block468 ] ; 4 uses
  %.0148266.ph = phi ptr [ %i.pb, %iter.check456 ], [ %i.pb, %vector.memcheck435 ], [ %i.pg, %vec.epilog.iter.check458 ], [ %i.pp, %vec.epilog.middle.block468 ] ; 2 uses
  %.13265.ph = phi ptr [ %.12273, %iter.check456 ], [ %.12273, %vector.memcheck435 ], [ %i.ph, %vec.epilog.iter.check458 ], [ %i.pq, %vec.epilog.middle.block468 ] ; 2 uses
  %i.ps = sub i32 %5, %.0267.ph
  %xtraiter517 = and i32 %i.ps, 7                 ; 2 uses
  %lcmp.mod518.not = icmp eq i32 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %vec.epilog.scalar.ph457.prol.loopexit, label %vec.epilog.scalar.ph457.prol

vec.epilog.scalar.ph457.prol:                     ; preds = %vec.epilog.scalar.ph457.preheader, %vec.epilog.scalar.ph457.prol
  %.0267.prol = phi i32 [ %i.pw, %vec.epilog.scalar.ph457.prol ], [ %.0267.ph, %vec.epilog.scalar.ph457.preheader ]
  %.0148266.prol = phi ptr [ %i.pv, %vec.epilog.scalar.ph457.prol ], [ %.0148266.ph, %vec.epilog.scalar.ph457.preheader ] ; 2 uses
  %.13265.prol = phi ptr [ %i.pu, %vec.epilog.scalar.ph457.prol ], [ %.13265.ph, %vec.epilog.scalar.ph457.preheader ] ; 2 uses
  %prol.iter519 = phi i32 [ %prol.iter519.next, %vec.epilog.scalar.ph457.prol ], [ 0, %vec.epilog.scalar.ph457.preheader ]
  %i.pt = load i8, ptr %.0148266.prol, align 1, !tbaa !116
  store i8 %i.pt, ptr %.13265.prol, align 1, !tbaa !116
  %i.pu = getelementptr inbounds nuw i8, ptr %.13265.prol, i64 1 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.0148266.prol, i64 1 ; 2 uses
  %i.pw = add nuw nsw i32 %.0267.prol, 1          ; 2 uses
  %prol.iter519.next = add i32 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i32 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %vec.epilog.scalar.ph457.prol.loopexit, label %vec.epilog.scalar.ph457.prol, !llvm.loop !720

vec.epilog.scalar.ph457.prol.loopexit:            ; preds = %vec.epilog.scalar.ph457.prol, %vec.epilog.scalar.ph457.preheader
  %.lcssa473.unr = phi ptr [ poison, %vec.epilog.scalar.ph457.preheader ], [ %i.pu, %vec.epilog.scalar.ph457.prol ]
  %.0267.unr = phi i32 [ %.0267.ph, %vec.epilog.scalar.ph457.preheader ], [ %i.pw, %vec.epilog.scalar.ph457.prol ]
  %.0148266.unr = phi ptr [ %.0148266.ph, %vec.epilog.scalar.ph457.preheader ], [ %i.pv, %vec.epilog.scalar.ph457.prol ]
  %.13265.unr = phi ptr [ %.13265.ph, %vec.epilog.scalar.ph457.preheader ], [ %i.pu, %vec.epilog.scalar.ph457.prol ]
  %i.px = sub i32 %.0267.ph, %5
  %i.py = icmp ugt i32 %i.px, -8
  br i1 %i.py, label %._crit_edge270, label %vec.epilog.scalar.ph457

vec.epilog.scalar.ph457:                          ; preds = %vec.epilog.scalar.ph457.prol.loopexit, %vec.epilog.scalar.ph457
  %.0267 = phi i32 [ %i.qx, %vec.epilog.scalar.ph457 ], [ %.0267.unr, %vec.epilog.scalar.ph457.prol.loopexit ]
  %.0148266 = phi ptr [ %i.qw, %vec.epilog.scalar.ph457 ], [ %.0148266.unr, %vec.epilog.scalar.ph457.prol.loopexit ] ; 9 uses
  %.13265 = phi ptr [ %i.qv, %vec.epilog.scalar.ph457 ], [ %.13265.unr, %vec.epilog.scalar.ph457.prol.loopexit ] ; 9 uses
  %i.pz = load i8, ptr %.0148266, align 1, !tbaa !116
  store i8 %i.pz, ptr %.13265, align 1, !tbaa !116
  %i.qa = getelementptr inbounds nuw i8, ptr %.13265, i64 1
  %i.qb = getelementptr inbounds nuw i8, ptr %.0148266, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !116
  store i8 %i.qc, ptr %i.qa, align 1, !tbaa !116
  %i.qd = getelementptr inbounds nuw i8, ptr %.13265, i64 2
  %i.qe = getelementptr inbounds nuw i8, ptr %.0148266, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !116
  store i8 %i.qf, ptr %i.qd, align 1, !tbaa !116
  %i.qg = getelementptr inbounds nuw i8, ptr %.13265, i64 3
  %i.qh = getelementptr inbounds nuw i8, ptr %.0148266, i64 3
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !116
  store i8 %i.qi, ptr %i.qg, align 1, !tbaa !116
  %i.qj = getelementptr inbounds nuw i8, ptr %.13265, i64 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.0148266, i64 4
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !116
  store i8 %i.ql, ptr %i.qj, align 1, !tbaa !116
  %i.qm = getelementptr inbounds nuw i8, ptr %.13265, i64 5
  %i.qn = getelementptr inbounds nuw i8, ptr %.0148266, i64 5
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !116
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !116
  %i.qp = getelementptr inbounds nuw i8, ptr %.13265, i64 6
  %i.qq = getelementptr inbounds nuw i8, ptr %.0148266, i64 6
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !116
  store i8 %i.qr, ptr %i.qp, align 1, !tbaa !116
  %i.qs = getelementptr inbounds nuw i8, ptr %.13265, i64 7
  %i.qt = getelementptr inbounds nuw i8, ptr %.0148266, i64 7
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !116
  store i8 %i.qu, ptr %i.qs, align 1, !tbaa !116
  %i.qv = getelementptr inbounds nuw i8, ptr %.13265, i64 8 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0148266, i64 8
  %i.qx = add nuw nsw i32 %.0267, 8               ; 2 uses
  %exitcond309.not.7 = icmp eq i32 %i.qx, %5
  br i1 %exitcond309.not.7, label %._crit_edge270, label %vec.epilog.scalar.ph457, !llvm.loop !721

._crit_edge270:                                   ; preds = %vec.epilog.scalar.ph457.prol.loopexit, %vec.epilog.scalar.ph457, %vec.epilog.middle.block468, %middle.block451
  %.lcssa = phi ptr [ %i.pq, %vec.epilog.middle.block468 ], [ %i.ph, %middle.block451 ], [ %.lcssa473.unr, %vec.epilog.scalar.ph457.prol.loopexit ], [ %i.qv, %vec.epilog.scalar.ph457 ]
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count
  br i1 %exitcond313.not, label %.loopexit, label %iter.check456, !llvm.loop !722

.loopexit:                                        ; preds = %._crit_edge270, %.preheader, %.lr.ph274, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr noundef %7) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not119 = icmp sgt i32 %i.k, %i.j
  br i1 %.not119, label %._crit_edge122, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 680
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 688
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 220
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 17 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 404 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 11 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split, label %._crit_edge122

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.ae = phi i32 [ %i.ak, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.af = phi i32 [ %i.al, %._crit_edge ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.030120 = phi i32 [ %i.am, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !45
  %i.ah = mul i32 %i.ag, %.030120                 ; 9 uses
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.noexc40.lr.ph, label %._crit_edge

.noexc40.lr.ph:                                   ; preds = %.lr.ph.split
  %i.aj = sext i32 %i.ah to i64                   ; 11 uses
  %.pre = load i32, ptr %5, align 4, !tbaa !45
  br label %.noexc40

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre153 = load i32, ptr %i.b, align 4, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ak = phi i32 [ %.pre153, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph.split ] ; 2 uses
  %i.al = phi i32 [ %i.ajj, %._crit_edge.loopexit ], [ %i.af, %.lr.ph.split ]
  %i.am = add i32 %.030120, 1
  %.not.not = icmp slt i32 %.030120, %i.ak
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge122, !llvm.loop !723

.noexc40:                                         ; preds = %.noexc40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.an = phi i32 [ %.pre, %.noexc40.lr.ph ], [ %i.ajh, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ao = phi i32 [ %i.af, %.noexc40.lr.ph ], [ %i.ajj, %_ZN4ncnn3MatD2Ev.exit ]
  %.0118 = phi i32 [ 0, %.noexc40.lr.ph ], [ %i.aji, %_ZN4ncnn3MatD2Ev.exit ] ; 19 uses
  %i.ap = load i32, ptr %6, align 4, !tbaa !45
  %i.aq = sub nsw i32 %i.ap, %i.ah
  %i.ar = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %.sroa.speculated86 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aq) ; 28 uses
  %i.as = sub i32 %i.ao, %.0118
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.an, i32 %i.as) ; 77 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.at = sdiv i32 %i.ah, %i.ar
  %i.au = load i32, ptr %i.m, align 4, !tbaa !88, !noalias !724 ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !724
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !724
  %i.ax = sext i32 %i.at to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !724 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !60, !noalias !724
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !17, !noalias !724
  %i.be = sext i32 %i.au to i64                   ; 2 uses
  %i.bf = sdiv i32 %.0118, %i.an
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.az, %i.be
  %i.bi = mul i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bi
  store ptr %i.bj, ptr %8, align 8, !tbaa !18
  store ptr null, ptr %i.r, align 8, !tbaa !11
  store i64 %i.az, ptr %i.s, align 8, !tbaa !59
  store i32 %i.bc, ptr %i.t, align 8, !tbaa !60
  store ptr %i.bd, ptr %i.u, align 8, !tbaa !17
  %i.bk = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.au, i64 1
  store <4 x i32> %i.bk, ptr %i.v, align 8, !tbaa !45
  store i32 1, ptr %i.w, align 8, !tbaa !51
  store i64 %i.be, ptr %i.x, align 8, !tbaa !20, !alias.scope !727
  %i.bl = load i32, ptr %i.y, align 4, !tbaa !86
  %.not31 = icmp eq i32 %i.bl, 0
  br i1 %.not31, label %bb.n, label %bb.c

bb.c:                                             ; preds = %.noexc40
  %i.bm = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
          to label %.noexc43 unwind label %bb.af

.noexc43:                                         ; preds = %bb.c
  %.not.i42 = icmp eq i32 %i.bm, 0
  br i1 %.not.i42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc43
  invoke void @_ZN4ncnn27pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated86, i32 noundef %.0118, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.af

bb.e:                                             ; preds = %.noexc43
  %i.bn = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc45 unwind label %bb.af

.noexc45:                                         ; preds = %bb.e
  %.not173.i = icmp eq i32 %i.bn, 0
  br i1 %.not173.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc45
  invoke void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated86, i32 noundef %.0118, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.af

bb.g:                                             ; preds = %.noexc45
  %i.bo = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc47 unwind label %bb.af

.noexc47:                                         ; preds = %bb.g
  %.not174.i = icmp eq i32 %i.bo, 0
  br i1 %.not174.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc47
  invoke void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated86, i32 noundef %.0118, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.af

bb.i:                                             ; preds = %.noexc47
  %i.bp = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.bq = icmp sgt i32 %.sroa.speculated86, 15
  br i1 %i.bq, label %.lr.ph202.i, label %.preheader187.i

.lr.ph202.i:                                      ; preds = %bb.i
  %i.br = sext i32 %.0118 to i64
  %i.bs = icmp sgt i32 %.sroa.speculated, 1
  %i.bt = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.bu = zext nneg i32 %.sroa.speculated86 to i64
  %i.bv = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = add nuw i32 %i.bw, 1                    ; 2 uses
  %xtraiter = and i32 %i.bx, 3                    ; 3 uses
  %i.by = icmp ult i32 %i.bv, 6
  %unroll_iter = and i32 %i.bx, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod386 = icmp ne i32 %xtraiter, 0
  br label %bb.j

.preheader187.loopexit.i:                         ; preds = %._crit_edge.i
  %i.bz = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader187.i

.preheader187.i:                                  ; preds = %.preheader187.loopexit.i, %bb.i
  %.0156.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.bz, %.preheader187.loopexit.i ] ; 3 uses
  %.0154.lcssa.i = phi ptr [ %i.bp, %bb.i ], [ %.2.lcssa.i, %.preheader187.loopexit.i ] ; 2 uses
  %i.ca = or disjoint i32 %.0156.lcssa.i, 7
  %i.cb = icmp slt i32 %i.ca, %.sroa.speculated86
  br i1 %i.cb, label %.lr.ph221.i, label %.preheader185.i

.lr.ph221.i:                                      ; preds = %.preheader187.i
  %i.cc = sext i32 %.0118 to i64
  %i.cd = icmp sgt i32 %.sroa.speculated, 1
  %i.ce = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.cf = zext nneg i32 %.0156.lcssa.i to i64
  %i.cg = sext i32 %.sroa.speculated86 to i64
  %invariant.op.i = add nsw i64 %i.cg, -7
end_hunk_7
begin_hunk_8_@_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a

.lr.ph257.i:                                      ; preds = %.lr.ph257.i.prol.loopexit, %.lr.ph257.i
  %.1256.i = phi i32 [ %i.ql, %.lr.ph257.i ], [ %.1256.i.unr, %.lr.ph257.i.prol.loopexit ]
  %.1151255.i = phi ptr [ %i.qk, %.lr.ph257.i ], [ %.1151255.i.unr, %.lr.ph257.i.prol.loopexit ] ; 5 uses
  %.1153254.i = phi ptr [ %i.qj, %.lr.ph257.i ], [ %.1153254.i.unr, %.lr.ph257.i.prol.loopexit ] ; 5 uses
  %.11253.i = phi ptr [ %i.qi, %.lr.ph257.i ], [ %.11253.i.unr, %.lr.ph257.i.prol.loopexit ] ; 9 uses
  %i.pn = load i8, ptr %.1153254.i, align 1, !tbaa !116
  store i8 %i.pn, ptr %.11253.i, align 1, !tbaa !116
  %i.po = load i8, ptr %.1151255.i, align 1, !tbaa !116
  %i.pp = getelementptr inbounds nuw i8, ptr %.11253.i, i64 1
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !116
  %i.pq = getelementptr inbounds nuw i8, ptr %.11253.i, i64 2
  %i.pr = getelementptr inbounds nuw i8, ptr %.1153254.i, i64 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.1151255.i, i64 1
  %i.pt = load i8, ptr %i.pr, align 1, !tbaa !116
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !116
  %i.pu = load i8, ptr %i.ps, align 1, !tbaa !116
  %i.pv = getelementptr inbounds nuw i8, ptr %.11253.i, i64 3
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !116
  %i.pw = getelementptr inbounds nuw i8, ptr %.11253.i, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %.1153254.i, i64 2
  %i.py = getelementptr inbounds nuw i8, ptr %.1151255.i, i64 2
  %i.pz = load i8, ptr %i.px, align 1, !tbaa !116
  store i8 %i.pz, ptr %i.pw, align 1, !tbaa !116
  %i.qa = load i8, ptr %i.py, align 1, !tbaa !116
  %i.qb = getelementptr inbounds nuw i8, ptr %.11253.i, i64 5
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !116
  %i.qc = getelementptr inbounds nuw i8, ptr %.11253.i, i64 6
  %i.qd = getelementptr inbounds nuw i8, ptr %.1153254.i, i64 3
  %i.qe = getelementptr inbounds nuw i8, ptr %.1151255.i, i64 3
  %i.qf = load i8, ptr %i.qd, align 1, !tbaa !116
  store i8 %i.qf, ptr %i.qc, align 1, !tbaa !116
  %i.qg = load i8, ptr %i.qe, align 1, !tbaa !116
  %i.qh = getelementptr inbounds nuw i8, ptr %.11253.i, i64 7
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !116
  %i.qi = getelementptr inbounds nuw i8, ptr %.11253.i, i64 8 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.1153254.i, i64 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.1151255.i, i64 4
  %i.ql = add nuw nsw i32 %.1256.i, 4             ; 2 uses
  %exitcond305.not.i.3 = icmp eq i32 %i.ql, %.sroa.speculated
  br i1 %exitcond305.not.i.3, label %._crit_edge258.i, label %.lr.ph257.i, !llvm.loop !767

._crit_edge258.i:                                 ; preds = %.lr.ph257.i.prol.loopexit, %.lr.ph257.i, %middle.block264, %vec.epilog.middle.block285, %.preheader182.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader182.i ], [ %i.ol, %vec.epilog.middle.block285 ], [ %i.od, %middle.block264 ], [ %.lcssa367.unr, %.lr.ph257.i.prol.loopexit ], [ %i.qi, %.lr.ph257.i ] ; 2 uses
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 2 ; 3 uses
  %i.qm = icmp slt i64 %indvars.iv.next307.i, %invariant.op333.i
  br i1 %i.qm, label %bb.m, label %.preheader.loopexit.i, !llvm.loop !768

iter.check:                                       ; preds = %._crit_edge270.i, %.lr.ph269.preheader.i
  %indvars.iv310.i = phi i64 [ %i.mj, %.lr.ph269.preheader.i ], [ %indvars.iv.next311.i, %._crit_edge270.i ] ; 2 uses
  %.12273.i = phi ptr [ %.9.lcssa.i, %.lr.ph269.preheader.i ], [ %.lcssa208, %._crit_edge270.i ] ; 7 uses
  %i.qn = add i64 %indvars.iv310.i, %i.aj
  %i.qo = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.qp = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.qq = sext i32 %i.qp to i64
  %i.qr = mul i64 %i.qn, %i.qq
  %i.qs = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.qt = mul i64 %i.qr, %i.qs                    ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qt
  %i.qv = getelementptr inbounds i8, ptr %i.qu, i64 %i.mh ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qw = ptrtoaddr ptr %i.qo to i64
  %.12273.i224 = ptrtoaddr ptr %.12273.i to i64
  %i.qx = add i64 %i.mh, %i.qw
  %i.qy = add i64 %i.qx, %i.qt
  %i.qz = sub i64 %i.qy, %.12273.i224
  %diff.check = icmp ugt i64 %i.qz, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ra = getelementptr i8, ptr %i.qv, i64 %n.vec
  %i.rb = getelementptr i8, ptr %.12273.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.qv, i64 %index ; 4 uses
  %next.gep226 = getelementptr i8, ptr %.12273.i, i64 %index ; 4 uses
  %i.rc = getelementptr i8, ptr %next.gep, i64 64
  %i.rd = getelementptr i8, ptr %next.gep, i64 128
  %i.re = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !116
  %wide.load227 = load <64 x i8>, ptr %i.rc, align 1, !tbaa !116
  %wide.load228 = load <64 x i8>, ptr %i.rd, align 1, !tbaa !116
  %wide.load229 = load <64 x i8>, ptr %i.re, align 1, !tbaa !116
  %i.rf = getelementptr i8, ptr %next.gep226, i64 64
  %i.rg = getelementptr i8, ptr %next.gep226, i64 128
  %i.rh = getelementptr i8, ptr %next.gep226, i64 192
  store <64 x i8> %wide.load, ptr %next.gep226, align 1, !tbaa !116
  store <64 x i8> %wide.load227, ptr %i.rf, align 1, !tbaa !116
  store <64 x i8> %wide.load228, ptr %i.rg, align 1, !tbaa !116
  store <64 x i8> %wide.load229, ptr %i.rh, align 1, !tbaa !116
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.ri = icmp eq i64 %index.next, %n.vec
  br i1 %i.ri, label %middle.block, label %vector.body, !llvm.loop !769

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge270.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !718

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rj = getelementptr i8, ptr %i.qv, i64 %n.vec232
  %i.rk = getelementptr i8, ptr %.12273.i, i64 %n.vec232 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index233 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 3 uses
  %next.gep234 = getelementptr i8, ptr %i.qv, i64 %index233
  %next.gep235 = getelementptr i8, ptr %.12273.i, i64 %index233
  %wide.load236 = load <16 x i8>, ptr %next.gep234, align 1, !tbaa !116
  store <16 x i8> %wide.load236, ptr %next.gep235, align 1, !tbaa !116
  %index.next237 = add nuw i64 %index233, 16      ; 2 uses
  %i.rl = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.rl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !770

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n238, label %._crit_edge270.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0267.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.mm, %vec.epilog.iter.check ], [ %i.mn, %vec.epilog.middle.block ] ; 4 uses
  %.0148266.i.ph = phi ptr [ %i.qv, %iter.check ], [ %i.qv, %vector.memcheck ], [ %i.ra, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ] ; 2 uses
  %.13265.i.ph = phi ptr [ %.12273.i, %iter.check ], [ %.12273.i, %vector.memcheck ], [ %i.rb, %vec.epilog.iter.check ], [ %i.rk, %vec.epilog.middle.block ] ; 2 uses
  %i.rm = sub i32 %.sroa.speculated, %.0267.i.ph
  %xtraiter414 = and i32 %i.rm, 7                 ; 2 uses
  %lcmp.mod415.not = icmp eq i32 %xtraiter414, 0
  br i1 %lcmp.mod415.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0267.i.prol = phi i32 [ %i.rq, %vec.epilog.scalar.ph.prol ], [ %.0267.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.0148266.i.prol = phi ptr [ %i.rp, %vec.epilog.scalar.ph.prol ], [ %.0148266.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.13265.i.prol = phi ptr [ %i.ro, %vec.epilog.scalar.ph.prol ], [ %.13265.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter416 = phi i32 [ %prol.iter416.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.rn = load i8, ptr %.0148266.i.prol, align 1, !tbaa !116
  store i8 %i.rn, ptr %.13265.i.prol, align 1, !tbaa !116
  %i.ro = getelementptr inbounds nuw i8, ptr %.13265.i.prol, i64 1 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.0148266.i.prol, i64 1 ; 2 uses
  %i.rq = add nuw nsw i32 %.0267.i.prol, 1        ; 2 uses
  %prol.iter416.next = add i32 %prol.iter416, 1   ; 2 uses
  %prol.iter416.cmp.not = icmp eq i32 %prol.iter416.next, %xtraiter414
  br i1 %prol.iter416.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !771

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa368.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ro, %vec.epilog.scalar.ph.prol ]
  %.0267.i.unr = phi i32 [ %.0267.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rq, %vec.epilog.scalar.ph.prol ]
  %.0148266.i.unr = phi ptr [ %.0148266.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rp, %vec.epilog.scalar.ph.prol ]
  %.13265.i.unr = phi ptr [ %.13265.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ro, %vec.epilog.scalar.ph.prol ]
  %i.rr = sub i32 %.0267.i.ph, %.sroa.speculated
  %i.rs = icmp ugt i32 %i.rr, -8
  br i1 %i.rs, label %._crit_edge270.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0267.i = phi i32 [ %i.sr, %vec.epilog.scalar.ph ], [ %.0267.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0148266.i = phi ptr [ %i.sq, %vec.epilog.scalar.ph ], [ %.0148266.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.13265.i = phi ptr [ %i.sp, %vec.epilog.scalar.ph ], [ %.13265.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.rt = load i8, ptr %.0148266.i, align 1, !tbaa !116
  store i8 %i.rt, ptr %.13265.i, align 1, !tbaa !116
  %i.ru = getelementptr inbounds nuw i8, ptr %.13265.i, i64 1
  %i.rv = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 1
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !116
  store i8 %i.rw, ptr %i.ru, align 1, !tbaa !116
  %i.rx = getelementptr inbounds nuw i8, ptr %.13265.i, i64 2
  %i.ry = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 2
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !116
  store i8 %i.rz, ptr %i.rx, align 1, !tbaa !116
  %i.sa = getelementptr inbounds nuw i8, ptr %.13265.i, i64 3
  %i.sb = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 3
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !116
  store i8 %i.sc, ptr %i.sa, align 1, !tbaa !116
  %i.sd = getelementptr inbounds nuw i8, ptr %.13265.i, i64 4
  %i.se = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 4
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !116
  store i8 %i.sf, ptr %i.sd, align 1, !tbaa !116
  %i.sg = getelementptr inbounds nuw i8, ptr %.13265.i, i64 5
  %i.sh = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 5
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !116
  store i8 %i.si, ptr %i.sg, align 1, !tbaa !116
  %i.sj = getelementptr inbounds nuw i8, ptr %.13265.i, i64 6
  %i.sk = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 6
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !116
  store i8 %i.sl, ptr %i.sj, align 1, !tbaa !116
  %i.sm = getelementptr inbounds nuw i8, ptr %.13265.i, i64 7
  %i.sn = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 7
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !116
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !116
  %i.sp = getelementptr inbounds nuw i8, ptr %.13265.i, i64 8 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.0148266.i, i64 8
  %i.sr = add nuw nsw i32 %.0267.i, 8             ; 2 uses
  %exitcond309.not.i.7 = icmp eq i32 %i.sr, %.sroa.speculated
  br i1 %exitcond309.not.i.7, label %._crit_edge270.i, label %vec.epilog.scalar.ph, !llvm.loop !772

._crit_edge270.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa208 = phi ptr [ %i.rk, %vec.epilog.middle.block ], [ %i.rb, %middle.block ], [ %.lcssa368.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.sp, %vec.epilog.scalar.ph ]
  %indvars.iv.next311.i = add nuw nsw i64 %indvars.iv310.i, 1 ; 2 uses
  %exitcond313.not.i = icmp eq i64 %indvars.iv.next311.i, %wide.trip.count.i
  br i1 %exitcond313.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check, !llvm.loop !773

bb.n:                                             ; preds = %.noexc40
  %i.ss = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
          to label %.noexc69 unwind label %bb.af

.noexc69:                                         ; preds = %bb.n
  %.not.i49 = icmp eq i32 %i.ss, 0
  br i1 %.not.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc69
  invoke void @_ZN4ncnn37transpose_pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated86, i32 noundef %.0118, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.af

bb.p:                                             ; preds = %.noexc69
  %i.st = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc71 unwind label %bb.af

.noexc71:                                         ; preds = %bb.p
  %.not199.i = icmp eq i32 %i.st, 0
  br i1 %.not199.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc71
  invoke void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated86, i32 noundef %.0118, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.af

bb.r:                                             ; preds = %.noexc71
  %i.su = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc73 unwind label %bb.af

.noexc73:                                         ; preds = %bb.r
  %.not200.i = icmp eq i32 %i.su, 0
  br i1 %.not200.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc73
  invoke void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ah, i32 noundef %.sroa.speculated86, i32 noundef %.0118, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.af

bb.t:                                             ; preds = %.noexc73
  %i.sv = load i32, ptr %i.aa, align 4, !tbaa !88 ; 9 uses
  %i.sw = load ptr, ptr %8, align 8, !tbaa !18    ; 4 uses
  %i.sx = icmp sgt i32 %.sroa.speculated86, 15
  br i1 %i.sx, label %.lr.ph221.i65, label %.preheader206.i

.lr.ph221.i65:                                    ; preds = %bb.t
  %i.sy = sext i32 %.0118 to i64                  ; 2 uses
  %i.sz = icmp sgt i32 %.sroa.speculated, 1
  %i.ta = sext i32 %i.sv to i64                   ; 12 uses
  %i.tb = shl nsw i32 %i.sv, 1
  %i.tc = sext i32 %i.tb to i64                   ; 3 uses
  br i1 %i.sz, label %.lr.ph.us.preheader.i, label %.lr.ph221.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph221.i65
  %i.td = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.te = zext nneg i32 %.sroa.speculated86 to i64
  %.not89 = icmp eq i32 %i.td, %.sroa.speculated
  %i.tf = add nsw i32 %.sroa.speculated, -2       ; 2 uses
  %i.tg = lshr i32 %i.tf, 1                       ; 2 uses
  %i.th = add nuw i32 %i.tg, 1                    ; 2 uses
  %i.ti = and i32 %.sroa.speculated, 1            ; 2 uses
  %i.tj = icmp eq i32 %i.tg, 0
  %unroll_iter423 = and i32 %i.th, -2
  %i.tk = and i32 %i.tf, 2
  %lcmp.mod419.not.not = icmp eq i32 %i.tk, 0
  %lcmp.mod422 = trunc i32 %i.th to i1
  %lcmp.mod426.not = icmp eq i32 %i.ti, 0
  %i.tl = sub nsw i32 %i.td, %.sroa.speculated
  %i.tm = icmp ugt i32 %i.tl, -8
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next329.i, %._crit_edge.us.i ] ; 2 uses
  %.0184219.us.i = phi ptr [ %i.sw, %.lr.ph.us.preheader.i ], [ %.2.lcssa.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.tn = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.to = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.tp = sext i32 %i.to to i64
  %i.tq = mul nsw i64 %i.tp, %i.sy
  %i.tr = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.ts = mul i64 %i.tq, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.ts
  %i.tu = getelementptr i8, ptr %i.tt, i64 %indvars.iv328.i
  %i.tv = getelementptr i8, ptr %i.tu, i64 %i.aj  ; 2 uses
  br i1 %i.tj, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.1185210.us.i = phi ptr [ %i.uk, %.lr.ph.us.i.new ], [ %.0184219.us.i, %.lr.ph.us.i ] ; 5 uses
  %.0191209.us.i = phi ptr [ %i.ul, %.lr.ph.us.i.new ], [ %i.tv, %.lr.ph.us.i ] ; 3 uses
  %niter424 = phi i32 [ %niter424.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.tw = load <16 x i8>, ptr %.0191209.us.i, align 1, !tbaa !116 ; 2 uses
  %i.tx = getelementptr inbounds i8, ptr %.0191209.us.i, i64 %i.ta
  %i.ty = load <16 x i8>, ptr %i.tx, align 1, !tbaa !116 ; 2 uses
  %i.tz = shufflevector <16 x i8> %i.tw, <16 x i8> %i.ty, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ua = shufflevector <16 x i8> %i.tw, <16 x i8> %i.ty, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.tz, ptr %.1185210.us.i, align 16, !tbaa !116
  %i.ub = getelementptr inbounds nuw i8, ptr %.1185210.us.i, i64 16
  store <16 x i8> %i.ua, ptr %i.ub, align 16, !tbaa !116
  %i.uc = getelementptr inbounds nuw i8, ptr %.1185210.us.i, i64 32
  %i.ud = getelementptr inbounds i8, ptr %.0191209.us.i, i64 %i.tc ; 3 uses
  %i.ue = load <16 x i8>, ptr %i.ud, align 1, !tbaa !116 ; 2 uses
  %i.uf = getelementptr inbounds i8, ptr %i.ud, i64 %i.ta
  %i.ug = load <16 x i8>, ptr %i.uf, align 1, !tbaa !116 ; 2 uses
  %i.uh = shufflevector <16 x i8> %i.ue, <16 x i8> %i.ug, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ui = shufflevector <16 x i8> %i.ue, <16 x i8> %i.ug, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.uh, ptr %i.uc, align 16, !tbaa !116
  %i.uj = getelementptr inbounds nuw i8, ptr %.1185210.us.i, i64 48
  store <16 x i8> %i.ui, ptr %i.uj, align 16, !tbaa !116
  %i.uk = getelementptr inbounds nuw i8, ptr %.1185210.us.i, i64 64 ; 3 uses
  %i.ul = getelementptr inbounds i8, ptr %i.ud, i64 %i.tc ; 3 uses
  %niter424.next.1 = add nuw nsw i32 %niter424, 2 ; 2 uses
  %niter424.ncmp.1.not = icmp eq i32 %niter424.next.1, %unroll_iter423
  br i1 %niter424.ncmp.1.not, label %..preheader207_crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !774

.lr.ph216.us.i:                                   ; preds = %.lr.ph216.us.i.prol.loopexit, %.lr.ph216.us.i
  %.2215.us.i = phi ptr [ %i.vi, %.lr.ph216.us.i ], [ %.2215.us.i.unr, %.lr.ph216.us.i.prol.loopexit ] ; 9 uses
  %.1192214.us.i = phi ptr [ %i.vj, %.lr.ph216.us.i ], [ %.1192214.us.i.unr, %.lr.ph216.us.i.prol.loopexit ] ; 2 uses
  %.1198213.us.i = phi i32 [ %i.vk, %.lr.ph216.us.i ], [ %.1198213.us.i.unr, %.lr.ph216.us.i.prol.loopexit ]
  %i.um = load <2 x i64>, ptr %.1192214.us.i, align 1, !tbaa !116
  store <2 x i64> %i.um, ptr %.2215.us.i, align 16, !tbaa !116
  %i.un = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 16
  %i.uo = getelementptr inbounds i8, ptr %.1192214.us.i, i64 %i.ta ; 2 uses
  %i.up = load <2 x i64>, ptr %i.uo, align 1, !tbaa !116
  store <2 x i64> %i.up, ptr %i.un, align 16, !tbaa !116
  %i.uq = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 32
  %i.ur = getelementptr inbounds i8, ptr %i.uo, i64 %i.ta ; 2 uses
  %i.us = load <2 x i64>, ptr %i.ur, align 1, !tbaa !116
  store <2 x i64> %i.us, ptr %i.uq, align 16, !tbaa !116
  %i.ut = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 48
  %i.uu = getelementptr inbounds i8, ptr %i.ur, i64 %i.ta ; 2 uses
  %i.uv = load <2 x i64>, ptr %i.uu, align 1, !tbaa !116
  store <2 x i64> %i.uv, ptr %i.ut, align 16, !tbaa !116
  %i.uw = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 64
  %i.ux = getelementptr inbounds i8, ptr %i.uu, i64 %i.ta ; 2 uses
  %i.uy = load <2 x i64>, ptr %i.ux, align 1, !tbaa !116
  store <2 x i64> %i.uy, ptr %i.uw, align 16, !tbaa !116
  %i.uz = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 80
  %i.va = getelementptr inbounds i8, ptr %i.ux, i64 %i.ta ; 2 uses
  %i.vb = load <2 x i64>, ptr %i.va, align 1, !tbaa !116
  store <2 x i64> %i.vb, ptr %i.uz, align 16, !tbaa !116
  %i.vc = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 96
  %i.vd = getelementptr inbounds i8, ptr %i.va, i64 %i.ta ; 2 uses
  %i.ve = load <2 x i64>, ptr %i.vd, align 1, !tbaa !116
  store <2 x i64> %i.ve, ptr %i.vc, align 16, !tbaa !116
  %i.vf = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 112
  %i.vg = getelementptr inbounds i8, ptr %i.vd, i64 %i.ta ; 2 uses
  %i.vh = load <2 x i64>, ptr %i.vg, align 1, !tbaa !116
  store <2 x i64> %i.vh, ptr %i.vf, align 16, !tbaa !116
  %i.vi = getelementptr inbounds nuw i8, ptr %.2215.us.i, i64 128 ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.vg, i64 %i.ta
  %i.vk = add nuw nsw i32 %.1198213.us.i, 8       ; 2 uses
  %exitcond.not.i68.7 = icmp eq i32 %i.vk, %.sroa.speculated
  br i1 %exitcond.not.i68.7, label %._crit_edge.us.i, label %.lr.ph216.us.i, !llvm.loop !775

._crit_edge.us.i:                                 ; preds = %.lr.ph216.us.i.prol.loopexit, %.lr.ph216.us.i, %..preheader207_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %.lcssa371, %..preheader207_crit_edge.us.i ], [ %.lcssa372.unr, %.lr.ph216.us.i.prol.loopexit ], [ %i.vi, %.lr.ph216.us.i ] ; 2 uses
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 16 ; 3 uses
  %i.vl = or disjoint i64 %indvars.iv.next329.i, 15
  %i.vm = icmp samesign ult i64 %i.vl, %i.te
  br i1 %i.vm, label %.lr.ph.us.i, label %.preheader206.loopexit.i, !llvm.loop !776

..preheader207_crit_edge.us.i.unr-lcssa:          ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod419.not.not, label %.epil.preheader, label %..preheader207_crit_edge.us.i

.epil.preheader:                                  ; preds = %..preheader207_crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.1185210.us.i.epil.init = phi ptr [ %.0184219.us.i, %.lr.ph.us.i ], [ %i.uk, %..preheader207_crit_edge.us.i.unr-lcssa ] ; 3 uses
  %.0191209.us.i.epil.init = phi ptr [ %i.tv, %.lr.ph.us.i ], [ %i.ul, %..preheader207_crit_edge.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod422)
  %i.vn = load <16 x i8>, ptr %.0191209.us.i.epil.init, align 1, !tbaa !116 ; 2 uses
  %i.vo = getelementptr inbounds i8, ptr %.0191209.us.i.epil.init, i64 %i.ta
  %i.vp = load <16 x i8>, ptr %i.vo, align 1, !tbaa !116 ; 2 uses
  %i.vq = shufflevector <16 x i8> %i.vn, <16 x i8> %i.vp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.vr = shufflevector <16 x i8> %i.vn, <16 x i8> %i.vp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.vq, ptr %.1185210.us.i.epil.init, align 16, !tbaa !116
  %i.vs = getelementptr inbounds nuw i8, ptr %.1185210.us.i.epil.init, i64 16
  store <16 x i8> %i.vr, ptr %i.vs, align 16, !tbaa !116
  %i.vt = getelementptr inbounds nuw i8, ptr %.1185210.us.i.epil.init, i64 32
  %i.vu = getelementptr inbounds i8, ptr %.0191209.us.i.epil.init, i64 %i.tc
  br label %..preheader207_crit_edge.us.i

..preheader207_crit_edge.us.i:                    ; preds = %..preheader207_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa371 = phi ptr [ %i.uk, %..preheader207_crit_edge.us.i.unr-lcssa ], [ %i.vt, %.epil.preheader ] ; 3 uses
  %.lcssa370 = phi ptr [ %i.ul, %..preheader207_crit_edge.us.i.unr-lcssa ], [ %i.vu, %.epil.preheader ] ; 2 uses
  br i1 %.not89, label %._crit_edge.us.i, label %.lr.ph216.us.i.preheader

.lr.ph216.us.i.preheader:                         ; preds = %..preheader207_crit_edge.us.i
  br i1 %lcmp.mod426.not, label %.lr.ph216.us.i.prol.loopexit, label %.lr.ph216.us.i.prol

.lr.ph216.us.i.prol:                              ; preds = %.lr.ph216.us.i.preheader, %.lr.ph216.us.i.prol
  %.2215.us.i.prol = phi ptr [ %i.vw, %.lr.ph216.us.i.prol ], [ %.lcssa371, %.lr.ph216.us.i.preheader ] ; 2 uses
  %.1192214.us.i.prol = phi ptr [ %i.vx, %.lr.ph216.us.i.prol ], [ %.lcssa370, %.lr.ph216.us.i.preheader ] ; 2 uses
  %.1198213.us.i.prol = phi i32 [ %i.vy, %.lr.ph216.us.i.prol ], [ %i.td, %.lr.ph216.us.i.preheader ]
  %prol.iter427 = phi i32 [ %prol.iter427.next, %.lr.ph216.us.i.prol ], [ 0, %.lr.ph216.us.i.preheader ]
  %i.vv = load <2 x i64>, ptr %.1192214.us.i.prol, align 1, !tbaa !116
  store <2 x i64> %i.vv, ptr %.2215.us.i.prol, align 16, !tbaa !116
  %i.vw = getelementptr inbounds nuw i8, ptr %.2215.us.i.prol, i64 16 ; 3 uses
  %i.vx = getelementptr inbounds i8, ptr %.1192214.us.i.prol, i64 %i.ta ; 2 uses
  %i.vy = add nuw nsw i32 %.1198213.us.i.prol, 1  ; 2 uses
  %prol.iter427.next = add i32 %prol.iter427, 1   ; 2 uses
  %prol.iter427.cmp.not = icmp eq i32 %prol.iter427.next, %i.ti
  br i1 %prol.iter427.cmp.not, label %.lr.ph216.us.i.prol.loopexit, label %.lr.ph216.us.i.prol, !llvm.loop !777
end_hunk_8
begin_hunk_9_@_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %.0177.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.aau, %.preheader201.i.loopexit.unr-lcssa ], [ %i.aau, %.lr.ph277.i.epil.preheader ] ; 5 uses
  %i.afe = icmp slt i32 %.0177.lcssa.i, %.sroa.speculated
  br i1 %i.afe, label %.lr.ph284.i.preheader, label %._crit_edge285.i

.lr.ph284.i.preheader:                            ; preds = %.preheader201.i
  %i.aff = sub i32 %.sroa.speculated, %.0177.lcssa.i
  %xtraiter450 = and i32 %i.aff, 3                ; 2 uses
  %lcmp.mod451.not = icmp eq i32 %xtraiter450, 0
  br i1 %lcmp.mod451.not, label %.lr.ph284.i.prol.loopexit, label %.lr.ph284.i.prol

.lr.ph284.i.prol:                                 ; preds = %.lr.ph284.i.preheader, %.lr.ph284.i.prol
  %.1283.i.prol = phi i32 [ %i.afm, %.lr.ph284.i.prol ], [ %.0177.lcssa.i, %.lr.ph284.i.preheader ]
  %.1179282.i.prol = phi ptr [ %i.afl, %.lr.ph284.i.prol ], [ %.0178.lcssa.i, %.lr.ph284.i.preheader ] ; 3 uses
  %.11281.i.prol = phi ptr [ %i.afk, %.lr.ph284.i.prol ], [ %.10.lcssa.i55, %.lr.ph284.i.preheader ] ; 3 uses
  %prol.iter452 = phi i32 [ %prol.iter452.next, %.lr.ph284.i.prol ], [ 0, %.lr.ph284.i.preheader ]
  %i.afg = load i8, ptr %.1179282.i.prol, align 1, !tbaa !116
  store i8 %i.afg, ptr %.11281.i.prol, align 1, !tbaa !116
  %i.afh = getelementptr inbounds nuw i8, ptr %.1179282.i.prol, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !116
  %i.afj = getelementptr inbounds nuw i8, ptr %.11281.i.prol, i64 1
  store i8 %i.afi, ptr %i.afj, align 1, !tbaa !116
  %i.afk = getelementptr inbounds nuw i8, ptr %.11281.i.prol, i64 2 ; 3 uses
  %i.afl = getelementptr inbounds i8, ptr %.1179282.i.prol, i64 %i.aar ; 2 uses
  %i.afm = add nuw nsw i32 %.1283.i.prol, 1       ; 2 uses
  %prol.iter452.next = add i32 %prol.iter452, 1   ; 2 uses
  %prol.iter452.cmp.not = icmp eq i32 %prol.iter452.next, %xtraiter450
  br i1 %prol.iter452.cmp.not, label %.lr.ph284.i.prol.loopexit, label %.lr.ph284.i.prol, !llvm.loop !785

.lr.ph284.i.prol.loopexit:                        ; preds = %.lr.ph284.i.prol, %.lr.ph284.i.preheader
  %.lcssa381.unr = phi ptr [ poison, %.lr.ph284.i.preheader ], [ %i.afk, %.lr.ph284.i.prol ]
  %.1283.i.unr = phi i32 [ %.0177.lcssa.i, %.lr.ph284.i.preheader ], [ %i.afm, %.lr.ph284.i.prol ]
  %.1179282.i.unr = phi ptr [ %.0178.lcssa.i, %.lr.ph284.i.preheader ], [ %i.afl, %.lr.ph284.i.prol ]
  %.11281.i.unr = phi ptr [ %.10.lcssa.i55, %.lr.ph284.i.preheader ], [ %i.afk, %.lr.ph284.i.prol ]
  %i.afn = sub i32 %.0177.lcssa.i, %.sroa.speculated
  %i.afo = icmp ugt i32 %i.afn, -4
  br i1 %i.afo, label %._crit_edge285.i, label %.lr.ph284.i

.lr.ph277.i:                                      ; preds = %.lr.ph277.i.preheader, %.lr.ph277.i
  %.0178274.i = phi ptr [ %i.agm, %.lr.ph277.i ], [ %i.aer, %.lr.ph277.i.preheader ] ; 4 uses
  %.10273.i = phi ptr [ %i.agl, %.lr.ph277.i ], [ %.9288.i, %.lr.ph277.i.preheader ] ; 9 uses
  %niter449 = phi i32 [ %niter449.next.1, %.lr.ph277.i ], [ 0, %.lr.ph277.i.preheader ]
  %i.afp = load i8, ptr %.0178274.i, align 1, !tbaa !116
  store i8 %i.afp, ptr %.10273.i, align 1, !tbaa !116
  %i.afq = getelementptr inbounds i8, ptr %.0178274.i, i64 %i.aar ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !116
  %i.afs = getelementptr inbounds nuw i8, ptr %.10273.i, i64 1
  store i8 %i.afr, ptr %i.afs, align 1, !tbaa !116
  %i.aft = getelementptr inbounds nuw i8, ptr %.0178274.i, i64 1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !116
  %i.afv = getelementptr inbounds nuw i8, ptr %.10273.i, i64 2
  store i8 %i.afu, ptr %i.afv, align 1, !tbaa !116
  %i.afw = getelementptr i8, ptr %i.afq, i64 1
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !116
  %i.afy = getelementptr inbounds nuw i8, ptr %.10273.i, i64 3
  store i8 %i.afx, ptr %i.afy, align 1, !tbaa !116
  %i.afz = getelementptr inbounds nuw i8, ptr %.10273.i, i64 4
  %i.aga = getelementptr inbounds i8, ptr %.0178274.i, i64 %i.aat ; 4 uses
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !116
  store i8 %i.agb, ptr %i.afz, align 1, !tbaa !116
  %i.agc = getelementptr inbounds i8, ptr %i.aga, i64 %i.aar ; 2 uses
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !116
  %i.age = getelementptr inbounds nuw i8, ptr %.10273.i, i64 5
  store i8 %i.agd, ptr %i.age, align 1, !tbaa !116
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aga, i64 1
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !116
  %i.agh = getelementptr inbounds nuw i8, ptr %.10273.i, i64 6
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !116
  %i.agi = getelementptr i8, ptr %i.agc, i64 1
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !116
  %i.agk = getelementptr inbounds nuw i8, ptr %.10273.i, i64 7
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !116
  %i.agl = getelementptr inbounds nuw i8, ptr %.10273.i, i64 8 ; 3 uses
  %i.agm = getelementptr inbounds i8, ptr %i.aga, i64 %i.aat ; 3 uses
  %niter449.next.1 = add nuw nsw i32 %niter449, 2 ; 2 uses
  %niter449.ncmp.1.not = icmp eq i32 %niter449.next.1, %unroll_iter448
  br i1 %niter449.ncmp.1.not, label %.preheader201.i.loopexit.unr-lcssa, label %.lr.ph277.i, !llvm.loop !786

.lr.ph284.i:                                      ; preds = %.lr.ph284.i.prol.loopexit, %.lr.ph284.i
  %.1283.i = phi i32 [ %i.ahl, %.lr.ph284.i ], [ %.1283.i.unr, %.lr.ph284.i.prol.loopexit ]
  %.1179282.i = phi ptr [ %i.ahk, %.lr.ph284.i ], [ %.1179282.i.unr, %.lr.ph284.i.prol.loopexit ] ; 3 uses
  %.11281.i = phi ptr [ %i.ahj, %.lr.ph284.i ], [ %.11281.i.unr, %.lr.ph284.i.prol.loopexit ] ; 9 uses
  %i.agn = load i8, ptr %.1179282.i, align 1, !tbaa !116
  store i8 %i.agn, ptr %.11281.i, align 1, !tbaa !116
  %i.ago = getelementptr inbounds nuw i8, ptr %.1179282.i, i64 1
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !116
  %i.agq = getelementptr inbounds nuw i8, ptr %.11281.i, i64 1
  store i8 %i.agp, ptr %i.agq, align 1, !tbaa !116
  %i.agr = getelementptr inbounds nuw i8, ptr %.11281.i, i64 2
  %i.ags = getelementptr inbounds i8, ptr %.1179282.i, i64 %i.aar ; 3 uses
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !116
  store i8 %i.agt, ptr %i.agr, align 1, !tbaa !116
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ags, i64 1
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !116
  %i.agw = getelementptr inbounds nuw i8, ptr %.11281.i, i64 3
  store i8 %i.agv, ptr %i.agw, align 1, !tbaa !116
  %i.agx = getelementptr inbounds nuw i8, ptr %.11281.i, i64 4
  %i.agy = getelementptr inbounds i8, ptr %i.ags, i64 %i.aar ; 3 uses
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !116
  store i8 %i.agz, ptr %i.agx, align 1, !tbaa !116
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !116
  %i.ahc = getelementptr inbounds nuw i8, ptr %.11281.i, i64 5
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !116
  %i.ahd = getelementptr inbounds nuw i8, ptr %.11281.i, i64 6
  %i.ahe = getelementptr inbounds i8, ptr %i.agy, i64 %i.aar ; 3 uses
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !116
  store i8 %i.ahf, ptr %i.ahd, align 1, !tbaa !116
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 1
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !116
  %i.ahi = getelementptr inbounds nuw i8, ptr %.11281.i, i64 7
  store i8 %i.ahh, ptr %i.ahi, align 1, !tbaa !116
  %i.ahj = getelementptr inbounds nuw i8, ptr %.11281.i, i64 8 ; 2 uses
  %i.ahk = getelementptr inbounds i8, ptr %i.ahe, i64 %i.aar
  %i.ahl = add nuw nsw i32 %.1283.i, 4            ; 2 uses
  %exitcond339.not.i.3 = icmp eq i32 %i.ahl, %.sroa.speculated
  br i1 %exitcond339.not.i.3, label %._crit_edge285.i, label %.lr.ph284.i, !llvm.loop !787

._crit_edge285.i:                                 ; preds = %.lr.ph284.i.prol.loopexit, %.lr.ph284.i, %.preheader201.i
  %.11.lcssa.i56 = phi ptr [ %.10.lcssa.i55, %.preheader201.i ], [ %.lcssa381.unr, %.lr.ph284.i.prol.loopexit ], [ %i.ahj, %.lr.ph284.i ] ; 2 uses
  %indvars.iv.next341.i = add nuw nsw i64 %indvars.iv340.i, 2 ; 3 uses
  %i.ahm = icmp slt i64 %indvars.iv.next341.i, %invariant.op367.i
  br i1 %i.ahm, label %bb.w, label %.preheader.loopexit.i57, !llvm.loop !788

.lr.ph296.i:                                      ; preds = %._crit_edge297.i, %.lr.ph296.preheader.i
  %indvars.iv344.i = phi i64 [ %i.aeg, %.lr.ph296.preheader.i ], [ %indvars.iv.next345.i, %._crit_edge297.i ] ; 2 uses
  %.12300.i = phi ptr [ %.9.lcssa.i53, %.lr.ph296.preheader.i ], [ %.lcssa382, %._crit_edge297.i ] ; 2 uses
  %i.ahn = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.aho = load i32, ptr %i.aa, align 4, !tbaa !88
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = mul nsw i64 %i.ahp, %i.aed
  %i.ahr = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.ahs = mul i64 %i.ahq, %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahn, i64 %i.ahs
  %i.ahu = getelementptr i8, ptr %i.aht, i64 %indvars.iv344.i
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 %i.aj ; 2 uses
  br i1 %i.aei, label %.epil.preheader453, label %.lr.ph296.i.new

.lr.ph296.i.new:                                  ; preds = %.lr.ph296.i, %.lr.ph296.i.new
  %.0176293.i = phi ptr [ %i.ait, %.lr.ph296.i.new ], [ %i.ahv, %.lr.ph296.i ] ; 2 uses
  %.13292.i = phi ptr [ %i.ais, %.lr.ph296.i.new ], [ %.12300.i, %.lr.ph296.i ] ; 9 uses
  %niter460 = phi i32 [ %niter460.next.7, %.lr.ph296.i.new ], [ 0, %.lr.ph296.i ]
  %i.ahw = load i8, ptr %.0176293.i, align 1, !tbaa !116
  store i8 %i.ahw, ptr %.13292.i, align 1, !tbaa !116
  %i.ahx = getelementptr inbounds nuw i8, ptr %.13292.i, i64 1
  %i.ahy = getelementptr inbounds i8, ptr %.0176293.i, i64 %i.aef ; 2 uses
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !116
  store i8 %i.ahz, ptr %i.ahx, align 1, !tbaa !116
  %i.aia = getelementptr inbounds nuw i8, ptr %.13292.i, i64 2
  %i.aib = getelementptr inbounds i8, ptr %i.ahy, i64 %i.aef ; 2 uses
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !116
  store i8 %i.aic, ptr %i.aia, align 1, !tbaa !116
  %i.aid = getelementptr inbounds nuw i8, ptr %.13292.i, i64 3
  %i.aie = getelementptr inbounds i8, ptr %i.aib, i64 %i.aef ; 2 uses
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !116
  store i8 %i.aif, ptr %i.aid, align 1, !tbaa !116
  %i.aig = getelementptr inbounds nuw i8, ptr %.13292.i, i64 4
  %i.aih = getelementptr inbounds i8, ptr %i.aie, i64 %i.aef ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !116
  store i8 %i.aii, ptr %i.aig, align 1, !tbaa !116
  %i.aij = getelementptr inbounds nuw i8, ptr %.13292.i, i64 5
  %i.aik = getelementptr inbounds i8, ptr %i.aih, i64 %i.aef ; 2 uses
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !116
  store i8 %i.ail, ptr %i.aij, align 1, !tbaa !116
  %i.aim = getelementptr inbounds nuw i8, ptr %.13292.i, i64 6
  %i.ain = getelementptr inbounds i8, ptr %i.aik, i64 %i.aef ; 2 uses
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !116
  store i8 %i.aio, ptr %i.aim, align 1, !tbaa !116
  %i.aip = getelementptr inbounds nuw i8, ptr %.13292.i, i64 7
  %i.aiq = getelementptr inbounds i8, ptr %i.ain, i64 %i.aef ; 2 uses
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !116
  store i8 %i.air, ptr %i.aip, align 1, !tbaa !116
  %i.ais = getelementptr inbounds nuw i8, ptr %.13292.i, i64 8 ; 3 uses
  %i.ait = getelementptr inbounds i8, ptr %i.aiq, i64 %i.aef ; 2 uses
  %niter460.next.7 = add i32 %niter460, 8         ; 2 uses
  %niter460.ncmp.7 = icmp eq i32 %niter460.next.7, %unroll_iter459
  br i1 %niter460.ncmp.7, label %._crit_edge297.i.unr-lcssa, label %.lr.ph296.i.new, !llvm.loop !789

._crit_edge297.i.unr-lcssa:                       ; preds = %.lr.ph296.i.new
  br i1 %lcmp.mod456.not, label %._crit_edge297.i, label %.epil.preheader453

.epil.preheader453:                               ; preds = %._crit_edge297.i.unr-lcssa, %.lr.ph296.i
  %.0176293.i.epil.init = phi ptr [ %i.ahv, %.lr.ph296.i ], [ %i.ait, %._crit_edge297.i.unr-lcssa ]
  %.13292.i.epil.init = phi ptr [ %.12300.i, %.lr.ph296.i ], [ %i.ais, %._crit_edge297.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod458)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader453
  %.0176293.i.epil = phi ptr [ %.0176293.i.epil.init, %.epil.preheader453 ], [ %i.aiw, %bb.x ] ; 2 uses
  %.13292.i.epil = phi ptr [ %.13292.i.epil.init, %.epil.preheader453 ], [ %i.aiv, %bb.x ] ; 2 uses
  %epil.iter455 = phi i32 [ 0, %.epil.preheader453 ], [ %epil.iter455.next, %bb.x ]
  %i.aiu = load i8, ptr %.0176293.i.epil, align 1, !tbaa !116
  store i8 %i.aiu, ptr %.13292.i.epil, align 1, !tbaa !116
  %i.aiv = getelementptr inbounds nuw i8, ptr %.13292.i.epil, i64 1 ; 2 uses
  %i.aiw = getelementptr inbounds i8, ptr %.0176293.i.epil, i64 %i.aef
  %epil.iter455.next = add i32 %epil.iter455, 1   ; 2 uses
  %epil.iter455.cmp.not = icmp eq i32 %epil.iter455.next, %xtraiter454
  br i1 %epil.iter455.cmp.not, label %._crit_edge297.i, label %bb.x, !llvm.loop !790

._crit_edge297.i:                                 ; preds = %bb.x, %._crit_edge297.i.unr-lcssa
  %.lcssa382 = phi ptr [ %i.ais, %._crit_edge297.i.unr-lcssa ], [ %i.aiv, %bb.x ]
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1 ; 2 uses
  %exitcond347.not.i = icmp eq i64 %indvars.iv.next345.i, %wide.trip.count.i54
  br i1 %exitcond347.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph296.i, !llvm.loop !791

_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge270.i, %._crit_edge297.i, %.lr.ph301.i, %.preheader.i52, %bb.o, %bb.q, %bb.s, %.lr.ph274.i, %.preheader.i, %bb.d, %bb.f, %bb.h
  %i.aix = load ptr, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %.not.i33 = icmp eq ptr %i.aix, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.aiy = atomicrmw add ptr %i.aix, i32 -1 acq_rel, align 4
  %i.aiz = icmp eq i32 %i.aiy, 1
  br i1 %i.aiz, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.aja = load ptr, ptr %i.u, align 8, !tbaa !17 ; 3 uses
  %.not3.i34 = icmp eq ptr %i.aja, null
  %i.ajb = load ptr, ptr %8, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ajc = load ptr, ptr %i.aja, align 8, !tbaa !9
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 24
  %i.aje = load ptr, ptr %i.ajd, align 8
  invoke void %i.aje(ptr noundef nonnull align 8 dereferenceable(8) %i.aja, ptr noundef %i.ajb)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ad, !inline_history !19

bb.ab:                                            ; preds = %bb.z
  %.not.i37 = icmp eq ptr %i.ajb, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.ajb) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.ajf = landingpad { ptr, i32 }
          catch ptr null
  %i.ajg = extractvalue { ptr, i32 } %i.ajf, 0
  call void @__clang_call_terminate(ptr %i.ajg) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.y, %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.ajh = load i32, ptr %5, align 4, !tbaa !45   ; 2 uses
  %i.aji = add nsw i32 %i.ajh, %.0118             ; 2 uses
  %i.ajj = load i32, ptr %4, align 4, !tbaa !45   ; 3 uses
  %i.ajk = icmp slt i32 %i.aji, %i.ajj
  br i1 %i.ajk, label %.noexc40, label %._crit_edge.loopexit, !llvm.loop !792

._crit_edge122:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge122, %bb.a
  ret void

bb.af:                                            ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ajl = landingpad { ptr, i32 }
          catch ptr null
  %i.ajm = extractvalue { ptr, i32 } %i.ajl, 0
  call void @__clang_call_terminate(ptr %i.ajm) #30
  unreachable
}

declare void @_ZN4ncnn37transpose_pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn38transpose_pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34transpose_pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn27pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn28pack_A_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #16

declare void @_ZN4ncnn27pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn28pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn37transpose_pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.052139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !435   ; 2 uses
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !437 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !438 ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !439
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !441
  %i.bm = load float, ptr %i.p, align 4, !tbaa !793
  %i.bn = load float, ptr %i.q, align 4, !tbaa !794
  %i.bo = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bp = sdiv i32 %.052139, %i.bo                ; 2 uses
  %i.bq = srem i32 %.052139, %i.bo                ; 2 uses
  %i.br = mul nsw i32 %i.bp, %i.bh                ; 3 uses
  %i.bs = mul nsw i32 %i.bq, %i.bi                ; 3 uses
  %i.bt = load i32, ptr %5, align 4, !tbaa !45
end_hunk_9
begin_hunk_10_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a

vector.memcheck219:                               ; preds = %iter.check248
  %scevgep220 = getelementptr i8, ptr %.35.lcssa.i, i64 1
  %i.adh = xor i32 %.0.lcssa.i, -1
  %i.adi = add i32 %5, %i.adh
  %i.adj = zext i32 %i.adi to i64                 ; 2 uses
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.adj
  %scevgep222 = getelementptr i8, ptr %.0400.lcssa.i, i64 4
  %i.adk = shl nuw nsw i64 %i.adj, 2
  %scevgep223 = getelementptr i8, ptr %scevgep222, i64 %i.adk
  %bound0224 = icmp ult ptr %.35.lcssa.i, %scevgep223
  %bound1225 = icmp ult ptr %.0400.lcssa.i, %scevgep221
  %found.conflict226 = and i1 %bound0224, %bound1225
  br i1 %found.conflict226, label %.lr.ph764.i.preheader, label %vector.main.loop.iter.check228

vector.main.loop.iter.check228:                   ; preds = %vector.memcheck219
  %min.iters.check229 = icmp ult i32 %i.ade, 63
  br i1 %min.iters.check229, label %vec.epilog.ph252, label %vector.ph230

vector.ph230:                                     ; preds = %vector.main.loop.iter.check228
  %i.adl = and i64 %i.adg, 56
  %n.vec231 = and i64 %i.adg, 8589934528          ; 6 uses
  %i.adm = trunc i64 %n.vec231 to i32
  %i.adn = add i32 %.0.lcssa.i, %i.adm
  %i.ado = shl nuw nsw i64 %n.vec231, 2
  %i.adp = getelementptr i8, ptr %.0400.lcssa.i, i64 %i.ado
  %i.adq = getelementptr i8, ptr %.35.lcssa.i, i64 %n.vec231 ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph230
  %index235 = phi i64 [ 0, %vector.ph230 ], [ %index.next242, %vector.body234 ] ; 3 uses
  %i.adr = shl i64 %index235, 2
  %next.gep236 = getelementptr i8, ptr %.0400.lcssa.i, i64 %i.adr ; 4 uses
  %next.gep237 = getelementptr i8, ptr %.35.lcssa.i, i64 %index235 ; 4 uses
  %i.ads = getelementptr i8, ptr %next.gep236, i64 64
  %i.adt = getelementptr i8, ptr %next.gep236, i64 128
  %i.adu = getelementptr i8, ptr %next.gep236, i64 192
  %wide.load238 = load <16 x float>, ptr %next.gep236, align 4, !tbaa !68, !alias.scope !1002
  %wide.load239 = load <16 x float>, ptr %i.ads, align 4, !tbaa !68, !alias.scope !1002
  %wide.load240 = load <16 x float>, ptr %i.adt, align 4, !tbaa !68, !alias.scope !1002
  %wide.load241 = load <16 x float>, ptr %i.adu, align 4, !tbaa !68, !alias.scope !1002
  %i.adv = fmul fast <16 x float> %wide.load238, %broadcast.splat233
  %i.adw = fmul fast <16 x float> %wide.load239, %broadcast.splat233
  %i.adx = fmul fast <16 x float> %wide.load240, %broadcast.splat233
  %i.ady = fmul fast <16 x float> %wide.load241, %broadcast.splat233
  %i.adz = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.adv)
  %i.aea = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.adw)
  %i.aeb = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.adx)
  %i.aec = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ady)
  %i.aed = fptosi <16 x float> %i.adz to <16 x i32>
  %i.aee = fptosi <16 x float> %i.aea to <16 x i32>
  %i.aef = fptosi <16 x float> %i.aeb to <16 x i32>
  %i.aeg = fptosi <16 x float> %i.aec to <16 x i32>
  %i.aeh = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aed, <16 x i32> splat (i32 -127))
  %i.aei = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aee, <16 x i32> splat (i32 -127))
  %i.aej = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aef, <16 x i32> splat (i32 -127))
  %i.aek = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aeg, <16 x i32> splat (i32 -127))
  %i.ael = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aeh, <16 x i32> splat (i32 127))
  %i.aem = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aei, <16 x i32> splat (i32 127))
  %i.aen = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aej, <16 x i32> splat (i32 127))
  %i.aeo = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aek, <16 x i32> splat (i32 127))
  %i.aep = trunc nsw <16 x i32> %i.ael to <16 x i8>
  %i.aeq = trunc nsw <16 x i32> %i.aem to <16 x i8>
  %i.aer = trunc nsw <16 x i32> %i.aen to <16 x i8>
  %i.aes = trunc nsw <16 x i32> %i.aeo to <16 x i8>
  %i.aet = getelementptr i8, ptr %next.gep237, i64 16
  %i.aeu = getelementptr i8, ptr %next.gep237, i64 32
  %i.aev = getelementptr i8, ptr %next.gep237, i64 48
  store <16 x i8> %i.aep, ptr %next.gep237, align 1, !tbaa !116, !alias.scope !1005, !noalias !1002
  store <16 x i8> %i.aeq, ptr %i.aet, align 1, !tbaa !116, !alias.scope !1005, !noalias !1002
  store <16 x i8> %i.aer, ptr %i.aeu, align 1, !tbaa !116, !alias.scope !1005, !noalias !1002
  store <16 x i8> %i.aes, ptr %i.aev, align 1, !tbaa !116, !alias.scope !1005, !noalias !1002
  %index.next242 = add nuw i64 %index235, 64      ; 2 uses
  %i.aew = icmp eq i64 %index.next242, %n.vec231
  br i1 %i.aew, label %middle.block243, label %vector.body234, !llvm.loop !1007

middle.block243:                                  ; preds = %vector.body234
  %cmp.n244 = icmp eq i64 %i.adg, %n.vec231
  br i1 %cmp.n244, label %._crit_edge765.i, label %vec.epilog.iter.check250

vec.epilog.iter.check250:                         ; preds = %middle.block243
  %min.epilog.iters.check251 = icmp eq i64 %i.adl, 0
  br i1 %min.epilog.iters.check251, label %.lr.ph764.i.preheader, label %vec.epilog.ph252, !prof !78

vec.epilog.ph252:                                 ; preds = %vector.main.loop.iter.check228, %vec.epilog.iter.check250
  %vec.epilog.resume.val245 = phi i64 [ %n.vec231, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check228 ]
  %n.vec253 = and i64 %i.adg, 8589934584          ; 5 uses
  %i.aex = trunc i64 %n.vec253 to i32
  %i.aey = add i32 %.0.lcssa.i, %i.aex
  %i.aez = shl nuw nsw i64 %n.vec253, 2
  %i.afa = getelementptr i8, ptr %.0400.lcssa.i, i64 %i.aez
  %i.afb = getelementptr i8, ptr %.35.lcssa.i, i64 %n.vec253 ; 2 uses
  br label %vec.epilog.vector.body256

vec.epilog.vector.body256:                        ; preds = %vec.epilog.vector.body256, %vec.epilog.ph252
  %index257 = phi i64 [ %vec.epilog.resume.val245, %vec.epilog.ph252 ], [ %index.next261, %vec.epilog.vector.body256 ] ; 3 uses
  %i.afc = shl i64 %index257, 2
  %next.gep258 = getelementptr i8, ptr %.0400.lcssa.i, i64 %i.afc
  %next.gep259 = getelementptr i8, ptr %.35.lcssa.i, i64 %index257
  %wide.load260 = load <8 x float>, ptr %next.gep258, align 4, !tbaa !68, !alias.scope !1002
  %i.afd = fmul fast <8 x float> %wide.load260, %broadcast.splat255
  %i.afe = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.afd)
  %i.aff = fptosi <8 x float> %i.afe to <8 x i32>
  %i.afg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aff, <8 x i32> splat (i32 -127))
  %i.afh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.afg, <8 x i32> splat (i32 127))
  %i.afi = trunc nsw <8 x i32> %i.afh to <8 x i8>
  store <8 x i8> %i.afi, ptr %next.gep259, align 1, !tbaa !116, !alias.scope !1005, !noalias !1002
  %index.next261 = add nuw i64 %index257, 8       ; 2 uses
  %i.afj = icmp eq i64 %index.next261, %n.vec253
  br i1 %i.afj, label %vec.epilog.middle.block262, label %vec.epilog.vector.body256, !llvm.loop !1008

vec.epilog.middle.block262:                       ; preds = %vec.epilog.vector.body256
  %cmp.n263 = icmp eq i64 %i.adg, %n.vec253
  br i1 %cmp.n263, label %._crit_edge765.i, label %.lr.ph764.i.preheader

.lr.ph764.i.preheader:                            ; preds = %vector.memcheck219, %iter.check248, %vec.epilog.iter.check250, %vec.epilog.middle.block262
  %.1763.i.ph = phi i32 [ %.0.lcssa.i, %iter.check248 ], [ %.0.lcssa.i, %vector.memcheck219 ], [ %i.adn, %vec.epilog.iter.check250 ], [ %i.aey, %vec.epilog.middle.block262 ] ; 4 uses
  %.1401762.i.ph = phi ptr [ %.0400.lcssa.i, %iter.check248 ], [ %.0400.lcssa.i, %vector.memcheck219 ], [ %i.adp, %vec.epilog.iter.check250 ], [ %i.afa, %vec.epilog.middle.block262 ] ; 3 uses
  %.36761.i.ph = phi ptr [ %.35.lcssa.i, %iter.check248 ], [ %.35.lcssa.i, %vector.memcheck219 ], [ %i.adq, %vec.epilog.iter.check250 ], [ %i.afb, %vec.epilog.middle.block262 ] ; 3 uses
  %i.afk = sub i32 %5, %.1763.i.ph
  %.neg331 = add i32 %.1763.i.ph, 1
  %xtraiter322 = and i32 %i.afk, 1
  %lcmp.mod323.not = icmp eq i32 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.lr.ph764.i.prol.loopexit, label %.lr.ph764.i.prol

.lr.ph764.i.prol:                                 ; preds = %.lr.ph764.i.preheader
  %i.afl = load float, ptr %.1401762.i.ph, align 4, !tbaa !68
  %i.afm = fmul fast float %i.afl, %6
  %i.afn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.afm)
  %i.afo = fptosi float %i.afn to i32
  %spec.select.i563.i.prol = tail call i32 @llvm.smax.i32(i32 %i.afo, i32 -127)
  %.0.i564.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i563.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i564.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.36761.i.ph, align 1, !tbaa !116
  %i.afp = getelementptr inbounds nuw i8, ptr %.36761.i.ph, i64 1 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.1401762.i.ph, i64 4
  %i.afr = add nuw nsw i32 %.1763.i.ph, 1
  br label %.lr.ph764.i.prol.loopexit

.lr.ph764.i.prol.loopexit:                        ; preds = %.lr.ph764.i.prol, %.lr.ph764.i.preheader
  %.lcssa268.unr = phi ptr [ poison, %.lr.ph764.i.preheader ], [ %i.afp, %.lr.ph764.i.prol ]
  %.1763.i.unr = phi i32 [ %.1763.i.ph, %.lr.ph764.i.preheader ], [ %i.afr, %.lr.ph764.i.prol ]
  %.1401762.i.unr = phi ptr [ %.1401762.i.ph, %.lr.ph764.i.preheader ], [ %i.afq, %.lr.ph764.i.prol ]
  %.36761.i.unr = phi ptr [ %.36761.i.ph, %.lr.ph764.i.preheader ], [ %i.afp, %.lr.ph764.i.prol ]
  %i.afs = icmp eq i32 %5, %.neg331
  br i1 %i.afs, label %._crit_edge765.i, label %.lr.ph764.i

.lr.ph757.i:                                      ; preds = %bb.m, %.lr.ph757.i
  %.0755.i = phi i32 [ %i.agg, %.lr.ph757.i ], [ 0, %bb.m ]
  %.0400754.i = phi ptr [ %i.agf, %.lr.ph757.i ], [ %i.adb, %bb.m ] ; 2 uses
  %.35753.i = phi ptr [ %i.age, %.lr.ph757.i ], [ %.34768.i, %bb.m ] ; 2 uses
  %i.aft = load <4 x float>, ptr %.0400754.i, align 1, !tbaa !116
  %i.afu = fmul fast <4 x float> %i.aft, %i.yl    ; 2 uses
  %i.afv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.afu)
  %i.afw = fadd fast <4 x float> %i.afv, %i.afu
  %i.afx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afw) ; 2 uses
  %i.afy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.afx, <4 x i32> %i.afx)
  %i.afz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afy, <8 x i16> splat (i16 -127))
  %i.aga = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afz, <8 x i16> splat (i16 127))
  %i.agb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aga, <8 x i16> poison)
  %i.agc = bitcast <16 x i8> %i.agb to <4 x i32>
  %i.agd = extractelement <4 x i32> %i.agc, i64 0
  store i32 %i.agd, ptr %.35753.i, align 4, !tbaa !45
  %i.age = getelementptr inbounds nuw i8, ptr %.35753.i, i64 4 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.0400754.i, i64 16 ; 2 uses
  %i.agg = add nuw nsw i32 %.0755.i, 4            ; 2 uses
  %i.agh = or disjoint i32 %i.agg, 3
  %i.agi = icmp slt i32 %i.agh, %5
  br i1 %i.agi, label %.lr.ph757.i, label %.preheader.i, !llvm.loop !1009

.lr.ph764.i:                                      ; preds = %.lr.ph764.i.prol.loopexit, %.lr.ph764.i
  %.1763.i = phi i32 [ %i.agv, %.lr.ph764.i ], [ %.1763.i.unr, %.lr.ph764.i.prol.loopexit ]
  %.1401762.i = phi ptr [ %i.agu, %.lr.ph764.i ], [ %.1401762.i.unr, %.lr.ph764.i.prol.loopexit ] ; 3 uses
  %.36761.i = phi ptr [ %i.agt, %.lr.ph764.i ], [ %.36761.i.unr, %.lr.ph764.i.prol.loopexit ] ; 3 uses
  %i.agj = load float, ptr %.1401762.i, align 4, !tbaa !68
  %i.agk = fmul fast float %i.agj, %6
  %i.agl = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agk)
  %i.agm = fptosi float %i.agl to i32
  %spec.select.i563.i = tail call i32 @llvm.smax.i32(i32 %i.agm, i32 -127)
  %.0.i564.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i563.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i564.i to i8
  store i8 %.0.i.i, ptr %.36761.i, align 1, !tbaa !116
  %i.agn = getelementptr inbounds nuw i8, ptr %.36761.i, i64 1
  %i.ago = getelementptr inbounds nuw i8, ptr %.1401762.i, i64 4
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !68
  %i.agq = fmul fast float %i.agp, %6
  %i.agr = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agq)
  %i.ags = fptosi float %i.agr to i32
  %spec.select.i563.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ags, i32 -127)
  %.0.i564.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i563.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i564.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.agn, align 1, !tbaa !116
  %i.agt = getelementptr inbounds nuw i8, ptr %.36761.i, i64 2 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.1401762.i, i64 8
  %i.agv = add nuw nsw i32 %.1763.i, 2            ; 2 uses
  %exitcond845.not.i.1 = icmp eq i32 %i.agv, %5
  br i1 %exitcond845.not.i.1, label %._crit_edge765.i, label %.lr.ph764.i, !llvm.loop !1010

._crit_edge765.i:                                 ; preds = %.lr.ph764.i.prol.loopexit, %.lr.ph764.i, %middle.block243, %vec.epilog.middle.block262, %.preheader.i
  %.36.lcssa.i = phi ptr [ %.35.lcssa.i, %.preheader.i ], [ %i.afb, %vec.epilog.middle.block262 ], [ %i.adq, %middle.block243 ], [ %.lcssa268.unr, %.lr.ph764.i.prol.loopexit ], [ %i.agt, %.lr.ph764.i ]
  %indvars.iv.next847.i = add nuw nsw i64 %indvars.iv846.i, 1 ; 2 uses
  %exitcond849.not.i = icmp eq i64 %indvars.iv.next847.i, %wide.trip.count.i
  br i1 %exitcond849.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.m, !llvm.loop !1011

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge765.i, %bb.b, %bb.d, %bb.f, %.preheader569.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not719.i = icmp eq i32 %i.b, 0
  br i1 %.not719.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not720.i = icmp eq i32 %i.c, 0
  br i1 %.not720.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 25 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 44 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.p = icmp sgt i32 %3, 15
  br i1 %i.p, label %.lr.ph1131.i, label %.preheader1091.i

.lr.ph1131.i:                                     ; preds = %bb.j
  %i.q = sext i32 %4 to i64
  %i.r = mul i64 %i.n, %i.q                       ; 4 uses
  %i.s = insertelement <16 x float> poison, float %6, i64 0
  %i.t = shufflevector <16 x float> %i.s, <16 x float> poison, <16 x i32> zeroinitializer ; 33 uses
  %i.u = icmp ne i32 %i.e, 16
  %i.v = icmp slt i32 %5, 16
  %.idx742.i = shl i64 %i.n, 6
  %.idx741.i = shl i64 %i.n, 5
  %i.w = icmp ne i32 %i.e, 4
  %i.x = icmp slt i32 %5, 4
  %.idx740.i = shl i64 %i.n, 4
  %i.y = icmp eq i32 %i.e, 1
  %i.z = icmp sgt i32 %5, 1
  %.idx739.i = shl i64 %i.n, 3
  %i.aa = and i32 %5, -2
  %i.ab = zext nneg i32 %3 to i64                 ; 5 uses
  %i.ac = sext i32 %2 to i64                      ; 4 uses
  %i.ad = sext i32 %i.e to i64                    ; 4 uses
  %brmerge.i = or i1 %i.v, %i.u
  %brmerge1286.i = or i1 %i.x, %i.w
  br i1 %brmerge.i, label %.lr.ph1131.i.split.us, label %.lr.ph.i.preheader

.lr.ph1131.i.split.us:                            ; preds = %.lr.ph1131.i
  %i.ae = icmp slt i32 %5, 8
  %i.af = icmp ne i32 %i.e, 8
  %brmerge1283.i = or i1 %i.ae, %i.af
  br i1 %brmerge1283.i, label %.lr.ph1131.i.split.us.split.us, label %.loopexit1100.i.us

.lr.ph1131.i.split.us.split.us:                   ; preds = %.lr.ph1131.i.split.us
  br i1 %brmerge1286.i, label %.lr.ph1131.i.split.us.split.us.split.us, label %.loopexit1100.i.us.us

.lr.ph1131.i.split.us.split.us.split.us:          ; preds = %.lr.ph1131.i.split.us.split.us
  br i1 %i.y, label %.loopexit1100.i.us.us.us.us.preheader, label %.loopexit1100.i.us.us.us.preheader

.loopexit1100.i.us.us.us.us.preheader:            ; preds = %.lr.ph1131.i.split.us.split.us.split.us
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit1100.i.us.us.us.us

.loopexit1100.i.us.us.us.preheader:               ; preds = %.lr.ph1131.i.split.us.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 31)
  %i.ag = and i64 %umax, 2147483632
  br label %.preheader1091.loopexit.i

.loopexit1100.i.us.us.us.us:                      ; preds = %.loopexit1100.i.us.us.us.us.preheader, %.loopexit1093.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ 0, %.loopexit1100.i.us.us.us.us.preheader ] ; 2 uses
  %.06471130.i.us.us.us.us = phi ptr [ %.9.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ %i.o, %.loopexit1100.i.us.us.us.us.preheader ] ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.r
  %i.aj = add nsw i64 %indvars.iv.i.us.us.us.us, %i.ac
  %i.ak = mul nuw nsw i64 %i.aj, %i.ad
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  br i1 %i.z, label %.lr.ph1120.i.us.us.us.us, label %.preheader1092.i.us.us.us.us

.lr.ph1120.i.us.us.us.us:                         ; preds = %.loopexit1100.i.us.us.us.us, %.lr.ph1120.i.us.us.us.us
  %.71119.i.us.us.us.us = phi ptr [ %i.be, %.lr.ph1120.i.us.us.us.us ], [ %.06471130.i.us.us.us.us, %.loopexit1100.i.us.us.us.us ] ; 3 uses
  %.66621118.i.us.us.us.us = phi ptr [ %i.bf, %.lr.ph1120.i.us.us.us.us ], [ %i.al, %.loopexit1100.i.us.us.us.us ] ; 3 uses
  %.06761117.i.us.us.us.us = phi i32 [ %i.bg, %.lr.ph1120.i.us.us.us.us ], [ 0, %.loopexit1100.i.us.us.us.us ]
  %i.am = load <16 x float>, ptr %.66621118.i.us.us.us.us, align 1, !tbaa !116
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.66621118.i.us.us.us.us, i64 %i.n
  %i.ao = load <16 x float>, ptr %i.an, align 1, !tbaa !116
  %i.ap = fmul fast <16 x float> %i.am, %i.t      ; 2 uses
  %i.aq = fmul fast <16 x float> %i.ao, %i.t      ; 2 uses
  %i.ar = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ap)
  %i.as = fadd fast <16 x float> %i.ar, %i.ap
  %i.at = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.as, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.au = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.at, <16 x i8> zeroinitializer, i16 -1)
  %i.av = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.au, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.aw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aq)
  %i.ax = fadd fast <16 x float> %i.aw, %i.aq
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ax, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.az = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ay, <16 x i8> zeroinitializer, i16 -1)
  %i.ba = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.az, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.av, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i8> %i.av, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bb, ptr %.71119.i.us.us.us.us, align 16, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %.71119.i.us.us.us.us, i64 16
  store <16 x i8> %i.bc, ptr %i.bd, align 16, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %.71119.i.us.us.us.us, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.66621118.i.us.us.us.us, i64 %.idx739.i ; 2 uses
  %i.bg = add nuw nsw i32 %.06761117.i.us.us.us.us, 2 ; 2 uses
  %i.bh = or disjoint i32 %i.bg, 1
  %i.bi = icmp slt i32 %i.bh, %5
  br i1 %i.bi, label %.lr.ph1120.i.us.us.us.us, label %.preheader1092.i.us.us.us.us, !llvm.loop !1012

.preheader1092.i.us.us.us.us:                     ; preds = %.lr.ph1120.i.us.us.us.us, %.loopexit1100.i.us.us.us.us
  %.0676.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit1100.i.us.us.us.us ], [ %i.aa, %.lr.ph1120.i.us.us.us.us ] ; 4 uses
  %.6662.lcssa.i.us.us.us.us = phi ptr [ %i.al, %.loopexit1100.i.us.us.us.us ], [ %i.bf, %.lr.ph1120.i.us.us.us.us ] ; 3 uses
  %.7.lcssa.i.us.us.us.us = phi ptr [ %.06471130.i.us.us.us.us, %.loopexit1100.i.us.us.us.us ], [ %i.be, %.lr.ph1120.i.us.us.us.us ] ; 4 uses
  %i.bj = icmp slt i32 %.0676.lcssa.i.us.us.us.us, %5
  br i1 %i.bj, label %.lr.ph1127.i.us.us.us.us.preheader, label %.loopexit1093.i.us.us.us.us

.lr.ph1127.i.us.us.us.us.preheader:               ; preds = %.preheader1092.i.us.us.us.us
  %.neg = or disjoint i32 %.0676.lcssa.i.us.us.us.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph1127.i.us.us.us.us.prol.loopexit, label %.lr.ph1127.i.us.us.us.us.prol

.lr.ph1127.i.us.us.us.us.prol:                    ; preds = %.lr.ph1127.i.us.us.us.us.preheader
  %i.bk = load <16 x float>, ptr %.6662.lcssa.i.us.us.us.us, align 1, !tbaa !116
  %i.bl = fmul fast <16 x float> %i.bk, %i.t      ; 2 uses
  %i.bm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bl)
  %i.bn = fadd fast <16 x float> %i.bm, %i.bl
  %i.bo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bo, <16 x i8> zeroinitializer, i16 -1)
  %i.bq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bp, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bq, ptr %.7.lcssa.i.us.us.us.us, align 16, !tbaa !116
  %i.br = getelementptr inbounds nuw i8, ptr %.7.lcssa.i.us.us.us.us, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.6662.lcssa.i.us.us.us.us, i64 %i.n
  %i.bt = or disjoint i32 %.0676.lcssa.i.us.us.us.us, 1
  br label %.lr.ph1127.i.us.us.us.us.prol.loopexit

.lr.ph1127.i.us.us.us.us.prol.loopexit:           ; preds = %.lr.ph1127.i.us.us.us.us.prol, %.lr.ph1127.i.us.us.us.us.preheader
  %.lcssa258.unr = phi ptr [ poison, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph1127.i.us.us.us.us.prol ]
  %.81126.i.us.us.us.us.unr = phi ptr [ %.7.lcssa.i.us.us.us.us, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.br, %.lr.ph1127.i.us.us.us.us.prol ]
  %.76631125.i.us.us.us.us.unr = phi ptr [ %.6662.lcssa.i.us.us.us.us, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.bs, %.lr.ph1127.i.us.us.us.us.prol ]
  %.16771124.i.us.us.us.us.unr = phi i32 [ %.0676.lcssa.i.us.us.us.us, %.lr.ph1127.i.us.us.us.us.preheader ], [ %i.bt, %.lr.ph1127.i.us.us.us.us.prol ]
  %i.bu = icmp eq i32 %5, %.neg
  br i1 %i.bu, label %.loopexit1093.i.us.us.us.us, label %.lr.ph1127.i.us.us.us.us

.lr.ph1127.i.us.us.us.us:                         ; preds = %.lr.ph1127.i.us.us.us.us.prol.loopexit, %.lr.ph1127.i.us.us.us.us
  %.81126.i.us.us.us.us = phi ptr [ %i.cl, %.lr.ph1127.i.us.us.us.us ], [ %.81126.i.us.us.us.us.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ] ; 3 uses
  %.76631125.i.us.us.us.us = phi ptr [ %i.cm, %.lr.ph1127.i.us.us.us.us ], [ %.76631125.i.us.us.us.us.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.16771124.i.us.us.us.us = phi i32 [ %i.cn, %.lr.ph1127.i.us.us.us.us ], [ %.16771124.i.us.us.us.us.unr, %.lr.ph1127.i.us.us.us.us.prol.loopexit ]
  %i.bv = load <16 x float>, ptr %.76631125.i.us.us.us.us, align 1, !tbaa !116
  %i.bw = fmul fast <16 x float> %i.bv, %i.t      ; 2 uses
  %i.bx = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bw)
  %i.by = fadd fast <16 x float> %i.bx, %i.bw
  %i.bz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.by, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ca = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bz, <16 x i8> zeroinitializer, i16 -1)
  %i.cb = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ca, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.cb, ptr %.81126.i.us.us.us.us, align 16, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %.81126.i.us.us.us.us, i64 16
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.76631125.i.us.us.us.us, i64 %i.n ; 2 uses
  %i.ce = load <16 x float>, ptr %i.cd, align 1, !tbaa !116
  %i.cf = fmul fast <16 x float> %i.ce, %i.t      ; 2 uses
  %i.cg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cf)
  %i.ch = fadd fast <16 x float> %i.cg, %i.cf
  %i.ci = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ch, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ci, <16 x i8> zeroinitializer, i16 -1)
end_hunk_10
begin_hunk_11_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.awr = getelementptr inbounds nuw i8, ptr %.421248.i, i64 32 ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awj, i64 %.idx723.i ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit220.unr-lcssa, label %.lr.ph1249.i, !llvm.loop !1037

.loopexit1070.i:                                  ; preds = %bb.n
  br i1 %brmerge1319.i, label %.loopexit1069.i, label %.lr.ph1255.i.preheader

.lr.ph1255.i.preheader:                           ; preds = %.loopexit1070.i
  br i1 %i.app, label %.lr.ph1255.i.epil.preheader, label %.lr.ph1255.i

.lr.ph1255.i:                                     ; preds = %.lr.ph1255.i.preheader, %.lr.ph1255.i
  %.441254.i = phi ptr [ %i.axn, %.lr.ph1255.i ], [ %.411277.i, %.lr.ph1255.i.preheader ] ; 3 uses
  %.26671252.i = phi ptr [ %i.axo, %.lr.ph1255.i ], [ %i.awa, %.lr.ph1255.i.preheader ] ; 2 uses
  %niter278 = phi i32 [ %niter278.next.1, %.lr.ph1255.i ], [ 0, %.lr.ph1255.i.preheader ]
  %i.awt = load <8 x float>, ptr %.26671252.i, align 32, !tbaa !116
  %i.awu = fmul fast <8 x float> %i.awt, %i.aor   ; 2 uses
  %i.awv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.awu)
  %i.aww = fadd fast <8 x float> %i.awv, %i.awu
  %i.awx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aww)
  %i.awy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.awx, <16 x i8> zeroinitializer, i8 -1)
  %i.awz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.awy, <16 x i8> splat (i8 -127))
  %i.axa = bitcast <16 x i8> %i.awz to <2 x i64>
  %i.axb = extractelement <2 x i64> %i.axa, i64 0
  store i64 %i.axb, ptr %.441254.i, align 8, !tbaa !975
  %i.axc = getelementptr inbounds nuw i8, ptr %.441254.i, i64 8
  %i.axd = getelementptr inbounds nuw i8, ptr %.26671252.i, i64 %.idx722.i ; 2 uses
  %i.axe = load <8 x float>, ptr %i.axd, align 32, !tbaa !116
  %i.axf = fmul fast <8 x float> %i.axe, %i.aor   ; 2 uses
  %i.axg = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.axf)
  %i.axh = fadd fast <8 x float> %i.axg, %i.axf
  %i.axi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.axh)
  %i.axj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.axi, <16 x i8> zeroinitializer, i8 -1)
  %i.axk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.axj, <16 x i8> splat (i8 -127))
  %i.axl = bitcast <16 x i8> %i.axk to <2 x i64>
  %i.axm = extractelement <2 x i64> %i.axl, i64 0
  store i64 %i.axm, ptr %i.axc, align 8, !tbaa !975
  %i.axn = getelementptr inbounds nuw i8, ptr %.441254.i, i64 16 ; 3 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axd, i64 %.idx722.i ; 2 uses
  %niter278.next.1 = add i32 %niter278, 2         ; 2 uses
  %niter278.ncmp.1.not = icmp eq i32 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1.not, label %.loopexit.i.loopexit219.unr-lcssa, label %.lr.ph1255.i, !llvm.loop !1038

.loopexit1069.i:                                  ; preds = %.loopexit1070.i
  br i1 %brmerge1322.i, label %.loopexit1068.i, label %.lr.ph1261.i

.lr.ph1261.i:                                     ; preds = %.loopexit1069.i, %.lr.ph1261.i
  %.461260.i = phi ptr [ %i.aya, %.lr.ph1261.i ], [ %.411277.i, %.loopexit1069.i ] ; 2 uses
  %.06491259.i = phi i32 [ %i.ayc, %.lr.ph1261.i ], [ 0, %.loopexit1069.i ]
  %.46691258.i = phi ptr [ %i.ayb, %.lr.ph1261.i ], [ %i.awa, %.loopexit1069.i ] ; 2 uses
  %i.axp = load <4 x float>, ptr %.46691258.i, align 16, !tbaa !116
  %i.axq = fmul fast <4 x float> %i.axp, %i.aov   ; 2 uses
  %i.axr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.axq)
  %i.axs = fadd fast <4 x float> %i.axr, %i.axq
  %i.axt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.axs) ; 2 uses
  %i.axu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.axt, <4 x i32> %i.axt)
  %i.axv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.axu, <8 x i16> splat (i16 -127))
  %i.axw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.axv, <8 x i16> splat (i16 127))
  %i.axx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.axw, <8 x i16> poison)
  %i.axy = bitcast <16 x i8> %i.axx to <4 x i32>
  %i.axz = extractelement <4 x i32> %i.axy, i64 0
  store i32 %i.axz, ptr %.461260.i, align 4, !tbaa !45
  %i.aya = getelementptr inbounds nuw i8, ptr %.461260.i, i64 4 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %.46691258.i, i64 %.idx721.i
  %i.ayc = add nuw nsw i32 %.06491259.i, 4        ; 2 uses
  %i.ayd = or disjoint i32 %i.ayc, 3
  %i.aye = icmp slt i32 %i.ayd, %5
  br i1 %i.aye, label %.lr.ph1261.i, label %.loopexit.i, !llvm.loop !1039

.loopexit1068.i:                                  ; preds = %.loopexit1069.i
  br i1 %i.aox, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %.loopexit1068.i
  br i1 %i.aoy, label %.lr.ph1267.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph1267.i, %bb.o
  %.6671.lcssa.i = phi ptr [ %i.awa, %bb.o ], [ %i.aza, %.lr.ph1267.i ] ; 3 uses
  %.48.lcssa.i = phi ptr [ %.411277.i, %bb.o ], [ %i.ayz, %.lr.ph1267.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.o ], [ %i.apd, %.lr.ph1267.i ] ; 4 uses
  %i.ayf = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.ayf, label %.lr.ph1274.i.preheader, label %.loopexit.i

.lr.ph1274.i.preheader:                           ; preds = %.preheader.i
  %.neg283 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod280.not, label %.lr.ph1274.i.prol.loopexit, label %.lr.ph1274.i.prol

.lr.ph1274.i.prol:                                ; preds = %.lr.ph1274.i.preheader
  %i.ayg = load float, ptr %.6671.lcssa.i, align 4, !tbaa !68
  %i.ayh = fmul fast float %i.ayg, %6
  %i.ayi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ayh)
  %i.ayj = fptosi float %i.ayi to i32
  %spec.select.i1062.i.prol = tail call i32 @llvm.smax.i32(i32 %i.ayj, i32 -127)
  %.0.i1063.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i1062.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i1063.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.48.lcssa.i, align 1, !tbaa !116
  %i.ayk = getelementptr inbounds nuw i8, ptr %.48.lcssa.i, i64 1 ; 2 uses
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.6671.lcssa.i, i64 %i.n
  %i.aym = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph1274.i.prol.loopexit

.lr.ph1274.i.prol.loopexit:                       ; preds = %.lr.ph1274.i.prol, %.lr.ph1274.i.preheader
  %.lcssa225.unr = phi ptr [ poison, %.lr.ph1274.i.preheader ], [ %i.ayk, %.lr.ph1274.i.prol ]
  %.11273.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph1274.i.preheader ], [ %i.aym, %.lr.ph1274.i.prol ]
  %.491272.i.unr = phi ptr [ %.48.lcssa.i, %.lr.ph1274.i.preheader ], [ %i.ayk, %.lr.ph1274.i.prol ]
  %.76721271.i.unr = phi ptr [ %.6671.lcssa.i, %.lr.ph1274.i.preheader ], [ %i.ayl, %.lr.ph1274.i.prol ]
  %i.ayn = icmp eq i32 %5, %.neg283
  br i1 %i.ayn, label %.loopexit.i, label %.lr.ph1274.i

.lr.ph1267.i:                                     ; preds = %bb.o, %.lr.ph1267.i
  %.01266.i = phi i32 [ %i.azb, %.lr.ph1267.i ], [ 0, %bb.o ]
  %.481265.i = phi ptr [ %i.ayz, %.lr.ph1267.i ], [ %.411277.i, %bb.o ] ; 2 uses
  %.66711264.i = phi ptr [ %i.aza, %.lr.ph1267.i ], [ %i.awa, %bb.o ] ; 2 uses
  %i.ayo = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.66711264.i, <4 x i32> %i.apc, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ayp = fmul fast <4 x float> %i.ayo, %i.aov   ; 2 uses
  %i.ayq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ayp)
  %i.ayr = fadd fast <4 x float> %i.ayq, %i.ayp
  %i.ays = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ayr) ; 2 uses
  %i.ayt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ays, <4 x i32> %i.ays)
  %i.ayu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ayt, <8 x i16> splat (i16 -127))
  %i.ayv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ayu, <8 x i16> splat (i16 127))
  %i.ayw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ayv, <8 x i16> poison)
  %i.ayx = bitcast <16 x i8> %i.ayw to <4 x i32>
  %i.ayy = extractelement <4 x i32> %i.ayx, i64 0
  store i32 %i.ayy, ptr %.481265.i, align 4, !tbaa !45
  %i.ayz = getelementptr inbounds nuw i8, ptr %.481265.i, i64 4 ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.66711264.i, i64 %.idx721.i ; 2 uses
  %i.azb = add nuw nsw i32 %.01266.i, 4           ; 2 uses
  %i.azc = or disjoint i32 %i.azb, 3
  %i.azd = icmp slt i32 %i.azc, %5
  br i1 %i.azd, label %.lr.ph1267.i, label %.preheader.i, !llvm.loop !1040

.lr.ph1274.i:                                     ; preds = %.lr.ph1274.i.prol.loopexit, %.lr.ph1274.i
  %.11273.i = phi i32 [ %i.azq, %.lr.ph1274.i ], [ %.11273.i.unr, %.lr.ph1274.i.prol.loopexit ]
  %.491272.i = phi ptr [ %i.azo, %.lr.ph1274.i ], [ %.491272.i.unr, %.lr.ph1274.i.prol.loopexit ] ; 3 uses
  %.76721271.i = phi ptr [ %i.azp, %.lr.ph1274.i ], [ %.76721271.i.unr, %.lr.ph1274.i.prol.loopexit ] ; 2 uses
  %i.aze = load float, ptr %.76721271.i, align 4, !tbaa !68
  %i.azf = fmul fast float %i.aze, %6
  %i.azg = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.azf)
  %i.azh = fptosi float %i.azg to i32
  %spec.select.i1062.i = tail call i32 @llvm.smax.i32(i32 %i.azh, i32 -127)
  %.0.i1063.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i1062.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i1063.i to i8
  store i8 %.0.i.i, ptr %.491272.i, align 1, !tbaa !116
  %i.azi = getelementptr inbounds nuw i8, ptr %.491272.i, i64 1
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %.76721271.i, i64 %i.n ; 2 uses
  %i.azk = load float, ptr %i.azj, align 4, !tbaa !68
  %i.azl = fmul fast float %i.azk, %6
  %i.azm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.azl)
  %i.azn = fptosi float %i.azm to i32
  %spec.select.i1062.i.1 = tail call i32 @llvm.smax.i32(i32 %i.azn, i32 -127)
  %.0.i1063.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i1062.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i1063.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.azi, align 1, !tbaa !116
  %i.azo = getelementptr inbounds nuw i8, ptr %.491272.i, i64 2 ; 2 uses
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %i.n
  %i.azq = add nuw nsw i32 %.11273.i, 2           ; 2 uses
  %exitcond1392.not.i.1 = icmp eq i32 %i.azq, %5
  br i1 %exitcond1392.not.i.1, label %.loopexit.i, label %.lr.ph1274.i, !llvm.loop !1041

.loopexit.i.loopexit219.unr-lcssa:                ; preds = %.lr.ph1255.i
  br i1 %lcmp.mod274.not.not, label %.lr.ph1255.i.epil.preheader, label %.loopexit.i

.lr.ph1255.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit219.unr-lcssa, %.lr.ph1255.i.preheader
  %.441254.i.epil.init = phi ptr [ %.411277.i, %.lr.ph1255.i.preheader ], [ %i.axn, %.loopexit.i.loopexit219.unr-lcssa ] ; 2 uses
  %.26671252.i.epil.init = phi ptr [ %i.awa, %.lr.ph1255.i.preheader ], [ %i.axo, %.loopexit.i.loopexit219.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.azr = load <8 x float>, ptr %.26671252.i.epil.init, align 32, !tbaa !116
  %i.azs = fmul fast <8 x float> %i.azr, %i.aor   ; 2 uses
  %i.azt = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.azs)
  %i.azu = fadd fast <8 x float> %i.azt, %i.azs
  %i.azv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.azu)
  %i.azw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.azv, <16 x i8> zeroinitializer, i8 -1)
  %i.azx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.azw, <16 x i8> splat (i8 -127))
  %i.azy = bitcast <16 x i8> %i.azx to <2 x i64>
  %i.azz = extractelement <2 x i64> %i.azy, i64 0
  store i64 %i.azz, ptr %.441254.i.epil.init, align 8, !tbaa !975
  %i.baa = getelementptr inbounds nuw i8, ptr %.441254.i.epil.init, i64 8
  br label %.loopexit.i

.loopexit.i.loopexit220.unr-lcssa:                ; preds = %.lr.ph1249.i
  br i1 %lcmp.mod270.not.not, label %.lr.ph1249.i.epil.preheader, label %.loopexit.i

.lr.ph1249.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit220.unr-lcssa, %.lr.ph1249.i.preheader
  %.421248.i.epil.init = phi ptr [ %.411277.i, %.lr.ph1249.i.preheader ], [ %i.awr, %.loopexit.i.loopexit220.unr-lcssa ] ; 2 uses
  %.06651246.i.epil.init = phi ptr [ %i.awa, %.lr.ph1249.i.preheader ], [ %i.aws, %.loopexit.i.loopexit220.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %i.bab = load <16 x float>, ptr %.06651246.i.epil.init, align 64, !tbaa !116
  %i.bac = fmul fast <16 x float> %i.bab, %i.aon  ; 2 uses
  %i.bad = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bac)
  %i.bae = fadd fast <16 x float> %i.bad, %i.bac
  %i.baf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bag = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.baf, <16 x i8> zeroinitializer, i16 -1)
  %i.bah = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bag, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bah, ptr %.421248.i.epil.init, align 16, !tbaa !116
  %i.bai = getelementptr inbounds nuw i8, ptr %.421248.i.epil.init, i64 16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph1249.i.epil.preheader, %.loopexit.i.loopexit220.unr-lcssa, %.lr.ph1255.i.epil.preheader, %.loopexit.i.loopexit219.unr-lcssa, %.lr.ph1261.i, %.lr.ph1274.i.prol.loopexit, %.lr.ph1274.i, %.preheader.i, %.loopexit1068.i
  %.50.i = phi ptr [ %.411277.i, %.loopexit1068.i ], [ %.48.lcssa.i, %.preheader.i ], [ %i.azo, %.lr.ph1274.i ], [ %i.aya, %.lr.ph1261.i ], [ %i.baa, %.lr.ph1255.i.epil.preheader ], [ %.lcssa225.unr, %.lr.ph1274.i.prol.loopexit ], [ %i.axn, %.loopexit.i.loopexit219.unr-lcssa ], [ %i.awr, %.loopexit.i.loopexit220.unr-lcssa ], [ %i.bai, %.lr.ph1249.i.epil.preheader ]
  %indvars.iv.next1394.i = add nuw nsw i64 %indvars.iv1393.i, 1 ; 2 uses
  %exitcond1396.not.i = icmp eq i64 %indvars.iv.next1394.i, %wide.trip.count.i
  br i1 %exitcond1396.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.n, !llvm.loop !1042

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i, %bb.b, %bb.d, %bb.f, %.preheader1071.i
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_AT_x86_int8ERKNS_3MatES2_S2_S2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.051139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !435   ; 2 uses
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !437 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !438 ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !439
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !441
  %i.bm = load float, ptr %i.p, align 4, !tbaa !793
  %i.bn = load float, ptr %i.q, align 4, !tbaa !794
  %i.bo = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bp = sdiv i32 %.051139, %i.bo                ; 2 uses
  %i.bq = srem i32 %.051139, %i.bo                ; 2 uses
  %i.br = mul nsw i32 %i.bp, %i.bh                ; 3 uses
  %i.bs = mul nsw i32 %i.bq, %i.bi                ; 3 uses
  %i.bt = load i32, ptr %5, align 4, !tbaa !45
  %i.bu = sub nsw i32 %i.bt, %i.br
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bu) ; 2 uses
  %i.bv = load i32, ptr %6, align 4, !tbaa !45
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bx = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.by = load i32, ptr %i.r, align 4, !tbaa !88, !noalias !1043 ; 2 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !90, !noalias !1043 ; 2 uses
  %i.ca = load i32, ptr %i.t, align 4, !tbaa !469, !noalias !1043
  %i.cb = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1043
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !1043
  %i.cd = sext i32 %i.bx to i64
  %i.ce = mul i64 %i.cc, %i.cd
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !59, !noalias !1043 ; 4 uses
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.w, align 8, !tbaa !60, !noalias !1043
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !1043
  store ptr %i.ch, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.y, align 8, !tbaa !11
  store i64 %i.cf, ptr %i.z, align 8, !tbaa !59
  store i32 %i.ci, ptr %i.aa, align 8, !tbaa !60
  store ptr %i.cj, ptr %i.ab, align 8, !tbaa !17
  store i32 %i.by, ptr %i.ad, align 4, !tbaa !88
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !90
  store i32 1, ptr %i.af, align 4, !tbaa !469
  store i32 %i.ca, ptr %i.ag, align 8, !tbaa !51
  %i.ck = sext i32 %i.by to i64
  %i.cl = sext i32 %i.bz to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = mul i64 %i.cf, %i.cm
  %i.co = add i64 %i.cn, 15
  %i.cp = and i64 %i.co, -16
  %i.cq = udiv i64 %i.cp, %i.cf
  store i64 %i.cq, ptr %i.ah, align 8, !tbaa !20
  %i.cr = load i32, ptr %i.ai, align 8, !tbaa !87, !noalias !1043 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.ac, align 8, !tbaa !87, !alias.scope !1043
  %i.ct = icmp eq i32 %i.cr, 4
  br i1 %i.ct, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit83

bb.d:                                             ; preds = %.noexc82
  store i64 %i.cm, ptr %i.ah, align 8, !tbaa !20, !alias.scope !1043
  br label %_ZN4ncnn3Mat7channelEi.exit83

_ZN4ncnn3Mat7channelEi.exit83:                    ; preds = %.noexc82, %bb.d
  %i.cu = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.noexc81.lr.ph, label %._crit_edge

.noexc81.lr.ph:                                   ; preds = %_ZN4ncnn3Mat7channelEi.exit83
  %i.cw = sext i32 %i.bp to i64
  %i.cx = sext i32 %i.bq to i64
  br label %.noexc81

.noexc81:                                         ; preds = %.noexc81.lr.ph, %_ZN4ncnn3MatD2Ev.exit52
  %i.cy = phi i32 [ %i.cu, %.noexc81.lr.ph ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit52 ]
  %.0137 = phi i32 [ 0, %.noexc81.lr.ph ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit52 ] ; 4 uses
  %i.cz = sub nsw i32 %i.cy, %.0137
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.da = load i32, ptr %i.aj, align 4, !tbaa !88, !noalias !1046 ; 2 uses
  %i.db = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1046
  %i.dc = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !1046
  %i.dd = mul i64 %i.dc, %i.cw
  %i.de = load i64, ptr %i.al, align 8, !tbaa !59, !noalias !1046 ; 3 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  %i.dh = load i32, ptr %i.am, align 8, !tbaa !60, !noalias !1046
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !17, !noalias !1046
  %i.dj = sext i32 %i.da to i64                   ; 2 uses
  %i.dk = sdiv i32 %.0137, %i.bj
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = mul i64 %i.de, %i.dj
  %i.dn = mul i64 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dn
  store ptr %i.do, ptr %15, align 8, !tbaa !18, !alias.scope !1049
  store ptr null, ptr %i.ao, align 8, !tbaa !11, !alias.scope !1049
  store i64 %i.de, ptr %i.ap, align 8, !tbaa !59, !alias.scope !1049
  store i32 %i.dh, ptr %i.aq, align 8, !tbaa !60, !alias.scope !1049
  store ptr %i.di, ptr %i.ar, align 8, !tbaa !17, !alias.scope !1049
  %i.dp = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.da, i64 1
  store <4 x i32> %i.dp, ptr %i.as, align 8, !tbaa !45, !alias.scope !1049
  store i32 1, ptr %i.at, align 8, !tbaa !51, !alias.scope !1049
  store i64 %i.dj, ptr %i.au, align 8, !tbaa !20, !alias.scope !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.dq = load i32, ptr %i.av, align 4, !tbaa !88, !noalias !1052 ; 2 uses
  %i.dr = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1052
  %i.ds = load i64, ptr %i.aw, align 8, !tbaa !20, !noalias !1052
end_hunk_11
begin_hunk_12_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %niter273.ncmp.1.not = icmp eq i32 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph1433.i, !llvm.loop !1127

bb.w:                                             ; preds = %.split1641.i
  %i.bei = insertelement <8 x float> poison, float %i.bdn, i64 0
  %i.bej = shufflevector <8 x float> %i.bei, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br i1 %i.bcj, label %.lr.ph1439.i.preheader, label %.loopexit.i

.lr.ph1439.i.preheader:                           ; preds = %bb.w
  br i1 %i.bdc, label %.lr.ph1439.i.epil.preheader, label %.lr.ph1439.i

.lr.ph1439.i:                                     ; preds = %.lr.ph1439.i.preheader, %.lr.ph1439.i
  %.441438.i = phi ptr [ %i.bfe, %.lr.ph1439.i ], [ %.411461.i, %.lr.ph1439.i.preheader ] ; 3 uses
  %.28021436.i = phi ptr [ %i.bff, %.lr.ph1439.i ], [ %i.bdk, %.lr.ph1439.i.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph1439.i ], [ 0, %.lr.ph1439.i.preheader ]
  %i.bek = load <8 x float>, ptr %.28021436.i, align 32, !tbaa !116
  %i.bel = fmul fast <8 x float> %i.bek, %i.bej   ; 2 uses
  %i.bem = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bel)
  %i.ben = fadd fast <8 x float> %i.bem, %i.bel
  %i.beo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ben)
  %i.bep = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.beo, <16 x i8> zeroinitializer, i8 -1)
  %i.beq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bep, <16 x i8> splat (i8 -127))
  %i.ber = bitcast <16 x i8> %i.beq to <2 x i64>
  %i.bes = extractelement <2 x i64> %i.ber, i64 0
  store i64 %i.bes, ptr %.441438.i, align 8, !tbaa !975
  %i.bet = getelementptr inbounds nuw i8, ptr %.441438.i, i64 8
  %i.beu = getelementptr inbounds nuw i8, ptr %.28021436.i, i64 %.idx857.i ; 2 uses
  %i.bev = load <8 x float>, ptr %i.beu, align 32, !tbaa !116
  %i.bew = fmul fast <8 x float> %i.bev, %i.bej   ; 2 uses
  %i.bex = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bew)
  %i.bey = fadd fast <8 x float> %i.bex, %i.bew
  %i.bez = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bey)
  %i.bfa = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bez, <16 x i8> zeroinitializer, i8 -1)
  %i.bfb = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bfa, <16 x i8> splat (i8 -127))
  %i.bfc = bitcast <16 x i8> %i.bfb to <2 x i64>
  %i.bfd = extractelement <2 x i64> %i.bfc, i64 0
  store i64 %i.bfd, ptr %i.bet, align 8, !tbaa !975
  %i.bfe = getelementptr inbounds nuw i8, ptr %.441438.i, i64 16 ; 3 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.beu, i64 %.idx857.i ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit211.unr-lcssa, label %.lr.ph1439.i, !llvm.loop !1128

bb.x:                                             ; preds = %.split1641.i
  %i.bfg = insertelement <4 x float> poison, float %i.bdn, i64 0
  %i.bfh = shufflevector <4 x float> %i.bfg, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bck, label %.lr.ph1445.i, label %.loopexit.i

.lr.ph1445.i:                                     ; preds = %bb.x, %.lr.ph1445.i
  %.461444.i = phi ptr [ %i.bft, %.lr.ph1445.i ], [ %.411461.i, %bb.x ] ; 2 uses
  %.07841443.i = phi i32 [ %i.bfv, %.lr.ph1445.i ], [ 0, %bb.x ]
  %.48041442.i = phi ptr [ %i.bfu, %.lr.ph1445.i ], [ %i.bdk, %bb.x ] ; 2 uses
  %i.bfi = load <4 x float>, ptr %.48041442.i, align 16, !tbaa !116
  %i.bfj = fmul fast <4 x float> %i.bfi, %i.bfh   ; 2 uses
  %i.bfk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bfj)
  %i.bfl = fadd fast <4 x float> %i.bfk, %i.bfj
  %i.bfm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bfl) ; 2 uses
  %i.bfn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bfm, <4 x i32> %i.bfm)
  %i.bfo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bfn, <8 x i16> splat (i16 -127))
  %i.bfp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bfo, <8 x i16> splat (i16 127))
  %i.bfq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bfp, <8 x i16> poison)
  %i.bfr = bitcast <16 x i8> %i.bfq to <4 x i32>
  %i.bfs = extractelement <4 x i32> %i.bfr, i64 0
  store i32 %i.bfs, ptr %.461444.i, align 4, !tbaa !45
  %i.bft = getelementptr inbounds nuw i8, ptr %.461444.i, i64 4 ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %.48041442.i, i64 %.idx856.i
  %i.bfv = add nuw nsw i32 %.07841443.i, 4        ; 2 uses
  %i.bfw = or disjoint i32 %i.bfv, 3
  %i.bfx = icmp slt i32 %i.bfw, %5
  br i1 %i.bfx, label %.lr.ph1445.i, label %.loopexit.i, !llvm.loop !1129

bb.y:                                             ; preds = %.split1641.i
  %i.bfy = insertelement <4 x float> poison, float %i.bdn, i64 0
  %i.bfz = shufflevector <4 x float> %i.bfy, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bck, label %.lr.ph1451.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph1451.i, %bb.y
  %.6806.lcssa.i = phi ptr [ %i.bdk, %bb.y ], [ %i.bgv, %.lr.ph1451.i ] ; 3 uses
  %.48.lcssa.i = phi ptr [ %.411461.i, %bb.y ], [ %i.bgu, %.lr.ph1451.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.y ], [ %i.bcp, %.lr.ph1451.i ] ; 4 uses
  %i.bga = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.bga, label %.lr.ph1458.i.preheader, label %.loopexit.i

.lr.ph1458.i.preheader:                           ; preds = %.preheader.i
  %.neg276 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod263.not, label %.lr.ph1458.i.prol.loopexit, label %.lr.ph1458.i.prol

.lr.ph1458.i.prol:                                ; preds = %.lr.ph1458.i.preheader
  %i.bgb = load float, ptr %.6806.lcssa.i, align 4, !tbaa !68
  %i.bgc = fmul fast float %i.bgb, %i.bdn
  %i.bgd = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bgc)
  %i.bge = fptosi float %i.bgd to i32
  %spec.select.i1245.i.prol = tail call i32 @llvm.smax.i32(i32 %i.bge, i32 -127)
  %.0.i1246.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i1245.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i1246.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.48.lcssa.i, align 1, !tbaa !116
  %i.bgf = getelementptr inbounds nuw i8, ptr %.48.lcssa.i, i64 1 ; 2 uses
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %.6806.lcssa.i, i64 %i.n
  %i.bgh = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph1458.i.prol.loopexit

.lr.ph1458.i.prol.loopexit:                       ; preds = %.lr.ph1458.i.prol, %.lr.ph1458.i.preheader
  %.lcssa215.unr = phi ptr [ poison, %.lr.ph1458.i.preheader ], [ %i.bgf, %.lr.ph1458.i.prol ]
  %.11457.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph1458.i.preheader ], [ %i.bgh, %.lr.ph1458.i.prol ]
  %.491456.i.unr = phi ptr [ %.48.lcssa.i, %.lr.ph1458.i.preheader ], [ %i.bgf, %.lr.ph1458.i.prol ]
  %.78071455.i.unr = phi ptr [ %.6806.lcssa.i, %.lr.ph1458.i.preheader ], [ %i.bgg, %.lr.ph1458.i.prol ]
  %i.bgi = icmp eq i32 %5, %.neg276
  br i1 %i.bgi, label %.loopexit.i, label %.lr.ph1458.i

.lr.ph1451.i:                                     ; preds = %bb.y, %.lr.ph1451.i
  %.01450.i = phi i32 [ %i.bgw, %.lr.ph1451.i ], [ 0, %bb.y ]
  %.481449.i = phi ptr [ %i.bgu, %.lr.ph1451.i ], [ %.411461.i, %bb.y ] ; 2 uses
  %.68061448.i = phi ptr [ %i.bgv, %.lr.ph1451.i ], [ %i.bdk, %bb.y ] ; 2 uses
  %i.bgj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.68061448.i, <4 x i32> %i.bco, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bgk = fmul fast <4 x float> %i.bgj, %i.bfz   ; 2 uses
  %i.bgl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bgk)
  %i.bgm = fadd fast <4 x float> %i.bgl, %i.bgk
  %i.bgn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bgm) ; 2 uses
  %i.bgo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bgn, <4 x i32> %i.bgn)
  %i.bgp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bgo, <8 x i16> splat (i16 -127))
  %i.bgq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bgp, <8 x i16> splat (i16 127))
  %i.bgr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bgq, <8 x i16> poison)
  %i.bgs = bitcast <16 x i8> %i.bgr to <4 x i32>
  %i.bgt = extractelement <4 x i32> %i.bgs, i64 0
  store i32 %i.bgt, ptr %.481449.i, align 4, !tbaa !45
  %i.bgu = getelementptr inbounds nuw i8, ptr %.481449.i, i64 4 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %.68061448.i, i64 %.idx856.i ; 2 uses
  %i.bgw = add nuw nsw i32 %.01450.i, 4           ; 2 uses
  %i.bgx = or disjoint i32 %i.bgw, 3
  %i.bgy = icmp slt i32 %i.bgx, %5
  br i1 %i.bgy, label %.lr.ph1451.i, label %.preheader.i, !llvm.loop !1130

.lr.ph1458.i:                                     ; preds = %.lr.ph1458.i.prol.loopexit, %.lr.ph1458.i
  %.11457.i = phi i32 [ %i.bhl, %.lr.ph1458.i ], [ %.11457.i.unr, %.lr.ph1458.i.prol.loopexit ]
  %.491456.i = phi ptr [ %i.bhj, %.lr.ph1458.i ], [ %.491456.i.unr, %.lr.ph1458.i.prol.loopexit ] ; 3 uses
  %.78071455.i = phi ptr [ %i.bhk, %.lr.ph1458.i ], [ %.78071455.i.unr, %.lr.ph1458.i.prol.loopexit ] ; 2 uses
  %i.bgz = load float, ptr %.78071455.i, align 4, !tbaa !68
  %i.bha = fmul fast float %i.bgz, %i.bdn
  %i.bhb = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bha)
  %i.bhc = fptosi float %i.bhb to i32
  %spec.select.i1245.i = tail call i32 @llvm.smax.i32(i32 %i.bhc, i32 -127)
  %.0.i1246.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i1245.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i1246.i to i8
  store i8 %.0.i.i, ptr %.491456.i, align 1, !tbaa !116
  %i.bhd = getelementptr inbounds nuw i8, ptr %.491456.i, i64 1
  %i.bhe = getelementptr inbounds nuw [4 x i8], ptr %.78071455.i, i64 %i.n ; 2 uses
  %i.bhf = load float, ptr %i.bhe, align 4, !tbaa !68
  %i.bhg = fmul fast float %i.bhf, %i.bdn
  %i.bhh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bhg)
  %i.bhi = fptosi float %i.bhh to i32
  %spec.select.i1245.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bhi, i32 -127)
  %.0.i1246.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i1245.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i1246.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.bhd, align 1, !tbaa !116
  %i.bhj = getelementptr inbounds nuw i8, ptr %.491456.i, i64 2 ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bhe, i64 %i.n
  %i.bhl = add nuw nsw i32 %.11457.i, 2           ; 2 uses
  %exitcond1540.not.i.1 = icmp eq i32 %i.bhl, %5
  br i1 %exitcond1540.not.i.1, label %.loopexit.i, label %.lr.ph1458.i, !llvm.loop !1131

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph1433.i
  br i1 %lcmp.mod269.not.not, label %.lr.ph1433.i.epil.preheader, label %.loopexit.i

.lr.ph1433.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph1433.i.preheader
  %.421432.i.epil.init = phi ptr [ %.411461.i, %.lr.ph1433.i.preheader ], [ %i.beg, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.08001430.i.epil.init = phi ptr [ %i.bdk, %.lr.ph1433.i.preheader ], [ %i.beh, %.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod271)
  %i.bhm = load <16 x float>, ptr %.08001430.i.epil.init, align 64, !tbaa !116
  %i.bhn = fmul fast <16 x float> %i.bhm, %i.bdp  ; 2 uses
  %i.bho = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bhn)
  %i.bhp = fadd fast <16 x float> %i.bho, %i.bhn
  %i.bhq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bhp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bhr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bhq, <16 x i8> zeroinitializer, i16 -1)
  %i.bhs = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bhr, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.bhs, ptr %.421432.i.epil.init, align 1, !tbaa !116
  %i.bht = getelementptr inbounds nuw i8, ptr %.421432.i.epil.init, i64 16
  br label %.loopexit.i

.loopexit.i.loopexit211.unr-lcssa:                ; preds = %.lr.ph1439.i
  br i1 %lcmp.mod265.not.not, label %.lr.ph1439.i.epil.preheader, label %.loopexit.i

.lr.ph1439.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit211.unr-lcssa, %.lr.ph1439.i.preheader
  %.441438.i.epil.init = phi ptr [ %.411461.i, %.lr.ph1439.i.preheader ], [ %i.bfe, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.28021436.i.epil.init = phi ptr [ %i.bdk, %.lr.ph1439.i.preheader ], [ %i.bff, %.loopexit.i.loopexit211.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod267)
  %i.bhu = load <8 x float>, ptr %.28021436.i.epil.init, align 32, !tbaa !116
  %i.bhv = fmul fast <8 x float> %i.bhu, %i.bej   ; 2 uses
  %i.bhw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bhv)
  %i.bhx = fadd fast <8 x float> %i.bhw, %i.bhv
  %i.bhy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bhx)
  %i.bhz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bhy, <16 x i8> zeroinitializer, i8 -1)
  %i.bia = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bhz, <16 x i8> splat (i8 -127))
  %i.bib = bitcast <16 x i8> %i.bia to <2 x i64>
  %i.bic = extractelement <2 x i64> %i.bib, i64 0
  store i64 %i.bic, ptr %.441438.i.epil.init, align 8, !tbaa !975
  %i.bid = getelementptr inbounds nuw i8, ptr %.441438.i.epil.init, i64 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph1458.i.prol.loopexit, %.lr.ph1458.i, %.lr.ph1445.i, %.lr.ph1439.i.epil.preheader, %.loopexit.i.loopexit211.unr-lcssa, %.lr.ph1433.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader.i, %bb.x, %bb.w, %bb.v, %.split1641.i
  %.50.i = phi ptr [ %.411461.i, %.split1641.i ], [ %.48.lcssa.i, %.preheader.i ], [ %i.bft, %.lr.ph1445.i ], [ %i.bht, %.lr.ph1433.i.epil.preheader ], [ %.411461.i, %bb.x ], [ %i.bid, %.lr.ph1439.i.epil.preheader ], [ %.411461.i, %bb.w ], [ %.411461.i, %bb.v ], [ %i.beg, %.loopexit.i.loopexit.unr-lcssa ], [ %i.bfe, %.loopexit.i.loopexit211.unr-lcssa ], [ %.lcssa215.unr, %.lr.ph1458.i.prol.loopexit ], [ %i.bhj, %.lr.ph1458.i ]
  %indvars.iv.next1542.i = add nuw nsw i64 %indvars.iv1541.i, 1 ; 2 uses
  %exitcond1544.not.i = icmp eq i64 %indvars.iv.next1542.i, %wide.trip.count.i
  br i1 %exitcond1544.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %.split1641.i, !llvm.loop !1132

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %.lr.ph1462.i, %bb.b, %bb.d, %bb.f, %.preheader1254.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn35pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not489.i = icmp eq i32 %i.b, 0
  br i1 %.not489.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not490.i = icmp eq i32 %i.c, 0
  br i1 %.not490.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  %i.m = sext i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.i ] ; 19 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !18     ; 3 uses
  %i.p = icmp sgt i32 %3, 15
  br i1 %i.p, label %.lr.ph680.i, label %.preheader616.i

.lr.ph680.i:                                      ; preds = %bb.j
  %i.q = mul nsw i32 %i.e, %4
  %i.r = sext i32 %i.q to i64
  %i.s = sext i32 %2 to i64                       ; 2 uses
  %i.t = icmp sgt i32 %5, 1                       ; 4 uses
  %.idx499.i = shl i64 %i.n, 5                    ; 6 uses
  %.idx495.i = shl i64 %i.n, 4                    ; 2 uses
  %.idx497.i = mul i64 %i.n, 48                   ; 2 uses
  %i.u = trunc i64 %i.n to i32
  %i.v = insertelement <16 x i32> poison, i32 %i.u, i64 0
  %i.w = shufflevector <16 x i32> %i.v, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.x = mul <16 x i32> %i.w, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.y = and i32 %5, -2                           ; 4 uses
  %i.z = zext nneg i32 %3 to i64                  ; 2 uses
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  br i1 %i.ab, label %.split.i.us.preheader, label %.loopexit618.i.preheader

.split.i.us.preheader:                            ; preds = %.lr.ph680.i
  %xtraiter = and i32 %5, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %xtraiter312 = and i32 %5, 1
  %lcmp.mod313.not = icmp eq i32 %xtraiter312, 0
  %xtraiter314 = and i32 %5, 1
  %lcmp.mod315.not = icmp eq i32 %xtraiter314, 0
  br label %.split.i.us

.loopexit618.i.preheader:                         ; preds = %.lr.ph680.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 31)
  %i.ad = and i64 %umax, 2147483632
  br label %.preheader616.loopexit.i

.split.i.us:                                      ; preds = %.split.i.us.preheader, %.loopexit618.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit618.i.us ], [ 0, %.split.i.us.preheader ] ; 3 uses
  %.0434679.i.us = phi ptr [ %.12.i.us, %.loopexit618.i.us ], [ %i.o, %.split.i.us.preheader ] ; 9 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !18
  %i.af = add nsw i64 %indvars.iv.i.us, %i.s
  %i.ag = mul i64 %i.af, %i.n
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.r ; 8 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !18
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.s
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.us
  %i.am = load <16 x float>, ptr %i.al, align 64, !tbaa !116 ; 18 uses
  switch i32 %i.ac, label %.loopexit618.i.us [
    i32 4, label %.preheader628.i.us
    i32 3, label %.preheader625.i.us
    i32 2, label %.preheader622.i.us
    i32 0, label %.preheader619.i.us
  ]

.preheader619.i.us:                               ; preds = %.split.i.us
  br i1 %i.t, label %.lr.ph669.i.us, label %.preheader617.i.us

.lr.ph669.i.us:                                   ; preds = %.preheader619.i.us, %.lr.ph669.i.us
  %.10668.i.us = phi ptr [ %i.bf, %.lr.ph669.i.us ], [ %.0434679.i.us, %.preheader619.i.us ] ; 3 uses
  %.9450667.i.us = phi ptr [ %i.bg, %.lr.ph669.i.us ], [ %i.ai, %.preheader619.i.us ] ; 3 uses
  %.0464666.i.us = phi i32 [ %i.bh, %.lr.ph669.i.us ], [ 0, %.preheader619.i.us ]
  %i.an = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.9450667.i.us, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 4)
  %i.ao = getelementptr inbounds nuw i8, ptr %.9450667.i.us, i64 4
  %i.ap = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ao, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 4)
  %i.aq = fmul fast <16 x float> %i.an, %i.am     ; 2 uses
  %i.ar = fmul fast <16 x float> %i.ap, %i.am     ; 2 uses
  %i.as = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aq)
  %i.at = fadd fast <16 x float> %i.as, %i.aq
  %i.au = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.at, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.av = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.au, <16 x i8> zeroinitializer, i16 -1)
  %i.aw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.av, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.ax = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ar)
  %i.ay = fadd fast <16 x float> %i.ax, %i.ar
  %i.az = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ay, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ba = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.az, <16 x i8> zeroinitializer, i16 -1)
  %i.bb = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ba, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.aw, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bd = shufflevector <16 x i8> %i.aw, <16 x i8> %i.bb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bc, ptr %.10668.i.us, align 16, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %.10668.i.us, i64 16
  store <16 x i8> %i.bd, ptr %i.be, align 16, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %.10668.i.us, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.9450667.i.us, i64 8 ; 2 uses
  %i.bh = add nuw nsw i32 %.0464666.i.us, 2       ; 2 uses
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = icmp slt i32 %i.bi, %5
  br i1 %i.bj, label %.lr.ph669.i.us, label %.preheader617.i.us, !llvm.loop !1133

.preheader617.i.us:                               ; preds = %.lr.ph669.i.us, %.preheader619.i.us
  %.0464.lcssa.i.us = phi i32 [ 0, %.preheader619.i.us ], [ %i.y, %.lr.ph669.i.us ] ; 4 uses
  %.9450.lcssa.i.us = phi ptr [ %i.ai, %.preheader619.i.us ], [ %i.bg, %.lr.ph669.i.us ] ; 3 uses
  %.10.lcssa.i.us = phi ptr [ %.0434679.i.us, %.preheader619.i.us ], [ %i.bf, %.lr.ph669.i.us ] ; 4 uses
  %i.bk = icmp slt i32 %.0464.lcssa.i.us, %5
  br i1 %i.bk, label %.lr.ph676.i.us.preheader, label %.loopexit618.i.us

.lr.ph676.i.us.preheader:                         ; preds = %.preheader617.i.us
  %.neg = or disjoint i32 %.0464.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph676.i.us.prol.loopexit, label %.lr.ph676.i.us.prol

.lr.ph676.i.us.prol:                              ; preds = %.lr.ph676.i.us.preheader
  %i.bl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.9450.lcssa.i.us, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fmul fast <16 x float> %i.bl, %i.am     ; 2 uses
  %i.bn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bm)
  %i.bo = fadd fast <16 x float> %i.bn, %i.bm
  %i.bp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bp, <16 x i8> zeroinitializer, i16 -1)
  %i.br = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bq, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.br, ptr %.10.lcssa.i.us, align 16, !tbaa !116
  %i.bs = getelementptr inbounds nuw i8, ptr %.10.lcssa.i.us, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.9450.lcssa.i.us, i64 4
  %i.bu = or disjoint i32 %.0464.lcssa.i.us, 1
  br label %.lr.ph676.i.us.prol.loopexit

.lr.ph676.i.us.prol.loopexit:                     ; preds = %.lr.ph676.i.us.prol, %.lr.ph676.i.us.preheader
  %.lcssa302.unr = phi ptr [ poison, %.lr.ph676.i.us.preheader ], [ %i.bs, %.lr.ph676.i.us.prol ]
  %.11675.i.us.unr = phi ptr [ %.10.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.bs, %.lr.ph676.i.us.prol ]
  %.10451674.i.us.unr = phi ptr [ %.9450.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.bt, %.lr.ph676.i.us.prol ]
  %.1465673.i.us.unr = phi i32 [ %.0464.lcssa.i.us, %.lr.ph676.i.us.preheader ], [ %i.bu, %.lr.ph676.i.us.prol ]
  %i.bv = icmp eq i32 %5, %.neg
  br i1 %i.bv, label %.loopexit618.i.us, label %.lr.ph676.i.us

.lr.ph676.i.us:                                   ; preds = %.lr.ph676.i.us.prol.loopexit, %.lr.ph676.i.us
  %.11675.i.us = phi ptr [ %i.cm, %.lr.ph676.i.us ], [ %.11675.i.us.unr, %.lr.ph676.i.us.prol.loopexit ] ; 3 uses
  %.10451674.i.us = phi ptr [ %i.cn, %.lr.ph676.i.us ], [ %.10451674.i.us.unr, %.lr.ph676.i.us.prol.loopexit ] ; 3 uses
  %.1465673.i.us = phi i32 [ %i.co, %.lr.ph676.i.us ], [ %.1465673.i.us.unr, %.lr.ph676.i.us.prol.loopexit ]
  %i.bw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.10451674.i.us, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 4)
  %i.bx = fmul fast <16 x float> %i.bw, %i.am     ; 2 uses
  %i.by = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bx)
  %i.bz = fadd fast <16 x float> %i.by, %i.bx
  %i.ca = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ca, <16 x i8> zeroinitializer, i16 -1)
  %i.cc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cb, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.cc, ptr %.11675.i.us, align 16, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %.11675.i.us, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.10451674.i.us, i64 4
  %i.cf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ce, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 4)
  %i.cg = fmul fast <16 x float> %i.cf, %i.am     ; 2 uses
  %i.ch = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cg)
  %i.ci = fadd fast <16 x float> %i.ch, %i.cg
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ci, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ck = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cj, <16 x i8> zeroinitializer, i16 -1)
end_hunk_12
begin_hunk_13_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.aeh = add i32 %5, %i.aeg
  %i.aei = zext i32 %i.aeh to i64                 ; 2 uses
  %scevgep225 = getelementptr i8, ptr %scevgep224, i64 %i.aei
  %scevgep226 = getelementptr i8, ptr %.0432.lcssa.i, i64 4
  %i.aej = shl nuw nsw i64 %i.aei, 2
  %scevgep227 = getelementptr i8, ptr %scevgep226, i64 %i.aej
  %bound0228 = icmp ult ptr %.35.lcssa.i, %scevgep227
  %bound1229 = icmp ult ptr %.0432.lcssa.i, %scevgep225
  %found.conflict230 = and i1 %bound0228, %bound1229
  br i1 %found.conflict230, label %.lr.ph791.i.preheader, label %vector.main.loop.iter.check232

vector.main.loop.iter.check232:                   ; preds = %vector.memcheck223
  %min.iters.check233 = icmp ult i32 %i.aed, 63
  br i1 %min.iters.check233, label %vec.epilog.ph256, label %vector.ph234

vector.ph234:                                     ; preds = %vector.main.loop.iter.check232
  %i.aek = and i64 %i.aef, 56
  %n.vec235 = and i64 %i.aef, 8589934528          ; 6 uses
  %i.ael = trunc i64 %n.vec235 to i32
  %i.aem = add i32 %.0.lcssa.i, %i.ael
  %i.aen = shl nuw nsw i64 %n.vec235, 2
  %i.aeo = getelementptr i8, ptr %.0432.lcssa.i, i64 %i.aen
  %i.aep = getelementptr i8, ptr %.35.lcssa.i, i64 %n.vec235 ; 2 uses
  %broadcast.splatinsert236 = insertelement <16 x float> poison, float %i.ady, i64 0
  %broadcast.splat237 = shufflevector <16 x float> %broadcast.splatinsert236, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph234
  %index239 = phi i64 [ 0, %vector.ph234 ], [ %index.next246, %vector.body238 ] ; 3 uses
  %i.aeq = shl i64 %index239, 2
  %next.gep240 = getelementptr i8, ptr %.0432.lcssa.i, i64 %i.aeq ; 4 uses
  %next.gep241 = getelementptr i8, ptr %.35.lcssa.i, i64 %index239 ; 4 uses
  %i.aer = getelementptr i8, ptr %next.gep240, i64 64
  %i.aes = getelementptr i8, ptr %next.gep240, i64 128
  %i.aet = getelementptr i8, ptr %next.gep240, i64 192
  %wide.load242 = load <16 x float>, ptr %next.gep240, align 4, !tbaa !68, !alias.scope !1168
  %wide.load243 = load <16 x float>, ptr %i.aer, align 4, !tbaa !68, !alias.scope !1168
  %wide.load244 = load <16 x float>, ptr %i.aes, align 4, !tbaa !68, !alias.scope !1168
  %wide.load245 = load <16 x float>, ptr %i.aet, align 4, !tbaa !68, !alias.scope !1168
  %i.aeu = fmul fast <16 x float> %wide.load242, %broadcast.splat237
  %i.aev = fmul fast <16 x float> %wide.load243, %broadcast.splat237
  %i.aew = fmul fast <16 x float> %wide.load244, %broadcast.splat237
  %i.aex = fmul fast <16 x float> %wide.load245, %broadcast.splat237
  %i.aey = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.aeu)
  %i.aez = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.aev)
  %i.afa = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.aew)
  %i.afb = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.aex)
  %i.afc = fptosi <16 x float> %i.aey to <16 x i32>
  %i.afd = fptosi <16 x float> %i.aez to <16 x i32>
  %i.afe = fptosi <16 x float> %i.afa to <16 x i32>
  %i.aff = fptosi <16 x float> %i.afb to <16 x i32>
  %i.afg = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.afc, <16 x i32> splat (i32 -127))
  %i.afh = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.afd, <16 x i32> splat (i32 -127))
  %i.afi = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.afe, <16 x i32> splat (i32 -127))
  %i.afj = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aff, <16 x i32> splat (i32 -127))
  %i.afk = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.afg, <16 x i32> splat (i32 127))
  %i.afl = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.afh, <16 x i32> splat (i32 127))
  %i.afm = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.afi, <16 x i32> splat (i32 127))
  %i.afn = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.afj, <16 x i32> splat (i32 127))
  %i.afo = trunc nsw <16 x i32> %i.afk to <16 x i8>
  %i.afp = trunc nsw <16 x i32> %i.afl to <16 x i8>
  %i.afq = trunc nsw <16 x i32> %i.afm to <16 x i8>
  %i.afr = trunc nsw <16 x i32> %i.afn to <16 x i8>
  %i.afs = getelementptr i8, ptr %next.gep241, i64 16
  %i.aft = getelementptr i8, ptr %next.gep241, i64 32
  %i.afu = getelementptr i8, ptr %next.gep241, i64 48
  store <16 x i8> %i.afo, ptr %next.gep241, align 1, !tbaa !116, !alias.scope !1171, !noalias !1168
  store <16 x i8> %i.afp, ptr %i.afs, align 1, !tbaa !116, !alias.scope !1171, !noalias !1168
  store <16 x i8> %i.afq, ptr %i.aft, align 1, !tbaa !116, !alias.scope !1171, !noalias !1168
  store <16 x i8> %i.afr, ptr %i.afu, align 1, !tbaa !116, !alias.scope !1171, !noalias !1168
  %index.next246 = add nuw i64 %index239, 64      ; 2 uses
  %i.afv = icmp eq i64 %index.next246, %n.vec235
  br i1 %i.afv, label %middle.block247, label %vector.body238, !llvm.loop !1173

middle.block247:                                  ; preds = %vector.body238
  %cmp.n248 = icmp eq i64 %i.aef, %n.vec235
  br i1 %cmp.n248, label %._crit_edge792.i, label %vec.epilog.iter.check254

vec.epilog.iter.check254:                         ; preds = %middle.block247
  %min.epilog.iters.check255 = icmp eq i64 %i.aek, 0
  br i1 %min.epilog.iters.check255, label %.lr.ph791.i.preheader, label %vec.epilog.ph256, !prof !78

vec.epilog.ph256:                                 ; preds = %vector.main.loop.iter.check232, %vec.epilog.iter.check254
  %vec.epilog.resume.val249 = phi i64 [ %n.vec235, %vec.epilog.iter.check254 ], [ 0, %vector.main.loop.iter.check232 ]
  %n.vec257 = and i64 %i.aef, 8589934584          ; 5 uses
  %i.afw = trunc i64 %n.vec257 to i32
  %i.afx = add i32 %.0.lcssa.i, %i.afw
  %i.afy = shl nuw nsw i64 %n.vec257, 2
  %i.afz = getelementptr i8, ptr %.0432.lcssa.i, i64 %i.afy
  %i.aga = getelementptr i8, ptr %.35.lcssa.i, i64 %n.vec257 ; 2 uses
  %broadcast.splatinsert258 = insertelement <8 x float> poison, float %i.ady, i64 0
  %broadcast.splat259 = shufflevector <8 x float> %broadcast.splatinsert258, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body260

vec.epilog.vector.body260:                        ; preds = %vec.epilog.vector.body260, %vec.epilog.ph256
  %index261 = phi i64 [ %vec.epilog.resume.val249, %vec.epilog.ph256 ], [ %index.next265, %vec.epilog.vector.body260 ] ; 3 uses
  %i.agb = shl i64 %index261, 2
  %next.gep262 = getelementptr i8, ptr %.0432.lcssa.i, i64 %i.agb
  %next.gep263 = getelementptr i8, ptr %.35.lcssa.i, i64 %index261
  %wide.load264 = load <8 x float>, ptr %next.gep262, align 4, !tbaa !68, !alias.scope !1168
  %i.agc = fmul fast <8 x float> %wide.load264, %broadcast.splat259
  %i.agd = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.agc)
  %i.age = fptosi <8 x float> %i.agd to <8 x i32>
  %i.agf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.age, <8 x i32> splat (i32 -127))
  %i.agg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.agf, <8 x i32> splat (i32 127))
  %i.agh = trunc nsw <8 x i32> %i.agg to <8 x i8>
  store <8 x i8> %i.agh, ptr %next.gep263, align 1, !tbaa !116, !alias.scope !1171, !noalias !1168
  %index.next265 = add nuw i64 %index261, 8       ; 2 uses
  %i.agi = icmp eq i64 %index.next265, %n.vec257
  br i1 %i.agi, label %vec.epilog.middle.block266, label %vec.epilog.vector.body260, !llvm.loop !1174

vec.epilog.middle.block266:                       ; preds = %vec.epilog.vector.body260
  %cmp.n267 = icmp eq i64 %i.aef, %n.vec257
  br i1 %cmp.n267, label %._crit_edge792.i, label %.lr.ph791.i.preheader

.lr.ph791.i.preheader:                            ; preds = %vector.memcheck223, %iter.check252, %vec.epilog.iter.check254, %vec.epilog.middle.block266
  %.1790.i.ph = phi i32 [ %.0.lcssa.i, %iter.check252 ], [ %.0.lcssa.i, %vector.memcheck223 ], [ %i.aem, %vec.epilog.iter.check254 ], [ %i.afx, %vec.epilog.middle.block266 ] ; 4 uses
  %.1433789.i.ph = phi ptr [ %.0432.lcssa.i, %iter.check252 ], [ %.0432.lcssa.i, %vector.memcheck223 ], [ %i.aeo, %vec.epilog.iter.check254 ], [ %i.afz, %vec.epilog.middle.block266 ] ; 3 uses
  %.36788.i.ph = phi ptr [ %.35.lcssa.i, %iter.check252 ], [ %.35.lcssa.i, %vector.memcheck223 ], [ %i.aep, %vec.epilog.iter.check254 ], [ %i.aga, %vec.epilog.middle.block266 ] ; 3 uses
  %i.agj = sub i32 %5, %.1790.i.ph
  %.neg335 = add i32 %.1790.i.ph, 1
  %xtraiter326 = and i32 %i.agj, 1
  %lcmp.mod327.not = icmp eq i32 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %.lr.ph791.i.prol.loopexit, label %.lr.ph791.i.prol

.lr.ph791.i.prol:                                 ; preds = %.lr.ph791.i.preheader
  %i.agk = load float, ptr %.1433789.i.ph, align 4, !tbaa !68
  %i.agl = fmul fast float %i.agk, %i.ady
  %i.agm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agl)
  %i.agn = fptosi float %i.agm to i32
  %spec.select.i590.i.prol = tail call i32 @llvm.smax.i32(i32 %i.agn, i32 -127)
  %.0.i591.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i590.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i591.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.36788.i.ph, align 1, !tbaa !116
  %i.ago = getelementptr inbounds nuw i8, ptr %.36788.i.ph, i64 1 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.1433789.i.ph, i64 4
  %i.agq = add nuw nsw i32 %.1790.i.ph, 1
  br label %.lr.ph791.i.prol.loopexit

.lr.ph791.i.prol.loopexit:                        ; preds = %.lr.ph791.i.prol, %.lr.ph791.i.preheader
  %.lcssa272.unr = phi ptr [ poison, %.lr.ph791.i.preheader ], [ %i.ago, %.lr.ph791.i.prol ]
  %.1790.i.unr = phi i32 [ %.1790.i.ph, %.lr.ph791.i.preheader ], [ %i.agq, %.lr.ph791.i.prol ]
  %.1433789.i.unr = phi ptr [ %.1433789.i.ph, %.lr.ph791.i.preheader ], [ %i.agp, %.lr.ph791.i.prol ]
  %.36788.i.unr = phi ptr [ %.36788.i.ph, %.lr.ph791.i.preheader ], [ %i.ago, %.lr.ph791.i.prol ]
  %i.agr = icmp eq i32 %5, %.neg335
  br i1 %i.agr, label %._crit_edge792.i, label %.lr.ph791.i

.lr.ph784.i:                                      ; preds = %bb.m, %.lr.ph784.i
  %.0782.i = phi i32 [ %i.ahf, %.lr.ph784.i ], [ 0, %bb.m ]
  %.0432781.i = phi ptr [ %i.ahe, %.lr.ph784.i ], [ %i.adv, %bb.m ] ; 2 uses
  %.35780.i = phi ptr [ %i.ahd, %.lr.ph784.i ], [ %.34795.i, %bb.m ] ; 2 uses
  %i.ags = load <4 x float>, ptr %.0432781.i, align 1, !tbaa !116
  %i.agt = fmul fast <4 x float> %i.ags, %i.aea   ; 2 uses
  %i.agu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.agt)
  %i.agv = fadd fast <4 x float> %i.agu, %i.agt
  %i.agw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agv) ; 2 uses
  %i.agx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.agw, <4 x i32> %i.agw)
  %i.agy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.agx, <8 x i16> splat (i16 -127))
  %i.agz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.agy, <8 x i16> splat (i16 127))
  %i.aha = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.agz, <8 x i16> poison)
  %i.ahb = bitcast <16 x i8> %i.aha to <4 x i32>
  %i.ahc = extractelement <4 x i32> %i.ahb, i64 0
  store i32 %i.ahc, ptr %.35780.i, align 4, !tbaa !45
  %i.ahd = getelementptr inbounds nuw i8, ptr %.35780.i, i64 4 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0432781.i, i64 16 ; 2 uses
  %i.ahf = add nuw nsw i32 %.0782.i, 4            ; 2 uses
  %i.ahg = or disjoint i32 %i.ahf, 3
  %i.ahh = icmp slt i32 %i.ahg, %5
  br i1 %i.ahh, label %.lr.ph784.i, label %.preheader.i, !llvm.loop !1175

.lr.ph791.i:                                      ; preds = %.lr.ph791.i.prol.loopexit, %.lr.ph791.i
  %.1790.i = phi i32 [ %i.ahu, %.lr.ph791.i ], [ %.1790.i.unr, %.lr.ph791.i.prol.loopexit ]
  %.1433789.i = phi ptr [ %i.aht, %.lr.ph791.i ], [ %.1433789.i.unr, %.lr.ph791.i.prol.loopexit ] ; 3 uses
  %.36788.i = phi ptr [ %i.ahs, %.lr.ph791.i ], [ %.36788.i.unr, %.lr.ph791.i.prol.loopexit ] ; 3 uses
  %i.ahi = load float, ptr %.1433789.i, align 4, !tbaa !68
  %i.ahj = fmul fast float %i.ahi, %i.ady
  %i.ahk = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ahj)
  %i.ahl = fptosi float %i.ahk to i32
  %spec.select.i590.i = tail call i32 @llvm.smax.i32(i32 %i.ahl, i32 -127)
  %.0.i591.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i590.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i591.i to i8
  store i8 %.0.i.i, ptr %.36788.i, align 1, !tbaa !116
  %i.ahm = getelementptr inbounds nuw i8, ptr %.36788.i, i64 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %.1433789.i, i64 4
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !68
  %i.ahp = fmul fast float %i.aho, %i.ady
  %i.ahq = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ahp)
  %i.ahr = fptosi float %i.ahq to i32
  %spec.select.i590.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ahr, i32 -127)
  %.0.i591.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i590.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i591.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.ahm, align 1, !tbaa !116
  %i.ahs = getelementptr inbounds nuw i8, ptr %.36788.i, i64 2 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.1433789.i, i64 8
  %i.ahu = add nuw nsw i32 %.1790.i, 2            ; 2 uses
  %exitcond872.not.i.1 = icmp eq i32 %i.ahu, %5
  br i1 %exitcond872.not.i.1, label %._crit_edge792.i, label %.lr.ph791.i, !llvm.loop !1176

._crit_edge792.i:                                 ; preds = %.lr.ph791.i.prol.loopexit, %.lr.ph791.i, %middle.block247, %vec.epilog.middle.block266, %.preheader.i
  %.36.lcssa.i = phi ptr [ %.35.lcssa.i, %.preheader.i ], [ %i.aga, %vec.epilog.middle.block266 ], [ %i.aep, %middle.block247 ], [ %.lcssa272.unr, %.lr.ph791.i.prol.loopexit ], [ %i.ahs, %.lr.ph791.i ]
  %indvars.iv.next874.i = add nuw nsw i64 %indvars.iv873.i, 1 ; 2 uses
  %exitcond876.not.i = icmp eq i64 %indvars.iv.next874.i, %wide.trip.count.i
  br i1 %exitcond876.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.m, !llvm.loop !1177

_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %._crit_edge792.i, %bb.b, %bb.d, %bb.f, %.preheader596.i
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.051139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !435   ; 2 uses
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !437 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !438 ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !439
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !441
  %i.bm = load float, ptr %i.p, align 4, !tbaa !793
  %i.bn = load float, ptr %i.q, align 4, !tbaa !794
  %i.bo = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bp = sdiv i32 %.051139, %i.bo                ; 2 uses
  %i.bq = srem i32 %.051139, %i.bo                ; 2 uses
  %i.br = mul nsw i32 %i.bp, %i.bh                ; 3 uses
  %i.bs = mul nsw i32 %i.bq, %i.bi                ; 3 uses
  %i.bt = load i32, ptr %5, align 4, !tbaa !45
  %i.bu = sub nsw i32 %i.bt, %i.br
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bu) ; 2 uses
  %i.bv = load i32, ptr %6, align 4, !tbaa !45
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bx = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.by = load i32, ptr %i.r, align 4, !tbaa !88, !noalias !1178 ; 2 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !90, !noalias !1178 ; 2 uses
  %i.ca = load i32, ptr %i.t, align 4, !tbaa !469, !noalias !1178
  %i.cb = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1178
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !1178
  %i.cd = sext i32 %i.bx to i64
  %i.ce = mul i64 %i.cc, %i.cd
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !59, !noalias !1178 ; 4 uses
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.w, align 8, !tbaa !60, !noalias !1178
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !1178
  store ptr %i.ch, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.y, align 8, !tbaa !11
  store i64 %i.cf, ptr %i.z, align 8, !tbaa !59
  store i32 %i.ci, ptr %i.aa, align 8, !tbaa !60
  store ptr %i.cj, ptr %i.ab, align 8, !tbaa !17
  store i32 %i.by, ptr %i.ad, align 4, !tbaa !88
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !90
  store i32 1, ptr %i.af, align 4, !tbaa !469
  store i32 %i.ca, ptr %i.ag, align 8, !tbaa !51
  %i.ck = sext i32 %i.by to i64
  %i.cl = sext i32 %i.bz to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = mul i64 %i.cf, %i.cm
  %i.co = add i64 %i.cn, 15
  %i.cp = and i64 %i.co, -16
  %i.cq = udiv i64 %i.cp, %i.cf
  store i64 %i.cq, ptr %i.ah, align 8, !tbaa !20
  %i.cr = load i32, ptr %i.ai, align 8, !tbaa !87, !noalias !1178 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.ac, align 8, !tbaa !87, !alias.scope !1178
  %i.ct = icmp eq i32 %i.cr, 4
  br i1 %i.ct, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit83

bb.d:                                             ; preds = %.noexc82
  store i64 %i.cm, ptr %i.ah, align 8, !tbaa !20, !alias.scope !1178
  br label %_ZN4ncnn3Mat7channelEi.exit83

_ZN4ncnn3Mat7channelEi.exit83:                    ; preds = %.noexc82, %bb.d
  %i.cu = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.noexc81.lr.ph, label %._crit_edge

.noexc81.lr.ph:                                   ; preds = %_ZN4ncnn3Mat7channelEi.exit83
  %i.cw = sext i32 %i.bp to i64
  %i.cx = sext i32 %i.bq to i64
  br label %.noexc81

.noexc81:                                         ; preds = %.noexc81.lr.ph, %_ZN4ncnn3MatD2Ev.exit52
  %i.cy = phi i32 [ %i.cu, %.noexc81.lr.ph ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit52 ]
  %.0137 = phi i32 [ 0, %.noexc81.lr.ph ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit52 ] ; 4 uses
  %i.cz = sub nsw i32 %i.cy, %.0137
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.da = load i32, ptr %i.aj, align 4, !tbaa !88, !noalias !1181 ; 2 uses
  %i.db = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1181
  %i.dc = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !1181
  %i.dd = mul i64 %i.dc, %i.cw
  %i.de = load i64, ptr %i.al, align 8, !tbaa !59, !noalias !1181 ; 3 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  %i.dh = load i32, ptr %i.am, align 8, !tbaa !60, !noalias !1181
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !17, !noalias !1181
  %i.dj = sext i32 %i.da to i64                   ; 2 uses
  %i.dk = sdiv i32 %.0137, %i.bj
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = mul i64 %i.de, %i.dj
  %i.dn = mul i64 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dn
  store ptr %i.do, ptr %15, align 8, !tbaa !18
  store ptr null, ptr %i.ao, align 8, !tbaa !11
  store i64 %i.de, ptr %i.ap, align 8, !tbaa !59
  store i32 %i.dh, ptr %i.aq, align 8, !tbaa !60
  store ptr %i.di, ptr %i.ar, align 8, !tbaa !17
  %i.dp = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.da, i64 1
  store <4 x i32> %i.dp, ptr %i.as, align 8, !tbaa !45
  store i32 1, ptr %i.at, align 8, !tbaa !51
  store i64 %i.dj, ptr %i.au, align 8, !tbaa !20, !alias.scope !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.dq = load i32, ptr %i.av, align 4, !tbaa !88, !noalias !1187 ; 2 uses
  %i.dr = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1187
  %i.ds = load i64, ptr %i.aw, align 8, !tbaa !20, !noalias !1187
end_hunk_13
begin_hunk_14_@_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.re, label %.loopexit697, label %.lr.ph834.preheader

.lr.ph834.preheader:                              ; preds = %.loopexit699
  br i1 %i.rg, label %.lr.ph834.epil.preheader, label %.lr.ph834

.lr.ph834:                                        ; preds = %.lr.ph834.preheader, %.lr.ph834
  %.34832 = phi ptr [ %i.zf, %.lr.ph834 ], [ %.27837, %.lr.ph834.preheader ] ; 9 uses
  %.6557831 = phi ptr [ %i.zg, %.lr.ph834 ], [ %i.wl, %.lr.ph834.preheader ] ; 3 uses
  %niter1166 = phi i32 [ %niter1166.next.3, %.lr.ph834 ], [ 0, %.lr.ph834.preheader ]
  %i.yj = load i16, ptr %.6557831, align 2, !tbaa !821
  store i16 %i.yj, ptr %.34832, align 2, !tbaa !821
  %i.yk = getelementptr inbounds nuw i8, ptr %.6557831, i64 2
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !821
  %i.ym = getelementptr inbounds nuw i8, ptr %.34832, i64 2
  store i16 %i.yl, ptr %i.ym, align 2, !tbaa !821
  %i.yn = getelementptr inbounds nuw i8, ptr %.34832, i64 4
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %.6557831, i64 %i.l ; 3 uses
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !821
  store i16 %i.yp, ptr %i.yn, align 2, !tbaa !821
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 2
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !821
  %i.ys = getelementptr inbounds nuw i8, ptr %.34832, i64 6
  store i16 %i.yr, ptr %i.ys, align 2, !tbaa !821
  %i.yt = getelementptr inbounds nuw i8, ptr %.34832, i64 8
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.yo, i64 %i.l ; 3 uses
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !821
  store i16 %i.yv, ptr %i.yt, align 2, !tbaa !821
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !821
  %i.yy = getelementptr inbounds nuw i8, ptr %.34832, i64 10
  store i16 %i.yx, ptr %i.yy, align 2, !tbaa !821
  %i.yz = getelementptr inbounds nuw i8, ptr %.34832, i64 12
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.yu, i64 %i.l ; 3 uses
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !821
  store i16 %i.zb, ptr %i.yz, align 2, !tbaa !821
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !821
  %i.ze = getelementptr inbounds nuw i8, ptr %.34832, i64 14
  store i16 %i.zd, ptr %i.ze, align 2, !tbaa !821
  %i.zf = getelementptr inbounds nuw i8, ptr %.34832, i64 16 ; 3 uses
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %i.za, i64 %i.l ; 2 uses
  %niter1166.next.3 = add i32 %niter1166, 4       ; 2 uses
  %niter1166.ncmp.3 = icmp eq i32 %niter1166.next.3, %unroll_iter1165
  br i1 %niter1166.ncmp.3, label %.loopexit697.loopexit.unr-lcssa, label %.lr.ph834, !llvm.loop !1291

.loopexit697.loopexit.unr-lcssa:                  ; preds = %.lr.ph834
  br i1 %lcmp.mod1162.not, label %.loopexit697, label %.lr.ph834.epil.preheader

.lr.ph834.epil.preheader:                         ; preds = %.loopexit697.loopexit.unr-lcssa, %.lr.ph834.preheader
  %.34832.epil.init = phi ptr [ %.27837, %.lr.ph834.preheader ], [ %i.zf, %.loopexit697.loopexit.unr-lcssa ]
  %.6557831.epil.init = phi ptr [ %i.wl, %.lr.ph834.preheader ], [ %i.zg, %.loopexit697.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1164)
  br label %.lr.ph834.epil

.lr.ph834.epil:                                   ; preds = %.lr.ph834.epil, %.lr.ph834.epil.preheader
  %.34832.epil = phi ptr [ %i.zl, %.lr.ph834.epil ], [ %.34832.epil.init, %.lr.ph834.epil.preheader ] ; 3 uses
  %.6557831.epil = phi ptr [ %i.zm, %.lr.ph834.epil ], [ %.6557831.epil.init, %.lr.ph834.epil.preheader ] ; 3 uses
  %epil.iter1161 = phi i32 [ %epil.iter1161.next, %.lr.ph834.epil ], [ 0, %.lr.ph834.epil.preheader ]
  %i.zh = load i16, ptr %.6557831.epil, align 2, !tbaa !821
  store i16 %i.zh, ptr %.34832.epil, align 2, !tbaa !821
  %i.zi = getelementptr inbounds nuw i8, ptr %.6557831.epil, i64 2
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !821
  %i.zk = getelementptr inbounds nuw i8, ptr %.34832.epil, i64 2
  store i16 %i.zj, ptr %i.zk, align 2, !tbaa !821
  %i.zl = getelementptr inbounds nuw i8, ptr %.34832.epil, i64 4 ; 2 uses
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %.6557831.epil, i64 %i.l
  %epil.iter1161.next = add i32 %epil.iter1161, 1 ; 2 uses
  %epil.iter1161.cmp.not = icmp eq i32 %epil.iter1161.next, %xtraiter1160
  br i1 %epil.iter1161.cmp.not, label %.loopexit697, label %.lr.ph834.epil, !llvm.loop !1292

.loopexit697:                                     ; preds = %.lr.ph816, %.lr.ph822, %.lr.ph828, %.loopexit697.loopexit.unr-lcssa, %.lr.ph834.epil, %.loopexit699
  %.35 = phi ptr [ %.27837, %.loopexit699 ], [ %i.zl, %.lr.ph834.epil ], [ %i.ye, %.lr.ph828 ], [ %i.xd, %.lr.ph822 ], [ %i.zf, %.loopexit697.loopexit.unr-lcssa ], [ %i.ws, %.lr.ph816 ] ; 2 uses
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 2 ; 3 uses
  %i.zn = icmp slt i64 %indvars.iv.next975, %invariant.op1075
  br i1 %i.zn, label %bb.j, label %.preheader694.loopexit, !llvm.loop !1293

bb.k:                                             ; preds = %.lr.ph866, %.loopexit
  %indvars.iv978 = phi i64 [ %i.vx, %.lr.ph866 ], [ %indvars.iv.next979, %.loopexit ] ; 2 uses
  %.36865 = phi ptr [ %.27.lcssa, %.lr.ph866 ], [ %.44, %.loopexit ] ; 6 uses
  %i.zo = load ptr, ptr %0, align 8, !tbaa !18
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.vq
  %i.zq = add nsw i64 %indvars.iv978, %i.vy
  %i.zr = mul nsw i64 %i.zq, %i.vz
  %i.zs = getelementptr inbounds [2 x i8], ptr %i.zp, i64 %i.zr ; 5 uses
  br i1 %i.wb, label %.loopexit693, label %.lr.ph844

.lr.ph844:                                        ; preds = %bb.k, %.lr.ph844
  %.0533843 = phi i32 [ %i.zw, %.lr.ph844 ], [ 0, %bb.k ]
  %.0534842 = phi ptr [ %i.zv, %.lr.ph844 ], [ %i.zs, %bb.k ] ; 2 uses
  %.37841 = phi ptr [ %i.zu, %.lr.ph844 ], [ %.36865, %bb.k ] ; 2 uses
  %i.zt = load <4 x i64>, ptr %.0534842, align 1, !tbaa !116
  store <4 x i64> %i.zt, ptr %.37841, align 1, !tbaa !116
  %i.zu = getelementptr inbounds nuw i8, ptr %.37841, i64 32 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.0534842, i64 %.idx592
  %i.zw = add nuw nsw i32 %.0533843, 16           ; 2 uses
  %i.zx = or disjoint i32 %i.zw, 15
  %i.zy = icmp slt i32 %i.zx, %5
  br i1 %i.zy, label %.lr.ph844, label %.loopexit, !llvm.loop !1294

.loopexit693:                                     ; preds = %bb.k
  br i1 %i.wc, label %.loopexit691, label %.lr.ph850

.lr.ph850:                                        ; preds = %.loopexit693, %.lr.ph850
  %.0532849 = phi i32 [ %i.aac, %.lr.ph850 ], [ 0, %.loopexit693 ]
  %.2848 = phi ptr [ %i.aab, %.lr.ph850 ], [ %i.zs, %.loopexit693 ] ; 2 uses
  %.39847 = phi ptr [ %i.aaa, %.lr.ph850 ], [ %.36865, %.loopexit693 ] ; 2 uses
  %i.zz = load <2 x i64>, ptr %.2848, align 1, !tbaa !116
  store <2 x i64> %i.zz, ptr %.39847, align 1, !tbaa !116
  %i.aaa = getelementptr inbounds nuw i8, ptr %.39847, i64 16 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.2848, i64 %.idx591
  %i.aac = add nuw nsw i32 %.0532849, 8           ; 2 uses
  %i.aad = or disjoint i32 %i.aac, 7
  %i.aae = icmp slt i32 %i.aad, %5
  br i1 %i.aae, label %.lr.ph850, label %.loopexit, !llvm.loop !1295

.loopexit691:                                     ; preds = %.loopexit693
  br i1 %i.wd, label %.loopexit689, label %.lr.ph856

.lr.ph856:                                        ; preds = %.loopexit691, %.lr.ph856
  %.0531855 = phi i32 [ %i.aai, %.lr.ph856 ], [ 0, %.loopexit691 ]
  %.4854 = phi ptr [ %i.aah, %.lr.ph856 ], [ %i.zs, %.loopexit691 ] ; 2 uses
  %.41853 = phi ptr [ %i.aag, %.lr.ph856 ], [ %.36865, %.loopexit691 ] ; 2 uses
  %i.aaf = load i64, ptr %.4854, align 1, !tbaa !116
  store i64 %i.aaf, ptr %.41853, align 1, !tbaa !116
  %i.aag = getelementptr inbounds nuw i8, ptr %.41853, i64 8 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.4854, i64 %.idx
  %i.aai = add nuw nsw i32 %.0531855, 4           ; 2 uses
  %i.aaj = or disjoint i32 %i.aai, 3
  %i.aak = icmp slt i32 %i.aaj, %5
  br i1 %i.aak, label %.lr.ph856, label %.loopexit, !llvm.loop !1296

.loopexit689:                                     ; preds = %.loopexit691
  br i1 %i.we, label %.loopexit, label %.lr.ph862.preheader

.lr.ph862.preheader:                              ; preds = %.loopexit689
  br i1 %i.wg, label %.lr.ph862.epil.preheader, label %.lr.ph862

.lr.ph862:                                        ; preds = %.lr.ph862.preheader, %.lr.ph862
  %.6860 = phi ptr [ %i.abi, %.lr.ph862 ], [ %i.zs, %.lr.ph862.preheader ] ; 2 uses
  %.43859 = phi ptr [ %i.abh, %.lr.ph862 ], [ %.36865, %.lr.ph862.preheader ] ; 9 uses
  %niter1173 = phi i32 [ %niter1173.next.7, %.lr.ph862 ], [ 0, %.lr.ph862.preheader ]
  %i.aal = load i16, ptr %.6860, align 2, !tbaa !821
  store i16 %i.aal, ptr %.43859, align 2, !tbaa !821
  %i.aam = getelementptr inbounds nuw i8, ptr %.43859, i64 2
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.6860, i64 %i.l ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !821
  store i16 %i.aao, ptr %i.aam, align 2, !tbaa !821
  %i.aap = getelementptr inbounds nuw i8, ptr %.43859, i64 4
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.aan, i64 %i.l ; 2 uses
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !821
  store i16 %i.aar, ptr %i.aap, align 2, !tbaa !821
  %i.aas = getelementptr inbounds nuw i8, ptr %.43859, i64 6
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.aaq, i64 %i.l ; 2 uses
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !821
  store i16 %i.aau, ptr %i.aas, align 2, !tbaa !821
  %i.aav = getelementptr inbounds nuw i8, ptr %.43859, i64 8
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.l ; 2 uses
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !821
  store i16 %i.aax, ptr %i.aav, align 2, !tbaa !821
  %i.aay = getelementptr inbounds nuw i8, ptr %.43859, i64 10
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.l ; 2 uses
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !821
  store i16 %i.aba, ptr %i.aay, align 2, !tbaa !821
  %i.abb = getelementptr inbounds nuw i8, ptr %.43859, i64 12
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %i.l ; 2 uses
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !821
  store i16 %i.abd, ptr %i.abb, align 2, !tbaa !821
  %i.abe = getelementptr inbounds nuw i8, ptr %.43859, i64 14
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.abc, i64 %i.l ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !821
  store i16 %i.abg, ptr %i.abe, align 2, !tbaa !821
  %i.abh = getelementptr inbounds nuw i8, ptr %.43859, i64 16 ; 3 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.abf, i64 %i.l ; 2 uses
  %niter1173.next.7 = add i32 %niter1173, 8       ; 2 uses
  %niter1173.ncmp.7 = icmp eq i32 %niter1173.next.7, %unroll_iter1172
  br i1 %niter1173.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph862, !llvm.loop !1297

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph862
  br i1 %lcmp.mod1169.not, label %.loopexit, label %.lr.ph862.epil.preheader

.lr.ph862.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph862.preheader
  %.6860.epil.init = phi ptr [ %i.zs, %.lr.ph862.preheader ], [ %i.abi, %.loopexit.loopexit.unr-lcssa ]
  %.43859.epil.init = phi ptr [ %.36865, %.lr.ph862.preheader ], [ %i.abh, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1171)
  br label %.lr.ph862.epil

.lr.ph862.epil:                                   ; preds = %.lr.ph862.epil, %.lr.ph862.epil.preheader
  %.6860.epil = phi ptr [ %i.abl, %.lr.ph862.epil ], [ %.6860.epil.init, %.lr.ph862.epil.preheader ] ; 2 uses
  %.43859.epil = phi ptr [ %i.abk, %.lr.ph862.epil ], [ %.43859.epil.init, %.lr.ph862.epil.preheader ] ; 2 uses
  %epil.iter1168 = phi i32 [ %epil.iter1168.next, %.lr.ph862.epil ], [ 0, %.lr.ph862.epil.preheader ]
  %i.abj = load i16, ptr %.6860.epil, align 2, !tbaa !821
  store i16 %i.abj, ptr %.43859.epil, align 2, !tbaa !821
  %i.abk = getelementptr inbounds nuw i8, ptr %.43859.epil, i64 2 ; 2 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %.6860.epil, i64 %i.l
  %epil.iter1168.next = add i32 %epil.iter1168, 1 ; 2 uses
  %epil.iter1168.cmp.not = icmp eq i32 %epil.iter1168.next, %xtraiter1167
  br i1 %epil.iter1168.cmp.not, label %.loopexit, label %.lr.ph862.epil, !llvm.loop !1298

.loopexit:                                        ; preds = %.lr.ph844, %.lr.ph850, %.lr.ph856, %.loopexit.loopexit.unr-lcssa, %.lr.ph862.epil, %.loopexit689
  %.44 = phi ptr [ %.36865, %.loopexit689 ], [ %i.abk, %.lr.ph862.epil ], [ %i.aag, %.lr.ph856 ], [ %i.aaa, %.lr.ph850 ], [ %i.abh, %.loopexit.loopexit.unr-lcssa ], [ %i.zu, %.lr.ph844 ]
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 1 ; 2 uses
  %exitcond981.not = icmp eq i64 %indvars.iv.next979, %wide.trip.count
  br i1 %exitcond981.not, label %.loopexit695, label %bb.k, !llvm.loop !1299

.loopexit695:                                     ; preds = %.loopexit, %.preheader694, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !88
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 35 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.n = icmp sgt i32 %3, 15
  br i1 %i.n, label %.lr.ph312, label %.preheader279

.lr.ph312:                                        ; preds = %bb.f
  %i.o = mul i32 %i.c, %4
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ne i32 %i.c, 16
  %i.r = icmp slt i32 %5, 1                       ; 2 uses
  %.idx264 = shl i64 %i.l, 4                      ; 2 uses
  %i.s = icmp sgt i32 %5, 0                       ; 2 uses
  %.idx265 = shl i64 %i.l, 3
  %.idx267 = mul i64 %i.l, 24
  %i.t = icmp ne i32 %i.c, 1
  %i.u = trunc i64 %i.l to i32
  %i.v = insertelement <16 x i32> poison, i32 %i.u, i64 0
  %i.w = shufflevector <16 x i32> %i.v, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.x = mul <16 x i32> %i.w, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.y = zext nneg i32 %3 to i64
  %i.z = sext i32 %2 to i64                       ; 3 uses
  %brmerge = or i1 %i.q, %i.r
  %brmerge415 = or i1 %i.t, %i.r
  %i.aa = add i32 %5, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = shl nsw i64 %i.z, 1                     ; 3 uses
  %i.ae = add nsw i64 %i.ad, 24
  %i.af = mul i64 %i.l, %i.ae
  %i.ag = shl nuw nsw i64 %i.ab, 3                ; 4 uses
  %i.ah = shl nsw i64 %i.p, 1                     ; 4 uses
  %i.ai = shl i64 %i.l, 5
  %i.aj = add nsw i64 %i.ad, 16
  %i.ak = mul i64 %i.l, %i.aj
  %i.al = add nsw i64 %i.ad, 8
  %i.am = mul i64 %i.l, %i.al
  %i.an = mul i64 %i.l, %i.z
  %i.ao = shl i64 %i.an, 1
  %i.ap = add i32 %5, -1                          ; 3 uses
  %xtraiter = and i32 %5, 7                       ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 7
  %unroll_iter = and i32 %5, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod918 = icmp ne i32 %xtraiter, 0
  %i.ar = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %i.ar, 2147483640              ; 5 uses
  %i.as = shl nuw nsw i64 %n.vec, 5
  %i.at = shl nuw nsw i64 %n.vec, 3               ; 4 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  %xtraiter921 = and i32 %5, 3                    ; 3 uses
  %i.av = icmp ult i32 %i.ap, 3
  %unroll_iter926 = and i32 %5, 2147483644
  %lcmp.mod923.not = icmp eq i32 %xtraiter921, 0
  %lcmp.mod925 = icmp ne i32 %xtraiter921, 0
  %xtraiter928 = and i32 %5, 3                    ; 3 uses
  %i.aw = icmp ult i32 %i.ap, 3
  %unroll_iter933 = and i32 %5, 2147483644
  %lcmp.mod930.not = icmp eq i32 %xtraiter928, 0
  %lcmp.mod932 = icmp ne i32 %xtraiter928, 0
  br label %bb.g

.preheader279.loopexit:                           ; preds = %.loopexit280
  %i.ax = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader279

.preheader279:                                    ; preds = %.preheader279.loopexit, %bb.f
  %.0220.lcssa = phi i32 [ 0, %bb.f ], [ %i.ax, %.preheader279.loopexit ] ; 3 uses
  %.0219.lcssa = phi ptr [ %i.m, %bb.f ], [ %.8, %.preheader279.loopexit ] ; 2 uses
  %i.ay = or disjoint i32 %.0220.lcssa, 7
  %i.az = icmp slt i32 %i.ay, %3
  br i1 %i.az, label %.lr.ph335, label %.preheader274

.lr.ph335:                                        ; preds = %.preheader279
  %i.ba = mul i32 %i.c, %4
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ne i32 %i.c, 8
  %i.bd = icmp slt i32 %5, 1                      ; 2 uses
  %i.be = icmp eq i32 %i.c, 4
  %.idx263 = shl i64 %i.l, 3
  %i.bf = icmp sgt i32 %5, 0
  %i.bg = icmp ne i32 %i.c, 1
  %i.bh = trunc i64 %i.l to i32
  %i.bi = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bk = mul <8 x i32> %i.bj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.bl = zext i32 %.0220.lcssa to i64            ; 2 uses
  %i.bm = sext i32 %3 to i64
  %i.bn = sext i32 %2 to i64                      ; 2 uses
  %brmerge421 = or i1 %i.bc, %i.bd
  %brmerge424 = or i1 %i.bg, %i.bd
  %invariant.op = add nsw i64 %i.bm, -7
  %i.bo = add i32 %5, -1
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = add nsw i64 %i.bn, %i.bl                ; 2 uses
  %i.bs = shl nsw i64 %i.br, 1
  %i.bt = add nsw i64 %i.bs, 8
  %i.bu = mul i64 %i.l, %i.bt                     ; 2 uses
  %i.bv = shl nsw i64 %i.bb, 1                    ; 3 uses
  %i.bw = shl i64 %i.l, 4
  %i.bx = shl nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.by = mul i64 %i.l, %i.br
  %i.bz = shl i64 %i.by, 1
  %i.ca = add i32 %5, -1                          ; 2 uses
  %xtraiter935 = and i32 %5, 7                    ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 7
  %unroll_iter940 = and i32 %5, 2147483640
  %lcmp.mod937.not = icmp eq i32 %xtraiter935, 0
  %lcmp.mod939 = icmp ne i32 %xtraiter935, 0
  %xtraiter942 = and i32 %5, 3                    ; 3 uses
  %i.cc = icmp ult i32 %i.ca, 3
  %unroll_iter947 = and i32 %5, 2147483644
  %lcmp.mod944.not = icmp eq i32 %xtraiter942, 0
  %lcmp.mod946 = icmp ne i32 %xtraiter942, 0
  %i.cd = zext nneg i32 %5 to i64                 ; 2 uses
  %min.iters.check601 = icmp ult i32 %5, 8
  %n.vec603 = and i64 %i.cd, 2147483640           ; 5 uses
  %i.ce = shl nuw nsw i64 %n.vec603, 4
  %i.cf = trunc nuw nsw i64 %n.vec603 to i32
  %i.cg = shl nuw nsw i64 %n.vec603, 3            ; 2 uses
  %cmp.n614 = icmp eq i64 %n.vec603, %i.cd
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph312, %.loopexit280
  %indvar = phi i64 [ 0, %.lr.ph312 ], [ %indvar.next, %.loopexit280 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next, %.loopexit280 ] ; 2 uses
  %.0219311 = phi ptr [ %i.m, %.lr.ph312 ], [ %.8, %.loopexit280 ] ; 18 uses
  %i.ch = mul i64 %i.ai, %indvar                  ; 4 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.cj = add nsw i64 %indvars.iv, %i.z
  %i.ck = mul i64 %i.l, %i.cj
  %i.cl = getelementptr [2 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.p ; 15 uses
  br i1 %brmerge, label %.loopexit284, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1287 = phi ptr [ %i.dj, %.lr.ph ], [ %.0219311, %.lr.ph.preheader ] ; 9 uses
  %.0225286 = phi ptr [ %i.dk, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cn = load <4 x i64>, ptr %.0225286, align 1, !tbaa !116
  store <4 x i64> %i.cn, ptr %.1287, align 1, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr %.1287, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0225286, i64 32
  %i.cq = load <4 x i64>, ptr %i.cp, align 1, !tbaa !116
  store <4 x i64> %i.cq, ptr %i.co, align 1, !tbaa !116
  %i.cr = getelementptr inbounds nuw i8, ptr %.1287, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0225286, i64 64
  %i.ct = load <4 x i64>, ptr %i.cs, align 1, !tbaa !116
  store <4 x i64> %i.ct, ptr %i.cr, align 1, !tbaa !116
  %i.cu = getelementptr inbounds nuw i8, ptr %.1287, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %.0225286, i64 96
  %i.cw = load <4 x i64>, ptr %i.cv, align 1, !tbaa !116
  store <4 x i64> %i.cw, ptr %i.cu, align 1, !tbaa !116
  %i.cx = getelementptr inbounds nuw i8, ptr %.1287, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %.0225286, i64 128
  %i.cz = load <4 x i64>, ptr %i.cy, align 1, !tbaa !116
  store <4 x i64> %i.cz, ptr %i.cx, align 1, !tbaa !116
end_hunk_14
begin_hunk_15_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %exitcond481.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph814, !llvm.loop !1373

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph814.prol.loopexit, %vec.epilog.scalar.ph814, %vec.epilog.middle.block828, %middle.block806
  %.lcssa542 = phi ptr [ %i.zn, %vec.epilog.middle.block828 ], [ %i.zh, %middle.block806 ], [ %.lcssa893.unr, %vec.epilog.scalar.ph814.prol.loopexit ], [ %i.aaw, %vec.epilog.scalar.ph814 ] ; 2 uses
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 2 ; 3 uses
  %i.aba = icmp slt i64 %indvars.iv.next483, %invariant.op536
  br i1 %i.aba, label %iter.check813, label %.preheader.loopexit, !llvm.loop !1374

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.abb = trunc nsw i64 %indvars.iv.next483 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph397.split.preheader, %.preheader.loopexit, %.preheader269
  %.3223.lcssa = phi i32 [ %.2222.lcssa, %.preheader269 ], [ %i.abb, %.preheader.loopexit ], [ %i.xl, %.lr.ph397.split.preheader ] ; 2 uses
  %.22.lcssa = phi ptr [ %.16.lcssa, %.preheader269 ], [ %.lcssa542, %.preheader.loopexit ], [ %.16.lcssa, %.lr.ph397.split.preheader ]
  %i.abc = icmp slt i32 %.3223.lcssa, %3
  br i1 %i.abc, label %.lr.ph409, label %.loopexit

.lr.ph409:                                        ; preds = %.preheader
  %i.abd = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.abe = sext i32 %4 to i64                     ; 2 uses
  %invariant.gep410 = getelementptr [2 x i8], ptr %i.abd, i64 %i.abe
  %i.abf = icmp sgt i32 %5, 0
  br i1 %i.abf, label %.lr.ph405.preheader, label %.loopexit

.lr.ph405.preheader:                              ; preds = %.lr.ph409
  %i.abg = ptrtoaddr ptr %i.abd to i64
  %i.abh = sext i32 %.3223.lcssa to i64           ; 2 uses
  %i.abi = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count = sext i32 %3 to i64
  %i.abj = add nsw i64 %i.abh, %i.abi
  %i.abk = mul i64 %i.l, %i.abj
  %i.abl = add i64 %i.abk, %i.abe
  %.neg = mul i64 %i.abl, -2
  %.neg883 = sub i64 %.neg, %i.abg
  %i.abm = mul i64 %i.l, -2
  %i.abn = zext nneg i32 %5 to i64                ; 5 uses
  %min.iters.check840 = icmp ult i32 %5, 16
  %min.iters.check842 = icmp ult i32 %5, 128
  %i.abo = and i64 %i.abn, 112
  %n.vec844 = and i64 %i.abn, 2147483520          ; 5 uses
  %i.abp = trunc nuw nsw i64 %n.vec844 to i32
  %i.abq = shl nuw nsw i64 %n.vec844, 1           ; 2 uses
  %cmp.n855 = icmp eq i64 %n.vec844, %i.abn
  %min.epilog.iters.check863 = icmp eq i64 %i.abo, 0
  %n.vec865 = and i64 %i.abn, 2147483632          ; 4 uses
  %i.abr = trunc nuw nsw i64 %n.vec865 to i32
  %i.abs = shl nuw nsw i64 %n.vec865, 1           ; 2 uses
  %cmp.n873 = icmp eq i64 %n.vec865, %i.abn
  br label %iter.check860

iter.check860:                                    ; preds = %.lr.ph405.preheader, %._crit_edge
  %indvar836 = phi i64 [ 0, %.lr.ph405.preheader ], [ %indvar.next837, %._crit_edge ] ; 2 uses
  %indvars.iv486 = phi i64 [ %i.abh, %.lr.ph405.preheader ], [ %indvars.iv.next487, %._crit_edge ] ; 2 uses
  %.24408 = phi ptr [ %.22.lcssa, %.lr.ph405.preheader ], [ %.lcssa, %._crit_edge ] ; 7 uses
  %i.abt = add nsw i64 %indvars.iv486, %i.abi
  %i.abu = mul i64 %i.l, %i.abt
  %gep = getelementptr [2 x i8], ptr %invariant.gep410, i64 %i.abu ; 6 uses
  br i1 %min.iters.check840, label %vec.epilog.scalar.ph861.preheader, label %vector.memcheck834

vector.memcheck834:                               ; preds = %iter.check860
  %i.abv = mul i64 %i.abm, %indvar836
  %i.abw = add i64 %.neg883, %i.abv
  %.24408835 = ptrtoaddr ptr %.24408 to i64
  %i.abx = add i64 %i.abw, %.24408835
  %i.aby = add i64 %i.abx, -1
  %diff.check838 = icmp ult i64 %i.aby, 255
  br i1 %diff.check838, label %vec.epilog.scalar.ph861.preheader, label %vector.main.loop.iter.check841

vector.main.loop.iter.check841:                   ; preds = %vector.memcheck834
  br i1 %min.iters.check842, label %vec.epilog.ph864, label %vector.ph843

vector.ph843:                                     ; preds = %vector.main.loop.iter.check841
  %i.abz = getelementptr i8, ptr %gep, i64 %i.abq
  %i.aca = getelementptr i8, ptr %.24408, i64 %i.abq ; 2 uses
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph843
  %index846 = phi i64 [ 0, %vector.ph843 ], [ %index.next853, %vector.body845 ] ; 2 uses
  %i.acb = shl i64 %index846, 1                   ; 2 uses
  %next.gep847 = getelementptr i8, ptr %gep, i64 %i.acb ; 4 uses
  %next.gep848 = getelementptr i8, ptr %.24408, i64 %i.acb ; 4 uses
  %i.acc = getelementptr i8, ptr %next.gep847, i64 64
  %i.acd = getelementptr i8, ptr %next.gep847, i64 128
  %i.ace = getelementptr i8, ptr %next.gep847, i64 192
  %wide.load849 = load <32 x i16>, ptr %next.gep847, align 2, !tbaa !821
  %wide.load850 = load <32 x i16>, ptr %i.acc, align 2, !tbaa !821
  %wide.load851 = load <32 x i16>, ptr %i.acd, align 2, !tbaa !821
  %wide.load852 = load <32 x i16>, ptr %i.ace, align 2, !tbaa !821
  %i.acf = getelementptr i8, ptr %next.gep848, i64 64
  %i.acg = getelementptr i8, ptr %next.gep848, i64 128
  %i.ach = getelementptr i8, ptr %next.gep848, i64 192
  store <32 x i16> %wide.load849, ptr %next.gep848, align 2, !tbaa !821
  store <32 x i16> %wide.load850, ptr %i.acf, align 2, !tbaa !821
  store <32 x i16> %wide.load851, ptr %i.acg, align 2, !tbaa !821
  store <32 x i16> %wide.load852, ptr %i.ach, align 2, !tbaa !821
  %index.next853 = add nuw i64 %index846, 128     ; 2 uses
  %i.aci = icmp eq i64 %index.next853, %n.vec844
  br i1 %i.aci, label %middle.block854, label %vector.body845, !llvm.loop !1375

middle.block854:                                  ; preds = %vector.body845
  br i1 %cmp.n855, label %._crit_edge, label %vec.epilog.iter.check862

vec.epilog.iter.check862:                         ; preds = %middle.block854
  br i1 %min.epilog.iters.check863, label %vec.epilog.scalar.ph861.preheader, label %vec.epilog.ph864, !prof !1376

vec.epilog.ph864:                                 ; preds = %vector.main.loop.iter.check841, %vec.epilog.iter.check862
  %vec.epilog.resume.val856 = phi i64 [ %n.vec844, %vec.epilog.iter.check862 ], [ 0, %vector.main.loop.iter.check841 ]
  %i.acj = getelementptr i8, ptr %gep, i64 %i.abs
  %i.ack = getelementptr i8, ptr %.24408, i64 %i.abs ; 2 uses
  br label %vec.epilog.vector.body866

vec.epilog.vector.body866:                        ; preds = %vec.epilog.vector.body866, %vec.epilog.ph864
  %index867 = phi i64 [ %vec.epilog.resume.val856, %vec.epilog.ph864 ], [ %index.next871, %vec.epilog.vector.body866 ] ; 2 uses
  %i.acl = shl i64 %index867, 1                   ; 2 uses
  %next.gep868 = getelementptr i8, ptr %gep, i64 %i.acl
  %next.gep869 = getelementptr i8, ptr %.24408, i64 %i.acl
  %wide.load870 = load <16 x i16>, ptr %next.gep868, align 2, !tbaa !821
  store <16 x i16> %wide.load870, ptr %next.gep869, align 2, !tbaa !821
  %index.next871 = add nuw i64 %index867, 16      ; 2 uses
  %i.acm = icmp eq i64 %index.next871, %n.vec865
  br i1 %i.acm, label %vec.epilog.middle.block872, label %vec.epilog.vector.body866, !llvm.loop !1377

vec.epilog.middle.block872:                       ; preds = %vec.epilog.vector.body866
  br i1 %cmp.n873, label %._crit_edge, label %vec.epilog.scalar.ph861.preheader

vec.epilog.scalar.ph861.preheader:                ; preds = %vector.memcheck834, %iter.check860, %vec.epilog.iter.check862, %vec.epilog.middle.block872
  %.0404.ph = phi i32 [ 0, %iter.check860 ], [ 0, %vector.memcheck834 ], [ %i.abp, %vec.epilog.iter.check862 ], [ %i.abr, %vec.epilog.middle.block872 ] ; 4 uses
  %.0215403.ph = phi ptr [ %gep, %iter.check860 ], [ %gep, %vector.memcheck834 ], [ %i.abz, %vec.epilog.iter.check862 ], [ %i.acj, %vec.epilog.middle.block872 ] ; 2 uses
  %.25402.ph = phi ptr [ %.24408, %iter.check860 ], [ %.24408, %vector.memcheck834 ], [ %i.aca, %vec.epilog.iter.check862 ], [ %i.ack, %vec.epilog.middle.block872 ] ; 2 uses
  %i.acn = sub i32 %5, %.0404.ph
  %xtraiter963 = and i32 %i.acn, 7                ; 2 uses
  %lcmp.mod964.not = icmp eq i32 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %vec.epilog.scalar.ph861.prol.loopexit, label %vec.epilog.scalar.ph861.prol

vec.epilog.scalar.ph861.prol:                     ; preds = %vec.epilog.scalar.ph861.preheader, %vec.epilog.scalar.ph861.prol
  %.0404.prol = phi i32 [ %i.acr, %vec.epilog.scalar.ph861.prol ], [ %.0404.ph, %vec.epilog.scalar.ph861.preheader ]
  %.0215403.prol = phi ptr [ %i.acq, %vec.epilog.scalar.ph861.prol ], [ %.0215403.ph, %vec.epilog.scalar.ph861.preheader ] ; 2 uses
  %.25402.prol = phi ptr [ %i.acp, %vec.epilog.scalar.ph861.prol ], [ %.25402.ph, %vec.epilog.scalar.ph861.preheader ] ; 2 uses
  %prol.iter965 = phi i32 [ %prol.iter965.next, %vec.epilog.scalar.ph861.prol ], [ 0, %vec.epilog.scalar.ph861.preheader ]
  %i.aco = load i16, ptr %.0215403.prol, align 2, !tbaa !821
  store i16 %i.aco, ptr %.25402.prol, align 2, !tbaa !821
  %i.acp = getelementptr inbounds nuw i8, ptr %.25402.prol, i64 2 ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.0215403.prol, i64 2 ; 2 uses
  %i.acr = add nuw nsw i32 %.0404.prol, 1         ; 2 uses
  %prol.iter965.next = add i32 %prol.iter965, 1   ; 2 uses
  %prol.iter965.cmp.not = icmp eq i32 %prol.iter965.next, %xtraiter963
  br i1 %prol.iter965.cmp.not, label %vec.epilog.scalar.ph861.prol.loopexit, label %vec.epilog.scalar.ph861.prol, !llvm.loop !1378

vec.epilog.scalar.ph861.prol.loopexit:            ; preds = %vec.epilog.scalar.ph861.prol, %vec.epilog.scalar.ph861.preheader
  %.lcssa892.unr = phi ptr [ poison, %vec.epilog.scalar.ph861.preheader ], [ %i.acp, %vec.epilog.scalar.ph861.prol ]
  %.0404.unr = phi i32 [ %.0404.ph, %vec.epilog.scalar.ph861.preheader ], [ %i.acr, %vec.epilog.scalar.ph861.prol ]
  %.0215403.unr = phi ptr [ %.0215403.ph, %vec.epilog.scalar.ph861.preheader ], [ %i.acq, %vec.epilog.scalar.ph861.prol ]
  %.25402.unr = phi ptr [ %.25402.ph, %vec.epilog.scalar.ph861.preheader ], [ %i.acp, %vec.epilog.scalar.ph861.prol ]
  %i.acs = sub i32 %.0404.ph, %5
  %i.act = icmp ugt i32 %i.acs, -8
  br i1 %i.act, label %._crit_edge, label %vec.epilog.scalar.ph861

vec.epilog.scalar.ph861:                          ; preds = %vec.epilog.scalar.ph861.prol.loopexit, %vec.epilog.scalar.ph861
  %.0404 = phi i32 [ %i.ads, %vec.epilog.scalar.ph861 ], [ %.0404.unr, %vec.epilog.scalar.ph861.prol.loopexit ]
  %.0215403 = phi ptr [ %i.adr, %vec.epilog.scalar.ph861 ], [ %.0215403.unr, %vec.epilog.scalar.ph861.prol.loopexit ] ; 9 uses
  %.25402 = phi ptr [ %i.adq, %vec.epilog.scalar.ph861 ], [ %.25402.unr, %vec.epilog.scalar.ph861.prol.loopexit ] ; 9 uses
  %i.acu = load i16, ptr %.0215403, align 2, !tbaa !821
  store i16 %i.acu, ptr %.25402, align 2, !tbaa !821
  %i.acv = getelementptr inbounds nuw i8, ptr %.25402, i64 2
  %i.acw = getelementptr inbounds nuw i8, ptr %.0215403, i64 2
  %i.acx = load i16, ptr %i.acw, align 2, !tbaa !821
  store i16 %i.acx, ptr %i.acv, align 2, !tbaa !821
  %i.acy = getelementptr inbounds nuw i8, ptr %.25402, i64 4
  %i.acz = getelementptr inbounds nuw i8, ptr %.0215403, i64 4
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !821
  store i16 %i.ada, ptr %i.acy, align 2, !tbaa !821
  %i.adb = getelementptr inbounds nuw i8, ptr %.25402, i64 6
  %i.adc = getelementptr inbounds nuw i8, ptr %.0215403, i64 6
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !821
  store i16 %i.add, ptr %i.adb, align 2, !tbaa !821
  %i.ade = getelementptr inbounds nuw i8, ptr %.25402, i64 8
  %i.adf = getelementptr inbounds nuw i8, ptr %.0215403, i64 8
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !821
  store i16 %i.adg, ptr %i.ade, align 2, !tbaa !821
  %i.adh = getelementptr inbounds nuw i8, ptr %.25402, i64 10
  %i.adi = getelementptr inbounds nuw i8, ptr %.0215403, i64 10
  %i.adj = load i16, ptr %i.adi, align 2, !tbaa !821
  store i16 %i.adj, ptr %i.adh, align 2, !tbaa !821
  %i.adk = getelementptr inbounds nuw i8, ptr %.25402, i64 12
  %i.adl = getelementptr inbounds nuw i8, ptr %.0215403, i64 12
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !821
  store i16 %i.adm, ptr %i.adk, align 2, !tbaa !821
  %i.adn = getelementptr inbounds nuw i8, ptr %.25402, i64 14
  %i.ado = getelementptr inbounds nuw i8, ptr %.0215403, i64 14
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !821
  store i16 %i.adp, ptr %i.adn, align 2, !tbaa !821
  %i.adq = getelementptr inbounds nuw i8, ptr %.25402, i64 16 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0215403, i64 16
  %i.ads = add nuw nsw i32 %.0404, 8              ; 2 uses
  %exitcond485.not.7 = icmp eq i32 %i.ads, %5
  br i1 %exitcond485.not.7, label %._crit_edge, label %vec.epilog.scalar.ph861, !llvm.loop !1379

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph861.prol.loopexit, %vec.epilog.scalar.ph861, %vec.epilog.middle.block872, %middle.block854
  %.lcssa = phi ptr [ %i.ack, %vec.epilog.middle.block872 ], [ %i.aca, %middle.block854 ], [ %.lcssa892.unr, %vec.epilog.scalar.ph861.prol.loopexit ], [ %i.adq, %vec.epilog.scalar.ph861 ]
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %exitcond489.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count
  %indvar.next837 = add i64 %indvar836, 1
  br i1 %exitcond489.not, label %.loopexit, label %iter.check860, !llvm.loop !1380

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %.lr.ph409, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15Gemm_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef nonnull align 8 dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not58 = icmp sgt i32 %i.k, %i.j
  br i1 %.not58, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 680
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 688
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 220
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.059 = phi i32 [ %i.k, %.noexc42.lr.ph ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.aa = sdiv i32 %.059, %i.z                    ; 2 uses
  %i.ab = srem i32 %.059, %i.z                    ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %i.aa                ; 3 uses
  %i.ae = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ab                ; 3 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !45
  %i.ah = sub nsw i32 %i.ag, %i.ad
  %.sroa.speculated55 = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ah) ; 2 uses
  %i.ai = load i32, ptr %7, align 4, !tbaa !45
  %i.aj = sub nsw i32 %i.ai, %i.af
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !88, !noalias !1381 ; 2 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !1381
  %i.am = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1381
  %i.an = sext i32 %i.aa to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !1381 ; 3 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = load i32, ptr %i.p, align 8, !tbaa !60, !noalias !1381
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !17, !noalias !1381
  %i.au = sext i32 %i.ak to i64                   ; 2 uses
  %i.av = sext i32 %i.ab to i64
  %i.aw = mul nsw i64 %i.au, %i.av
  %i.ax = mul i64 %i.aw, %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  store ptr %i.ay, ptr %10, align 8, !tbaa !18
  store ptr null, ptr %i.r, align 8, !tbaa !11
  store i64 %i.ap, ptr %i.s, align 8, !tbaa !59
  store i32 %i.as, ptr %i.t, align 8, !tbaa !60
  store ptr %i.at, ptr %i.u, align 8, !tbaa !17
  %i.az = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ak, i64 1
  store <4 x i32> %i.az, ptr %i.v, align 8, !tbaa !45
  store i32 1, ptr %i.w, align 8, !tbaa !51
  store i64 %i.au, ptr %i.x, align 8, !tbaa !20, !alias.scope !1384
  %i.ba = load i32, ptr %i.y, align 4, !tbaa !86
  %.not33 = icmp eq i32 %i.ba, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  invoke fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ad, i32 noundef %.sroa.speculated55, i32 noundef %i.af, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %.noexc42
  invoke fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ad, i32 noundef %.sroa.speculated55, i32 noundef %i.af, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %.not.i35 = icmp eq ptr %i.bb, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !17  ; 3 uses
  %.not3.i36 = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %10, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i39 = icmp eq ptr %i.bf, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.bf) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.bl = add nsw i32 %.059, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.059, %i.bm
  br i1 %.not.not, label %.noexc42, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #30
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !88
  %i.k = sext i32 %i.j to i64
end_hunk_15
begin_hunk_16_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %exitcond432.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph753, !llvm.loop !1459

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph753.prol.loopexit, %vec.epilog.scalar.ph753, %vec.epilog.middle.block767, %middle.block745
  %.lcssa491 = phi ptr [ %i.yp, %vec.epilog.middle.block767 ], [ %i.yj, %middle.block745 ], [ %.lcssa832.unr, %vec.epilog.scalar.ph753.prol.loopexit ], [ %i.zy, %vec.epilog.scalar.ph753 ] ; 2 uses
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 2 ; 3 uses
  %i.aac = icmp slt i64 %indvars.iv.next434, %invariant.op485
  br i1 %i.aac, label %iter.check752, label %.preheader.loopexit, !llvm.loop !1460

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.aad = trunc nsw i64 %indvars.iv.next434 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph354.split.preheader, %.preheader.loopexit, %.preheader240
  %.3231.lcssa = phi i32 [ %.2230.lcssa, %.preheader240 ], [ %i.aad, %.preheader.loopexit ], [ %i.wn, %.lr.ph354.split.preheader ] ; 2 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %.preheader240 ], [ %.lcssa491, %.preheader.loopexit ], [ %.16.lcssa, %.lr.ph354.split.preheader ]
  %i.aae = icmp slt i32 %.3231.lcssa, %3
  br i1 %i.aae, label %.lr.ph366, label %.loopexit

.lr.ph366:                                        ; preds = %.preheader
  %i.aaf = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.aag = sext i32 %4 to i64                     ; 2 uses
  %invariant.gep367 = getelementptr [2 x i8], ptr %i.aaf, i64 %i.aag
  %i.aah = icmp sgt i32 %5, 0
  br i1 %i.aah, label %.lr.ph362.preheader, label %.loopexit

.lr.ph362.preheader:                              ; preds = %.lr.ph366
  %i.aai = ptrtoaddr ptr %i.aaf to i64
  %i.aaj = sext i32 %.3231.lcssa to i64           ; 2 uses
  %i.aak = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count = sext i32 %3 to i64
  %i.aal = add nsw i64 %i.aaj, %i.aak
  %i.aam = mul i64 %i.l, %i.aal
  %i.aan = add i64 %i.aam, %i.aag
  %.neg = mul i64 %i.aan, -2
  %.neg822 = sub i64 %.neg, %i.aai
  %i.aao = mul i64 %i.l, -2
  %i.aap = zext nneg i32 %5 to i64                ; 5 uses
  %min.iters.check779 = icmp ult i32 %5, 16
  %min.iters.check781 = icmp ult i32 %5, 128
  %i.aaq = and i64 %i.aap, 112
  %n.vec783 = and i64 %i.aap, 2147483520          ; 5 uses
  %i.aar = trunc nuw nsw i64 %n.vec783 to i32
  %i.aas = shl nuw nsw i64 %n.vec783, 1           ; 2 uses
  %cmp.n794 = icmp eq i64 %n.vec783, %i.aap
  %min.epilog.iters.check802 = icmp eq i64 %i.aaq, 0
  %n.vec804 = and i64 %i.aap, 2147483632          ; 4 uses
  %i.aat = trunc nuw nsw i64 %n.vec804 to i32
  %i.aau = shl nuw nsw i64 %n.vec804, 1           ; 2 uses
  %cmp.n812 = icmp eq i64 %n.vec804, %i.aap
  br label %iter.check799

iter.check799:                                    ; preds = %.lr.ph362.preheader, %._crit_edge
  %indvar775 = phi i64 [ 0, %.lr.ph362.preheader ], [ %indvar.next776, %._crit_edge ] ; 2 uses
  %indvars.iv437 = phi i64 [ %i.aaj, %.lr.ph362.preheader ], [ %indvars.iv.next438, %._crit_edge ] ; 2 uses
  %.23365 = phi ptr [ %.21.lcssa, %.lr.ph362.preheader ], [ %.lcssa, %._crit_edge ] ; 7 uses
  %i.aav = add nsw i64 %indvars.iv437, %i.aak
  %i.aaw = mul i64 %i.l, %i.aav
  %gep = getelementptr [2 x i8], ptr %invariant.gep367, i64 %i.aaw ; 6 uses
  br i1 %min.iters.check779, label %vec.epilog.scalar.ph800.preheader, label %vector.memcheck773

vector.memcheck773:                               ; preds = %iter.check799
  %i.aax = mul i64 %i.aao, %indvar775
  %i.aay = add i64 %.neg822, %i.aax
  %.23365774 = ptrtoaddr ptr %.23365 to i64
  %i.aaz = add i64 %i.aay, %.23365774
  %i.aba = add i64 %i.aaz, -1
  %diff.check777 = icmp ult i64 %i.aba, 255
  br i1 %diff.check777, label %vec.epilog.scalar.ph800.preheader, label %vector.main.loop.iter.check780

vector.main.loop.iter.check780:                   ; preds = %vector.memcheck773
  br i1 %min.iters.check781, label %vec.epilog.ph803, label %vector.ph782

vector.ph782:                                     ; preds = %vector.main.loop.iter.check780
  %i.abb = getelementptr i8, ptr %gep, i64 %i.aas
  %i.abc = getelementptr i8, ptr %.23365, i64 %i.aas ; 2 uses
  br label %vector.body784

vector.body784:                                   ; preds = %vector.body784, %vector.ph782
  %index785 = phi i64 [ 0, %vector.ph782 ], [ %index.next792, %vector.body784 ] ; 2 uses
  %i.abd = shl i64 %index785, 1                   ; 2 uses
  %next.gep786 = getelementptr i8, ptr %gep, i64 %i.abd ; 4 uses
  %next.gep787 = getelementptr i8, ptr %.23365, i64 %i.abd ; 4 uses
  %i.abe = getelementptr i8, ptr %next.gep786, i64 64
  %i.abf = getelementptr i8, ptr %next.gep786, i64 128
  %i.abg = getelementptr i8, ptr %next.gep786, i64 192
  %wide.load788 = load <32 x i16>, ptr %next.gep786, align 2, !tbaa !821
  %wide.load789 = load <32 x i16>, ptr %i.abe, align 2, !tbaa !821
  %wide.load790 = load <32 x i16>, ptr %i.abf, align 2, !tbaa !821
  %wide.load791 = load <32 x i16>, ptr %i.abg, align 2, !tbaa !821
  %i.abh = getelementptr i8, ptr %next.gep787, i64 64
  %i.abi = getelementptr i8, ptr %next.gep787, i64 128
  %i.abj = getelementptr i8, ptr %next.gep787, i64 192
  store <32 x i16> %wide.load788, ptr %next.gep787, align 2, !tbaa !821
  store <32 x i16> %wide.load789, ptr %i.abh, align 2, !tbaa !821
  store <32 x i16> %wide.load790, ptr %i.abi, align 2, !tbaa !821
  store <32 x i16> %wide.load791, ptr %i.abj, align 2, !tbaa !821
  %index.next792 = add nuw i64 %index785, 128     ; 2 uses
  %i.abk = icmp eq i64 %index.next792, %n.vec783
  br i1 %i.abk, label %middle.block793, label %vector.body784, !llvm.loop !1461

middle.block793:                                  ; preds = %vector.body784
  br i1 %cmp.n794, label %._crit_edge, label %vec.epilog.iter.check801

vec.epilog.iter.check801:                         ; preds = %middle.block793
  br i1 %min.epilog.iters.check802, label %vec.epilog.scalar.ph800.preheader, label %vec.epilog.ph803, !prof !1376

vec.epilog.ph803:                                 ; preds = %vector.main.loop.iter.check780, %vec.epilog.iter.check801
  %vec.epilog.resume.val795 = phi i64 [ %n.vec783, %vec.epilog.iter.check801 ], [ 0, %vector.main.loop.iter.check780 ]
  %i.abl = getelementptr i8, ptr %gep, i64 %i.aau
  %i.abm = getelementptr i8, ptr %.23365, i64 %i.aau ; 2 uses
  br label %vec.epilog.vector.body805

vec.epilog.vector.body805:                        ; preds = %vec.epilog.vector.body805, %vec.epilog.ph803
  %index806 = phi i64 [ %vec.epilog.resume.val795, %vec.epilog.ph803 ], [ %index.next810, %vec.epilog.vector.body805 ] ; 2 uses
  %i.abn = shl i64 %index806, 1                   ; 2 uses
  %next.gep807 = getelementptr i8, ptr %gep, i64 %i.abn
  %next.gep808 = getelementptr i8, ptr %.23365, i64 %i.abn
  %wide.load809 = load <16 x i16>, ptr %next.gep807, align 2, !tbaa !821
  store <16 x i16> %wide.load809, ptr %next.gep808, align 2, !tbaa !821
  %index.next810 = add nuw i64 %index806, 16      ; 2 uses
  %i.abo = icmp eq i64 %index.next810, %n.vec804
  br i1 %i.abo, label %vec.epilog.middle.block811, label %vec.epilog.vector.body805, !llvm.loop !1462

vec.epilog.middle.block811:                       ; preds = %vec.epilog.vector.body805
  br i1 %cmp.n812, label %._crit_edge, label %vec.epilog.scalar.ph800.preheader

vec.epilog.scalar.ph800.preheader:                ; preds = %vector.memcheck773, %iter.check799, %vec.epilog.iter.check801, %vec.epilog.middle.block811
  %.0361.ph = phi i32 [ 0, %iter.check799 ], [ 0, %vector.memcheck773 ], [ %i.aar, %vec.epilog.iter.check801 ], [ %i.aat, %vec.epilog.middle.block811 ] ; 4 uses
  %.0191360.ph = phi ptr [ %gep, %iter.check799 ], [ %gep, %vector.memcheck773 ], [ %i.abb, %vec.epilog.iter.check801 ], [ %i.abl, %vec.epilog.middle.block811 ] ; 2 uses
  %.24359.ph = phi ptr [ %.23365, %iter.check799 ], [ %.23365, %vector.memcheck773 ], [ %i.abc, %vec.epilog.iter.check801 ], [ %i.abm, %vec.epilog.middle.block811 ] ; 2 uses
  %i.abp = sub i32 %5, %.0361.ph
  %xtraiter897 = and i32 %i.abp, 7                ; 2 uses
  %lcmp.mod898.not = icmp eq i32 %xtraiter897, 0
  br i1 %lcmp.mod898.not, label %vec.epilog.scalar.ph800.prol.loopexit, label %vec.epilog.scalar.ph800.prol

vec.epilog.scalar.ph800.prol:                     ; preds = %vec.epilog.scalar.ph800.preheader, %vec.epilog.scalar.ph800.prol
  %.0361.prol = phi i32 [ %i.abt, %vec.epilog.scalar.ph800.prol ], [ %.0361.ph, %vec.epilog.scalar.ph800.preheader ]
  %.0191360.prol = phi ptr [ %i.abs, %vec.epilog.scalar.ph800.prol ], [ %.0191360.ph, %vec.epilog.scalar.ph800.preheader ] ; 2 uses
  %.24359.prol = phi ptr [ %i.abr, %vec.epilog.scalar.ph800.prol ], [ %.24359.ph, %vec.epilog.scalar.ph800.preheader ] ; 2 uses
  %prol.iter899 = phi i32 [ %prol.iter899.next, %vec.epilog.scalar.ph800.prol ], [ 0, %vec.epilog.scalar.ph800.preheader ]
  %i.abq = load i16, ptr %.0191360.prol, align 2, !tbaa !821
  store i16 %i.abq, ptr %.24359.prol, align 2, !tbaa !821
  %i.abr = getelementptr inbounds nuw i8, ptr %.24359.prol, i64 2 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0191360.prol, i64 2 ; 2 uses
  %i.abt = add nuw nsw i32 %.0361.prol, 1         ; 2 uses
  %prol.iter899.next = add i32 %prol.iter899, 1   ; 2 uses
  %prol.iter899.cmp.not = icmp eq i32 %prol.iter899.next, %xtraiter897
  br i1 %prol.iter899.cmp.not, label %vec.epilog.scalar.ph800.prol.loopexit, label %vec.epilog.scalar.ph800.prol, !llvm.loop !1463

vec.epilog.scalar.ph800.prol.loopexit:            ; preds = %vec.epilog.scalar.ph800.prol, %vec.epilog.scalar.ph800.preheader
  %.lcssa831.unr = phi ptr [ poison, %vec.epilog.scalar.ph800.preheader ], [ %i.abr, %vec.epilog.scalar.ph800.prol ]
  %.0361.unr = phi i32 [ %.0361.ph, %vec.epilog.scalar.ph800.preheader ], [ %i.abt, %vec.epilog.scalar.ph800.prol ]
  %.0191360.unr = phi ptr [ %.0191360.ph, %vec.epilog.scalar.ph800.preheader ], [ %i.abs, %vec.epilog.scalar.ph800.prol ]
  %.24359.unr = phi ptr [ %.24359.ph, %vec.epilog.scalar.ph800.preheader ], [ %i.abr, %vec.epilog.scalar.ph800.prol ]
  %i.abu = sub i32 %.0361.ph, %5
  %i.abv = icmp ugt i32 %i.abu, -8
  br i1 %i.abv, label %._crit_edge, label %vec.epilog.scalar.ph800

vec.epilog.scalar.ph800:                          ; preds = %vec.epilog.scalar.ph800.prol.loopexit, %vec.epilog.scalar.ph800
  %.0361 = phi i32 [ %i.acu, %vec.epilog.scalar.ph800 ], [ %.0361.unr, %vec.epilog.scalar.ph800.prol.loopexit ]
  %.0191360 = phi ptr [ %i.act, %vec.epilog.scalar.ph800 ], [ %.0191360.unr, %vec.epilog.scalar.ph800.prol.loopexit ] ; 9 uses
  %.24359 = phi ptr [ %i.acs, %vec.epilog.scalar.ph800 ], [ %.24359.unr, %vec.epilog.scalar.ph800.prol.loopexit ] ; 9 uses
  %i.abw = load i16, ptr %.0191360, align 2, !tbaa !821
  store i16 %i.abw, ptr %.24359, align 2, !tbaa !821
  %i.abx = getelementptr inbounds nuw i8, ptr %.24359, i64 2
  %i.aby = getelementptr inbounds nuw i8, ptr %.0191360, i64 2
  %i.abz = load i16, ptr %i.aby, align 2, !tbaa !821
  store i16 %i.abz, ptr %i.abx, align 2, !tbaa !821
  %i.aca = getelementptr inbounds nuw i8, ptr %.24359, i64 4
  %i.acb = getelementptr inbounds nuw i8, ptr %.0191360, i64 4
  %i.acc = load i16, ptr %i.acb, align 2, !tbaa !821
  store i16 %i.acc, ptr %i.aca, align 2, !tbaa !821
  %i.acd = getelementptr inbounds nuw i8, ptr %.24359, i64 6
  %i.ace = getelementptr inbounds nuw i8, ptr %.0191360, i64 6
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !821
  store i16 %i.acf, ptr %i.acd, align 2, !tbaa !821
  %i.acg = getelementptr inbounds nuw i8, ptr %.24359, i64 8
  %i.ach = getelementptr inbounds nuw i8, ptr %.0191360, i64 8
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !821
  store i16 %i.aci, ptr %i.acg, align 2, !tbaa !821
  %i.acj = getelementptr inbounds nuw i8, ptr %.24359, i64 10
  %i.ack = getelementptr inbounds nuw i8, ptr %.0191360, i64 10
  %i.acl = load i16, ptr %i.ack, align 2, !tbaa !821
  store i16 %i.acl, ptr %i.acj, align 2, !tbaa !821
  %i.acm = getelementptr inbounds nuw i8, ptr %.24359, i64 12
  %i.acn = getelementptr inbounds nuw i8, ptr %.0191360, i64 12
  %i.aco = load i16, ptr %i.acn, align 2, !tbaa !821
  store i16 %i.aco, ptr %i.acm, align 2, !tbaa !821
  %i.acp = getelementptr inbounds nuw i8, ptr %.24359, i64 14
  %i.acq = getelementptr inbounds nuw i8, ptr %.0191360, i64 14
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !821
  store i16 %i.acr, ptr %i.acp, align 2, !tbaa !821
  %i.acs = getelementptr inbounds nuw i8, ptr %.24359, i64 16 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.0191360, i64 16
  %i.acu = add nuw nsw i32 %.0361, 8              ; 2 uses
  %exitcond436.not.7 = icmp eq i32 %i.acu, %5
  br i1 %exitcond436.not.7, label %._crit_edge, label %vec.epilog.scalar.ph800, !llvm.loop !1464

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph800.prol.loopexit, %vec.epilog.scalar.ph800, %vec.epilog.middle.block811, %middle.block793
  %.lcssa = phi ptr [ %i.abm, %vec.epilog.middle.block811 ], [ %i.abc, %middle.block793 ], [ %.lcssa831.unr, %vec.epilog.scalar.ph800.prol.loopexit ], [ %i.acs, %vec.epilog.scalar.ph800 ]
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count
  %indvar.next776 = add i64 %indvar775, 1
  br i1 %exitcond440.not, label %.loopexit, label %iter.check799, !llvm.loop !1465

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %.lr.ph366, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn37transpose_pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit695

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !88
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 61 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.n = icmp sgt i32 %3, 15
  br i1 %i.n, label %.lr.ph754, label %.preheader722

.lr.ph754:                                        ; preds = %bb.f
  %i.o = sext i32 %4 to i64
  %i.p = mul i64 %i.l, %i.o
  %i.q = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.r = shufflevector <4 x i32> %i.q, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.s = icmp ne <4 x i32> %i.r, <i32 16, i32 8, i32 4, i32 1>
  %i.t = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.v = icmp slt <4 x i32> %i.u, <i32 16, i32 8, i32 4, i32 1>
  %.idx604 = shl i64 %i.l, 5
  %.idx603 = shl i64 %i.l, 4
  %.idx602 = shl i64 %i.l, 3
  %i.w = zext nneg i32 %3 to i64
  %i.x = sext i32 %2 to i64
  %i.y = sext i32 %i.c to i64
  %i.z = or <4 x i1> %i.s, %i.v                   ; 4 uses
  %i.aa = extractelement <4 x i1> %i.z, i64 0
  %i.ab = extractelement <4 x i1> %i.z, i64 1
  %i.ac = extractelement <4 x i1> %i.z, i64 2
  %i.ad = extractelement <4 x i1> %i.z, i64 3
  %i.ae = add i32 %5, -1
  %xtraiter = and i32 %5, 7                       ; 3 uses
  %i.af = icmp ult i32 %i.ae, 7
  %unroll_iter = and i32 %5, -8
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1145 = icmp ne i32 %xtraiter, 0
  br label %bb.g

.preheader722.loopexit:                           ; preds = %.loopexit724
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader722

.preheader722:                                    ; preds = %.preheader722.loopexit, %bb.f
  %.0544.lcssa = phi i32 [ 0, %bb.f ], [ %i.ag, %.preheader722.loopexit ] ; 3 uses
  %.0537.lcssa = phi ptr [ %i.m, %bb.f ], [ %.8, %.preheader722.loopexit ] ; 2 uses
  %i.ah = or disjoint i32 %.0544.lcssa, 7
  %i.ai = icmp slt i32 %i.ah, %3
  br i1 %i.ai, label %.lr.ph782, label %.preheader713

.lr.ph782:                                        ; preds = %.preheader722
  %i.aj = sext i32 %4 to i64
  %i.ak = mul i64 %i.l, %i.aj
  %i.al = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.an = icmp ne <4 x i32> %i.am, <i32 16, i32 8, i32 4, i32 1>
  %i.ao = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.ap = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aq = icmp slt <4 x i32> %i.ap, <i32 16, i32 8, i32 4, i32 1>
  %.idx601 = shl i64 %i.l, 5
  %.idx600 = shl i64 %i.l, 4
  %.idx599 = shl i64 %i.l, 3
  %i.ar = zext nneg i32 %.0544.lcssa to i64
  %i.as = sext i32 %3 to i64
  %i.at = sext i32 %2 to i64
  %i.au = sext i32 %i.c to i64
  %i.av = or <4 x i1> %i.an, %i.aq                ; 4 uses
  %invariant.op = add nsw i64 %i.as, -7
  %i.aw = extractelement <4 x i1> %i.av, i64 0
  %i.ax = extractelement <4 x i1> %i.av, i64 1
  %i.ay = extractelement <4 x i1> %i.av, i64 2
  %i.az = extractelement <4 x i1> %i.av, i64 3
  %i.ba = add i32 %5, -1
  %xtraiter1146 = and i32 %5, 7                   ; 3 uses
  %i.bb = icmp ult i32 %i.ba, 7
  %unroll_iter1151 = and i32 %5, -8
  %lcmp.mod1148.not = icmp eq i32 %xtraiter1146, 0
  %lcmp.mod1150 = icmp ne i32 %xtraiter1146, 0
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph754, %.loopexit724
  %indvars.iv = phi i64 [ 0, %.lr.ph754 ], [ %indvars.iv.next, %.loopexit724 ] ; 2 uses
  %.0537753 = phi ptr [ %i.m, %.lr.ph754 ], [ %.8, %.loopexit724 ] ; 6 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.p
  %i.be = add nsw i64 %indvars.iv, %i.x
  %i.bf = mul nsw i64 %i.be, %i.y
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bf ; 5 uses
  br i1 %i.aa, label %.loopexit730, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.1538733 = phi ptr [ %i.eh, %.lr.ph ], [ %.0537753, %bb.g ] ; 9 uses
  %.0559732 = phi ptr [ %i.ei, %.lr.ph ], [ %i.bg, %bb.g ] ; 9 uses
  %.0566731 = phi i32 [ %i.ej, %.lr.ph ], [ 0, %bb.g ]
  %i.bh = load <8 x i64>, ptr %.0559732, align 1, !tbaa !116 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0559732, i64 64
  %i.bj = load <8 x i64>, ptr %i.bi, align 1, !tbaa !116 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0559732, i64 128
  %i.bl = load <8 x i64>, ptr %i.bk, align 1, !tbaa !116 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0559732, i64 192
  %i.bn = load <8 x i64>, ptr %i.bm, align 1, !tbaa !116 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0559732, i64 256
  %i.bp = load <8 x i64>, ptr %i.bo, align 1, !tbaa !116 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0559732, i64 320
  %i.br = load <8 x i64>, ptr %i.bq, align 1, !tbaa !116 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0559732, i64 384
  %i.bt = load <8 x i64>, ptr %i.bs, align 1, !tbaa !116 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0559732, i64 448
  %i.bv = load <8 x i64>, ptr %i.bu, align 1, !tbaa !116 ; 2 uses
  %i.bw = shufflevector <8 x i64> %i.bh, <8 x i64> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bx = shufflevector <8 x i64> %i.bh, <8 x i64> %i.bj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.by = shufflevector <8 x i64> %i.bl, <8 x i64> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bz = shufflevector <8 x i64> %i.bl, <8 x i64> %i.bn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ca = shufflevector <8 x i64> %i.bp, <8 x i64> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cb = shufflevector <8 x i64> %i.bp, <8 x i64> %i.br, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.cc = shufflevector <8 x i64> %i.bt, <8 x i64> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cd = shufflevector <8 x i64> %i.bt, <8 x i64> %i.bv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ce = bitcast <8 x i64> %i.bw to <32 x i16>   ; 2 uses
  %i.cf = bitcast <8 x i64> %i.bx to <32 x i16>   ; 2 uses
  %i.cg = shufflevector <32 x i16> %i.ce, <32 x i16> %i.cf, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %i.ch = shufflevector <32 x i16> %i.ce, <32 x i16> %i.cf, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ci = bitcast <8 x i64> %i.by to <32 x i16>   ; 2 uses
  %i.cj = bitcast <8 x i64> %i.bz to <32 x i16>   ; 2 uses
  %i.ck = shufflevector <32 x i16> %i.ci, <32 x i16> %i.cj, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %i.cl = shufflevector <32 x i16> %i.ci, <32 x i16> %i.cj, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.cm = bitcast <8 x i64> %i.ca to <32 x i16>   ; 2 uses
  %i.cn = bitcast <8 x i64> %i.cb to <32 x i16>   ; 2 uses
  %i.co = shufflevector <32 x i16> %i.cm, <32 x i16> %i.cn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %i.cp = shufflevector <32 x i16> %i.cm, <32 x i16> %i.cn, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.cq = bitcast <8 x i64> %i.cc to <32 x i16>   ; 2 uses
  %i.cr = bitcast <8 x i64> %i.cd to <32 x i16>   ; 2 uses
  %i.cs = shufflevector <32 x i16> %i.cq, <32 x i16> %i.cr, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %i.ct = shufflevector <32 x i16> %i.cq, <32 x i16> %i.cr, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.cu = bitcast <32 x i16> %i.cg to <16 x i32>  ; 2 uses
  %i.cv = bitcast <32 x i16> %i.ck to <16 x i32>  ; 2 uses
  %i.cw = shufflevector <16 x i32> %i.cu, <16 x i32> %i.cv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cx = shufflevector <16 x i32> %i.cu, <16 x i32> %i.cv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cy = bitcast <32 x i16> %i.ch to <16 x i32>  ; 2 uses
  %i.cz = bitcast <32 x i16> %i.cl to <16 x i32>  ; 2 uses
  %i.da = shufflevector <16 x i32> %i.cy, <16 x i32> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.db = shufflevector <16 x i32> %i.cy, <16 x i32> %i.cz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dc = bitcast <32 x i16> %i.co to <16 x i32>  ; 2 uses
  %i.dd = bitcast <32 x i16> %i.cs to <16 x i32>  ; 2 uses
  %i.de = shufflevector <16 x i32> %i.dc, <16 x i32> %i.dd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.df = shufflevector <16 x i32> %i.dc, <16 x i32> %i.dd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dg = bitcast <32 x i16> %i.cp to <16 x i32>  ; 2 uses
  %i.dh = bitcast <32 x i16> %i.ct to <16 x i32>  ; 2 uses
  %i.di = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dj = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dh, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dk = shufflevector <16 x i32> %i.cw, <16 x i32> %i.de, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dl = shufflevector <16 x i32> %i.cw, <16 x i32> %i.de, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.dm = shufflevector <16 x i32> %i.cx, <16 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.cx, <16 x i32> %i.df, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i32> %i.da, <16 x i32> %i.di, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dp = shufflevector <16 x i32> %i.da, <16 x i32> %i.di, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x i32> %i.db, <16 x i32> %i.dj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.dr = shufflevector <16 x i32> %i.db, <16 x i32> %i.dj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ds = shufflevector <16 x i32> %i.dk, <16 x i32> %i.dl, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27>
  %i.dt = shufflevector <16 x i32> %i.dm, <16 x i32> %i.dn, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27>
  %i.du = shufflevector <16 x i32> %i.do, <16 x i32> %i.dp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27>
  %i.dv = shufflevector <16 x i32> %i.dq, <16 x i32> %i.dr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27>
  %i.dw = shufflevector <16 x i32> %i.dk, <16 x i32> %i.dl, <16 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  %i.dx = shufflevector <16 x i32> %i.dm, <16 x i32> %i.dn, <16 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  %i.dy = shufflevector <16 x i32> %i.do, <16 x i32> %i.dp, <16 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  %i.dz = shufflevector <16 x i32> %i.dq, <16 x i32> %i.dr, <16 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <16 x i32> %i.ds, ptr %.1538733, align 1, !tbaa !116
  %i.ea = getelementptr inbounds nuw i8, ptr %.1538733, i64 64
end_hunk_16
begin_hunk_17_@_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.re, label %.loopexit697, label %.lr.ph834.preheader

.lr.ph834.preheader:                              ; preds = %.loopexit699
  br i1 %i.rg, label %.lr.ph834.epil.preheader, label %.lr.ph834

.lr.ph834:                                        ; preds = %.lr.ph834.preheader, %.lr.ph834
  %.34832 = phi ptr [ %i.zf, %.lr.ph834 ], [ %.27837, %.lr.ph834.preheader ] ; 9 uses
  %.6557831 = phi ptr [ %i.zg, %.lr.ph834 ], [ %i.wl, %.lr.ph834.preheader ] ; 3 uses
  %niter1166 = phi i32 [ %niter1166.next.3, %.lr.ph834 ], [ 0, %.lr.ph834.preheader ]
  %i.yj = load i16, ptr %.6557831, align 2, !tbaa !821
  store i16 %i.yj, ptr %.34832, align 2, !tbaa !821
  %i.yk = getelementptr inbounds nuw i8, ptr %.6557831, i64 2
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !821
  %i.ym = getelementptr inbounds nuw i8, ptr %.34832, i64 2
  store i16 %i.yl, ptr %i.ym, align 2, !tbaa !821
  %i.yn = getelementptr inbounds nuw i8, ptr %.34832, i64 4
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %.6557831, i64 %i.l ; 3 uses
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !821
  store i16 %i.yp, ptr %i.yn, align 2, !tbaa !821
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 2
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !821
  %i.ys = getelementptr inbounds nuw i8, ptr %.34832, i64 6
  store i16 %i.yr, ptr %i.ys, align 2, !tbaa !821
  %i.yt = getelementptr inbounds nuw i8, ptr %.34832, i64 8
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.yo, i64 %i.l ; 3 uses
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !821
  store i16 %i.yv, ptr %i.yt, align 2, !tbaa !821
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !821
  %i.yy = getelementptr inbounds nuw i8, ptr %.34832, i64 10
  store i16 %i.yx, ptr %i.yy, align 2, !tbaa !821
  %i.yz = getelementptr inbounds nuw i8, ptr %.34832, i64 12
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.yu, i64 %i.l ; 3 uses
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !821
  store i16 %i.zb, ptr %i.yz, align 2, !tbaa !821
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !821
  %i.ze = getelementptr inbounds nuw i8, ptr %.34832, i64 14
  store i16 %i.zd, ptr %i.ze, align 2, !tbaa !821
  %i.zf = getelementptr inbounds nuw i8, ptr %.34832, i64 16 ; 3 uses
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %i.za, i64 %i.l ; 2 uses
  %niter1166.next.3 = add i32 %niter1166, 4       ; 2 uses
  %niter1166.ncmp.3 = icmp eq i32 %niter1166.next.3, %unroll_iter1165
  br i1 %niter1166.ncmp.3, label %.loopexit697.loopexit.unr-lcssa, label %.lr.ph834, !llvm.loop !1487

.loopexit697.loopexit.unr-lcssa:                  ; preds = %.lr.ph834
  br i1 %lcmp.mod1162.not, label %.loopexit697, label %.lr.ph834.epil.preheader

.lr.ph834.epil.preheader:                         ; preds = %.loopexit697.loopexit.unr-lcssa, %.lr.ph834.preheader
  %.34832.epil.init = phi ptr [ %.27837, %.lr.ph834.preheader ], [ %i.zf, %.loopexit697.loopexit.unr-lcssa ]
  %.6557831.epil.init = phi ptr [ %i.wl, %.lr.ph834.preheader ], [ %i.zg, %.loopexit697.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1164)
  br label %.lr.ph834.epil

.lr.ph834.epil:                                   ; preds = %.lr.ph834.epil, %.lr.ph834.epil.preheader
  %.34832.epil = phi ptr [ %i.zl, %.lr.ph834.epil ], [ %.34832.epil.init, %.lr.ph834.epil.preheader ] ; 3 uses
  %.6557831.epil = phi ptr [ %i.zm, %.lr.ph834.epil ], [ %.6557831.epil.init, %.lr.ph834.epil.preheader ] ; 3 uses
  %epil.iter1161 = phi i32 [ %epil.iter1161.next, %.lr.ph834.epil ], [ 0, %.lr.ph834.epil.preheader ]
  %i.zh = load i16, ptr %.6557831.epil, align 2, !tbaa !821
  store i16 %i.zh, ptr %.34832.epil, align 2, !tbaa !821
  %i.zi = getelementptr inbounds nuw i8, ptr %.6557831.epil, i64 2
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !821
  %i.zk = getelementptr inbounds nuw i8, ptr %.34832.epil, i64 2
  store i16 %i.zj, ptr %i.zk, align 2, !tbaa !821
  %i.zl = getelementptr inbounds nuw i8, ptr %.34832.epil, i64 4 ; 2 uses
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %.6557831.epil, i64 %i.l
  %epil.iter1161.next = add i32 %epil.iter1161, 1 ; 2 uses
  %epil.iter1161.cmp.not = icmp eq i32 %epil.iter1161.next, %xtraiter1160
  br i1 %epil.iter1161.cmp.not, label %.loopexit697, label %.lr.ph834.epil, !llvm.loop !1488

.loopexit697:                                     ; preds = %.lr.ph816, %.lr.ph822, %.lr.ph828, %.loopexit697.loopexit.unr-lcssa, %.lr.ph834.epil, %.loopexit699
  %.35 = phi ptr [ %.27837, %.loopexit699 ], [ %i.zl, %.lr.ph834.epil ], [ %i.ye, %.lr.ph828 ], [ %i.xd, %.lr.ph822 ], [ %i.zf, %.loopexit697.loopexit.unr-lcssa ], [ %i.ws, %.lr.ph816 ] ; 2 uses
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 2 ; 3 uses
  %i.zn = icmp slt i64 %indvars.iv.next975, %invariant.op1075
  br i1 %i.zn, label %bb.j, label %.preheader694.loopexit, !llvm.loop !1489

bb.k:                                             ; preds = %.lr.ph866, %.loopexit
  %indvars.iv978 = phi i64 [ %i.vx, %.lr.ph866 ], [ %indvars.iv.next979, %.loopexit ] ; 2 uses
  %.36865 = phi ptr [ %.27.lcssa, %.lr.ph866 ], [ %.44, %.loopexit ] ; 6 uses
  %i.zo = load ptr, ptr %0, align 8, !tbaa !18
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.vq
  %i.zq = add nsw i64 %indvars.iv978, %i.vy
  %i.zr = mul nsw i64 %i.zq, %i.vz
  %i.zs = getelementptr inbounds [2 x i8], ptr %i.zp, i64 %i.zr ; 5 uses
  br i1 %i.wb, label %.loopexit693, label %.lr.ph844

.lr.ph844:                                        ; preds = %bb.k, %.lr.ph844
  %.0533843 = phi i32 [ %i.zw, %.lr.ph844 ], [ 0, %bb.k ]
  %.0534842 = phi ptr [ %i.zv, %.lr.ph844 ], [ %i.zs, %bb.k ] ; 2 uses
  %.37841 = phi ptr [ %i.zu, %.lr.ph844 ], [ %.36865, %bb.k ] ; 2 uses
  %i.zt = load <4 x i64>, ptr %.0534842, align 1, !tbaa !116
  store <4 x i64> %i.zt, ptr %.37841, align 1, !tbaa !116
  %i.zu = getelementptr inbounds nuw i8, ptr %.37841, i64 32 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.0534842, i64 %.idx592
  %i.zw = add nuw nsw i32 %.0533843, 16           ; 2 uses
  %i.zx = or disjoint i32 %i.zw, 15
  %i.zy = icmp slt i32 %i.zx, %5
  br i1 %i.zy, label %.lr.ph844, label %.loopexit, !llvm.loop !1490

.loopexit693:                                     ; preds = %bb.k
  br i1 %i.wc, label %.loopexit691, label %.lr.ph850

.lr.ph850:                                        ; preds = %.loopexit693, %.lr.ph850
  %.0532849 = phi i32 [ %i.aac, %.lr.ph850 ], [ 0, %.loopexit693 ]
  %.2848 = phi ptr [ %i.aab, %.lr.ph850 ], [ %i.zs, %.loopexit693 ] ; 2 uses
  %.39847 = phi ptr [ %i.aaa, %.lr.ph850 ], [ %.36865, %.loopexit693 ] ; 2 uses
  %i.zz = load <2 x i64>, ptr %.2848, align 1, !tbaa !116
  store <2 x i64> %i.zz, ptr %.39847, align 1, !tbaa !116
  %i.aaa = getelementptr inbounds nuw i8, ptr %.39847, i64 16 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.2848, i64 %.idx591
  %i.aac = add nuw nsw i32 %.0532849, 8           ; 2 uses
  %i.aad = or disjoint i32 %i.aac, 7
  %i.aae = icmp slt i32 %i.aad, %5
  br i1 %i.aae, label %.lr.ph850, label %.loopexit, !llvm.loop !1491

.loopexit691:                                     ; preds = %.loopexit693
  br i1 %i.wd, label %.loopexit689, label %.lr.ph856

.lr.ph856:                                        ; preds = %.loopexit691, %.lr.ph856
  %.0531855 = phi i32 [ %i.aai, %.lr.ph856 ], [ 0, %.loopexit691 ]
  %.4854 = phi ptr [ %i.aah, %.lr.ph856 ], [ %i.zs, %.loopexit691 ] ; 2 uses
  %.41853 = phi ptr [ %i.aag, %.lr.ph856 ], [ %.36865, %.loopexit691 ] ; 2 uses
  %i.aaf = load i64, ptr %.4854, align 1, !tbaa !116
  store i64 %i.aaf, ptr %.41853, align 1, !tbaa !116
  %i.aag = getelementptr inbounds nuw i8, ptr %.41853, i64 8 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.4854, i64 %.idx
  %i.aai = add nuw nsw i32 %.0531855, 4           ; 2 uses
  %i.aaj = or disjoint i32 %i.aai, 3
  %i.aak = icmp slt i32 %i.aaj, %5
  br i1 %i.aak, label %.lr.ph856, label %.loopexit, !llvm.loop !1492

.loopexit689:                                     ; preds = %.loopexit691
  br i1 %i.we, label %.loopexit, label %.lr.ph862.preheader

.lr.ph862.preheader:                              ; preds = %.loopexit689
  br i1 %i.wg, label %.lr.ph862.epil.preheader, label %.lr.ph862

.lr.ph862:                                        ; preds = %.lr.ph862.preheader, %.lr.ph862
  %.6860 = phi ptr [ %i.abi, %.lr.ph862 ], [ %i.zs, %.lr.ph862.preheader ] ; 2 uses
  %.43859 = phi ptr [ %i.abh, %.lr.ph862 ], [ %.36865, %.lr.ph862.preheader ] ; 9 uses
  %niter1173 = phi i32 [ %niter1173.next.7, %.lr.ph862 ], [ 0, %.lr.ph862.preheader ]
  %i.aal = load i16, ptr %.6860, align 2, !tbaa !821
  store i16 %i.aal, ptr %.43859, align 2, !tbaa !821
  %i.aam = getelementptr inbounds nuw i8, ptr %.43859, i64 2
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.6860, i64 %i.l ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !821
  store i16 %i.aao, ptr %i.aam, align 2, !tbaa !821
  %i.aap = getelementptr inbounds nuw i8, ptr %.43859, i64 4
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.aan, i64 %i.l ; 2 uses
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !821
  store i16 %i.aar, ptr %i.aap, align 2, !tbaa !821
  %i.aas = getelementptr inbounds nuw i8, ptr %.43859, i64 6
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.aaq, i64 %i.l ; 2 uses
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !821
  store i16 %i.aau, ptr %i.aas, align 2, !tbaa !821
  %i.aav = getelementptr inbounds nuw i8, ptr %.43859, i64 8
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.l ; 2 uses
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !821
  store i16 %i.aax, ptr %i.aav, align 2, !tbaa !821
  %i.aay = getelementptr inbounds nuw i8, ptr %.43859, i64 10
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.l ; 2 uses
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !821
  store i16 %i.aba, ptr %i.aay, align 2, !tbaa !821
  %i.abb = getelementptr inbounds nuw i8, ptr %.43859, i64 12
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %i.l ; 2 uses
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !821
  store i16 %i.abd, ptr %i.abb, align 2, !tbaa !821
  %i.abe = getelementptr inbounds nuw i8, ptr %.43859, i64 14
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.abc, i64 %i.l ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !821
  store i16 %i.abg, ptr %i.abe, align 2, !tbaa !821
  %i.abh = getelementptr inbounds nuw i8, ptr %.43859, i64 16 ; 3 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.abf, i64 %i.l ; 2 uses
  %niter1173.next.7 = add i32 %niter1173, 8       ; 2 uses
  %niter1173.ncmp.7 = icmp eq i32 %niter1173.next.7, %unroll_iter1172
  br i1 %niter1173.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph862, !llvm.loop !1493

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph862
  br i1 %lcmp.mod1169.not, label %.loopexit, label %.lr.ph862.epil.preheader

.lr.ph862.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph862.preheader
  %.6860.epil.init = phi ptr [ %i.zs, %.lr.ph862.preheader ], [ %i.abi, %.loopexit.loopexit.unr-lcssa ]
  %.43859.epil.init = phi ptr [ %.36865, %.lr.ph862.preheader ], [ %i.abh, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1171)
  br label %.lr.ph862.epil

.lr.ph862.epil:                                   ; preds = %.lr.ph862.epil, %.lr.ph862.epil.preheader
  %.6860.epil = phi ptr [ %i.abl, %.lr.ph862.epil ], [ %.6860.epil.init, %.lr.ph862.epil.preheader ] ; 2 uses
  %.43859.epil = phi ptr [ %i.abk, %.lr.ph862.epil ], [ %.43859.epil.init, %.lr.ph862.epil.preheader ] ; 2 uses
  %epil.iter1168 = phi i32 [ %epil.iter1168.next, %.lr.ph862.epil ], [ 0, %.lr.ph862.epil.preheader ]
  %i.abj = load i16, ptr %.6860.epil, align 2, !tbaa !821
  store i16 %i.abj, ptr %.43859.epil, align 2, !tbaa !821
  %i.abk = getelementptr inbounds nuw i8, ptr %.43859.epil, i64 2 ; 2 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %.6860.epil, i64 %i.l
  %epil.iter1168.next = add i32 %epil.iter1168, 1 ; 2 uses
  %epil.iter1168.cmp.not = icmp eq i32 %epil.iter1168.next, %xtraiter1167
  br i1 %epil.iter1168.cmp.not, label %.loopexit, label %.lr.ph862.epil, !llvm.loop !1494

.loopexit:                                        ; preds = %.lr.ph844, %.lr.ph850, %.lr.ph856, %.loopexit.loopexit.unr-lcssa, %.lr.ph862.epil, %.loopexit689
  %.44 = phi ptr [ %.36865, %.loopexit689 ], [ %i.abk, %.lr.ph862.epil ], [ %i.aag, %.lr.ph856 ], [ %i.aaa, %.lr.ph850 ], [ %i.abh, %.loopexit.loopexit.unr-lcssa ], [ %i.zu, %.lr.ph844 ]
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 1 ; 2 uses
  %exitcond981.not = icmp eq i64 %indvars.iv.next979, %wide.trip.count
  br i1 %exitcond981.not, label %.loopexit695, label %bb.k, !llvm.loop !1495

.loopexit695:                                     ; preds = %.loopexit, %.preheader694, %bb.b
  ret void
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare void @_ZN4ncnn37transpose_pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn37transpose_pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %20 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not127 = icmp sgt i32 %i.k, %i.j
  br i1 %.not127, label %._crit_edge130, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.054128 = phi i32 [ %i.k, %.lr.ph ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bb = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %i.bc = sdiv i32 %.054128, %i.bb
  %i.bd = srem i32 %.054128, %i.bb
  %i.be = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.bc                ; 4 uses
  %i.bg = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.bh = mul nsw i32 %i.bg, %i.bd                ; 4 uses
  %i.bi = load i32, ptr %6, align 4, !tbaa !45
  %i.bj = sub nsw i32 %i.bi, %i.bf
  %.sroa.speculated123 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bj) ; 2 uses
  %i.bk = load i32, ptr %7, align 4, !tbaa !45
  %i.bl = sub nsw i32 %i.bk, %i.bh
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bl) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  %i.bm = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %.loopexit.split-lp

.noexc84:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.bn = load i32, ptr %i.l, align 4, !tbaa !88, !noalias !1496 ; 2 uses
  %i.bo = load i32, ptr %i.m, align 8, !tbaa !90, !noalias !1496 ; 2 uses
  %i.bp = load i32, ptr %i.n, align 4, !tbaa !469, !noalias !1496
  %i.bq = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1496
  %i.br = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1496
  %i.bs = sext i32 %i.bm to i64
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !59, !noalias !1496 ; 4 uses
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.q, align 8, !tbaa !60, !noalias !1496
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !17, !noalias !1496
  store ptr %i.bw, ptr %20, align 8, !tbaa !18
  store ptr null, ptr %i.s, align 8, !tbaa !11
  store i64 %i.bu, ptr %i.t, align 8, !tbaa !59
  store i32 %i.bx, ptr %i.u, align 8, !tbaa !60
  store ptr %i.by, ptr %i.v, align 8, !tbaa !17
  store i32 %i.bn, ptr %i.x, align 4, !tbaa !88
  store i32 %i.bo, ptr %i.y, align 8, !tbaa !90
  store i32 1, ptr %i.z, align 4, !tbaa !469
  store i32 %i.bp, ptr %i.aa, align 8, !tbaa !51
  %i.bz = sext i32 %i.bn to i64
  %i.ca = sext i32 %i.bo to i64
  %i.cb = mul nsw i64 %i.ca, %i.bz                ; 2 uses
  %i.cc = mul i64 %i.bu, %i.cb
  %i.cd = add i64 %i.cc, 15
  %i.ce = and i64 %i.cd, -16
  %i.cf = udiv i64 %i.ce, %i.bu
  store i64 %i.cf, ptr %i.ab, align 8, !tbaa !20
  %i.cg = load i32, ptr %i.ac, align 8, !tbaa !87, !noalias !1496 ; 2 uses
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.w, align 8, !tbaa !87, !alias.scope !1496
  %i.ci = icmp eq i32 %i.cg, 4
  br i1 %i.ci, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc84
  store i64 %i.cb, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1496
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %.noexc84, %bb.d
  %i.cj = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %_ZN4ncnn3MatD2Ev.exit58.preheader, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58.preheader:                ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit58

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit55
  %.val.pre = load ptr, ptr %20, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ncnn3Mat7channelEi.exit
  %.val = phi ptr [ %.val.pre, %._crit_edge.loopexit ], [ %i.bw, %_ZN4ncnn3Mat7channelEi.exit ]
  %i.cl = load i32, ptr %15, align 4, !tbaa !45
  %i.cm = load float, ptr %16, align 4, !tbaa !68
  %i.cn = load float, ptr %17, align 4, !tbaa !68
  %i.co = load i32, ptr %18, align 4, !tbaa !45
  %i.cp = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %.val, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.cl, i32 noundef %i.bf, i32 noundef %.sroa.speculated123, i32 noundef %i.bh, i32 noundef %.sroa.speculated119, float noundef nofpclass(nan inf) %i.cm, float noundef nofpclass(nan inf) %i.cn, i32 noundef %i.co, i32 noundef %i.cp)
  %i.cq = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %.not.i71 = icmp eq ptr %i.cq, null
  br i1 %.not.i71, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit55
  %i.cr = phi i32 [ %i.ey, %_ZN4ncnn3MatD2Ev.exit55 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.cs = phi i32 [ %i.fa, %_ZN4ncnn3MatD2Ev.exit55 ], [ %i.cj, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0126 = phi i32 [ %i.ez, %_ZN4ncnn3MatD2Ev.exit55 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ct = sub nsw i32 %i.cs, %.0126
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  %i.cu = load i32, ptr %4, align 4, !tbaa !45
  %i.cv = sdiv i32 %i.bf, %i.cu
  %i.cw = load i32, ptr %i.ad, align 4, !tbaa !88, !noalias !1499 ; 2 uses
  %i.cx = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1499
  %i.cy = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1499
  %i.cz = sext i32 %i.cv to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = load i64, ptr %i.af, align 8, !tbaa !59, !noalias !1499 ; 3 uses
end_hunk_17
begin_hunk_18_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %i.juv = extractelement <2 x i64> %i.juu, i64 0
  store i64 %i.juv, ptr %.763615516, align 1, !tbaa !116
  br label %bb.yj

bb.yg:                                            ; preds = %bb.ye
  switch i32 %i.b, label %bb.yj [
    i32 4, label %bb.yh
    i32 1, label %bb.yi
  ]

bb.yh:                                            ; preds = %bb.yg
  %i.juw = extractelement <2 x i64> %i.juu, i64 0
  store i64 %i.juw, ptr %.763615516, align 1, !tbaa !116
  br label %bb.yj

bb.yi:                                            ; preds = %bb.yg
  %.sroa.0.0.extract.trunc = extractelement <8 x i16> %i.jut, i64 0
  %.sroa.4.0.extract.trunc = extractelement <8 x i16> %i.jut, i64 1
  %.sroa.5.0.extract.trunc = extractelement <8 x i16> %i.jut, i64 2
  %.sroa.6.0.extract.trunc = extractelement <8 x i16> %i.jut, i64 3
  store i16 %.sroa.0.0.extract.trunc, ptr %.763615516, align 2, !tbaa !821
  %i.jux = getelementptr inbounds nuw [2 x i8], ptr %.763615516, i64 %i.k
  store i16 %.sroa.4.0.extract.trunc, ptr %i.jux, align 2, !tbaa !821
  %i.juy = getelementptr inbounds nuw i8, ptr %.763615516, i64 %.idx6771
  store i16 %.sroa.5.0.extract.trunc, ptr %i.juy, align 2, !tbaa !821
  %i.juz = getelementptr inbounds nuw i8, ptr %.763615516, i64 %.idx6772
  store i16 %.sroa.6.0.extract.trunc, ptr %i.juz, align 2, !tbaa !821
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yh, %bb.yg, %bb.yi, %bb.yf
  %i.jva = getelementptr inbounds nuw i8, ptr %.763615516, i64 %.idx6768
  br label %bb.yl

bb.yk:                                            ; preds = %bb.yd
  %i.jvb = extractelement <2 x i64> %i.juu, i64 0
  store i64 %i.jvb, ptr %.763615516, align 1, !tbaa !116
  %i.jvc = getelementptr inbounds nuw i8, ptr %.763615516, i64 8
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yj, %bb.yk, %bb.yb, %bb.yc
  %.96363 = phi ptr [ %.763615516, %bb.yb ], [ %.763615516, %bb.yc ], [ %i.jva, %bb.yj ], [ %i.jvc, %bb.yk ] ; 2 uses
  %.6 = phi ptr [ %i.jup, %bb.yb ], [ %i.juq, %bb.yc ], [ %.55517, %bb.yj ], [ %.55517, %bb.yk ] ; 2 uses
  %i.jvd = add nuw nsw i32 %.25518, 4             ; 3 uses
  %i.jve = or disjoint i32 %i.jvd, 3
  %i.jvf = icmp slt i32 %i.jve, %6
  br i1 %i.jvf, label %.lr.ph5519, label %.preheader5184, !llvm.loop !1610

.preheader:                                       ; preds = %bb.yv, %.preheader5184
  %.286432.lcssa = phi ptr [ %.276431.lcssa, %.preheader5184 ], [ %i.jvi, %bb.yv ] ; 2 uses
  %.101.lcssa = phi ptr [ %.99.lcssa, %.preheader5184 ], [ %.102, %bb.yv ] ; 2 uses
  %.106364.lcssa = phi ptr [ %.76361.lcssa, %.preheader5184 ], [ %.12, %bb.yv ]
  %.7.lcssa = phi ptr [ %.5.lcssa, %.preheader5184 ], [ %.8, %bb.yv ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader5184 ], [ %i.jwi, %bb.yv ] ; 2 uses
  %i.jvg = icmp slt i32 %.3.lcssa, %6
  br i1 %i.jvg, label %.lr.ph5541, label %._crit_edge5542

.lr.ph5530:                                       ; preds = %.lr.ph5530.preheader, %bb.yv
  %.35529 = phi i32 [ %i.jwi, %bb.yv ], [ %.2.lcssa, %.lr.ph5530.preheader ]
  %.75528 = phi ptr [ %.8, %bb.yv ], [ %.5.lcssa, %.lr.ph5530.preheader ] ; 7 uses
  %.1063645527 = phi ptr [ %.12, %bb.yv ], [ %.76361.lcssa, %.lr.ph5530.preheader ] ; 7 uses
  %.1015526 = phi ptr [ %.102, %bb.yv ], [ %.99.lcssa, %.lr.ph5530.preheader ] ; 4 uses
  %.2864325525 = phi ptr [ %i.jvi, %bb.yv ], [ %.276431.lcssa, %.lr.ph5530.preheader ] ; 2 uses
  %i.jvh = load <2 x float>, ptr %.2864325525, align 4, !tbaa !68 ; 4 uses
  %i.jvi = getelementptr inbounds nuw i8, ptr %.2864325525, i64 8 ; 2 uses
  %.not6740 = icmp eq ptr %.1015526, null
  br i1 %.not6740, label %bb.yo, label %bb.ym

bb.ym:                                            ; preds = %.lr.ph5530
  %i.jvj = fadd fast <2 x float> %i.jvh, %i.jue
  %i.jvk = select <2 x i1> %i.ivc, <2 x float> %i.jvj, <2 x float> %i.jvh
  br i1 %or.cond55, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  %i.jvl = load <2 x float>, ptr %.1015526, align 4, !tbaa !68
  %i.jvm = fmul fast <2 x float> %i.jvl, %i.ive
  %i.jvn = fadd fast <2 x float> %i.jvm, %i.jvh
  %i.jvo = getelementptr inbounds nuw i8, ptr %.1015526, i64 8
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %bb.ym, %.lr.ph5530
  %.102 = phi ptr [ %i.jvo, %bb.yn ], [ %.1015526, %bb.ym ], [ null, %.lr.ph5530 ] ; 2 uses
  %i.jvp = phi <2 x float> [ %i.jvn, %bb.yn ], [ %i.jvk, %bb.ym ], [ %i.jvh, %.lr.ph5530 ]
  %i.jvq = fmul fast <2 x float> %i.jvp, %i.ivg   ; 4 uses
  br i1 %i.iuo, label %bb.yp, label %bb.ys

bb.yp:                                            ; preds = %bb.yo
  %i.jvr = extractelement <2 x float> %i.jvq, i64 0
  store float %i.jvr, ptr %.75528, align 4, !tbaa !68
  br i1 %.not, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.jvs = getelementptr inbounds nuw [4 x i8], ptr %.75528, i64 %i.k
  %i.jvt = extractelement <2 x float> %i.jvq, i64 1
  store float %i.jvt, ptr %i.jvs, align 4, !tbaa !68
  %i.jvu = getelementptr inbounds nuw i8, ptr %.75528, i64 %.idx6768
  br label %bb.yv

bb.yr:                                            ; preds = %bb.yp
  %i.jvv = getelementptr inbounds nuw i8, ptr %.75528, i64 4
  %i.jvw = extractelement <2 x float> %i.jvq, i64 1
  store float %i.jvw, ptr %i.jvv, align 4, !tbaa !68
  %i.jvx = getelementptr inbounds nuw i8, ptr %.75528, i64 8
  br label %bb.yv

bb.ys:                                            ; preds = %bb.yo
  %i.jvy = bitcast <2 x float> %i.jvq to <2 x i32>
  %i.jvz = lshr <2 x i32> %i.jvy, splat (i32 16)  ; 2 uses
  %i.jwa = bitcast <2 x i32> %i.jvz to <4 x i16>
  %i.jwb = extractelement <4 x i16> %i.jwa, i64 0
  %i.jwc = bitcast <2 x i32> %i.jvz to <4 x i16>
  %i.jwd = extractelement <4 x i16> %i.jwc, i64 2 ; 2 uses
  store i16 %i.jwb, ptr %.1063645527, align 2, !tbaa !821
  br i1 %.not, label %bb.yu, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.jwe = getelementptr inbounds nuw [2 x i8], ptr %.1063645527, i64 %i.k
  store i16 %i.jwd, ptr %i.jwe, align 2, !tbaa !821
  %i.jwf = getelementptr inbounds nuw i8, ptr %.1063645527, i64 %.idx6771
  br label %bb.yv

bb.yu:                                            ; preds = %bb.ys
  %i.jwg = getelementptr inbounds nuw i8, ptr %.1063645527, i64 2
  store i16 %i.jwd, ptr %i.jwg, align 2, !tbaa !821
  %i.jwh = getelementptr inbounds nuw i8, ptr %.1063645527, i64 4
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yt, %bb.yu, %bb.yq, %bb.yr
  %.12 = phi ptr [ %.1063645527, %bb.yq ], [ %.1063645527, %bb.yr ], [ %i.jwf, %bb.yt ], [ %i.jwh, %bb.yu ] ; 2 uses
  %.8 = phi ptr [ %i.jvu, %bb.yq ], [ %i.jvx, %bb.yr ], [ %.75528, %bb.yt ], [ %.75528, %bb.yu ] ; 2 uses
  %i.jwi = add nuw nsw i32 %.35529, 2             ; 3 uses
  %i.jwj = or disjoint i32 %i.jwi, 1
  %i.jwk = icmp slt i32 %i.jwj, %6
  br i1 %i.jwk, label %.lr.ph5530, label %.preheader, !llvm.loop !1611

.lr.ph5541:                                       ; preds = %.preheader, %bb.zf
  %.45540 = phi i32 [ %i.jxa, %bb.zf ], [ %.3.lcssa, %.preheader ]
  %.95539 = phi ptr [ %.10, %bb.zf ], [ %.7.lcssa, %.preheader ] ; 5 uses
  %.135538 = phi ptr [ %.14, %bb.zf ], [ %.106364.lcssa, %.preheader ] ; 5 uses
  %.1035537 = phi ptr [ %.104, %bb.zf ], [ %.101.lcssa, %.preheader ] ; 4 uses
  %.2964335536 = phi ptr [ %i.jwm, %bb.zf ], [ %.286432.lcssa, %.preheader ] ; 2 uses
  %i.jwl = load float, ptr %.2964335536, align 4, !tbaa !68 ; 4 uses
  %i.jwm = getelementptr inbounds nuw i8, ptr %.2964335536, i64 4 ; 2 uses
  %.not6739 = icmp eq ptr %.1035537, null
  br i1 %.not6739, label %bb.yy, label %bb.yw

bb.yw:                                            ; preds = %.lr.ph5541
  %i.jwn = fadd fast float %i.jwl, %.26348
  %spec.select = select i1 %or.cond53, float %i.jwn, float %i.jwl
  br i1 %or.cond55, label %bb.yx, label %bb.yy

bb.yx:                                            ; preds = %bb.yw
  %i.jwo = load float, ptr %.1035537, align 4, !tbaa !68
  %i.jwp = fmul fast float %i.jwo, %8
  %i.jwq = fadd fast float %i.jwp, %i.jwl
  %i.jwr = getelementptr inbounds nuw i8, ptr %.1035537, i64 4
  br label %bb.yy

bb.yy:                                            ; preds = %bb.yx, %bb.yw, %.lr.ph5541
  %.104 = phi ptr [ %i.jwr, %bb.yx ], [ %.1035537, %bb.yw ], [ null, %.lr.ph5541 ] ; 2 uses
  %.1 = phi nsz float [ %i.jwq, %bb.yx ], [ %spec.select, %bb.yw ], [ %i.jwl, %.lr.ph5541 ]
  %i.jws = fmul fast float %.1, %7                ; 2 uses
  br i1 %i.iuo, label %bb.yz, label %bb.zc

bb.yz:                                            ; preds = %bb.yy
  store float %i.jws, ptr %.95539, align 4, !tbaa !68
  br i1 %.not, label %bb.zb, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.jwt = getelementptr inbounds nuw [4 x i8], ptr %.95539, i64 %i.k
  br label %bb.zf

bb.zb:                                            ; preds = %bb.yz
  %i.jwu = getelementptr inbounds nuw i8, ptr %.95539, i64 4
  br label %bb.zf

bb.zc:                                            ; preds = %bb.yy
  %i.jwv = bitcast float %i.jws to i32
  %i.jww = lshr i32 %i.jwv, 16
  %i.jwx = trunc nuw i32 %i.jww to i16
  store i16 %i.jwx, ptr %.135538, align 2, !tbaa !821
  br i1 %.not, label %bb.ze, label %bb.zd

bb.zd:                                            ; preds = %bb.zc
  %i.jwy = getelementptr inbounds nuw [2 x i8], ptr %.135538, i64 %i.k
  br label %bb.zf

bb.ze:                                            ; preds = %bb.zc
  %i.jwz = getelementptr inbounds nuw i8, ptr %.135538, i64 2
  br label %bb.zf

bb.zf:                                            ; preds = %bb.zd, %bb.ze, %bb.za, %bb.zb
  %.14 = phi ptr [ %.135538, %bb.za ], [ %.135538, %bb.zb ], [ %i.jwy, %bb.zd ], [ %i.jwz, %bb.ze ]
  %.10 = phi ptr [ %i.jwt, %bb.za ], [ %i.jwu, %bb.zb ], [ %.95539, %bb.zd ], [ %.95539, %bb.ze ]
  %i.jxa = add nuw nsw i32 %.45540, 1             ; 2 uses
  %exitcond5627.not = icmp eq i32 %i.jxa, %6
  br i1 %exitcond5627.not, label %._crit_edge5542, label %.lr.ph5541, !llvm.loop !1612

._crit_edge5542:                                  ; preds = %bb.zf, %.preheader
  %.296433.lcssa = phi ptr [ %.286432.lcssa, %.preheader ], [ %i.jwm, %bb.zf ]
  %.103.lcssa = phi ptr [ %.101.lcssa, %.preheader ], [ %.104, %bb.zf ]
  %indvars.iv.next5629 = add nuw nsw i64 %indvars.iv5628, 1 ; 2 uses
  %exitcond5631.not = icmp eq i64 %indvars.iv.next5629, %wide.trip.count
  br i1 %exitcond5631.not, label %._crit_edge5549, label %bb.vl, !llvm.loop !1613

._crit_edge5549:                                  ; preds = %._crit_edge5542, %.preheader5187
  ret void
}

declare void @_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dpi.512(ptr, <16 x i1>, <16 x i32>, <16 x i32>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #17

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17gemm_AT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(72) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.062 = phi i32 [ %i.k, %.noexc45.lr.ph ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.y = sdiv i32 %.062, %i.x                     ; 2 uses
  %i.z = srem i32 %.062, %i.x                     ; 2 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %i.z                 ; 3 uses
  %i.ae = load i32, ptr %6, align 4, !tbaa !45
  %i.af = sub nsw i32 %i.ae, %i.ab
  %.sroa.speculated58 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.af) ; 2 uses
  %i.ag = load i32, ptr %7, align 4, !tbaa !45
  %i.ah = sub nsw i32 %i.ag, %i.ad
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ah) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !88, !noalias !1614 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1614
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1614
  %i.al = sext i32 %i.y to i64
  %i.am = mul i64 %i.ak, %i.al
  %i.an = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !1614 ; 3 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !60, !noalias !1614
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !17, !noalias !1614
  %i.as = sext i32 %i.ai to i64                   ; 2 uses
  %i.at = sext i32 %i.z to i64
  %i.au = mul nsw i64 %i.as, %i.at
  %i.av = mul i64 %i.au, %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  store ptr %i.aw, ptr %11, align 8, !tbaa !18
  store ptr null, ptr %i.q, align 8, !tbaa !11
  store i64 %i.an, ptr %i.r, align 8, !tbaa !59
  store i32 %i.aq, ptr %i.s, align 8, !tbaa !60
  store ptr %i.ar, ptr %i.t, align 8, !tbaa !17
  %i.ax = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ai, i64 1
  store <4 x i32> %i.ax, ptr %i.u, align 8, !tbaa !45
  store i32 1, ptr %i.v, align 8, !tbaa !51
  store i64 %i.as, ptr %i.w, align 8, !tbaa !20, !alias.scope !1617
  %i.ay = load i32, ptr %9, align 4, !tbaa !45
  %.not36 = icmp eq i32 %i.ay, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  invoke fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ab, i32 noundef %.sroa.speculated58, i32 noundef %i.ad, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %.noexc45
  invoke fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ab, i32 noundef %.sroa.speculated58, i32 noundef %i.ad, i32 noundef %.sroa.speculated)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !11  ; 2 uses
  %.not.i38 = icmp eq ptr %i.az, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 4
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !17  ; 3 uses
  %.not3.i39 = icmp eq ptr %i.bc, null
  %i.bd = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bd)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.bd) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.bj = add nsw i32 %.062, 1
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.062, %i.bk
  br i1 %.not.not, label %.noexc45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #30
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17gemm_AT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined.19(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %20 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
end_hunk_18
