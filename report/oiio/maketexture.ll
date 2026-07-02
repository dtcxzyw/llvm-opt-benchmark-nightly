inline.NumInlined: 6379
inline.NumDeleted: 1713
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L12resize_blockERNS0_8ImageBufERKS1_NS0_3ROIEbb:bb.a
  br label %bb.ae

bb.m:                                             ; preds = %bb.h
  tail call fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIcEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %4)
  br label %bb.ae

bb.n:                                             ; preds = %bb.h
  tail call fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIsEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %4)
  br label %bb.ae

bb.o:                                             ; preds = %bb.h
  tail call fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIjEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %4)
  br label %bb.ae

bb.p:                                             ; preds = %bb.h
  tail call fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIiEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %4)
  br label %bb.ae

bb.q:                                             ; preds = %bb.h
  tail call fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIdEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %4)
  br label %bb.ae

bb.r:                                             ; preds = %bb.h
  tail call void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA39_cJRA19_KcRKNS0_8TypeDescEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(39) @.str.280, ptr noundef nonnull align 1 dereferenceable(19) @.str.281, ptr noundef nonnull align 4 dereferenceable(8) %i.q)
  br label %bb.ae

bb.s:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit, %bb.c, %bb.b, %bb.a
  %i.aq = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !121
  %i.at = icmp eq i8 %i.as, 11
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 65
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 1
  %or.cond91 = select i1 %i.at, i1 %i.aw, i1 false, !prof !1295
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 66
  %i.ay = load i8, ptr %i.ax, align 2
  %i.az = icmp eq i8 %i.ay, 0
  %or.cond94 = select i1 %or.cond91, i1 %i.az, i1 false, !prof !1296
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, 0
  %or.cond97 = select i1 %or.cond94, i1 %i.bc, i1 false, !prof !1296
  br i1 %or.cond97, label %bb.t, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit88.thread, !prof !1296

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit88.thread: ; preds = %bb.s
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 329, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_1L12resize_blockERNS0_8ImageBufERKS1_NS0_3ROIEbb, ptr noundef nonnull @.str.282) #32 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit88.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !155
  switch i8 %i.bg, label %bb.ad [
    i8 11, label %bb.u
    i8 2, label %bb.v
    i8 10, label %bb.w
    i8 4, label %bb.x
    i8 3, label %bb.y
    i8 5, label %bb.z
    i8 6, label %bb.aa
    i8 7, label %bb.ab
    i8 12, label %bb.ac
  ]

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IfEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IhEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.w:                                             ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.x:                                             ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_ItEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.y:                                             ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IcEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IsEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.aa:                                            ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IjEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IiEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.t
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IdEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %3)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.t
  tail call void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA39_cJRA13_KcRKNS0_8TypeDescEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(39) @.str.280, ptr noundef nonnull align 1 dereferenceable(13) @__FUNCTION__._ZN11OpenImageIO4v3_1L12resize_blockERNS0_8ImageBufERKS1_NS0_3ROIEbb, ptr noundef nonnull align 4 dereferenceable(8) %i.bf)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIfEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IfEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 8 uses
  %i.an = zext i32 %i.i to i64                    ; 12 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.av
  %min.iters.check51 = icmp ult i32 %i.i, 8
  %i.ax = shl nuw nsw i64 %i.am, 2
  %n.vec54 = and i64 %i.an, 2147483640            ; 4 uses
  %i.ay = trunc nuw nsw i64 %n.vec54 to i32
  %i.az = shl nuw nsw i64 %n.vec54, 2             ; 2 uses
  %cmp.n65 = icmp eq i64 %n.vec54, %i.an
  %min.iters.check26 = icmp ult i32 %i.i, 8
  %i.ba = shl nuw nsw i64 %i.an, 2
  %n.vec29 = and i64 %i.an, 2147483640            ; 4 uses
  %i.bb = trunc nuw nsw i64 %n.vec29 to i32
  %i.bc = shl nuw nsw i64 %n.vec29, 2             ; 2 uses
  %cmp.n40 = icmp eq i64 %n.vec29, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %4, 2147483640                 ; 4 uses
  %i.bd = trunc nuw nsw i64 %n.vec to i32
  %i.be = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.fs, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.ft, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.di, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 5 uses
  %.01523.i.us = phi ptr [ %i.dj, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 5 uses
  br i1 %min.iters.check51, label %scalar.ph50.preheader, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.preheader.i.us
  %.01523.i.us46 = ptrtoaddr ptr %.01523.i.us to i64 ; 2 uses
  %.01424.i.us45 = ptrtoaddr ptr %.01424.i.us to i64 ; 2 uses
  %i.bf = add i64 %i.ax, %.01523.i.us46
  %i.bg = sub i64 %.01424.i.us45, %i.bf
  %diff.check47 = icmp ult i64 %i.bg, 32
  %i.bh = sub i64 %.01424.i.us45, %.01523.i.us46
  %diff.check48 = icmp ult i64 %i.bh, 32
  %conflict.rdx49 = or i1 %diff.check47, %diff.check48
  br i1 %conflict.rdx49, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.memcheck44
  %i.bi = getelementptr i8, ptr %.01424.i.us, i64 %i.az ; 2 uses
  %i.bj = getelementptr i8, ptr %.01523.i.us, i64 %i.az ; 2 uses
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next63, %vector.body55 ] ; 2 uses
  %i.bk = shl i64 %index56, 2                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.01424.i.us, i64 %i.bk ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.01523.i.us, i64 %i.bk ; 3 uses
  %i.bl = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load59 = load <4 x float>, ptr %next.gep58, align 4, !tbaa !172
  %wide.load60 = load <4 x float>, ptr %i.bl, align 4, !tbaa !172
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %next.gep58, i64 %i.am ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load61 = load <4 x float>, ptr %i.bm, align 4, !tbaa !172
  %wide.load62 = load <4 x float>, ptr %i.bn, align 4, !tbaa !172
  %i.bo = fadd <4 x float> %wide.load59, %wide.load61
  %i.bp = fadd <4 x float> %wide.load60, %wide.load62
  %i.bq = fmul <4 x float> %i.bo, splat (float 5.000000e-01)
  %i.br = fmul <4 x float> %i.bp, splat (float 5.000000e-01)
  %i.bs = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x float> %i.bq, ptr %next.gep57, align 4, !tbaa !172
  store <4 x float> %i.br, ptr %i.bs, align 4, !tbaa !172
  %index.next63 = add nuw i64 %index56, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.bt, label %middle.block64, label %vector.body55, !llvm.loop !1297

middle.block64:                                   ; preds = %vector.body55
  br i1 %cmp.n65, label %._crit_edge.i.us, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %vector.memcheck44, %.preheader.i.us, %middle.block64
  %.021.i.us.ph = phi i32 [ 0, %vector.memcheck44 ], [ 0, %.preheader.i.us ], [ %i.ay, %middle.block64 ] ; 4 uses
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %vector.memcheck44 ], [ %.01424.i.us, %.preheader.i.us ], [ %i.bi, %middle.block64 ] ; 2 uses
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %vector.memcheck44 ], [ %.01523.i.us, %.preheader.i.us ], [ %i.bj, %middle.block64 ] ; 2 uses
  %i.bu = sub i32 %i.i, %.021.i.us.ph
  %xtraiter = and i32 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph50.prol.loopexit, label %scalar.ph50.prol

scalar.ph50.prol:                                 ; preds = %scalar.ph50.preheader, %scalar.ph50.prol
  %.021.i.us.prol = phi i32 [ %i.ca, %scalar.ph50.prol ], [ %.021.i.us.ph, %scalar.ph50.preheader ]
  %.120.i.us.prol = phi ptr [ %i.cb, %scalar.ph50.prol ], [ %.120.i.us.ph, %scalar.ph50.preheader ] ; 2 uses
  %.11619.i.us.prol = phi ptr [ %i.cc, %scalar.ph50.prol ], [ %.11619.i.us.ph, %scalar.ph50.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph50.prol ], [ 0, %scalar.ph50.preheader ]
  %i.bv = load float, ptr %.11619.i.us.prol, align 4, !tbaa !172
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.11619.i.us.prol, i64 %i.am
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !172
  %i.by = fadd float %i.bv, %i.bx
  %i.bz = fmul float %i.by, 5.000000e-01
  store float %i.bz, ptr %.120.i.us.prol, align 4, !tbaa !172
  %i.ca = add nuw nsw i32 %.021.i.us.prol, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.120.i.us.prol, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.11619.i.us.prol, i64 4 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph50.prol.loopexit, label %scalar.ph50.prol, !llvm.loop !1298

scalar.ph50.prol.loopexit:                        ; preds = %scalar.ph50.prol, %scalar.ph50.preheader
  %.lcssa70.unr = phi ptr [ poison, %scalar.ph50.preheader ], [ %i.cb, %scalar.ph50.prol ]
  %.lcssa69.unr = phi ptr [ poison, %scalar.ph50.preheader ], [ %i.cc, %scalar.ph50.prol ]
  %.021.i.us.unr = phi i32 [ %.021.i.us.ph, %scalar.ph50.preheader ], [ %i.ca, %scalar.ph50.prol ]
  %.120.i.us.unr = phi ptr [ %.120.i.us.ph, %scalar.ph50.preheader ], [ %i.cb, %scalar.ph50.prol ]
  %.11619.i.us.unr = phi ptr [ %.11619.i.us.ph, %scalar.ph50.preheader ], [ %i.cc, %scalar.ph50.prol ]
  %i.cd = sub i32 %.021.i.us.ph, %i.i
  %i.ce = icmp ugt i32 %i.cd, -4
  br i1 %i.ce, label %._crit_edge.i.us, label %scalar.ph50

scalar.ph50:                                      ; preds = %scalar.ph50.prol.loopexit, %scalar.ph50
  %.021.i.us = phi i32 [ %i.df, %scalar.ph50 ], [ %.021.i.us.unr, %scalar.ph50.prol.loopexit ]
  %.120.i.us = phi ptr [ %i.dg, %scalar.ph50 ], [ %.120.i.us.unr, %scalar.ph50.prol.loopexit ] ; 5 uses
  %.11619.i.us = phi ptr [ %i.dh, %scalar.ph50 ], [ %.11619.i.us.unr, %scalar.ph50.prol.loopexit ] ; 6 uses
  %i.cf = load float, ptr %.11619.i.us, align 4, !tbaa !172
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.11619.i.us, i64 %i.am
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !172
  %i.ci = fadd float %i.cf, %i.ch
  %i.cj = fmul float %i.ci, 5.000000e-01
  store float %i.cj, ptr %.120.i.us, align 4, !tbaa !172
  %i.ck = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 4 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !172
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.am
  %i.co = load float, ptr %i.cn, align 4, !tbaa !172
  %i.cp = fadd float %i.cm, %i.co
  %i.cq = fmul float %i.cp, 5.000000e-01
  store float %i.cq, ptr %i.ck, align 4, !tbaa !172
  %i.cr = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 8 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !172
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.am
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !172
  %i.cw = fadd float %i.ct, %i.cv
  %i.cx = fmul float %i.cw, 5.000000e-01
  store float %i.cx, ptr %i.cr, align 4, !tbaa !172
  %i.cy = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 12 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !172
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.am
  %i.dc = load float, ptr %i.db, align 4, !tbaa !172
  %i.dd = fadd float %i.da, %i.dc
  %i.de = fmul float %i.dd, 5.000000e-01
  store float %i.de, ptr %i.cy, align 4, !tbaa !172
  %i.df = add nuw nsw i32 %.021.i.us, 4           ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 16 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i32 %i.df, %i.i
  br i1 %exitcond.not.i.us.3, label %._crit_edge.i.us, label %scalar.ph50, !llvm.loop !1299

._crit_edge.i.us:                                 ; preds = %scalar.ph50.prol.loopexit, %scalar.ph50, %middle.block64
  %.lcssa1 = phi ptr [ %i.bi, %middle.block64 ], [ %.lcssa70.unr, %scalar.ph50.prol.loopexit ], [ %i.dg, %scalar.ph50 ]
  %.lcssa = phi ptr [ %i.bj, %middle.block64 ], [ %.lcssa69.unr, %scalar.ph50.prol.loopexit ], [ %i.dh, %scalar.ph50 ]
  %i.di = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.am
  %i.dk = icmp ult i64 %i.di, %i.al
  br i1 %i.dk, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1300

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.fp, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 5 uses
  %.01523.i74.us = phi ptr [ %i.fq, %._crit_edge.i79.us ], [ %i.dl, %.preheader.lr.ph.i70.us ] ; 5 uses
  br i1 %min.iters.check26, label %scalar.ph25.preheader, label %vector.memcheck19

vector.memcheck19:                                ; preds = %.preheader.i71.us
  %.01523.i74.us21 = ptrtoaddr ptr %.01523.i74.us to i64 ; 2 uses
  %.01424.i73.us20 = ptrtoaddr ptr %.01424.i73.us to i64 ; 2 uses
  %i.dm = add i64 %i.ba, %.01523.i74.us21
  %i.dn = sub i64 %.01424.i73.us20, %i.dm
  %diff.check22 = icmp ult i64 %i.dn, 32
  %i.do = sub i64 %.01424.i73.us20, %.01523.i74.us21
  %diff.check23 = icmp ult i64 %i.do, 32
  %conflict.rdx24 = or i1 %diff.check22, %diff.check23
  br i1 %conflict.rdx24, label %scalar.ph25.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %vector.memcheck19
  %i.dp = getelementptr i8, ptr %.01424.i73.us, i64 %i.bc ; 2 uses
  %i.dq = getelementptr i8, ptr %.01523.i74.us, i64 %i.bc ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph27
  %index31 = phi i64 [ 0, %vector.ph27 ], [ %index.next38, %vector.body30 ] ; 2 uses
  %i.dr = shl i64 %index31, 2                     ; 2 uses
  %next.gep32 = getelementptr i8, ptr %.01424.i73.us, i64 %i.dr ; 2 uses
  %next.gep33 = getelementptr i8, ptr %.01523.i74.us, i64 %i.dr ; 3 uses
  %i.ds = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load34 = load <4 x float>, ptr %next.gep33, align 4, !tbaa !172
  %wide.load35 = load <4 x float>, ptr %i.ds, align 4, !tbaa !172
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %next.gep33, i64 %i.an ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load36 = load <4 x float>, ptr %i.dt, align 4, !tbaa !172
  %wide.load37 = load <4 x float>, ptr %i.du, align 4, !tbaa !172
  %i.dv = fadd <4 x float> %wide.load34, %wide.load36
  %i.dw = fadd <4 x float> %wide.load35, %wide.load37
  %i.dx = fmul <4 x float> %i.dv, splat (float 5.000000e-01)
  %i.dy = fmul <4 x float> %i.dw, splat (float 5.000000e-01)
  %i.dz = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x float> %i.dx, ptr %next.gep32, align 4, !tbaa !172
  store <4 x float> %i.dy, ptr %i.dz, align 4, !tbaa !172
  %index.next38 = add nuw i64 %index31, 8         ; 2 uses
  %i.ea = icmp eq i64 %index.next38, %n.vec29
  br i1 %i.ea, label %middle.block39, label %vector.body30, !llvm.loop !1301

middle.block39:                                   ; preds = %vector.body30
  br i1 %cmp.n40, label %._crit_edge.i79.us, label %scalar.ph25.preheader

