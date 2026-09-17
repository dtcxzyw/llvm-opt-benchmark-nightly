Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSError?download=true
inline.NumInlined: 1842
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes2vm7JSError23constructCallSitesArrayERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !26  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.h, label %bb.i, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !39
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !44
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aq, i64 %i.ao) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = add nuw i64 %.02858, 1                  ; 2 uses
  %i.az = trunc i64 %.02858 to i32
  %i.ba = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.q, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.az, ptr %.0.i.i.i.i.i.i) #17 ; 0 uses
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !307
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  store i32 0, ptr %i.af, align 8, !tbaa !41
  store ptr %i.bd, ptr %i.ae, align 8, !tbaa !40
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !39
  %exitcond.not = icmp eq i64 %i.ay, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !402

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !26  ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre59 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre61 = load ptr, ptr %.phi.trans.insert60, align 8, !tbaa !40
  %i.be = trunc i64 %i.o to i32
  %i.bf = uitofp i32 %i.be to double              ; 2 uses
  %i.bg = icmp ult ptr %.pre59, %.pre61
  br i1 %i.bg, label %._crit_edge.thread, label %bb.k, !prof !403

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %.028.lcssa68 = phi double [ %i.bf, %._crit_edge ], [ 0.000000e+00, %bb.f ]
  %i.bh = phi ptr [ %.pre, %._crit_edge ], [ %2, %bb.f ]
  %i.bi = phi ptr [ %.pre59, %._crit_edge ], [ %i.z, %bb.f ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !39
  store double %.028.lcssa68, ptr %i.bi, align 8, !tbaa !44
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bl = bitcast double %i.bf to i64
  %i.bm = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.pre, i64 %i.bl) #17
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit: ; preds = %._crit_edge.thread, %bb.k
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bi, %._crit_edge.thread ], [ %i.bm, %bb.k ]
  %i.bn = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.q, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 85, ptr %.0.i.i.i.i.i.i.i, ptr %i.q, i32 0) #17 ; 0 uses
  %.sroa.0.0.copyload.i35 = load i64, ptr %i.q, align 8, !tbaa !44
  br label %.thread50

.thread50:                                        ; preds = %.lr.ph, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit
  %.sroa.047.3 = phi i32 [ 1, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit ], [ 0, %.lr.ph ]
  %.sroa.5.0 = phi i64 [ %.sroa.0.0.copyload.i35, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit ], [ undef, %.lr.ph ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %.thread50, %bb.c
  %.sroa.047.5 = phi i32 [ 0, %bb.c ], [ %.sroa.047.3, %.thread50 ], [ 1, %bb.e ]
  %.sroa.5.2 = phi i64 [ undef, %bb.c ], [ %.sroa.5.0, %.thread50 ], [ %.sroa.0.0.copyload.i, %bb.e ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.047.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(80) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.llvh::DenseMap.284", align 8 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 27 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %6 = alloca %"class.hermes::OptValue.211", align 4 ; 9 uses
  %7 = alloca %"struct.std::pair.289", align 8    ; 5 uses
  %8 = alloca %"struct.std::pair.291", align 8    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9480 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !285
  %i.e = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !285
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9488
  %i.g = load i64, ptr %i.f, align 8, !tbaa !434
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !286

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef 1) #17
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %0, ptr %4, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  store ptr %i.l, ptr %i.j, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.q, align 4, !tbaa !37
  store ptr %i.n, ptr %i.o, align 8
  store i32 1, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 3 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  store ptr %i.m, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !41
  store ptr %4, ptr %i.k, align 8, !tbaa !26
  %i.u = call ptr @_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr %2, ptr noundef nonnull align 8 dereferenceable(9816) %0) ; 2 uses
  %.not218 = icmp eq ptr %i.u, inttoptr (i64 -1 to ptr)
  br i1 %.not218, label %bb.d, label %.critedge, !prof !286

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !44
  %i.w = call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.0.0.copyload.i) #17
  br i1 %i.w, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i80 = load i64, ptr %i.v, align 8, !tbaa !44 ; 3 uses
  %i.x = icmp ugt i64 %.sroa.0.0.copyload.i80, -281474976710657
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  store i64 -1970324836974592, ptr %i.v, align 8, !tbaa !50
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !26   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !39
  store i64 %.sroa.0.0.copyload.i80, ptr %i.aa, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 %.sroa.0.0.copyload.i80) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = call ptr @_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0) ; 2 uses
  %.not219 = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr)
  br i1 %.not219, label %.thread, label %.preheader223.preheader, !prof !435

