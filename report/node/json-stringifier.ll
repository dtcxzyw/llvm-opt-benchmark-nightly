inline.NumInlined: 8192
inline.NumDeleted: 1259
begin_hunk_0_@_ZN2v88internal15JsonStringifier13InitializeGapENS0_6HandleINS0_6ObjectEEE:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr %.0.i51, ptr %i.ei, align 8
  %.not165 = icmp eq i32 %.1.i.i, 0
  br i1 %.not165, label %.critedge.thread182, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal8NewArrayItEEPT_m.exit52
  %wide.trip.count = zext i32 %.1.i.i to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ej = icmp ult i32 %.1.i.i, 4
  br i1 %i.ej, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ek = load ptr, ptr %i.ei, align 8
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %indvars.iv.epil
  store i16 32, ptr %i.el, align 2
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre = load ptr, ptr %i.ei, align 8
  br label %.critedge.thread182

.critedge.thread182:                              ; preds = %._crit_edge.loopexit, %_ZN2v88internal8NewArrayItEEPT_m.exit52
  %.pre-phi = phi i64 [ %wide.trip.count, %._crit_edge.loopexit ], [ 0, %_ZN2v88internal8NewArrayItEEPT_m.exit52 ]
  %i.em = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.0.i51, %_ZN2v88internal8NewArrayItEEPT_m.exit52 ]
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %.pre-phi
  store i16 0, ptr %i.en, align 2
  br label %.critedge.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.eo = load ptr, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv
  store i16 32, ptr %i.ep, align 2
  %i.eq = load ptr, ptr %i.ei, align 8
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store i16 32, ptr %i.es, align 2
  %i.et = load ptr, ptr %i.ei, align 8
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i16 32, ptr %i.ev, align 2
  %i.ew = load ptr, ptr %i.ei, align 8
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  store i16 32, ptr %i.ey, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

.critedge:                                        ; preds = %bb.i, %bb.k
  %i.ez = phi ptr [ %.pre172, %bb.k ], [ %i.co, %bb.i ]
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %wide.trip.count170
  store i16 0, ptr %i.fa, align 2
  %i.fb = icmp eq ptr %i.a, null
  br i1 %i.fb, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %.critedge.thread, !prof !17

.critedge.thread:                                 ; preds = %.critedge.thread182, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %bb.e, %.critedge
  %.1161 = phi i1 [ true, %.critedge ], [ true, %bb.e ], [ false, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ true, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ true, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit ], [ false, %_ZN2v88internal6Object8ToNumberIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ true, %.critedge.thread182 ] ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.fc = load i32, ptr %i.f, align 8
  %i.fd = add nsw i32 %i.fc, -1
  store i32 %i.fd, ptr %i.f, align 8
  %i.fe = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.fe, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.x, !prof !11

