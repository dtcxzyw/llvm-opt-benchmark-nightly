Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/cord?download=true
inline.NumInlined: 1757
inline.NumDeleted: 506
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_202605264Cord10AppendImplIRKS1_EEvOT_:bb.a

_ZNK4absl12lts_202605264Cord5emptyEv.exit28:      ; preds = %bb.i, %bb.j
  %i.aa = phi i64 [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.s

bb.k:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit28
  br i1 %i.o, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !69, !noundef !69 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = atomicrmw add ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !32
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67 ; 5 uses
  %i.al = load atomic i32, ptr %i.ae acquire, align 8
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  tail call void @_ZN4absl12lts_2026052612crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #22
  br label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i32 2 monotonic, align 4 ; 0 uses
  %i.aq = atomicrmw sub ptr %i.ae, i32 2 acq_rel, align 4
  %.not.i.i30 = icmp eq i32 %i.aq, 2
  br i1 %.not.i.i30, label %bb.p, label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !68

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.ad)
  br label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i = phi ptr [ %i.ak, %bb.n ], [ %i.ad, %bb.l ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !23
  store i64 1, ptr %0, align 8, !tbaa !23
  %i.ar = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2026052613cord_internal17cordz_next_sampleE) ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i, !prof !36

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.au = add nsw i64 %i.as, -1
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !35
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.av = tail call noundef i64 @_ZN4absl12lts_2026052613cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !37

bb.q:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl12lts_2026052613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, i64 noundef %i.av)
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.r:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !70
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.s:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit28
  br i1 %i.o, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !31
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit

bb.u:                                             ; preds = %bb.s
  %i.ba = sext i8 %i.n to i64
  %i.bb = lshr exact i64 %i.ba, 1
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit

_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit: ; preds = %bb.t, %bb.u
  %i.bc = phi i64 [ %i.az, %bb.t ], [ %i.bb, %bb.u ] ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 512
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 12 uses
  br i1 %i.bd, label %bb.v, label %bb.ba

bb.v:                                             ; preds = %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit
  %i.bg = icmp ne ptr %i.bf, null
  %.not45 = select i1 %i.o, i1 %i.bg, i1 false
  br i1 %.not45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i = select i1 %i.o, ptr null, ptr %i.bh
  tail call void @_ZN4absl12lts_202605264Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.bc, ptr %spec.select.i, i32 noundef 1)
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.x:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !32  ; 3 uses
  %i.bk = icmp ugt i8 %i.bj, 5
  br i1 %i.bk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 13
  tail call void @_ZN4absl12lts_202605264Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.bc, ptr nonnull %i.bl, i32 noundef 1)
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.z:                                             ; preds = %bb.x
  %i.bm = icmp eq ptr %1, %0
  br i1 %i.bm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4absl12lts_202605264CordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  invoke void @_ZN4absl12lts_202605264Cord10AppendImplIS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4absl12lts_202605264Cord6AppendEOS1_.exit unwind label %bb.ab, !inline_history !71

_ZN4absl12lts_202605264Cord6AppendEOS1_.exit:     ; preds = %bb.aa
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bn

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !159
  store i32 -1, ptr %i.bq, align 8, !tbaa !73, !alias.scope !159
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !31, !noalias !159 ; 3 uses
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !77, !alias.scope !159
  %.not7.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.ad, !prof !68

