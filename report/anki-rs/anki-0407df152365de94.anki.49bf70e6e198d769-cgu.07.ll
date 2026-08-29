Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3zip4spec22find_central_directory17h1c4f7525214311beE:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !7212)
  %i.cr = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7212, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
  br i1 %.not.i265, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7212
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.e)
          to label %.noexc266 unwind label %.thread611.loopexit

.noexc266:                                        ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.e, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7212
  br label %bb.ba

bb.at:                                            ; preds = %bb.aj
  %i.cs = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7215, !noundef !5 ; 5 uses
  %i.ct = icmp eq i64 %i.cs, -9223372036854775802
  br i1 %i.ct, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cu = icmp ne i64 %i.cs, -9223372036854775806
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nsw i64 %i.cs, 9223372036854775807
  %i.cw = icmp ugt i64 %i.cs, -9223372036854775808
  %i.cx = select i1 %i.cw, i64 %i.cv, i64 1
  switch i64 %i.cx, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.av
    i64 1, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %.val.i.i269 = load ptr, ptr %i.y, align 8, !alias.scope !7218, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i269)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dp

bb.aw:                                            ; preds = %bb.au
  %i.cy = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.cy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body271 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268": ; preds = %bb.ax
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dp

bb.ba:                                            ; preds = %.noexc266, %bb.ar
  br i1 %i.z, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.db = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.sroa.0.0.insert.insert.i, i64 %3)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.db)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.547.0 = phi i8 [ 0, %bb.ba ], [ 1, %bb.bb ]
  %.sroa.046.0 = phi i64 [ %.sroa.7.sroa.0.0.insert.insert.i, %bb.ba ], [ %.sroa.0.0.i, %bb.bb ]
  %i.dc = invoke noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @284, i64 noundef 4, i64 noundef %.sroa.7.sroa.0.0.insert.insert.i, i64 noundef %i.by)
          to label %bb.bd unwind label %.thread611.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.046.0, ptr %i.aa, align 32
  store i8 %.sroa.547.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775802, ptr %i.k, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17h343e5494dc7a7996E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 32 dereferenceable(384) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.be unwind label %.thread656.loopexit

.thread656.loopexit:                              ; preds = %bb.bs, %bb.bn, %.backedge, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

.thread656.loopexit.split-lp:                     ; preds = %bb.bt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

bb.be:                                            ; preds = %.backedge
  %i.dd = load i64, ptr %i.j, align 8, !range !7165, !noundef !5 ; 2 uses
  %.not217 = icmp eq i64 %i.dd, -9223372036854775802
  %.sroa.4178.0.copyload = load i64, ptr %.sroa.4178.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5179.0.copyload = load i64, ptr %.sroa.5179.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not217, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dd, ptr %i.de, align 8
  %.sroa.2181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4178.0.copyload, ptr %.sroa.2181.0..sroa_idx, align 8
  %.sroa.3182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.3182.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %i.df = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7221, !noundef !5 ; 5 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775802
  br i1 %i.dg, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dh = icmp ne i64 %i.df, -9223372036854775806
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.df, 9223372036854775807
  %i.dj = icmp ugt i64 %i.df, -9223372036854775808
  %i.dk = select i1 %i.dj, i64 %i.di, i64 1
  switch i64 %i.dk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" [
    i64 0, label %bb.bh
    i64 1, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i277 = load ptr, ptr %i.ag, align 8, !alias.scope !7224, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i277)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" unwind label %.thread611.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.dl = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276" unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread595 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276": ; preds = %bb.bj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" unwind label %.thread611.loopexit.split-lp

bb.bm:                                            ; preds = %bb.be
  %i.do = trunc nuw i64 %.sroa.4178.0.copyload to i1
  br i1 %i.do, label %bb.bn, label %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit"

bb.bn:                                            ; preds = %bb.bm
  %i.dp = call i64 @llvm.usub.sat.i64(i64 %i.by, i64 %.sroa.5179.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !alias.scope !7237, !noalias !7227
  %i.dq = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 56)
          to label %.noexc295 unwind label %.thread656.loopexit ; 2 uses

.noexc295:                                        ; preds = %bb.bn
  %.not.i.i.i284 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i284, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc295
  %.sroa.09.0.copyload.i.i.i286 = load i32, ptr %i.c, align 4, !noalias !7227
  %.not4.i.i.i287 = icmp eq i32 %.sroa.09.0.copyload.i.i.i286, 101075792
  br i1 %.not4.i.i.i287, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc295
  %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i = phi i64 [ -9223372036854775807, %.noexc295 ], [ -9223372036854775808, %bb.bo ]
  %.sroa.15.0.ph.i.i = phi ptr [ %i.dq, %.noexc295 ], [ @285, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7227
  %i.dr = ptrtoint ptr %.sroa.15.0.ph.i.i to i64
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.6.i.sroa.0.0.copyload.i289 = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i288, align 4, !noalias !7240 ; 5 uses
  %.sroa.6.i.sroa.5.0.copyload.i291 = load i16, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290, align 4, !noalias !7240
  %.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !7240
  %.sroa.15.5.copyload.i.i = load ptr, ptr %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7240
  %.sroa.22.5.copyload.i.i = load i8, ptr %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7240
  %.sroa.26.5.copyload.i.i = load i64, ptr %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  %i.ds = load <2 x i64>, ptr %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  %.sroa.28.5.copyload.i.i = load i64, ptr %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  %i.dt = load <2 x i64>, ptr %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7227
  %i.du = ptrtoint ptr %.sroa.15.5.copyload.i.i to i64 ; 3 uses
  %.sroa.15.5.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.15.5.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.15.5.extract.shift.i.i to i32
  %i.dv = icmp ult i64 %.sroa.6.i.sroa.0.0.copyload.i289, 44
  br i1 %i.dv, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.6.i.sroa.0.0.copyload.i289, i64 12)
  %i.dx = icmp ugt i64 %i.dw, %i.dp
  br i1 %i.dx, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7241
  %i.dy = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7245
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 0, -44) %i.dy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc296 unwind label %.thread656.loopexit

.noexc296:                                        ; preds = %bb.bs
  %i.dz = load i64, ptr %i.b, align 8, !range !2379, !noalias !7245, !noundef !5
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.ac, align 8, !range !450, !noalias !7245, !noundef !5 ; 2 uses
  br i1 %i.ea, label %bb.bt, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !116

bb.bt:                                            ; preds = %.noexc296
  %i.ec = load i64, ptr %i.ad, align 8, !noalias !7245
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eb, i64 %i.ec) #26
          to label %.noexc297 unwind label %.thread656.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bt
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %.noexc296
  %i.ed = load ptr, ptr %i.ad, align 8, !noalias !7245, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7245
  store i64 %i.eb, ptr %i.d, align 8, !alias.scope !7242, !noalias !7241
  store ptr %i.ed, ptr %i.ae, align 8, !alias.scope !7242, !noalias !7241
  store i64 %i.dy, ptr %i.af, align 8, !alias.scope !7242, !noalias !7241
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc298 unwind label %.thread656.loopexit ; 2 uses

.noexc298:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 8 uses
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7241
  %i.eh = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.ef, i64 noundef %i.eg)
          to label %bb.bw unwind label %bb.bu, !noalias !7246 ; 2 uses

bb.bu:                                            ; preds = %.noexc298
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.thread646, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7246
  br label %.thread646

