Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/cord?download=true
inline.NumInlined: 1712
inline.NumDeleted: 498
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4absl12lts_202401164Cord10AppendImplIRKS1_EEvOT_:bb.a
  br label %_ZNK4absl12lts_202401164Cord5emptyEv.exit28

_ZNK4absl12lts_202401164Cord5emptyEv.exit28:      ; preds = %bb.i, %bb.j
  %i.aa = phi i64 [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.s

bb.k:                                             ; preds = %_ZNK4absl12lts_202401164Cord5emptyEv.exit28
  br i1 %i.o, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !67, !noundef !67 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = atomicrmw add ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !31
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !66

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65 ; 5 uses
  %i.al = load atomic i32, ptr %i.ae acquire, align 8
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  tail call void @_ZN4absl12lts_2024011612crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #22
  br label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i32 2 monotonic, align 4 ; 0 uses
  %i.aq = atomicrmw sub ptr %i.ae, i32 2 acq_rel, align 4
  %.not.i.i30 = icmp eq i32 %i.aq, 2
  br i1 %.not.i.i30, label %bb.p, label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !66

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.ad)
  br label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i = phi ptr [ %i.ak, %bb.n ], [ %i.ad, %bb.l ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !22
  store i64 1, ptr %0, align 8, !tbaa !22
  %i.ar = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2024011613cord_internal17cordz_next_sampleE) ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.i, !prof !34

_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.au = add nsw i64 %i.as, -1
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !33
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.i: ; preds = %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.av = tail call noundef zeroext i1 @_ZN4absl12lts_2024011613cord_internal25cordz_should_profile_slowEv()
  br i1 %i.av, label %bb.q, label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !35

bb.q:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl12lts_2024011613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1)
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.r:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !68
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.s:                                             ; preds = %_ZNK4absl12lts_202401164Cord5emptyEv.exit28
  br i1 %i.o, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !30
  br label %_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit

bb.u:                                             ; preds = %bb.s
  %i.az = sext i8 %i.n to i64
  %i.ba = lshr exact i64 %i.az, 1
  br label %_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit

_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit: ; preds = %bb.t, %bb.u
  %i.bb = phi i64 [ %i.ay, %bb.t ], [ %i.ba, %bb.u ] ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 512
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 12 uses
  br i1 %i.bc, label %bb.v, label %bb.ba

bb.v:                                             ; preds = %_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit
  %i.bf = icmp ne ptr %i.be, null
  %.not45 = select i1 %i.o, i1 %i.bf, i1 false
  br i1 %.not45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i = select i1 %i.o, ptr null, ptr %i.bg
  tail call void @_ZN4absl12lts_202401164Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.bb, ptr %spec.select.i, i32 noundef 1)
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.x:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !31  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 5
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  tail call void @_ZN4absl12lts_202401164Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.bb, ptr nonnull %i.bk, i32 noundef 1)
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.z:                                             ; preds = %bb.x
  %i.bl = icmp eq ptr %1, %0
  br i1 %i.bl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4absl12lts_202401164CordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  invoke void @_ZN4absl12lts_202401164Cord10AppendImplIS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4absl12lts_202401164Cord6AppendEOS1_.exit unwind label %bb.ab, !inline_history !69

_ZN4absl12lts_202401164Cord6AppendEOS1_.exit:     ; preds = %bb.aa
  call void @_ZN4absl12lts_202401164CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202401164CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bm

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !156
  store i32 -1, ptr %i.bp, align 8, !tbaa !71, !alias.scope !156
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !30, !noalias !156 ; 3 uses
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !75, !alias.scope !156
  %.not7.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.ad, !prof !66

bb.ad:                                            ; preds = %bb.ac
  %i.br = icmp eq i8 %i.bi, 2
  br i1 %i.br, label %bb.ae, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !66