bb.x:                                             ; preds = %.critedge.thread
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.x, %.critedge.thread, %.critedge
  %.1162 = phi i1 [ true, %.critedge ], [ %.1161, %.critedge.thread ], [ %.1161, %bb.x ]
  ret i1 %.1162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory20NewStringFromTwoByteENS_4base6VectorIKtEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory17NewOrderedHashSetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal14OrderedHashSet3AddINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_NS6_INS0_6ObjectEEE(ptr noundef, ptr, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal14OrderedHashSet18ConvertToKeysArrayEPNS0_7IsolateENS0_6HandleIS1_EENS0_17GetKeysConversionE(ptr noundef, ptr, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden void @_ZN2v88internal15JsonStringifier14ChangeEncodingEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(2688) initializes((8, 12), (48, 56)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = shl i64 %i.c, 1
  %.inv = icmp sgt i64 %i.c, -1
  %i.e = select i1 %.inv, i64 %i.d, i64 -1
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not7 = icmp eq i64 %i.i, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.g, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.not = icmp eq ptr %i.n, %i.o
  %i.p = icmp eq ptr %i.n, null
  %or.cond = or i1 %.not, %i.p
  br i1 %or.cond, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.b ]  ; 2 uses
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.b ]
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i16
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.q
  store i16 %i.u, ptr %i.w, align 2
  %i.x = add i32 %.06, 1                          ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = load i64, ptr %i.h, align 8
  %i.aa = icmp ugt i64 %i.z, %i.y
  br i1 %i.aa, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !18

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  store ptr null, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal15JsonStringifier19ApplyToJsonFunctionENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_12DirectHandleINS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2688) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 8 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 7616 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 128
  br i1 %i.r, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.v = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.v, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ag = ptrtoint ptr %1 to i64
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 -1, i64 16, i1 false)
  %i.ai = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = and i16 %i.al, -96
  %.not.i21.i.i = icmp eq i16 %i.am, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 55448
  %i.aq = load i8, ptr %i.ap, align 8, !range !7
  %i.ar = trunc nuw i8 %i.aq to i1
  %not..i.i.i23.i.i = xor i1 %i.ao, true
  %i.as = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ar
  br i1 %i.as, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 64088
  %i.au = load i8, ptr %i.at, align 8, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 64080
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.ax, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %i.i, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.ay = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.az = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr nonnull %i.j) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.az, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %i.j, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.ab, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ba = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 3 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.e
  %i.bd = add nsw i64 %i.bb, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i64, ptr %i.be monotonic, align 8
  %i.bg = add i64 %i.bf, 13
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i8, ptr %i.bh monotonic, align 1
  %i.bj = and i8 %i.bi, 2
  %.not59 = icmp eq i8 %i.bj, 0
  br i1 %.not59, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bk = load i64, ptr %2, align 8               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i64 %i.bk, i32 noundef 2) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.031.0 = phi ptr [ %i.bo, %bb.g ], [ %2, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bp = ptrtoint ptr %.sroa.031.0 to i64
  store i64 %i.bp, ptr %4, align 8
  %i.bq = load ptr, ptr %0, align 8
  %i.br = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef %i.bq, ptr nonnull %i.ba, ptr %1, ptr nonnull %4, i64 1) #21 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.br, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.bu = load i32, ptr %i.f, align 8
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.f, align 8
  %i.bw = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.e
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #21
  %.pre = load ptr, ptr %i.b, align 8
  %.pre60 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.j, %bb.i
  %i.bx = phi ptr [ %.pre60, %bb.j ], [ %i.e, %bb.i ]
  %i.by = phi ptr [ %.pre, %bb.j ], [ %i.c, %bb.i ] ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bx
  br i1 %i.bz, label %bb.k, label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit, !prof !6

bb.k:                                             ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  %i.ca = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #21
  br label %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit

_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.k
  %.0.i.i = phi ptr [ %i.ca, %bb.k ], [ %i.by, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ] ; 3 uses
  %i.cb = ptrtoint ptr %.0.i.i to i64
  %i.cc = add i64 %i.cb, 8
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.cd, ptr %i.b, align 8
  store i64 %i.bt, ptr %.0.i.i, align 8
  %i.ce = load ptr, ptr %i.b, align 8
  %i.cf = load ptr, ptr %i.d, align 8
  %i.cg = load i32, ptr %i.f, align 8
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.f, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.h, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit
  %.sroa.6.0 = phi ptr [ %i.ce, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit ], [ %i.c, %bb.h ]
  %.sroa.10.0 = phi ptr [ %i.cf, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit ], [ %i.e, %bb.h ]
  %.sroa.034.0 = phi ptr [ %.0.i.i, %_ZN2v88internal11HandleScope14CloseAndEscapeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEESH_SH_.exit ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.e, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit ], [ %i.c, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit ], [ %i.c, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.c, %bb.e ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit ], [ %i.e, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit ], [ %i.e, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.e, %bb.e ] ; 2 uses
  %.sroa.034.1 = phi ptr [ %.sroa.034.0, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit ], [ null, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit ], [ %1, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit ], [ %1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr %.sroa.6.1, ptr %i.b, align 8
  %i.ci = load i32, ptr %i.f, align 8
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.f, align 8
  %i.ck = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.ck, %.sroa.10.1
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread
  store ptr %.sroa.10.1, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread
  ret ptr %.sroa.034.1
}

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1), i64, i32 noundef) local_unnamed_addr #4

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal15JsonStringifier21ApplyReplacerFunctionENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_12DirectHandleINS0_6ObjectEEESH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2688) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [2 x %"class.v8::internal::DirectHandle"], align 16 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load i64, ptr %2, align 8                ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8
  %i.m = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i64 %i.i, i32 noundef 2) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.029.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.n = ptrtoint ptr %.sroa.029.0 to i64
  store i64 %i.n, ptr %4, align 16
