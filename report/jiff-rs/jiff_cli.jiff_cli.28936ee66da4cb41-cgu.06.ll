Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.06?download=true
inline.NumInlined: 180
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_3vec3VechEINtNtB7_3set8BTreeSetNtNtBb_6string6StringEE5entryCs3tZ2SXJA1qv_8jiff_cli:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.l, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli.exit
  ret void

bb.j:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #11
          to label %common.resume unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE15first_key_valueCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !5   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.015.031.prol = phi i64 [ %i.h, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.sroa.017.030.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.017.030.prol, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = add i64 %.sroa.015.031.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !72

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.sroa.015.031.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.sroa.017.030.unr = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.i = icmp ult i64 %i.d, 8
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.d, %._crit_edge, %bb.a
  %.sroa.4.0 = phi ptr [ undef, %bb.a ], [ %i.ah, %bb.d ], [ undef, %._crit_edge ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ag, %bb.d ], [ null, %._crit_edge ]
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.k

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.sroa.017.0.lcssa = phi ptr [ %i.b, %bb.b ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.017.0.lcssa, i64 274
  %i.m = load i16, ptr %i.l, align 2, !noundef !5
  %.not29 = icmp eq i16 %i.m, 0
  br i1 %.not29, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.015.031 = phi i64 [ %i.ad, %.lr.ph ], [ %.sroa.015.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.017.030 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.017.030.unr, %.lr.ph.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.017.030, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = add i64 %.sroa.015.031, -8              ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.017.0.lcssa, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5, i8 0, i64 16, i1 false)
  %i.af = call { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE7into_kvCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0
  %i.ah = extractvalue { ptr, ptr } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE6insertCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !82, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !84
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !82, !noundef !5
  invoke void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull %i.j, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.j, !noalias !85

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload6 = load i64, ptr %1, align 8, !alias.scope !86
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8, i64 16, i1 false), !alias.scope !86
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !85
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !range !8, !noalias !84, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !87
  %.sroa.9.8..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.9.8.copyload10 = load ptr, ptr %.sroa.9.8..sroa_idx9, align 8, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !84
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread unwind label %bb.g, !noalias !81

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.h, !noalias !81

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !81
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.g, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.q, %bb.g ], [ %i.ac, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !81
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.p, align 8, !noalias !87 ; 2 uses
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !noalias !87
  %.sroa.0.0.copyload5 = load i64, ptr %1, align 8, !alias.scope !86
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7, i64 16, i1 false), !alias.scope !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !84
  %2 = icmp eq ptr %.sroa.11.32.copyload, null
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #11
          to label %common.resume unwind label %bb.d, !noalias !85

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.c, %bb.i
  %.sroa.11.0 = phi i1 [ true, %bb.c ], [ %2, %bb.i ]
  %.sroa.11.0.a = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload6, %bb.c ], [ %.sroa.0.0.copyload5, %bb.i ] ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit
  %.sroa.9.015 = phi ptr [ %.sroa.9.8.copyload10, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread ], [ %0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit ]
  %.sroa.11.014 = phi ptr [ %0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread ], [ %.sroa.11.0.a, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.9.015, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %.sroa.11.014, ptr %.sroa.11.8..sroa_idx, align 8
  %i.u = call { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE5entryCs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.0, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  store ptr %0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %.sroa.11.0.a, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !90
  br i1 %.sroa.11.0, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli()
          to label %bb.n unwind label %bb.q, !noalias !90 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 3 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  store ptr %i.w, ptr %0, align 8, !noalias !90
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.x, ptr %i.z, align 8, !noalias !90
  store ptr %i.w, ptr %i.d, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false), !noalias !88
  call void @_RNvMsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !90
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE12insert_entryCs3tZ2SXJA1qv_8jiff_cli.exit

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 24, i1 false), !noalias !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3v_11VacantEntryB1D_B1Y_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.9.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  %.pre = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !89
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE12insert_entryCs3tZ2SXJA1qv_8jiff_cli.exit

bb.p:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !88
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #11
          to label %common.resume unwind label %bb.p, !noalias !88