bb.bw:                                            ; preds = %.noexc298
  %.not.i.i292 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i292, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7246
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %.sroa.67.sroa.8.31.insert.ext.i = zext i8 %.sroa.22.5.copyload.i.i to i32
  %.sroa.67.sroa.8.31.insert.shift.i = shl nuw i32 %.sroa.67.sroa.8.31.insert.ext.i, 24
  %.sroa.67.sroa.8.31.insert.insert.i = or disjoint i32 %.sroa.67.sroa.8.31.insert.shift.i, %.sroa.15.5.extract.trunc.i.i
  %.not.i293 = icmp eq i32 %.sroa.67.sroa.8.31.insert.insert.i, %.sroa.6.i.sroa.0.0.copyload.i
  br i1 %.not.i293, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.em = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, 12
  %.not20.i = icmp eq i64 %i.em, %i.dp
  br i1 %.not20.i, label %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink62.i = phi ptr [ @288, %bb.bz ], [ @287, %bb.ca ]
  %.sink.i294 = phi i64 [ 47, %bb.bz ], [ 35, %bb.ca ] ; 2 uses
  %i.en = ptrtoint ptr %.sink62.i to i64          ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7247
  br label %bb.cd

"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit": ; preds = %bb.bm
  %.sroa.0535.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.not.i301 = icmp eq i64 %.sroa.0535.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.5537.sroa.4.0.copyload = load i64, ptr %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx, align 8
  %.sroa.5537.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.6542.sroa.6.0 = select i1 %.not.i301, i64 21, i64 %.sroa.5537.sroa.4.0.copyload ; 2 uses
  %.sroa.6542.sroa.0.0 = select i1 %.not.i301, ptr @290, ptr %.sroa.5537.sroa.0.0.copyload ; 2 uses
  %.sroa.0539.0 = select i1 %.not.i301, i64 -9223372036854775808, i64 %.sroa.0535.0.copyload ; 2 uses
  %i.ep = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7248, !noundef !5 ; 5 uses
  %i.eq = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %i.eq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.df

bb.cd:                                            ; preds = %bb.cc, %bb.bp, %bb.cb, %bb.by, %bb.bx, %bb.br, %bb.bq
  %.sroa.9501.0.ph = phi i64 [ -9223372036854775808, %bb.bq ], [ -9223372036854775807, %bb.bx ], [ -9223372036854775807, %bb.by ], [ -9223372036854775808, %bb.br ], [ -9223372036854775808, %bb.cb ], [ %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i, %bb.bp ], [ -9223372036854775808, %bb.cc ] ; 2 uses
  %.sroa.13.0.ph = phi i64 [ ptrtoint (ptr @301 to i64), %bb.bq ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.by ], [ ptrtoint (ptr @300 to i64), %bb.br ], [ %i.en, %bb.cb ], [ %i.dr, %bb.bp ], [ %i.en, %bb.cc ] ; 2 uses
  %.sroa.16.0.ph = phi i64 [ 22, %bb.bq ], [ undef, %bb.bx ], [ undef, %bb.by ], [ 36, %bb.br ], [ %.sink.i294, %bb.cb ], [ 32, %bb.bp ], [ %.sink.i294, %bb.cc ] ; 2 uses
  %i.er = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7251, !noundef !5 ; 5 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775802
  br i1 %i.es, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.et = icmp ne i64 %i.er, -9223372036854775806
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nsw i64 %i.er, 9223372036854775807
  %i.ev = icmp ugt i64 %i.er, -9223372036854775808
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 1
  switch i64 %i.ew, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i309 = load ptr, ptr %i.ag, align 8, !alias.scope !7254, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i309)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

bb.cg:                                            ; preds = %bb.ce
  %i.ex = icmp eq i64 %i.er, -9223372036854775808
  br i1 %i.ex, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308" unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body311 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit: ; preds = %bb.ca
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.26.5.copyload.i.i, i64 46) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %bb.ck, label %bb.cl, !prof !116

bb.ck:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit, %bb.ck
  %.sroa.0189.0 = phi i64 [ -1, %bb.ck ], [ %7, %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit ]
  %i.fa = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0189.0, i64 %.sroa.28.5.copyload.i.i)
  %i.fb = icmp ult i64 %.sroa.5179.0.copyload, %i.fa
  br i1 %i.fb, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fc = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1106 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le, 32
  %.sroa.23.28.insert.insert.le = or disjoint i64 %.sroa.23.28.insert.shift.le1106, %i.fc
  %i.fd = shl i56 %.sroa.18.0.copyload.i, 24
  %i.fe = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le = or disjoint i56 %i.fd, %i.fe
  %.sroa.6.16.extract.trunc.le1083 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le to i32
  %.sroa.9.24.extract.trunc.le1079 = trunc nuw i64 %.sroa.23.28.insert.insert.le to i48
  %i.ff = sub i64 %.sroa.5179.0.copyload, %.sroa.7.sroa.0.0.insert.insert.i
  %.sroa.15.1.extract.shift.i.i.le = lshr i64 %i.du, 8
  %.sroa.15.1.extract.trunc.i.i.le = trunc i64 %.sroa.15.1.extract.shift.i.i.le to i32
  %.sroa.67.sroa.11.32.insert.ext.i.le = zext i16 %.sroa.6.i.sroa.5.0.copyload.i291 to i64
  %.sroa.67.sroa.11.34.insert.ext.i.le = zext i8 %.sroa.6.i.sroa.6.0.copyload.i to i64
  %.sroa.67.sroa.11.34.insert.shift.i.le = shl nuw nsw i64 %.sroa.67.sroa.11.34.insert.ext.i.le, 16
  %.sroa.67.sroa.11.34.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.shift.i.le, %.sroa.67.sroa.11.32.insert.ext.i.le
  %.sroa.67.sroa.11.35.insert.ext.i.le = shl i64 %i.du, 24
  %.sroa.67.sroa.11.35.insert.shift.i.le = and i64 %.sroa.67.sroa.11.35.insert.ext.i.le, 4278190080
  %.sroa.67.sroa.11.35.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.insert.i.le, %.sroa.67.sroa.11.35.insert.shift.i.le
  store ptr %i.au, ptr %0, align 8
  %.sroa.062.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.062.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1083, ptr %.sroa.062.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.062.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.062.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1079, ptr %.sroa.062.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.062.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ef, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.eg, ptr %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6.i.sroa.0.0.copyload.i289, ptr %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ds, ptr %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.15.1.extract.trunc.i.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.6.i.sroa.0.0.copyload.i, ptr %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.67.sroa.11.35.insert.insert.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ff, ptr %.sroa.563.0..sroa_idx, align 8
  %i.fg = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7257, !noundef !5 ; 5 uses
  %i.fh = icmp eq i64 %i.fg, -9223372036854775802
  br i1 %i.fh, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fi = icmp ne i64 %i.fg, -9223372036854775806
  call void @llvm.assume(i1 %i.fi)
  %i.fj = add nsw i64 %i.fg, 9223372036854775807
  %i.fk = icmp ugt i64 %i.fg, -9223372036854775808
  %i.fl = select i1 %i.fk, i64 %i.fj, i64 1
  switch i64 %i.fl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" [
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i.i317 = load ptr, ptr %i.ag, align 8, !alias.scope !7260, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i317)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.cp:                                            ; preds = %bb.cn
  %i.fm = icmp eq i64 %i.fg, -9223372036854775808
  br i1 %i.fm, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread548 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316": ; preds = %bb.cq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.ct:                                            ; preds = %bb.cl
  %i.fp = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7263, !noundef !5 ; 5 uses
  %i.fq = icmp eq i64 %i.fp, -9223372036854775802
  br i1 %i.fq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fr = icmp ne i64 %i.fp, -9223372036854775806
  call void @llvm.assume(i1 %i.fr)
  %i.fs = add nsw i64 %i.fp, 9223372036854775807
  %i.ft = icmp ugt i64 %i.fp, -9223372036854775808
  %i.fu = select i1 %i.ft, i64 %i.fs, i64 1
  switch i64 %i.fu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i326 = load ptr, ptr %i.ag, align 8, !alias.scope !7266, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i326)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.fv = icmp eq i64 %i.fp, -9223372036854775808
  br i1 %i.fv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325" unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body328 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325": ; preds = %bb.cx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323": ; preds = %bb.cp, %bb.cn, %bb.cm, %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.da:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325", %bb.cv
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body328:                                         ; preds = %bb.cy, %bb.da
  %eh.lpad-body329 = phi { ptr, i32 } [ %i.fy, %bb.da ], [ %i.fw, %bb.cy ] ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.fz = icmp eq i64 %i.eg, 0
  br i1 %i.fz, label %.thread646, label %bb.db

