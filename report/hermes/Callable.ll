inline.NumInlined: 2092
inline.NumDeleted: 1158
begin_hunk_0_@_ZN6hermes2vm13BoundFunction27initializeLengthAndName_RJSENS0_6HandleINS0_8CallableEEERNS0_7RuntimeES4_j:bb.a
  store i16 %.sink.i.i.i.i.i.i.i.i.i.i.1, ptr %i.et, align 2, !tbaa !366
  %i.ez = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.fa = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.i, -2
  %i.fb = icmp sgt i64 %.015.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit, !llvm.loop !373

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1, %bb.ap
  %i.fc = trunc i64 %.0.i.i.i to i32
  %i.fd = add i32 %i.ed, %i.fc                    ; 3 uses
  store i32 %i.fd, ptr %i.bb, align 8, !tbaa !298
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 9240 ; 2 uses
  %i.ff = zext i32 %i.fd to i64                   ; 2 uses
  %.not10.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not10.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit
  %i.fg = add nuw i64 %i.ff, 9223372036854775807
  %i.fh = and i64 %i.fg, 9223372036854775807      ; 2 uses
  %i.fi = add nuw i64 %i.fh, 1                    ; 2 uses
  %xtraiter131 = and i64 %i.fi, 3                 ; 3 uses
  %i.fj = icmp samesign ult i64 %i.fh, 3
  br i1 %i.fj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.fi, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.gk, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %.pre, %.lr.ph.i.i.preheader.new ], [ %i.gl, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.fk = load i16, ptr %.0811.i.i, align 2, !tbaa !366
  %i.fl = zext i16 %i.fk to i32
  %i.fm = add i32 %.012.i.i, %i.fl
  %i.fn = mul i32 %i.fm, 1025                     ; 2 uses
  %i.fo = lshr i32 %i.fn, 6
  %i.fp = xor i32 %i.fo, %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !366
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add i32 %i.fp, %i.fs
  %i.fu = mul i32 %i.ft, 1025                     ; 2 uses
  %i.fv = lshr i32 %i.fu, 6
  %i.fw = xor i32 %i.fv, %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !366
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add i32 %i.fw, %i.fz
  %i.gb = mul i32 %i.ga, 1025                     ; 2 uses
  %i.gc = lshr i32 %i.gb, 6
  %i.gd = xor i32 %i.gc, %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 6
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !366
  %i.gg = zext i16 %i.gf to i32
  %i.gh = add i32 %i.gd, %i.gg
  %i.gi = mul i32 %i.gh, 1025                     ; 2 uses
  %i.gj = lshr i32 %i.gi, 6
  %i.gk = xor i32 %i.gj, %i.gi                    ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.gk, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %.pre, %.lr.ph.i.i.preheader ], [ %i.gl, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.gr, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.gs, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.gm = load i16, ptr %.0811.i.i.epil, align 2, !tbaa !366
  %i.gn = zext i16 %i.gm to i32
  %i.go = add i32 %.012.i.i.epil, %i.gn
  %i.gp = mul i32 %i.go, 1025                     ; 2 uses
  %i.gq = lshr i32 %i.gp, 6
  %i.gr = xor i32 %i.gq, %i.gp                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !374

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit
  %.0.lcssa.i.i = phi i32 [ 0, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit ], [ %i.gk, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i.i.epil ]
  %i.gt = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.fe, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.pre, i64 %i.ff, i32 noundef %.0.lcssa.i.i) #11 ; 2 uses
  %.not119 = icmp eq ptr %i.gt, inttoptr (i64 -1 to ptr)
  br i1 %.not119, label %bb.bb, label %bb.aw, !prof !264

bb.aw:                                            ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.gt, align 8, !tbaa !23
  %i.gu = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.gv = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.fe, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.gu) #11
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = or i64 %i.gw, -844424930131968          ; 2 uses
  %i.gy = load ptr, ptr %i.p, align 8, !tbaa !7   ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 192 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !11 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 200
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !21
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %bb.ax, label %bb.ay, !prof !22

bb.ax:                                            ; preds = %bb.aw
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %i.he, ptr %i.gz, align 8, !tbaa !11
  store i64 %i.gx, ptr %i.ha, align 8, !tbaa !23
  br label %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.hf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gy, i64 %i.gx) #11
  br label %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.ax, %bb.ay
  %.0.i.i.i.i.i = phi ptr [ %i.ha, %bb.ax ], [ %i.hf, %bb.ay ]
  %i.hg = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, i32 316, ptr %.0.i.i.i.i.i, i32 0) #11
  %.mask = and i32 %i.hg, 255
  %i.hh = icmp eq i32 %.mask, 0
  br i1 %i.hh, label %bb.bb, label %bb.az, !prof !264

bb.az:                                            ; preds = %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.hj = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 133, i16 16, ptr nonnull %i.hi) #11
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bb, label %bb.ba, !prof !264

bb.ba:                                            ; preds = %bb.az
  %i.hl = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 134, i16 16, ptr nonnull %i.hi) #11
  %i.hm = icmp ne i32 %i.hl, 0
  %. = zext i1 %i.hm to i32
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit, %bb.ba, %bb.az, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.2 = phi i32 [ 0, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ 0, %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit ], [ 0, %bb.az ], [ %., %bb.ba ]
  %i.hn = load ptr, ptr %4, align 8, !tbaa !296   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ba
  br i1 %i.ho, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.hn) #11
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.g, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, %bb.c
  %.5 = phi i32 [ 0, %bb.c ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.2, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ 0, %bb.g ]
  ret i32 %.5
}

declare void @_ZN6hermes2vm8JSObject20initializeLazyObjectERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm13BoundFunction10_boundCallEPS1_PKNS_4inst4InstERNS0_7RuntimeE(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(9816) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !301
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !301
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !376
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %2, i32 noundef 1) #11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9448 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300  ; 9 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !263
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !303 ; 5 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 4 uses
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.p, align 8, !tbaa !23
  store i64 %.sroa.0.0.copyload.i49, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !263
  store ptr %i.p, ptr %i.h, align 8, !tbaa !300
  %i.q = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 9440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !302
  %i.t = ptrtoint ptr %i.s to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit, %bb.c
  %i.u = phi ptr [ %i.p, %bb.c ], [ %i.am, %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit ] ; 2 uses
  %.047 = phi i32 [ %i.n, %bb.c ], [ %i.ac, %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit ]
  %.0 = phi ptr [ %0, %bb.c ], [ %i.ba, %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.q
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add i32 %i.aa, -1                       ; 4 uses
  %i.ac = add i32 %i.ab, %.047                    ; 2 uses
  %i.ad = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.ab, i32 7)
  %i.ae = ptrtoint ptr %i.u to i64
  %i.af = sub i64 %i.t, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = zext i32 %i.ad to i64
  %i.aj = add nuw nsw i64 %i.ai, 32
  %.not125 = icmp samesign ugt i64 %i.aj, %i.ah
  br i1 %.not125, label %.thread120, label %bb.e, !prof !264

