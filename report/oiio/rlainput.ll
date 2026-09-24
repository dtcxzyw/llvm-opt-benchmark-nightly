Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/rlainput?download=true
inline.NumInlined: 3418
inline.NumDeleted: 1025
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm:bb.a
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  store i8 %.pre, ptr %.14159.epil, align 1, !tbaa !57
  %i.o = getelementptr inbounds i8, ptr %.14159.epil, i64 %i.d ; 2 uses
  %i.p = add nsw i32 %.14458.epil, -1             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !367

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %.preheader
  %.144.lcssa = phi i32 [ %.04365, %.preheader ], [ %i.z, %.critedge.loopexit.unr-lcssa ], [ %i.p, %bb.c ]
  %.141.lcssa = phi ptr [ %.04066, %.preheader ], [ %i.y, %.critedge.loopexit.unr-lcssa ], [ %i.o, %bb.c ]
  %i.q = add i64 %.03867, 2
  br label %.loopexit

bb.d:                                             ; preds = %bb.d, %.lr.ph61.new
  %.14159 = phi ptr [ %.04066, %.lr.ph61.new ], [ %i.y, %bb.d ] ; 2 uses
  %.14458 = phi i32 [ %.04365, %.lr.ph61.new ], [ %i.z, %bb.d ]
  %niter = phi i32 [ 0, %.lr.ph61.new ], [ %niter.next.7, %bb.d ]
  store i8 %.pre, ptr %.14159, align 1, !tbaa !57
  %i.r = getelementptr inbounds i8, ptr %.14159, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.r, align 1, !tbaa !57
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.s, align 1, !tbaa !57
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.t, align 1, !tbaa !57
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.u, align 1, !tbaa !57
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.v, align 1, !tbaa !57
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.w, align 1, !tbaa !57
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.x, align 1, !tbaa !57
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.d ; 3 uses
  %i.z = add nsw i32 %.14458, -8                  ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2

bb.e:                                             ; preds = %bb.b
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.aa = sub i8 0, %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03755 = phi i8 [ %i.ae, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ]
  %.154 = phi i64 [ %i.ab, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.24253 = phi ptr [ %i.af, %.lr.ph ], [ %.04066, %.lr.ph.preheader ] ; 2 uses
  %.24552 = phi i32 [ %i.ag, %.lr.ph ], [ %.04365, %.lr.ph.preheader ]
  %i.ab = add nuw i64 %.154, 1                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %.154
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !57
  store i8 %i.ad, ptr %.24253, align 1, !tbaa !57
  %i.ae = add i8 %.03755, -1                      ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.24253, i64 %i.d ; 2 uses
  %i.ag = add nsw i32 %.24552, -1                 ; 3 uses
  %i.ah = icmp ne i8 %i.ae, 0
  %i.ai = icmp ne i32 %i.ag, 0
  %or.cond3 = select i1 %i.ah, i1 %i.ai, i1 false
  %i.aj = icmp ult i64 %i.ab, %5
  %i.ak = select i1 %or.cond3, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %.critedge
  %.346 = phi i32 [ %.144.lcssa, %.critedge ], [ %.04365, %bb.e ], [ %i.ag, %.lr.ph ] ; 3 uses
  %.3 = phi ptr [ %.141.lcssa, %.critedge ], [ %.04066, %bb.e ], [ %i.af, %.lr.ph ]
  %.2 = phi i64 [ %i.q, %.critedge ], [ %i.e, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.al = icmp sgt i32 %.346, 0
  %i.am = icmp ult i64 %.2, %5
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.043.lcssa = phi i32 [ %2, %bb.a ], [ %.346, %.loopexit ]
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %.loopexit ]
  %.not = icmp eq i32 %.043.lcssa, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.34)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.039 = phi i64 [ 0, %bb.f ], [ %.038.lcssa, %._crit_edge ]
  ret i64 %.039
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18RLAInput20decode_channel_groupEissi(ptr noundef nonnull align 8 dereferenceable(1024) %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  store i64 %i.k, ptr %5, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %i.n = lshr i64 %i.k, 8
  %i.o = and i64 %i.n, 255
  %i.p = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #28
  %i.q = mul i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = mul i32 %narrow.i, %i.r                  ; 3 uses
  %i.t = mul nsw i32 %i.s, %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !123
  %i.w = mul nsw i32 %i.s, %i.v
  br label %.loopexit316

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 4             ; 3 uses
  store i64 %i.aa, ptr %5, align 8
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %narrow.i190 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = lshr i64 %i.aa, 8
  %i.ae = and i64 %i.ad, 255
  %i.af = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #28
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = mul i32 %narrow.i190, %i.ah             ; 2 uses
  %i.aj = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.x, i1 noundef zeroext true) #28
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp sgt i32 %1, 0
  br i1 %i.al, label %.lr.ph.preheader, label %.loopexit316

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0164356 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !119
  %narrow.i192 = call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !120
  %i.as = zext i8 %i.ar to i64
  %i.at = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #28
  %i.au = mul i64 %i.at, %i.as
  %i.av = trunc i64 %i.au to i32
  %i.aw = mul i32 %narrow.i192, %i.av
  %i.ax = add i32 %i.aw, %.0164356                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit316, label %.lr.ph, !llvm.loop !368

