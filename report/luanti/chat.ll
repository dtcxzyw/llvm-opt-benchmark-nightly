Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/chat?download=true
inline.NumInlined: 1363
inline.NumDeleted: 545
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10ChatBuffer7addLineERK14EnrichedStringS2_:bb.a

bb.k:                                             ; preds = %bb.j
  %i.at = trunc i64 %i.ap to i32
  %i.au = sub i32 %i.at, %i.aq
  invoke void @_ZN10ChatBuffer12deleteOldestEj(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %i.au)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN14EnrichedStringD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !47
  %i.bg = shl i64 %i.bf, 2
  %i.bh = add i64 %i.bg, 4
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bh) #27
  br label %_ZN14EnrichedStringD2Ev.exit.i

_ZN14EnrichedStringD2Ev.exit.i:                   ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2.i, label %bb.n

bb.n:                                             ; preds = %_ZN14EnrichedStringD2Ev.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !73
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2.i: ; preds = %bb.n, %_ZN14EnrichedStringD2Ev.exit.i
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN8ChatLineD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i3.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i3.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !47
  %i.bt = shl i64 %i.bs, 2
  %i.bu = add i64 %i.bt, 4
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bu) #27
  br label %_ZN8ChatLineD2Ev.exit

_ZN8ChatLineD2Ev.exit:                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i2.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer18getBottomScrollPosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = trunc i64 %i.h to i32
  %i.m = sub nsw i32 %i.l, %i.j
  %.0 = select i1 %i.k, i32 0, i32 %i.m
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.5", align 8     ; 18 uses
  %5 = alloca %struct.ChatFormattedLine, align 8  ; 20 uses
  %6 = alloca %struct.ChatFormattedFragment, align 8 ; 48 uses
  %7 = alloca %"class.std::__cxx11::basic_string.32", align 8 ; 11 uses
  %8 = alloca %class.EnrichedString, align 8      ; 14 uses
  %9 = alloca %class.EnrichedString, align 8      ; 15 uses
  %10 = alloca %"class.std::allocator.33", align 1 ; 4 uses
  %11 = alloca %"class.std::allocator.33", align 1 ; 4 uses
  %12 = alloca %class.EnrichedString, align 8     ; 14 uses
  %13 = alloca %class.EnrichedString, align 8     ; 14 uses
  %14 = alloca %"class.video::SColor", align 4    ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN14EnrichedStringC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 6 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 7 uses
  store i64 0, ptr %i.l, align 8, !tbaa !48
  store i8 0, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !75
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN14EnrichedStringaSESt17basic_string_viewIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 1, ptr nonnull @.str.4)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !77
  invoke void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i32 0, ptr %i.r, align 8, !tbaa !77
  invoke void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN14EnrichedStringaSESt17basic_string_viewIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 2, ptr nonnull @.str.5)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.r, align 8, !tbaa !77
  invoke void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.j:                                             ; preds = %.noexc, %bb.e, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.k:                                             ; preds = %bb.h, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !78
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc156 unwind label %bb.r

.noexc156:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ae = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ab) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !44
  %i.af = icmp ugt i64 %i.ae, 3
  br i1 %i.af, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.n
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc157 unwind label %bb.r  ; 2 uses

