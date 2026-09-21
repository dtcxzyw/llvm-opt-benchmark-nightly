Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGCall?download=true
inline.NumInlined: 11709
inline.NumDeleted: 6226
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEb:_ZNK5clang7CodeGen8CGCallee15getAbstractInfoEv.exit
  %storemerge.i968 = select i1 %i.anv, i64 %.sroa.52542.0.copyload, i64 0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.14.7..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #27
  store i64 %.sink10.i966, ptr %123, align 8, !tbaa !64
  store ptr %.sink.i967, ptr %.sroa.91470.0..sroa_idx, align 8, !tbaa !947
  store i64 %storemerge.i968, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !72
  store i8 0, ptr %.sroa.111487.0..sroa_idx, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14, i64 23, i1 false), !tbaa.struct !2359
  call void @_ZNK5clang7CodeGen7CallArg8copyIntoERNS0_15CodeGenFunctionENS0_7AddressE(ptr noundef nonnull align 8 dereferenceable(160) %.04722884, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %123)
  br label %bb.eo

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81527)
  br i1 %i.ano, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %.sroa.31537.0..0472.sroa_idx = getelementptr inbounds nuw i8, ptr %.04722884, i64 8
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %.sink3086 = phi i64 [ 16, %bb.em ], [ 8, %bb.el ]
  %.sink3085 = phi i64 [ 24, %bb.em ], [ 16, %bb.el ]
  %.sink3084 = phi i64 [ 32, %bb.em ], [ 24, %bb.el ]
  %.sink = phi i64 [ 33, %bb.em ], [ 25, %bb.el ]
  %.sroa.01516.0.in = phi ptr [ %.sroa.31537.0..0472.sroa_idx, %bb.em ], [ %.04722884, %bb.el ]
  %.sroa.01516.0 = load i64, ptr %.sroa.01516.0.in, align 8
  %.sroa.41531.0..0472.sroa_idx = getelementptr inbounds nuw i8, ptr %.04722884, i64 %.sink3086
  %.sroa.41531.0.copyload = load ptr, ptr %.sroa.41531.0..0472.sroa_idx, align 8
  %.sroa.51532.0..0472.sroa_idx = getelementptr inbounds nuw i8, ptr %.04722884, i64 %.sink3085
  %.sroa.51532.0.copyload = load i64, ptr %.sroa.51532.0..0472.sroa_idx, align 8
  %.sroa.61533.0..0472.sroa_idx = getelementptr inbounds nuw i8, ptr %.04722884, i64 %.sink3084
  %.sroa.61533.0.copyload = load i8, ptr %.sroa.61533.0..0472.sroa_idx, align 8
  %.sroa.71534.0..0472.sroa_idx = getelementptr inbounds nuw i8, ptr %.04722884, i64 %.sink
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.81527, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.71534.0..0472.sroa_idx, i64 23, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.81527, i64 23, i1 false), !tbaa.struct !2359
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81527)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ek
  %.sroa.01465.0 = phi i64 [ %.sroa.01516.0, %bb.en ], [ %.sink10.i966, %bb.ek ] ; 3 uses
  %.sroa.91470.0 = phi ptr [ %.sroa.41531.0.copyload, %bb.en ], [ %.sink.i967, %bb.ek ]
  %.sroa.10.0 = phi i64 [ %.sroa.51532.0.copyload, %bb.en ], [ %storemerge.i968, %bb.ek ] ; 2 uses
  %.sroa.111487.0 = phi i8 [ %.sroa.61533.0.copyload, %bb.en ], [ 0, %bb.ek ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.51515.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14, i64 23, i1 false)
  store i64 %.sroa.10.0, ptr %.sroa.31513.0..sroa_idx, align 8
  store i8 %.sroa.111487.0, ptr %.sroa.41514.0..sroa_idx, align 8
  %i.anx = getelementptr inbounds nuw i8, ptr %.04712889, i64 24
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !64, !noalias !2360 ; 2 uses
  %.not.i969 = icmp eq i32 %i.any, 0
  br i1 %.not.i969, label %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984, label %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970