.preheader223.preheader:                          ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !38
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = sub nsw i64 %i.aj, %i.am
  %i.ao = icmp ult i64 %i.an, 35
  br i1 %i.ao, label %.thread.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit

.thread:                                          ; preds = %bb.e, %bb.d, %bb.i
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.v, align 8, !tbaa !44
  %i.ap = call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.0.0.copyload.i81) #17
  br i1 %i.ap, label %bb.as, label %bb.j

bb.j:                                             ; preds = %.thread
  store i64 -1970324836974592, ptr %i.v, align 8, !tbaa !50
  %i.aq = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.k

.thread.i:                                        ; preds = %.preheader223.preheader
  %i.ar = add nuw nsw i64 %i.am, 35
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef 2) #17
  %.pre7.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !38
  %.pre246 = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit: ; preds = %.preheader223.preheader, %.thread.i
  %.pre-phi247 = phi i64 [ %i.am, %.preheader223.preheader ], [ %.pre246, %.thread.i ]
  %i.at = load ptr, ptr %3, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.pre-phi247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.au, ptr noundef nonnull align 2 dereferenceable(70) @.str.4, i64 70, i1 false)
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !38
  %i.av = add i32 %.pre.i.i, 35
  store i32 %i.av, ptr %i.ak, align 8, !tbaa !38
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.aw = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ax = inttoptr i64 %i.aw to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %i.ay = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = icmp eq i32 %i.ay, %i.az
  br i1 %i.bb, label %.thread.i88, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90

.thread.i88:                                      ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit
  %i.bc = add nuw nsw i64 %i.ba, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.bd, i64 noundef %i.bc, i64 noundef 2) #17
  %.pre7.pre.i.i89 = load i32, ptr %i.ak, align 8, !tbaa !38
  %.pre248 = zext i32 %.pre7.pre.i.i89 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit, %.thread.i88
  %.pre-phi249 = phi i64 [ %i.ba, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit ], [ %.pre248, %.thread.i88 ]
  %i.be = load ptr, ptr %3, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %.pre-phi249
  store i16 62, ptr %i.bf, align 1
  %.pre.i.i87 = load i32, ptr %i.ak, align 8, !tbaa !38
  %i.bg = add i32 %.pre.i.i87, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !38
  br label %bb.k

.critedge:                                        ; preds = %bb.c
  %.sroa.0.0.copyload.i.i91 = load i64, ptr %i.u, align 8, !tbaa !44
  %i.bh = and i64 %.sroa.0.0.copyload.i.i91, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.bk = load i32, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %1, align 8, !tbaa !44
  %i.bl = and i64 %.sroa.0.0.copyload.i.i92, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !291
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !306 ; 2 uses
  %i.by = sub i64 %i.bv, %i.bx                    ; 4 uses
  %.not226 = icmp eq i64 %i.bv, %i.bx
  br i1 %.not226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bz = icmp ugt i64 %i.by, 100
  %i.ca = add i64 %i.by, -50
  %i.cb = zext i32 %i.bk to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 40 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.co = add i64 %i.by, -100
  %i.cp = uitofp i64 %i.co to double
  %scevgep = getelementptr i8, ptr %i.a, i64 -1   ; 2 uses
  %i.cq = add i64 %i.b, -1
  %i.cr = add i64 %i.b, -1
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.ar
  %.pre235 = load ptr, ptr %5, align 8, !tbaa !310
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.cs = phi ptr [ %.pre235, %._crit_edge.loopexit ], [ null, %bb.k ]
  call void @_ZdlPv(ptr noundef %i.cs) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.as

bb.l:                                             ; preds = %.lr.ph, %bb.ar
  %.076225 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br i1 %i.bz, label %bb.m, label %bb.q, !prof !286