end_hunk_0
begin_hunk_1_@_ZN2v88internal15JsonStringifier10Serialize_ILb0EEENS1_6ResultENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEbNS4_INS0_6ObjectEEE:bb.a
  store i8 1, ptr %i.bes, align 1
  br label %_ZN2v88internal15JsonStringifier8StackPopEv.exit315

bb.iz:                                            ; preds = %.critedge.i
  %i.bhf = load ptr, ptr %0, align 8
  %i.bhg = call ptr @_ZN2v88internal6Object20GetPropertyOrElementEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef %i.bhf, ptr nonnull %.sroa.0355.3, ptr nonnull %.0.i.i236) ; 2 uses
  %i.bhh = icmp eq ptr %i.bhg, null
  br i1 %i.bhh, label %_ZN2v88internal15JsonStringifier8StackPopEv.exit315, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit.thread: ; preds = %bb.iz, %bb.ix, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.0391.0 = phi ptr [ %.0.i194, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.bhc, %bb.ix ], [ %i.bhg, %bb.iz ]
  %i.bhi = trunc nuw i8 %.069.i962 to i1          ; 2 uses
  %i.bhj = call noundef i32 @_ZN2v88internal15JsonStringifier10Serialize_ILb1EEENS1_6ResultENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEbNS4_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr %.sroa.0391.0, i1 noundef zeroext %i.bhi, ptr nonnull %.0.i.i236) ; 3 uses
  %i.bhk = icmp ne i32 %i.bhj, 1
  %or.cond.not.i = or i1 %i.bhk, %i.bhi
  %spec.store.select6.i = select i1 %or.cond.not.i, i8 %.069.i962, i8 1
  %i.bhl = and i32 %i.bhj, -2
  %or.cond5.i = icmp eq i32 %i.bhl, 2
  br i1 %or.cond5.i, label %_ZN2v88internal15JsonStringifier8StackPopEv.exit315, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.ir, %bb.io, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit.thread
  %.271.i = phi i8 [ %.069.i962, %bb.ir ], [ %.069.i962, %bb.io ], [ %spec.store.select6.i, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit.thread ] ; 2 uses
  %i.bhm = add nuw nsw i64 %.sroa.0407.0961, 1    ; 2 uses
  %.not852 = icmp eq i64 %i.bhm, %i.bep
  br i1 %.not852, label %._crit_edge964, label %bb.io

._crit_edge964:                                   ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit
  %i.bhn = trunc nuw i8 %.271.i to i1
  %i.bho = load i32, ptr %i.beg, align 8
  %i.bhp = add nsw i32 %i.bho, -1
  store i32 %i.bhp, ptr %i.beg, align 8
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bhr = load ptr, ptr %i.bhq, align 8
  %i.bhs = icmp ne ptr %i.bhr, null
  %or.cond847.not = select i1 %i.bhn, i1 %i.bhs, i1 false
  br i1 %or.cond847.not, label %bb.ja, label %_ZN2v88internal15JsonStringifier7NewLineEv.exit

bb.ja:                                            ; preds = %._crit_edge964
  call void @_ZN2v88internal15JsonStringifier14NewLineOutlineEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier7NewLineEv.exit