.thread120:                                       ; preds = %bb.d
  store ptr %i.i, ptr %i.h, align 8, !tbaa !300
  %i.ak = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %2, i32 noundef 0) #11
  %.pre = ptrtoint ptr %1 to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.al = zext i32 %i.ab to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.al ; 12 uses
  store ptr %i.am, ptr %i.h, align 8, !tbaa !300
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.al, 3            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i.i.i.i, label %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ap = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader, %vector.memcheck
  %.06.i.i.i.i.i.prol = phi ptr [ %4, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %storemerge5.i.i.i.i.i.prol = phi ptr [ %3, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %3 = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.prol = load i64, ptr %.06.i.i.i.i.i.prol, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.prol, ptr %3, align 8, !tbaa !23, !noalias !377
  %4 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vector.ph, label %vector.memcheck, !llvm.loop !388

vector.ph:                                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader
  %.06.i.i.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %4, %vector.memcheck ]
  %storemerge5.i.i.i.i.i.unr = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %3, %vector.memcheck ]
  %5 = icmp ult i64 %i.ap, 56
  br i1 %5, label %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %.06.i.i.i.i.i = phi ptr [ %16, %vector.body ], [ %.06.i.i.i.i.i.unr, %vector.ph ] ; 9 uses
  %storemerge5.i.i.i.i.i = phi ptr [ %15, %vector.body ], [ %storemerge5.i.i.i.i.i.unr, %vector.ph ] ; 8 uses
  %6 = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.06.i.i.i.i.i, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %6, align 8, !tbaa !23, !noalias !377
  %7 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %8 = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i.i.1 = load i64, ptr %7, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.1, ptr %8, align 8, !tbaa !23, !noalias !377
  %9 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %10 = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -24
  %.sroa.0.0.copyload.i.i.i.i.i.i.2 = load i64, ptr %9, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.2, ptr %10, align 8, !tbaa !23, !noalias !377
  %11 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %next.gep = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -32
  %.sroa.0.0.copyload.i.i.i.i.i.i.3 = load i64, ptr %11, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.3, ptr %next.gep, align 8, !tbaa !23, !noalias !377
  %next.gep143 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -40
  %.sroa.0.0.copyload.i.i.i.i.i.i.4 = load i64, ptr %next.gep143, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.4, ptr %i.as, align 8, !tbaa !23, !noalias !377
  %12 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.at = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -48
  %.sroa.0.0.copyload.i.i.i.i.i.i.5 = load i64, ptr %12, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.5, ptr %i.at, align 8, !tbaa !23, !noalias !377
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 48
  %13 = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -56
  %.sroa.0.0.copyload.i.i.i.i.i.i.6 = load i64, ptr %i.au, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.6, ptr %13, align 8, !tbaa !23, !noalias !377
  %14 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %15 = getelementptr inbounds i8, ptr %storemerge5.i.i.i.i.i, i64 -64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.7 = load i64, ptr %14, align 8, !tbaa !23, !noalias !377
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.7, ptr %15, align 8, !tbaa !23, !noalias !377
  %16 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 64 ; 2 uses
  %i.av = icmp eq ptr %16, %i.ao
  br i1 %i.av, label %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit, label %vector.body, !llvm.loop !389

_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit: ; preds = %vector.ph, %vector.body, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %.sroa.0.0.copyload.i.i.i51 = load i32, ptr %i.aw, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq i32 %.sroa.0.0.copyload.i.i.i51, 0 ; 3 uses
  %i.ax = zext i32 %.sroa.0.0.copyload.i.i.i51 to i64
  %i.ay = add i64 %i.ax, %i.q                     ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = select i1 %.not.i.i.i.i.i52, ptr null, ptr %i.az
  %i.bb = load i32, ptr %i.az, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.bb, -16777216
  %i.bc = icmp ne i32 %.mask.i.i.i.i.i.i.i.i, 1140850688
  %.not = or i1 %.not.i.i.i.i.i52, %i.bc
  br i1 %.not, label %bb.f, label %bb.d

bb.f:                                             ; preds = %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !300
  %i.be = or i64 %i.ay, -281474976710656
  %i.bf = select i1 %.not.i.i.i.i.i52, i64 -281474976710656, i64 %i.be ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !263
  %i.bi = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !263
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 0, ptr %i.bk, align 8, !tbaa !263
  %i.bl = zext i32 %i.ac to i64
  %i.bm = or disjoint i64 %i.bl, -1125899906842624
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !263
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.k, ptr %i.bo, align 8, !tbaa !263
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store i64 %i.bf, ptr %i.bp, align 8, !tbaa !263
  %.mask.i = and i64 %i.k, -140737488355328
  %i.bq = icmp eq i64 %.mask.i, -1688849860263936
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %storemerge.in = select i1 %i.bq, ptr %i.br, ptr %.sroa.0.0.copyload.i
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !23
  store i64 %storemerge, ptr %i.am, align 8, !tbaa !263
  %i.bs = and i64 %i.bf, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = lshr i32 %i.bu, 24
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !304
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !305
  %i.cb = tail call { i32, i64 } %i.ca(ptr nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(9816) %2) #11, !inline_history !310 ; 2 uses
  %i.cc = extractvalue { i32, i64 } %i.cb, 0
  %i.cd = extractvalue { i32, i64 } %i.cb, 1
  store ptr %i.i, ptr %i.h, align 8, !tbaa !300
  br label %bb.g

bb.g:                                             ; preds = %.thread120, %bb.f
  %.pre-phi = phi i64 [ %.pre, %.thread120 ], [ %i.bi, %bb.f ]
  %.sroa.097.2 = phi i32 [ %i.ak, %.thread120 ], [ %i.cc, %bb.f ]
  %.sroa.698.2 = phi i64 [ -1688849860263936, %.thread120 ], [ %i.cd, %bb.f ]
  %i.ce = getelementptr inbounds i8, ptr %i.i, i64 -8
  store i64 0, ptr %i.ce, align 8, !tbaa !263
  %i.cf = getelementptr inbounds i8, ptr %i.i, i64 -16
  store i64 %.pre-phi, ptr %i.cf, align 8, !tbaa !263
  %i.cg = getelementptr inbounds i8, ptr %i.i, i64 -24
  store i64 0, ptr %i.cg, align 8, !tbaa !263
  store i64 -1125899906842624, ptr %i.l, align 8, !tbaa !263
  store i64 -1970324836974592, ptr %i.j, align 8, !tbaa !263
  %i.ch = getelementptr inbounds i8, ptr %i.i, i64 -48
  store i64 -1970324836974592, ptr %i.ch, align 8, !tbaa !263
  %.sroa.0.0.copyload.i71 = load i64, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !23
  store i64 %.sroa.0.0.copyload.i71, ptr %i.p, align 8, !tbaa !263
  store i64 -1688849860263936, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !263
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.sroa.097.3 = phi i32 [ %i.g, %bb.b ], [ %.sroa.097.2, %bb.g ]
  %.sroa.698.3 = phi i64 [ -1688849860263936, %bb.b ], [ %.sroa.698.2, %bb.g ]
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !301
  %i.cj = add i64 %i.ci, -1
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !301
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.097.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.698.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes2vm14NativeFunction14_newObjectImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) %2) #0 align 2 {
_ZN6hermes2vm11TwineChar16C2EPKc.exit:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !312
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !316
  store ptr @.str.7, ptr %3, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !317
  %i.e = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr inttoptr (i64 -1 to ptr)
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14NativeFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !23
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm14NativeFunction11_nativeCallEPS1_RNS0_7RuntimeE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  ret { i32, i64 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !285, !noundef !286
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm17CallableBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !287
  br label %_ZN6hermes2vm17CallableBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm17CallableBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr @_ZN6hermes2vm8JSObject2vtE, ptr %i.e, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #11
  store ptr @_ZN6hermes2vm14NativeFunction2vtE, ptr %i.e, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 noundef %5, i64 %6, i32 noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %7, 5                            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.g, %i.i
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.k = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESD_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !265
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESD_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESD_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.c ] ; 9 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i, 281474976710655
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  %i.q = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.q
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.p, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  %i.u = sub i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i, %i.q
  %i.v = trunc i64 %i.u to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.v
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, ptr %i.t, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %2, ptr %i.y, align 8, !tbaa !390
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %3, ptr %i.z, align 8, !tbaa !394
  store i32 1157627944, ptr %i.l, align 8, !tbaa !267
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !7  ; 3 uses
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = or i64 %i.ab, -281474976710656          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESD_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !11
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !23
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESD_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit
  %i.aj = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.ac) #11
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ak = icmp ult i32 %i.a, 6
  br i1 %i.ak, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.f, !prof !22

bb.f:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.al = tail call { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %7, i32 noundef %7) ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit, label %bb.g, !prof !264

bb.g:                                             ; preds = %bb.f
  %i.ao = extractvalue { i32, i64 } %i.al, 1      ; 2 uses
  %.sroa.0.0.copyload.i.i.i14 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i14, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !364
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = and i64 %i.au, 562949949227008
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = icmp eq ptr %i.at, %i.aw
  br i1 %i.ax, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.ay = and i64 %i.ao, 281474976710655
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ba = inttoptr i64 %i.ay to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef %i.ba) #11
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i: ; preds = %bb.h, %bb.g
  %i.bb = sub i64 %i.ao, %i.q
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ar, align 4, !tbaa !3
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit

