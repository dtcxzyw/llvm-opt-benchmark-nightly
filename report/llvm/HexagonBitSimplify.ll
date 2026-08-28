Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonBitSimplify?download=true
inline.NumInlined: 3093
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_114CopyGeneration9findMatchERKN4llvm10BitTracker11RegisterRefERS3_RKNS_11RegisterSetE:bb.a
  %i.io = zext i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %.val50, i64 %i.io ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !258 ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 3
  br i1 %i.ir, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !354 ; 2 uses
  %i.iu = icmp ne i32 %i.it, 0
  %or.cond.i116 = and i1 %i.ij, %i.iu
  br i1 %or.cond.i116, label %bb.ai, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.old.i111 = icmp eq i32 %i.ii, %i.iq
  br i1 %.not.i.i.old.i111, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

bb.ai:                                            ; preds = %bb.ag
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !354
  %i.ix = icmp eq i32 %i.iw, %i.it
  br i1 %i.ix, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117: ; preds = %bb.ai
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iz = load i16, ptr %i.iy, align 4, !tbaa !819
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.jb = load i16, ptr %i.ja, align 4, !tbaa !819
  %i.jc = icmp eq i16 %i.iz, %i.jb
  br i1 %i.jc, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113: ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117, %bb.ah
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, %wide.trip.count.i96
  br i1 %exitcond.not.i115, label %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106, label %.lr.ph.i109, !llvm.loop !821

_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106: ; preds = %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i101, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113, %bb.y
  %storemerge = phi i32 [ 2, %bb.y ], [ 1, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113 ], [ 2, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i101 ]
  store i32 %storemerge, ptr %i.dv, align 4, !tbaa !828
  store i32 %.sroa.0148.0193, ptr %2, align 4, !tbaa !254
  %i.jd = load i32, ptr %1, align 4
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %bb.aj, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

bb.aj:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106
  %.val12.i121 = load ptr, ptr %i.hc, align 8
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %.val12.i121, i64 %i.hd
  %.0.copyload.i.i.i.i.i.i.i.i122 = load i64, ptr %i.jf, align 8
  %i.jg = and i64 %.0.copyload.i.i.i.i.i.i.i.i122, -5
  %i.jh = inttoptr i64 %i.jg to ptr
  %.val11.i = load ptr, ptr %i.hb, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 200
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = tail call noundef ptr %i.jm(ptr noundef nonnull align 8 dereferenceable(344) %i.jj) #20, !inline_history !809 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 20
  %i.jp = load i16, ptr %i.jo, align 4, !tbaa !810
  switch i16 %i.jp, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread [
    i16 15, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124
    i16 26, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split
  ]

_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split: ; preds = %bb.aj
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124

_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124: ; preds = %bb.aj, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split
  %.2.i3.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split ]
  %.val.i125 = load ptr, ptr %i.hb, align 8
  %i.jq = load i32, ptr %1, align 4, !tbaa !354   ; 2 uses
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %bb.ak, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124
  %.val10.i128 = load ptr, ptr %i.hc, align 8
  %i.js = and i32 %i.jq, 2147483647
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.val10.i128, i64 %i.jt
  %.0.copyload.i.i.i.i.i.i.i14.i129 = load i64, ptr %i.ju, align 8
  %i.jv = and i64 %.0.copyload.i.i.i.i.i.i.i14.i129, -5
  %i.jw = inttoptr i64 %i.jv to ptr               ; 2 uses
  %i.jx = load i32, ptr %i.ax, align 4, !tbaa !828
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i125, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 200
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = tail call noundef ptr %i.kd(ptr noundef nonnull align 8 dereferenceable(344) %i.ka) #20, !inline_history !809 ; 0 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %i.kg = load i16, ptr %i.kf, align 4, !tbaa !810 ; 2 uses
  %switch.selectcmp.i15.i130 = icmp eq i16 %i.kg, 26
  %switch.select.i16.i131 = select i1 %switch.selectcmp.i15.i130, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i17.i132 = icmp eq i16 %i.kg, 15
  %switch.select2.i18.i133 = select i1 %switch.selectcmp1.i17.i132, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr %switch.select.i16.i131
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134

