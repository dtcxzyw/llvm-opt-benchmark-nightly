Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrLoweringA64?download=true
inline.NumInlined: 1877
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7CodeGen3A6413IrLoweringA649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a
  %i.gfw = and i32 %i.gfv, 15
  %i.gfx = icmp eq i32 %i.gfw, 2
  br i1 %i.gfx, label %bb.aou, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006._crit_edge

bb.aou:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6014
  %.not.i6015 = icmp ugt i32 %.pre7447, 1
  br i1 %.not.i6015, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016, label %bb.aov, !prof !224

bb.aov:                                           ; preds = %bb.aou
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 2)
  %.pre7434 = load ptr, ptr %i.gen, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert7435 = getelementptr inbounds nuw i8, ptr %.pre7434, i64 4
  %.sroa.0897.0.copyload.pre = load i32, ptr %.phi.trans.insert7435, align 4, !tbaa !48
  %.pre7446.pre = load i32, ptr %i.geo, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016:   ; preds = %bb.aou, %bb.aov
  %.pre7446 = phi i32 [ %.pre7447, %bb.aou ], [ %.pre7446.pre, %bb.aov ] ; 2 uses
  %.sroa.0897.0.copyload = phi i32 [ %i.gfv, %bb.aou ], [ %.sroa.0897.0.copyload.pre, %bb.aov ]
  %i.gfy = phi ptr [ %i.gft, %bb.aou ], [ %.pre7434, %bb.aov ] ; 2 uses
  %i.gfz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gga = load ptr, ptr %i.gfz, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.ggb = getelementptr inbounds nuw i8, ptr %i.gga, i64 48
  %i.ggc = lshr i32 %.sroa.0897.0.copyload, 4
  %i.ggd = zext nneg i32 %i.ggc to i64
  %i.gge = load ptr, ptr %i.ggb, align 8, !tbaa !75
  %i.ggf = getelementptr inbounds nuw [16 x i8], ptr %i.gge, i64 %i.ggd
  %i.ggg = getelementptr inbounds nuw i8, ptr %i.ggf, i64 8
  %i.ggh = load i64, ptr %i.ggg, align 8, !tbaa !48
  %i.ggi = icmp eq i64 %i.ggh, 0
  br i1 %i.ggi, label %bb.aow, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006._crit_edge

bb.aow:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016
  %i.ggj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ggk = load ptr, ptr %i.ggj, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i6017.not = icmp eq i32 %.pre7446, 0
  br i1 %.not.i6017.not, label %bb.aox, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6018, !prof !223

bb.aox:                                           ; preds = %bb.aow
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 1)
  %.pre7437 = load ptr, ptr %i.gen, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6018

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6018:   ; preds = %bb.aow, %bb.aox
  %i.ggl = phi ptr [ %i.gfy, %bb.aow ], [ %.pre7437, %bb.aox ]
  %.sroa.0895.0.copyload = load i32, ptr %i.ggl, align 4, !tbaa !48
  %i.ggm = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0895.0.copyload)
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cbzENS1_11RegisterA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.ggk, i8 %i.ggm, ptr noundef nonnull align 4 dereferenceable(8) %i.gey)
  br label %bb.aph

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006._crit_edge: ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6008, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6010, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6014
  %i.ggn = phi ptr [ %i.gft, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6014 ], [ %i.gez, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6008 ], [ %i.gfe, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6010 ], [ %i.gfy, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016 ], [ %i.gew, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006 ]
  %i.ggo = phi i32 [ %.pre7447, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6014 ], [ %.pre7444, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6008 ], [ %.pre7445, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6010 ], [ %.pre7446, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6016 ], [ %.pre7443, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006 ]
  %.not.i6019.not = icmp eq i32 %i.ggo, 0
  br i1 %.not.i6019.not, label %bb.aoy, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6020, !prof !223

bb.aoy:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006._crit_edge
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 1)
  %.pre7448 = load ptr, ptr %i.gen, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6020

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6020:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006._crit_edge, %bb.aoy
  %i.ggp = phi ptr [ %i.ggn, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6006._crit_edge ], [ %.pre7448, %bb.aoy ]
  %.sroa.0892.0.copyload = load i32, ptr %i.ggp, align 4, !tbaa !48
  %i.ggq = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA649tempInt64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0892.0.copyload) ; 2 uses
  %i.ggr = load i32, ptr %i.geo, align 8, !tbaa !67 ; 2 uses
  %.not.i6021 = icmp ugt i32 %i.ggr, 1
  br i1 %.not.i6021, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022, label %bb.aoz, !prof !224