bb.m:                                             ; preds = %bb.l
  %i.ct = icmp eq i64 %.076225, 50
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull @.str.6, i64 18) ; 0 uses
  %i.cv = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.cp, ptr noundef nonnull %i.a, i64 noundef 32) #17 ; 0 uses
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.cx = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull %i.a, i64 %i.cw) ; 0 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull @.str.7, i64 7) ; 0 uses
  br label %bb.ar

bb.o:                                             ; preds = %bb.m
  %i.cz = icmp ugt i64 %.076225, 50
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %spec.select = call i64 @llvm.umax.i64(i64 %.076225, i64 %i.ca)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.177 = phi i64 [ %.076225, %bb.l ], [ %spec.select, %bb.p ], [ %.076225, %bb.o ] ; 2 uses
  %.sroa.0.0.copyload.i.i94 = load i64, ptr %1, align 8, !tbaa !44
  %i.da = and i64 %.sroa.0.0.copyload.i.i94, 281474976710655
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !306
  %i.de = add i64 %i.dd, %.177                    ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !291
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !14 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 4                 ; 2 uses
  %.not.i.i = icmp ult i64 %i.de, %i.dn
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %i.de, i64 noundef %i.dn) #19
  unreachable

_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit: ; preds = %bb.q
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cb
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !307
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  store i32 %i.bk, ptr %i.t, align 8, !tbaa !41
  store ptr %i.dr, ptr %i.s, align 8, !tbaa !40
  store ptr %i.bj, ptr %i.r, align 8, !tbaa !39
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.de ; 7 uses
  %i.dt = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.du = zext i32 %i.dt to i64
  %i.dv = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = sub nsw i64 %i.du, %i.dw
  %i.dy = icmp ult i64 %i.dx, 8
  br i1 %i.dy, label %.thread.i102, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104

.thread.i102:                                     ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit
  %i.dz = add nuw nsw i64 %i.dw, 8
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.dz, i64 noundef 2) #17
  %.pre7.pre.i.i103 = load i32, ptr %i.cd, align 8, !tbaa !38
  %.pre237 = zext i32 %.pre7.pre.i.i103 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104: ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit, %.thread.i102
  %.pre-phi = phi i64 [ %i.dw, %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit ], [ %.pre237, %.thread.i102 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eb, ptr noundef nonnull align 2 dereferenceable(16) @.str.8, i64 16, i1 false)
  %.pre.i.i101 = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.ec = add i32 %.pre.i.i101, 8
  store i32 %i.ec, ptr %i.cd, align 8, !tbaa !38
  %i.ed = call ptr @_ZN6hermes2vm7JSError22getFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull readonly %1, i64 noundef %i.de)
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50 ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, -844424930131969
  %i.eg = and i64 %i.ee, 281474976710655          ; 2 uses
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = and i1 %i.ef, %i.eh
  br i1 %i.ei, label %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.thread, label %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader

_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104
  %i.ej = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ek = zext i32 %i.ej to i64
  %i.el = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.em = zext i32 %i.el to i64                   ; 3 uses
  %i.en = sub nsw i64 %i.ek, %i.em
  %i.eo = icmp ult i64 %i.en, 9
  br i1 %i.eo, label %.thread.i111, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113

_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.thread: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104
  %i.ep = inttoptr i64 %i.eg to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.s

.thread.i111:                                     ; preds = %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader
  %i.eq = add nuw nsw i64 %i.em, 9
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.eq, i64 noundef 2) #17
  %.pre7.pre.i.i112 = load i32, ptr %i.cd, align 8, !tbaa !38
  %.pre244 = zext i32 %.pre7.pre.i.i112 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113: ; preds = %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader, %.thread.i111
  %.pre-phi245 = phi i64 [ %i.em, %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader ], [ %.pre244, %.thread.i111 ]
  %i.er = load ptr, ptr %3, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %.pre-phi245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.es, ptr noundef nonnull align 2 dereferenceable(18) @.str.9, i64 18, i1 false)
  %.pre.i.i110 = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.et = add i32 %.pre.i.i110, 9
  store i32 %i.et, ptr %i.cd, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.thread, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !312
  %.not = icmp eq ptr %i.eu, null
  br i1 %.not, label %.preheader.preheader, label %bb.t