_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit: ; preds = %bb.f
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.15) #12
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit: ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit, %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i
  %i.bd = inttoptr i64 %6 to ptr
  %i.be = tail call noundef i32 @_ZN6hermes2vm8Callable28defineNameLengthAndPrototypeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDEjNS2_INS0_8JSObjectEEENS1_17WritablePrototypeEb(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %4, i32 noundef %5, ptr %i.bd, i8 noundef zeroext 1, i1 noundef zeroext false) ; 0 uses
  ret ptr %.0.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES9_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 %5, i32 noundef %6, i64 %7, i32 noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %8, 5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.g, %i.i
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.k = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, i32 noundef 40) #11
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !265
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.c ] ; 9 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i, 281474976710655
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  %i.q = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.q
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.p, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  %i.u = sub i64 %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i, %i.q
  %i.v = trunc i64 %i.u to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.v
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, ptr %i.t, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !23 ; 2 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.q
  %i.aa = trunc i64 %i.z to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.aa
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !364
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = and i64 %i.ad, -4194304
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = icmp eq ptr %i.ac, %i.af
  br i1 %i.ag, label %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESG_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ai = inttoptr i64 %i.y to ptr
  tail call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef %i.ai) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESG_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESG_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %3, ptr %i.aj, align 8, !tbaa !390
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %4, ptr %i.ak, align 8, !tbaa !394
  store i32 1157627944, ptr %i.l, align 8, !tbaa !267
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.al, align 8, !tbaa !7  ; 3 uses
  %i.am = ptrtoint ptr %i.l to i64
  %i.an = or i64 %i.am, -281474976710656          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESG_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !11
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !23
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_14NativeFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPvRPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEESG_S6_NS0_10NativeArgsEEEEEPT_DpOT2_.exit
  %i.au = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.an) #11
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_14NativeFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.au, %bb.f ] ; 2 uses
  %i.av = inttoptr i64 %7 to ptr
  %i.aw = tail call noundef i32 @_ZN6hermes2vm8Callable28defineNameLengthAndPrototypeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDEjNS2_INS0_8JSObjectEEENS1_17WritablePrototypeEb(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %5, i32 noundef %6, ptr %i.av, i8 noundef zeroext 1, i1 noundef zeroext false) ; 0 uses
  ret ptr %.0.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm14NativeFunction11_nativeCallEPS1_RNS0_7RuntimeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !301
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !301
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !376
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9472 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  store i64 %i.k, ptr %i.j, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9808
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !395
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !263
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !302
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.k
  %i.t = and i64 %i.s, 34359738360
  %i.u = icmp samesign ugt i64 %i.t, 256
  br i1 %i.u, label %bb.d, label %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit

_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit: ; preds = %bb.c
  store ptr %i.i, ptr %i.h, align 8, !tbaa !300
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !263
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.j, align 8, !tbaa !303
  %i.y = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes2vm7Runtime10allocStackEjNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1, i64 -1688849860263936) #11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !394
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.ad = getelementptr inbounds i8, ptr %i.i, i64 -56
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !263, !noalias !396
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds i8, ptr %i.i, i64 -40
  store ptr %i.ad, ptr %2, align 8, !tbaa !359, !alias.scope !396
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ag, ptr %i.ai, align 8, !tbaa !399, !alias.scope !396
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !401, !alias.scope !396
  %i.ak = call { i32, i64 } %i.aa(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull dead_on_return %2) #11 ; 2 uses
  %i.al = extractvalue { i32, i64 } %i.ak, 0
  %i.am = extractvalue { i32, i64 } %i.ak, 1
  store ptr %i.i, ptr %i.h, align 8, !tbaa !300
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !263
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !303
  %i.aq = icmp ne i32 %i.al, 0                    ; 2 uses
  %spec.select = zext i1 %i.aq to i32
  %spec.select22 = select i1 %i.aq, i64 %i.am, i64 -1688849860263936, !prof !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit, %bb.b
  %.sroa.021.2 = phi i32 [ %i.g, %bb.b ], [ %i.y, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit ], [ %spec.select, %bb.d ]
  %.sroa.5.2 = phi i64 [ -1688849860263936, %bb.b ], [ -1688849860263936, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit ], [ %spec.select22, %bb.d ]
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !301
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.a, align 8, !tbaa !301
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.021.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN6hermes2vm17NativeConstructor14_newObjectImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !23
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !402
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390
  %i.g = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef %i.f) #11
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm26NativeConstructorBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !285, !noundef !286
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !287
  br label %_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr @_ZN6hermes2vm8JSObject2vtE, ptr %i.e, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #11
  store ptr @_ZN6hermes2vm17NativeConstructor2vtE, ptr %i.e, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !23
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = xor i64 %i.f, %i.d
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.h) #11 ; 2 uses
  %i.j = extractvalue { i32, i64 } %i.i, 0
  %i.k = extractvalue { i32, i64 } %i.i, 1
  %i.l = icmp ne i32 %i.j, 0                      ; 2 uses
  %spec.select = zext i1 %i.l to i32
  %spec.select9 = select i1 %i.l, i64 %i.k, i64 -1688849860263936, !prof !22
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %spec.select, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %spec.select9, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !285, !noundef !286
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm17CallableBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !287
  br label %_ZN6hermes2vm17CallableBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm17CallableBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr @_ZN6hermes2vm8JSObject2vtE, ptr %i.e, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.g) #11
  store ptr @_ZN6hermes2vm10JSFunction2vtE, ptr %i.e, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm10JSFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::Handle.245", align 8 ; 2 uses
  %6 = alloca %"class.hermes::vm::Handle", align 8 ; 2 uses
  %7 = alloca %"class.hermes::vm::Handle.244", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %8 = alloca %"class.hermes::vm::Handle.226", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %4, ptr %i.a, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9536
  store ptr %i.b, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = call noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_10JSFunctionELb1ELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS8_INS0_8JSObjectEEENS8_INS0_11HiddenClassEEERNS8_INS0_11EnvironmentEEERPNS0_9CodeBlockEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %i.c, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, 64
  store i32 %i.g, ptr %i.e, align 4
  ret ptr %i.d
}

declare { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm24JSAsyncFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !285, !noundef !286
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !287
  br label %_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr @_ZN6hermes2vm8JSObject2vtE, ptr %i.e, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.g) #11
  store ptr @_ZN6hermes2vm15JSAsyncFunction2vtE, ptr %i.e, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm15JSAsyncFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::Handle.245", align 8 ; 2 uses
  %6 = alloca %"class.hermes::vm::Handle", align 8 ; 2 uses
  %7 = alloca %"class.hermes::vm::Handle.244", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %8 = alloca %"class.hermes::vm::Handle.226", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %4, ptr %i.a, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9536
  store ptr %i.b, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = call noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_15JSAsyncFunctionELb1ELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS8_INS0_8JSObjectEEENS8_INS0_11HiddenClassEEERNS8_INS0_11EnvironmentEEERPNS0_9CodeBlockEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %i.c, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, 64
  store i32 %i.g, ptr %i.e, align 4
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm28JSGeneratorFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !285, !noundef !286
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !287
  br label %_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr @_ZN6hermes2vm8JSObject2vtE, ptr %i.e, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.g) #11
  store ptr @_ZN6hermes2vm19JSGeneratorFunction2vtE, ptr %i.e, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm19JSGeneratorFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::Handle.245", align 8 ; 2 uses
  %6 = alloca %"class.hermes::vm::Handle", align 8 ; 2 uses
  %7 = alloca %"class.hermes::vm::Handle.244", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %8 = alloca %"class.hermes::vm::Handle.226", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %4, ptr %i.a, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9536
  store ptr %i.b, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = call noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_19JSGeneratorFunctionELb1ELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS8_INS0_8JSObjectEEENS8_INS0_11HiddenClassEEERNS8_INS0_11EnvironmentEEERPNS0_9CodeBlockEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %i.c, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, 64
  store i32 %i.g, ptr %i.e, align 4
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm22GeneratorInnerFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #0 comdat align 2 {
_ZN6hermes2vm11TwineChar16C2EPKc.exit:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !312
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 65, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !316
  store ptr @.str.16, ptr %2, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !317
  %i.e = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %i.e, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm31GeneratorInnerFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !285, !noundef !286
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !287
  br label %_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm19JSFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.b, %bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store ptr @_ZN6hermes2vm8JSObject2vtE, ptr %i.e, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.g) #11
  store ptr @_ZN6hermes2vm22GeneratorInnerFunction2vtE, ptr %i.e, align 8, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.h) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.i) #11
  ret void
}

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm22GeneratorInnerFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2, ptr readonly captures(none) %3, ptr noundef %4, ptr noundef readonly captures(none) dead_on_return %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !399
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !265  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !266
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.f, %i.h
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.j = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef 64) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_22GeneratorInnerFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_6DomainEEERNS7_INS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.d, align 8, !tbaa !265
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_22GeneratorInnerFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_6DomainEEERNS7_INS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_22GeneratorInnerFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_6DomainEEERNS7_INS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.c ] ; 15 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !23 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i7.i.i.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i7.i.i.i, 281474976710655
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.p = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.q = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.p
  %i.r = trunc i64 %i.q to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.r
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  %i.t = sub i64 %.sroa.0.0.copyload.i.i.i7.i.i.i, %i.p
  %i.u = trunc i64 %i.t to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, i32 0, i32 %i.u
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i, ptr %i.s, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !23 ; 2 uses
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %i.p
  %i.z = trunc i64 %i.y to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.z
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.w, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !364 ; 2 uses
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = and i64 %i.ac, -4194304
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = icmp eq ptr %i.ab, %i.ae
  br i1 %i.af, label %_ZN6hermes2vm8CallableC2ERNS0_7RuntimeEPNS0_8JSObjectEPNS0_11HiddenClassENS0_6HandleINS0_11EnvironmentEEE.exit.i.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_22GeneratorInnerFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_6DomainEEERNS7_INS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_DpOT2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ah = inttoptr i64 %i.x to ptr
  tail call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef %i.ah) #11
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !364
  br label %_ZN6hermes2vm8CallableC2ERNS0_7RuntimeEPNS0_8JSObjectEPNS0_11HiddenClassENS0_6HandleINS0_11EnvironmentEEE.exit.i.i.i