_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970: ; preds = %bb.eo
  %i.anz = load ptr, ptr %i.lh, align 8, !tbaa !1235, !noalias !2360
  %i.aoa = load ptr, ptr %i.mj, align 8, !tbaa !1236, !noalias !2361
  %.not.i.i971 = icmp eq ptr %i.aoa, null
  %i.aob = and i64 %.sroa.01465.0, -4
  %.sroa.024.0.i973 = select i1 %.not.i.i971, i64 %i.aob, i64 %.sroa.01465.0
  store i64 %.sroa.024.0.i973, ptr %49, align 8, !tbaa !64, !noalias !2360
  store ptr %i.anz, ptr %.sroa.21512.0..sroa_idx, align 8, !tbaa !947, !noalias !2360
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27, !noalias !2360
  %i.aoc = zext i32 %i.any to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27, !noalias !2360
  store i16 257, ptr %i.mk, align 8, !noalias !2360
  call void @_ZN5clang7CodeGen11CGBuilderTy26CreateConstInBoundsByteGEPENS0_7AddressENS_9CharUnitsERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %47, ptr noundef nonnull align 8 dereferenceable(128) %i.kh, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %49, i64 %i.aoc, ptr noundef nonnull align 8 dereferenceable(34) %48), !noalias !2360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(48) %47, i64 48, i1 false), !tbaa.struct !1214, !noalias !2360
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27, !noalias !2360
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27, !noalias !2360
  %i.aod = load ptr, ptr %i.oi, align 8, !tbaa !91, !noalias !2360
  %i.aoe = load ptr, ptr %i.mj, align 8, !tbaa !1236, !noalias !2362
  %.not.i5.i978 = icmp eq ptr %i.aoe, null
  %.0.copyload.i.i.i.i.i6.i979 = load i64, ptr %49, align 8, !noalias !2360 ; 2 uses
  %i.aof = and i64 %.0.copyload.i.i.i.i.i6.i979, -4
  %.sroa.0.0.i980 = select i1 %.not.i5.i978, i64 %i.aof, i64 %.0.copyload.i.i.i.i.i6.i979
  %.sroa.51507.0.copyload.pre = load i64, ptr %.sroa.31513.0..sroa_idx, align 8, !tbaa !72
  %.sroa.61508.0.copyload.pre = load i8, ptr %.sroa.41514.0..sroa_idx, align 8, !tbaa !64
  br label %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984

_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984: ; preds = %bb.eo, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970
  %.sroa.61508.0.copyload = phi i8 [ %.sroa.111487.0, %bb.eo ], [ %.sroa.61508.0.copyload.pre, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970 ]
  %.sroa.51507.0.copyload = phi i64 [ %.sroa.10.0, %bb.eo ], [ %.sroa.51507.0.copyload.pre, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970 ]
  %.sroa.41506.0.copyload = phi ptr [ %.sroa.91470.0, %bb.eo ], [ %i.aod, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970 ]
  %.sroa.01505.0.copyload = phi i64 [ %.sroa.01465.0, %bb.eo ], [ %.sroa.0.0.i980, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit.i970 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.51515.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  %i.aog = load ptr, ptr %i.o, align 8, !tbaa !1181, !nonnull !59, !align !60
  %i.aoh = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang7CodeGen13CodeGenModule10getABIInfoEv(ptr noundef nonnull align 8 dereferenceable(4008) %i.aog) #27 ; 2 uses
  store i64 %.sroa.01505.0.copyload, ptr %124, align 8, !tbaa !64
  store ptr %.sroa.41506.0.copyload, ptr %.sroa.91470.0..sroa_idx1477, align 8, !tbaa !947
  store i64 %.sroa.51507.0.copyload, ptr %.sroa.10.0..sroa_idx1485, align 8, !tbaa !72
  store i8 %.sroa.61508.0.copyload, ptr %.sroa.111487.0..sroa_idx1494, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14.0..sroa_idx1499, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14, i64 23, i1 false), !tbaa.struct !2359
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !62
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 120
  %i.aok = load ptr, ptr %i.aoj, align 8
  %i.aol = call noundef ptr %i.aok(ptr noundef nonnull align 8 dereferenceable(20) %i.aoh, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %124, ptr noundef nonnull align 8 dereferenceable(27) %i.oi, ptr noundef nonnull align 8 dereferenceable(6288) %1) #27
  %i.aom = and i64 %i.oy, 4294967295
  %i.aon = load ptr, ptr %74, align 8, !tbaa !74
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr %i.aon, i64 %i.aom
  store ptr %i.aol, ptr %i.aoo, align 8, !tbaa !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %.loopexit2794

