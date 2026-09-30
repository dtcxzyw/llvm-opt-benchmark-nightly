Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BCP47Parser?download=true
inline.NumInlined: 1092
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv:bb.a
bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 %.sink, ptr %i.g, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser22parseUnicodeLanguageIdEb(ptr noundef nonnull align 8 dereferenceable(536) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 3 uses
  br i1 %1, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %.pre, i64 -32
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.pre, i64 -24
  %.val8 = load i64, ptr %i.b, align 8, !tbaa !18
  %i.c = tail call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_123isUnicodeLanguageSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr %.val, i64 %.val8)
  br i1 %i.c, label %._crit_edge, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.idx = phi i64 [ 0, %bb.b ], [ 240, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 12 uses
  %i.f = getelementptr inbounds i8, ptr %.pre, i64 -32
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !28
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge
  %i.l = load i64, ptr %i.j, align 8, !tbaa !22
  %i.m = shl i64 %i.l, 1
  %i.n = add i64 %i.m, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #15
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.o = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %._crit_edge ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -32 ; 2 uses
  %.val9 = load ptr, ptr %i.r, align 8            ; 5 uses
  %i.s = getelementptr i8, ptr %i.o, i64 -24
  %.val10 = load i64, ptr %i.s, align 8, !tbaa !18 ; 2 uses
  %or.cond.i.not.i = icmp eq i64 %.val10, 4
  br i1 %or.cond.i.not.i, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.t = load i16, ptr %.val9, align 2, !tbaa !27
  %i.u = and i16 %i.t, -33
  %i.v = add i16 %i.u, -65
  %i.w = icmp ult i16 %i.v, 26
  br i1 %i.w, label %bb.d, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val9, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !27
  %i.z = and i16 %i.y, -33
  %i.aa = add i16 %i.z, -65
  %i.ab = icmp ult i16 %i.aa, 26
  br i1 %i.ab, label %bb.e, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9, i64 4
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !27
  %i.ae = and i16 %i.ad, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  br i1 %i.ag, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.val9, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !27
  %i.aj = and i16 %i.ai, -33
  %i.ak = add i16 %i.aj, -65
  %i.al = icmp ult i16 %i.ak, 26
  br i1 %i.al, label %bb.f, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.f:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32 ; 3 uses
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !28
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.f
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !22
  %i.at = shl i64 %i.as, 1
  %i.au = add i64 %i.at, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.au) #15
  %.pre.i16 = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15
  %i.av = phi ptr [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i15 ], [ %i.ao, %bb.f ] ; 4 uses
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !20
  %.not31 = icmp eq ptr %i.aw, %i.av
  br i1 %.not31, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18._ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18
  %.phi.trans.insert47 = getelementptr inbounds i8, ptr %i.av, i64 -32
  %.val11.pre = load ptr, ptr %.phi.trans.insert47, align 8
  %.phi.trans.insert49 = getelementptr i8, ptr %i.av, i64 -24
  %.val12.pre = load i64, ptr %.phi.trans.insert49, align 8, !tbaa !18
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
  %i.az = load i16, ptr %.val11, align 2, !tbaa !27
  %i.ba = and i16 %i.az, -33
  %i.bb = add i16 %i.ba, -65
  %i.bc = icmp ult i16 %i.bb, 26
  br i1 %i.bc, label %.split, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

