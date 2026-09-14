Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_fromUCPTrie_78:bb.a

bb.o:                                             ; preds = %_ZN6icu_7812LocalPointerINS_12_GLOBAL__N_120MutableCodePointTrieEEC2EPS2_R10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.o
  %.0.i = phi i32 [ 0, %bb.o ], [ %i.br, %bb.w ]  ; 4 uses
  %i.bm = invoke i32 @ucptrie_getRange_78(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %bb.u       ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !34  ; 3 uses
  %.not43.i = icmp eq i32 %i.bo, %.038.i
  br i1 %.not43.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp eq i32 %.0.i, %i.bm
  br i1 %i.bp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %i.ao, i32 noundef %.0.i, i32 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call fastcc void @_ZN6icu_7812LocalPointerINS_12_GLOBAL__N_120MutableCodePointTrieEED2Ev(ptr nonnull %i.ao) #13
  br label %bb.ab

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %i.ao, i32 noundef %.0.i, i32 noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r
  %i.br = add nuw nsw i32 %i.bm, 1
  br label %bb.p, !llvm.loop !52

bb.x:                                             ; preds = %bb.q
  %i.bs = load i32, ptr %1, align 4, !tbaa !17
  %i.bt = icmp sgt i32 %i.bs, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.bt, label %..thread59.i_crit_edge, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11fromUCPTrieEPK7UCPTrieR10UErrorCode.exit

..thread59.i_crit_edge:                           ; preds = %bb.x
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !22
  br label %.thread59.i

.thread59.i:                                      ; preds = %..thread59.i_crit_edge, %_ZN6icu_7812LocalPointerINS_12_GLOBAL__N_120MutableCodePointTrieEEC2EPS2_R10UErrorCode.exit.i, %bb.l, %bb.j
  %i.bu = phi ptr [ %.pre, %..thread59.i_crit_edge ], [ %i.bf, %_ZN6icu_7812LocalPointerINS_12_GLOBAL__N_120MutableCodePointTrieEEC2EPS2_R10UErrorCode.exit.i ], [ %i.bf, %bb.l ], [ null, %bb.j ]
  invoke void @uprv_free_78(ptr noundef %i.bu)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %.thread59.i
  %i.bv = load ptr, ptr %i.as, align 8, !tbaa !32
  invoke void @uprv_free_78(ptr noundef %i.bv)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !31
  invoke void @uprv_free_78(ptr noundef %i.bw)
          to label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrieD2Ev.exit.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.thread59.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrieD2Ev.exit.i.i: ; preds = %bb.z
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ao) #13
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11fromUCPTrieEPK7UCPTrieR10UErrorCode.exit

