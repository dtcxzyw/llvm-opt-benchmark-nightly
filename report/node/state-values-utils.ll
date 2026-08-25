Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/state-values-utils?download=true
inline.NumInlined: 148
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal8compiler16StateValuesCache17AreValueKeysEqualEPNS2_14StateValuesKeyES4_:bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.01215 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01215
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01215
  %i.q = load ptr, ptr %i.p, align 8
  %.not14 = icmp eq ptr %i.o, %i.q                ; 2 uses
  %i.r = add nuw i64 %.01215, 1                   ; 2 uses
  %exitcond.not = icmp ne i64 %i.r, %i.h
  %or.cond.not = select i1 %.not14, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.preheader ], [ %.not14, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler16StateValuesCache17IsKeysEqualToNodeEPNS2_14StateValuesKeyEPNS1_4NodeE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::SparseInputMask", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 251658240
  %.not.i = icmp eq i32 %i.e, 251658240
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.d, 24
  %i.g = and i32 %i.f, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.g, %bb.b ], [ %i.m, %bb.c ]
  %i.o = sext i32 %i.n to i64
  %.not = icmp eq i64 %i.b, %i.o
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.p = load ptr, ptr %1, align 8
  %i.q = tail call i32 @_ZN2v88internal8compiler17SparseInputMaskOfEPKNS1_8OperatorE(ptr noundef %i.p) #11
  store i32 %i.q, ptr %2, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = call noundef zeroext i1 @_ZN2v88internal8compilerneERKNS1_15SparseInputMaskES4_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.r) #11
  br i1 %i.s, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = load i64, ptr %i.a, align 8              ; 3 uses
  %.not1516 = icmp eq i64 %i.t, 0
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load i32, ptr %i.c, align 4
  %i.x = and i32 %i.w, 251658240
  %.not.i.i = icmp eq i32 %i.x, 251658240
  %i.y = ptrtoint ptr %1 to i64
  %i.z = add i64 %i.y, 32
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.split.us, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 16
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us

_ZNK2v88internal8compiler4Node7InputAtEi.exit.us: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us, %.lr.ph.split.us
  %.017.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ak, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.017.us
  %i.ag = load ptr, ptr %i.af, align 8
  %sext.us = shl i64 %.017.us, 32
  %i.ah = ashr exact i64 %sext.us, 29
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not14.us = icmp eq ptr %i.ag, %i.aj           ; 2 uses
  %i.ak = add nuw i64 %.017.us, 1                 ; 2 uses
  %exitcond22.not = icmp ne i64 %i.ak, %i.t
  %or.cond.not = select i1 %.not14.us, i1 %exitcond22.not, i1 false
  br i1 %or.cond.not, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us, label %.loopexit, !llvm.loop !8

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.lr.ph, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.017 = phi i64 [ %i.aq, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.017
  %i.am = load ptr, ptr %i.al, align 8
  %sext = shl i64 %.017, 32
  %i.an = ashr exact i64 %sext, 29
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not14 = icmp eq ptr %i.am, %i.ap              ; 2 uses
  %i.aq = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.aq, %i.t
  %or.cond29.not = select i1 %.not14, i1 %exitcond.not, i1 false
  br i1 %or.cond29.not, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us, %.preheader, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ %.not14.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us ], [ true, %.preheader ], [ %.not14, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit, %.loopexit
  %.2 = phi i1 [ %.1, %.loopexit ], [ false, %_ZNK2v88internal8compiler4Node10InputCountEv.exit ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @_ZN2v88internal8compiler17SparseInputMaskOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal8compilerneERKNS1_15SparseInputMaskES4_(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler16StateValuesCache19GetEmptyStateValuesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11StateValuesEiNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef 0, i32 0) #11
  %i.i = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef %i.h, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %i.j
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11StateValuesEiNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal8compiler16StateValuesCache15GetWorkingSpaceEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 6
  %.not = icmp ugt i64 %i.i, %1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %1, 1                            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = ashr exact i64 %i.n, 6
  %.not.i.i = icmp ugt i64 %i.j, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.j)
  %.pre.i = load ptr, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.q = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.j ; 2 uses
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = ptrtoaddr ptr %i.q to i64
  %i.v = shl nuw nsw i64 %i.j, 6
  %i.w = add i64 %i.v, %i.u
  %i.x = xor i64 %i.t, -1
  %i.y = add i64 %i.w, %i.x
  %i.z = and i64 %i.y, -64
  %i.aa = add i64 %i.z, 64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.aa, i1 false)
  %.pre3.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit

_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre3 = phi ptr [ %i.q, %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i ], [ %.pre3.pre, %.lr.ph.preheader.i ]
  store ptr %i.r, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit, %bb.a
  %i.ab = phi ptr [ %.pre3, %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit ], [ %i.e, %bb.a ]
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %1
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler16StateValuesCache22GetValuesNodeFromCacheEPPNS1_4NodeEmNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.81, align 8             ; 4 uses
  %5 = alloca %class.anon, align 1                ; 3 uses
  %6 = alloca %"struct.v8::internal::compiler::StateValuesCache::StateValuesKey", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr null, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.d, align 8
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler12_GLOBAL__N_118StateValuesHashKeyEPPNS1_4NodeEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0911.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.al, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.f = mul i64 %.0911.i.epil.init, 23
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.012.i.epil.init
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %._crit_edge.loopexit.i.epilog-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 16777215
  %i.m = zext nneg i32 %i.l to i64
  br label %._crit_edge.loopexit.i.epilog-lcssa

._crit_edge.loopexit.i.epilog-lcssa:              ; preds = %bb.b, %.lr.ph.i.epil.preheader
  %i.n = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.o = add i64 %i.n, %i.f
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %._crit_edge.loopexit.i.epilog-lcssa
  %.lcssa = phi i64 [ %i.al, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.o, %._crit_edge.loopexit.i.epilog-lcssa ]
  %i.p = trunc i64 %.lcssa to i32
  %i.q = and i32 %i.p, 2147483647
  br label %_ZN2v88internal8compiler12_GLOBAL__N_118StateValuesHashKeyEPPNS1_4NodeEm.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %bb.e ] ; 3 uses
  %.0911.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.al, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.r = mul i64 %.0911.i, 23
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.012.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.lr.ph.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 16777215
  %i.y = zext nneg i32 %i.x to i64
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.c, %.lr.ph.i
  %i.z = phi i64 [ %i.y, %bb.c ], [ 0, %.lr.ph.i ]
  %i.aa = add i64 %i.z, %i.r
  %i.ab = mul i64 %i.aa, 23
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.012.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 16777215
  %i.aj = zext nneg i32 %i.ai to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.1
  %i.ak = phi i64 [ %i.aj, %bb.d ], [ 0, %.lr.ph.i.1 ]
  %i.al = add i64 %i.ak, %i.ab                    ; 3 uses
  %i.am = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

