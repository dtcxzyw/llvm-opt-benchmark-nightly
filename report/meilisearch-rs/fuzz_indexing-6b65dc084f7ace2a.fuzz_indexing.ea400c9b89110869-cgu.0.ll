Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$26insert_items_at_level_zero28_$u7b$$u7b$closure$u7d$$u7d$17h9cff6b5b7ea38206E":bb.a
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.q unwind label %bb.l

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.85)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.85)
  %i.fb = icmp eq i64 %i.cr, 0
  br i1 %i.fb, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit41.thread.thread", label %bb.h

bb.r:                                             ; preds = %bb.j
  %i.fc = landingpad { ptr, i32 }
          cleanup
  store i16 %i.co, ptr %.sroa.943.0..sroa_idx, align 8, !alias.scope !51051, !noalias !51052
  store i64 %i.cr, ptr %.sroa.1145.0..sroa_idx, align 8, !alias.scope !51049, !noalias !51052
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #67
  br label %bb.i

bb.s:                                             ; preds = %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ap, ptr %.sroa.920.0..sroa_idx, align 8, !alias.scope !51036, !noalias !51037
  store i64 %i.as, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !51034, !noalias !51037
  br label %bb.d

bb.t:                                             ; preds = %bb.e
  %i.fe = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %.not7 = icmp eq i64 %i.fe, 0
  %i.ff = load ptr, ptr %.sroa.426.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not7, label %.thread81, label %bb.u

.thread81:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %.sroa.527.0.copyload = load i64, ptr %.sroa.527.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !51062)
  %.val.i.i67 = load ptr, ptr %i.ff, align 8, !alias.scope !51062, !noalias !51063, !nonnull !16, !noundef !16 ; 8 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.val4.i.i68 = load i64, ptr %i.fg, align 8, !alias.scope !51062, !noalias !51063, !noundef !16 ; 4 uses
  %.sroa.0.04.i.i.i.i69 = and i64 %.val4.i.i68, %.sroa.527.0.copyload ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i.i67, i64 %.sroa.0.04.i.i.i.i69
  %.sroa.0.0.copyload.i35.i.i.i.i70 = load <16 x i8>, ptr %i.fh, align 1, !noalias !51064
  %i.fi = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i70, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i71 = icmp eq i16 %i.fj, 0
  br i1 %.not.not.i.not6.i.i.i.i71, label %.lr.ph.i.i.i.i85, label %._crit_edge.i.i.i.i72, !prof !55

.lr.ph.i.i.i.i85:                                 ; preds = %bb.u, %.lr.ph.i.i.i.i85
  %.sroa.0.07.i.i.i.i86 = phi i64 [ %.sroa.0.0.i.i.i.i87, %.lr.ph.i.i.i.i85 ], [ %.sroa.0.04.i.i.i.i69, %bb.u ]
  %i.fk = phi i64 [ %i.fl, %.lr.ph.i.i.i.i85 ], [ 0, %bb.u ]
  %i.fl = add i64 %i.fk, 16                       ; 2 uses
  %i.fm = add i64 %i.fl, %.sroa.0.07.i.i.i.i86
  %.sroa.0.0.i.i.i.i87 = and i64 %i.fm, %.val4.i.i68 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i67, i64 %.sroa.0.0.i.i.i.i87
  %.sroa.0.0.copyload.i3.i.i.i.i88 = load <16 x i8>, ptr %i.fn, align 1, !noalias !51064
  %i.fo = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i88, zeroinitializer
  %i.fp = bitcast <16 x i1> %i.fo to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i89 = icmp eq i16 %i.fp, 0
  br i1 %.not.not.i.not.i.i.i.i89, label %.lr.ph.i.i.i.i85, label %._crit_edge.i.i.i.i72, !prof !56

._crit_edge.i.i.i.i72:                            ; preds = %.lr.ph.i.i.i.i85, %bb.u
  %.sroa.0.0.lcssa.i.i.i.i73 = phi i64 [ %.sroa.0.04.i.i.i.i69, %bb.u ], [ %.sroa.0.0.i.i.i.i87, %.lr.ph.i.i.i.i85 ]
  %.lcssa.i.i.i.i74 = phi i16 [ %i.fj, %bb.u ], [ %i.fp, %.lr.ph.i.i.i.i85 ]
  %i.fq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i74, i1 true)
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = add i64 %.sroa.0.0.lcssa.i.i.i.i73, %i.fr
  %i.ft = and i64 %i.fs, %.val4.i.i68             ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i67, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !noalias !51065, !noundef !16 ; 2 uses
  %i.fw = icmp sgt i8 %i.fv, -1
  br i1 %i.fw, label %bb.v, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i75", !prof !18

