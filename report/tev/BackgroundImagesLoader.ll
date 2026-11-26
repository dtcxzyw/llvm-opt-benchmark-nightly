Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/BackgroundImagesLoader?download=true
inline.NumInlined: 5824
inline.NumDeleted: 2308
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEN3tev13ImageAddition10ComparatorENS_11__wrap_iterIPS3_EEEEvT1_S8_RT0_NS_15iterator_traitsIS8_E15difference_typeE:bb.a
bb.r:                                             ; preds = %_ZN3tev13ImageAdditionaSEOS0_.exit11, %_ZN3tev13ImageAdditionaSEOS0_.exit
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !167 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = atomicrmw add ptr %i.cg, i64 -1 acq_rel, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.t, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !139
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #29, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #29
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.cm = load i8, ptr %i.i, align 8, !tbaa !209, !range !116, !noundef !117
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.co = load ptr, ptr %4, align 8, !tbaa !207   ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3tev13ImageAdditionD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !210 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cq, %bb.v ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !167 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.x, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !139
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #29, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #29
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pre1.i.i.i.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !207
  br label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i.i, %bb.v
  %i.da = phi ptr [ %.pre1.i.i.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.co, %bb.v ] ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !210
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !208
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.df) #30
  br label %_ZN3tev13ImageAdditionD2Ev.exit

bb.y:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(53) %4) #29
  br label %_ZN3tev13ImageAdditionD2Ev.exit

_ZN3tev13ImageAdditionD2Ev.exit:                  ; preds = %bb.u, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tev13ImageAdditionD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(53) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp eq ptr %i.b, %i.d
  %i.j = mul i64 %i.h, 73
  %i.k = add i64 %i.j, -1
  %i.l = select i1 %i.i, i64 0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !196
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !152
  %i.q = add i64 %i.p, %i.n
  %i.r = icmp eq i64 %i.l, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !195
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !449
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.pre3, %bb.b ], [ %i.b, %bb.a ]
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE3endB8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.m, align 8, !tbaa !196
  %i.w = load i64, ptr %i.o, align 8, !tbaa !152
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %i.y = udiv i64 %i.x, 73
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !197
  %i.ab = urem i64 %i.x, 73
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE3endB8ne180100Ev.exit

_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE3endB8ne180100Ev.exit: ; preds = %bb.c, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ null, %bb.c ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !202, !range !116, !noundef !117 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE3endB8ne180100Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %1, align 8, !tbaa !207, !noalias !1451
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !208, !noalias !1451
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !208, !alias.scope !1451
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(53) %1, i8 0, i64 24, i1 false), !noalias !1451
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit

bb.f:                                             ; preds = %_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE3endB8ne180100Ev.exit
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(53) %i.ad, ptr noundef nonnull align 8 dereferenceable(53) %1) #29
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE9constructB8ne180100IS3_JS3_EvvEEvRS4_PT_DpOT0_.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), %bb.f ]
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !1451
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.af, ptr %i.al, align 8, !tbaa !209
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !168
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ap, ptr noundef nonnull align 8 dereferenceable(5) %i.aq, i64 5, i1 false)
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !152
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.o, align 8, !tbaa !152
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__15dequeIN3tev13ImageAdditionENS_9allocatorIS2_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"struct.std::__1::__split_buffer.498", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.e = icmp ugt i64 %i.d, 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, -73
  store i64 %i.g, ptr %i.c, align 8, !tbaa !196
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !195  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !195
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !449  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !450
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !451    ; 3 uses
  %i.q = icmp ugt ptr %i.j, %i.p
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = sub i64 %i.s, %i.r
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 1
  %.neg.i = sdiv i64 %i.v, -2                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.neg.i ; 2 uses
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = sub i64 %i.x, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.j, i64 %i.y, i1 false)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !195
  br label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i

_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i: ; preds = %bb.e, %bb.d
  %i.z = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg.i
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !195
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit

