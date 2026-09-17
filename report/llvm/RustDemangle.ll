Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RustDemangle?download=true
inline.NumInlined: 400
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler15printIdentifierENS_10IdentifierE:bb.a

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.al, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %.032.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.gw, %bb.al ] ; 3 uses
  %.017.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i, i64 1
  %i.gx = load i8, ptr %.017.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %.lr.ph.i.i.i.i.2, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.1
  store i8 %i.gx, ptr %.1.i.i.i.i, align 1, !tbaa !32
  %i.gz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.am, %.lr.ph.i.i.i.i.1
  %.1.i.i.i.i.1 = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.1 ], [ %i.gz, %bb.am ] ; 3 uses
  %.017.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i, i64 2
  %i.ha = load i8, ptr %.017.i.i.i.i.1, align 1, !tbaa !32 ; 2 uses
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %.lr.ph.i.i.i.i.3, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.2
  store i8 %i.ha, ptr %.1.i.i.i.i.1, align 1, !tbaa !32
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.1, i64 1
  br label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %bb.an, %.lr.ph.i.i.i.i.2
  %.1.i.i.i.i.2 = phi ptr [ %.1.i.i.i.i.1, %.lr.ph.i.i.i.i.2 ], [ %i.hc, %bb.an ] ; 3 uses
  %.017.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i, i64 3
  %i.hd = load i8, ptr %.017.i.i.i.i.2, align 1, !tbaa !32 ; 2 uses
  %i.he = icmp eq i8 %i.hd, 0
  br i1 %i.he, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.3
  store i8 %i.hd, ptr %.1.i.i.i.i.2, align 1, !tbaa !32
  %i.hf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.2, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i.3
  %.1.i.i.i.i.3 = phi ptr [ %.1.i.i.i.i.2, %.lr.ph.i.i.i.i.3 ], [ %i.hf, %bb.ao ] ; 2 uses
  %.017.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %.017.i.i.i.i.3, %i.ff
  br i1 %.not.i.i.i.i.3, label %_ZSt6removeIPccET_S1_S1_RKT0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZSt6removeIPccET_S1_S1_RKT0_.exit.loopexit.i.i:  ; preds = %bb.ap, %.lr.ph.i.i.i.i.prol.loopexit
  %.1.i.i.i.i.lcssa = phi ptr [ %.1.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.1.i.i.i.i.3, %bb.ap ]
  %.pre.i117.i = load i64, ptr %i.k, align 8, !tbaa !29
  br label %_ZL14decodePunycodeSt17basic_string_viewIcSt11char_traitsIcEERN4llvm16itanium_demangle12OutputBufferE.exit

_ZL14decodePunycodeSt17basic_string_viewIcSt11char_traitsIcEERN4llvm16itanium_demangle12OutputBufferE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %_ZSt9__find_ifIPcN9__gnu_cxx5__ops16_Iter_equals_valIKcEEET_S6_S6_T0_.exit.i.i.i.i, %_ZSt6removeIPccET_S1_S1_RKT0_.exit.loopexit.i.i
  %i.hg = phi i64 [ %i.fa, %_ZSt9__find_ifIPcN9__gnu_cxx5__ops16_Iter_equals_valIKcEEET_S6_S6_T0_.exit.i.i.i.i ], [ %i.fa, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.fa, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i117.i, %_ZSt6removeIPccET_S1_S1_RKT0_.exit.loopexit.i.i ]
  %.016.i.i.i.i = phi ptr [ %.028.i.i.i.i.i.i, %_ZSt9__find_ifIPcN9__gnu_cxx5__ops16_Iter_equals_valIKcEEET_S6_S6_T0_.exit.i.i.i.i ], [ %i.ff, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.ff, %._crit_edge.i.i.i.i.i.i ], [ %.1.i.i.i.i.lcssa, %_ZSt6removeIPccET_S1_S1_RKT0_.exit.loopexit.i.i ]
  %i.hh = ptrtoint ptr %.016.i.i.i.i to i64
  %i.hi = ptrtoint ptr %i.fc to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 2 uses
  %i.hk = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8
  tail call void %i.hm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef %i.hg, i64 noundef %i.hj) #10, !inline_history !58
  store i64 %i.hj, ptr %i.k, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit

