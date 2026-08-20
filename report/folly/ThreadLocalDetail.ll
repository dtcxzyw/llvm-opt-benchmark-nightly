inline.NumInlined: 1463
inline.NumDeleted: 730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly18threadlocal_detail14ThreadEntrySet6insertERKNS1_7ElementE:bb.a
  %i.cf = phi ptr [ %i.bm, %bb.h ], [ %i.cc, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 24
  %i.ck = add nsw i64 %i.cj, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !139
  store ptr %i.b, ptr %3, align 8, !tbaa !79, !alias.scope !142, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !139
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !58, !noalias !145
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, 14181476777654086739
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = mul i64 %i.cm, -4265267296055464877
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = mul i64 %i.cs, -4265267296055464877     ; 2 uses
  %i.cu = lshr i64 %i.ct, 14
  %i.cv = and i64 %i.cu, 255
  %i.cw = lshr i64 %i.ct, 22
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.21") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 %i.cw, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !139
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !85, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !139
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store i64 %i.ck, ptr %i.cx, align 8, !tbaa !52
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread41

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread41: ; preds = %bb.f, %bb.c, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE9push_backERKS3_.exit
  %.0 = phi i1 [ false, %bb.c ], [ true, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE9push_backERKS3_.exit ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14ThreadEntrySet5eraseEPNS0_11ThreadEntryE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.folly::threadlocal_detail::ThreadEntrySet::Element") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.21", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple", align 8        ; 4 uses
  %5 = alloca %"class.std::tuple.24", align 1     ; 3 uses
  %6 = alloca %"struct.folly::threadlocal_detail::ThreadEntrySet::Element", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = icmp ult i64 %i.c, 512
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %i.c, 256
  br i1 %i.e, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = and i64 %i.g, 15
  %i.k = load ptr, ptr %i.i, align 16, !tbaa !58
  %i.l = icmp eq ptr %2, %i.k
  br i1 %i.l, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw i128 %i.n, 14181476777654086739
  %i.p = lshr i128 %i.o, 64
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = mul i64 %i.m, -4265267296055464877
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -4265267296055464877       ; 2 uses
  %i.u = lshr i64 %i.t, 14
  %i.v = and i64 %i.u, 255
  %i.w = lshr i64 %i.t, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1) ; 2 uses
  %i.x = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = and i64 %i.c, 255                       ; 2 uses
  %i.ad = shl nuw i64 1, %i.ac
  %notmask.i = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %notmask.i, -1
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i.i97 = phi i64 [ %i.ad, %bb.d ], [ %i.bd, %bb.g ]
  %.026.i.i96 = phi i64 [ %i.w, %bb.d ], [ %i.be, %bb.g ] ; 2 uses
  %i.ag = and i64 %.026.i.i96, %i.ae
  %i.ah = shl nsw i64 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.al = icmp eq <16 x i8> %i.ak, %i.ab
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 16383
  %.not83 = icmp eq i32 %i.ao, 0
  %i.ap = extractelement <16 x i8> %i.ak, i64 15
  br i1 %.not83, label %.loopexit, label %.preheader90

.preheader90:                                     ; preds = %bb.e
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aq)
  br label %bb.f

bb.f:                                             ; preds = %.preheader90, %.critedge.i.i
  %.sroa.026.0 = phi i32 [ %i.ba, %.critedge.i.i ], [ %i.an, %.preheader90 ] ; 4 uses
  %i.ar = icmp ne i32 %.sroa.026.0, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.026.0, i1 true)
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = icmp eq ptr %2, %i.ax
  br i1 %i.ay, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit, label %.critedge.i.i, !prof !60

.critedge.i.i:                                    ; preds = %bb.f
  %i.az = add nsw i32 %.sroa.026.0, -1
  %i.ba = and i32 %i.az, %.sroa.026.0             ; 2 uses
  %i.bb = and i32 %i.ba, 16382
  %.not84 = icmp eq i32 %i.bb, 0
  br i1 %.not84, label %.loopexit, label %bb.f, !llvm.loop !61

.loopexit:                                        ; preds = %.critedge.i.i, %bb.e
  %i.bc = icmp eq i8 %i.ap, 0
  br i1 %i.bc, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread, label %bb.g, !prof !60

bb.g:                                             ; preds = %.loopexit
  %i.bd = add i64 %.024.i.i97, -1                 ; 2 uses
  %i.be = add i64 %i.y, %.026.i.i96
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread, label %bb.e, !llvm.loop !62

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.p

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit: ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %i.av, i64 16
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit, %bb.c
  %.sroa.7.175 = phi i64 [ %i.j, %bb.c ], [ %i.at, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit ] ; 4 uses
  %.sroa.025.174 = phi ptr [ %i.i, %bb.c ], [ %i.bf, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.025.174, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !63 ; 3 uses
  %.neg.i.i.i = mul nsw i64 %.sroa.7.175, -16     ; 2 uses
  %i.bi = getelementptr i8, ptr %.sroa.025.174, i64 %.neg.i.i.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 -2
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !49
  %.not.i = icmp ult i8 %i.bk, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69
  %i.bl = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bm = zext i64 %i.bl to i128
  %i.bn = mul nuw i128 %i.bm, 14181476777654086739
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = trunc nuw i128 %i.bo to i64
  %i.bq = mul i64 %i.bl, -4265267296055464877
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, -4265267296055464877     ; 2 uses
  %i.bt = lshr i64 %i.bs, 14
  %i.bu = and i64 %i.bt, 255
  %i.bv = lshr i64 %i.bs, 22
  %.sroa.speculated.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69, %bb.h
  %.sroa.5.0.i = phi i64 [ 0, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69 ], [ %.sroa.speculated.i.i.i17, %bb.h ]
  %.sroa.04.0.i = phi i64 [ 0, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69 ], [ %i.bv, %bb.h ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr nonnull %.sroa.025.174, i64 %.sroa.7.175, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
  %i.bw = getelementptr inbounds i8, ptr %.sroa.025.174, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.neg.i.i.i ; 2 uses
  %.not19.i121 = icmp eq i64 %.sroa.7.175, 0
  br i1 %.not19.i121, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %bb.i, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit
  br label %.preheader

bb.i:                                             ; preds = %.lr.ph
  %.not19.i = icmp eq i64 %i.by, 0
  br i1 %.not19.i, label %.preheader.preheader, label %.lr.ph, !llvm.loop !148

.lr.ph:                                           ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit, %bb.i
  %.sroa.10.0122 = phi i64 [ %i.by, %bb.i ], [ %.sroa.7.175, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit ]
  %i.by = add nsw i64 %.sroa.10.0122, -1          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %.not85 = icmp eq i8 %i.ca, 0
  br i1 %.not85, label %bb.i, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit, !prof !33, !llvm.loop !148

.preheader:                                       ; preds = %.preheader.preheader, %.critedge.i
  %.017.i98 = phi ptr [ %i.ce, %.critedge.i ], [ %i.bx, %.preheader.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.017.i98, i64 14
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = and i8 %i.cc, 15
  %.not86 = icmp eq i8 %i.cd, 0
  br i1 %.not86, label %.critedge.i, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit, !prof !60

.critedge.i:                                      ; preds = %.preheader
  %i.ce = getelementptr inbounds i8, ptr %.017.i98, i64 -256 ; 3 uses
  %i.cf = load <16 x i8>, ptr %i.ce, align 16, !tbaa !17
  %i.cg = icmp eq <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 16383
  %.not87 = icmp eq i16 %i.ci, 16383
  br i1 %.not87, label %.preheader, label %bb.j, !prof !33

bb.j:                                             ; preds = %.critedge.i
  %i.cj = icmp ne ptr %i.ce, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cj)
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit: ; preds = %.lr.ph, %.preheader, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !149 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !tbaa.struct !70
  %i.cn = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.bh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !tbaa.struct !70
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24
  %i.ct = add nsw i64 %i.cs, -1
  %.not = icmp eq i64 %i.bh, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !150
  store ptr %i.cu, ptr %4, align 8, !tbaa !79, !alias.scope !153, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !150
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58, !noalias !156
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = zext i64 %i.cw to i128
  %i.cy = mul nuw i128 %i.cx, 14181476777654086739
  %i.cz = lshr i128 %i.cy, 64
  %i.da = trunc nuw i128 %i.cz to i64
  %i.db = mul i64 %i.cw, -4265267296055464877
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, -4265267296055464877     ; 2 uses
  %i.de = lshr i64 %i.dd, 14
  %i.df = and i64 %i.de, 255
  %i.dg = lshr i64 %i.dd, 22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 %i.dg, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !150
  %.sroa.03.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !85, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !150
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store i64 %i.bh, ptr %i.dh, align 8, !tbaa !52
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !56
  %.pre105 = load ptr, ptr %1, align 8, !tbaa !53
  %.pre106 = ptrtoint ptr %.pre105 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit
  %.pre-phi = phi i64 [ %.pre106, %bb.k ], [ %i.cq, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit ] ; 2 uses
  %i.di = phi ptr [ %.pre, %bb.k ], [ %i.cl, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit ]
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -24 ; 3 uses
  store ptr %i.dj, ptr %i.ck, align 8, !tbaa !56
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %.pre-phi
  %i.dm = sdiv exact i64 %i.dl, 24
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = shl i64 %.sroa.speculated.i, 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !68 ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %.pre-phi
  %i.ds = sdiv exact i64 %i.dr, 24
  %.not88 = icmp ugt i64 %i.dn, %i.ds
  br i1 %.not88, label %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = icmp eq ptr %i.dp, %i.dj
  br i1 %i.dt, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(48) %1) #31 ; 0 uses
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i: ; preds = %bb.n, %bb.m
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 15
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !43
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit

_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit: ; preds = %bb.o, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.p

bb.p:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly18threadlocal_detail14ThreadEntrySet12compressibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %0, align 8, !tbaa !53
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = shl i64 %.sroa.speculated, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = icmp ule i64 %i.h, %i.m
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #31 ; 0 uses
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE7reserveEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE7reserveEm.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE7reserveEm.exit: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !46
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = ptrtoint ptr %1 to i64
  %i.g = or i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.c, 256
  br i1 %i.k, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.p, %bb.d ], [ %2, %bb.c ]
  %i.o = phi ptr [ %i.q, %bb.d ], [ %1, %bb.c ]
  %i.p = add i64 %i.n, -1                         ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i, !prof !33, !llvm.loop !148

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.m, %.critedge.i.i.i.preheader ]
  %i.t = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16, !tbaa !17
  %i.v = icmp eq <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.x, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !33, !llvm.loop !159

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.y = xor i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = shl nuw nsw i64 %i.ac, 4
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ag, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.ah = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !52
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %.not.i.i7 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.7) #44
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !49
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load i64, ptr %i.a, align 8, !tbaa !46
  %i.au = and i64 %i.at, 255
  %notmask.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !36    ; 4 uses
  %i.ax = and i64 %3, %i.av
  %i.ay = shl nsw i64 %i.ax, 8                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bb = phi i64 [ %i.ay, %bb.g ], [ %i.bn, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 14 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !49
  %i.bf = add i8 %i.be, %.010.lcssa.i
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !49
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bg = phi i64 [ %i.bn, %bb.i ], [ %i.ay, %bb.g ]
  %.01126.i = phi i64 [ %i.bl, %bb.i ], [ %3, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !87  ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bj, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bk = add i8 %i.bj, -1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bl = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bm = and i64 %i.bl, %i.av
  %i.bn = shl nsw i64 %i.bm, 8                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bn
  %i.bp = icmp eq ptr %i.bo, %i.am
  br i1 %i.bp, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5folly18threadlocal_detail11ThreadEntry31cachedInSetMatchesElementsArrayEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !149    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %i.g = sdiv exact i64 %reass.sub.fr.i, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #41
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #42
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %reass.sub.fr.i
  %i.l = add i64 %reass.sub.fr.i, -24             ; 2 uses
  %i.m = urem i64 %i.l, 24
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = add i64 %i.n, 24                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.a, i64 %i.o, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.o
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #31 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.k, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !53
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !56
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !68
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.u) #43
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 5 uses
  %i.c = lshr i64 %i.b, 8                         ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.c) ; 11 uses
  %i.d = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.j = icmp ult i64 %i.b, 256
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.b, 255                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !52
  store i64 %i.k, ptr %i.a, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.b, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %i.i, align 1, !tbaa !17
  %i.o = icmp eq i64 %i.m, 0
  %i.p = shl i8 %i.n, 4
  %i.q = zext i8 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 16
  %i.s = shl i64 256, %i.m
  %.0.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.s
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !36
  store i64 0, ptr %i.a, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.0.i.i.i) #31
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