_ZN6hermes2vm8CallableC2ERNS0_7RuntimeEPNS0_8JSObjectEPNS0_11HiddenClassENS0_6HandleINS0_11EnvironmentEEE.exit.i.i.i: ; preds = %bb.d, %_ZN6hermes2vm7Runtime10makeAFixedINS0_22GeneratorInnerFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_6DomainEEERNS7_INS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_DpOT2_.exit
  %i.ai = phi ptr [ %i.ab, %_ZN6hermes2vm7Runtime10makeAFixedINS0_22GeneratorInnerFunctionELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_6DomainEEERNS7_INS0_8JSObjectEEENS7_INS0_11HiddenClassEEERNS7_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_DpOT2_.exit ], [ %.pre.i.i.i, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = ptrtoint ptr %4 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23
  %i.an = xor i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !288
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i.i.i8.i.i.i = load i64, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i8.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = sub i64 %.sroa.0.0.copyload.i.i.i8.i.i.i, %i.p
  %i.ar = trunc i64 %i.aq to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.ar
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !3
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = and i64 %i.as, -4194304
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = icmp eq ptr %i.ai, %i.au
  br i1 %i.av, label %_ZN6hermes2vm6GCBase13constructCellINS0_22GeneratorInnerFunctionEJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS6_INS0_8JSObjectEEENS6_INS0_11HiddenClassEEERNS6_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_PvjDpOT0_.exit, label %bb.e, !prof !22

bb.e:                                             ; preds = %_ZN6hermes2vm8CallableC2ERNS0_7RuntimeEPNS0_8JSObjectEPNS0_11HiddenClassENS0_6HandleINS0_11EnvironmentEEE.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ax = inttoptr i64 %i.ap to ptr
  tail call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef %i.ax) #11
  br label %_ZN6hermes2vm6GCBase13constructCellINS0_22GeneratorInnerFunctionEJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS6_INS0_8JSObjectEEENS6_INS0_11HiddenClassEEERNS6_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_PvjDpOT0_.exit

_ZN6hermes2vm6GCBase13constructCellINS0_22GeneratorInnerFunctionEJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS6_INS0_8JSObjectEEENS6_INS0_11HiddenClassEEERNS6_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_PvjDpOT0_.exit: ; preds = %_ZN6hermes2vm8CallableC2ERNS0_7RuntimeEPNS0_8JSObjectEPNS0_11HiddenClassENS0_6HandleINS0_11EnvironmentEEE.exit.i.i.i, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.ay, align 4, !tbaa !404
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %i.c, ptr %i.az, align 8, !tbaa !412
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 14, ptr %i.bb, align 8, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 0, ptr %i.bc, align 4, !tbaa !413
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i8 0, ptr %i.bd, align 4, !tbaa !414
  store i32 1241514048, ptr %i.k, align 8, !tbaa !267
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.be, align 8, !tbaa !7  ; 3 uses
  %i.bf = ptrtoint ptr %i.k to i64
  %i.bg = or i64 %i.bf, -281474976710656          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %_ZN6hermes2vm6GCBase13constructCellINS0_22GeneratorInnerFunctionEJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS6_INS0_8JSObjectEEENS6_INS0_11HiddenClassEEERNS6_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_PvjDpOT0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !11
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !23
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_22GeneratorInnerFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.g:                                             ; preds = %_ZN6hermes2vm6GCBase13constructCellINS0_22GeneratorInnerFunctionEJRNS0_7RuntimeERNS0_6HandleINS0_6DomainEEERNS6_INS0_8JSObjectEEENS6_INS0_11HiddenClassEEERNS6_INS0_11EnvironmentEEERPNS0_9CodeBlockEjEEEPT_PvjDpOT0_.exit
  %i.bn = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.bg) #11
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_22GeneratorInnerFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_22GeneratorInnerFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.f ], [ %i.bn, %bb.g ] ; 2 uses
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !399
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !290 ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i, !prof !264

bb.h:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_22GeneratorInnerFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 19
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !415
  br label %_ZN6hermes2vm22GeneratorInnerFunction14getContextSizeEPNS0_9CodeBlockEj.exit

bb.i:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_22GeneratorInnerFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = lshr i32 %i.bw, 25
  br label %_ZN6hermes2vm22GeneratorInnerFunction14getContextSizeEPNS0_9CodeBlockEj.exit

_ZN6hermes2vm22GeneratorInnerFunction14getContextSizeEPNS0_9CodeBlockEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i32 [ %i.bu, %bb.h ], [ %i.bx, %bb.i ]
  %i.by = add i32 %i.bo, 2
  %i.bz = add i32 %i.by, %.0.i.i.i                ; 4 uses
  %i.ca = icmp ugt i32 %i.bz, 513535
  br i1 %i.ca, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i, label %bb.j, !prof !264

bb.j:                                             ; preds = %_ZN6hermes2vm22GeneratorInnerFunction14getContextSizeEPNS0_9CodeBlockEj.exit
  %i.cb = shl nuw nsw i32 %i.bz, 3
  %i.cc = add nuw nsw i32 %i.cb, 8                ; 3 uses
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !265 ; 2 uses
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !266
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.cf, %i.cg
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.k, label %bb.l, !prof !264

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ci = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ch, i32 noundef %i.cc) #11
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i

bb.l:                                             ; preds = %bb.j
  store ptr %i.cf, ptr %i.d, align 8, !tbaa !265
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.l, %bb.k
  %i.cj = phi ptr [ %i.ci, %bb.k ], [ %i.cd, %bb.l ] ; 3 uses
  store i64 0, ptr %i.cj, align 8
  %i.ck = or disjoint i32 %i.cc, 234881024
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !267
  %i.cl = ptrtoint ptr %i.cj to i64
  br label %bb.m

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i: ; preds = %_ZN6hermes2vm22GeneratorInnerFunction14getContextSizeEPNS0_9CodeBlockEj.exit
  %i.cm = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.bz) #11
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %bb.m, !prof !353

bb.m:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i
  %.sroa.3.0.i10.i = phi i64 [ %i.cl, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i ] ; 2 uses
  %i.co = and i64 %.sroa.3.0.i10.i, 281474976710655
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  tail call void @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, i32 noundef %i.bz) #11
  %i.cr = or i64 %.sroa.3.0.i10.i, -281474976710656 ; 3 uses
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !7  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 192 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !21
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.n, label %bb.o, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !11
  store i64 %i.cr, ptr %i.cu, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_6HandleIT_EES4_.exit

bb.o:                                             ; preds = %bb.m
  %i.cz = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cs, i64 %i.cr) #11 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.cz, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_6HandleIT_EES4_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_6HandleIT_EES4_.exit: ; preds = %bb.n, %bb.o
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.cr, %bb.n ], [ %.sroa.0.0.copyload.i.i.pre, %bb.o ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.n ], [ %i.cz, %bb.o ] ; 2 uses
  %i.da = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load ptr, ptr %5, align 8, !tbaa !359, !noalias !416
  %.sroa.06.0.copyload = load i64, ptr %i.dc, align 8, !tbaa !23 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.aa, align 8, !tbaa !364
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = and i64 %i.df, 562949949227008
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = icmp eq ptr %i.de, %i.dh
  br i1 %i.di, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit, label %bb.p, !prof !22

