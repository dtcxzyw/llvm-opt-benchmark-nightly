inline.NumInlined: 2539
inline.NumDeleted: 512
begin_hunk_0_@_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv:bb.a
  %i.az = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.az, i32 noundef 0, ptr nonnull %i.al, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 1) #18
  %i.ba = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 316
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !72, !range !59, !noundef !51
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.l, label %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit

bb.l:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit10
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !67
  store ptr %i.be, ptr %i.e, align 8, !tbaa !19
  br label %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit

_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit10, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit, %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit, %bb.g, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i
  br label %.backedge, !llvm.loop !307

_ZN6hermes19isUnicodeIDContinueEj.exit.thread.thread: ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.a, ptr %i.b, align 8, !tbaa !18
  br label %bb.n

_ZN6hermes19isUnicodeIDContinueEj.exit.thread:    ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i, %bb.j, %bb.k, %_ZN6hermes16isUnicodeIDStartEj.exit.i, %_ZN6hermes19isUnicodeIDContinueEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.a, ptr %i.b, align 8, !tbaa !18
  %i.bf = icmp ult i32 %i.an, 65536
  br i1 %i.bf, label %bb.n, label %bb.m, !prof !130

bb.m:                                             ; preds = %_ZN6hermes19isUnicodeIDContinueEj.exit.thread
  %i.bg = add i32 %i.an, 983040
  %i.bh = lshr i32 %i.bg, 10
  %i.bi = and i32 %i.bh, 1023
  %i.bj = or disjoint i32 %i.bi, 55296
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.bj) #18
  %i.bk = and i32 %i.an, 1023
  %i.bl = or disjoint i32 %i.bk, 56320
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes19isUnicodeIDContinueEj.exit.thread.thread, %bb.m, %_ZN6hermes19isUnicodeIDContinueEj.exit.thread
  %.sink.i.i = phi i32 [ %i.bl, %bb.m ], [ %i.an, %_ZN6hermes19isUnicodeIDContinueEj.exit.thread ], [ %i.an, %_ZN6hermes19isUnicodeIDContinueEj.exit.thread.thread ]
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sink.i.i) #18
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.n                     ; 4 uses
  %i.bp = load i32, ptr %i.o, align 4, !tbaa !148
  %i.bq = zext i32 %i.bp to i64
  %i.br = load i32, ptr %i.p, align 8, !tbaa !132 ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = sub nsw i64 %i.bq, %i.bs
  %i.bu = icmp ugt i64 %i.bo, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = add i64 %i.bo, %i.bs
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.q, i64 noundef %i.bv, i64 noundef 1) #18
  %.pre7.pre.i.i.i = load i32, ptr %i.p, align 8, !tbaa !132
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre7.i.i.i = phi i32 [ %.pre7.pre.i.i.i, %bb.o ], [ %i.br, %bb.n ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, %i.bm
  br i1 %.not.i.i.i.i, label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.bx = zext i32 %.pre7.i.i.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.a, i64 %i.bo, i1 false)
  %.pre.i.i.i = load i32, ptr %i.p, align 8, !tbaa !132
  br label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit

_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit: ; preds = %bb.p, %bb.q
  %i.bz = phi i32 [ %.pre7.i.i.i, %bb.p ], [ %.pre.i.i.i, %bb.q ]
  %i.ca = trunc i64 %i.bo to i32
  %i.cb = add i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %i.p, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.backedge.backedge

bb.r:                                             ; preds = %bb.h
  ret void
}