_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE12insert_entryCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.n, %bb.o
  %i.ad = phi ptr [ %0, %bb.n ], [ %.pre, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !88, !noundef !5
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !noalias !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load ptr, ptr %i.e, align 8, !noalias !90, !nonnull !5, !noundef !5
  %i.aj = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !89, !nonnull !5, !noundef !5
  store ptr %i.ai, ptr %i.g, align 8, !alias.scope !88
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !90
  store <2 x i64> %i.ak, ptr %.sroa.4.0..sroa_idx.i3, align 8, !alias.scope !88
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.aj, ptr %i.al, align 8, !alias.scope !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !90
  %i.am = call noundef nonnull ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE12insert_entryCs3tZ2SXJA1qv_8jiff_cli.exit
  %i.an = phi i1 [ true, %bb.k ], [ false, %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE12insert_entryCs3tZ2SXJA1qv_8jiff_cli.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret i1 %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE6insertB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.m = load ptr, ptr %1, align 8, !alias.scope !103, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !105
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !103, !noundef !5
  invoke void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1i_14LeafOrInternalE11search_treeB1y_EB21_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.j, !noalias !106

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload15 = load i64, ptr %2, align 8, !alias.scope !107
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx17, i64 16, i1 false), !alias.scope !107
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit

bb.d:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !106
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !range !8, !noalias !105, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !108
  %.sroa.9.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.9.8.copyload19 = load ptr, ptr %.sroa.9.8..sroa_idx18, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !105
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.g, !noalias !102

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread24 unwind label %bb.h, !noalias !102

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !102
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit.thread unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.s, align 8, !noalias !108 ; 2 uses
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !noalias !108
  %.sroa.0.0.copyload14 = load i64, ptr %2, align 8, !alias.scope !107
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx16, i64 16, i1 false), !alias.scope !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !105
  %4 = icmp eq ptr %.sroa.11.32.copyload, null
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #11
          to label %.thread24 unwind label %bb.d, !noalias !106

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread24

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit: ; preds = %bb.i, %bb.c
  %.sroa.11.0 = phi i1 [ true, %bb.c ], [ %4, %bb.i ]
  %.sroa.11.0.a = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.i ] ; 2 uses
  %.sroa.0.020 = phi i64 [ %.sroa.0.0.copyload15, %bb.c ], [ %.sroa.0.0.copyload14, %bb.i ] ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.020, -1
  br i1 %i.w, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit.thread, label %bb.n

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit
  %.sroa.9.039 = phi ptr [ %1, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit ], [ %.sroa.9.8.copyload19, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i ]
  %.sroa.11.038 = phi ptr [ %.sroa.11.0.a, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit ], [ %1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.9.039, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %.sroa.11.038, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.x = invoke { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.t unwind label %bb.l, !noalias !109

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #11
          to label %.thread28 unwind label %bb.m, !noalias !110

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !110
  unreachable

bb.n:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0.020, ptr %i.j, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %.sroa.11.0.a, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !113
  br i1 %.sroa.11.0, label %bb.o, label %.noexc9

bb.o:                                             ; preds = %bb.n
  %i.aa = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1V_()
          to label %.noexc8 unwind label %bb.q, !noalias !113 ; 2 uses

.noexc8:                                          ; preds = %bb.o
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  store ptr %i.ab, ptr %1, align 8, !noalias !113
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !113
  store ptr %i.ab, ptr %i.e, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @_RNvMsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB19_4LeafE16push_with_handleB1S_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
  br label %_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE8into_mutB1O_.exit

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !noalias !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4b_11VacantEntryB1D_B1Y_E12insert_entry0EB26_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.9.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  br label %_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE8into_mutB1O_.exit

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !111
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #11
          to label %bb.r unwind label %bb.p, !noalias !115

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j) #11
          to label %.thread28 unwind label %bb.p, !noalias !111

_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE8into_mutB1O_.exit: ; preds = %.noexc9, %.noexc8
  %i.ai = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !112, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !114, !noundef !5
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !noalias !114
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = load ptr, ptr %i.f, align 8, !noalias !113, !nonnull !5, !noundef !5
  %i.ao = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !112, !nonnull !5, !noundef !5
  store ptr %i.an, ptr %i.h, align 8, !alias.scope !111
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = load <2 x i64>, ptr %i.am, align 8, !noalias !113
  store <2 x i64> %i.ap, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !111
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ao, ptr %i.aq, align 8, !alias.scope !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !113
  %i.ar = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB25_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE8into_mutB1O_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret void

bb.t:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingE5entryB1A_.exit.thread
  %i.as = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.s

.thread28:                                        ; preds = %bb.l, %bb.r, %.thread24
  %.pn23 = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %eh.lpad-body27, %.thread24 ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %.pn23

.thread24:                                        ; preds = %bb.g, %bb.j, %bb.k
  %eh.lpad-body27 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.v, %bb.j ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones7MappingEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %3) #11
          to label %.thread28 unwind label %bb.u