bb.ad:                                            ; preds = %bb.ac
  %i.bs = icmp eq i8 %i.bj, 2
  br i1 %i.bs, label %bb.ae, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !68

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !67, !noalias !159 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !159
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.bv = phi i8 [ %.pre.i.i.i.i, %bb.ae ], [ %i.bj, %bb.ad ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bu, %bb.ae ], [ %i.bf, %bb.ad ] ; 10 uses
  %i.bw = icmp eq i8 %i.bv, 3
  br i1 %i.bw, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23, !noalias !159 ; 4 uses
  %i.bz = zext i8 %i.by to i32
  store i32 %i.bz, ptr %i.bq, align 8, !tbaa !73, !alias.scope !159
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !159 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.cd = zext i8 %i.by to i64                    ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  store ptr %.0.i.i.i.i.i, ptr %i.ce, align 8, !tbaa !79, !alias.scope !159
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 %i.cb, ptr %i.cg, align 1, !tbaa !23, !alias.scope !159
  %.018.i.i.i.i.i.i.i = zext i8 %i.cb to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.af
  %xtraiter = and i64 %i.cd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.cd, -1 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.018.i.i.i.i.i.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !39, !noalias !159 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !79, !alias.scope !159
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !159 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.cm, ptr %i.cn, align 2, !tbaa !23, !alias.scope !159
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.cm to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.co = icmp eq i8 %i.by, 1
  br i1 %i.co, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.021.i.i.i.i.i.i.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !39, !noalias !159 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !79, !alias.scope !159
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 14
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !159 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !23, !alias.scope !159
  %.0.i.i.i.i.i.i.i = zext i8 %i.cu to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0.i.i.i.i.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !39, !noalias !159 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !79, !alias.scope !159
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 14
  %i.db = load i8, ptr %i.da, align 1, !noalias !159 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !23, !alias.scope !159
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.db to i64      ; 2 uses
  %i.dd = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.af
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.af ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.de = load ptr, ptr %i.cc, align 8, !tbaa !79, !alias.scope !159
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39, !noalias !159 ; 5 uses
  %i.di = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !159
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !31, !noalias !159 ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  store i64 %i.dk, ptr %i.bp, align 8, !tbaa !81, !alias.scope !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !32, !noalias !159 ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 1
  br i1 %i.dn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !82, !noalias !159
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !42, !noalias !159 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !159
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.ds = phi i8 [ %.pre.i.i.i.i.i.i, %bb.ag ], [ %i.dm, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.ag ], [ %i.dh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.ag ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.dt = icmp ugt i8 %i.ds, 5
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !33, !noalias !159
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.dx = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !159
  %i.dy = icmp eq i8 %i.bv, 1
  br i1 %i.dy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !82, !noalias !159
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !42, !noalias !159 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !159
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ed = phi i8 [ %.pre.i.i.i.i.i, %bb.al ], [ %i.bv, %bb.ak ]
  %.010.i.i.i.i.i = phi ptr [ %i.ec, %bb.al ], [ %.0.i.i.i.i.i, %bb.ak ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.ea, %bb.al ], [ 0, %bb.ak ]
  %i.ee = icmp ugt i8 %i.ed, 5
  br i1 %i.ee, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84

bb.ao:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !33, !noalias !159
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84: ; preds = %bb.an, %bb.ao
  %.pn.i.i.i.i.i = phi ptr [ %i.ef, %bb.an ], [ %i.eh, %bb.ao ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %.lr.ph

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %bb.ai, %bb.aj
  %.pn.i.i.i.i.i.i = phi ptr [ %i.du, %bb.ai ], [ %i.dw, %bb.aj ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.bo, align 8, !tbaa !77 ; 2 uses
  %.not50 = icmp eq i64 %.pre.pre, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.3.0.i.sink.i.i.i.i92 = phi ptr [ %.sroa.3.0.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84 ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %.sink.i.i.i.i91 = phi i64 [ %i.dx, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84 ], [ %i.dj, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %i.ei = phi i64 [ 0, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84 ], [ %i.dk, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %.pre90 = phi i64 [ %i.br, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread84 ], [ %.pre.pre, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.ap

._crit_edge:                                      ; preds = %bb.ap, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.ac, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.ap:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.el = phi i64 [ %i.ei, %.lr.ph ], [ %i.gt, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i92, %.lr.ph ], [ %.sroa.2.0.copyload.i58, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i91, %.lr.ph ], [ %.sroa.0.0.copyload.i55, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.em = phi i64 [ %.pre90, %.lr.ph ], [ %i.gs, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_202605264Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i32 noundef 4)
  %i.en = sub i64 %i.em, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.en, ptr %i.bo, align 8, !tbaa !77
  %.not.i32 = icmp eq i64 %i.em, %.sroa.0.0.copyload.i
  br i1 %.not.i32, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load i32, ptr %i.bq, align 8, !tbaa !73 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.aq
  %i.eq = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.es, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.et = icmp eq i64 %i.el, 0
  br i1 %i.et, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !79 ; 2 uses
  %i.ev = load i8, ptr %i.ek, align 4, !tbaa !23  ; 2 uses
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 15
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !23
  %i.ez = zext i8 %i.ey to i64
  %i.fa = add nsw i64 %i.ez, -1
  %i.fb = icmp eq i64 %i.fa, %i.ew
  br i1 %i.fb, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.as, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.as ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.as ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.eq
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv.next.i.i.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !23
  %i.fg = zext i8 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 15
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !23
  %i.fk = zext i8 %i.fj to i64
  %i.fl = icmp eq i64 %i.fh, %i.fk
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.fl, label %.preheader, label %bb.at, !llvm.loop !1

bb.at:                                            ; preds = %.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv.next.i.i.i.i.i
  %i.fn = trunc i64 %i.fh to i8
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !23
  %i.fo = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202605264Cord10AppendImplIS1_EEvOT_:bb.a
  %i.z = lshr exact i64 %i.y, 1
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit28

_ZNK4absl12lts_202605264Cord5emptyEv.exit28:      ; preds = %bb.i, %bb.j
  %i.aa = phi i64 [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit28
  br i1 %i.o, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 7 uses
  %i.ae = load i64, ptr %1, align 8
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZNO4absl12lts_202605264Cord7TakeRepEv.exit, label %bb.m, !prof !36

bb.m:                                             ; preds = %bb.l
  %i.ag = inttoptr i64 %i.af to ptr
  tail call void @_ZN4absl12lts_2026052613cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ag)
  br label %_ZNO4absl12lts_202605264Cord7TakeRepEv.exit

_ZNO4absl12lts_202605264Cord7TakeRepEv.exit:      ; preds = %bb.l, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !32
  %i.aj = icmp eq i8 %i.ai, 2
  br i1 %i.aj, label %bb.n, label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !68

bb.n:                                             ; preds = %_ZNO4absl12lts_202605264Cord7TakeRepEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.an = load atomic i32, ptr %i.am acquire, align 8
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  tail call void @_ZN4absl12lts_2026052612crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #22
  br label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = atomicrmw add ptr %i.aq, i32 2 monotonic, align 4 ; 0 uses
  %i.as = atomicrmw sub ptr %i.am, i32 2 acq_rel, align 4
  %.not.i.i30 = icmp eq i32 %i.as, 2
  br i1 %.not.i.i30, label %bb.q, label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !68

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.ad)
  br label %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %_ZNO4absl12lts_202605264Cord7TakeRepEv.exit, %bb.o, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.al, %bb.o ], [ %i.ad, %_ZNO4absl12lts_202605264Cord7TakeRepEv.exit ], [ %i.al, %bb.p ], [ %i.al, %bb.q ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !23
  store i64 1, ptr %0, align 8, !tbaa !23
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2026052613cord_internal17cordz_next_sampleE) ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i, !prof !36

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.aw = add nsw i64 %i.au, -1
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !35
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.ax = tail call noundef i64 @_ZN4absl12lts_2026052613cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.at) ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !37

bb.r:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl12lts_2026052613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, i64 noundef %i.ax)
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !70
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.t:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit28
  br i1 %i.o, label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit, label %.thread

_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit: ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 13 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 512
  br i1 %i.bc, label %bb.u, label %bb.ax

.thread:                                          ; preds = %bb.t
  %i.bd = lshr exact i8 %i.n, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = icmp sgt i8 %i.n, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_ZN4absl12lts_202605264Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.be, ptr nonnull %i.bg, i32 noundef 1)
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.u:                                             ; preds = %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !32  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 5
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 13
  tail call void @_ZN4absl12lts_202605264Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.bb, ptr nonnull %i.bk, i32 noundef 1)
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.w:                                             ; preds = %bb.u
  %i.bl = icmp eq ptr %1, %0
  br i1 %i.bl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4absl12lts_202605264CordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  invoke void @_ZN4absl12lts_202605264Cord10AppendImplIS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4absl12lts_202605264Cord6AppendEOS1_.exit unwind label %bb.y, !inline_history !71

_ZN4absl12lts_202605264Cord6AppendEOS1_.exit:     ; preds = %bb.x
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bm

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !166
  store i32 -1, ptr %i.bp, align 8, !tbaa !73, !alias.scope !166
  %i.bq = load i64, ptr %i.ba, align 8, !tbaa !31, !noalias !166 ; 3 uses
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !77, !alias.scope !166
  %.not7.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.aa, !prof !68

bb.aa:                                            ; preds = %bb.z
  %i.br = icmp eq i8 %i.bi, 2
  br i1 %i.br, label %bb.ab, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !68

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !67, !noalias !166 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !166
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.bu = phi i8 [ %.pre.i.i.i.i, %bb.ab ], [ %i.bi, %bb.aa ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bt, %bb.ab ], [ %i.ba, %bb.aa ] ; 10 uses
  %i.bv = icmp eq i8 %i.bu, 3
  br i1 %i.bv, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !23, !noalias !166 ; 4 uses
  %i.by = zext i8 %i.bx to i32
  store i32 %i.by, ptr %i.bp, align 8, !tbaa !73, !alias.scope !166
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !166 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.cc = zext i8 %i.bx to i64                    ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr %.0.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !79, !alias.scope !166
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !23, !alias.scope !166
  %.018.i.i.i.i.i.i.i = zext i8 %i.ca to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.ac
  %xtraiter = and i64 %i.cc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.cc, -1 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.018.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !39, !noalias !166 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !79, !alias.scope !166
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 14
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !166 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.cl, ptr %i.cm, align 2, !tbaa !23, !alias.scope !166
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.cl to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.cn = icmp eq i8 %i.bx, 1
  br i1 %i.cn, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !39, !noalias !166 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !79, !alias.scope !166
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !166 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !23, !alias.scope !166
  %.0.i.i.i.i.i.i.i = zext i8 %i.ct to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0.i.i.i.i.i.i.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39, !noalias !166 ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !79, !alias.scope !166
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 14
  %i.da = load i8, ptr %i.cz, align 1, !noalias !166 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !23, !alias.scope !166
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.da to i64      ; 2 uses
  %i.dc = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.ac
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.ac ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dd = load ptr, ptr %i.cb, align 8, !tbaa !79, !alias.scope !166
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39, !noalias !166 ; 5 uses
  %i.dh = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !166
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !31, !noalias !166 ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 2 uses
  store i64 %i.dj, ptr %i.bo, align 8, !tbaa !81, !alias.scope !166
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !32, !noalias !166 ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 1
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !82, !noalias !166
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !42, !noalias !166 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !166
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.dr = phi i8 [ %.pre.i.i.i.i.i.i, %bb.ad ], [ %i.dl, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.dq, %bb.ad ], [ %i.dg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.do, %bb.ad ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.ds = icmp ugt i8 %i.dr, 5
  br i1 %i.ds, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.ag:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !33, !noalias !166
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.dw = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !166
  %i.dx = icmp eq i8 %i.bu, 1
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !82, !noalias !166
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !42, !noalias !166 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !166
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ec = phi i8 [ %.pre.i.i.i.i.i, %bb.ai ], [ %i.bu, %bb.ah ]
  %.010.i.i.i.i.i = phi ptr [ %i.eb, %bb.ai ], [ %.0.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.dz, %bb.ai ], [ 0, %bb.ah ]
  %i.ed = icmp ugt i8 %i.ec, 5
  br i1 %i.ed, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90

bb.al:                                            ; preds = %bb.aj
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !33, !noalias !166
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90: ; preds = %bb.ak, %bb.al
  %.pn.i.i.i.i.i = phi ptr [ %i.ee, %bb.ak ], [ %i.eg, %bb.al ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %.lr.ph

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %bb.af, %bb.ag
  %.pn.i.i.i.i.i.i = phi ptr [ %i.dt, %bb.af ], [ %i.dv, %bb.ag ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre56.pre = load i64, ptr %i.bn, align 8, !tbaa !77 ; 2 uses
  %.not52 = icmp eq i64 %.pre56.pre, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.3.0.i.sink.i.i.i.i98 = phi ptr [ %.sroa.3.0.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90 ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %.sink.i.i.i.i97 = phi i64 [ %i.dw, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90 ], [ %i.di, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %i.eh = phi i64 [ 0, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90 ], [ %i.dj, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %.pre5696 = phi i64 [ %i.bq, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread90 ], [ %.pre56.pre, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.am

._crit_edge:                                      ; preds = %bb.am, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.z, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4absl12lts_202605264Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.am:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.ek = phi i64 [ %i.eh, %.lr.ph ], [ %i.gs, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i98, %.lr.ph ], [ %.sroa.2.0.copyload.i61, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i97, %.lr.ph ], [ %.sroa.0.0.copyload.i58, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.el = phi i64 [ %.pre5696, %.lr.ph ], [ %i.gr, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_202605264Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i32 noundef 4)
  %i.em = sub i64 %i.el, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.em, ptr %i.bn, align 8, !tbaa !77
  %.not.i32 = icmp eq i64 %i.el, %.sroa.0.0.copyload.i
  br i1 %.not.i32, label %._crit_edge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = load i32, ptr %i.bp, align 8, !tbaa !73 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.an
  %i.ep = zext nneg i32 %i.en to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.er, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.es = icmp eq i64 %i.ek, 0
  br i1 %i.es, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !79 ; 2 uses
  %i.eu = load i8, ptr %i.ej, align 4, !tbaa !23  ; 2 uses
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 15
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !23
  %i.ey = zext i8 %i.ex to i64
  %i.ez = add nsw i64 %i.ey, -1
  %i.fa = icmp eq i64 %i.ez, %i.ev
  br i1 %i.fa, label %.preheader, label %bb.as

.preheader:                                       ; preds = %bb.ap, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.ap ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.ap ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.ep
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i.i.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !79 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i.i.i.i.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !23
  %i.ff = zext i8 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 15
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !23
  %i.fj = zext i8 %i.fi to i64
  %i.fk = icmp eq i64 %i.fg, %i.fj
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.fk, label %.preheader, label %bb.aq, !llvm.loop !1

bb.aq:                                            ; preds = %.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i.i.i.i.i
  %i.fm = trunc i64 %i.fg to i8
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !23
  %i.fn = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202605264Cord12RemoveSuffixEm:bb.a
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  tail call void @__clang_call_terminate(ptr %i.dr) #25
  unreachable

_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %.split.i, %.split6.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.av

bb.au:                                            ; preds = %bb.ar, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.dm, %bb.ar ]
  call void @_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev.exit, %bb.x
  ret void

bb.aw:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn, %bb.au ]
  resume { ptr, i32 } %.pn41.pn.pn
}

declare noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree12RemoveSuffixEPS2_m(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4absl12lts_202605264Cord7SubcordEmm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Cord") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !23      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit

_ZNK4absl12lts_202605264Cord4sizeEv.exit:         ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h) ; 11 uses
  %i.i = sub nuw i64 %i.h, %spec.select
  %.042 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.i) ; 20 uses
  %i.j = icmp eq i64 %.042, 0
  br i1 %i.j, label %_ZN4absl12lts_202605264Cord9InlineRep8set_dataEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = icmp ne ptr %i.l, null
  %.not77 = select i1 %i.b, i1 %i.m, i1 false
  br i1 %.not77, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i = select i1 %i.b, ptr null, ptr %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select ; 7 uses
  %.tr.i.i = trunc i64 %.042 to i8
  %i.p = shl i8 %.tr.i.i, 1
  store i8 %i.p, ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.r = icmp ugt i64 %.042, 7
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload6.i.i.i = load i64, ptr %i.o, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.042
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.0.copyload4.i.i.i = load i64, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8
  store i64 %.0.copyload6.i.i.i, ptr %i.q, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.042
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i64 %.0.copyload4.i.i.i, ptr %i.w, align 1
  br label %_ZN4absl12lts_202605264Cord9InlineRep8set_dataEPKcm.exit

bb.g:                                             ; preds = %bb.e
  %i.x = icmp samesign ugt i64 %.042, 3
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload2.i.i.i = load i32, ptr %i.o, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.042
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %.0.copyload.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i32 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ab, align 8
  store i32 %.0.copyload2.i.i.i, ptr %i.q, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.042
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 %.0.copyload.i.i.i, ptr %i.ad, align 1
  br label %_ZN4absl12lts_202605264Cord9InlineRep8set_dataEPKcm.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.o, align 1, !tbaa !23
  store i8 %i.ae, ptr %i.q, align 1, !tbaa !23
  %i.af = lshr i64 %.042, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !23
  %i.aj = getelementptr i8, ptr %i.o, i64 %.042
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %i.am = getelementptr i8, ptr %0, i64 %.042
  store i8 %i.al, ptr %i.am, align 1, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %.042
  store i64 0, ptr %i.ao, align 1
  br label %_ZN4absl12lts_202605264Cord9InlineRep8set_dataEPKcm.exit

bb.j:                                             ; preds = %bb.bg, %bb.bf, %bb.ba
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.k:                                             ; preds = %bb.d
  %i.aq = icmp ult i64 %.042, 16
  br i1 %i.aq, label %bb.l, label %bb.ay

bb.l:                                             ; preds = %bb.k
  %.tr.i.i.i = trunc nuw nsw i64 %.042 to i8
  %i.ar = shl nuw nsw i8 %.tr.i.i.i, 1
  store i8 %i.ar, ptr %0, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !169
  store i32 -1, ptr %i.aw, align 8, !tbaa !73, !alias.scope !169
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !169 ; 2 uses
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !77, !alias.scope !169
  %.not7.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, label %bb.m, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !32, !noalias !169 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %bb.n, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67, !noalias !169 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !32, !noalias !169
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.bd = phi i8 [ %.pre.i.i.i, %bb.n ], [ %i.az, %bb.m ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.l, %bb.m ] ; 11 uses
  %i.be = icmp eq i8 %i.bd, 3
  br i1 %i.be, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23, !noalias !169 ; 4 uses
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.aw, align 8, !tbaa !73, !alias.scope !169
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !169 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.bl = zext i8 %i.bg to i64                    ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  store ptr %.0.i.i.i.i, ptr %i.bm, align 8, !tbaa !79, !alias.scope !169
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !23, !alias.scope !169
  %.018.i.i.i.i.i.i = zext i8 %i.bj to i64        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.bl, -1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.018.i.i.i.i.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39, !noalias !169 ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !79, !alias.scope !169
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !169 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 2, !tbaa !23, !alias.scope !169
  %.0.i.i.i.i.i.i.prol = zext i8 %i.bu to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bw = icmp eq i8 %i.bg, 1
  br i1 %i.bw, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.021.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !39, !noalias !169 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !79, !alias.scope !169
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !169 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !23, !alias.scope !169
  %.0.i.i.i.i.i.i = zext i8 %i.cc to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i.i.i.i.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !39, !noalias !169 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !79, !alias.scope !169
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !169 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !23, !alias.scope !169
  %.0.i.i.i.i.i.i.1 = zext i8 %i.cj to i64        ; 2 uses
  %i.cl = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.o
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.o ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.cm = load ptr, ptr %i.bk, align 8, !tbaa !79, !alias.scope !169
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.0.lcssa.i.i.i.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39, !noalias !169 ; 5 uses
  %i.cq = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !169
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !31, !noalias !169 ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.av, align 8, !tbaa !81, !alias.scope !169
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !32, !noalias !169 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 1
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !82, !noalias !169
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42, !noalias !169 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !169
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.da = phi i8 [ %.pre.i.i.i.i.i, %bb.p ], [ %i.cu, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.cz, %bb.p ], [ %i.cp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.cx, %bb.p ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.db = icmp ugt i8 %i.da, 5
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !33, !noalias !169
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.pn.i.i.i.i.i = phi ptr [ %i.dc, %bb.r ], [ %i.de, %bb.s ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.t:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.at, align 8, !tbaa !87, !alias.scope !169
  %i.df = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !169
  %i.dg = icmp eq i8 %i.bd, 1
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !82, !noalias !169
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !42, !noalias !169 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !169
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi i8 [ %.pre.i.i.i.i, %bb.u ], [ %i.bd, %bb.t ]
  %.010.i.i.i.i = phi ptr [ %i.dk, %bb.u ], [ %.0.i.i.i.i, %bb.t ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.di, %bb.u ], [ 0, %bb.t ]
  %i.dm = icmp ugt i8 %i.dl, 5
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !33, !noalias !169
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.pn.i.i.i.i = phi ptr [ %i.dn, %bb.w ], [ %i.dp, %bb.x ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread: ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false), !alias.scope !169
  br label %bb.z

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %.sink.i.i.i = phi i64 [ %i.df, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.cr, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 4 uses
  %.sroa.3.0.i.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i, ptr %4, align 8, !tbaa !86, !alias.scope !169
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !88, !alias.scope !169
  %i.dq = icmp ult i64 %spec.select, %.sink.i.i.i
  br i1 %i.dq, label %bb.y, label %bb.z, !prof !37

bb.y:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.sink.i.i.i, i64 %spec.select
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !84
  %i.dt = sub nuw i64 %.sink.i.i.i, %spec.select  ; 2 uses
  store i64 %i.dt, ptr %4, align 8, !tbaa !83
  %i.du = load i64, ptr %i.au, align 8, !tbaa !77
  %i.dv = sub i64 %i.du, %spec.select
  store i64 %i.dv, ptr %i.au, align 8, !tbaa !77
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit

bb.z:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  %i.dw = phi i64 [ 0, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %.sink.i.i.i, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = load i32, ptr %i.aw, align 8, !tbaa !73 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  br i1 %i.dy, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ea = zext nneg i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !79
  %.not4.i = icmp eq ptr %i.ec, null
  br i1 %.not4.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  invoke void @_ZN4absl12lts_202605264Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %4, i64 noundef %spec.select)
          to label %._ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge unwind label %bb.as

._ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge: ; preds = %bb.ab
  %.pre90 = load i64, ptr %4, align 8, !tbaa !83
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.aa
  store i64 0, ptr %i.au, align 8, !tbaa !77
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit

_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit: ; preds = %._ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge, %bb.y, %bb.z, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %i.ed = phi i64 [ %.pre90, %._ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge ], [ %i.dt, %bb.y ], [ %i.dw, %bb.z ], [ %i.dw, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ] ; 2 uses
  %i.ee = icmp ugt i64 %.042, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br i1 %i.ee, label %.lr.ph, label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit.._crit_edge_crit_edge

_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit.._crit_edge_crit_edge: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit
  %.pre93 = load ptr, ptr %i.ef, align 8, !tbaa !84
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBytesEm.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %.pre91 = load ptr, ptr %i.ef, align 8, !tbaa !84
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.ei = phi i64 [ %i.ed, %.lr.ph ], [ %i.hm, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 14 uses
  %i.ej = phi ptr [ %.pre91, %.lr.ph ], [ %i.hn, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 8 uses
  %.083 = phi i64 [ %.042, %.lr.ph ], [ %i.fd, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.03482 = phi ptr [ %i.as, %.lr.ph ], [ %i.fe, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 8 uses
  %i.ek = icmp ugt i64 %i.ei, 7
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618AppendCordToStringERKNS0_4CordEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit29.thread.i
  %i.x = shl i64 %i.s, 1                          ; 2 uses
  %i.y = icmp ult i64 %i.m, %i.x
  br i1 %i.y, label %.sink.split.i, label %bb.f

.sink.split.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit29.thread.i
  %.sink.i = phi i64 [ 4611686018427387903, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit29.thread.i ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.thread.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.sink.i)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit32.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.thread.i
  %i.z = icmp ugt i64 %i.m, 4611686018427387903
  br i1 %i.z, label %bb.g, label %.thread39.i, !prof !175

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef nonnull @.str.40) #26
  unreachable

.thread39.i:                                      ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.m, i8 noundef signext 0)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.j ; 8 uses
  %i.ac = load i8, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i.i.i.i.i.i

_ZNK4absl12lts_202605264Cord5emptyEv.exit.i.i.i.i.i.i: ; preds = %.thread39.i
  %i.ae = icmp eq i8 %i.ac, 0
  br i1 %i.ae, label %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i", label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i.i.i.i.i.i
  %i.af = sext i8 %i.ac to i64                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 1                 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.ai = icmp ugt i8 %i.ac, 15
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.0.copyload6.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.0.copyload4.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 1
  store i64 %.0.copyload6.i.i.i.i.i.i.i.i, ptr %i.ab, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store i64 %.0.copyload4.i.i.i.i.i.i.i.i, ptr %i.am, align 1
  br label %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i"

bb.j:                                             ; preds = %bb.h
  %i.an = icmp samesign ugt i8 %i.ac, 7
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.0.copyload2.i.i.i.i.i.i.i.i = load i32, ptr %i.ah, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ap, align 1
  store i32 %.0.copyload2.i.i.i.i.i.i.i.i, ptr %i.ab, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  store i32 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ar, align 1
  br label %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.as = load i8, ptr %i.ah, align 1, !tbaa !23
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !23
  %i.at = lshr i64 %i.af, 2                       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !23
  %i.ax = getelementptr i8, ptr %0, i64 %i.ag
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ag
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !23
  br label %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i"

bb.m:                                             ; preds = %.thread39.i
  tail call void @_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ab)
  br label %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i"

"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i.i.i.i.i.i
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %i.bc = icmp ugt i64 %i.m, %i.bb
  br i1 %i.bc, label %bb.n, label %"_ZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_.exit"

bb.n:                                             ; preds = %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i"
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34, i64 noundef %i.m, i64 noundef %i.bb) #26
  unreachable

"_ZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_.exit": ; preds = %"_ZZN4absl12lts_2026052616strings_internal24StringAppendAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_18AppendCordToStringERKNS0_4CordEPS8_E3$_0EEvRT_NSE_9size_typeET0_ENUlPcmE_clESI_m.exit.i.i.i"
  %i.bd = load ptr, ptr %1, align 8, !tbaa !22
  store i64 %i.m, ptr %i.i, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.m
  store i8 0, ptr %i.be, align 1, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load i8, ptr %0, align 8, !tbaa !23
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.0.i = select i1 %i.b, ptr %i.d, ptr null
  %i.e = call noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %.0.i, ptr noundef nonnull %2)
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.i, i64 %i.f, i1 false)
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !182
  store i32 -1, ptr %i.m, align 8, !tbaa !73, !alias.scope !182
  %i.n = load i8, ptr %0, align 8, !tbaa !23, !noalias !182 ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !noalias !182 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.p, null
  %.not.not.i.i.i = select i1 %i.o, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31, !noalias !182 ; 3 uses
  store i64 %i.q, ptr %i.k, align 8, !tbaa !77, !alias.scope !182
  %.not7.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.f, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !32, !noalias !182 ; 2 uses
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.g, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67, !noalias !182 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !182
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.w = phi i8 [ %.pre.i.i.i.i, %bb.g ], [ %i.s, %bb.f ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.p, %bb.f ] ; 11 uses
  %i.x = icmp eq i8 %i.w, 3
  br i1 %i.x, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23, !noalias !182 ; 4 uses
  %i.aa = zext i8 %i.z to i32
  store i32 %i.aa, ptr %i.m, align 8, !tbaa !73, !alias.scope !182
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !182 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.ae = zext i8 %i.z to i64                     ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  store ptr %.0.i.i.i.i.i, ptr %i.af, align 8, !tbaa !79, !alias.scope !182
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 %i.ac, ptr %i.ah, align 1, !tbaa !23, !alias.scope !182
  %.018.i.i.i.i.i.i.i = zext i8 %i.ac to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.h
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.ae, -1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.018.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39, !noalias !182 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !79, !alias.scope !182
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1, !noalias !182 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.an, ptr %i.ao, align 2, !tbaa !23, !alias.scope !182
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.an to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ap = icmp eq i8 %i.z, 1
  br i1 %i.ap, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.021.i.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39, !noalias !182 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.as, ptr %i.at, align 8, !tbaa !79, !alias.scope !182
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.av = load i8, ptr %i.au, align 1, !noalias !182 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !23, !alias.scope !182
  %.0.i.i.i.i.i.i.i = zext i8 %i.av to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39, !noalias !182 ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !79, !alias.scope !182
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !182 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !23, !alias.scope !182
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bc to i64      ; 2 uses
  %i.be = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.h ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !79, !alias.scope !182
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39, !noalias !182 ; 5 uses
  %i.bj = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !182
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !31, !noalias !182 ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  store i64 %i.bl, ptr %i.l, align 8, !tbaa !81, !alias.scope !182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !32, !noalias !182 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !82, !noalias !182
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42, !noalias !182 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !182
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bt = phi i8 [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.bn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.bi, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bq, %bb.i ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bu = icmp ugt i8 %i.bt, 5
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !33, !noalias !182
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %i.bx, %bb.l ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.k, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.j, align 8, !tbaa !87, !alias.scope !182
  %i.by = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !182
  %i.bz = icmp eq i8 %i.w, 1
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !82, !noalias !182
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !42, !noalias !182 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !182
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = phi i8 [ %.pre.i.i.i.i.i, %bb.n ], [ %i.w, %bb.m ]
  %.010.i.i.i.i.i = phi ptr [ %i.cd, %bb.n ], [ %.0.i.i.i.i.i, %bb.m ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.cb, %bb.n ], [ 0, %bb.m ]
  %i.cf = icmp ugt i8 %i.ce, 5
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33, !noalias !182
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.pn.i.i.i.i.i = phi ptr [ %i.cg, %bb.p ], [ %i.ci, %bb.q ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.r:                                             ; preds = %bb.d
  %i.cj = sext i8 %i.n to i64
  %i.ck = lshr i64 %i.cj, 1                       ; 3 uses
  store i64 %i.ck, ptr %i.k, align 8, !tbaa !77, !alias.scope !182
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i.i = select i1 %i.o, ptr null, ptr %i.cl
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.r
  %.sink.i.i.i.i.sink = phi i64 [ %i.ck, %bb.r ], [ %i.by, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bk, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.r ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.cm = phi i64 [ 0, %bb.r ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bl, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.cn = phi i64 [ %i.ck, %bb.r ], [ %i.q, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i.i.sink, ptr %3, align 8, !tbaa !86, !alias.scope !182
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !88, !alias.scope !182
  %.not17 = icmp eq i64 %i.cn, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.e, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ad

bb.s:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.cq = phi i64 [ %i.cm, %.lr.ph ], [ %i.fa, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.2.0.copyload.i26, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.0.0.copyload.i23, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %i.cr = phi i64 [ %i.cn, %.lr.ph ], [ %i.ez, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.018 = phi ptr [ %1, %.lr.ph ], [ %i.cs, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.018, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.018, i64 %.sroa.0.0.copyload.i
  %i.ct = sub i64 %i.cr, %.sroa.0.0.copyload.i    ; 3 uses
  store i64 %i.ct, ptr %i.k, align 8, !tbaa !77
  %.not.i = icmp eq i64 %i.cr, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.m, align 8, !tbaa !73  ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, -1
  br i1 %i.cv, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.t
  %i.cw = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.cy, null
  br i1 %.not2.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cz = icmp eq i64 %i.cq, 0
  br i1 %i.cz, label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !79 ; 2 uses
  %i.db = load i8, ptr %i.cp, align 4, !tbaa !23  ; 2 uses
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !23
  %i.df = zext i8 %i.de to i64
  %i.dg = add nsw i64 %i.df, -1
  %i.dh = icmp eq i64 %i.dg, %i.dc
  br i1 %i.dh, label %.preheader, label %bb.y

.preheader:                                       ; preds = %bb.v, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.v ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.v ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cw
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i.i.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !79 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !32    ; 2 uses
  %i.t = icmp ugt i8 %i.s, 5
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 13
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i64, ptr %.0.i, align 8, !tbaa !31
  store i64 %i.y, ptr %1, align 8, !tbaa !86
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !88
  br label %.thread

bb.k:                                             ; preds = %bb.i
  switch i8 %i.s, label %.thread [
    i8 5, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = load i64, ptr %.0.i, align 8, !tbaa !31
  store i64 %i.ae, ptr %1, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !82
  %i.ah = load i64, ptr %.0.i, align 8, !tbaa !31
  %i.ai = tail call noundef zeroext i1 @_ZNK4absl12lts_2026052613cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef %1)
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.f, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.g ], [ %i.o, %bb.h ], [ false, %bb.f ], [ false, %bb.k ], [ %i.ai, %bb.m ], [ true, %bb.l ], [ true, %bb.j ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052614CopyCordToSpanERKNS0_4CordENS0_4SpanIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree writeonly captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 20 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !23      ; 5 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl12lts_202605264Cord4sizeEv.exit, label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread

_ZNK4absl12lts_202605264Cord4sizeEv.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %.not = icmp ugt i64 %i.e, %2
  br i1 %.not, label %bb.j, label %bb.g

_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread:  ; preds = %bb.a
  %i.f = sext i8 %i.a to i64                      ; 2 uses
  %i.g = lshr exact i64 %i.f, 1                   ; 10 uses
  %.not33 = icmp ugt i64 %i.g, %2
  br i1 %.not33, label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread, label %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i

_ZNK4absl12lts_202605264Cord5emptyEv.exit.i:      ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread
  %i.h = icmp eq i8 %i.a, 0
  br i1 %i.h, label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.j = icmp ugt i8 %i.a, 15
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload6.i.i.i = load i64, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.0.copyload4.i.i.i = load i64, ptr %i.l, align 1
  store i64 %.0.copyload6.i.i.i, ptr %1, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  store i64 %.0.copyload4.i.i.i, ptr %i.n, align 1
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i8 %i.a, 7
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload2.i.i.i = load i32, ptr %i.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %.0.copyload.i.i.i = load i32, ptr %i.q, align 1
  store i32 %.0.copyload2.i.i.i, ptr %1, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 %.0.copyload.i.i.i, ptr %i.s, align 1
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.i, align 1, !tbaa !23
  store i8 %i.t, ptr %1, align 1, !tbaa !23
  %i.u = lshr i64 %i.f, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  store i8 %i.w, ptr %i.x, align 1, !tbaa !23
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = getelementptr i8, ptr %1, i64 %i.g
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !23
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

bb.g:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  tail call void @_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit: ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i, %bb.c, %bb.e, %bb.f, %bb.g
  %i.ac = load i8, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit16

bb.i:                                             ; preds = %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit
  %i.ah = sext i8 %i.ac to i64
  %i.ai = lshr exact i64 %i.ah, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit16

bb.j:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !193
  store i32 -1, ptr %i.al, align 8, !tbaa !73, !alias.scope !193
  store i64 %i.e, ptr %i.aj, align 8, !tbaa !77, !alias.scope !193
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.an = load i8, ptr %i.am, align 4, !tbaa !32, !noalias !193 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.k, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !68

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67, !noalias !193 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !193
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ar = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.an, %bb.j ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.d, %bb.j ] ; 10 uses
  %i.as = icmp eq i8 %i.ar, 3
  br i1 %i.as, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23, !noalias !193 ; 4 uses
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %i.al, align 8, !tbaa !73, !alias.scope !193
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !193 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.az = zext i8 %i.au to i64                    ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  store ptr %.0.i.i.i.i.i, ptr %i.ba, align 8, !tbaa !79, !alias.scope !193
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !23, !alias.scope !193
  %.018.i.i.i.i.i.i.i = zext i8 %i.ax to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.az, -1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.018.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39, !noalias !193 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !79, !alias.scope !193
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !193 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.bi, ptr %i.bj, align 2, !tbaa !23, !alias.scope !193
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.bi to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bk = icmp eq i8 %i.au, 1
  br i1 %i.bk, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.021.i.i.i.i.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39, !noalias !193 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !79, !alias.scope !193
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !193 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !23, !alias.scope !193
  %.0.i.i.i.i.i.i.i = zext i8 %i.bq to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i.i.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39, !noalias !193 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !79, !alias.scope !193
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 14
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !193 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !23, !alias.scope !193
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bx to i64      ; 2 uses
  %i.bz = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.l ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !79, !alias.scope !193
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39, !noalias !193 ; 5 uses
  %i.ce = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !193
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !31, !noalias !193 ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.ak, align 8, !tbaa !81, !alias.scope !193
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !32, !noalias !193 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 1
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !82, !noalias !193
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42, !noalias !193 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !193
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.co = phi i8 [ %.pre.i.i.i.i.i.i, %bb.m ], [ %i.ci, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.m ], [ %i.cd, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.m ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.cp = icmp ugt i8 %i.co, 5
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.p:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33, !noalias !193
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.ct = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !193
  %i.cu = icmp eq i8 %i.ar, 1
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !82, !noalias !193
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !42, !noalias !193 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !193
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cz = phi i8 [ %.pre.i.i.i.i.i, %bb.r ], [ %i.ar, %bb.q ]
  %.010.i.i.i.i.i = phi ptr [ %i.cy, %bb.r ], [ %.0.i.i.i.i.i, %bb.q ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.cw, %bb.r ], [ 0, %bb.q ]
  %i.da = icmp ugt i8 %i.cz, 5
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70

bb.u:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !33, !noalias !193
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70: ; preds = %bb.t, %bb.u
  %.pn.i.i.i.i.i = phi ptr [ %i.db, %bb.t ], [ %i.dd, %bb.u ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %.lr.ph.sink.split

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread: ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, i8 0, i64 32, i1 false), !alias.scope !194
  store i32 -1, ptr %i.de, align 8, !tbaa !73, !alias.scope !194
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.g, ptr %i.dh, align 8, !tbaa !77, !alias.scope !193
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.lr.ph.sink.split

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %bb.o, %bb.p
  %.pn.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.o ], [ %i.cs, %bb.p ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  store i64 %i.cf, ptr %3, align 8, !tbaa !86, !alias.scope !193
  %.not3742 = icmp eq i64 %.pre.pre, 0
  br i1 %.not3742, label %.critedge, label %.lr.ph

.lr.ph.sink.split:                                ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70
  %.sink = phi i64 [ %i.ct, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.g, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph = phi ptr [ %i.aj, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.dh, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph82 = phi ptr [ %i.ak, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.dg, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph83 = phi ptr [ %i.al, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.de, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph84 = phi i64 [ %i.e, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.g, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.sroa.2.0.copyload.i5169.ph = phi ptr [ %.sroa.3.0.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.di, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  store i64 %.sink, ptr %3, align 8, !tbaa !86, !alias.scope !193
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.dj = phi ptr [ %i.aj, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph, %.lr.ph.sink.split ] ; 2 uses
  %i.dk = phi ptr [ %i.ak, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph82, %.lr.ph.sink.split ] ; 3 uses
  %i.dl = phi ptr [ %i.al, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph83, %.lr.ph.sink.split ]
  %i.dm = phi i64 [ %.pre.pre, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph84, %.lr.ph.sink.split ]
  %.sroa.2.0.copyload.i5169 = phi ptr [ %.sroa.3.0.i.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.sroa.2.0.copyload.i5169.ph, %.lr.ph.sink.split ]
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i5169, %.lr.ph ], [ %.sroa.2.0.copyload.i50.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %i.dp = phi i64 [ %i.dm, %.lr.ph ], [ %.pr, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.529.044 = phi i64 [ %2, %.lr.ph ], [ %i.dr, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.026.043 = phi ptr [ %1, %.lr.ph ], [ %i.dq, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !86 ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.529.044, i64 %.sroa.0.0.copyload.i) ; 4 uses
  %.not15 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not15, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.026.043, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.speculated, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.026.043, i64 %.sroa.speculated
  %i.dr = sub nuw i64 %.sroa.529.044, %.sroa.speculated
  %i.ds = sub i64 %i.dp, %.sroa.0.0.copyload.i
  store i64 %i.ds, ptr %i.dj, align 8, !tbaa !77
  %.not.i = icmp eq i64 %i.dp, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.dl, align 8, !tbaa !73 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.x
  %i.dv = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.dx, null
  br i1 %.not2.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !81 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !79 ; 2 uses
  %i.eb = load i8, ptr %i.do, align 4, !tbaa !23  ; 2 uses
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 15
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !23
  %i.ef = zext i8 %i.ee to i64
  %i.eg = add nsw i64 %i.ef, -1
  %i.eh = icmp eq i64 %i.eg, %i.ec
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_202605264Cord15FlattenSlowPathEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit

_ZNK4absl12lts_202605264Cord4sizeEv.exit:         ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 8 uses
  %i.i = icmp ult i64 %i.h, 4084
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 19)
  %i.k = icmp samesign ult i64 %i.h, 500          ; 2 uses
  %.neg.i.i = select i1 %i.k, i64 -8, i64 -64
  %i.l = select i1 %i.k, i64 8, i64 64
  %i.m = add nuw nsw i64 %i.j, 12
  %i.n = add nuw nsw i64 %i.m, %i.l
  %i.o = and i64 %i.n, %.neg.i.i                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !25
  %i.s = icmp samesign ult i64 %i.o, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.o, %.sink6.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !32
  store i64 %i.h, ptr %i.p, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 13 ; 2 uses
  tail call void @_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  %i.y = icmp slt i64 %i.h, 0
  br i1 %i.y, label %.noexc, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !68

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.e
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 3 uses
  tail call void @_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.z)
  %i.aa = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 2, ptr %i.ab, align 4, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @"_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZNS0_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS1_15CordRepExternalE", ptr %i.ac, align 8, !tbaa !30
  store i64 %i.h, ptr %i.aa, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 5, ptr %i.ad, align 4, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, %bb.d
  %.017 = phi ptr [ %i.p, %bb.d ], [ %i.aa, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit ] ; 2 uses
  %.016 = phi ptr [ %i.x, %bb.d ], [ %i.z, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.af = load i64, ptr %0, align 8, !tbaa !23
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !46
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2026052613cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.ah, i32 noundef 11)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i32 2 acq_rel, align 4
  %.not.i21 = icmp eq i32 %i.al, 2
  br i1 %.not.i21, label %bb.i, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !68

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.aj)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.l

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.h, %bb.i
  store ptr %.017, ptr %i.ai, align 8, !tbaa !23
  %i.am = load ptr, ptr %1, align 8, !tbaa !46    ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.j, !prof !36

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %.017, ptr %i.an, align 8, !tbaa !62
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.am)
          to label %_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #25
  unreachable

_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.016, 1
  ret { i64, ptr } %.fca.1.insert

bb.l:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.aq
}

declare noundef zeroext i1 @_ZNK4absl12lts_2026052613cord_internal12CordRepBtree6IsFlatEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4absl12lts_2026052613cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605264Cord15ForEachChunkAuxEPNS0_13cord_internal7CordRepENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE(ptr noundef %0, ptr %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 8 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !31
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !32    ; 2 uses
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]  ; 8 uses
  switch i8 %i.h, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20 [
    i8 3, label %bb.d
    i8 2, label %bb.s
  ], !prof !63

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false)
  %i.l = load i64, ptr %.0.i, align 8, !tbaa !31  ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23    ; 4 uses
  %i.o = zext i8 %i.n to i32
  store i32 %i.o, ptr %i.k, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 14
  %i.q = load i8, ptr %i.p, align 2               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 9 uses
  %i.s = zext i8 %i.n to i64                      ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 %i.q, ptr %i.v, align 1, !tbaa !23
  %.018.i.i.i.i.i = zext i8 %i.q to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.s, -1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.018.i.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.y, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.ab, ptr %i.ac, align 2, !tbaa !23
  %.0.i.i.i.i.i.prol = zext i8 %i.ab to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ad = icmp eq i8 %i.n, 1
  br i1 %i.ad, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !23
  %.0.i.i.i.i.i = zext i8 %i.aj to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0.i.i.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %.0.i.i.i.i.i.1 = zext i8 %i.aq to i64          ; 2 uses
  %i.as = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.d ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.0.lcssa.i.i.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  %i.ay = sub i64 %i.l, %i.ax                     ; 2 uses
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !32  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bg = phi i8 [ %.pre.i.i.i.i, %bb.e ], [ %i.ba, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bf, %bb.e ], [ %i.aw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bd, %bb.e ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %i.bh = icmp ugt i8 %i.bg, 5
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit: ; preds = %bb.g, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bi, %bb.g ], [ %i.bk, %bb.h ]
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !77  ; 2 uses
  %.not30 = icmp eq i64 %i.bl, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.bm = phi i64 [ %i.du, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %i.ay, %.lr.ph.preheader ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i37, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %.sroa.3.0.i.i.i.i, %.lr.ph.preheader ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i35, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %i.ax, %.lr.ph.preheader ] ; 3 uses
  %i.bn = phi i64 [ %i.dt, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %i.bl, %.lr.ph.preheader ] ; 2 uses
  tail call void %2(ptr %1, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i), !inline_history !218
  %i.bo = sub i64 %i.bn, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.bo, ptr %i.i, align 8, !tbaa !77
  %.not.i = icmp eq i64 %i.bn, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bp = load i32, ptr %i.k, align 8, !tbaa !73  ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.i
  %i.br = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.bt, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.bu = icmp eq i64 %i.bm, 0
  br i1 %i.bu, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.bw = load i8, ptr %i.u, align 4, !tbaa !23   ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 15
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23
  %i.ca = zext i8 %i.bz to i64
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = icmp eq i64 %i.cb, %i.bx
  br i1 %i.cc, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.k ] ; 2 uses
  %indvars.iv.i.i.i.i.i16 = phi i64 [ %indvars.iv.next.i.i.i.i.i17, %.preheader ], [ 0, %bb.k ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i16, %i.br
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i17 = add nuw nsw i64 %indvars.iv.i.i.i.i.i16, 1 ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i17
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !79 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i17
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !23
  %i.ch = zext i8 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 15
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !23
  %i.cl = zext i8 %i.ck to i64
  %i.cm = icmp eq i64 %i.ci, %i.cl
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.cm, label %.preheader, label %bb.l, !llvm.loop !1

bb.l:                                             ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i17
  %i.co = trunc i64 %i.ci to i8
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !23
  %i.cp = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.m ], [ %i.cp, %bb.l ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.cs, %bb.m ], [ %i.ce, %bb.l ]
  %.016.i.i.i.i.i = phi i64 [ %i.cw, %bb.m ], [ %i.ci, %bb.l ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.016.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !39 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 14
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23  ; 2 uses
  %i.cw = zext i8 %i.cv to i64                    ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.u, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !23
  %i.cy = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.m, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !2

bb.n:                                             ; preds = %bb.k
  %i.cz = add i8 %i.bw, 1                         ; 2 uses
  store i8 %i.cz, ptr %i.u, align 4, !tbaa !23
  %i.da = zext i8 %i.cz to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.m
  %.pre.i.i.i18 = load i64, ptr %i.j, align 8, !tbaa !81
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.n
  %i.db = phi i64 [ %i.bm, %bb.n ], [ %.pre.i.i.i18, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.bv, %bb.n ], [ %i.cs, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.da, %bb.n ], [ %i.cw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.lcssa.sink.i.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39 ; 5 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !31 ; 2 uses
  %i.dg = sub i64 %i.db, %i.df                    ; 2 uses
  store i64 %i.dg, ptr %i.j, align 8, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !32  ; 2 uses
  %i.dj = icmp eq i8 %i.di, 1
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i14 = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %.pre.i.i.i.i15 = load i8, ptr %.phi.trans.insert.i.i.i.i14, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.do = phi i8 [ %.pre.i.i.i.i15, %bb.o ], [ %i.di, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i8 = phi ptr [ %i.dn, %bb.o ], [ %i.de, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i9 = phi i64 [ %i.dl, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.dp = icmp ugt i8 %i.do, 5
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i8, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i8, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.pn.i.i.i.i10 = phi ptr [ %i.dq, %bb.q ], [ %i.ds, %bb.r ]
  %.sroa.3.0.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i10, i64 %.0.i.i.i.i9
  %.pre38.pre = load i64, ptr %i.i, align 8, !tbaa !77
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit: ; preds = %bb.i, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.j, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %i.dt = phi i64 [ %i.bo, %bb.j ], [ %.pre38.pre, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bo, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.bo, %bb.i ] ; 2 uses
  %i.du = phi i64 [ 0, %bb.j ], [ %i.dg, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bm, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.bm, %bb.i ]
  %.sroa.2.0.copyload.i37 = phi ptr [ null, %bb.j ], [ %.sroa.3.0.i.i.i.i11, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ null, %bb.i ]
  %.sroa.0.0.copyload.i35 = phi i64 [ 0, %bb.j ], [ %i.df, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ 0, %bb.i ]
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !219

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.v

bb.s:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !67
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20: ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit, %bb.s
  %.0.i19 = phi ptr [ %i.dw, %bb.s ], [ %.0.i, %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dx = call noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %.0.i19, ptr noundef nonnull %4)
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !86
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !88
  call void %2(ptr %1, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload), !inline_history !218
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_4CordE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !226
  store i32 -1, ptr %i.c, align 8, !tbaa !73, !alias.scope !226
  %i.d = load i8, ptr %1, align 8, !tbaa !23, !noalias !226 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !226 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31, !noalias !226 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !77, !alias.scope !226
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !32, !noalias !226 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !226 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !226
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23, !noalias !226 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !73, !alias.scope !226
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !226 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i.i, ptr %i.w, align 8, !tbaa !79, !alias.scope !226
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !23, !alias.scope !226
  %.018.i.i.i.i.i.i.i = zext i8 %i.t to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !noalias !226 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !79, !alias.scope !226
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !226 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !23, !alias.scope !226
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ae to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39, !noalias !226 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !79, !alias.scope !226
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !226 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !23, !alias.scope !226
  %.0.i.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !226 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !79, !alias.scope !226
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !226 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !23, !alias.scope !226
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.at to i64      ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !79, !alias.scope !226
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39, !noalias !226 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !226
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !31, !noalias !226 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !81, !alias.scope !226
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !32, !noalias !226 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !82, !noalias !226
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42, !noalias !226 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !226
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33, !noalias !226
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !226
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !82, !noalias !226
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42, !noalias !226 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !226
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33, !noalias !226
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i24 = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i21 = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not15 = icmp eq i64 %i.ce, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.b, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %0

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.ch = phi i64 [ %i.cd, %.lr.ph ], [ %i.eq, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i24, %.lr.ph ], [ %.sroa.2.0.copyload.i23, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i21, %.lr.ph ], [ %.sroa.0.0.copyload.i20, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.ci = phi i64 [ %i.ce, %.lr.ph ], [ %i.ep, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  %i.ck = sub i64 %i.ci, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !77
  %.not.i = icmp eq i64 %i.ci, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.q
  %i.cn = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.cp, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cq = icmp eq i64 %i.ch, 0
  br i1 %i.cq, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !79 ; 2 uses
  %i.cs = load i8, ptr %i.cg, align 4, !tbaa !23  ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 15
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23
  %i.cw = zext i8 %i.cv to i64
  %i.cx = add nsw i64 %i.cw, -1
  %i.cy = icmp eq i64 %i.cx, %i.ct
  br i1 %i.cy, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.s, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.s ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.s ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cn
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !79 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !23
  %i.dd = zext i8 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 1                ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !23
  %i.dh = zext i8 %i.dg to i64
  %i.di = icmp eq i64 %i.de, %i.dh
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
end_hunk_5
begin_hunk_6_@_ZSt24__copy_move_backward_ditILb1EN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_St15_Deque_iteratorIS4_S5_S6_EET3_S7_IT0_T1_T2_ESD_S9_:bb.a
  %.not4 = icmp eq ptr %.0, %i.dy
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !478

bb.ah:                                            ; preds = %bb.a
  %i.dz = load ptr, ptr %1, align 8, !tbaa !114
  %i.ea = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !114   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !111 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !112 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !110 ; 2 uses
  %i.ei = ptrtoint ptr %i.ea to i64
  %i.ej = ptrtoint ptr %i.dz to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 4                 ; 2 uses
  %i.em = icmp sgt i64 %i.el, 0
  br i1 %i.em, label %.lr.ph.i40, label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES4_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES8_S8_SD_.exit20

.lr.ph.i40:                                       ; preds = %bb.ah, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.eh, %bb.ah ] ; 3 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ef, %bb.ah ]
  %.sroa.0.0 = phi ptr [ %storemerge.i.i.i50, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.eb, %bb.ah ] ; 4 uses
  %i.en = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ed, %bb.ah ] ; 3 uses
  %.018.i42 = phi ptr [ %i.ew, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ea, %bb.ah ]
  %.01617.i43 = phi i64 [ %i.fo, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.el, %bb.ah ] ; 2 uses
  %i.eo = ptrtoint ptr %.sroa.0.0 to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 4                 ; 2 uses
  %.not.i44 = icmp eq ptr %.sroa.0.0, %i.en
  br i1 %.not.i44, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i40
  %i.es = getelementptr inbounds i8, ptr %.sroa.12.0, i64 -8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !104, !noalias !484
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 512
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i40
  %.015.i45 = phi i64 [ 32, %bb.ai ], [ %i.er, %.lr.ph.i40 ]
  %.09.i46 = phi ptr [ %i.eu, %bb.ai ], [ %.sroa.0.0, %.lr.ph.i40 ] ; 2 uses
  %.sroa.speculated.i47 = tail call i64 @llvm.smin.i64(i64 %.015.i45, i64 %.01617.i43) ; 6 uses
  %i.ev = sub nsw i64 0, %.sroa.speculated.i47    ; 3 uses
  %i.ew = getelementptr inbounds [16 x i8], ptr %.018.i42, i64 %i.ev ; 3 uses
  %i.ex = icmp sgt i64 %.sroa.speculated.i47, 1
  br i1 %i.ex, label %bb.ak, label %bb.al, !prof !36

bb.ak:                                            ; preds = %bb.aj
  %.idx.neg.i51 = shl nuw nsw i64 %.sroa.speculated.i47, 4
  %i.ey = getelementptr inbounds [16 x i8], ptr %.09.i46, i64 %i.ev
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ew, i64 %.idx.neg.i51, i1 false), !noalias !484
  br label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48

bb.al:                                            ; preds = %bb.aj
  %i.ez = icmp eq i64 %.sroa.speculated.i47, 1
  br i1 %i.ez, label %bb.am, label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48

bb.am:                                            ; preds = %bb.al
  %i.fa = getelementptr inbounds i8, ptr %.09.i46, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fa, ptr noundef nonnull align 8 dereferenceable(12) %i.ew, i64 12, i1 false), !tbaa.struct !100, !noalias !484
  br label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48

_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48: ; preds = %bb.am, %bb.al, %bb.ak
  %i.fb = sub nsw i64 %i.er, %.sroa.speculated.i47 ; 5 uses
  %i.fc = icmp sgt i64 %i.fb, -1
  br i1 %i.fc, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48
  %i.fd = icmp samesign ult i64 %i.fb, 32
  br i1 %i.fd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fe = getelementptr inbounds [16 x i8], ptr %.sroa.0.0, i64 %i.ev
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49

bb.ap:                                            ; preds = %bb.an
  %i.ff = lshr i64 %i.fb, 5
  br label %bb.ar

bb.aq:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48
  %i.fg = ashr i64 %i.fb, 5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fh = phi i64 [ %i.ff, %bb.ap ], [ %i.fg, %bb.aq ] ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.12.0, i64 %i.fh ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !104, !noalias !484 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 512
  %i.fl = shl nsw i64 %i.fh, 5
  %i.fm = sub nsw i64 %i.fb, %i.fl
  %i.fn = getelementptr inbounds [16 x i8], ptr %i.fj, i64 %i.fm
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49

_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49: ; preds = %bb.ar, %bb.ao
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.ao ], [ %i.fi, %bb.ar ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.ao ], [ %i.fk, %bb.ar ] ; 2 uses
  %.sroa.4.1 = phi ptr [ %i.en, %bb.ao ], [ %i.fj, %bb.ar ] ; 2 uses
  %storemerge.i.i.i50 = phi ptr [ %i.fe, %bb.ao ], [ %i.fn, %bb.ar ] ; 2 uses
  %i.fo = sub nsw i64 %.01617.i43, %.sroa.speculated.i47 ; 2 uses
  %i.fp = icmp sgt i64 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i40, label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES4_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES8_S8_SD_.exit20, !llvm.loop !473

_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcES4_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES8_S8_SD_.exit20: ; preds = %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49, %bb.ah, %._crit_edge
  %.sink95 = phi ptr [ %storemerge.i.i.i50, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.bd, %._crit_edge ], [ %i.eb, %bb.ah ], [ %storemerge.i.i.i18, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  %.sink = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.bc, %._crit_edge ], [ %i.ed, %bb.ah ], [ %.sroa.456.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  %.sroa.9.2.sink = phi ptr [ %.sroa.9.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.bb, %._crit_edge ], [ %i.ef, %bb.ah ], [ %.sroa.957.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  %.sroa.12.2.sink = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ba, %._crit_edge ], [ %i.eh, %bb.ah ], [ %.sroa.1258.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  store ptr %.sink95, ptr %0, align 8, !tbaa !114
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.fq, align 8, !tbaa !111
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.2.sink, ptr %i.fr, align 8, !tbaa !112
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.12.2.sink, ptr %i.fs, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !73
  %i.e = load i8, ptr %1, align 1, !tbaa !23      ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not8.i = icmp ne ptr %i.h, null
  %.not.not.i = select i1 %i.f, i1 %.not8.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !77
  %.not7.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i, label %bb.o, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !32    ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23    ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !23
  %.018.i.i.i.i.i = zext i8 %i.u to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !23
  %.0.i.i.i.i.i.prol = zext i8 %i.af to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23
  %.0.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !23
  %.0.i.i.i.i.i.1 = zext i8 %i.au to i64          ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i, align 8, !tbaa !31
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !31 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !32  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !87
  %i.bq = load i64, ptr %.0.i.i.i, align 8, !tbaa !31
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !82
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.0.i8.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !88
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !77
  %i.cd = load i8, ptr %1, align 8, !tbaa !23
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !88
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i, %bb.o, %bb.p
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !111
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !105
  %i.ag = load ptr, ptr %0, align 8, !tbaa !101
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4absl12lts_2026052612crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !104
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !100
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !110
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !112
  store ptr %i.as, ptr %i.a, align 8, !tbaa !98
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4absl12lts_202605264Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !488
  store i32 -1, ptr %i.c, align 8, !tbaa !73, !alias.scope !488
  %i.d = load i8, ptr %0, align 8, !tbaa !23, !noalias !488 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !488 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i = select i1 %i.e, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31, !noalias !488 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !77, !alias.scope !488
  %.not7.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !32, !noalias !488 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67, !noalias !488 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !32, !noalias !488
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23, !noalias !488 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !73, !alias.scope !488
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !488 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i, ptr %i.w, align 8, !tbaa !79, !alias.scope !488
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !23, !alias.scope !488
  %.018.i.i.i.i.i.i = zext i8 %i.t to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !noalias !488 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !79, !alias.scope !488
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !488 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !23, !alias.scope !488
  %.0.i.i.i.i.i.i.prol = zext i8 %i.ae to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39, !noalias !488 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !79, !alias.scope !488
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !488 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !23, !alias.scope !488
  %.0.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !488 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !79, !alias.scope !488
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !488 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !23, !alias.scope !488
  %.0.i.i.i.i.i.i.1 = zext i8 %i.at to i64        ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !79, !alias.scope !488
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39, !noalias !488 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !488
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !31, !noalias !488 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !81, !alias.scope !488
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !32, !noalias !488 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !82, !noalias !488
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42, !noalias !488 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !488
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33, !noalias !488
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  %.pr.pre.pre = load i64, ptr %i.a, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !488
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !82, !noalias !488
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42, !noalias !488 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !488
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33, !noalias !488
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.0.0.copyload.i = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %.pr = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.pr.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread: ; preds = %bb.b, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit, %bb.p
  %i.ce = phi i64 [ %i.cd, %bb.p ], [ %i.cd, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %i.cf = phi i64 [ %.pr, %bb.p ], [ 0, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %i.cg = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ %.sroa.0.0.copyload.i, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ 0, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %.sroa.12.0 = phi ptr [ %.sroa.2.0.copyload.i, %bb.p ], [ null, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit ], [ null, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 %3
  %i.ci = sub i64 %.sroa.0.0, %3
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.ck = sub i64 %1, %3
  %i.cl = sub i64 %4, %3
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread
  %i.co = phi i64 [ %i.ce, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.ey, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.cp = phi i64 [ %i.cf, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.ez, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.cq = phi i64 [ %i.cg, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fa, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %.sroa.032.0 = phi i64 [ %i.ck, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fh, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %.0 = phi i64 [ %i.cl, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fd, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.8.0 = phi ptr [ %i.cj, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fg, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ci, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.ff, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %i.ch, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ %i.fe, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %i.cr = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.cr, label %bb.r, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

bb.r:                                             ; preds = %bb.q
  %i.cs = sub i64 %i.cp, %i.cq                    ; 4 uses
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !77
  %.not.i.i = icmp eq i64 %i.cp, %i.cq
  br i1 %.not.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i32, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.s
  %i.cv = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !79
  %.not2.i.i = icmp eq ptr %i.cx, null
  br i1 %.not2.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.t

bb.t:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.cy = icmp eq i64 %i.co, 0
  br i1 %i.cy, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  %i.da = load i8, ptr %i.cn, align 4, !tbaa !23  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 15
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !23
  %i.de = zext i8 %i.dd to i64
  %i.df = add nsw i64 %i.de, -1
  %i.dg = icmp eq i64 %i.df, %i.db
  br i1 %i.dg, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
end_hunk_6
begin_hunk_7_@_ZNK4absl12lts_202605264Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.ds = trunc i64 %i.dm to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !23
  %i.dt = sext i32 %indvars.iv37.i.i.i.i.i.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv40.i.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.i, %bb.w ], [ %i.dt, %bb.v ] ; 2 uses
  %.017.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.w ], [ %i.di, %bb.v ]
  %.016.i.i.i.i.i.i = phi i64 [ %i.ea, %bb.w ], [ %i.dm, %bb.v ]
  %i.du = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.016.i.i.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !39 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i.i, -1 ; 3 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv.next41.i.i.i.i.i.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 14
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !23  ; 2 uses
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.cn, i64 %indvars.iv.next41.i.i.i.i.i.i
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !23
  %i.ec = icmp sgt i64 %indvars.iv40.i.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.w, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i, !llvm.loop !2

bb.x:                                             ; preds = %bb.u
  %i.ed = add i8 %i.da, 1                         ; 2 uses
  store i8 %i.ed, ptr %i.cn, align 4, !tbaa !23
  %i.ee = zext i8 %i.ed to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i: ; preds = %bb.w
  %.pre.i.i.i.i19 = load i64, ptr %i.b, align 8, !tbaa !81
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i, %bb.x
  %i.ef = phi i64 [ %i.co, %bb.x ], [ %.pre.i.i.i.i19, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %.lcssa12.sink.i.i.i.i.i = phi ptr [ %i.cz, %bb.x ], [ %i.dw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi i64 [ %i.ee, %bb.x ], [ %i.ea, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i.i, i64 16
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.lcssa.sink.i.i.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !39 ; 5 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !31 ; 3 uses
  %i.ek = sub i64 %i.ef, %i.ej                    ; 2 uses
  store i64 %i.ek, ptr %i.b, align 8, !tbaa !81
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.em = load i8, ptr %i.el, align 4, !tbaa !32  ; 2 uses
  %i.en = icmp eq i8 %i.em, 1
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !82
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %.pre.i.i.i.i.i16 = load i8, ptr %.phi.trans.insert.i.i.i.i.i15, align 4, !tbaa !32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i
  %i.es = phi i8 [ %.pre.i.i.i.i.i16, %bb.y ], [ %i.em, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ]
  %.010.i.i.i.i.i10 = phi ptr [ %i.er, %bb.y ], [ %i.ei, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i11 = phi i64 [ %i.ep, %bb.y ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ]
  %i.et = icmp ugt i8 %i.es, 5
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i10, i64 13
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i10, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !33
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i: ; preds = %bb.ab, %bb.aa
  %.pn.i.i.i.i.i12 = phi ptr [ %i.eu, %bb.aa ], [ %i.ew, %bb.ab ]
  %.sroa.3.0.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i12, i64 %.0.i.i.i.i.i11
  %.pr.pre.pre.i = load i64, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  %i.ex = icmp eq i64 %.pr.pre.pre.i, 0
  br i1 %i.ex, label %.critedge, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i: ; preds = %bb.s, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.t, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i, %bb.q
  %i.ey = phi i64 [ %i.co, %bb.q ], [ %i.ek, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ %i.co, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ %i.co, %bb.s ]
  %i.ez = phi i64 [ %i.cp, %bb.q ], [ %.pr.pre.pre.i, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ %i.cs, %bb.t ], [ %i.cs, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ %i.cs, %bb.s ]
  %i.fa = phi i64 [ %i.cq, %bb.q ], [ %i.ej, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.s ]
  %.sroa.0.2.ph = phi i64 [ %.sroa.0.1, %bb.q ], [ %i.ej, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.s ] ; 3 uses
  %.sroa.12.2.ph = phi ptr [ %.sroa.12.1, %bb.q ], [ %.sroa.3.0.i.i.i.i.i13, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ null, %bb.t ], [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ null, %bb.s ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.032.0, 0
  br i1 %i.fb, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.032.0, i64 %.sroa.0.2.ph) ; 6 uses
  %i.fc = tail call i32 @memcmp(ptr noundef %.sroa.12.2.ph, ptr noundef %.sroa.8.0, i64 noundef %.sroa.speculated.i) #27 ; 2 uses
  %.not.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread

_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit: ; preds = %bb.ac
  %i.fd = sub i64 %.0, %.sroa.speculated.i        ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.12.2.ph, i64 %.sroa.speculated.i
  %i.ff = sub nuw i64 %.sroa.0.2.ph, %.sroa.speculated.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.speculated.i
  %i.fh = sub nuw i64 %.sroa.032.0, %.sroa.speculated.i
  %.not54 = icmp eq i64 %i.fd, 0
  br i1 %.not54, label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread, label %bb.q, !llvm.loop !487

.critedge:                                        ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i, %bb.r, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i
  %.sroa.032.0.lcssa = phi i64 [ %.sroa.032.0, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ %.sroa.032.0, %bb.r ], [ 0, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i ]
  %.sroa.0.243 = phi i64 [ 0, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.r ], [ %.sroa.0.2.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i ]
  %i.fi = icmp eq i64 %.sroa.032.0.lcssa, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i64 %.sroa.0.243, 0
  %.neg = sext i1 %i.fk to i32
  %i.fl = add nsw i32 %.neg, %i.fj
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread

_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread: ; preds = %bb.ac, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %.critedge
  %.2 = phi i32 [ %i.fl, %.critedge ], [ %i.fc, %bb.ac ], [ 0, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4absl12lts_202605264Cord15CompareSlowPathERKS1_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !494
  store i32 -1, ptr %i.d, align 8, !tbaa !73, !alias.scope !494
  %i.e = load i8, ptr %0, align 8, !tbaa !23, !noalias !494 ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !494 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.h, null
  %.not.not.i.i = select i1 %i.f, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31, !noalias !494 ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !77, !alias.scope !494
  %.not7.i.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i.i, label %bb.o, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !32, !noalias !494 ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !494 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !32, !noalias !494
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23, !noalias !494 ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !73, !alias.scope !494
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1, !noalias !494 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i.i, ptr %i.x, align 8, !tbaa !79, !alias.scope !494
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !23, !alias.scope !494
  %.018.i.i.i.i.i.i = zext i8 %i.u to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39, !noalias !494 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !79, !alias.scope !494
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1, !noalias !494 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !23, !alias.scope !494
  %.0.i.i.i.i.i.i.prol = zext i8 %i.af to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39, !noalias !494 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !79, !alias.scope !494
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1, !noalias !494 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23, !alias.scope !494
  %.0.i.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39, !noalias !494 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !79, !alias.scope !494
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1, !noalias !494 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !23, !alias.scope !494
  %.0.i.i.i.i.i.i.1 = zext i8 %i.au to i64        ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !79, !alias.scope !494
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39, !noalias !494 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !494
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !31, !noalias !494 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !81, !alias.scope !494
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !32, !noalias !494 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !82, !noalias !494
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42, !noalias !494 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !494
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33, !noalias !494
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !87, !alias.scope !494
  %i.bq = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !31, !noalias !494
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !82, !noalias !494
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42, !noalias !494 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !494
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33, !noalias !494
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.o:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false), !alias.scope !494
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !77, !alias.scope !494
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i = select i1 %i.f, ptr null, ptr %i.cd
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.o, %bb.p
  %i.ce = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bd, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i, %bb.p ], [ null, %bb.o ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.0.0.copyload.i = phi i64 [ %i.cc, %bb.p ], [ 0, %bb.o ], [ %i.bq, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !495
  store i32 -1, ptr %i.ch, align 8, !tbaa !73, !alias.scope !495
  %i.ci = load i8, ptr %1, align 8, !tbaa !23, !noalias !495 ; 2 uses
  %i.cj = trunc i8 %i.ci to i1                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !495 ; 5 uses
  %.not8.i.i12 = icmp ne ptr %i.cl, null
  %.not.not.i.i13 = select i1 %i.cj, i1 %.not8.i.i12, i1 false
  br i1 %.not.not.i.i13, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31, !noalias !495 ; 3 uses
  store i64 %i.cm, ptr %i.cf, align 8, !tbaa !77, !alias.scope !495
  %.not7.i.i16 = icmp eq i64 %i.cm, 0
  br i1 %.not7.i.i16, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49, label %bb.r, !prof !68

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !32, !noalias !495 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 2
  br i1 %i.cp, label %bb.s, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17, !prof !68

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !67, !noalias !495 ; 2 uses
  %.phi.trans.insert.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.pre.i.i.i48 = load i8, ptr %.phi.trans.insert.i.i.i47, align 4, !tbaa !32, !noalias !495
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17: ; preds = %bb.s, %bb.r
  %i.cs = phi i8 [ %.pre.i.i.i48, %bb.s ], [ %i.co, %bb.r ] ; 3 uses
  %.0.i.i.i.i18 = phi ptr [ %i.cr, %bb.s ], [ %i.cl, %bb.r ] ; 10 uses
  %i.ct = icmp eq i8 %i.cs, 3
  br i1 %i.ct, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 13
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23, !noalias !495 ; 4 uses
  %i.cw = zext i8 %i.cv to i32
  store i32 %i.cw, ptr %i.ch, align 8, !tbaa !73, !alias.scope !495
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 14
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !495 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.da = zext i8 %i.cv to i64                    ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  store ptr %.0.i.i.i.i18, ptr %i.db, align 8, !tbaa !79, !alias.scope !495
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !23, !alias.scope !495
  %.018.i.i.i.i.i.i30 = zext i8 %i.cy to i64      ; 3 uses
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i31, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %bb.t
  %xtraiter206 = and i64 %i.da, 1
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %.lr.ph.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i.i32.prol

.lr.ph.i.i.i.i.i.i32.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i32.preheader
  %indvars.iv.next.i.i.i.i.i.i36.prol = add nsw i64 %i.da, -1 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 16
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.018.i.i.i.i.i.i30
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39, !noalias !495 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i.i.i36.prol
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !79, !alias.scope !495
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 14
  %i.dj = load i8, ptr %i.di, align 1, !noalias !495 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i.i36.prol
  store i8 %i.dj, ptr %i.dk, align 2, !tbaa !23, !alias.scope !495
  %.0.i.i.i.i.i.i37.prol = zext i8 %i.dj to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i32.prol.loopexit

.lr.ph.i.i.i.i.i.i32.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i.i32.preheader
  %indvars.iv.i.i.i.i.i.i33.unr = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %indvars.iv.next.i.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.021.i.i.i.i.i.i34.unr = phi i64 [ %.018.i.i.i.i.i.i30, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %.0.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.01619.i.i.i.i.i.i35.unr = phi ptr [ %.0.i.i.i.i18, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.0.i.i.i.i.i.i37.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %.0.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i32.prol ]
  %i.dl = icmp eq i8 %i.cv, 1
  br i1 %i.dl, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32.prol.loopexit, %.lr.ph.i.i.i.i.i.i32
  %indvars.iv.i.i.i.i.i.i33 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i36.1, %.lr.ph.i.i.i.i.i.i32 ], [ %indvars.iv.i.i.i.i.i.i33.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i34 = phi i64 [ %.0.i.i.i.i.i.i37.1, %.lr.ph.i.i.i.i.i.i32 ], [ %.021.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ]
  %.01619.i.i.i.i.i.i35 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i32 ], [ %.01619.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i36 = add nsw i64 %indvars.iv.i.i.i.i.i.i33, -1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i35, i64 16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.021.i.i.i.i.i.i34
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !39, !noalias !495 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i.i.i36
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !79, !alias.scope !495
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 14
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !495 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i.i36
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !23, !alias.scope !495
  %.0.i.i.i.i.i.i37 = zext i8 %i.dr to i64
  %indvars.iv.next.i.i.i.i.i.i36.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i33, -2 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0.i.i.i.i.i.i37
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !39, !noalias !495 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i.i.i36.1
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !79, !alias.scope !495
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 14
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !495 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i.i36.1
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !23, !alias.scope !495
  %.0.i.i.i.i.i.i37.1 = zext i8 %i.dy to i64      ; 2 uses
  %i.ea = icmp sgt i64 %indvars.iv.i.i.i.i.i.i33, 2
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i32, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i32.prol.loopexit, %.lr.ph.i.i.i.i.i.i32, %bb.t
  %.0.lcssa.i.i.i.i.i.i39 = phi i64 [ %.018.i.i.i.i.i.i30, %bb.t ], [ %.0.i.i.i.i.i.i37.lcssa.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ], [ %.0.i.i.i.i.i.i37.1, %.lr.ph.i.i.i.i.i.i32 ]
  %i.eb = load ptr, ptr %i.cz, align 8, !tbaa !79, !alias.scope !495
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.0.lcssa.i.i.i.i.i.i39
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !39, !noalias !495 ; 5 uses
  %i.ef = load i64, ptr %.0.i.i.i.i18, align 8, !tbaa !31, !noalias !495
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !31, !noalias !495 ; 2 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  store i64 %i.eh, ptr %i.cg, align 8, !tbaa !81, !alias.scope !495
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !32, !noalias !495 ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 1
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !82, !noalias !495
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42, !noalias !495 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %.pre.i.i.i.i.i46 = load i8, ptr %.phi.trans.insert.i.i.i.i.i45, align 4, !tbaa !32, !noalias !495
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38
  %i.ep = phi i8 [ %.pre.i.i.i.i.i46, %bb.u ], [ %i.ej, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38 ]
  %.010.i.i.i.i.i40 = phi ptr [ %i.eo, %bb.u ], [ %i.ee, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38 ] ; 2 uses
  %.0.i.i.i.i.i41 = phi i64 [ %i.em, %bb.u ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38 ]
  %i.eq = icmp ugt i8 %i.ep, 5
  br i1 %i.eq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i40, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42

bb.x:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i40, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !33, !noalias !495
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42: ; preds = %bb.x, %bb.w
  %.pn.i.i.i.i.i43 = phi ptr [ %i.er, %bb.w ], [ %i.et, %bb.x ]
  %.sroa.3.0.i.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i43, i64 %.0.i.i.i.i.i41
  %.pre.pre = load i64, ptr %i.cf, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49

bb.y:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17
  %i.eu = load i64, ptr %.0.i.i.i.i18, align 8, !tbaa !31, !noalias !495
  %i.ev = icmp eq i8 %i.cs, 1
  br i1 %i.ev, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !82, !noalias !495
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !42, !noalias !495 ; 2 uses
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %.pre.i.i.i.i29 = load i8, ptr %.phi.trans.insert.i.i.i.i28, align 4, !tbaa !32, !noalias !495
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fa = phi i8 [ %.pre.i.i.i.i29, %bb.z ], [ %i.cs, %bb.y ]
  %.010.i.i.i.i19 = phi ptr [ %i.ez, %bb.z ], [ %.0.i.i.i.i18, %bb.y ] ; 2 uses
  %.0.i8.i.i.i20 = phi i64 [ %i.ex, %bb.z ], [ 0, %bb.y ]
  %i.fb = icmp ugt i8 %i.fa, 5
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i19, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21

bb.ac:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i19, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !33, !noalias !495
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21: ; preds = %bb.ac, %bb.ab
  %.pn.i.i.i.i22 = phi ptr [ %i.fc, %bb.ab ], [ %i.fe, %bb.ac ]
  %.sroa.3.0.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i22, i64 %.0.i8.i.i.i20
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49

bb.ad:                                            ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  %i.ff = sext i8 %i.ci to i64
  %i.fg = lshr i64 %i.ff, 1                       ; 3 uses
  store i64 %i.fg, ptr %i.cf, align 8, !tbaa !77, !alias.scope !495
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i14 = select i1 %i.cj, ptr null, ptr %i.fh
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49: ; preds = %bb.q, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21, %bb.ad
  %i.fi = phi i64 [ 0, %bb.ad ], [ %i.eh, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ 0, %bb.q ]
  %.sroa.2.0.copyload.i52 = phi ptr [ %spec.select.i.i.i14, %bb.ad ], [ %.sroa.3.0.i.i.i.i.i44, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ %.sroa.3.0.i.i.i.i23, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ null, %bb.q ]
  %.sroa.0.0.copyload.i50 = phi i64 [ %i.fg, %bb.ad ], [ %i.eg, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ %i.eu, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ 0, %bb.q ] ; 2 uses
  %i.fj = phi i64 [ %i.fg, %bb.ad ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ %i.cm, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ 0, %bb.q ] ; 2 uses
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %.not = icmp eq i64 %i.fk, 0                    ; 2 uses
  %.sroa.0109.0 = select i1 %.not, i64 0, i64 %.sroa.0.0.copyload.i
  %.sroa.12114.0 = select i1 %.not, ptr null, ptr %.sroa.2.0.copyload.i
  %.not10 = icmp eq i64 %i.fj, 0                  ; 2 uses
  %.sroa.0.0 = select i1 %.not10, i64 0, i64 %.sroa.0.0.copyload.i50
  %.sroa.12.0 = select i1 %.not10, ptr null, ptr %.sroa.2.0.copyload.i52
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.12114.0, i64 %2
  %i.fm = sub i64 %.sroa.0109.0, %2
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 %2
  %i.fo = sub i64 %.sroa.0.0, %2
  %i.fp = sub i64 %3, %2
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 5 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49
  %i.fu = phi i64 [ %i.fi, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.kr, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.fv = phi i64 [ %i.fj, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.ks, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.fw = phi i64 [ %.sroa.0.0.copyload.i50, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.kt, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.fx = phi i64 [ %i.ce, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.ih, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.fy = phi i64 [ %i.fk, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.ii, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.fz = phi i64 [ %.sroa.0.0.copyload.i, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.ij, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %.0 = phi i64 [ %i.fp, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.kv, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.0109.1 = phi i64 [ %i.fm, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.kx, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.12114.1 = phi ptr [ %i.fl, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.kw, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.0.1 = phi i64 [ %i.fo, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.kz, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 4 uses
  %.sroa.12.1 = phi ptr [ %i.fn, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit49 ], [ %i.ky, %_ZN4absl12lts_2026052612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %i.ga = icmp eq i64 %.sroa.0109.1, 0
  br i1 %i.ga, label %bb.af, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

bb.af:                                            ; preds = %bb.ae
  %i.gb = sub i64 %i.fy, %i.fz                    ; 4 uses
  store i64 %i.gb, ptr %i.b, align 8, !tbaa !77
  %.not.i.i = icmp eq i64 %i.fy, %i.fz
  br i1 %.not.i.i, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = load i32, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.ag
  %i.ge = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !79
  %.not2.i.i = icmp eq ptr %i.gg, null
  br i1 %.not2.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.gh = icmp eq i64 %i.fx, 0
  br i1 %i.gh, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gi = load ptr, ptr %i.fq, align 8, !tbaa !79 ; 2 uses
  %i.gj = load i8, ptr %i.fr, align 4, !tbaa !23  ; 2 uses
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 15
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !23
  %i.gn = zext i8 %i.gm to i64
  %i.go = add nsw i64 %i.gn, -1
  %i.gp = icmp eq i64 %i.go, %i.gk
  br i1 %i.gp, label %.preheader.i, label %bb.al

end_hunk_7