_ZN2v88internal15JsonStringifier7NewLineEv.exit:  ; preds = %._crit_edge964.thread, %bb.ja, %._crit_edge964
  %i.bht = load i32, ptr %i.bdn, align 8
  %i.bhu = icmp eq i32 %i.bht, 0
  %i.bhv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.bhw = load i64, ptr %i.bhv, align 8          ; 3 uses
  %i.bhx = add i64 %i.bhw, 1                      ; 2 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.bhu, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZN2v88internal15JsonStringifier7NewLineEv.exit
  %i.bhz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bia = load ptr, ptr %i.bhz, align 8
  store i64 %i.bhx, ptr %i.bhv, align 8
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 %i.bhw
  store i8 125, ptr %i.bib, align 1
  %i.bic = load i64, ptr %i.bhv, align 8
  %i.bid = load i64, ptr %i.bhy, align 8
  %i.bie = icmp eq i64 %i.bic, %i.bid
  br i1 %i.bie, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit, !prof !6

bb.jc:                                            ; preds = %_ZN2v88internal15JsonStringifier7NewLineEv.exit
  %i.bif = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.big = load ptr, ptr %i.bif, align 8
  store i64 %i.bhx, ptr %i.bhv, align 8
  %i.bih = getelementptr inbounds nuw [2 x i8], ptr %i.big, i64 %i.bhw
  store i16 125, ptr %i.bih, align 2
  %i.bii = load i64, ptr %i.bhv, align 8
  %i.bij = load i64, ptr %i.bhy, align 8
  %i.bik = icmp eq i64 %i.bii, %i.bij
  br i1 %i.bik, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit, !prof !6

_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split: ; preds = %bb.jc, %bb.jb
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit

_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit: ; preds = %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split, %bb.jc, %bb.jb
  %i.bil = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.bim = load i8, ptr %i.bil, align 1, !range !7, !noundef !8
  %i.bin = trunc nuw i8 %i.bim to i1
  br i1 %i.bin, label %bb.je, label %bb.jd, !prof !6

bb.jd:                                            ; preds = %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit
  %i.bio = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bip = load i32, ptr %i.bio, align 8
  %i.biq = add nsw i32 %i.bip, -1
  store i32 %i.biq, ptr %i.bio, align 8
  br label %_ZN2v88internal15JsonStringifier8StackPopEv.exit315

bb.je:                                            ; preds = %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit
  %i.bir = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bis = load ptr, ptr %i.bir, align 8
  %i.bit = getelementptr inbounds i8, ptr %i.bis, i64 -16
  store ptr %i.bit, ptr %i.bir, align 8
  br label %_ZN2v88internal15JsonStringifier8StackPopEv.exit315

_ZN2v88internal15JsonStringifier8StackPopEv.exit315: ; preds = %bb.iz, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit.thread, %bb.iy, %bb.jd, %bb.je
  %.10.i = phi i32 [ 3, %bb.iy ], [ 1, %bb.je ], [ 1, %bb.jd ], [ %i.bhj, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit.thread ], [ 2, %bb.iz ] ; 2 uses
  %i.biu = icmp eq ptr %i.azg, null
  br i1 %i.biu, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit263, label %_ZN2v88internal15JsonStringifier8StackPopEv.exit315.thread, !prof !141

_ZN2v88internal15JsonStringifier8StackPopEv.exit315.thread: ; preds = %bb.ih, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit163, %bb.ij, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit170, %bb.hv, %bb.hw, %bb.hx, %bb.hz, %bb.ia, %bb.if, %bb.ie, %bb.ik, %_ZN2v88internal15JsonStringifier8StackPopEv.exit315
  %.10.i818 = phi i32 [ %.10.i, %_ZN2v88internal15JsonStringifier8StackPopEv.exit315 ], [ 1, %bb.ie ], [ 1, %bb.if ], [ %i.bdm, %bb.ik ], [ 1, %bb.hz ], [ %i.bav, %bb.hx ], [ %i.bau, %bb.hw ], [ 3, %bb.hv ], [ 1, %bb.ia ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit170 ], [ 1, %bb.ij ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit163 ], [ 1, %bb.ih ] ; 2 uses
  store ptr %i.azi, ptr %i.azh, align 8
  %i.biv = load i32, ptr %i.azl, align 8
  %i.biw = add nsw i32 %i.biv, -1
  store i32 %i.biw, ptr %i.azl, align 8
  %i.bix = load ptr, ptr %i.azj, align 8
  %.not.i228 = icmp eq ptr %i.bix, %i.azk
  br i1 %.not.i228, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit263, label %bb.jf, !prof !11

