Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaType?download=true
inline.NumInlined: 11475
inline.NumDeleted: 4955
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZL24GetFullTypeForDeclaratorRN12_GLOBAL__N_119TypeProcessingStateEN5clang8QualTypeEPNS2_14TypeSourceInfoE:bb.a
bb.tt:                                            ; preds = %_ZNK5clang7TypeLoc5getAsINS_13AtomicTypeLocEEET_v.exit.thread.i
  %i.dfg = load ptr, ptr %i.ddm, align 8, !tbaa !1433, !noalias !1880 ; 2 uses
  %i.dfh = load ptr, ptr %i.ddn, align 8, !tbaa !1434, !noalias !1880 ; 2 uses
  %i.dfi = load i32, ptr %i.ddo, align 4, !tbaa !1435, !noalias !1880 ; 3 uses
  %i.dfj = icmp eq i32 %i.dfi, 0
  br i1 %i.dfj, label %.loopexit.i.i.i.i, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.dfk = add i32 %i.dfi, -1                     ; 2 uses
  %i.dfl = ptrtoint ptr %.sroa.0236.3265.i to i64
  %i.dfm = mul i64 %i.dfl, -4658895280553007687   ; 2 uses
  %i.dfn = lshr i64 %i.dfm, 31
  %i.dfo = xor i64 %i.dfn, %i.dfm
  %i.dfp = trunc i64 %i.dfo to i32
  %i.dfq = and i32 %i.dfk, %i.dfp                 ; 3 uses
  %i.dfr = zext i32 %i.dfq to i64                 ; 2 uses
  %i.dfs = lshr i64 %i.dfr, 5
  %i.dft = getelementptr inbounds nuw [4 x i8], ptr %i.dfh, i64 %i.dfs
  %i.dfu = load i32, ptr %i.dft, align 4, !tbaa !744, !noalias !1881
  %i.dfv = and i32 %i.dfq, 31
  %i.dfw = lshr i32 %i.dfu, %i.dfv
  %i.dfx = trunc i32 %i.dfw to i1
  br i1 %i.dfx, label %.lr.ph.i.i.i.i.i1651, label %.loopexit.i.i.i.i, !prof !1436

.lr.ph.i.i.i.i.i1651:                             ; preds = %bb.tu, %bb.tv
  %i.dfy = phi i64 [ %i.dge, %bb.tv ], [ %i.dfr, %bb.tu ] ; 2 uses
  %.017.i.i.i.i.i = phi i32 [ %i.dgd, %bb.tv ], [ %i.dfq, %bb.tu ]
  %i.dfz = getelementptr inbounds nuw [16 x i8], ptr %i.dfg, i64 %i.dfy
  %i.dga = load ptr, ptr %i.dfz, align 8, !tbaa !1438, !noalias !1881
  %i.dgb = icmp eq ptr %.sroa.0236.3265.i, %i.dga
  br i1 %i.dgb, label %_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i, label %bb.tv, !prof !1205

bb.tv:                                            ; preds = %.lr.ph.i.i.i.i.i1651
  %i.dgc = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dgd = and i32 %i.dgc, %i.dfk                 ; 3 uses
  %i.dge = zext i32 %i.dgd to i64                 ; 2 uses
  %i.dgf = lshr i64 %i.dge, 5
  %i.dgg = getelementptr inbounds nuw [4 x i8], ptr %i.dfh, i64 %i.dgf
  %i.dgh = load i32, ptr %i.dgg, align 4, !tbaa !744, !noalias !1881
  %i.dgi = and i32 %i.dgd, 31
  %i.dgj = lshr i32 %i.dgh, %i.dgi
  %i.dgk = trunc i32 %i.dgj to i1
  br i1 %i.dgk, label %.lr.ph.i.i.i.i.i1651, label %.loopexit.i.i.i.i, !prof !1439

.loopexit.i.i.i.i:                                ; preds = %bb.tv, %bb.tu, %bb.tt
  %i.dgl = zext i32 %i.dfi to i64
  br label %_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i

_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i1651, %.loopexit.i.i.i.i
  %i.dgm = phi i64 [ %i.dgl, %.loopexit.i.i.i.i ], [ %i.dfy, %.lr.ph.i.i.i.i.i1651 ]
  %i.dgn = getelementptr inbounds nuw [16 x i8], ptr %i.dfg, i64 %i.dgm
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.dgn, i64 8
  %.sroa.0.0.copyload.i95.i = load i32, ptr %i.dgo, align 8, !tbaa !744
  store i32 %.sroa.0.0.copyload.i95.i, ptr %.sroa.22.3267.i, align 4, !tbaa !744
  %i.dgp = getelementptr inbounds nuw i8, ptr %.sroa.0236.3265.i, i64 24
  %.sroa.0.0.copyload.i.i.i96.i = load i64, ptr %i.dgp, align 8, !tbaa !57 ; 4 uses
  %i.dgq = ptrtoint ptr %.sroa.22.3267.i to i64
  %i.dgr = add i64 %i.dgq, 4                      ; 2 uses
  %i.dgs = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i96.i) #23
  %i.dgt = icmp ne i64 %i.dgr, 0
  %i.dgu = zext i1 %i.dgt to i64                  ; 2 uses
  %i.dgv = sub i64 %i.dgr, %i.dgu
  %i.dgw = zext i32 %i.dgs to i64                 ; 2 uses
  %i.dgx = udiv i64 %i.dgv, %i.dgw
  %i.dgy = add i64 %i.dgx, %i.dgu
  %i.dgz = mul i64 %i.dgy, %i.dgw                 ; 3 uses
  %i.dha = inttoptr i64 %.sroa.0.0.copyload.i.i.i96.i to ptr
  %i.dhb = and i64 %.sroa.0.0.copyload.i.i.i96.i, 15
  %.not.i.i99.i = icmp eq i64 %i.dhb, 0
  br i1 %.not.i.i99.i, label %_ZNK5clang7TypeLoc17getUnqualifiedLocEv.exit107.i, label %bb.tw

bb.tw:                                            ; preds = %_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i
  %i.dhc = and i64 %.sroa.0.0.copyload.i.i.i96.i, -16
  %i.dhd = inttoptr i64 %i.dhc to ptr             ; 2 uses
  %i.dhe = load ptr, ptr %i.dhd, align 16, !tbaa !56
  %i.dhf = ptrtoint ptr %i.dhe to i64
  %i.dhg = and i64 %i.dhf, -8
  %i.dhh = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.dhg) #23
  %i.dhi = icmp ne i64 %i.dgz, 0
  %i.dhj = zext i1 %i.dhi to i64                  ; 2 uses
  %i.dhk = sub i64 %i.dgz, %i.dhj
  %i.dhl = zext i32 %i.dhh to i64                 ; 2 uses
  %i.dhm = udiv i64 %i.dhk, %i.dhl
  %i.dhn = add i64 %i.dhm, %i.dhj
  %i.dho = mul i64 %i.dhn, %i.dhl
  %.sroa.0.1.pre.i102.i = load ptr, ptr %i.dhd, align 16, !tbaa !1249
  br label %_ZNK5clang7TypeLoc17getUnqualifiedLocEv.exit107.i

_ZNK5clang7TypeLoc17getUnqualifiedLocEv.exit107.i: ; preds = %bb.tw, %_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i
  %.sroa.0.1.i103.i = phi ptr [ %.sroa.0.1.pre.i102.i, %bb.tw ], [ %i.dha, %_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i ]
  %.sroa.3.1.i104.in.i = phi i64 [ %i.dho, %bb.tw ], [ %i.dgz, %_ZNK12_GLOBAL__N_119TypeProcessingState36getExpansionLocForMacroQualifiedTypeEPKN5clang18MacroQualifiedTypeE.exit.i ]
  %.sroa.3.1.i104.i = inttoptr i64 %.sroa.3.1.i104.in.i to ptr
  br label %_ZNK5clang7TypeLoc5getAsINS_13AtomicTypeLocEEET_v.exit.thread.i.backedge

bb.tx:                                            ; preds = %_ZNK5clang7TypeLoc5getAsINS_13AtomicTypeLocEEET_v.exit.thread.i
  %i.dhp = load i8, ptr %i.ddj, align 8, !tbaa !1305, !range !749, !noundef !742
  %i.dhq = trunc nuw i8 %i.dhp to i1
  %.val.i.i.pre293.i = load ptr, ptr %i.ddk, align 8, !tbaa !1177 ; 20 uses
  %.val14.i.i.pre295.i = load i32, ptr %i.ddl, align 8, !tbaa !1178 ; 6 uses
  br i1 %i.dhq, label %bb.xh, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.dhr = zext i32 %.val14.i.i.pre295.i to i64   ; 2 uses
  %.idx.i1647 = shl nuw nsw i64 %i.dhr, 4         ; 3 uses
  %i.dhs = getelementptr inbounds nuw i8, ptr %.val.i.i.pre293.i, i64 %.idx.i1647 ; 12 uses
  %i.dht = icmp eq i32 %.val14.i.i.pre295.i, 0
  br i1 %i.dht, label %_ZSt13__stable_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.i, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.dhu = add nuw nsw i64 %i.dhr, 1
  %i.dhv = lshr i64 %i.dhu, 1                     ; 16 uses
  br label %.lr.ph.i.i.i.i1648

.lr.ph.i.i.i.i1648:                               ; preds = %select.unfold.i.i.i.i, %bb.tz
  %.010.i.i.i.i = phi i64 [ %i.dia, %select.unfold.i.i.i.i ], [ %i.dhv, %bb.tz ] ; 7 uses
  %i.dhw = shl nuw nsw i64 %.010.i.i.i.i, 4       ; 3 uses
  %i.dhx = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.dhw, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #27 ; 30 uses
  %.not.i.i.i172.i = icmp eq ptr %i.dhx, null
  br i1 %.not.i.i.i172.i, label %select.unfold.i.i.i.i, label %bb.ua

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i1648
  %i.dhy = icmp eq i64 %.010.i.i.i.i, 1
  %i.dhz = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.dia = lshr i64 %i.dhz, 1
  br i1 %i.dhy, label %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.thread.i, label %.lr.ph.i.i.i.i1648, !llvm.loop !13