bb.f:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.l to i64
  %i.ad = sub i64 %i.ac, %i.r
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = icmp eq ptr %i.l, %i.p
  %.sroa.speculated.i = select i1 %i.af, i64 1, i64 %i.ae ; 4 uses
  %i.ag = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.ag, label %bb.g, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
  unreachable

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i: ; preds = %bb.f
  %i.ah = lshr i64 %.sroa.speculated.i, 2         ; 2 uses
  %i.ai = shl nuw i64 %.sroa.speculated.i, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #32 ; 4 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 7 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.speculated.i
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !195 ; 6 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !449 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not10.i.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i
  %i.at = add i64 %i.ap, -8
  %i.au = sub i64 %i.at, %i.aq                    ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check217 = icmp ult i64 %i.au, 136
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.preheader233, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ax = shl nuw nsw i64 %i.ah, 3
  %i.ay = add i64 %i.ax, %i.ak
  %i.az = sub i64 %i.aq, %i.ay
  %diff.check219 = icmp ugt i64 %i.az, -32
  br i1 %diff.check219, label %.lr.ph.i.i.i.preheader233, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck218
  %n.vec221 = and i64 %i.aw, 4611686018427387900  ; 3 uses
  %i.ba = shl i64 %n.vec221, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.al, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.an, i64 %i.ba
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next228, %vector.body222 ] ; 2 uses
  %i.bd = shl i64 %index223, 3                    ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.al, i64 %i.bd ; 2 uses
  %next.gep225 = getelementptr i8, ptr %i.an, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep225, i64 16
  %wide.load226 = load <2 x ptr>, ptr %next.gep225, align 8, !tbaa !197
  %wide.load227 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !197
  %i.bf = getelementptr i8, ptr %next.gep224, i64 16
  store <2 x ptr> %wide.load226, ptr %next.gep224, align 8, !tbaa !197
  store <2 x ptr> %wide.load227, ptr %i.bf, align 8, !tbaa !197
  %index.next228 = add nuw i64 %index223, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next228, %n.vec221
  br i1 %i.bg, label %middle.block229, label %vector.body222, !llvm.loop !1452

middle.block229:                                  ; preds = %vector.body222
  %cmp.n230 = icmp eq i64 %i.aw, %n.vec221
  br i1 %cmp.n230, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.preheader233

.lr.ph.i.i.i.preheader233:                        ; preds = %vector.memcheck218, %.lr.ph.i.i.i.preheader, %middle.block229
  %.sroa.0.012.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck218 ], [ %i.al, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block229 ]
  %.sroa.08.011.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck218 ], [ %i.an, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block229 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader233, %.lr.ph.i.i.i
  %.sroa.0.012.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.sroa.0.012.i.i.i.ph, %.lr.ph.i.i.i.preheader233 ] ; 2 uses
  %.sroa.08.011.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.sroa.08.011.i.i.i.ph, %.lr.ph.i.i.i.preheader233 ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.08.011.i.i.i, align 8, !tbaa !197
  store ptr %i.bh, ptr %.sroa.0.012.i.i.i, align 8, !tbaa !197
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.bi, %i.as
  br i1 %.not.i.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1453

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block229, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.al, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i ], [ %i.as, %middle.block229 ], [ %i.as, %.lr.ph.i.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !450
  store ptr %i.al, ptr %i.f, align 8, !tbaa !450
  store ptr %.sroa.0.0.lcssa.i.i.i, ptr %i.k, align 8, !tbaa !450
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !450
  store ptr %i.am, ptr %i.m, align 8, !tbaa !450
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #30
  %.pre13.i = load ptr, ptr %i.k, align 8, !tbaa !449
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit: ; preds = %bb.b, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i, %bb.h
  %i.bp = phi ptr [ %.pre13.i, %bb.h ], [ %.sroa.0.0.lcssa.i.i.i, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i ], [ %i.aa, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i ], [ %i.l, %bb.b ] ; 2 uses
  store ptr %i.i, ptr %i.bp, align 8, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.k, align 8, !tbaa !449
  br label %bb.ae

bb.i:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !449 ; 3 uses
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !195 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !450 ; 3 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !451   ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp ult i64 %i.bw, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %.not13 = icmp eq ptr %i.by, %i.bs
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ce = tail call noalias noundef nonnull dereferenceable(4088) ptr @_Znwm(i64 noundef 4088) #32
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !197
  call void @_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.ae

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.cf = tail call noalias noundef nonnull dereferenceable(4088) ptr @_Znwm(i64 noundef 4088) #32
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !197
  call void @_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE10push_frontEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !195 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !197
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 7 uses
  store ptr %i.ci, ptr %i.f, align 8, !tbaa !195
  %i.cj = load ptr, ptr %i.br, align 8, !tbaa !449 ; 6 uses
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !450
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.m, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit29

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %0, align 8, !tbaa !451   ; 3 uses
  %i.cn = icmp ugt ptr %i.ci, %i.cm
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  br i1 %i.cn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cp = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cq = sub i64 %i.cp, %i.co
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = add nsw i64 %i.cr, 1
  %.neg.i25 = sdiv i64 %i.cs, -2                  ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.neg.i25 ; 2 uses
  %i.cu = ptrtoint ptr %i.cj to i64
  %i.cv = sub i64 %i.cu, %i.cp                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i.i.i.i.i26, label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i28, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull align 8 %i.ci, i64 %i.cv, i1 false)
  %.pre.i27 = load ptr, ptr %i.f, align 8, !tbaa !195
  br label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i28