bb.db:                                            ; preds = %.body328
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331": ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325"
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.ga = icmp eq i64 %i.eg, 0
  br i1 %i.ga, label %.backedge.backedge, label %bb.dc

.backedge.backedge:                               ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", %bb.dc, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314"
  br label %.backedge

bb.dc:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.backedge.backedge

bb.dd:                                            ; preds = %.thread548, %.thread646
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308", %bb.cf
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.ci, %bb.de
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.gc, %bb.de ], [ %i.ey, %bb.ci ]
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314": ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308"
end_hunk_0
begin_hunk_1_@_ZN3zip4spec22find_central_directory17h49732f9e6201aebdE:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !7406)
  %i.cr = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7406, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
  br i1 %.not.i265, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7406
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.e)
          to label %.noexc266 unwind label %.thread611.loopexit

.noexc266:                                        ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.e, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7406
  br label %bb.ba

bb.at:                                            ; preds = %bb.aj
  %i.cs = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7409, !noundef !5 ; 5 uses
  %i.ct = icmp eq i64 %i.cs, -9223372036854775802
  br i1 %i.ct, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cu = icmp ne i64 %i.cs, -9223372036854775806
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nsw i64 %i.cs, 9223372036854775807
  %i.cw = icmp ugt i64 %i.cs, -9223372036854775808
  %i.cx = select i1 %i.cw, i64 %i.cv, i64 1
  switch i64 %i.cx, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.av
    i64 1, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %.val.i.i269 = load ptr, ptr %i.y, align 8, !alias.scope !7412, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i269)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dp

bb.aw:                                            ; preds = %bb.au
  %i.cy = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.cy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body271 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268": ; preds = %bb.ax
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dp

bb.ba:                                            ; preds = %.noexc266, %bb.ar
  br i1 %i.z, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.db = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.sroa.0.0.insert.insert.i, i64 %3)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.db)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.547.0 = phi i8 [ 0, %bb.ba ], [ 1, %bb.bb ]
  %.sroa.046.0 = phi i64 [ %.sroa.7.sroa.0.0.insert.insert.i, %bb.ba ], [ %.sroa.0.0.i, %bb.bb ]
  %i.dc = invoke noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @284, i64 noundef 4, i64 noundef %.sroa.7.sroa.0.0.insert.insert.i, i64 noundef %i.by)
          to label %bb.bd unwind label %.thread611.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.046.0, ptr %i.aa, align 32
  store i8 %.sroa.547.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775802, ptr %i.k, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha207c59479bdd451E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 32 dereferenceable(384) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.be unwind label %.thread656.loopexit

.thread656.loopexit:                              ; preds = %bb.bs, %bb.bn, %.backedge, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

.thread656.loopexit.split-lp:                     ; preds = %bb.bt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

bb.be:                                            ; preds = %.backedge
  %i.dd = load i64, ptr %i.j, align 8, !range !7165, !noundef !5 ; 2 uses
  %.not217 = icmp eq i64 %i.dd, -9223372036854775802
  %.sroa.4178.0.copyload = load i64, ptr %.sroa.4178.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5179.0.copyload = load i64, ptr %.sroa.5179.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not217, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dd, ptr %i.de, align 8
  %.sroa.2181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4178.0.copyload, ptr %.sroa.2181.0..sroa_idx, align 8
  %.sroa.3182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.3182.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %i.df = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7415, !noundef !5 ; 5 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775802
  br i1 %i.dg, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dh = icmp ne i64 %i.df, -9223372036854775806
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.df, 9223372036854775807
  %i.dj = icmp ugt i64 %i.df, -9223372036854775808
  %i.dk = select i1 %i.dj, i64 %i.di, i64 1
  switch i64 %i.dk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" [
    i64 0, label %bb.bh
    i64 1, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i277 = load ptr, ptr %i.ag, align 8, !alias.scope !7418, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i277)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" unwind label %.thread611.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.dl = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276" unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread595 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276": ; preds = %bb.bj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" unwind label %.thread611.loopexit.split-lp

bb.bm:                                            ; preds = %bb.be
  %i.do = trunc nuw i64 %.sroa.4178.0.copyload to i1
  br i1 %i.do, label %bb.bn, label %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit"

bb.bn:                                            ; preds = %bb.bm
  %i.dp = call i64 @llvm.usub.sat.i64(i64 %i.by, i64 %.sroa.5179.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !alias.scope !7431, !noalias !7421
  %i.dq = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 56)
          to label %.noexc295 unwind label %.thread656.loopexit ; 2 uses

.noexc295:                                        ; preds = %bb.bn
  %.not.i.i.i284 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i284, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc295
  %.sroa.09.0.copyload.i.i.i286 = load i32, ptr %i.c, align 4, !noalias !7421
  %.not4.i.i.i287 = icmp eq i32 %.sroa.09.0.copyload.i.i.i286, 101075792
  br i1 %.not4.i.i.i287, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc295
  %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i = phi i64 [ -9223372036854775807, %.noexc295 ], [ -9223372036854775808, %bb.bo ]
  %.sroa.15.0.ph.i.i = phi ptr [ %i.dq, %.noexc295 ], [ @285, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7421
  %i.dr = ptrtoint ptr %.sroa.15.0.ph.i.i to i64
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.6.i.sroa.0.0.copyload.i289 = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i288, align 4, !noalias !7434 ; 5 uses
  %.sroa.6.i.sroa.5.0.copyload.i291 = load i16, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290, align 4, !noalias !7434
  %.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !7434
  %.sroa.15.5.copyload.i.i = load ptr, ptr %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7434
  %.sroa.22.5.copyload.i.i = load i8, ptr %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7434
  %.sroa.26.5.copyload.i.i = load i64, ptr %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  %i.ds = load <2 x i64>, ptr %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  %.sroa.28.5.copyload.i.i = load i64, ptr %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  %i.dt = load <2 x i64>, ptr %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7421
  %i.du = ptrtoint ptr %.sroa.15.5.copyload.i.i to i64 ; 3 uses
  %.sroa.15.5.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.15.5.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.15.5.extract.shift.i.i to i32
  %i.dv = icmp ult i64 %.sroa.6.i.sroa.0.0.copyload.i289, 44
  br i1 %i.dv, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.6.i.sroa.0.0.copyload.i289, i64 12)
  %i.dx = icmp ugt i64 %i.dw, %i.dp
  br i1 %i.dx, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7435
  %i.dy = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7439
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 0, -44) %i.dy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc296 unwind label %.thread656.loopexit