bb.v:                                             ; preds = %._crit_edge.i.i.i.i72
  %.val62.i.i.i.i.i82 = load <16 x i8>, ptr %.val.i.i67, align 16, !noalias !51065
  %i.fx = icmp slt <16 x i8> %.val62.i.i.i.i.i82, zeroinitializer
  %i.fy = bitcast <16 x i1> %i.fx to i16          ; 2 uses
  %i.fz = icmp ne i16 %i.fy, 0
  call void @llvm.assume(i1 %i.fz)
  %i.ga = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fy, i1 true)
  %i.gb = zext nneg i16 %i.ga to i64              ; 2 uses
  %.phi.trans.insert.i.i.i83 = getelementptr inbounds nuw i8, ptr %.val.i.i67, i64 %i.gb
  %.pre.i.i.i84 = load i8, ptr %.phi.trans.insert.i.i.i83, align 1, !noalias !51065
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i75"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i75": ; preds = %bb.v, %._crit_edge.i.i.i.i72
  %i.gc = phi i8 [ %.pre.i.i.i84, %bb.v ], [ %i.fv, %._crit_edge.i.i.i.i72 ]
  %.sroa.0.0.i5.i.i.i.i76 = phi i64 [ %i.gb, %bb.v ], [ %i.ft, %._crit_edge.i.i.i.i72 ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i67, i64 %.sroa.0.0.i5.i.i.i.i76
  %i.ge = lshr i64 %.sroa.527.0.copyload, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.0.i5.i.i.i.i76, -16
  %i.gh = and i64 %i.gg, %.val4.i.i68
  store i8 %i.gf, ptr %i.gd, align 1, !noalias !51065
  %i.gi = getelementptr i8, ptr %.val.i.i67, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.gf, ptr %i.gj, align 1, !noalias !51065
  %i.gk = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i76
  %i.gl = getelementptr inbounds [32 x i8], ptr %.val.i.i67, i64 %i.gk ; 5 uses
  %i.gm = and i8 %i.gc, 1
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.gl, i64 -32
  store i64 %i.fe, ptr %i.gp, align 8, !noalias !51066
  %.sroa.413.0..sroa_idx.i77 = getelementptr inbounds i8, ptr %i.gl, i64 -24
  store i64 0, ptr %.sroa.413.0..sroa_idx.i77, align 8, !noalias !51066
  %.sroa.514.0..sroa_idx.i78 = getelementptr inbounds i8, ptr %i.gl, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.514.0..sroa_idx.i78, align 8, !noalias !51066
  %.sroa.6.0..sroa_idx.i79 = getelementptr inbounds i8, ptr %i.gl, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i79, align 8, !noalias !51066
  %i.gq = load <2 x i64>, ptr %i.go, align 8, !alias.scope !51062, !noalias !51063
  %i.gr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gn, i64 0
  %i.gs = sub <2 x i64> %i.gq, %i.gr
  store <2 x i64> %i.gs, ptr %i.go, align 8, !alias.scope !51062, !noalias !51063
  br label %bb.w

bb.w:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i75", %.thread81
  %.pn.i80 = phi ptr [ %i.gl, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i75" ], [ %i.ff, %.thread81 ]
  %.sroa.0.0.i81 = getelementptr inbounds i8, ptr %.pn.i80, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i81, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.x unwind label %bb.s

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.gt = icmp eq i64 %i.as, 0
  br i1 %i.gt, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread.thread", label %bb.c

bb.y:                                             ; preds = %bb.e
  %i.gu = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ap, ptr %.sroa.920.0..sroa_idx, align 8, !alias.scope !51036, !noalias !51037
  store i64 %i.as, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !51034, !noalias !51037
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #67
  br label %bb.d

.thread:                                          ; preds = %bb.i, %bb.d
  %.pn8.pn64 = phi { ptr, i32 } [ %.pn8, %bb.d ], [ %.pn, %bb.i ]
  call fastcc void @"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #67
  call fastcc void @"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE"(ptr noalias noundef align 8 dereferenceable(48) %i.j) #67
  resume { ptr, i32 } %.pn8.pn64
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$33insert_chunk_of_items_recursively17h3942959839385cb6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 1, 0) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6115.sroa.7 = alloca [16 x i8], align 8  ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [152 x i8], align 8               ; 11 uses
  %i.m = alloca [152 x i8], align 8               ; 11 uses
  %i.n = alloca [128 x i8], align 8               ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 21 uses
  %i.y = alloca [16 x i8], align 8                ; 3 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.664 = alloca [24 x i8], align 8          ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 22 uses
  %i.ab = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.9584 = alloca [16 x i8], align 8         ; 7 uses
  %i.ac = alloca [64 x i8], align 8               ; 14 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.645.sroa.7 = alloca [16 x i8], align 8   ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 3 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 12 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.9575 = alloca [16 x i8], align 8         ; 7 uses
  %i.ak = alloca [64 x i8], align 8               ; 14 uses
  %i.al = alloca [152 x i8], align 8              ; 11 uses
  %i.am = alloca [152 x i8], align 8              ; 11 uses
  %i.an = alloca [128 x i8], align 8              ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [48 x i8], align 8               ; 16 uses
  %i.aq = alloca [48 x i8], align 8               ; 14 uses
  %i.ar = alloca [56 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_ZN9cellulite7builder18get_children_cells17h56839557153c4de8E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ar, i64 noundef %6)
          to label %bb.c unwind label %bb.b

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit": ; preds = %bb.h, %.thread754.thread919, %bb.b
  %.pn411 = phi { ptr, i32 } [ %i.as, %bb.b ], [ %.pn409, %.thread754.thread919 ], [ %.pn409, %bb.h ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %5) #67
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %4) #67
  resume { ptr, i32 } %.pn411

bb.b:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit"

bb.c:                                             ; preds = %bb.a
  %i.at = load i64, ptr %i.ar, align 8, !range !39, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.at, 11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.0151.0.copyload = load i64, ptr %i.au, align 8 ; 8 uses
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4152.sroa.0.0.copyload = load ptr, ptr %.sroa.4152.0..sroa_idx, align 8 ; 9 uses
  %.sroa.4152.sroa.4.0..sroa.4152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.4152.sroa.4.0.copyload = load i64, ptr %.sroa.4152.sroa.4.0..sroa.4152.0..sroa_idx.sroa_idx, align 8 ; 9 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6160.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i64 %i.at, ptr %0, align 8
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0151.0.copyload, ptr %.sroa.2162.0..sroa_idx, align 8
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4152.sroa.0.0.copyload, ptr %.sroa.3163.0..sroa_idx, align 8
  %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4152.sroa.4.0.copyload, ptr %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit538"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not360 = icmp eq i64 %.sroa.0151.0.copyload, -9223372036854775808
  br i1 %.not360, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.av = icmp ult i64 %.sroa.4152.sroa.4.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.av)
  %i.aw = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 8, !range !33, !noalias !51201, !noundef !16
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i", !prof !19

._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.aw, align 8, !noalias !51202
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !51202
  br label %bb.j

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i": ; preds = %bb.f
  %i.ba = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i"
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  %i.bc = extractvalue { i64, i64 } %i.ba, 1      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !noalias !51203
  store i8 1, ptr %i.ax, align 8, !noalias !51203
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  store i64 11, ptr %0, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit538"