.loopexit2794:                                    ; preds = %bb.dq, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904, %bb.dw, %._crit_edge2858, %.critedge585, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984, %bb.ei, %bb.eh, %bb.da, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit, %bb.bz, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit
  %.sroa.42021.1 = phi i8 [ %.sroa.42021.02860, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %.sroa.42021.02860, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.sroa.42021.02860, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %.sroa.42021.02860, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %i.xv, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %.sroa.42021.02860, %.critedge585 ], [ %.sroa.42021.02860, %bb.bz ], [ %.sroa.42021.02860, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %.sroa.42021.02860, %bb.ei ], [ %.sroa.42021.02860, %bb.da ], [ %.sroa.42021.02860, %bb.eh ], [ %.sroa.42021.02860, %._crit_edge2858 ], [ %.sroa.42021.02860, %bb.dw ], [ %.sroa.42021.02860, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %.sroa.42021.02860, %bb.dq ]
  %.sroa.72142.2 = phi i64 [ %.sroa.72142.02874, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %.sroa.72142.02874, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.sroa.72142.02874, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %.sroa.72142.02874, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %.sroa.72142.02874, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %.sroa.72142.02874, %.critedge585 ], [ %.sroa.72142.02874, %bb.bz ], [ %.sroa.72142.02874, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %.sroa.72142.02874, %bb.ei ], [ %.sroa.72142.1, %bb.da ], [ %.sroa.72142.02874, %bb.eh ], [ %.sroa.72142.02874, %._crit_edge2858 ], [ %.sroa.72142.02874, %bb.dw ], [ %.sroa.72142.02874, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %.sroa.72142.02874, %bb.dq ] ; 2 uses
  %.sroa.02137.2 = phi i64 [ %.sroa.02137.02876, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %.sroa.02137.02876, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.sroa.02137.02876, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %.sroa.02137.02876, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %.sroa.02137.02876, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %.sroa.02137.02876, %.critedge585 ], [ %.sroa.02137.02876, %bb.bz ], [ %.sroa.02137.02876, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %.sroa.02137.02876, %bb.ei ], [ %.sroa.02137.1, %bb.da ], [ %.sroa.02137.02876, %bb.eh ], [ %.sroa.02137.02876, %._crit_edge2858 ], [ %.sroa.02137.02876, %bb.dw ], [ %.sroa.02137.02876, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %.sroa.02137.02876, %bb.dq ] ; 2 uses
  %.sroa.02176.2 = phi i64 [ %.sroa.02176.02878, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %.sroa.02176.02878, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.sroa.02176.02878, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %.sroa.02176.02878, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %.sroa.02176.02878, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %.sroa.02176.02878, %.critedge585 ], [ %.sroa.02176.02878, %bb.bz ], [ %.sroa.02176.02878, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %.sroa.02176.02878, %bb.ei ], [ %.sroa.02176.1, %bb.da ], [ %.sroa.02176.02878, %bb.eh ], [ %.sroa.02176.02878, %._crit_edge2858 ], [ %.sroa.02176.02878, %bb.dw ], [ %.sroa.02176.02878, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %.sroa.02176.02878, %bb.dq ] ; 2 uses
  %.sroa.82179.sroa.6.2 = phi i64 [ %.sroa.82179.sroa.6.02880, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %.sroa.82179.sroa.6.02880, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.sroa.82179.sroa.6.02880, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %.sroa.82179.sroa.6.02880, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %.sroa.82179.sroa.6.02880, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %.sroa.82179.sroa.6.02880, %.critedge585 ], [ %.sroa.82179.sroa.6.02880, %bb.bz ], [ %.sroa.82179.sroa.6.02880, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %.sroa.82179.sroa.6.02880, %bb.ei ], [ %.sroa.82179.sroa.6.1, %bb.da ], [ %.sroa.82179.sroa.6.02880, %bb.eh ], [ %.sroa.82179.sroa.6.02880, %._crit_edge2858 ], [ %.sroa.82179.sroa.6.02880, %bb.dw ], [ %.sroa.82179.sroa.6.02880, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %.sroa.82179.sroa.6.02880, %bb.dq ] ; 2 uses
  %.sroa.82179.sroa.0.2 = phi ptr [ %.sroa.82179.sroa.0.02882, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %.sroa.82179.sroa.0.02882, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.sroa.82179.sroa.0.02882, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %.sroa.82179.sroa.0.02882, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %.sroa.82179.sroa.0.02882, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %.sroa.82179.sroa.0.02882, %.critedge585 ], [ %.sroa.82179.sroa.0.02882, %bb.bz ], [ %.sroa.82179.sroa.0.02882, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %.sroa.82179.sroa.0.02882, %bb.ei ], [ %.sroa.82179.sroa.0.1, %bb.da ], [ %.sroa.82179.sroa.0.02882, %bb.eh ], [ %.sroa.82179.sroa.0.02882, %._crit_edge2858 ], [ %.sroa.82179.sroa.0.02882, %bb.dw ], [ %.sroa.82179.sroa.0.02882, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %.sroa.82179.sroa.0.02882, %bb.dq ] ; 2 uses
  %i.aop = phi i8 [ %i.oh, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %i.oh, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %i.oh, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %i.st, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %i.oh, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %i.oh, %.critedge585 ], [ %i.oh, %bb.bz ], [ %i.oh, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %i.oh, %bb.ei ], [ %i.oh, %bb.da ], [ %i.oh, %bb.eh ], [ %i.oh, %._crit_edge2858 ], [ %i.oh, %bb.dw ], [ %i.oh, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %i.oh, %bb.dq ]
  %i.aoq = phi i8 [ %i.og, %_ZL20IsArgumentMaybeUndefPKN5clang4DeclEjj.exit ], [ %i.og, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %i.og, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit ], [ %i.og, %_ZN5clang7CodeGen11CGBuilderTy15CreateStructGEPENS0_7AddressEjRKN4llvm5TwineE.exit762 ], [ %i.yv, %_ZN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction15CallLifetimeEndEE12emplace_backIJRNS2_10RawAddressEEEERS4_DpOT_.exit ], [ %i.og, %.critedge585 ], [ %i.og, %bb.bz ], [ %i.og, %_ZL19emitAddressAtOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressERKNS0_10ABIArgInfoE.exit984 ], [ %i.og, %bb.ei ], [ %i.og, %bb.da ], [ %i.og, %bb.eh ], [ %i.og, %._crit_edge2858 ], [ %i.og, %bb.dw ], [ %i.og, %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit904 ], [ %i.og, %bb.dq ]
  %i.aor = getelementptr inbounds nuw i8, ptr %.04722884, i64 160 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.04712889, i64 40
  %indvars.iv.next2941 = add nuw nsw i64 %indvars.iv2940, 1
  %.not540 = icmp eq ptr %i.aor, %i.jy
  br i1 %.not540, label %._crit_edge2894.loopexit, label %bb.ar, !llvm.loop !2278

