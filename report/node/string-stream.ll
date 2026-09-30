Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/string-stream?download=true
inline.NumInlined: 1020
inline.NumDeleted: 524
begin_hunk_0_@_ZN2v88internal12StringStream25PrintMentionedObjectCacheEPNS0_7IsolateE:bb.a
  %i.ay = add i64 %i.m, 23
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = lshr i64 %i.ba, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = sitofp i32 %i.be to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = add nsw i64 %i.ba, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.bi, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.bj = phi double [ %i.bf, %bb.i ], [ %.0.copyload.i.i.i.i.i, %bb.j ]
  %i.bk = fptoui double %i.bj to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.bk)
  tail call void @_ZN2v88internal12StringStream15PrintFixedArrayENS0_6TaggedINS0_10FixedArrayEEEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.ar, i32 noundef %spec.select)
  br label %bb.o

bb.k:                                             ; preds = %bb.c
  %i.bl = icmp eq i16 %i.z, 218
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12StringStream14PrintByteArrayENS0_6TaggedINS0_9ByteArrayEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.m)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bm = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = add i16 %i.bp, -205
  %i.br = icmp ult i16 %i.bq, 13
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  tail call void @_ZN2v88internal12StringStream15PrintFixedArrayENS0_6TaggedINS0_10FixedArrayEEEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.m, i32 noundef %i.bv)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %bb.l, %bb.n, %bb.m, %bb.f
  %i.bw = add nuw i64 %.0129, 1                   ; 2 uses
  %i.bx = load ptr, ptr %i.f, align 8
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = icmp ult i64 %i.bw, %i.cc
  br i1 %i.cd, label %bb.c, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEPNS0_12StringStreamE(i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12StringStream27PrintSecurityTokenIfChangedEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %i.a = add i64 %2, 39
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 1615
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 59784 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8
  %i.n = icmp eq i64 %i.l, %.sroa.0.0.copyload.i
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 %i.l, ptr %3, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull @.str.27, i64 21, ptr nonnull %3, i64 1), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12StringStream13PrintFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEENS4_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal12StringStream14PrintPrototypeEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEENS4_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12StringStream14PrintPrototypeEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEENS4_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.748", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.748", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.748", align 8 ; 4 uses
  %9 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %10 = alloca [1 x %"class.v8::internal::StringStream::FmtElm"], align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.748", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.748", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.748", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.b = add i64 %2, 31
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 23
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8 ; 4 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 284
  br i1 %i.o, label %.split.i, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i

.split.i:                                         ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i64 %i.g, ptr %11, align 8
  %i.p = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %i.p, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i, label %bb.b

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i: ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i

bb.b:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i, %.split.i
  %i.q = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 10624
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i, %.split.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.v = load atomic volatile i64, ptr %i.f acquire, align 8 ; 6 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 284
  br i1 %i.ad, label %bb.c, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

bb.c:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i64 %i.v, ptr %12, align 8
  %i.ae = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store i64 %i.v, ptr %13, align 8
  %i.af = call i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 10624
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ak = load i64, ptr %i.aj, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZNK2v88internal18SharedFunctionInfo4NameEv.exit: ; preds = %bb.b, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.d, %bb.e
  %.sroa.014.1.i = phi i64 [ %i.u, %bb.b ], [ %i.af, %bb.d ], [ %i.ak, %bb.e ], [ %i.v, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.v, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i ] ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp eq i64 %3, %i.an
  br i1 %i.ao, label %.critedge45, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit
  %i.ap = load i64, ptr %i.al, align 8
  %i.aq = icmp eq i64 %3, %i.ap
  br i1 %i.aq, label %.critedge45, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp eq i64 %3, %i.as
  br i1 %i.at, label %.critedge45, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = trunc i64 %3 to i1
  br i1 %i.au, label %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread222

_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.g
  %i.av = add nsw i64 %3, -1
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = icmp eq i16 %i.ba, 302
  br i1 %i.bb, label %.critedge45, label %_ZN2v88internal12IsWasmObjectENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12IsWasmObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bc = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = and i16 %i.bf, -2
  %i.bh = icmp eq i16 %i.bg, 300
  br i1 %i.bh, label %.critedge45, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12IsWasmObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.bi, align 8
  %i.bj = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bj, label %.critedge43, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit

