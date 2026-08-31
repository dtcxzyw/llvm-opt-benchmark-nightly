Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/measunit_extra?download=true
inline.NumInlined: 412
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_125SimpleUnitIdentifiersSink3putEPKcRNS_13ResourceValueEaR10UErrorCode:bb.a
bb.o:                                             ; preds = %bb.n
  %.not37 = icmp eq i8 %i.ba, 0
  br i1 %.not37, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 3, ptr %4, align 4, !tbaa !17
  br label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bb = load ptr, ptr %2, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %i.y, ptr %9, align 8, !tbaa !8
  store i32 40, ptr %i.z, align 8, !tbaa !12
  store i8 0, ptr %i.aa, align 4, !tbaa !13
  store i32 0, ptr %i.ab, align 8, !tbaa !14
  store i8 0, ptr %i.y, align 1, !tbaa !16
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !60
  %i.bg = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bh = load i32, ptr %4, align 4, !tbaa !17
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.v, label %.critedge45

bb.t:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.v:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !27
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !28
  store i32 -1, ptr %i.t, align 8, !tbaa !29
  %i.bm = load ptr, ptr %9, align 8, !tbaa !8
  %i.bn = load i32, ptr %i.ab, align 8, !tbaa !14
  %i.bo = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEPKci(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.bm, i32 noundef %i.bn)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bp = icmp sgt i32 %i.bo, 1                   ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 3, ptr %4, align 4, !tbaa !17
  br label %bb.aa

bb.y:                                             ; preds = %bb.z, %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bu = lshr i8 %i.bt, 1
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = invoke noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.bs, i32 noundef %i.bv)
          to label %_ZNK6icu_789BytesTrie8getValueEv.exit unwind label %bb.y

_ZNK6icu_789BytesTrie8getValueEv.exit:            ; preds = %bb.z
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.by = load i32, ptr %i.h, align 8, !tbaa !83
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !60
  %i.cb = load i32, ptr %i.h, align 8, !tbaa !83
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.h, align 8, !tbaa !83
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %_ZNK6icu_789BytesTrie8getValueEv.exit
  %i.cd = load i8, ptr %i.aa, align 4, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %9, align 8, !tbaa !8
  invoke void @uprv_free_78(ptr noundef %i.ce)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #18
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br i1 %i.bp, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.h
  %i.ch = add nuw nsw i32 %.030, 1
  br label %bb.e, !llvm.loop !168

bb.ae:                                            ; preds = %bb.y, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.y ], [ %i.bk, %bb.u ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.bj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.af ], [ %i.az, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.aj

.critedge45:                                      ; preds = %bb.s
  %i.ci = load i8, ptr %i.aa, align 4, !tbaa !13
  %.not.i.i.i46 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i46, label %_ZN6icu_7810CharStringD2Ev.exit47, label %bb.ah

bb.ah:                                            ; preds = %.critedge45
  %i.cj = load ptr, ptr %9, align 8, !tbaa !8
  invoke void @uprv_free_78(ptr noundef %i.cj)
          to label %_ZN6icu_7810CharStringD2Ev.exit47 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #18
  unreachable

_ZN6icu_7810CharStringD2Ev.exit47:                ; preds = %.critedge45, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.l, %bb.p, %_ZN6icu_7810CharStringD2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %_ZN6icu_7810CharStringD2Ev.exit, %.loopexit.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.ak:                                            ; preds = %bb.a, %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

declare noundef signext i8 @_ZNK6icu_7813ResourceTable9findValueEPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZN6icu_789BytesTrie4nextEPKci(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_115UnitAliasesSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #17
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_115UnitAliasesSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::ResourceTable", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !17
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit, label %bb.f

_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit: ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !nonnull !126, !align !164
  %i.h = tail call noundef ptr @_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.g) ; 2 uses
  %6 = load i32, ptr %4, align 4, !tbaa !17
  %7 = icmp sgt i32 %6, 0
  %8 = icmp ne ptr %i.h, null
  %or.cond.i.i.not = or i1 %8, %7
  tail call void @llvm.assume(i1 %or.cond.i.i.not)
  %i.i = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.h, ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  %i.j = load i32, ptr %4, align 4, !tbaa !17
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.l = load ptr, ptr %2, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.o = load i32, ptr %4, align 4, !tbaa !17
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef signext i8 @_ZNK6icu_7813ResourceTable9findValueEPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %5, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not19 = icmp eq i8 %i.q, 0
  br i1 %.not19, label %bb.d, label %_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit22

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %4, align 4, !tbaa !17
  br label %bb.e

_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit22: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.r = load ptr, ptr %2, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !171, !nonnull !126, !align !164
  %i.x = call noundef ptr @_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.w) ; 2 uses
  %9 = load i32, ptr %4, align 4, !tbaa !17
  %10 = icmp sgt i32 %9, 0
  %11 = icmp ne ptr %i.x, null
  %or.cond.i.i21.not = or i1 %11, %10
  call void @llvm.assume(i1 %or.cond.i.i21.not)
  %i.y = load i32, ptr %i.a, align 4, !tbaa !60
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.x, ptr noundef %i.u, i32 noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit22, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7816MaybeStackVectorINS_10CharStringELi8EE28emplaceBackAndCheckErrorCodeIJEEEPS1_R10UErrorCodeDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89   ; 5 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !84
  %i.e = icmp eq i32 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, 8
  %i.g = shl nsw i32 %i.c, 1
  %i.h = select i1 %i.f, i32 32, i32 %i.g         ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.b, align 8, !tbaa !89
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.n)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.h)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.p = sext i32 %.1.i to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.o, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !90
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !88
  tail call void @uprv_free_78(ptr noundef %i.t)
  br label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit: ; preds = %bb.f, %bb.g
  store ptr %i.l, ptr %i.a, align 8, !tbaa !88
  store i32 %i.h, ptr %i.b, align 8, !tbaa !89
  store i8 1, ptr %i.r, align 4, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit, %bb.a
  %i.u = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #17 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 13 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 40, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 0, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 0, ptr %i.z, align 8, !tbaa !14
  store i8 0, ptr %i.w, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = load i32, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %0, align 8, !tbaa !84
  %i.ac = sext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ac
  store ptr %i.u, ptr %i.ae, align 8, !tbaa !94
  br label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.thread