.thread754.thread919:                             ; preds = %bb.v, %.thread754.thread, %bb.i
  %.pn409 = phi { ptr, i32 } [ %i.bg, %bb.i ], [ %.pn407753, %.thread754.thread ], [ %.pn391, %bb.v ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0151.0.copyload, 0
  br i1 %i.be, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit", label %bb.h

bb.h:                                             ; preds = %.thread754.thread919
  %i.bf = shl nuw i64 %.sroa.0151.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4152.sroa.0.0.copyload, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit"

bb.i:                                             ; preds = %bb.o, %bb.n, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.thread754.thread919

bb.j:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i
  %.pre-phi1158 = phi i64 [ %i.bc, %.noexc ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.bb, %.noexc ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i ] ; 2 uses
  %i.bh = add i64 %.pre-phi, 1
  store i64 %i.bh, ptr %i.aw, align 8, !noalias !51202
  %i.bi = icmp eq i64 %.sroa.4152.sroa.4.0.copyload, 0
  br i1 %i.bi, label %"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hebe5a72b1b1efa4eE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = icmp samesign ult i64 %.sroa.4152.sroa.4.0.copyload, 15
  br i1 %i.bj, label %.thread.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = shl nuw nsw i64 %.sroa.4152.sroa.4.0.copyload, 3
  %i.bl = udiv i64 %i.bk, 7
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = lshr i64 -1, %i.bn                      ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 1
  %i.bq = icmp samesign ugt i64 %i.bo, 576460752303423486
  br i1 %i.bq, label %bb.n, label %bb.m, !prof !119

.thread.i.i.i:                                    ; preds = %bb.k
  %i.br = icmp samesign ult i64 %.sroa.4152.sroa.4.0.copyload, 4
  %i.bs = and i64 %.sroa.4152.sroa.4.0.copyload, 8
  %..i.i.i.i = add nuw nsw i64 %i.bs, 8
  %.sroa.03.0.i.i.i.i = select i1 %i.br, i64 4, i64 %..i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %.thread.i.i.i, %bb.l
  %.sroa.4.0.i.ph7.i.i.i = phi i64 [ %.sroa.03.0.i.i.i.i, %.thread.i.i.i ], [ %i.bp, %bb.l ] ; 5 uses
  %i.bt = shl nuw i64 %.sroa.4.0.i.ph7.i.i.i, 5   ; 3 uses
  %i.bu = add nuw nsw i64 %.sroa.4.0.i.ph7.i.i.i, 16 ; 2 uses
  %i.bv = add i64 %i.bu, %i.bt                    ; 4 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  %i.bx = icmp ugt i64 %i.bv, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.bw, %i.bx
  br i1 %or.cond.i.i.i.i, label %bb.n, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", !prof !34

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !51204
  %i.by = call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !51204 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.o, label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.i.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i unwind label %bb.i

bb.o:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.cb = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bv)
          to label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i unwind label %bb.i

_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i: ; preds = %bb.o, %bb.n
  %.pn.i.i.i = phi { i64, i64 } [ %i.ca, %bb.n ], [ %i.cb, %bb.o ] ; 2 uses
  %.sroa.12.011.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 1
  %.sroa.7.012.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0
  br label %"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hebe5a72b1b1efa4eE.exit"

_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.i.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.cc = icmp samesign ult i64 %.sroa.4.0.i.ph7.i.i.i, 9
  %i.cd = add nsw i64 %.sroa.4.0.i.ph7.i.i.i, -1  ; 2 uses
  %i.ce = lshr i64 %.sroa.4.0.i.ph7.i.i.i, 3
  %i.cf = mul nuw nsw i64 %i.ce, 7
  %.sroa.02.0.i.i.i.i = select i1 %i.cc, i64 %i.cd, i64 %i.cf
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bt ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.cg, i8 -1, i64 %i.bu, i1 false), !noalias !51205
  br label %"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hebe5a72b1b1efa4eE.exit"

"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hebe5a72b1b1efa4eE.exit": ; preds = %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.i.i.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i, %bb.j
  %.sroa.8.0.i.i = phi i64 [ %.sroa.02.0.i.i.i.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.i.i.i ], [ %.sroa.12.011.i.i.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i ], [ 0, %bb.j ]
  %.sroa.6.0.i.i = phi i64 [ %i.cd, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.i.i.i ], [ %.sroa.7.012.i.i.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i ], [ 0, %bb.j ]
  %.sroa.0.0.i.i = phi ptr [ %i.cg, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.i.i.i ], [ null, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hb2e396d88bdb2834E.exit.thread.i.i.i ], [ @10, %bb.j ]
  store ptr %.sroa.0.0.i.i, ptr %i.aq, align 8
  %.sroa.4605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4605.0..sroa_idx, align 8
  %.sroa.5606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.5606.0..sroa_idx, align 8
  %.sroa.6607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.6607.0..sroa_idx, align 8
  %.sroa.7608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %.pre-phi, ptr %.sroa.7608.0..sroa_idx, align 8
  %.sroa.8609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %.pre-phi1158, ptr %.sroa.8609.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ch = load i8, ptr %i.ax, align 8, !range !33, !noalias !51206, !noundef !16
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i439, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i437", !prof !19

._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i439: ; preds = %"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hebe5a72b1b1efa4eE.exit"
  %.pre.i.i440 = load i64, ptr %i.aw, align 8, !noalias !51207
  %.phi.trans.insert.i.i441 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre1.i.i442 = load i64, ptr %.phi.trans.insert.i.i441, align 8, !noalias !51207
  br label %bb.p

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i437": ; preds = %"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hebe5a72b1b1efa4eE.exit"
  %i.cj = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc443 unwind label %.thread746 ; 2 uses

.noexc443:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i437"
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !noalias !51208
  store i8 1, ptr %i.ax, align 8, !noalias !51208
  br label %bb.p

.thread746:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1f9689c9910f1ca8E.exit.i.i437"
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.thread754.thread