.thread222:                                       ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.sroa.0.0.copyload.i223 = load i64, ptr %i.bk, align 8
  %i.bl = icmp eq i64 %.sroa.0.0.copyload.i223, 0
  br i1 %i.bl, label %.critedge43, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.h
  %i.bm = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = icmp ugt i16 %i.bp, 302
  br i1 %i.bq, label %.preheader, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %.thread222, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.br = call i64 @_ZN2v88internal6Object24GetPrototypeChainRootMapENS0_6TaggedIS1_EEPNS0_7IsolateE(i64 %3, ptr noundef nonnull %1) #16
  %i.bs = add i64 %i.br, 23
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load i64, ptr %i.bt, align 8
  br label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.6.0239.ph = phi i64 [ %i.bu, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ %3, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit
  %.sroa.6.0239 = phi i64 [ %i.dz, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ], [ %.sroa.6.0239.ph, %.preheader ] ; 2 uses
  %i.bv = add i64 %.sroa.6.0239, -1
  %i.bw = inttoptr i64 %i.bv to ptr               ; 3 uses
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2
  %i.cb = icmp ugt i16 %i.ca, 302
  br i1 %i.cb, label %bb.j, label %.critedge2.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store i64 %.sroa.6.0239, ptr %14, align 8
  %i.cc = call i64 @_ZN2v88internal8JSObject17SlowReverseLookupENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 %2) #16 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.cd = load i64, ptr %i.al, align 8
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = trunc i64 %.sroa.014.1.i to i1
  br i1 %i.cf, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48, label %.critedge2.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48: ; preds = %bb.k
  %i.cg = add nsw i64 %.sroa.014.1.i, -1
  %i.ch = inttoptr i64 %i.cg to ptr               ; 5 uses
  %i.ci = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.cj = add i64 %i.ci, 11
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i16, ptr %i.ck monotonic, align 2
  %i.cm = icmp ult i16 %i.cl, 128
  %i.cn = trunc i64 %i.cc to i1
  %or.cond = and i1 %i.cm, %i.cn
  br i1 %or.cond, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47, label %.thread233

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48
  %i.co = add nsw i64 %i.cc, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.cr = add i64 %i.cq, 11
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load atomic volatile i16, ptr %i.cs monotonic, align 2
  %i.cu = icmp ult i16 %i.ct, 128
  br i1 %i.cu, label %bb.l, label %.thread233

bb.l:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47
  %i.cv = icmp eq i64 %i.cc, %.sroa.014.1.i
  br i1 %i.cv, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.cx = add i64 %i.cw, 11
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load atomic volatile i16, ptr %i.cy monotonic, align 2
  %i.da = and i16 %i.cz, -96
  %i.db = icmp eq i16 %i.da, 0
  br i1 %i.db, label %bb.n, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.dc = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.dd = add i64 %i.dc, 11
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load atomic volatile i16, ptr %i.de monotonic, align 2
  %i.dg = and i16 %i.df, -96
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %.thread233, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.m, %bb.n
  %i.di = call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.ch, i64 %i.cc) #16
  br i1 %i.di, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread233

.thread233:                                       ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit48, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit47, %bb.n
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit, %.thread233
  %.1231 = phi i1 [ true, %.thread233 ], [ false, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit ], [ false, %bb.l ] ; 2 uses
  %i.dj = load atomic volatile i64, ptr %i.ch monotonic, align 8
  %i.dk = add i64 %i.dj, 11
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load atomic volatile i16, ptr %i.dl monotonic, align 2
  %i.dn = icmp ult i16 %i.dm, 128
  br i1 %i.dn, label %bb.o, label %.critedge2.thread

bb.o:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp ne i32 %i.dp, 0
  %spec.select = and i1 %.1231, %i.dq
  br label %.critedge2.thread

.critedge2:                                       ; preds = %bb.j
  %i.dr = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.ds = add i64 %i.dr, 11
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load atomic volatile i16, ptr %i.dt monotonic, align 2
  %i.dv = icmp eq i16 %i.du, 302
  br i1 %i.dv, label %.critedge2.thread, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit: ; preds = %.critedge2
  %i.dw = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.dx = add i64 %i.dw, 23
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %i.ea = load i64, ptr %i.am, align 8
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %.critedge2.thread, label %bb.i, !llvm.loop !34

.critedge2.thread:                                ; preds = %bb.i, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit, %.critedge2, %bb.k, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.o
  %.sroa.0108.2 = phi i64 [ %i.cc, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.cc, %bb.k ], [ %i.cc, %bb.o ], [ %.sroa.014.1.i, %.critedge2 ], [ %.sroa.014.1.i, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ], [ %.sroa.014.1.i, %bb.i ] ; 4 uses
  %.4 = phi i1 [ %.1231, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ true, %bb.k ], [ %spec.select, %bb.o ], [ false, %.critedge2 ], [ false, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ], [ false, %bb.i ]
  %i.ec = trunc i64 %.sroa.0108.2 to i1
  br i1 %i.ec, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %.critedge2.thread
  %i.ed = add nsw i64 %.sroa.0108.2, -1
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.eg = add i64 %i.ef, 11
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i16, ptr %i.eh monotonic, align 2
  %i.ej = icmp ult i16 %i.ei, 128
  br i1 %i.ej, label %bb.p, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