bb.aoz:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6020
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 2)
  %.pre7453.pre = load i32, ptr %i.geo, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6020, %bb.aoz
  %.pre7453 = phi i32 [ %i.ggr, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6020 ], [ %.pre7453.pre, %bb.aoz ] ; 3 uses
  %i.ggs = load ptr, ptr %i.gen, align 8, !tbaa !68 ; 3 uses
  %i.ggt = getelementptr inbounds nuw i8, ptr %i.ggs, i64 4
  %i.ggu = load i32, ptr %i.ggt, align 4          ; 2 uses
  %i.ggv = and i32 %i.ggu, 15
  %i.ggw = icmp eq i32 %i.ggv, 2
  br i1 %i.ggw, label %bb.apa, label %bb.ape

bb.apa:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022
  %.not.i6023 = icmp ugt i32 %.pre7453, 1
  br i1 %.not.i6023, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024, label %bb.apb, !prof !224

bb.apb:                                           ; preds = %bb.apa
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 2)
  %.pre7449 = load ptr, ptr %i.gen, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert7450 = getelementptr inbounds nuw i8, ptr %.pre7449, i64 4
  %.sroa.0891.0.copyload.pre = load i32, ptr %.phi.trans.insert7450, align 4, !tbaa !48
  %.pre7452.pre = load i32, ptr %i.geo, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024:   ; preds = %bb.apa, %bb.apb
  %.pre7452 = phi i32 [ %.pre7453, %bb.apa ], [ %.pre7452.pre, %bb.apb ] ; 2 uses
  %.sroa.0891.0.copyload = phi i32 [ %i.ggu, %bb.apa ], [ %.sroa.0891.0.copyload.pre, %bb.apb ]
  %i.ggx = phi ptr [ %i.ggs, %bb.apa ], [ %.pre7449, %bb.apb ]
  %i.ggy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ggz = load ptr, ptr %i.ggy, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.gha = getelementptr inbounds nuw i8, ptr %i.ggz, i64 48
  %i.ghb = lshr i32 %.sroa.0891.0.copyload, 4
  %i.ghc = zext nneg i32 %i.ghb to i64            ; 2 uses
  %i.ghd = load ptr, ptr %i.gha, align 8, !tbaa !75 ; 2 uses
  %i.ghe = getelementptr inbounds nuw [16 x i8], ptr %i.ghd, i64 %i.ghc
  %i.ghf = getelementptr inbounds nuw i8, ptr %i.ghe, i64 8
  %i.ghg = load i64, ptr %i.ghf, align 8, !tbaa !48
  %i.ghh = icmp ult i64 %i.ghg, 4096
  br i1 %i.ghh, label %bb.apc, label %bb.ape

bb.apc:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024
  %i.ghi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ghj = load ptr, ptr %i.ghi, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i6025 = icmp ugt i32 %.pre7452, 1
  br i1 %.not.i6025, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6026, label %bb.apd, !prof !224

bb.apd:                                           ; preds = %bb.apc
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 2)
  %.pre7455 = load ptr, ptr %i.gen, align 8, !tbaa !68
  %.phi.trans.insert7456 = getelementptr inbounds nuw i8, ptr %.pre7455, i64 4
  %.sroa.0889.0.copyload.pre = load i32, ptr %.phi.trans.insert7456, align 4, !tbaa !48
  %.pre7458 = load ptr, ptr %i.ggy, align 8, !tbaa !72
  %.phi.trans.insert7459 = getelementptr inbounds nuw i8, ptr %.pre7458, i64 48
  %.pre7460 = load ptr, ptr %.phi.trans.insert7459, align 8, !tbaa !75
  %.pre8143 = lshr i32 %.sroa.0889.0.copyload.pre, 4
  %.pre8145 = zext nneg i32 %.pre8143 to i64
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6026

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6026:   ; preds = %bb.apc, %bb.apd
  %.pre-phi8146 = phi i64 [ %i.ghc, %bb.apc ], [ %.pre8145, %bb.apd ]
  %i.ghk = phi ptr [ %i.ghd, %bb.apc ], [ %.pre7460, %bb.apd ]
  %i.ghl = getelementptr inbounds nuw [16 x i8], ptr %i.ghk, i64 %.pre-phi8146
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.ghl, i64 8
  %i.ghn = load i64, ptr %i.ghm, align 8, !tbaa !48
  %i.gho = trunc i64 %i.ghn to i16
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmpENS1_11RegisterA64Et(ptr noundef nonnull align 8 dereferenceable(184) %i.ghj, i8 %i.ggq, i16 noundef zeroext %i.gho)
  br label %bb.apg