.noexc296:                                        ; preds = %bb.bs
  %i.dz = load i64, ptr %i.b, align 8, !range !2379, !noalias !7439, !noundef !5
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.ac, align 8, !range !450, !noalias !7439, !noundef !5 ; 2 uses
  br i1 %i.ea, label %bb.bt, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !116

bb.bt:                                            ; preds = %.noexc296
  %i.ec = load i64, ptr %i.ad, align 8, !noalias !7439
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eb, i64 %i.ec) #26
          to label %.noexc297 unwind label %.thread656.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bt
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %.noexc296
  %i.ed = load ptr, ptr %i.ad, align 8, !noalias !7439, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7439
  store i64 %i.eb, ptr %i.d, align 8, !alias.scope !7436, !noalias !7435
  store ptr %i.ed, ptr %i.ae, align 8, !alias.scope !7436, !noalias !7435
  store i64 %i.dy, ptr %i.af, align 8, !alias.scope !7436, !noalias !7435
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc298 unwind label %.thread656.loopexit ; 2 uses

.noexc298:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 8 uses
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7435
  %i.eh = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.ef, i64 noundef %i.eg)
          to label %bb.bw unwind label %bb.bu, !noalias !7440 ; 2 uses

bb.bu:                                            ; preds = %.noexc298
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.thread646, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7440
  br label %.thread646

bb.bw:                                            ; preds = %.noexc298
  %.not.i.i292 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i292, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7440
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %.sroa.67.sroa.8.31.insert.ext.i = zext i8 %.sroa.22.5.copyload.i.i to i32
  %.sroa.67.sroa.8.31.insert.shift.i = shl nuw i32 %.sroa.67.sroa.8.31.insert.ext.i, 24
  %.sroa.67.sroa.8.31.insert.insert.i = or disjoint i32 %.sroa.67.sroa.8.31.insert.shift.i, %.sroa.15.5.extract.trunc.i.i
  %.not.i293 = icmp eq i32 %.sroa.67.sroa.8.31.insert.insert.i, %.sroa.6.i.sroa.0.0.copyload.i
  br i1 %.not.i293, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.em = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, 12
  %.not20.i = icmp eq i64 %i.em, %i.dp
  br i1 %.not20.i, label %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink62.i = phi ptr [ @288, %bb.bz ], [ @287, %bb.ca ]
  %.sink.i294 = phi i64 [ 47, %bb.bz ], [ 35, %bb.ca ] ; 2 uses
  %i.en = ptrtoint ptr %.sink62.i to i64          ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7441
  br label %bb.cd

"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit": ; preds = %bb.bm
  %.sroa.0535.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.not.i301 = icmp eq i64 %.sroa.0535.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.5537.sroa.4.0.copyload = load i64, ptr %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx, align 8
  %.sroa.5537.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.6542.sroa.6.0 = select i1 %.not.i301, i64 21, i64 %.sroa.5537.sroa.4.0.copyload ; 2 uses
  %.sroa.6542.sroa.0.0 = select i1 %.not.i301, ptr @290, ptr %.sroa.5537.sroa.0.0.copyload ; 2 uses
  %.sroa.0539.0 = select i1 %.not.i301, i64 -9223372036854775808, i64 %.sroa.0535.0.copyload ; 2 uses
  %i.ep = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7442, !noundef !5 ; 5 uses
  %i.eq = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %i.eq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.df

bb.cd:                                            ; preds = %bb.cc, %bb.bp, %bb.cb, %bb.by, %bb.bx, %bb.br, %bb.bq
  %.sroa.9501.0.ph = phi i64 [ -9223372036854775808, %bb.bq ], [ -9223372036854775807, %bb.bx ], [ -9223372036854775807, %bb.by ], [ -9223372036854775808, %bb.br ], [ -9223372036854775808, %bb.cb ], [ %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i, %bb.bp ], [ -9223372036854775808, %bb.cc ] ; 2 uses
  %.sroa.13.0.ph = phi i64 [ ptrtoint (ptr @301 to i64), %bb.bq ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.by ], [ ptrtoint (ptr @300 to i64), %bb.br ], [ %i.en, %bb.cb ], [ %i.dr, %bb.bp ], [ %i.en, %bb.cc ] ; 2 uses
  %.sroa.16.0.ph = phi i64 [ 22, %bb.bq ], [ undef, %bb.bx ], [ undef, %bb.by ], [ 36, %bb.br ], [ %.sink.i294, %bb.cb ], [ 32, %bb.bp ], [ %.sink.i294, %bb.cc ] ; 2 uses
  %i.er = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7445, !noundef !5 ; 5 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775802
  br i1 %i.es, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.et = icmp ne i64 %i.er, -9223372036854775806
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nsw i64 %i.er, 9223372036854775807
  %i.ev = icmp ugt i64 %i.er, -9223372036854775808
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 1
  switch i64 %i.ew, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i309 = load ptr, ptr %i.ag, align 8, !alias.scope !7448, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i309)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

bb.cg:                                            ; preds = %bb.ce
  %i.ex = icmp eq i64 %i.er, -9223372036854775808
  br i1 %i.ex, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308" unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body311 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit: ; preds = %bb.ca
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.26.5.copyload.i.i, i64 46) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %bb.ck, label %bb.cl, !prof !116