scalar.ph25.preheader:                            ; preds = %vector.memcheck19, %.preheader.i71.us, %middle.block39
  %.021.i75.us.ph = phi i32 [ 0, %vector.memcheck19 ], [ 0, %.preheader.i71.us ], [ %i.bb, %middle.block39 ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L18resize_block_2passIfEEbRNS0_8ImageBufERKS2_NS0_3ROIEb:bb.a
  %prol.iter81.next = add i32 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i32 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1306

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa75.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.go, %scalar.ph.prol ]
  %.lcssa74.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gp, %scalar.ph.prol ]
  %.lcssa73.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gq, %scalar.ph.prol ]
  %.0100.us.us134.unr = phi i32 [ %.0100.us.us134.ph, %scalar.ph.preheader ], [ %i.gn, %scalar.ph.prol ]
  %.199.us.us135.unr = phi ptr [ %.199.us.us135.ph, %scalar.ph.preheader ], [ %i.gp, %scalar.ph.prol ]
  %.14998.us.us136.unr = phi ptr [ %.14998.us.us136.ph, %scalar.ph.preheader ], [ %i.go, %scalar.ph.prol ]
  %.26097.us.us137.unr = phi ptr [ %.26097.us.us137.ph, %scalar.ph.preheader ], [ %i.gq, %scalar.ph.prol ]
  %i.gr = sub i32 %.0100.us.us134.ph, %i.i
  %i.gs = icmp ugt i32 %i.gr, -4
  br i1 %i.gs, label %._crit_edge.us.us138, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0100.us.us134 = phi i32 [ %i.hs, %scalar.ph ], [ %.0100.us.us134.unr, %scalar.ph.prol.loopexit ]
  %.199.us.us135 = phi ptr [ %i.hu, %scalar.ph ], [ %.199.us.us135.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.14998.us.us136 = phi ptr [ %i.ht, %scalar.ph ], [ %.14998.us.us136.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.26097.us.us137 = phi ptr [ %i.hv, %scalar.ph ], [ %.26097.us.us137.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gt = load float, ptr %.14998.us.us136, align 4, !tbaa !172
  %i.gu = load float, ptr %.199.us.us135, align 4, !tbaa !172
  %i.gv = fadd float %i.gt, %i.gu
  %i.gw = fmul float %i.gv, 5.000000e-01
  store float %i.gw, ptr %.26097.us.us137, align 4, !tbaa !172
  %i.gx = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 4
  %i.ha = load float, ptr %i.gx, align 4, !tbaa !172
  %i.hb = load float, ptr %i.gy, align 4, !tbaa !172
  %i.hc = fadd float %i.ha, %i.hb
  %i.hd = fmul float %i.hc, 5.000000e-01
  store float %i.hd, ptr %i.gz, align 4, !tbaa !172
  %i.he = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 8
  %i.hh = load float, ptr %i.he, align 4, !tbaa !172
  %i.hi = load float, ptr %i.hf, align 4, !tbaa !172
  %i.hj = fadd float %i.hh, %i.hi
  %i.hk = fmul float %i.hj, 5.000000e-01
  store float %i.hk, ptr %i.hg, align 4, !tbaa !172
  %i.hl = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 12
  %i.hm = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 12
  %i.ho = load float, ptr %i.hl, align 4, !tbaa !172
  %i.hp = load float, ptr %i.hm, align 4, !tbaa !172
  %i.hq = fadd float %i.ho, %i.hp
  %i.hr = fmul float %i.hq, 5.000000e-01
  store float %i.hr, ptr %i.hn, align 4, !tbaa !172
  %i.hs = add nuw nsw i32 %.0100.us.us134, 4      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 16 ; 2 uses
  %exitcond192.not.3 = icmp eq i32 %i.hs, %i.i
  br i1 %exitcond192.not.3, label %._crit_edge.us.us138, label %scalar.ph, !llvm.loop !1307

._crit_edge.us.us138:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.fx, %middle.block ], [ %.lcssa75.unr, %scalar.ph.prol.loopexit ], [ %i.ht, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.fw, %middle.block ], [ %.lcssa74.unr, %scalar.ph.prol.loopexit ], [ %i.hu, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.fy, %middle.block ], [ %.lcssa73.unr, %scalar.ph.prol.loopexit ], [ %i.hv, %scalar.ph ] ; 2 uses
  %i.hw = add nuw i64 %.046106.us.us130, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hw, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us126, label %.preheader.us.us129, !llvm.loop !1308

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us126, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.l ], [ %i.ia, %bb.n ], [ %i.hz, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.hx, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIhEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IhEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 7 uses
  %i.an = zext i32 %i.i to i64                    ; 11 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.av
  %i.ax = add nsw i32 %i.i, -1                    ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = zext nneg i32 %i.i to i64
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = add nuw nsw i64 %i.ba, 4                ; 2 uses
  %i.bc = zext i32 %i.ax to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = zext nneg i32 %i.i to i64
  %i.bf = add nsw i32 %i.i, -1
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = zext nneg i32 %i.i to i64
  %min.iters.check64 = icmp ult i32 %i.i, 8
  %n.vec67 = and i64 %i.an, 2147483640            ; 5 uses
  %i.bj = trunc nuw nsw i64 %n.vec67 to i32
  %i.bk = shl nuw nsw i64 %n.vec67, 2
  %cmp.n78 = icmp eq i64 %n.vec67, %i.an
  %min.iters.check33 = icmp ult i32 %i.i, 8
  %n.vec36 = and i64 %i.an, 2147483640            ; 5 uses
  %i.bl = trunc nuw nsw i64 %n.vec36 to i32
  %i.bm = shl nuw nsw i64 %n.vec36, 2
  %cmp.n47 = icmp eq i64 %n.vec36, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %4, 2147483640                 ; 5 uses
  %i.bn = trunc nuw nsw i64 %n.vec to i32
  %i.bo = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.gc, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.gd, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ds, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 7 uses
  %.01523.i.us = phi ptr [ %i.dt, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 8 uses
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.preheader.i.us
  %i.bp = getelementptr i8, ptr %.01424.i.us, i64 %i.bh
  %scevgep52 = getelementptr i8, ptr %i.bp, i64 4 ; 2 uses
  %scevgep53 = getelementptr nuw i8, ptr %.01523.i.us, i64 %i.am
  %i.bq = getelementptr i8, ptr %.01523.i.us, i64 %i.am
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bg
  %scevgep54 = getelementptr i8, ptr %i.br, i64 1
  %scevgep55 = getelementptr i8, ptr %.01523.i.us, i64 %i.bi
  %bound056 = icmp ult ptr %.01424.i.us, %scevgep54
  %bound157 = icmp ult ptr %scevgep53, %scevgep52
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %.01424.i.us, %scevgep55
  %bound160 = icmp ult ptr %.01523.i.us, %scevgep52
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  br i1 %conflict.rdx62, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck51
  %i.bs = getelementptr i8, ptr %.01424.i.us, i64 %i.bk ; 2 uses
  %i.bt = getelementptr i8, ptr %.01523.i.us, i64 %n.vec67 ; 2 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next76, %vector.body68 ] ; 3 uses
  %i.bu = shl i64 %index69, 2
  %next.gep70 = getelementptr i8, ptr %.01424.i.us, i64 %i.bu ; 2 uses
  %next.gep71 = getelementptr i8, ptr %.01523.i.us, i64 %index69 ; 3 uses
  %i.bv = getelementptr i8, ptr %next.gep71, i64 4
  %wide.load72 = load <4 x i8>, ptr %next.gep71, align 1, !tbaa !21, !alias.scope !1309
  %wide.load73 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !21, !alias.scope !1309
  %i.bw = zext <4 x i8> %wide.load72 to <4 x i32>
  %i.bx = zext <4 x i8> %wide.load73 to <4 x i32>
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep71, i64 %i.am ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %wide.load74 = load <4 x i8>, ptr %i.by, align 1, !tbaa !21, !alias.scope !1312
  %wide.load75 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !21, !alias.scope !1312
  %i.ca = zext <4 x i8> %wide.load74 to <4 x i32>
  %i.cb = zext <4 x i8> %wide.load75 to <4 x i32>
  %i.cc = add nuw nsw <4 x i32> %i.ca, %i.bw
  %i.cd = add nuw nsw <4 x i32> %i.cb, %i.bx
  %i.ce = uitofp nneg <4 x i32> %i.cc to <4 x float>
  %i.cf = uitofp nneg <4 x i32> %i.cd to <4 x float>
  %i.cg = fmul nnan <4 x float> %i.ce, splat (float 5.000000e-01)
  %i.ch = fmul nnan <4 x float> %i.cf, splat (float 5.000000e-01)
  %i.ci = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x float> %i.cg, ptr %next.gep70, align 4, !tbaa !172, !alias.scope !1314, !noalias !1316
  store <4 x float> %i.ch, ptr %i.ci, align 4, !tbaa !172, !alias.scope !1314, !noalias !1316
  %index.next76 = add nuw i64 %index69, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next76, %n.vec67
  br i1 %i.cj, label %middle.block77, label %vector.body68, !llvm.loop !1317

middle.block77:                                   ; preds = %vector.body68
  br i1 %cmp.n78, label %._crit_edge.i.us, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %vector.memcheck51, %.preheader.i.us, %middle.block77
  %.021.i.us.ph = phi i32 [ 0, %vector.memcheck51 ], [ 0, %.preheader.i.us ], [ %i.bj, %middle.block77 ] ; 4 uses
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %vector.memcheck51 ], [ %.01424.i.us, %.preheader.i.us ], [ %i.bs, %middle.block77 ] ; 3 uses
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %vector.memcheck51 ], [ %.01523.i.us, %.preheader.i.us ], [ %i.bt, %middle.block77 ] ; 4 uses
  %i.ck = sub i32 %i.i, %.021.i.us.ph
  %.neg = add i32 %.021.i.us.ph, 1
  %xtraiter = and i32 %i.ck, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph63.prol.loopexit, label %scalar.ph63.prol

scalar.ph63.prol:                                 ; preds = %scalar.ph63.preheader
  %i.cl = load i8, ptr %.11619.i.us.ph, align 1, !tbaa !21
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.11619.i.us.ph, i64 %i.am
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, %i.cm
  %i.cr = uitofp nneg i32 %i.cq to float
  %i.cs = fmul nnan float %i.cr, 5.000000e-01
  store float %i.cs, ptr %.120.i.us.ph, align 4, !tbaa !172
  %i.ct = add nuw nsw i32 %.021.i.us.ph, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.120.i.us.ph, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.11619.i.us.ph, i64 1 ; 2 uses
  br label %scalar.ph63.prol.loopexit

scalar.ph63.prol.loopexit:                        ; preds = %scalar.ph63.prol, %scalar.ph63.preheader
  %.lcssa83.unr = phi ptr [ poison, %scalar.ph63.preheader ], [ %i.cu, %scalar.ph63.prol ]
  %.lcssa82.unr = phi ptr [ poison, %scalar.ph63.preheader ], [ %i.cv, %scalar.ph63.prol ]
  %.021.i.us.unr = phi i32 [ %.021.i.us.ph, %scalar.ph63.preheader ], [ %i.ct, %scalar.ph63.prol ]
  %.120.i.us.unr = phi ptr [ %.120.i.us.ph, %scalar.ph63.preheader ], [ %i.cu, %scalar.ph63.prol ]
  %.11619.i.us.unr = phi ptr [ %.11619.i.us.ph, %scalar.ph63.preheader ], [ %i.cv, %scalar.ph63.prol ]
  %i.cw = icmp eq i32 %i.i, %.neg
  br i1 %i.cw, label %._crit_edge.i.us, label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63
  %.021.i.us = phi i32 [ %i.dp, %scalar.ph63 ], [ %.021.i.us.unr, %scalar.ph63.prol.loopexit ]
  %.120.i.us = phi ptr [ %i.dq, %scalar.ph63 ], [ %.120.i.us.unr, %scalar.ph63.prol.loopexit ] ; 3 uses
  %.11619.i.us = phi ptr [ %i.dr, %scalar.ph63 ], [ %.11619.i.us.unr, %scalar.ph63.prol.loopexit ] ; 4 uses
  %i.cx = load i8, ptr %.11619.i.us, align 1, !tbaa !21
  %i.cy = zext i8 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 %i.am
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !21
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cy
  %i.dd = uitofp nneg i32 %i.dc to float
  %i.de = fmul nnan float %i.dd, 5.000000e-01
  store float %i.de, ptr %.120.i.us, align 4, !tbaa !172
  %i.df = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.am
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.dl, %i.di
  %i.dn = uitofp nneg i32 %i.dm to float
  %i.do = fmul nnan float %i.dn, 5.000000e-01
  store float %i.do, ptr %i.df, align 4, !tbaa !172
  %i.dp = add nuw nsw i32 %.021.i.us, 2           ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 2 ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.dp, %i.i
  br i1 %exitcond.not.i.us.1, label %._crit_edge.i.us, label %scalar.ph63, !llvm.loop !1318

._crit_edge.i.us:                                 ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63, %middle.block77
  %.lcssa1 = phi ptr [ %i.bs, %middle.block77 ], [ %.lcssa83.unr, %scalar.ph63.prol.loopexit ], [ %i.dq, %scalar.ph63 ]
  %.lcssa = phi ptr [ %i.bt, %middle.block77 ], [ %.lcssa82.unr, %scalar.ph63.prol.loopexit ], [ %i.dr, %scalar.ph63 ]
  %i.ds = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.am
  %i.du = icmp ult i64 %i.ds, %i.al
  br i1 %i.du, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1319

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.dv = getelementptr inbounds nuw i8, ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.fz, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 7 uses
  %.01523.i74.us = phi ptr [ %i.ga, %._crit_edge.i79.us ], [ %i.dv, %.preheader.lr.ph.i70.us ] ; 8 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.memcheck20