bb.p:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_6HandleIT_EES4_.exit
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i64 %.sroa.06.0.copyload) #11
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_6HandleIT_EES4_.exit, %bb.p
  store i64 %.sroa.06.0.copyload, ptr %i.dd, align 8, !tbaa !263
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !399 ; 2 uses
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit
  %wide.trip.count = zext i32 %i.dj to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit23, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit
  %.sroa.0.0.copyload.i.i20 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.dk = and i64 %.sroa.0.0.copyload.i.i20, 281474976710655
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44 ; 3 uses
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.dn = and i64 %.sroa.0.0.copyload.i.i21, 281474976710655 ; 2 uses
  %i.do = load ptr, ptr %i.aa, align 8, !tbaa !364
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = and i64 %i.dp, 562949949227008
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = icmp eq ptr %i.do, %i.dr
  br i1 %i.ds, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit, label %bb.q, !prof !22

bb.q:                                             ; preds = %._crit_edge
  %i.dt = inttoptr i64 %i.dn to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.dm, ptr noundef %i.dt) #11
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit: ; preds = %._crit_edge, %bb.q
  %.not.i.i.i.i.i = icmp eq i64 %i.dn, 0
  %i.du = sub i64 %.sroa.0.0.copyload.i.i21, %i.p
  %i.dv = trunc i64 %i.du to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.dv
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.dm, align 4, !tbaa !3
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit23 ] ; 3 uses
  %.sroa.0.0.copyload.i.i22 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !23
  %i.dw = and i64 %.sroa.0.0.copyload.i.i22, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dy = load i32, ptr %i.b, align 8, !tbaa !399
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %indvars.iv, %i.dz
  br i1 %i.ea, label %bb.r, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

bb.r:                                             ; preds = %.lr.ph
  %i.eb = load ptr, ptr %5, align 8, !tbaa !359, !noalias !419
  %i.ec = sub nsw i64 0, %indvars.iv
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ee, align 8, !tbaa !23
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %.lr.ph, %bb.r
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.r ], [ -1688849860263936, %.lr.ph ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next ; 3 uses
  %i.eh = load ptr, ptr %i.aa, align 8, !tbaa !364
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = and i64 %i.ei, 1125899902648320
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = icmp eq ptr %i.eh, %i.ek
  br i1 %i.el, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit23, label %bb.s, !prof !22

bb.s:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i64 %.sroa.0.0.i) #11
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit23

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit23: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.s
  store i64 %.sroa.0.0.i, ptr %i.eg, align 8, !tbaa !263
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !422

bb.t:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i, %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit
  %.sroa.035.0 = phi ptr [ %.0.i.i.i.i.i.i.i, %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEE3setERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i ]
  ret ptr %.sroa.035.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22GeneratorInnerFunction17callInnerFunctionENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_6ActionE(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !23 ; 9 uses
  %i.a = ashr i64 %.sroa.0.0.copyload.i, 47
  switch i64 %i.a, label %bb.i [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.b
    i64 -11, label %bb.c
    i64 -10, label %bb.d
    i64 -9, label %bb.e
    i64 -6, label %bb.f
    i64 -5, label %bb.f
    i64 -4, label %bb.g
    i64 -3, label %bb.g
    i64 -2, label %bb.h
    i64 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.c = select i1 %i.b, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.a
  %i.d = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.e = shl i32 %i.d, 3
  %i.f = or disjoint i32 %i.e, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %.sroa.0.0.copyload.i, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = or i32 %i.i, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %.sroa.0.0.copyload.i, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = or i32 %i.m, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %.sroa.0.0.copyload.i, %i.o
  %i.q = trunc i64 %i.p to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.a
  %i.r = bitcast i64 %.sroa.0.0.copyload.i to double
  %i.s = fptosi double %i.r to i32
  %i.t = shl i32 %i.s, 3                          ; 2 uses
  %i.u = ashr exact i32 %i.t, 3
  %i.v = sitofp i32 %i.u to double
  %i.w = bitcast double %i.v to i64
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i, %i.w
  br i1 %i.x, label %bb.j, label %bb.k, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.y = or disjoint i32 %i.t, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !265 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !266
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ab, %i.ad
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !264

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.af = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ae, i32 noundef 16) #11
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.m:                                             ; preds = %bb.k
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !265
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ag = phi ptr [ %i.af, %bb.l ], [ %i.aa, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.ah, align 8, !tbaa !342
  store i32 402653200, ptr %i.ag, align 8, !tbaa !267
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.al, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.a ], [ %i.q, %bb.h ], [ 14, %bb.b ], [ 15, %bb.c ], [ %i.c, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.f ], [ %i.n, %bb.g ], [ %i.y, %bb.j ], [ %i.am, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !23
  %i.an = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !364
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = and i64 %i.as, 562949949227008
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = icmp eq ptr %i.ar, %i.au
  br i1 %i.av, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit, label %bb.n, !prof !22

bb.n:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, i32 %.sroa.04.0.i) #11
  %.sroa.0.0.copyload.i.i26.pre = load i64, ptr %0, align 8, !tbaa !23
  %.pre = and i64 %.sroa.0.0.copyload.i.i26.pre, 281474976710655
  %.pre64 = inttoptr i64 %.pre to ptr
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit, %bb.n
  %.pre-phi65 = phi ptr [ %i.ao, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ], [ %.pre64, %bb.n ] ; 2 uses
  store i32 %.sroa.04.0.i, ptr %i.ap, align 4, !tbaa !340
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre-phi65, i64 56
  store i32 %3, ptr %i.ax, align 8, !tbaa !423
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre-phi65, i64 44
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !3, !noalias !424 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = or i64 %i.bb, -281474976710656
  %i.bd = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !7, !noalias !424 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 192 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11, !noalias !424 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21, !noalias !424
  %i.bk = icmp ult ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %bb.p, !prof !22

bb.o:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !11, !noalias !424
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !23, !noalias !424
  br label %_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE.exit

bb.p:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit
  %i.bm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bf, i64 %i.bd) #11, !noalias !424 ; 2 uses
  %.sroa.0.0.copyload.i.i30.pre = load i64, ptr %i.bm, align 8, !tbaa !23
  br label %_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE.exit

_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.copyload.i.i30 = phi i64 [ %i.bd, %bb.o ], [ %.sroa.0.0.copyload.i.i30.pre, %bb.p ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bh, %bb.o ], [ %i.bm, %bb.p ] ; 3 uses
  %.sroa.0.0.copyload.i.i28 = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.bn = and i64 %.sroa.0.0.copyload.i.i28, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !412 ; 7 uses
  %i.br = and i64 %.sroa.0.0.copyload.i.i30, 281474976710655
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0.0.copyload.i31 = load i64, ptr %i.bt, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !300 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !301
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !301
  %i.bz = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.bq, i32 7)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !302
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = zext i32 %i.bz to i64                   ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 32
  %i.cj = icmp samesign ugt i64 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp ugt i64 %i.by, %i.cl
  %.not31.i = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %.not31.i, label %bb.q, label %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjNS0_11HermesValueES4_S4_.exit, !prof !264

_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjNS0_11HermesValueES4_S4_.exit: ; preds = %_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE.exit
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ch ; 10 uses
  store ptr %i.cn, ptr %i.bu, align 8, !tbaa !300
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i = load ptr, ptr %i.co, align 8, !tbaa !303
  %i.cp = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 -8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !263
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 -24
  %i.cs = zext i32 %i.bq to i64
  %i.ct = or disjoint i64 %i.cs, -1125899906842624
  %i.cu = getelementptr inbounds i8, ptr %i.cn, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !263
  %i.cv = getelementptr inbounds i8, ptr %i.cn, i64 -40
  store i64 -1688849860263936, ptr %i.cv, align 8, !tbaa !263
  %i.cw = getelementptr inbounds i8, ptr %i.cn, i64 -48
  store i64 %.sroa.0.0.copyload.i.i28, ptr %i.cw, align 8, !tbaa !263
  %i.cx = getelementptr inbounds i8, ptr %i.cn, i64 -56
  store i64 %.sroa.0.0.copyload.i31, ptr %i.cx, align 8, !tbaa !263
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjNS0_11HermesValueES4_S4_.exit
  %xtraiter = and i32 %i.bq, 1
  %i.cy = icmp eq i32 %i.bq, 1
  br i1 %i.cy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bq, -2
  br label %.lr.ph