_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134: ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124, %bb.ak, %bb.al
  %.2.i13.i127 = phi ptr [ null, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124 ], [ %i.jw, %bb.ak ], [ %switch.select2.i18.i133, %bb.al ]
  %i.kh = icmp eq ptr %.2.i3.i, %.2.i13.i127
  %cond.fr = freeze i1 %i.kh
  br i1 %cond.fr, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

_ZNK4llvm10BitTracker3hasEj.exit79.thread:        ; preds = %bb.ae, %bb.ag, %bb.ah, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117, %bb.ai, %bb.r, %bb.t, %bb.u, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i, %bb.v, %bb.aj, %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106, %bb.n, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134, %bb.w, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit, %bb.m, %bb.x, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i77, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit, %_ZNK4llvm10BitTracker3hasEj.exit79, %_ZNK12_GLOBAL__N_111RegisterSetixEj.exit
  %.val37 = load ptr, ptr %3, align 8             ; 2 uses
  %.val38 = load i32, ptr %i.cs, align 8, !tbaa !287 ; 2 uses
  %i.ki = and i32 %.sroa.0148.0193.in, 2147483647
  %i.kj = add nuw i32 %i.ki, 1                    ; 3 uses
  %i.kk = icmp eq i32 %i.kj, %.val38
  br i1 %i.kk, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm10BitTracker3hasEj.exit79.thread
  %i.kl = lshr i32 %i.kj, 6                       ; 4 uses
  %i.km = add i32 %.val38, -1                     ; 2 uses
  %i.kn = lshr i32 %i.km, 6                       ; 4 uses
  %.not42.i.i.i = icmp samesign ugt i32 %i.kl, %i.kn
  br i1 %.not42.i.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am
  %i.ko = and i32 %i.kj, 63                       ; 2 uses
  %i.kp = sub nuw nsw i32 64, %i.ko
  %.not.i.i = icmp eq i32 %i.ko, 0
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = lshr i64 -1, %i.kq
  %i.ks = xor i64 %i.kr, -1
  %i.kt = and i32 %i.km, 63
  %i.ku = xor i32 %i.kt, 63
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = lshr i64 -1, %i.kv                      ; 2 uses
  %i.kx = zext nneg i32 %i.kl to i64              ; 2 uses
  %i.ky = zext nneg i32 %i.kn to i64
  %i.kz = add nuw nsw i32 %i.kn, 1
  %wide.trip.count.i.i.i135 = zext nneg i32 %i.kz to i64 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %i.kx
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !28
  %i.lc = select i1 %.not.i.i, i64 -1, i64 %i.ks
  %i.ld = icmp eq i32 %i.kl, %i.kn
  %i.le = select i1 %i.ld, i64 %i.kw, i64 -1
  %spec.select44.peel.i.i.i = and i64 %i.le, %i.lc
  %.230.peel.i.i.i136 = and i64 %spec.select44.peel.i.i.i, %i.lb ; 2 uses
  %.not37.peel.i.i.i137 = icmp eq i64 %.230.peel.i.i.i136, 0
  br i1 %.not37.peel.i.i.i137, label %bb.an, label %_ZNK4llvm9BitVector9find_nextEj.exit.i

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.peel.i.i.i = add nuw nsw i64 %i.kx, 1 ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i, %wide.trip.count.i.i.i135
  br i1 %exitcond.peel.not.i.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %.peel.next.i.i.i140