_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.thread: ; preds = %bb.b, %bb.c, %bb.j
  %.0 = phi ptr [ %i.u, %bb.j ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #6

declare void @ures_close_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, i32 } @_ZN6icu_7812_GLOBAL__N_16Parser9nextTokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) initializes((40, 52)) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %i.f, align 8, !tbaa !29
  %i.g = load i32, ptr %0, align 8, !tbaa !117    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !127
  %i.k = icmp slt i32 %i.g, %i.j
  br i1 %i.k, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.l = phi i32 [ %i.ab, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %.044 = phi i32 [ %.1, %bb.c ], [ -1, %bb.a ]   ; 2 uses
  %.02643 = phi i32 [ %.127, %bb.c ], [ -1, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.n = add nsw i32 %i.l, 1
  store i32 %i.n, ptr %0, align 8, !tbaa !117
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = sext i8 %i.q to i32
  %i.s = tail call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i32 noundef %i.r) ; 2 uses
  switch i32 %i.s, label %bb.b [
    i32 0, label %..thread_crit_edge47
    i32 1, label %.lr.ph._crit_edge
  ], !llvm.loop !172

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load i32, ptr %0, align 8, !tbaa !117
  br label %bb.c, !llvm.loop !172

bb.b:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.t, align 1, !tbaa !16
  %i.w = lshr i8 %i.v, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = tail call noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.u, i32 noundef %i.x) ; 2 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !117    ; 3 uses
  %i.aa = icmp eq i32 %i.s, 2
  br i1 %i.aa, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge, %bb.b
  %i.ab = phi i32 [ %i.z, %bb.b ], [ %.pre, %.lr.ph._crit_edge ] ; 2 uses
  %.127 = phi i32 [ %i.z, %bb.b ], [ %.02643, %.lr.ph._crit_edge ] ; 2 uses
  %.1 = phi i32 [ %i.y, %bb.b ], [ %.044, %.lr.ph._crit_edge ] ; 2 uses
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !127
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.thread

..thread_crit_edge47:                             ; preds = %.lr.ph
  br label %.thread, !llvm.loop !172

.thread:                                          ; preds = %bb.c, %bb.b, %..thread_crit_edge47
  %.228 = phi i32 [ %.02643, %..thread_crit_edge47 ], [ %.127, %bb.c ], [ %i.z, %bb.b ]
  %.2 = phi i32 [ %.044, %..thread_crit_edge47 ], [ %.1, %bb.c ], [ %i.y, %bb.b ] ; 8 uses
  %i.ae = icmp sgt i32 %.2, -1
  br i1 %i.ae, label %bb.d, label %.thread.thread

bb.d:                                             ; preds = %.thread
  store i32 %.228, ptr %0, align 8, !tbaa !117
  %i.af = zext nneg i32 %.2 to i64                ; 5 uses
  %i.ag = icmp samesign ult i32 %.2, 128
  br i1 %i.ag, label %_ZN6icu_7812_GLOBAL__N_15TokenC2El.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %.2, 192
  br i1 %i.ah, label %_ZN6icu_7812_GLOBAL__N_15TokenC2El.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i32 %.2, 256
  br i1 %i.ai, label %_ZN6icu_7812_GLOBAL__N_15TokenC2El.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp samesign ult i32 %.2, 512
  br i1 %i.aj, label %_ZN6icu_7812_GLOBAL__N_15TokenC2El.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp samesign ult i32 %.2, 51200
end_hunk_0