bb.u:                                             ; preds = %.thread24
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE6insertCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.m = load ptr, ptr %1, align 8, !alias.scope !128, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !130
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !128, !noundef !5
  invoke void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringTB1y_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1i_14LeafOrInternalE11search_treeB1y_ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.j, !noalias !131

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload15 = load i64, ptr %2, align 8, !alias.scope !132
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx17, i64 16, i1 false), !alias.scope !132
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !131
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !range !8, !noalias !130, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !133
  %.sroa.9.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.9.8.copyload19 = load ptr, ptr %.sroa.9.8..sroa_idx18, align 8, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i unwind label %bb.g, !noalias !127

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread24 unwind label %bb.h, !noalias !127

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !127
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.s, align 8, !noalias !133 ; 2 uses
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !noalias !133
  %.sroa.0.0.copyload14 = load i64, ptr %2, align 8, !alias.scope !132
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx16, i64 16, i1 false), !alias.scope !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130
  %4 = icmp eq ptr %.sroa.11.32.copyload, null
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #11
          to label %.thread24 unwind label %bb.d, !noalias !131

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread24

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.i, %bb.c
  %.sroa.11.0 = phi i1 [ true, %bb.c ], [ %4, %bb.i ]
  %.sroa.11.0.a = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.i ] ; 2 uses
  %.sroa.0.020 = phi i64 [ %.sroa.0.0.copyload15, %bb.c ], [ %.sroa.0.0.copyload14, %bb.i ] ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.020, -1
  br i1 %i.w, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %bb.n

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit
  %.sroa.9.039 = phi ptr [ %1, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit ], [ %.sroa.9.8.copyload19, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i ]
  %.sroa.11.038 = phi ptr [ %.sroa.11.0.a, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit ], [ %1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.9.039, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %.sroa.11.038, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.x = invoke { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringTB1C_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.t unwind label %bb.l, !noalias !134

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #11
          to label %.thread28 unwind label %bb.m, !noalias !135

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !135
  unreachable

bb.n:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0.020, ptr %i.j, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %.sroa.11.0.a, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !138
  br i1 %.sroa.11.0, label %bb.o, label %.noexc9

bb.o:                                             ; preds = %bb.n
  %i.aa = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringTB1s_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli()
          to label %.noexc8 unwind label %bb.q, !noalias !138 ; 2 uses

.noexc8:                                          ; preds = %bb.o
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  store ptr %i.ab, ptr %1, align 8, !noalias !138
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !138
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !138
  store ptr %i.ab, ptr %i.e, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @_RNvMsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringTB1p_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB19_4LeafE16push_with_handleCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !138
  br label %_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringTB1l_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE8into_mutCs3tZ2SXJA1qv_8jiff_cli.exit

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !noalias !139
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringTB1D_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3U_11VacantEntryB1D_B1Y_E12insert_entry0ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.9.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !138
  br label %_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringTB1l_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE8into_mutCs3tZ2SXJA1qv_8jiff_cli.exit

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !136
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #11
          to label %bb.r unwind label %bb.p, !noalias !140

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j) #11
          to label %.thread28 unwind label %bb.p, !noalias !136

_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringTB1l_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE8into_mutCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %.noexc9, %.noexc8
  %i.ai = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !137, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !139, !noundef !5
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !noalias !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = load ptr, ptr %i.f, align 8, !noalias !138, !nonnull !5, !noundef !5
  %i.ao = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !137, !nonnull !5, !noundef !5
  store ptr %i.an, ptr %i.h, align 8, !alias.scope !136
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = load <2 x i64>, ptr %i.am, align 8, !noalias !138
  store <2 x i64> %i.ap, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ao, ptr %i.aq, align 8, !alias.scope !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !138
  %i.ar = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringTB1C_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringTB1l_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE8into_mutCs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret void

bb.t:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringTB17_INtNtNtCs3oUPovFnLWP_4core3ops5range5RangemEEE5entryCs3tZ2SXJA1qv_8jiff_cli.exit.thread
  %i.as = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.s

.thread28:                                        ; preds = %bb.l, %bb.r, %.thread24
  %.pn23 = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %eh.lpad-body27, %.thread24 ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %.pn23

.thread24:                                        ; preds = %bb.g, %bb.j, %bb.k
  %eh.lpad-body27 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.v, %bb.j ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtNtB4_3ops5range5RangemEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #11
          to label %.thread28 unwind label %bb.u

bb.u:                                             ; preds = %.thread24
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_3vec3VechEINtNtB7_3set8BTreeSetNtNtBb_6string6StringEE10dying_nextCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechEINtNtB7_3set8BTreeSetNtNtBb_6string6StringEE10take_frontCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !152, !noundef !5
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechEINtNtB7_3set8BTreeSetNtNtBb_6string6StringEE10init_frontCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !153 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  invoke void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !155

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !154, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit, !prof !9

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
          to label %.noexc1.i.i unwind label %bb.g, !noalias !156

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !153
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechEINtNtB8_3set8BTreeSetNtNtBc_6string6StringEE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10dying_nextCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10take_frontCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !168, !noundef !5
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli.exit
end_hunk_0
