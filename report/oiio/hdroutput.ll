inline.NumInlined: 2679
inline.NumDeleted: 696
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN11OpenImageIO4v3_125hdr_output_imageio_createEv:bb.a

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit3.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.c, %_ZNSt6vectorIhSaIhEED2Ev.exit3.i ]
  tail call void @_ZN11OpenImageIO4v3_111ImageOutputdlEPv(ptr noundef nonnull %i.a) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutputnwEm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_111ImageOutputdlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19HdrOutput19RGBE_WriteBytes_RLEEPhi(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.d = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %.04866 = phi i32 [ 0, %.preheader.lr.ph ], [ %.3, %bb.l ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge
  %.04662 = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %.critedge ] ; 4 uses
  %.04761 = phi i32 [ %.04866, %.preheader ], [ %i.e, %.critedge ]
  %i.e = add nsw i32 %.04662, %.04761             ; 10 uses
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  %i.g = icmp slt i32 %i.f, %2
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = sext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.l = phi i64 [ %i.k, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.j, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.p = add nsw i64 %indvars.iv.next, %i.h       ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.d
  %i.r = icmp samesign ult i64 %indvars.iv, 126
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge.loopexit, !llvm.loop !15

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %.1.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ]
  %.1.lcssa.ph = trunc i64 %.1.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ 1, %bb.b ], [ %.1.lcssa.ph, %.critedge.loopexit ] ; 5 uses
  %i.s = icmp samesign ult i32 %.1.lcssa, 4
  %i.t = icmp slt i32 %i.e, %2
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %bb.b, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %.critedge
  %i.v = icmp sgt i32 %.04662, 1
  %i.w = sub nsw i32 %i.e, %.04866
  %i.x = icmp eq i32 %.04662, %i.w
  %or.cond54 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond54, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = trunc nuw nsw i32 %.04662 to i8
  %i.z = or disjoint i8 %i.y, -128
  store i8 %i.z, ptr %i.a, align 1, !tbaa !14
  %i.aa = sext i32 %.04866 to i64
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  store i8 %i.ac, ptr %i.c, align 1, !tbaa !14
  %i.ad = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.ad, label %._crit_edge, label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp slt i32 %.04866, %i.e
  br i1 %i.ae, label %.lr.ph64, label %._crit_edge

bb.h:                                             ; preds = %bb.i
  %i.af = add nsw i32 %spec.store.select, %.263   ; 3 uses
  %i.ag = icmp slt i32 %i.af, %i.e
  br i1 %i.ag, label %.lr.ph64, label %._crit_edge, !llvm.loop !18

.lr.ph64:                                         ; preds = %bb.g, %bb.h
  %.263 = phi i32 [ %i.af, %bb.h ], [ %.04866, %bb.g ] ; 3 uses
  %i.ah = sub nsw i32 %i.e, %.263
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.ah, i32 128) ; 3 uses
  %i.ai = trunc nuw i32 %spec.store.select to i8
  store i8 %i.ai, ptr %i.a, align 1, !tbaa !14
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1)
  br i1 %i.aj, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph64
  %i.ak = sext i32 %.263 to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = sext i32 %spec.store.select to i64
  %i.an = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.al, i64 noundef %i.am, i64 noundef 1)
  br i1 %i.an, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.g
  %.2.lcssa = phi i32 [ %.04866, %bb.g ], [ %i.e, %bb.f ], [ %i.af, %bb.h ] ; 2 uses
  %i.ao = icmp samesign ugt i32 %.1.lcssa, 3
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.ap = trunc i32 %.1.lcssa to i8
  %i.aq = xor i8 %i.ap, -128
  store i8 %i.aq, ptr %i.a, align 1, !tbaa !14
  %i.ar = sext i32 %i.e to i64
  %i.as = getelementptr inbounds i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  store i8 %i.at, ptr %i.c, align 1, !tbaa !14
  %i.au = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %.2.lcssa, %.1.lcssa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.3 = phi i32 [ %i.av, %bb.k ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.not = icmp slt i32 %.3, %2
  br i1 %.not, label %.preheader, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.f, %bb.j, %bb.l, %bb.i, %.lr.ph64, %bb.a
  %i.aw = phi i1 [ true, %bb.a ], [ false, %bb.i ], [ false, %.lr.ph64 ], [ false, %bb.f ], [ false, %bb.j ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %i.aw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19HdrOutput20RGBE_WritePixels_RLEEPfii(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x i8], align 1                 ; 10 uses
  %i.d = add i32 %2, -32768
  %or.cond = icmp ult i32 %i.d, -32760
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = mul nsw i32 %3, %2
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_19HdrOutput16RGBE_WritePixelsEPfl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i64 noundef %i.f)
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %2, 2
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = icmp samesign ult i32 %2, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = alloca i8, i64 %i.i, align 16
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #30 ; 2 uses
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.l, %bb.e ] ; 4 uses
  %.050 = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 5 uses
  %i.m = icmp slt i32 %3, 1
  br i1 %i.m, label %.loopexit81, label %.lr.ph94