bb.ep:                                            ; preds = %._crit_edge2894
  %i.aot = and i64 %.sroa.02238.0, -8
  %i.aou = inttoptr i64 %i.aot to ptr
  %.val595 = load i32, ptr %73, align 8, !tbaa !1335
  %i.aov = zext i32 %.val595 to i64
  %i.aow = load ptr, ptr %74, align 8, !tbaa !74
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %i.aov
  store ptr %i.aou, ptr %i.aox, align 8, !tbaa !1207
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge2894
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aoz = load i32, ptr %i.aoy, align 8
  %i.apa = icmp ugt i32 %i.aoz, 255
  br i1 %i.apa, label %bb.er, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"

bb.er:                                            ; preds = %bb.eq
  %i.apb = load i8, ptr %i.oe, align 8, !tbaa !1410 ; 2 uses
  %.not.i986 = icmp eq i8 %i.apb, 19
  br i1 %.not.i986, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.apc = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !1367
  %i.ape = icmp eq i16 %i.apd, 51
  br i1 %i.ape, label %bb.et, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"

bb.et:                                            ; preds = %bb.es
  %i.apf = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.apg = load i32, ptr %i.apf, align 4
  %i.aph = and i32 %i.apg, 268435455
  %i.api = zext nneg i32 %i.aph to i64
  %i.apj = sub nsw i64 0, %i.api
  %i.apk = getelementptr inbounds [32 x i8], ptr %i.oe, i64 %i.apj
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !1409 ; 2 uses
  %.pre.i987 = load i8, ptr %i.apl, align 8, !tbaa !1410
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.er
  %i.apm = phi i8 [ %.pre.i987, %bb.et ], [ %i.apb, %bb.er ]
  %.024.i = phi ptr [ %i.apl, %bb.et ], [ %i.oe, %bb.er ] ; 3 uses
  %.not3.i = icmp eq i8 %i.apm, 14
  br i1 %.not3.i, label %bb.ev, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"