bb.q:                                             ; preds = %_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE.exit
  %i.cz = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #11
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.061 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.dm, %.lr.ph ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.sroa.0.0.copyload.i.i33 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.da = and i64 %.sroa.0.0.copyload.i.i33, 281474976710655
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = or disjoint i32 %.061, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  %.sroa.0.0.copyload.i34 = load i64, ptr %i.df, align 8, !tbaa !23
  %i.dg = sext i32 %.061 to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr [8 x i8], ptr %i.cn, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -64
  store i64 %.sroa.0.0.copyload.i34, ptr %i.dj, align 8, !tbaa !263
  %.sroa.0.0.copyload.i.i33.1 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.dk = and i64 %.sroa.0.0.copyload.i.i33.1, 281474976710655
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = add nuw i32 %.061, 2                    ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %.sroa.0.0.copyload.i34.1 = load i64, ptr %i.dp, align 8, !tbaa !23
  %narrow = xor i32 %.061, -1
  %i.dq = sext i32 %narrow to i64
  %i.dr = getelementptr [8 x i8], ptr %i.cn, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -64
  store i64 %.sroa.0.0.copyload.i34.1, ptr %i.ds, align 8, !tbaa !263
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !427

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.061.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %.sroa.0.0.copyload.i.i33.epil = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.dt = and i64 %.sroa.0.0.copyload.i.i33.epil, 281474976710655
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = add nuw i32 %.061.epil.init, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = zext i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dx
  %.sroa.0.0.copyload.i34.epil = load i64, ptr %i.dy, align 8, !tbaa !23
  %i.dz = sext i32 %.061.epil.init to i64
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr [8 x i8], ptr %i.cn, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -64
  store i64 %.sroa.0.0.copyload.i34.epil, ptr %i.ec, align 8, !tbaa !263
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjNS0_11HermesValueES4_S4_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %.sroa.0.0.copyload.i.i.i43 = load i64, ptr %0, align 8, !tbaa !23
  %i.ee = and i64 %.sroa.0.0.copyload.i.i.i43, 281474976710655
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !288
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !23
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = tail call { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.ek) #11 ; 2 uses
  %i.em = extractvalue { i32, i64 } %i.el, 0
  %i.en = extractvalue { i32, i64 } %i.el, 1
  %i.eo = icmp ne i32 %i.em, 0                    ; 2 uses
  %spec.select.i = zext i1 %i.eo to i32
  %spec.select9.i = select i1 %i.eo, i64 %i.en, i64 -1688849860263936, !prof !22
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %.sroa.059.0 = phi i32 [ %i.cz, %bb.q ], [ %spec.select.i, %._crit_edge ]
  %.sroa.5.0 = phi i64 [ -1688849860263936, %bb.q ], [ %spec.select9.i, %._crit_edge ]
  %i.ep = load i64, ptr %i.bw, align 8, !tbaa !301
  %i.eq = add i64 %i.ep, -1
  store i64 %i.eq, ptr %i.bw, align 8, !tbaa !301
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !300
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.059.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm22GeneratorInnerFunction12restoreStackERNS0_7RuntimeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !412  ; 2 uses
  %i.c = add i32 %i.b, 1
  %.neg.i = xor i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.g = add i64 %i.f, %i.e
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = add i32 %i.j, %.neg.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !303
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = zext i32 %i.c to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.0.0.copyload.i, ptr nonnull align 8 %i.o, i64 %.idx, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm22GeneratorInnerFunction9saveStackERNS0_7RuntimeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !412  ; 2 uses
  %.neg.i = xor i32 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = add i32 %i.i, %.neg.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !303 ; 2 uses
  %i.l = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.not9.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyIPNS0_17PinnedHermesValueEPS3_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = add i32 %i.b, 1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %.011.i = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %i.y, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 2 uses
  %.0810.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.z, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 4 uses
  %.sroa.0.0.copyload.i8 = load i64, ptr %.011.i, align 8, !tbaa !23 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !364
  %i.u = ptrtoint ptr %.0810.i to i64
  %i.v = and i64 %i.u, -4194304
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = icmp eq ptr %i.t, %i.w
  br i1 %i.x, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %.0810.i, i64 %.sroa.0.0.copyload.i8) #11
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.c, %bb.b
  store i64 %.sroa.0.0.copyload.i8, ptr %.0810.i, align 8, !tbaa !263
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %.not.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyIPNS0_17PinnedHermesValueEPS3_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.b, !llvm.loop !428

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyIPNS0_17PinnedHermesValueEPS3_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %bb.a
  ret void
}

