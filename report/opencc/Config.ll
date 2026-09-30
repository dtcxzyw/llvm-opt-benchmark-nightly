Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_EC2ERKS6_PS5_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !411  ; 3 uses
  %i.l = add i32 %i.k, 31
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 536870908                  ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #37
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit

_ZN9rapidjson12CrtAllocator6MallocEm.exit:        ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ]
  store ptr %.0.i, ptr %i.g, align 8, !tbaa !451
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit, label %bb.g, !prof !198

bb.g:                                             ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit
  %i.q = zext i32 %i.k to i64
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIjEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.q)
          to label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit7 unwind label %bb.d

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit7: ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !450
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 116
  %.pre8 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !411
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !197
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre12 = load ptr, ptr %.phi.trans.insert11, align 8, !tbaa !148
  %.pre13 = zext i32 %.pre8 to i64                ; 2 uses
  %.pre14 = shl nuw nsw i64 %.pre13, 2
  %i.r = ptrtoint ptr %.pre10 to i64
  %i.s = ptrtoint ptr %.pre12 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp sgt i64 %.pre14, %i.t
  br i1 %i.u, label %bb.h, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit, !prof !307

bb.h:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit7
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIjEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef %.pre13)
          to label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit unwind label %bb.d

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit: ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIjEEvm.exit7, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !451
  tail call void @free(ptr noundef %i.b) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !452  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
  tail call void @free(ptr noundef %i.g) #33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  tail call void @free(ptr noundef %i.l) #33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1: ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E19SearchWithAnchoringINS_19GenericStringStreamIS4_EEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"class.rapidjson::internal::DecodedStream", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %1, ptr %4, align 8, !tbaa !299
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store i32 0, ptr %i.a, align 8, !tbaa !402
  %i.b = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a)
  br i1 %i.b, label %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !402
  br label %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit

_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !411
  %i.k = add i32 %i.j, 31
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !451
  call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.n, i1 false)
  %i.q = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.s = load i32, ptr %i.r, align 8, !tbaa !398
  %i.t = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.s)
  %i.u = zext i1 %i.t to i8                       ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !148
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %.critedge, label %.lr.ph60

.lr.ph60:                                         ; preds = %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit
  %.not = xor i1 %3, true
  %i.y = load i32, ptr %i.a, align 8, !tbaa !402  ; 4 uses
  %.not.i.us70 = icmp eq i32 %i.y, 0              ; 2 uses
  br i1 %2, label %.lr.ph60.split.us, label %.lr.ph60.split

.lr.ph60.split.us:                                ; preds = %.lr.ph60
  br i1 %.not.i.us70, label %.critedge, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph60.split.us
  br i1 %3, label %.lr.ph73.split, label %.lr.ph73.split.us

