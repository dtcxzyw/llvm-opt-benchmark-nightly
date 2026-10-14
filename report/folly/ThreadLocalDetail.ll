Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadLocalDetail?download=true
inline.NumInlined: 1463
inline.NumDeleted: 730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5folly18threadlocal_detail14ThreadEntrySet5eraseEPNS0_11ThreadEntryE:bb.a
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i.i97 = phi i64 [ %i.ad, %bb.d ], [ %i.bd, %bb.g ]
  %.026.i.i96 = phi i64 [ %i.w, %bb.d ], [ %i.be, %bb.g ] ; 2 uses
  %i.ag = and i64 %.026.i.i96, %i.ae
  %i.ah = shl nuw nsw i64 %i.ag, 8
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
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62
  %i.ay = icmp eq ptr %2, %i.ax
  br i1 %i.ay, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit, label %.critedge.i.i, !prof !63

.critedge.i.i:                                    ; preds = %bb.f
  %i.az = add nuw nsw i32 %.sroa.026.0, 65535
  %i.ba = and i32 %i.az, %.sroa.026.0             ; 2 uses
  %i.bb = and i32 %i.ba, 16382
  %.not84 = icmp eq i32 %i.bb, 0
  br i1 %.not84, label %.loopexit, label %bb.f, !llvm.loop !1

.loopexit:                                        ; preds = %.critedge.i.i, %bb.e
  %i.bc = icmp eq i8 %i.ap, 0
  br i1 %i.bc, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread, label %bb.g, !prof !63