.preheader.preheader:                             ; preds = %bb.s
  %i.ev = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ew = zext i32 %i.ev to i64
  %i.ex = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = sub nsw i64 %i.ew, %i.ey
  %i.fa = icmp ult i64 %i.ez, 9
  br i1 %i.fa, label %.thread.i120, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit122

.thread.i120:                                     ; preds = %.preheader.preheader
  %i.fb = add nuw nsw i64 %i.ey, 9
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.fb, i64 noundef 2) #17
  %.pre7.pre.i.i121 = load i32, ptr %i.cd, align 8, !tbaa !38
  %.pre238 = zext i32 %.pre7.pre.i.i121 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit122

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit122: ; preds = %.preheader.preheader, %.thread.i120
  %.pre-phi239 = phi i64 [ %i.ey, %.preheader.preheader ], [ %.pre238, %.thread.i120 ]
  %i.fc = load ptr, ptr %3, align 8, !tbaa !36
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %.pre-phi239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.fd, ptr noundef nonnull align 2 dereferenceable(18) @.str.10, i64 18, i1 false)
  %.pre.i.i119 = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.fe = add i32 %.pre.i.i119, 9
  store i32 %i.fe, ptr %i.cd, align 8, !tbaa !38
  br label %bb.aq

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ff = load ptr, ptr %i.ds, align 8, !tbaa !312 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !313
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.fi = call i64 @_ZNK6hermes2vm9CodeBlock29getDebugSourceLocationsOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ff) #17, !noalias !436 ; 2 uses
  %i.fj = and i64 %i.fi, 4294967296
  %.not.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i, label %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit.thread, label %bb.u

_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit.thread: ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %6, i8 0, i64 28, i1 false), !alias.scope !436
  store i32 -1, ptr %i.cf, align 4, !tbaa !315, !alias.scope !436
  store i8 0, ptr %i.cg, align 4, !tbaa !317, !alias.scope !436
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !320, !noalias !436
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !323, !noalias !436 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 240 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !337, !noalias !436 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i123, label %bb.v, label %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit

bb.v:                                             ; preds = %bb.u
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !339, !noalias !436
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !436
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(280) %i.fm) #17, !noalias !436, !inline_history !406
  %.pre.i.i124 = load ptr, ptr %i.fn, align 8, !tbaa !337, !noalias !436
  br label %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit

_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit: ; preds = %bb.u, %bb.v
  %i.fr = phi ptr [ %.pre.i.i124, %bb.v ], [ %i.fo, %bb.u ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.fi to i32
  call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue.211") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %i.fr, i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef %i.fh) #17
  %.pre = load i8, ptr %i.cg, align 4, !tbaa !317, !range !17
  %i.fs = trunc nuw i8 %.pre to i1
  br i1 %i.fs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit
  %i.ft = load i32, ptr %i.cj, align 4, !tbaa !437
  %i.fu = load i32, ptr %i.ck, align 4, !tbaa !438
  br label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127

bb.x:                                             ; preds = %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit.thread, %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.fv = load ptr, ptr %i.ds, align 8, !tbaa !340
  store ptr %i.fv, ptr %8, align 8, !tbaa !440
  store i32 0, ptr %i.ch, align 8, !tbaa !441
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E11try_emplaceIJjEEESt4pairINS_16DenseMapIteratorIS6_jS8_SB_Lb0EEEbEOS6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.289") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.fw = load ptr, ptr %7, align 8, !tbaa !442
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.fy = load i8, ptr %i.ci, align 8, !tbaa !343, !range !17, !noundef !18
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.y, label %._crit_edge232

._crit_edge232:                                   ; preds = %bb.x
  %.pre233 = load i32, ptr %i.fx, align 4, !tbaa !8
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = load ptr, ptr %i.ds, align 8, !tbaa !312
  %i.gb = call noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ga) #17 ; 2 uses
  store i32 %i.gb, ptr %i.fx, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge232, %bb.y
  %i.gc = phi i32 [ %.pre233, %._crit_edge232 ], [ %i.gb, %bb.y ]
  %i.gd = load ptr, ptr %i.ds, align 8, !tbaa !312
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !320
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 80
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !323
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 184
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !443
  %i.gj = add i32 %i.gi, 1
  %i.gk = load i32, ptr %i.fg, align 8, !tbaa !313
  %i.gl = add i32 %i.gc, %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127:     ; preds = %bb.z, %bb.w
  %i.gm = phi i1 [ true, %bb.w ], [ false, %bb.z ]
  %.074 = phi i32 [ %i.ft, %bb.w ], [ %i.gj, %bb.z ]
  %.073 = phi i32 [ %i.fu, %bb.w ], [ %i.gl, %bb.z ]
  %i.gn = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.go = zext i32 %i.gn to i64
  %i.gp = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.gq = zext i32 %i.gp to i64                   ; 3 uses
  %i.gr = sub nsw i64 %i.go, %i.gq
  %i.gs = icmp ult i64 %i.gr, 2
  br i1 %i.gs, label %.thread.i131, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133