.noexc157:                                        ; preds = %.noexc.i
  store ptr %i.ag, ptr %7, align 8, !tbaa !74
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc157, %bb.n
  %i.ai = phi i64 [ %i.ah, %.noexc157 ], [ %i.ae, %bb.n ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %.noexc157 ], [ %i.ac, %bb.n ] ; 4 uses
  switch i64 %i.ae, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i32, ptr %i.ab, align 4, !tbaa !80
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !80
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.al = call ptr @wmemcpy(ptr noundef %i.aj, ptr noundef nonnull %i.ab, i64 noundef %i.ae) #26 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.i, align 8, !tbaa !44
  %.pre7.i.i = load ptr, ptr %7, align 8, !tbaa !74
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i
  %i.am = phi ptr [ %i.aj, %._crit_edge.i.i ], [ %i.aj, %bb.o ], [ %.pre7.i.i, %bb.p ]
  %i.an = phi i64 [ %i.ai, %._crit_edge.i.i ], [ %i.ai, %bb.o ], [ %.pre6.i.i, %bb.p ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i32 0, ptr %i.ap, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !75  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.s

bb.r:                                             ; preds = %bb.k, %.noexc.i, %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.at = add i64 %i.an, 3
  %i.au = lshr i32 %2, 1
  %i.av = zext nneg i32 %i.au to i64
  %.not = icmp ugt i64 %i.at, %i.av
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = trunc i64 %i.aq to i32
  %i.ax = add i32 %i.aw, 3
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.q, %bb.t
  %.0123 = phi i32 [ 0, %bb.q ], [ %i.ax, %bb.t ], [ 2, %bb.s ] ; 2 uses
  %.not128 = icmp ult i32 %.0123, %2
  br i1 %.not128, label %bb.v, label %bb.ep

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i8 1, ptr %i.ay, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.outer

.outer.loopexit:                                  ; preds = %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_.exit250
  br label %.outer, !llvm.loop !119

.outer:                                           ; preds = %.outer.loopexit, %bb.v
  %.0115.ph = phi i32 [ 0, %bb.v ], [ %i.abb, %.outer.loopexit ] ; 2 uses
  %.0104.ph = phi i32 [ 0, %bb.v ], [ %.1105.lcssa, %.outer.loopexit ]
  %.091.ph = phi i32 [ 0, %bb.v ], [ %.1.lcssa, %.outer.loopexit ]
  %i.cn = zext i32 %.0115.ph to i64               ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %.pre679 = load ptr, ptr %i.az, align 8, !tbaa !82
  %i.co = icmp eq ptr %.pre, %.pre679
  br label %bb.w

bb.w:                                             ; preds = %.outer, %._crit_edge
  %i.cp = phi i1 [ true, %._crit_edge ], [ %i.co, %.outer ]
  %i.cq = phi ptr [ %i.se, %._crit_edge ], [ %.pre, %.outer ] ; 2 uses
  %.0104 = phi i32 [ %.1105.lcssa, %._crit_edge ], [ %.0104.ph, %.outer ] ; 2 uses
  %.091 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.091.ph, %.outer ] ; 5 uses
  br i1 %i.cp, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  %i.cr = load i64, ptr %i.ba, align 8, !tbaa !75
  %i.cs = icmp ugt i64 %i.cr, %i.cn
  br i1 %i.cs, label %._crit_edge, label %bb.el

.lr.ph:                                           ; preds = %bb.w, %bb.cb
  %i.ct = phi ptr [ %i.sb, %bb.cb ], [ %i.cq, %bb.w ] ; 22 uses
  %.1578 = phi i32 [ %.2, %bb.cb ], [ %.091, %bb.w ] ; 2 uses
  %.1105577 = phi i32 [ %.3107, %bb.cb ], [ %.0104, %bb.w ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 80 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !77
  %i.cw = icmp eq i32 %i.cv, 2147483647
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 5 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !75 ; 6 uses
  %i.cz = sub i32 %2, %.1105577
  %i.da = zext i32 %i.cz to i64                   ; 3 uses
  %.not142 = icmp ugt i64 %i.cy, %i.da
  br i1 %.not142, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  store i32 %.1105577, ptr %i.cu, align 8, !tbaa !77
  %i.db = load ptr, ptr %i.bb, align 8, !tbaa !83 ; 18 uses
  %i.dc = load ptr, ptr %i.bc, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 5 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !78
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.cy, ptr %i.e, align 8, !tbaa !44
  %i.df = icmp samesign ugt i64 %i.cy, 3
  br i1 %i.df, label %.noexc.i.i263, label %._crit_edge.i.i.i

.noexc.i.i263:                                    ; preds = %bb.z
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(120) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc264 unwind label %.loopexit.split-lp411.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc264:                                        ; preds = %.noexc.i.i263
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !74
  %i.dh = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  store i64 %i.dh, ptr %i.dd, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc264, %bb.z
  %i.di = phi i64 [ %i.dh, %.noexc264 ], [ %i.cy, %bb.z ] ; 2 uses
  %i.dj = phi ptr [ %i.dg, %.noexc264 ], [ %i.dd, %bb.z ] ; 4 uses
  switch i64 %i.cy, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit.i
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.dk = load i32, ptr %i.de, align 4, !tbaa !80
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit.i

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.dl = call ptr @wmemcpy(ptr noundef %i.dj, ptr noundef %i.de, i64 noundef %i.cy) #26 ; 0 uses
  %.pre6.i.i.i = load i64, ptr %i.e, align 8, !tbaa !44
  %.pre7.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit.i: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i
  %i.dm = phi ptr [ %i.dj, %._crit_edge.i.i.i ], [ %i.dj, %bb.aa ], [ %.pre7.i.i.i, %bb.ab ]
  %i.dn = phi i64 [ %i.di, %._crit_edge.i.i.i ], [ %i.di, %bb.aa ], [ %.pre6.i.i.i, %bb.ab ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10ChatBuffer12scrollBottomEv:bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = trunc i64 %i.h to i32
  %i.m = sub nsw i32 %i.l, %i.j
  %.0.i = select i1 %i.k, i32 0, i32 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.i, ptr %i.n, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZNK10ChatBuffer16getFormattedLineEj(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = add nsw i32 %i.b, %1                     ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp slt i32 %i.c, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.c to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.o
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer6scrollEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = add nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !69   ; 3 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.n, %i.l
  %or.cond.i.i = or i1 %i.o, %.not.i.i
  %i.p = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %.0.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.p
  %.0.i7.i = select i1 %i.o, i32 0, i32 %i.p
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %.0.i.i)
  %storemerge6.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %.0.i7.i)
  store i32 %storemerge6.i, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer15getTopScrollPosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  %.not = icmp slt i32 %i.k, %i.i
  %or.cond = or i1 %i.l, %.not
  %i.m = sub nsw i32 %i.i, %i.k
  %.0 = select i1 %or.cond, i32 0, i32 %i.m
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN14EnrichedStringaSESt17basic_string_viewIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14EnrichedStringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  store i32 %i.h, ptr %i.f, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.n, ptr %i.a, align 8, !tbaa !44
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.p, ptr %i.i, align 8, !tbaa !46
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.q, ptr %i.k, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN21ChatFormattedFragmentC2ERKS_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !47
  store i8 %i.s, ptr %i.r, align 1, !tbaa !47
  br label %_ZN21ChatFormattedFragmentC2ERKS_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZN21ChatFormattedFragmentC2ERKS_.exit

bb.e:                                             ; preds = %.noexc.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(120) %i.c) #26
  resume { ptr, i32 } %i.t

