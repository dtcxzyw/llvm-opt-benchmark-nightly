inline.NumInlined: 1092
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(512) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 %.sink, ptr %i.g, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser22parseUnicodeLanguageIdEb(ptr noundef nonnull align 8 dereferenceable(536) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14 ; 3 uses
  br i1 %1, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %.pre, i64 -32
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.pre, i64 -24
  %.val8 = load i64, ptr %i.b, align 8, !tbaa !13
  %i.c = tail call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_123isUnicodeLanguageSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr %.val, i64 %.val8)
  br i1 %i.c, label %._crit_edge, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.idx = phi i64 [ 0, %bb.b ], [ 240, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 12 uses
  %i.f = getelementptr inbounds i8, ptr %.pre, i64 -32
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !27
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge
  %i.l = load i64, ptr %i.j, align 8, !tbaa !19
  %i.m = shl i64 %i.l, 1
  %i.n = add i64 %i.m, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #15
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.o = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %._crit_edge ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -32 ; 2 uses
  %.val9 = load ptr, ptr %i.r, align 8            ; 5 uses
  %i.s = getelementptr i8, ptr %i.o, i64 -24
  %.val10 = load i64, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %or.cond.i.not.i = icmp eq i64 %.val10, 4
  br i1 %or.cond.i.not.i, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.t = load i16, ptr %.val9, align 2, !tbaa !24
  %i.u = and i16 %i.t, -33
  %i.v = add i16 %i.u, -65
  %i.w = icmp ult i16 %i.v, 26
  br i1 %i.w, label %bb.d, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val9, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !24
  %i.z = and i16 %i.y, -33
  %i.aa = add i16 %i.z, -65
  %i.ab = icmp ult i16 %i.aa, 26
  br i1 %i.ab, label %bb.e, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9, i64 4
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !24
  %i.ae = and i16 %i.ad, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  br i1 %i.ag, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.val9, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !24
  %i.aj = and i16 %i.ai, -33
  %i.ak = add i16 %i.aj, -65
  %i.al = icmp ult i16 %i.ak, 26
  br i1 %i.al, label %bb.f, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.f:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32 ; 3 uses
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !27
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7  ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.f
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !19
  %i.at = shl i64 %i.as, 1
  %i.au = add i64 %i.at, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.au) #15
  %.pre.i16 = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15
  %i.av = phi ptr [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15 ], [ %i.ao, %bb.f ] ; 4 uses
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !14
  %.not31 = icmp eq ptr %i.aw, %i.av
  br i1 %.not31, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18
  %.phi.trans.insert47 = getelementptr inbounds i8, ptr %i.av, i64 -32
  %.val11.pre = load ptr, ptr %.phi.trans.insert47, align 8
  %.phi.trans.insert49 = getelementptr i8, ptr %i.av, i64 -24
  %.val12.pre = load i64, ptr %.phi.trans.insert49, align 8, !tbaa !13
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread: ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge, %bb.c
  %.val12 = phi i64 [ %.val12.pre, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge ], [ %.val10, %bb.c ]
  %.val11 = phi ptr [ %.val11.pre, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge ], [ %.val9, %bb.c ] ; 5 uses
  %i.ax = phi ptr [ %i.av, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge ], [ %i.o, %bb.c ] ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  switch i64 %.val12, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread [
    i64 2, label %._crit_edge.i.i.i.i.i.i.thread.i
    i64 3, label %._crit_edge.i.i.i.i.i.i20.thread.i
  ]

._crit_edge.i.i.i.i.i.i.thread.i:                 ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread
  %i.az = load i16, ptr %.val11, align 2, !tbaa !24
  %i.ba = and i16 %i.az, -33
  %i.bb = add i16 %i.ba, -65
  %i.bc = icmp ult i16 %i.bb, 26
  br i1 %i.bc, label %.split, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