bb.ua:                                            ; preds = %.lr.ph.i.i.i.i1648
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dhx, i64 %i.dhw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dhx, ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.pre293.i, i64 16, i1 false)
  %.not19.i.i.i.i.i = icmp eq i64 %.010.i.i.i.i, 1
  br i1 %.not19.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ua
  %.01518.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dhx, i64 16 ; 2 uses
  %i.dic = add nsw i64 %i.dhw, -32                ; 2 uses
  %i.did = lshr exact i64 %i.dic, 4
  %i.die = add nuw nsw i64 %i.did, 1
  %xtraiter3557 = and i64 %i.die, 3               ; 2 uses
  %lcmp.mod3558.not = icmp eq i64 %xtraiter3557, 0
  br i1 %lcmp.mod3558.not, label %.lr.ph.i.i.i.i173.i.prol.loopexit, label %.lr.ph.i.i.i.i173.i.prol

.lr.ph.i.i.i.i173.i.prol:                         ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i173.i.prol
  %.01521.i.i.i.i.i.prol = phi ptr [ %.015.i.i.i.i.i.prol, %.lr.ph.i.i.i.i173.i.prol ], [ %.01518.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.020.i.i.i.i.i.prol = phi ptr [ %i.dif, %.lr.ph.i.i.i.i173.i.prol ], [ %i.dhx, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i173.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01521.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.020.i.i.i.i.i.prol, i64 16, i1 false)
  %i.dif = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i.prol, i64 16 ; 3 uses
  %.015.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3557
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i173.i.prol.loopexit, label %.lr.ph.i.i.i.i173.i.prol, !llvm.loop !1806

.lr.ph.i.i.i.i173.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i173.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa3418.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.dif, %.lr.ph.i.i.i.i173.i.prol ]
  %.01521.i.i.i.i.i.unr = phi ptr [ %.01518.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.015.i.i.i.i.i.prol, %.lr.ph.i.i.i.i173.i.prol ]
  %.020.i.i.i.i.i.unr = phi ptr [ %i.dhx, %.lr.ph.i.i.preheader.i.i.i ], [ %i.dif, %.lr.ph.i.i.i.i173.i.prol ]
  %i.dig = icmp ult i64 %i.dic, 48
  br i1 %i.dig, label %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i173.i

.lr.ph.i.i.i.i173.i:                              ; preds = %.lr.ph.i.i.i.i173.i.prol.loopexit, %.lr.ph.i.i.i.i173.i
  %.01521.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.3, %.lr.ph.i.i.i.i173.i ], [ %.01521.i.i.i.i.i.unr, %.lr.ph.i.i.i.i173.i.prol.loopexit ] ; 5 uses
  %.020.i.i.i.i.i = phi ptr [ %i.dik, %.lr.ph.i.i.i.i173.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i173.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01521.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.020.i.i.i.i.i, i64 16, i1 false)
  %i.dih = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 16
  %.015.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dih, i64 16, i1 false)
  %i.dii = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 32
  %.015.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.dii, i64 16, i1 false)
  %i.dij = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 48
  %.015.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.dij, i64 16, i1 false)
  %i.dik = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 64 ; 2 uses
  %.015.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i1649.3 = icmp eq ptr %.015.i.i.i.i.i.3, %i.dib
  br i1 %.not.i.i.i.i.i1649.3, label %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i173.i, !llvm.loop !14

_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.i: ; preds = %.lr.ph.i.i.i.i173.i.prol.loopexit, %.lr.ph.i.i.i.i173.i, %bb.ua
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dhx, %bb.ua ], [ %.lcssa3418.unr, %.lr.ph.i.i.i.i173.i.prol.loopexit ], [ %i.dik, %.lr.ph.i.i.i.i173.i ]
  %i.dil = load <2 x ptr>, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !1249
  store <2 x ptr> %i.dil, ptr %.val.i.i.pre293.i, align 8, !tbaa !1249
  %i.dim = icmp eq i64 %i.dhv, %.010.i.i.i.i
  br i1 %i.dim, label %bb.ub, label %bb.xg, !prof !1205

_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.thread.i: ; preds = %select.unfold.i.i.i.i
  %i.din = icmp eq i64 %i.dhv, 0
  br i1 %i.din, label %bb.ub, label %bb.xf, !prof !1205

bb.ub:                                            ; preds = %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.thread.i, %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.i
  %.sroa.4.0.i314.i = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.thread.i ], [ %i.dhv, %_ZNSt17_Temporary_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES8_EC2ES9_l.exit.i.i ] ; 13 uses
  %.idx2302 = shl nuw nsw i64 %i.dhv, 4           ; 4 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %.val.i.i.pre293.i, i64 %.idx2302 ; 16 uses
  %i.dip = ptrtoint ptr %i.dio to i64             ; 5 uses
  %i.diq = ptrtoint ptr %.val.i.i.pre293.i to i64 ; 2 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.dhx, i64 %.idx2302 ; 3 uses
  %.not38.i1931 = icmp ult i32 %.val14.i.i.pre295.i, 13
  br i1 %.not38.i1931, label %._crit_edge.i1948, label %.lr.ph.i.i1933

.lr.ph.i.i1933:                                   ; preds = %bb.ub, %_ZSt16__insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.loopexit.i1946
  %i.dis = phi i64 [ %i.dtl, %_ZSt16__insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.loopexit.i1946 ], [ %i.diq, %bb.ub ] ; 6 uses
  %.039.i1934 = phi ptr [ %i.dtk, %_ZSt16__insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.loopexit.i1946 ], [ %.val.i.i.pre293.i, %bb.ub ] ; 30 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 8 ; 5 uses
  %.pre21.i.i1936 = load ptr, ptr %.039.i1934, align 8, !tbaa !1442 ; 2 uses
  %.019.i.i1937.ptr = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 16 ; 7 uses
  %121 = load <2 x ptr>, ptr %.019.i.i1937.ptr, align 8
  %122 = load ptr, ptr %.019.i.i1937.ptr, align 8, !tbaa !1442 ; 2 uses
  %123 = icmp ult ptr %122, %.pre21.i.i1936
  br i1 %123, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %.lr.ph.i.i1933
  %i.diu = ptrtoint ptr %.019.i.i1937.ptr to i64
  %i.div = sub i64 %i.diu, %i.dis
  %i.diw = ashr exact i64 %i.div, 4               ; 5 uses
  %i.dix = icmp sgt i64 %i.diw, 0
  br i1 %i.dix, label %.lr.ph.i.i.i.i.i.preheader.i.i1980, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.a

.lr.ph.i.i.i.i.i.preheader.i.i1980:               ; preds = %bb.uc
  %i.diy = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 32 ; 2 uses
  %xtraiter3559 = and i64 %i.diw, 7               ; 2 uses
  %lcmp.mod3560.not = icmp eq i64 %xtraiter3559, 0
  br i1 %lcmp.mod3560.not, label %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1981.prol

.lr.ph.i.i.i.i.i.i.i1981.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i1980, %.lr.ph.i.i.i.i.i.i.i1981.prol
  %.010.i.i.i.i.i.i.i1982.prol = phi i64 [ %i.djc, %.lr.ph.i.i.i.i.i.i.i1981.prol ], [ %i.diw, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ]
  %.069.i.i.i.i.i.i.i1983.prol = phi ptr [ %i.dja, %.lr.ph.i.i.i.i.i.i.i1981.prol ], [ %i.diy, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ]
  %.078.i.i.i.i.i.i.i1984.prol = phi ptr [ %i.diz, %.lr.ph.i.i.i.i.i.i.i1981.prol ], [ %.019.i.i1937.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ]
  %prol.iter3561 = phi i64 [ %prol.iter3561.next, %.lr.ph.i.i.i.i.i.i.i1981.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ]
  %i.diz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.prol, i64 -16 ; 3 uses
  %i.dja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.prol, i64 -16 ; 3 uses
  %i.djb = load <2 x ptr>, ptr %i.diz, align 8, !tbaa !1249
  store <2 x ptr> %i.djb, ptr %i.dja, align 8, !tbaa !1249
  %i.djc = add nsw i64 %.010.i.i.i.i.i.i.i1982.prol, -1 ; 2 uses
  %prol.iter3561.next = add i64 %prol.iter3561, 1 ; 2 uses
  %prol.iter3561.cmp.not = icmp eq i64 %prol.iter3561.next, %xtraiter3559
  br i1 %prol.iter3561.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1981.prol, !llvm.loop !1807

.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1981.prol, %.lr.ph.i.i.i.i.i.preheader.i.i1980
  %.010.i.i.i.i.i.i.i1982.unr = phi i64 [ %i.diw, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ], [ %i.djc, %.lr.ph.i.i.i.i.i.i.i1981.prol ]
  %.069.i.i.i.i.i.i.i1983.unr = phi ptr [ %i.diy, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ], [ %i.dja, %.lr.ph.i.i.i.i.i.i.i1981.prol ]
  %.078.i.i.i.i.i.i.i1984.unr = phi ptr [ %.019.i.i1937.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i1980 ], [ %i.diz, %.lr.ph.i.i.i.i.i.i.i1981.prol ]
  %i.djd = icmp ult i64 %i.diw, 8
  br i1 %i.djd, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.a, label %.lr.ph.i.i.i.i.i.i.i1981