bb.ev:                                            ; preds = %bb.eu
  %i.apn = getelementptr inbounds nuw i8, ptr %.024.i, i64 24
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !1485 ; 5 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apq = load i32, ptr %i.app, align 8
  %i.apr = icmp ugt i32 %i.apq, 255
  br i1 %i.apr, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread", label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apo, i64 12
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !1210 ; 2 uses
  %i.apu = add i32 %i.apt, -1                     ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !1210
  %.not29.i = icmp eq i32 %i.apt, %i.apw
  br i1 %.not29.i, label %bb.ex, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"

bb.ex:                                            ; preds = %bb.ew
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apo, i64 16
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !1211 ; 2 uses
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !947
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !1211 ; 2 uses
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !947
  %.not30.i = icmp eq ptr %i.apz, %i.aqc
  br i1 %.not30.i, label %.preheader.preheader.i, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"

.preheader.preheader.i:                           ; preds = %bb.ex
  %i.aqd = zext i32 %i.apu to i64
  %.not31.i3116 = icmp eq i32 %i.apu, 0
  br i1 %.not31.i3116, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread", label %.lr.ph3118

.preheader.i:                                     ; preds = %.lr.ph3118
  %.not31.i = icmp eq i64 %indvars.iv.next.i, %i.aqd
  br i1 %.not31.i, label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread", label %.lr.ph3118, !llvm.loop !2279

.lr.ph3118:                                       ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv.i3117 = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i3117, 1 ; 4 uses
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr %i.apy, i64 %indvars.iv.next.i
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !947
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.aqb, i64 %indvars.iv.next.i
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !947
  %.not32.i = icmp eq ptr %i.aqf, %i.aqh
  br i1 %.not32.i, label %.preheader.i, label %"._ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread.loopexit_crit_edge", !llvm.loop !2279

"._ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread.loopexit_crit_edge": ; preds = %.lr.ph3118
  br label %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread", !llvm.loop !2279

"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread": ; preds = %.preheader.i, %.preheader.preheader.i, %"._ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread.loopexit_crit_edge", %bb.es, %bb.ex, %bb.ev, %bb.ew, %bb.eu, %bb.eq
  %.0498 = phi ptr [ %i.oe, %bb.ex ], [ %i.oe, %bb.es ], [ %i.oe, %bb.eq ], [ %i.oe, %bb.eu ], [ %i.oe, %bb.ew ], [ %i.oe, %bb.ev ], [ %.024.i, %.preheader.preheader.i ], [ %i.oe, %"._ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread.loopexit_crit_edge" ], [ %.024.i, %.preheader.i ] ; 8 uses
  %.0 = phi ptr [ %i.s, %bb.ex ], [ %i.s, %bb.es ], [ %i.s, %bb.eq ], [ %i.s, %bb.eu ], [ %i.s, %bb.ew ], [ %i.s, %bb.ev ], [ %i.apo, %.preheader.preheader.i ], [ %i.s, %"._ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread.loopexit_crit_edge" ], [ %i.apo, %.preheader.i ] ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %5, i64 1520
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !74 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %5, i64 1528
  %i.aql = load i32, ptr %i.aqk, align 8, !tbaa !75 ; 2 uses
  %.not7.i = icmp eq i32 %i.aql, 0
  br i1 %.not7.i, label %_ZL31deactivateArgCleanupsBeforeCallRN5clang7CodeGen15CodeGenFunctionERKNS0_11CallArgListE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"
  %i.aqm = zext i32 %i.aql to i64
  %.idx.i = shl nuw nsw i64 %i.aqm, 4
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.01.08.i = phi ptr [ %i.aqo, %.lr.ph.i ], [ %i.aqn, %.lr.ph.preheader.i ] ; 2 uses
  %i.aqo = getelementptr inbounds i8, ptr %.sroa.01.08.i, i64 -16 ; 3 uses
  %.sroa.01.0.copyload.i990 = load i64, ptr %i.aqo, align 8, !tbaa !72
  %i.aqp = getelementptr inbounds i8, ptr %.sroa.01.08.i, i64 -8 ; 2 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !2364
  call void @_ZN5clang7CodeGen15CodeGenFunction22DeactivateCleanupBlockENS0_12EHScopeStack15stable_iteratorEPN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(6288) %1, i64 %.sroa.01.0.copyload.i990, ptr noundef %i.aqq) #27
  %i.aqr = load ptr, ptr %i.aqp, align 8, !tbaa !2364
  %i.aqs = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aqr) #27 ; 0 uses
  %.not.i991 = icmp eq ptr %i.aqo, %i.aqj
  br i1 %.not.i991, label %_ZL31deactivateArgCleanupsBeforeCallRN5clang7CodeGen15CodeGenFunctionERKNS0_11CallArgListE.exit, label %.lr.ph.i

