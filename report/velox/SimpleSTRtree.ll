Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SimpleSTRtree?download=true
inline.NumInlined: 707
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos5index7strtree13SimpleSTRtree17createParentNodesERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi:bb.a
  %i.cc = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit33, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31
  tail call void @_ZdlPv(ptr noundef nonnull %i.cc) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit33

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit33: ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31, %bb.n
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree31addParentNodesFromVerticalSliceERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4geos5index7strtree13SimpleSTRtree10sortNodesYERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not2729 = icmp eq ptr %i.a, %i.c
  br i1 %.not2729, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit
  %.not = icmp eq ptr %.2, null
  br i1 %.not, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit
  %.sroa.017.031 = phi ptr [ %i.a, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.030 = phi ptr [ null, %.lr.ph ], [ %.2, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.017.031, align 8, !tbaa !26
  %.not8 = icmp eq ptr %.030, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN4geos5index7strtree13SimpleSTRtree10createNodeEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.h, %bb.c ], [ %.030, %bb.b ] ; 6 uses
  tail call void @_ZN4geos5index7strtree13SimpleSTRnode12addChildNodeEPS2_(ptr noundef nonnull align 8 dereferenceable(96) %.1, ptr noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = load i64, ptr %i.d, align 8, !tbaa !60
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !41   ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.1, ptr %i.s, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.e, align 8, !tbaa !41
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8, !tbaa !40     ; 4 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.h, label %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
  unreachable

_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #16 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %.1, ptr %i.ah, align 8, !tbaa !26
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ag, ptr %3, align 8, !tbaa !40
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.f, %bb.d
  %.2 = phi ptr [ %.1, %bb.d ], [ null, %bb.f ], [ null, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.017.031, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.al, %i.c
  br i1 %.not27, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %.not.i9 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.2, ptr %i.an, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !41
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16

bb.m:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %3, align 8, !tbaa !40    ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.n, label %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
  unreachable

_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.m
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i11, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #16 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store ptr %.2, ptr %i.bd, align 8, !tbaa !26
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.o, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13: ; preds = %bb.o, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.not.i17.i.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i14, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13
  tail call void @_ZdlPv(ptr noundef nonnull %i.ar) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15: ; preds = %bb.p, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13
  store ptr %i.bc, ptr %3, align 8, !tbaa !40
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bg, ptr %i.ao, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16: ; preds = %bb.a, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15, %bb.l, %._crit_edge
  ret void
}

declare void @_ZN4geos5index7strtree13SimpleSTRnode12addChildNodeEPS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree18createHigherLevelsERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = add nsw i32 %3, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4geos5index7strtree13SimpleSTRtree17createParentNodesERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !40     ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %thread-pre-split.thread, label %bb.b

thread-pre-split.thread:                          ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.i, align 8, !tbaa !41
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  store ptr %7, ptr %5, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit7

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4geos5index7strtree13SimpleSTRtree18createHigherLevelsERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.a)
          to label %thread-pre-split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.j

thread-pre-split:                                 ; preds = %bb.b
  %.not.i.i.i6 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit7, label %bb.e

bb.e:                                             ; preds = %thread-pre-split
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit7

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit7: ; preds = %thread-pre-split.thread, %thread-pre-split, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree5buildEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !61, !range !62, !noundef !63
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.i, align 8, !tbaa !64
  br label %bb.d

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN4geos5index7strtree13SimpleSTRtree18createHigherLevelsERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef 0)
  %i.j = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.k, ptr %i.l, align 8, !tbaa !64
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree7iterateERNS0_11ItemVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.05.09, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = load ptr, ptr %1, align 8, !tbaa !28
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree5queryEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !61, !range !62, !noundef !63
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4geos5index7strtree13SimpleSTRtree5buildEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.i, align 8, !tbaa !64
  br label %bb.d

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN4geos5index7strtree13SimpleSTRtree18createHigherLevelsERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef 0)
  %i.j = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.k, ptr %i.l, align 8, !tbaa !64
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit.i, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !61
  br label %_ZN4geos5index7strtree13SimpleSTRtree5buildEv.exit

_ZN4geos5index7strtree13SimpleSTRtree5buildEv.exit: ; preds = %bb.a, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4geos5index7strtree13SimpleSTRtree5buildEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 6 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load double, ptr %1, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = load double, ptr %i.u, align 8, !tbaa !43
  %i.w = fcmp ugt double %i.t, %i.v
  br i1 %i.w, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !43
  %i.aa = load double, ptr %i.x, align 8, !tbaa !53
  %i.ab = fcmp ult double %i.z, %i.aa
  br i1 %i.ab, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.af = load double, ptr %i.ae, align 8, !tbaa !50
  %i.ag = fcmp ugt double %i.ad, %i.af
  br i1 %i.ag, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit:   ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49
  %i.al = fcmp ult double %i.ai, %i.ak
  br i1 %i.al, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  tail call void @_ZN4geos5index7strtree13SimpleSTRtree5queryEPKNS_4geom8EnvelopeEPKNS1_13SimpleSTRnodeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread: ; preds = %bb.f, %bb.g, %bb.h, %_ZN4geos5index7strtree13SimpleSTRtree5buildEv.exit, %bb.e, %bb.i, %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree5queryEPKNS_4geom8EnvelopeEPKNS1_13SimpleSTRnodeERNS0_11ItemVisitorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

end_hunk_0