.thread.i131:                                     ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127
  %i.gt = add nuw nsw i64 %i.gq, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.gt, i64 noundef 2) #17
  %.pre7.pre.i.i132 = load i32, ptr %i.cd, align 8, !tbaa !38
  %.pre240 = zext i32 %.pre7.pre.i.i132 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133: ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127, %.thread.i131
  %.pre-phi241 = phi i64 [ %i.gq, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127 ], [ %.pre240, %.thread.i131 ]
  %i.gu = load ptr, ptr %3, align 8, !tbaa !36
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.pre-phi241
  store i32 2621472, ptr %i.gv, align 1
  %.pre.i.i130 = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.gw = add i32 %.pre.i.i130, 2                 ; 3 uses
  store i32 %i.gw, ptr %i.cd, align 8, !tbaa !38
  br i1 %i.gm, label %bb.aa, label %.preheader222.preheader

.preheader222.preheader:                          ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133
  %i.gx = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.gy = zext i32 %i.gx to i64
  %i.gz = zext i32 %i.gw to i64                   ; 3 uses
  %i.ha = sub nsw i64 %i.gy, %i.gz
  %i.hb = icmp ult i64 %i.ha, 11
  br i1 %i.hb, label %.thread.i140, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142

.thread.i140:                                     ; preds = %.preheader222.preheader
  %i.hc = add nuw nsw i64 %i.gz, 11
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.hc, i64 noundef 2) #17
  %.pre7.pre.i.i141 = load i32, ptr %i.cd, align 8, !tbaa !38
  %.pre242 = zext i32 %.pre7.pre.i.i141 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142: ; preds = %.preheader222.preheader, %.thread.i140
  %.pre-phi243 = phi i64 [ %i.gz, %.preheader222.preheader ], [ %.pre242, %.thread.i140 ]
  %i.hd = load ptr, ptr %3, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %.pre-phi243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.he, ptr noundef nonnull align 2 dereferenceable(22) @.str.12, i64 22, i1 false)
  %.pre.i.i139 = load i32, ptr %i.cd, align 8, !tbaa !38
  %i.hf = add i32 %.pre.i.i139, 11                ; 2 uses
  store i32 %i.hf, ptr %i.cd, align 8, !tbaa !38
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133
  %i.hg = phi i32 [ %i.hf, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142 ], [ %i.gw, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133 ] ; 2 uses
  %i.hh = load ptr, ptr %i.ds, align 8, !tbaa !312
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !320 ; 3 uses
  %i.hj = load i8, ptr %i.cg, align 4, !tbaa !317, !range !17, !noundef !18
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !323 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 240 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !337 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ho, null
  br i1 %.not.i143, label %bb.ac, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !339
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(280) %i.hm) #17, !inline_history !0
  %.pre.i = load ptr, ptr %i.hn, align 8, !tbaa !337
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit: ; preds = %bb.ab, %bb.ac
  %i.hr = phi ptr [ %.pre.i, %bb.ac ], [ %i.ho, %bb.ab ]
  %i.hs = load i32, ptr %i.cl, align 4, !tbaa !444
  call void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(136) %i.hr, i32 noundef %i.hs)
  %i.ht = load ptr, ptr %9, align 8, !tbaa !344   ; 8 uses
  %i.hu = load i64, ptr %i.cm, align 8, !tbaa !345 ; 17 uses
  %i.hv = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.hw = zext i32 %i.hv to i64
  %i.hx = load i32, ptr %i.cd, align 8, !tbaa !38 ; 2 uses
  %i.hy = zext i32 %i.hx to i64                   ; 3 uses
  %i.hz = sub nsw i64 %i.hw, %i.hy
  %i.ia = icmp ugt i64 %i.hu, %i.hz
  br i1 %i.ia, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  %i.ib = add i64 %i.hu, %i.hy
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.ib, i64 noundef 2) #17
  %.pre.i.i144 = load i32, ptr %i.cd, align 8, !tbaa !38 ; 2 uses
  %.pre7.i.i = zext i32 %.pre.i.i144 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %bb.ad ], [ %i.hy, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit ] ; 2 uses
  %i.ic = phi i32 [ %.pre.i.i144, %bb.ad ], [ %i.hx, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit ]
  %i.id = icmp sgt i64 %i.hu, 0
  br i1 %i.id, label %iter.check349, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit

iter.check349:                                    ; preds = %bb.ae
  %i.ie = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.if = getelementptr [2 x i8], ptr %i.ie, i64 %.pre-phi.i.i ; 7 uses
  %min.iters.check332 = icmp ult i64 %i.hu, 4
  br i1 %min.iters.check332, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck326

vector.memcheck326:                               ; preds = %iter.check349
  %i.ig = add nuw i64 %.pre-phi.i.i, %i.hu
  %i.ih = shl i64 %i.ig, 1
  %scevgep327 = getelementptr i8, ptr %i.ie, i64 %i.ih
  %scevgep328 = getelementptr i8, ptr %i.ht, i64 %i.hu
  %bound0329 = icmp ult ptr %i.if, %scevgep328
  %bound1330 = icmp ult ptr %i.ht, %scevgep327
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check333

vector.main.loop.iter.check333:                   ; preds = %vector.memcheck326
  %min.iters.check334 = icmp ult i64 %i.hu, 16
  br i1 %min.iters.check334, label %vec.epilog.ph353, label %vector.ph335

vector.ph335:                                     ; preds = %vector.main.loop.iter.check333
  %i.ii = and i64 %i.hu, 12
  %n.vec336 = and i64 %i.hu, 9223372036854775792  ; 5 uses
  %i.ij = and i64 %i.hu, 15
  %i.ik = shl nuw i64 %n.vec336, 1
  %i.il = getelementptr i8, ptr %i.if, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.ht, i64 %n.vec336
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body337 ] ; 3 uses
  %i.in = shl i64 %index338, 1
  %next.gep339 = getelementptr i8, ptr %i.if, i64 %i.in ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.ht, i64 %index338 ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep340, i64 8
  %wide.load341 = load <8 x i8>, ptr %next.gep340, align 1, !tbaa !45, !alias.scope !445
  %wide.load342 = load <8 x i8>, ptr %i.io, align 1, !tbaa !45, !alias.scope !445
  %i.ip = zext <8 x i8> %wide.load341 to <8 x i16>
  %i.iq = zext <8 x i8> %wide.load342 to <8 x i16>
  %i.ir = getelementptr i8, ptr %next.gep339, i64 16
  store <8 x i16> %i.ip, ptr %next.gep339, align 2, !tbaa !347, !alias.scope !446, !noalias !445
  store <8 x i16> %i.iq, ptr %i.ir, align 2, !tbaa !347, !alias.scope !446, !noalias !445
  %index.next343 = add nuw i64 %index338, 16      ; 2 uses
  %i.is = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.is, label %middle.block344, label %vector.body337, !llvm.loop !410

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.hu, %n.vec336
  br i1 %cmp.n345, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block344
  %min.epilog.iters.check352 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph353, !prof !350

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check333, %vec.epilog.iter.check351
  %vec.epilog.resume.val346 = phi i64 [ %n.vec336, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check333 ]
  %n.vec354 = and i64 %i.hu, 9223372036854775804  ; 4 uses
  %i.it = and i64 %i.hu, 3
  %i.iu = shl nuw i64 %n.vec354, 1
  %i.iv = getelementptr i8, ptr %i.if, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.ht, i64 %n.vec354
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val346, %vec.epilog.ph353 ], [ %index.next360, %vec.epilog.vector.body355 ] ; 3 uses
  %i.ix = shl i64 %index356, 1
  %next.gep357 = getelementptr i8, ptr %i.if, i64 %i.ix
  %next.gep358 = getelementptr i8, ptr %i.ht, i64 %index356
  %wide.load359 = load <4 x i8>, ptr %next.gep358, align 1, !tbaa !45, !alias.scope !445
  %i.iy = zext <4 x i8> %wide.load359 to <4 x i16>
  store <4 x i16> %i.iy, ptr %next.gep357, align 2, !tbaa !347, !alias.scope !446, !noalias !445
  %index.next360 = add nuw i64 %index356, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next360, %n.vec354
  br i1 %i.iz, label %vec.epilog.middle.block361, label %vec.epilog.vector.body355, !llvm.loop !411