bb.f:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %i.c
  %i.t = and i64 %i.b, 255                        ; 4 uses
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw i64 1, %i.t
  %i.v = load ptr, ptr %0, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = and i8 %i.x, 15
  %i.z = zext nneg i8 %i.y to i64                 ; 2 uses
  %i.aa = shl i64 %i.z, %i.t
  %i.ab = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add i64 %.sroa.speculated, -1
  %i.ad = udiv i64 %i.ac, 12
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = sub nuw nsw i64 64, %i.ae               ; 2 uses
  %i.ag = shl i64 12, %i.af
  %i.ah = icmp ugt i64 %i.ag, 72057594037927935
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = shl nuw nsw i64 1, %i.af
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.g, %bb.j
  %.pn21.i.i = phi i64 [ %i.ai, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.j ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.aj = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.aa, %i.aj
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.u, i64 noundef %i.z, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

bb.l:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %i.ap = shl i64 %i.ao, %i.t                     ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.ap
  br i1 %.not10, label %bb.m, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = shl nuw i64 1, %i.t
  %i.ar = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %i.ap, 7
  %i.at = lshr i64 %i.as, 3
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ugt i64 %.sroa.speculated, %i.au
  br i1 %i.av, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.aw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.q:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.speculated, -1
  %i.ay = udiv i64 %i.ax, 12
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = sub nuw nsw i64 64, %i.az               ; 2 uses
  %i.bb = shl i64 12, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 72057594037927935
end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pr, %bb.f ], [ %i.i, %bb.e ]
  %.not28 = icmp ult i32 %i.n, 2048
  br i1 %.not28, label %bb.j, label %bb.h, !prof !60

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef -2048, i32 noundef 16, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  store i32 %i.p, ptr %1, align 4
  br label %bb.b

bb.j:                                             ; preds = %bb.h, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #47
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call noundef i64 @llvm.x86.rdtsc()
  %i.e = ptrtoint ptr %0 to i64
  br label %.outer

.outer:                                           ; preds = %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, %bb.d
  %.1.ph = phi i32 [ 0, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit ], [ %i.l, %bb.d ] ; 3 uses
  %i.f = shl i32 %.1.ph, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.1.ph, 1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !6760

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !60

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #31, !srcloc !6755
  br label %bb.c, !llvm.loop !6761

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.e = tail call noundef i32 @sched_yield() #31 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.235 = phi i32 [ %3, %bb.c ], [ %i.l, %bb.e ]  ; 3 uses
  %i.f = shl i32 %.235, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.235, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !6762

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #31 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.235.1 = phi i32 [ %.235, %bb.f ], [ %i.u, %bb.h ] ; 3 uses
  %i.o = shl i32 %.235.1, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 32
  %i.s = and i64 %i.r, -2
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.235.1, 1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !6762

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.235.2 = phi i32 [ %.235.1, %bb.i ], [ %i.ad, %bb.k ] ; 4 uses
  %i.x = shl i32 %.235.2, 2
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.y
  %i.aa = load atomic i64, ptr %i.z acquire, align 32
  %i.ab = and i64 %i.aa, -2
  %i.ac = icmp eq i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %.235.2, 1                      ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.c
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !6762

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.235.2, %i.c
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = zext i32 %.235.2 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 3 uses
  %xtraiter = and i64 %i.ah, 1
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.q ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ak = shl i64 %indvars.iv, 2
  %i.al = and i64 %i.ak, 4294967292
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.al ; 2 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 32 ; 2 uses
  %i.ao = and i64 %i.an, -2
  %i.ap = icmp eq i64 %i.ao, %i.d
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %..0 = add i32 %.052, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %.052, %bb.m ], [ %..0, %bb.n ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.at = add i64 %indvars.iv.next, 4
  %i.au = and i64 %i.at, 4294967292
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.au ; 2 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 32 ; 2 uses
  %i.ax = and i64 %i.aw, -2
  %i.ay = icmp eq i64 %i.ax, %i.d
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = cmpxchg ptr %i.av, i64 %i.aw, i64 0 seq_cst seq_cst, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = zext i1 %i.ba to i32
  %..0.1 = add i32 %.1, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %.1, %bb.o ], [ %..0.1, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !6763

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.052.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bc = shl i64 %indvars.iv.epil.init, 2
  %i.bd = and i64 %i.bc, 4294967292
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bd ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 32 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = icmp eq i64 %i.bg, %i.d
  br i1 %i.bh, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.epil.preheader
  %i.bi = cmpxchg ptr %i.be, i64 %i.bf, i64 0 seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = zext i1 %i.bj to i32
  %..0.epil = add i32 %.052.epil.init, %i.bk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.r, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.052.epil.init, %.epil.preheader ], [ %..0.epil, %bb.r ] ; 2 uses
  %.not40 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = shl i32 %.1.lcssa, 11                   ; 2 uses
  %i.bm = atomicrmw add ptr %0, i32 %i.bl seq_cst, align 4
  %i.bn = add i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %1, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !212, !range !123, !noundef !124
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !210    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !18
  %i.h = and i32 %i.f, 15
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #26 align 2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE2ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !203
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !197
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #40
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5folly18threadlocal_detail14StaticMetaBase16elementsCapacityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = tail call noundef ptr %i.b()             ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly18threadlocal_detail14StaticMetaBase8allocateEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #41
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = load atomic i32, ptr %1 monotonic, align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6764
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !6764 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  store ptr %i.j, ptr %i.g, align 8, !tbaa !6765
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw add ptr %0, i32 1 monotonic, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.l, %bb.e ], [ %i.k, %bb.d ]  ; 2 uses
  %i.m = atomicrmw xchg ptr %1, i32 %.0 release, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.1 = phi i32 [ %.0, %bb.f ], [ %i.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14StaticMetaBase36popThreadEntrySetAndClearElementPtrsEj(ptr dead_on_unwind noalias writable sret(%"struct.folly::threadlocal_detail::ThreadEntrySet") align 8 initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.70", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = zext i32 %2 to i64                       ; 5 uses
  %i.e = load atomic i64, ptr %i.c acquire, align 8
  %i.f = icmp ugt i64 %i.e, %i.d
  br i1 %i.f, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load atomic ptr, ptr %i.g acquire, align 8
  br label %_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEixEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.d)
  br label %_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEixEm.exit

_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEixEm.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6766)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !210, !alias.scope !6766
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !212, !alias.scope !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !6766
  %i.p = load atomic i32, ptr %i.n acquire, align 4, !noalias !6766 ; 4 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !18, !noalias !6766
  %i.q = and i32 %i.p, -1312
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %.critedge.i.i.i.i.i.i, !prof !60