bb.ae:                                            ; preds = %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65, !noalias !156 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !156
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.bu = phi i8 [ %.pre.i.i.i.i, %bb.ae ], [ %i.bi, %bb.ad ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bt, %bb.ae ], [ %i.be, %bb.ad ] ; 10 uses
  %i.bv = icmp eq i8 %i.bu, 3
  br i1 %i.bv, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !22, !noalias !156 ; 4 uses
  %i.by = zext i8 %i.bx to i32
  store i32 %i.by, ptr %i.bp, align 8, !tbaa !71, !alias.scope !156
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !156 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.cc = zext i8 %i.bx to i64                    ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr %.0.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !77, !alias.scope !156
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !22, !alias.scope !156
  %.018.i.i.i.i.i.i.i = zext i8 %i.ca to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.af
  %xtraiter = and i64 %i.cc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.cc, -1 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.018.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !37, !noalias !156 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !77, !alias.scope !156
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 14
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !156 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.cl, ptr %i.cm, align 2, !tbaa !22, !alias.scope !156
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.cl to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.cn = icmp eq i8 %i.bx, 1
  br i1 %i.cn, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !37, !noalias !156 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !77, !alias.scope !156
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !156 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !22, !alias.scope !156
  %.0.i.i.i.i.i.i.i = zext i8 %i.ct to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0.i.i.i.i.i.i.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37, !noalias !156 ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !77, !alias.scope !156
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 14
  %i.da = load i8, ptr %i.cz, align 1, !noalias !156 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !22, !alias.scope !156
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.da to i64      ; 2 uses
  %i.dc = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.af
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.af ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dd = load ptr, ptr %i.cb, align 8, !tbaa !77, !alias.scope !156
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !37, !noalias !156 ; 5 uses
  %i.dh = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !156
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !30, !noalias !156 ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 2 uses
  store i64 %i.dj, ptr %i.bo, align 8, !tbaa !79, !alias.scope !156
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !31, !noalias !156 ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 1
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !80, !noalias !156
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !156 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !31, !noalias !156
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.dr = phi i8 [ %.pre.i.i.i.i.i.i, %bb.ag ], [ %i.dl, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.dq, %bb.ag ], [ %i.dg, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.do, %bb.ag ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.ds = icmp ugt i8 %i.dr, 5
  br i1 %i.ds, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.aj:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !32, !noalias !156
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.ak:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.dw = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !156
  %i.dx = icmp eq i8 %i.bu, 1
  br i1 %i.dx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !80, !noalias !156
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !156 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !156
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ec = phi i8 [ %.pre.i.i.i.i.i, %bb.al ], [ %i.bu, %bb.ak ]
  %.010.i.i.i.i.i = phi ptr [ %i.eb, %bb.al ], [ %.0.i.i.i.i.i, %bb.ak ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.dz, %bb.al ], [ 0, %bb.ak ]
  %i.ed = icmp ugt i8 %i.ec, 5
  br i1 %i.ed, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83

bb.ao:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !32, !noalias !156
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83

_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83: ; preds = %bb.an, %bb.ao
  %.pn.i.i.i.i.i = phi ptr [ %i.ee, %bb.an ], [ %i.eg, %bb.ao ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %.lr.ph

_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit: ; preds = %bb.ai, %bb.aj
  %.pn.i.i.i.i.i.i = phi ptr [ %i.dt, %bb.ai ], [ %i.dv, %bb.aj ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.bn, align 8, !tbaa !75 ; 2 uses
  %.not50 = icmp eq i64 %.pre.pre, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  %.sroa.3.0.i.sink.i.i.i.i91 = phi ptr [ %.sroa.3.0.i.i.i.i.i, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83 ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %.sink.i.i.i.i90 = phi i64 [ %i.dw, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83 ], [ %i.di, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %i.eh = phi i64 [ 0, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83 ], [ %i.dj, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %.pre89 = phi i64 [ %i.bq, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread83 ], [ %.pre.pre, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.ap

._crit_edge:                                      ; preds = %bb.ap, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, %bb.ac, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.ap:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit
  %i.ek = phi i64 [ %i.eh, %.lr.ph ], [ %i.gs, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i91, %.lr.ph ], [ %.sroa.2.0.copyload.i58, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i90, %.lr.ph ], [ %.sroa.0.0.copyload.i55, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.el = phi i64 [ %.pre89, %.lr.ph ], [ %i.gr, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_202401164Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i32 noundef 4)
  %i.em = sub i64 %i.el, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.em, ptr %i.bn, align 8, !tbaa !75
  %.not.i32 = icmp eq i64 %i.el, %.sroa.0.0.copyload.i
  br i1 %.not.i32, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = load i32, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.aq
  %i.ep = zext nneg i32 %i.en to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !77
  %.not2.i = icmp eq ptr %i.er, null
  br i1 %.not2.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.es = icmp eq i64 %i.ek, 0
  br i1 %i.es, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 2 uses
  %i.eu = load i8, ptr %i.ej, align 4, !tbaa !22  ; 2 uses
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 15
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !22
  %i.ey = zext i8 %i.ex to i64
  %i.ez = add nsw i64 %i.ey, -1
  %i.fa = icmp eq i64 %i.ez, %i.ev
  br i1 %i.fa, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.as, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.as ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.as ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.ep
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i.i.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !77 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i.i.i.i.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !22
  %i.ff = zext i8 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 15
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !22
  %i.fj = zext i8 %i.fi to i64
  %i.fk = icmp eq i64 %i.fg, %i.fj
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.fk, label %.preheader, label %bb.at, !llvm.loop !1

bb.at:                                            ; preds = %.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i.i.i.i.i
  %i.fm = trunc i64 %i.fg to i8
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !22
  %i.fn = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202401164Cord10AppendImplIS1_EEvOT_:bb.a
  %i.y = sext i8 %i.m to i64
  %i.z = lshr exact i64 %i.y, 1
  br label %_ZNK4absl12lts_202401164Cord5emptyEv.exit28

_ZNK4absl12lts_202401164Cord5emptyEv.exit28:      ; preds = %bb.i, %bb.j
  %i.aa = phi i64 [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNK4absl12lts_202401164Cord5emptyEv.exit28
  br i1 %i.o, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 7 uses
  %i.ae = load i64, ptr %1, align 8
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZNO4absl12lts_202401164Cord7TakeRepEv.exit, label %bb.m, !prof !34

bb.m:                                             ; preds = %bb.l
  %i.ag = inttoptr i64 %i.af to ptr
  tail call void @_ZN4absl12lts_2024011613cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1332) %i.ag)
  br label %_ZNO4absl12lts_202401164Cord7TakeRepEv.exit

_ZNO4absl12lts_202401164Cord7TakeRepEv.exit:      ; preds = %bb.l, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !31
  %i.aj = icmp eq i8 %i.ai, 2
  br i1 %i.aj, label %bb.n, label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !66

bb.n:                                             ; preds = %_ZNO4absl12lts_202401164Cord7TakeRepEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.an = load atomic i32, ptr %i.am acquire, align 8
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  tail call void @_ZN4absl12lts_2024011612crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #22
  br label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = atomicrmw add ptr %i.aq, i32 2 monotonic, align 4 ; 0 uses
  %i.as = atomicrmw sub ptr %i.am, i32 2 acq_rel, align 4
  %.not.i.i30 = icmp eq i32 %i.as, 2
  br i1 %.not.i.i30, label %bb.q, label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !66

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.ad)
  br label %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %_ZNO4absl12lts_202401164Cord7TakeRepEv.exit, %bb.o, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.al, %bb.o ], [ %i.ad, %_ZNO4absl12lts_202401164Cord7TakeRepEv.exit ], [ %i.al, %bb.p ], [ %i.al, %bb.q ]
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !22
  store i64 1, ptr %0, align 8, !tbaa !22
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2024011613cord_internal17cordz_next_sampleE) ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !33 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.i, !prof !34

_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.aw = add nsw i64 %i.au, -1
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !33
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.i: ; preds = %_ZN4absl12lts_2024011613cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.ax = tail call noundef zeroext i1 @_ZN4absl12lts_2024011613cord_internal25cordz_should_profile_slowEv()
  br i1 %i.ax, label %bb.r, label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !35

bb.r:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl12lts_2024011613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1)
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !68
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.t:                                             ; preds = %_ZNK4absl12lts_202401164Cord5emptyEv.exit28
  br i1 %i.o, label %_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit, label %.thread

_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit: ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22 ; 13 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 512
  br i1 %i.bb, label %bb.u, label %bb.ax

.thread:                                          ; preds = %bb.t
  %i.bc = lshr exact i8 %i.n, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = icmp sgt i8 %i.n, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_ZN4absl12lts_202401164Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.bd, ptr nonnull %i.bf, i32 noundef 1)
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.u:                                             ; preds = %_ZNK4absl12lts_202401164Cord9InlineRep4sizeEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !31  ; 3 uses
  %i.bi = icmp ugt i8 %i.bh, 5
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 13
  tail call void @_ZN4absl12lts_202401164Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.ba, ptr nonnull %i.bj, i32 noundef 1)
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.w:                                             ; preds = %bb.u
  %i.bk = icmp eq ptr %1, %0
  br i1 %i.bk, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4absl12lts_202401164CordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  invoke void @_ZN4absl12lts_202401164Cord10AppendImplIS1_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4absl12lts_202401164Cord6AppendEOS1_.exit unwind label %bb.y, !inline_history !69

_ZN4absl12lts_202401164Cord6AppendEOS1_.exit:     ; preds = %bb.x
  call void @_ZN4absl12lts_202401164CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202401164CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bl

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !163
  store i32 -1, ptr %i.bo, align 8, !tbaa !71, !alias.scope !163
  %i.bp = load i64, ptr %i.az, align 8, !tbaa !30, !noalias !163 ; 3 uses
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !75, !alias.scope !163
  %.not7.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.aa, !prof !66

bb.aa:                                            ; preds = %bb.z
  %i.bq = icmp eq i8 %i.bh, 2
  br i1 %i.bq, label %bb.ab, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !66

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65, !noalias !163 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !163
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.bt = phi i8 [ %.pre.i.i.i.i, %bb.ab ], [ %i.bh, %bb.aa ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bs, %bb.ab ], [ %i.az, %bb.aa ] ; 10 uses
  %i.bu = icmp eq i8 %i.bt, 3
  br i1 %i.bu, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !22, !noalias !163 ; 4 uses
  %i.bx = zext i8 %i.bw to i32
  store i32 %i.bx, ptr %i.bo, align 8, !tbaa !71, !alias.scope !163
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.bz = load i8, ptr %i.by, align 1, !noalias !163 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.cb = zext i8 %i.bw to i64                    ; 5 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  store ptr %.0.i.i.i.i.i, ptr %i.cc, align 8, !tbaa !77, !alias.scope !163
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !22, !alias.scope !163
  %.018.i.i.i.i.i.i.i = zext i8 %i.bz to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.ac
  %xtraiter = and i64 %i.cb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.cb, -1 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.018.i.i.i.i.i.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !37, !noalias !163 ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !77, !alias.scope !163
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !163 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ck, ptr %i.cl, align 2, !tbaa !22, !alias.scope !163
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ck to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.cm = icmp eq i8 %i.bw, 1
  br i1 %i.cm, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37, !noalias !163 ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !77, !alias.scope !163
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 14
  %i.cs = load i8, ptr %i.cr, align 1, !noalias !163 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !22, !alias.scope !163
  %.0.i.i.i.i.i.i.i = zext i8 %i.cs to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0.i.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37, !noalias !163 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !77, !alias.scope !163
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !163 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !22, !alias.scope !163
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.cz to i64      ; 2 uses
  %i.db = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.ac
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.ac ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !77, !alias.scope !163
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !37, !noalias !163 ; 5 uses
  %i.dg = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !163
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !30, !noalias !163 ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  store i64 %i.di, ptr %i.bn, align 8, !tbaa !79, !alias.scope !163
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !31, !noalias !163 ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !80, !noalias !163
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !40, !noalias !163 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !31, !noalias !163
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.dq = phi i8 [ %.pre.i.i.i.i.i.i, %bb.ad ], [ %i.dk, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.dp, %bb.ad ], [ %i.df, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.dn, %bb.ad ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.dr = icmp ugt i8 %i.dq, 5
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !32, !noalias !163
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.ah:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.dv = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !163
  %i.dw = icmp eq i8 %i.bt, 1
  br i1 %i.dw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !80, !noalias !163
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40, !noalias !163 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !163
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eb = phi i8 [ %.pre.i.i.i.i.i, %bb.ai ], [ %i.bt, %bb.ah ]
  %.010.i.i.i.i.i = phi ptr [ %i.ea, %bb.ai ], [ %.0.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.dy, %bb.ai ], [ 0, %bb.ah ]
  %i.ec = icmp ugt i8 %i.eb, 5
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89

bb.al:                                            ; preds = %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !32, !noalias !163
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89

_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89: ; preds = %bb.ak, %bb.al
  %.pn.i.i.i.i.i = phi ptr [ %i.ed, %bb.ak ], [ %i.ef, %bb.al ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %.lr.ph

_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit: ; preds = %bb.af, %bb.ag
  %.pn.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.af ], [ %i.du, %bb.ag ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre56.pre = load i64, ptr %i.bm, align 8, !tbaa !75 ; 2 uses
  %.not52 = icmp eq i64 %.pre56.pre, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  %.sroa.3.0.i.sink.i.i.i.i97 = phi ptr [ %.sroa.3.0.i.i.i.i.i, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89 ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %.sink.i.i.i.i96 = phi i64 [ %i.dv, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89 ], [ %i.dh, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %i.eg = phi i64 [ 0, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89 ], [ %i.di, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %.pre5695 = phi i64 [ %i.bp, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit.thread89 ], [ %.pre56.pre, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.am

._crit_edge:                                      ; preds = %bb.am, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, %bb.z, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4absl12lts_202401164Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit

bb.am:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit
  %i.ej = phi i64 [ %i.eg, %.lr.ph ], [ %i.gr, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i97, %.lr.ph ], [ %.sroa.2.0.copyload.i61, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i96, %.lr.ph ], [ %.sroa.0.0.copyload.i58, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.ek = phi i64 [ %.pre5695, %.lr.ph ], [ %i.gq, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_202401164Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i32 noundef 4)
  %i.el = sub i64 %i.ek, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.el, ptr %i.bm, align 8, !tbaa !75
  %.not.i32 = icmp eq i64 %i.ek, %.sroa.0.0.copyload.i
  br i1 %.not.i32, label %._crit_edge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = load i32, ptr %i.bo, align 8, !tbaa !71 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.an
  %i.eo = zext nneg i32 %i.em to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !77
  %.not2.i = icmp eq ptr %i.eq, null
  br i1 %.not2.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.er = icmp eq i64 %i.ej, 0
  br i1 %i.er, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = load ptr, ptr %i.eh, align 8, !tbaa !77 ; 2 uses
  %i.et = load i8, ptr %i.ei, align 4, !tbaa !22  ; 2 uses
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 15
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !22
  %i.ex = zext i8 %i.ew to i64
  %i.ey = add nsw i64 %i.ex, -1
  %i.ez = icmp eq i64 %i.ey, %i.eu
  br i1 %i.ez, label %.preheader, label %bb.as

.preheader:                                       ; preds = %bb.ap, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.ap ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.ap ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.eo
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i.i.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !77 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i.i.i.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !22
  %i.fe = zext i8 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 15
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !22
  %i.fi = zext i8 %i.fh to i64
  %i.fj = icmp eq i64 %i.ff, %i.fi
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.fj, label %.preheader, label %bb.aq, !llvm.loop !1

bb.aq:                                            ; preds = %.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i.i.i.i.i
  %i.fl = trunc i64 %i.ff to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !22
  %i.fm = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202401164Cord12RemoveSuffixEm:bb.a
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  tail call void @__clang_call_terminate(ptr %i.dr) #25
  unreachable

_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %.split.i, %.split6.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.av

bb.au:                                            ; preds = %bb.ar, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.dm, %bb.ar ]
  call void @_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev.exit, %bb.x
  ret void

bb.aw:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn, %bb.au ]
  resume { ptr, i32 } %.pn41.pn.pn
}

declare noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree12RemoveSuffixEPS2_m(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202401164Cord7SubcordEmm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20240116::Cord") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !22      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit

_ZNK4absl12lts_202401164Cord4sizeEv.exit:         ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h) ; 11 uses
  %i.i = sub nuw i64 %i.h, %spec.select
  %.042 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.i) ; 20 uses
  %i.j = icmp eq i64 %.042, 0
  br i1 %i.j, label %_ZN4absl12lts_202401164Cord9InlineRep8set_dataEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
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
  store i8 %i.p, ptr %0, align 8, !tbaa !22
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
  br label %_ZN4absl12lts_202401164Cord9InlineRep8set_dataEPKcm.exit

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
  br label %_ZN4absl12lts_202401164Cord9InlineRep8set_dataEPKcm.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.o, align 1, !tbaa !22
  store i8 %i.ae, ptr %i.q, align 1, !tbaa !22
  %i.af = lshr i64 %.042, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !22
  %i.aj = getelementptr i8, ptr %i.o, i64 %.042
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.am = getelementptr i8, ptr %0, i64 %.042
  store i8 %i.al, ptr %i.am, align 1, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %.042
  store i64 0, ptr %i.ao, align 1
  br label %_ZN4absl12lts_202401164Cord9InlineRep8set_dataEPKcm.exit

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
  store i8 %i.ar, ptr %0, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !166
  store i32 -1, ptr %i.aw, align 8, !tbaa !71, !alias.scope !166
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !30, !noalias !166 ; 2 uses
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !75, !alias.scope !166
  %.not7.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread, label %bb.m, !prof !66

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !31, !noalias !166 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %bb.n, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !66

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65, !noalias !166 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !31, !noalias !166
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.bd = phi i8 [ %.pre.i.i.i, %bb.n ], [ %i.az, %bb.m ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.l, %bb.m ] ; 11 uses
  %i.be = icmp eq i8 %i.bd, 3
  br i1 %i.be, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22, !noalias !166 ; 4 uses
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.aw, align 8, !tbaa !71, !alias.scope !166
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !166 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.bl = zext i8 %i.bg to i64                    ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  store ptr %.0.i.i.i.i, ptr %i.bm, align 8, !tbaa !77, !alias.scope !166
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !22, !alias.scope !166
  %.018.i.i.i.i.i.i = zext i8 %i.bj to i64        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.bl, -1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.018.i.i.i.i.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37, !noalias !166 ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !77, !alias.scope !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !166 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 2, !tbaa !22, !alias.scope !166
  %.0.i.i.i.i.i.i.prol = zext i8 %i.bu to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bw = icmp eq i8 %i.bg, 1
  br i1 %i.bw, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.021.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37, !noalias !166 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !77, !alias.scope !166
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !166 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !22, !alias.scope !166
  %.0.i.i.i.i.i.i = zext i8 %i.cc to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i.i.i.i.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !37, !noalias !166 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !77, !alias.scope !166
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !166 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !22, !alias.scope !166
  %.0.i.i.i.i.i.i.1 = zext i8 %i.cj to i64        ; 2 uses
  %i.cl = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.o
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.o ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.cm = load ptr, ptr %i.bk, align 8, !tbaa !77, !alias.scope !166
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.0.lcssa.i.i.i.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37, !noalias !166 ; 5 uses
  %i.cq = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !30, !noalias !166
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !30, !noalias !166 ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.av, align 8, !tbaa !79, !alias.scope !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !31, !noalias !166 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 1
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !80, !noalias !166
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40, !noalias !166 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !166
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.da = phi i8 [ %.pre.i.i.i.i.i, %bb.p ], [ %i.cu, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.cz, %bb.p ], [ %i.cp, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.cx, %bb.p ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.db = icmp ugt i8 %i.da, 5
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !32, !noalias !166
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.pn.i.i.i.i.i = phi ptr [ %i.dc, %bb.r ], [ %i.de, %bb.s ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

bb.t:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.at, align 8, !tbaa !84, !alias.scope !166
  %i.df = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !30, !noalias !166
  %i.dg = icmp eq i8 %i.bd, 1
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !80, !noalias !166
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40, !noalias !166 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !166
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = phi i8 [ %.pre.i.i.i.i, %bb.u ], [ %i.bd, %bb.t ]
  %.010.i.i.i.i = phi ptr [ %i.dk, %bb.u ], [ %.0.i.i.i.i, %bb.t ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.di, %bb.u ], [ 0, %bb.t ]
  %i.dm = icmp ugt i8 %i.dl, 5
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32, !noalias !166
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.pn.i.i.i.i = phi ptr [ %i.dn, %bb.w ], [ %i.dp, %bb.x ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread: ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false), !alias.scope !166
  br label %bb.z

_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %.sink.i.i.i = phi i64 [ %i.df, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.cr, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 4 uses
  %.sroa.3.0.i.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i, ptr %4, align 8, !tbaa !33, !alias.scope !166
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !85, !alias.scope !166
  %i.dq = icmp ult i64 %spec.select, %.sink.i.i.i
  br i1 %i.dq, label %bb.y, label %bb.z, !prof !35

bb.y:                                             ; preds = %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.sink.i.i.i, i64 %spec.select
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !82
  %i.dt = sub nuw i64 %.sink.i.i.i, %spec.select  ; 2 uses
  store i64 %i.dt, ptr %4, align 8, !tbaa !81
  %i.du = load i64, ptr %i.au, align 8, !tbaa !75
  %i.dv = sub i64 %i.du, %spec.select
  store i64 %i.dv, ptr %i.au, align 8, !tbaa !75
  br label %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit

bb.z:                                             ; preds = %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit
  %i.dw = phi i64 [ 0, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %.sink.i.i.i, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = load i32, ptr %i.aw, align 8, !tbaa !71 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  br i1 %i.dy, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ea = zext nneg i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !77
  %.not4.i = icmp eq ptr %i.ec, null
  br i1 %.not4.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i
  invoke void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %4, i64 noundef %spec.select)
          to label %._ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge unwind label %bb.as

._ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge: ; preds = %bb.ab
  %.pre90 = load i64, ptr %4, align 8, !tbaa !81
  br label %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.aa
  store i64 0, ptr %i.au, align 8, !tbaa !75
  br label %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit

_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit: ; preds = %._ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge, %bb.y, %bb.z, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %i.ed = phi i64 [ %.pre90, %._ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit_crit_edge ], [ %i.dt, %bb.y ], [ %i.dw, %bb.z ], [ %i.dw, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ] ; 2 uses
  %i.ee = icmp ugt i64 %.042, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br i1 %i.ee, label %.lr.ph, label %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit.._crit_edge_crit_edge

_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit.._crit_edge_crit_edge: ; preds = %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit
  %.pre93 = load ptr, ptr %i.ef, align 8, !tbaa !82
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBytesEm.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %.pre91 = load ptr, ptr %i.ef, align 8, !tbaa !82
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit
  %i.ei = phi i64 [ %i.ed, %.lr.ph ], [ %i.hm, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 14 uses
  %i.ej = phi ptr [ %.pre91, %.lr.ph ], [ %i.hn, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 8 uses
  %.083 = phi i64 [ %.042, %.lr.ph ], [ %i.fd, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ]
  %.03482 = phi ptr [ %i.as, %.lr.ph ], [ %i.fe, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 8 uses
  %i.ek = icmp ugt i64 %i.ei, 7
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011616CopyCordToStringERKNS0_4CordEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 0, ptr %i.n, align 1, !tbaa !22
  br label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i

_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i: ; preds = %.sink.split.i.i.i.i.i, %bb.f
  %i.o = load ptr, ptr %1, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.o, ptr noundef nonnull align 1 dereferenceable(15) %i.p, i64 15, i1 false)
  %i.q = load i8, ptr %0, align 8, !tbaa !22
  %i.r = sext i8 %i.q to i64
  %i.s = lshr i64 %i.r, 1                         ; 4 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.g, label %_ZNK4absl12lts_202401164Cord9InlineRep6CopyToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39, i64 noundef %i.s, i64 noundef %i.t) #26
  unreachable

_ZNK4absl12lts_202401164Cord9InlineRep6CopyToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i
  store i64 %i.s, ptr %i.c, align 8, !tbaa !20
  %i.v = load ptr, ptr %1, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 0, ptr %i.w, align 1, !tbaa !22
  br label %bb.n

_ZNK4absl12lts_202401164Cord4sizeEv.exit:         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20 ; 7 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 4 uses
  %i.ae = sub i64 9223372036854775807, %i.ab
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.aj = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.z, %i.al
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef %i.ad)
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.am = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ab ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %i.ad, 1
  br i1 %cond.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  store i8 0, ptr %i.an, align 1, !tbaa !22
  br label %.sink.split.i.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 0, i64 %i.ad, i1 false)
  br label %.sink.split.i.i.i.i

bb.m:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
  %i.ao = icmp ult i64 %i.z, %i.ab
  br i1 %i.ao, label %.sink.split.i.i.i.i, label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit

.sink.split.i.i.i.i:                              ; preds = %bb.m, %bb.l, %bb.k
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ap = load ptr, ptr %1, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.z
  store i8 0, ptr %i.aq, align 1, !tbaa !22
  br label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit

_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.m, %.sink.split.i.i.i.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !21
  tail call void @_ZNK4absl12lts_202401164Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ar)
  br label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, %_ZNK4absl12lts_202401164Cord9InlineRep6CopyToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202401164Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load i8, ptr %0, align 8, !tbaa !22
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.0.i = select i1 %i.b, ptr %i.d, ptr null
  %i.e = call noundef zeroext i1 @_ZN4absl12lts_202401164Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %.0.i, ptr noundef nonnull %2)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = load i64, ptr %2, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.g, i64 %i.h, i1 false)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !178
  store i32 -1, ptr %i.l, align 8, !tbaa !71, !alias.scope !178
  %i.m = load i8, ptr %0, align 8, !tbaa !22, !noalias !178 ; 2 uses
  %i.n = trunc i8 %i.m to i1                      ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !noalias !178 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.o, null
  %.not.not.i.i.i = select i1 %i.n, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30, !noalias !178 ; 3 uses
  store i64 %i.p, ptr %i.j, align 8, !tbaa !75, !alias.scope !178
  %.not7.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.e, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !31, !noalias !178 ; 2 uses
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !66

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65, !noalias !178 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !178
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.r, %bb.e ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.o, %bb.e ] ; 11 uses
  %i.w = icmp eq i8 %i.v, 3
  br i1 %i.w, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22, !noalias !178 ; 4 uses
  %i.z = zext i8 %i.y to i32
  store i32 %i.z, ptr %i.l, align 8, !tbaa !71, !alias.scope !178
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !178 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.ad = zext i8 %i.y to i64                     ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  store ptr %.0.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !77, !alias.scope !178
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !22, !alias.scope !178
  %.018.i.i.i.i.i.i.i = zext i8 %i.ab to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.g
  %xtraiter = and i64 %i.ad, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.ad, -1 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.018.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37, !noalias !178 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !77, !alias.scope !178
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !178 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.am, ptr %i.an, align 2, !tbaa !22, !alias.scope !178
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.am to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ao = icmp eq i8 %i.y, 1
  br i1 %i.ao, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.021.i.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37, !noalias !178 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !77, !alias.scope !178
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1, !noalias !178 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !22, !alias.scope !178
  %.0.i.i.i.i.i.i.i = zext i8 %i.au to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.0.i.i.i.i.i.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37, !noalias !178 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !77, !alias.scope !178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !178 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !22, !alias.scope !178
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bb to i64      ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.g ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !77, !alias.scope !178
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37, !noalias !178 ; 5 uses
  %i.bi = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !178
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !30, !noalias !178 ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  store i64 %i.bk, ptr %i.k, align 8, !tbaa !79, !alias.scope !178
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !31, !noalias !178 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !80, !noalias !178
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !40, !noalias !178 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !31, !noalias !178
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bs = phi i8 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.bm, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.br, %bb.h ], [ %i.bh, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.h ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bt = icmp ugt i8 %i.bs, 5
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !32, !noalias !178
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.j ], [ %i.bw, %bb.k ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.j, align 8, !tbaa !75
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.i, align 8, !tbaa !84, !alias.scope !178
  %i.bx = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !178
  %i.by = icmp eq i8 %i.v, 1
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80, !noalias !178
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40, !noalias !178 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !178
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cd = phi i8 [ %.pre.i.i.i.i.i, %bb.m ], [ %i.v, %bb.l ]
  %.010.i.i.i.i.i = phi ptr [ %i.cc, %bb.m ], [ %.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.ca, %bb.m ], [ 0, %bb.l ]
  %i.ce = icmp ugt i8 %i.cd, 5
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !32, !noalias !178
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.pn.i.i.i.i.i = phi ptr [ %i.cf, %bb.o ], [ %i.ch, %bb.p ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.q:                                             ; preds = %bb.c
  %i.ci = sext i8 %i.m to i64
  %i.cj = lshr i64 %i.ci, 1                       ; 3 uses
  store i64 %i.cj, ptr %i.j, align 8, !tbaa !75, !alias.scope !178
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i.i = select i1 %i.n, ptr null, ptr %i.ck
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.q
  %.sink.i.i.i.i.sink = phi i64 [ %i.cj, %bb.q ], [ %i.bx, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bj, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.q ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.cl = phi i64 [ 0, %bb.q ], [ 0, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bk, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.cm = phi i64 [ %i.cj, %bb.q ], [ %i.p, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i.i.sink, ptr %3, align 8, !tbaa !33, !alias.scope !178
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !85, !alias.scope !178
  %.not17 = icmp eq i64 %i.cm, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, %bb.d, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ac

bb.r:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit
  %i.cp = phi i64 [ %i.cl, %.lr.ph ], [ %i.ez, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.2.0.copyload.i26, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.0.0.copyload.i23, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %i.cq = phi i64 [ %i.cm, %.lr.ph ], [ %i.ey, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.018 = phi ptr [ %1, %.lr.ph ], [ %i.cr, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.018, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.018, i64 %.sroa.0.0.copyload.i
  %i.cs = sub i64 %i.cq, %.sroa.0.0.copyload.i    ; 3 uses
  store i64 %i.cs, ptr %i.j, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.cq, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i32, ptr %i.l, align 8, !tbaa !71  ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.s
  %i.cv = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !77
  %.not2.i = icmp eq ptr %i.cx, null
  br i1 %.not2.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cy = icmp eq i64 %i.cp, 0
  br i1 %i.cy, label %_ZN4absl12lts_202401164Cord13ChunkIterator12AdvanceBtreeEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !77 ; 2 uses
  %i.da = load i8, ptr %i.co, align 4, !tbaa !22  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 15
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = zext i8 %i.dd to i64
  %i.df = add nsw i64 %i.de, -1
  %i.dg = icmp eq i64 %i.df, %i.db
  br i1 %i.dg, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.u, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.u ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.u ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cv
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !77 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_202401164Cord15FlattenSlowPathEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit

_ZNK4absl12lts_202401164Cord4sizeEv.exit:         ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 8 uses
  %i.i = icmp ult i64 %i.h, 4084
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
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
  store i32 2, ptr %i.r, align 8, !tbaa !24
  %i.s = icmp samesign ult i64 %i.o, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.o, %.sink6.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !31
  store i64 %i.h, ptr %i.p, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 13 ; 2 uses
  tail call void @_ZNK4absl12lts_202401164Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
  %i.y = icmp slt i64 %i.h, 0
  br i1 %i.y, label %.noexc, label %_ZNSaIcE8allocateEm.exit, !prof !66

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSaIcE8allocateEm.exit:                         ; preds = %bb.e
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 3 uses
  tail call void @_ZNK4absl12lts_202401164Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.z)
  %i.aa = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 2, ptr %i.ab, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @"_ZN4absl12lts_2024011613cord_internal19CordRepExternalImplIZNS0_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS1_15CordRepExternalE", ptr %i.ac, align 8, !tbaa !29
  store i64 %i.h, ptr %i.aa, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 5, ptr %i.ad, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSaIcE8allocateEm.exit, %bb.d
  %.017 = phi ptr [ %i.p, %bb.d ], [ %i.aa, %_ZNSaIcE8allocateEm.exit ] ; 2 uses
  %.016 = phi ptr [ %i.x, %bb.d ], [ %i.z, %_ZNSaIcE8allocateEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.af = load i64, ptr %0, align 8, !tbaa !22
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !44
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !34

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2024011613cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1332) %i.ah, i32 noundef 11)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i32 2 acq_rel, align 4
  %.not.i21 = icmp eq i32 %i.al, 2
  br i1 %.not.i21, label %bb.i, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit, !prof !66

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.aj)
          to label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.l

_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.h, %bb.i
  store ptr %.017, ptr %i.ai, align 8, !tbaa !22
  %i.am = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.j, !prof !34

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %.017, ptr %i.an, align 8, !tbaa !60
  invoke void @_ZN4absl12lts_2024011613cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1332) %i.am)
          to label %_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #25
  unreachable

_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.016, 1
  ret { i64, ptr } %.fca.1.insert

bb.l:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011613cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.aq
}

declare noundef zeroext i1 @_ZNK4absl12lts_2024011613cord_internal12CordRepBtree6IsFlatEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4absl12lts_2024011613cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202401164Cord15ForEachChunkAuxEPNS0_13cord_internal7CordRepENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE(ptr noundef %0, ptr %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 8 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !31    ; 2 uses
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !31
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]  ; 8 uses
  switch i8 %i.h, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20 [
    i8 3, label %bb.d
    i8 2, label %bb.s
  ], !prof !61

bb.d:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false)
  %i.l = load i64, ptr %.0.i, align 8, !tbaa !30  ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22    ; 4 uses
  %i.o = zext i8 %i.n to i32
  store i32 %i.o, ptr %i.k, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 14
  %i.q = load i8, ptr %i.p, align 2               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 9 uses
  %i.s = zext i8 %i.n to i64                      ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 %i.q, ptr %i.v, align 1, !tbaa !22
  %.018.i.i.i.i.i = zext i8 %i.q to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.s, -1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.018.i.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.y, ptr %i.z, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.ab, ptr %i.ac, align 2, !tbaa !22
  %.0.i.i.i.i.i.prol = zext i8 %i.ab to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ad = icmp eq i8 %i.n, 1
  br i1 %i.ad, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !22
  %.0.i.i.i.i.i = zext i8 %i.aj to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0.i.i.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !22
  %.0.i.i.i.i.i.1 = zext i8 %i.aq to i64          ; 2 uses
  %i.as = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.d ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.0.lcssa.i.i.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !37 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.ay = sub i64 %i.l, %i.ax                     ; 2 uses
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !79
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !31  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bg = phi i8 [ %.pre.i.i.i.i, %bb.e ], [ %i.ba, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bf, %bb.e ], [ %i.aw, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bd, %bb.e ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %i.bh = icmp ugt i8 %i.bg, 5
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit

_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit: ; preds = %bb.g, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bi, %bb.g ], [ %i.bk, %bb.h ]
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !75  ; 2 uses
  %.not30 = icmp eq i64 %i.bl, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit
  %i.bm = phi i64 [ %i.du, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ], [ %i.ay, %.lr.ph.preheader ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i37, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ], [ %.sroa.3.0.i.i.i.i, %.lr.ph.preheader ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i35, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ], [ %i.ax, %.lr.ph.preheader ] ; 3 uses
  %i.bn = phi i64 [ %i.dt, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ], [ %i.bl, %.lr.ph.preheader ] ; 2 uses
  tail call void %2(ptr %1, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i), !inline_history !202
  %i.bo = sub i64 %i.bn, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.bo, ptr %i.i, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.bn, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bp = load i32, ptr %i.k, align 8, !tbaa !71  ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.i
  %i.br = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77
  %.not2.i = icmp eq ptr %i.bt, null
  br i1 %.not2.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.bu = icmp eq i64 %i.bm, 0
  br i1 %i.bu, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !77  ; 2 uses
  %i.bw = load i8, ptr %i.u, align 4, !tbaa !22   ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 15
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !77 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i17
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !22
  %i.ch = zext i8 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 15
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !22
  %i.cl = zext i8 %i.ck to i64
  %i.cm = icmp eq i64 %i.ci, %i.cl
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.cm, label %.preheader, label %bb.l, !llvm.loop !1

bb.l:                                             ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i17
  %i.co = trunc i64 %i.ci to i8
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !22
  %i.cp = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.m ], [ %i.cp, %bb.l ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.cs, %bb.m ], [ %i.ce, %bb.l ]
  %.016.i.i.i.i.i = phi i64 [ %i.cw, %bb.m ], [ %i.ci, %bb.l ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.016.i.i.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !77
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 14
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22  ; 2 uses
  %i.cw = zext i8 %i.cv to i64                    ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.u, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !22
  %i.cy = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.m, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !2

bb.n:                                             ; preds = %bb.k
  %i.cz = add i8 %i.bw, 1                         ; 2 uses
  store i8 %i.cz, ptr %i.u, align 4, !tbaa !22
  %i.da = zext i8 %i.cz to i64
  br label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.m
  %.pre.i.i.i18 = load i64, ptr %i.j, align 8, !tbaa !79
  br label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.n
  %i.db = phi i64 [ %i.bm, %bb.n ], [ %.pre.i.i.i18, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.bv, %bb.n ], [ %i.cs, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.da, %bb.n ], [ %i.cw, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.lcssa.sink.i.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !37 ; 5 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !30 ; 2 uses
  %i.dg = sub i64 %i.db, %i.df                    ; 2 uses
  store i64 %i.dg, ptr %i.j, align 8, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !31  ; 2 uses
  %i.dj = icmp eq i8 %i.di, 1
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !80
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert.i.i.i.i14 = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %.pre.i.i.i.i15 = load i8, ptr %.phi.trans.insert.i.i.i.i14, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.do = phi i8 [ %.pre.i.i.i.i15, %bb.o ], [ %i.di, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i8 = phi ptr [ %i.dn, %bb.o ], [ %i.de, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i9 = phi i64 [ %i.dl, %bb.o ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.dp = icmp ugt i8 %i.do, 5
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i8, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i8, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !32
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.pn.i.i.i.i10 = phi ptr [ %i.dq, %bb.q ], [ %i.ds, %bb.r ]
  %.sroa.3.0.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i10, i64 %.0.i.i.i.i9
  %.pre38.pre = load i64, ptr %i.i, align 8, !tbaa !75
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit: ; preds = %bb.i, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.j, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i
  %i.dt = phi i64 [ %i.bo, %bb.j ], [ %.pre38.pre, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bo, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.bo, %bb.i ] ; 2 uses
  %i.du = phi i64 [ 0, %bb.j ], [ %i.dg, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bm, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ %i.bm, %bb.i ]
  %.sroa.2.0.copyload.i37 = phi ptr [ null, %bb.j ], [ %.sroa.3.0.i.i.i.i11, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ null, %bb.i ]
  %.sroa.0.0.copyload.i35 = phi i64 [ 0, %bb.j ], [ %i.df, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i ], [ 0, %bb.i ]
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPNS0_13cord_internal7CordRepE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.v

bb.s:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20: ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit, %bb.s
  %.0.i19 = phi ptr [ %i.dw, %bb.s ], [ %.0.i, %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dx = call noundef zeroext i1 @_ZN4absl12lts_202401164Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %.0.i19, ptr noundef nonnull %4)
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !85
  call void %2(ptr %1, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload), !inline_history !202
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20240116lsERSoRKNS0_4CordE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !210
  store i32 -1, ptr %i.c, align 8, !tbaa !71, !alias.scope !210
  %i.d = load i8, ptr %1, align 8, !tbaa !22, !noalias !210 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !210 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30, !noalias !210 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !75, !alias.scope !210
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !31, !noalias !210 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65, !noalias !210 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !210
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22, !noalias !210 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !71, !alias.scope !210
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !210 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i.i, ptr %i.w, align 8, !tbaa !77, !alias.scope !210
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !22, !alias.scope !210
  %.018.i.i.i.i.i.i.i = zext i8 %i.t to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37, !noalias !210 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !77, !alias.scope !210
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !210 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !22, !alias.scope !210
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ae to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37, !noalias !210 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !77, !alias.scope !210
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !210 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !22, !alias.scope !210
  %.0.i.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37, !noalias !210 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !77, !alias.scope !210
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !210 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !22, !alias.scope !210
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.at to i64      ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !77, !alias.scope !210
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37, !noalias !210 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !210
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !30, !noalias !210 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !79, !alias.scope !210
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !31, !noalias !210 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !80, !noalias !210
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40, !noalias !210 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !31, !noalias !210
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32, !noalias !210
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !75
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !30, !noalias !210
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80, !noalias !210
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40, !noalias !210 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !210
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32, !noalias !210
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bc, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i24 = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i21 = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bb, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not15 = icmp eq i64 %i.ce, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, %bb.b, %_ZNK4absl12lts_202401164Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %0

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit
  %i.ch = phi i64 [ %i.cd, %.lr.ph ], [ %i.eq, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i24, %.lr.ph ], [ %.sroa.2.0.copyload.i23, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i21, %.lr.ph ], [ %.sroa.0.0.copyload.i20, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.ci = phi i64 [ %i.ce, %.lr.ph ], [ %i.ep, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  %i.ck = sub i64 %i.ci, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.ci, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.q
  %i.cn = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !77
  %.not2.i = icmp eq ptr %i.cp, null
  br i1 %.not2.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cq = icmp eq i64 %i.ch, 0
  br i1 %i.cq, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !77 ; 2 uses
  %i.cs = load i8, ptr %i.cg, align 4, !tbaa !22  ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 15
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22
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
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !77 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = zext i8 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 1                ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22
  %i.dh = zext i8 %i.dg to i64
  %i.di = icmp eq i64 %i.de, %i.dh
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
end_hunk_4
begin_hunk_5_@_ZSt24__copy_move_backward_ditILb1EN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_St15_Deque_iteratorIS4_S5_S6_EET3_S7_IT0_T1_T2_ESD_S9_:bb.a
  %.not4 = icmp eq ptr %.0, %i.dy
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !462

bb.ah:                                            ; preds = %bb.a
  %i.dz = load ptr, ptr %1, align 8, !tbaa !111
  %i.ea = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !111   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !108 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !109 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !107 ; 2 uses
  %i.ei = ptrtoint ptr %i.ea to i64
  %i.ej = ptrtoint ptr %i.dz to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 4                 ; 2 uses
  %i.em = icmp sgt i64 %i.el, 0
  br i1 %i.em, label %.lr.ph.i40, label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES4_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES8_S8_SD_.exit20

.lr.ph.i40:                                       ; preds = %bb.ah, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.eh, %bb.ah ] ; 3 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ef, %bb.ah ]
  %.sroa.0.0 = phi ptr [ %storemerge.i.i.i50, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.eb, %bb.ah ] ; 4 uses
  %i.en = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ed, %bb.ah ] ; 3 uses
  %.018.i42 = phi ptr [ %i.ew, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ea, %bb.ah ]
  %.01617.i43 = phi i64 [ %i.fo, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.el, %bb.ah ] ; 2 uses
  %i.eo = ptrtoint ptr %.sroa.0.0 to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 4                 ; 2 uses
  %.not.i44 = icmp eq ptr %.sroa.0.0, %i.en
  br i1 %.not.i44, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i40
  %i.es = getelementptr inbounds i8, ptr %.sroa.12.0, i64 -8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !101, !noalias !468
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 512
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i40
  %.015.i45 = phi i64 [ 32, %bb.ai ], [ %i.er, %.lr.ph.i40 ]
  %.09.i46 = phi ptr [ %i.eu, %bb.ai ], [ %.sroa.0.0, %.lr.ph.i40 ] ; 2 uses
  %.sroa.speculated.i47 = tail call i64 @llvm.smin.i64(i64 %.015.i45, i64 %.01617.i43) ; 6 uses
  %i.ev = sub nsw i64 0, %.sroa.speculated.i47    ; 3 uses
  %i.ew = getelementptr inbounds [16 x i8], ptr %.018.i42, i64 %i.ev ; 3 uses
  %i.ex = icmp sgt i64 %.sroa.speculated.i47, 1
  br i1 %i.ex, label %bb.ak, label %bb.al, !prof !34

bb.ak:                                            ; preds = %bb.aj
  %.idx.neg.i51 = shl nuw nsw i64 %.sroa.speculated.i47, 4
  %i.ey = getelementptr inbounds [16 x i8], ptr %.09.i46, i64 %i.ev
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ew, i64 %.idx.neg.i51, i1 false), !noalias !468
  br label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48

bb.al:                                            ; preds = %bb.aj
  %i.ez = icmp eq i64 %.sroa.speculated.i47, 1
  br i1 %i.ez, label %bb.am, label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48

bb.am:                                            ; preds = %bb.al
  %i.fa = getelementptr inbounds i8, ptr %.09.i46, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fa, ptr noundef nonnull align 8 dereferenceable(12) %i.ew, i64 12, i1 false), !tbaa.struct !97, !noalias !468
  br label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48

_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48: ; preds = %bb.am, %bb.al, %bb.ak
  %i.fb = sub nsw i64 %i.er, %.sroa.speculated.i47 ; 5 uses
  %i.fc = icmp sgt i64 %i.fb, -1
  br i1 %i.fc, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48
  %i.fd = icmp samesign ult i64 %i.fb, 32
  br i1 %i.fd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fe = getelementptr inbounds [16 x i8], ptr %.sroa.0.0, i64 %i.ev
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49

bb.ap:                                            ; preds = %bb.an
  %i.ff = lshr i64 %i.fb, 5
  br label %bb.ar

bb.aq:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES5_ET1_T0_S7_S6_.exit.i48
  %i.fg = ashr i64 %i.fb, 5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fh = phi i64 [ %i.ff, %bb.ap ], [ %i.fg, %bb.aq ] ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.12.0, i64 %i.fh ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !101, !noalias !468 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 512
  %i.fl = shl nsw i64 %i.fh, 5
  %i.fm = sub nsw i64 %i.fb, %i.fl
  %i.fn = getelementptr inbounds [16 x i8], ptr %i.fj, i64 %i.fm
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49

_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49: ; preds = %bb.ar, %bb.ao
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.ao ], [ %i.fi, %bb.ar ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.ao ], [ %i.fk, %bb.ar ] ; 2 uses
  %.sroa.4.1 = phi ptr [ %i.en, %bb.ao ], [ %i.fj, %bb.ar ] ; 2 uses
  %storemerge.i.i.i50 = phi ptr [ %i.fe, %bb.ao ], [ %i.fn, %bb.ar ] ; 2 uses
  %i.fo = sub nsw i64 %.01617.i43, %.sroa.speculated.i47 ; 2 uses
  %i.fp = icmp sgt i64 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i40, label %_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES4_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES8_S8_SD_.exit20, !llvm.loop !457

_ZSt23__copy_move_backward_a1ILb1EPN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcES4_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES8_S8_SD_.exit20: ; preds = %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49, %bb.ah, %._crit_edge
  %.sink95 = phi ptr [ %storemerge.i.i.i50, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.bd, %._crit_edge ], [ %i.eb, %bb.ah ], [ %storemerge.i.i.i18, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  %.sink = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.bc, %._crit_edge ], [ %i.ed, %bb.ah ], [ %.sroa.456.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  %.sroa.9.2.sink = phi ptr [ %.sroa.9.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.bb, %._crit_edge ], [ %i.ef, %bb.ah ], [ %.sroa.957.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  %.sroa.12.2.sink = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i49 ], [ %i.ba, %._crit_edge ], [ %i.eh, %bb.ah ], [ %.sroa.1258.1, %_ZNSt15_Deque_iteratorIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcERS4_PS4_EmIEl.exit.i17 ]
  store ptr %.sink95, ptr %0, align 8, !tbaa !111
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.fq, align 8, !tbaa !108
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.2.sink, ptr %i.fr, align 8, !tbaa !109
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.12.2.sink, ptr %i.fs, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_202401164Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !71
  %i.e = load i8, ptr %1, align 1, !tbaa !22      ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not8.i = icmp ne ptr %i.h, null
  %.not.not.i = select i1 %i.f, i1 %.not8.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !75
  %.not7.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i, label %bb.o, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !31    ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !31
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22    ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !22
  %.018.i.i.i.i.i = zext i8 %i.u to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !22
  %.0.i.i.i.i.i.prol = zext i8 %i.af to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !22
  %.0.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !22
  %.0.i.i.i.i.i.1 = zext i8 %i.au to i64          ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i, align 8, !tbaa !30
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !31  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %_ZN4absl12lts_202401164Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !84
  %i.bq = load i64, ptr %.0.i.i.i, align 8, !tbaa !30
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !32
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.0.i8.i.i
  br label %_ZN4absl12lts_202401164Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202401164Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !85
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !75
  %i.cd = load i8, ptr %1, align 8, !tbaa !22
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !85
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPKS1_.exit

_ZN4absl12lts_202401164Cord13ChunkIteratorC2EPKS1_.exit: ; preds = %_ZN4absl12lts_202401164Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102
  %i.ag = load ptr, ptr %0, align 8, !tbaa !98
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4absl12lts_2024011612crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !101
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !97
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !107
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !101 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !109
  store ptr %i.as, ptr %i.a, align 8, !tbaa !95
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4absl12lts_202401164Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !472
  store i32 -1, ptr %i.c, align 8, !tbaa !71, !alias.scope !472
  %i.d = load i8, ptr %0, align 8, !tbaa !22, !noalias !472 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !472 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i = select i1 %i.e, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30, !noalias !472 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !75, !alias.scope !472
  %.not7.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !31, !noalias !472 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65, !noalias !472 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !31, !noalias !472
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22, !noalias !472 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !71, !alias.scope !472
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !472 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i, ptr %i.w, align 8, !tbaa !77, !alias.scope !472
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !22, !alias.scope !472
  %.018.i.i.i.i.i.i = zext i8 %i.t to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37, !noalias !472 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !77, !alias.scope !472
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !472 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !22, !alias.scope !472
  %.0.i.i.i.i.i.i.prol = zext i8 %i.ae to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37, !noalias !472 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !77, !alias.scope !472
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !472 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !22, !alias.scope !472
  %.0.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37, !noalias !472 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !77, !alias.scope !472
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !472 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !22, !alias.scope !472
  %.0.i.i.i.i.i.i.1 = zext i8 %i.at to i64        ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !77, !alias.scope !472
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37, !noalias !472 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !30, !noalias !472
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !30, !noalias !472 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !79, !alias.scope !472
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !31, !noalias !472 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !80, !noalias !472
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40, !noalias !472 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !472
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32, !noalias !472
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  %.pr.pre.pre = load i64, ptr %i.a, align 8, !tbaa !75
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !30, !noalias !472
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80, !noalias !472
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40, !noalias !472 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !472
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32, !noalias !472
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bc, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.0.0.copyload.i = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bb, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %.pr = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.pr.pre.pre, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread

_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread: ; preds = %bb.b, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit, %bb.p
  %i.ce = phi i64 [ %i.cd, %bb.p ], [ %i.cd, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %i.cf = phi i64 [ %.pr, %bb.p ], [ 0, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %i.cg = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ %.sroa.0.0.copyload.i, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ 0, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit ], [ 0, %bb.b ]
  %.sroa.12.0 = phi ptr [ %.sroa.2.0.copyload.i, %bb.p ], [ null, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit ], [ null, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 %3
  %i.ci = sub i64 %.sroa.0.0, %3
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.ck = sub i64 %1, %3
  %i.cl = sub i64 %4, %3
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread
  %i.co = phi i64 [ %i.ce, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.ey, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.cp = phi i64 [ %i.cf, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.ez, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.cq = phi i64 [ %i.cg, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.fa, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %.sroa.032.0 = phi i64 [ %i.ck, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.fh, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %.0 = phi i64 [ %i.cl, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.fd, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.8.0 = phi ptr [ %i.cj, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.fg, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ci, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.ff, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %i.ch, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit.thread ], [ %i.fe, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %i.cr = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.cr, label %bb.r, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i

bb.r:                                             ; preds = %bb.q
  %i.cs = sub i64 %i.cp, %i.cq                    ; 4 uses
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !75
  %.not.i.i = icmp eq i64 %i.cp, %i.cq
  br i1 %.not.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i32, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.s
  %i.cv = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !77
  %.not2.i.i = icmp eq ptr %i.cx, null
  br i1 %.not2.i.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.t

bb.t:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.cy = icmp eq i64 %i.co, 0
  br i1 %i.cy, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !77 ; 2 uses
  %i.da = load i8, ptr %i.cn, align 4, !tbaa !22  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 15
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = zext i8 %i.dd to i64
  %i.df = add nsw i64 %i.de, -1
  %i.dg = icmp eq i64 %i.df, %i.db
  br i1 %i.dg, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
end_hunk_5
begin_hunk_6_@_ZNK4absl12lts_202401164Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.ds = trunc i64 %i.dm to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !22
  %i.dt = sext i32 %indvars.iv37.i.i.i.i.i.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv40.i.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.i, %bb.w ], [ %i.dt, %bb.v ] ; 2 uses
  %.017.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.w ], [ %i.di, %bb.v ]
  %.016.i.i.i.i.i.i = phi i64 [ %i.ea, %bb.w ], [ %i.dm, %bb.v ]
  %i.du = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.016.i.i.i.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i.i, -1 ; 3 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv.next41.i.i.i.i.i.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 14
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !22  ; 2 uses
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.cn, i64 %indvars.iv.next41.i.i.i.i.i.i
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !22
  %i.ec = icmp sgt i64 %indvars.iv40.i.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.w, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i, !llvm.loop !2

bb.x:                                             ; preds = %bb.u
  %i.ed = add i8 %i.da, 1                         ; 2 uses
  store i8 %i.ed, ptr %i.cn, align 4, !tbaa !22
  %i.ee = zext i8 %i.ed to i64
  br label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i: ; preds = %bb.w
  %.pre.i.i.i.i19 = load i64, ptr %i.b, align 8, !tbaa !79
  br label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i, %bb.x
  %i.ef = phi i64 [ %i.co, %bb.x ], [ %.pre.i.i.i.i19, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %.lcssa12.sink.i.i.i.i.i = phi ptr [ %i.cz, %bb.x ], [ %i.dw, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi i64 [ %i.ee, %bb.x ], [ %i.ea, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i.i, i64 16
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.lcssa.sink.i.i.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !37 ; 5 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !30 ; 3 uses
  %i.ek = sub i64 %i.ef, %i.ej                    ; 2 uses
  store i64 %i.ek, ptr %i.b, align 8, !tbaa !79
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.em = load i8, ptr %i.el, align 4, !tbaa !31  ; 2 uses
  %i.en = icmp eq i8 %i.em, 1
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !80
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %.pre.i.i.i.i.i16 = load i8, ptr %.phi.trans.insert.i.i.i.i.i15, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i
  %i.es = phi i8 [ %.pre.i.i.i.i.i16, %bb.y ], [ %i.em, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ]
  %.010.i.i.i.i.i10 = phi ptr [ %i.er, %bb.y ], [ %i.ei, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i11 = phi i64 [ %i.ep, %bb.y ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i ]
  %i.et = icmp ugt i8 %i.es, 5
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i10, i64 13
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i10, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32
  br label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i

_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i: ; preds = %bb.ab, %bb.aa
  %.pn.i.i.i.i.i12 = phi ptr [ %i.eu, %bb.aa ], [ %i.ew, %bb.ab ]
  %.sroa.3.0.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i12, i64 %.0.i.i.i.i.i11
  %.pr.pre.pre.i = load i64, ptr %i.a, align 8, !tbaa !75 ; 2 uses
  %i.ex = icmp eq i64 %.pr.pre.pre.i, 0
  br i1 %i.ex, label %.critedge, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i

_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i: ; preds = %bb.s, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.t, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i, %bb.q
  %i.ey = phi i64 [ %i.co, %bb.q ], [ %i.ek, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ %i.co, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ %i.co, %bb.s ]
  %i.ez = phi i64 [ %i.cp, %bb.q ], [ %.pr.pre.pre.i, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ %i.cs, %bb.t ], [ %i.cs, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ %i.cs, %bb.s ]
  %i.fa = phi i64 [ %i.cq, %bb.q ], [ %i.ej, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ 0, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.s ]
  %.sroa.0.2.ph = phi i64 [ %.sroa.0.1, %bb.q ], [ %i.ej, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.t ], [ 0, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.s ] ; 3 uses
  %.sroa.12.2.ph = phi ptr [ %.sroa.12.1, %bb.q ], [ %.sroa.3.0.i.i.i.i.i13, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ null, %bb.t ], [ null, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ null, %bb.s ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.032.0, 0
  br i1 %i.fb, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.032.0, i64 %.sroa.0.2.ph) ; 6 uses
  %i.fc = tail call i32 @memcmp(ptr noundef %.sroa.12.2.ph, ptr noundef %.sroa.8.0, i64 noundef %.sroa.speculated.i) #27 ; 2 uses
  %.not.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, label %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread

_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit: ; preds = %bb.ac
  %i.fd = sub i64 %.0, %.sroa.speculated.i        ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.12.2.ph, i64 %.sroa.speculated.i
  %i.ff = sub nuw i64 %.sroa.0.2.ph, %.sroa.speculated.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.speculated.i
  %i.fh = sub nuw i64 %.sroa.032.0, %.sroa.speculated.i
  %.not54 = icmp eq i64 %i.fd, 0
  br i1 %.not54, label %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread, label %bb.q, !llvm.loop !471

.critedge:                                        ; preds = %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i, %bb.r, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i
  %.sroa.032.0.lcssa = phi i64 [ %.sroa.032.0, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ %.sroa.032.0, %bb.r ], [ 0, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i ]
  %.sroa.0.243 = phi i64 [ 0, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.r ], [ %.sroa.0.2.ph, %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i ]
  %i.fi = icmp eq i64 %.sroa.032.0.lcssa, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i64 %.sroa.0.243, 0
  %.neg = sext i1 %i.fk to i32
  %i.fl = add nsw i32 %.neg, %i.fj
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread

_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread: ; preds = %bb.ac, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %.critedge
  %.2 = phi i32 [ %i.fl, %.critedge ], [ %i.fc, %bb.ac ], [ 0, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4absl12lts_202401164Cord15CompareSlowPathERKS1_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20240116::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !478
  store i32 -1, ptr %i.d, align 8, !tbaa !71, !alias.scope !478
  %i.e = load i8, ptr %0, align 8, !tbaa !22, !noalias !478 ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !478 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.h, null
  %.not.not.i.i = select i1 %i.f, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30, !noalias !478 ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !75, !alias.scope !478
  %.not7.i.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i.i, label %bb.o, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !31, !noalias !478 ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65, !noalias !478 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !31, !noalias !478
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22, !noalias !478 ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !71, !alias.scope !478
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1, !noalias !478 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i.i, ptr %i.x, align 8, !tbaa !77, !alias.scope !478
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !22, !alias.scope !478
  %.018.i.i.i.i.i.i = zext i8 %i.u to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37, !noalias !478 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !77, !alias.scope !478
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1, !noalias !478 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !22, !alias.scope !478
  %.0.i.i.i.i.i.i.prol = zext i8 %i.af to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37, !noalias !478 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !77, !alias.scope !478
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1, !noalias !478 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !22, !alias.scope !478
  %.0.i.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37, !noalias !478 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !77, !alias.scope !478
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1, !noalias !478 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !22, !alias.scope !478
  %.0.i.i.i.i.i.i.1 = zext i8 %i.au to i64        ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !77, !alias.scope !478
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37, !noalias !478 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !30, !noalias !478
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30, !noalias !478 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !79, !alias.scope !478
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !31, !noalias !478 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80, !noalias !478
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40, !noalias !478 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31, !noalias !478
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32, !noalias !478
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !84, !alias.scope !478
  %i.bq = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !30, !noalias !478
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !80, !noalias !478
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40, !noalias !478 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !31, !noalias !478
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !32, !noalias !478
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

bb.o:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false), !alias.scope !478
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !75, !alias.scope !478
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i = select i1 %i.f, ptr null, ptr %i.cd
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit

_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.o, %bb.p
  %i.ce = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bd, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i, %bb.p ], [ null, %bb.o ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.sroa.0.0.copyload.i = phi i64 [ %i.cc, %bb.p ], [ 0, %bb.o ], [ %i.bq, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.bc, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !479
  store i32 -1, ptr %i.ch, align 8, !tbaa !71, !alias.scope !479
  %i.ci = load i8, ptr %1, align 8, !tbaa !22, !noalias !479 ; 2 uses
  %i.cj = trunc i8 %i.ci to i1                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !479 ; 5 uses
  %.not8.i.i12 = icmp ne ptr %i.cl, null
  %.not.not.i.i13 = select i1 %i.cj, i1 %.not8.i.i12, i1 false
  br i1 %.not.not.i.i13, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !30, !noalias !479 ; 3 uses
  store i64 %i.cm, ptr %i.cf, align 8, !tbaa !75, !alias.scope !479
  %.not7.i.i16 = icmp eq i64 %i.cm, 0
  br i1 %.not7.i.i16, label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49, label %bb.r, !prof !66

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !31, !noalias !479 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 2
  br i1 %i.cp, label %bb.s, label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17, !prof !66

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !65, !noalias !479 ; 2 uses
  %.phi.trans.insert.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.pre.i.i.i48 = load i8, ptr %.phi.trans.insert.i.i.i47, align 4, !tbaa !31, !noalias !479
  br label %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17

_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17: ; preds = %bb.s, %bb.r
  %i.cs = phi i8 [ %.pre.i.i.i48, %bb.s ], [ %i.co, %bb.r ] ; 3 uses
  %.0.i.i.i.i18 = phi ptr [ %i.cr, %bb.s ], [ %i.cl, %bb.r ] ; 10 uses
  %i.ct = icmp eq i8 %i.cs, 3
  br i1 %i.ct, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 13
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22, !noalias !479 ; 4 uses
  %i.cw = zext i8 %i.cv to i32
  store i32 %i.cw, ptr %i.ch, align 8, !tbaa !71, !alias.scope !479
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 14
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !479 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.da = zext i8 %i.cv to i64                    ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  store ptr %.0.i.i.i.i18, ptr %i.db, align 8, !tbaa !77, !alias.scope !479
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !22, !alias.scope !479
  %.018.i.i.i.i.i.i30 = zext i8 %i.cy to i64      ; 3 uses
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i31, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %bb.t
  %xtraiter206 = and i64 %i.da, 1
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %.lr.ph.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i.i32.prol

.lr.ph.i.i.i.i.i.i32.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i32.preheader
  %indvars.iv.next.i.i.i.i.i.i36.prol = add nsw i64 %i.da, -1 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 16
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.018.i.i.i.i.i.i30
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !37, !noalias !479 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i.i.i36.prol
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !77, !alias.scope !479
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 14
  %i.dj = load i8, ptr %i.di, align 1, !noalias !479 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i.i36.prol
  store i8 %i.dj, ptr %i.dk, align 2, !tbaa !22, !alias.scope !479
  %.0.i.i.i.i.i.i37.prol = zext i8 %i.dj to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i32.prol.loopexit

.lr.ph.i.i.i.i.i.i32.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i.i32.preheader
  %indvars.iv.i.i.i.i.i.i33.unr = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %indvars.iv.next.i.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.021.i.i.i.i.i.i34.unr = phi i64 [ %.018.i.i.i.i.i.i30, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %.0.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.01619.i.i.i.i.i.i35.unr = phi ptr [ %.0.i.i.i.i18, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.0.i.i.i.i.i.i37.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i32.preheader ], [ %.0.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i32.prol ]
  %i.dl = icmp eq i8 %i.cv, 1
  br i1 %i.dl, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32.prol.loopexit, %.lr.ph.i.i.i.i.i.i32
  %indvars.iv.i.i.i.i.i.i33 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i36.1, %.lr.ph.i.i.i.i.i.i32 ], [ %indvars.iv.i.i.i.i.i.i33.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i34 = phi i64 [ %.0.i.i.i.i.i.i37.1, %.lr.ph.i.i.i.i.i.i32 ], [ %.021.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ]
  %.01619.i.i.i.i.i.i35 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i32 ], [ %.01619.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i36 = add nsw i64 %indvars.iv.i.i.i.i.i.i33, -1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i35, i64 16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.021.i.i.i.i.i.i34
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !37, !noalias !479 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i.i.i36
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !77, !alias.scope !479
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 14
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !479 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i.i36
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !22, !alias.scope !479
  %.0.i.i.i.i.i.i37 = zext i8 %i.dr to i64
  %indvars.iv.next.i.i.i.i.i.i36.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i33, -2 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0.i.i.i.i.i.i37
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !37, !noalias !479 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i.i.i36.1
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !77, !alias.scope !479
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 14
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !479 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i.i36.1
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !22, !alias.scope !479
  %.0.i.i.i.i.i.i37.1 = zext i8 %i.dy to i64      ; 2 uses
  %i.ea = icmp sgt i64 %indvars.iv.i.i.i.i.i.i33, 2
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i32, label %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38, !llvm.loop !0

_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i32.prol.loopexit, %.lr.ph.i.i.i.i.i.i32, %bb.t
  %.0.lcssa.i.i.i.i.i.i39 = phi i64 [ %.018.i.i.i.i.i.i30, %bb.t ], [ %.0.i.i.i.i.i.i37.lcssa.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ], [ %.0.i.i.i.i.i.i37.1, %.lr.ph.i.i.i.i.i.i32 ]
  %i.eb = load ptr, ptr %i.cz, align 8, !tbaa !77, !alias.scope !479
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.0.lcssa.i.i.i.i.i.i39
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !37, !noalias !479 ; 5 uses
  %i.ef = load i64, ptr %.0.i.i.i.i18, align 8, !tbaa !30, !noalias !479
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !30, !noalias !479 ; 2 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  store i64 %i.eh, ptr %i.cg, align 8, !tbaa !79, !alias.scope !479
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !31, !noalias !479 ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 1
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !80, !noalias !479
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40, !noalias !479 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %.pre.i.i.i.i.i46 = load i8, ptr %.phi.trans.insert.i.i.i.i.i45, align 4, !tbaa !31, !noalias !479
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38
  %i.ep = phi i8 [ %.pre.i.i.i.i.i46, %bb.u ], [ %i.ej, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38 ]
  %.010.i.i.i.i.i40 = phi ptr [ %i.eo, %bb.u ], [ %i.ee, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38 ] ; 2 uses
  %.0.i.i.i.i.i41 = phi i64 [ %i.em, %bb.u ], [ 0, %_ZN4absl12lts_2024011613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i38 ]
  %i.eq = icmp ugt i8 %i.ep, 5
  br i1 %i.eq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i40, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42

bb.x:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i40, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !32, !noalias !479
  br label %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42

_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42: ; preds = %bb.x, %bb.w
  %.pn.i.i.i.i.i43 = phi ptr [ %i.er, %bb.w ], [ %i.et, %bb.x ]
  %.sroa.3.0.i.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i43, i64 %.0.i.i.i.i.i41
  %.pre.pre = load i64, ptr %i.cf, align 8, !tbaa !75
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49

bb.y:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i17
  %i.eu = load i64, ptr %.0.i.i.i.i18, align 8, !tbaa !30, !noalias !479
  %i.ev = icmp eq i8 %i.cs, 1
  br i1 %i.ev, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !80, !noalias !479
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i18, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !40, !noalias !479 ; 2 uses
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %.pre.i.i.i.i29 = load i8, ptr %.phi.trans.insert.i.i.i.i28, align 4, !tbaa !31, !noalias !479
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fa = phi i8 [ %.pre.i.i.i.i29, %bb.z ], [ %i.cs, %bb.y ]
  %.010.i.i.i.i19 = phi ptr [ %i.ez, %bb.z ], [ %.0.i.i.i.i18, %bb.y ] ; 2 uses
  %.0.i8.i.i.i20 = phi i64 [ %i.ex, %bb.z ], [ 0, %bb.y ]
  %i.fb = icmp ugt i8 %i.fa, 5
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i19, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21

bb.ac:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i19, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !32, !noalias !479
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21: ; preds = %bb.ac, %bb.ab
  %.pn.i.i.i.i22 = phi ptr [ %i.fc, %bb.ab ], [ %i.fe, %bb.ac ]
  %.sroa.3.0.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i22, i64 %.0.i8.i.i.i20
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49

bb.ad:                                            ; preds = %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit
  %i.ff = sext i8 %i.ci to i64
  %i.fg = lshr i64 %i.ff, 1                       ; 3 uses
  store i64 %i.fg, ptr %i.cf, align 8, !tbaa !75, !alias.scope !479
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i14 = select i1 %i.cj, ptr null, ptr %i.fh
  br label %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49

_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49: ; preds = %bb.q, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21, %bb.ad
  %i.fi = phi i64 [ 0, %bb.ad ], [ %i.eh, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ 0, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ 0, %bb.q ]
  %.sroa.2.0.copyload.i52 = phi ptr [ %spec.select.i.i.i14, %bb.ad ], [ %.sroa.3.0.i.i.i.i.i44, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ %.sroa.3.0.i.i.i.i23, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ null, %bb.q ]
  %.sroa.0.0.copyload.i50 = phi i64 [ %i.fg, %bb.ad ], [ %i.eg, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ %i.eu, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ 0, %bb.q ] ; 2 uses
  %i.fj = phi i64 [ %i.fg, %bb.ad ], [ %.pre.pre, %_ZN4absl12lts_2024011613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i42 ], [ %i.cm, %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i21 ], [ 0, %bb.q ] ; 2 uses
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !75  ; 2 uses
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

bb.ae:                                            ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49
  %i.fu = phi i64 [ %i.fi, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.kr, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.fv = phi i64 [ %i.fj, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.ks, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.fw = phi i64 [ %.sroa.0.0.copyload.i50, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.kt, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.fx = phi i64 [ %i.ce, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.ih, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 5 uses
  %i.fy = phi i64 [ %i.fk, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.ii, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %i.fz = phi i64 [ %.sroa.0.0.copyload.i, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.ij, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 3 uses
  %.0 = phi i64 [ %i.fp, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.kv, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.0109.1 = phi i64 [ %i.fm, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.kx, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 2 uses
  %.sroa.12114.1 = phi ptr [ %i.fl, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.kw, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %.sroa.0.1 = phi i64 [ %i.fo, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.kz, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ] ; 4 uses
  %.sroa.12.1 = phi ptr [ %i.fn, %_ZNK4absl12lts_202401164Cord11chunk_beginEv.exit49 ], [ %i.ky, %_ZN4absl12lts_2024011612_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit ]
  %i.ga = icmp eq i64 %.sroa.0109.1, 0
  br i1 %i.ga, label %bb.af, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i

bb.af:                                            ; preds = %bb.ae
  %i.gb = sub i64 %i.fy, %i.fz                    ; 4 uses
  store i64 %i.gb, ptr %i.b, align 8, !tbaa !75
  %.not.i.i = icmp eq i64 %i.fy, %i.fz
  br i1 %.not.i.i, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = load i32, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.ag
  %i.ge = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !77
  %.not2.i.i = icmp eq ptr %i.gg, null
  br i1 %.not2.i.i, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.gh = icmp eq i64 %i.fx, 0
  br i1 %i.gh, label %_ZN4absl12lts_202401164Cord13ChunkIteratorppEv.exit.thread27.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gi = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 2 uses
  %i.gj = load i8, ptr %i.fr, align 4, !tbaa !22  ; 2 uses
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 15
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !22
  %i.gn = zext i8 %i.gm to i64
  %i.go = add nsw i64 %i.gn, -1
  %i.gp = icmp eq i64 %i.go, %i.gk
  br i1 %i.gp, label %.preheader.i, label %bb.al

end_hunk_6