bb.ape:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022
  %i.ghp = phi ptr [ %i.ggx, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024 ], [ %i.ggs, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022 ]
  %i.ghq = phi i32 [ %.pre7452, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6024 ], [ %.pre7453, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6022 ]
  %i.ghr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ghs = load ptr, ptr %i.ghr, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i6027 = icmp ugt i32 %i.ghq, 1
  br i1 %.not.i6027, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6028, label %bb.apf, !prof !224

bb.apf:                                           ; preds = %bb.ape
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 2)
  %.pre7454 = load ptr, ptr %i.gen, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6028

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6028:   ; preds = %bb.ape, %bb.apf
  %i.ght = phi ptr [ %i.ghp, %bb.ape ], [ %.pre7454, %bb.apf ]
  %i.ghu = getelementptr inbounds nuw i8, ptr %i.ght, i64 4
  %.sroa.0886.0.copyload = load i32, ptr %i.ghu, align 4, !tbaa !48
  %i.ghv = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA649tempInt64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0886.0.copyload)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.ghs, i8 %i.ggq, i8 %i.ghv)
  br label %bb.apg

bb.apg:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6028, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6026
  %i.ghw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ghx = load ptr, ptr %i.ghw, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.ghy = tail call noundef zeroext i8 @_ZN4Luau7CodeGen19getNegatedConditionENS0_11IrConditionE(i8 noundef zeroext %i.geu)
  %i.ghz = tail call noundef i32 @_ZN4Luau7CodeGen3A6417getConditionInt64ENS0_11IrConditionE(i8 noundef zeroext %i.ghy)
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bENS1_12ConditionA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.ghx, i32 noundef %i.ghz, ptr noundef nonnull align 4 dereferenceable(8) %i.gey)
  br label %bb.aph

bb.aph:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6018, %bb.apg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6012
  %i.gia = load i32, ptr %i.geo, align 8, !tbaa !67
  %.not.i6029 = icmp ugt i32 %i.gia, 3
  br i1 %.not.i6029, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6030, label %bb.api, !prof !224

bb.api:                                           ; preds = %bb.aph
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gen, i32 noundef 4)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6030

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6030:   ; preds = %bb.aph, %bb.api
  %i.gib = load ptr, ptr %i.gen, align 8, !tbaa !68
  %i.gic = getelementptr inbounds nuw i8, ptr %i.gib, i64 12
  %.sroa.0885.0.copyload = load i32, ptr %i.gic, align 4, !tbaa !48
  call void @_ZN4Luau7CodeGen3A6413IrLoweringA6419finalizeTargetLabelENS0_4IrOpEjRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0885.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %100)
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #15
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.apj:                                           ; preds = %bb.a
  %i.gid = tail call noundef i64 @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillEjSt16initializer_listINS1_11RegisterA64EE(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i32 noundef %2, ptr null, i64 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #15
  store i32 0, ptr %101, align 8, !tbaa !77
  %i.gie = getelementptr inbounds nuw i8, ptr %101, i64 4
  store i32 -1, ptr %i.gie, align 4, !tbaa !78
  %i.gif = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gig = load ptr, ptr %i.gif, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gig, i8 2, i64 5566294043137)
  %i.gih = load ptr, ptr %i.gif, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644cbnzENS1_11RegisterA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.gih, i8 2, ptr noundef nonnull align 4 dereferenceable(8) %101)
  %i.gii = load ptr, ptr %i.gif, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.gij = call i64 @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelEv(ptr noundef nonnull align 8 dereferenceable(184) %i.gii)
  %i.gik = getelementptr inbounds nuw i8, ptr %0, i64 2520
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #15
  %i.gil = load i64, ptr %101, align 8, !tbaa !103
  store i64 %i.gil, ptr %102, align 8, !tbaa !103
  %i.gim = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.gin = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gio = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gip = load i32, ptr %i.gio, align 8, !tbaa !67
  %.not.i6031.not = icmp eq i32 %i.gip, 0
  br i1 %.not.i6031.not, label %bb.apk, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6032, !prof !223