declare double @hermes_g_strtod(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { double, i8 } @_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i(ptr %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not43.i = icmp samesign eq i64 %1, 0
  br i1 %.not43.i, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = add nsw i32 %2, 48                       ; 2 uses
  %i.c = add nsw i32 %2, 87                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.e = sitofp i32 %2 to double                  ; 2 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !66      ; 3 uses
  %i.g = or i8 %i.f, 32                           ; 3 uses
  %i.h = add i8 %i.f, -48                         ; 2 uses
  %or.cond.peel.i = icmp ult i8 %i.h, 10
  %i.i = zext nneg i8 %i.f to i32
  %i.j = icmp sgt i32 %i.b, %i.i
  %or.cond33.peel.i = select i1 %or.cond.peel.i, i1 %i.j, i1 false
  br i1 %or.cond33.peel.i, label %.critedge.peel.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = icmp sgt i8 %i.g, 96
  %i.l = zext nneg i8 %i.g to i32
  %i.m = icmp sgt i32 %i.c, %i.l
  %or.cond53.peel.i = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond53.peel.i, label %bb.c, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i8 %i.g, -87
  br label %.critedge.peel.i

.critedge.peel.i:                                 ; preds = %bb.c, %.lr.ph.i
  %.sink63.i = phi i8 [ %i.n, %bb.c ], [ %i.h, %.lr.ph.i ]
  %i.o = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.e)
  %i.p = uitofp nneg i8 %.sink63.i to double
  %i.q = fadd double %i.o, %i.p                   ; 2 uses
  %.not.peel.i = icmp samesign eq i64 %1, 1
  br i1 %.not.peel.i, label %.loopexit88, label %.peel.next.i

.peel.next.i:                                     ; preds = %.critedge.peel.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.peel.next.i
  %.375 = phi double [ %i.q, %.peel.next.i ], [ %.4, %.critedge.i ] ; 2 uses
  %.02444.i = phi ptr [ %i.r, %.peel.next.i ], [ %i.ai, %.critedge.i ] ; 4 uses
  %i.s = load i8, ptr %.02444.i, align 1, !tbaa !66 ; 4 uses
  %i.t = or i8 %i.s, 32                           ; 3 uses
  %i.u = add i8 %i.s, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.u, 10
  %i.v = zext nneg i8 %i.s to i32
  %i.w = icmp sgt i32 %i.b, %i.v
  %or.cond33.i = select i1 %or.cond.i, i1 %i.w, i1 false
  br i1 %or.cond33.i, label %.critedge.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp sgt i8 %i.t, 96
  %i.y = zext nneg i8 %i.t to i32
  %i.z = icmp sgt i32 %i.c, %i.y
  %or.cond53.i = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond53.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i8 %i.t, -87
  br label %.critedge.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ab = icmp ne i8 %i.s, 95
  %i.ac = icmp eq ptr %.02444.i, %i.d
  %or.cond61.i = select i1 %i.ab, i1 true, i1 %i.ac, !prof !227
  br i1 %or.cond61.i, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit, label %bb.h, !prof !227

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.02444.i, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !66
  %.not30.i = icmp eq i8 %i.ae, 95
  br i1 %.not30.i, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit, label %.critedge.i

.critedge.sink.split.i:                           ; preds = %bb.f, %bb.d
  %.sink.i = phi i8 [ %i.aa, %bb.f ], [ %i.u, %bb.d ]
  %i.af = fmul double %.375, %i.e
  %i.ag = uitofp nneg i8 %.sink.i to double
  %i.ah = fadd double %i.af, %i.ag
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.h
  %.4 = phi double [ %i.ah, %.critedge.sink.split.i ], [ %.375, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02444.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.a
  br i1 %.not.i, label %.loopexit88, label %bb.d, !llvm.loop !308

.loopexit88:                                      ; preds = %.critedge.i, %.critedge.peel.i
  %.5.ph = phi double [ %i.q, %.critedge.peel.i ], [ %.4, %.critedge.i ] ; 2 uses
  %i.aj = fcmp oge double %.5.ph, f0x4340000000000000
  %.not.i62 = icmp ne i32 %2, 0
  %or.cond85.not87 = and i1 %.not.i62, %i.aj
  %i.ak = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %2)
  %.not3.i = icmp samesign ult i32 %i.ak, 2
  %or.cond86 = select i1 %or.cond85.not87, i1 %.not3.i, i1 false
  br i1 %or.cond86, label %.preheader, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

.preheader:                                       ; preds = %.loopexit88
  %i.al = ashr i32 %2, 1
  %i.am = sext i32 %i.al to i64
  br label %.outer

.outer:                                           ; preds = %.loopexit, %.preheader
  %.072.ph = phi double [ 0.000000e+00, %.preheader ], [ %.072.ph141, %.loopexit ] ; 2 uses
  %.057.ph = phi i8 [ 0, %.preheader ], [ %.057.ph148, %.loopexit ] ; 2 uses
  %.055.ph = phi i8 [ 0, %.preheader ], [ %.055.ph154, %.loopexit ] ; 2 uses
  %.052.ph = phi i32 [ 0, %.preheader ], [ %.052.ph156, %.loopexit ] ; 2 uses
  %.049.ph = phi ptr [ %0, %.preheader ], [ %.251, %.loopexit ] ; 2 uses
  %.046.ph = phi i64 [ 0, %.preheader ], [ %.3, %.loopexit ]
  %.044.ph = phi i64 [ 0, %.preheader ], [ %i.ba, %.loopexit ] ; 2 uses
  %.042.ph = phi double [ 0.000000e+00, %.preheader ], [ %.042.ph163, %.loopexit ] ; 2 uses
  %.041.ph = phi i64 [ 53, %.preheader ], [ %.041.ph170, %.loopexit ] ; 2 uses
  %i.an = icmp eq i64 %.044.ph, 0
  br i1 %i.an, label %.lr.ph.split.us, label %.loopexit

.outer.jt4:                                       ; preds = %.loopexit.jt3, %29, %bb.m
  %3 = phi i64 [ %31, %bb.m ], [ %i.ba, %29 ], [ %14, %.loopexit.jt3 ] ; 2 uses
  %.251176 = phi ptr [ %.251174, %bb.m ], [ %.251, %29 ], [ %.251177.ph, %.loopexit.jt3 ] ; 2 uses
  %.173.jt4 = phi double [ %.072.ph139, %bb.m ], [ %.072.ph141, %29 ], [ %.173.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.158.jt4 = phi i8 [ %.057.ph146, %bb.m ], [ %.057.ph148, %29 ], [ %.158.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.156.jt4 = phi i8 [ %.055.ph152, %bb.m ], [ %.055.ph154, %29 ], [ %.156.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.143.jt4 = phi double [ %i.bh, %bb.m ], [ %30, %29 ], [ %15, %.loopexit.jt3 ] ; 2 uses
  %.1.jt4 = phi i64 [ %.041.ph168, %bb.m ], [ %.041.ph170, %29 ], [ %.1.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %.lr.ph.split.us, label %.loopexit.jt4

.outer.jt3:                                       ; preds = %.outer.backedge, %.loopexit.jt3
  %5 = phi i64 [ %14, %.loopexit.jt3 ], [ %.ph, %.outer.backedge ] ; 3 uses
  %.143.jt3 = phi double [ %15, %.loopexit.jt3 ], [ %.143.jt3.ph, %.outer.backedge ] ; 2 uses
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.lr.ph.split.us, label %.loopexit.jt3

.outer.jt2:                                       ; preds = %bb.l
  %7 = icmp eq i64 %26, 0
  br i1 %7, label %.lr.ph.split.us, label %.loopexit.jt2

.outer.jt0:                                       ; preds = %.preheader193.preheader, %bb.j
  %8 = phi i64 [ %21, %bb.j ], [ %i.ba, %.preheader193.preheader ] ; 3 uses
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %.lr.ph.split.us, label %bb.j

.outer.jt1:                                       ; preds = %bb.k, %bb.l
  %10 = phi i64 [ %26, %bb.l ], [ %.lcssa212, %bb.k ] ; 3 uses
  %.3186 = phi i64 [ %.3183, %bb.l ], [ %.3, %bb.k ] ; 2 uses
  %.251178 = phi ptr [ %.251175, %bb.l ], [ %.251, %bb.k ] ; 2 uses
  %.173.jt1 = phi double [ %i.be, %bb.l ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %.158.jt1 = phi i8 [ %.057.ph147, %bb.l ], [ %.057.ph148, %bb.k ] ; 2 uses
  %.156.jt1 = phi i8 [ %.055.ph153, %bb.l ], [ %.055.ph154, %bb.k ] ; 2 uses
  %.143.jt1 = phi double [ %.042.ph162, %bb.l ], [ %.042.ph163, %bb.k ] ; 2 uses
  %.1.jt1 = phi i64 [ %i.bf, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %.lr.ph.split.us, label %.loopexit.jt1

.lr.ph.split.us:                                  ; preds = %.outer.jt0, %.outer.jt3, %.outer.jt4, %.outer.jt2, %.outer.jt1, %.outer
  %.041.ph164 = phi i64 [ %.1.jt4, %.outer.jt4 ], [ %.1.jt3.ph, %.outer.jt3 ], [ 0, %.outer.jt2 ], [ %.041.ph, %.outer ], [ %.1.jt1, %.outer.jt1 ], [ %.041.ph170, %.outer.jt0 ]
  %.042.ph158 = phi double [ %.143.jt4, %.outer.jt4 ], [ %.143.jt3, %.outer.jt3 ], [ %.042.ph162, %.outer.jt2 ], [ %.042.ph, %.outer ], [ %.143.jt1, %.outer.jt1 ], [ %.042.ph163, %.outer.jt0 ] ; 3 uses
  %.049.ph157 = phi ptr [ %.251176, %.outer.jt4 ], [ %.251177.ph, %.outer.jt3 ], [ %.251175, %.outer.jt2 ], [ %.049.ph, %.outer ], [ %.251178, %.outer.jt1 ], [ %.251, %.outer.jt0 ] ; 2 uses
  %.052.ph155 = phi i32 [ 4, %.outer.jt4 ], [ 3, %.outer.jt3 ], [ 2, %.outer.jt2 ], [ %.052.ph, %.outer ], [ 1, %.outer.jt1 ], [ 0, %.outer.jt0 ] ; 2 uses
  %.055.ph149 = phi i8 [ %.156.jt4, %.outer.jt4 ], [ %.156.jt3.ph, %.outer.jt3 ], [ %.055.ph153, %.outer.jt2 ], [ %.055.ph, %.outer ], [ %.156.jt1, %.outer.jt1 ], [ %.055.ph154, %.outer.jt0 ] ; 3 uses
  %.057.ph142 = phi i8 [ %.158.jt4, %.outer.jt4 ], [ %.158.jt3.ph, %.outer.jt3 ], [ %27, %.outer.jt2 ], [ %.057.ph, %.outer ], [ %.158.jt1, %.outer.jt1 ], [ %.057.ph148, %.outer.jt0 ] ; 2 uses
  %.072.ph135 = phi double [ %.173.jt4, %.outer.jt4 ], [ %.173.jt3.ph, %.outer.jt3 ], [ %i.be, %.outer.jt2 ], [ %.072.ph, %.outer ], [ %.173.jt1, %.outer.jt1 ], [ %.072.ph141, %.outer.jt0 ] ; 4 uses
  %i.ao = icmp eq ptr %.049.ph157, %i.a
  br i1 %i.ao, label %.split.us, label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph.split.us, %bb.i
  %.04993.us101 = phi ptr [ %.150.us, %bb.i ], [ %.049.ph157, %.lr.ph.split.us ] ; 3 uses
  %i.ap = load i8, ptr %.04993.us101, align 1, !tbaa !66 ; 3 uses
  %i.aq = icmp eq i8 %i.ap, 95
  br i1 %i.aq, label %bb.i, label %.thread80, !prof !62, !llvm.loop !309

bb.i:                                             ; preds = %.lr.ph102
  %.150.us = getelementptr inbounds nuw i8, ptr %.04993.us101, i64 1 ; 2 uses
  %i.ar = icmp eq ptr %.150.us, %i.a
  br i1 %i.ar, label %.split.us, label %.lr.ph102

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.i
  switch i32 %.052.ph155, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit [
    i32 4, label %bb.o
    i32 3, label %bb.n
  ]

.thread80:                                        ; preds = %.lr.ph102
  %i.as = or i8 %i.ap, 32
  %i.at = add i8 %i.ap, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.at, 10
  %i.au = zext nneg i8 %i.at to i64
  %i.av = sext i8 %i.as to i64
  %i.aw = add nsw i64 %i.av, -87
  %.147 = select i1 %or.cond, i64 %i.au, i64 %i.aw
  %.15084 = getelementptr inbounds nuw i8, ptr %.04993.us101, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.outer, %.thread80
  %.041.ph170 = phi i64 [ %.041.ph, %.outer ], [ %.041.ph164, %.thread80 ] ; 8 uses
  %.042.ph163 = phi double [ %.042.ph, %.outer ], [ %.042.ph158, %.thread80 ] ; 6 uses
  %.052.ph156 = phi i32 [ %.052.ph, %.outer ], [ %.052.ph155, %.thread80 ] ; 2 uses
  %.055.ph154 = phi i8 [ %.055.ph, %.outer ], [ %.055.ph149, %.thread80 ] ; 7 uses
  %.057.ph148 = phi i8 [ %.057.ph, %.outer ], [ %.057.ph142, %.thread80 ] ; 8 uses
  %.072.ph141 = phi double [ %.072.ph, %.outer ], [ %.072.ph135, %.thread80 ] ; 7 uses
  %.251 = phi ptr [ %.049.ph, %.outer ], [ %.15084, %.thread80 ] ; 8 uses
  %.3 = phi i64 [ %.046.ph, %.outer ], [ %.147, %.thread80 ] ; 7 uses
  %.2 = phi i64 [ %.044.ph, %.outer ], [ %i.am, %.thread80 ] ; 2 uses
  %i.ax = and i64 %.2, %.3
  %i.ay = icmp ne i64 %i.ax, 0                    ; 4 uses
  %i.az = zext i1 %i.ay to i8                     ; 2 uses
  %i.ba = lshr i64 %.2, 1                         ; 8 uses
  switch i32 %.052.ph156, label %.outer [
    i32 0, label %.preheader193.preheader
    i32 1, label %bb.l
    i32 2, label %.outer.backedge
    i32 3, label %29
    i32 4, label %bb.m
  ], !llvm.loop !309

.preheader193.preheader:                          ; preds = %.loopexit
  br i1 %i.ay, label %bb.k, label %.outer.jt0

.loopexit.jt4:                                    ; preds = %.outer.jt4
  %12 = lshr i64 %3, 1
  br label %bb.m

.loopexit.jt3:                                    ; preds = %.outer.jt3
  %13 = and i64 %5, %.3185.ph
  %.not = icmp eq i64 %13, 0
  %14 = lshr i64 %5, 1                            ; 2 uses
  %15 = fmul double %.143.jt3, 2.000000e+00       ; 2 uses
  br i1 %.not, label %.outer.jt3, label %.outer.jt4

.loopexit.jt2:                                    ; preds = %.outer.jt2
  %16 = and i64 %26, %.3183
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i8
  %19 = lshr i64 %26, 1
  br label %.outer.backedge

bb.j:                                             ; preds = %.outer.jt0
  %20 = and i64 %8, %.3
  %.not224 = icmp eq i64 %20, 0
  %21 = lshr i64 %8, 1                            ; 2 uses
  br i1 %.not224, label %.outer.jt0, label %bb.k

.loopexit.jt1:                                    ; preds = %.outer.jt1
  %22 = and i64 %10, %.3186
  %23 = icmp ne i64 %22, 0                        ; 2 uses
  %24 = zext i1 %23 to i8
  %25 = lshr i64 %10, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.preheader193.preheader
  %.lcssa212 = phi i64 [ %i.ba, %.preheader193.preheader ], [ %21, %bb.j ]
  %i.bb = add i64 %.041.ph170, -1
  br label %.outer.jt1

bb.l:                                             ; preds = %.loopexit.jt1, %.loopexit
  %26 = phi i64 [ %25, %.loopexit.jt1 ], [ %i.ba, %.loopexit ] ; 4 uses
  %27 = phi i8 [ %24, %.loopexit.jt1 ], [ %i.az, %.loopexit ] ; 2 uses
  %28 = phi i1 [ %23, %.loopexit.jt1 ], [ %i.ay, %.loopexit ]
  %.3183 = phi i64 [ %.3186, %.loopexit.jt1 ], [ %.3, %.loopexit ] ; 3 uses
  %.251175 = phi ptr [ %.251178, %.loopexit.jt1 ], [ %.251, %.loopexit ] ; 3 uses
  %.041.ph169 = phi i64 [ %.1.jt1, %.loopexit.jt1 ], [ %.041.ph170, %.loopexit ]
  %.042.ph162 = phi double [ %.143.jt1, %.loopexit.jt1 ], [ %.042.ph163, %.loopexit ] ; 2 uses
  %.055.ph153 = phi i8 [ %.156.jt1, %.loopexit.jt1 ], [ %.055.ph154, %.loopexit ] ; 2 uses
  %.057.ph147 = phi i8 [ %.158.jt1, %.loopexit.jt1 ], [ %.057.ph148, %.loopexit ]
  %.072.ph140 = phi double [ %.173.jt1, %.loopexit.jt1 ], [ %.072.ph141, %.loopexit ]
  %i.bc = fmul double %.072.ph140, 2.000000e+00
  %i.bd = uitofp i1 %28 to double
  %i.be = fadd double %i.bc, %i.bd                ; 3 uses
  %i.bf = add i64 %.041.ph169, -1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.outer.jt2, label %.outer.jt1

29:                                               ; preds = %.loopexit
  %30 = fmul double %.042.ph163, 2.000000e+00     ; 2 uses
  br i1 %i.ay, label %.outer.jt4, label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit.jt2, %.loopexit, %29
  %.ph = phi i64 [ %i.ba, %29 ], [ %19, %.loopexit.jt2 ], [ %i.ba, %.loopexit ]
  %.3185.ph = phi i64 [ %.3, %29 ], [ %.3183, %.loopexit.jt2 ], [ %.3, %.loopexit ]
  %.251177.ph = phi ptr [ %.251, %29 ], [ %.251175, %.loopexit.jt2 ], [ %.251, %.loopexit ] ; 2 uses
  %.173.jt3.ph = phi double [ %.072.ph141, %29 ], [ %i.be, %.loopexit.jt2 ], [ %.072.ph141, %.loopexit ] ; 2 uses
  %.158.jt3.ph = phi i8 [ %.057.ph148, %29 ], [ %27, %.loopexit.jt2 ], [ %.057.ph148, %.loopexit ] ; 2 uses
  %.156.jt3.ph = phi i8 [ %.055.ph154, %29 ], [ %18, %.loopexit.jt2 ], [ %i.az, %.loopexit ] ; 2 uses
  %.143.jt3.ph = phi double [ %30, %29 ], [ 2.000000e+00, %.loopexit.jt2 ], [ 2.000000e+00, %.loopexit ]
  %.1.jt3.ph = phi i64 [ %.041.ph170, %29 ], [ 0, %.loopexit.jt2 ], [ %.041.ph170, %.loopexit ] ; 2 uses
  br label %.outer.jt3

bb.m:                                             ; preds = %.loopexit.jt4, %.loopexit
  %31 = phi i64 [ %12, %.loopexit.jt4 ], [ %i.ba, %.loopexit ]
  %.251174 = phi ptr [ %.251176, %.loopexit.jt4 ], [ %.251, %.loopexit ]
  %.041.ph168 = phi i64 [ %.1.jt4, %.loopexit.jt4 ], [ %.041.ph170, %.loopexit ]
  %.042.ph161 = phi double [ %.143.jt4, %.loopexit.jt4 ], [ %.042.ph163, %.loopexit ]
  %.055.ph152 = phi i8 [ %.156.jt4, %.loopexit.jt4 ], [ %.055.ph154, %.loopexit ]
  %.057.ph146 = phi i8 [ %.158.jt4, %.loopexit.jt4 ], [ %.057.ph148, %.loopexit ]
  %.072.ph139 = phi double [ %.173.jt4, %.loopexit.jt4 ], [ %.072.ph141, %.loopexit ]
  %i.bh = fmul double %.042.ph161, 2.000000e+00
  br label %.outer.jt4

bb.n:                                             ; preds = %.split.us
  %i.bi = trunc nuw i8 %.055.ph149 to i1
  %i.bj = uitofp nneg i8 %.057.ph142 to double
  %i.bk = select i1 %i.bi, double %i.bj, double 0.000000e+00
  %i.bl = fadd double %.072.ph135, %i.bk
  %i.bm = fmul double %i.bl, %.042.ph158
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

bb.o:                                             ; preds = %.split.us
  %i.bn = uitofp nneg i8 %.055.ph149 to double
  %i.bo = fadd double %.072.ph135, %i.bn
  %i.bp = fmul double %i.bo, %.042.ph158
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit: ; preds = %bb.g, %bb.h, %bb.a, %.loopexit88, %bb.o, %bb.n, %.split.us, %bb.b
  %.sroa.070.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.bm, %bb.n ], [ 0.000000e+00, %bb.a ], [ %.5.ph, %.loopexit88 ], [ %.072.ph135, %.split.us ], [ %i.bp, %bb.o ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ]
  %.sroa.371.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.n ], [ 1, %bb.a ], [ 1, %.loopexit88 ], [ 1, %.split.us ], [ 1, %bb.o ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.070.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.371.0, 1
  ret { double, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 1, 48) i32 @_ZN6hermes6parser7JSLexer16scanReservedWordEPKcj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  switch i32 %2, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit.thread [
    i32 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.i298.i
    i32 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i291.i
    i32 2, label %_ZNK4llvh9StringRef6equalsES0_.exit.i284.i
    i32 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.i263.i
    i32 6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i249.i
    i32 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i235.i
    i32 10, label %_ZNK4llvh9StringRef6equalsES0_.exit.i144.i
    i32 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.i179.i
    i32 9, label %_ZNK4llvh9StringRef6equalsES0_.exit.i32.i
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i298.i:       ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = icmp ne i64 %i.a, 7957695015192261990
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i256.i

_ZNK4llvh9StringRef6equalsES0_.exit.i291.i:       ; preds = %bb.a
  %i.e = load i16, ptr %1, align 1
  %i.f = xor i16 %i.e, 28518
  %i.g = getelementptr i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 114
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i270.i

_ZNK4llvh9StringRef6equalsES0_.exit.i284.i:       ; preds = %bb.a
  %i.o = load i16, ptr %1, align 1
  %i.p = icmp ne i16 %i.o, 26217
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i277.i

_ZNK4llvh9StringRef6equalsES0_.exit.i277.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i284.i
  %i.s = load i16, ptr %1, align 1
  %i.t = icmp ne i16 %i.s, 28265
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i165.i

_ZNK4llvh9StringRef6equalsES0_.exit.i270.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i291.i
  %i.w = load i16, ptr %1, align 1
  %i.x = xor i16 %i.w, 24950
  %i.y = getelementptr i8, ptr %1, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 114
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i137.i

_ZNK4llvh9StringRef6equalsES0_.exit.i263.i:       ; preds = %bb.a
  %i.ag = load i32, ptr %1, align 1
  %i.ah = xor i32 %i.ag, 1634038370
  %i.ai = getelementptr i8, ptr %1, i64 4
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = xor i32 %i.ak, 107
  %i.am = or i32 %i.ah, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i221.i

_ZNK4llvh9StringRef6equalsES0_.exit.i256.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i298.i
  %i.aq = load i64, ptr %1, align 1
  %i.ar = icmp ne i64 %i.aq, 7310870969309884259
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i186.i

_ZNK4llvh9StringRef6equalsES0_.exit.i249.i:       ; preds = %bb.a
  %i.au = load i32, ptr %1, align 1
  %i.av = xor i32 %i.au, 1970562418
  %i.aw = getelementptr i8, ptr %1, i64 4
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i32
  %i.az = xor i32 %i.ay, 28274
  %i.ba = or i32 %i.av, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i242.i

_ZNK4llvh9StringRef6equalsES0_.exit.i242.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i249.i
  %i.be = load i32, ptr %1, align 1
  %i.bf = xor i32 %i.be, 1953068915
  %i.bg = getelementptr i8, ptr %1, i64 4
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %i.bh to i32
  %i.bj = xor i32 %i.bi, 26723
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i172.i

_ZNK4llvh9StringRef6equalsES0_.exit.i235.i:       ; preds = %bb.a
  %i.bo = load i32, ptr %1, align 1
  %i.bp = icmp ne i32 %i.bo, 1936287860
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i228.i

_ZNK4llvh9StringRef6equalsES0_.exit.i228.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i235.i
  %i.bs = load i32, ptr %1, align 1
  %i.bt = icmp ne i32 %i.bs, 1702195828
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i214.i

_ZNK4llvh9StringRef6equalsES0_.exit.i221.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i263.i
  %i.bw = load i32, ptr %1, align 1
  %i.bx = xor i32 %i.bw, 1936482662
  %i.by = getelementptr i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = xor i32 %i.ca, 101
  %i.cc = or i32 %i.bx, %i.cb
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i200.i

_ZNK4llvh9StringRef6equalsES0_.exit.i214.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i228.i
  %i.cg = load i32, ptr %1, align 1
  %i.ch = icmp ne i32 %i.cg, 1819047278
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i207.i

_ZNK4llvh9StringRef6equalsES0_.exit.i207.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i214.i
  %i.ck = load i32, ptr %1, align 1
  %i.cl = icmp ne i32 %i.ck, 1702060387
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i158.i

_ZNK4llvh9StringRef6equalsES0_.exit.i200.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i221.i
  %i.co = load i32, ptr %1, align 1
  %i.cp = xor i32 %i.co, 1668571491
  %i.cq = getelementptr i8, ptr %1, i64 4
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = xor i32 %i.cs, 104
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i193.i

_ZNK4llvh9StringRef6equalsES0_.exit.i193.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i200.i
  %i.cy = load i32, ptr %1, align 1
  %i.cz = xor i32 %i.cy, 1936617315
  %i.da = getelementptr i8, ptr %1, i64 4
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = xor i32 %i.dc, 116
  %i.de = or i32 %i.cz, %i.dd
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i130.i

_ZNK4llvh9StringRef6equalsES0_.exit.i186.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i256.i
  %i.di = load i64, ptr %1, align 1
  %i.dj = icmp ne i64 %i.di, 8243108387020236132
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.i179.i:       ; preds = %bb.a
  %i.dm = load i32, ptr %1, align 1
  %i.dn = xor i32 %i.dm, 1634100580
  %i.do = getelementptr i8, ptr %1, i64 3
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = xor i32 %i.dp, 1953264993
  %i.dr = or i32 %i.dn, %i.dq
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i151.i

end_hunk_0