bb.d:                                             ; preds = %_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEixEm.exit
  %i.s = or disjoint i32 %i.p, 128
  %i.t = cmpxchg ptr %i.n, i32 %i.p, i32 %i.s seq_cst seq_cst, align 4, !noalias !6766 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !213

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.v = extractvalue { i32, i1 } %i.t, 0
  store i32 %i.v, ptr %i.b, align 4, !noalias !6766
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEixEm.exit
  %i.w = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !6766 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit

_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit: ; preds = %bb.d, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !6766
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !6766
  store i8 1, ptr %i.o, align 8, !tbaa !212, !alias.scope !6766
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %4, align 8, !tbaa !210    ; 4 uses
  %.not.i.i = icmp eq ptr %i.z, null              ; 2 uses
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i.i
  call void @_ZSt4swapIN5folly18threadlocal_detail14ThreadEntrySetEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %0) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ac = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #31 ; 2 uses
  %.not.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i17, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #41
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !149   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #31 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.l
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #31 ; 0 uses
  br i1 %.not.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.aj = atomicrmw and ptr %i.z, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ak = and i32 %i.aj, -401
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !18
  %i.al = and i32 %i.aj, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.h, !prof !60

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #40
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.f, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.j:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #31
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNS9_22SynchronizedMutexLevelE1ELNS9_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.ao

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.l
  %.sroa.018.022 = phi ptr [ %i.az, %bb.l ], [ %i.ad, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  %i.at = icmp ugt i64 %i.as, %i.d
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.d ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !6769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  store ptr null, ptr %i.ap, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 24 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %bb.f, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN5folly18threadlocal_detail14ThreadEntrySetEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #30 comdat personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i:
  %2 = alloca %"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %.sroa.17.32.copyload14 = load i64, ptr %i.h, align 8, !tbaa !52 ; 2 uses
  %.sroa.25.32..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.25.32.copyload18 = load i64, ptr %.sroa.25.32..sroa_idx17, align 8, !tbaa !52 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !149
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  store ptr %i.l, ptr %i.d, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i.i.i.i, label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit.thread, label %bb.a

_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit.thread: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i
  store ptr %i.a, ptr %1, align 8, !tbaa !53
  store ptr %i.c, ptr %i.i, align 8, !tbaa !56
  store ptr %i.e, ptr %i.k, align 8, !tbaa !68
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i5

bb.a:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.p = load i8, ptr %i.o, align 1, !tbaa !43
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.h, align 8, !tbaa !46   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.t = icmp ult i64 %i.r, 256
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = and i64 %i.r, 255                        ; 2 uses
  store i64 0, ptr %.sroa.25.32..sroa_idx17, align 8, !tbaa !52
  store i64 %i.u, ptr %i.h, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %i.r, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.w = load i8, ptr %i.s, align 1, !tbaa !17
  %i.x = icmp eq i64 %i.v, 0
  %i.y = shl i8 %i.w, 4
  %i.z = zext i8 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 16
  %i.ab = shl i64 256, %i.v
  %.0.i.i.i.i.i.i.i.i = select i1 %i.x, i64 %i.aa, i64 %i.ab
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !36
  store i64 0, ptr %i.h, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %.0.i.i.i.i.i.i.i.i) #31
  %.pre.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !94
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit

_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit: ; preds = %bb.a, %bb.d
  %i.ac = phi ptr [ %i.n, %bb.a ], [ %.pre.i.i.i.i.i, %bb.d ]
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !94
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !94
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !6770
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !6770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !6770
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.pr = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !68
  store ptr %i.a, ptr %1, align 8, !tbaa !53
  store ptr %i.c, ptr %i.i, align 8, !tbaa !56
  store ptr %i.e, ptr %i.k, align 8, !tbaa !68
  %.not.i.i.i.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i4, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i5, label %bb.e

bb.e:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit
  %i.af = ptrtoint ptr %.pre to i64
  %i.ag = ptrtoint ptr %.pr to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ah) #43
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i5

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i5: ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit.thread, %bb.e, %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10.thread, label %bb.f

_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10.thread: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i5
  store ptr %i.g, ptr %i.m, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.427.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.17.32.copyload14, ptr %i.am, align 8, !tbaa !52
  store i64 %.sroa.25.32.copyload18, ptr %.sroa.427.0..sroa_idx35, align 8, !tbaa !52
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !46 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 14
  %i.aq = icmp ult i64 %i.ao, 256
  br i1 %i.aq, label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = and i64 %i.ao, 255                      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !52
  store i64 %i.ar, ptr %i.an, align 8, !tbaa !46
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10

_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10: ; preds = %bb.f, %bb.g
  %i.at = phi i64 [ %i.ao, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = shl i8 %i.au, 4
  %i.ax = zext i8 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 16
  %i.az = shl i64 256, %i.at
  %.0.i.i.i.i.i.i.i.i7 = select i1 %i.av, i64 %i.ay, i64 %i.az
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.m, align 8, !tbaa !36
  store i64 0, ptr %i.an, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %.0.i.i.i.i.i.i.i.i7) #31
  %.pre.i.i.i.i.i8 = load ptr, ptr %i.m, align 8, !tbaa !94 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i8, i64 15
  %.pre28 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !43
  %i.ba = icmp eq i8 %.pre28, -1
  store ptr %i.g, ptr %i.m, align 8, !tbaa !94
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.026.0.copyload = load i64, ptr %i.bb, align 8, !tbaa !52
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.17.32.copyload14, ptr %i.bb, align 8, !tbaa !52
  store i64 %.sroa.25.32.copyload18, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !52
  br i1 %i.ba, label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i8, i64 14
  %i.bd = and i64 %.sroa.026.0.copyload, 255      ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = shl i8 %i.be, 4
  %i.bh = zext i8 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 16
  %i.bj = shl i64 256, %i.bd
  %.0.i.i.i.i.i.i = select i1 %i.bf, i64 %i.bi, i64 %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i.i.i.i8, i64 noundef %.0.i.i.i.i.i.i) #31
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit

_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit: ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10.thread, %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit10, %bb.h
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !229
  %.not.i.i = icmp eq i64 %1, -1
  br i1 %.not.i.i, label %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit, label %_ZN5folly11findLastSetImEEjT_.exit.i.i

_ZN5folly11findLastSetImEEjT_.exit.i.i:           ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.e = sub nuw nsw i64 64, %i.d
  %i.f = shl nuw i64 1, %i.e
  br label %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit

_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit: ; preds = %bb.a, %_ZN5folly11findLastSetImEEjT_.exit.i.i
  %i.g = phi i64 [ %i.f, %_ZN5folly11findLastSetImEEjT_.exit.i.i ], [ 1, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit
  %i.h = phi ptr [ %.pre, %bb.h ], [ %i.c, %_ZNK5folly32atomic_grow_array_policy_defaultINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEES5_E4growEmm.exit ] ; 3 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = call noundef ptr @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = cmpxchg ptr %i.b, ptr %i.m, ptr %i.l acq_rel acquire, align 8 ; 2 uses
  %i.o = extractvalue { ptr, i1 } %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store atomic i64 %i.g, ptr %0 release, align 8
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.p = extractvalue { ptr, i1 } %i.n, 0
  store ptr %i.p, ptr %i.a, align 8
  call void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !229
  br label %bb.b, !llvm.loop !6771
end_hunk_1
begin_hunk_2_@_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9new_arrayEmRPNSB_5arrayE:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !205
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.as
  store ptr %i.au, ptr %i.av, align 8, !tbaa !205
  %i.aw = add nuw i64 %.03759, 2                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !205
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aw
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !205
  %i.ba = add nuw i64 %.03759, 3                  ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !205
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ba
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !205
  %i.be = add nuw i64 %.03759, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.be, %i.e
  br i1 %exitcond.not.3, label %.preheader58, label %scalar.ph, !llvm.loop !6776

.lr.ph64:                                         ; preds = %.preheader58
  %i.bf = shl i64 %i.e, 3                         ; 2 uses
  %i.bg = getelementptr i8, ptr %i.s, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 16
  %i.bh = sub i64 %i.f, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bh, i1 false), !tbaa !205
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph64, %.critedge
  %.03563 = phi i64 [ %i.e, %.lr.ph64 ], [ %i.bq, %.critedge ] ; 3 uses
  %i.bj = load atomic ptr, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !229
  %.not44 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not44, label %.critedge, label %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i

.critedge:                                        ; preds = %bb.d
  %i.bl = sub nuw i64 %.03563, %i.e
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, i8 0, i64 56, i1 false), !alias.scope !6777
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bn, align 8, !tbaa !36, !alias.scope !6777
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bo, i8 0, i64 20, i1 false), !alias.scope !6777
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03563
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !205
  %i.bq = add i64 %.03563, 1                      ; 2 uses
  %exitcond67.not = icmp eq i64 %i.bq, %1
  br i1 %exitcond67.not, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit, label %bb.d, !llvm.loop !6780

_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i: ; preds = %bb.d
  store ptr %i.bj, ptr %2, align 8, !tbaa !229
  invoke void @_ZN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE9del_arrayEPNSB_5arrayE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s)
          to label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit unwind label %bb.e, !inline_history !6781

bb.e:                                             ; preds = %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  %i.bt = tail call ptr @__cxa_begin_catch(ptr %i.bs) #31 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #31, !inline_history !6782
  unreachable

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultISB_S8_EEEEFvPNSE_5arrayEEPSE_SG_EELb1EED2Ev.exit: ; preds = %.critedge, %.preheader58, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i
  %.375 = phi ptr [ null, %_ZNSt5_BindIFMN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEEEFvPNSC_5arrayEEPSC_SE_EE6__callIvJEJLm0ELm1EEEET_OSt5tupleIJDpT0_EESt12_Index_tupleIJXspT1_EEE.exit.i.i.i ], [ %i.s, %.preheader58 ], [ %i.s, %.critedge ]
  ret ptr %.375
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14StaticMetaBase7destroyEPNS1_7EntryIDE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin", align 8 ; 4 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"struct.folly::threadlocal_detail::ThreadEntrySet", align 16 ; 15 uses
  %6 = alloca %"class.std::shared_lock", align 8  ; 11 uses
  %7 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  %8 = alloca %"struct.folly::threadlocal_detail::ThreadEntrySet", align 16 ; 11 uses
  %9 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i16 0, ptr %i.p, align 8, !tbaa !203
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 4 uses
  store i16 0, ptr %i.q, align 2, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  %i.r = load atomic i32, ptr %i.o monotonic, align 4 ; 4 uses
  store i32 %i.r, ptr %i.l, align 4, !tbaa !18
  %i.s = and i32 %i.r, -1408
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = or disjoint i32 %i.r, 2048
  %i.v = cmpxchg ptr %i.o, i32 %i.r, i32 %i.u seq_cst seq_cst, align 4 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.b
  %i.x = extractvalue { i32, i1 } %i.v, 0
  store i32 %i.x, ptr %i.l, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.p, align 8, !tbaa !203
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i, %bb.a
  %i.y = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 2 dereferenceable(4) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !210
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !212
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !187, !range !123, !noundef !124
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  %i.ae = load atomic i32, ptr %i.z acquire, align 8 ; 4 uses
  store i32 %i.ae, ptr %i.k, align 4, !tbaa !18
  %i.af = and i32 %i.ae, -1312
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %.critedge.i.i.i, !prof !60

bb.g:                                             ; preds = %bb.f
  %i.ah = or disjoint i32 %i.ae, 128
  %i.ai = cmpxchg ptr %i.z, i32 %i.ae, i32 %i.ah seq_cst seq_cst, align 4 ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE4lockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, !prof !213

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.g
  %i.ak = extractvalue { i32, i1 } %i.ai, 0
  store i32 %i.ak, ptr %i.k, align 4
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %bb.f
  %i.al = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.k, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE4lockEv.exit unwind label %bb.i ; 0 uses

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE4lockEv.exit: ; preds = %.critedge.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store i8 1, ptr %i.aa, align 8, !tbaa !212
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bd

bb.i:                                             ; preds = %.critedge.i.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.j:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE4lockEv.exit, %bb.e
  %i.ao = atomicrmw xchg ptr %1, i32 -1 acquire, align 4 ; 4 uses
  %.not = icmp eq i32 %i.ao, -1
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN5folly18threadlocal_detail14StaticMetaBase36popThreadEntrySetAndClearElementPtrsEj(ptr dead_on_unwind nonnull writable sret(%"struct.folly::threadlocal_detail::ThreadEntrySet") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.ao)
          to label %bb.l unwind label %bb.ay

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %5, align 16, !tbaa !53   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !68
  %i.at = load <2 x ptr>, ptr %8, align 16, !tbaa !149
  store <2 x ptr> %i.at, ptr %5, align 16, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !68
  store ptr %i.av, ptr %i.ar, align 16, !tbaa !68
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.ay) #43
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i: ; preds = %bb.m, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !36  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !43
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i
  %i.be = load i64, ptr %i.n, align 16, !tbaa !46 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bg = icmp ult i64 %i.be, 256
  br i1 %i.bg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = and i64 %i.be, 255
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bi, align 8, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = phi i64 [ %i.be, %bb.n ], [ %i.bh, %bb.o ] ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bl = icmp eq i64 %i.bj, 0
  %i.bm = shl i8 %i.bk, 4
  %i.bn = zext i8 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 16
  %i.bp = shl i64 256, %i.bj
  %.0.i.i.i.i.i.i.i.i = select i1 %i.bl, i64 %i.bo, i64 %i.bp
  store i64 0, ptr %i.n, align 16, !tbaa !46
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %.0.i.i.i.i.i.i.i.i) #31
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit

_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i, %bb.p
  %i.bq = phi ptr [ %i.ba, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEaSEOS5_.exit.i ], [ @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, %bb.p ] ; 4 uses
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !94
  store ptr %i.br, ptr %i.m, align 8, !tbaa !94
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !94
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !6770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !6770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !6770
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43
  %i.bv = icmp eq i8 %i.bu, -1
  br i1 %i.bv, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit
  %i.bw = load i64, ptr %i.bs, align 16, !tbaa !46 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.by = icmp ult i64 %i.bw, 256
  br i1 %i.by, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = and i64 %i.bw, 255                      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.ca, align 8, !tbaa !52
  store i64 %i.bz, ptr %i.bs, align 16, !tbaa !46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = phi i64 [ %i.bw, %bb.q ], [ %i.bz, %bb.r ] ; 2 uses
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.cd = icmp eq i64 %i.cb, 0
  %i.ce = shl i8 %i.cc, 4
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add nuw nsw i64 %i.cf, 16
  %i.ch = shl i64 256, %i.cb
  %.0.i.i.i.i.i.i = select i1 %i.cd, i64 %i.cg, i64 %i.ch
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.az, align 8, !tbaa !36
  store i64 0, ptr %i.bs, align 16, !tbaa !46
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %.0.i.i.i.i.i.i) #31
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i: ; preds = %bb.s, %_ZN5folly18threadlocal_detail14ThreadEntrySetaSEOS1_.exit
  %i.ci = load ptr, ptr %8, align 16, !tbaa !53   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i
  %i.cj = load ptr, ptr %i.au, align 16, !tbaa !68
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #43
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit

_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.cn = load i16, ptr %i.p, align 8, !tbaa !203 ; 2 uses
  %.not.i22 = icmp eq i16 %i.cn, 0
  br i1 %.not.i22, label %bb.u, label %bb.v, !prof !33

bb.u:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit
  invoke void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() #41
          to label %.noexc23 unwind label %bb.az

.noexc23:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit
  %i.co = load ptr, ptr %6, align 8, !tbaa !197   ; 7 uses
  switch i16 %i.cn, label %bb.ab [
    i16 1, label %bb.w
    i16 3, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.cp = load atomic i32, ptr %i.co acquire, align 4
  %i.cq = and i32 %i.cp, 768
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.co)
          to label %.noexc49 unwind label %bb.az