vec.epilog.middle.block361:                       ; preds = %vec.epilog.vector.body355
  %cmp.n362 = icmp eq i64 %i.hu, %n.vec354
  br i1 %cmp.n362, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %vector.memcheck326, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block361
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.hu, %iter.check349 ], [ %i.hu, %vector.memcheck326 ], [ %i.ij, %vec.epilog.iter.check351 ], [ %i.it, %vec.epilog.middle.block361 ]
  %.0811.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.if, %iter.check349 ], [ %i.if, %vector.memcheck326 ], [ %i.il, %vec.epilog.iter.check351 ], [ %i.iv, %vec.epilog.middle.block361 ]
  %.0910.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ht, %iter.check349 ], [ %i.ht, %vector.memcheck326 ], [ %i.im, %vec.epilog.iter.check351 ], [ %i.iw, %vec.epilog.middle.block361 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ja = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45
  %i.jb = zext i8 %i.ja to i16
  store i16 %i.jb, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !347
  %i.jc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 2
  %i.je = add nsw i64 %.012.i.i.i.i.i.i.i.i.i.i, -1
  %i.jf = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.jf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit, !llvm.loop !412

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block344, %vec.epilog.middle.block361, %bb.ae
  %i.jg = trunc i64 %i.hu to i32
  %i.jh = add i32 %i.ic, %i.jg                    ; 2 uses
  store i32 %i.jh, ptr %i.cd, align 8, !tbaa !38
  %i.ji = load ptr, ptr %9, align 8, !tbaa !344   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.cn
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit
  %i.jk = load i64, ptr %i.cn, align 8, !tbaa !45
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #16
  %.pre234.pre = load i32, ptr %i.cd, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pre234 = phi i32 [ %.pre234.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.jh, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ai

bb.af:                                            ; preds = %bb.aa
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hi, i64 104
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !344
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !345 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0                    ; 2 uses
  %spec.select220 = select i1 %i.jq, i64 7, i64 %i.jp ; 17 uses
  %spec.select221 = select i1 %i.jq, ptr @.str.13, ptr %i.jn ; 8 uses
  %i.jr = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.js = zext i32 %i.jr to i64
  %i.jt = zext i32 %i.hg to i64                   ; 3 uses
  %i.ju = sub nsw i64 %i.js, %i.jt
  %i.jv = icmp ugt i64 %spec.select220, %i.ju
  br i1 %i.jv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jw = add i64 %spec.select220, %i.jt
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.jw, i64 noundef 2) #17
  %.pre.i.i153 = load i32, ptr %i.cd, align 8, !tbaa !38 ; 2 uses
  %.pre7.i.i154 = zext i32 %.pre.i.i153 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
end_hunk_0