.peel.next.i.i.i140:                              ; preds = %bb.an, %bb.ao
  %indvars.iv.i.i.i141 = phi i64 [ %indvars.iv.next.i.i.i145, %bb.ao ], [ %indvars.iv.next.peel.i.i.i, %bb.an ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %indvars.iv.i.i.i141
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !28
  %i.lh = icmp eq i64 %indvars.iv.i.i.i141, %i.ky
  %i.li = select i1 %i.lh, i64 %i.kw, i64 -1
  %.230.i.i.i142 = and i64 %i.li, %i.lg           ; 2 uses
  %.not37.i.i.i143 = icmp eq i64 %.230.i.i.i142, 0
  br i1 %.not37.i.i.i143, label %bb.ao, label %.loopexit48.i.i.i

.loopexit48.i.i.i:                                ; preds = %.peel.next.i.i.i140
  %.pre.i.i.i144 = trunc nuw nsw i64 %indvars.iv.i.i.i141 to i32
  br label %_ZNK4llvm9BitVector9find_nextEj.exit.i

bb.ao:                                            ; preds = %.peel.next.i.i.i140
  %indvars.iv.next.i.i.i145 = add nuw nsw i64 %indvars.iv.i.i.i141, 1 ; 2 uses
  %exitcond.not.i.i.i146 = icmp eq i64 %indvars.iv.next.i.i.i145, %wide.trip.count.i.i.i135
  br i1 %exitcond.not.i.i.i146, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %.peel.next.i.i.i140, !llvm.loop !309

_ZNK4llvm9BitVector9find_nextEj.exit.i:           ; preds = %.loopexit48.i.i.i, %.lr.ph.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i144, %.loopexit48.i.i.i ], [ %i.kl, %.lr.ph.i.i.i ]
  %.230.lcssa.i.i.i = phi i64 [ %.230.i.i.i142, %.loopexit48.i.i.i ], [ %.230.peel.i.i.i136, %.lr.ph.i.i.i ]
  %i.lj = shl nuw i32 %.pre-phi.i.i.i, 6          ; 2 uses
  %i.lk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i, i1 true)
  %i.ll = trunc nuw nsw i64 %i.lk to i32
  %i.lm = icmp slt i32 %i.lj, 0
  %i.ln = or disjoint i32 %i.lj, %i.ll
  br i1 %i.lm, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit, !llvm.loop !898

_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit: ; preds = %bb.j, %_ZNK4llvm9BitVector9find_nextEj.exit.i, %bb.am, %_ZNK4llvm10BitTracker3hasEj.exit79.thread, %bb.an, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134, %bb.ao, %_ZNK4llvm9BitVector10find_firstEv.exit.i, %bb.g, %bb.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.a, %bb.e, %_ZNK4llvm10BitTracker3hasEj.exit
  %.5 = phi i1 [ false, %bb.e ], [ false, %_ZNK4llvm10BitTracker3hasEj.exit ], [ false, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ false, %bb.a ], [ true, %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit ], [ true, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134 ], [ false, %_ZNK4llvm9BitVector10find_firstEv.exit.i ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.ao ], [ false, %_ZNK4llvm9BitVector9find_nextEj.exit.i ], [ false, %bb.am ], [ false, %_ZNK4llvm10BitTracker3hasEj.exit79.thread ], [ false, %bb.an ], [ false, %bb.j ]
  ret i1 %.5
}

declare void @_ZNK4llvm10BitTracker3getENS0_11RegisterRefE(ptr dead_on_unwind writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8, ptr noundef nonnull align 8 dereferenceable(313), i64) local_unnamed_addr #6

declare noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(62), i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115CopyPropagationD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115CopyPropagation12processBlockERN4llvm17MachineBasicBlockERKNS_11RegisterSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(360) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.090 = alloca i64, align 8                ; 8 uses
  %.sroa.0 = alloca i64, align 8                  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !280
  %i.g = and i32 %i.f, 4
  %.not45.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not45.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %i.c, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !280
  %i.l = and i32 %i.k, 4
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !282

_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %bb.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not44 = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i, %i.a
  br i1 %.not44, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit, label %.lr.ph

.preheader:                                       ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit
  %i.m = ptrtoint ptr %.sroa.11.1 to i64
  %.not3751 = icmp eq ptr %.sroa.027.1, %.sroa.7.1
  br i1 %.not3751, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.4..4..4..4..4..sroa_idx88 = getelementptr inbounds nuw i8, ptr %.sroa.090, i64 4
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.4..4..4..4..4..sroa_idx89 = getelementptr inbounds nuw i8, ptr %.sroa.090, i64 4
  %.4..4..4..4..4..sroa_idx87 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  br label %bb.h