_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i28: ; preds = %bb.o, %bb.n
  %i.cw = phi ptr [ %i.ci, %bb.n ], [ %.pre.i27, %bb.o ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %.neg.i25
  store ptr %i.cy, ptr %i.f, align 8, !tbaa !195
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit29

bb.p:                                             ; preds = %bb.m
  %i.cz = ptrtoint ptr %i.cj to i64
  %i.da = sub i64 %i.cz, %i.co
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = icmp eq ptr %i.cj, %i.cm
  %.sroa.speculated.i14 = select i1 %i.dc, i64 1, i64 %i.db ; 4 uses
  %i.dd = icmp ugt i64 %.sroa.speculated.i14, 2305843009213693951
  br i1 %i.dd, label %bb.q, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i15

bb.q:                                             ; preds = %bb.p
  call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
  unreachable

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i15: ; preds = %bb.p
  %i.de = lshr i64 %.sroa.speculated.i14, 2       ; 2 uses
  %i.df = shl nuw i64 %.sroa.speculated.i14, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #32 ; 4 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de ; 7 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.sroa.speculated.i14
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !195 ; 6 uses
  %i.dl = load ptr, ptr %i.br, align 8, !tbaa !449 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64               ; 3 uses
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.do ; 3 uses
  %.not10.i.i.i16 = icmp eq ptr %i.dl, %i.dk
  br i1 %.not10.i.i.i16, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i15
  %i.dq = add i64 %i.dm, -8
  %i.dr = sub i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.dr, 136
  br i1 %min.iters.check198, label %.lr.ph.i.i.i17.preheader234, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i17.preheader
  %i.du = shl nuw nsw i64 %i.de, 3
  %i.dv = add i64 %i.du, %i.dh
  %i.dw = sub i64 %i.dn, %i.dv
  %diff.check200 = icmp ugt i64 %i.dw, -32
  br i1 %diff.check200, label %.lr.ph.i.i.i17.preheader234, label %vector.ph201

vector.ph201:                                     ; preds = %vector.memcheck199
  %n.vec202 = and i64 %i.dt, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec202, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.di, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dk, i64 %i.dx
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.ea = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %i.di, i64 %i.ea ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.dk, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x ptr>, ptr %next.gep206, align 8, !tbaa !197
  %wide.load208 = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !197
  %i.ec = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x ptr> %wide.load207, ptr %next.gep205, align 8, !tbaa !197
  store <2 x ptr> %wide.load208, ptr %i.ec, align 8, !tbaa !197
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.ed, label %middle.block210, label %vector.body203, !llvm.loop !1454

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.dt, %n.vec202
  br i1 %cmp.n211, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21, label %.lr.ph.i.i.i17.preheader234

.lr.ph.i.i.i17.preheader234:                      ; preds = %vector.memcheck199, %.lr.ph.i.i.i17.preheader, %middle.block210
  %.sroa.0.012.i.i.i18.ph = phi ptr [ %i.di, %vector.memcheck199 ], [ %i.di, %.lr.ph.i.i.i17.preheader ], [ %i.dy, %middle.block210 ]
  %.sroa.08.011.i.i.i19.ph = phi ptr [ %i.dk, %vector.memcheck199 ], [ %i.dk, %.lr.ph.i.i.i17.preheader ], [ %i.dz, %middle.block210 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader234, %.lr.ph.i.i.i17
  %.sroa.0.012.i.i.i18 = phi ptr [ %i.ef, %.lr.ph.i.i.i17 ], [ %.sroa.0.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader234 ] ; 2 uses
  %.sroa.08.011.i.i.i19 = phi ptr [ %i.eg, %.lr.ph.i.i.i17 ], [ %.sroa.08.011.i.i.i19.ph, %.lr.ph.i.i.i17.preheader234 ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.08.011.i.i.i19, align 8, !tbaa !197
  store ptr %i.ee, ptr %.sroa.0.012.i.i.i18, align 8, !tbaa !197
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i18, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i19, i64 8
  %.not.i.i.i20 = icmp eq ptr %i.ef, %i.dp
  br i1 %.not.i.i.i20, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21, label %.lr.ph.i.i.i17, !llvm.loop !1455

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21: ; preds = %.lr.ph.i.i.i17, %middle.block210, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i15
  %.sroa.0.0.lcssa.i.i.i22 = phi ptr [ %i.di, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i15 ], [ %i.dp, %middle.block210 ], [ %i.dp, %.lr.ph.i.i.i17 ] ; 2 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  store ptr %i.dg, ptr %0, align 8, !tbaa !450
  store ptr %i.di, ptr %i.f, align 8, !tbaa !450
  store ptr %.sroa.0.0.lcssa.i.i.i22, ptr %i.br, align 8, !tbaa !450
  %i.ei = load ptr, ptr %i.bx, align 8, !tbaa !450
  store ptr %i.dj, ptr %i.bx, align 8, !tbaa !450
  %.not.i.i23 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i23, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit29, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #30
  %.pre13.i24 = load ptr, ptr %i.br, align 8, !tbaa !449
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit29

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit29: ; preds = %bb.l, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i28, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21, %bb.r
  %i.em = phi ptr [ %.pre13.i24, %bb.r ], [ %.sroa.0.0.lcssa.i.i.i22, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i21 ], [ %i.cx, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i28 ], [ %i.cj, %bb.l ] ; 2 uses
  store ptr %i.ch, ptr %i.em, align 8, !tbaa !197
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.en, ptr %i.br, align 8, !tbaa !449
  br label %bb.ae

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.eo = ashr exact i64 %i.cc, 2
  %i.ep = icmp eq ptr %i.by, %i.bz
  %.sroa.speculated = select i1 %i.ep, i64 1, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bx, ptr %i.er, align 8, !tbaa !1458
  %i.es = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.es, label %bb.t, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
  unreachable

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %bb.s
  %i.et = shl nuw i64 %.sroa.speculated, 3
  %i.eu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #32 ; 6 uses
  store ptr %i.eu, ptr %1, align 8, !tbaa !456
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.bw ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !457
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !458
  %.idx = shl nuw nsw i64 %.sroa.speculated, 3    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx ; 2 uses
  store ptr %i.ey, ptr %i.eq, align 8, !tbaa !450
  %i.ez = invoke noalias noundef nonnull dereferenceable(4088) ptr @_Znwm(i64 noundef 4088) #32
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit unwind label %.thread.loopexit.split-lp ; 2 uses

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit: ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.fa = icmp samesign eq i64 %i.bw, %.idx
  br i1 %i.fa, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit
  %.not157 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not157, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i31, label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i44

_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i44: ; preds = %bb.u
  %i.fb = lshr exact i64 %i.bw, 3
  %i.fc = add nuw nsw i64 %i.fb, 1
  %.neg.i41158176 = lshr i64 %i.fc, 1
  %.neg.i41158.neg = sub nsw i64 0, %.neg.i41158176
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.neg.i41158.neg
  br label %bb.w

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i31: ; preds = %bb.u
  %i.fe = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %bb.v unwind label %bb.ad      ; 3 uses

bb.v:                                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i31
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.bw) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i44, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit
  %.promoted91 = phi ptr [ %i.ff, %bb.v ], [ %i.ey, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit ], [ %i.ev, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i44 ] ; 2 uses
  %.promoted83 = phi ptr [ %i.fe, %bb.v ], [ %i.eu, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit ], [ %i.eu, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i44 ] ; 2 uses
  %i.fg = phi ptr [ %i.fe, %bb.v ], [ %i.ev, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev13ImageAdditionEEEE8allocateB8ne180100ERS4_m.exit ], [ %i.fd, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit.i44 ] ; 4 uses
  store ptr %i.ez, ptr %i.fg, align 8, !tbaa !197
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load ptr, ptr %i.br, align 8, !tbaa !449 ; 2 uses
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !195
  %.not95 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not95, label %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit, label %.lr.ph

_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit, %bb.w
  %.lcssa92 = phi ptr [ %.promoted91, %bb.w ], [ %i.ho, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ]
  %.lcssa88 = phi ptr [ %i.fh, %bb.w ], [ %i.hp, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ]
  %.lcssa84 = phi ptr [ %.promoted83, %bb.w ], [ %i.hq, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ]
  %.lcssa80 = phi ptr [ %i.fg, %bb.w ], [ %i.hs, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ]
  %i.fk = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  store ptr %.lcssa84, ptr %0, align 8, !tbaa !450
  store ptr %.lcssa80, ptr %i.f, align 8, !tbaa !450
  store ptr %.lcssa88, ptr %i.br, align 8, !tbaa !450
  %i.fl = load ptr, ptr %i.bx, align 8, !tbaa !450
  store ptr %.lcssa92, ptr %i.bx, align 8, !tbaa !450
  %.not.i = icmp eq ptr %i.fk, null
  br i1 %.not.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #30
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.ae

.lr.ph:                                           ; preds = %bb.w, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit
  %.096 = phi ptr [ %i.ft, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ], [ %i.fi, %bb.w ]
  %i.fp = phi ptr [ %i.hs, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ], [ %i.fg, %bb.w ] ; 14 uses
  %i.fq = phi ptr [ %i.hq, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ], [ %.promoted83, %bb.w ] ; 7 uses
  %i.fr = phi ptr [ %i.hp, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ], [ %i.fh, %bb.w ] ; 9 uses
  %i.fs = phi ptr [ %i.ho, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit ], [ %.promoted91, %bb.w ] ; 8 uses
  %i.ft = getelementptr inbounds i8, ptr %.096, i64 -8 ; 3 uses
  %i.fu = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fu, label %bb.y, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit

bb.y:                                             ; preds = %.lr.ph
  %i.fv = icmp ult ptr %i.fr, %i.fs
  %i.fw = ptrtoint ptr %i.fs to i64               ; 2 uses
  br i1 %i.fv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fx = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 3
  %i.ga = add nsw i64 %i.fz, 1
  %i.gb = sdiv i64 %i.ga, 2
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gb ; 3 uses
  %i.gd = ptrtoint ptr %i.fp to i64
  %i.ge = sub i64 %i.fx, %i.gd                    ; 2 uses
  %i.gf = ashr exact i64 %i.ge, 3
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gg ; 3 uses
  %.not.i.i.i.i.i.i.i.i57 = icmp eq ptr %i.fr, %i.fp
  br i1 %.not.i.i.i.i.i.i.i.i57, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gh, ptr nonnull align 8 %i.fp, i64 %i.ge, i1 false)
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit

bb.ab:                                            ; preds = %bb.y
  %i.gi = ptrtoint ptr %i.fp to i64               ; 4 uses
  %i.gj = sub i64 %i.fw, %i.gi                    ; 2 uses
  %i.gk = ashr exact i64 %i.gj, 2
  %i.gl = icmp eq ptr %i.fs, %i.fp
  %.sroa.speculated.i47 = select i1 %i.gl, i64 1, i64 %i.gk ; 4 uses
  %i.gm = icmp ugt i64 %.sroa.speculated.i47, 2305843009213693951
  br i1 %i.gm, label %bb.ac, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i48

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.fp, ptr %i.ex, align 8
  store ptr %i.fq, ptr %1, align 8
  store ptr %i.fr, ptr %i.ew, align 8
  store ptr %i.fs, ptr %i.eq, align 8
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
          to label %.noexc59 unwind label %.thread.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ac
  unreachable

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i48: ; preds = %bb.ab
  %i.gn = shl nuw i64 %.sroa.speculated.i47, 3
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #32
          to label %.noexc60 unwind label %.thread.loopexit ; 4 uses

.noexc60:                                         ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i48
  %i.gp = ptrtoaddr ptr %i.go to i64
  %i.gq = add nuw nsw i64 %.sroa.speculated.i47, 3
  %i.gr = lshr i64 %i.gq, 2                       ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gr ; 7 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.speculated.i47
  %i.gu = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.gv = sub i64 %i.gu, %i.gi
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv ; 3 uses
  %.not10.i.i.i49 = icmp eq ptr %i.fr, %i.fp
  br i1 %.not10.i.i.i49, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54, label %.lr.ph.i.i.i50.preheader

.lr.ph.i.i.i50.preheader:                         ; preds = %.noexc60
  %i.gx = add i64 %i.gu, -8
  %i.gy = sub i64 %i.gx, %i.gi                    ; 2 uses
  %i.gz = lshr i64 %i.gy, 3
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gy, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i50.preheader235, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i50.preheader
  %i.hb = shl nuw nsw i64 %i.gr, 3
  %i.hc = add i64 %i.hb, %i.gp
  %i.hd = sub i64 %i.gi, %i.hc
  %diff.check = icmp ugt i64 %i.hd, -32
  br i1 %diff.check, label %.lr.ph.i.i.i50.preheader235, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ha, 4611686018427387900     ; 3 uses
  %i.he = shl i64 %n.vec, 3                       ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gs, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.fp, i64 %i.he
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gs, i64 %i.hh ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.fp, i64 %i.hh ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep192, align 8, !tbaa !197
  %wide.load193 = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !197
  %i.hj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !197
  store <2 x ptr> %wide.load193, ptr %i.hj, align 8, !tbaa !197
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !1456

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ha, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54, label %.lr.ph.i.i.i50.preheader235

.lr.ph.i.i.i50.preheader235:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i50.preheader, %middle.block
  %.sroa.0.012.i.i.i51.ph = phi ptr [ %i.gs, %vector.memcheck ], [ %i.gs, %.lr.ph.i.i.i50.preheader ], [ %i.hf, %middle.block ]
  %.sroa.08.011.i.i.i52.ph = phi ptr [ %i.fp, %vector.memcheck ], [ %i.fp, %.lr.ph.i.i.i50.preheader ], [ %i.hg, %middle.block ]
  br label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %.lr.ph.i.i.i50.preheader235, %.lr.ph.i.i.i50
  %.sroa.0.012.i.i.i51 = phi ptr [ %i.hm, %.lr.ph.i.i.i50 ], [ %.sroa.0.012.i.i.i51.ph, %.lr.ph.i.i.i50.preheader235 ] ; 2 uses
  %.sroa.08.011.i.i.i52 = phi ptr [ %i.hn, %.lr.ph.i.i.i50 ], [ %.sroa.08.011.i.i.i52.ph, %.lr.ph.i.i.i50.preheader235 ] ; 2 uses
  %i.hl = load ptr, ptr %.sroa.08.011.i.i.i52, align 8, !tbaa !197
  store ptr %i.hl, ptr %.sroa.0.012.i.i.i51, align 8, !tbaa !197
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i51, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i52, i64 8
  %.not.i.i.i53 = icmp eq ptr %i.hm, %i.gw
  br i1 %.not.i.i.i53, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54, label %.lr.ph.i.i.i50, !llvm.loop !1457

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54: ; preds = %.lr.ph.i.i.i50, %middle.block, %.noexc60
  %.sroa.0.0.lcssa.i.i.i55 = phi ptr [ %i.gs, %.noexc60 ], [ %i.gw, %middle.block ], [ %i.gw, %.lr.ph.i.i.i50 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.gj) #30
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE10push_frontERKS3_.exit: ; preds = %bb.z, %bb.aa, %.lr.ph, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54
  %i.ho = phi ptr [ %i.gt, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54 ], [ %i.fs, %.lr.ph ], [ %i.fs, %bb.aa ], [ %i.fs, %bb.z ] ; 2 uses
  %i.hp = phi ptr [ %.sroa.0.0.lcssa.i.i.i55, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54 ], [ %i.fr, %.lr.ph ], [ %i.gc, %bb.aa ], [ %i.gc, %bb.z ] ; 2 uses
  %i.hq = phi ptr [ %i.go, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54 ], [ %i.fq, %.lr.ph ], [ %i.fq, %bb.aa ], [ %i.fq, %bb.z ] ; 2 uses
  %i.hr = phi ptr [ %i.gs, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i54 ], [ %i.fp, %.lr.ph ], [ %i.gh, %bb.aa ], [ %i.gh, %bb.z ]
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -8 ; 3 uses
  %i.ht = load ptr, ptr %i.ft, align 8, !tbaa !197
  store ptr %i.ht, ptr %i.hs, align 8, !tbaa !197
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !195
  %.not = icmp eq ptr %i.ft, %i.hu
  br i1 %.not, label %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit, label %.lr.ph

.thread.loopexit:                                 ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fp, ptr %i.ex, align 8
  store ptr %i.fq, ptr %1, align 8
  store ptr %i.fr, ptr %i.ew, align 8
  store ptr %i.fs, ptr %i.eq, align 8
  br label %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit62

.thread.loopexit.split-lp:                        ; preds = %bb.ac, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit62

bb.ad:                                            ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit.i31
  %i.hv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 4088) #30
  br label %_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit62

