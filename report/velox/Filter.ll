inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmm:bb.a
  %i.fe = load i64, ptr %i.e, align 8, !tbaa !33
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fe) #44
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #36 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #44
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #44
  tail call void @__cxa_rethrow() #45
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1659, !range !53, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2140, !nonnull !57
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51, !range !53, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2142, !nonnull !57, !align !1689
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2143, !nonnull !57, !align !1689
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1656
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2144, !nonnull !57, !align !1689
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2145 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2146, !nonnull !57, !align !1689
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2147, !nonnull !57, !align !1689
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2143, !nonnull !57, !align !1689
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1656
  store ptr %i.z, ptr %i.q, align 8, !tbaa !464
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2148, !nonnull !57, !align !1689
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !10
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !10
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #44
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !464    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.0.copyload.i.i = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.0.copyload.i.i to i64         ; 2 uses
  %i.i = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.j = shl i64 12, %i.e
  %spec.select = select i1 %i.i, i64 %i.h, i64 %i.j
  %i.k = and i64 %i.b, 255                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !464
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i.i59 = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i59 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit60

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
  %i.p = shl i64 12, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit60

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit60: ; preds = %bb.a, %bb.b
  %.0.i58 = phi i64 [ %i.o, %bb.a ], [ %i.p, %bb.b ]
  %i.q = icmp eq i64 %spec.select, %.0.i58
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit60
  %i.r = shl nuw nsw i64 %i.h, 2
  %i.s = add nuw nsw i64 %i.r, 16
  %i.t = shl i64 64, %i.e
  %.0.i61 = select i1 %i.i, i64 %i.s, i64 %i.t
  %i.u = load ptr, ptr %1, align 8, !tbaa !464
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.u, i64 %.0.i61, i1 false)
  %i.v = load i64, ptr %i.a, align 8, !tbaa !10
  %i.w = and i64 %i.v, -256
  %i.x = load i64, ptr %i.c, align 8, !tbaa !10
  %i.y = and i64 %i.x, 255
  %i.z = or disjoint i64 %i.y, %i.w
  store i64 %i.z, ptr %i.c, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !460 ; 3 uses
  %i.ac = and i64 %i.ab, -4
  %i.ad = shl i64 %i.ab, 2
  %i.ae = and i64 %i.ad, 12                       ; 2 uses
  %i.af = lshr i64 %i.ab, 2
  %i.ag = and i64 %i.af, 3
  %i.ah = or disjoint i64 %i.ae, %i.ag            ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !464
  %i.aj = load ptr, ptr %1, align 8, !tbaa !464
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg86 = add i64 %i.ac, -16
  %i.al = shl nuw nsw i64 %i.ah, 2
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg86, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit60
  %i.ap = load ptr, ptr %1, align 8, !tbaa !464
  %i.aq = shl nuw i64 1, %i.e                     ; 2 uses
  %i.ar = getelementptr [64 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr [64 x i8], ptr %i.f, i64 %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.at = phi i64 [ %i.b, %bb.d ], [ %i.ce, %._crit_edge ]
  %i.au = phi i64 [ %i.d, %bb.d ], [ %i.cf, %._crit_edge ]
  %.pn48 = phi ptr [ %i.as, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.ar, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -64   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -64   ; 4 uses
  %i.av = getelementptr i8, ptr %.pn47, i64 -50
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !1683
  %i.ax = and i8 %i.aw, -16
  %i.ay = getelementptr i8, ptr %.pn48, i64 -50   ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !1683
  %i.ba = add i8 %i.az, %i.ax
  store i8 %i.ba, ptr %i.ay, align 2, !tbaa !1683
  %i.bb = getelementptr i8, ptr %.pn47, i64 -49
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !1677
  %i.bd = getelementptr i8, ptr %.pn48, i64 -49
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !1677
  %i.be = load <16 x i8>, ptr %.043, align 16, !tbaa !9
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not7987 = icmp eq i16 %i.bh, 0
  br i1 %.not7987, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.064.0.extract.trunc = zext nneg i16 %i.bh to i32
  %i.bi = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr i8, ptr %.pn47, i64 -48
  %i.bk = getelementptr i8, ptr %.pn48, i64 -48   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.04590 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.089 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %.sroa.064.088 = phi i32 [ %.sroa.064.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %i.bl = and i32 %.sroa.064.088, 1
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.bm = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.088, i1 true) ; 2 uses
  %i.bn = add i32 %.sroa.8.089, %i.bm
  %i.bo = add nuw nsw i32 %i.bm, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bo, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bn, %bb.g ], [ %.sroa.8.089, %bb.f ] ; 2 uses
  %i.bp = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04590
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.044, i64 %.04590 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.83) #51
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bp
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.088, %.pn    ; 2 uses
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !9
  %i.by = load i64, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb            ; 2 uses
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !10
  %i.cd = add i64 %.04590, 1
  %.not79 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not79, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !2149

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ce = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.at, %bb.e ] ; 2 uses
  %i.cf = phi i64 [ %i.cc, %._crit_edge.loopexit ], [ %i.au, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ce, %i.cf
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !2150

bb.j:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !460 ; 3 uses
  %i.ci = and i64 %i.ch, -4
  %i.cj = shl i64 %i.ch, 4
  %i.ck = and i64 %i.cj, 48
  %i.cl = and i64 %i.ch, 12
  %i.cm = load ptr, ptr %1, align 8, !tbaa !464
  %i.cn = ptrtoint ptr %i.cm to i64
  %.neg82 = add i64 %i.ci, -16
  %i.co = or disjoint i64 %i.cl, %i.ck
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = sub i64 %.neg82, %i.cp
  %i.cr = load ptr, ptr %0, align 8, !tbaa !464
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load <16 x i8>, ptr %i.cs, align 16, !tbaa !9
  %i.cu = icmp slt <16 x i8> %i.ct, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = and i16 %i.cv, 4095                     ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = icmp ne i16 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %i.da = xor i32 %i.cz, 31
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi ptr [ %i.cs, %bb.j ], [ %i.ao, %bb.c ] ; 2 uses
  %.sink99 = phi i64 [ %i.db, %bb.j ], [ %i.ah, %bb.c ]
  %.sink95 = phi i64 [ %i.db, %bb.j ], [ %i.ae, %bb.c ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sink99
  %i.de = icmp ne ptr %.sink, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = lshr i64 %.sink95, 2
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = or i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.435", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #48
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460  ; 3 uses
  %i.i = and i64 %i.h, -4
  %i.j = shl i64 %i.h, 4
  %i.k = and i64 %i.j, 48
  %i.l = and i64 %i.h, 12
  %i.m = load ptr, ptr %1, align 8, !tbaa !464
  %i.n = ptrtoint ptr %i.m to i64
  %.neg117 = add i64 %i.i, -16
  %i.o = or disjoint i64 %i.l, %i.k
  %i.p = add i64 %i.o, %i.n
  %i.q = sub i64 %.neg117, %i.p
  %i.r = ashr exact i64 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.t = phi i64 [ %i.b, %bb.d ], [ %i.em, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.r, %bb.d ], [ %i.eo, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !464
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %.0101 ; 7 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 4095                       ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.z to i32 ; 2 uses
  %i.aa = extractelement <16 x i8> %i.w, i64 14
  %i.ab = icmp ult i8 %i.aa, 16
  %.not113127 = icmp eq i16 %i.z, 0               ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119
  %i.ac = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.ae = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph130, %bb.l
  %i.ag = phi i64 [ %i.t, %.lr.ph130 ], [ %i.ce, %bb.l ]
  %.sroa.12.0129 = phi i32 [ 0, %.lr.ph130 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0128 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph130 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ah = and i32 %.sroa.073.0128, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0128, i1 true) ; 2 uses
  %i.aj = add i32 %.sroa.12.0129, %i.ai
  %i.ak = add nuw nsw i32 %i.ai, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ak, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.aj, %bb.g ], [ %.sroa.12.0129, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0128, %.pn114 ; 2 uses
  %i.al = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9   ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = or disjoint i64 %i.aq, 1
  %i.as = and i64 %i.ag, 255                      ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !464   ; 2 uses
  %i.au = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.as) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9   ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 12
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !prof !1676

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.ay = phi i64 [ %i.be, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.au, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !1677 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bb, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmm:bb.a
_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #36 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #44
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #44
  tail call void @__cxa_rethrow() #45
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1659, !range !53, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2194, !nonnull !57
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51, !range !53, !noundef !57
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2196, !nonnull !57, !align !1689
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2197, !nonnull !57, !align !1689
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2198, !nonnull !57, !align !1689
  %i.o = load i64, ptr %i.n, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2199 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2200, !nonnull !57, !align !1689
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2201, !nonnull !57, !align !1689
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2197, !nonnull !57, !align !1689
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2175
  store ptr %i.z, ptr %i.q, align 8, !tbaa !547
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2202, !nonnull !57, !align !1689
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !10
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !10
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #44
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !547    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !547
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 4
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 256, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !547
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !10
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !544 ; 2 uses
  %i.ag = and i64 %i.af, -16
  %i.ah = and i64 %i.af, 15                       ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !547
  %i.aj = load ptr, ptr %1, align 8, !tbaa !547
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg82 = add i64 %i.ag, -16
  %i.al = shl nuw nsw i64 %i.ah, 4
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg82, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ah
  %i.ar = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = or i64 %i.ah, %i.as
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58
  %i.au = load ptr, ptr %1, align 8, !tbaa !547
  %i.av = shl nuw i64 1, %i.e                     ; 2 uses
  %i.aw = getelementptr [256 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr [256 x i8], ptr %i.f, i64 %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.cj, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.ck, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
  %i.ba = getelementptr i8, ptr %.pn47, i64 -242
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !2178
  %i.bc = and i8 %i.bb, -16
  %i.bd = getelementptr i8, ptr %.pn48, i64 -242  ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !2178
  %i.bf = add i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !2178
  %i.bg = getelementptr i8, ptr %.pn47, i64 -241
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !2190
  %i.bi = getelementptr i8, ptr %.pn48, i64 -241
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !2190
  %i.bj = load <16 x i8>, ptr %.043, align 16, !tbaa !9
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383                    ; 2 uses
  %.not7783 = icmp eq i16 %i.bm, 0
  br i1 %.not7783, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bm to i32
  %i.bn = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
  %.04586 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.085 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.084 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit ] ; 3 uses
  %i.bq = and i32 %.sroa.062.084, 1
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.br = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.084, i1 true) ; 2 uses
  %i.bs = add i32 %.sroa.8.085, %i.br
  %i.bt = add nuw nsw i32 %i.br, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bt, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586
  %i.bx = load i128, ptr %i.bv, align 16, !tbaa !219
  store i128 %i.bx, ptr %i.bw, align 16, !tbaa !219
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkInE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.83) #51
  unreachable

_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit:  ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bu
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.084, %.pn    ; 2 uses
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !9
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg            ; 2 uses
  store i64 %i.ch, ptr %i.c, align 8, !tbaa !10
  %i.ci = add i64 %.04586, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !2203

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.cj = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %i.ck = phi i64 [ %i.ch, %._crit_edge.loopexit ], [ %i.az, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.cj, %i.ck
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !2204

bb.j:                                             ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !544 ; 2 uses
  %i.cn = and i64 %i.cm, -16
  %i.co = load ptr, ptr %1, align 8, !tbaa !547
  %i.cp = shl i64 %i.cm, 4
  %i.cq = and i64 %i.cp, 240
  %i.cr = ptrtoint ptr %i.co to i64
  %.neg79 = add i64 %i.cn, -16
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = sub i64 %.neg79, %i.cs
  %i.cu = load ptr, ptr %0, align 8, !tbaa !547
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct ; 3 uses
  %i.cw = load <16 x i8>, ptr %i.cv, align 16, !tbaa !9
  %i.cx = icmp slt <16 x i8> %i.cw, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = and i16 %i.cy, 16383                    ; 2 uses
  %i.da = zext nneg i16 %i.cz to i32
  %i.db = icmp ne i16 %i.cz, 0
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.da, i1 true)
  %i.dd = xor i32 %i.dc, 31
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.de
  %i.dh = icmp ne ptr %i.cv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = or i64 %i.di, %i.de
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi i64 [ %i.dj, %bb.j ], [ %i.at, %bb.c ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.dk, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.435", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #48
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !544  ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = load ptr, ptr %1, align 8, !tbaa !547
  %i.k = shl i64 %i.h, 4
  %i.l = and i64 %i.k, 240
  %i.m = ptrtoint ptr %i.j to i64
  %.neg116 = add i64 %i.i, -16
  %i.n = add i64 %i.l, %i.m
  %i.o = sub i64 %.neg116, %i.n
  %i.p = ashr exact i64 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.r = phi i64 [ %i.b, %bb.d ], [ %i.ei, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.p, %bb.d ], [ %i.ek, %.loopexit ] ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !547
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.s, i64 %.0101 ; 7 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp slt <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.x to i32 ; 2 uses
  %i.y = extractelement <16 x i8> %i.u, i64 14
  %i.z = icmp ult i8 %i.y, 16
  %.not113125 = icmp eq i16 %i.x, 0               ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader117

.preheader117:                                    ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader117
  %i.aa = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader
  %i.ac = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph128, %bb.l
  %i.ae = phi i64 [ %i.r, %.lr.ph128 ], [ %i.cb, %bb.l ]
  %.sroa.12.0127 = phi i32 [ 0, %.lr.ph128 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0126 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph128 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.af = and i32 %.sroa.073.0126, 1
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0126, i1 true) ; 2 uses
  %i.ah = add i32 %.sroa.12.0127, %i.ag
  %i.ai = add nuw nsw i32 %i.ag, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ai, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.ah, %bb.g ], [ %.sroa.12.0127, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0126, %.pn114 ; 2 uses
  %i.aj = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = and i64 %i.ae, 255                      ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !547   ; 2 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.aq) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9   ; 2 uses
  %i.av = icmp ult i8 %i.au, 14
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !prof !1676

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i
  %i.aw = phi i64 [ %i.bc, %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i ], [ %i.as, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !2190 ; 2 uses
  %.not.i.i = icmp eq i8 %i.az, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !2190
  br label %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.h, %.lr.ph.i
  %i.bb = add i64 %i.ap, %i.aw
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %i.aq) ; 3 uses
end_hunk_1