.lr.ph73.split.us:                                ; preds = %.lr.ph73, %.thread49.loopexit.us.us
  %i.z = phi i32 [ %i.bq, %.thread49.loopexit.us.us ], [ %i.y, %.lr.ph73 ] ; 3 uses
  %.04557.us72.us = phi ptr [ %.058.us71.us, %.thread49.loopexit.us.us ], [ %i.c, %.lr.ph73 ]
  %.058.us71.us = phi ptr [ %.04557.us72.us, %.thread49.loopexit.us.us ], [ %i.g, %.lr.ph73 ] ; 4 uses
  %i.aa = phi ptr [ %i.ah, %.thread49.loopexit.us.us ], [ %i.f, %.lr.ph73 ] ; 2 uses
  %i.ab = phi ptr [ %i.af, %.thread49.loopexit.us.us ], [ %i.d, %.lr.ph73 ]
  %i.ac = load ptr, ptr %4, align 8, !tbaa !403, !nonnull !164, !align !306
  %i.ad = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %i.a)
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph73.split.us
  store i32 0, ptr %i.a, align 8, !tbaa !402
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph73.split.us
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !451
  call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.n, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.058.us71.us, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %.058.us71.us, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !148
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.not3454.us.us = icmp eq ptr %i.ai, %i.aj
  br i1 %.not3454.us.us, label %.critedge, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.d, %bb.j
  %i.ak = phi ptr [ %i.bn, %bb.j ], [ %i.aj, %bb.d ] ; 3 uses
  %.02356.us.us.us76 = phi ptr [ %i.bo, %bb.j ], [ %i.ai, %bb.d ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306 ; 2 uses
  %i.am = load i32, ptr %.02356.us.us.us76, align 4, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !409 ; 3 uses
  %i.at = icmp eq i32 %i.as, %i.z
  %i.au = icmp eq i32 %i.as, -1
  %or.cond35.us.us.us78 = or i1 %i.at, %i.au
  br i1 %or.cond35.us.us.us78, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us
  %i.av = icmp eq i32 %i.as, -2
  br i1 %i.av, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !410 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !149 ; 2 uses
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !413 ; 2 uses
  %5 = icmp sgt i32 %i.bc, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.013.i.us.us.us79 = phi i32 [ %i.ax, %bb.f ], [ %i.bk, %bb.h ] ; 2 uses
  %.not.i36.us.us.us80 = icmp eq i32 %.013.i.us.us.us79, -1
  br i1 %.not.i36.us.us.us80, label %.split.us.us.us85, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = zext i32 %.013.i.us.us.us79 to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.bd ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !413
  %i.bg = and i32 %i.bf, 2147483647
  %.not16.i.us.us.us81 = icmp ult i32 %i.z, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %.not17.i.us.us.us82 = icmp ugt i32 %i.z, %i.bi
  %or.cond.i.us.us.us83 = select i1 %.not16.i.us.us.us81, i1 true, i1 %.not17.i.us.us.us82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i32, ptr %i.bj, align 4
  br i1 %or.cond.i.us.us.us83, label %bb.g, label %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us84, !llvm.loop !1727

_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us84: ; preds = %bb.h
  br i1 %5, label %bb.i, label %bb.j

.split.us.us.us85:                                ; preds = %bb.g
  %6 = icmp slt i32 %i.bc, 0
  br i1 %6, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split.us.us.us85, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us84, %.lr.ph.us.us
  %i.bl = load i32, ptr %i.aq, align 4, !tbaa !407
  %i.bm = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.058.us71.us, i32 noundef %i.bl)
  br i1 %i.bm, label %.loopexit, label %._crit_edge99