bb.jf:                                            ; preds = %_ZN2v88internal15JsonStringifier8StackPopEv.exit315.thread
  store ptr %i.azk, ptr %i.azj, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.azg) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit263

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEE8ToHandleISC_EEbPNS0_6HandleIT_EE.exit263: ; preds = %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.2, %bb.bf, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.2, %bb.bb, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit167.2, %bb.at, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit160.2, %bb.ap, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit168.3, %bb.ah, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit161.3, %bb.ac, %bb.jf, %_ZN2v88internal15JsonStringifier8StackPopEv.exit315.thread, %_ZN2v88internal15JsonStringifier12SerializeSmiENS0_6TaggedINS0_3SmiEEE.exit, %bb.ho, %bb.q, %bb.q, %bb.q, %bb.t, %bb.hq, %bb.hn, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, %bb.hf, %bb.he, %_ZN2v88internal15JsonStringifier16SerializeJSArrayENS0_6HandleINS0_7JSArrayEEENS2_INS0_6ObjectEEE.exit, %bb.s, %bb.r, %bb.h, %bb.i, %bb.w, %bb.x, %bb.ak, %bb.al, %bb.aw, %bb.ax, %_ZN2v88internal15JsonStringifier8StackPopEv.exit315, %bb.b
  %.3 = phi i32 [ 2, %bb.b ], [ 1, %_ZN2v88internal15JsonStringifier12SerializeSmiENS0_6TaggedINS0_3SmiEEE.exit ], [ 2, %bb.h ], [ 0, %bb.ho ], [ 1, %bb.hn ], [ 0, %bb.q ], [ %i.azf, %bb.hq ], [ 1, %bb.ax ], [ 1, %bb.r ], [ 2, %bb.s ], [ 0, %bb.q ], [ 2, %bb.i ], [ 1, %bb.x ], [ 1, %bb.al ], [ %.2.i78, %_ZN2v88internal15JsonStringifier16SerializeJSArrayENS0_6HandleINS0_7JSArrayEEENS2_INS0_6ObjectEEE.exit ], [ %i.axp, %bb.hf ], [ 3, %bb.he ], [ 0, %bb.t ], [ 1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit ], [ 0, %bb.q ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.2 ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit160.2 ], [ %.10.i818, %bb.jf ], [ 1, %bb.w ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.2 ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit167.2 ], [ 1, %bb.ak ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit168.3 ], [ 1, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit161.3 ], [ 1, %bb.aw ], [ %.10.i, %_ZN2v88internal15JsonStringifier8StackPopEv.exit315 ], [ %.10.i818, %_ZN2v88internal15JsonStringifier8StackPopEv.exit315.thread ], [ 1, %bb.ac ], [ 1, %bb.ah ], [ 1, %bb.ap ], [ 1, %bb.at ], [ 1, %bb.bb ], [ 1, %bb.bf ], [ 3, %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit ]
  ret i32 %.3
}

declare i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal9JSRawJson16HasInitialLayoutEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.sroa.0.0.copyload.i.i.i3 = load i64, ptr %i.d, align 8
  %i.e = add i64 %.sroa.0.0.copyload.i.i.i3, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 31
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 1063
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN2v88internal7Isolate15js_raw_json_mapEv.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %1) #21
  br label %_ZN2v88internal7Isolate15js_raw_json_mapEv.exit