bb.p:                                             ; preds = %.noexc443, %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i439
  %.pre-phi1162 = phi i64 [ %i.cl, %.noexc443 ], [ %.pre1.i.i442, %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i439 ]
  %.pre-phi1160 = phi i64 [ %i.ck, %.noexc443 ], [ %.pre.i.i440, %._ZN4core3ops8function6FnOnce9call_once17h7ed063eb477a8840E.exit_crit_edge.i.i439 ] ; 2 uses
  %i.co = add i64 %.pre-phi1160, 1
  store i64 %i.co, ptr %i.aw, align 8, !noalias !51207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) @11, i64 32, i1 false)
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %.pre-phi1160, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %.pre-phi1162, ptr %.sroa.5167.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  %.idx = shl nuw nsw i64 %.sroa.4152.sroa.4.0.copyload, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 %.idx
  %i.cq = icmp eq i64 %.sroa.4152.sroa.4.0.copyload, 0
  br i1 %i.cq, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %.sroa.0349.1991 = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 8
  %.val416 = load ptr, ptr %3, align 8, !nonnull !16, !align !21, !noundef !16
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.cs, i64 %i.cu
  %.sroa.016.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4172.sroa.4.sroa.4.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.4172.sroa.4.sroa.5.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.4172.sroa.5.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.432.sroa.4.sroa.4.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.432.sroa.4.sroa.5.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.432.sroa.6.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.4652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %8 = insertelement <2 x ptr> poison, ptr %i.cs, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.cv, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ck
  %.sroa.0349.1993 = phi ptr [ %.sroa.0349.1991, %.lr.ph ], [ %.sroa.0349.1, %bb.ck ] ; 3 uses
  %.sroa.0349.0992 = phi ptr [ %.sroa.4152.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0349.1993, %bb.ck ]
  %i.cw = load i64, ptr %.sroa.0349.0992, align 8, !range !35, !noundef !16 ; 3 uses
  %i.cx = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val416)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit" unwind label %.thread771

._crit_edge:                                      ; preds = %bb.ck
  %.sroa.0699.0.copyload.pre = load ptr, ptr %i.ap, align 8 ; 4 uses
  %.sroa.2700.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2700.0.copyload.pre = load i64, ptr %.sroa.2700.0..sroa_idx.phi.trans.insert, align 8 ; 5 uses
  %.sroa.3702.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.3702.0.copyload.pre = load i64, ptr %.sroa.3702.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.0699.0.copyload.pre, align 16, !noalias !51209 ; 2 uses
  %i.cy = icmp eq i64 %.sroa.2700.0.copyload.pre, 0
  br i1 %i.cy, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.cz = icmp slt i64 %.sroa.2700.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %i.cz)
  %i.da = shl i64 %.sroa.2700.0.copyload.pre, 5   ; 2 uses
  %i.db = add i64 %i.da, 32                       ; 2 uses
  %i.dc = add nsw i64 %.sroa.2700.0.copyload.pre, 17
  %i.dd = add i64 %i.dc, %i.db                    ; 3 uses
  %i.de = icmp uge i64 %i.dd, %i.db
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp ult i64 %i.dd, 9223372036854775793
  call void @llvm.assume(i1 %i.df)
  %i.dg = sub nuw nsw i64 -32, %i.da
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0699.0.copyload.pre, i64 %i.dg
  br label %._crit_edge.thread

.thread771:                                       ; preds = %bb.cf, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread754

._crit_edge.thread:                               ; preds = %bb.p, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.val13.i.i.i1208 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %bb.p ]
  %.sroa.0699.0.copyload1207 = phi ptr [ %.sroa.0699.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.0699.0.copyload.pre, %._crit_edge ], [ @10, %bb.p ] ; 4 uses
  %.sroa.2700.0.copyload1206 = phi i64 [ %.sroa.2700.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.p ]
  %.sroa.3702.0.copyload1205 = phi i64 [ %.sroa.3702.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.3702.0.copyload.pre, %._crit_edge ], [ 0, %bb.p ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.dd, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.p ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.dh, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.p ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.p ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0699.0.copyload1207, i64 16 ; 2 uses
  %i.dj = icmp sgt <16 x i8> %.val13.i.i.i1208, splat (i8 -1) ; 2 uses
  %i.dk = getelementptr i8, ptr %.sroa.0699.0.copyload1207, i64 %.sroa.2700.0.copyload1206
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ak, align 8
  %.sroa.5620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.5620.0..sroa_idx, align 8
  %.sroa.6621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.6621.0..sroa_idx, align 8
  %.sroa.7622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store ptr %.sroa.0699.0.copyload1207, ptr %.sroa.7622.0..sroa_idx, align 8
  %.sroa.8623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  store ptr %i.di, ptr %.sroa.8623.0..sroa_idx, align 8
  %.sroa.9624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.dl, ptr %.sroa.9624.0..sroa_idx, align 8
  %.sroa.10625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 6 uses
  store <16 x i1> %i.dj, ptr %.sroa.10625.0..sroa_idx, align 8
  %.sroa.12626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 6 uses
  store i64 %.sroa.3702.0.copyload1205, ptr %.sroa.12626.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9575)
  %i.dm = icmp eq i64 %.sroa.3702.0.copyload1205, 0
  br i1 %i.dm, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread", label %.lr.ph1001