bb.ck:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit, %bb.ck
  %.sroa.0189.0 = phi i64 [ -1, %bb.ck ], [ %7, %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit ]
  %i.fa = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0189.0, i64 %.sroa.28.5.copyload.i.i)
  %i.fb = icmp ult i64 %.sroa.5179.0.copyload, %i.fa
  br i1 %i.fb, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fc = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1106 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le, 32
  %.sroa.23.28.insert.insert.le = or disjoint i64 %.sroa.23.28.insert.shift.le1106, %i.fc
  %i.fd = shl i56 %.sroa.18.0.copyload.i, 24
  %i.fe = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le = or disjoint i56 %i.fd, %i.fe
  %.sroa.6.16.extract.trunc.le1083 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le to i32
  %.sroa.9.24.extract.trunc.le1079 = trunc nuw i64 %.sroa.23.28.insert.insert.le to i48
  %i.ff = sub i64 %.sroa.5179.0.copyload, %.sroa.7.sroa.0.0.insert.insert.i
  %.sroa.15.1.extract.shift.i.i.le = lshr i64 %i.du, 8
  %.sroa.15.1.extract.trunc.i.i.le = trunc i64 %.sroa.15.1.extract.shift.i.i.le to i32
  %.sroa.67.sroa.11.32.insert.ext.i.le = zext i16 %.sroa.6.i.sroa.5.0.copyload.i291 to i64
  %.sroa.67.sroa.11.34.insert.ext.i.le = zext i8 %.sroa.6.i.sroa.6.0.copyload.i to i64
  %.sroa.67.sroa.11.34.insert.shift.i.le = shl nuw nsw i64 %.sroa.67.sroa.11.34.insert.ext.i.le, 16
  %.sroa.67.sroa.11.34.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.shift.i.le, %.sroa.67.sroa.11.32.insert.ext.i.le
  %.sroa.67.sroa.11.35.insert.ext.i.le = shl i64 %i.du, 24
  %.sroa.67.sroa.11.35.insert.shift.i.le = and i64 %.sroa.67.sroa.11.35.insert.ext.i.le, 4278190080
  %.sroa.67.sroa.11.35.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.insert.i.le, %.sroa.67.sroa.11.35.insert.shift.i.le
  store ptr %i.au, ptr %0, align 8
  %.sroa.062.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.062.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1083, ptr %.sroa.062.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.062.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.062.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1079, ptr %.sroa.062.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.062.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ef, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.eg, ptr %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6.i.sroa.0.0.copyload.i289, ptr %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ds, ptr %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.15.1.extract.trunc.i.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.6.i.sroa.0.0.copyload.i, ptr %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.67.sroa.11.35.insert.insert.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ff, ptr %.sroa.563.0..sroa_idx, align 8
  %i.fg = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7451, !noundef !5 ; 5 uses
  %i.fh = icmp eq i64 %i.fg, -9223372036854775802
  br i1 %i.fh, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fi = icmp ne i64 %i.fg, -9223372036854775806
  call void @llvm.assume(i1 %i.fi)
  %i.fj = add nsw i64 %i.fg, 9223372036854775807
  %i.fk = icmp ugt i64 %i.fg, -9223372036854775808
  %i.fl = select i1 %i.fk, i64 %i.fj, i64 1
  switch i64 %i.fl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" [
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i.i317 = load ptr, ptr %i.ag, align 8, !alias.scope !7454, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i317)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.cp:                                            ; preds = %bb.cn
  %i.fm = icmp eq i64 %i.fg, -9223372036854775808
  br i1 %i.fm, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread548 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316": ; preds = %bb.cq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.ct:                                            ; preds = %bb.cl
  %i.fp = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7457, !noundef !5 ; 5 uses
  %i.fq = icmp eq i64 %i.fp, -9223372036854775802
  br i1 %i.fq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fr = icmp ne i64 %i.fp, -9223372036854775806
  call void @llvm.assume(i1 %i.fr)
  %i.fs = add nsw i64 %i.fp, 9223372036854775807
  %i.ft = icmp ugt i64 %i.fp, -9223372036854775808
  %i.fu = select i1 %i.ft, i64 %i.fs, i64 1
  switch i64 %i.fu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i326 = load ptr, ptr %i.ag, align 8, !alias.scope !7460, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i326)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.fv = icmp eq i64 %i.fp, -9223372036854775808
  br i1 %i.fv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325" unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body328 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325": ; preds = %bb.cx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323": ; preds = %bb.cp, %bb.cn, %bb.cm, %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.da:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325", %bb.cv
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body328:                                         ; preds = %bb.cy, %bb.da
  %eh.lpad-body329 = phi { ptr, i32 } [ %i.fy, %bb.da ], [ %i.fw, %bb.cy ] ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.fz = icmp eq i64 %i.eg, 0
  br i1 %i.fz, label %.thread646, label %bb.db

bb.db:                                            ; preds = %.body328
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331": ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325"
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.ga = icmp eq i64 %i.eg, 0
  br i1 %i.ga, label %.backedge.backedge, label %bb.dc

.backedge.backedge:                               ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", %bb.dc, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314"
  br label %.backedge

bb.dc:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.backedge.backedge

bb.dd:                                            ; preds = %.thread548, %.thread646
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308", %bb.cf
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.ci, %bb.de
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.gc, %bb.de ], [ %i.ey, %bb.ci ]
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314": ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308"
end_hunk_1
begin_hunk_2_@_ZN3zip4spec22find_central_directory17hb3bc14935b41b74aE:bb.a
bb.aq:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !7600)
  %i.cr = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7600, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
  br i1 %.not.i265, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7600
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.e)
          to label %.noexc266 unwind label %.thread611.loopexit

.noexc266:                                        ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.e, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7600
  br label %bb.ba

bb.at:                                            ; preds = %bb.aj
  %i.cs = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7603, !noundef !5 ; 5 uses
  %i.ct = icmp eq i64 %i.cs, -9223372036854775802
  br i1 %i.ct, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cu = icmp ne i64 %i.cs, -9223372036854775806
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nsw i64 %i.cs, 9223372036854775807
  %i.cw = icmp ugt i64 %i.cs, -9223372036854775808
  %i.cx = select i1 %i.cw, i64 %i.cv, i64 1
  switch i64 %i.cx, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.av
    i64 1, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %.val.i.i269 = load ptr, ptr %i.y, align 8, !alias.scope !7606, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i269)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dp

bb.aw:                                            ; preds = %bb.au
  %i.cy = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.cy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body271 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268": ; preds = %bb.ax
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dp

bb.ba:                                            ; preds = %.noexc266, %bb.ar
  br i1 %i.z, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.db = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.sroa.0.0.insert.insert.i, i64 %3)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.db)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.547.0 = phi i8 [ 0, %bb.ba ], [ 1, %bb.bb ]
  %.sroa.046.0 = phi i64 [ %.sroa.7.sroa.0.0.insert.insert.i, %bb.ba ], [ %.sroa.0.0.i, %bb.bb ]
  %i.dc = invoke noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @284, i64 noundef 4, i64 noundef %.sroa.7.sroa.0.0.insert.insert.i, i64 noundef %i.by)
          to label %bb.bd unwind label %.thread611.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.046.0, ptr %i.aa, align 32
  store i8 %.sroa.547.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775802, ptr %i.k, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha1fb3351d3ebf8d6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 32 dereferenceable(384) %i.p, ptr noalias noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.be unwind label %.thread656.loopexit

.thread656.loopexit:                              ; preds = %bb.bs, %bb.bn, %.backedge, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

.thread656.loopexit.split-lp:                     ; preds = %bb.bt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

bb.be:                                            ; preds = %.backedge
  %i.dd = load i64, ptr %i.j, align 8, !range !7165, !noundef !5 ; 2 uses
  %.not217 = icmp eq i64 %i.dd, -9223372036854775802
  %.sroa.4178.0.copyload = load i64, ptr %.sroa.4178.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5179.0.copyload = load i64, ptr %.sroa.5179.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not217, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dd, ptr %i.de, align 8
  %.sroa.2181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4178.0.copyload, ptr %.sroa.2181.0..sroa_idx, align 8
  %.sroa.3182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.3182.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %i.df = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7609, !noundef !5 ; 5 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775802
  br i1 %i.dg, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dh = icmp ne i64 %i.df, -9223372036854775806
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.df, 9223372036854775807
  %i.dj = icmp ugt i64 %i.df, -9223372036854775808
  %i.dk = select i1 %i.dj, i64 %i.di, i64 1
  switch i64 %i.dk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" [
    i64 0, label %bb.bh
    i64 1, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i277 = load ptr, ptr %i.ag, align 8, !alias.scope !7612, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i277)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" unwind label %.thread611.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bg
  %i.dl = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276" unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread595 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276": ; preds = %bb.bj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283" unwind label %.thread611.loopexit.split-lp

bb.bm:                                            ; preds = %bb.be
  %i.do = trunc nuw i64 %.sroa.4178.0.copyload to i1
  br i1 %i.do, label %bb.bn, label %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit"