vector.memcheck20:                                ; preds = %.preheader.i71.us
  %i.dw = getelementptr i8, ptr %.01424.i73.us, i64 %i.bd
  %scevgep21 = getelementptr i8, ptr %i.dw, i64 4 ; 2 uses
  %scevgep22 = getelementptr nuw i8, ptr %.01523.i74.us, i64 %i.an
  %i.dx = getelementptr i8, ptr %.01523.i74.us, i64 %i.an
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.bc
  %scevgep23 = getelementptr i8, ptr %i.dy, i64 1
  %scevgep24 = getelementptr i8, ptr %.01523.i74.us, i64 %i.be
  %bound025 = icmp ult ptr %.01424.i73.us, %scevgep23
  %bound126 = icmp ult ptr %scevgep22, %scevgep21
  %found.conflict27 = and i1 %bound025, %bound126
  %bound028 = icmp ult ptr %.01424.i73.us, %scevgep24
  %bound129 = icmp ult ptr %.01523.i74.us, %scevgep21
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %found.conflict27, %found.conflict30
  br i1 %conflict.rdx31, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck20
  %i.dz = getelementptr i8, ptr %.01424.i73.us, i64 %i.bm ; 2 uses
  %i.ea = getelementptr i8, ptr %.01523.i74.us, i64 %n.vec36 ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph34
  %index38 = phi i64 [ 0, %vector.ph34 ], [ %index.next45, %vector.body37 ] ; 3 uses
  %i.eb = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %.01424.i73.us, i64 %i.eb ; 2 uses
  %next.gep40 = getelementptr i8, ptr %.01523.i74.us, i64 %index38 ; 3 uses
  %i.ec = getelementptr i8, ptr %next.gep40, i64 4
  %wide.load41 = load <4 x i8>, ptr %next.gep40, align 1, !tbaa !21, !alias.scope !1320
  %wide.load42 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !21, !alias.scope !1320
  %i.ed = zext <4 x i8> %wide.load41 to <4 x i32>
  %i.ee = zext <4 x i8> %wide.load42 to <4 x i32>
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep40, i64 %i.an ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %wide.load43 = load <4 x i8>, ptr %i.ef, align 1, !tbaa !21, !alias.scope !1323
  %wide.load44 = load <4 x i8>, ptr %i.eg, align 1, !tbaa !21, !alias.scope !1323
  %i.eh = zext <4 x i8> %wide.load43 to <4 x i32>
  %i.ei = zext <4 x i8> %wide.load44 to <4 x i32>
  %i.ej = add nuw nsw <4 x i32> %i.eh, %i.ed
  %i.ek = add nuw nsw <4 x i32> %i.ei, %i.ee
  %i.el = uitofp nneg <4 x i32> %i.ej to <4 x float>
  %i.em = uitofp nneg <4 x i32> %i.ek to <4 x float>
  %i.en = fmul nnan <4 x float> %i.el, splat (float 5.000000e-01)
  %i.eo = fmul nnan <4 x float> %i.em, splat (float 5.000000e-01)
  %i.ep = getelementptr i8, ptr %next.gep39, i64 16
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb:bb.a
  %i.fb = lshr i32 %i.ey, 16                      ; 3 uses
  %i.fc = trunc nuw i32 %i.fb to i16
  %i.fd = and i16 %i.fc, -32768                   ; 3 uses
  %i.fe = icmp samesign ugt i32 %i.fa, 947912703
  br i1 %i.fe, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ff = icmp samesign ult i32 %i.fa, 855638017
  br i1 %i.ff, label %_ZN9Imath_3_14halfC2Ef.exit.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = lshr i32 %i.fa, 23                      ; 2 uses
  %i.fh = sub nuw nsw i32 126, %i.fg
  %i.fi = and i32 %i.fa, 8388607
  %i.fj = or disjoint i32 %i.fi, 8388608          ; 2 uses
  %i.fk = add nsw i32 %i.fg, -94
  %i.fl = shl i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = lshr i32 %i.fj, %i.fh                   ; 2 uses
  %i.fn = and i32 %i.fb, 32768
  %i.fo = or i32 %i.fm, %i.fn
  %i.fp = trunc nuw i32 %i.fo to i16              ; 2 uses
  %i.fq = icmp ugt i32 %i.fl, -2147483648
  br i1 %i.fq, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = icmp ne i32 %i.fl, -2147483648
  %i.fs = and i32 %i.fm, 1
  %.not.i.i.us = icmp eq i32 %i.fs, 0
  %or.cond.i.i.us = select i1 %i.fr, i1 true, i1 %.not.i.i.us
  br i1 %or.cond.i.i.us, label %_ZN9Imath_3_14halfC2Ef.exit.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ft = add nuw i16 %i.fp, 1
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

bb.aq:                                            ; preds = %bb.al
  %i.fu = icmp samesign ugt i32 %i.fa, 2139095039
  br i1 %i.fu, label %bb.au, label %bb.ar, !prof !78

bb.ar:                                            ; preds = %bb.aq
  %i.fv = icmp samesign ugt i32 %i.fa, 1199566847
  br i1 %i.fv, label %bb.at, label %bb.as, !prof !78

bb.as:                                            ; preds = %bb.ar
  %i.fw = add nuw nsw i32 %i.fa, 134221823
  %i.fx = lshr i32 %i.fa, 13
  %i.fy = and i32 %i.fx, 1
  %i.fz = add nuw nsw i32 %i.fw, %i.fy
  %i.ga = lshr i32 %i.fz, 13
  %i.gb = and i32 %i.fb, 32768
  %i.gc = or i32 %i.ga, %i.gb
  %i.gd = trunc i32 %i.gc to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

bb.at:                                            ; preds = %bb.ar
  %i.ge = or disjoint i16 %i.fd, 31744
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

bb.au:                                            ; preds = %bb.aq
  %i.gf = or disjoint i16 %i.fd, 31744            ; 2 uses
  %i.gg = icmp eq i32 %i.fa, 2139095040
  br i1 %i.gg, label %_ZN9Imath_3_14halfC2Ef.exit.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gh = lshr i32 %i.fa, 13
  %i.gi = and i32 %i.gh, 1023                     ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i16
  %i.gl = trunc nuw nsw i32 %i.gi to i16
  %i.gm = or i16 %i.gl, %i.gk
  %i.gn = or disjoint i16 %i.gm, %i.gf
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

_ZN9Imath_3_14halfC2Ef.exit.us:                   ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao, %bb.am
  %.0.i.i.us = phi i16 [ %i.fd, %bb.am ], [ %i.gn, %bb.av ], [ %i.ge, %bb.at ], [ %i.gd, %bb.as ], [ %i.gf, %bb.au ], [ %i.ft, %bb.ap ], [ %i.fp, %bb.ao ]
  store i16 %.0.i.i.us, ptr %.260107.us, align 2, !tbaa !1193
  %i.go = add nuw nsw i32 %.0110.us, 1            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.149108.us, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1109.us, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.260107.us, i64 2 ; 3 uses
  %exitcond.not = icmp eq i32 %i.go, %i.i
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.al, !llvm.loop !1344

._crit_edge.us:                                   ; preds = %_ZN9Imath_3_14halfC2Ef.exit.us
  %i.gs = add nuw i64 %.046116.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gs, %umax
  br i1 %exitcond131.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !1345

._crit_edge117:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph.thread, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread
  %i.gt = phi ptr [ %i.bc, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread ], [ %i.be, %.preheader.lr.ph.thread ], [ %i.et, %._crit_edge.us ]
  %.159.lcssa = phi ptr [ %.058119, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread ], [ %.058119, %.preheader.lr.ph.thread ], [ %i.gr, %._crit_edge.us ]
  %i.gu = add nuw i64 %.050121, 1                 ; 2 uses
  %exitcond133.not = icmp eq i64 %i.gu, %i.al
  br i1 %exitcond133.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %bb.o, !llvm.loop !1346

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.ba, %bb.n ], [ %i.az, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit94

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit94: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91 ], [ %i.ax, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.aw:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passItEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_ItEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 3 uses
  %i.an = zext i32 %i.i to i64                    ; 7 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.av
  %min.iters.check35 = icmp ult i32 %i.i, 8
  %n.vec38 = and i64 %i.an, 2147483640            ; 5 uses
  %i.ax = trunc nuw nsw i64 %n.vec38 to i32
  %i.ay = shl nuw nsw i64 %n.vec38, 2
  %i.az = shl nuw nsw i64 %n.vec38, 1
  %cmp.n49 = icmp eq i64 %n.vec38, %i.an
  %min.iters.check16 = icmp ult i32 %i.i, 8
  %n.vec19 = and i64 %i.an, 2147483640            ; 5 uses
  %i.ba = trunc nuw nsw i64 %n.vec19 to i32
  %i.bb = shl nuw nsw i64 %n.vec19, 2
  %i.bc = shl nuw nsw i64 %n.vec19, 1
  %cmp.n30 = icmp eq i64 %n.vec19, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %4, 2147483640                 ; 5 uses
  %i.bd = trunc nuw nsw i64 %n.vec to i32
  %i.be = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bf = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.dv, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.dw, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ck, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 3 uses
  %.01523.i.us = phi ptr [ %i.cl, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 3 uses
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.preheader.i.us
  %i.bg = getelementptr i8, ptr %.01424.i.us, i64 %i.ay ; 2 uses
  %i.bh = getelementptr i8, ptr %.01523.i.us, i64 %i.az ; 2 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph36
  %index40 = phi i64 [ 0, %vector.ph36 ], [ %index.next47, %vector.body39 ] ; 3 uses
  %i.bi = shl i64 %index40, 2
  %next.gep41 = getelementptr i8, ptr %.01424.i.us, i64 %i.bi ; 2 uses
  %i.bj = shl i64 %index40, 1
  %next.gep42 = getelementptr i8, ptr %.01523.i.us, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %next.gep42, i64 8
  %wide.load43 = load <4 x i16>, ptr %next.gep42, align 2, !tbaa !1193
  %wide.load44 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !1193
  %i.bl = zext <4 x i16> %wide.load43 to <4 x i32>
  %i.bm = zext <4 x i16> %wide.load44 to <4 x i32>
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %next.gep42, i64 %i.am ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %wide.load45 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !1193
  %wide.load46 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !1193
  %i.bp = zext <4 x i16> %wide.load45 to <4 x i32>
  %i.bq = zext <4 x i16> %wide.load46 to <4 x i32>
  %i.br = add nuw nsw <4 x i32> %i.bp, %i.bl
  %i.bs = add nuw nsw <4 x i32> %i.bq, %i.bm
  %i.bt = uitofp nneg <4 x i32> %i.br to <4 x float>
  %i.bu = uitofp nneg <4 x i32> %i.bs to <4 x float>
  %i.bv = fmul nnan <4 x float> %i.bt, splat (float 5.000000e-01)
  %i.bw = fmul nnan <4 x float> %i.bu, splat (float 5.000000e-01)
  %i.bx = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x float> %i.bv, ptr %next.gep41, align 4, !tbaa !172
  store <4 x float> %i.bw, ptr %i.bx, align 4, !tbaa !172
  %index.next47 = add nuw i64 %index40, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.by, label %middle.block48, label %vector.body39, !llvm.loop !1347

middle.block48:                                   ; preds = %vector.body39
  br i1 %cmp.n49, label %._crit_edge.i.us, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.preheader.i.us, %middle.block48
  %.021.i.us.ph = phi i32 [ 0, %.preheader.i.us ], [ %i.ax, %middle.block48 ]
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %.preheader.i.us ], [ %i.bg, %middle.block48 ]
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %.preheader.i.us ], [ %i.bh, %middle.block48 ]
  br label %scalar.ph34

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %.021.i.us = phi i32 [ %i.ch, %scalar.ph34 ], [ %.021.i.us.ph, %scalar.ph34.preheader ]
  %.120.i.us = phi ptr [ %i.ci, %scalar.ph34 ], [ %.120.i.us.ph, %scalar.ph34.preheader ] ; 2 uses
  %.11619.i.us = phi ptr [ %i.cj, %scalar.ph34 ], [ %.11619.i.us.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.bz = load i16, ptr %.11619.i.us, align 2, !tbaa !1193
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.11619.i.us, i64 %i.am
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !1193
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, %i.ca
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = fmul nnan float %i.cf, 5.000000e-01
  store float %i.cg, ptr %.120.i.us, align 4, !tbaa !172
  %i.ch = add nuw nsw i32 %.021.i.us, 1           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 2 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.ch, %i.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %scalar.ph34, !llvm.loop !1348

._crit_edge.i.us:                                 ; preds = %scalar.ph34, %middle.block48
  %.lcssa1 = phi ptr [ %i.bg, %middle.block48 ], [ %i.ci, %scalar.ph34 ]
  %.lcssa = phi ptr [ %i.bh, %middle.block48 ], [ %i.cj, %scalar.ph34 ]
  %i.ck = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.lcssa, i64 %i.am
  %i.cm = icmp ult i64 %i.ck, %i.al
  br i1 %i.cm, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1349

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.ds, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 3 uses
  %.01523.i74.us = phi ptr [ %i.dt, %._crit_edge.i79.us ], [ %i.cn, %.preheader.lr.ph.i70.us ] ; 3 uses
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.preheader.i71.us
  %i.co = getelementptr i8, ptr %.01424.i73.us, i64 %i.bb ; 2 uses
  %i.cp = getelementptr i8, ptr %.01523.i74.us, i64 %i.bc ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next28, %vector.body20 ] ; 3 uses
  %i.cq = shl i64 %index21, 2
  %next.gep22 = getelementptr i8, ptr %.01424.i73.us, i64 %i.cq ; 2 uses
  %i.cr = shl i64 %index21, 1
  %next.gep23 = getelementptr i8, ptr %.01523.i74.us, i64 %i.cr ; 3 uses
  %i.cs = getelementptr i8, ptr %next.gep23, i64 8
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 2, !tbaa !1193
  %wide.load25 = load <4 x i16>, ptr %i.cs, align 2, !tbaa !1193
  %i.ct = zext <4 x i16> %wide.load24 to <4 x i32>
  %i.cu = zext <4 x i16> %wide.load25 to <4 x i32>
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %next.gep23, i64 %i.an ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %wide.load26 = load <4 x i16>, ptr %i.cv, align 2, !tbaa !1193
  %wide.load27 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !1193
  %i.cx = zext <4 x i16> %wide.load26 to <4 x i32>
  %i.cy = zext <4 x i16> %wide.load27 to <4 x i32>
  %i.cz = add nuw nsw <4 x i32> %i.cx, %i.ct
  %i.da = add nuw nsw <4 x i32> %i.cy, %i.cu
  %i.db = uitofp nneg <4 x i32> %i.cz to <4 x float>
  %i.dc = uitofp nneg <4 x i32> %i.da to <4 x float>
  %i.dd = fmul nnan <4 x float> %i.db, splat (float 5.000000e-01)
  %i.de = fmul nnan <4 x float> %i.dc, splat (float 5.000000e-01)
  %i.df = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x float> %i.dd, ptr %next.gep22, align 4, !tbaa !172
  store <4 x float> %i.de, ptr %i.df, align 4, !tbaa !172
  %index.next28 = add nuw i64 %index21, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next28, %n.vec19
  br i1 %i.dg, label %middle.block29, label %vector.body20, !llvm.loop !1350