bb.ab:                                            ; preds = %bb.u, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %i.bl, %bb.n ]
  resume { ptr, i32 } %.pn.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11fromUCPTrieEPK7UCPTrieR10UErrorCode.exit: ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrieD2Ev.exit.i.i, %bb.x, %bb.m, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrieC2EjjR10UErrorCode.exit.i, %bb.h, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.h ], [ null, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrieC2EjjR10UErrorCode.exit.i ], [ null, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrieD2Ev.exit.i.i ], [ %i.ao, %bb.x ], [ null, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @umutablecptrie_get_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %1, 1114111
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %.not.i = icmp slt i32 %1, %i.d
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit

bb.e:                                             ; preds = %bb.c
  %i.f = lshr i32 %1, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = zext nneg i32 %i.f to i64                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = load ptr, ptr %0, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.h
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34
  %i.s = and i32 %1, 15
  %i.t = add i32 %i.r, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.u
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.1.in.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.d ], [ %i.m, %bb.f ], [ %i.v, %bb.g ]
  %.1.i = load i32, ptr %.1.in.i, align 4, !tbaa !34
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define i32 @umutablecptrie_getRange_78(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ucptrie_internalGetRange_78(ptr noundef nonnull @_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %i.a
}

declare i32 @ucptrie_internalGetRange_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 1114111
  br i1 %i.a, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %.not.i = icmp slt i32 %1, %i.c
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not134.i = icmp eq ptr %4, null
  br i1 %.not134.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %.not135.i = icmp eq ptr %2, null
  br i1 %.not135.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.e), !inline_history !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0104.i = phi i32 [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  store i32 %.0104.i, ptr %4, align 4, !tbaa !34
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not123.i = icmp eq ptr %2, null               ; 7 uses
  br i1 %.not123.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.h), !inline_history !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0103.i = phi i32 [ %i.i, %bb.h ], [ %i.h, %bb.g ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not124.i = icmp eq ptr %4, null               ; 2 uses
  %i.l = lshr i32 %1, 4
  %i.m = zext nneg i32 %i.l to i64
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %.loopexit.i ], [ %i.m, %bb.i ] ; 3 uses
  %.098.i = phi i32 [ %.4102.i, %.loopexit.i ], [ %1, %bb.i ] ; 8 uses
  %.092.i = phi i32 [ %.6.i, %.loopexit.i ], [ undef, %bb.i ] ; 4 uses
  %.086.i = phi i32 [ %.591.i, %.loopexit.i ], [ undef, %bb.i ] ; 7 uses
  %.084.i = phi i1 [ true, %.loopexit.i ], [ false, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv206.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !40
  %i.p = icmp eq i8 %i.o, 0
  %i.q = load ptr, ptr %0, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv206.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 10 uses
  br i1 %i.p, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  br i1 %.084.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not131.i = icmp eq i32 %i.s, %.092.i
  br i1 %.not131.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not123.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.s), !inline_history !54
  br label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i

_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i = phi i32 [ %.0103.i, %bb.n ], [ %i.v, %bb.o ]
  %.not132.i = icmp eq i32 %.0.i.i, %.086.i
  br i1 %.not132.i, label %.thread.i, label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %i.x = icmp eq i32 %i.s, %i.w                   ; 2 uses
  %brmerge.i = or i1 %.not123.i, %i.x
  %.0103.mux.i = select i1 %i.x, i32 %.0103.i, i32 %i.s
  br i1 %brmerge.i, label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.s), !inline_history !54
  br label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i

_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i: ; preds = %bb.q, %bb.p
  %.0.i137.i = phi i32 [ %.0103.mux.i, %bb.p ], [ %i.y, %bb.q ] ; 3 uses
  br i1 %.not124.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i
  store i32 %.0.i137.i, ptr %4, align 4, !tbaa !34
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i, %bb.l
  %.193.i = phi i32 [ %i.s, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i ], [ %.092.i, %bb.l ], [ %i.s, %bb.r ], [ %i.s, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i ]
  %.187.i = phi i32 [ %.086.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i ], [ %.086.i, %bb.l ], [ %.0.i137.i, %bb.r ], [ %.0.i137.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit138.i ]
  %i.z = and i32 %.098.i, -16
  %i.aa = add nsw i32 %i.z, 16
  br label %.loopexit.i

bb.s:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit.i, %bb.m
  %i.ab = add nsw i32 %.098.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit

bb.t:                                             ; preds = %bb.j
  %i.ac = and i32 %.098.i, 15
  %i.ad = add i32 %i.s, %i.ac                     ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.af = sext i32 %i.ad to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34 ; 10 uses
  br i1 %.084.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %.not125.i = icmp eq i32 %i.ah, %.092.i
  br i1 %.not125.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not123.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !27
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit141.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.ah), !inline_history !54
  br label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit141.i

_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit141.i: ; preds = %bb.x, %bb.w
  %.0.i140.i = phi i32 [ %.0103.i, %bb.w ], [ %i.ak, %bb.x ]
  %.not126.i = icmp eq i32 %.0.i140.i, %.086.i
  br i1 %.not126.i, label %.thread219.i, label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit141.i, %bb.v
  %i.al = add nsw i32 %.098.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit

bb.z:                                             ; preds = %bb.t
  %i.am = load i32, ptr %i.g, align 8, !tbaa !27
  %i.an = icmp eq i32 %i.ah, %i.am                ; 2 uses
  %brmerge164.i = or i1 %.not123.i, %i.an
  %.0103.mux165.i = select i1 %i.an, i32 %.0103.i, i32 %i.ah
  br i1 %brmerge164.i, label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ao = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.ah), !inline_history !54
  br label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i

_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i: ; preds = %bb.aa, %bb.z
  %.0.i143.i = phi i32 [ %.0103.mux165.i, %bb.z ], [ %i.ao, %bb.aa ] ; 3 uses
  br i1 %.not124.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i
  store i32 %.0.i143.i, ptr %4, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i, %bb.u
  %.395.i = phi i32 [ %i.ah, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i ], [ %.092.i, %bb.u ], [ %i.ah, %bb.ab ] ; 6 uses
  %.389.i = phi i32 [ %.0.i143.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit144.i ], [ %.086.i, %bb.u ], [ %.0.i143.i, %bb.ab ] ; 4 uses
  %i.ap = add nsw i32 %.098.i, 1                  ; 4 uses
  %i.aq = and i32 %i.ap, 15
  %.not127174.i = icmp eq i32 %i.aq, 0
  br i1 %.not127174.i, label %.loopexit.i, label %.lr.ph.i

.thread219.i:                                     ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit141.i
  %i.ar = add nsw i32 %.098.i, 1                  ; 3 uses
  %i.as = and i32 %i.ar, 15
  %.not127174222.i = icmp eq i32 %i.as, 0
  br i1 %.not127174222.i, label %.loopexit.i, label %.lr.ph.split.preheader.i

.lr.ph.i:                                         ; preds = %bb.ac
  br i1 %.not123.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i, %.thread219.i
  %.395223228.i = phi i32 [ %.395.i, %.lr.ph.i ], [ %i.ah, %.thread219.i ]
  %.389224227.i = phi i32 [ %.389.i, %.lr.ph.i ], [ %.086.i, %.thread219.i ] ; 2 uses
  %i.at = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ar, %.thread219.i ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.av = add nsw i32 %i.ad, 1
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !34
  %.not128.us182.i = icmp eq i32 %i.ay, %.395.i
  br i1 %.not128.us182.i, label %.lr.ph183.i.preheader, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit

.lr.ph183.i.preheader:                            ; preds = %.lr.ph.split.us.i
  %i.az = add nsw i32 %.098.i, 2                  ; 3 uses
  %i.ba = and i32 %i.az, 15
  %.not127.us.i70 = icmp eq i32 %i.ba, 0
  br i1 %.not127.us.i70, label %.loopexit.i, label %.lr.ph, !llvm.loop !55

.lr.ph:                                           ; preds = %.lr.ph183.i.preheader
  br label %bb.ad, !llvm.loop !55

bb.ad:                                            ; preds = %.lr.ph, %.lr.ph183.i
  %i.bb = phi i32 [ %i.az, %.lr.ph ], [ %i.bf, %.lr.ph183.i ] ; 2 uses
  %i.bc = phi i32 [ %i.ap, %.lr.ph ], [ %i.bb, %.lr.ph183.i ]
  %indvars.iv203.i71 = phi i64 [ %i.aw, %.lr.ph ], [ %indvars.iv.next204.i, %.lr.ph183.i ]
  %indvars.iv.next204.i = add nsw i64 %indvars.iv203.i71, 1 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.next204.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34
  %.not128.us.i = icmp eq i32 %i.be, %.395.i
  br i1 %.not128.us.i, label %.lr.ph183.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit, !llvm.loop !55

.lr.ph183.i:                                      ; preds = %bb.ad
  %i.bf = add nsw i32 %i.bb, 1                    ; 3 uses
  %i.bg = and i32 %i.bf, 15
  %.not127.us.i = icmp eq i32 %i.bg, 0
  br i1 %.not127.us.i, label %.lr.ph183.i..loopexit.i.loopexit_crit_edge, label %bb.ad, !llvm.loop !55