.lr.ph1001:                                       ; preds = %._crit_edge.thread
  %.sroa.10625.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.dj to i16
  %.sroa.9575.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val415 = load ptr, ptr %3, align 8, !nonnull !16, !align !21
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load i32, ptr %i.dp, align 8            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph1001, %bb.cc
  %i.du = phi i64 [ %.sroa.3702.0.copyload1205, %.lr.ph1001 ], [ %i.eh, %bb.cc ]
  %i.dv = phi i16 [ %.sroa.10625.0..sroa_idx.promoted.cast, %.lr.ph1001 ], [ %i.ee, %bb.cc ] ; 2 uses
  %.pre.i.i449995999 = phi ptr [ %.sroa.0699.0.copyload1207, %.lr.ph1001 ], [ %.pre.i.i449994, %bb.cc ] ; 2 uses
  %.promoted15.i.i997998 = phi ptr [ %i.di, %.lr.ph1001 ], [ %.promoted15.i.i996, %bb.cc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51210)
  call void @llvm.experimental.noalias.scope.decl(metadata !51211)
  %.not13.i.i = icmp eq i16 %i.dv, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit"

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.ea, ptr %.sroa.8623.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  store ptr %i.dz, ptr %.sroa.7622.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit"

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  %i.dw = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.promoted15.i.i997998, %bb.r ] ; 2 uses
  %i.dx = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.pre.i.i449995999, %bb.r ]
  %.val911.i.i = load <16 x i8>, ptr %i.dw, align 16, !noalias !51214
  %i.dy = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -512 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.dy to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread853:                                       ; preds = %bb.by, %bb.ce
  %.sink = phi ptr [ %i.ai, %bb.by ], [ %i.aj, %bb.ce ]
  %.pn398 = phi { ptr, i32 } [ %i.if, %bb.by ], [ %lpad.thr_comm860, %bb.ce ]
  store i16 %i.ee, ptr %.sroa.10625.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  store i64 %i.eh, ptr %.sroa.12626.0..sroa_idx, align 8, !alias.scope !51210, !noalias !51213
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #67
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E"(ptr noalias noundef align 8 dereferenceable(64) %i.ak) #67
  br label %.thread754.thread

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit": ; preds = %bb.r, %._crit_edge.i.i
  %.promoted15.i.i996 = phi ptr [ %i.ea, %._crit_edge.i.i ], [ %.promoted15.i.i997998, %bb.r ]
  %.pre.i.i449994 = phi ptr [ %i.dz, %._crit_edge.i.i ], [ %.pre.i.i449995999, %bb.r ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.dv, %bb.r ] ; 3 uses
  %i.eb = add i16 %.lcssa.i.i, -1
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = and i16 %i.eb, %.lcssa.i.i              ; 6 uses
  %i.ef = sub nsw i64 0, %i.ed
  %i.eg = getelementptr inbounds [32 x i8], ptr %.pre.i.i449994, i64 %i.ef ; 3 uses
  %i.eh = add i64 %i.du, -1                       ; 7 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -32
  %.sroa.0573.0.copyload = load i64, ptr %i.ei, align 8, !noalias !51210 ; 2 uses
  %.sroa.6574.0..sroa_idx = getelementptr inbounds i8, ptr %i.eg, i64 -24
  %.sroa.6574.0.copyload = load i64, ptr %.sroa.6574.0..sroa_idx, align 8, !noalias !51210 ; 2 uses
  %.sroa.9575.0..sroa_idx = getelementptr inbounds i8, ptr %i.eg, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9575, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9575.0..sroa_idx, i64 16, i1 false), !noalias !51210
  %.not362 = icmp eq i64 %.sroa.6574.0.copyload, -9223372036854775808
  br i1 %.not362, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread.sink.split", label %bb.s

bb.s:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %.sroa.6574.0.copyload, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9575.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9575, i64 16, i1 false)
  %i.ej = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val415)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit451" unwind label %bb.ce

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread.sink.split": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit", %bb.cc
  %.lcssa1347.sink = phi i64 [ 0, %bb.cc ], [ %i.eh, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit" ]
  store i16 %i.ee, ptr %.sroa.10625.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  store i64 %.lcssa1347.sink, ptr %.sroa.12626.0..sroa_idx, align 8, !alias.scope !51210, !noalias !51213
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread.sink.split", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9575)
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E"(ptr noalias noundef align 8 dereferenceable(64) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.0704.0.copyload = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16 ; 6 uses
  %.sroa.2705.0.copyload = load i64, ptr %.sroa.4605.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3707.0.copyload = load i64, ptr %.sroa.6607.0..sroa_idx, align 8 ; 3 uses
  %.val13.i.i.i457 = load <16 x i8>, ptr %.sroa.0704.0.copyload, align 16, !noalias !51215
  %i.ek = icmp eq i64 %.sroa.2705.0.copyload, 0
  br i1 %i.ek, label %bb.t, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i458

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i458: ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread"
  %i.el = icmp slt i64 %.sroa.2705.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.el)
  %i.em = shl i64 %.sroa.2705.0.copyload, 5       ; 2 uses
  %i.en = add i64 %i.em, 32                       ; 2 uses
  %i.eo = add nsw i64 %.sroa.2705.0.copyload, 17
  %i.ep = add i64 %i.eo, %i.en                    ; 3 uses
  %i.eq = icmp uge i64 %i.ep, %i.en
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp ult i64 %i.ep, 9223372036854775793
  call void @llvm.assume(i1 %i.er)
  %i.es = sub nuw nsw i64 -32, %i.em
  %i.et = getelementptr inbounds i8, ptr %.sroa.0704.0.copyload, i64 %i.es
  br label %bb.t