bb.apk:                                           ; preds = %bb.apj
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gin, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6032

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6032:   ; preds = %bb.apj, %bb.apk
  %i.giq = load ptr, ptr %i.gin, align 8, !tbaa !68
  %.sroa.0880.0.copyload = load i32, ptr %i.giq, align 4, !tbaa !48
  %i.gir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gis = load ptr, ptr %i.gir, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.git = getelementptr inbounds nuw i8, ptr %i.gis, i64 48
  %i.giu = lshr i32 %.sroa.0880.0.copyload, 4
  %i.giv = zext nneg i32 %i.giu to i64
  %i.giw = load ptr, ptr %i.git, align 8, !tbaa !75
  %i.gix = getelementptr inbounds nuw [16 x i8], ptr %i.giw, i64 %i.giv
  %i.giy = getelementptr inbounds nuw i8, ptr %i.gix, i64 8
  %i.giz = load i32, ptr %i.giy, align 8, !tbaa !48
  store i32 %i.giz, ptr %i.gim, align 8, !tbaa !109
  %i.gja = getelementptr inbounds nuw i8, ptr %102, i64 12
  store i64 %i.gij, ptr %i.gja, align 4, !tbaa !103
  call void @_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6416InterruptHandlerESaIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.gik, ptr noundef nonnull align 4 dereferenceable(20) %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #15
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.apl:                                           ; preds = %bb.a
  %i.gjb = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i8 noundef zeroext 2) ; 2 uses
  %i.gjc = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i8 noundef zeroext 2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #15
  store i32 0, ptr %103, align 4, !tbaa !77
  %i.gjd = getelementptr inbounds nuw i8, ptr %103, i64 4
  store i32 -1, ptr %i.gjd, align 4, !tbaa !78
  %i.gje = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.gjf = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldpENS1_11RegisterA64ES3_NS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gjf, i8 %i.gjb, i8 %i.gjc, i64 274894334465)
  %i.gjg = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.gjg, i8 %i.gjb, i8 %i.gjc)
  %i.gjh = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bENS1_12ConditionA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.gjh, i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(8) %103)
  %i.gji = call noundef i64 @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillEjSt16initializer_listINS1_11RegisterA64EE(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i32 noundef %2, ptr null, i64 0)
  %i.gjj = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.gjj, i8 2, i8 -102)
  %i.gjk = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %i.gjk, i8 9, i32 noundef 1)
  %i.gjl = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gjl, i8 18, i64 859009884673)
  %i.gjm = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643blrENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gjm, i8 18)
  %i.gjn = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gjn, i8 -54, i64 68735900161)
  call void @_ZN4Luau7CodeGen3A6413IrRegAllocA647restoreEm(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i64 noundef %i.gji)
  %i.gjo = load ptr, ptr %i.gje, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.gjo, ptr noundef nonnull align 4 dereferenceable(8) %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #15
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.apm:                                           ; preds = %bb.a
  %i.gjp = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #15
  store i32 0, ptr %104, align 4, !tbaa !77
  %i.gjq = getelementptr inbounds nuw i8, ptr %104, i64 4
  store i32 -1, ptr %i.gjq, align 4, !tbaa !78
  %i.gjr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.gjs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gjt = load i32, ptr %i.gjs, align 8, !tbaa !67
  %.not.i6033.not = icmp eq i32 %i.gjt, 0
  br i1 %.not.i6033.not, label %bb.apn, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6034, !prof !223

bb.apn:                                           ; preds = %bb.apm
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gjr, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6034

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6034:   ; preds = %bb.apm, %bb.apn
  %i.gju = load ptr, ptr %i.gjr, align 8, !tbaa !68
  %.sroa.0861.0.copyload = load i32, ptr %i.gju, align 4, !tbaa !48
  %i.gjv = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0861.0.copyload)
  %i.gjw = load i32, ptr %i.gjs, align 8, !tbaa !67 ; 2 uses
  %.not.i6035 = icmp ugt i32 %i.gjw, 1
  br i1 %.not.i6035, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6036, label %bb.apo, !prof !224

bb.apo:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6034
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gjr, i32 noundef 2)
  %.pre7426 = load i32, ptr %i.gjs, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6036

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6036:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6034, %bb.apo
  %i.gjx = phi i32 [ %i.gjw, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6034 ], [ %.pre7426, %bb.apo ]
  %i.gjy = load ptr, ptr %i.gjr, align 8, !tbaa !68 ; 2 uses
  %i.gjz = getelementptr inbounds nuw i8, ptr %i.gjy, i64 4
  %.sroa.0858.0.copyload = load i32, ptr %i.gjz, align 4, !tbaa !48
  %.not.i6037 = icmp ugt i32 %i.gjx, 2
  br i1 %.not.i6037, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6038, label %bb.app, !prof !224

bb.app:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6036
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gjr, i32 noundef 3)
  %.pre7427 = load ptr, ptr %i.gjr, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6038

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6038:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6036, %bb.app
  %i.gka = phi ptr [ %i.gjy, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6036 ], [ %.pre7427, %bb.app ]
  %i.gkb = getelementptr inbounds nuw i8, ptr %i.gka, i64 8
  %i.gkc = load i32, ptr %i.gkb, align 4          ; 2 uses
  %i.gkd = and i32 %i.gkc, 15
  %i.gke = icmp eq i32 %i.gkd, 1
  br i1 %i.gke, label %bb.aps, label %bb.apq