_ZL31deactivateArgCleanupsBeforeCallRN5clang7CodeGen15CodeGenFunctionERKNS0_11CallArgListE.exit: ; preds = %.lr.ph.i, %"_ZZN5clang7CodeGen15CodeGenFunction8EmitCallERKNS0_14CGFunctionInfoERKNS0_8CGCalleeENS0_15ReturnValueSlotERKNS0_11CallArgListEPPN4llvm8CallBaseEbNS_14SourceLocationEbENK3$_0clEPNSC_12FunctionTypeEPNSC_5ValueE.exit.thread"
  %i.aqt = load i32, ptr %i.fj, align 8, !tbaa !75 ; 2 uses
  %.not2910 = icmp eq i32 %i.aqt, 0
  br i1 %.not2910, label %._crit_edge2901, label %.lr.ph2900

.lr.ph2900:                                       ; preds = %_ZL31deactivateArgCleanupsBeforeCallRN5clang7CodeGen15CodeGenFunctionERKNS0_11CallArgListE.exit
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 6128 ; 2 uses
  %i.aqv = load ptr, ptr %74, align 8, !tbaa !74
  %.promoted = load i32, ptr %i.aqu, align 8, !tbaa !946
  %wide.trip.count = zext i32 %i.aqt to i64
  br label %bb.fa

._crit_edge2901:                                  ; preds = %bb.fa, %_ZL31deactivateArgCleanupsBeforeCallRN5clang7CodeGen15CodeGenFunctionERKNS0_11CallArgListE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #27
  store ptr null, ptr %126, align 8, !tbaa !1496
  %i.aqw = load ptr, ptr %i.o, align 8, !tbaa !1181, !nonnull !59, !align !60
  %i.aqx = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %.0498) #27 ; 2 uses
  %i.aqy = extractvalue { ptr, i64 } %i.aqx, 0
  %i.aqz = extractvalue { ptr, i64 } %i.aqx, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %i.ara = load i64, ptr %3, align 8, !tbaa !1492, !noalias !2365
  %i.arb = icmp eq i64 %i.ara, 3
  br i1 %i.arb, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %._crit_edge2901
  %.sroa.0.0.copyload.i992 = load i64, ptr %.sroa.42282.0.in, align 8, !tbaa !64, !noalias !2365
  %.sroa.2.0..sroa_idx.i993 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload.i994 = load i32, ptr %.sroa.2.0..sroa_idx.i993, align 8, !tbaa !946, !noalias !2365
  store ptr null, ptr %127, align 8, !tbaa !1364, !alias.scope !2365
  %i.arc = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i64 %.sroa.0.0.copyload.i992, ptr %i.arc, align 8, !tbaa !64, !alias.scope !2365
  %.sroa.2.0..sroa_idx.i.i995 = getelementptr inbounds nuw i8, ptr %127, i64 16
  store i32 %.sroa.2.0.copyload.i994, ptr %.sroa.2.0..sroa_idx.i.i995, align 8, !tbaa !946, !alias.scope !2365
  br label %_ZNK5clang7CodeGen8CGCallee15getAbstractInfoEv.exit996

bb.ez:                                            ; preds = %._crit_edge2901
  %i.ard = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %127, ptr noundef nonnull align 8 dereferenceable(24) %i.ard, i64 24, i1 false), !tbaa.struct !2367
  br label %_ZNK5clang7CodeGen8CGCallee15getAbstractInfoEv.exit996