declare ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray11createClassERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm9JSBoolean6createERNS0_7RuntimeEbNS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), i1 noundef zeroext, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm6JSDate6createERNS0_7RuntimeEdNS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), double noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSBigInt6createERNS0_7RuntimeENS0_6HandleINS0_15BigIntPrimitiveEEENS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit
    i32 2, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit6
    i32 3, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit8
    i32 4, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit10
  ]

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !312
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 44, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !316
  store ptr @.str.11, ptr %2, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !317
  %i.e = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit6:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !312
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.g, align 8, !tbaa !315
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !316
  store ptr @.str.12, ptr %3, align 8, !tbaa !267
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !317
  %i.j = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 16, ptr %i.l, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !316
  store ptr @.str.13, ptr %4, align 8, !tbaa !267
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !317
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit10:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.p, align 8, !tbaa !312
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 25, ptr %i.q, align 8, !tbaa !315
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !316
  store ptr @.str.14, ptr %5, align 8, !tbaa !267
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !317
  %i.t = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit10, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, %_ZN6hermes2vm11TwineChar16C2EPKc.exit6, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.0 = phi i32 [ %i.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit10 ], [ %i.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.j, %_ZN6hermes2vm11TwineChar16C2EPKc.exit6 ], [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ], [ 1, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr, ptr, ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm15BigIntPrimitive19calcCellSizeInBytesEj(i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm15BigIntPrimitiveC1Ej(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSNumber6createERNS0_7RuntimeEdNS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), double noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSProxy6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSString6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEENS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSSymbol6createERNS0_7RuntimeENS0_8SymbolIDENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i32 noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 1027070
  br i1 %i.a, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, label %bb.b, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 2
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = and i32 %i.c, 8388600                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !266
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !264

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.l = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, i32 noundef %i.d) #11
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !265
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  store i64 0, ptr %i.m, align 4
  %i.n = or disjoint i32 %i.d, 251658240
  store i32 %i.n, ptr %i.m, align 4, !tbaa !267
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = or i64 %i.o, -281474976710656
  br label %bb.e

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #11 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e, !prof !353

bb.e:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %.sroa.0.0.i12 = phi i32 [ 1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ %i.q, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.3.0.i10 = phi i64 [ %i.p, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ] ; 2 uses
  %i.s = and i64 %.sroa.3.0.i10, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8112) %i.u, i32 noundef %2) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %bb.e
  %.sroa.3.0.i11 = phi i64 [ %.sroa.3.0.i10, %bb.e ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.05.0 = phi i32 [ %.sroa.0.0.i12, %bb.e ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0.i11, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@llvm.assume
!177 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE12_Vector_implE", !178, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!179 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEE", !10, i64 0}
!180 = !{!"_ZTSSt6vectorISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !181, i64 0}
!181 = !{!"_ZTSSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !182, i64 0}
!182 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE12_Vector_implE", !183, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE17_Vector_impl_dataE", !184, i64 0, !184, i64 8, !184, i64 16}
!184 = !{!"p1 _ZTSSt8functionIFvRN6hermes2vm12HeapSnapshotEEE", !10, i64 0}
!185 = !{!"_ZTSN6hermes2vm15IdentifierTableE", !186, i64 0, !192, i64 24, !195, i64 48, !4, i64 80}
!186 = !{!"_ZTSN6hermes2vm15IdentifierTable18ConservativeVectorINS1_11LookupEntryEEE", !187, i64 0}
!187 = !{!"_ZTSSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !188, i64 0}
!188 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !189, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE12_Vector_implE", !190, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE17_Vector_impl_dataE", !191, i64 0, !191, i64 8, !191, i64 16}
!191 = !{!"p1 _ZTSN6hermes2vm15IdentifierTable11LookupEntryE", !10, i64 0}
!192 = !{!"_ZTSN4llvh9BitVectorE", !193, i64 0, !4, i64 16}
!193 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !194, i64 0}
!194 = !{!"_ZTSN4llvh8ArrayRefImEE", !100, i64 0, !24, i64 8}
!195 = !{!"_ZTSN6hermes2vm6detail19IdentifierHashTableE", !196, i64 0, !199, i64 16, !4, i64 24, !4, i64 28}
!196 = !{!"_ZTSN6hermes12CompactTableE", !197, i64 0}
!197 = !{!"_ZTSN6hermes12CompactArrayE", !4, i64 0, !198, i64 4, !76, i64 8}
!198 = !{!"_ZTSN6hermes12CompactArray5ScaleE", !5, i64 0}
!199 = !{!"p1 _ZTSN6hermes2vm15IdentifierTableE", !10, i64 0}
!200 = !{!"_ZTSN6hermes2vm14SymbolRegistryE", !28, i64 0, !201, i64 8}
!201 = !{!"_ZTSN4llvh8DenseSetIN6hermes2vm8SymbolIDENS_12DenseMapInfoIS3_EEEE", !202, i64 0}
!202 = !{!"_ZTSN4llvh6detail12DenseSetImplIN6hermes2vm8SymbolIDENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_EE", !203, i64 0}
!203 = !{!"_ZTSN4llvh8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !204, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!204 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIN6hermes2vm8SymbolIDEEE", !10, i64 0}
!205 = !{!"_ZTSSt10unique_ptrIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !206, i64 0}
!206 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm12JSLibStorageESt14default_deleteIS2_ELb1ELb1EE", !207, i64 0}
!207 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !208, i64 0}
!208 = !{!"_ZTSSt5tupleIJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !209, i64 0}
!209 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !210, i64 0}
!210 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm12JSLibStorageELb0EE", !211, i64 0}
!211 = !{!"p1 _ZTSN6hermes2vm12JSLibStorageE", !10, i64 0}
!212 = !{!"p1 _ZTSN6hermes2vm9CodeBlockE", !10, i64 0}
!213 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !10, i64 0}
!214 = !{!"_ZTSN4llvh12simple_ilistIN6hermes2vm13RuntimeModuleEJEEE", !215, i64 0}
!215 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !216, i64 0}
!216 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !217, i64 0}
!217 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !218, i64 0, !218, i64 8}
!218 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !10, i64 0}
!219 = !{!"_ZTSN6hermes2vm14CrashTraceNoopE"}
!220 = !{!"_ZTSN4llvh15MutableArrayRefIN6hermes2vm17PinnedHermesValueEEE", !221, i64 0}
!221 = !{!"_ZTSN4llvh8ArrayRefIN6hermes2vm17PinnedHermesValueEEE", !20, i64 0, !24, i64 8}
!222 = !{!"_ZTSN6hermes2vm14StackFramePtrTILb0EEE", !20, i64 0}
!223 = !{!"_ZTSN6hermes18StackOverflowGuardE", !24, i64 0, !24, i64 8}
!224 = !{!"_ZTSSt5arrayIN6hermes2vm17PinnedHermesValueELm8EE", !5, i64 0}
!225 = !{!"_ZTSSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE", !226, i64 0}
!226 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE", !227, i64 0}
!227 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE12_Vector_implE", !228, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!229 = !{!"_ZTSSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE", !230, i64 0}
!230 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE", !231, i64 0}
!231 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE12_Vector_implE", !232, i64 0}
!232 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE17_Vector_impl_dataE", !233, i64 0, !233, i64 8, !233, i64 16}
!233 = !{!"p2 _ZTSN6hermes2vm8JSObjectE", !115, i64 0}
!234 = !{!"_ZTSSt6vectorIPN6hermes2vm8CallableESaIS3_EE", !235, i64 0}
!235 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE", !236, i64 0}
!236 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE12_Vector_implE", !237, i64 0}
!237 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE17_Vector_impl_dataE", !238, i64 0, !238, i64 8, !238, i64 16}
!238 = !{!"p2 _ZTSN6hermes2vm8CallableE", !115, i64 0}
!239 = !{!"_ZTSSt5dequeIPN6hermes2vm8CallableESaIS3_EE", !240, i64 0}
!240 = !{!"_ZTSSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE", !241, i64 0}
!241 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE11_Deque_implE", !242, i64 0}
!242 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE16_Deque_impl_dataE", !243, i64 0, !24, i64 8, !245, i64 16, !245, i64 48}
!243 = !{!"p3 _ZTSN6hermes2vm8CallableE", !244, i64 0}
!244 = !{!"any p3 pointer", !115, i64 0}
!245 = !{!"_ZTSSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_E", !238, i64 0, !238, i64 8, !238, i64 16, !243, i64 24}
!246 = !{!"_ZTSSt10unique_ptrIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !247, i64 0}
!247 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_ELb1ELb1EE", !248, i64 0}
!248 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !249, i64 0}
!249 = !{!"_ZTSSt5tupleIJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !250, i64 0}
!250 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !251, i64 0}
!251 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm20CodeCoverageProfilerELb0EE", !252, i64 0}
!252 = !{!"p1 _ZTSN6hermes2vm20CodeCoverageProfilerE", !10, i64 0}
!253 = !{!"_ZTSSt6atomicIhE", !254, i64 0}
!254 = !{!"_ZTSSt13__atomic_baseIhE", !5, i64 0}
!255 = !{!"_ZTSSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !256, i64 0}
!256 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !257, i64 0}
!257 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_Vector_implE", !258, i64 0}
!258 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE17_Vector_impl_dataE", !259, i64 0, !259, i64 8, !259, i64 16}
!259 = !{!"p1 _ZTSSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEE", !10, i64 0}
!260 = !{!"_ZTSSt8functionIFvN6hermes2vm11GCEventKindEPKcEE", !61, i64 0, !10, i64 24}
!261 = !{!"p1 _ZTSN6hermes4inst4InstE", !10, i64 0}
!262 = !{!212, !212, i64 0}
!263 = !{!29, !24, i64 0}
!264 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!265 = !{!105, !76, i64 16}
!266 = !{!105, !76, i64 24}
!267 = !{!5, !5, i64 0}
!268 = !{!269, !283, i64 216}
!269 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !76, i64 0, !270, i64 8, !270, i64 56, !270, i64 104, !270, i64 152, !279, i64 200, !282, i64 208, !283, i64 216}
!270 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !271, i64 0}
!271 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !272, i64 0}
!272 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !273, i64 0, !275, i64 8}
!273 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !274, i64 0}
!274 = !{!"_ZTSSt4lessIhE"}
!275 = !{!"_ZTSSt15_Rb_tree_header", !276, i64 0, !24, i64 32}
!276 = !{!"_ZTSSt18_Rb_tree_node_base", !277, i64 0, !278, i64 8, !278, i64 16, !278, i64 24}
!277 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!278 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!279 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !280, i64 0, !36, i64 4}
!280 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !281, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!281 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!282 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !36, i64 4}
!283 = !{!"p1 _ZTSN6hermes2vm6VTableE", !10, i64 0}
!284 = !{!282, !36, i64 4}
!285 = !{i8 0, i8 2}
!286 = !{}
!287 = !{!36, !36, i64 0}
!288 = !{!289, !24, i64 0}
!289 = !{!"_ZTSN6hermes2vm6XorPtrINS0_9CodeBlockELNS0_11XorPtrKeyIDE1EEE", !24, i64 0}
!290 = !{!291, !76, i64 0}
!291 = !{!"_ZTSN6hermes3hbc21RuntimeFunctionHeaderE", !76, i64 0}
!292 = !{!293, !4, i64 4}
!293 = !{!"_ZTSN6hermes3hbc14FunctionHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !5, i64 29, !5, i64 30}
!294 = !{!13, !13, i64 0}
!295 = !{!12, !9, i64 8}
!296 = !{!18, !10, i64 0}
!297 = !{!18, !4, i64 12}
!298 = !{!18, !4, i64 8}
!299 = !{!12, !4, i64 208}
!300 = !{!26, !20, i64 9448}
!301 = !{!26, !24, i64 9480}
!302 = !{!26, !20, i64 9440}
!303 = !{!20, !20, i64 0}
!304 = !{!283, !283, i64 0}
!305 = !{!306, !10, i64 104}
!306 = !{!"_ZTSN6hermes2vm14CallableVTableE", !307, i64 0, !10, i64 96, !10, i64 104}
!307 = !{!"_ZTSN6hermes2vm12ObjectVTableE", !308, i64 0, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!308 = !{!"_ZTSN6hermes2vm6VTableE", !24, i64 0, !309, i64 8, !4, i64 12, !10, i64 16, !10, i64 24, !10, i64 32}
!309 = !{!"_ZTSN6hermes2vm8CellKindE", !5, i64 0}
!310 = distinct !{null}
!311 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!312 = !{!313, !314, i64 24}
!313 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !314, i64 8, !5, i64 16, !314, i64 24, !24, i64 32, !24, i64 40}
!314 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!315 = !{!313, !24, i64 32}
!316 = !{!313, !24, i64 40}
!317 = !{!313, !314, i64 8}
!318 = !{!319, !321, !323}
!319 = distinct !{!319, !320, !"_ZSt18__do_uninit_fill_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjNS2_11HermesValueEET_S7_T0_RKT1_: argument 0"}
!320 = distinct !{!320, !"_ZSt18__do_uninit_fill_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjNS2_11HermesValueEET_S7_T0_RKT1_"}
!321 = distinct !{!321, !322, !"_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjNS4_11HermesValueEEET_S9_T0_RKT1_: argument 0"}
!322 = distinct !{!322, !"_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjNS4_11HermesValueEEET_S9_T0_RKT1_"}
!323 = distinct !{!323, !324, !"_ZSt20uninitialized_fill_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjNS2_11HermesValueEET_S7_T0_RKT1_: argument 0"}
!324 = distinct !{!324, !"_ZSt20uninitialized_fill_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjNS2_11HermesValueEET_S7_T0_RKT1_"}
!325 = distinct !{!325, !326, !327, !328}
!326 = !{!"llvm.loop.mustprogress"}
!327 = !{!"llvm.loop.isvectorized", i32 1}
!328 = !{!"llvm.loop.unroll.runtime.disable"}
!329 = distinct !{!329, !326, !328, !327}
!330 = !{!331, !4, i64 20}
!331 = !{!"_ZTSN6hermes2vm9ArrayImplE", !332, i64 0, !4, i64 20, !4, i64 24, !339, i64 28}
!332 = !{!"_ZTSN6hermes2vm8JSObjectE", !333, i64 0, !334, i64 4, !335, i64 8, !337, i64 12, !338, i64 16}
!333 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!334 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!335 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !336, i64 0}
!336 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !108, i64 0}
!337 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !336, i64 0}
!338 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !336, i64 0}
!339 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEE", !336, i64 0}
!340 = !{!341, !4, i64 0}
!341 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!342 = !{!343, !72, i64 8}
!343 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !333, i64 0, !72, i64 8}
!344 = distinct !{!344, !326}
!345 = distinct !{!345, !326}
!346 = !{!306, !10, i64 96}
!347 = distinct !{ptr @_ZN6hermes2vm8Callable26createThisForConstruct_RJSENS0_6HandleIS1_EERNS0_7RuntimeE, null}
!348 = distinct !{ptr @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb, null}
!349 = distinct !{null}
!350 = distinct !{ptr @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b, null}
!351 = !{!352, !4, i64 4}
!352 = !{!"_ZTSN6hermes2vm18PropertyDescriptorE", !5, i64 0, !4, i64 4}
!353 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_: argument 0"}
!356 = distinct !{!356, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_"}
!357 = !{!358, !20, i64 0}
!358 = !{!"_ZTSN6hermes2vm10HandleBaseE", !20, i64 0}
!359 = !{!360, !20, i64 0}
!360 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !20, i64 0}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZNKSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEEplEl: argument 0"}
!363 = distinct !{!363, !"_ZNKSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEEplEl"}
!364 = !{!106, !76, i64 0}
!365 = distinct !{!365, !326}
!366 = !{!367, !367, i64 0}
!367 = !{!"char16_t", !5, i64 0}
!368 = !{!74, !76, i64 0}
!369 = !{!370, !372, i64 0}
!370 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !371, i64 0, !24, i64 8, !5, i64 16}
!371 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !372, i64 0}
!372 = !{!"p1 char16_t", !10, i64 0}
!373 = distinct !{!373, !326}
!374 = distinct !{!374, !375}
!375 = !{!"llvm.loop.unroll.disable"}
!376 = !{!223, !24, i64 8}
!377 = !{!378, !380, !382, !384, !386}
!378 = distinct !{!378, !379, !"_ZSt16__do_uninit_copyIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEESt16reverse_iteratorIPNS1_17PinnedHermesValueEEET0_T_SB_SA_: argument 0"}
!379 = distinct !{!379, !"_ZSt16__do_uninit_copyIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEESt16reverse_iteratorIPNS1_17PinnedHermesValueEEET0_T_SB_SA_"}
!380 = distinct !{!380, !381, !"_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN6hermes2vm17GCHermesValueBaseINS3_11HermesValueEEESt16reverse_iteratorIPNS3_17PinnedHermesValueEEEET0_T_SD_SC_: argument 0"}
!381 = distinct !{!381, !"_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN6hermes2vm17GCHermesValueBaseINS3_11HermesValueEEESt16reverse_iteratorIPNS3_17PinnedHermesValueEEEET0_T_SD_SC_"}
!382 = distinct !{!382, !383, !"_ZSt18uninitialized_copyIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEESt16reverse_iteratorIPNS1_17PinnedHermesValueEEET0_T_SB_SA_: argument 0"}
!383 = distinct !{!383, !"_ZSt18uninitialized_copyIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEESt16reverse_iteratorIPNS1_17PinnedHermesValueEEET0_T_SB_SA_"}
!384 = distinct !{!384, !385, !"_ZSt22__uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_St26random_access_iterator_tag: argument 0"}
!385 = distinct !{!385, !"_ZSt22__uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_St26random_access_iterator_tag"}
!386 = distinct !{!386, !387, !"_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_: argument 0"}
!387 = distinct !{!387, !"_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_"}
!388 = distinct !{!388, !375}
!389 = distinct !{!389, !326}
!390 = !{!391, !10, i64 24}
!391 = !{!"_ZTSN6hermes2vm14NativeFunctionE", !392, i64 0, !10, i64 24, !10, i64 32}
!392 = !{!"_ZTSN6hermes2vm8CallableE", !332, i64 0, !393, i64 20}
!393 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11EnvironmentEEE", !336, i64 0}
!394 = !{!391, !10, i64 32}
!395 = !{!26, !261, i64 9808}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv: argument 0"}
!398 = distinct !{!398, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv"}
!399 = !{!400, !4, i64 8}
!400 = !{!"_ZTSN6hermes2vm10NativeArgsE", !360, i64 0, !4, i64 8, !20, i64 16}
!401 = !{!400, !20, i64 16}
!402 = !{!403, !10, i64 40}
!403 = !{!"_ZTSN6hermes2vm17NativeConstructorE", !391, i64 0, !10, i64 40}
!404 = !{!405, !408, i64 36}
!405 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunctionE", !406, i64 0, !408, i64 36, !4, i64 40, !409, i64 44, !410, i64 48, !4, i64 52, !411, i64 56, !36, i64 60}
!406 = !{!"_ZTSN6hermes2vm10JSFunctionE", !392, i64 0, !289, i64 24, !407, i64 32}
!407 = !{!"_ZTSN6hermes2vm9GCPointerINS0_6DomainEEE", !336, i64 0}
!408 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunction5StateE", !5, i64 0}
!409 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEEE", !336, i64 0}
!410 = !{!"_ZTSN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEE", !341, i64 0}
!411 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunction6ActionE", !5, i64 0}
!412 = !{!405, !4, i64 40}
!413 = !{!405, !4, i64 52}
!414 = !{!405, !36, i64 60}
!415 = !{!293, !4, i64 20}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!418 = distinct !{!418, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!421 = distinct !{!421, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!422 = distinct !{!422, !326}
!423 = !{!405, !411, i64 56}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE: argument 0"}
!426 = distinct !{!426, !"_ZN6hermes2vm7Runtime17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EERKNS0_9GCPointerIS7_EE"}
!427 = distinct !{!427, !326}
!428 = distinct !{!428, !326}
end_hunk_1