.lr.ph.split.i:                                   ; preds = %bb.ag, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.ag ]
  %.496176.i.a = phi i32 [ %i.at, %.lr.ph.split.preheader.i ], [ %i.bn, %bb.ag ] ; 2 uses
  %.2100175.i = phi i32 [ %.395223228.i, %.lr.ph.split.preheader.i ], [ %i.bj, %bb.ag ]
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !32
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34 ; 5 uses
  %.not128.i = icmp eq i32 %i.bj, %.2100175.i
  br i1 %.not128.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.split.i
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !27
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.bj), !inline_history !54
  br label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i

_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i: ; preds = %bb.af, %bb.ae
  %.0.i146.i = phi i32 [ %.0103.i, %bb.ae ], [ %i.bm, %bb.af ]
  %.not129.i = icmp eq i32 %.0.i146.i, %.389224227.i
  br i1 %.not129.i, label %bb.ag, label %.thread157.loopexit230.i

bb.ag:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i, %.lr.ph.split.i
  %i.bn = add nsw i32 %.496176.i.a, 1             ; 3 uses
  %i.bo = and i32 %i.bn, 15
  %.not127.i = icmp eq i32 %i.bo, 0
  br i1 %.not127.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !55

.lr.ph183.i..loopexit.i.loopexit_crit_edge:       ; preds = %.lr.ph183.i
  br label %.loopexit.i, !llvm.loop !55

.loopexit.i:                                      ; preds = %bb.ag, %.lr.ph183.i.preheader, %.lr.ph183.i..loopexit.i.loopexit_crit_edge, %.thread219.i, %bb.ac, %.thread.i
  %.4102.i = phi i32 [ %i.aa, %.thread.i ], [ %i.ap, %bb.ac ], [ %i.ar, %.thread219.i ], [ %i.az, %.lr.ph183.i.preheader ], [ %i.bf, %.lr.ph183.i..loopexit.i.loopexit_crit_edge ], [ %i.bn, %bb.ag ] ; 3 uses
  %.6.i = phi i32 [ %.193.i, %.thread.i ], [ %.395.i, %bb.ac ], [ %i.ah, %.thread219.i ], [ %.395.i, %.lr.ph183.i.preheader ], [ %.395.i, %.lr.ph183.i..loopexit.i.loopexit_crit_edge ], [ %i.bj, %bb.ag ]
  %.591.i = phi i32 [ %.187.i, %.thread.i ], [ %.389.i, %bb.ac ], [ %.086.i, %.thread219.i ], [ %.389.i, %.lr.ph183.i.preheader ], [ %.389.i, %.lr.ph183.i..loopexit.i.loopexit_crit_edge ], [ %.389224227.i, %bb.ag ] ; 2 uses
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1
  %i.bp = load i32, ptr %i.b, align 8, !tbaa !29
  %i.bq = icmp slt i32 %.4102.i, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.ah, !llvm.loop !56

bb.ah:                                            ; preds = %.loopexit.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !30 ; 3 uses
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !27
  %i.bu = icmp eq i32 %i.bs, %i.bt                ; 2 uses
  %brmerge166.i = or i1 %.not123.i, %i.bu
  %.0103.mux167.i = select i1 %i.bu, i32 %.0103.i, i32 %i.bs
  br i1 %brmerge166.i, label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bv = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.bs), !inline_history !54
  br label %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i

_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i: ; preds = %bb.ai, %bb.ah
  %.0.i149.i = phi i32 [ %.0103.mux167.i, %bb.ah ], [ %i.bv, %bb.ai ]
  %.not133.i = icmp eq i32 %.0.i149.i, %.591.i
  %i.bw = add nsw i32 %.4102.i, -1
  %spec.select.i = select i1 %.not133.i, i32 1114111, i32 %i.bw
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit

.thread157.loopexit230.i:                         ; preds = %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit147.i
  %.2100175203.le.i = add nsw i32 %.496176.i.a, -1
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie8getRangeEiPFjPKvjES3_Pj.exit: ; preds = %.lr.ph.split.us.i, %bb.ad, %bb.a, %bb.c, %bb.f, %bb.s, %bb.y, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i, %.thread157.loopexit230.i
  %.5110.i = phi i32 [ 1114111, %bb.c ], [ -1, %bb.a ], [ 1114111, %bb.f ], [ %spec.select.i, %_ZN6icu_7812_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES2_.exit150.i ], [ %i.ab, %bb.s ], [ %i.al, %bb.y ], [ %i.bc, %bb.ad ], [ %.2100175203.le.i, %.thread157.loopexit230.i ], [ %.098.i, %.lr.ph.split.us.i ]
  ret i32 %.5110.i
}

; Function Attrs: mustprogress uwtable
define void @umutablecptrie_set_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie3setEijR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1114111
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !17
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp slt i32 %1, %i.e
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i32 %1, 512
  %i.g = and i32 %i.f, 4193792                    ; 2 uses
  %i.h = ashr i32 %i.e, 4                         ; 2 uses
  %i.i = lshr exact i32 %i.g, 4                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noalias dereferenceable_or_null(278528) ptr @uprv_malloc_78(i64 noundef 278528) #14 ; 3 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.o = shl nsw i32 %i.h, 2
  %i.p = sext i32 %i.o to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.p, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.n)
  store ptr %i.m, ptr %0, align 8, !tbaa !22
  store i32 69632, ptr %i.j, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = sext i32 %i.h to i64
  %i.t = zext nneg i32 %i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %indvars.iv.i
  store i8 0, ptr %i.u, align 1, !tbaa !40
  %i.v = load i32, ptr %i.r, align 8, !tbaa !27
  %i.w = load ptr, ptr %0, align 8, !tbaa !22
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store i32 %i.v, ptr %i.x, align 4, !tbaa !34
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.y, label %bb.i, label %.critedge.thread.i, !llvm.loop !0

.critedge.thread.i:                               ; preds = %bb.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %.critedge.thread.i, %bb.d
  %i.z = lshr i32 %1, 4
  %i.aa = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %i.z) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, label %bb.k

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit: ; preds = %bb.f, %bb.j
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = and i32 %1, 15
  %i.af = add nuw nsw i32 %i.aa, %i.ae
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 %2, ptr %i.ah, align 4, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie15ensureHighStartEi.exit, %bb.k, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @umutablecptrie_setRange_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69696) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1114111
  %i.d = icmp ugt i32 %2, 1114111
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp sgt i32 %1, %2
  %or.cond60 = or i1 %i.e, %or.cond
  br i1 %or.cond60, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp slt i32 %2, %i.g
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %2, 512
  %i.i = and i32 %i.h, 4193792                    ; 2 uses
  %i.j = ashr i32 %i.g, 4                         ; 2 uses
  %i.k = lshr exact i32 %i.i, 4                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias dereferenceable_or_null(278528) ptr @uprv_malloc_78(i64 noundef 278528) #14 ; 3 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit71.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.q = shl nsw i32 %i.j, 2
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.p, i64 %i.r, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.p)
  store ptr %i.o, ptr %0, align 8, !tbaa !22
  store i32 69632, ptr %i.l, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = sext i32 %i.j to i64
  %i.v = zext nneg i32 %i.k to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.i
  store i8 0, ptr %i.w, align 1, !tbaa !40
  %i.x = load i32, ptr %i.t, align 8, !tbaa !27
  %i.y = load ptr, ptr %0, align 8, !tbaa !22
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 %i.x, ptr %i.z, align 4, !tbaa !34
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.aa, label %bb.h, label %.critedge.thread.i, !llvm.loop !0

.critedge.thread.i:                               ; preds = %bb.h
  store i32 %i.i, ptr %i.f, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i, %bb.c
  %i.ab = add nuw nsw i32 %2, 1                   ; 4 uses
  %i.ac = and i32 %1, 15                          ; 5 uses
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %bb.j
end_hunk_0