.loopexit316:                                     ; preds = %.lr.ph, %bb.c, %bb.b
  %.0166 = phi i32 [ %i.s, %bb.b ], [ %i.ai, %bb.c ], [ %i.ai, %.lr.ph ] ; 6 uses
  %.1165 = phi i32 [ %i.t, %bb.b ], [ 0, %bb.c ], [ %i.ax, %.lr.ph ] ; 10 uses
  %.0163 = phi i32 [ %i.w, %bb.b ], [ %i.ak, %bb.c ], [ %i.ak, %.lr.ph ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ay = sext i16 %2 to i32                      ; 13 uses
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %.not187368 = icmp sgt i16 %2, 0                ; 7 uses
  br i1 %.not187368, label %.lr.ph372, label %._crit_edge

.lr.ph372:                                        ; preds = %.loopexit316
  %i.az = icmp slt i32 %.0166, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.bc = sext i32 %.0163 to i64                  ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph372, %.loopexit308
  %.sroa.17.0371 = phi ptr [ null, %.lr.ph372 ], [ %.sroa.17.7, %.loopexit308 ] ; 9 uses
  %.sroa.12.0370 = phi ptr [ null, %.lr.ph372 ], [ %.sroa.12.2, %.loopexit308 ] ; 8 uses
  %.sroa.0.0369 = phi ptr [ null, %.lr.ph372 ], [ %.sroa.0.7, %.loopexit308 ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1)
          to label %.noexc unwind label %.loopexit310

.noexc:                                           ; preds = %bb.d
  br i1 %i.bd, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_18RLAInput4readItEEbPT_m.exit

.lr.ph.i.i.preheader:                             ; preds = %.noexc
  %.promoted = load i16, ptr %i.c, align 2, !tbaa !129 ; 2 uses
  %i.be = call noundef i16 @llvm.bswap.i16(i16 %.promoted) ; 2 uses
  store i16 %i.be, ptr %i.c, align 2, !tbaa !129
  %i.bf = zext i16 %i.be to i64                   ; 8 uses
  %i.bg = ptrtoint ptr %.sroa.12.0370 to i64      ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.0.0369 to i64       ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 8 uses
  %i.bj = icmp ult i64 %i.bi, %i.bf
  br i1 %i.bj, label %bb.e, label %bb.k

_ZN11OpenImageIO4v3_18RLAInput4readItEEbPT_m.exit: ; preds = %.noexc
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.35)
          to label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread unwind label %.loopexit.split-lp

.loopexit310:                                     ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %_ZN11OpenImageIO4v3_18RLAInput4readItEEbPT_m.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %.lr.ph.i.i.preheader
  %i.bk = sub nuw nsw i64 %i.bf, %i.bi            ; 5 uses
  %i.bl = ptrtoint ptr %.sroa.17.0371 to i64      ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = xor i64 %i.bi, 9223372036854775807
  %i.bo = icmp ule i64 %i.bm, %i.bn
  call void @llvm.assume(i1 %i.bo)
  %.not28.i = icmp ult i64 %i.bm, %i.bk
  br i1 %.not28.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %.sroa.12.0370, align 1, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.12.0370, i64 1 ; 2 uses
  %i.bq = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr i8, ptr %.sroa.12.0370, i64 %i.bk
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bp, i8 0, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bk)
  %i.bt = add nuw nsw i64 %.sroa.speculated.i.i, %i.bi ; 2 uses
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #32
          to label %.noexc260 unwind label %.loopexit311 ; 5 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bi ; 2 uses
  store i8 0, ptr %i.bv, align 1, !tbaa !57
  %i.bw = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.h

bb.h:                                             ; preds = %.noexc260
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.by, i8 0, i64 %i.bw, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.h, %.noexc260
  %.not35.i = icmp eq ptr %.sroa.12.0370, %.sroa.0.0369
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %.sroa.0.0369, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %.sroa.0.0369, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.bz = sub i64 %i.bl, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0369, i64 noundef %i.bz) #29
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bf
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.k:                                             ; preds = %.lr.ph.i.i.preheader
  %i.cc = icmp ugt i64 %i.bi, %i.bf
  br i1 %i.cc, label %bb.l, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0369, i64 %i.bf ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0370, %i.cd
  %spec.select = select i1 %.not.i.i, ptr %.sroa.12.0370, ptr %i.cd
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %bb.g, %bb.f
  %.sroa.0.7 = phi ptr [ %.sroa.0.0369, %bb.k ], [ %.sroa.0.0369, %bb.l ], [ %.sroa.0.0369, %bb.f ], [ %.sroa.0.0369, %bb.g ], [ %i.bu, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i ] ; 17 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.0370, %bb.k ], [ %spec.select, %bb.l ], [ %i.bp, %bb.f ], [ %i.bs, %bb.g ], [ %i.ca, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i ]
  %.sroa.17.7 = phi ptr [ %.sroa.17.0371, %bb.k ], [ %.sroa.17.0371, %bb.l ], [ %.sroa.17.0371, %bb.f ], [ %.sroa.17.0371, %bb.g ], [ %i.cb, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i ] ; 11 uses
  %.not179 = icmp eq i16 %.promoted, 0
  br i1 %.not179, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.ce = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %.sroa.0.7, i64 noundef 1, i64 noundef %i.bf)
          to label %_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit unwind label %.loopexit311