.lr.ph:                                           ; preds = %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit
  %.sroa.024.048 = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ %.sroa.0.1.i.i.i.i.i.i.i, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 3 uses
  %.sroa.11.047 = phi ptr [ %.sroa.11.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 3 uses
  %.sroa.7.046 = phi ptr [ %.sroa.7.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 3 uses
  %.sroa.027.045 = phi ptr [ %.sroa.027.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.7.046, %.sroa.11.047
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %.sroa.024.048, ptr %.sroa.7.046, align 8, !tbaa !311
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.p = ptrtoint ptr %.sroa.11.047 to i64
  %i.q = ptrtoint ptr %.sroa.027.045 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #22 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %.sroa.024.048, ptr %i.aa, align 8, !tbaa !311
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.e, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %.sroa.027.045, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.027.045, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.045, i64 noundef %i.r) #23
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.027.1 = phi ptr [ %i.z, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.027.045, %bb.b ] ; 6 uses
  %.pn = phi ptr [ %i.aa, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.7.046, %bb.b ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.ac, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.11.047, %bb.b ] ; 2 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.024.048, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i14 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i14, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !280
  %i.ai = and i32 %i.ah, 4
  %.not45.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ak, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.ae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !280
  %i.an = and i32 %i.am, 4
  %.not4.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !282

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ae, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit ], [ %i.ae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ak, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.a
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit, %.preheader
  %.012.lcssa = phi i1 [ false, %.preheader ], [ %.1, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.027.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ao = ptrtoint ptr %.sroa.027.1 to i64
  %i.ap = sub i64 %i.m, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.1, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, %._crit_edge, %bb.g
  %.012.lcssa77 = phi i1 [ %.012.lcssa, %bb.g ], [ %.012.lcssa, %._crit_edge ], [ false, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ]
  ret i1 %.012.lcssa77

bb.h:                                             ; preds = %.lr.ph54, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit
  %.01253 = phi i1 [ false, %.lr.ph54 ], [ %.1, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit ] ; 2 uses
  %.sroa.019.052 = phi ptr [ %.sroa.027.1, %.lr.ph54 ], [ %i.gv, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.019.052, align 8, !tbaa !311 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !195 ; 3 uses
  switch i32 %i.as, label %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit [
    i32 20, label %bb.i
    i32 19, label %bb.i
    i32 1140, label %bb.i
    i32 1141, label %bb.i
    i32 1050, label %bb.i
    i32 337, label %bb.i
    i32 975, label %bb.i
    i32 2920, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !271 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !265 ; 10 uses
  %i.ax = load i32, ptr %i.au, align 8
  switch i32 %i.as, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit [
    i32 20, label %bb.j
    i32 1050, label %bb.j
    i32 337, label %bb.j
    i32 19, label %bb.s
    i32 975, label %bb.v
    i32 2920, label %bb.v
    i32 1140, label %bb.w
    i32 1141, label %bb.w
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !265 ; 5 uses
  %i.bb = load i32, ptr %i.ay, align 8
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = and i32 %i.bc, 4095                     ; 2 uses
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162 ; 3 uses
  %i.bf = icmp slt i32 %i.aw, 0
  %i.bg = icmp slt i32 %i.ba, 0
  %or.cond.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.bh, align 8
  %i.bi = and i32 %i.aw, 2147483647
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val12.i.i, i64 %i.bj
  %.0.copyload.i.i.i.i.i.i.i.i.i15 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i15, -5
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = and i32 %i.ax, 1048320
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val11.i.i = load ptr, ptr %i.be, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(344) %i.bq) #20, !inline_history !901 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !810 ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i16 %i.bw, 26
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i.i.i = icmp eq i16 %i.bw, 15
  br i1 %switch.selectcmp1.i.i.i, label %bb.m, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i

_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i: ; preds = %bb.l, %bb.k
  %.2.i.i.i = phi ptr [ %switch.select.i.i.i, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %.not.i.i16 = icmp eq ptr %.2.i.i.i, null
  br i1 %.not.i.i16, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i, %bb.l
  %.2.i3.i.i = phi ptr [ %.2.i.i.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), %bb.l ] ; 2 uses
  %.val10.i.i = load ptr, ptr %i.bh, align 8
  %i.bx = and i32 %i.ba, 2147483647
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i, i64 %i.by
  %.0.copyload.i.i.i.i.i.i.i14.i.i = load i64, ptr %i.bz, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i.i14.i.i, -5
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  %i.cc = icmp eq i32 %i.bd, 0
  br i1 %i.cc, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i

_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i: ; preds = %bb.m
  %.val.i.i = load ptr, ptr %i.be, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 200
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(344) %i.ce) #20, !inline_history !901 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !810 ; 2 uses
  %switch.selectcmp.i15.i.i = icmp eq i16 %i.ck, 26
  %switch.select.i16.i.i = select i1 %switch.selectcmp.i15.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i17.i.i = icmp eq i16 %i.ck, 15
  %switch.select2.i18.i.i = select i1 %switch.selectcmp1.i17.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr %switch.select.i16.i.i
  %i.cl = icmp eq ptr %.2.i3.i.i, %switch.select2.i18.i.i
  br i1 %i.cl, label %bb.n, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i: ; preds = %bb.m
  %i.cm = icmp eq ptr %.2.i3.i.i, %i.cb
  br i1 %i.cm, label %.thread.i, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.co = getelementptr i8, ptr %i.cn, i64 48
  %.val52.i = load ptr, ptr %i.co, align 8
  %i.cp = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceRegWithSubEN4llvm8RegisterES2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 %i.ba, i32 noundef %i.bd, ptr %.val52.i)
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

.thread.i:                                        ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.cr = getelementptr i8, ptr %i.cq, i64 48
  %.val.i = load ptr, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.bj
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !264 ; 4 uses
  %.not.i.i.i.i17 = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i17, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit, label %bb.o

bb.o:                                             ; preds = %.thread.i
  %i.cu = load i32, ptr %.0.i.i.i.i, align 8
  %i.cv = and i32 %i.cu, 16777216
  %.not4.i.i.i.i18 = icmp eq i32 %i.cv, 0
  br i1 %.not4.i.i.i.i18, label %.lr.ph.i.preheader.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i, %bb.o ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit, label %bb.p

bb.p:                                             ; preds = %.preheader.i.i.i.i
  %i.cw = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.cx = and i32 %i.cw, 16777216
  %.not1.i.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.preheader, label %.preheader.i.i.i.i, !llvm.loop !266

.lr.ph.i.preheader.i.i.preheader:                 ; preds = %bb.p, %bb.o
  %storemerge.in.sroa.speculated.in12.i.i.ph = phi ptr [ %.0.i.i.i.i, %bb.o ], [ %storemerge.i.i.i.i.i, %bb.p ]
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i.preheader.i.i.preheader, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i
  %storemerge.in.sroa.speculated.in12.i.i = phi ptr [ %storemerge.i.i.i7.i.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i ], [ %storemerge.in.sroa.speculated.in12.i.i.ph, %.lr.ph.i.preheader.i.i.preheader ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.preheader.i.i
  %.pn.i.i.i5.i.i = phi ptr [ %storemerge.in.sroa.speculated.in12.i.i, %.lr.ph.i.preheader.i.i ], [ %storemerge.i.i.i7.i.i, %bb.r ]
  %storemerge.in.i.i.i6.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i5.i.i, i64 24
  %storemerge.i.i.i7.i.i = load ptr, ptr %storemerge.in.i.i.i6.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i8.i.i = icmp eq ptr %storemerge.i.i.i7.i.i, null
  br i1 %.not.i.i.i8.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i, label %bb.r

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i: ; preds = %bb.q
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.in.sroa.speculated.in12.i.i, i32 %i.ba) #20
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.r:                                             ; preds = %bb.q
  %i.cy = load i32, ptr %storemerge.i.i.i7.i.i, align 8
  %i.cz = and i32 %i.cy, 16777216
  %.not1.i.i.i9.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not1.i.i.i9.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i, label %bb.q, !llvm.loop !266

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i: ; preds = %bb.r
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.in.sroa.speculated.in12.i.i, i32 %i.ba) #20
  br label %.lr.ph.i.preheader.i.i, !llvm.loop !424

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.090)
  store i32 0, ptr %.sroa.090, align 8, !tbaa !254
  store i32 0, ptr %.4..4..4..4..4..sroa_idx88, align 4, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 8, !tbaa !254
  store i32 0, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !828
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162 ; 2 uses
  %.val54.i = load ptr, ptr %i.da, align 8, !tbaa !902
  %i.db = getelementptr i8, ptr %i.da, i64 48
  %.val55.i = load ptr, ptr %i.db, align 8, !tbaa !21
  %i.dc = getelementptr i8, ptr %.val54.i, i64 16
  %.val54.val.i = load ptr, ptr %i.dc, align 8, !tbaa !163 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !265
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !265
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = and i32 %i.aw, 2147483647
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.val55.i, i64 %i.dk
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dl, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = load ptr, ptr %.val54.val.i, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 200
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = tail call noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(344) %.val54.val.i) #20, !inline_history !967 ; 2 uses
  %i.ds = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.dr, ptr noundef nonnull align 8 dereferenceable(62) %i.dn, i32 noundef 0) #20 ; 2 uses
  %i.dt = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.dr, ptr noundef nonnull align 8 dereferenceable(62) %i.dn, i32 noundef 1) #20 ; 2 uses
  %i.du = icmp eq i32 %i.ds, %i.df
  %i.dv = icmp eq i32 %i.dt, %i.di
  %or.cond.i57.i = and i1 %i.du, %i.dv
  br i1 %or.cond.i57.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = icmp eq i32 %i.dt, %i.df
  %i.dx = icmp eq i32 %i.ds, %i.di
  %or.cond25.i.i = and i1 %i.dx, %i.dw
  br i1 %or.cond25.i.i, label %bb.u, label %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink15.i.i = phi ptr [ %.sroa.090, %bb.s ], [ %.sroa.0, %bb.t ]
  %.sink.i.i = phi ptr [ %.sroa.0, %bb.s ], [ %.sroa.090, %bb.t ]
  %i.dy = load ptr, ptr %i.at, align 8, !tbaa !271 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !265
  %i.ec = load i32, ptr %i.dz, align 8
  %i.ed = lshr i32 %i.ec, 8
  %i.ee = and i32 %i.ed, 4095
  %.sroa.42.0.insert.ext.i.i = zext nneg i32 %i.ee to i64
  %.sroa.42.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.42.0.insert.ext.i.i, 32
  %.sroa.01.0.insert.ext.i.i = zext i32 %i.eb to i64
  %.sroa.01.0.insert.insert.i.i = or disjoint i64 %.sroa.42.0.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  store i64 %.sroa.01.0.insert.insert.i.i, ptr %.sink15.i.i, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 100
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !265
  %i.ei = load i32, ptr %i.ef, align 8
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = and i32 %i.ej, 4095
  %.sroa.4.0.insert.ext.i.i = zext nneg i32 %i.ek to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %.sink.i.i, align 8
  %i.el = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.dk
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.es = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.er, ptr noundef nonnull align 8 dereferenceable(62) %i.eq, i32 noundef 0) #20
  %i.et = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.eu = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.et, ptr noundef nonnull align 8 dereferenceable(62) %i.eq, i32 noundef 1) #20
  %.0..0..0..0..0..sroa.013.0.copyload.i = load i32, ptr %.sroa.090, align 8, !tbaa !254
  %.4..4..4..4..4.68.i = load i32, ptr %.4..4..4..4..4..sroa_idx89, align 4, !tbaa !828
  %i.ev = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.ew = getelementptr i8, ptr %i.ev, i64 48
  %.val50.i = load ptr, ptr %i.ew, align 8
  %i.ex = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.es, i32 %.0..0..0..0..0..sroa.013.0.copyload.i, i32 noundef %.4..4..4..4..4.68.i, ptr %.val50.i)
  %.0..0..0..0..0..sroa.011.0.copyload.i = load i32, ptr %.sroa.0, align 8, !tbaa !254
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx87, align 4, !tbaa !828
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %.val48.i = load ptr, ptr %i.ez, align 8
  %i.fa = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.eu, i32 %.0..0..0..0..0..sroa.011.0.copyload.i, i32 noundef %.4..4..4..4..4..i, ptr %.val48.i)
  %i.fb = or i1 %i.ex, %i.fa
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i