bb.apq:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6038
  %i.gkf = load i32, ptr %i.gjs, align 8, !tbaa !67
  %.not.i6039 = icmp ugt i32 %i.gkf, 2
  br i1 %.not.i6039, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6040, label %bb.apr, !prof !224

bb.apr:                                           ; preds = %bb.apq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gjr, i32 noundef 3)
  %.pre7428 = load ptr, ptr %i.gjr, align 8, !tbaa !68
  %.phi.trans.insert7429 = getelementptr inbounds nuw i8, ptr %.pre7428, i64 8
  %.sroa.0857.0.copyload.pre = load i32, ptr %.phi.trans.insert7429, align 4, !tbaa !48
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6040

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6040:   ; preds = %bb.apq, %bb.apr
  %.sroa.0857.0.copyload = phi i32 [ %i.gkc, %bb.apq ], [ %.sroa.0857.0.copyload.pre, %bb.apr ]
  %i.gkg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gkh = load ptr, ptr %i.gkg, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.gki = getelementptr inbounds nuw i8, ptr %i.gkh, i64 48
  %i.gkj = lshr i32 %.sroa.0857.0.copyload, 4
  %i.gkk = zext nneg i32 %i.gkj to i64
  %i.gkl = load ptr, ptr %i.gki, align 8, !tbaa !75
  %i.gkm = getelementptr inbounds nuw [16 x i8], ptr %i.gkl, i64 %i.gkk
  %i.gkn = getelementptr inbounds nuw i8, ptr %i.gkm, i64 8
  %i.gko = load i8, ptr %i.gkn, align 8, !tbaa !48
  %i.gkp = zext i8 %i.gko to i32
  br label %bb.aps

bb.aps:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6038, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6040
  %i.gkq = phi i32 [ %i.gkp, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6040 ], [ -1, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6038 ]
  call void @_ZN4Luau7CodeGen3A6413IrLoweringA6428checkObjectBarrierConditionsENS1_11RegisterA64ES3_S3_NS0_4IrOpEiRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i8 %i.gjv, i8 %i.gjp, i8 0, i32 %.sroa.0858.0.copyload, i32 noundef %i.gkq, ptr noundef nonnull align 4 dereferenceable(8) %104)
  %i.gkr = load i32, ptr %i.gjs, align 8, !tbaa !67
  %.not.i6041.not = icmp eq i32 %i.gkr, 0
  br i1 %.not.i6041.not, label %bb.apt, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6042, !prof !223

bb.apt:                                           ; preds = %bb.aps
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gjr, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6042

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6042:   ; preds = %bb.aps, %bb.apt
  %i.gks = load ptr, ptr %i.gjr, align 8, !tbaa !68
  %.sroa.0855.0.copyload = load i32, ptr %i.gks, align 4, !tbaa !48
  %i.gkt = call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0855.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #15
  store i8 %i.gkt, ptr %105, align 1, !tbaa !48
  %i.gku = call noundef i64 @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillEjSt16initializer_listINS1_11RegisterA64EE(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i32 noundef %2, ptr nonnull %105, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #15
  %i.gkv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.gkw = load ptr, ptr %i.gkv, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.gkw, i8 10, i8 %i.gkt)
  %i.gkx = load ptr, ptr %i.gkv, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.gkx, i8 2, i8 -102)
  %i.gky = load ptr, ptr %i.gkv, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.gkz = load i32, ptr %i.gjs, align 8, !tbaa !67
  %.not.i6043 = icmp ugt i32 %i.gkz, 1
  br i1 %.not.i6043, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6044, label %bb.apu, !prof !224