_ZN2v88internal7Isolate15js_raw_json_mapEv.exit:  ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.s, %bb.b ], [ %i.o, %bb.a ] ; 2 uses
  %i.t = ptrtoint ptr %.0.i.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i.i, align 8
  %i.w = icmp eq i64 %i.c, %i.m
  ret i1 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !7
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.b
  %.pn.i.i26.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ap = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.07.0 = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.sroa.07.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15JsonStringifier12AppendStringENS0_6HandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  %.pre = add i64 %i.a, -1
  %.pre14 = inttoptr i64 %.pre to ptr             ; 3 uses
  br i1 %i.d, label %.loopexit.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic volatile i64, ptr %.pre14 acquire, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = and i16 %i.h, -121
  %i.j = icmp eq i16 %i.i, 1
  br i1 %i.j, label %_ZNK2v88internal6String6IsFlatEv.exit, label %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader

_ZNK2v88internal6String6IsFlatEv.exit:            ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pre14, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader, label %.loopexit

_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader: ; preds = %bb.b, %_ZNK2v88internal6String6IsFlatEv.exit
  br label %_ZNK2v88internal6String6IsFlatEv.exit.thread

_ZNK2v88internal6String6IsFlatEv.exit.thread:     ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.z, %bb.c ], [ %i.a, %_ZNK2v88internal6String6IsFlatEv.exit.thread.preheader ]
  %i.r = add i64 %.sroa.04.0.i, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = and i16 %i.w, 9
  switch i16 %i.x, label %bb.c [
    i16 8, label %.loopexit.loopexit.i
    i16 0, label %.loopexit
  ]

bb.c:                                             ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = load i64, ptr %i.y, align 8
  br label %_ZNK2v88internal6String6IsFlatEv.exit.thread

.loopexit.loopexit.i:                             ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre14, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.loopexit.loopexit.i
  %i.ah = load i64, ptr %i.ae, align 8
  %i.ai = load i64, ptr %i.af, align 8
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.aj, %i.ad
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %i.al = load i8, ptr %i.ag, align 4, !range !7, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit, label %bb.d, !prof !6, !llvm.loop !142

bb.f:                                             ; preds = %bb.d
  call void @_ZN2v88internal15JsonStringifier18AppendStringByCopyENS0_6TaggedINS0_6StringEEEmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE(ptr noundef nonnull align 8 dereferenceable(2688) %0, i64 %i.a, i64 noundef %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

.loopexit:                                        ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread, %_ZNK2v88internal6String6IsFlatEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.an = tail call noundef zeroext i1 @_ZN2v88internal15JsonStringifier15SerializeStringILb1EEEbNS0_6HandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr nonnull %1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit, %.loopexit
  ret void
}

