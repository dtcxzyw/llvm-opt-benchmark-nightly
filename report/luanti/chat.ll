Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/chat?download=true
inline.NumInlined: 1363
inline.NumDeleted: 545
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10ChatBuffer12deleteOldestEj:bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr exact i64 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = trunc i64 %i.j to i32
  %i.o = sub nsw i32 %i.n, %i.l
  %.0.i = select i1 %i.m, i32 0, i32 %i.o
  %i.p = icmp eq i32 %i.b, %.0.i
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !54   ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 168
  %i.y = ashr exact i64 %i.i, 5                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %.048 = phi i32 [ %1, %.lr.ph ], [ %i.am, %.critedge2 ]
  %.01847 = phi i32 [ 0, %.lr.ph ], [ %.2, %.critedge2 ] ; 4 uses
  %i.z = icmp ugt i64 %i.x, %indvars.iv
  br i1 %i.z, label %bb.c, label %.critedge.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aa = zext i32 %.01847 to i64                 ; 2 uses
  %i.ab = icmp ugt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !81, !range !49, !noundef !92
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 93, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10ChatBuffer12deleteOldestEj) #29
  unreachable

.preheader:                                       ; preds = %bb.d, %bb.f
  %.1.in = phi i32 [ %.1, %bb.f ], [ %.01847, %bb.d ]
  %.1 = add i32 %.1.in, 1                         ; 4 uses
  %i.ag = zext i32 %.1 to i64                     ; 2 uses
  %i.ah = icmp ugt i64 %i.y, %i.ag
  br i1 %i.ah, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !81, !range !49, !noundef !92
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge2, label %.preheader, !llvm.loop !134

.critedge2:                                       ; preds = %bb.f, %.preheader, %bb.c
  %.2 = phi i32 [ %.01847, %bb.c ], [ %.1, %.preheader ], [ %.1, %bb.f ] ; 2 uses
  %i.am = add i32 %.048, -1                       ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !135

.critedge.split.loop.exit:                        ; preds = %bb.b
  %i.an = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.split.loop.exit
  %.019.lcssa = phi i32 [ %i.an, %.critedge.split.loop.exit ], [ %1, %.critedge2 ] ; 2 uses
  %.018.lcssa = phi i32 [ %.01847, %.critedge.split.loop.exit ], [ %.2, %.critedge2 ] ; 5 uses
  %i.ao = zext i32 %.019.lcssa to i64
  %.idx = mul nuw nsw i64 %i.ao, 168
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %.not.i.i = icmp eq i32 %.019.lcssa, 0          ; 3 uses
  br i1 %.not.i.i, label %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93 ; 4 uses
  %.not11.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.aq                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.h
  %i.aw = udiv exact i64 %i.au, 168
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(168) ptr @_ZN8ChatLineaSEOS_(ptr noundef nonnull align 8 dereferenceable(168) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.0910.i.i.i.i.i.i.i) #26 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 168
  %i.ba = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, !llvm.loop !136

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !93
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, %bb.h, %bb.g
  %i.bc = phi ptr [ %i.as, %bb.h ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i ], [ %i.as, %bb.g ] ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.aq
  %i.bf = getelementptr inbounds i8, ptr %i.t, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.bf
  br i1 %.not.i.i.i, label %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP8ChatLineEEvT_S4_(ptr noundef %i.bf, ptr noundef %i.bc)
          to label %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i unwind label %bb.j