_ZNK5clang7CodeGen8CGCallee15getAbstractInfoEv.exit996: ; preds = %bb.ey, %bb.ez
  call void @_ZN5clang7CodeGen13CodeGenModule22ConstructAttributeListEN4llvm9StringRefERKNS0_14CGFunctionInfoENS0_12CGCalleeInfoERNS2_13AttributeListERjbb(ptr noundef nonnull align 8 dereferenceable(4008) %i.aqw, ptr %i.aqy, i64 %i.aqz, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull byval(%"class.clang::CodeGen::CGCalleeInfo") align 8 %127, ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef nonnull align 4 dereferenceable(4) %i.k, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.are = load i32, ptr %i.k, align 4, !tbaa !946
  %i.arf = icmp eq i32 %i.are, 80
  br i1 %i.arf, label %bb.fb, label %bb.fd

bb.fa:                                            ; preds = %.lr.ph2900, %bb.fa
  %indvars.iv2942 = phi i64 [ 0, %.lr.ph2900 ], [ %indvars.iv.next2943, %bb.fa ] ; 2 uses
  %i.arg = phi i32 [ %.promoted, %.lr.ph2900 ], [ %.sroa.speculated1454, %bb.fa ]
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %indvars.iv2942
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !1207
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !1202
  %i.arl = call fastcc noundef i32 @_ZL17getMaxVectorWidthPKN4llvm4TypeE(ptr noundef %i.ark)
  %.sroa.speculated1454 = call i32 @llvm.umax.i32(i32 %i.arg, i32 %i.arl) ; 2 uses
  store i32 %.sroa.speculated1454, ptr %i.aqu, align 8, !tbaa !2368
  %indvars.iv.next2943 = add nuw nsw i64 %indvars.iv2942, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2943, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge2901, label %bb.fa, !llvm.loop !2282

bb.fb:                                            ; preds = %_ZNK5clang7CodeGen8CGCallee15getAbstractInfoEv.exit996
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !1383, !nonnull !59, !align !60 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 248
  %i.arp = load i32, ptr %i.aro, align 8, !tbaa !1483
  %i.arq = icmp eq i32 %i.arp, 3
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 252
  %i.ars = load i32, ptr %i.arr, align 4
  %i.art = icmp eq i32 %i.ars, 37
  %i.aru = select i1 %i.arq, i1 %i.art, i1 false
  br i1 %i.aru, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.arv = load ptr, ptr %i.o, align 8, !tbaa !1181, !nonnull !59, !align !60
  call void @_ZN5clang7CodeGen13CodeGenModule5ErrorENS_14SourceLocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(4008) %i.arv, i32 %8, ptr nonnull @.str.51, i64 58) #27
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %_ZNK5clang7CodeGen8CGCallee15getAbstractInfoEv.exit996
  %i.arw = getelementptr inbounds nuw i8, ptr %1, i64 1624 ; 3 uses
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !1417 ; 4 uses
  %.not.i.i999 = icmp eq ptr %i.arx, null
  br i1 %.not.i.i999, label %_ZN5clang7CodeGen13CodeGenModule21AdjustMemoryAttributeEN4llvm9StringRefENS0_12CGCalleeInfoERNS2_13AttributeListE.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 28 ; 2 uses
  %i.arz = load i32, ptr %i.ary, align 4          ; 2 uses
  %i.asa = and i32 %i.arz, 127
  %i.asb = add nsw i32 %i.asa, -35
  %i.asc = icmp ult i32 %i.asb, 6
  br i1 %i.asc, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit1002, label %_ZN5clang7CodeGen13CodeGenModule21AdjustMemoryAttributeEN4llvm9StringRefENS0_12CGCalleeInfoERNS2_13AttributeListE.exit

_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit1002: ; preds = %bb.fe
  %i.asd = and i32 %i.arz, 256
  %.not.i1003 = icmp eq i32 %i.asd, 0
  br i1 %.not.i1003, label %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685, label %bb.ff