bb.p:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %.not.i58 = icmp eq i32 %i.el, 0
  br i1 %.not.i58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = call noundef zeroext i1 @_ZN2v88internal12StringStream3PutENS0_6TaggedINS0_6StringEEEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0108.2, i32 noundef 0, i32 noundef %i.el) ; 0 uses
  br label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull @.str.12, i64 15, ptr null, i64 0), !inline_history !1
  br label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %.critedge2.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i64 %.sroa.0108.2, ptr %10, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull @.str.13, i64 2, ptr nonnull %10, i64 1), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.q, %bb.r, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %.4, label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62, label %_ZN2v88internal12StringStream3PutEc.exit

.critedge45:                                      ; preds = %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit, %bb.f, %_ZN2v88internal9IsJSProxyENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal12IsWasmObjectENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.en = trunc i64 %.sroa.014.1.i to i1
  br i1 %i.en, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i60, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i59

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i60: ; preds = %.critedge45
  %i.eo = add nsw i64 %.sroa.014.1.i, -1
  %i.ep = inttoptr i64 %i.eo to ptr               ; 2 uses
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = add i64 %i.eq, 11
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load atomic volatile i16, ptr %i.es monotonic, align 2
  %i.eu = icmp ult i16 %i.et, 128
  br i1 %i.eu, label %bb.s, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i59

bb.s:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i60
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.ew = load i32, ptr %i.ev, align 4            ; 2 uses
  %.not.i61 = icmp eq i32 %i.ew, 0
  br i1 %.not.i61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = call noundef zeroext i1 @_ZN2v88internal12StringStream3PutENS0_6TaggedINS0_6StringEEEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.014.1.i, i32 noundef 0, i32 noundef %i.ew) ; 0 uses
  br label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62

bb.u:                                             ; preds = %bb.s
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull @.str.12, i64 15, ptr null, i64 0), !inline_history !1
  br label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i59: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i60, %.critedge45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 %.sroa.014.1.i, ptr %9, align 8
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull @.str.13, i64 2, ptr nonnull %9, i64 1), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62

_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.i59, %bb.u, %bb.t, %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull @.str.28, i64 5, ptr null, i64 0), !inline_history !1
  %i.ey = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.ez = add i64 %i.ey, 23
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %i.fb = load atomic volatile i64, ptr %i.fa acquire, align 8 ; 4 uses
  %i.fc = trunc i64 %i.fb to i1
  br i1 %i.fc, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i71, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i65

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i71: ; preds = %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62
  %i.fd = add nsw i64 %i.fb, -1
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load atomic volatile i64, ptr %i.fe monotonic, align 8
  %i.fg = add i64 %i.ff, 11
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load atomic volatile i16, ptr %i.fh monotonic, align 2
  %i.fj = icmp eq i16 %i.fi, 284
  br i1 %i.fj, label %.split.i72, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i67

.split.i72:                                       ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 %i.fb, ptr %6, align 8
  %i.fk = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.fk, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i67, label %bb.v

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i65: ; preds = %_ZN2v88internal12StringStream9PrintNameENS0_6TaggedINS0_6ObjectEEE.exit62
  %.not.i66 = icmp eq i64 %i.fb, 0
  br i1 %.not.i66, label %bb.v, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i67

bb.v:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i65, %.split.i72
  %i.fl = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 10624
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 136
  %i.fp = load i64, ptr %i.fo, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit73

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i67: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i65, %.split.i72, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i71
  %i.fq = load atomic volatile i64, ptr %i.fa acquire, align 8 ; 6 uses
  %i.fr = trunc i64 %i.fq to i1
  br i1 %i.fr, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i70, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit73

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i70: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i67
  %i.fs = add nsw i64 %i.fq, -1
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = load atomic volatile i64, ptr %i.ft monotonic, align 8
  %i.fv = add i64 %i.fu, 11
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i16, ptr %i.fw monotonic, align 2
  %i.fy = icmp eq i16 %i.fx, 284
  br i1 %i.fy, label %bb.w, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit73

bb.w:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %i.fq, ptr %7, align 8
  %i.fz = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.fz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i64 %i.fq, ptr %8, align 8
  %i.ga = call i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
end_hunk_0