middle.block29:                                   ; preds = %vector.body20
  br i1 %cmp.n30, label %._crit_edge.i79.us, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.preheader.i71.us, %middle.block29
  %.021.i75.us.ph = phi i32 [ 0, %.preheader.i71.us ], [ %i.ba, %middle.block29 ]
  %.120.i76.us.ph = phi ptr [ %.01424.i73.us, %.preheader.i71.us ], [ %i.co, %middle.block29 ]
  %.11619.i77.us.ph = phi ptr [ %.01523.i74.us, %.preheader.i71.us ], [ %i.cp, %middle.block29 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %.021.i75.us = phi i32 [ %i.dp, %scalar.ph15 ], [ %.021.i75.us.ph, %scalar.ph15.preheader ]
  %.120.i76.us = phi ptr [ %i.dq, %scalar.ph15 ], [ %.120.i76.us.ph, %scalar.ph15.preheader ] ; 2 uses
  %.11619.i77.us = phi ptr [ %i.dr, %scalar.ph15 ], [ %.11619.i77.us.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.dh = load i16, ptr %.11619.i77.us, align 2, !tbaa !1193
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.11619.i77.us, i64 %i.an
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !1193
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.dl, %i.di
  %i.dn = uitofp nneg i32 %i.dm to float
  %i.do = fmul nnan float %i.dn, 5.000000e-01
  store float %i.do, ptr %.120.i76.us, align 4, !tbaa !172
  %i.dp = add nuw nsw i32 %.021.i75.us, 1         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.120.i76.us, i64 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.11619.i77.us, i64 2 ; 2 uses
  %exitcond.not.i78.us = icmp eq i32 %i.dp, %i.i
  br i1 %exitcond.not.i78.us, label %._crit_edge.i79.us, label %scalar.ph15, !llvm.loop !1351

._crit_edge.i79.us:                               ; preds = %scalar.ph15, %middle.block29
  %.lcssa3 = phi ptr [ %i.co, %middle.block29 ], [ %i.dq, %scalar.ph15 ]
  %.lcssa2 = phi ptr [ %i.cp, %middle.block29 ], [ %i.dr, %scalar.ph15 ]
  %i.ds = add nuw i64 %.01325.i72.us, 2           ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.lcssa2, i64 %i.an
  %i.du = icmp ult i64 %i.ds, %i.al
  br i1 %i.du, label %.preheader.i71.us, label %.preheader.us.us129.preheader, !llvm.loop !1349

._crit_edge107.us126:                             ; preds = %._crit_edge.us.us138
  %i.dv = add nuw i64 %.050111.us116, 1           ; 2 uses
  %exitcond196.not = icmp eq i64 %i.dv, %i.ak
  br i1 %exitcond196.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.preheader.lr.ph.i.us, !llvm.loop !1352

.preheader.us.us129.preheader:                    ; preds = %._crit_edge.i79.us
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.af
  br label %.preheader.us.us129

.preheader.us.us129:                              ; preds = %.preheader.us.us129.preheader, %._crit_edge.us.us138
  %.046106.us.us130 = phi i64 [ %i.ev, %._crit_edge.us.us138 ], [ 0, %.preheader.us.us129.preheader ]
  %.047105.us.us131 = phi ptr [ %.lcssa5, %._crit_edge.us.us138 ], [ %i.t, %.preheader.us.us129.preheader ] ; 3 uses
  %.048104.us.us132 = phi ptr [ %.lcssa6, %._crit_edge.us.us138 ], [ %i.s, %.preheader.us.us129.preheader ] ; 3 uses
  %.159103.us.us133 = phi ptr [ %.lcssa4, %._crit_edge.us.us138 ], [ %.058109.us118, %.preheader.us.us129.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us129
  %i.dx = getelementptr i8, ptr %.047105.us.us131, i64 %i.be ; 2 uses
  %i.dy = getelementptr i8, ptr %.048104.us.us132, i64 %i.be ; 2 uses
  %i.dz = getelementptr i8, ptr %.159103.us.us133, i64 %i.bf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047105.us.us131, i64 %i.ea ; 2 uses
  %next.gep7 = getelementptr i8, ptr %.048104.us.us132, i64 %i.ea ; 2 uses
  %i.eb = shl i64 %index, 1
  %next.gep8 = getelementptr i8, ptr %.159103.us.us133, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <4 x float>, ptr %next.gep7, align 4, !tbaa !172
  %wide.load9 = load <4 x float>, ptr %i.ec, align 4, !tbaa !172
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  %wide.load10 = load <4 x float>, ptr %next.gep, align 4, !tbaa !172
  %wide.load11 = load <4 x float>, ptr %i.ed, align 4, !tbaa !172
  %i.ee = fadd <4 x float> %wide.load, %wide.load10
  %i.ef = fadd <4 x float> %wide.load9, %wide.load11
  %i.eg = fmul <4 x float> %i.ee, splat (float 5.000000e-01)
  %i.eh = fmul <4 x float> %i.ef, splat (float 5.000000e-01)
  %i.ei = fptoui <4 x float> %i.eg to <4 x i16>
  %i.ej = fptoui <4 x float> %i.eh to <4 x i16>
  %i.ek = getelementptr i8, ptr %next.gep8, i64 8
  store <4 x i16> %i.ei, ptr %next.gep8, align 2, !tbaa !1193
  store <4 x i16> %i.ej, ptr %i.ek, align 2, !tbaa !1193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1353

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us138, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us129, %middle.block
  %.0100.us.us134.ph = phi i32 [ 0, %.preheader.us.us129 ], [ %i.bd, %middle.block ]
  %.199.us.us135.ph = phi ptr [ %.047105.us.us131, %.preheader.us.us129 ], [ %i.dx, %middle.block ]
  %.14998.us.us136.ph = phi ptr [ %.048104.us.us132, %.preheader.us.us129 ], [ %i.dy, %middle.block ]
  %.26097.us.us137.ph = phi ptr [ %.159103.us.us133, %.preheader.us.us129 ], [ %i.dz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0100.us.us134 = phi i32 [ %i.er, %scalar.ph ], [ %.0100.us.us134.ph, %scalar.ph.preheader ]
  %.199.us.us135 = phi ptr [ %i.et, %scalar.ph ], [ %.199.us.us135.ph, %scalar.ph.preheader ] ; 2 uses
  %.14998.us.us136 = phi ptr [ %i.es, %scalar.ph ], [ %.14998.us.us136.ph, %scalar.ph.preheader ] ; 2 uses
  %.26097.us.us137 = phi ptr [ %i.eu, %scalar.ph ], [ %.26097.us.us137.ph, %scalar.ph.preheader ] ; 2 uses
  %i.em = load float, ptr %.14998.us.us136, align 4, !tbaa !172
  %i.en = load float, ptr %.199.us.us135, align 4, !tbaa !172
  %i.eo = fadd float %i.em, %i.en
  %i.ep = fmul float %i.eo, 5.000000e-01
  %i.eq = fptoui float %i.ep to i16
  store i16 %i.eq, ptr %.26097.us.us137, align 2, !tbaa !1193
  %i.er = add nuw nsw i32 %.0100.us.us134, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 2 ; 2 uses
  %exitcond192.not = icmp eq i32 %i.er, %i.i
  br i1 %exitcond192.not, label %._crit_edge.us.us138, label %scalar.ph, !llvm.loop !1354

._crit_edge.us.us138:                             ; preds = %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.dy, %middle.block ], [ %i.es, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.dx, %middle.block ], [ %i.et, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.dz, %middle.block ], [ %i.eu, %scalar.ph ] ; 2 uses
  %i.ev = add nuw i64 %.046106.us.us130, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.ev, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us126, label %.preheader.us.us129, !llvm.loop !1355

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us126, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.l ], [ %i.ez, %bb.n ], [ %i.ey, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.ew, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIcEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IcEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 7 uses
  %i.an = zext i32 %i.i to i64                    ; 11 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.av
  %i.ax = add nsw i32 %i.i, -1                    ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = zext nneg i32 %i.i to i64
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = add nuw nsw i64 %i.ba, 4                ; 2 uses
  %i.bc = zext i32 %i.ax to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = zext nneg i32 %i.i to i64
  %i.bf = add nsw i32 %i.i, -1
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = zext nneg i32 %i.i to i64
  %min.iters.check64 = icmp ult i32 %i.i, 8
  %n.vec67 = and i64 %i.an, 2147483640            ; 5 uses
  %i.bj = trunc nuw nsw i64 %n.vec67 to i32
  %i.bk = shl nuw nsw i64 %n.vec67, 2
  %cmp.n78 = icmp eq i64 %n.vec67, %i.an
  %min.iters.check33 = icmp ult i32 %i.i, 8
  %n.vec36 = and i64 %i.an, 2147483640            ; 5 uses
  %i.bl = trunc nuw nsw i64 %n.vec36 to i32
  %i.bm = shl nuw nsw i64 %n.vec36, 2
  %cmp.n47 = icmp eq i64 %n.vec36, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %4, 2147483640                 ; 5 uses
  %i.bn = trunc nuw nsw i64 %n.vec to i32
  %i.bo = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.gc, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.gd, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ds, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 7 uses
  %.01523.i.us = phi ptr [ %i.dt, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 8 uses
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.preheader.i.us
  %i.bp = getelementptr i8, ptr %.01424.i.us, i64 %i.bh
  %scevgep52 = getelementptr i8, ptr %i.bp, i64 4 ; 2 uses
  %scevgep53 = getelementptr nuw i8, ptr %.01523.i.us, i64 %i.am
  %i.bq = getelementptr i8, ptr %.01523.i.us, i64 %i.am
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bg
  %scevgep54 = getelementptr i8, ptr %i.br, i64 1
  %scevgep55 = getelementptr i8, ptr %.01523.i.us, i64 %i.bi
  %bound056 = icmp ult ptr %.01424.i.us, %scevgep54
  %bound157 = icmp ult ptr %scevgep53, %scevgep52
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %.01424.i.us, %scevgep55
  %bound160 = icmp ult ptr %.01523.i.us, %scevgep52
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  br i1 %conflict.rdx62, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck51
  %i.bs = getelementptr i8, ptr %.01424.i.us, i64 %i.bk ; 2 uses
  %i.bt = getelementptr i8, ptr %.01523.i.us, i64 %n.vec67 ; 2 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next76, %vector.body68 ] ; 3 uses
  %i.bu = shl i64 %index69, 2
  %next.gep70 = getelementptr i8, ptr %.01424.i.us, i64 %i.bu ; 2 uses
  %next.gep71 = getelementptr i8, ptr %.01523.i.us, i64 %index69 ; 3 uses
  %i.bv = getelementptr i8, ptr %next.gep71, i64 4
  %wide.load72 = load <4 x i8>, ptr %next.gep71, align 1, !tbaa !21, !alias.scope !1356
  %wide.load73 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !21, !alias.scope !1356
  %i.bw = sext <4 x i8> %wide.load72 to <4 x i32>
  %i.bx = sext <4 x i8> %wide.load73 to <4 x i32>
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep71, i64 %i.am ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %wide.load74 = load <4 x i8>, ptr %i.by, align 1, !tbaa !21, !alias.scope !1359
  %wide.load75 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !21, !alias.scope !1359
  %i.ca = sext <4 x i8> %wide.load74 to <4 x i32>
  %i.cb = sext <4 x i8> %wide.load75 to <4 x i32>
  %i.cc = add nsw <4 x i32> %i.ca, %i.bw
  %i.cd = add nsw <4 x i32> %i.cb, %i.bx
  %i.ce = sitofp <4 x i32> %i.cc to <4 x float>
  %i.cf = sitofp <4 x i32> %i.cd to <4 x float>
  %i.cg = fmul nnan <4 x float> %i.ce, splat (float 5.000000e-01)
  %i.ch = fmul nnan <4 x float> %i.cf, splat (float 5.000000e-01)
  %i.ci = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x float> %i.cg, ptr %next.gep70, align 4, !tbaa !172, !alias.scope !1361, !noalias !1363
  store <4 x float> %i.ch, ptr %i.ci, align 4, !tbaa !172, !alias.scope !1361, !noalias !1363
  %index.next76 = add nuw i64 %index69, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next76, %n.vec67
  br i1 %i.cj, label %middle.block77, label %vector.body68, !llvm.loop !1364

middle.block77:                                   ; preds = %vector.body68
  br i1 %cmp.n78, label %._crit_edge.i.us, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %vector.memcheck51, %.preheader.i.us, %middle.block77
  %.021.i.us.ph = phi i32 [ 0, %vector.memcheck51 ], [ 0, %.preheader.i.us ], [ %i.bj, %middle.block77 ] ; 4 uses
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %vector.memcheck51 ], [ %.01424.i.us, %.preheader.i.us ], [ %i.bs, %middle.block77 ] ; 3 uses
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %vector.memcheck51 ], [ %.01523.i.us, %.preheader.i.us ], [ %i.bt, %middle.block77 ] ; 4 uses
  %i.ck = sub i32 %i.i, %.021.i.us.ph
  %.neg = add i32 %.021.i.us.ph, 1
  %xtraiter = and i32 %i.ck, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph63.prol.loopexit, label %scalar.ph63.prol

scalar.ph63.prol:                                 ; preds = %scalar.ph63.preheader
  %i.cl = load i8, ptr %.11619.i.us.ph, align 1, !tbaa !21
  %i.cm = sext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.11619.i.us.ph, i64 %i.am
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, %i.cm
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = fmul nnan float %i.cr, 5.000000e-01
  store float %i.cs, ptr %.120.i.us.ph, align 4, !tbaa !172
  %i.ct = add nuw nsw i32 %.021.i.us.ph, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.120.i.us.ph, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.11619.i.us.ph, i64 1 ; 2 uses
  br label %scalar.ph63.prol.loopexit

scalar.ph63.prol.loopexit:                        ; preds = %scalar.ph63.prol, %scalar.ph63.preheader
  %.lcssa83.unr = phi ptr [ poison, %scalar.ph63.preheader ], [ %i.cu, %scalar.ph63.prol ]
  %.lcssa82.unr = phi ptr [ poison, %scalar.ph63.preheader ], [ %i.cv, %scalar.ph63.prol ]
  %.021.i.us.unr = phi i32 [ %.021.i.us.ph, %scalar.ph63.preheader ], [ %i.ct, %scalar.ph63.prol ]
  %.120.i.us.unr = phi ptr [ %.120.i.us.ph, %scalar.ph63.preheader ], [ %i.cu, %scalar.ph63.prol ]
  %.11619.i.us.unr = phi ptr [ %.11619.i.us.ph, %scalar.ph63.preheader ], [ %i.cv, %scalar.ph63.prol ]
  %i.cw = icmp eq i32 %i.i, %.neg
  br i1 %i.cw, label %._crit_edge.i.us, label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63
  %.021.i.us = phi i32 [ %i.dp, %scalar.ph63 ], [ %.021.i.us.unr, %scalar.ph63.prol.loopexit ]
  %.120.i.us = phi ptr [ %i.dq, %scalar.ph63 ], [ %.120.i.us.unr, %scalar.ph63.prol.loopexit ] ; 3 uses
  %.11619.i.us = phi ptr [ %i.dr, %scalar.ph63 ], [ %.11619.i.us.unr, %scalar.ph63.prol.loopexit ] ; 4 uses
  %i.cx = load i8, ptr %.11619.i.us, align 1, !tbaa !21
  %i.cy = sext i8 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 %i.am
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !21
  %i.db = sext i8 %i.da to i32
  %i.dc = add nsw i32 %i.db, %i.cy
  %i.dd = sitofp i32 %i.dc to float
  %i.de = fmul nnan float %i.dd, 5.000000e-01
  store float %i.de, ptr %.120.i.us, align 4, !tbaa !172
  %i.df = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.di = sext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.am
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.dl = sext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, %i.di
  %i.dn = sitofp i32 %i.dm to float
  %i.do = fmul nnan float %i.dn, 5.000000e-01
  store float %i.do, ptr %i.df, align 4, !tbaa !172
  %i.dp = add nuw nsw i32 %.021.i.us, 2           ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 2 ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.dp, %i.i
  br i1 %exitcond.not.i.us.1, label %._crit_edge.i.us, label %scalar.ph63, !llvm.loop !1365

._crit_edge.i.us:                                 ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63, %middle.block77
  %.lcssa1 = phi ptr [ %i.bs, %middle.block77 ], [ %.lcssa83.unr, %scalar.ph63.prol.loopexit ], [ %i.dq, %scalar.ph63 ]
  %.lcssa = phi ptr [ %i.bt, %middle.block77 ], [ %.lcssa82.unr, %scalar.ph63.prol.loopexit ], [ %i.dr, %scalar.ph63 ]
  %i.ds = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.am
  %i.du = icmp ult i64 %i.ds, %i.al
  br i1 %i.du, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1366

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.dv = getelementptr inbounds nuw i8, ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.fz, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 7 uses
  %.01523.i74.us = phi ptr [ %i.ga, %._crit_edge.i79.us ], [ %i.dv, %.preheader.lr.ph.i70.us ] ; 8 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.memcheck20

vector.memcheck20:                                ; preds = %.preheader.i71.us
  %i.dw = getelementptr i8, ptr %.01424.i73.us, i64 %i.bd
  %scevgep21 = getelementptr i8, ptr %i.dw, i64 4 ; 2 uses
  %scevgep22 = getelementptr nuw i8, ptr %.01523.i74.us, i64 %i.an
  %i.dx = getelementptr i8, ptr %.01523.i74.us, i64 %i.an
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.bc
  %scevgep23 = getelementptr i8, ptr %i.dy, i64 1
  %scevgep24 = getelementptr i8, ptr %.01523.i74.us, i64 %i.be
  %bound025 = icmp ult ptr %.01424.i73.us, %scevgep23
  %bound126 = icmp ult ptr %scevgep22, %scevgep21
  %found.conflict27 = and i1 %bound025, %bound126
  %bound028 = icmp ult ptr %.01424.i73.us, %scevgep24
  %bound129 = icmp ult ptr %.01523.i74.us, %scevgep21
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %found.conflict27, %found.conflict30
  br i1 %conflict.rdx31, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck20
  %i.dz = getelementptr i8, ptr %.01424.i73.us, i64 %i.bm ; 2 uses
  %i.ea = getelementptr i8, ptr %.01523.i74.us, i64 %n.vec36 ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph34
  %index38 = phi i64 [ 0, %vector.ph34 ], [ %index.next45, %vector.body37 ] ; 3 uses
  %i.eb = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %.01424.i73.us, i64 %i.eb ; 2 uses
  %next.gep40 = getelementptr i8, ptr %.01523.i74.us, i64 %index38 ; 3 uses
  %i.ec = getelementptr i8, ptr %next.gep40, i64 4
  %wide.load41 = load <4 x i8>, ptr %next.gep40, align 1, !tbaa !21, !alias.scope !1367
  %wide.load42 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !21, !alias.scope !1367
  %i.ed = sext <4 x i8> %wide.load41 to <4 x i32>
  %i.ee = sext <4 x i8> %wide.load42 to <4 x i32>
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep40, i64 %i.an ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %wide.load43 = load <4 x i8>, ptr %i.ef, align 1, !tbaa !21, !alias.scope !1370
  %wide.load44 = load <4 x i8>, ptr %i.eg, align 1, !tbaa !21, !alias.scope !1370
  %i.eh = sext <4 x i8> %wide.load43 to <4 x i32>
  %i.ei = sext <4 x i8> %wide.load44 to <4 x i32>
  %i.ej = add nsw <4 x i32> %i.eh, %i.ed
  %i.ek = add nsw <4 x i32> %i.ei, %i.ee
  %i.el = sitofp <4 x i32> %i.ej to <4 x float>
  %i.em = sitofp <4 x i32> %i.ek to <4 x float>
  %i.en = fmul nnan <4 x float> %i.el, splat (float 5.000000e-01)
  %i.eo = fmul nnan <4 x float> %i.em, splat (float 5.000000e-01)
  %i.ep = getelementptr i8, ptr %next.gep39, i64 16
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L18resize_block_2passIcEEbRNS0_8ImageBufERKS2_NS0_3ROIEb:bb.a
scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us129, %middle.block
  %.0100.us.us134.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us129 ], [ %i.bn, %middle.block ] ; 4 uses
  %.199.us.us135.ph = phi ptr [ %.047105.us.us131, %vector.memcheck ], [ %.047105.us.us131, %.preheader.us.us129 ], [ %i.ge, %middle.block ] ; 3 uses
  %.14998.us.us136.ph = phi ptr [ %.048104.us.us132, %vector.memcheck ], [ %.048104.us.us132, %.preheader.us.us129 ], [ %i.gf, %middle.block ] ; 3 uses
  %.26097.us.us137.ph = phi ptr [ %.159103.us.us133, %vector.memcheck ], [ %.159103.us.us133, %.preheader.us.us129 ], [ %i.gg, %middle.block ] ; 3 uses
  %i.gs = sub i32 %i.i, %.0100.us.us134.ph
  %.neg94 = add i32 %.0100.us.us134.ph, 1
  %xtraiter91 = and i32 %i.gs, 1
  %lcmp.mod92.not = icmp eq i32 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gt = load float, ptr %.14998.us.us136.ph, align 4, !tbaa !172
  %i.gu = load float, ptr %.199.us.us135.ph, align 4, !tbaa !172
  %i.gv = fadd float %i.gt, %i.gu
  %i.gw = fmul float %i.gv, 5.000000e-01
  %i.gx = fptosi float %i.gw to i8
  store i8 %i.gx, ptr %.26097.us.us137.ph, align 1, !tbaa !21
  %i.gy = add nuw nsw i32 %.0100.us.us134.ph, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.14998.us.us136.ph, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.199.us.us135.ph, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.26097.us.us137.ph, i64 1 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa88.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gz, %scalar.ph.prol ]
  %.lcssa87.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %.lcssa86.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %.0100.us.us134.unr = phi i32 [ %.0100.us.us134.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %.199.us.us135.unr = phi ptr [ %.199.us.us135.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %.14998.us.us136.unr = phi ptr [ %.14998.us.us136.ph, %scalar.ph.preheader ], [ %i.gz, %scalar.ph.prol ]
  %.26097.us.us137.unr = phi ptr [ %.26097.us.us137.ph, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %i.hc = icmp eq i32 %i.i, %.neg94
  br i1 %i.hc, label %._crit_edge.us.us138, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0100.us.us134 = phi i32 [ %i.hq, %scalar.ph ], [ %.0100.us.us134.unr, %scalar.ph.prol.loopexit ]
  %.199.us.us135 = phi ptr [ %i.hs, %scalar.ph ], [ %.199.us.us135.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.14998.us.us136 = phi ptr [ %i.hr, %scalar.ph ], [ %.14998.us.us136.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.26097.us.us137 = phi ptr [ %i.ht, %scalar.ph ], [ %.26097.us.us137.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.hd = load float, ptr %.14998.us.us136, align 4, !tbaa !172
  %i.he = load float, ptr %.199.us.us135, align 4, !tbaa !172
  %i.hf = fadd float %i.hd, %i.he
  %i.hg = fmul float %i.hf, 5.000000e-01
  %i.hh = fptosi float %i.hg to i8
  store i8 %i.hh, ptr %.26097.us.us137, align 1, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 1
  %i.hl = load float, ptr %i.hi, align 4, !tbaa !172
  %i.hm = load float, ptr %i.hj, align 4, !tbaa !172
  %i.hn = fadd float %i.hl, %i.hm
  %i.ho = fmul float %i.hn, 5.000000e-01
  %i.hp = fptosi float %i.ho to i8
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !21
  %i.hq = add nuw nsw i32 %.0100.us.us134, 2      ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 2 ; 2 uses
  %exitcond192.not.1 = icmp eq i32 %i.hq, %i.i
  br i1 %exitcond192.not.1, label %._crit_edge.us.us138, label %scalar.ph, !llvm.loop !1387

._crit_edge.us.us138:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.gf, %middle.block ], [ %.lcssa88.unr, %scalar.ph.prol.loopexit ], [ %i.hr, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.ge, %middle.block ], [ %.lcssa87.unr, %scalar.ph.prol.loopexit ], [ %i.hs, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.gg, %middle.block ], [ %.lcssa86.unr, %scalar.ph.prol.loopexit ], [ %i.ht, %scalar.ph ] ; 2 uses
  %i.hu = add nuw i64 %.046106.us.us130, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hu, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us126, label %.preheader.us.us129, !llvm.loop !1388

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us126, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.l ], [ %i.hy, %bb.n ], [ %i.hx, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.hv, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIsEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IsEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 3 uses
  %i.an = zext i32 %i.i to i64                    ; 7 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.av
  %min.iters.check35 = icmp ult i32 %i.i, 8
  %n.vec38 = and i64 %i.an, 2147483640            ; 5 uses
  %i.ax = trunc nuw nsw i64 %n.vec38 to i32
  %i.ay = shl nuw nsw i64 %n.vec38, 2
  %i.az = shl nuw nsw i64 %n.vec38, 1
  %cmp.n49 = icmp eq i64 %n.vec38, %i.an
  %min.iters.check16 = icmp ult i32 %i.i, 8
  %n.vec19 = and i64 %i.an, 2147483640            ; 5 uses
  %i.ba = trunc nuw nsw i64 %n.vec19 to i32
  %i.bb = shl nuw nsw i64 %n.vec19, 2
  %i.bc = shl nuw nsw i64 %n.vec19, 1
  %cmp.n30 = icmp eq i64 %n.vec19, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %4, 2147483640                 ; 5 uses
  %i.bd = trunc nuw nsw i64 %n.vec to i32
  %i.be = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bf = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.dv, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.dw, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ck, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 3 uses
  %.01523.i.us = phi ptr [ %i.cl, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 3 uses
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.preheader.i.us
  %i.bg = getelementptr i8, ptr %.01424.i.us, i64 %i.ay ; 2 uses
  %i.bh = getelementptr i8, ptr %.01523.i.us, i64 %i.az ; 2 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph36
  %index40 = phi i64 [ 0, %vector.ph36 ], [ %index.next47, %vector.body39 ] ; 3 uses
  %i.bi = shl i64 %index40, 2
  %next.gep41 = getelementptr i8, ptr %.01424.i.us, i64 %i.bi ; 2 uses
  %i.bj = shl i64 %index40, 1
  %next.gep42 = getelementptr i8, ptr %.01523.i.us, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %next.gep42, i64 8
  %wide.load43 = load <4 x i16>, ptr %next.gep42, align 2, !tbaa !1193
  %wide.load44 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !1193
  %i.bl = sext <4 x i16> %wide.load43 to <4 x i32>
  %i.bm = sext <4 x i16> %wide.load44 to <4 x i32>
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %next.gep42, i64 %i.am ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %wide.load45 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !1193
  %wide.load46 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !1193
  %i.bp = sext <4 x i16> %wide.load45 to <4 x i32>
  %i.bq = sext <4 x i16> %wide.load46 to <4 x i32>
  %i.br = add nsw <4 x i32> %i.bp, %i.bl
  %i.bs = add nsw <4 x i32> %i.bq, %i.bm
  %i.bt = sitofp <4 x i32> %i.br to <4 x float>
  %i.bu = sitofp <4 x i32> %i.bs to <4 x float>
  %i.bv = fmul nnan <4 x float> %i.bt, splat (float 5.000000e-01)
  %i.bw = fmul nnan <4 x float> %i.bu, splat (float 5.000000e-01)
  %i.bx = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x float> %i.bv, ptr %next.gep41, align 4, !tbaa !172
  store <4 x float> %i.bw, ptr %i.bx, align 4, !tbaa !172
  %index.next47 = add nuw i64 %index40, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.by, label %middle.block48, label %vector.body39, !llvm.loop !1389

middle.block48:                                   ; preds = %vector.body39
  br i1 %cmp.n49, label %._crit_edge.i.us, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.preheader.i.us, %middle.block48
  %.021.i.us.ph = phi i32 [ 0, %.preheader.i.us ], [ %i.ax, %middle.block48 ]
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %.preheader.i.us ], [ %i.bg, %middle.block48 ]
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %.preheader.i.us ], [ %i.bh, %middle.block48 ]
  br label %scalar.ph34

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %.021.i.us = phi i32 [ %i.ch, %scalar.ph34 ], [ %.021.i.us.ph, %scalar.ph34.preheader ]
  %.120.i.us = phi ptr [ %i.ci, %scalar.ph34 ], [ %.120.i.us.ph, %scalar.ph34.preheader ] ; 2 uses
  %.11619.i.us = phi ptr [ %i.cj, %scalar.ph34 ], [ %.11619.i.us.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.bz = load i16, ptr %.11619.i.us, align 2, !tbaa !1193
  %i.ca = sext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.11619.i.us, i64 %i.am
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !1193
  %i.cd = sext i16 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = fmul nnan float %i.cf, 5.000000e-01
  store float %i.cg, ptr %.120.i.us, align 4, !tbaa !172
  %i.ch = add nuw nsw i32 %.021.i.us, 1           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 2 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.ch, %i.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %scalar.ph34, !llvm.loop !1390

._crit_edge.i.us:                                 ; preds = %scalar.ph34, %middle.block48
  %.lcssa1 = phi ptr [ %i.bg, %middle.block48 ], [ %i.ci, %scalar.ph34 ]
  %.lcssa = phi ptr [ %i.bh, %middle.block48 ], [ %i.cj, %scalar.ph34 ]
  %i.ck = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.lcssa, i64 %i.am
  %i.cm = icmp ult i64 %i.ck, %i.al
  br i1 %i.cm, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1391

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.ds, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 3 uses
  %.01523.i74.us = phi ptr [ %i.dt, %._crit_edge.i79.us ], [ %i.cn, %.preheader.lr.ph.i70.us ] ; 3 uses
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.preheader.i71.us
  %i.co = getelementptr i8, ptr %.01424.i73.us, i64 %i.bb ; 2 uses
  %i.cp = getelementptr i8, ptr %.01523.i74.us, i64 %i.bc ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next28, %vector.body20 ] ; 3 uses
  %i.cq = shl i64 %index21, 2
  %next.gep22 = getelementptr i8, ptr %.01424.i73.us, i64 %i.cq ; 2 uses
  %i.cr = shl i64 %index21, 1
  %next.gep23 = getelementptr i8, ptr %.01523.i74.us, i64 %i.cr ; 3 uses
  %i.cs = getelementptr i8, ptr %next.gep23, i64 8
  %wide.load24 = load <4 x i16>, ptr %next.gep23, align 2, !tbaa !1193
  %wide.load25 = load <4 x i16>, ptr %i.cs, align 2, !tbaa !1193
  %i.ct = sext <4 x i16> %wide.load24 to <4 x i32>
  %i.cu = sext <4 x i16> %wide.load25 to <4 x i32>
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %next.gep23, i64 %i.an ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %wide.load26 = load <4 x i16>, ptr %i.cv, align 2, !tbaa !1193
  %wide.load27 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !1193
  %i.cx = sext <4 x i16> %wide.load26 to <4 x i32>
  %i.cy = sext <4 x i16> %wide.load27 to <4 x i32>
  %i.cz = add nsw <4 x i32> %i.cx, %i.ct
  %i.da = add nsw <4 x i32> %i.cy, %i.cu
  %i.db = sitofp <4 x i32> %i.cz to <4 x float>
  %i.dc = sitofp <4 x i32> %i.da to <4 x float>
  %i.dd = fmul nnan <4 x float> %i.db, splat (float 5.000000e-01)
  %i.de = fmul nnan <4 x float> %i.dc, splat (float 5.000000e-01)
  %i.df = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x float> %i.dd, ptr %next.gep22, align 4, !tbaa !172
  store <4 x float> %i.de, ptr %i.df, align 4, !tbaa !172
  %index.next28 = add nuw i64 %index21, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next28, %n.vec19
  br i1 %i.dg, label %middle.block29, label %vector.body20, !llvm.loop !1392

middle.block29:                                   ; preds = %vector.body20
  br i1 %cmp.n30, label %._crit_edge.i79.us, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.preheader.i71.us, %middle.block29
  %.021.i75.us.ph = phi i32 [ 0, %.preheader.i71.us ], [ %i.ba, %middle.block29 ]
  %.120.i76.us.ph = phi ptr [ %.01424.i73.us, %.preheader.i71.us ], [ %i.co, %middle.block29 ]
  %.11619.i77.us.ph = phi ptr [ %.01523.i74.us, %.preheader.i71.us ], [ %i.cp, %middle.block29 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %.021.i75.us = phi i32 [ %i.dp, %scalar.ph15 ], [ %.021.i75.us.ph, %scalar.ph15.preheader ]
  %.120.i76.us = phi ptr [ %i.dq, %scalar.ph15 ], [ %.120.i76.us.ph, %scalar.ph15.preheader ] ; 2 uses
  %.11619.i77.us = phi ptr [ %i.dr, %scalar.ph15 ], [ %.11619.i77.us.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.dh = load i16, ptr %.11619.i77.us, align 2, !tbaa !1193
  %i.di = sext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.11619.i77.us, i64 %i.an
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !1193
  %i.dl = sext i16 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, %i.di
  %i.dn = sitofp i32 %i.dm to float
  %i.do = fmul nnan float %i.dn, 5.000000e-01
  store float %i.do, ptr %.120.i76.us, align 4, !tbaa !172
  %i.dp = add nuw nsw i32 %.021.i75.us, 1         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.120.i76.us, i64 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.11619.i77.us, i64 2 ; 2 uses
  %exitcond.not.i78.us = icmp eq i32 %i.dp, %i.i
  br i1 %exitcond.not.i78.us, label %._crit_edge.i79.us, label %scalar.ph15, !llvm.loop !1393

._crit_edge.i79.us:                               ; preds = %scalar.ph15, %middle.block29
  %.lcssa3 = phi ptr [ %i.co, %middle.block29 ], [ %i.dq, %scalar.ph15 ]
  %.lcssa2 = phi ptr [ %i.cp, %middle.block29 ], [ %i.dr, %scalar.ph15 ]
  %i.ds = add nuw i64 %.01325.i72.us, 2           ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.lcssa2, i64 %i.an
  %i.du = icmp ult i64 %i.ds, %i.al
  br i1 %i.du, label %.preheader.i71.us, label %.preheader.us.us129.preheader, !llvm.loop !1391

._crit_edge107.us126:                             ; preds = %._crit_edge.us.us138
  %i.dv = add nuw i64 %.050111.us116, 1           ; 2 uses
  %exitcond196.not = icmp eq i64 %i.dv, %i.ak
  br i1 %exitcond196.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.preheader.lr.ph.i.us, !llvm.loop !1394

.preheader.us.us129.preheader:                    ; preds = %._crit_edge.i79.us
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.af
  br label %.preheader.us.us129

.preheader.us.us129:                              ; preds = %.preheader.us.us129.preheader, %._crit_edge.us.us138
  %.046106.us.us130 = phi i64 [ %i.ev, %._crit_edge.us.us138 ], [ 0, %.preheader.us.us129.preheader ]
  %.047105.us.us131 = phi ptr [ %.lcssa5, %._crit_edge.us.us138 ], [ %i.t, %.preheader.us.us129.preheader ] ; 3 uses
  %.048104.us.us132 = phi ptr [ %.lcssa6, %._crit_edge.us.us138 ], [ %i.s, %.preheader.us.us129.preheader ] ; 3 uses
  %.159103.us.us133 = phi ptr [ %.lcssa4, %._crit_edge.us.us138 ], [ %.058109.us118, %.preheader.us.us129.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us129
  %i.dx = getelementptr i8, ptr %.047105.us.us131, i64 %i.be ; 2 uses
  %i.dy = getelementptr i8, ptr %.048104.us.us132, i64 %i.be ; 2 uses
  %i.dz = getelementptr i8, ptr %.159103.us.us133, i64 %i.bf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047105.us.us131, i64 %i.ea ; 2 uses
  %next.gep7 = getelementptr i8, ptr %.048104.us.us132, i64 %i.ea ; 2 uses
  %i.eb = shl i64 %index, 1
  %next.gep8 = getelementptr i8, ptr %.159103.us.us133, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <4 x float>, ptr %next.gep7, align 4, !tbaa !172
  %wide.load9 = load <4 x float>, ptr %i.ec, align 4, !tbaa !172
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  %wide.load10 = load <4 x float>, ptr %next.gep, align 4, !tbaa !172
  %wide.load11 = load <4 x float>, ptr %i.ed, align 4, !tbaa !172
  %i.ee = fadd <4 x float> %wide.load, %wide.load10
  %i.ef = fadd <4 x float> %wide.load9, %wide.load11
  %i.eg = fmul <4 x float> %i.ee, splat (float 5.000000e-01)
  %i.eh = fmul <4 x float> %i.ef, splat (float 5.000000e-01)
  %i.ei = fptosi <4 x float> %i.eg to <4 x i16>
  %i.ej = fptosi <4 x float> %i.eh to <4 x i16>
  %i.ek = getelementptr i8, ptr %next.gep8, i64 8
  store <4 x i16> %i.ei, ptr %next.gep8, align 2, !tbaa !1193
  store <4 x i16> %i.ej, ptr %i.ek, align 2, !tbaa !1193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1395

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us138, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us129, %middle.block
  %.0100.us.us134.ph = phi i32 [ 0, %.preheader.us.us129 ], [ %i.bd, %middle.block ]
  %.199.us.us135.ph = phi ptr [ %.047105.us.us131, %.preheader.us.us129 ], [ %i.dx, %middle.block ]
  %.14998.us.us136.ph = phi ptr [ %.048104.us.us132, %.preheader.us.us129 ], [ %i.dy, %middle.block ]
  %.26097.us.us137.ph = phi ptr [ %.159103.us.us133, %.preheader.us.us129 ], [ %i.dz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0100.us.us134 = phi i32 [ %i.er, %scalar.ph ], [ %.0100.us.us134.ph, %scalar.ph.preheader ]
  %.199.us.us135 = phi ptr [ %i.et, %scalar.ph ], [ %.199.us.us135.ph, %scalar.ph.preheader ] ; 2 uses
  %.14998.us.us136 = phi ptr [ %i.es, %scalar.ph ], [ %.14998.us.us136.ph, %scalar.ph.preheader ] ; 2 uses
  %.26097.us.us137 = phi ptr [ %i.eu, %scalar.ph ], [ %.26097.us.us137.ph, %scalar.ph.preheader ] ; 2 uses
  %i.em = load float, ptr %.14998.us.us136, align 4, !tbaa !172
  %i.en = load float, ptr %.199.us.us135, align 4, !tbaa !172
  %i.eo = fadd float %i.em, %i.en
  %i.ep = fmul float %i.eo, 5.000000e-01
  %i.eq = fptosi float %i.ep to i16
  store i16 %i.eq, ptr %.26097.us.us137, align 2, !tbaa !1193
  %i.er = add nuw nsw i32 %.0100.us.us134, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 2 ; 2 uses
  %exitcond192.not = icmp eq i32 %i.er, %i.i
  br i1 %exitcond192.not, label %._crit_edge.us.us138, label %scalar.ph, !llvm.loop !1396

._crit_edge.us.us138:                             ; preds = %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.dy, %middle.block ], [ %i.es, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.dx, %middle.block ], [ %i.et, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.dz, %middle.block ], [ %i.eu, %scalar.ph ] ; 2 uses
  %i.ev = add nuw i64 %.046106.us.us130, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.ev, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us126, label %.preheader.us.us129, !llvm.loop !1397

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us126, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.l ], [ %i.ez, %bb.n ], [ %i.ey, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.ew, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIjEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IjEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 3 uses
  %i.an = zext i32 %i.i to i64                    ; 7 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.av
  %min.iters.check33 = icmp ult i32 %i.i, 8
  %n.vec36 = and i64 %i.an, 2147483640            ; 4 uses
  %i.ax = trunc nuw nsw i64 %n.vec36 to i32
  %i.ay = shl nuw nsw i64 %n.vec36, 2             ; 2 uses
  %cmp.n47 = icmp eq i64 %n.vec36, %i.an
  %min.iters.check14 = icmp ult i32 %i.i, 8
  %n.vec17 = and i64 %i.an, 2147483640            ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec17 to i32
  %i.ba = shl nuw nsw i64 %n.vec17, 2             ; 2 uses
  %cmp.n28 = icmp eq i64 %n.vec17, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %4, 2147483644                 ; 4 uses
  %i.bb = trunc nuw nsw i64 %n.vec to i32
  %i.bc = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.de, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.df, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ca, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 3 uses
  %.01523.i.us = phi ptr [ %i.cb, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 3 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %.preheader.i.us
  %i.bd = getelementptr i8, ptr %.01424.i.us, i64 %i.ay ; 2 uses
  %i.be = getelementptr i8, ptr %.01523.i.us, i64 %i.ay ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph34
  %index38 = phi i64 [ 0, %vector.ph34 ], [ %index.next45, %vector.body37 ] ; 2 uses
  %i.bf = shl i64 %index38, 2                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %.01424.i.us, i64 %i.bf ; 2 uses
  %next.gep40 = getelementptr i8, ptr %.01523.i.us, i64 %i.bf ; 3 uses
  %i.bg = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !tbaa !3
  %wide.load42 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %next.gep40, i64 %i.am ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load43 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !3
  %wide.load44 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add <4 x i32> %wide.load43, %wide.load41
  %i.bk = add <4 x i32> %wide.load44, %wide.load42
  %i.bl = uitofp <4 x i32> %i.bj to <4 x float>
  %i.bm = uitofp <4 x i32> %i.bk to <4 x float>
  %i.bn = fmul nnan <4 x float> %i.bl, splat (float 5.000000e-01)
  %i.bo = fmul nnan <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bp = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x float> %i.bn, ptr %next.gep39, align 4, !tbaa !172
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !172
  %index.next45 = add nuw i64 %index38, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next45, %n.vec36
  br i1 %i.bq, label %middle.block46, label %vector.body37, !llvm.loop !1398

middle.block46:                                   ; preds = %vector.body37
  br i1 %cmp.n47, label %._crit_edge.i.us, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %.preheader.i.us, %middle.block46
  %.021.i.us.ph = phi i32 [ 0, %.preheader.i.us ], [ %i.ax, %middle.block46 ]
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %.preheader.i.us ], [ %i.bd, %middle.block46 ]
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %.preheader.i.us ], [ %i.be, %middle.block46 ]
  br label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %.021.i.us = phi i32 [ %i.bx, %scalar.ph32 ], [ %.021.i.us.ph, %scalar.ph32.preheader ]
  %.120.i.us = phi ptr [ %i.by, %scalar.ph32 ], [ %.120.i.us.ph, %scalar.ph32.preheader ] ; 2 uses
  %.11619.i.us = phi ptr [ %i.bz, %scalar.ph32 ], [ %.11619.i.us.ph, %scalar.ph32.preheader ] ; 3 uses
  %i.br = load i32, ptr %.11619.i.us, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.11619.i.us, i64 %i.am
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = add i32 %i.bt, %i.br
  %i.bv = uitofp i32 %i.bu to float
  %i.bw = fmul nnan float %i.bv, 5.000000e-01
  store float %i.bw, ptr %.120.i.us, align 4, !tbaa !172
  %i.bx = add nuw nsw i32 %.021.i.us, 1           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 4 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.bx, %i.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %scalar.ph32, !llvm.loop !1399

._crit_edge.i.us:                                 ; preds = %scalar.ph32, %middle.block46
  %.lcssa1 = phi ptr [ %i.bd, %middle.block46 ], [ %i.by, %scalar.ph32 ]
  %.lcssa = phi ptr [ %i.be, %middle.block46 ], [ %i.bz, %scalar.ph32 ]
  %i.ca = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.am
  %i.cc = icmp ult i64 %i.ca, %i.al
  br i1 %i.cc, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1400

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.db, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 3 uses
  %.01523.i74.us = phi ptr [ %i.dc, %._crit_edge.i79.us ], [ %i.cd, %.preheader.lr.ph.i70.us ] ; 3 uses
  br i1 %min.iters.check14, label %scalar.ph13.preheader, label %vector.ph15

vector.ph15:                                      ; preds = %.preheader.i71.us
  %i.ce = getelementptr i8, ptr %.01424.i73.us, i64 %i.ba ; 2 uses
  %i.cf = getelementptr i8, ptr %.01523.i74.us, i64 %i.ba ; 2 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph15
  %index19 = phi i64 [ 0, %vector.ph15 ], [ %index.next26, %vector.body18 ] ; 2 uses
  %i.cg = shl i64 %index19, 2                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %.01424.i73.us, i64 %i.cg ; 2 uses
  %next.gep21 = getelementptr i8, ptr %.01523.i74.us, i64 %i.cg ; 3 uses
  %i.ch = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load22 = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !3
  %wide.load23 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %next.gep21, i64 %i.an ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load24 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !3
  %wide.load25 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %i.ck = add <4 x i32> %wide.load24, %wide.load22
  %i.cl = add <4 x i32> %wide.load25, %wide.load23
  %i.cm = uitofp <4 x i32> %i.ck to <4 x float>
  %i.cn = uitofp <4 x i32> %i.cl to <4 x float>
  %i.co = fmul nnan <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.cp = fmul nnan <4 x float> %i.cn, splat (float 5.000000e-01)
  %i.cq = getelementptr i8, ptr %next.gep20, i64 16
  store <4 x float> %i.co, ptr %next.gep20, align 4, !tbaa !172
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !172
  %index.next26 = add nuw i64 %index19, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next26, %n.vec17
  br i1 %i.cr, label %middle.block27, label %vector.body18, !llvm.loop !1401

middle.block27:                                   ; preds = %vector.body18
  br i1 %cmp.n28, label %._crit_edge.i79.us, label %scalar.ph13.preheader

scalar.ph13.preheader:                            ; preds = %.preheader.i71.us, %middle.block27
  %.021.i75.us.ph = phi i32 [ 0, %.preheader.i71.us ], [ %i.az, %middle.block27 ]
  %.120.i76.us.ph = phi ptr [ %.01424.i73.us, %.preheader.i71.us ], [ %i.ce, %middle.block27 ]
  %.11619.i77.us.ph = phi ptr [ %.01523.i74.us, %.preheader.i71.us ], [ %i.cf, %middle.block27 ]
  br label %scalar.ph13

scalar.ph13:                                      ; preds = %scalar.ph13.preheader, %scalar.ph13
  %.021.i75.us = phi i32 [ %i.cy, %scalar.ph13 ], [ %.021.i75.us.ph, %scalar.ph13.preheader ]
  %.120.i76.us = phi ptr [ %i.cz, %scalar.ph13 ], [ %.120.i76.us.ph, %scalar.ph13.preheader ] ; 2 uses
  %.11619.i77.us = phi ptr [ %i.da, %scalar.ph13 ], [ %.11619.i77.us.ph, %scalar.ph13.preheader ] ; 3 uses
  %i.cs = load i32, ptr %.11619.i77.us, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.11619.i77.us, i64 %i.an
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = add i32 %i.cu, %i.cs
  %i.cw = uitofp i32 %i.cv to float
  %i.cx = fmul nnan float %i.cw, 5.000000e-01
  store float %i.cx, ptr %.120.i76.us, align 4, !tbaa !172
  %i.cy = add nuw nsw i32 %.021.i75.us, 1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.120.i76.us, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.11619.i77.us, i64 4 ; 2 uses
  %exitcond.not.i78.us = icmp eq i32 %i.cy, %i.i
  br i1 %exitcond.not.i78.us, label %._crit_edge.i79.us, label %scalar.ph13, !llvm.loop !1402

._crit_edge.i79.us:                               ; preds = %scalar.ph13, %middle.block27
  %.lcssa3 = phi ptr [ %i.ce, %middle.block27 ], [ %i.cz, %scalar.ph13 ]
  %.lcssa2 = phi ptr [ %i.cf, %middle.block27 ], [ %i.da, %scalar.ph13 ]
  %i.db = add nuw i64 %.01325.i72.us, 2           ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa2, i64 %i.an
  %i.dd = icmp ult i64 %i.db, %i.al
  br i1 %i.dd, label %.preheader.i71.us, label %.preheader.us.us129.preheader, !llvm.loop !1400

._crit_edge107.us126:                             ; preds = %._crit_edge.us.us138
  %i.de = add nuw i64 %.050111.us116, 1           ; 2 uses
  %exitcond196.not = icmp eq i64 %i.de, %i.ak
  br i1 %exitcond196.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.preheader.lr.ph.i.us, !llvm.loop !1403

.preheader.us.us129.preheader:                    ; preds = %._crit_edge.i79.us
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.af
  br label %.preheader.us.us129

.preheader.us.us129:                              ; preds = %.preheader.us.us129.preheader, %._crit_edge.us.us138
  %.046106.us.us130 = phi i64 [ %i.dx, %._crit_edge.us.us138 ], [ 0, %.preheader.us.us129.preheader ]
  %.047105.us.us131 = phi ptr [ %.lcssa5, %._crit_edge.us.us138 ], [ %i.t, %.preheader.us.us129.preheader ] ; 3 uses
  %.048104.us.us132 = phi ptr [ %.lcssa6, %._crit_edge.us.us138 ], [ %i.s, %.preheader.us.us129.preheader ] ; 3 uses
  %.159103.us.us133 = phi ptr [ %.lcssa4, %._crit_edge.us.us138 ], [ %.058109.us118, %.preheader.us.us129.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us129
  %i.dg = getelementptr i8, ptr %.047105.us.us131, i64 %i.bc ; 2 uses
  %i.dh = getelementptr i8, ptr %.048104.us.us132, i64 %i.bc ; 2 uses
  %i.di = getelementptr i8, ptr %.159103.us.us133, i64 %i.bc ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.047105.us.us131, i64 %i.dj
  %next.gep7 = getelementptr i8, ptr %.048104.us.us132, i64 %i.dj
  %next.gep8 = getelementptr i8, ptr %.159103.us.us133, i64 %i.dj
  %wide.load = load <4 x float>, ptr %next.gep7, align 4, !tbaa !172
  %wide.load9 = load <4 x float>, ptr %next.gep, align 4, !tbaa !172
  %i.dk = fadd <4 x float> %wide.load, %wide.load9
  %i.dl = fmul <4 x float> %i.dk, splat (float 5.000000e-01)
  %i.dm = fptoui <4 x float> %i.dl to <4 x i32>
  store <4 x i32> %i.dm, ptr %next.gep8, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !1404

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us138, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us129, %middle.block
  %.0100.us.us134.ph = phi i32 [ 0, %.preheader.us.us129 ], [ %i.bb, %middle.block ]
  %.199.us.us135.ph = phi ptr [ %.047105.us.us131, %.preheader.us.us129 ], [ %i.dg, %middle.block ]
  %.14998.us.us136.ph = phi ptr [ %.048104.us.us132, %.preheader.us.us129 ], [ %i.dh, %middle.block ]
  %.26097.us.us137.ph = phi ptr [ %.159103.us.us133, %.preheader.us.us129 ], [ %i.di, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0100.us.us134 = phi i32 [ %i.dt, %scalar.ph ], [ %.0100.us.us134.ph, %scalar.ph.preheader ]
  %.199.us.us135 = phi ptr [ %i.dv, %scalar.ph ], [ %.199.us.us135.ph, %scalar.ph.preheader ] ; 2 uses
  %.14998.us.us136 = phi ptr [ %i.du, %scalar.ph ], [ %.14998.us.us136.ph, %scalar.ph.preheader ] ; 2 uses
  %.26097.us.us137 = phi ptr [ %i.dw, %scalar.ph ], [ %.26097.us.us137.ph, %scalar.ph.preheader ] ; 2 uses
  %i.do = load float, ptr %.14998.us.us136, align 4, !tbaa !172
  %i.dp = load float, ptr %.199.us.us135, align 4, !tbaa !172
  %i.dq = fadd float %i.do, %i.dp
  %i.dr = fmul float %i.dq, 5.000000e-01
  %i.ds = fptoui float %i.dr to i32
  store i32 %i.ds, ptr %.26097.us.us137, align 4, !tbaa !3
  %i.dt = add nuw nsw i32 %.0100.us.us134, 1      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 4 ; 2 uses
  %exitcond192.not = icmp eq i32 %i.dt, %i.i
  br i1 %exitcond192.not, label %._crit_edge.us.us138, label %scalar.ph, !llvm.loop !1405

._crit_edge.us.us138:                             ; preds = %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.dh, %middle.block ], [ %i.du, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.dg, %middle.block ], [ %i.dv, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.di, %middle.block ], [ %i.dw, %scalar.ph ] ; 2 uses
  %i.dx = add nuw i64 %.046106.us.us130, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.dx, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us126, label %.preheader.us.us129, !llvm.loop !1406

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us126, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.l ], [ %i.eb, %bb.n ], [ %i.ea, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.dy, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIiEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IiEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 3 uses
  %i.an = zext i32 %i.i to i64                    ; 7 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.av
  %min.iters.check35 = icmp ult i32 %i.i, 8
  %n.vec38 = and i64 %i.an, 2147483640            ; 4 uses
  %i.ax = trunc nuw nsw i64 %n.vec38 to i32
  %i.ay = shl nuw nsw i64 %n.vec38, 2             ; 2 uses
  %cmp.n49 = icmp eq i64 %n.vec38, %i.an
  %min.iters.check16 = icmp ult i32 %i.i, 8
  %n.vec19 = and i64 %i.an, 2147483640            ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec19 to i32
  %i.ba = shl nuw nsw i64 %n.vec19, 2             ; 2 uses
  %cmp.n30 = icmp eq i64 %n.vec19, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %4, 2147483640                 ; 4 uses
  %i.bb = trunc nuw nsw i64 %n.vec to i32
  %i.bc = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.de, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.df, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ca, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 3 uses
  %.01523.i.us = phi ptr [ %i.cb, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 3 uses
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.preheader.i.us
  %i.bd = getelementptr i8, ptr %.01424.i.us, i64 %i.ay ; 2 uses
  %i.be = getelementptr i8, ptr %.01523.i.us, i64 %i.ay ; 2 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph36
  %index40 = phi i64 [ 0, %vector.ph36 ], [ %index.next47, %vector.body39 ] ; 2 uses
  %i.bf = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %.01424.i.us, i64 %i.bf ; 2 uses
  %next.gep42 = getelementptr i8, ptr %.01523.i.us, i64 %i.bf ; 3 uses
  %i.bg = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !3
  %wide.load44 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %next.gep42, i64 %i.am ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load45 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !3
  %wide.load46 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add nsw <4 x i32> %wide.load45, %wide.load43
  %i.bk = add nsw <4 x i32> %wide.load46, %wide.load44
  %i.bl = sitofp <4 x i32> %i.bj to <4 x float>
  %i.bm = sitofp <4 x i32> %i.bk to <4 x float>
  %i.bn = fmul nnan <4 x float> %i.bl, splat (float 5.000000e-01)
  %i.bo = fmul nnan <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x float> %i.bn, ptr %next.gep41, align 4, !tbaa !172
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !172
  %index.next47 = add nuw i64 %index40, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.bq, label %middle.block48, label %vector.body39, !llvm.loop !1407

middle.block48:                                   ; preds = %vector.body39
  br i1 %cmp.n49, label %._crit_edge.i.us, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.preheader.i.us, %middle.block48
  %.021.i.us.ph = phi i32 [ 0, %.preheader.i.us ], [ %i.ax, %middle.block48 ]
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %.preheader.i.us ], [ %i.bd, %middle.block48 ]
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %.preheader.i.us ], [ %i.be, %middle.block48 ]
  br label %scalar.ph34

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %.021.i.us = phi i32 [ %i.bx, %scalar.ph34 ], [ %.021.i.us.ph, %scalar.ph34.preheader ]
  %.120.i.us = phi ptr [ %i.by, %scalar.ph34 ], [ %.120.i.us.ph, %scalar.ph34.preheader ] ; 2 uses
  %.11619.i.us = phi ptr [ %i.bz, %scalar.ph34 ], [ %.11619.i.us.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.br = load i32, ptr %.11619.i.us, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.11619.i.us, i64 %i.am
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fmul nnan float %i.bv, 5.000000e-01
  store float %i.bw, ptr %.120.i.us, align 4, !tbaa !172
  %i.bx = add nuw nsw i32 %.021.i.us, 1           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 4 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.bx, %i.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %scalar.ph34, !llvm.loop !1408

._crit_edge.i.us:                                 ; preds = %scalar.ph34, %middle.block48
  %.lcssa1 = phi ptr [ %i.bd, %middle.block48 ], [ %i.by, %scalar.ph34 ]
  %.lcssa = phi ptr [ %i.be, %middle.block48 ], [ %i.bz, %scalar.ph34 ]
  %i.ca = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.am
  %i.cc = icmp ult i64 %i.ca, %i.al
  br i1 %i.cc, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1409

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.db, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 3 uses
  %.01523.i74.us = phi ptr [ %i.dc, %._crit_edge.i79.us ], [ %i.cd, %.preheader.lr.ph.i70.us ] ; 3 uses
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.preheader.i71.us
  %i.ce = getelementptr i8, ptr %.01424.i73.us, i64 %i.ba ; 2 uses
  %i.cf = getelementptr i8, ptr %.01523.i74.us, i64 %i.ba ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next28, %vector.body20 ] ; 2 uses
  %i.cg = shl i64 %index21, 2                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %.01424.i73.us, i64 %i.cg ; 2 uses
  %next.gep23 = getelementptr i8, ptr %.01523.i74.us, i64 %i.cg ; 3 uses
  %i.ch = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load24 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !3
  %wide.load25 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %next.gep23, i64 %i.an ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load26 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !3
  %wide.load27 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %i.ck = add nsw <4 x i32> %wide.load26, %wide.load24
  %i.cl = add nsw <4 x i32> %wide.load27, %wide.load25
  %i.cm = sitofp <4 x i32> %i.ck to <4 x float>
  %i.cn = sitofp <4 x i32> %i.cl to <4 x float>
  %i.co = fmul nnan <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.cp = fmul nnan <4 x float> %i.cn, splat (float 5.000000e-01)
  %i.cq = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x float> %i.co, ptr %next.gep22, align 4, !tbaa !172
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !172
  %index.next28 = add nuw i64 %index21, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next28, %n.vec19
  br i1 %i.cr, label %middle.block29, label %vector.body20, !llvm.loop !1410

middle.block29:                                   ; preds = %vector.body20
  br i1 %cmp.n30, label %._crit_edge.i79.us, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.preheader.i71.us, %middle.block29
  %.021.i75.us.ph = phi i32 [ 0, %.preheader.i71.us ], [ %i.az, %middle.block29 ]
  %.120.i76.us.ph = phi ptr [ %.01424.i73.us, %.preheader.i71.us ], [ %i.ce, %middle.block29 ]
  %.11619.i77.us.ph = phi ptr [ %.01523.i74.us, %.preheader.i71.us ], [ %i.cf, %middle.block29 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %.021.i75.us = phi i32 [ %i.cy, %scalar.ph15 ], [ %.021.i75.us.ph, %scalar.ph15.preheader ]
  %.120.i76.us = phi ptr [ %i.cz, %scalar.ph15 ], [ %.120.i76.us.ph, %scalar.ph15.preheader ] ; 2 uses
  %.11619.i77.us = phi ptr [ %i.da, %scalar.ph15 ], [ %.11619.i77.us.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cs = load i32, ptr %.11619.i77.us, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.11619.i77.us, i64 %i.an
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = add nsw i32 %i.cu, %i.cs
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = fmul nnan float %i.cw, 5.000000e-01
  store float %i.cx, ptr %.120.i76.us, align 4, !tbaa !172
  %i.cy = add nuw nsw i32 %.021.i75.us, 1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.120.i76.us, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.11619.i77.us, i64 4 ; 2 uses
  %exitcond.not.i78.us = icmp eq i32 %i.cy, %i.i
  br i1 %exitcond.not.i78.us, label %._crit_edge.i79.us, label %scalar.ph15, !llvm.loop !1411

._crit_edge.i79.us:                               ; preds = %scalar.ph15, %middle.block29
  %.lcssa3 = phi ptr [ %i.ce, %middle.block29 ], [ %i.cz, %scalar.ph15 ]
  %.lcssa2 = phi ptr [ %i.cf, %middle.block29 ], [ %i.da, %scalar.ph15 ]
  %i.db = add nuw i64 %.01325.i72.us, 2           ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa2, i64 %i.an
  %i.dd = icmp ult i64 %i.db, %i.al
  br i1 %i.dd, label %.preheader.i71.us, label %.preheader.us.us129.preheader, !llvm.loop !1409

._crit_edge107.us126:                             ; preds = %._crit_edge.us.us138
  %i.de = add nuw i64 %.050111.us116, 1           ; 2 uses
  %exitcond196.not = icmp eq i64 %i.de, %i.ak
  br i1 %exitcond196.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.preheader.lr.ph.i.us, !llvm.loop !1412

.preheader.us.us129.preheader:                    ; preds = %._crit_edge.i79.us
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.af
  br label %.preheader.us.us129

.preheader.us.us129:                              ; preds = %.preheader.us.us129.preheader, %._crit_edge.us.us138
  %.046106.us.us130 = phi i64 [ %i.ed, %._crit_edge.us.us138 ], [ 0, %.preheader.us.us129.preheader ]
  %.047105.us.us131 = phi ptr [ %.lcssa5, %._crit_edge.us.us138 ], [ %i.t, %.preheader.us.us129.preheader ] ; 3 uses
  %.048104.us.us132 = phi ptr [ %.lcssa6, %._crit_edge.us.us138 ], [ %i.s, %.preheader.us.us129.preheader ] ; 3 uses
  %.159103.us.us133 = phi ptr [ %.lcssa4, %._crit_edge.us.us138 ], [ %.058109.us118, %.preheader.us.us129.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us129
  %i.dg = getelementptr i8, ptr %.047105.us.us131, i64 %i.bc ; 2 uses
  %i.dh = getelementptr i8, ptr %.048104.us.us132, i64 %i.bc ; 2 uses
  %i.di = getelementptr i8, ptr %.159103.us.us133, i64 %i.bc ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.047105.us.us131, i64 %i.dj ; 2 uses
  %next.gep7 = getelementptr i8, ptr %.048104.us.us132, i64 %i.dj ; 2 uses
  %next.gep8 = getelementptr i8, ptr %.159103.us.us133, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <4 x float>, ptr %next.gep7, align 4, !tbaa !172
  %wide.load9 = load <4 x float>, ptr %i.dk, align 4, !tbaa !172
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load10 = load <4 x float>, ptr %next.gep, align 4, !tbaa !172
  %wide.load11 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = fadd <4 x float> %wide.load, %wide.load10
  %i.dn = fadd <4 x float> %wide.load9, %wide.load11
  %i.do = fmul <4 x float> %i.dm, splat (float 5.000000e-01)
  %i.dp = fmul <4 x float> %i.dn, splat (float 5.000000e-01)
  %i.dq = fptosi <4 x float> %i.do to <4 x i32>
  %i.dr = fptosi <4 x float> %i.dp to <4 x i32>
  %i.ds = getelementptr i8, ptr %next.gep8, i64 16
  store <4 x i32> %i.dq, ptr %next.gep8, align 4, !tbaa !3
  store <4 x i32> %i.dr, ptr %i.ds, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1413

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us138, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us129, %middle.block
  %.0100.us.us134.ph = phi i32 [ 0, %.preheader.us.us129 ], [ %i.bb, %middle.block ]
  %.199.us.us135.ph = phi ptr [ %.047105.us.us131, %.preheader.us.us129 ], [ %i.dg, %middle.block ]
  %.14998.us.us136.ph = phi ptr [ %.048104.us.us132, %.preheader.us.us129 ], [ %i.dh, %middle.block ]
  %.26097.us.us137.ph = phi ptr [ %.159103.us.us133, %.preheader.us.us129 ], [ %i.di, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0100.us.us134 = phi i32 [ %i.dz, %scalar.ph ], [ %.0100.us.us134.ph, %scalar.ph.preheader ]
  %.199.us.us135 = phi ptr [ %i.eb, %scalar.ph ], [ %.199.us.us135.ph, %scalar.ph.preheader ] ; 2 uses
  %.14998.us.us136 = phi ptr [ %i.ea, %scalar.ph ], [ %.14998.us.us136.ph, %scalar.ph.preheader ] ; 2 uses
  %.26097.us.us137 = phi ptr [ %i.ec, %scalar.ph ], [ %.26097.us.us137.ph, %scalar.ph.preheader ] ; 2 uses
  %i.du = load float, ptr %.14998.us.us136, align 4, !tbaa !172
  %i.dv = load float, ptr %.199.us.us135, align 4, !tbaa !172
  %i.dw = fadd float %i.du, %i.dv
  %i.dx = fmul float %i.dw, 5.000000e-01
  %i.dy = fptosi float %i.dx to i32
  store i32 %i.dy, ptr %.26097.us.us137, align 4, !tbaa !3
  %i.dz = add nuw nsw i32 %.0100.us.us134, 1      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.14998.us.us136, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.199.us.us135, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.26097.us.us137, i64 4 ; 2 uses
  %exitcond192.not = icmp eq i32 %i.dz, %i.i
  br i1 %exitcond192.not, label %._crit_edge.us.us138, label %scalar.ph, !llvm.loop !1414

._crit_edge.us.us138:                             ; preds = %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.dh, %middle.block ], [ %i.ea, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.dg, %middle.block ], [ %i.eb, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.di, %middle.block ], [ %i.ec, %scalar.ph ] ; 2 uses
  %i.ed = add nuw i64 %.046106.us.us130, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.ed, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us126, label %.preheader.us.us129, !llvm.loop !1415

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us126, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.l ], [ %i.eh, %bb.n ], [ %i.eg, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.ee, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIdEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IdEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !231  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !229  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !151
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 3 uses
  %i.an = zext i32 %i.i to i64                    ; 7 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.av
  %min.iters.check35 = icmp ult i32 %i.i, 4
  %n.vec38 = and i64 %i.an, 2147483644            ; 5 uses
  %i.ax = trunc nuw nsw i64 %n.vec38 to i32
  %i.ay = shl nuw nsw i64 %n.vec38, 2
  %i.az = shl nuw nsw i64 %n.vec38, 3
  %cmp.n49 = icmp eq i64 %n.vec38, %i.an
  %min.iters.check16 = icmp ult i32 %i.i, 4
  %n.vec19 = and i64 %i.an, 2147483644            ; 5 uses
  %i.ba = trunc nuw nsw i64 %n.vec19 to i32
  %i.bb = shl nuw nsw i64 %n.vec19, 2
  %i.bc = shl nuw nsw i64 %n.vec19, 3
  %cmp.n30 = icmp eq i64 %n.vec19, %i.an
  %4 = zext nneg i32 %i.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %4, 2147483644                 ; 5 uses
  %i.bd = trunc nuw nsw i64 %n.vec to i32
  %i.be = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bf = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us126
  %.050111.us116 = phi i64 [ %i.dj, %._crit_edge107.us126 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.057110.us117 = phi ptr [ %i.dk, %._crit_edge107.us126 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  %.058109.us118 = phi ptr [ %.lcssa4, %._crit_edge107.us126 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i.us, %._crit_edge.i.us
  %.01325.i.us = phi i64 [ %i.ce, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 3 uses
  %.01523.i.us = phi ptr [ %i.cf, %._crit_edge.i.us ], [ %.057110.us117, %.preheader.lr.ph.i.us ] ; 3 uses
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.preheader.i.us
  %i.bg = getelementptr i8, ptr %.01424.i.us, i64 %i.ay ; 2 uses
  %i.bh = getelementptr i8, ptr %.01523.i.us, i64 %i.az ; 2 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph36
  %index40 = phi i64 [ 0, %vector.ph36 ], [ %index.next47, %vector.body39 ] ; 3 uses
  %i.bi = shl i64 %index40, 2
  %next.gep41 = getelementptr i8, ptr %.01424.i.us, i64 %i.bi ; 2 uses
  %i.bj = shl i64 %index40, 3
  %next.gep42 = getelementptr i8, ptr %.01523.i.us, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load43 = load <2 x double>, ptr %next.gep42, align 8, !tbaa !39
  %wide.load44 = load <2 x double>, ptr %i.bk, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %next.gep42, i64 %i.am ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load45 = load <2 x double>, ptr %i.bl, align 8, !tbaa !39
  %wide.load46 = load <2 x double>, ptr %i.bm, align 8, !tbaa !39
  %i.bn = fadd <2 x double> %wide.load43, %wide.load45
  %i.bo = fadd <2 x double> %wide.load44, %wide.load46
  %i.bp = fptrunc <2 x double> %i.bn to <2 x float>
  %i.bq = fptrunc <2 x double> %i.bo to <2 x float>
  %i.br = fmul <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.bs = fmul <2 x float> %i.bq, splat (float 5.000000e-01)
  %i.bt = getelementptr i8, ptr %next.gep41, i64 8
  store <2 x float> %i.br, ptr %next.gep41, align 4, !tbaa !172
  store <2 x float> %i.bs, ptr %i.bt, align 4, !tbaa !172
  %index.next47 = add nuw i64 %index40, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.bu, label %middle.block48, label %vector.body39, !llvm.loop !1416

middle.block48:                                   ; preds = %vector.body39
  br i1 %cmp.n49, label %._crit_edge.i.us, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.preheader.i.us, %middle.block48
  %.021.i.us.ph = phi i32 [ 0, %.preheader.i.us ], [ %i.ax, %middle.block48 ]
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %.preheader.i.us ], [ %i.bg, %middle.block48 ]
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %.preheader.i.us ], [ %i.bh, %middle.block48 ]
  br label %scalar.ph34

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %.021.i.us = phi i32 [ %i.cb, %scalar.ph34 ], [ %.021.i.us.ph, %scalar.ph34.preheader ]
  %.120.i.us = phi ptr [ %i.cc, %scalar.ph34 ], [ %.120.i.us.ph, %scalar.ph34.preheader ] ; 2 uses
  %.11619.i.us = phi ptr [ %i.cd, %scalar.ph34 ], [ %.11619.i.us.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.bv = load double, ptr %.11619.i.us, align 8, !tbaa !39
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.11619.i.us, i64 %i.am
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !39
  %i.by = fadd double %i.bv, %i.bx
  %i.bz = fptrunc double %i.by to float
  %i.ca = fmul float %i.bz, 5.000000e-01
  store float %i.ca, ptr %.120.i.us, align 4, !tbaa !172
  %i.cb = add nuw nsw i32 %.021.i.us, 1           ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.120.i.us, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.11619.i.us, i64 8 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.cb, %i.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %scalar.ph34, !llvm.loop !1417

._crit_edge.i.us:                                 ; preds = %scalar.ph34, %middle.block48
  %.lcssa1 = phi ptr [ %i.bg, %middle.block48 ], [ %i.cc, %scalar.ph34 ]
  %.lcssa = phi ptr [ %i.bh, %middle.block48 ], [ %i.cd, %scalar.ph34 ]
  %i.ce = add nuw i64 %.01325.i.us, 2             ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.am
  %i.cg = icmp ult i64 %i.ce, %i.al
  br i1 %i.cg, label %.preheader.i.us, label %.preheader.lr.ph.i70.us, !llvm.loop !1418

.preheader.lr.ph.i70.us:                          ; preds = %._crit_edge.i.us
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.057110.us117, i64 %i.af ; 2 uses
  br label %.preheader.i71.us

.preheader.i71.us:                                ; preds = %._crit_edge.i79.us, %.preheader.lr.ph.i70.us
  %.01325.i72.us = phi i64 [ %i.dg, %._crit_edge.i79.us ], [ 0, %.preheader.lr.ph.i70.us ]
  %.01424.i73.us = phi ptr [ %.lcssa3, %._crit_edge.i79.us ], [ %i.t, %.preheader.lr.ph.i70.us ] ; 3 uses
  %.01523.i74.us = phi ptr [ %i.dh, %._crit_edge.i79.us ], [ %i.ch, %.preheader.lr.ph.i70.us ] ; 3 uses
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.preheader.i71.us
  %i.ci = getelementptr i8, ptr %.01424.i73.us, i64 %i.bb ; 2 uses
  %i.cj = getelementptr i8, ptr %.01523.i74.us, i64 %i.bc ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next28, %vector.body20 ] ; 3 uses
  %i.ck = shl i64 %index21, 2
  %next.gep22 = getelementptr i8, ptr %.01424.i73.us, i64 %i.ck ; 2 uses
  %i.cl = shl i64 %index21, 3
  %next.gep23 = getelementptr i8, ptr %.01523.i74.us, i64 %i.cl ; 3 uses
  %i.cm = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load24 = load <2 x double>, ptr %next.gep23, align 8, !tbaa !39
  %wide.load25 = load <2 x double>, ptr %i.cm, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %next.gep23, i64 %i.an ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load26 = load <2 x double>, ptr %i.cn, align 8, !tbaa !39
  %wide.load27 = load <2 x double>, ptr %i.co, align 8, !tbaa !39
  %i.cp = fadd <2 x double> %wide.load24, %wide.load26
  %i.cq = fadd <2 x double> %wide.load25, %wide.load27
  %i.cr = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cs = fptrunc <2 x double> %i.cq to <2 x float>
  %i.ct = fmul <2 x float> %i.cr, splat (float 5.000000e-01)
  %i.cu = fmul <2 x float> %i.cs, splat (float 5.000000e-01)
  %i.cv = getelementptr i8, ptr %next.gep22, i64 8
  store <2 x float> %i.ct, ptr %next.gep22, align 4, !tbaa !172
  store <2 x float> %i.cu, ptr %i.cv, align 4, !tbaa !172
  %index.next28 = add nuw i64 %index21, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next28, %n.vec19
  br i1 %i.cw, label %middle.block29, label %vector.body20, !llvm.loop !1419

middle.block29:                                   ; preds = %vector.body20
  br i1 %cmp.n30, label %._crit_edge.i79.us, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.preheader.i71.us, %middle.block29
  %.021.i75.us.ph = phi i32 [ 0, %.preheader.i71.us ], [ %i.ba, %middle.block29 ]
  %.120.i76.us.ph = phi ptr [ %.01424.i73.us, %.preheader.i71.us ], [ %i.ci, %middle.block29 ]
  %.11619.i77.us.ph = phi ptr [ %.01523.i74.us, %.preheader.i71.us ], [ %i.cj, %middle.block29 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %.021.i75.us = phi i32 [ %i.dd, %scalar.ph15 ], [ %.021.i75.us.ph, %scalar.ph15.preheader ]
  %.120.i76.us = phi ptr [ %i.de, %scalar.ph15 ], [ %.120.i76.us.ph, %scalar.ph15.preheader ] ; 2 uses
  %.11619.i77.us = phi ptr [ %i.df, %scalar.ph15 ], [ %.11619.i77.us.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cx = load double, ptr %.11619.i77.us, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.11619.i77.us, i64 %i.an
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !39
  %i.da = fadd double %i.cx, %i.cz
  %i.db = fptrunc double %i.da to float
  %i.dc = fmul float %i.db, 5.000000e-01
  store float %i.dc, ptr %.120.i76.us, align 4, !tbaa !172
  %i.dd = add nuw nsw i32 %.021.i75.us, 1         ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.120.i76.us, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.11619.i77.us, i64 8 ; 2 uses
  %exitcond.not.i78.us = icmp eq i32 %i.dd, %i.i
  br i1 %exitcond.not.i78.us, label %._crit_edge.i79.us, label %scalar.ph15, !llvm.loop !1420

._crit_edge.i79.us:                               ; preds = %scalar.ph15, %middle.block29
  %.lcssa3 = phi ptr [ %i.ci, %middle.block29 ], [ %i.de, %scalar.ph15 ]
  %.lcssa2 = phi ptr [ %i.cj, %middle.block29 ], [ %i.df, %scalar.ph15 ]
  %i.dg = add nuw i64 %.01325.i72.us, 2           ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.lcssa2, i64 %i.an
  %i.di = icmp ult i64 %i.dg, %i.al
  br i1 %i.di, label %.preheader.i71.us, label %.preheader.us.us129.preheader, !llvm.loop !1418

._crit_edge107.us126:                             ; preds = %._crit_edge.us.us138
  %i.dj = add nuw i64 %.050111.us116, 1           ; 2 uses
  %exitcond196.not = icmp eq i64 %i.dj, %i.ak
  br i1 %exitcond196.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.preheader.lr.ph.i.us, !llvm.loop !1421

.preheader.us.us129.preheader:                    ; preds = %._crit_edge.i79.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.af
  br label %.preheader.us.us129

.preheader.us.us129:                              ; preds = %.preheader.us.us129.preheader, %._crit_edge.us.us138
  %.046106.us.us130 = phi i64 [ %i.ej, %._crit_edge.us.us138 ], [ 0, %.preheader.us.us129.preheader ]
  %.047105.us.us131 = phi ptr [ %.lcssa5, %._crit_edge.us.us138 ], [ %i.t, %.preheader.us.us129.preheader ] ; 3 uses
  %.048104.us.us132 = phi ptr [ %.lcssa6, %._crit_edge.us.us138 ], [ %i.s, %.preheader.us.us129.preheader ] ; 3 uses
  %.159103.us.us133 = phi ptr [ %.lcssa4, %._crit_edge.us.us138 ], [ %.058109.us118, %.preheader.us.us129.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us129
  %i.dl = getelementptr i8, ptr %.047105.us.us131, i64 %i.be ; 2 uses
  %i.dm = getelementptr i8, ptr %.048104.us.us132, i64 %i.be ; 2 uses
  %i.dn = getelementptr i8, ptr %.159103.us.us133, i64 %i.bf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047105.us.us131, i64 %i.do ; 2 uses
  %next.gep7 = getelementptr i8, ptr %.048104.us.us132, i64 %i.do ; 2 uses
  %i.dp = shl i64 %index, 3
  %next.gep8 = getelementptr i8, ptr %.159103.us.us133, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep7, i64 8
  %wide.load = load <2 x float>, ptr %next.gep7, align 4, !tbaa !172
  %wide.load9 = load <2 x float>, ptr %i.dq, align 4, !tbaa !172
  %i.dr = getelementptr i8, ptr %next.gep, i64 8
  %wide.load10 = load <2 x float>, ptr %next.gep, align 4, !tbaa !172
  %wide.load11 = load <2 x float>, ptr %i.dr, align 4, !tbaa !172
  %i.ds = fadd <2 x float> %wide.load, %wide.load10
  %i.dt = fadd <2 x float> %wide.load9, %wide.load11
  %i.du = fmul <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.dv = fmul <2 x float> %i.dt, splat (float 5.000000e-01)
  %i.dw = fpext <2 x float> %i.du to <2 x double>
end_hunk_3
