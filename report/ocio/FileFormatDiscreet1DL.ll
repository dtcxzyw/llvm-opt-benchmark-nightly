Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatDiscreet1DL?download=true
inline.NumInlined: 455
inline.NumDeleted: 212
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindNonCommentERSiRiPci(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit
  %i.h = phi i64 [ %i.bg, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit ], [ %i.c, %bb.a ]
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !62
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  br label %_ZNSi7getlineEPcl.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10), !inline_history !172
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, i64 noundef 200, i8 noundef signext %.0.i.i.i) ; 0 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !33
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %1, align 4, !tbaa !33
  %i.w = load i8, ptr %2, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader28.i

.preheader28.i:                                   ; preds = %_ZNSi7getlineEPcl.exit, %bb.f
  %indvars.iv.i = phi i16 [ %indvars.iv.next.i, %bb.f ], [ 0, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  %.021.i = phi i16 [ %i.x, %bb.f ], [ -1, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  %i.x = add i16 %.021.i, 1                       ; 2 uses
  %i.y = sext i16 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25
  switch i8 %i.aa, label %bb.f [
    i8 0, label %.preheader27.preheader.i
    i8 9, label %bb.e
  ]

.preheader27.preheader.i:                         ; preds = %.preheader28.i
  %i.ab = zext i16 %indvars.iv.i to i64
  %smin.i = tail call i16 @llvm.smin.i16(i16 %.021.i, i16 -1)
  %i.ac = add nsw i16 %smin.i, 1
  br label %.preheader27.i

bb.e:                                             ; preds = %.preheader28.i
  store i8 32, ptr %i.z, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader28.i
  %indvars.iv.next.i = add i16 %indvars.iv.i, 1
  br label %.preheader28.i, !llvm.loop !0

.preheader27.i:                                   ; preds = %bb.g, %.preheader27.preheader.i
  %indvars.iv31.i = phi i64 [ %i.ab, %.preheader27.preheader.i ], [ %indvars.iv.next32.i, %bb.g ] ; 2 uses
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, -1 ; 3 uses
  %i.ad = and i64 %indvars.iv.next32.i, 32768
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader27.i
  %i.af = and i64 %indvars.iv.next32.i, 32767
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = icmp eq i8 %i.ah, 32
  br i1 %i.ai, label %.preheader27.i, label %.critedge.split.loop.exit35.i, !llvm.loop !1

.critedge.split.loop.exit35.i:                    ; preds = %bb.g
  %i.aj = trunc nuw i64 %indvars.iv31.i to i16
  br label %.critedge.i

.critedge.i:                                      ; preds = %.preheader27.i, %.critedge.split.loop.exit35.i
  %.1.lcssa.i = phi i16 [ %i.aj, %.critedge.split.loop.exit35.i ], [ %i.ac, %.preheader27.i ]
  %i.ak = sext i16 %.1.lcssa.i to i64
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !25
  %.not24.i = icmp eq i8 %i.am, 0
  br i1 %.not24.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  store i8 0, ptr %i.al, align 1, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %.critedge.i
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  %.2.i = phi i16 [ %i.an, %bb.i ], [ -1, %.preheader ]
  %i.an = add i16 %.2.i, 1                        ; 4 uses
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %bb.i, label %bb.j, !llvm.loop !2

bb.j:                                             ; preds = %bb.i
  %.not25.i = icmp eq i16 %i.an, 0
  br i1 %.not25.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.3.i = phi i16 [ %i.as, %.preheader.i ], [ %i.an, %bb.j ] ; 2 uses
  %.0.i = phi i16 [ %i.aw, %.preheader.i ], [ 0, %bb.j ] ; 2 uses
  %i.as = add i16 %.3.i, 1
  %i.at = sext i16 %.3.i to i64
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25  ; 2 uses
  %i.aw = add i16 %.0.i, 1
  %i.ax = sext i16 %.0.i to i64
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !25
  %.not26.i = icmp eq i8 %i.av, 0
  br i1 %.not26.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader.i, !llvm.loop !3

_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit: ; preds = %.preheader.i, %_ZNSi7getlineEPcl.exit, %bb.j
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32 ; 2 uses
  %.not.i11 = icmp eq i64 %i.az, 0
  br i1 %.not.i11, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  switch i8 %i.bc, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit [
    i8 10, label %bb.l
    i8 13, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i8 0, ptr %i.bb, align 1, !tbaa !25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, %bb.k, %bb.l
  %i.bd = load i8, ptr %2, align 1, !tbaa !25     ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.bd, 0
  %switch.selectcmp.case2 = icmp eq i8 %i.bd, 35
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.be = load ptr, ptr %0, align 8, !tbaa !17
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !49
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  %i.bl = and i1 %switch.selectcmp, %i.bk
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !173

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit, %bb.a
  %.lcssa13 = phi i1 [ false, %bb.a ], [ %i.bk, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit ]
  ret i1 %.lcssa13
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !67
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.split.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit

.split.i:                                         ; preds = %bb.b
  %i.g = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true) ; 2 uses
  %switch.tableidx = add nsw i32 %i.g, -8         ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 9
  br i1 %i.h, label %switch.lookup, label %.split.i31

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !66
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32

switch.lookup:                                    ; preds = %.split.i
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.split.i31

.split.i31:                                       ; preds = %switch.lookup, %.split.i
  %.sink = phi i32 [ 0, %.split.i ], [ %switch.load, %switch.lookup ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.k, align 8, !tbaa !66
  %switch.tableidx60 = add nsw i32 %i.g, -8       ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx60, 9
  br i1 %i.l, label %switch.lookup61, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32

switch.lookup61:                                  ; preds = %.split.i31
  %i.m = zext nneg i32 %switch.tableidx60 to i64
  %switch.gep62 = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii.13, i64 %i.m
  %switch.load63 = load i8, ptr %switch.gep62, align 1
  %switch.ext = zext i8 %switch.load63 to i32
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit, %.split.i31, %switch.lookup61
  %.0.i30 = phi i32 [ %switch.ext, %switch.lookup61 ], [ 0, %.split.i31 ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.0.i30, ptr %i.n, align 4, !tbaa !65
  %i.o = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #34 ; 3 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !38
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, label %.preheader

.preheader:                                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %3 = zext nneg i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 1
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #29
  br label %bb.g

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !174

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %4) #35 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.r, ptr %i.s, align 8, !tbaa !40
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %.lr.ph18.i36, label %bb.c

._crit_edge19.loopexit.i48:                       ; preds = %bb.f
  %.pre25.i49 = load ptr, ptr %i.c, align 8, !tbaa !38
  tail call void @free(ptr noundef %.pre25.i49) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #29
  br label %bb.g

.lr.ph18.i36:                                     ; preds = %bb.d, %bb.f
  %i.u = phi i32 [ %i.ad, %bb.f ], [ %1, %bb.d ]  ; 2 uses
  %indvars.iv22.i37 = phi i64 [ %indvars.iv.next23.i47, %bb.f ], [ 0, %bb.d ] ; 6 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv22.i37
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 3 uses
  %.not12.i38 = icmp eq ptr %i.x, null
  br i1 %.not12.i38, label %bb.f, label %.preheader.i39

.preheader.i39:                                   ; preds = %.lr.ph18.i36
  %.not20.i40 = icmp eq i64 %indvars.iv22.i37, 0
  br i1 %.not20.i40, label %._crit_edge.thread.i50, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.preheader.i39, %bb.e
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %bb.e ], [ 0, %.preheader.i39 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i42
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = icmp eq ptr %i.z, %i.x
  br i1 %i.aa, label %._crit_edge.i45, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i41
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, %indvars.iv22.i37
  br i1 %exitcond.not.i44, label %._crit_edge.i45, label %.lr.ph.i41, !llvm.loop !4

._crit_edge.i45:                                  ; preds = %bb.e, %.lr.ph.i41
  %.0.lcssa.ph.in.i46 = phi i64 [ %indvars.iv22.i37, %bb.e ], [ %indvars.iv.i42, %.lr.ph.i41 ]
  %i.ab = and i64 %.0.lcssa.ph.in.i46, 4294967295
  %i.ac = icmp eq i64 %i.ab, %indvars.iv22.i37
  br i1 %i.ac, label %._crit_edge.thread.i50, label %bb.f

._crit_edge.thread.i50:                           ; preds = %._crit_edge.i45, %.preheader.i39
  tail call void @free(ptr noundef %i.x) #28
  %.pre.i51 = load i32, ptr %i.b, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i50, %._crit_edge.i45, %.lr.ph18.i36
  %i.ad = phi i32 [ %i.u, %._crit_edge.i45 ], [ %.pre.i51, %._crit_edge.thread.i50 ], [ %i.u, %.lr.ph18.i36 ] ; 2 uses
  %indvars.iv.next23.i47 = add nuw nsw i64 %indvars.iv22.i37, 1 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next23.i47, %i.ae
  br i1 %i.af, label %.lr.ph18.i36, label %._crit_edge19.loopexit.i48, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.c, %.preheader
  store ptr %i.b, ptr %0, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, %._crit_edge19.loopexit.i48, %._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit ], [ false, %._crit_edge19.loopexit.i48 ], [ true, %._crit_edge ]
  ret i1 %.1
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
end_hunk_0