.noexc49:                                         ; preds = %bb.x
  br i1 %i.cs, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.noexc49, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.ct = atomicrmw sub ptr %i.co, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cu = add i32 %i.ct, -2048                    ; 2 uses
  store i32 %i.cu, ptr %i.f, align 4, !tbaa !18
  %i.cv = icmp ugt i32 %i.cu, 2047
  %i.cw = and i32 %i.ct, 16
  %.not.i.i.i.i48 = icmp eq i32 %i.cw, 0
  %or.cond.i.i.i = or i1 %i.cv, %.not.i.i.i.i48
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.z, !prof !214

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.co, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.az

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.cx = load i16, ptr %i.q, align 2, !tbaa !204
  %i.cy = zext i16 %i.cx to i64
  %i.cz = ptrtoint ptr %i.co to i64
  %.idx.i = shl nuw nsw i64 %i.cy, 5
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.db = cmpxchg ptr %i.da, i64 %i.cz, i64 0 seq_cst seq_cst, align 8
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.dd = atomicrmw sub ptr %i.co, i32 2048 seq_cst, align 4 ; 2 uses
  %i.de = add i32 %i.dd, -2048                    ; 2 uses
  store i32 %i.de, ptr %i.e, align 4, !tbaa !18
  %i.df = icmp ugt i32 %i.de, 2047
  %i.dg = and i32 %i.dd, 16
  %.not.i.i.i47 = icmp eq i32 %i.dg, 0
  %or.cond.i.i = or i1 %i.df, %.not.i.i.i47
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ac, !prof !214

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.co, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.az

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc49, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %bb.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i
  store i32 0, ptr %i.p, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.di = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.dh) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.di) #41
          to label %.noexc25 unwind label %bb.ba

.noexc25:                                         ; preds = %bb.ae
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !6765 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !189
  %.not.i26 = icmp eq ptr %i.dl, %i.dn
  br i1 %.not.i26, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i32 %i.ao, ptr %i.dl, align 4, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !6765
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.ag:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !188 ; 4 uses
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 6 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %bb.ah, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #41
          to label %.noexc27 unwind label %bb.bb

.noexc27:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.du = ashr exact i64 %i.ds, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dv, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #42
          to label %.noexc28 unwind label %bb.bb  ; 4 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store i32 %i.ao, ptr %i.eb, align 4, !tbaa !18
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.ai, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ai:                                            ; preds = %.noexc28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ai, %.noexc28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.ds) #43
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ea, ptr %i.dj, align 8, !tbaa !188
  store ptr %i.ed, ptr %i.dk, align 8, !tbaa !6765
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.ee, ptr %i.dm, align 8, !tbaa !189
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.af
  %i.ef = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dh) #31 ; 0 uses
  %i.eg = load i8, ptr %i.aa, align 8, !tbaa !212, !range !123, !noundef !124
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ak, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ei = load ptr, ptr %7, align 8, !tbaa !210   ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i29, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.ej = atomicrmw and ptr %i.ei, i32 -401 seq_cst, align 4 ; 2 uses
  %i.ek = and i32 %i.ej, -401
  store i32 %i.ek, ptr %i.j, align 4, !tbaa !18
  %i.el = and i32 %i.ej, 15
  %.not.i.i.i.i30 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i.i30, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.am, !prof !60

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ei, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.an

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #40
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.ak, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.eo = load i16, ptr %i.p, align 8, !tbaa !203 ; 2 uses
  %.not.i31 = icmp eq i16 %i.eo, 0
  br i1 %.not.i31, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %i.ep = load ptr, ptr %6, align 8, !tbaa !197   ; 7 uses
  switch i16 %i.eo, label %bb.au [
    i16 1, label %bb.ap
    i16 3, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.eq = load atomic i32, ptr %i.ep acquire, align 4
  %i.er = and i32 %i.eq, 768
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.et = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ep)
          to label %.noexc59 unwind label %bb.aw

.noexc59:                                         ; preds = %bb.aq
  br i1 %i.et, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %.noexc59, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.eu = atomicrmw sub ptr %i.ep, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ev = add i32 %i.eu, -2048                    ; 2 uses
  store i32 %i.ev, ptr %i.d, align 4, !tbaa !18
  %i.ew = icmp ugt i32 %i.ev, 2047
  %i.ex = and i32 %i.eu, 16
  %.not.i.i.i.i56 = icmp eq i32 %i.ex, 0
  %or.cond.i.i.i57 = or i1 %i.ew, %.not.i.i.i.i56
  br i1 %or.cond.i.i.i57, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i58, label %bb.as, !prof !214

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ep, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i58 unwind label %bb.aw

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i58: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.ax

bb.at:                                            ; preds = %bb.ao
  %i.ey = load i16, ptr %i.q, align 2, !tbaa !204
  %i.ez = zext i16 %i.ey to i64
  %i.fa = ptrtoint ptr %i.ep to i64
  %.idx.i52 = shl nuw nsw i64 %i.ez, 5
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i52
  %i.fc = cmpxchg ptr %i.fb, i64 %i.fa, i64 0 seq_cst seq_cst, align 8
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fd, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.fe = atomicrmw sub ptr %i.ep, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ff = add i32 %i.fe, -2048                    ; 2 uses
  store i32 %i.ff, ptr %i.c, align 4, !tbaa !18
  %i.fg = icmp ugt i32 %i.ff, 2047
  %i.fh = and i32 %i.fe, 16
  %.not.i.i.i53 = icmp eq i32 %i.fh, 0
  %or.cond.i.i54 = or i1 %i.fg, %.not.i.i.i53
  br i1 %or.cond.i.i54, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i55, label %bb.av, !prof !214

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ep, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i55 unwind label %bb.aw

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i55: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.as, %bb.aq
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #40
  unreachable

bb.ax:                                            ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, %.noexc59, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i58, %bb.at, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.fk = load ptr, ptr %5, align 16, !tbaa !149  ; 2 uses
  %i.fl = load ptr, ptr %i.aq, align 8, !tbaa !149 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %.loopexit, label %.lr.ph

bb.ay:                                            ; preds = %bb.k
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.bc

bb.az:                                            ; preds = %bb.ac, %bb.z, %bb.x, %bb.u
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ae
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.ah
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dh) #31 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.az, %bb.bb, %bb.ba, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.fn, %bb.ay ], [ %i.fo, %bb.az ], [ %i.fq, %bb.bb ], [ %i.fp, %bb.ba ]
  call void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #31
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bc ], [ %i.am, %bb.h ]
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.fs = call ptr @__cxa_begin_catch(ptr %.3) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str, i32 noundef 583, i32 noundef 1)
          to label %bb.be unwind label %bb.ch

bb.be:                                            ; preds = %bb.bd
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.bf unwind label %bb.ci

bb.bf:                                            ; preds = %bb.be
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.32, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bf
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @__cxa_end_catch()
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySetD2Ev.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  ret void

.lr.ph:                                           ; preds = %bb.ax, %_ZN5folly18threadlocal_detail14ElementWrapper7disposeENS_18TLPDestructionModeE.exit
  %.sroa.074.083 = phi ptr [ %i.gq, %_ZN5folly18threadlocal_detail14ElementWrapper7disposeENS_18TLPDestructionModeE.exit ], [ %i.fk, %bb.ax ] ; 4 uses
  %i.fv = load ptr, ptr %.sroa.074.083, align 8, !tbaa !219 ; 3 uses
  %.not81 = icmp eq ptr %i.fv, null
  br i1 %.not81, label %_ZN5folly18threadlocal_detail14ElementWrapper7disposeENS_18TLPDestructionModeE.exit, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.074.083, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !220 ; 2 uses
  %i.fy = and i64 %i.fx, -2
  %i.fz = and i64 %i.fx, 1
  %.not.i33 = icmp eq i64 %i.fz, 0
  %i.ga = inttoptr i64 %i.fy to ptr               ; 4 uses
  br i1 %.not.i33, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.fv, ptr %i.h, align 8, !tbaa !16
  store i32 1, ptr %i.i, align 4, !tbaa !221
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !223
  %.not.i.i.i34 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i34, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt25__throw_bad_function_callv() #41
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !225
  invoke void %i.ge(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %_ZNKSt8functionIFvPvN5folly18TLPDestructionModeEEEclES0_S2_.exit.i unwind label %.loopexit82, !inline_history !227

_ZNKSt8functionIFvPvN5folly18TLPDestructionModeEEEclES0_S2_.exit.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bh
  invoke void %i.ga(ptr noundef nonnull %i.fv, i32 noundef 1)
          to label %bb.bn unwind label %.loopexit82

.loopexit82:                                      ; preds = %bb.bk, %bb.bl
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp, %.loopexit82
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit82 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gf = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.gf) #40
  unreachable