._crit_edge99:                                    ; preds = %bb.i
  %.pre100 = load ptr, ptr %i.aa, align 8, !tbaa !148
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge99, %.split.us.us.us85, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us84, %bb.e
  %i.bn = phi ptr [ %.pre100, %._crit_edge99 ], [ %i.ak, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us84 ], [ %i.ak, %bb.e ], [ %i.ak, %.split.us.us.us85 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02356.us.us.us76, i64 4 ; 2 uses
  %.not34.us.us.us87 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not34.us.us.us87, label %.thread49.loopexit.us.us, label %.lr.ph.us.us, !llvm.loop !1728

.thread49.loopexit.us.us:                         ; preds = %bb.j
  %.pre101 = load ptr, ptr %i.ah, align 8, !tbaa !148
  %.pre102 = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.bp = icmp eq ptr %.pre101, %.pre102
  %i.bq = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.bq, 0
  %or.cond92 = select i1 %i.bp, i1 true, i1 %.not.i.us.us
  br i1 %or.cond92, label %.critedge, label %.lr.ph73.split.us, !llvm.loop !1729

.lr.ph73.split:                                   ; preds = %.lr.ph73, %.thread49.loopexit.us
  %i.br = phi i32 [ %i.dj, %.thread49.loopexit.us ], [ %i.y, %.lr.ph73 ] ; 3 uses
  %.04557.us72 = phi ptr [ %.058.us71, %.thread49.loopexit.us ], [ %i.c, %.lr.ph73 ]
  %.058.us71 = phi ptr [ %.04557.us72, %.thread49.loopexit.us ], [ %i.g, %.lr.ph73 ] ; 4 uses
  %i.bs = phi ptr [ %i.bz, %.thread49.loopexit.us ], [ %i.f, %.lr.ph73 ] ; 2 uses
  %i.bt = phi ptr [ %i.bx, %.thread49.loopexit.us ], [ %i.d, %.lr.ph73 ]
  %i.bu = load ptr, ptr %4, align 8, !tbaa !403, !nonnull !164, !align !306
  %i.bv = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull %i.a)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph73.split
  store i32 0, ptr %i.a, align 8, !tbaa !402
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph73.split
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !451
  call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %i.n, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.058.us71, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !149
  %i.bz = getelementptr inbounds nuw i8, ptr %.058.us71, i64 24 ; 3 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !148
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !148 ; 2 uses
  %.not3454.us = icmp eq ptr %i.ca, %i.cb
  br i1 %.not3454.us, label %.critedge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %bb.r
  %i.cc = phi ptr [ %i.dg, %bb.r ], [ %i.cb, %bb.l ] ; 3 uses
  %.02356.us.us.us = phi ptr [ %i.dh, %bb.r ], [ %i.ca, %bb.l ] ; 2 uses
  %.12555.us.us.us = phi i8 [ %.2.us.us.us, %bb.r ], [ 0, %bb.l ] ; 4 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306 ; 2 uses
  %i.ce = load i32, ptr %.02356.us.us.us, align 4, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !409 ; 3 uses
  %i.cl = icmp eq i32 %i.ck, %i.br
  %i.cm = icmp eq i32 %i.ck, -1
  %or.cond35.us.us.us = or i1 %i.cl, %i.cm
  br i1 %or.cond35.us.us.us, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph.us
  %i.cn = icmp eq i32 %i.ck, -2
  br i1 %i.cn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !410 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !149 ; 2 uses
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !413 ; 2 uses
  %7 = icmp sgt i32 %i.cu, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.013.i.us.us.us = phi i32 [ %i.cp, %bb.n ], [ %i.dc, %bb.p ] ; 2 uses
  %.not.i36.us.us.us = icmp eq i32 %.013.i.us.us.us, -1
  br i1 %.not.i36.us.us.us, label %.split.us.us.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = zext i32 %.013.i.us.us.us to i64
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %i.cv ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !413
  %i.cy = and i32 %i.cx, 2147483647
  %.not16.i.us.us.us = icmp ult i32 %i.br, %i.cy
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.da = load i32, ptr %i.cz, align 4
  %.not17.i.us.us.us = icmp ugt i32 %i.br, %i.da
  %or.cond.i.us.us.us = select i1 %.not16.i.us.us.us, i1 true, i1 %.not17.i.us.us.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dc = load i32, ptr %i.db, align 4
  br i1 %or.cond.i.us.us.us, label %bb.o, label %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us, !llvm.loop !1727

_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us: ; preds = %bb.p
  br i1 %7, label %bb.q, label %bb.r