bb.ff:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit1002
  %i.ase = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.arx) #27 ; 2 uses
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !74 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  %i.ash = load i32, ptr %i.asg, align 8, !tbaa !75 ; 2 uses
  %i.asi = zext i32 %i.ash to i64
  %.idx.i.i1004 = shl nuw nsw i64 %i.asi, 3
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asf, i64 %.idx.i.i1004 ; 2 uses
  %.not.i.i1005 = icmp eq i32 %i.ash, 0
  br i1 %.not.i.i1005, label %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685, label %.lr.ph.i.i.i.i.i1006

.lr.ph.i.i.i.i.i1006:                             ; preds = %bb.ff, %bb.fg
  %.sroa.07.1.i.i.i.i1007 = phi ptr [ %i.aso, %bb.fg ], [ %i.asf, %bb.ff ] ; 3 uses
  %i.ask = load ptr, ptr %.sroa.07.1.i.i.i.i1007, align 8, !tbaa !112
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 36
  %i.asm = load i16, ptr %i.asl, align 4
  %i.asn = icmp eq i16 %i.asm, 386
  br i1 %i.asn, label %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.i.i.i.i.i1006
  %i.aso = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i1007, i64 8 ; 2 uses
  %.not.i.i.i.i.i1008 = icmp eq ptr %i.aso, %i.asj
  br i1 %.not.i.i.i.i.i1008, label %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685, label %.lr.ph.i.i.i.i.i1006, !llvm.loop !2283

_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i1006
  %.not2770 = icmp eq ptr %.sroa.07.1.i.i.i.i1007, %i.asj
  br i1 %.not2770, label %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685, label %bb.fh

bb.fh:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit
  %i.asp = load ptr, ptr %i.o, align 8, !tbaa !1181, !nonnull !59, !align !60
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 232
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.ass = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef nonnull align 8 dereferenceable(8) %i.asr, i32 noundef -1, i32 noundef 77) #27
  store ptr %i.ass, ptr %126, align 8, !tbaa !1361
  br label %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685

_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685: ; preds = %bb.fg, %bb.ff, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit1002, %bb.fh, %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit
  %i.ast = load i32, ptr %i.ary, align 4
  %i.asu = and i32 %i.ast, 256
  %.not.i1010 = icmp eq i32 %i.asu, 0
  br i1 %.not.i1010, label %_ZN5clang7CodeGen13CodeGenModule21AdjustMemoryAttributeEN4llvm9StringRefENS0_12CGCalleeInfoERNS2_13AttributeListE.exit, label %bb.fi

bb.fi:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_12StrictFPAttrEEEbv.exit.thread2685
  %i.asv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.arx) #27 ; 2 uses
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !74 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 8
  %i.asy = load i32, ptr %i.asx, align 8, !tbaa !75 ; 2 uses
  %i.asz = zext i32 %i.asy to i64
  %.idx.i.i1011 = shl nuw nsw i64 %i.asz, 3
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 %.idx.i.i1011 ; 2 uses
  %.not.i.i1012 = icmp eq i32 %i.asy, 0
  br i1 %.not.i.i1012, label %_ZN5clang7CodeGen13CodeGenModule21AdjustMemoryAttributeEN4llvm9StringRefENS0_12CGCalleeInfoERNS2_13AttributeListE.exit, label %.lr.ph.i.i.i.i.i1013

.lr.ph.i.i.i.i.i1013:                             ; preds = %bb.fi, %bb.fj
  %.sroa.07.1.i.i.i.i1014 = phi ptr [ %i.atf, %bb.fj ], [ %i.asw, %bb.fi ] ; 3 uses
  %i.atb = load ptr, ptr %.sroa.07.1.i.i.i.i1014, align 8, !tbaa !112
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 36
  %i.atd = load i16, ptr %i.atc, align 4
  %i.ate = icmp eq i16 %i.atd, 342
  br i1 %i.ate, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i.i.i.i.i1013
  %i.atf = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i1014, i64 8 ; 2 uses
  %.not.i.i.i.i.i1015 = icmp eq ptr %i.atf, %i.ata
  br i1 %.not.i.i.i.i.i1015, label %_ZN5clang7CodeGen13CodeGenModule21AdjustMemoryAttributeEN4llvm9StringRefENS0_12CGCalleeInfoERNS2_13AttributeListE.exit, label %.lr.ph.i.i.i.i.i1013, !llvm.loop !12

_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i1013
  %.not2771 = icmp eq ptr %.sroa.07.1.i.i.i.i1014, %i.ata
end_hunk_0