bb.t:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i458, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread"
  %.sroa.5.sroa.0.0.i.i.i.i459 = phi i64 [ %i.ep, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i458 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i460 = phi ptr [ %i.et, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i458 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread" ]
  %.sroa.0.0.i.i.i.i461 = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i458 ], [ 0, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread" ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0704.0.copyload, i64 16 ; 2 uses
  %i.ev = icmp sgt <16 x i8> %.val13.i.i.i457, splat (i8 -1) ; 2 uses
  %i.ew = getelementptr i8, ptr %.sroa.0704.0.copyload, i64 %.sroa.2705.0.copyload
  %i.ex = getelementptr i8, ptr %i.ew, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.0.0.i.i.i.i461, ptr %i.ac, align 8
  %.sroa.5670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i459, ptr %.sroa.5670.0..sroa_idx, align 8
  %.sroa.6671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i460, ptr %.sroa.6671.0..sroa_idx, align 8
  %.sroa.7672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %.sroa.0704.0.copyload, ptr %.sroa.7672.0..sroa_idx, align 8
  %.sroa.8673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.eu, ptr %.sroa.8673.0..sroa_idx, align 8
  %.sroa.9674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
end_hunk_0
begin_hunk_1_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$33insert_chunk_of_items_recursively17h3942959839385cb6E":bb.a
  br label %.thread1259

.thread805:                                       ; preds = %.loopexit.split-lp936.loopexit.split-lp, %.loopexit.split-lp936.loopexit, %.loopexit935
  %.not3641329 = phi i1 [ %.not364.lcssa1315, %.loopexit.split-lp936.loopexit.split-lp ], [ false, %.loopexit.split-lp936.loopexit ], [ %.not364, %.loopexit935 ]
  %.sroa.0140.2.ph = phi i1 [ %.sroa.0140.3.ph.ph, %.loopexit.split-lp936.loopexit.split-lp ], [ true, %.loopexit.split-lp936.loopexit ], [ true, %.loopexit935 ] ; 2 uses
  %.pn383.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp942, %.loopexit.split-lp936.loopexit.split-lp ], [ %lpad.loopexit941, %.loopexit.split-lp936.loopexit ], [ %lpad.loopexit937, %.loopexit935 ] ; 4 uses
  store i16 %i.ga, ptr %.sroa.10675.0..sroa_idx, align 8, !alias.scope !51218, !noalias !51219
  store i64 %i.gd, ptr %.sroa.12677.0..sroa_idx, align 8, !alias.scope !51216, !noalias !51219
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.x) #67
  br i1 %.not3641329, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494", label %.split

.thread805.thread:                                ; preds = %bb.ab
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.ga, ptr %.sroa.10675.0..sroa_idx, align 8, !alias.scope !51218, !noalias !51219
  store i64 %i.gd, ptr %.sroa.12677.0..sroa_idx, align 8, !alias.scope !51216, !noalias !51219
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.w) #67
  br i1 %.not364, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494.thread", label %.split.thread

.split.thread:                                    ; preds = %.thread805.thread
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.aa)
  br label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494.thread"

.split:                                           ; preds = %.thread805
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.aa)
  br i1 %.sroa.0140.2.ph, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494.thread", label %bb.v

bb.bp:                                            ; preds = %.critedge, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit493.thread1250", %.thread1241, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit493.thread", %.thread847, %bb.z
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.ab)
  br label %.thread1259

.thread1259:                                      ; preds = %bb.bp, %.thread1241, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit493"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9584)
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E"(ptr noalias noundef align 8 dereferenceable(64) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit554"

bb.bq:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(106) %i.io, ptr noundef nonnull readonly align 1 dereferenceable(106) @3126, i64 106, i1 false), !noalias !51223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 10, ptr %0, align 8
  %.sroa.2208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 106, ptr %.sroa.2208.0..sroa_idx, align 8
  %.sroa.2208.sroa.2.0..sroa.2208.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.io, ptr %.sroa.2208.sroa.2.0..sroa.2208.0..sroa_idx.sroa_idx, align 8
  %.sroa.2208.sroa.3.0..sroa.2208.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 106, ptr %.sroa.2208.sroa.3.0..sroa.2208.0..sroa_idx.sroa_idx, align 8
  %.sroa.3209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ik, ptr %.sroa.3209.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$roaring..bitmap..iter..Iter$GT$17hb34bfa13e3046ff3E"(ptr noalias noundef align 8 dereferenceable(128) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..polygon..Polygon$GT$$GT$17h304041e627e928e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.cy

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494.thread": ; preds = %.thread805.thread, %.loopexit.split-lp936, %.split.thread, %.split, %.thread781, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494"
  %.pn389788 = phi { ptr, i32 } [ %i.gi, %.thread781 ], [ %.pn383.ph, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17hdb4c691314902428E.exit494" ], [ %.pn383.ph, %.split ], [ %i.ic, %.split.thread ], [ %.pn3791223, %.loopexit.split-lp936 ], [ %i.ic, %.thread805.thread ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #67
  br label %bb.v

"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit451": ; preds = %bb.s
  br i1 %i.ej, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit451"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0573.0.copyload, ptr %i.dr, align 8
  store i64 1, ptr %i.ag, align 8
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h72334a200a8bbb88E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ah, i64 %i.do, i32 %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.bt unwind label %bb.ce

bb.bs:                                            ; preds = %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit451"
  store i16 %i.ee, ptr %.sroa.10625.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  store i64 %i.eh, ptr %.sroa.12626.0..sroa_idx, align 8, !alias.scope !51210, !noalias !51213
  store i64 4, ptr %0, align 8
  br label %bb.cd

bb.bt:                                            ; preds = %bb.br
  %i.id = load i64, ptr %i.ah, align 8, !range !27, !noundef !16
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %.thread872, label %bb.bu

.thread872:                                       ; preds = %bb.bt
  store i16 %i.ee, ptr %.sroa.10625.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  store i64 %i.eh, ptr %.sroa.12626.0..sroa_idx, align 8, !alias.scope !51210, !noalias !51213
  %.sroa.0215.0.copyload = load i64, ptr %i.ds, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4212.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5226.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.sroa.7, i64 16, i1 false)
  store i64 7, ptr %0, align 8
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0215.0.copyload, ptr %.sroa.4225.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.cd

bb.bu:                                            ; preds = %bb.bt
  %.sroa.0211.0.copyload = load i64, ptr %i.ds, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4212.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not393 = icmp eq i64 %.sroa.0211.0.copyload, -9223372036854775808
  br i1 %.not393, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.sroa.7, i64 16, i1 false)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4218.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5221.0..sroa_idx, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.0211.0.copyload.sink = phi i64 [ 0, %bb.bw ], [ %.sroa.0211.0.copyload, %bb.bv ]
  store i64 %.sroa.0211.0.copyload.sink, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  invoke void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bz, %bb.bx
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.thread853

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 1, ptr %i.ad, align 8
  store i64 %.sroa.0573.0.copyload, ptr %i.dt, align 8
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h2057a6ebc64b5a15E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae, i64 %i.do, i32 %i.dq, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.ig = load i32, ptr %i.ae, align 8, !range !60, !noundef !16 ; 2 uses
  %.not394 = icmp eq i32 %i.ig, 5
  br i1 %.not394, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i16 %i.ee, ptr %.sroa.10625.0..sroa_idx, align 8, !alias.scope !51212, !noalias !51213
  store i64 %i.eh, ptr %.sroa.12626.0..sroa_idx, align 8, !alias.scope !51210, !noalias !51213
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.5236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5236.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4231.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 7, ptr %0, align 8
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ig, ptr %.sroa.4235.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %.thread1259.thread

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9575)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9575)
  %i.ih = icmp eq i64 %i.eh, 0
  br i1 %i.ih, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread.sink.split", label %bb.r