bb.bn:                                            ; preds = %bb.bm
  %i.dp = call i64 @llvm.usub.sat.i64(i64 %i.by, i64 %.sroa.5179.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7615
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !alias.scope !7625, !noalias !7615
  %i.dq = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 56)
          to label %.noexc295 unwind label %.thread656.loopexit ; 2 uses

.noexc295:                                        ; preds = %bb.bn
  %.not.i.i.i284 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i284, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc295
  %.sroa.09.0.copyload.i.i.i286 = load i32, ptr %i.c, align 4, !noalias !7615
  %.not4.i.i.i287 = icmp eq i32 %.sroa.09.0.copyload.i.i.i286, 101075792
  br i1 %.not4.i.i.i287, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc295
  %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i = phi i64 [ -9223372036854775807, %.noexc295 ], [ -9223372036854775808, %bb.bo ]
  %.sroa.15.0.ph.i.i = phi ptr [ %i.dq, %.noexc295 ], [ @285, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7615
  %i.dr = ptrtoint ptr %.sroa.15.0.ph.i.i to i64
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.6.i.sroa.0.0.copyload.i289 = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i288, align 4, !noalias !7628 ; 5 uses
  %.sroa.6.i.sroa.5.0.copyload.i291 = load i16, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290, align 4, !noalias !7628
  %.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !7628
  %.sroa.15.5.copyload.i.i = load ptr, ptr %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7628
  %.sroa.22.5.copyload.i.i = load i8, ptr %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7628
  %.sroa.26.5.copyload.i.i = load i64, ptr %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  %i.ds = load <2 x i64>, ptr %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  %.sroa.28.5.copyload.i.i = load i64, ptr %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  %i.dt = load <2 x i64>, ptr %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7615
  %i.du = ptrtoint ptr %.sroa.15.5.copyload.i.i to i64 ; 3 uses
  %.sroa.15.5.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.15.5.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.15.5.extract.shift.i.i to i32
  %i.dv = icmp ult i64 %.sroa.6.i.sroa.0.0.copyload.i289, 44
  br i1 %i.dv, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.6.i.sroa.0.0.copyload.i289, i64 12)
  %i.dx = icmp ugt i64 %i.dw, %i.dp
  br i1 %i.dx, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7629
  %i.dy = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7633
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 0, -44) %i.dy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc296 unwind label %.thread656.loopexit

.noexc296:                                        ; preds = %bb.bs
  %i.dz = load i64, ptr %i.b, align 8, !range !2379, !noalias !7633, !noundef !5
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.ac, align 8, !range !450, !noalias !7633, !noundef !5 ; 2 uses
  br i1 %i.ea, label %bb.bt, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !116

bb.bt:                                            ; preds = %.noexc296
  %i.ec = load i64, ptr %i.ad, align 8, !noalias !7633
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eb, i64 %i.ec) #26
          to label %.noexc297 unwind label %.thread656.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bt
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %.noexc296
  %i.ed = load ptr, ptr %i.ad, align 8, !noalias !7633, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7633
  store i64 %i.eb, ptr %i.d, align 8, !alias.scope !7630, !noalias !7629
  store ptr %i.ed, ptr %i.ae, align 8, !alias.scope !7630, !noalias !7629
  store i64 %i.dy, ptr %i.af, align 8, !alias.scope !7630, !noalias !7629
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc298 unwind label %.thread656.loopexit ; 2 uses

.noexc298:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 8 uses
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7629
  %i.eh = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.ef, i64 noundef %i.eg)
          to label %bb.bw unwind label %bb.bu, !noalias !7634 ; 2 uses

bb.bu:                                            ; preds = %.noexc298
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.thread646, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7634
  br label %.thread646

bb.bw:                                            ; preds = %.noexc298
  %.not.i.i292 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i292, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7634
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %.sroa.67.sroa.8.31.insert.ext.i = zext i8 %.sroa.22.5.copyload.i.i to i32
  %.sroa.67.sroa.8.31.insert.shift.i = shl nuw i32 %.sroa.67.sroa.8.31.insert.ext.i, 24
  %.sroa.67.sroa.8.31.insert.insert.i = or disjoint i32 %.sroa.67.sroa.8.31.insert.shift.i, %.sroa.15.5.extract.trunc.i.i
  %.not.i293 = icmp eq i32 %.sroa.67.sroa.8.31.insert.insert.i, %.sroa.6.i.sroa.0.0.copyload.i
  br i1 %.not.i293, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.em = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, 12
  %.not20.i = icmp eq i64 %i.em, %i.dp
  br i1 %.not20.i, label %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink62.i = phi ptr [ @288, %bb.bz ], [ @287, %bb.ca ]
  %.sink.i294 = phi i64 [ 47, %bb.bz ], [ 35, %bb.ca ] ; 2 uses
  %i.en = ptrtoint ptr %.sink62.i to i64          ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7635
  br label %bb.cd

"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit": ; preds = %bb.bm
  %.sroa.0535.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.not.i301 = icmp eq i64 %.sroa.0535.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.5537.sroa.4.0.copyload = load i64, ptr %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx, align 8
  %.sroa.5537.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.6542.sroa.6.0 = select i1 %.not.i301, i64 21, i64 %.sroa.5537.sroa.4.0.copyload ; 2 uses
  %.sroa.6542.sroa.0.0 = select i1 %.not.i301, ptr @290, ptr %.sroa.5537.sroa.0.0.copyload ; 2 uses
  %.sroa.0539.0 = select i1 %.not.i301, i64 -9223372036854775808, i64 %.sroa.0535.0.copyload ; 2 uses
  %i.ep = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7636, !noundef !5 ; 5 uses
  %i.eq = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %i.eq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.df

bb.cd:                                            ; preds = %bb.cc, %bb.bp, %bb.cb, %bb.by, %bb.bx, %bb.br, %bb.bq
  %.sroa.9501.0.ph = phi i64 [ -9223372036854775808, %bb.bq ], [ -9223372036854775807, %bb.bx ], [ -9223372036854775807, %bb.by ], [ -9223372036854775808, %bb.br ], [ -9223372036854775808, %bb.cb ], [ %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i, %bb.bp ], [ -9223372036854775808, %bb.cc ] ; 2 uses
  %.sroa.13.0.ph = phi i64 [ ptrtoint (ptr @301 to i64), %bb.bq ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.by ], [ ptrtoint (ptr @300 to i64), %bb.br ], [ %i.en, %bb.cb ], [ %i.dr, %bb.bp ], [ %i.en, %bb.cc ] ; 2 uses
  %.sroa.16.0.ph = phi i64 [ 22, %bb.bq ], [ undef, %bb.bx ], [ undef, %bb.by ], [ 36, %bb.br ], [ %.sink.i294, %bb.cb ], [ 32, %bb.bp ], [ %.sink.i294, %bb.cc ] ; 2 uses
  %i.er = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7639, !noundef !5 ; 5 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775802
  br i1 %i.es, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.et = icmp ne i64 %i.er, -9223372036854775806
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nsw i64 %i.er, 9223372036854775807
  %i.ev = icmp ugt i64 %i.er, -9223372036854775808
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 1
  switch i64 %i.ew, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i309 = load ptr, ptr %i.ag, align 8, !alias.scope !7642, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i309)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