_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.i
  store ptr %i.bf, ptr %i.ar, align 8, !tbaa !55
  br label %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit: ; preds = %.critedge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !138 ; 3 uses
  %i.bj = zext i32 %.018.lcssa to i64
  %.idx42 = shl nuw nsw i64 %i.bj, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx42 ; 4 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 3 uses
  %.not.i.i23 = icmp eq i32 %.018.lcssa, 0
  br i1 %.not.i.i23, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !138 ; 3 uses
  %.not11.i.i24 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not11.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bl
  %i.bp = ashr exact i64 %i.bo, 5                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i26, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i26
  %.012.i.i.i.i.i.i.i27 = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.bp, %bb.l ] ; 2 uses
  %.0811.i.i.i.i.i.i.i28 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.bi, %bb.l ] ; 3 uses
  %.0910.i.i.i.i.i.i.i29 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.bk, %bb.l ] ; 3 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(25) %.0811.i.i.i.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(25) %.0910.i.i.i.i.i.i.i29) #26
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i29, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !81, !range !49, !noundef !92
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i28, i64 24
  store i8 %i.bs, ptr %i.bt, align 8, !tbaa !81
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i29, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i28, i64 32
  %i.bw = add nsw i64 %.012.i.i.i.i.i.i.i27, -1
  %i.bx = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i27, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i26, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, !llvm.loop !137

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i26
  %.pre.i.i30 = load ptr, ptr %i.d, align 8, !tbaa !138 ; 2 uses
  %.pre13.i.i = ptrtoint ptr %.pre.i.i30 to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, %bb.l, %bb.k
  %.pre-phi14.i.i = phi i64 [ %i.bn, %bb.l ], [ %.pre13.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i ], [ %i.bl, %bb.k ]
  %i.by = phi ptr [ %i.bm, %bb.l ], [ %.pre.i.i30, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bz = sub i64 %.pre-phi14.i.i, %i.bl
  %i.ca = getelementptr inbounds i8, ptr %i.bi, i64 %i.bz ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i.i.i25, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i ], [ %i.ca, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i.i) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, %i.by
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !51
  br i1 %.not.i.i, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread, label %bb.m

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit: ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i
  br i1 %.not.i.i, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.cc, align 8, !tbaa !36
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread: ; preds = %bb.a, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.m, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %.018.lcssa748184 = phi i32 [ %.018.lcssa, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ %.018.lcssa, %bb.m ], [ %.018.lcssa, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit ], [ 0, %bb.a ]
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = lshr exact i64 %i.ch, 5
  %i.cj = load i32, ptr %i.k, align 4, !tbaa !69  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = trunc i64 %i.ci to i32
  %i.cm = sub nsw i32 %i.cl, %i.cj
  %.0.i31 = select i1 %i.ck, i32 0, i32 %i.cm
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !70
  %i.co = sub i32 %i.cn, %.018.lcssa748184
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %i.ct, 5
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = load i32, ptr %i.k, align 4, !tbaa !69  ; 3 uses
  %i.cx = icmp eq i32 %i.cw, 0                    ; 2 uses
  %.not.i.i32 = icmp slt i32 %i.cw, %i.cv
  %or.cond.i.i = or i1 %i.cx, %.not.i.i32
  %i.cy = sub nsw i32 %i.cv, %i.cw                ; 2 uses
  %.0.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.cy
  %.0.i7.i = select i1 %i.cx, i32 0, i32 %i.cy
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 %.0.i.i)
  %storemerge6.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %.0.i7.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge = phi i32 [ %storemerge6.i, %bb.o ], [ %.0.i31, %bb.n ]
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ChatLineD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN14EnrichedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !47
  %i.m = shl i64 %i.l, 2
  %i.n = add i64 %i.m, 4
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #27
  br label %_ZN14EnrichedStringD2Ev.exit

_ZN14EnrichedStringD2Ev.exit:                     ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2, label %bb.c

bb.c:                                             ; preds = %_ZN14EnrichedStringD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2: ; preds = %bb.c, %_ZN14EnrichedStringD2Ev.exit
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN14EnrichedStringD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i3: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2
  %i.z = load i64, ptr %i.x, align 8, !tbaa !47
  %i.aa = shl i64 %i.z, 2
  %i.ab = add i64 %i.aa, 4
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ab) #27
  br label %_ZN14EnrichedStringD2Ev.exit5

_ZN14EnrichedStringD2Ev.exit5:                    ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ChatBuffer5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP8ChatLineEEvT_S4_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i unwind label %bb.c

_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8, !tbaa !55
  br label %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable

_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit:      ; preds = %bb.a, %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.h, %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i) #26
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit: ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.m, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer12getLineCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(168) ptr @_ZNK10ChatBuffer7getLineEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw [168 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ChatBuffer4stepEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, float noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.05.09, align 8, !tbaa !68
end_hunk_0
