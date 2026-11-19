Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Compression?download=true
inline.NumInlined: 1607
inline.NumDeleted: 824
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5folly11toAppendFitIJA26_c8lzma_retPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_:bb.a
  store i8 0, ptr %i.ad, align 1, !tbaa !2427
  %i.ae = load i32, ptr %1, align 4, !tbaa !2980
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %i.ae, ptr noundef nonnull %i.n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2990, !range !2444, !noundef !209
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3097 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !3098, !nonnull !209, !align !2995 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2917 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.i = load i8, ptr %i.h, align 8, !tbaa !2967, !range !2444, !noundef !209
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5folly8OptionalI11lzma_streamEptEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #7
          to label %.noexc.i.i unwind label %bb.e

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

_ZN5folly8OptionalI11lzma_streamEptEv.exit.i.i:   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2918
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2986 ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.o
  br i1 %i.r, label %.invoke.i.i, label %bb.d, !prof !2928

bb.d:                                             ; preds = %_ZN5folly8OptionalI11lzma_streamEptEv.exit.i.i
  %i.s = sub nuw i64 %i.o, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s
  store ptr %i.t, ptr %i.f, align 8, !tbaa !2917
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3099, !nonnull !209, !align !2995 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2922
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !2921 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !2988 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %i.ab
  br i1 %i.ae, label %.invoke.i.i, label %"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EE7executeEv.exit", !prof !2928

.invoke.i.i:                                      ; preds = %bb.d, %_ZN5folly8OptionalI11lzma_streamEptEv.exit.i.i
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.44) #7
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i, %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EE7executeEv.exit": ; preds = %bb.d
  %i.ah = sub nuw i64 %i.ab, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  store ptr %i.ai, ptr %i.v, align 8, !tbaa !2921
  br label %bb.f

bb.f:                                             ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_11compression12_GLOBAL__N_116LZMA2StreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS5_IPhEENS2_11StreamCodec7FlushOpEE3$_0Lb1EE7executeEv.exit", %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @lzma_auto_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN5folly15tryDecodeVarintIKhEENS_8ExpectedImNS_17DecodeVarintErrorEEERNS_5RangeIPT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2917   ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2918 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 9
  br i1 %i.g, label %bb.b, label %.preheader, !prof !2929