_ZNSt3__110unique_ptrIPN3tev13ImageAdditionENS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B8ne180100Ev.exit62: ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.ad ], [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  call void @_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn

bb.ae:                                            ; preds = %bb.k, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit29, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !450
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !195  ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !451    ; 3 uses
  %i.i = icmp ugt ptr %i.g, %i.h
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.j
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 1
  %.neg = sdiv i64 %i.n, -2                       ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.neg ; 2 uses
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = sub i64 %i.p, %i.k                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.g, i64 %i.q, i1 false)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !195
  br label %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit

_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.g, %bb.c ], [ %.pre, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.neg
  store ptr %i.t, ptr %i.f, align 8, !tbaa !195
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.b to i64
  %i.v = sub i64 %i.u, %i.j
  %i.w = ashr exact i64 %i.v, 2
  %i.x = icmp eq ptr %i.b, %i.h
  %.sroa.speculated = select i1 %i.x, i64 1, i64 %i.w ; 4 uses
  %i.y = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.y, label %bb.f, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
  unreachable

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %bb.e
  %i.z = lshr i64 %.sroa.speculated, 2            ; 2 uses
  %i.aa = shl nuw i64 %.sroa.speculated, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #32 ; 4 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z ; 7 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.speculated
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !195 ; 6 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !449 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not10.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.al = add i64 %i.ah, -8
  %i.am = sub i64 %i.al, %i.ai                    ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ap = shl nuw nsw i64 %i.z, 3
  %i.aq = add i64 %i.ap, %i.ac
  %i.ar = sub i64 %i.ai, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ad, i64 %i.as
  %i.au = getelementptr i8, ptr %i.af, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.av ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.af, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep20, align 8, !tbaa !197
  %wide.load21 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !197
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !197
  store <2 x ptr> %wide.load21, ptr %i.ax, align 8, !tbaa !197
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.preheader23

.lr.ph.i.i.preheader23:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.012.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.08.011.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader23, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.ph, %.lr.ph.i.i.preheader23 ] ; 2 uses
  %.sroa.08.011.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.08.011.i.i.ph, %.lr.ph.i.i.preheader23 ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.08.011.i.i, align 8, !tbaa !197
  store ptr %i.az, ptr %.sroa.0.012.i.i, align 8, !tbaa !197
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ba, %i.ak
  br i1 %.not.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i, !llvm.loop !1460

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ad, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !450
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !450
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.a, align 8, !tbaa !450
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !450
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !450
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #30
  %.pre13 = load ptr, ptr %i.a, align 8, !tbaa !449
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit, %bb.a
  %i.bh = phi ptr [ %.pre13, %bb.g ], [ %.sroa.0.0.lcssa.i.i, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i ], [ %i.s, %_ZNSt3__14moveB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !197
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !197
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !449
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPN3tev13ImageAdditionENS_9allocatorIS3_EEE10push_frontEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !451
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !449  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !450  ; 3 uses
  %i.i = icmp ult ptr %i.f, %i.h
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 1
  %i.o = sdiv i64 %i.n, 2                         ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.k, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.t ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__113move_backwardB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr align 8 %i.b, i64 %i.r, i1 false)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !449
  br label %_ZNSt3__113move_backwardB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit

_ZNSt3__113move_backwardB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit: ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ]
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.o
  store ptr %i.w, ptr %i.e, align 8, !tbaa !449
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %i.b to i64
  %i.y = sub i64 %i.j, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = icmp eq ptr %i.h, %i.b
  %.sroa.speculated = select i1 %i.aa, i64 1, i64 %i.z ; 4 uses
  %i.ab = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.ab, label %bb.f, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #31
  unreachable

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %bb.e
  %i.ac = add nuw nsw i64 %.sroa.speculated, 3
  %i.ad = lshr i64 %i.ac, 2                       ; 2 uses
  %i.ae = shl nuw i64 %.sroa.speculated, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 4 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.speculated
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !195 ; 6 uses
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !449 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not10.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.ap = add i64 %i.al, -8
  %i.aq = sub i64 %i.ap, %i.am                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.at = shl nuw nsw i64 %i.ad, 3
  %i.au = add i64 %i.at, %i.ag
  %i.av = sub i64 %i.am, %i.au
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ah, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.aj, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.az ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.aj, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep19, align 8, !tbaa !197
  %wide.load20 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !197
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !197
  store <2 x ptr> %wide.load20, ptr %i.bb, align 8, !tbaa !197
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.preheader22

.lr.ph.i.i.preheader22:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.012.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.08.011.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 2 uses
  %.sroa.08.011.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.sroa.08.011.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.08.011.i.i, align 8, !tbaa !197
  store ptr %i.bd, ptr %.sroa.0.012.i.i, align 8, !tbaa !197
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i, !llvm.loop !1462

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ah, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i.i ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !450   ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !450
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !450
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.e, align 8, !tbaa !450
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !450
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !450
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #30
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !195
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__113move_backwardB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit, %bb.a
  %i.bl = phi ptr [ %.pre12, %bb.g ], [ %i.ah, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i ], [ %i.u, %_ZNSt3__113move_backwardB8ne180100IPPN3tev13ImageAdditionES4_EET0_T_S6_S5_.exit ], [ %i.b, %bb.a ]
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !197
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !197
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !457 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %.promoted.i.i.i
  br i1 %.not2.i.i.i, label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %.promoted3.i.i.i = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = ptrtoaddr ptr %i.b to i64
  %reass.sub.i.i.i = add i64 %i.d, 7
  %.not.i.i.i = sub i64 %reass.sub.i.i.i, %.promoted3.i.i.i
  %i.e = and i64 %.not.i.i.i, -8
  %scevgep.i.i.i = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.e
  store ptr %scevgep.i.i.i, ptr %i.c, align 8, !tbaa !457
  br label %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit

_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit: ; preds = %bb.a, %.lr.ph.preheader.i.i.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !456    ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !450
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt3__114__split_bufferIPN3tev13ImageAdditionERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog6Logger3logIJidEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.509", align 16 ; 6 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !179
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !1469
  %i.d = load i32, ptr %4, align 4, !tbaa !211, !noalias !1469
  store i32 %i.d, ptr %8, align 16, !tbaa !150, !noalias !1469
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load double, ptr %5, align 8, !tbaa !218, !noalias !1469
  store double %i.f, ptr %i.e, align 16, !tbaa !150, !noalias !1469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !1470
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !1470
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.h, align 8, !tbaa !259, !noalias !1470
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !260, !noalias !1470
  store i64 500, ptr %i.g, align 8, !tbaa !261, !noalias !1470
  %i.k = icmp eq i64 %3, 2
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %2, align 1
  %i.m = icmp ne i16 %i.l, 32123
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %8, align 16, !tbaa !150, !noalias !1470
  %i.p = trunc i128 %.sroa.0.0.copyload.sink66.i to i32
  %i.q = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt3__19enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS7_bEE5valuentsr3std7is_sameIS7_T_EE5valueEiE4typeELi0EEET0_SB_S7_(ptr nonnull align 8 dereferenceable(32) %7, i32 noundef %i.p)
          to label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit unwind label %bb.j, !noalias !1470 ; 0 uses

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !1470
  store ptr %2, ptr %6, align 8, !tbaa !119, !noalias !1470
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