.lr.ph.i.i.i.i.i.i.i1981:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1981
  %.010.i.i.i.i.i.i.i1982 = phi i64 [ %i.dkc, %.lr.ph.i.i.i.i.i.i.i1981 ], [ %.010.i.i.i.i.i.i.i1982.unr, %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1983 = phi ptr [ %i.dka, %.lr.ph.i.i.i.i.i.i.i1981 ], [ %.069.i.i.i.i.i.i.i1983.unr, %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1984 = phi ptr [ %i.djz, %.lr.ph.i.i.i.i.i.i.i1981 ], [ %.078.i.i.i.i.i.i.i1984.unr, %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit ] ; 8 uses
  %i.dje = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -16
  %i.djf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -16
  %i.djg = load <2 x ptr>, ptr %i.dje, align 8, !tbaa !1249
  store <2 x ptr> %i.djg, ptr %i.djf, align 8, !tbaa !1249
  %i.djh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -32
  %i.dji = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -32
  %i.djj = load <2 x ptr>, ptr %i.djh, align 8, !tbaa !1249
  store <2 x ptr> %i.djj, ptr %i.dji, align 8, !tbaa !1249
  %i.djk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -48
  %i.djl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -48
  %i.djm = load <2 x ptr>, ptr %i.djk, align 8, !tbaa !1249
  store <2 x ptr> %i.djm, ptr %i.djl, align 8, !tbaa !1249
  %i.djn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -64
  %i.djo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -64
  %i.djp = load <2 x ptr>, ptr %i.djn, align 8, !tbaa !1249
  store <2 x ptr> %i.djp, ptr %i.djo, align 8, !tbaa !1249
  %i.djq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -80
  %i.djr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -80
  %i.djs = load <2 x ptr>, ptr %i.djq, align 8, !tbaa !1249
  store <2 x ptr> %i.djs, ptr %i.djr, align 8, !tbaa !1249
  %i.djt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -96
  %i.dju = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -96
  %i.djv = load <2 x ptr>, ptr %i.djt, align 8, !tbaa !1249
  store <2 x ptr> %i.djv, ptr %i.dju, align 8, !tbaa !1249
  %i.djw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -112
  %i.djx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -112
  %i.djy = load <2 x ptr>, ptr %i.djw, align 8, !tbaa !1249
  store <2 x ptr> %i.djy, ptr %i.djx, align 8, !tbaa !1249
  %i.djz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984, i64 -128 ; 2 uses
  %i.dka = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983, i64 -128 ; 2 uses
  %i.dkb = load <2 x ptr>, ptr %i.djz, align 8, !tbaa !1249
  store <2 x ptr> %i.dkb, ptr %i.dka, align 8, !tbaa !1249
  %i.dkc = add nsw i64 %.010.i.i.i.i.i.i.i1982, -8
  %i.dkd = icmp sgt i64 %.010.i.i.i.i.i.i.i1982, 8
  br i1 %i.dkd, label %.lr.ph.i.i.i.i.i.i.i1981, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.a, !llvm.loop !15

_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.a: ; preds = %.lr.ph.i.i.i.i.i.i.i1981.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1981, %bb.uc
  store <2 x ptr> %121, ptr %.039.i1934, align 8, !tbaa !1249
  br label %bb.ud

bb.ud:                                            ; preds = %.lr.ph.i.i1933, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.a
  %i.dke = phi ptr [ %122, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.a ], [ %.pre21.i.i1936, %.lr.ph.i.i1933 ]
  %.019.i.i1937.ptr.1 = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 32 ; 8 uses
  %i.dkf = load ptr, ptr %.019.i.i1937.ptr.1, align 8, !tbaa !1442 ; 6 uses
  %i.dkg = icmp ult ptr %i.dkf, %i.dke
  %.sroa.4.0..0.sroa_idx.i.i1939.1 = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 40
  %.sroa.4.0.copyload.i.i1940.1 = load ptr, ptr %.sroa.4.0..0.sroa_idx.i.i1939.1, align 8 ; 2 uses
  br i1 %i.dkg, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.dkh = load ptr, ptr %.019.i.i1937.ptr, align 8, !tbaa !1442 ; 2 uses
  %i.dki = icmp ult ptr %i.dkf, %i.dkh
  br i1 %i.dki, label %.lr.ph.i.i.i1975.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.1

.lr.ph.i.i.i1975.1:                               ; preds = %bb.ue, %.lr.ph.i.i.i1975.1
  %i.dkj = phi ptr [ %i.dkn, %.lr.ph.i.i.i1975.1 ], [ %i.dkh, %bb.ue ]
  %.013.i.i.i1976.1 = phi ptr [ %.0.i.i.i1978.1, %.lr.ph.i.i.i1975.1 ], [ %.019.i.i1937.ptr, %bb.ue ] ; 3 uses
  %.0912.i.i.i1977.1 = phi ptr [ %.013.i.i.i1976.1, %.lr.ph.i.i.i1975.1 ], [ %.019.i.i1937.ptr.1, %bb.ue ] ; 3 uses
  store ptr %i.dkj, ptr %.0912.i.i.i1977.1, align 8, !tbaa !1444
  %i.dkk = getelementptr inbounds i8, ptr %.0912.i.i.i1977.1, i64 -8
  %i.dkl = load ptr, ptr %i.dkk, align 8, !tbaa !1428
  %i.dkm = getelementptr inbounds nuw i8, ptr %.0912.i.i.i1977.1, i64 8
  store ptr %i.dkl, ptr %i.dkm, align 8, !tbaa !1445
  %.0.i.i.i1978.1 = getelementptr inbounds i8, ptr %.013.i.i.i1976.1, i64 -16 ; 2 uses
  %i.dkn = load ptr, ptr %.0.i.i.i1978.1, align 8, !tbaa !1442 ; 2 uses
  %i.dko = icmp ult ptr %i.dkf, %i.dkn
  br i1 %i.dko, label %.lr.ph.i.i.i1975.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.1, !llvm.loop !16

_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.1: ; preds = %.lr.ph.i.i.i1975.1, %bb.ue
  %.09.lcssa.i.i.i1942.1 = phi ptr [ %.019.i.i1937.ptr.1, %bb.ue ], [ %.013.i.i.i1976.1, %.lr.ph.i.i.i1975.1 ] ; 2 uses
  store ptr %i.dkf, ptr %.09.lcssa.i.i.i1942.1, align 8, !tbaa !1444
  %i.dkp = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i1942.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i1940.1, ptr %i.dkp, align 8, !tbaa !1445
  %.pre.i.i1943.1 = load ptr, ptr %.039.i1934, align 8, !tbaa !1442
  br label %bb.ug

bb.uf:                                            ; preds = %bb.ud
  %i.dkq = ptrtoint ptr %.019.i.i1937.ptr.1 to i64
  %i.dkr = sub i64 %i.dkq, %i.dis
  %i.dks = ashr exact i64 %i.dkr, 4               ; 5 uses
  %i.dkt = icmp sgt i64 %i.dks, 0
  br i1 %i.dkt, label %.lr.ph.i.i.i.i.i.preheader.i.i1980.1, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.1

.lr.ph.i.i.i.i.i.preheader.i.i1980.1:             ; preds = %bb.uf
  %i.dku = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 48 ; 2 uses
  %xtraiter3582 = and i64 %i.dks, 7               ; 2 uses
  %lcmp.mod3583.not = icmp eq i64 %xtraiter3582, 0
  br i1 %lcmp.mod3583.not, label %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1981.1.prol

.lr.ph.i.i.i.i.i.i.i1981.1.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i1980.1, %.lr.ph.i.i.i.i.i.i.i1981.1.prol
  %.010.i.i.i.i.i.i.i1982.1.prol = phi i64 [ %i.dky, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ], [ %i.dks, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ]
  %.069.i.i.i.i.i.i.i1983.1.prol = phi ptr [ %i.dkw, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ], [ %i.dku, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ]
  %.078.i.i.i.i.i.i.i1984.1.prol = phi ptr [ %i.dkv, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ], [ %.019.i.i1937.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ]
  %prol.iter3584 = phi i64 [ %prol.iter3584.next, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ]
  %i.dkv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1.prol, i64 -16 ; 3 uses
  %i.dkw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1.prol, i64 -16 ; 3 uses
  %i.dkx = load <2 x ptr>, ptr %i.dkv, align 8, !tbaa !1249
  store <2 x ptr> %i.dkx, ptr %i.dkw, align 8, !tbaa !1249
  %i.dky = add nsw i64 %.010.i.i.i.i.i.i.i1982.1.prol, -1 ; 2 uses
  %prol.iter3584.next = add i64 %prol.iter3584, 1 ; 2 uses
  %prol.iter3584.cmp.not = icmp eq i64 %prol.iter3584.next, %xtraiter3582
  br i1 %prol.iter3584.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1981.1.prol, !llvm.loop !1808

.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i1981.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1
  %.010.i.i.i.i.i.i.i1982.1.unr = phi i64 [ %i.dks, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ], [ %i.dky, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ]
  %.069.i.i.i.i.i.i.i1983.1.unr = phi ptr [ %i.dku, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ], [ %i.dkw, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ]
  %.078.i.i.i.i.i.i.i1984.1.unr = phi ptr [ %.019.i.i1937.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i1980.1 ], [ %i.dkv, %.lr.ph.i.i.i.i.i.i.i1981.1.prol ]
  %i.dkz = icmp ult i64 %i.dks, 8
  br i1 %i.dkz, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.1, label %.lr.ph.i.i.i.i.i.i.i1981.1

.lr.ph.i.i.i.i.i.i.i1981.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1981.1
  %.010.i.i.i.i.i.i.i1982.1 = phi i64 [ %i.dly, %.lr.ph.i.i.i.i.i.i.i1981.1 ], [ %.010.i.i.i.i.i.i.i1982.1.unr, %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1983.1 = phi ptr [ %i.dlw, %.lr.ph.i.i.i.i.i.i.i1981.1 ], [ %.069.i.i.i.i.i.i.i1983.1.unr, %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1984.1 = phi ptr [ %i.dlv, %.lr.ph.i.i.i.i.i.i.i1981.1 ], [ %.078.i.i.i.i.i.i.i1984.1.unr, %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit ] ; 8 uses
  %i.dla = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -16
  %i.dlb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -16
  %i.dlc = load <2 x ptr>, ptr %i.dla, align 8, !tbaa !1249
  store <2 x ptr> %i.dlc, ptr %i.dlb, align 8, !tbaa !1249
  %i.dld = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -32
  %i.dle = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -32
  %i.dlf = load <2 x ptr>, ptr %i.dld, align 8, !tbaa !1249
  store <2 x ptr> %i.dlf, ptr %i.dle, align 8, !tbaa !1249
  %i.dlg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -48
  %i.dlh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -48
  %i.dli = load <2 x ptr>, ptr %i.dlg, align 8, !tbaa !1249
  store <2 x ptr> %i.dli, ptr %i.dlh, align 8, !tbaa !1249
  %i.dlj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -64
  %i.dlk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -64
  %i.dll = load <2 x ptr>, ptr %i.dlj, align 8, !tbaa !1249
  store <2 x ptr> %i.dll, ptr %i.dlk, align 8, !tbaa !1249
  %i.dlm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -80
  %i.dln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -80
  %i.dlo = load <2 x ptr>, ptr %i.dlm, align 8, !tbaa !1249
  store <2 x ptr> %i.dlo, ptr %i.dln, align 8, !tbaa !1249
  %i.dlp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -96
  %i.dlq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -96
  %i.dlr = load <2 x ptr>, ptr %i.dlp, align 8, !tbaa !1249
  store <2 x ptr> %i.dlr, ptr %i.dlq, align 8, !tbaa !1249
  %i.dls = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -112
  %i.dlt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -112
  %i.dlu = load <2 x ptr>, ptr %i.dls, align 8, !tbaa !1249
  store <2 x ptr> %i.dlu, ptr %i.dlt, align 8, !tbaa !1249
  %i.dlv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.1, i64 -128 ; 2 uses
  %i.dlw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.1, i64 -128 ; 2 uses
  %i.dlx = load <2 x ptr>, ptr %i.dlv, align 8, !tbaa !1249
  store <2 x ptr> %i.dlx, ptr %i.dlw, align 8, !tbaa !1249
  %i.dly = add nsw i64 %.010.i.i.i.i.i.i.i1982.1, -8
  %i.dlz = icmp sgt i64 %.010.i.i.i.i.i.i.i1982.1, 8
  br i1 %i.dlz, label %.lr.ph.i.i.i.i.i.i.i1981.1, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.1, !llvm.loop !15

_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.1: ; preds = %.lr.ph.i.i.i.i.i.i.i1981.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1981.1, %bb.uf
  store ptr %i.dkf, ptr %.039.i1934, align 8, !tbaa !1444
  store ptr %.sroa.4.0.copyload.i.i1940.1, ptr %i.dit, align 8, !tbaa !1445
  br label %bb.ug

bb.ug:                                            ; preds = %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.1, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.1
  %i.dma = phi ptr [ %i.dkf, %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.1 ], [ %.pre.i.i1943.1, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.1 ]
  %.019.i.i1937.ptr.2 = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 48 ; 8 uses
  %i.dmb = load ptr, ptr %.019.i.i1937.ptr.2, align 8, !tbaa !1442 ; 6 uses
  %i.dmc = icmp ult ptr %i.dmb, %i.dma
  %.sroa.4.0..0.sroa_idx.i.i1939.2 = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 56
  %.sroa.4.0.copyload.i.i1940.2 = load ptr, ptr %.sroa.4.0..0.sroa_idx.i.i1939.2, align 8 ; 2 uses
  br i1 %i.dmc, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.dmd = load ptr, ptr %.019.i.i1937.ptr.1, align 8, !tbaa !1442 ; 2 uses
  %i.dme = icmp ult ptr %i.dmb, %i.dmd
  br i1 %i.dme, label %.lr.ph.i.i.i1975.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.2

.lr.ph.i.i.i1975.2:                               ; preds = %bb.uh, %.lr.ph.i.i.i1975.2
  %i.dmf = phi ptr [ %i.dmj, %.lr.ph.i.i.i1975.2 ], [ %i.dmd, %bb.uh ]
  %.013.i.i.i1976.2 = phi ptr [ %.0.i.i.i1978.2, %.lr.ph.i.i.i1975.2 ], [ %.019.i.i1937.ptr.1, %bb.uh ] ; 3 uses
  %.0912.i.i.i1977.2 = phi ptr [ %.013.i.i.i1976.2, %.lr.ph.i.i.i1975.2 ], [ %.019.i.i1937.ptr.2, %bb.uh ] ; 3 uses
  store ptr %i.dmf, ptr %.0912.i.i.i1977.2, align 8, !tbaa !1444
  %i.dmg = getelementptr inbounds i8, ptr %.0912.i.i.i1977.2, i64 -8
  %i.dmh = load ptr, ptr %i.dmg, align 8, !tbaa !1428
  %i.dmi = getelementptr inbounds nuw i8, ptr %.0912.i.i.i1977.2, i64 8
  store ptr %i.dmh, ptr %i.dmi, align 8, !tbaa !1445
  %.0.i.i.i1978.2 = getelementptr inbounds i8, ptr %.013.i.i.i1976.2, i64 -16 ; 2 uses
  %i.dmj = load ptr, ptr %.0.i.i.i1978.2, align 8, !tbaa !1442 ; 2 uses
  %i.dmk = icmp ult ptr %i.dmb, %i.dmj
  br i1 %i.dmk, label %.lr.ph.i.i.i1975.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.2, !llvm.loop !16

_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i1941.2: ; preds = %.lr.ph.i.i.i1975.2, %bb.uh
  %.09.lcssa.i.i.i1942.2 = phi ptr [ %.019.i.i1937.ptr.2, %bb.uh ], [ %.013.i.i.i1976.2, %.lr.ph.i.i.i1975.2 ] ; 2 uses
  store ptr %i.dmb, ptr %.09.lcssa.i.i.i1942.2, align 8, !tbaa !1444
  %i.dml = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i1942.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i1940.2, ptr %i.dml, align 8, !tbaa !1445
  %.pre.i.i1943.2 = load ptr, ptr %.039.i1934, align 8, !tbaa !1442
  br label %bb.uj

bb.ui:                                            ; preds = %bb.ug
  %i.dmm = ptrtoint ptr %.019.i.i1937.ptr.2 to i64
  %i.dmn = sub i64 %i.dmm, %i.dis
  %i.dmo = ashr exact i64 %i.dmn, 4               ; 5 uses
  %i.dmp = icmp sgt i64 %i.dmo, 0
  br i1 %i.dmp, label %.lr.ph.i.i.i.i.i.preheader.i.i1980.2, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.2

.lr.ph.i.i.i.i.i.preheader.i.i1980.2:             ; preds = %bb.ui
  %i.dmq = getelementptr inbounds nuw i8, ptr %.039.i1934, i64 64 ; 2 uses
  %xtraiter3585 = and i64 %i.dmo, 7               ; 2 uses
  %lcmp.mod3586.not = icmp eq i64 %xtraiter3585, 0
  br i1 %lcmp.mod3586.not, label %.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1981.2.prol

.lr.ph.i.i.i.i.i.i.i1981.2.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i1980.2, %.lr.ph.i.i.i.i.i.i.i1981.2.prol
  %.010.i.i.i.i.i.i.i1982.2.prol = phi i64 [ %i.dmu, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ], [ %i.dmo, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ]
  %.069.i.i.i.i.i.i.i1983.2.prol = phi ptr [ %i.dms, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ], [ %i.dmq, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ]
  %.078.i.i.i.i.i.i.i1984.2.prol = phi ptr [ %i.dmr, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ], [ %.019.i.i1937.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ]
  %prol.iter3587 = phi i64 [ %prol.iter3587.next, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ]
  %i.dmr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.2.prol, i64 -16 ; 3 uses
  %i.dms = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.2.prol, i64 -16 ; 3 uses
  %i.dmt = load <2 x ptr>, ptr %i.dmr, align 8, !tbaa !1249
  store <2 x ptr> %i.dmt, ptr %i.dms, align 8, !tbaa !1249
  %i.dmu = add nsw i64 %.010.i.i.i.i.i.i.i1982.2.prol, -1 ; 2 uses
  %prol.iter3587.next = add i64 %prol.iter3587, 1 ; 2 uses
  %prol.iter3587.cmp.not = icmp eq i64 %prol.iter3587.next, %xtraiter3585
  br i1 %prol.iter3587.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1981.2.prol, !llvm.loop !1809

.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i1981.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2
  %.010.i.i.i.i.i.i.i1982.2.unr = phi i64 [ %i.dmo, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ], [ %i.dmu, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ]
  %.069.i.i.i.i.i.i.i1983.2.unr = phi ptr [ %i.dmq, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ], [ %i.dms, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ]
  %.078.i.i.i.i.i.i.i1984.2.unr = phi ptr [ %.019.i.i1937.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i1980.2 ], [ %i.dmr, %.lr.ph.i.i.i.i.i.i.i1981.2.prol ]
  %i.dmv = icmp ult i64 %i.dmo, 8
  br i1 %i.dmv, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i1979.2, label %.lr.ph.i.i.i.i.i.i.i1981.2

.lr.ph.i.i.i.i.i.i.i1981.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1981.2
  %.010.i.i.i.i.i.i.i1982.2 = phi i64 [ %i.dnu, %.lr.ph.i.i.i.i.i.i.i1981.2 ], [ %.010.i.i.i.i.i.i.i1982.2.unr, %.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1983.2 = phi ptr [ %i.dns, %.lr.ph.i.i.i.i.i.i.i1981.2 ], [ %.069.i.i.i.i.i.i.i1983.2.unr, %.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1984.2 = phi ptr [ %i.dnr, %.lr.ph.i.i.i.i.i.i.i1981.2 ], [ %.078.i.i.i.i.i.i.i1984.2.unr, %.lr.ph.i.i.i.i.i.i.i1981.2.prol.loopexit ] ; 8 uses
  %i.dmw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.2, i64 -16
  %i.dmx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.2, i64 -16
  %i.dmy = load <2 x ptr>, ptr %i.dmw, align 8, !tbaa !1249
  store <2 x ptr> %i.dmy, ptr %i.dmx, align 8, !tbaa !1249
  %i.dmz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.2, i64 -32
  %i.dna = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.2, i64 -32
  %i.dnb = load <2 x ptr>, ptr %i.dmz, align 8, !tbaa !1249
  store <2 x ptr> %i.dnb, ptr %i.dna, align 8, !tbaa !1249
  %i.dnc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.2, i64 -48
  %i.dnd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1983.2, i64 -48
  %i.dne = load <2 x ptr>, ptr %i.dnc, align 8, !tbaa !1249
  store <2 x ptr> %i.dne, ptr %i.dnd, align 8, !tbaa !1249
  %i.dnf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1984.2, i64 -64
end_hunk_0
begin_hunk_1_@_ZL24GetFullTypeForDeclaratorRN12_GLOBAL__N_119TypeProcessingStateEN5clang8QualTypeEPNS2_14TypeSourceInfoE:bb.a

.lr.ph.i38.i1847:                                 ; preds = %._crit_edge.i1827, %bb.vj
  %.030.i39.i1848 = phi ptr [ %i.efx, %bb.vj ], [ %.020.lcssa.i1828, %._crit_edge.i1827 ] ; 3 uses
  %.01829.i40.i1849 = phi ptr [ %.1.i45.i1854, %bb.vj ], [ %.0.lcssa.i1829, %._crit_edge.i1827 ] ; 4 uses
  %.01928.i41.i1850 = phi ptr [ %.120.i44.i1853, %bb.vj ], [ %i.efn, %._crit_edge.i1827 ] ; 4 uses
  %i.efr = load ptr, ptr %.01928.i41.i1850, align 8, !tbaa !1442 ; 2 uses
  %i.efs = load ptr, ptr %.01829.i40.i1849, align 8, !tbaa !1442 ; 2 uses
  %i.eft = icmp ult ptr %i.efr, %i.efs
  br i1 %i.eft, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %.lr.ph.i38.i1847
  %i.efu = getelementptr inbounds nuw i8, ptr %.01928.i41.i1850, i64 16
  br label %bb.vj

bb.vi:                                            ; preds = %.lr.ph.i38.i1847
  %i.efv = getelementptr inbounds nuw i8, ptr %.01829.i40.i1849, i64 16
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %.sink35.i42.i1851 = phi ptr [ %i.efr, %bb.vh ], [ %i.efs, %bb.vi ]
  %.01928.pn.i43.i1852 = phi ptr [ %.01928.i41.i1850, %bb.vh ], [ %.01829.i40.i1849, %bb.vi ]
  %.120.i44.i1853 = phi ptr [ %i.efu, %bb.vh ], [ %.01928.i41.i1850, %bb.vi ] ; 3 uses
  %.1.i45.i1854 = phi ptr [ %.01829.i40.i1849, %bb.vh ], [ %i.efv, %bb.vi ] ; 3 uses
  %.sink.in.i46.i1855 = getelementptr inbounds nuw i8, ptr %.01928.pn.i43.i1852, i64 8
  %.sink.i47.i1856 = load ptr, ptr %.sink.in.i46.i1855, align 8, !tbaa !1428
  store ptr %.sink35.i42.i1851, ptr %.030.i39.i1848, align 8, !tbaa !1444
  %i.efw = getelementptr inbounds nuw i8, ptr %.030.i39.i1848, i64 8
  store ptr %.sink.i47.i1856, ptr %i.efw, align 8, !tbaa !1445
  %i.efx = getelementptr inbounds nuw i8, ptr %.030.i39.i1848, i64 16 ; 2 uses
  %i.efy = icmp ne ptr %.1.i45.i1854, %i.efn
  %i.efz = icmp ne ptr %.120.i44.i1853, %i.dir
  %i.ega = select i1 %i.efy, i1 %i.efz, i1 false
  br i1 %i.ega, label %.lr.ph.i38.i1847, label %._crit_edge.i23.i1833, !llvm.loop !19

._crit_edge.i23.i1833:                            ; preds = %bb.vj, %._crit_edge.i1827
  %.019.lcssa.i24.i1834 = phi ptr [ %i.efn, %._crit_edge.i1827 ], [ %.120.i44.i1853, %bb.vj ] ; 3 uses
  %.018.lcssa.i25.i1835 = phi ptr [ %.0.lcssa.i1829, %._crit_edge.i1827 ], [ %.1.i45.i1854, %bb.vj ] ; 3 uses
  %.0.lcssa.i26.i1836 = phi ptr [ %.020.lcssa.i1828, %._crit_edge.i1827 ], [ %i.efx, %bb.vj ] ; 3 uses
  %i.egb = ptrtoint ptr %i.efn to i64
  %i.egc = ptrtoint ptr %.018.lcssa.i25.i1835 to i64
  %i.egd = sub i64 %i.egb, %i.egc
  %i.ege = ashr exact i64 %i.egd, 4               ; 5 uses
  %i.egf = icmp sgt i64 %i.ege, 0
  br i1 %i.egf, label %.lr.ph.i.i.i.i.i.i34.i1843.preheader, label %_ZSt4moveIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i27.i1837

.lr.ph.i.i.i.i.i.i34.i1843.preheader:             ; preds = %._crit_edge.i23.i1833
  %xtraiter3618 = and i64 %i.ege, 7               ; 2 uses
  %lcmp.mod3619.not = icmp eq i64 %xtraiter3618, 0
  br i1 %lcmp.mod3619.not, label %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i1843.prol

.lr.ph.i.i.i.i.i.i34.i1843.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i34.i1843.preheader, %.lr.ph.i.i.i.i.i.i34.i1843.prol
  %.012.i.i.i.i.i.i35.i1844.prol = phi i64 [ %i.egj, %.lr.ph.i.i.i.i.i.i34.i1843.prol ], [ %i.ege, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ]
  %.0811.i.i.i.i.i.i36.i1845.prol = phi ptr [ %i.egi, %.lr.ph.i.i.i.i.i.i34.i1843.prol ], [ %.0.lcssa.i26.i1836, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i37.i1846.prol = phi ptr [ %i.egh, %.lr.ph.i.i.i.i.i.i34.i1843.prol ], [ %.018.lcssa.i25.i1835, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ] ; 2 uses
  %prol.iter3620 = phi i64 [ %prol.iter3620.next, %.lr.ph.i.i.i.i.i.i34.i1843.prol ], [ 0, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ]
  %i.egg = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i37.i1846.prol, align 8, !tbaa !1249
  store <2 x ptr> %i.egg, ptr %.0811.i.i.i.i.i.i36.i1845.prol, align 8, !tbaa !1249
  %i.egh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846.prol, i64 16 ; 2 uses
  %i.egi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845.prol, i64 16 ; 3 uses
  %i.egj = add nsw i64 %.012.i.i.i.i.i.i35.i1844.prol, -1 ; 2 uses
  %prol.iter3620.next = add i64 %prol.iter3620, 1 ; 2 uses
  %prol.iter3620.cmp.not = icmp eq i64 %prol.iter3620.next, %xtraiter3618
  br i1 %prol.iter3620.cmp.not, label %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i1843.prol, !llvm.loop !1820

.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i34.i1843.prol, %.lr.ph.i.i.i.i.i.i34.i1843.preheader
  %.012.i.i.i.i.i.i35.i1844.unr = phi i64 [ %i.ege, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ], [ %i.egj, %.lr.ph.i.i.i.i.i.i34.i1843.prol ]
  %.0811.i.i.i.i.i.i36.i1845.unr = phi ptr [ %.0.lcssa.i26.i1836, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ], [ %i.egi, %.lr.ph.i.i.i.i.i.i34.i1843.prol ]
  %.0910.i.i.i.i.i.i37.i1846.unr = phi ptr [ %.018.lcssa.i25.i1835, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ], [ %i.egh, %.lr.ph.i.i.i.i.i.i34.i1843.prol ]
  %.lcssa3434.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i34.i1843.preheader ], [ %i.egi, %.lr.ph.i.i.i.i.i.i34.i1843.prol ]
  %i.egk = icmp ult i64 %i.ege, 8
  br i1 %i.egk, label %_ZSt4moveIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i27.i1837, label %.lr.ph.i.i.i.i.i.i34.i1843

.lr.ph.i.i.i.i.i.i34.i1843:                       ; preds = %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i1843
  %.012.i.i.i.i.i.i35.i1844 = phi i64 [ %i.ehj, %.lr.ph.i.i.i.i.i.i34.i1843 ], [ %.012.i.i.i.i.i.i35.i1844.unr, %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i36.i1845 = phi ptr [ %i.ehi, %.lr.ph.i.i.i.i.i.i34.i1843 ], [ %.0811.i.i.i.i.i.i36.i1845.unr, %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i37.i1846 = phi ptr [ %i.ehh, %.lr.ph.i.i.i.i.i.i34.i1843 ], [ %.0910.i.i.i.i.i.i37.i1846.unr, %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit ] ; 9 uses
  %i.egl = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i37.i1846, align 8, !tbaa !1249
  store <2 x ptr> %i.egl, ptr %.0811.i.i.i.i.i.i36.i1845, align 8, !tbaa !1249
  %i.egm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 16
  %i.egn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 16
  %i.ego = load <2 x ptr>, ptr %i.egm, align 8, !tbaa !1249
  store <2 x ptr> %i.ego, ptr %i.egn, align 8, !tbaa !1249
  %i.egp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 32
  %i.egq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 32
  %i.egr = load <2 x ptr>, ptr %i.egp, align 8, !tbaa !1249
  store <2 x ptr> %i.egr, ptr %i.egq, align 8, !tbaa !1249
  %i.egs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 48
  %i.egt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 48
  %i.egu = load <2 x ptr>, ptr %i.egs, align 8, !tbaa !1249
  store <2 x ptr> %i.egu, ptr %i.egt, align 8, !tbaa !1249
  %i.egv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 64
  %i.egw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 64
  %i.egx = load <2 x ptr>, ptr %i.egv, align 8, !tbaa !1249
  store <2 x ptr> %i.egx, ptr %i.egw, align 8, !tbaa !1249
  %i.egy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 80
  %i.egz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 80
  %i.eha = load <2 x ptr>, ptr %i.egy, align 8, !tbaa !1249
  store <2 x ptr> %i.eha, ptr %i.egz, align 8, !tbaa !1249
  %i.ehb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 96
  %i.ehc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 96
  %i.ehd = load <2 x ptr>, ptr %i.ehb, align 8, !tbaa !1249
  store <2 x ptr> %i.ehd, ptr %i.ehc, align 8, !tbaa !1249
  %i.ehe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 112
  %i.ehf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 112
  %i.ehg = load <2 x ptr>, ptr %i.ehe, align 8, !tbaa !1249
  store <2 x ptr> %i.ehg, ptr %i.ehf, align 8, !tbaa !1249
  %i.ehh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37.i1846, i64 128
  %i.ehi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36.i1845, i64 128 ; 2 uses
  %i.ehj = add nsw i64 %.012.i.i.i.i.i.i35.i1844, -8
  %i.ehk = icmp sgt i64 %.012.i.i.i.i.i.i35.i1844, 8
  br i1 %i.ehk, label %.lr.ph.i.i.i.i.i.i34.i1843, label %_ZSt4moveIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i27.i1837, !llvm.loop !20

_ZSt4moveIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i27.i1837: ; preds = %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i1843, %._crit_edge.i23.i1833
  %.08.lcssa.i.i.i.i.i.i28.i1838 = phi ptr [ %.0.lcssa.i26.i1836, %._crit_edge.i23.i1833 ], [ %.lcssa3434.unr, %.lr.ph.i.i.i.i.i.i34.i1843.prol.loopexit ], [ %i.ehi, %.lr.ph.i.i.i.i.i.i34.i1843 ] ; 2 uses
  %i.ehl = ptrtoint ptr %.019.lcssa.i24.i1834 to i64
  %i.ehm = sub i64 %i.dvn, %i.ehl
  %i.ehn = ashr exact i64 %i.ehm, 4               ; 5 uses
  %i.eho = icmp sgt i64 %i.ehn, 0
  br i1 %i.eho, label %.lr.ph.i.i.i.i.i22.i30.i1839.preheader, label %_ZSt17__merge_sort_loopIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_lN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_.exit1865

.lr.ph.i.i.i.i.i22.i30.i1839.preheader:           ; preds = %_ZSt4moveIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i27.i1837
  %xtraiter3621 = and i64 %i.ehn, 7               ; 2 uses
  %lcmp.mod3622.not = icmp eq i64 %xtraiter3621, 0
  br i1 %lcmp.mod3622.not, label %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit, label %.lr.ph.i.i.i.i.i22.i30.i1839.prol

.lr.ph.i.i.i.i.i22.i30.i1839.prol:                ; preds = %.lr.ph.i.i.i.i.i22.i30.i1839.preheader, %.lr.ph.i.i.i.i.i22.i30.i1839.prol
  %.012.i.i.i.i.i23.i31.i1840.prol = phi i64 [ %i.ehs, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ], [ %i.ehn, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ]
  %.0811.i.i.i.i.i24.i32.i1841.prol = phi ptr [ %i.ehr, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ], [ %.08.lcssa.i.i.i.i.i.i28.i1838, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ] ; 2 uses
  %.0910.i.i.i.i.i25.i33.i1842.prol = phi ptr [ %i.ehq, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ], [ %.019.lcssa.i24.i1834, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ] ; 2 uses
  %prol.iter3623 = phi i64 [ %prol.iter3623.next, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ], [ 0, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ]
  %i.ehp = load <2 x ptr>, ptr %.0910.i.i.i.i.i25.i33.i1842.prol, align 8, !tbaa !1249
  store <2 x ptr> %i.ehp, ptr %.0811.i.i.i.i.i24.i32.i1841.prol, align 8, !tbaa !1249
  %i.ehq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842.prol, i64 16 ; 2 uses
  %i.ehr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841.prol, i64 16 ; 2 uses
  %i.ehs = add nsw i64 %.012.i.i.i.i.i23.i31.i1840.prol, -1 ; 2 uses
  %prol.iter3623.next = add i64 %prol.iter3623, 1 ; 2 uses
  %prol.iter3623.cmp.not = icmp eq i64 %prol.iter3623.next, %xtraiter3621
  br i1 %prol.iter3623.cmp.not, label %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit, label %.lr.ph.i.i.i.i.i22.i30.i1839.prol, !llvm.loop !1821

.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i22.i30.i1839.prol, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader
  %.012.i.i.i.i.i23.i31.i1840.unr = phi i64 [ %i.ehn, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ], [ %i.ehs, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ]
  %.0811.i.i.i.i.i24.i32.i1841.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i28.i1838, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ], [ %i.ehr, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ]
  %.0910.i.i.i.i.i25.i33.i1842.unr = phi ptr [ %.019.lcssa.i24.i1834, %.lr.ph.i.i.i.i.i22.i30.i1839.preheader ], [ %i.ehq, %.lr.ph.i.i.i.i.i22.i30.i1839.prol ]
  %i.eht = icmp ult i64 %i.ehn, 8
  br i1 %i.eht, label %_ZSt17__merge_sort_loopIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_lN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_.exit1865, label %.lr.ph.i.i.i.i.i22.i30.i1839

.lr.ph.i.i.i.i.i22.i30.i1839:                     ; preds = %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit, %.lr.ph.i.i.i.i.i22.i30.i1839
  %.012.i.i.i.i.i23.i31.i1840 = phi i64 [ %i.eis, %.lr.ph.i.i.i.i.i22.i30.i1839 ], [ %.012.i.i.i.i.i23.i31.i1840.unr, %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i24.i32.i1841 = phi ptr [ %i.eir, %.lr.ph.i.i.i.i.i22.i30.i1839 ], [ %.0811.i.i.i.i.i24.i32.i1841.unr, %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i25.i33.i1842 = phi ptr [ %i.eiq, %.lr.ph.i.i.i.i.i22.i30.i1839 ], [ %.0910.i.i.i.i.i25.i33.i1842.unr, %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit ] ; 9 uses
  %i.ehu = load <2 x ptr>, ptr %.0910.i.i.i.i.i25.i33.i1842, align 8, !tbaa !1249
  store <2 x ptr> %i.ehu, ptr %.0811.i.i.i.i.i24.i32.i1841, align 8, !tbaa !1249
  %i.ehv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 16
  %i.ehw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 16
  %i.ehx = load <2 x ptr>, ptr %i.ehv, align 8, !tbaa !1249
  store <2 x ptr> %i.ehx, ptr %i.ehw, align 8, !tbaa !1249
  %i.ehy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 32
  %i.ehz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 32
  %i.eia = load <2 x ptr>, ptr %i.ehy, align 8, !tbaa !1249
  store <2 x ptr> %i.eia, ptr %i.ehz, align 8, !tbaa !1249
  %i.eib = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 48
  %i.eic = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 48
  %i.eid = load <2 x ptr>, ptr %i.eib, align 8, !tbaa !1249
  store <2 x ptr> %i.eid, ptr %i.eic, align 8, !tbaa !1249
  %i.eie = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 64
  %i.eif = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 64
  %i.eig = load <2 x ptr>, ptr %i.eie, align 8, !tbaa !1249
  store <2 x ptr> %i.eig, ptr %i.eif, align 8, !tbaa !1249
  %i.eih = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 80
  %i.eii = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 80
  %i.eij = load <2 x ptr>, ptr %i.eih, align 8, !tbaa !1249
  store <2 x ptr> %i.eij, ptr %i.eii, align 8, !tbaa !1249
  %i.eik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 96
  %i.eil = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 96
  %i.eim = load <2 x ptr>, ptr %i.eik, align 8, !tbaa !1249
  store <2 x ptr> %i.eim, ptr %i.eil, align 8, !tbaa !1249
  %i.ein = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 112
  %i.eio = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 112
  %i.eip = load <2 x ptr>, ptr %i.ein, align 8, !tbaa !1249
  store <2 x ptr> %i.eip, ptr %i.eio, align 8, !tbaa !1249
  %i.eiq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33.i1842, i64 128
  %i.eir = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32.i1841, i64 128
  %i.eis = add nsw i64 %.012.i.i.i.i.i23.i31.i1840, -8
  %i.eit = icmp sgt i64 %.012.i.i.i.i.i23.i31.i1840, 8
  br i1 %i.eit, label %.lr.ph.i.i.i.i.i22.i30.i1839, label %_ZSt17__merge_sort_loopIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_lN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_.exit1865, !llvm.loop !20

_ZSt17__merge_sort_loopIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_lN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_.exit1865: ; preds = %.lr.ph.i.i.i.i.i22.i30.i1839.prol.loopexit, %.lr.ph.i.i.i.i.i22.i30.i1839, %_ZSt4moveIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i27.i1837
  %i.eiu = icmp slt i64 %i.ece, %i.dhv
  br i1 %i.eiu, label %.lr.ph.i.i1701, label %_ZSt24__merge_sort_with_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_N9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_.exit.i, !llvm.loop !22

_ZSt24__merge_sort_with_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_N9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_.exit.i: ; preds = %_ZSt17__merge_sort_loopIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_lN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_.exit1865, %_ZSt22__chunk_insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEElN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_.exit1985
  %i.eiv = ptrtoint ptr %i.dhs to i64             ; 3 uses
  %gepdiff = sub nsw i64 %.idx.i1647, %.idx2302   ; 2 uses
  %i.eiw = ashr exact i64 %gepdiff, 4             ; 13 uses
  %i.eix = getelementptr inbounds i8, ptr %i.dhx, i64 %gepdiff ; 3 uses
  %.not38.i = icmp slt i64 %i.eiw, 7
  br i1 %.not38.i, label %._crit_edge.i1793, label %.lr.ph.i.i1788

.lr.ph.i.i1788:                                   ; preds = %_ZSt24__merge_sort_with_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_N9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_.exit.i, %_ZSt16__insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.loopexit.i
  %i.eiy = phi i64 [ %i.etr, %_ZSt16__insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.dip, %_ZSt24__merge_sort_with_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_N9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 6 uses
  %.039.i = phi ptr [ %i.etq, %_ZSt16__insertion_sortIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_.exit.loopexit.i ], [ %i.dio, %_ZSt24__merge_sort_with_bufferIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_N9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_.exit.i ] ; 30 uses
  %i.eiz = getelementptr inbounds nuw i8, ptr %.039.i, i64 8 ; 5 uses
  %.pre21.i.i = load ptr, ptr %.039.i, align 8, !tbaa !1442 ; 2 uses
  %.019.i.i.ptr = getelementptr inbounds nuw i8, ptr %.039.i, i64 16 ; 7 uses
  %124 = load <2 x ptr>, ptr %.019.i.i.ptr, align 8
  %125 = load ptr, ptr %.019.i.i.ptr, align 8, !tbaa !1442 ; 2 uses
  %126 = icmp ult ptr %125, %.pre21.i.i
  br i1 %126, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %.lr.ph.i.i1788
  %i.eja = ptrtoint ptr %.019.i.i.ptr to i64
  %i.ejb = sub i64 %i.eja, %i.eiy
  %i.ejc = ashr exact i64 %i.ejb, 4               ; 5 uses
  %i.ejd = icmp sgt i64 %i.ejc, 0
  br i1 %i.ejd, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.a

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.vk
  %i.eje = getelementptr inbounds nuw i8, ptr %.039.i, i64 32 ; 2 uses
  %xtraiter3624 = and i64 %i.ejc, 7               ; 2 uses
  %lcmp.mod3625.not = icmp eq i64 %xtraiter3624, 0
  br i1 %lcmp.mod3625.not, label %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1797.prol

.lr.ph.i.i.i.i.i.i.i1797.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i1797.prol
  %.010.i.i.i.i.i.i.i1798.prol = phi i64 [ %i.eji, %.lr.ph.i.i.i.i.i.i.i1797.prol ], [ %i.ejc, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i1799.prol = phi ptr [ %i.ejg, %.lr.ph.i.i.i.i.i.i.i1797.prol ], [ %i.eje, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.078.i.i.i.i.i.i.i1800.prol = phi ptr [ %i.ejf, %.lr.ph.i.i.i.i.i.i.i1797.prol ], [ %.019.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %prol.iter3626 = phi i64 [ %prol.iter3626.next, %.lr.ph.i.i.i.i.i.i.i1797.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.ejf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.prol, i64 -16 ; 3 uses
  %i.ejg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.prol, i64 -16 ; 3 uses
  %i.ejh = load <2 x ptr>, ptr %i.ejf, align 8, !tbaa !1249
  store <2 x ptr> %i.ejh, ptr %i.ejg, align 8, !tbaa !1249
  %i.eji = add nsw i64 %.010.i.i.i.i.i.i.i1798.prol, -1 ; 2 uses
  %prol.iter3626.next = add i64 %prol.iter3626, 1 ; 2 uses
  %prol.iter3626.cmp.not = icmp eq i64 %prol.iter3626.next, %xtraiter3624
  br i1 %prol.iter3626.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1797.prol, !llvm.loop !1822

.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1797.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i1798.unr = phi i64 [ %i.ejc, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.eji, %.lr.ph.i.i.i.i.i.i.i1797.prol ]
  %.069.i.i.i.i.i.i.i1799.unr = phi ptr [ %i.eje, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ejg, %.lr.ph.i.i.i.i.i.i.i1797.prol ]
  %.078.i.i.i.i.i.i.i1800.unr = phi ptr [ %.019.i.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.ejf, %.lr.ph.i.i.i.i.i.i.i1797.prol ]
  %i.ejj = icmp ult i64 %i.ejc, 8
  br i1 %i.ejj, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.a, label %.lr.ph.i.i.i.i.i.i.i1797

.lr.ph.i.i.i.i.i.i.i1797:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1797
  %.010.i.i.i.i.i.i.i1798 = phi i64 [ %i.eki, %.lr.ph.i.i.i.i.i.i.i1797 ], [ %.010.i.i.i.i.i.i.i1798.unr, %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1799 = phi ptr [ %i.ekg, %.lr.ph.i.i.i.i.i.i.i1797 ], [ %.069.i.i.i.i.i.i.i1799.unr, %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1800 = phi ptr [ %i.ekf, %.lr.ph.i.i.i.i.i.i.i1797 ], [ %.078.i.i.i.i.i.i.i1800.unr, %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit ] ; 8 uses
  %i.ejk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -16
  %i.ejl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -16
  %i.ejm = load <2 x ptr>, ptr %i.ejk, align 8, !tbaa !1249
  store <2 x ptr> %i.ejm, ptr %i.ejl, align 8, !tbaa !1249
  %i.ejn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -32
  %i.ejo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -32
  %i.ejp = load <2 x ptr>, ptr %i.ejn, align 8, !tbaa !1249
  store <2 x ptr> %i.ejp, ptr %i.ejo, align 8, !tbaa !1249
  %i.ejq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -48
  %i.ejr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -48
  %i.ejs = load <2 x ptr>, ptr %i.ejq, align 8, !tbaa !1249
  store <2 x ptr> %i.ejs, ptr %i.ejr, align 8, !tbaa !1249
  %i.ejt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -64
  %i.eju = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -64
  %i.ejv = load <2 x ptr>, ptr %i.ejt, align 8, !tbaa !1249
  store <2 x ptr> %i.ejv, ptr %i.eju, align 8, !tbaa !1249
  %i.ejw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -80
  %i.ejx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -80
  %i.ejy = load <2 x ptr>, ptr %i.ejw, align 8, !tbaa !1249
  store <2 x ptr> %i.ejy, ptr %i.ejx, align 8, !tbaa !1249
  %i.ejz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -96
  %i.eka = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -96
  %i.ekb = load <2 x ptr>, ptr %i.ejz, align 8, !tbaa !1249
  store <2 x ptr> %i.ekb, ptr %i.eka, align 8, !tbaa !1249
  %i.ekc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -112
  %i.ekd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -112
  %i.eke = load <2 x ptr>, ptr %i.ekc, align 8, !tbaa !1249
  store <2 x ptr> %i.eke, ptr %i.ekd, align 8, !tbaa !1249
  %i.ekf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800, i64 -128 ; 2 uses
  %i.ekg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799, i64 -128 ; 2 uses
  %i.ekh = load <2 x ptr>, ptr %i.ekf, align 8, !tbaa !1249
  store <2 x ptr> %i.ekh, ptr %i.ekg, align 8, !tbaa !1249
  %i.eki = add nsw i64 %.010.i.i.i.i.i.i.i1798, -8
  %i.ekj = icmp sgt i64 %.010.i.i.i.i.i.i.i1798, 8
  br i1 %i.ekj, label %.lr.ph.i.i.i.i.i.i.i1797, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.a, !llvm.loop !15

_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.a: ; preds = %.lr.ph.i.i.i.i.i.i.i1797.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1797, %bb.vk
  store <2 x ptr> %124, ptr %.039.i, align 8, !tbaa !1249
  br label %bb.vl

bb.vl:                                            ; preds = %.lr.ph.i.i1788, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.a
  %i.ekk = phi ptr [ %125, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.a ], [ %.pre21.i.i, %.lr.ph.i.i1788 ]
  %.019.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.039.i, i64 32 ; 8 uses
  %i.ekl = load ptr, ptr %.019.i.i.ptr.1, align 8, !tbaa !1442 ; 6 uses
  %i.ekm = icmp ult ptr %i.ekl, %i.ekk
  %.sroa.4.0..0.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.039.i, i64 40
  %.sroa.4.0.copyload.i.i.1 = load ptr, ptr %.sroa.4.0..0.sroa_idx.i.i.1, align 8 ; 2 uses
  br i1 %i.ekm, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.ekn = load ptr, ptr %.019.i.i.ptr, align 8, !tbaa !1442 ; 2 uses
  %i.eko = icmp ult ptr %i.ekl, %i.ekn
  br i1 %i.eko, label %.lr.ph.i.i.i1795.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i1795.1:                               ; preds = %bb.vm, %.lr.ph.i.i.i1795.1
  %i.ekp = phi ptr [ %i.ekt, %.lr.ph.i.i.i1795.1 ], [ %i.ekn, %bb.vm ]
  %.013.i.i.i.1 = phi ptr [ %.0.i.i.i1796.1, %.lr.ph.i.i.i1795.1 ], [ %.019.i.i.ptr, %bb.vm ] ; 3 uses
  %.0912.i.i.i.1 = phi ptr [ %.013.i.i.i.1, %.lr.ph.i.i.i1795.1 ], [ %.019.i.i.ptr.1, %bb.vm ] ; 3 uses
  store ptr %i.ekp, ptr %.0912.i.i.i.1, align 8, !tbaa !1444
  %i.ekq = getelementptr inbounds i8, ptr %.0912.i.i.i.1, i64 -8
  %i.ekr = load ptr, ptr %i.ekq, align 8, !tbaa !1428
  %i.eks = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.1, i64 8
  store ptr %i.ekr, ptr %i.eks, align 8, !tbaa !1445
  %.0.i.i.i1796.1 = getelementptr inbounds i8, ptr %.013.i.i.i.1, i64 -16 ; 2 uses
  %i.ekt = load ptr, ptr %.0.i.i.i1796.1, align 8, !tbaa !1442 ; 2 uses
  %i.eku = icmp ult ptr %i.ekl, %i.ekt
  br i1 %i.eku, label %.lr.ph.i.i.i1795.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.1, !llvm.loop !16

_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i1795.1, %bb.vm
  %.09.lcssa.i.i.i.1 = phi ptr [ %.019.i.i.ptr.1, %bb.vm ], [ %.013.i.i.i.1, %.lr.ph.i.i.i1795.1 ] ; 2 uses
  store ptr %i.ekl, ptr %.09.lcssa.i.i.i.1, align 8, !tbaa !1444
  %i.ekv = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.1, i64 8
  store ptr %.sroa.4.0.copyload.i.i.1, ptr %i.ekv, align 8, !tbaa !1445
  %.pre.i.i1789.1 = load ptr, ptr %.039.i, align 8, !tbaa !1442
  br label %bb.vo

bb.vn:                                            ; preds = %bb.vl
  %i.ekw = ptrtoint ptr %.019.i.i.ptr.1 to i64
  %i.ekx = sub i64 %i.ekw, %i.eiy
  %i.eky = ashr exact i64 %i.ekx, 4               ; 5 uses
  %i.ekz = icmp sgt i64 %i.eky, 0
  br i1 %i.ekz, label %.lr.ph.i.i.i.i.i.preheader.i.i.1, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i.1:                 ; preds = %bb.vn
  %i.ela = getelementptr inbounds nuw i8, ptr %.039.i, i64 48 ; 2 uses
  %xtraiter3647 = and i64 %i.eky, 7               ; 2 uses
  %lcmp.mod3648.not = icmp eq i64 %xtraiter3647, 0
  br i1 %lcmp.mod3648.not, label %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1797.1.prol

.lr.ph.i.i.i.i.i.i.i1797.1.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.1, %.lr.ph.i.i.i.i.i.i.i1797.1.prol
  %.010.i.i.i.i.i.i.i1798.1.prol = phi i64 [ %i.ele, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ], [ %i.eky, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ]
  %.069.i.i.i.i.i.i.i1799.1.prol = phi ptr [ %i.elc, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ], [ %i.ela, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ]
  %.078.i.i.i.i.i.i.i1800.1.prol = phi ptr [ %i.elb, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ], [ %.019.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ]
  %prol.iter3649 = phi i64 [ %prol.iter3649.next, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ]
  %i.elb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1.prol, i64 -16 ; 3 uses
  %i.elc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1.prol, i64 -16 ; 3 uses
  %i.eld = load <2 x ptr>, ptr %i.elb, align 8, !tbaa !1249
  store <2 x ptr> %i.eld, ptr %i.elc, align 8, !tbaa !1249
  %i.ele = add nsw i64 %.010.i.i.i.i.i.i.i1798.1.prol, -1 ; 2 uses
  %prol.iter3649.next = add i64 %prol.iter3649, 1 ; 2 uses
  %prol.iter3649.cmp.not = icmp eq i64 %prol.iter3649.next, %xtraiter3647
  br i1 %prol.iter3649.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1797.1.prol, !llvm.loop !1823

.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i1797.1.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.1
  %.010.i.i.i.i.i.i.i1798.1.unr = phi i64 [ %i.eky, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ], [ %i.ele, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ]
  %.069.i.i.i.i.i.i.i1799.1.unr = phi ptr [ %i.ela, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ], [ %i.elc, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ]
  %.078.i.i.i.i.i.i.i1800.1.unr = phi ptr [ %.019.i.i.ptr.1, %.lr.ph.i.i.i.i.i.preheader.i.i.1 ], [ %i.elb, %.lr.ph.i.i.i.i.i.i.i1797.1.prol ]
  %i.elf = icmp ult i64 %i.eky, 8
  br i1 %i.elf, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.1, label %.lr.ph.i.i.i.i.i.i.i1797.1

.lr.ph.i.i.i.i.i.i.i1797.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1797.1
  %.010.i.i.i.i.i.i.i1798.1 = phi i64 [ %i.eme, %.lr.ph.i.i.i.i.i.i.i1797.1 ], [ %.010.i.i.i.i.i.i.i1798.1.unr, %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1799.1 = phi ptr [ %i.emc, %.lr.ph.i.i.i.i.i.i.i1797.1 ], [ %.069.i.i.i.i.i.i.i1799.1.unr, %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1800.1 = phi ptr [ %i.emb, %.lr.ph.i.i.i.i.i.i.i1797.1 ], [ %.078.i.i.i.i.i.i.i1800.1.unr, %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit ] ; 8 uses
  %i.elg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -16
  %i.elh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -16
  %i.eli = load <2 x ptr>, ptr %i.elg, align 8, !tbaa !1249
  store <2 x ptr> %i.eli, ptr %i.elh, align 8, !tbaa !1249
  %i.elj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -32
  %i.elk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -32
  %i.ell = load <2 x ptr>, ptr %i.elj, align 8, !tbaa !1249
  store <2 x ptr> %i.ell, ptr %i.elk, align 8, !tbaa !1249
  %i.elm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -48
  %i.eln = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -48
  %i.elo = load <2 x ptr>, ptr %i.elm, align 8, !tbaa !1249
  store <2 x ptr> %i.elo, ptr %i.eln, align 8, !tbaa !1249
  %i.elp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -64
  %i.elq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -64
  %i.elr = load <2 x ptr>, ptr %i.elp, align 8, !tbaa !1249
  store <2 x ptr> %i.elr, ptr %i.elq, align 8, !tbaa !1249
  %i.els = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -80
  %i.elt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -80
  %i.elu = load <2 x ptr>, ptr %i.els, align 8, !tbaa !1249
  store <2 x ptr> %i.elu, ptr %i.elt, align 8, !tbaa !1249
  %i.elv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -96
  %i.elw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -96
  %i.elx = load <2 x ptr>, ptr %i.elv, align 8, !tbaa !1249
  store <2 x ptr> %i.elx, ptr %i.elw, align 8, !tbaa !1249
  %i.ely = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -112
  %i.elz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -112
  %i.ema = load <2 x ptr>, ptr %i.ely, align 8, !tbaa !1249
  store <2 x ptr> %i.ema, ptr %i.elz, align 8, !tbaa !1249
  %i.emb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.1, i64 -128 ; 2 uses
  %i.emc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.1, i64 -128 ; 2 uses
  %i.emd = load <2 x ptr>, ptr %i.emb, align 8, !tbaa !1249
  store <2 x ptr> %i.emd, ptr %i.emc, align 8, !tbaa !1249
  %i.eme = add nsw i64 %.010.i.i.i.i.i.i.i1798.1, -8
  %i.emf = icmp sgt i64 %.010.i.i.i.i.i.i.i1798.1, 8
  br i1 %i.emf, label %.lr.ph.i.i.i.i.i.i.i1797.1, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.1, !llvm.loop !15

_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i1797.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1797.1, %bb.vn
  store ptr %i.ekl, ptr %.039.i, align 8, !tbaa !1444
  store ptr %.sroa.4.0.copyload.i.i.1, ptr %i.eiz, align 8, !tbaa !1445
  br label %bb.vo

bb.vo:                                            ; preds = %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.1, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.1
  %i.emg = phi ptr [ %i.ekl, %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.1 ], [ %.pre.i.i1789.1, %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.1 ]
  %.019.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.039.i, i64 48 ; 8 uses
  %i.emh = load ptr, ptr %.019.i.i.ptr.2, align 8, !tbaa !1442 ; 6 uses
  %i.emi = icmp ult ptr %i.emh, %i.emg
  %.sroa.4.0..0.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.039.i, i64 56
  %.sroa.4.0.copyload.i.i.2 = load ptr, ptr %.sroa.4.0..0.sroa_idx.i.i.2, align 8 ; 2 uses
  br i1 %i.emi, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.emj = load ptr, ptr %.019.i.i.ptr.1, align 8, !tbaa !1442 ; 2 uses
  %i.emk = icmp ult ptr %i.emh, %i.emj
  br i1 %i.emk, label %.lr.ph.i.i.i1795.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i1795.2:                               ; preds = %bb.vp, %.lr.ph.i.i.i1795.2
  %i.eml = phi ptr [ %i.emp, %.lr.ph.i.i.i1795.2 ], [ %i.emj, %bb.vp ]
  %.013.i.i.i.2 = phi ptr [ %.0.i.i.i1796.2, %.lr.ph.i.i.i1795.2 ], [ %.019.i.i.ptr.1, %bb.vp ] ; 3 uses
  %.0912.i.i.i.2 = phi ptr [ %.013.i.i.i.2, %.lr.ph.i.i.i1795.2 ], [ %.019.i.i.ptr.2, %bb.vp ] ; 3 uses
  store ptr %i.eml, ptr %.0912.i.i.i.2, align 8, !tbaa !1444
  %i.emm = getelementptr inbounds i8, ptr %.0912.i.i.i.2, i64 -8
  %i.emn = load ptr, ptr %i.emm, align 8, !tbaa !1428
  %i.emo = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.2, i64 8
  store ptr %i.emn, ptr %i.emo, align 8, !tbaa !1445
  %.0.i.i.i1796.2 = getelementptr inbounds i8, ptr %.013.i.i.i.2, i64 -16 ; 2 uses
  %i.emp = load ptr, ptr %.0.i.i.i1796.2, align 8, !tbaa !1442 ; 2 uses
  %i.emq = icmp ult ptr %i.emh, %i.emp
  br i1 %i.emq, label %.lr.ph.i.i.i1795.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.2, !llvm.loop !16

_ZSt25__unguarded_linear_insertIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEEN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i1795.2, %bb.vp
  %.09.lcssa.i.i.i.2 = phi ptr [ %.019.i.i.ptr.2, %bb.vp ], [ %.013.i.i.i.2, %.lr.ph.i.i.i1795.2 ] ; 2 uses
  store ptr %i.emh, ptr %.09.lcssa.i.i.i.2, align 8, !tbaa !1444
  %i.emr = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.2, i64 8
  store ptr %.sroa.4.0.copyload.i.i.2, ptr %i.emr, align 8, !tbaa !1445
  %.pre.i.i1789.2 = load ptr, ptr %.039.i, align 8, !tbaa !1442
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vo
  %i.ems = ptrtoint ptr %.019.i.i.ptr.2 to i64
  %i.emt = sub i64 %i.ems, %i.eiy
  %i.emu = ashr exact i64 %i.emt, 4               ; 5 uses
  %i.emv = icmp sgt i64 %i.emu, 0
  br i1 %i.emv, label %.lr.ph.i.i.i.i.i.preheader.i.i.2, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i.2:                 ; preds = %bb.vq
  %i.emw = getelementptr inbounds nuw i8, ptr %.039.i, i64 64 ; 2 uses
  %xtraiter3650 = and i64 %i.emu, 7               ; 2 uses
  %lcmp.mod3651.not = icmp eq i64 %xtraiter3650, 0
  br i1 %lcmp.mod3651.not, label %.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1797.2.prol

.lr.ph.i.i.i.i.i.i.i1797.2.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.2, %.lr.ph.i.i.i.i.i.i.i1797.2.prol
  %.010.i.i.i.i.i.i.i1798.2.prol = phi i64 [ %i.ena, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ], [ %i.emu, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ]
  %.069.i.i.i.i.i.i.i1799.2.prol = phi ptr [ %i.emy, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ], [ %i.emw, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ]
  %.078.i.i.i.i.i.i.i1800.2.prol = phi ptr [ %i.emx, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ], [ %.019.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ]
  %prol.iter3652 = phi i64 [ %prol.iter3652.next, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ]
  %i.emx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.2.prol, i64 -16 ; 3 uses
  %i.emy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.2.prol, i64 -16 ; 3 uses
  %i.emz = load <2 x ptr>, ptr %i.emx, align 8, !tbaa !1249
  store <2 x ptr> %i.emz, ptr %i.emy, align 8, !tbaa !1249
  %i.ena = add nsw i64 %.010.i.i.i.i.i.i.i1798.2.prol, -1 ; 2 uses
  %prol.iter3652.next = add i64 %prol.iter3652, 1 ; 2 uses
  %prol.iter3652.cmp.not = icmp eq i64 %prol.iter3652.next, %xtraiter3650
  br i1 %prol.iter3652.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1797.2.prol, !llvm.loop !1824

.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i1797.2.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.2
  %.010.i.i.i.i.i.i.i1798.2.unr = phi i64 [ %i.emu, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ], [ %i.ena, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ]
  %.069.i.i.i.i.i.i.i1799.2.unr = phi ptr [ %i.emw, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ], [ %i.emy, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ]
  %.078.i.i.i.i.i.i.i1800.2.unr = phi ptr [ %.019.i.i.ptr.2, %.lr.ph.i.i.i.i.i.preheader.i.i.2 ], [ %i.emx, %.lr.ph.i.i.i.i.i.i.i1797.2.prol ]
  %i.enb = icmp ult i64 %i.emu, 8
  br i1 %i.enb, label %_ZSt13move_backwardIPSt4pairIPKN5clang14AttributedTypeEPKNS1_4AttrEES9_ET0_T_SB_SA_.exit.i.i.2, label %.lr.ph.i.i.i.i.i.i.i1797.2

.lr.ph.i.i.i.i.i.i.i1797.2:                       ; preds = %.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1797.2
  %.010.i.i.i.i.i.i.i1798.2 = phi i64 [ %i.eoa, %.lr.ph.i.i.i.i.i.i.i1797.2 ], [ %.010.i.i.i.i.i.i.i1798.2.unr, %.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i1799.2 = phi ptr [ %i.eny, %.lr.ph.i.i.i.i.i.i.i1797.2 ], [ %.069.i.i.i.i.i.i.i1799.2.unr, %.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i1800.2 = phi ptr [ %i.enx, %.lr.ph.i.i.i.i.i.i.i1797.2 ], [ %.078.i.i.i.i.i.i.i1800.2.unr, %.lr.ph.i.i.i.i.i.i.i1797.2.prol.loopexit ] ; 8 uses
  %i.enc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.2, i64 -16
  %i.end = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.2, i64 -16
  %i.ene = load <2 x ptr>, ptr %i.enc, align 8, !tbaa !1249
  store <2 x ptr> %i.ene, ptr %i.end, align 8, !tbaa !1249
  %i.enf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.2, i64 -32
  %i.eng = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.2, i64 -32
  %i.enh = load <2 x ptr>, ptr %i.enf, align 8, !tbaa !1249
  store <2 x ptr> %i.enh, ptr %i.eng, align 8, !tbaa !1249
  %i.eni = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.2, i64 -48
  %i.enj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i1799.2, i64 -48
  %i.enk = load <2 x ptr>, ptr %i.eni, align 8, !tbaa !1249
  store <2 x ptr> %i.enk, ptr %i.enj, align 8, !tbaa !1249
  %i.enl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i1800.2, i64 -64
end_hunk_1