_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i: ; preds = %bb.u, %bb.t
  %.2.i = phi i1 [ %i.fb, %bb.u ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.090)
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.v:                                             ; preds = %bb.i, %bb.i
  %i.fc = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = and i32 %i.aw, 2147483647
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ff
  %.0.copyload.i.i.i.i.i.i59.i = load i64, ptr %i.fh, align 8
  %i.fi = and i64 %.0.copyload.i.i.i.i.i.i59.i, -5
  %i.fj = inttoptr i64 %i.fi to ptr               ; 2 uses
  %i.fk = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.fl = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.fk, ptr noundef nonnull align 8 dereferenceable(62) %i.fj, i32 noundef 0) #20
  %i.fm = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.fn = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.fm, ptr noundef nonnull align 8 dereferenceable(62) %i.fj, i32 noundef 1) #20
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !271 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !265
  %i.fs = load i32, ptr %i.fp, align 8
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = and i32 %i.ft, 4095
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 68
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !265
  %i.fy = load i32, ptr %i.fv, align 8
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = and i32 %i.fz, 4095
  %i.gb = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.gc = getelementptr i8, ptr %i.gb, i64 48
  %.val46.i = load ptr, ptr %i.gc, align 8
  %i.gd = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.fl, i32 %i.fx, i32 noundef %i.ga, ptr %.val46.i)
  %i.ge = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.gf = getelementptr i8, ptr %i.ge, i64 48
  %.val44.i = load ptr, ptr %i.gf, align 8
  %i.gg = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.fn, i32 %i.fr, i32 noundef %i.fu, ptr %.val44.i)
  %i.gh = or i1 %i.gd, %i.gg
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.w:                                             ; preds = %bb.i, %bb.i
  %i.gi = icmp eq i32 %i.as, 1140
  %i.gj = select i1 %i.gi, i32 2, i32 1           ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !265
  %i.go = load i32, ptr %i.gl, align 8
  %i.gp = lshr i32 %i.go, 8
  %i.gq = and i32 %i.gp, 4095
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.gs = getelementptr i8, ptr %i.gr, i64 48
  %.val42.i = load ptr, ptr %i.gs, align 8
  %i.gt = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.gj, i32 %i.gn, i32 noundef %i.gq, ptr %.val42.i)
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit: ; preds = %.preheader.i.i.i.i, %bb.i, %bb.j, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i, %bb.n, %.thread.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i, %bb.v, %bb.w
  %.3.i = phi i1 [ false, %bb.i ], [ %i.gt, %bb.w ], [ %.2.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i ], [ %i.gh, %bb.v ], [ false, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i ], [ %i.cp, %bb.n ], [ false, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i ], [ false, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i ], [ true, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i ], [ false, %.thread.i ], [ false, %bb.j ], [ false, %.preheader.i.i.i.i ]
  %i.gu = or i1 %.01253, %.3.i
  br label %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit

_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit: ; preds = %bb.h, %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit
  %.1 = phi i1 [ %i.gu, %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit ], [ %.01253, %bb.h ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 8
  %.not37 = icmp eq ptr %.sroa.019.052, %.pn
  br i1 %.not37, label %._crit_edge, label %bb.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceRegWithSubEN4llvm8RegisterES2_jRNS1_19MachineRegisterInfoE(i32 %0, i32 %1, i32 noundef range(i32 1, 0) %2, ptr nofree readonly captures(none) %.48.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  %i.b = icmp slt i32 %1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 120), align 8, !tbaa !969, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = and i32 %0, 2147483647
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.48.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !264 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.0.i.i.i.i, align 8       ; 2 uses
  %i.j = and i32 %i.i, 16777216
  %.not4.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i, %bb.d ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.k = load i32, ptr %storemerge.i.i.i.i.i, align 8 ; 2 uses
  %i.l = and i32 %i.k, 16777216
  %.not1.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i, label %.preheader.i.i.i.i, !llvm.loop !266

_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i: ; preds = %bb.e, %bb.d
  %.val1.i.i.i.i.i.i.i11.i = phi i32 [ %i.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.d ], [ %storemerge.i.i.i.i.i, %bb.e ]
  %i.m = lshr i32 %.val1.i.i.i.i.i.i.i11.i, 8
  %i.n = and i32 %i.m, 4095
  %.not.i.i.i.i.i.i.i.i12.i = icmp ne i32 %i.n, %2
  %i.o = and i32 %.val1.i.i.i.i.i.i.i11.i, 15728640
  %i.p = icmp ne i32 %i.o, 0
  %i.q = and i1 %i.p, %.not.i.i.i.i.i.i.i.i12.i
  br i1 %i.q, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i, %.preheader.i.i.i.i.i.i.i.backedge
  %.pn.i.i.i.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.backedge ], [ %.sroa.0.0.i.i.i, %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i ]
  %storemerge.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i.i.i.i, align 8, !tbaa !265 ; 3 uses
  %.not.i.i2.i.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.r = load i32, ptr %storemerge.i.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.s = and i32 %i.r, 16777216
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.backedge:                ; preds = %bb.f, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i.i, !llvm.loop !830

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = lshr i32 %i.r, 8
  %i.u = and i32 %i.t, 4095
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.u, %2
  %i.v = and i32 %i.r, 15728640
  %i.w = icmp ne i32 %i.v, 0
  %i.x = and i1 %i.w, %.not.i.i.i.i.i.i.i.i.i
  br i1 %i.x, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %.preheader.i.i.i.i.i.i.i.backedge