bb.apu:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6042
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gjr, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6044

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6044:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6042, %bb.apu
  %i.gla = load ptr, ptr %i.gjr, align 8, !tbaa !68
  %i.glb = getelementptr inbounds nuw i8, ptr %i.gla, i64 4
  %.sroa.0845.0.copyload = load i32, ptr %i.glb, align 4, !tbaa !48
  %i.glc = and i32 %.sroa.0845.0.copyload, -16
  %.sroa.46811.0.insert.ext = zext i32 %i.glc to i64
  %.sroa.46811.0.insert.shift = shl nuw i64 %.sroa.46811.0.insert.ext, 32
  %.sroa.06807.0.insert.insert = or disjoint i64 %.sroa.46811.0.insert.shift, 16435713
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gky, i8 18, i64 %.sroa.06807.0.insert.insert)
  %i.gld = load ptr, ptr %i.gkv, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gld, i8 26, i64 790290407937)
  %i.gle = load ptr, ptr %i.gkv, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643blrENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.gle, i8 26)
  call void @_ZN4Luau7CodeGen3A6413IrRegAllocA647restoreEm(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i64 noundef %i.gku)
  %i.glf = load ptr, ptr %i.gkv, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.glf, ptr noundef nonnull align 4 dereferenceable(8) %104)
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #15
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.apv:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #15
  store i32 0, ptr %106, align 4, !tbaa !77
  %i.glg = getelementptr inbounds nuw i8, ptr %106, i64 4
  store i32 -1, ptr %i.glg, align 4, !tbaa !78
  %i.glh = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i8 noundef zeroext 1) ; 2 uses
  %i.gli = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.glj = load ptr, ptr %i.gli, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.glk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.gll = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.glm = load i32, ptr %i.gll, align 8, !tbaa !67
  %.not.i6045.not = icmp eq i32 %i.glm, 0
  br i1 %.not.i6045.not, label %bb.apw, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6046, !prof !223

bb.apw:                                           ; preds = %bb.apv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.glk, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6046

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6046:   ; preds = %bb.apv, %bb.apw
  %i.gln = load ptr, ptr %i.glk, align 8, !tbaa !68
  %.sroa.0837.0.copyload = load i32, ptr %i.gln, align 4, !tbaa !48
  %i.glo = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.0837.0.copyload)
  %.sroa.26798.0.insert.ext = zext i8 %i.glo to i64
  %.sroa.26798.0.insert.shift = shl nuw nsw i64 %.sroa.26798.0.insert.ext, 8
  %.sroa.06797.0.insert.insert = or disjoint i64 %.sroa.26798.0.insert.shift, 4311351297
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644ldrbENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.glj, i8 %i.glh, i64 %.sroa.06797.0.insert.insert)
  %i.glp = load ptr, ptr %i.gli, align 8, !tbaa !69, !nonnull !70, !align !71
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643tbzENS1_11RegisterA64EhRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.glp, i8 %i.glh, i8 noundef zeroext 2, ptr noundef nonnull align 4 dereferenceable(8) %106)
  %i.glq = load i32, ptr %i.gll, align 8, !tbaa !67
  %.not.i6047.not = icmp eq i32 %i.glq, 0
  br i1 %.not.i6047.not, label %bb.apx, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6048, !prof !223

bb.apx:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6046
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.glk, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit6048