.lr.ph94:                                         ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.o = lshr i32 %2, 8
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.r = trunc i32 %2 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.t = shl nuw nsw i32 %2, 1
  %i.u = mul nuw nsw i32 %2, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.w = zext nneg i32 %2 to i64                  ; 4 uses
  %i.x = zext nneg i32 %i.t to i64
  %i.y = zext nneg i32 %i.u to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.050, i64 %i.w
  %invariant.gep117 = getelementptr inbounds nuw i8, ptr %.050, i64 %i.x
  %invariant.gep119 = getelementptr inbounds nuw i8, ptr %.050, i64 %i.y
  br label %bb.f

.critedge61:                                      ; preds = %.loopexit79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.z = icmp slt i32 %.in, 2
  br i1 %i.z, label %.loopexit81, label %bb.f

bb.f:                                             ; preds = %.lr.ph94, %.critedge61
  %.in = phi i32 [ %3, %.lr.ph94 ], [ %i.aa, %.critedge61 ] ; 2 uses
  %.05293 = phi ptr [ %1, %.lr.ph94 ], [ %i.az, %.critedge61 ]
  %i.aa = add nsw i32 %.in, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i8 2, ptr %i.c, align 1, !tbaa !14
  store i8 2, ptr %i.n, align 1, !tbaa !14
  store i8 %i.p, ptr %i.q, align 1, !tbaa !14
  store i8 %i.r, ptr %i.s, align 1, !tbaa !14
  %i.ab = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ab, label %.lr.ph, label %.loopexit81.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.g ] ; 5 uses
  %.15390 = phi ptr [ %i.az, %bb.j ], [ %.05293, %bb.g ] ; 4 uses
  %i.ad = load float, ptr %.15390, align 4, !tbaa !20 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.15390, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.15390, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !20 ; 3 uses
  %i.ai = fcmp ogt float %i.af, %i.ad
  %.0.i.i = select i1 %i.ai, float %i.af, float %i.ad ; 2 uses
  %i.aj = fcmp ogt float %i.ah, %.0.i.i
  %.1.i.i = select i1 %i.aj, float %i.ah, float %.0.i.i ; 3 uses
  %i.ak = fpext float %.1.i.i to double
  %i.al = fcmp olt double %i.ak, 1.000000e-32
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.am = call float @frexpf(float noundef %.1.i.i, ptr noundef nonnull %i.b) #29
  %i.an = fmul float %i.am, 2.560000e+02
  %i.ao = fdiv float %i.an, %.1.i.i               ; 3 uses
  %i.ap = fmul float %i.ad, %i.ao
  %i.aq = fptoui float %i.ap to i8
  %i.ar = fmul float %i.af, %i.ao
  %i.as = fptoui float %i.ar to i8
  %i.at = fmul float %i.ah, %i.ao
  %i.au = fptoui float %i.at to i8
  %i.av = load i32, ptr %i.b, align 4, !tbaa !3
  %i.aw = trunc i32 %i.av to i8
  %i.ax = xor i8 %i.aw, -128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.sink29.i.i = phi i8 [ %i.ax, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.sink28.i.i = phi i8 [ %i.au, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.sink27.i.i = phi i8 [ %i.as, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.sink.i.i = phi i8 [ %i.aq, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  store i8 %.sink29.i.i, ptr %i.s, align 1, !tbaa !14
  store i8 %.sink28.i.i, ptr %i.q, align 1, !tbaa !14
  store i8 %.sink27.i.i, ptr %i.n, align 1, !tbaa !14
  store i8 %.sink.i.i, ptr %i.c, align 1, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv
  store i8 %.sink.i.i, ptr %i.ay, align 1, !tbaa !14
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.sink27.i.i, ptr %gep, align 1, !tbaa !14
  %gep118 = getelementptr inbounds nuw i8, ptr %invariant.gep117, i64 %indvars.iv
  store i8 %.sink28.i.i, ptr %gep118, align 1, !tbaa !14
  %gep120 = getelementptr inbounds nuw i8, ptr %invariant.gep119, i64 %indvars.iv
  store i8 %.sink29.i.i, ptr %gep120, align 1, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.15390, i64 12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not, label %.preheader.lr.ph.i, label %.lr.ph, !llvm.loop !22

.preheader.lr.ph.i:                               ; preds = %bb.j, %.loopexit79
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.loopexit79 ], [ 0, %bb.j ] ; 2 uses
  %i.ba = mul nuw nsw i64 %indvars.iv101, %i.w
  %i.bb = getelementptr inbounds nuw i8, ptr %.050, i64 %i.ba ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.preheader.lr.ph.i
  %.04866.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.3.i, %bb.u ] ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.preheader.i
  %.04662.i = phi i32 [ 0, %.preheader.i ], [ %.1.lcssa.i, %.critedge.i ] ; 4 uses
  %.04761.i = phi i32 [ %.04866.i, %.preheader.i ], [ %i.bc, %.critedge.i ]
  %i.bc = add nsw i32 %.04761.i, %.04662.i        ; 10 uses
  %i.bd = add nsw i32 %i.bc, 1                    ; 2 uses
  %i.be = icmp slt i32 %i.bd, %2
  br i1 %i.be, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bf = sext i32 %i.bc to i64                   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = sext i32 %i.bd to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.bj = phi i64 [ %i.bi, %.lr.ph.i ], [ %i.bn, %bb.m ]
  %i.bk = getelementptr inbounds i8, ptr %i.bb, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = icmp eq i8 %i.bh, %i.bl
  br i1 %i.bm, label %bb.m, label %.critedge.loopexit.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bn = add nsw i64 %indvars.iv.next.i, %i.bf   ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.w
  %i.bp = icmp samesign ult i64 %indvars.iv.i, 126
  %or.cond.i = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond.i, label %bb.l, label %.critedge.loopexit.i, !llvm.loop !15

.critedge.loopexit.i:                             ; preds = %bb.m, %bb.l
  %.1.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i, %bb.m ]
  %.1.lcssa.ph.i = trunc i64 %.1.lcssa.ph.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.k
  %.1.lcssa.i = phi i32 [ 1, %bb.k ], [ %.1.lcssa.ph.i, %.critedge.loopexit.i ] ; 5 uses
  %i.bq = icmp samesign ult i32 %.1.lcssa.i, 4
  %i.br = icmp slt i32 %i.bc, %2
  %i.bs = and i1 %i.br, %i.bq
  br i1 %i.bs, label %bb.k, label %bb.n, !llvm.loop !17

bb.n:                                             ; preds = %.critedge.i
  %i.bt = icmp sgt i32 %.04662.i, 1
  %i.bu = sub nsw i32 %i.bc, %.04866.i
  %i.bv = icmp eq i32 %.04662.i, %i.bu
  %or.cond54.i = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond54.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = trunc nuw nsw i32 %.04662.i to i8
  %i.bx = or disjoint i8 %i.bw, -128
  store i8 %i.bx, ptr %i.a, align 1, !tbaa !14
  %i.by = sext i32 %.04866.i to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bb, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  store i8 %i.ca, ptr %i.v, align 1, !tbaa !14
  %i.cb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  br i1 %i.cb, label %._crit_edge.i, label %.loopexit77

bb.p:                                             ; preds = %bb.n
  %i.cc = icmp slt i32 %.04866.i, %i.bc
  br i1 %i.cc, label %.lr.ph64.i, label %._crit_edge.i

bb.q:                                             ; preds = %.noexc63
  %i.cd = add nsw i32 %spec.store.select.i, %.263.i ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %i.bc
  br i1 %i.ce, label %.lr.ph64.i, label %._crit_edge.i, !llvm.loop !18

.lr.ph64.i:                                       ; preds = %bb.p, %bb.q
  %.263.i = phi i32 [ %i.cd, %bb.q ], [ %.04866.i, %bb.p ] ; 3 uses
  %i.cf = sub nsw i32 %i.bc, %.263.i
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.cf, i32 128) ; 3 uses
  %i.cg = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.cg, ptr %i.a, align 1, !tbaa !14
  %i.ch = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1)
          to label %.noexc62 unwind label %.loopexit

.noexc62:                                         ; preds = %.lr.ph64.i
  br i1 %i.ch, label %bb.r, label %.loopexit77

bb.r:                                             ; preds = %.noexc62
  %i.ci = sext i32 %.263.i to i64
  %i.cj = getelementptr inbounds i8, ptr %i.bb, i64 %i.ci
  %i.ck = sext i32 %spec.store.select.i to i64
  %i.cl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.cj, i64 noundef %i.ck, i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit

.noexc63:                                         ; preds = %bb.r
  br i1 %i.cl, label %bb.q, label %.loopexit77

end_hunk_0