.split:                                           ; preds = %._crit_edge.i.i.i.i.i.i.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val11, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !27
  %i.bf = and i16 %i.be, -33
  %i.bg = add i16 %i.bf, -65
  %i.bh = icmp ult i16 %i.bg, 26
  br i1 %i.bh, label %bb.h, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge.i.i.i.i.i.i20.thread.i:               ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread
  %i.bi = load i16, ptr %.val11, align 2, !tbaa !27
  %i.bj = add i16 %i.bi, -48
  %i.bk = icmp ult i16 %i.bj, 10
  br i1 %i.bk, label %bb.g, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !27
  %i.bn = add i16 %i.bm, -48
  %i.bo = icmp ult i16 %i.bn, 10
  br i1 %i.bo, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11, i64 4
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !27
  %i.br = add i16 %i.bq, -48
  %i.bs = icmp ult i16 %i.br, 10
  br i1 %i.bs, label %bb.h, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.h:                                             ; preds = %.split, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -32 ; 3 uses
  store ptr %i.bv, ptr %i.e, align 8, !tbaa !28
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19: ; preds = %bb.h
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !22
  %i.ca = shl i64 %i.bz, 1
  %i.cb = add i64 %i.ca, 2
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.cb) #15
  %.pre.i20 = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19
  %i.cc = phi ptr [ %.pre.i20, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i19 ], [ %i.bv, %bb.h ] ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !20
  %.not32 = icmp eq ptr %i.cd, %i.cc
  br i1 %.not32, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i20.thread.i, %bb.g, %._crit_edge.i.i.i.i.i.i.thread.i, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, %.split, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.ce = phi ptr [ %i.ax, %._crit_edge.i.i.i.i.i.i20.thread.i ], [ %i.ax, %bb.g ], [ %i.ax, %._crit_edge.i.i.i.i.i.i.thread.i ], [ %i.ax, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread ], [ %i.ax, %.split ], [ %i.cc, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22 ], [ %i.ax, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeScriptSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread
  %i.cg = phi ptr [ %i.gc, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28 ], [ %i.ce, %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeRegionSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %.val13 = load ptr, ptr %i.ch, align 8          ; 6 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %.val14 = load i64, ptr %i.ci, align 8, !tbaa !18 ; 4 uses
  %i.cj = add i64 %.val14, -9
  %or.cond.i.i = icmp ult i64 %i.cj, -4
  br i1 %or.cond.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx.i = shl nuw nsw i64 %.val14, 1            ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.val13, i64 %.idx.i ; 2 uses
  %i.ck = lshr i64 %.val14, 2                     ; 2 uses
  %3 = shl nuw nsw i64 %i.ck, 3                   ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.val13, i64 %3 ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i23:                           ; preds = %bb.n, %bb.j
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.n ], [ %i.ck, %bb.j ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.dq, %bb.n ], [ %.val13, %bb.j ] ; 9 uses
  %i.cl = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !27 ; 2 uses
  %i.cm = and i16 %i.cl, -33
  %i.cn = add i16 %i.cm, -65
  %i.co = icmp ult i16 %i.cn, 26
  %i.cp = add i16 %i.cl, -48
  %i.cq = icmp ult i16 %i.cp, 10
  %i.cr = or i1 %i.cq, %i.co
  br i1 %i.cr, label %bb.k, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i23
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !27 ; 2 uses
  %i.cu = and i16 %i.ct, -33
  %i.cv = add i16 %i.cu, -65
  %i.cw = icmp ult i16 %i.cv, 26
  %i.cx = add i16 %i.ct, -48
  %i.cy = icmp ult i16 %i.cx, 10
  %i.cz = or i1 %i.cy, %i.cw
  br i1 %i.cz, label %bb.l, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.db = load i16, ptr %i.da, align 2, !tbaa !27 ; 2 uses
  %i.dc = and i16 %i.db, -33
  %i.dd = add i16 %i.dc, -65
  %i.de = icmp ult i16 %i.dd, 26
  %i.df = add i16 %i.db, -48
  %i.dg = icmp ult i16 %i.df, 10
  %i.dh = or i1 %i.dg, %i.de
  br i1 %i.dh, label %bb.m, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65.a

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !27 ; 2 uses
  %i.dk = and i16 %i.dj, -33
  %i.dl = add i16 %i.dk, -65
  %i.dm = icmp ult i16 %i.dl, 26
  %i.dn = add i16 %i.dj, -48
  %i.do = icmp ult i16 %i.dn, 10
  %i.dp = or i1 %i.do, %i.dm
  br i1 %i.dp, label %bb.n, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8
  %i.dr = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.ds = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i.i23, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.n
  %.pre57.i.i.i.i.i.i.i = sub nsw i64 %.idx.i, %3
  %i.dt = ashr exact i64 %.pre57.i.i.i.i.i.i.i, 1
  switch i64 %i.dt, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30 [
    i64 3, label %bb.o
    i64 2, label %bb.q
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i
  %i.du = load i16, ptr %scevgep.i, align 2, !tbaa !27 ; 2 uses
  %i.dv = and i16 %i.du, -33
  %i.dw = add i16 %i.dv, -65
  %i.dx = icmp ult i16 %i.dw, 26
  %i.dy = add i16 %i.du, -48
  %i.dz = icmp ult i16 %i.dy, 10
  %i.ea = or i1 %i.dz, %i.dx
  br i1 %i.ea, label %bb.p, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.eb = getelementptr i8, ptr %scevgep.i, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.loopexit.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.eb, %bb.p ], [ %scevgep.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ec = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !27 ; 2 uses
  %i.ed = and i16 %i.ec, -33
  %i.ee = add i16 %i.ed, -65
  %i.ef = icmp ult i16 %i.ee, 26
  %i.eg = add i16 %i.ec, -48
  %i.eh = icmp ult i16 %i.eg, 10
  %i.ei = or i1 %i.eh, %i.ef
  br i1 %i.ei, label %bb.r, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.loopexit.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.ej, %bb.r ], [ %scevgep.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ek = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !27 ; 2 uses
  %i.el = and i16 %i.ek, -33
  %i.em = add i16 %i.el, -65
  %i.en = icmp ult i16 %i.em, 26
  %i.eo = add i16 %i.ek, -48
  %i.ep = icmp ult i16 %i.eo, 10
  %i.eq = or i1 %i.ep, %i.en
  %spec.select.i.i.i.i.i.i.i = select i1 %i.eq, ptr %2, ptr %.sroa.032.2.i.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit: ; preds = %bb.m
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65.a: ; preds = %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67: ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i23, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65.a, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67, %bb.s, %bb.q, %bb.o
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %bb.q ], [ %spec.select.i.i.i.i.i.i.i, %bb.s ], [ %scevgep.i, %bb.o ], [ %i.et, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit67 ], [ %i.er, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit ], [ %i.es, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i.loopexit.split.loop.exit65.a ], [ %.sroa.032.051.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i23 ]
  %i.eu = icmp eq ptr %2, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i
  br i1 %i.eu, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i, %bb.i
  %or.cond.i7.not.i = icmp eq i64 %.val14, 3
  br i1 %or.cond.i7.not.i, label %._crit_edge.i.i.i.i.i.i20.thread.i24, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

._crit_edge.i.i.i.i.i.i20.thread.i24:             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i
  %i.ev = load i16, ptr %.val13, align 2, !tbaa !27 ; 2 uses
  %i.ew = and i16 %i.ev, -33
  %i.ex = add i16 %i.ew, -65
  %i.ey = icmp ult i16 %i.ex, 26
  %i.ez = add i16 %i.ev, -48
  %i.fa = icmp ult i16 %i.ez, 10
  %i.fb = or i1 %i.fa, %i.ey
  br i1 %i.fb, label %bb.t, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i24
  %i.fc = getelementptr inbounds nuw i8, ptr %.val13, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !27 ; 2 uses
  %i.fe = and i16 %i.fd, -33
  %i.ff = add i16 %i.fe, -65
  %i.fg = icmp ult i16 %i.ff, 26
  %i.fh = add i16 %i.fd, -48
  %i.fi = icmp ult i16 %i.fh, 10
  %i.fj = or i1 %i.fi, %i.fg
  br i1 %i.fj, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %.val13, i64 4
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !27 ; 2 uses
  %i.fm = and i16 %i.fl, -33
  %i.fn = add i16 %i.fm, -65
  %i.fo = icmp ult i16 %i.fn, 26
  %i.fp = add i16 %i.fl, -48
  %i.fq = icmp ult i16 %i.fp, 10
  %i.fr = or i1 %i.fq, %i.fo
  br i1 %i.fr, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30: ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.i, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.fs = tail call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fs, 1
  %i.ft = trunc i8 %.fca.1.extract to i1
  br i1 %i.ft, label %bb.u, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread

bb.u:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -32 ; 3 uses
  store ptr %i.fv, ptr %i.e, align 8, !tbaa !28
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !17 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 -16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.u
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !22
  %i.ga = shl i64 %i.fz, 1
  %i.gb = add i64 %i.ga, 2
  tail call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.gb) #15
  %.pre.i26 = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25
  %i.gc = phi ptr [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i25 ], [ %i.fv, %bb.u ] ; 2 uses
  %i.gd = load ptr, ptr %i.p, align 8, !tbaa !20
  %.not33 = icmp eq ptr %i.gd, %i.gc
  br i1 %.not33, label %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread, label %bb.i, !llvm.loop !60