.loopexit:                                        ; preds = %bb.d, %"_ZZL14decodePunycodeSt17basic_string_viewIcSt11char_traitsIcEERN4llvm16itanium_demangle12OutputBufferEENK3$_0clEmm.exit.i", %bb.v, %bb.o, %bb.m, %_ZL19decodePunycodeDigitcRm.exit.i, %bb.j, %bb.k
  store i8 1, ptr %i.a, align 1, !tbaa !21
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.aq:                                            ; preds = %bb.b
  %.not.i.i = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !29 ; 2 uses
  %i.hp = add i64 %i.ho, %.sroa.01.0.copyload     ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !30 ; 2 uses
  %i.hs = icmp ugt i64 %i.hp, %i.hr
  br i1 %i.hs, label %bb.as, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5: ; preds = %bb.ar
  %.phi.trans.insert.i.i6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i7 = load ptr, ptr %.phi.trans.insert.i.i6, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ht = add i64 %i.hp, 992
  %i.hu = shl i64 %i.hr, 1
  %spec.select.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.hu, i64 %i.ht) ; 2 uses
  store i64 %spec.select.i.i.i8, ptr %i.hq, align 8, !tbaa !30
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !31
  %i.hx = tail call ptr @realloc(ptr noundef %i.hw, i64 noundef %spec.select.i.i.i8) #11 ; 3 uses
  store ptr %i.hx, ptr %i.hv, align 8, !tbaa !31
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.at, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i9

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i9: ; preds = %bb.as
  %.pre5.i.i10 = load i64, ptr %i.hn, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i9, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5
  %i.hz = phi i64 [ %i.ho, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5 ], [ %.pre5.i.i10, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i9 ]
  %i.ia = phi ptr [ %.pre.i.i7, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5 ], [ %i.hx, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i9 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ib, ptr readonly align 1 %.sroa.22.0.copyload, i64 %.sroa.01.0.copyload, i1 false)
  %i.ic = load i64, ptr %i.hn, align 8, !tbaa !29
  %i.id = add i64 %i.ic, %.sroa.01.0.copyload
  store i64 %i.id, ptr %i.hn, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i, %bb.aq, %_ZL14decodePunycodeSt17basic_string_viewIcSt11char_traitsIcEERN4llvm16itanium_demangle12OutputBufferE.exit, %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler15parseIdentifierEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  %.not2.i = icmp eq i8 %i.k, 117
  br i1 %.not2.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %i.e, 1                      ; 2 uses
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.m = phi i64 [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %.0.i.ph = phi i8 [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ]
  %.not.i.i = icmp ult i64 %i.m, %i.g
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit.i, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8

_ZNK12_GLOBAL__N_19Demangler4lookEv.exit.i:       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32    ; 2 uses
  %i.r = add i8 %i.q, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.f, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit.i
  %i.t = icmp eq i8 %i.q, 48
  br i1 %i.t, label %bb.g, label %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit10.i

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i64 %i.m, 1
  store i64 %i.u, ptr %i.d, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit13.i
  %i.v = add i64 %i.ac, -48
  %i.w = add i64 %i.v, %i.af                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.g
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit, label %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit10.i

_ZNK12_GLOBAL__N_19Demangler4lookEv.exit10.i:     ; preds = %bb.f, %.lr.ph.i
  %.025.i27 = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %bb.f ] ; 3 uses
  %i.x = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !32
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.h, label %_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit10.i
  %mul.ov.i.i = icmp ugt i64 %.025.i27, 1844674407370955161
  br i1 %mul.ov.i.i, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8, label %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit13.i

_ZN12_GLOBAL__N_19Demangler7consumeEv.exit13.i:   ; preds = %bb.h
  %i.ac = mul nuw i64 %.025.i27, 10               ; 2 uses
  %i.ad = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !20
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !32
  %i.af = sext i8 %i.ae to i64                    ; 2 uses
  %i.ag = sub nsw i64 47, %i.af
  %.not.i4 = icmp ugt i64 %i.ac, %i.ag
  br i1 %.not.i4, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8, label %.lr.ph.i