end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3A6413IrLoweringA6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE:bb.a
    i32 1, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = lshr i32 %1, 4                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.e = load i64, ptr %i.d, align 8, !tbaa !180
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.h = load i32, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %i.i = icmp eq i32 %i.c, %i.h
  br i1 %i.i, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.k = load i64, ptr %i.j, align 8, !tbaa !181
  %i.l = add i64 %i.k, -1                         ; 3 uses
  %i.m = zext nneg i32 %i.c to i64
  %i.n = and i64 %i.l, %i.m
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.t, %bb.g ]
  %.01931.i.i = phi i64 [ %i.n, %bb.d ], [ %i.v, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.01931.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !103  ; 2 uses
  %i.r = icmp eq i32 %i.q, %i.c
  br i1 %i.r, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %i.q, %i.h
  br i1 %i.s, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %.01832.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01931.i.i
  %i.v = and i64 %i.u, %i.l
  %.not.i.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.e, !llvm.loop !0

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.01931.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.z = load i32, ptr %i.x, align 4, !tbaa !103
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.aa
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.af = lshr i32 %1, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw [36 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread: ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit, %bb.a, %bb.h
  %.1 = phi ptr [ %i.aj, %bb.h ], [ %3, %bb.a ], [ %i.ac, %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit ], [ %3, %bb.c ], [ %3, %bb.b ], [ %3, %bb.f ], [ %3, %bb.g ]
  ret ptr %.1
}

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cbzENS1_11RegisterA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184), i8, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643rorENS1_11RegisterA64ES3_h(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644ccmnENS1_11RegisterA64EhNS1_12ConditionA64Eh(ptr noundef nonnull align 8 dereferenceable(184), i8, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau7CodeGen3A6417getConditionInt64ENS0_11IrConditionE(i8 noundef zeroext %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp ult i8 %0, 14
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau7CodeGen3A6417getConditionInt64ENS0_11IrConditionE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 14, %bb.a ]
  ret i32 %.0
}

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bENS1_12ConditionA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrLoweringA6419finalizeTargetLabelENS0_4IrOpEjRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %i.a = and i32 %1, 15
  switch i32 %i.a, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit [
    i32 1, label %bb.b
    i32 5, label %bb.c
    i32 9, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69, !nonnull !70, !align !71 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.d, align 4, !tbaa !78
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643udfEv(ptr noundef nonnull align 8 dereferenceable(184) %i.c)
  call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72, !nonnull !70, !align !71 ; 4 uses
  %i.g = lshr i32 %1, 4                           ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %i.h
  %i.k = load i8, ptr %i.j, align 4, !tbaa !182
  %i.l = icmp eq i8 %i.k, 4
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.o = load i32, ptr %i.n, align 8, !tbaa !103
  %i.p = icmp ne i32 %2, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.r = load i64, ptr %i.q, align 8, !tbaa !239
  %i.s = add i64 %i.r, -1                         ; 3 uses
  %i.t = zext i32 %2 to i64
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !103
  %i.y = icmp eq i32 %i.x, %2
  br i1 %i.y, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.01927.i.i36 = phi i64 [ %i.ab, %.lr.ph ], [ %i.u, %bb.d ]
  %.01828.i.i35 = phi i64 [ %i.z, %.lr.ph ], [ 0, %bb.d ]
  %i.z = add i64 %.01828.i.i35, 1                 ; 3 uses
  %i.aa = add i64 %i.z, %.01927.i.i36
  %i.ab = and i64 %i.aa, %i.s                     ; 2 uses
  %.not.i.i = icmp ule i64 %i.z, %i.s
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  %i.ae = icmp eq i32 %i.ad, %2
  br i1 %i.ae, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %.lr.ph

_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit: ; preds = %.lr.ph, %bb.d
  %.lcssa = phi ptr [ %i.w, %bb.d ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !242 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !243 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx = shl nuw nsw i64 %i.aj, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %.not2337 = icmp eq i32 %i.ai, 0
  br i1 %.not2337, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph39, %bb.e
  %.038 = phi ptr [ %i.ag, %.lr.ph39 ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %.038, align 4, !tbaa !48
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = lshr i32 %.sroa.03.0.copyload, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !178
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aq, i64 %i.ap
  tail call void @_ZN4Luau7CodeGen3A6413IrRegAllocA6420recordAndFreeLastUseEjRNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(389) %i.al, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(59) %i.ar, i32 noundef %2)
  %i.as = getelementptr inbounds nuw i8, ptr %.038, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.as, %i.ak
  br i1 %.not23, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.at = load i32, ptr %3, align 4, !tbaa !77
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2544 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !244
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 12
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 3 uses
  %i.be = lshr i32 %1, 4                          ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !180 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !181 ; 4 uses
  %i.bj = mul i64 %i.bi, 3
  %i.bk = lshr i64 %i.bj, 2
  %.not.i.i24 = icmp ult i64 %i.bg, %i.bk
  br i1 %.not.i.i24, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = icmp eq i64 %i.bg, 0
  br i1 %i.bl, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !103 ; 2 uses
  %i.bo = icmp eq i32 %i.be, %i.bn
  br i1 %i.bo, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = add i64 %i.bi, -1                       ; 3 uses
  %i.bq = zext nneg i32 %i.be to i64
  %i.br = and i64 %i.bp, %i.bq
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.01832.i.i.i = phi i64 [ 0, %bb.j ], [ %i.bx, %bb.m ]
  %.01931.i.i.i = phi i64 [ %i.br, %bb.j ], [ %i.bz, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.01931.i.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !103 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp eq i32 %i.bu, %i.bn
  br i1 %i.bw, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.by = add i64 %i.bx, %.01931.i.i.i
  %i.bz = and i64 %i.by, %i.bp
  %.not.i.i.i = icmp ugt i64 %i.bx, %i.bp
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.k, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
  %.pre.i = load i64, ptr %i.bh, align 8, !tbaa !181
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.g
  %i.ca = phi i64 [ %.pre.i, %.loopexit.i.i ], [ %i.bi, %bb.g ], [ %i.bi, %bb.k ]
  %i.cb = add i64 %i.ca, -1                       ; 3 uses
  %i.cc = zext nneg i32 %i.be to i64
  %i.cd = and i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = load ptr, ptr %i.bd, align 8, !tbaa !52 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !103 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !103 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, %i.cg
  br i1 %i.cj, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.n, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.cd, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ], [ %i.cr, %bb.n ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.02134.i.lcssa5.i
  store i32 %i.be, ptr %i.ck, align 4, !tbaa !184
  %i.cl = load i64, ptr %i.bf, align 8, !tbaa !180
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.bf, align 8, !tbaa !180
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, %bb.n
  %i.cn = phi i32 [ %i.ct, %bb.n ], [ %i.ci, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.cr, %bb.n ], [ %i.cd, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.cp, %bb.n ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %i.co = icmp eq i32 %i.cn, %i.be
  br i1 %i.co, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.cp = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.cq = add i64 %i.cp, %.02134.i7.i
  %i.cr = and i64 %i.cq, %i.cb                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.cp, %i.cb
  tail call void @llvm.assume(i1 %.not.i3.i)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !103 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cg
  br i1 %i.cu, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %i.cv = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.bc, ptr %i.cx, align 4, !tbaa !103
  %i.cy = load i64, ptr %3, align 4, !tbaa !103   ; 2 uses
  %i.cz = load ptr, ptr %i.av, align 8, !tbaa !244 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !54
  %.not.i.i25 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit
  store i64 %i.cy, ptr %i.cz, align 4, !tbaa !103
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %i.be, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !103
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store ptr %i.dc, ptr %i.av, align 8, !tbaa !244
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit

bb.p:                                             ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEixERKj.exit
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !53 ; 5 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.q, label %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.di = sdiv exact i64 %i.dg, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 768614336404564650)
  %i.dm = select i1 %i.dk, i64 768614336404564650, i64 %i.dl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = mul nuw nsw i64 %i.dm, 12
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #18 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg ; 2 uses
  store i64 %i.cy, ptr %i.dp, align 4, !tbaa !103
  %.sroa.5.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %i.be, ptr %.sroa.5.0..sroa_idx27, align 4, !tbaa !103
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ %i.do, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %i.dd, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !245, !alias.scope !246
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dq, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !238

_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.do, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dr, %.lr.ph.i.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %i.dt = load ptr, ptr %i.da, align 8, !tbaa !54
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dv) #16
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.do, ptr %i.au, align 8, !tbaa !53
  store ptr %i.ds, ptr %i.av, align 8, !tbaa !244
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dw, ptr %i.da, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.e, %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.o, %bb.c, %bb.a, %bb.f, %bb.b
  ret void
}

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644udivENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643eorENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644sbfxENS1_11RegisterA64ES3_hh(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644faddENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fsubENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmulENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fdivENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646frintmENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmlaENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fcmpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645fcselENS1_11RegisterA64ES3_S3_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fnegENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646frintpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646frintaENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645fsqrtENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fabsENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645fcmpzENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184), i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184), i8, double noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fmovENS1_11RegisterA64Ef(ptr noundef nonnull align 8 dereferenceable(184), i8, float noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648fcmeq_4sENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643bitENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA647umov_4sENS1_11RegisterA64ES3_h(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644cbnzENS1_11RegisterA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184), i8, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648fcmgt_4sENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643bifENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645faddpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184), i8, i8) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646dup_4sENS1_11RegisterA64ES3_h(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643eorENS1_11RegisterA64ES3_j(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644csetENS1_11RegisterA64ENS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184), i8, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau7CodeGen3A6419getInverseConditionENS1_12ConditionA64E(i32 noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 14
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau7CodeGen3A6419getInverseConditionENS1_12ConditionA64E, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 15, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau7CodeGen3A6415getConditionIntENS0_11IrConditionE(i8 noundef zeroext %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp ult i8 %0, 14
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau7CodeGen3A6415getConditionIntENS0_11IrConditionE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 14, %bb.a ]
  ret i32 %.0
}

declare void @_ZN4Luau7CodeGen3A6413IrRegAllocA647freeRegENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(389), i8) local_unnamed_addr #2

declare noundef i64 @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillEjSt16initializer_listINS1_11RegisterA64EE(ptr noundef nonnull align 8 dereferenceable(389), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643blrENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184), i8) local_unnamed_addr #2

declare i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA647takeRegENS1_11RegisterA64Ej(ptr noundef nonnull align 8 dereferenceable(389), i8, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6413IrRegAllocA647restoreEm(ptr noundef nonnull align 8 dereferenceable(389), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643orrENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184), i8, i8, i8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2609) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !102
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(36) ptr @_ZNK4Luau7CodeGen3A6413IrLoweringA647blockOpENS0_4IrOpE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2609) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.c = lshr i32 %1, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %i.d
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4Luau7CodeGen3A6413IrLoweringA647labelOpENS0_4IrOpE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2609) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.c = lshr i32 %1, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  ret ptr %i.g
}
end_hunk_1