declare noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6Object13ToArrayLengthENS0_6TaggedIS1_EEPj(i64 %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %0, -1
  br i1 %i.c, label %bb.c, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %0, 32
  %i.e = trunc nuw nsw i64 %i.d to i32
  store i32 %i.e, ptr %1, align 4
  br label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.f = add nsw i64 %0, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 130
  br i1 %i.l, label %bb.d, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.m, align 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal19FastJsonStringifierIhE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.02025
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._crit_edge28, label %bb.c, !prof !11

._crit_edge28:                                    ; preds = %bb.b
  %.pre = add i64 %.02025, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.026
  %i.k = sub i64 %.02025, %.026
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef %i.j, i64 noundef %i.k)
  %i.l = shl nuw nsw i64 %i.f, 3
  %i.m = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.l ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #26
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef nonnull %i.m, i64 noundef %i.n)
  %i.o = add i64 %.02025, 1                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.c
  %.pre-phi = phi i64 [ %.pre, %._crit_edge28 ], [ %i.o, %bb.c ] ; 2 uses
  %.122 = phi i1 [ %.02124, %._crit_edge28 ], [ true, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %.026, %._crit_edge28 ], [ %i.o, %bb.c ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !316

bb.e:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa ; 17 uses
  %i.q = sub nuw i64 %2, %.0.lcssa                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 17 uses
  switch i64 %i.q, label %bb.v [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %bb.s
    i64 15, label %bb.t
    i64 16, label %bb.u
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.p, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i16, ptr %i.p, align 1
  store i16 %i.u, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) %i.p, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.p, align 1
  store i32 %i.v, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, ptr noundef nonnull align 1 dereferenceable(5) %i.p, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.s, ptr noundef nonnull align 1 dereferenceable(6) %i.p, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.s, ptr noundef nonnull align 1 dereferenceable(7) %i.p, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.p, align 1
  store i64 %i.w, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.s, ptr noundef nonnull align 1 dereferenceable(9) %i.p, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.s, ptr noundef nonnull align 1 dereferenceable(10) %i.p, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.s, ptr noundef nonnull align 1 dereferenceable(11) %i.p, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) %i.p, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.s, ptr noundef nonnull align 1 dereferenceable(14) %i.p, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.s, ptr noundef nonnull align 1 dereferenceable(15) %i.p, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %i.q, 1
  br i1 %i.x, label %bb.w, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, !prof !11

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.z, ptr %i.r, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, %._crit_edge
  ret i1 %.021.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -32768, 32768) i32 @_ZN2v88internal12_GLOBAL__N_110GetBuiltinEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_12DirectHandleINS0_4NameEEE(ptr noundef %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = ptrtoint ptr %.0.i.i to i64              ; 2 uses
  %i.k = add i64 %i.j, 8
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %i.a, align 8
  store i64 %1, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.pre.pre = load i64, ptr %2, align 8
  %i.m = add i64 %.pre.pre, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 128
  br i1 %i.s, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.c
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.w = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.w, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.j, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 -1, i64 16, i1 false)
  %i.ai = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = and i16 %i.al, -96
  %.not.i21.i.i = icmp eq i16 %i.am, 32
  br i1 %.not.i21.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.aq = load i8, ptr %i.ap, align 8, !range !7
  %i.ar = trunc nuw i8 %i.aq to i1
  %not..i.i.i23.i.i = xor i1 %i.ao, true
  %i.as = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ar
  br i1 %i.as, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.au = load i8, ptr %i.at, align 8, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.d
  %.pn.i.i26.i.i = phi ptr [ %i.ax, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.d ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.ay = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.az = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.az, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.ac, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ba = load i32, ptr %i.x, align 4
  %cond = icmp eq i32 %i.ba, 7
  br i1 %cond, label %bb.g, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.bb = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !6

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #22
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %bb.g
  %i.bd = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.bf = add nsw i64 %i.bd, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = add i16 %i.bk, -2065
  %i.bm = icmp ult i16 %i.bl, 17
  br i1 %i.bm, label %bb.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.i:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bn = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10688
  %i.bp = add i64 %i.bd, 23
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i32, ptr %i.bq monotonic, align 4
  %i.bs = lshr i32 %i.br, 8
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8
  %i.bx = icmp ugt i64 %i.bw, -281474976710657
  br i1 %i.bx, label %bb.j, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit, !prof !6

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34) #22
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit: ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = or i64 %i.ca, 1
  %i.cc = add nuw nsw i64 %i.cb, 89
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = sext i16 %i.ce to i32
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  %.1 = phi i32 [ -1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit ], [ -1, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit ], [ %i.cf, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit ], [ -1, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr %i.b, ptr %i.a, align 8
  %i.cg = load i32, ptr %i.e, align 8
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.e, align 8
  %i.ci = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !11

bb.k:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.k, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  ret i32 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(536) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(536) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 144115188075855871
  br i1 %i.l, label %bb.b, label %bb.e, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 288230376151711743
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 32, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 4 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i.i.i.i, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %_ZSt18uninitialized_moveIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !317

_ZSt18uninitialized_moveIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.t = shl nuw i64 1, %i.k
  %i.u = ptrtoint ptr %i.b to i64
  %i.v = sub i64 %i.u, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  store ptr %i.o, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  store ptr %i.w, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.t
  store ptr %i.x, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #5 comdat align 2 {
end_hunk_2