_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit: ; preds = %.lr.ph.i, %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit10.i, %bb.g
  %.3.i = phi i64 [ 0, %bb.g ], [ %.025.i27, %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit10.i ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25 ; 4 uses
  %.not.i5 = icmp ult i64 %i.ai, %i.ak
  br i1 %.not.i5, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %.not2.i7 = icmp eq i8 %i.ao, 95
  br i1 %.not2.i7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw i64 %i.ai, 1                    ; 2 uses
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit, %bb.i, %bb.j
  %i.aq = phi i64 [ %i.ai, %_ZN12_GLOBAL__N_19Demangler18parseDecimalNumberEv.exit ], [ %i.ai, %bb.i ], [ %i.ap, %bb.j ] ; 6 uses
  %i.ar = sub i64 %i.ak, %i.aq                    ; 2 uses
  %i.as = icmp ugt i64 %.3.i, %i.ar
  br i1 %i.as, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8, label %bb.l

_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8:    ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit13.i, %bb.h, %bb.e, %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit.i, %bb.a, %bb.k
  store i8 1, ptr %i.a, align 1, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ugt i64 %i.aq, %i.ak
  br i1 %i.at, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef %i.aq, i64 noundef %i.ak) #12
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.l
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.3.i) ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq ; 4 uses
  %i.ax = add i64 %i.aq, %.3.i
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.speculated.i ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ashr i64 %.sroa.speculated.i, 2         ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.bc = and i64 %.sroa.speculated.i, -4
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bc
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.q
  %.047.i.i.i.i = phi i64 [ %i.cs, %bb.q ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.cr, %bb.q ], [ %i.aw, %.lr.ph.i.i.i.i.preheader ] ; 9 uses
  %i.be = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !32 ; 4 uses
  %i.bf = add i8 %i.be, -48
  %i.bg = icmp ult i8 %i.bf, 10
  %i.bh = add i8 %i.be, -97
  %i.bi = icmp ult i8 %i.bh, 26
  %or.cond.i19 = or i1 %i.bg, %i.bi
  %i.bj = add i8 %i.be, -65
  %i.bk = icmp ult i8 %i.bj, 26
  %i.bl = icmp eq i8 %i.be, 95
  %spec.select.i20 = or i1 %i.bl, %i.bk
  %i.bm = or i1 %or.cond.i19, %spec.select.i20
  br i1 %i.bm, label %bb.n, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32  ; 4 uses
  %i.bp = add i8 %i.bo, -48
  %i.bq = icmp ult i8 %i.bp, 10
  %i.br = add i8 %i.bo, -97
  %i.bs = icmp ult i8 %i.br, 26
  %or.cond.i17 = or i1 %i.bq, %i.bs
  %i.bt = add i8 %i.bo, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = icmp eq i8 %i.bo, 95
  %spec.select.i18 = or i1 %i.bv, %i.bu
  %i.bw = or i1 %or.cond.i17, %spec.select.i18
  br i1 %i.bw, label %bb.o, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32  ; 4 uses
  %i.bz = add i8 %i.by, -48
  %i.ca = icmp ult i8 %i.bz, 10
  %i.cb = add i8 %i.by, -97
  %i.cc = icmp ult i8 %i.cb, 26
  %or.cond.i15 = or i1 %i.ca, %i.cc
  %i.cd = add i8 %i.by, -65
  %i.ce = icmp ult i8 %i.cd, 26
  %i.cf = icmp eq i8 %i.by, 95
  %spec.select.i16 = or i1 %i.cf, %i.ce
  %i.cg = or i1 %or.cond.i15, %spec.select.i16
  br i1 %i.cg, label %bb.p, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit53

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !32  ; 4 uses
  %i.cj = add i8 %i.ci, -48
  %i.ck = icmp ult i8 %i.cj, 10
  %i.cl = add i8 %i.ci, -97
  %i.cm = icmp ult i8 %i.cl, 26
  %or.cond.i13 = or i1 %i.ck, %i.cm
  %i.cn = add i8 %i.ci, -65
  %i.co = icmp ult i8 %i.cn, 26
  %i.cp = icmp eq i8 %i.ci, 95
  %spec.select.i14 = or i1 %i.cp, %i.co
  %i.cq = or i1 %or.cond.i13, %spec.select.i14
  br i1 %i.cq, label %bb.q, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit55

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.cs = add nsw i64 %.047.i.i.i.i, -1
  %i.ct = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !62