.split.us.us.us:                                  ; preds = %bb.o
  %8 = icmp slt i32 %i.cu, 0
  br i1 %8, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split.us.us.us, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us, %.lr.ph.us
  %i.dd = load i32, ptr %i.ci, align 4, !tbaa !407
  %i.de = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.058.us71, i32 noundef %i.dd)
  %i.df = select i1 %i.de, i8 1, i8 %.12555.us.us.us
  %.pre103 = load ptr, ptr %i.bs, align 8, !tbaa !148
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.split.us.us.us, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us, %bb.m
  %i.dg = phi ptr [ %.pre103, %bb.q ], [ %i.cc, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us ], [ %i.cc, %bb.m ], [ %i.cc, %.split.us.us.us ] ; 2 uses
  %.2.us.us.us = phi i8 [ %i.df, %bb.q ], [ %.12555.us.us.us, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit.us.us.us ], [ %.12555.us.us.us, %bb.m ], [ %.12555.us.us.us, %.split.us.us.us ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.02356.us.us.us, i64 4 ; 2 uses
  %.not34.us.us.us = icmp eq ptr %i.dh, %i.dg
  br i1 %.not34.us.us.us, label %.thread49.loopexit.us, label %.lr.ph.us, !llvm.loop !1728

.thread49.loopexit.us:                            ; preds = %bb.r
  %.pre104 = load ptr, ptr %i.bz, align 8, !tbaa !148
  %.pre105 = load ptr, ptr %i.bx, align 8, !tbaa !149
  %i.di = icmp eq ptr %.pre104, %.pre105
  %i.dj = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i.us = icmp eq i32 %i.dj, 0
  %or.cond93 = select i1 %i.di, i1 true, i1 %.not.i.us
  br i1 %or.cond93, label %.critedge, label %.lr.ph73.split, !llvm.loop !1729

.lr.ph60.split:                                   ; preds = %.lr.ph60
  br i1 %.not.i.us70, label %.critedge, label %.lr.ph68

.thread49.loopexit:                               ; preds = %bb.z
  %.pre97 = load ptr, ptr %i.du, align 8, !tbaa !148
  %.pre98 = load ptr, ptr %i.ds, align 8, !tbaa !149
  %i.dk = icmp eq ptr %.pre97, %.pre98
  %i.dl = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq i32 %i.dl, 0
  %or.cond138 = select i1 %i.dk, i1 true, i1 %.not.i
  br i1 %or.cond138, label %.critedge, label %.lr.ph68, !llvm.loop !1729

.lr.ph68:                                         ; preds = %.lr.ph60.split, %.thread49.loopexit
  %i.dm = phi i32 [ %i.dl, %.thread49.loopexit ], [ %i.y, %.lr.ph60.split ] ; 3 uses
  %.0455767 = phi ptr [ %.05866, %.thread49.loopexit ], [ %i.c, %.lr.ph60.split ]
  %.05866 = phi ptr [ %.0455767, %.thread49.loopexit ], [ %i.g, %.lr.ph60.split ] ; 5 uses
  %i.dn = phi ptr [ %i.du, %.thread49.loopexit ], [ %i.f, %.lr.ph60.split ] ; 2 uses
  %i.do = phi ptr [ %i.ds, %.thread49.loopexit ], [ %i.d, %.lr.ph60.split ]
  %i.dp = load ptr, ptr %4, align 8, !tbaa !403, !nonnull !164, !align !306
  %i.dq = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull %i.a)
  br i1 %i.dq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph68
  store i32 0, ptr %i.a, align 8, !tbaa !402
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph68, %bb.s
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !451
  call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %i.n, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.05866, i64 16 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !149
  %i.du = getelementptr inbounds nuw i8, ptr %.05866, i64 24 ; 3 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !148
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !149 ; 2 uses
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !148
  %.not3454 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not3454, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.z
  %.02356 = phi ptr [ %i.fg, %bb.z ], [ %i.dv, %bb.t ] ; 2 uses
  %.12555 = phi i8 [ %.2, %bb.z ], [ 0, %bb.t ]   ; 4 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306 ; 5 uses
  %i.dy = load i32, ptr %.02356, align 4, !tbaa !75
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !149
  %i.eb = zext i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !409 ; 3 uses
  %i.ef = icmp eq i32 %i.ee, %i.dm
  %i.eg = icmp eq i32 %i.ee, -1
  %or.cond35 = or i1 %i.ef, %i.eg
  br i1 %or.cond35, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.eh = icmp eq i32 %i.ee, -2
  br i1 %i.eh, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !410 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149 ; 2 uses
  %i.em = zext i32 %i.ej to i64
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !413 ; 2 uses
  %9 = icmp sgt i32 %i.eo, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.013.i = phi i32 [ %i.ej, %bb.v ], [ %i.ew, %bb.x ] ; 2 uses
  %.not.i36 = icmp eq i32 %.013.i, -1
  br i1 %.not.i36, label %.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = zext i32 %.013.i to i64
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !413
  %i.es = and i32 %i.er, 2147483647
  %.not16.i = icmp ult i32 %i.dm, %i.es
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.eu = load i32, ptr %i.et, align 4
  %.not17.i = icmp ugt i32 %i.dm, %i.eu
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %.not17.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = load i32, ptr %i.ev, align 4
  br i1 %or.cond.i, label %bb.w, label %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit, !llvm.loop !1727

.split:                                           ; preds = %bb.w
  %10 = icmp slt i32 %i.eo, 0
  br i1 %10, label %bb.y, label %bb.z

_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit: ; preds = %bb.x
  br i1 %9, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.split, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit, %.lr.ph
  %i.ex = load i32, ptr %i.ec, align 4, !tbaa !407
  %i.ey = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.05866, i32 noundef %i.ex)
  %i.ez = trunc nuw i8 %.12555 to i1
  %i.fa = select i1 %i.ey, i1 true, i1 %i.ez      ; 2 uses
  %or.cond = select i1 %.not, i1 %i.fa, i1 false
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %i.fb = zext i1 %i.fa to i8
  %.pre = load ptr, ptr %0, align 8, !tbaa !450
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %.split, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit, %bb.u
  %i.fc = phi ptr [ %.pre, %._crit_edge ], [ %i.dx, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit ], [ %i.dx, %bb.u ], [ %i.dx, %.split ]
  %.2 = phi i8 [ %i.fb, %._crit_edge ], [ %.12555, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit ], [ %.12555, %bb.u ], [ %.12555, %.split ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 112
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !398
  %i.ff = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.05866, i32 noundef %i.fe) ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02356, i64 4 ; 2 uses
  %i.fh = load ptr, ptr %i.dn, align 8, !tbaa !148
  %.not34 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not34, label %.thread49.loopexit, label %.lr.ph, !llvm.loop !1728