bb.cg:                                            ; preds = %bb.ce
  %i.ex = icmp eq i64 %i.er, -9223372036854775808
  br i1 %i.ex, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308" unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body311 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit: ; preds = %bb.ca
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.26.5.copyload.i.i, i64 46) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %bb.ck, label %bb.cl, !prof !116

bb.ck:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit, %bb.ck
  %.sroa.0189.0 = phi i64 [ -1, %bb.ck ], [ %7, %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit ]
  %i.fa = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0189.0, i64 %.sroa.28.5.copyload.i.i)
  %i.fb = icmp ult i64 %.sroa.5179.0.copyload, %i.fa
  br i1 %i.fb, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fc = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1106 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le, 32
  %.sroa.23.28.insert.insert.le = or disjoint i64 %.sroa.23.28.insert.shift.le1106, %i.fc
  %i.fd = shl i56 %.sroa.18.0.copyload.i, 24
  %i.fe = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le = or disjoint i56 %i.fd, %i.fe
  %.sroa.6.16.extract.trunc.le1083 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le to i32
  %.sroa.9.24.extract.trunc.le1079 = trunc nuw i64 %.sroa.23.28.insert.insert.le to i48
  %i.ff = sub i64 %.sroa.5179.0.copyload, %.sroa.7.sroa.0.0.insert.insert.i
  %.sroa.15.1.extract.shift.i.i.le = lshr i64 %i.du, 8
  %.sroa.15.1.extract.trunc.i.i.le = trunc i64 %.sroa.15.1.extract.shift.i.i.le to i32
  %.sroa.67.sroa.11.32.insert.ext.i.le = zext i16 %.sroa.6.i.sroa.5.0.copyload.i291 to i64
  %.sroa.67.sroa.11.34.insert.ext.i.le = zext i8 %.sroa.6.i.sroa.6.0.copyload.i to i64
  %.sroa.67.sroa.11.34.insert.shift.i.le = shl nuw nsw i64 %.sroa.67.sroa.11.34.insert.ext.i.le, 16
  %.sroa.67.sroa.11.34.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.shift.i.le, %.sroa.67.sroa.11.32.insert.ext.i.le
  %.sroa.67.sroa.11.35.insert.ext.i.le = shl i64 %i.du, 24
  %.sroa.67.sroa.11.35.insert.shift.i.le = and i64 %.sroa.67.sroa.11.35.insert.ext.i.le, 4278190080
  %.sroa.67.sroa.11.35.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.insert.i.le, %.sroa.67.sroa.11.35.insert.shift.i.le
  store ptr %i.au, ptr %0, align 8
  %.sroa.062.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.062.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1083, ptr %.sroa.062.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.062.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.062.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1079, ptr %.sroa.062.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.062.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ef, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.eg, ptr %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6.i.sroa.0.0.copyload.i289, ptr %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ds, ptr %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.15.1.extract.trunc.i.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.6.i.sroa.0.0.copyload.i, ptr %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.67.sroa.11.35.insert.insert.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ff, ptr %.sroa.563.0..sroa_idx, align 8
  %i.fg = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7645, !noundef !5 ; 5 uses
  %i.fh = icmp eq i64 %i.fg, -9223372036854775802
  br i1 %i.fh, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fi = icmp ne i64 %i.fg, -9223372036854775806
  call void @llvm.assume(i1 %i.fi)
  %i.fj = add nsw i64 %i.fg, 9223372036854775807
  %i.fk = icmp ugt i64 %i.fg, -9223372036854775808
  %i.fl = select i1 %i.fk, i64 %i.fj, i64 1
  switch i64 %i.fl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" [
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i.i317 = load ptr, ptr %i.ag, align 8, !alias.scope !7648, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i317)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.cp:                                            ; preds = %bb.cn
  %i.fm = icmp eq i64 %i.fg, -9223372036854775808
  br i1 %i.fm, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread548 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316": ; preds = %bb.cq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.ct:                                            ; preds = %bb.cl
  %i.fp = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7651, !noundef !5 ; 5 uses
  %i.fq = icmp eq i64 %i.fp, -9223372036854775802
  br i1 %i.fq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fr = icmp ne i64 %i.fp, -9223372036854775806
  call void @llvm.assume(i1 %i.fr)
  %i.fs = add nsw i64 %i.fp, 9223372036854775807
  %i.ft = icmp ugt i64 %i.fp, -9223372036854775808
  %i.fu = select i1 %i.ft, i64 %i.fs, i64 1
  switch i64 %i.fu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i326 = load ptr, ptr %i.ag, align 8, !alias.scope !7654, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i326)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.fv = icmp eq i64 %i.fp, -9223372036854775808
  br i1 %i.fv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325" unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body328 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325": ; preds = %bb.cx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323": ; preds = %bb.cp, %bb.cn, %bb.cm, %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.da:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325", %bb.cv
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body328:                                         ; preds = %bb.cy, %bb.da
  %eh.lpad-body329 = phi { ptr, i32 } [ %i.fy, %bb.da ], [ %i.fw, %bb.cy ] ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.fz = icmp eq i64 %i.eg, 0
  br i1 %i.fz, label %.thread646, label %bb.db

bb.db:                                            ; preds = %.body328
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331": ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325"
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.ga = icmp eq i64 %i.eg, 0
  br i1 %i.ga, label %.backedge.backedge, label %bb.dc

.backedge.backedge:                               ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", %bb.dc, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314"
  br label %.backedge

bb.dc:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.backedge.backedge