._crit_edge.i.i.i.i:                              ; preds = %bb.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.029.lcssa.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %scevgep, %bb.q ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.cu = sub i64 %i.az, %.pre-phi.i.i.i.i
  switch i64 %i.cu, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.thread [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cv = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !32 ; 4 uses
  %i.cw = add i8 %i.cv, -48
  %i.cx = icmp ult i8 %i.cw, 10
  %i.cy = add i8 %i.cv, -97
  %i.cz = icmp ult i8 %i.cy, 26
  %or.cond.i11 = or i1 %i.cx, %i.cz
  %i.da = add i8 %i.cv, -65
  %i.db = icmp ult i8 %i.da, 26
  %i.dc = icmp eq i8 %i.cv, 95
  %spec.select.i12 = or i1 %i.dc, %i.db
  %i.dd = or i1 %or.cond.i11, %spec.select.i12
  br i1 %i.dd, label %bb.s, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.de, %bb.s ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.df = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !32 ; 4 uses
  %i.dg = add i8 %i.df, -48
  %i.dh = icmp ult i8 %i.dg, 10
  %i.di = add i8 %i.df, -97
  %i.dj = icmp ult i8 %i.di, 26
  %or.cond.i9 = or i1 %i.dh, %i.dj
  %i.dk = add i8 %i.df, -65
  %i.dl = icmp ult i8 %i.dk, 26
  %i.dm = icmp eq i8 %i.df, 95
  %spec.select.i10 = or i1 %i.dm, %i.dl
  %i.dn = or i1 %or.cond.i9, %spec.select.i10
  br i1 %i.dn, label %bb.u, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.do, %bb.u ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dp = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !32 ; 4 uses
  %i.dq = add i8 %i.dp, -48
  %i.dr = icmp ult i8 %i.dq, 10
  %i.ds = add i8 %i.dp, -97
  %i.dt = icmp ult i8 %i.ds, 26
  %or.cond.i = or i1 %i.dr, %i.dt
  %i.du = add i8 %i.dp, -65
  %i.dv = icmp ult i8 %i.du, 26
  %i.dw = icmp eq i8 %i.dp, 95
  %spec.select.i = or i1 %i.dw, %i.dv
  %i.dx = or i1 %or.cond.i, %spec.select.i
  br i1 %i.dx, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.thread, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit53: ; preds = %bb.o
  %i.dz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit55: ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit

_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit:              ; preds = %.lr.ph.i.i.i.i, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit53, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit55, %bb.r, %bb.t, %bb.v
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.t ], [ %.029.lcssa.i.i.i.i, %bb.r ], [ %.2.i.i.i.i, %bb.v ], [ %i.ea, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit55 ], [ %i.dz, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit53 ], [ %i.dy, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.eb = icmp eq ptr %i.ay, %.028.i.i.i.i
  br i1 %i.eb, label %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit
  store i8 1, ptr %i.a, align 1, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.x

_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.thread:       ; preds = %bb.v, %._crit_edge.i.i.i.i, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit
  store i64 %.sroa.speculated.i, ptr %0, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.0.i.ph, ptr %i.ec, align 8, !tbaa !37
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZSt6all_ofIPKcPFbcEEbT_S4_T0_.exit.thread, %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19Demangler12demangleTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 8 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !17
  %.not = icmp ult i64 %i.e, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !21
  br label %bb.dp

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.e, 1
  store i64 %i.g, ptr %i.d, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %.not.i = icmp ult i64 %i.i, %i.k
  br i1 %.not.i, label %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit, label %_ZL14parseBasicTypecRN12_GLOBAL__N_19BasicTypeE.exit.thread103

_ZL14parseBasicTypecRN12_GLOBAL__N_19BasicTypeE.exit.thread103: ; preds = %bb.d
  store i8 1, ptr %i.a, align 1, !tbaa !21
  br label %bb.do

_ZN12_GLOBAL__N_19Demangler7consumeEv.exit:       ; preds = %bb.d
  %i.l = add nuw i64 %i.i, 1
  store i64 %i.l, ptr %i.h, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32    ; 2 uses
  switch i8 %i.p, label %bb.do [
    i8 97, label %bb.m
    i8 98, label %bb.e
    i8 99, label %bb.i
    i8 100, label %bb.bm
    i8 101, label %bb.bq
    i8 102, label %bb.bi
    i8 104, label %bb.ak
    i8 105, label %bb.ag
    i8 106, label %bb.be
    i8 108, label %bb.u
    i8 109, label %bb.as
    i8 110, label %bb.ac
    i8 111, label %bb.ba
    i8 112, label %bb.bu
    i8 115, label %bb.q
    i8 116, label %bb.ao
    i8 117, label %bb.by
    i8 118, label %bb.cc
    i8 120, label %bb.y
    i8 121, label %bb.aw
    i8 122, label %bb.cg
    i8 65, label %bb.ck
    i8 83, label %bb.cl
    i8 84, label %bb.cm
    i8 82, label %bb.cv
    i8 81, label %bb.cv
    i8 80, label %bb.de
    i8 79, label %bb.df
    i8 70, label %bb.dg
    i8 68, label %bb.dh
    i8 66, label %bb.dn
  ]

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i8, ptr %i.q, align 8, !range !27
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN12_GLOBAL__N_19Demangler14printBasicTypeENS_9BasicTypeE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 3 uses
  %i.v = add i64 %i.u, 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i: ; preds = %bb.f
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = add i64 %i.u, 996
  %i.aa = shl i64 %i.x, 1
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.z) ; 2 uses
  store i64 %spec.select.i.i.i.i, ptr %i.w, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = tail call ptr @realloc(ptr noundef %i.ac, i64 noundef %spec.select.i.i.i.i) #11 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !31
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i: ; preds = %bb.g
  %.pre5.i.i.i = load i64, ptr %i.t, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i
  %i.af = phi i64 [ %i.u, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i ], [ %.pre5.i.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i ]
  %i.ag = phi ptr [ %.pre.i.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i.i ], [ %i.ad, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i32 1819242338, ptr %i.ah, align 1
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 4
  store i64 %i.aj, ptr %i.t, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler14printBasicTypeENS_9BasicTypeE.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !range !27
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_ZN12_GLOBAL__N_19Demangler14printBasicTypeENS_9BasicTypeE.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29 ; 3 uses
  %i.ap = add i64 %i.ao, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5.i: ; preds = %bb.j
  %.phi.trans.insert.i.i6.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i7.i = load ptr, ptr %.phi.trans.insert.i.i6.i, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i8.i

bb.k:                                             ; preds = %bb.j
  %i.at = add i64 %i.ao, 996
  %i.au = shl i64 %i.ar, 1
  %spec.select.i.i.i9.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.at) ; 2 uses
  store i64 %spec.select.i.i.i9.i, ptr %i.aq, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %spec.select.i.i.i9.i) #11 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !31
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i10.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i10.i: ; preds = %bb.k
  %.pre5.i.i11.i = load i64, ptr %i.an, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i8.i

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i8.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i10.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5.i
  %i.az = phi i64 [ %i.ao, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5.i ], [ %.pre5.i.i11.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i10.i ]
  %i.ba = phi ptr [ %.pre.i.i7.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i5.i ], [ %i.ax, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i10.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i32 1918986339, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.an, align 8, !tbaa !29
  %i.bd = add i64 %i.bc, 4
  store i64 %i.bd, ptr %i.an, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler14printBasicTypeENS_9BasicTypeE.exit

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load i8, ptr %i.be, align 8, !range !27
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.n, label %_ZN12_GLOBAL__N_19Demangler14printBasicTypeENS_9BasicTypeE.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !29 ; 3 uses
  %i.bj = add i64 %i.bi, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.o, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i17.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i17.i: ; preds = %bb.n
end_hunk_0