.loopexit:                                        ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.48.val, i64 %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.i.i = load ptr, ptr %i.z, align 8, !tbaa !264 ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.aa = load i32, ptr %.0.i.i, align 8
  %i.ab = and i32 %i.aa, 16777216
  %.not4.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i, label %.lr.ph.i.preheader.lr.ph, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.h
  %.pn.i.i.i = phi ptr [ %storemerge.i.i.i, %bb.h ], [ %.0.i.i, %bb.g ]
  %storemerge.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %storemerge.i.i.i = load ptr, ptr %storemerge.in.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i
  %i.ac = load i32, ptr %storemerge.i.i.i, align 8
  %i.ad = and i32 %i.ac, 16777216
  %.not1.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not1.i.i.i, label %.lr.ph.i.preheader.lr.ph, label %.preheader.i.i, !llvm.loop !266

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %storemerge.i.i.i, %bb.h ]
  %i.ae = shl i32 %2, 8
  %i.af = and i32 %i.ae, 1048320
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i
  %storemerge.in.sroa.speculated.in19 = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.preheader.lr.ph ], [ %storemerge.i.i.i10, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.preheader
  %.pn.i.i.i8 = phi ptr [ %storemerge.in.sroa.speculated.in19, %.lr.ph.i.preheader ], [ %storemerge.i.i.i10, %bb.j ]
  %storemerge.in.i.i.i9 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i8, i64 24
  %storemerge.i.i.i10 = load ptr, ptr %storemerge.in.i.i.i9, align 8, !tbaa !265 ; 5 uses
  %.not.i.i.i11 = icmp eq ptr %storemerge.i.i.i10, null
  br i1 %.not.i.i.i11, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %storemerge.i.i.i10, align 8
  %i.ah = and i32 %i.ag, 16777216
  %.not1.i.i.i12 = icmp eq i32 %i.ah, 0
  br i1 %.not1.i.i.i12, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i, label %bb.i, !llvm.loop !266

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i: ; preds = %bb.j, %bb.i
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.in.sroa.speculated.in19, i32 %1) #20
  %i.ai = load i32, ptr %storemerge.in.sroa.speculated.in19, align 8
  %i.aj = and i32 %i.ai, -1048321
  %i.ak = or disjoint i32 %i.aj, %i.af
  store i32 %i.ak, ptr %storemerge.in.sroa.speculated.in19, align 8
end_hunk_0