.thread1259.thread:                               ; preds = %bb.cb, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9575)
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E"(ptr noalias noundef align 8 dereferenceable(64) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit"

bb.cd:                                            ; preds = %.thread872, %bb.bs
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.aj)
  br label %.thread1259.thread

bb.ce:                                            ; preds = %bb.br, %bb.s
  %lpad.thr_comm860 = landingpad { ptr, i32 }
          cleanup
  br label %.thread853

"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit": ; preds = %bb.q
  br i1 %i.cx, label %.thread849, label %bb.cf

bb.cf:                                            ; preds = %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_ZN9cellulite7builder14get_cell_shape17h4b4d0174ccd9b0d8E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, i64 noundef %i.cw)
          to label %bb.cg unwind label %.thread771

.thread849:                                       ; preds = %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit"
  store i64 4, ptr %0, align 8
  br label %bb.cy

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 6, ptr %i.an, align 8
  store i64 6, ptr %.sroa.016.sroa.3.0..sroa_idx, align 8
  store <2 x ptr> %9, ptr %.sroa.317.0..sroa_idx, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread903, %bb.cg
  %i.ii = invoke { i32, i32 } @"_ZN86_$LT$roaring..bitmap..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f82839bee4561f7E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.an)
          to label %bb.ci unwind label %.thread760.loopexit ; 2 uses

.thread760.loopexit:                              ; preds = %.invoke1370, %bb.ch, %bb.cj, %bb.co, %bb.cr, %_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread
  %lpad.loopexit944 = landingpad { ptr, i32 }
          cleanup
  br label %.thread760

.thread760.loopexit.split-lp:                     ; preds = %bb.cn
  %lpad.loopexit.split-lp945 = landingpad { ptr, i32 }
          cleanup
  br label %.thread760

.thread760:                                       ; preds = %.thread760.loopexit.split-lp, %.thread760.loopexit
  %lpad.phi946 = phi { ptr, i32 } [ %lpad.loopexit944, %.thread760.loopexit ], [ %lpad.loopexit.split-lp945, %.thread760.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$roaring..bitmap..iter..Iter$GT$17hb34bfa13e3046ff3E"(ptr noalias noundef align 8 dereferenceable(128) %i.an) #67
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..polygon..Polygon$GT$$GT$17h304041e627e928e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ao)
  br label %.thread754

bb.ci:                                            ; preds = %bb.ch
  %i.ij = extractvalue { i32, i32 } %i.ii, 0
  %i.ik = extractvalue { i32, i32 } %i.ii, 1      ; 3 uses
  %i.il = trunc i32 %i.ij to i1
  br i1 %i.il, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_ZN9cellulite7builder11FrozenItems3get17h8232a006ae0a176bE(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %7, i32 noundef %i.ik)
          to label %bb.cl unwind label %.thread760.loopexit

bb.ck:                                            ; preds = %bb.ci
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$roaring..bitmap..iter..Iter$GT$17hb34bfa13e3046ff3E"(ptr noalias noundef align 8 dereferenceable(128) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..polygon..Polygon$GT$$GT$17h304041e627e928e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.im = icmp eq ptr %.sroa.0349.1993, %i.cp     ; 2 uses
  %.sroa.0349.1.idx = select i1 %i.im, i64 0, i64 8
  %.sroa.0349.1 = getelementptr inbounds nuw i8, ptr %.sroa.0349.1993, i64 %.sroa.0349.1.idx
  br i1 %i.im, label %._crit_edge, label %bb.q

bb.cl:                                            ; preds = %bb.cj
  %i.in = load i64, ptr %i.al, align 8, !range !54, !noundef !16 ; 2 uses
  %.not400 = icmp eq i64 %i.in, 7
  br i1 %.not400, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !51224
  %i.io = call noundef dereferenceable_or_null(106) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 106, i64 noundef range(i64 1, 9) 1) #65, !noalias !51224 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.cn, label %bb.bq

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 106, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #66
          to label %.noexc497 unwind label %.thread760.loopexit.split-lp

.noexc497:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cl
  %.sroa.4172.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.4172.sroa.4.sroa.4.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4172.sroa.4.sroa.5.0.copyload = load i64, ptr %.sroa.4172.sroa.4.sroa.5.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4172.sroa.5.0.copyload = load i32, ptr %.sroa.4172.sroa.5.0..sroa.4172.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.432.sroa.6.0..sroa.432.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5173.0..sroa_idx, i64 88, i1 false)
  %i.iq = load <2 x i64>, ptr %.sroa.4172.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 %i.in, ptr %i.am, align 8
  store <2 x i64> %i.iq, ptr %.sroa.432.0..sroa_idx, align 8
  store ptr %.sroa.4172.sroa.4.sroa.4.0.copyload, ptr %.sroa.432.sroa.4.sroa.4.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store i64 %.sroa.4172.sroa.4.sroa.5.0.copyload, ptr %.sroa.432.sroa.4.sroa.5.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store i32 %.sroa.4172.sroa.5.0.copyload, ptr %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  %i.ir = invoke i48 @"_ZN139_$LT$zerometry..Zerometry$u20$as$u20$zerometry..relation..RelationBetweenShapes$LT$geo_types..geometry..multi_polygon..MultiPolygon$GT$$GT$8relation17h59cb8aadfa6cb0b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, i56 1103806660865)
          to label %bb.cp unwind label %.thread760.loopexit ; 3 uses