.split:                                           ; preds = %._crit_edge.i.i.i.i.i.i.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val11, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !24
  %i.bf = and i16 %i.be, -33
  %i.bg = add i16 %i.bf, -65
  %i.bh = icmp ult i16 %i.bg, 26
  br i1 %i.bh, label %bb.h, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge.i.i.i.i.i.i20.thread.i:               ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread
  %i.bi = load i16, ptr %.val11, align 2, !tbaa !24
  %i.bj = add i16 %i.bi, -48
  %i.bk = icmp ult i16 %i.bj, 10
  br i1 %i.bk, label %bb.g, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !24
  %i.bn = add i16 %i.bm, -48
  %i.bo = icmp ult i16 %i.bn, 10
  br i1 %i.bo, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11, i64 4
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !24
  %i.br = add i16 %i.bq, -48
  %i.bs = icmp ult i16 %i.br, 10
  br i1 %i.bs, label %bb.h, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.h:                                             ; preds = %.split, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -32 ; 3 uses
  store ptr %i.bv, ptr %i.e, align 8, !tbaa !27
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !7  ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19: ; preds = %bb.h
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.ca = shl i64 %i.bz, 1
  %i.cb = add i64 %i.ca, 2
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.cb) #15
  %.pre.i20 = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19
  %i.cc = phi ptr [ %.pre.i20, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19 ], [ %i.bv, %bb.h ] ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !14
  %.not32 = icmp eq ptr %i.cd, %i.cc
  br i1 %.not32, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, %.lr.ph.i.i.i.i.i.i.i, %bb.d, %bb.e, %._crit_edge.i.i.i.i.i.i20.thread.i, %bb.g, %._crit_edge.i.i.i.i.i.i.thread.i, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, %.split, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.ce = phi ptr [ %i.ax, %._crit_edge.i.i.i.i.i.i20.thread.i ], [ %i.ax, %bb.g ], [ %i.ax, %._crit_edge.i.i.i.i.i.i.thread.i ], [ %i.ax, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread ], [ %i.ax, %.split ], [ %i.cc, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22 ], [ %i.ax, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit ], [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread
  %i.cg = phi ptr [ %i.ge, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28 ], [ %i.ce, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %.val13 = load ptr, ptr %i.ch, align 8          ; 5 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %.val14 = load i64, ptr %i.ci, align 8, !tbaa !13 ; 4 uses
  %i.cj = add i64 %.val14, -9
  %or.cond.i.i = icmp ult i64 %i.cj, -4
  br i1 %or.cond.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.val13, i64 %.val14 ; 3 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = lshr i64 %.val14, 2
  br label %.lr.ph.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i23:                           ; preds = %bb.n, %bb.j
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.dt, %bb.n ], [ %i.cm, %bb.j ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.n ], [ %.val13, %bb.j ] ; 10 uses
  %i.cn = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.co = and i16 %i.cn, -33
  %i.cp = add i16 %i.co, -65
  %i.cq = icmp ult i16 %i.cp, 26
  %i.cr = add i16 %i.cn, -48
  %i.cs = icmp ult i16 %i.cr, 10
  %i.ct = or i1 %i.cs, %i.cq
  br i1 %i.ct, label %bb.k, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i23
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !24 ; 2 uses
  %i.cw = and i16 %i.cv, -33
  %i.cx = add i16 %i.cw, -65
  %i.cy = icmp ult i16 %i.cx, 26
  %i.cz = add i16 %i.cv, -48
  %i.da = icmp ult i16 %i.cz, 10
  %i.db = or i1 %i.da, %i.cy
  br i1 %i.db, label %bb.l, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67

bb.l:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !24 ; 2 uses
  %i.de = and i16 %i.dd, -33
  %i.df = add i16 %i.de, -65
  %i.dg = icmp ult i16 %i.df, 26
  %i.dh = add i16 %i.dd, -48
  %i.di = icmp ult i16 %i.dh, 10
  %i.dj = or i1 %i.di, %i.dg
  br i1 %i.dj, label %bb.m, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !24 ; 2 uses
  %i.dm = and i16 %i.dl, -33
  %i.dn = add i16 %i.dm, -65
  %i.do = icmp ult i16 %i.dn, 26
  %i.dp = add i16 %i.dl, -48
  %i.dq = icmp ult i16 %i.dp, 10
  %i.dr = or i1 %i.dq, %i.do
  br i1 %i.dr, label %bb.n, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8 ; 6 uses
  %i.dt = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.du = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i.i23, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.n
  %.pre.i.i.i.i.i.i.i = ptrtoint ptr %i.ds to i64
  %.pre57.i.i.i.i.i.i.i = sub i64 %i.cl, %.pre.i.i.i.i.i.i.i
  %i.dv = ashr exact i64 %.pre57.i.i.i.i.i.i.i, 1
  switch i64 %i.dv, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30 [
    i64 3, label %bb.o
    i64 2, label %bb.q
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i
  %i.dw = load i16, ptr %i.ds, align 2, !tbaa !24 ; 2 uses
  %i.dx = and i16 %i.dw, -33
  %i.dy = add i16 %i.dx, -65
  %i.dz = icmp ult i16 %i.dy, 26
  %i.ea = add i16 %i.dw, -48
  %i.eb = icmp ult i16 %i.ea, 10
  %i.ec = or i1 %i.eb, %i.dz
  br i1 %i.ec, label %bb.p, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.loopexit.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.ed, %bb.p ], [ %i.ds, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ee = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ef = and i16 %i.ee, -33
  %i.eg = add i16 %i.ef, -65
  %i.eh = icmp ult i16 %i.eg, 26
  %i.ei = add i16 %i.ee, -48
  %i.ej = icmp ult i16 %i.ei, 10
  %i.ek = or i1 %i.ej, %i.eh
  br i1 %i.ek, label %bb.r, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.loopexit.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.el, %bb.r ], [ %i.ds, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.em = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.en = and i16 %i.em, -33
  %i.eo = add i16 %i.en, -65
  %i.ep = icmp ult i16 %i.eo, 26
  %i.eq = add i16 %i.em, -48
  %i.er = icmp ult i16 %i.eq, 10
  %i.es = or i1 %i.er, %i.ep
  %spec.select.i.i.i.i.i.i.i = select i1 %i.es, ptr %i.ck, ptr %.sroa.032.2.i.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit: ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65: ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67: ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i23, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67, %bb.s, %bb.q, %bb.o
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %bb.q ], [ %spec.select.i.i.i.i.i.i.i, %bb.s ], [ %i.ds, %bb.o ], [ %i.ev, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67 ], [ %i.et, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit ], [ %i.eu, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65 ], [ %.sroa.032.051.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i23 ]
  %i.ew = icmp eq ptr %i.ck, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i
  br i1 %i.ew, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i, %bb.i
  %or.cond.i7.not.i = icmp eq i64 %.val14, 3
  br i1 %or.cond.i7.not.i, label %._crit_edge.i.i.i.i.i.i20.thread.i24, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge.i.i.i.i.i.i20.thread.i24:             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i
  %i.ex = load i16, ptr %.val13, align 2, !tbaa !24 ; 2 uses
  %i.ey = and i16 %i.ex, -33
  %i.ez = add i16 %i.ey, -65
  %i.fa = icmp ult i16 %i.ez, 26
  %i.fb = add i16 %i.ex, -48
  %i.fc = icmp ult i16 %i.fb, 10
  %i.fd = or i1 %i.fc, %i.fa
  br i1 %i.fd, label %bb.t, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i24
  %i.fe = getelementptr inbounds nuw i8, ptr %.val13, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !24 ; 2 uses
  %i.fg = and i16 %i.ff, -33
  %i.fh = add i16 %i.fg, -65
  %i.fi = icmp ult i16 %i.fh, 26
  %i.fj = add i16 %i.ff, -48
  %i.fk = icmp ult i16 %i.fj, 10
  %i.fl = or i1 %i.fk, %i.fi
  br i1 %i.fl, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.t
  %i.fm = getelementptr inbounds nuw i8, ptr %.val13, i64 4
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !24 ; 2 uses
  %i.fo = and i16 %i.fn, -33
  %i.fp = add i16 %i.fo, -65
  %i.fq = icmp ult i16 %i.fp, 26
  %i.fr = add i16 %i.fn, -48
  %i.fs = icmp ult i16 %i.fr, 10
  %i.ft = or i1 %i.fs, %i.fq
  br i1 %i.ft, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30: ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.fu = tail call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fu, 1
  %i.fv = trunc i8 %.fca.1.extract to i1
  br i1 %i.fv, label %bb.u, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.u:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -32 ; 3 uses
  store ptr %i.fx, ptr %i.e, align 8, !tbaa !27
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !7  ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 -16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.u
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !19
  %i.gc = shl i64 %i.gb, 1
  %i.gd = add i64 %i.gc, 2
  tail call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gd) #15
  %.pre.i26 = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25
  %i.ge = phi ptr [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25 ], [ %i.fx, %bb.u ] ; 2 uses
  %i.gf = load ptr, ptr %i.p, align 8, !tbaa !14
end_hunk_0