bb.bn:                                            ; preds = %_ZNKSt8functionIFvPvN5folly18TLPDestructionModeEEEclES0_S2_.exit.i, %bb.bl
  %i.gg = load i64, ptr %i.fw, align 8, !tbaa !220 ; 2 uses
  %i.gh = and i64 %i.gg, 1
  %.not.i35 = icmp eq i64 %i.gh, 0
  br i1 %.not.i35, label %_ZN5folly18threadlocal_detail14ElementWrapper7cleanupEv.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gi = and i64 %i.gg, -2                       ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_ZN5folly18threadlocal_detail14ElementWrapper7cleanupEv.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gk = inttoptr i64 %i.gi to ptr               ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !223 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i36, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gn = invoke noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.br ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.bq, %bb.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 32) #43
  br label %_ZN5folly18threadlocal_detail14ElementWrapper7cleanupEv.exit

_ZN5folly18threadlocal_detail14ElementWrapper7cleanupEv.exit: ; preds = %bb.bn, %bb.bo, %_ZNSt14_Function_baseD2Ev.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.074.083, i8 0, i64 16, i1 false)
  br label %_ZN5folly18threadlocal_detail14ElementWrapper7disposeENS_18TLPDestructionModeE.exit

_ZN5folly18threadlocal_detail14ElementWrapper7disposeENS_18TLPDestructionModeE.exit: ; preds = %.lr.ph, %_ZN5folly18threadlocal_detail14ElementWrapper7cleanupEv.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.074.083, i64 24 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fl
  br i1 %i.gr, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %bb.j
  %i.gs = load i8, ptr %i.aa, align 8, !tbaa !212, !range !123, !noundef !124
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.bs, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit40

bb.bs:                                            ; preds = %.critedge
  %i.gu = load ptr, ptr %7, align 8, !tbaa !210   ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i37, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit40, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.gv = atomicrmw and ptr %i.gu, i32 -401 seq_cst, align 4 ; 2 uses
  %i.gw = and i32 %i.gv, -401
  store i32 %i.gw, ptr %i.g, align 4, !tbaa !18
  %i.gx = and i32 %i.gv, 15
  %.not.i.i.i.i38 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i.i.i38, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i39, label %bb.bu, !prof !60

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.gu, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i39 unwind label %bb.bv

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i39: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit40