bb.cp:                                            ; preds = %bb.co
  %i.is = and i48 %i.ir, 256
  %or.cond3.not = icmp eq i48 %i.is, 0
  br i1 %or.cond3.not, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.it = and i48 %i.ir, 1099511627776
  %or.cond.not.i499 = icmp ne i48 %i.it, 0
  %i.iu = and i48 %i.ir, 4311810049
  %or.cond928.not = icmp eq i48 %i.iu, 0
  %or.cond934 = or i1 %or.cond.not.i499, %or.cond928.not
  br i1 %or.cond934, label %_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread903, label %_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hdee2316e45cc80d6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(48) %i.ap, i64 noundef %i.cw)
          to label %bb.cv unwind label %.thread760.loopexit

_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread: ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hdee2316e45cc80d6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(48) %i.aq, i64 noundef %i.cw)
          to label %bb.cs unwind label %.thread760.loopexit

bb.cs:                                            ; preds = %_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread
  %i.iv = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %.not401 = icmp eq i64 %i.iv, 0
  %i.iw = load ptr, ptr %.sroa.4658.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not401, label %.thread905, label %bb.ct

.thread905:                                       ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.invoke1370

bb.ct:                                            ; preds = %bb.cs
  %.sroa.5659.0.copyload = load i64, ptr %.sroa.5659.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !51225)
  %.val.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !51225, !noalias !51226, !nonnull !16, !noundef !16 ; 8 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %.val4.i.i = load i64, ptr %i.ix, align 8, !alias.scope !51225, !noalias !51226, !noundef !16 ; 4 uses
  %.sroa.0.04.i.i.i.i = and i64 %.val4.i.i, %.sroa.5659.0.copyload ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.iy, align 1, !noalias !51227
  %i.iz = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
  %i.ja = bitcast <16 x i1> %i.iz to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i = icmp eq i16 %i.ja, 0
  br i1 %.not.not.i.not6.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !55

.lr.ph.i.i.i.i:                                   ; preds = %bb.ct, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i510, %.lr.ph.i.i.i.i ], [ %.sroa.0.04.i.i.i.i, %bb.ct ]
  %i.jb = phi i64 [ %i.jc, %.lr.ph.i.i.i.i ], [ 0, %bb.ct ]
  %i.jc = add i64 %i.jb, 16                       ; 2 uses
  %i.jd = add i64 %i.jc, %.sroa.0.07.i.i.i.i
  %.sroa.0.0.i.i.i.i510 = and i64 %i.jd, %.val4.i.i ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i.i510
  %.sroa.0.0.copyload.i3.i.i.i.i = load <16 x i8>, ptr %i.je, align 1, !noalias !51227
  %i.jf = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i, zeroinitializer
  %i.jg = bitcast <16 x i1> %i.jf to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.jg, 0
  br i1 %.not.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !56

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ct
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i, %bb.ct ], [ %.sroa.0.0.i.i.i.i510, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.ja, %bb.ct ], [ %i.jg, %.lr.ph.i.i.i.i ]
  %i.jh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ji = zext nneg i16 %i.jh to i64
  %i.jj = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.ji
  %i.jk = and i64 %i.jj, %.val4.i.i               ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !51228, !noundef !16 ; 2 uses
  %i.jn = icmp sgt i8 %i.jm, -1
  br i1 %i.jn, label %bb.cu, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i", !prof !18

bb.cu:                                            ; preds = %._crit_edge.i.i.i.i
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !51228
  %i.jo = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.jp = bitcast <16 x i1> %i.jo to i16          ; 2 uses
  %i.jq = icmp ne i16 %i.jp, 0
  call void @llvm.assume(i1 %i.jq)
  %i.jr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jp, i1 true)
  %i.js = zext nneg i16 %i.jr to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.js
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !51228
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i": ; preds = %bb.cu, %._crit_edge.i.i.i.i
  %i.jt = phi i8 [ %.pre.i.i.i, %bb.cu ], [ %i.jm, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.js, %bb.cu ], [ %i.jk, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.jv = lshr i64 %.sroa.5659.0.copyload, 57
  %i.jw = trunc nuw nsw i64 %i.jv to i8           ; 2 uses
  %i.jx = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.jy = and i64 %i.jx, %.val4.i.i
  store i8 %i.jw, ptr %i.ju, align 1, !noalias !51228
  %i.jz = getelementptr i8, ptr %.val.i.i, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jz, i64 16
  store i8 %i.jw, ptr %i.ka, align 1, !noalias !51228
  %i.kb = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.kc = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.kb ; 5 uses
  %i.kd = and i8 %i.jt, 1
  %i.ke = zext nneg i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kc, i64 -32
  store i64 %i.iv, ptr %i.kg, align 8, !noalias !51229
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.kc, i64 -24
  store i64 0, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !51229
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.kc, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !51229
  %.sroa.6.0..sroa_idx.i509 = getelementptr inbounds i8, ptr %i.kc, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i509, align 8, !noalias !51229
  %i.kh = load <2 x i64>, ptr %i.kf, align 8, !alias.scope !51225, !noalias !51226
  %i.ki = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ke, i64 0
  %i.kj = sub <2 x i64> %i.kh, %i.ki
  store <2 x i64> %i.kj, ptr %i.kf, align 8, !alias.scope !51225, !noalias !51226
  br label %.invoke1370

.invoke1370:                                      ; preds = %.thread905, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i", %.thread910, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i522"
  %.pn.i527.sink = phi ptr [ %i.kl, %.thread910 ], [ %i.lr, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i522" ], [ %i.kc, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h7262e2c054f94f01E.exit.i" ], [ %i.iw, %.thread905 ]
  %.sroa.01.0.i528 = getelementptr inbounds i8, ptr %.pn.i527.sink, i64 -24
  invoke fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h807849db75189ca0E"(ptr noalias noundef align 8 dereferenceable(24) %.sroa.01.0.i528, i32 noundef %i.ik)
          to label %_ZN9zerometry8relation14OutputRelation12any_relation17h24dd15aa6209160dE.exit506.thread903 unwind label %.thread760.loopexit

end_hunk_1