bb.dd:                                            ; preds = %.thread548, %.thread646
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308", %bb.cf
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.ci, %bb.de
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.gc, %bb.de ], [ %i.ey, %bb.ci ]
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314": ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308"
end_hunk_2
begin_hunk_3_@"_ZN108_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_subscriber..registry..LookupSpan$GT$9span_data17h06a47e63890e94faE"
declare void @"_ZN108_$LT$tracing_subscriber..registry..sharded..Registry$u20$as$u20$tracing_subscriber..registry..LookupSpan$GT$9span_data17h06a47e63890e94faE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17hbe92c8b3474fe742E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$22deserialize_identifier17h7e0e24c8f3afe19fE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$22deserialize_identifier17h34258141a5783469E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN10serde_core2de5Error15duplicate_field17ha13c4e6465aaae12E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$anki..notetype..schema11..NotetypeKind$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h371246982657d034E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN19serde_path_to_error5Track12trigger_impl17h05fdab64587fe3f9E(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN68_$LT$anki..card..CardType$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hb9d74a70040fd8f6E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN69_$LT$anki..card..CardQueue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h9323c733eae89e9cE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17h8ed8c7a64d94a677E(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h24a081816181a7acE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5ad0b7ffd5f48a89E"(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17hc12d0be480fa247eE(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h9f80fb1ba237baf1E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0ebad74d3a6cea55E"(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 8 captures(address) dereferenceable(544), ptr noalias noundef align 8 dereferenceable(48), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(544)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17h4ccffe3887ee4ef2E(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hddce64ef5dc627bcE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2669ba7de2c0cf3aE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17h47aa94b58591f4bcE(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h9b8a4fb6085eb2caE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h75a21b79e94ec42bE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17hfb8c49e58c722f22E(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h2bbbcfe46250185eE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hca053136e7156cf4E"(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(address) dereferenceable(224), ptr noalias noundef align 8 dereferenceable(48), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17hbf7ac7208bf0686cE(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h8e1a9202d49c34c2E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h284aaade9c667a1fE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17hdaf1558a46b9a1a9E(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4c27b53539aacc04E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h393f574978a7c844E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17h4a02c7216267302aE(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h390d327748aeef02E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h27660b944e2222fbE"(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN10serde_core7private9size_hint8cautious17heccc27d2739d27b0E(i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h3de18a510c288dc5E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hed4042ff50666cf2E"(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias noundef align 8 dereferenceable(48), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(280)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hf2f75915284cb744E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_ZN3std2io19default_read_to_end17h9f6d7881c3f065a1E(ptr noalias noundef align 8 dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_ZN3std2io19default_read_to_end17h32ac8485dff0cb39E(ptr noalias noundef align 8 dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io16default_read_buf17h5a5ec8c7c39f64c1E(ptr noalias noundef align 8 dereferenceable(104), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io16default_read_buf17hd705dc86c9d3ed2aE(ptr noalias noundef align 8 dereferenceable(224), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io16default_read_buf17hd7e1034a126cd419E(ptr noalias noundef align 8 dereferenceable(104), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io16default_read_buf17h753491aa6003891cE(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN64_$LT$std..sys..stdio..unix..Stderr$u20$as$u20$std..io..Write$GT$5write17h530b0befdb1c2876E"(ptr noalias noundef nonnull align 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io17default_write_fmt17h5630e66f2ac1ec4fE(ptr noalias noundef nonnull align 1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @"_ZN3zip5write87_$LT$impl$u20$std..io..Write$u20$for$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$5write17h2aaaace5a184e842E"(ptr noalias noundef align 8 dereferenceable(296), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hd6a2830b93b53eb0E"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h58eec1f8190c6d30E"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std4sync9lazy_lock14panic_poisoned17h1ac6056989a39e12E() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN6flate27deflate7bufread23DeflateDecoder$LT$R$GT$3new17h6ae7d0e6436bf5c9E"(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN6flate27deflate7bufread23DeflateDecoder$LT$R$GT$3new17h6b21ecca8f46e813E"(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN6flate27deflate7bufread23DeflateDecoder$LT$R$GT$3new17hd5dc73a6d4b33439E"(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$3new17h957713491c851d7aE"(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17hbf39489ce9301506E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(120), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef align 32 dereferenceable(352), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17h343e5494dc7a7996E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 32 dereferenceable(384), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17h1b033de7eb517bc6E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(120), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha207c59479bdd451E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 32 dereferenceable(384), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17h515a286807336f8cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(120), ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha1fb3351d3ebf8d6E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 32 dereferenceable(384), ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17ha3716c9a1fdec5e3E"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17h6654b42bc96c228bE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN9crc32fast6Hasher3new17h904bb4b28b7844aeE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN73_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17hf9ab22026afba537E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hcd1bdcb789bed582E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std3env3var17h79f506c9ed0237bcE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs11OpenOptions4open17h733d975ccce49cf8E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN16tracing_appender12non_blocking11NonBlocking3new17hde8f30f26ed1a07cE(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), i32 noundef range(i32 0, -1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE"(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs8metadata17hb353265d26345874E(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs6rename17hc74125ff2b26bdf3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs6rename17h221b896ca3e07698E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN93_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$GT$$u20$as$u20$core..default..Default$GT$7default17h3f3fd86b401a2a7cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN18tracing_subscriber8registry17h1e9bb83bd6f49249E(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 8 captures(address) dereferenceable(544)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN93_$LT$tracing_subscriber..fmt..fmt_layer..Layer$LT$S$GT$$u20$as$u20$core..default..Default$GT$7default17h2819c851352de596E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN18tracing_subscriber5layer5Layer15with_subscriber17h134f197bc094ed05E(ptr dead_on_unwind noalias noundef writable sret([576 x i8]) align 8 captures(address) dereferenceable(576), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(544)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN18tracing_subscriber5layer5Layer15with_subscriber17h6de30272ab3c195aE(ptr dead_on_unwind noalias noundef writable sret([632 x i8]) align 8 captures(address) dereferenceable(632), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(576)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN18tracing_subscriber6filter3env9EnvFilter16from_default_env17he9bb4bb07578d9edE(ptr dead_on_unwind noalias noundef writable sret([1784 x i8]) align 8 captures(address) dereferenceable(1784)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN18tracing_subscriber5layer5Layer15with_subscriber17hc90dee9a85f6eabcE(ptr dead_on_unwind noalias noundef writable sret([2424 x i8]) align 8 captures(address) dereferenceable(2424), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1784), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(632)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12tracing_core10dispatcher8Dispatch3new17h4c013bc1d1b2cad8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(2424)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN12tracing_core10dispatcher18set_global_default17h14338de33146e4fbE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$16whatever_context17h654cf95deb59e74cE"(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), i1 noundef zeroext, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$tracing_core..callsite..DefaultCallsite$u20$as$u20$tracing_core..callsite..Callsite$GT$12set_interest17h2246085152988a15E"(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19nonempty_file_count17h0489276618cdc5e1E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h0d221fdbb51cd75bE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(112), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki4sync5media8database6server5entry7changes74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19media_changes_chunk17h998f0fafb4ac5173E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noundef nonnull align 8, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17hfcfb1a170c931f42E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(112), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17h36c6aaca05ace4b6E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN7anki_io14create_dir_all17hbc34aac1061b3b0cE(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h3819c2878cd9c08aE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(56), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4anki4sync5media8database6server19ServerMediaDatabase3new17hd76d3d1427a46c45E(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17hf45c109557a0d460E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(120), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$8last_usn17hb81473ab5b853d01E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h31f7955e4408293bE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(112), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs11remove_file17h8a5210ee9c6d9595E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17h3859f145e93c3520E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN7anki_io10write_file17hce3d6a2943a5613dE(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4anki4sync5media3zip24unzip_and_validate_files17h9407a8a40013c528E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h3b41e4bf7719f3b8E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(112), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction17h807b54fe226beee8E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(112), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17h8c81efceb1fc5784E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs4read17h8a4e30318e635c4eE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file17h5b4492b307ab79edE"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h937febc2d4f5cd74E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(112), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN78_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17hcb8f63486d936646E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i1 noundef zeroext, i16 noundef range(i16 1, 0), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17hbf6608ee08f4d35dE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$24get_entries_for_download17hd97e72870a27734bE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4anki4sync5media3zip22zip_files_for_download17ha9a122fe5fe85c05E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h7fe8a79ccabdeeebE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(112), i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN6flate29bufreader18BufReader$LT$R$GT$3new17h178f771b48cf3628E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_ZN3std2io19default_read_to_end17h4feaa9617b20d8c0E(ptr noalias noundef align 8 dereferenceable(240), ptr noalias noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$anki..sync..error..OrHttpErr$GT$11or_http_err17h3925fe42f0d8183fE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef range(i64 0, 2), ptr noundef, i16 noundef range(i16 1, 0), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h622305e407a0ba63E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hb90dfce443c590faE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4anki10deckconfig8schema111_103_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..LapseConfSchema11$GT$11deserialize17h0f9e6e2527645300E"(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls62_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$bool$GT$11deserialize17hff1e427a5011be78E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h3e20c0111c6d0681E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4anki10deckconfig8schema111_101_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..NewConfSchema11$GT$11deserialize17h9ad95500c68fe863E"(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h2bdbf886e34e3c82E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0
end_hunk_3