_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i20.thread.i24, %bb.t, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit22 ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit18 ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit ], [ true, %._crit_edge.i.i.i.i.i.i20.thread.i24 ], [ true, %bb.t ], [ true, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread.i ], [ true, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit28 ], [ false, %_ZN6hermes13platform_intl12_GLOBAL__N_122isUnicodeVariantSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.thread30 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser15parseExtensionsEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.d
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.e = phi ptr [ %i.ad, %bb.i ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.ae, %bb.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27   ; 4 uses
  %i.m = and i16 %i.l, -33
  %i.n = add i16 %i.m, -65
  %i.o = icmp ult i16 %i.n, 26
  %i.p = add i16 %i.l, -48
  %i.q = icmp ult i16 %i.p, 10
  %i.r = or i1 %i.q, %i.o
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.b, align 8, !tbaa !28
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %i.t = icmp eq ptr %i.k, %i.s
  br i1 %i.t, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !22
  %i.v = shl i64 %i.u, 1
  %i.w = add i64 %i.v, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.w) #15
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.x = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.c ]
  %i.y = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.g, %bb.c ]
  %.not8 = icmp eq ptr %i.x, %i.y
  br i1 %.not8, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  switch i16 %i.l, label %bb.h [
    i16 117, label %bb.e
    i16 116, label %bb.f
    i16 120, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser21parseUnicodeExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  br i1 %i.z, label %bb.i, label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser25parseTransformedExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  br i1 %i.aa, label %bb.i, label %.critedge

bb.g:                                             ; preds = %bb.d
  %i.ab = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser16parsePUExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.ac = tail call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser19parseOtherExtensionEDs(ptr noundef nonnull align 8 dereferenceable(536) %0, i16 noundef zeroext %i.l)
  br i1 %i.ac, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.f, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, %bb.e, %bb.b, %bb.h, %bb.a, %bb.g
  %.2 = phi i1 [ %i.ab, %bb.g ], [ true, %bb.a ], [ true, %.lr.ph ], [ false, %bb.f ], [ false, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes13platform_intl17LanguageTagParser14hasMoreSubtagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_123isUnicodeLanguageSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %.8.val, -2
  %or.cond.i.not = icmp eq i64 %i.a, 2
  br i1 %or.cond.i.not, label %._crit_edge.i.i.i.i.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %.0.val, i64 %.8.val ; 2 uses
  %i.c = icmp eq i64 %.8.val, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.d = load i16, ptr %.0.val, align 2, !tbaa !27
  %i.e = and i16 %i.d, -33
  %i.f = add i16 %i.e, -65
  %i.g = icmp ult i16 %i.f, 26
  br i1 %i.g, label %bb.c, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.0.val, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.i = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !27
  %i.j = and i16 %i.i, -33
  %i.k = add i16 %i.j, -65
  %i.l = icmp ult i16 %i.k, 26
  br i1 %i.l, label %bb.e, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !27
  %i.o = and i16 %i.n, -33
  %i.p = add i16 %i.o, -65
  %i.q = icmp ult i16 %i.p, 26
  %spec.select.i.i.i.i.i.i = select i1 %i.q, ptr %i.b, ptr %i.m
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.d ], [ %spec.select.i.i.i.i.i.i, %bb.e ], [ %.0.val, %bb.b ]
  %i.r = icmp eq ptr %i.b, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread: ; preds = %bb.a
  %i.s = add i64 %.8.val, -9
  %or.cond.i7 = icmp ult i64 %i.s, -4
  br i1 %or.cond.i7, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %0 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.t = lshr i64 %.8.val, 2                      ; 2 uses
  %1 = shl nuw nsw i64 %i.t, 3                    ; 3 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %1 ; 4 uses
  %2 = getelementptr i8, ptr %.0.val, i64 %1
  br label %.lr.ph.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i9:                              ; preds = %bb.f, %bb.j
  %.052.i.i.i.i.i.i10 = phi i64 [ %i.ao, %bb.j ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i11 = phi ptr [ %i.an, %bb.j ], [ %.0.val, %bb.f ] ; 9 uses
  %i.u = load i16, ptr %.sroa.032.051.i.i.i.i.i.i11, align 2, !tbaa !27
  %i.v = and i16 %i.u, -33
  %i.w = add i16 %i.v, -65
  %i.x = icmp ult i16 %i.w, 26
  br i1 %i.x, label %bb.g, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i9
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !27
  %i.aa = and i16 %i.z, -33
  %i.ab = add i16 %i.aa, -65
  %i.ac = icmp ult i16 %i.ab, 26
  br i1 %i.ac, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !27
  %i.af = and i16 %i.ae, -33
  %i.ag = add i16 %i.af, -65
  %i.ah = icmp ult i16 %i.ag, 26
  br i1 %i.ah, label %bb.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 6
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !27
  %i.ak = and i16 %i.aj, -33
  %i.al = add i16 %i.ak, -65
  %i.am = icmp ult i16 %i.al, 26
  br i1 %i.am, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 8
  %i.ao = add nsw i64 %.052.i.i.i.i.i.i10, -1
  %i.ap = icmp sgt i64 %.052.i.i.i.i.i.i10, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i9, label %._crit_edge.loopexit.i.i.i.i.i.i17, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i.i17:               ; preds = %bb.j
  %.pre57.i.i.i.i.i.i19 = sub nsw i64 %.idx, %1
  %i.aq = ashr exact i64 %.pre57.i.i.i.i.i.i19, 1
  switch i64 %i.aq, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12 [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i17
  %i.ar = load i16, ptr %scevgep, align 2, !tbaa !27
  %i.as = and i16 %i.ar, -33
  %i.at = add i16 %i.as, -65
  %i.au = icmp ult i16 %i.at, 26
  br i1 %i.au, label %bb.l, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %2, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.032.1.i.i.i.i.i.i25 = phi ptr [ %i.av, %bb.l ], [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i17 ] ; 3 uses
  %i.aw = load i16, ptr %.sroa.032.1.i.i.i.i.i.i25, align 2, !tbaa !27
  %i.ax = and i16 %i.aw, -33
  %i.ay = add i16 %i.ax, -65
  %i.az = icmp ult i16 %i.ay, 26
  br i1 %i.az, label %bb.n, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i25, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.032.2.i.i.i.i.i.i23 = phi ptr [ %i.ba, %bb.n ], [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i17 ] ; 2 uses
  %i.bb = load i16, ptr %.sroa.032.2.i.i.i.i.i.i23, align 2, !tbaa !27
  %i.bc = and i16 %i.bb, -33
  %i.bd = add i16 %i.bc, -65
  %i.be = icmp ult i16 %i.bd, 26
  %spec.select.i.i.i.i.i.i24 = select i1 %i.be, ptr %0, ptr %.sroa.032.2.i.i.i.i.i.i23
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12: ; preds = %.lr.ph.i.i.i.i.i.i9, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20, %bb.o, %bb.m, %bb.k, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i13 = phi ptr [ %.sroa.032.1.i.i.i.i.i.i25, %bb.m ], [ %spec.select.i.i.i.i.i.i24, %bb.o ], [ %0, %._crit_edge.loopexit.i.i.i.i.i.i17 ], [ %scevgep, %bb.k ], [ %i.bh, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20 ], [ %i.bf, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit ], [ %i.bg, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18 ], [ %.sroa.032.051.i.i.i.i.i.i11, %.lr.ph.i.i.i.i.i.i9 ]
  %i.bi = icmp eq ptr %0, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i13
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread
  %i.bj = phi i1 [ %i.r, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit ], [ false, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread ], [ %i.bi, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12 ]
  ret i1 %i.bj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes13platform_intl17LanguageTagParser16getCurrentSubtagB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = shl i64 %i.g, 1
  %i.i = add i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.j = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp ne ptr %i.l, %i.j
  ret i1 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser21parseUnicodeExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair.22", align 8     ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %.val1038 = load i64, ptr %i.k, align 8, !tbaa !18 ; 2 uses
  %i.l = add i64 %.val1038, -9
  %or.cond.i.i39 = icmp ult i64 %i.l, -6
  br i1 %or.cond.i.i39, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.d

bb.c:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.n = getelementptr i8, ptr %i.cw, i64 -24
  %.val10 = load i64, ptr %i.n, align 8, !tbaa !18 ; 2 uses
  %i.o = add i64 %.val10, -9
  %or.cond.i.i = icmp ult i64 %i.o, -6
  br i1 %or.cond.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader, label %bb.d, !llvm.loop !61

_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader: ; preds = %bb.c, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i, %.preheader
  %i.p = phi ptr [ %i.j, %.preheader ], [ %.pn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i ], [ %i.cw, %bb.c ] ; 3 uses
  %.08.lcssa = phi i1 [ false, %.preheader ], [ %.0840, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i ], [ true, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %.not2345 = icmp eq ptr %i.r, %i.p
  br i1 %.not2345, label %.critedge, label %.lr.ph47

.lr.ph47:                                         ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 -24
  %.val12109 = load i64, ptr %i.x, align 8, !tbaa !18
  %i.y = icmp eq i64 %.val12109, 2
  br i1 %i.y, label %.lr.ph112, label %.critedge

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.val1041 = phi i64 [ %.val1038, %.lr.ph ], [ %.val10, %bb.c ] ; 3 uses
  %.pn = phi ptr [ %i.j, %.lr.ph ], [ %i.cw, %bb.c ] ; 2 uses
  %.0840 = phi i1 [ false, %.lr.ph ], [ true, %bb.c ]
  %i.z = getelementptr inbounds i8, ptr %.pn, i64 -32 ; 2 uses
  %.val = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %.val1041 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = lshr i64 %.val1041, 2                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.h
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.h ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.h ], [ %.val, %bb.d ] ; 9 uses
  %i.ad = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !27 ; 2 uses
  %i.ae = and i16 %i.ad, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  %i.ah = add i16 %i.ad, -48
  %i.ai = icmp ult i16 %i.ah, 10
  %i.aj = or i1 %i.ai, %i.ag
  br i1 %i.aj, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !27 ; 2 uses
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  %i.ap = add i16 %i.al, -48
  %i.aq = icmp ult i16 %i.ap, 10
  %i.ar = or i1 %i.aq, %i.ao
  br i1 %i.ar, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.at = load i16, ptr %i.as, align 2, !tbaa !27 ; 2 uses
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  %i.ax = add i16 %i.at, -48
  %i.ay = icmp ult i16 %i.ax, 10
  %i.az = or i1 %i.ay, %i.aw
  br i1 %i.az, label %bb.g, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit90

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !27 ; 2 uses
  %i.bc = and i16 %i.bb, -33
  %i.bd = add i16 %i.bc, -65
  %i.be = icmp ult i16 %i.bd, 26
  %i.bf = add i16 %i.bb, -48
  %i.bg = icmp ult i16 %i.bf, 10
  %i.bh = or i1 %i.bg, %i.be
  br i1 %i.bh, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit92

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.bj = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i = ptrtoint ptr %i.bi to i64
  %.pre57.i.i.i.i.i.i.i = sub i64 %i.ab, %.pre.i.i.i.i.i.i.i
  %i.bl = ashr exact i64 %.pre57.i.i.i.i.i.i.i, 1
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.d
  %.pre-phi58.i.i.i.i.i.i.i = phi i64 [ %i.bl, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val1041, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val, %bb.d ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bm = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, align 2, !tbaa !27 ; 2 uses
  %i.bn = and i16 %i.bm, -33
  %i.bo = add i16 %i.bn, -65
  %i.bp = icmp ult i16 %i.bo, 26
  %i.bq = add i16 %i.bm, -48
  %i.br = icmp ult i16 %i.bq, 10
  %i.bs = or i1 %i.br, %i.bp
  br i1 %i.bs, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.bu = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !27 ; 2 uses
end_hunk_0