_ZN2v88internal8compiler12_GLOBAL__N_118StateValuesHashKeyEPPNS1_4NodeEm.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.09.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %6, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %i.a, ptr %4, align 8
  %i.ao = call noundef ptr @_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS_8internal20ZoneAllocationPolicyEE14LookupOrInsertIS2_ZNS9_14LookupOrInsertIZNS9_14LookupOrInsertERKS2_jEUlvE_EEPNS0_20TemplateHashMapEntryIS2_S2_EESD_jRKT_EUlvE_SE_EESH_SK_jRKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.09.lcssa.i, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_118StateValuesHashKeyEPPNS1_4NodeEm.exit
  %i.as = trunc i64 %2 to i32                     ; 2 uses
  %i.at = load ptr, ptr %0, align 8               ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11StateValuesEiNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i32 noundef %i.as, i32 %3) #11
  %i.ay = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef %i.ax, i32 noundef %i.as, ptr noundef %1, i1 noundef zeroext false) #11 ; 3 uses
  %i.az = load ptr, ptr %0, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = icmp ult i64 %i.bg, 8
  br i1 %i.bh, label %bb.g, label %_ZN2v88internal4Zone3NewINS0_8compiler16StateValuesCache7NodeKeyEJRPNS3_4NodeEEEEPT_DpOT0_.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i64 noundef 8) #11
  %.pre.i.i = load i64, ptr %i.be, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler16StateValuesCache7NodeKeyEJRPNS3_4NodeEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler16StateValuesCache7NodeKeyEJRPNS3_4NodeEEEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %i.bi = phi i64 [ %.pre.i.i, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = add i64 %i.bi, 8
  store i64 %i.bk, ptr %i.be, align 8
  store ptr %i.ay, ptr %i.bj, align 8
  store ptr %i.bj, ptr %i.ao, align 8
  store ptr %i.ay, ptr %i.ap, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_118StateValuesHashKeyEPPNS1_4NodeEm.exit, %_ZN2v88internal4Zone3NewINS0_8compiler16StateValuesCache7NodeKeyEJRPNS3_4NodeEEEEPT_DpOT0_.exit
  %.0 = phi ptr [ %i.ay, %_ZN2v88internal4Zone3NewINS0_8compiler16StateValuesCache7NodeKeyEJRPNS3_4NodeEEEEPT_DpOT0_.exit ], [ %i.aq, %_ZN2v88internal8compiler12_GLOBAL__N_118StateValuesHashKeyEPPNS1_4NodeEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 1, 0) i32 @_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = load i64, ptr %3, align 8                ; 3 uses
  %i.c = icmp ult i64 %i.b, %5
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq ptr %6, null
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.f = phi i64 [ %i.s, %bb.b ], [ %i.b, %.lr.ph ]
  %.023.us = phi i64 [ %i.q, %bb.b ], [ %i.a, %.lr.ph ] ; 4 uses
  %.01922.us = phi i32 [ %i.l, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.g = load i64, ptr %2, align 8                ; 3 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = icmp ult i64 %.023.us, 31
  %or.cond.us = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.us, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = trunc nuw nsw i64 %.023.us to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = or i32 %i.k, %.01922.us                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.f
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = add nuw nsw i64 %i.g, 1
  store i64 %i.o, ptr %2, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  store ptr %i.n, ptr %i.p, align 8
  %i.q = add nuw nsw i64 %.023.us, 1              ; 2 uses
  %i.r = load i64, ptr %3, align 8
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %3, align 8
  %i.t = icmp ult i64 %i.s, %5
  br i1 %i.t, label %.lr.ph.split.us, label %.critedge, !llvm.loop !10

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %i.u = phi i64 [ %i.as, %bb.e ], [ %i.b, %.lr.ph ] ; 3 uses
  %.023 = phi i64 [ %i.ar, %bb.e ], [ %i.a, %.lr.ph ] ; 4 uses
  %.01922 = phi i32 [ %.1, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i64, ptr %2, align 8                ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = icmp ult i64 %.023, 31
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.split
  %i.y = trunc i64 %i.u to i32
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = lshr i32 %i.z, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i32 %i.z, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ae, %i.ah
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = trunc nuw nsw i64 %.023 to i32
  %i.ak = shl nuw nsw i32 1, %i.aj
  %i.al = or i32 %i.ak, %.01922
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.u
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = add nuw nsw i64 %i.v, 1
  store i64 %i.ao, ptr %2, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  store ptr %i.an, ptr %i.ap, align 8
  %.pre = load i64, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i64 [ %.pre, %bb.d ], [ %i.u, %bb.c ]
  %.1 = phi i32 [ %i.al, %bb.d ], [ %.01922, %bb.c ] ; 2 uses
  %i.ar = add nuw nsw i64 %.023, 1                ; 2 uses
  %i.as = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.as, ptr %3, align 8
  %i.at = icmp ult i64 %i.as, %5
  br i1 %i.at, label %.lr.ph.split, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.e, %.lr.ph.split, %bb.b, %.lr.ph.split.us, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.01922.us, %.lr.ph.split.us ], [ %i.l, %bb.b ], [ %.01922, %.lr.ph.split ], [ %.1, %bb.e ]
  %.0.lcssa = phi i64 [ %i.a, %bb.a ], [ %.023.us, %.lr.ph.split.us ], [ %i.q, %bb.b ], [ %.023, %.lr.ph.split ], [ %i.ar, %bb.e ]
  %i.au = trunc i64 %.0.lcssa to i32
  %i.av = shl nuw i32 1, %i.au
  %i.aw = or i32 %i.av, %.019.lcssa
  ret i32 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler16StateValuesCache9BuildTreeEPmPPNS1_4NodeEmPKNS1_21BytecodeLivenessStateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 6
  %.not.i = icmp ugt i64 %i.i, %5
  br i1 %.not.i, label %_ZN2v88internal8compiler16StateValuesCache15GetWorkingSpaceEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %5, 1                            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = ashr exact i64 %i.n, 6
  %.not.i.i.i = icmp ugt i64 %i.j, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.j)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.c, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.q = phi ptr [ %i.e, %bb.b ], [ %.pre.i.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.j ; 2 uses
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i.i
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = ptrtoaddr ptr %i.q to i64
  %i.v = shl nuw nsw i64 %i.j, 6
  %6 = xor i64 %i.t, -1
  %i.w = add i64 %i.v, %6
  %i.x = add i64 %i.w, %i.u
  %i.y = and i64 %i.x, -64
  %i.z = add i64 %i.y, 64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.z, i1 false)
  %.pre3.pre.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i.i
  %.pre3.i = phi ptr [ %i.q, %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE14EnsureCapacityEm.exit.i.i ], [ %.pre3.pre.i, %.lr.ph.preheader.i.i ]
  store ptr %i.r, ptr %i.b, align 8
  br label %_ZN2v88internal8compiler16StateValuesCache15GetWorkingSpaceEm.exit

_ZN2v88internal8compiler16StateValuesCache15GetWorkingSpaceEm.exit: ; preds = %bb.a, %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit.i
  %i.aa = phi ptr [ %.pre3.i, %_ZN2v88internal10ZoneVectorISt5arrayIPNS0_8compiler4NodeELm8EEE6resizeEm.exit.i ], [ %i.e, %bb.a ]
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %5 ; 21 uses
  %i.ac = icmp eq i64 %5, 0
  %i.ad = load i64, ptr %1, align 8               ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %3                  ; 2 uses
  br i1 %i.ac, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal8compiler16StateValuesCache15GetWorkingSpaceEm.exit
  br i1 %i.ae, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.af = add i64 %5, -1
  br label %bb.h

bb.d:                                             ; preds = %_ZN2v88internal8compiler16StateValuesCache15GetWorkingSpaceEm.exit
  br i1 %i.ae, label %.lr.ph.i, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ag = icmp eq ptr %4, null
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %i.ag, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.ab, align 8
  %i.ak = load i64, ptr %1, align 8
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.al, ptr %1, align 8
  %i.am = icmp ult i64 %i.al, %3
  br i1 %i.am, label %.lr.ph.split.us.i.1, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i.preheader
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = load i64, ptr %1, align 8
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.ar, ptr %1, align 8
  %i.as = icmp ult i64 %i.ar, %3
  br i1 %i.as, label %.lr.ph.split.us.i.2, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = load i64, ptr %1, align 8
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.ax, ptr %1, align 8
  %i.ay = icmp ult i64 %i.ax, %3
  br i1 %i.ay, label %.lr.ph.split.us.i.3, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = load i64, ptr %1, align 8
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bd, ptr %1, align 8
  %i.be = icmp ult i64 %i.bd, %3
  br i1 %i.be, label %.lr.ph.split.us.i.4, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = load i64, ptr %1, align 8
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bj, ptr %1, align 8
  %i.bk = icmp ult i64 %i.bj, %3
  br i1 %i.bk, label %.lr.ph.split.us.i.5, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = load i64, ptr %1, align 8
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  store i64 %i.bp, ptr %1, align 8
  %i.bq = icmp ult i64 %i.bp, %3
  br i1 %i.bq, label %.lr.ph.split.us.i.6, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = load i64, ptr %1, align 8
  %i.bv = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bv, ptr %1, align 8
  %i.bw = icmp ult i64 %i.bv, %3
  br i1 %i.bw, label %.lr.ph.split.us.i.7, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = load i64, ptr %1, align 8
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %1, align 8
  br label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.2 = phi i64 [ %.3, %bb.g ], [ 0, %.lr.ph.i ]  ; 5 uses
  %i.cc = phi i64 [ %i.cz, %bb.g ], [ %i.ad, %.lr.ph.i ] ; 3 uses
  %.023.i = phi i64 [ %i.cy, %bb.g ], [ 0, %.lr.ph.i ] ; 4 uses
  %.01922.i = phi i32 [ %.1.i, %bb.g ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cd = icmp samesign ult i64 %.2, 8
  %i.ce = icmp samesign ult i64 %.023.i, 31
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cf = trunc i64 %i.cc to i32
  %i.cg = add nsw i32 %i.cf, 1                    ; 2 uses
  %i.ch = load ptr, ptr %i.ah, align 8
  %i.ci = lshr i32 %i.cg, 6
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = and i32 %i.cg, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.cl, %i.co
  %.not.i35 = icmp eq i64 %i.cp, 0
  br i1 %.not.i35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = trunc nuw nsw i64 %.023.i to i32
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = or i32 %i.cr, %.01922.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cc
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = add nuw nsw i64 %.2, 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.2
  store ptr %i.cu, ptr %i.cw, align 8
  %.pre.i36 = load i64, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.3 = phi i64 [ %.2, %bb.e ], [ %i.cv, %bb.f ]  ; 2 uses
  %i.cx = phi i64 [ %i.cc, %bb.e ], [ %.pre.i36, %bb.f ]
  %.1.i = phi i32 [ %.01922.i, %bb.e ], [ %i.cs, %bb.f ] ; 2 uses
  %i.cy = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.cz = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.cz, ptr %1, align 8
  %i.da = icmp ult i64 %i.cz, %3
  br i1 %i.da, label %.lr.ph.split.i, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit, !llvm.loop !10

_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit: ; preds = %bb.g, %.lr.ph.split.i
  %.5.ph = phi i64 [ %.3, %bb.g ], [ %.2, %.lr.ph.split.i ]
  %.019.lcssa.i.ph = phi i32 [ %.1.i, %bb.g ], [ %.01922.i, %.lr.ph.split.i ]
  %.0.lcssa.i.ph = phi i64 [ %i.cy, %bb.g ], [ %.023.i, %.lr.ph.split.i ]
  %i.db = trunc nuw nsw i64 %.0.lcssa.i.ph to i32
  br label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit

_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit: ; preds = %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit, %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %bb.d
  %.5 = phi i64 [ 4, %.lr.ph.split.us.i.3 ], [ 0, %bb.d ], [ 5, %.lr.ph.split.us.i.4 ], [ 1, %.lr.ph.split.us.i.preheader ], [ 7, %.lr.ph.split.us.i.6 ], [ 2, %.lr.ph.split.us.i.1 ], [ 8, %.lr.ph.split.us.i.7 ], [ 3, %.lr.ph.split.us.i.2 ], [ 6, %.lr.ph.split.us.i.5 ], [ %.5.ph, %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit ]
  %.019.lcssa.i = phi i32 [ 15, %.lr.ph.split.us.i.3 ], [ 0, %bb.d ], [ 31, %.lr.ph.split.us.i.4 ], [ 1, %.lr.ph.split.us.i.preheader ], [ 127, %.lr.ph.split.us.i.6 ], [ 3, %.lr.ph.split.us.i.1 ], [ 255, %.lr.ph.split.us.i.7 ], [ 7, %.lr.ph.split.us.i.2 ], [ 63, %.lr.ph.split.us.i.5 ], [ %.019.lcssa.i.ph, %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit ]
  %.0.lcssa.i = phi i32 [ 4, %.lr.ph.split.us.i.3 ], [ 0, %bb.d ], [ 5, %.lr.ph.split.us.i.4 ], [ 1, %.lr.ph.split.us.i.preheader ], [ 7, %.lr.ph.split.us.i.6 ], [ 2, %.lr.ph.split.us.i.1 ], [ 8, %.lr.ph.split.us.i.7 ], [ 3, %.lr.ph.split.us.i.2 ], [ 6, %.lr.ph.split.us.i.5 ], [ %i.db, %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit.loopexit ]
  %i.dc = shl nuw i32 1, %.0.lcssa.i
  %i.dd = or i32 %i.dc, %.019.lcssa.i
  br label %.thread

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %i.de = phi i64 [ %i.ad, %.lr.ph ], [ %i.ht, %bb.l ] ; 3 uses
  %.06076 = phi i64 [ 0, %.lr.ph ], [ %i.hr, %bb.l ] ; 19 uses
  %i.df = sub nuw i64 %3, %i.de
  %i.dg = sub nuw nsw i64 8, %.06076
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph.i39, label %bb.l

.lr.ph.i39:                                       ; preds = %bb.h
  %i.di = icmp eq ptr %4, null
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %i.di, label %.lr.ph.split.us.i47.preheader, label %.lr.ph.split.i40

.lr.ph.split.us.i47.preheader:                    ; preds = %.lr.ph.i39
  %exitcond.not123 = icmp eq i64 %.06076, 8
  br i1 %exitcond.not123, label %_ZN2v88internal8compiler16StateValuesCache20FillBufferWithValuesEPSt5arrayIPNS1_4NodeELm8EEPmS8_PS5_mPKNS1_21BytecodeLivenessStateE.exit51, label %.lr.ph126

.lr.ph.split.us.i47:                              ; preds = %.lr.ph126
end_hunk_0