_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit: ; preds = %bb.m
  br i1 %i.ce, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.36)
          to label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread unwind label %.loopexit.split-lp312

.loopexit311:                                     ; preds = %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0369, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0.7, %bb.m ]
  %.sroa.17.1.ph = phi ptr [ %.sroa.17.0371, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.17.7, %bb.m ]
  %lpad.loopexit313 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp312:                            ; preds = %bb.n, %bb.q
  %lpad.loopexit.split-lp314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit
  %i.cf = load i8, ptr %5, align 8, !tbaa !124
  %i.cg = icmp eq i8 %i.cf, 11
  %i.ch = load i8, ptr %i.d, align 1
  %i.ci = icmp eq i8 %i.ch, 1
  %or.cond.i = select i1 %i.cg, i1 %i.ci, i1 false
  %i.cj = load i32, ptr %i.e, align 4
  %.not.i = icmp eq i32 %i.cj, 0
  %or.cond293 = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond293, label %bb.p, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader: ; preds = %bb.o
  br i1 %i.az, label %.loopexit308, label %.lr.ph362

.lr.ph362:                                        ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader
  %i.ck = load i32, ptr %i.ba, align 4, !tbaa !396 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph68.i, label %.lr.ph362.split.us

.lr.ph362.split.us:                               ; preds = %.lr.ph362
  %.not.i196.us = icmp eq i32 %i.ck, 0
  br i1 %.not.i196.us, label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread, label %.split.us

bb.p:                                             ; preds = %bb.o
  %i.cm = load i32, ptr %i.ba, align 4, !tbaa !396 ; 5 uses
  %i.cn = mul nsw i32 %i.cm, %.0166
  %i.co = sext i32 %i.cn to i64
  %.not184 = icmp eq i64 %i.bf, %i.co
  br i1 %.not184, label %.preheader307, label %bb.q

.preheader307:                                    ; preds = %bb.p
  %i.cp = icmp sgt i32 %i.cm, 0
  br i1 %i.cp, label %.lr.ph367, label %.loopexit308

.lr.ph367:                                        ; preds = %.preheader307
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !47
  %i.cr = mul nsw i32 %i.cq, %.0166
  %invariant.op = add i32 %.1165, %i.cr           ; 3 uses
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !59 ; 3 uses
  %wide.trip.count455 = zext nneg i32 %i.cm to i64 ; 2 uses
  %xtraiter807 = and i64 %wide.trip.count455, 1
  %i.ct = icmp eq i32 %i.cm, 1
  br i1 %i.ct, label %.epil.preheader806, label %.lr.ph367.new

.lr.ph367.new:                                    ; preds = %.lr.ph367
  %unroll_iter811 = and i64 %wide.trip.count455, 2147483646
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread unwind label %.loopexit.split-lp312

bb.r:                                             ; preds = %bb.r, %.lr.ph367.new
  %indvars.iv452 = phi i64 [ 0, %.lr.ph367.new ], [ %indvars.iv.next453.1, %bb.r ] ; 4 uses
  %niter812 = phi i64 [ 0, %.lr.ph367.new ], [ %niter812.next.1, %bb.r ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.7, i64 %indvars.iv452
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !128
  %i.cw = trunc i64 %indvars.iv452 to i32
  %i.cx = mul i32 %.0163, %i.cw
  %.reass = add i32 %i.cx, %invariant.op
  %i.cy = sext i32 %.reass to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy
  store float %i.cv, ptr %i.cz, align 4, !tbaa !128
  %indvars.iv.next453 = or disjoint i64 %indvars.iv452, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.7, i64 %indvars.iv.next453
  %i.db = load float, ptr %i.da, align 4, !tbaa !128
  %i.dc = trunc i64 %indvars.iv.next453 to i32
  %i.dd = mul i32 %.0163, %i.dc
  %.reass.1 = add i32 %i.dd, %invariant.op
  %i.de = sext i32 %.reass.1 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.de
  store float %i.db, ptr %i.df, align 4, !tbaa !128
  %indvars.iv.next453.1 = add nuw nsw i64 %indvars.iv452, 2 ; 2 uses
  %niter812.next.1 = add i64 %niter812, 2         ; 2 uses
  %niter812.ncmp.1 = icmp eq i64 %niter812.next.1, %unroll_iter811
  br i1 %niter812.ncmp.1, label %.loopexit308.loopexit.unr-lcssa, label %bb.r, !llvm.loop !369
end_hunk_0