bb.bv:                                            ; preds = %bb.bu
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #40
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit40: ; preds = %.critedge, %bb.bs, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i39
end_hunk_2
begin_hunk_3_@llvm.umin.i32
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind }
attributes #32 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind }
attributes #36 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { noreturn nounwind }
attributes #41 = { noreturn }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { builtin nounwind }
attributes #44 = { cold noreturn nounwind }
attributes #45 = { allocsize(0) }
attributes #46 = { nounwind willreturn memory(none) }
attributes #47 = { cold }
attributes #48 = { cold nounwind }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !9, i64 8}
!20 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!21 = !{!20, !9, i64 12}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !11, i64 0}
!24 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !26, file: !25, line: 139, type: !28, scopeLine: 139, containingType: !26, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!25 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !27, file: !25, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!27 = !DINamespace(name: "std", scope: null)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = distinct !{null, null, null}
!32 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !26, file: !25, line: 143, type: !28, scopeLine: 143, containingType: !26, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = distinct !{null}
!35 = distinct !{null, null, null, null}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEEE", !38, i64 0, !39, i64 8}
!38 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEE", !15, i64 0}
!39 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEEELb1EEE", !40, i64 0, !42, i64 8}
!40 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !41, i64 0}
!41 = !{!"long", !10, i64 0}
!42 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPSt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEE", !41, i64 0}
!43 = !{!44, !10, i64 15}
!44 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !45, i64 0, !10, i64 15}
!45 = !{!"_ZTSSt5arrayIhLm15EE", !10, i64 0}
!46 = !{!40, !41, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !10, i64 14}
!50 = !{!"_ZTSN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEE", !51, i64 0, !10, i64 14, !10, i64 15}
!51 = !{!"_ZTSSt5arrayIhLm14EE", !10, i64 0}
!52 = !{!41, !41, i64 0}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE", !15, i64 0}
!56 = !{!54, !55, i64 8}
!57 = !{!42, !41, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTSN5folly18threadlocal_detail11ThreadEntryE", !15, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = !{!64, !41, i64 8}
!64 = !{!"_ZTSSt4pairIKPN5folly18threadlocal_detail11ThreadEntryEmE", !59, i64 0, !41, i64 8}
!65 = !{!66, !15, i64 0}
!66 = !{!"_ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE", !67, i64 0, !59, i64 16}
!67 = !{!"_ZTSN5folly18threadlocal_detail14ElementWrapperE", !15, i64 0, !41, i64 8}
!68 = !{!54, !55, i64 16}
!69 = !{!66, !59, i64 16}
!70 = !{i64 0, i64 8, !16, i64 8, i64 8, !52, i64 16, i64 8, !58}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_ZSt19__relocate_object_aIN5folly18threadlocal_detail14ThreadEntrySet7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !"_ZSt19__relocate_object_aIN5folly18threadlocal_detail14ThreadEntrySet7ElementES3_SaIS3_EEvPT_PT0_RT1_"}
!74 = distinct !{!74, !73, !"_ZSt19__relocate_object_aIN5folly18threadlocal_detail14ThreadEntrySet7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!75 = distinct !{!75, !48}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPSA_IKS6_mEEEbERSC_DpOT_: argument 0"}
!78 = distinct !{!78, !"_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPSA_IKS6_mEEEbERSC_DpOT_"}
!79 = !{!80, !80, i64 0}
!80 = !{!"p2 _ZTSN5folly18threadlocal_detail11ThreadEntryE", !81, i64 0}
!81 = !{!"any p2 pointer", !15, i64 0}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZSt16forward_as_tupleIJRKPN5folly18threadlocal_detail11ThreadEntryEEESt5tupleIJDpOT_EES9_: argument 0"}
!84 = distinct !{!84, !"_ZSt16forward_as_tupleIJRKPN5folly18threadlocal_detail11ThreadEntryEEESt5tupleIJDpOT_EES9_"}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSSt4pairIKPN5folly18threadlocal_detail11ThreadEntryEmE", !15, i64 0}
!87 = !{!50, !10, i64 15}
!88 = distinct !{!88, !48}
!89 = !{!64, !59, i64 0}
!90 = !{!91, !93, i64 16}
!91 = !{!"_ZTSSt4pairIN5folly3f146detail11F14ItemIterIPNS2_8F14ChunkIS_IKPNS0_18threadlocal_detail11ThreadEntryEmEEEEEbE", !92, i64 0, !93, i64 16}
!92 = !{!"_ZTSN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEEE", !86, i64 0, !41, i64 8}
!93 = !{!"bool", !10, i64 0}
!94 = !{!38, !38, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 omnipotent char", !15, i64 0}
!97 = !{!93, !93, i64 0}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!102, !93, i64 0}
!102 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !93, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSE_: argument 0"}
!105 = distinct !{!105, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSE_"}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 bool", !15, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 long", !15, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"p2 _ZTSN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEE", !81, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"p2 omnipotent char", !81, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"p1 _ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEEE", !15, i64 0}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, !48}
!118 = !{!"branch_weights", i32 1999, i32 1}
!119 = !{!"branch_weights", i32 1, i32 0}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !48}
!122 = distinct !{!122, !48}
!123 = !{i8 0, i8 2}
!124 = !{}
!125 = !{!126, !107, i64 0}
!126 = !{!"_ZTSZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10rehashImplEmmmmmEUlvE_", !107, i64 0, !109, i64 8, !111, i64 16, !109, i64 24, !113, i64 32, !109, i64 40, !115, i64 48, !109, i64 56, !107, i64 64, !109, i64 72, !109, i64 80}
!127 = !{!126, !109, i64 8}
!128 = !{i64 8}
!129 = !{!126, !111, i64 16}
!130 = !{!126, !109, i64 24}
!131 = !{!126, !115, i64 48}
!132 = !{!126, !113, i64 32}
!133 = !{!126, !109, i64 40}
!134 = !{!126, !109, i64 56}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZSt19__relocate_object_aIN5folly18threadlocal_detail14ThreadEntrySet7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!137 = distinct !{!137, !"_ZSt19__relocate_object_aIN5folly18threadlocal_detail14ThreadEntrySet7ElementES3_SaIS3_EEvPT_PT0_RT1_"}
!138 = distinct !{!138, !137, !"_ZSt19__relocate_object_aIN5folly18threadlocal_detail14ThreadEntrySet7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPSA_IKS6_mEEEbERSC_DpOT_: argument 0"}
!141 = distinct !{!141, !"_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPSA_IKS6_mEEEbERSC_DpOT_"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZSt16forward_as_tupleIJRKPN5folly18threadlocal_detail11ThreadEntryEEESt5tupleIJDpOT_EES9_: argument 0"}
!144 = distinct !{!144, !"_ZSt16forward_as_tupleIJRKPN5folly18threadlocal_detail11ThreadEntryEEESt5tupleIJDpOT_EES9_"}
!145 = !{!146, !140}
!146 = distinct !{!146, !147, !"_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE15tryEmplaceValueIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbERKT_DpOT0_: argument 0"}
!147 = distinct !{!147, !"_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE15tryEmplaceValueIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbERKT_DpOT0_"}
!148 = distinct !{!148, !48}
!149 = !{!55, !55, i64 0}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPSA_IKS6_mEEEbERSC_DpOT_: argument 0"}
!152 = distinct !{!152, !"_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPSA_IKS6_mEEEbERSC_DpOT_"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZSt16forward_as_tupleIJRKPN5folly18threadlocal_detail11ThreadEntryEEESt5tupleIJDpOT_EES9_: argument 0"}
!155 = distinct !{!155, !"_ZSt16forward_as_tupleIJRKPN5folly18threadlocal_detail11ThreadEntryEEESt5tupleIJDpOT_EES9_"}
!156 = !{!157, !151}
!157 = distinct !{!157, !158, !"_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE15tryEmplaceValueIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbERKT_DpOT0_: argument 0"}
!158 = distinct !{!158, !"_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE15tryEmplaceValueIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbERKT_DpOT0_"}
!159 = distinct !{!159, !48}
!160 = !{!161, !9, i64 0}
!161 = !{!"_ZTSSt13__atomic_baseIjE", !9, i64 0}
!162 = !{!163, !15, i64 88}
!163 = !{!"_ZTSN5folly18threadlocal_detail14StaticMetaBaseE", !164, i64 0, !168, i64 8, !173, i64 32, !175, i64 72, !175, i64 76, !9, i64 80, !15, i64 88, !93, i64 96, !176, i64 104, !181, i64 112}
!164 = !{!"_ZTSN5folly14relaxed_atomicIjEE", !165, i64 0}
!165 = !{!"_ZTSN5folly6detail28relaxed_atomic_integral_baseIjEE", !166, i64 0}
!166 = !{!"_ZTSN5folly6detail19relaxed_atomic_baseIjEE", !167, i64 0}
!167 = !{!"_ZTSSt6atomicIjE", !161, i64 0}
!168 = !{!"_ZTSSt6vectorIjSaIjEE", !169, i64 0}
!169 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !170, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !171, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !172, i64 0, !172, i64 8, !172, i64 16}
!172 = !{!"p1 int", !15, i64 0}
!173 = !{!"_ZTSSt5mutex", !174, i64 0}
!174 = !{!"_ZTSSt12__mutex_base", !10, i64 0}
!175 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !167, i64 0}
!176 = !{!"_ZTSN5folly14relaxed_atomicIlEE", !177, i64 0}
!177 = !{!"_ZTSN5folly6detail28relaxed_atomic_integral_baseIlEE", !178, i64 0}
!178 = !{!"_ZTSN5folly6detail19relaxed_atomic_baseIlEE", !179, i64 0}
!179 = !{!"_ZTSSt6atomicIlE", !180, i64 0}
!180 = !{!"_ZTSSt13__atomic_baseIlE", !41, i64 0}
!181 = !{!"_ZTSN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEEE", !182, i64 0, !184, i64 8}
!182 = !{!"_ZTSSt6atomicImE", !183, i64 0}
!183 = !{!"_ZTSSt13__atomic_baseImE", !41, i64 0}
!184 = !{!"_ZTSSt6atomicIPN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvS_NS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS8_S_EEE5arrayEE", !185, i64 0}
!185 = !{!"_ZTSSt13__atomic_baseIPN5folly17atomic_grow_arrayINS0_12SynchronizedINS0_18threadlocal_detail14ThreadEntrySetENS0_15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEENS0_32atomic_grow_array_policy_defaultIS9_S6_EEE5arrayEE", !186, i64 0}
!186 = !{!"p1 _ZTSN5folly17atomic_grow_arrayINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_32atomic_grow_array_policy_defaultIS8_S5_EEE5arrayE", !15, i64 0}
!187 = !{!163, !93, i64 96}
!188 = !{!171, !172, i64 0}
!189 = !{!171, !172, i64 16}
!190 = !{!191, !194, i64 32}
!191 = !{!"_ZTSN5folly18threadlocal_detail11ThreadEntryE", !192, i64 0, !182, i64 8, !193, i64 16, !59, i64 24, !194, i64 32, !93, i64 40, !41, i64 48, !195, i64 56}
!192 = !{!"p1 _ZTSN5folly18threadlocal_detail14ElementWrapperE", !15, i64 0}
!193 = !{!"p1 _ZTSN5folly18threadlocal_detail15ThreadEntryListE", !15, i64 0}
!194 = !{!"p1 _ZTSN5folly18threadlocal_detail14StaticMetaBaseE", !15, i64 0}
!195 = !{!"_ZTSN5folly6detail15aligned_storageILm8ELm8EE4typeE", !10, i64 0}
!196 = !{!163, !9, i64 80}
!197 = !{!198, !199, i64 0}
!198 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !199, i64 0, !200, i64 8}
!199 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !15, i64 0}
!200 = !{!"_ZTSN5folly16SharedMutexTokenE", !201, i64 0, !202, i64 2}
!201 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !10, i64 0}
!202 = !{!"short", !10, i64 0}
!203 = !{!200, !201, i64 0}
!204 = !{!200, !202, i64 2}
!205 = !{!206, !206, i64 0}
!206 = !{!"p1 _ZTSN5folly12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !15, i64 0}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!209 = distinct !{!209, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18threadlocal_detail14ThreadEntrySetENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!210 = !{!211, !199, i64 0}
!211 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !199, i64 0, !93, i64 8}
!212 = !{!211, !93, i64 8}
!213 = !{!"branch_weights", i32 2146410443, i32 1073205}
!214 = !{!"branch_weights", i32 4001, i32 1}
!215 = !{!191, !93, i64 40}
!216 = distinct !{!216, !48}
!217 = !{!191, !193, i64 16}
!218 = !{!191, !192, i64 0}
!219 = !{!67, !15, i64 0}
!220 = !{!67, !41, i64 8}
!221 = !{!222, !222, i64 0}
!222 = !{!"_ZTSN5folly18TLPDestructionModeE", !10, i64 0}
!223 = !{!224, !15, i64 16}
!224 = !{!"_ZTSSt14_Function_base", !10, i64 0, !15, i64 16}
!225 = !{!226, !15, i64 24}
!226 = !{!"_ZTSSt8functionIFvPvN5folly18TLPDestructionModeEEE", !224, i64 0, !15, i64 24}
!227 = distinct !{null}
!228 = distinct !{!228, !48}
!229 = !{!186, !186, i64 0}
!230 = distinct !{!230, !48}
!231 = !{i64 0, i64 4, !18, i64 8, i64 8, !232}
!232 = !{!233, !233, i64 0}
!233 = !{!"p1 _ZTSNSt3_V214error_categoryE", !15, i64 0}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!236 = distinct !{!236, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!237 = !DISubprogram(name: "message", linkageName: "_ZNKSt3_V214error_category7messageB5cxx11Ei", scope: !239, file: !238, line: 134, type: !241, scopeLine: 134, containingType: !239, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!238 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/system_error", directory: "")
!239 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "error_category", scope: !240, file: !238, line: 106, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3_V214error_categoryE")
!240 = !DINamespace(name: "_V2", scope: !27, exportSymbols: true)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !6722, !667}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !27, file: !244, line: 77, baseType: !245)
!244 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stringfwd.h", directory: "")
!245 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !247, file: !246, line: 87, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !248, templateParams: !6720, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!246 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/basic_string.h", directory: "")
!247 = !DINamespace(name: "__cxx11", scope: !27, exportSymbols: true)
!248 = !{!249, !5971, !5991, !5992, !6000, !6004, !6209, !6214, !6217, !6220, !6225, !6228, !6234, !6235, !6236, !6239, !6244, !6247, !6248, !6251, !6255, !6260, !6261, !6262, !6265, !6268, !6271, !6274, !6277, !6278, !6281, !6340, !6398, !6401, !6404, !6407, !6411, !6414, !6417, !6418, !6421, !6422, !6425, !6428, !6431, !6434, !6438, !6442, !6445, !6448, !6449, !6453, !6456, !6459, !6462, !6465, !6468, !6471, !6474, !6475, !6476, !6481, !6486, !6487, !6488, !6489, !6490, !6491, !6492, !6495, !6496, !6497, !6498, !6499, !6500, !6501, !6502, !6503, !6504, !6505, !6514, !6520, !6521, !6522, !6525, !6528, !6529, !6530, !6531, !6532, !6533, !6534, !6535, !6538, !6541, !6542, !6545, !6546, !6549, !6550, !6551, !6552, !6553, !6554, !6555, !6556, !6559, !6562, !6565, !6568, !6571, !6574, !6577, !6581, !6584, !6587, !6590, !6591, !6594, !6597, !6600, !6603, !6606, !6609, !6612, !6615, !6618, !6621, !6624, !6627, !6630, !6633, !6634, !6637, !6640, !6641, !6644, !6647, !6650, !6651, !6654, !6657, !6660, !6663, !6666, !6669, !6670, !6671, !6672, !6673, !6674, !6675, !6676, !6677, !6678, !6679, !6680, !6681, !6682, !6683, !6684, !6685, !6686, !6687, !6688, !6689, !6692, !6695, !6698, !6701, !6704, !6707, !6710, !6713, !6716, !6717, !6718, !6719}
!249 = !DIDerivedType(tag: DW_TAG_variable, name: "npos", scope: !245, file: !246, line: 112, baseType: !250, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !245, file: !246, line: 99, baseType: !252, flags: DIFlagPublic)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !254, file: !253, line: 56, baseType: !5950)
!253 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ext/alloc_traits.h", directory: "")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !255, file: !253, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !256, templateParams: !5969, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!255 = !DINamespace(name: "__gnu_cxx", scope: null)
!256 = !{!257, !5958, !5961, !5964, !5965, !5966, !5967, !5968}
!257 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !254, baseType: !258, extraData: i32 0)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !27, file: !259, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !260, templateParams: !5956, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!259 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "ba5569b3568669c1c77efc18640dd1aa")
!260 = !{!261, !5941, !5944, !5947, !5953}
!261 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !258, file: !259, line: 481, type: !262, scopeLine: 481, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !267, !375}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !258, file: !259, line: 437, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !258, file: !259, line: 431, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !27, file: !270, line: 287, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !271, templateParams: !5919, identifier: "_ZTSSaIcE")
!270 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "9c5b773ad00830bea46f2a8fa4ac22e7")
!271 = !{!272, !5921, !5925, !5930, !5934, !5935, !5938}
!272 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !269, baseType: !273, flags: DIFlagPublic, extraData: i32 0)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<char>", scope: !27, file: !274, line: 47, baseType: !275)
!274 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "f56d3b48d132e35738b60e08703928ec")
!275 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char>", scope: !27, file: !276, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !277, templateParams: !5919, identifier: "_ZTSSt15__new_allocatorIcE")
!276 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "c7892ebb1170c1f49c5be98396a83230")
!277 = !{!278, !282, !287, !291, !5912, !5915}
!278 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIcEC4Ev", scope: !275, file: !276, line: 88, type: !279, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!282 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIcEC4ERKS0_", scope: !275, file: !276, line: 92, type: !283, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !281, !285}
!285 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!287 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__new_allocatorIcEaSERKS0_", scope: !275, file: !276, line: 100, type: !288, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !281, !285}
!290 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !275, size: 64)
!291 = !DISubprogram(name: "allocate", linkageName: "_ZNSt15__new_allocatorIcE8allocateEmPKv", scope: !275, file: !276, line: 126, type: !292, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!265, !281, !294, !380}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !295, file: !276, line: 67, baseType: !367, flags: DIFlagPublic)
!295 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<folly::threadlocal_detail::ThreadEntrySet::Element>", scope: !27, file: !276, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !296, templateParams: !373, identifier: "_ZTSSt15__new_allocatorIN5folly18threadlocal_detail14ThreadEntrySet7ElementEE")
!296 = !{!297, !301, !306, !310, !5905, !5908}
!297 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEC4Ev", scope: !295, file: !276, line: 88, type: !298, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEC4ERKS4_", scope: !295, file: !276, line: 92, type: !302, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !300, !304}
!304 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!306 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__new_allocatorIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEaSERKS4_", scope: !295, file: !276, line: 100, type: !307, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !300, !304}
!309 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !295, size: 64)
!310 = !DISubprogram(name: "allocate", linkageName: "_ZNSt15__new_allocatorIN5folly18threadlocal_detail14ThreadEntrySet7ElementEE8allocateEmPKv", scope: !295, file: !276, line: 126, type: !311, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !300, !294, !380}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Element", scope: !316, file: !315, line: 282, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5897, identifier: "_ZTSN5folly18threadlocal_detail14ThreadEntrySet7ElementE")
!315 = !DIFile(filename: "folly/detail/ThreadLocalDetail.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "ce453cf5447748773943dd27491a4b30")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ThreadEntrySet", scope: !317, file: !315, line: 281, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !319, identifier: "_ZTSN5folly18threadlocal_detail14ThreadEntrySetE")
!317 = !DINamespace(name: "threadlocal_detail", scope: !318)
!318 = !DINamespace(name: "folly", scope: null)
!319 = !{!320, !890, !5866, !5870, !5874, !5880, !5883, !5886, !5889, !5892, !5895, !5896}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "threadElements", scope: !316, file: !315, line: 291, baseType: !321, size: 192)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElementVector", scope: !316, file: !315, line: 290, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<folly::threadlocal_detail::ThreadEntrySet::Element, std::allocator<folly::threadlocal_detail::ThreadEntrySet::Element> >", scope: !27, file: !323, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !324, templateParams: !888, identifier: "_ZTSSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE")
!323 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "514164964ac06e2061e9e779d8cf420e")
!324 = !{!325, !508, !527, !543, !544, !550, !553, !556, !560, !566, !570, !576, !581, !585, !595, !598, !601, !604, !609, !610, !614, !617, !620, !623, !626, !690, !751, !752, !753, !758, !763, !764, !765, !766, !767, !768, !769, !772, !773, !776, !777, !778, !779, !782, !783, !791, !798, !801, !802, !803, !806, !809, !810, !811, !814, !817, !820, !824, !825, !828, !831, !834, !837, !840, !843, !846, !847, !848, !849, !850, !853, !854, !858, !859, !860, !865, !868, !873, !876, !879, !882, !885}
!325 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !322, baseType: !326, flags: DIFlagProtected, extraData: i32 0)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<folly::threadlocal_detail::ThreadEntrySet::Element, std::allocator<folly::threadlocal_detail::ThreadEntrySet::Element> >", scope: !27, file: !323, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !327, templateParams: !507, identifier: "_ZTSSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE")
!327 = !{!328, !458, !463, !468, !472, !475, !480, !483, !486, !490, !493, !496, !499, !500, !503, !506}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !326, file: !323, line: 374, baseType: !329, size: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !326, file: !323, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !330, identifier: "_ZTSNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE12_Vector_implE")
!330 = !{!331, !413, !438, !442, !447, !451, !455}
!331 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !329, baseType: !332, extraData: i32 0)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !326, file: !323, line: 88, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !334, file: !253, line: 126, baseType: !412)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<folly::threadlocal_detail::ThreadEntrySet::Element>", scope: !335, file: !253, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !124, templateParams: !373, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEES4_E6rebindIS4_EE")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<folly::threadlocal_detail::ThreadEntrySet::Element>, folly::threadlocal_detail::ThreadEntrySet::Element>", scope: !255, file: !253, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !336, templateParams: !410, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEES4_EE")
!336 = !{!337, !396, !399, !402, !406, !407, !408, !409}
!337 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !335, baseType: !338, extraData: i32 0)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<folly::threadlocal_detail::ThreadEntrySet::Element> >", scope: !27, file: !259, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !339, templateParams: !394, identifier: "_ZTSSt16allocator_traitsISaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEE")
!339 = !{!340, !376, !382, !385, !391}
!340 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEE8allocateERS4_m", scope: !338, file: !259, line: 481, type: !341, scopeLine: 481, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !344, !375}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !338, file: !259, line: 437, baseType: !313)
!344 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !338, file: !259, line: 431, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<folly::threadlocal_detail::ThreadEntrySet::Element>", scope: !27, file: !270, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !347, templateParams: !373, identifier: "_ZTSSaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEE")
!347 = !{!348, !350, !354, !359, !363, !364, !370}
!348 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !346, baseType: !349, flags: DIFlagPublic, extraData: i32 0)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<folly::threadlocal_detail::ThreadEntrySet::Element>", scope: !27, file: !274, line: 47, baseType: !295)
!350 = !DISubprogram(name: "allocator", linkageName: "_ZNSaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEC4Ev", scope: !346, file: !270, line: 163, type: !351, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!354 = !DISubprogram(name: "allocator", linkageName: "_ZNSaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEC4ERKS3_", scope: !346, file: !270, line: 167, type: !355, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !353, !357}
!357 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!359 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIN5folly18threadlocal_detail14ThreadEntrySet7ElementEEaSERKS3_", scope: !346, file: !270, line: 172, type: !360, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
end_hunk_3