_ZN21ChatFormattedFragmentC2ERKS_.exit:           ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.u, ptr %i.v, align 8, !tbaa !48
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  store ptr %i.z, ptr %i.b, align 8, !tbaa !83
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN21ChatFormattedFragmentC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !74
  %i.g = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !47
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi i64 [ %i.g, %.noexc ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 4 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.j = load i32, ptr %1, align 4, !tbaa !80
  store i32 %i.j, ptr %i.i, align 4, !tbaa !80
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.k = call ptr @wmemcpy(ptr noundef %i.i, ptr noundef nonnull %1, i64 noundef %i.d) #26 ; 0 uses
  %.pre6.i = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i = load ptr, ptr %0, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.l = phi ptr [ %i.i, %._crit_edge.i ], [ %i.i, %bb.d ], [ %.pre7.i, %bb.e ]
  %i.m = phi i64 [ %i.h, %._crit_edge.i ], [ %i.h, %bb.d ], [ %.pre6.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 0, ptr %i.o, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare void @_ZNK14EnrichedString6substrEmm(ptr dead_on_unwind writable sret(%class.EnrichedString) align 8, ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !47
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ChatFormattedLineSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv exact i64 %i.j, 120
  %i.l = icmp ugt i64 %i.k, 76861433640456465
  br i1 %i.l, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorI21ChatFormattedFragmentE8allocateEmPKv.exit.i.i.i.i.i, !prof !86

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorI21ChatFormattedFragmentE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorI21ChatFormattedFragmentE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.n = phi ptr [ null, %bb.b ], [ %i.m, %_ZNSt15__new_allocatorI21ChatFormattedFragmentE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !84
  %i.r = load ptr, ptr %1, align 8, !tbaa !82
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK21ChatFormattedFragmentSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %_ZN17ChatFormattedLineC2ERKS_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI21ChatFormattedFragmentSaIS0_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #27
  br label %_ZNSt12_Vector_baseI21ChatFormattedFragmentSaIS0_EED2Ev.exit.i.i

_ZNSt12_Vector_baseI21ChatFormattedFragmentSaIS0_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u

_ZN17ChatFormattedLineC2ERKS_.exit:               ; preds = %bb.d
  store ptr %i.t, ptr %i.o, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !81, !range !49, !noundef !92
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !81
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !51
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI17ChatFormattedLineSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN17ChatFormattedLineC2ERKS_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @iswspace(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEwm(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef signext, i64 noundef) local_unnamed_addr #9

declare void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21ChatFormattedFragmentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