bb.g:                                             ; preds = %.loopexit
  %i.bd = add i64 %.024.i.i97, -1                 ; 2 uses
  %i.be = add i64 %i.y, %.026.i.i96
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread, label %bb.e, !llvm.loop !2

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.q

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit: ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %i.av, i64 16
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit, %bb.c
  %.sroa.7.175 = phi i64 [ %i.j, %bb.c ], [ %i.at, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit ] ; 4 uses
  %.sroa.025.174 = phi ptr [ %i.i, %bb.c ], [ %i.bf, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread69.loopexit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.025.174, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !65 ; 3 uses
  %.neg.i.i.i = mul nsw i64 %.sroa.7.175, -16     ; 2 uses
  %i.bi = getelementptr i8, ptr %.sroa.025.174, i64 %.neg.i.i.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 -2
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !54
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
  br i1 %.not19.i, label %.preheader.preheader, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit, %bb.i
  %.sroa.10.0122 = phi i64 [ %i.by, %bb.i ], [ %.sroa.7.175, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE13eraseIterIntoIZNS1_11F14BasicMapIS7_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEEOT_EUlOSK_E_EEvSN_SP_.exit ]
  %i.by = add nsw i64 %.sroa.10.0122, -1          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25
  %.not85 = icmp eq i8 %i.ca, 0
  br i1 %.not85, label %bb.i, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit, !prof !39, !llvm.loop !4

bb.j:                                             ; preds = %.critedge.i
  %i.cb = add i64 %.0.i99, 1                      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit, label %.preheader, !llvm.loop !5

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %.0.i99 = phi i64 [ %i.cb, %bb.j ], [ 1, %.preheader.preheader ]
  %.017.i98 = phi ptr [ %i.cg, %bb.j ], [ %i.bx, %.preheader.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.017.i98, i64 14
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  %i.cf = and i8 %i.ce, 15
  %.not86 = icmp eq i8 %i.cf, 0
  br i1 %.not86, label %.critedge.i, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit, !prof !63

.critedge.i:                                      ; preds = %.preheader
  %i.cg = getelementptr inbounds i8, ptr %.017.i98, i64 -256 ; 3 uses
  %i.ch = load <16 x i8>, ptr %i.cg, align 16, !tbaa !25
  %i.ci = icmp eq <16 x i8> %i.ch, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16
  %i.ck = and i16 %i.cj, 16383
  %.not87 = icmp eq i16 %i.ck, 16383
  br i1 %.not87, label %bb.j, label %bb.k, !prof !39

bb.k:                                             ; preds = %.critedge.i
  %i.cl = icmp ne ptr %i.cg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cl)
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit: ; preds = %.lr.ph, %.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !92 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !tbaa.struct !70
  %i.cp = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.bh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !tbaa.struct !70
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 24
  %i.cv = add nsw i64 %i.cu, -1
  %.not = icmp eq i64 %i.bh, %i.cv
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !238
  store ptr %i.cw, ptr %4, align 8, !tbaa !73, !alias.scope !239, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !238
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62, !noalias !240
  %i.cy = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.cz = zext i64 %i.cy to i128
  %i.da = mul nuw i128 %i.cz, 14181476777654086739
  %i.db = lshr i128 %i.da, 64
  %i.dc = trunc nuw i128 %i.db to i64
  %i.dd = mul i64 %i.cy, -4265267296055464877
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, -4265267296055464877     ; 2 uses
  %i.dg = lshr i64 %i.df, 14
  %i.dh = and i64 %i.dg, 255
  %i.di = lshr i64 %i.df, 22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 %i.di, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !238
  %.sroa.03.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !75, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !238
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store i64 %i.bh, ptr %i.dj, align 8, !tbaa !55
  %.pre = load ptr, ptr %i.cm, align 8, !tbaa !59
  %.pre105 = load ptr, ptr %1, align 8, !tbaa !58
  %.pre106 = ptrtoint ptr %.pre105 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit
  %.pre-phi = phi i64 [ %.pre106, %bb.l ], [ %i.cs, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit ] ; 2 uses
  %i.dk = phi ptr [ %.pre, %bb.l ], [ %i.cn, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE11advanceImplEbb.exit ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -24 ; 3 uses
  store ptr %i.dl, ptr %i.cm, align 8, !tbaa !59
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %.pre-phi
  %i.do = sdiv exact i64 %i.dn, 24
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = shl nsw i64 %.sroa.speculated.i, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !68 ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %.pre-phi
  %i.du = sdiv exact i64 %i.dt, 24
  %.not88 = icmp ugt i64 %i.dp, %i.du
  br i1 %.not88, label %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = icmp eq ptr %i.dr, %i.dl
  br i1 %i.dv, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(48) %1) #31 ; 0 uses
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i: ; preds = %bb.o, %bb.n
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 15
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !49
  %i.ea = icmp eq i8 %i.dz, -1
  br i1 %i.ea, label %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  br label %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit

_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit: ; preds = %bb.p, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.q

bb.q:                                             ; preds = %_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv.exit, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE4findERKS6_.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly18threadlocal_detail14ThreadEntrySet12compressibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !58
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = shl nsw i64 %.sroa.speculated, 2
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #31 ; 0 uses
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load i8, ptr %i.i, align 1, !tbaa !49
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !50
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = ptrtoint ptr %1 to i64
  %i.g = or i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
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
  %i.s = load i8, ptr %i.r, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i, !prof !39, !llvm.loop !4

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.m, %.critedge.i.i.i.preheader ]
  %i.t = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16, !tbaa !25
  %i.v = icmp eq <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.x, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !39, !llvm.loop !5

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
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !55
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %.not.i.i7 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.7) #44
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !54
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load i64, ptr %i.a, align 8, !tbaa !50
  %i.au = and i64 %i.at, 255
  %notmask.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !46    ; 4 uses
  %i.ax = and i64 %3, %i.av
  %i.ay = shl nuw nsw i64 %i.ax, 8                ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bb = phi i64 [ %i.ay, %bb.g ], [ %i.bn, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 14 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !54
  %i.bf = add i8 %i.be, %.010.lcssa.i
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !54
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bg = phi i64 [ %i.bn, %bb.i ], [ %i.ay, %bb.g ]
  %.01126.i = phi i64 [ %i.bl, %bb.i ], [ %3, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !76  ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bj, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bk = add i8 %i.bj, -1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bl = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bm = and i64 %i.bl, %i.av
  %i.bn = shl nuw nsw i64 %i.bm, 8                ; 3 uses
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
end_hunk_0