.preheader:                                       ; preds = %bb.a
  %.not71 = icmp eq ptr %i.a, %i.c
  br i1 %.not71, label %.critedge56, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.a, align 1, !tbaa !2427  ; 2 uses
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  br i1 %i.l, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.h, align 1, !tbaa !2427  ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = shl nsw i64 %i.o, 7
  %i.q = and i64 %i.p, 16256
  %i.r = or disjoint i64 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.u = load i8, ptr %i.m, align 1, !tbaa !2427  ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = shl nsw i64 %i.v, 14
  %i.x = and i64 %i.w, 2080768
  %i.y = or disjoint i64 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !2427 ; 2 uses
  %i.ac = sext i8 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 21
  %i.ae = and i64 %i.ad, 266338304
  %i.af = or disjoint i64 %i.ae, %i.y             ; 2 uses
  %i.ag = icmp sgt i8 %i.ab, -1
  br i1 %i.ag, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !2427 ; 2 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 28
  %i.al = and i64 %i.ak, 34091302912
  %i.am = or disjoint i64 %i.al, %i.af            ; 2 uses
  %i.an = icmp sgt i8 %i.ai, -1
  br i1 %i.an, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !2427 ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 35
  %i.as = and i64 %i.ar, 4363686772736
  %i.at = or disjoint i64 %i.as, %i.am            ; 2 uses
  %i.au = icmp sgt i8 %i.ap, -1
  br i1 %i.au, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !2427 ; 2 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 42
  %i.az = and i64 %i.ay, 558551906910208
  %i.ba = or i64 %i.az, %i.at                     ; 2 uses
  %i.bb = icmp sgt i8 %i.aw, -1
  br i1 %i.bb, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !2427 ; 2 uses
  %i.be = sext i8 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 49
  %i.bg = and i64 %i.bf, 71494644084506624
  %i.bh = or i64 %i.bg, %i.ba                     ; 2 uses
  %i.bi = icmp sgt i8 %i.bd, -1
  br i1 %i.bi, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !2427 ; 2 uses
  %i.bl = sext i8 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 56
  %i.bn = and i64 %i.bm, 9151314442816847872
  %i.bo = or i64 %i.bn, %i.bh                     ; 2 uses
  %i.bp = icmp sgt i8 %i.bk, -1
  br i1 %i.bp, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.br = load i8, ptr %i.bj, align 1, !tbaa !2427 ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl i64 %i.bs, 63
  %i.bu = or i64 %i.bt, %i.bo
  %i.bv = icmp sgt i8 %i.br, -1
  br i1 %i.bv, label %bb.n, label %.critedge56

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %.273 = phi ptr [ %i.by, %bb.l ], [ %i.a, %.preheader ] ; 2 uses
  %.06472 = phi i64 [ %i.cc, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.bw = load i8, ptr %.273, align 1, !tbaa !2427 ; 3 uses
  %i.bx = icmp slt i8 %i.bw, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.273, i64 1 ; 3 uses
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bz = and i8 %i.bw, 127
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl i64 %i.ca, %indvars.iv
  %i.cc = or i64 %i.cb, %.06472
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not = icmp eq ptr %i.by, %i.c
  br i1 %.not, label %.critedge56, label %.lr.ph, !llvm.loop !3100

bb.m:                                             ; preds = %.lr.ph
  %i.cd = zext nneg i8 %i.bw to i64
  %i.ce = shl i64 %i.cd, %indvars.iv
  %i.cf = or i64 %i.ce, %.06472
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.265 = phi i64 [ %i.k, %bb.b ], [ %i.r, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.e ], [ %i.am, %bb.f ], [ %i.at, %bb.g ], [ %i.ba, %bb.h ], [ %i.bh, %bb.i ], [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.cf, %bb.m ]
  %.4 = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %i.t, %bb.d ], [ %i.aa, %bb.e ], [ %i.ah, %bb.f ], [ %i.ao, %bb.g ], [ %i.av, %bb.h ], [ %i.bc, %bb.i ], [ %i.bj, %bb.j ], [ %i.bq, %bb.k ], [ %i.by, %bb.m ]
  %i.cg = ptrtoint ptr %.4 to i64
  %i.ch = sub i64 %i.cg, %i.e
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  store ptr %i.ci, ptr %0, align 8, !tbaa !2917
  br label %.critedge56

.critedge56:                                      ; preds = %bb.l, %.preheader, %bb.k, %bb.n
  %.sroa.463.1 = phi i64 [ 1, %bb.n ], [ 2, %bb.k ], [ 4294967298, %.preheader ], [ 4294967298, %bb.l ]
  %.sroa.7.1 = phi i64 [ %.265, %bb.n ], [ 0, %bb.k ], [ 0, %.preheader ], [ 0, %bb.l ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.463.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.50
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #32
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess.65", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !117
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #31 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !117
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA23_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(23) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !2423
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !2426
  store i8 0, ptr %i.b, align 8, !tbaa !2427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr %0, ptr %i.a, align 8, !tbaa !2932
  invoke void @_ZN5folly11toAppendFitIJA23_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(23) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.e = load ptr, ptr %0, align 8, !tbaa !2428   ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !2427
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(237) dereferenceable(240) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = invoke i32 @BZ2_bzCompressEnd(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.g       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !2948
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = invoke i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %i.i)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = invoke i32 @BZ2_bzCompressEnd(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !2948
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2996, !range !2444, !noundef !209
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = invoke i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %i.i)
          to label %_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

_ZN5folly11compression12_GLOBAL__N_116Bzip2StreamCodecD2Ev.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5folly11compression12_GLOBAL__N_116Bzip2StreamCodec13validPrefixesB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !2423, !alias.scope !3103
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !2426, !alias.scope !3103
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !2427
  store i24 6838850, ptr %i.a, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

end_hunk_0