.critedge:                                        ; preds = %.thread49.loopexit, %bb.t, %bb.d, %.thread49.loopexit.us.us, %bb.l, %.thread49.loopexit.us, %.lr.ph60.split.us, %.lr.ph60.split, %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit
  %.024.lcssa = phi i8 [ %i.u, %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit ], [ %i.u, %.lr.ph60.split ], [ 0, %bb.d ], [ %i.u, %.lr.ph60.split.us ], [ %.2.us.us.us, %.thread49.loopexit.us ], [ 0, %bb.l ], [ 0, %.thread49.loopexit.us.us ], [ 0, %bb.t ], [ %.2, %.thread49.loopexit ]
  %i.fi = trunc nuw i8 %.024.lcssa to i1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.i, %.critedge
  %.430 = phi i1 [ %i.fi, %.critedge ], [ true, %bb.i ], [ true, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i1 %.430
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !408
  %.not18 = icmp eq i32 %i.g, -1
  br i1 %.not18, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.h = phi ptr [ %i.s, %tailrecurse ], [ %i.f, %bb.a ]
  %i.i = phi ptr [ %i.r, %tailrecurse ], [ %i.e, %bb.a ]
  %accumulator.tr19 = phi i1 [ %i.m, %tailrecurse ], [ false, %bb.a ]
  %i.j = load i32, ptr %i.i, align 4, !tbaa !407
  %i.k = tail call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.j)
  %i.l = load i32, ptr %i.h, align 4, !tbaa !408  ; 2 uses
  %i.m = or i1 %accumulator.tr19, %i.k            ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !164, !align !306
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !408
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i1 [ false, %bb.a ], [ %i.m, %tailrecurse ]
  %.tr17.lcssa = phi i32 [ %2, %bb.a ], [ %i.l, %tailrecurse ] ; 3 uses
  %.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.r, %tailrecurse ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !451
  %i.w = lshr i32 %.tr17.lcssa, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75   ; 2 uses
  %i.aa = and i32 %.tr17.lcssa, 31
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  %i.ac = and i32 %i.z, %i.ab
  %.not15 = icmp eq i32 %i.ac, 0
  br i1 %.not15, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.ad = or i32 %i.z, %i.ab
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !148 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !148
  store i32 %.tr17.lcssa, ptr %i.af, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse._crit_edge, %bb.b
  %i.ah = load i32, ptr %.lcssa, align 4, !tbaa !407
  %i.ai = icmp eq i32 %i.ah, -1
  %accumulator.ret.tr = or i1 %accumulator.tr.lcssa, %i.ai
  ret i1 %accumulator.ret.tr
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE9EndObjectERNS0_23SchemaValidationContextISA_EEj(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.b = load i8, ptr %i.a, align 2, !tbaa !377, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !366  ; 2 uses
  %.not73 = icmp eq i32 %i.j, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.q, label %bb.h, label %bb.k

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.r = phi i32 [ %i.j, %.lr.ph ], [ %i.ak, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !367
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !370, !range !163, !noundef !164
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !433
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !84, !range !163, !noundef !164
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !372
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 412
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !384
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !438, !nonnull !164, !align !306 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %.pre = load i32, ptr %i.i, align 4, !tbaa !366
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  %i.ak = phi i32 [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %.pre, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !1730

bb.h:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 15, ptr %i.an, align 8, !tbaa !439
  %i.ao = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, !prof !200

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v) #33
  %.not.i16.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i16.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 14), align 2, !tbaa !60
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 8), align 8, !tbaa !60
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -281474976710656
  %i.au = or i64 %i.at, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1s to i64)
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE.exit: ; preds = %bb.h, %bb.i, %bb.j
end_hunk_0
