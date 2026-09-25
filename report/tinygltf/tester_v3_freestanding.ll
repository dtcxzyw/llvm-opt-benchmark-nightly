Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 896
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 291
begin_hunk_0_@tg3_write_to_memory:bb.a
  %.not27.i.i126 = icmp eq i64 %i.aez, 0
  br i1 %.not27.i.i126, label %.loopexit.i132, label %iter.check863

iter.check863:                                    ; preds = %bb.gl
  %min.iters.check850 = icmp samesign ult i64 %i.aez, 4
  br i1 %min.iters.check850, label %.lr.ph.i.i127.preheader, label %vector.memcheck847

vector.memcheck847:                               ; preds = %iter.check863
  %i.afa = add i64 %i.aeq, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.afb = sub i64 %.pre.i122848, %i.afa
  %diff.check849 = icmp ugt i64 %i.afb, -32
  br i1 %diff.check849, label %.lr.ph.i.i127.preheader, label %vector.main.loop.iter.check851

vector.main.loop.iter.check851:                   ; preds = %vector.memcheck847
  %min.iters.check852 = icmp samesign ult i64 %i.aez, 32
  br i1 %min.iters.check852, label %vec.epilog.ph867, label %vector.ph853

vector.ph853:                                     ; preds = %vector.main.loop.iter.check851
  %i.afc = and i64 %i.aez, 28
  %n.vec854 = and i64 %i.aez, 137438953440        ; 4 uses
  br label %vector.body855

vector.body855:                                   ; preds = %vector.ph853, %vector.body855
  %index856 = phi i64 [ 0, %vector.ph853 ], [ %index.next859, %vector.body855 ] ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %index856 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %wide.load857 = load <16 x i8>, ptr %i.afd, align 1, !tbaa !37
  %wide.load858 = load <16 x i8>, ptr %i.afe, align 1, !tbaa !37
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aey, i64 %index856 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  store <16 x i8> %wide.load857, ptr %i.aff, align 1, !tbaa !37
  store <16 x i8> %wide.load858, ptr %i.afg, align 1, !tbaa !37
  %index.next859 = add nuw i64 %index856, 32      ; 2 uses
  %i.afh = icmp eq i64 %index.next859, %n.vec854
  br i1 %i.afh, label %middle.block860, label %vector.body855, !llvm.loop !683

middle.block860:                                  ; preds = %vector.body855
  %cmp.n861 = icmp eq i64 %i.aez, %n.vec854
  br i1 %cmp.n861, label %.loopexit.loopexit.i130, label %vec.epilog.iter.check865

vec.epilog.iter.check865:                         ; preds = %middle.block860
  %min.epilog.iters.check866 = icmp eq i64 %i.afc, 0
  br i1 %min.epilog.iters.check866, label %.lr.ph.i.i127.preheader, label %vec.epilog.ph867, !prof !46

vec.epilog.ph867:                                 ; preds = %vector.main.loop.iter.check851, %vec.epilog.iter.check865
  %vec.epilog.resume.val862 = phi i64 [ %n.vec854, %vec.epilog.iter.check865 ], [ 0, %vector.main.loop.iter.check851 ]
  %n.vec868 = and i64 %i.aez, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body869

vec.epilog.vector.body869:                        ; preds = %vec.epilog.vector.body869, %vec.epilog.ph867
  %index870 = phi i64 [ %vec.epilog.resume.val862, %vec.epilog.ph867 ], [ %index.next872, %vec.epilog.vector.body869 ] ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %index870
  %wide.load871 = load <4 x i8>, ptr %i.afi, align 1, !tbaa !37
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aey, i64 %index870
  store <4 x i8> %wide.load871, ptr %i.afj, align 1, !tbaa !37
  %index.next872 = add nuw i64 %index870, 4       ; 2 uses
  %i.afk = icmp eq i64 %index.next872, %n.vec868
  br i1 %i.afk, label %vec.epilog.middle.block873, label %vec.epilog.vector.body869, !llvm.loop !684

vec.epilog.middle.block873:                       ; preds = %vec.epilog.vector.body869
  %cmp.n874 = icmp eq i64 %i.aez, %n.vec868
  br i1 %cmp.n874, label %.loopexit.loopexit.i130, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %iter.check863, %vector.memcheck847, %vec.epilog.iter.check865, %vec.epilog.middle.block873
  %.026.i.i128.ph = phi i64 [ 0, %iter.check863 ], [ 0, %vector.memcheck847 ], [ %n.vec854, %vec.epilog.iter.check865 ], [ %n.vec868, %vec.epilog.middle.block873 ] ; 3 uses
  %xtraiter948 = and i64 %i.aez, 3                ; 2 uses
  %lcmp.mod949.not = icmp eq i64 %xtraiter948, 0
  br i1 %lcmp.mod949.not, label %.lr.ph.i.i127.prol.loopexit, label %.lr.ph.i.i127.prol

.lr.ph.i.i127.prol:                               ; preds = %.lr.ph.i.i127.preheader, %.lr.ph.i.i127.prol
  %.026.i.i128.prol = phi i64 [ %i.afo, %.lr.ph.i.i127.prol ], [ %.026.i.i128.ph, %.lr.ph.i.i127.preheader ] ; 3 uses
  %prol.iter950 = phi i64 [ %prol.iter950.next, %.lr.ph.i.i127.prol ], [ 0, %.lr.ph.i.i127.preheader ]
  %i.afl = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %.026.i.i128.prol
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !37
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aey, i64 %.026.i.i128.prol
  store i8 %i.afm, ptr %i.afn, align 1, !tbaa !37
  %i.afo = add nuw nsw i64 %.026.i.i128.prol, 1   ; 2 uses
  %prol.iter950.next = add i64 %prol.iter950, 1   ; 2 uses
  %prol.iter950.cmp.not = icmp eq i64 %prol.iter950.next, %xtraiter948
  br i1 %prol.iter950.cmp.not, label %.lr.ph.i.i127.prol.loopexit, label %.lr.ph.i.i127.prol, !llvm.loop !685

.lr.ph.i.i127.prol.loopexit:                      ; preds = %.lr.ph.i.i127.prol, %.lr.ph.i.i127.preheader
  %.026.i.i128.unr = phi i64 [ %.026.i.i128.ph, %.lr.ph.i.i127.preheader ], [ %i.afo, %.lr.ph.i.i127.prol ]
  %i.afp = sub nsw i64 %.026.i.i128.ph, %i.aez
  %i.afq = icmp ugt i64 %i.afp, -4
  br i1 %i.afq, label %.loopexit.loopexit.i130, label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.prol.loopexit, %.lr.ph.i.i127
  %.026.i.i128 = phi i64 [ %i.agg, %.lr.ph.i.i127 ], [ %.026.i.i128.unr, %.lr.ph.i.i127.prol.loopexit ] ; 6 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %.026.i.i128
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !37
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aey, i64 %.026.i.i128
  store i8 %i.afs, ptr %i.aft, align 1, !tbaa !37
  %i.afu = add nuw nsw i64 %.026.i.i128, 1        ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !37
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.afu
  store i8 %i.afw, ptr %i.afx, align 1, !tbaa !37
  %i.afy = add nuw nsw i64 %.026.i.i128, 2        ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !37
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.afy
  store i8 %i.aga, ptr %i.agb, align 1, !tbaa !37
  %i.agc = add nuw nsw i64 %.026.i.i128, 3        ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.pre.i122, i64 %i.agc
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !37
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.agc
  store i8 %i.age, ptr %i.agf, align 1, !tbaa !37
  %i.agg = add nuw nsw i64 %.026.i.i128, 4        ; 2 uses
  %exitcond.not.i.i129.3 = icmp eq i64 %i.agg, %i.aez
  br i1 %exitcond.not.i.i129.3, label %.loopexit.loopexit.i130, label %.lr.ph.i.i127, !llvm.loop !686

.loopexit.loopexit.i130:                          ; preds = %.lr.ph.i.i127.prol.loopexit, %.lr.ph.i.i127, %vec.epilog.middle.block873, %middle.block860
  %.pre33.pre.i131 = load i32, ptr %i.aei, align 8, !tbaa !68
  br label %.loopexit.i132

.loopexit.i132:                                   ; preds = %.loopexit.loopexit.i130, %bb.gl, %bb.gj
  %.pre33.i133 = phi i32 [ %i.aej, %bb.gj ], [ %i.aej, %bb.gl ], [ %.pre33.pre.i131, %.loopexit.loopexit.i130 ]
  %.018.i.ph.i134 = phi ptr [ %i.aeu, %bb.gj ], [ %i.aey, %bb.gl ], [ %i.aey, %.loopexit.loopexit.i130 ] ; 2 uses
  store ptr %.018.i.ph.i134, ptr %1, align 8, !tbaa !69
  store i32 %spec.select.i124, ptr %i.aek, align 4, !tbaa !122
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit.i132, %bb.gg
  %i.agh = phi i32 [ %.pre33.i133, %.loopexit.i132 ], [ %i.aej, %bb.gg ] ; 2 uses
  %i.agi = phi ptr [ %.018.i.ph.i134, %.loopexit.i132 ], [ %.pre.i122, %bb.gg ]
  %i.agj = add i32 %i.agh, 1
  store i32 %i.agj, ptr %i.aei, align 8, !tbaa !68
  %i.agk = zext i32 %i.agh to i64
  %i.agl = getelementptr inbounds nuw [32 x i8], ptr %i.agi, i64 %i.agk ; 5 uses
  store i32 2, ptr %i.agl, align 8, !tbaa !124
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  store i32 50, ptr %i.agm, align 4, !tbaa !125
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  store ptr @.str.8, ptr %i.agn, align 8, !tbaa !126
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  store ptr null, ptr %i.ago, align 8, !tbaa !127
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 24
  store i64 -1, ptr %i.agp, align 8, !tbaa !128
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.agq, align 8, !tbaa !67
  br label %tg3__error_push.exit

bb.gn:                                            ; preds = %bb.ge
  %i.agr = load i32, ptr %.074.sroa.phi86, align 4, !tbaa !720
  %.not104 = icmp eq i32 %i.agr, 0
  br i1 %.not104, label %bb.hb, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ags = trunc i64 %.0244 to i32                ; 3 uses
  %i.agt = add i32 %i.ags, 3                      ; 4 uses
  %i.agu = and i32 %i.agt, -4                     ; 7 uses
  %.sroa.0274.0.extract.trunc = trunc i32 %i.agu to i8
  %.sroa.4275.0.extract.shift = lshr i32 %i.agt, 8
  %.sroa.4275.0.extract.trunc = trunc i32 %.sroa.4275.0.extract.shift to i8
  %.sroa.5276.0.extract.shift = lshr i32 %i.agt, 16
  %.sroa.5276.0.extract.trunc = trunc i32 %.sroa.5276.0.extract.shift to i8
  %.sroa.6277.0.extract.shift = lshr i32 %i.agt, 24
  %.sroa.6277.0.extract.trunc = trunc nuw i32 %.sroa.6277.0.extract.shift to i8
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.agw = load i32, ptr %i.agv, align 8, !tbaa !171
  %.not106 = icmp eq i32 %i.agw, 0
  br i1 %.not106, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.agx = load ptr, ptr %i.y, align 8, !tbaa !170 ; 3 uses
  %.not107 = icmp eq ptr %i.agx, null
  br i1 %.not107, label %bb.gs, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 24
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !167 ; 2 uses
  %.not108 = icmp eq ptr %i.agz, null
  br i1 %.not108, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agx, i64 32
  %i.ahb = load i64, ptr %i.aha, align 8, !tbaa !168
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.go
  %.073 = phi ptr [ %i.agz, %bb.gr ], [ null, %bb.gq ], [ null, %bb.gp ], [ null, %bb.go ] ; 8 uses
  %.072 = phi i64 [ %i.ahb, %bb.gr ], [ 0, %bb.gq ], [ 0, %bb.gp ], [ 0, %bb.go ] ; 16 uses
  %.073691 = ptrtoaddr ptr %.073 to i64
  %i.ahc = trunc i64 %.072 to i32                 ; 3 uses
  %i.ahd = add i32 %i.ahc, 3                      ; 4 uses
  %i.ahe = and i32 %i.ahd, -4                     ; 4 uses
  %.sroa.0270.0.extract.trunc = trunc i32 %i.ahe to i8
  %.sroa.4271.0.extract.shift = lshr i32 %i.ahd, 8
  %.sroa.4271.0.extract.trunc = trunc i32 %.sroa.4271.0.extract.shift to i8
  %.sroa.5272.0.extract.shift = lshr i32 %i.ahd, 16
  %.sroa.5272.0.extract.trunc = trunc i32 %.sroa.5272.0.extract.shift to i8
  %.sroa.6273.0.extract.shift = lshr i32 %i.ahd, 24
  %.sroa.6273.0.extract.trunc = trunc nuw i32 %.sroa.6273.0.extract.shift to i8
  %i.ahf = add i32 %i.agu, 20                     ; 2 uses
  %i.ahg = icmp ne ptr %.073, null
  %i.ahh = icmp ne i64 %.072, 0
  %or.cond5 = select i1 %i.ahg, i1 %i.ahh, i1 false ; 2 uses
  %i.ahi = add i32 %i.ahe, 8
  %i.ahj = select i1 %or.cond5, i32 %i.ahi, i32 0
  %i.ahk = add i32 %i.ahj, %i.ahf                 ; 2 uses
  %i.ahl = zext i32 %i.ahk to i64                 ; 3 uses
  %i.ahm = add nuw nsw i64 %i.ahl, 15
  %i.ahn = and i64 %i.ahm, 8589934584
  %i.aho = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 8 uses
  %i.ahp = add i64 %i.ahn, %i.aho                 ; 2 uses
  %i.ahq = icmp ugt i64 %i.ahp, 524288
  br i1 %i.ahq, label %bb.gt, label %.lr.ph.i152

bb.gt:                                            ; preds = %bb.gs
  %.not.i136 = icmp eq ptr %1, null
  br i1 %.not.i136, label %tg3__error_push.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !68 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !122 ; 3 uses
  %.not27.i137 = icmp ult i32 %i.ahs, %i.ahu
  %.pre.i138 = load ptr, ptr %1, align 8, !tbaa !69 ; 11 uses
  %.pre.i138753 = ptrtoaddr ptr %.pre.i138 to i64
  br i1 %.not27.i137, label %bb.ha, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.not28.i139 = icmp eq i32 %i.ahu, 0
  %i.ahv = shl i32 %i.ahu, 1
  %spec.select.i140 = select i1 %.not28.i139, i32 16, i32 %i.ahv ; 2 uses
  %i.ahw = zext i32 %spec.select.i140 to i64
  %i.ahx = shl nuw nsw i64 %i.ahw, 5              ; 4 uses
  %.not.i.i141 = icmp eq ptr %.pre.i138, null
  %i.ahy = or disjoint i64 %i.ahx, 8
  %i.ahz = add i64 %i.aho, %i.ahy                 ; 3 uses
  %i.aia = icmp ugt i64 %i.ahz, 524288            ; 2 uses
  br i1 %.not.i.i141, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  br i1 %i.aia, label %tg3__error_push.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aib = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aho ; 2 uses
  store i64 %i.ahx, ptr %i.aib, align 8, !tbaa !30
  store i64 %i.ahz, ptr @test_heap_used, align 8, !tbaa !30
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  br label %.loopexit.i148

bb.gy:                                            ; preds = %bb.gv
  br i1 %i.aia, label %tg3__error_push.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aid = getelementptr inbounds i8, ptr %.pre.i138, i64 -8
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !30
  %i.aif = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aho ; 2 uses
  store i64 %i.ahx, ptr %i.aif, align 8, !tbaa !30
  store i64 %i.ahz, ptr @test_heap_used, align 8, !tbaa !30
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8 ; 9 uses
  %i.aih = call i64 @llvm.umin.i64(i64 %i.aie, i64 %i.ahx) ; 11 uses
  %.not27.i.i142 = icmp eq i64 %i.aih, 0
  br i1 %.not27.i.i142, label %.loopexit.i148, label %iter.check768

iter.check768:                                    ; preds = %bb.gz
  %min.iters.check755 = icmp samesign ult i64 %i.aih, 4
  br i1 %min.iters.check755, label %.lr.ph.i.i143.preheader, label %vector.memcheck752

vector.memcheck752:                               ; preds = %iter.check768
  %i.aii = add i64 %i.aho, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.aij = sub i64 %.pre.i138753, %i.aii
  %diff.check754 = icmp ugt i64 %i.aij, -32
  br i1 %diff.check754, label %.lr.ph.i.i143.preheader, label %vector.main.loop.iter.check756

vector.main.loop.iter.check756:                   ; preds = %vector.memcheck752
  %min.iters.check757 = icmp samesign ult i64 %i.aih, 32
  br i1 %min.iters.check757, label %vec.epilog.ph772, label %vector.ph758

vector.ph758:                                     ; preds = %vector.main.loop.iter.check756
  %i.aik = and i64 %i.aih, 28
  %n.vec759 = and i64 %i.aih, 137438953440        ; 4 uses
  br label %vector.body760

vector.body760:                                   ; preds = %vector.ph758, %vector.body760
  %index761 = phi i64 [ 0, %vector.ph758 ], [ %index.next764, %vector.body760 ] ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %index761 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %wide.load762 = load <16 x i8>, ptr %i.ail, align 1, !tbaa !37
  %wide.load763 = load <16 x i8>, ptr %i.aim, align 1, !tbaa !37
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aig, i64 %index761 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  store <16 x i8> %wide.load762, ptr %i.ain, align 1, !tbaa !37
  store <16 x i8> %wide.load763, ptr %i.aio, align 1, !tbaa !37
  %index.next764 = add nuw i64 %index761, 32      ; 2 uses
  %i.aip = icmp eq i64 %index.next764, %n.vec759
  br i1 %i.aip, label %middle.block765, label %vector.body760, !llvm.loop !687

middle.block765:                                  ; preds = %vector.body760
  %cmp.n766 = icmp eq i64 %i.aih, %n.vec759
  br i1 %cmp.n766, label %.loopexit.loopexit.i146, label %vec.epilog.iter.check770

vec.epilog.iter.check770:                         ; preds = %middle.block765
  %min.epilog.iters.check771 = icmp eq i64 %i.aik, 0
  br i1 %min.epilog.iters.check771, label %.lr.ph.i.i143.preheader, label %vec.epilog.ph772, !prof !46

vec.epilog.ph772:                                 ; preds = %vector.main.loop.iter.check756, %vec.epilog.iter.check770
  %vec.epilog.resume.val767 = phi i64 [ %n.vec759, %vec.epilog.iter.check770 ], [ 0, %vector.main.loop.iter.check756 ]
  %n.vec773 = and i64 %i.aih, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body774

vec.epilog.vector.body774:                        ; preds = %vec.epilog.vector.body774, %vec.epilog.ph772
  %index775 = phi i64 [ %vec.epilog.resume.val767, %vec.epilog.ph772 ], [ %index.next777, %vec.epilog.vector.body774 ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %index775
  %wide.load776 = load <4 x i8>, ptr %i.aiq, align 1, !tbaa !37
  %i.air = getelementptr inbounds nuw i8, ptr %i.aig, i64 %index775
  store <4 x i8> %wide.load776, ptr %i.air, align 1, !tbaa !37
  %index.next777 = add nuw i64 %index775, 4       ; 2 uses
  %i.ais = icmp eq i64 %index.next777, %n.vec773
  br i1 %i.ais, label %vec.epilog.middle.block778, label %vec.epilog.vector.body774, !llvm.loop !688

vec.epilog.middle.block778:                       ; preds = %vec.epilog.vector.body774
  %cmp.n779 = icmp eq i64 %i.aih, %n.vec773
  br i1 %cmp.n779, label %.loopexit.loopexit.i146, label %.lr.ph.i.i143.preheader

.lr.ph.i.i143.preheader:                          ; preds = %iter.check768, %vector.memcheck752, %vec.epilog.iter.check770, %vec.epilog.middle.block778
  %.026.i.i144.ph = phi i64 [ 0, %iter.check768 ], [ 0, %vector.memcheck752 ], [ %n.vec759, %vec.epilog.iter.check770 ], [ %n.vec773, %vec.epilog.middle.block778 ] ; 3 uses
  %xtraiter939 = and i64 %i.aih, 3                ; 2 uses
  %lcmp.mod940.not = icmp eq i64 %xtraiter939, 0
  br i1 %lcmp.mod940.not, label %.lr.ph.i.i143.prol.loopexit, label %.lr.ph.i.i143.prol

.lr.ph.i.i143.prol:                               ; preds = %.lr.ph.i.i143.preheader, %.lr.ph.i.i143.prol
  %.026.i.i144.prol = phi i64 [ %i.aiw, %.lr.ph.i.i143.prol ], [ %.026.i.i144.ph, %.lr.ph.i.i143.preheader ] ; 3 uses
  %prol.iter941 = phi i64 [ %prol.iter941.next, %.lr.ph.i.i143.prol ], [ 0, %.lr.ph.i.i143.preheader ]
  %i.ait = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %.026.i.i144.prol
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !37
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aig, i64 %.026.i.i144.prol
  store i8 %i.aiu, ptr %i.aiv, align 1, !tbaa !37
  %i.aiw = add nuw nsw i64 %.026.i.i144.prol, 1   ; 2 uses
  %prol.iter941.next = add i64 %prol.iter941, 1   ; 2 uses
  %prol.iter941.cmp.not = icmp eq i64 %prol.iter941.next, %xtraiter939
  br i1 %prol.iter941.cmp.not, label %.lr.ph.i.i143.prol.loopexit, label %.lr.ph.i.i143.prol, !llvm.loop !689

.lr.ph.i.i143.prol.loopexit:                      ; preds = %.lr.ph.i.i143.prol, %.lr.ph.i.i143.preheader
  %.026.i.i144.unr = phi i64 [ %.026.i.i144.ph, %.lr.ph.i.i143.preheader ], [ %i.aiw, %.lr.ph.i.i143.prol ]
  %i.aix = sub nsw i64 %.026.i.i144.ph, %i.aih
  %i.aiy = icmp ugt i64 %i.aix, -4
  br i1 %i.aiy, label %.loopexit.loopexit.i146, label %.lr.ph.i.i143

.lr.ph.i.i143:                                    ; preds = %.lr.ph.i.i143.prol.loopexit, %.lr.ph.i.i143
  %.026.i.i144 = phi i64 [ %i.ajo, %.lr.ph.i.i143 ], [ %.026.i.i144.unr, %.lr.ph.i.i143.prol.loopexit ] ; 6 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %.026.i.i144
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !37
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aig, i64 %.026.i.i144
  store i8 %i.aja, ptr %i.ajb, align 1, !tbaa !37
  %i.ajc = add nuw nsw i64 %.026.i.i144, 1        ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %i.ajc
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !37
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.ajc
  store i8 %i.aje, ptr %i.ajf, align 1, !tbaa !37
  %i.ajg = add nuw nsw i64 %.026.i.i144, 2        ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %i.ajg
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !37
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.ajg
  store i8 %i.aji, ptr %i.ajj, align 1, !tbaa !37
  %i.ajk = add nuw nsw i64 %.026.i.i144, 3        ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.pre.i138, i64 %i.ajk
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !37
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.ajk
  store i8 %i.ajm, ptr %i.ajn, align 1, !tbaa !37
  %i.ajo = add nuw nsw i64 %.026.i.i144, 4        ; 2 uses
  %exitcond.not.i.i145.3 = icmp eq i64 %i.ajo, %i.aih
  br i1 %exitcond.not.i.i145.3, label %.loopexit.loopexit.i146, label %.lr.ph.i.i143, !llvm.loop !690

.loopexit.loopexit.i146:                          ; preds = %.lr.ph.i.i143.prol.loopexit, %.lr.ph.i.i143, %vec.epilog.middle.block778, %middle.block765
  %.pre33.pre.i147 = load i32, ptr %i.ahr, align 8, !tbaa !68
  br label %.loopexit.i148

.loopexit.i148:                                   ; preds = %.loopexit.loopexit.i146, %bb.gz, %bb.gx
  %.pre33.i149 = phi i32 [ %i.ahs, %bb.gx ], [ %i.ahs, %bb.gz ], [ %.pre33.pre.i147, %.loopexit.loopexit.i146 ]
  %.018.i.ph.i150 = phi ptr [ %i.aic, %bb.gx ], [ %i.aig, %bb.gz ], [ %i.aig, %.loopexit.loopexit.i146 ] ; 2 uses
  store ptr %.018.i.ph.i150, ptr %1, align 8, !tbaa !69
  store i32 %spec.select.i140, ptr %i.aht, align 4, !tbaa !122
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit.i148, %bb.gu
  %i.ajp = phi i32 [ %.pre33.i149, %.loopexit.i148 ], [ %i.ahs, %bb.gu ] ; 2 uses
  %i.ajq = phi ptr [ %.018.i.ph.i150, %.loopexit.i148 ], [ %.pre.i138, %bb.gu ]
  %i.ajr = add i32 %i.ajp, 1
  store i32 %i.ajr, ptr %i.ahr, align 8, !tbaa !68
  %i.ajs = zext i32 %i.ajp to i64
  %i.ajt = getelementptr inbounds nuw [32 x i8], ptr %i.ajq, i64 %i.ajs ; 5 uses
  store i32 2, ptr %i.ajt, align 8, !tbaa !124
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  store i32 50, ptr %i.aju, align 4, !tbaa !125
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store ptr @.str.9, ptr %i.ajv, align 8, !tbaa !126
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  store ptr null, ptr %i.ajw, align 8, !tbaa !127
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 24
  store i64 -1, ptr %i.ajx, align 8, !tbaa !128
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ajy, align 8, !tbaa !67
  br label %tg3__error_push.exit

.lr.ph.i152:                                      ; preds = %bb.gs
  %i.ajz = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aho ; 9 uses
  store i64 %i.ahl, ptr %i.ajz, align 8, !tbaa !30
  store i64 %i.ahp, ptr @test_heap_used, align 8, !tbaa !30
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 13 uses
  store <8 x i8> <i8 103, i8 108, i8 84, i8 70, i8 2, i8 0, i8 0, i8 0>, ptr %i.aka, align 8, !tbaa !37
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  store i32 %i.ahk, ptr %i.akb, align 8, !tbaa !37
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 20
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajz, i64 21
  store i8 %.sroa.0274.0.extract.trunc, ptr %i.akc, align 4, !tbaa !37
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajz, i64 22
  store i8 %.sroa.4275.0.extract.trunc, ptr %i.akd, align 1, !tbaa !37
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajz, i64 23
  store i8 %.sroa.5276.0.extract.trunc, ptr %i.ake, align 2, !tbaa !37
  store i8 %.sroa.6277.0.extract.trunc, ptr %i.akf, align 1, !tbaa !37
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajz, i64 24
  store <4 x i8> <i8 74, i8 83, i8 79, i8 78>, ptr %i.akg, align 8, !tbaa !37
  %.not7.i = icmp eq i64 %.0244, 0
  br i1 %.not7.i, label %tg3__memcpy.exit189, label %iter.check649

iter.check649:                                    ; preds = %.lr.ph.i152
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajz, i64 28 ; 6 uses
  %min.iters.check631 = icmp ult i64 %.0244, 4
  br i1 %min.iters.check631, label %.lr.ph.i183.preheader, label %vector.memcheck629

vector.memcheck629:                               ; preds = %iter.check649
  %i.aki = add i64 %i.aho, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 28)
  %i.akj = sub i64 %i.aeh, %i.aki
  %diff.check630 = icmp ugt i64 %i.akj, -32
  br i1 %diff.check630, label %.lr.ph.i183.preheader, label %vector.main.loop.iter.check632

vector.main.loop.iter.check632:                   ; preds = %vector.memcheck629
  %min.iters.check633 = icmp ult i64 %.0244, 32
  br i1 %min.iters.check633, label %vec.epilog.ph653, label %vector.ph634

vector.ph634:                                     ; preds = %vector.main.loop.iter.check632
  %i.akk = and i64 %.0244, 28
  %n.vec635 = and i64 %.0244, -32                 ; 5 uses
  %i.akl = getelementptr i8, ptr %i.aeg, i64 %n.vec635
  %i.akm = getelementptr i8, ptr %i.akh, i64 %n.vec635
  %i.akn = and i64 %.0244, 31
  br label %vector.body636

vector.body636:                                   ; preds = %vector.ph634, %vector.body636
  %index637 = phi i64 [ 0, %vector.ph634 ], [ %index.next642, %vector.body636 ] ; 3 uses
  %next.gep638 = getelementptr i8, ptr %i.aeg, i64 %index637 ; 2 uses
  %next.gep639 = getelementptr i8, ptr %i.akh, i64 %index637 ; 2 uses
  %i.ako = getelementptr i8, ptr %next.gep638, i64 16
  %wide.load640 = load <16 x i8>, ptr %next.gep638, align 1, !tbaa !37
  %wide.load641 = load <16 x i8>, ptr %i.ako, align 1, !tbaa !37
  %i.akp = getelementptr i8, ptr %next.gep639, i64 16
  store <16 x i8> %wide.load640, ptr %next.gep639, align 1, !tbaa !37
  store <16 x i8> %wide.load641, ptr %i.akp, align 1, !tbaa !37
  %index.next642 = add nuw i64 %index637, 32      ; 2 uses
  %i.akq = icmp eq i64 %index.next642, %n.vec635
  br i1 %i.akq, label %middle.block643, label %vector.body636, !llvm.loop !691

middle.block643:                                  ; preds = %vector.body636
  %cmp.n644 = icmp eq i64 %.0244, %n.vec635
  br i1 %cmp.n644, label %tg3__memcpy.exit189, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block643
  %min.epilog.iters.check652 = icmp eq i64 %i.akk, 0
  br i1 %min.epilog.iters.check652, label %.lr.ph.i183.preheader, label %vec.epilog.ph653, !prof !46

vec.epilog.ph653:                                 ; preds = %vector.main.loop.iter.check632, %vec.epilog.iter.check651
  %vec.epilog.resume.val645 = phi i64 [ %n.vec635, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check632 ]
  %n.vec654 = and i64 %.0244, -4                  ; 4 uses
  %i.akr = getelementptr i8, ptr %i.aeg, i64 %n.vec654
  %i.aks = getelementptr i8, ptr %i.akh, i64 %n.vec654
  %i.akt = and i64 %.0244, 3
  br label %vec.epilog.vector.body655

vec.epilog.vector.body655:                        ; preds = %vec.epilog.vector.body655, %vec.epilog.ph653
  %index656 = phi i64 [ %vec.epilog.resume.val645, %vec.epilog.ph653 ], [ %index.next660, %vec.epilog.vector.body655 ] ; 3 uses
  %next.gep657 = getelementptr i8, ptr %i.aeg, i64 %index656
  %next.gep658 = getelementptr i8, ptr %i.akh, i64 %index656
  %wide.load659 = load <4 x i8>, ptr %next.gep657, align 1, !tbaa !37
  store <4 x i8> %wide.load659, ptr %next.gep658, align 1, !tbaa !37
  %index.next660 = add nuw i64 %index656, 4       ; 2 uses
  %i.aku = icmp eq i64 %index.next660, %n.vec654
  br i1 %i.aku, label %vec.epilog.middle.block661, label %vec.epilog.vector.body655, !llvm.loop !692

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body655
  %cmp.n662 = icmp eq i64 %.0244, %n.vec654
  br i1 %cmp.n662, label %tg3__memcpy.exit189, label %.lr.ph.i183.preheader

.lr.ph.i183.preheader:                            ; preds = %iter.check649, %vector.memcheck629, %vec.epilog.iter.check651, %vec.epilog.middle.block661
  %.010.i184.ph = phi ptr [ %i.aeg, %iter.check649 ], [ %i.aeg, %vector.memcheck629 ], [ %i.akl, %vec.epilog.iter.check651 ], [ %i.akr, %vec.epilog.middle.block661 ] ; 2 uses
  %.059.i185.ph = phi ptr [ %i.akh, %iter.check649 ], [ %i.akh, %vector.memcheck629 ], [ %i.akm, %vec.epilog.iter.check651 ], [ %i.aks, %vec.epilog.middle.block661 ] ; 2 uses
  %.068.i186.ph = phi i64 [ %.0244, %iter.check649 ], [ %.0244, %vector.memcheck629 ], [ %i.akn, %vec.epilog.iter.check651 ], [ %i.akt, %vec.epilog.middle.block661 ] ; 4 uses
  %i.akv = add i64 %.068.i186.ph, -1
  %xtraiter930 = and i64 %.068.i186.ph, 7         ; 2 uses
  %lcmp.mod931.not = icmp eq i64 %xtraiter930, 0
  br i1 %lcmp.mod931.not, label %.lr.ph.i183.prol.loopexit, label %.lr.ph.i183.prol

.lr.ph.i183.prol:                                 ; preds = %.lr.ph.i183.preheader, %.lr.ph.i183.prol
  %.010.i184.prol = phi ptr [ %i.akx, %.lr.ph.i183.prol ], [ %.010.i184.ph, %.lr.ph.i183.preheader ] ; 2 uses
  %.059.i185.prol = phi ptr [ %i.akz, %.lr.ph.i183.prol ], [ %.059.i185.ph, %.lr.ph.i183.preheader ] ; 2 uses
  %.068.i186.prol = phi i64 [ %i.akw, %.lr.ph.i183.prol ], [ %.068.i186.ph, %.lr.ph.i183.preheader ]
  %prol.iter932 = phi i64 [ %prol.iter932.next, %.lr.ph.i183.prol ], [ 0, %.lr.ph.i183.preheader ]
  %i.akw = add i64 %.068.i186.prol, -1            ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.010.i184.prol, i64 1 ; 2 uses
  %i.aky = load i8, ptr %.010.i184.prol, align 1, !tbaa !37
  %i.akz = getelementptr inbounds nuw i8, ptr %.059.i185.prol, i64 1 ; 2 uses
  store i8 %i.aky, ptr %.059.i185.prol, align 1, !tbaa !37
  %prol.iter932.next = add i64 %prol.iter932, 1   ; 2 uses
  %prol.iter932.cmp.not = icmp eq i64 %prol.iter932.next, %xtraiter930
  br i1 %prol.iter932.cmp.not, label %.lr.ph.i183.prol.loopexit, label %.lr.ph.i183.prol, !llvm.loop !693

.lr.ph.i183.prol.loopexit:                        ; preds = %.lr.ph.i183.prol, %.lr.ph.i183.preheader
  %.010.i184.unr = phi ptr [ %.010.i184.ph, %.lr.ph.i183.preheader ], [ %i.akx, %.lr.ph.i183.prol ]
  %.059.i185.unr = phi ptr [ %.059.i185.ph, %.lr.ph.i183.preheader ], [ %i.akz, %.lr.ph.i183.prol ]
  %.068.i186.unr = phi i64 [ %.068.i186.ph, %.lr.ph.i183.preheader ], [ %i.akw, %.lr.ph.i183.prol ]
  %i.ala = icmp ult i64 %i.akv, 7
  br i1 %i.ala, label %tg3__memcpy.exit189, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph.i183.prol.loopexit, %.lr.ph.i183
  %.010.i184 = phi ptr [ %i.alx, %.lr.ph.i183 ], [ %.010.i184.unr, %.lr.ph.i183.prol.loopexit ] ; 9 uses
  %.059.i185 = phi ptr [ %i.alz, %.lr.ph.i183 ], [ %.059.i185.unr, %.lr.ph.i183.prol.loopexit ] ; 9 uses
  %.068.i186 = phi i64 [ %i.alw, %.lr.ph.i183 ], [ %.068.i186.unr, %.lr.ph.i183.prol.loopexit ]
  %i.alb = getelementptr inbounds nuw i8, ptr %.010.i184, i64 1
  %i.alc = load i8, ptr %.010.i184, align 1, !tbaa !37
  %i.ald = getelementptr inbounds nuw i8, ptr %.059.i185, i64 1
  store i8 %i.alc, ptr %.059.i185, align 1, !tbaa !37
  %i.ale = getelementptr inbounds nuw i8, ptr %.010.i184, i64 2
  %i.alf = load i8, ptr %i.alb, align 1, !tbaa !37
  %i.alg = getelementptr inbounds nuw i8, ptr %.059.i185, i64 2
  store i8 %i.alf, ptr %i.ald, align 1, !tbaa !37
  %i.alh = getelementptr inbounds nuw i8, ptr %.010.i184, i64 3
  %i.ali = load i8, ptr %i.ale, align 1, !tbaa !37
  %i.alj = getelementptr inbounds nuw i8, ptr %.059.i185, i64 3
  store i8 %i.ali, ptr %i.alg, align 1, !tbaa !37
  %i.alk = getelementptr inbounds nuw i8, ptr %.010.i184, i64 4
  %i.all = load i8, ptr %i.alh, align 1, !tbaa !37
  %i.alm = getelementptr inbounds nuw i8, ptr %.059.i185, i64 4
  store i8 %i.all, ptr %i.alj, align 1, !tbaa !37
  %i.aln = getelementptr inbounds nuw i8, ptr %.010.i184, i64 5
  %i.alo = load i8, ptr %i.alk, align 1, !tbaa !37
  %i.alp = getelementptr inbounds nuw i8, ptr %.059.i185, i64 5
  store i8 %i.alo, ptr %i.alm, align 1, !tbaa !37
  %i.alq = getelementptr inbounds nuw i8, ptr %.010.i184, i64 6
  %i.alr = load i8, ptr %i.aln, align 1, !tbaa !37
  %i.als = getelementptr inbounds nuw i8, ptr %.059.i185, i64 6
  store i8 %i.alr, ptr %i.alp, align 1, !tbaa !37
  %i.alt = getelementptr inbounds nuw i8, ptr %.010.i184, i64 7
  %i.alu = load i8, ptr %i.alq, align 1, !tbaa !37
  %i.alv = getelementptr inbounds nuw i8, ptr %.059.i185, i64 7
  store i8 %i.alu, ptr %i.als, align 1, !tbaa !37
  %i.alw = add i64 %.068.i186, -8                 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.010.i184, i64 8
  %i.aly = load i8, ptr %i.alt, align 1, !tbaa !37
  %i.alz = getelementptr inbounds nuw i8, ptr %.059.i185, i64 8
  store i8 %i.aly, ptr %i.alv, align 1, !tbaa !37
  %.not.i187.7 = icmp eq i64 %i.alw, 0
  br i1 %.not.i187.7, label %tg3__memcpy.exit189, label %.lr.ph.i183, !llvm.loop !694

tg3__memcpy.exit189:                              ; preds = %.lr.ph.i183.prol.loopexit, %.lr.ph.i183, %middle.block643, %vec.epilog.middle.block661, %.lr.ph.i152
  %i.ama = icmp ugt i32 %i.agu, %i.ags
  br i1 %i.ama, label %iter.check678, label %._crit_edge

iter.check678:                                    ; preds = %tg3__memcpy.exit189
  %i.amb = xor i32 %i.ags, -1
  %i.amc = add i32 %i.agu, %i.amb                 ; 3 uses
  %i.amd = zext i32 %i.amc to i64
  %i.ame = add nuw nsw i64 %i.amd, 1              ; 5 uses
  %min.iters.check666 = icmp ult i32 %i.amc, 7
  br i1 %min.iters.check666, label %.lr.ph.preheader, label %vector.main.loop.iter.check667

vector.main.loop.iter.check667:                   ; preds = %iter.check678
  %min.iters.check668 = icmp ult i32 %i.amc, 31
  br i1 %min.iters.check668, label %vec.epilog.ph682, label %vector.ph669

vector.ph669:                                     ; preds = %vector.main.loop.iter.check667
  %i.amf = and i64 %i.ame, 24
  %n.vec670 = and i64 %i.ame, 8589934560          ; 4 uses
  %i.amg = add i64 %.0244, %n.vec670
  %i.amh = getelementptr i8, ptr %i.aka, i64 %.0244
  br label %vector.body671

vector.body671:                                   ; preds = %vector.ph669, %vector.body671
  %index672 = phi i64 [ 0, %vector.ph669 ], [ %index.next673, %vector.body671 ] ; 2 uses
  %i.ami = getelementptr i8, ptr %i.amh, i64 %index672 ; 2 uses
  %i.amj = getelementptr i8, ptr %i.ami, i64 20
  %i.amk = getelementptr i8, ptr %i.ami, i64 36
  store <16 x i8> splat (i8 32), ptr %i.amj, align 1, !tbaa !37
  store <16 x i8> splat (i8 32), ptr %i.amk, align 1, !tbaa !37
  %index.next673 = add nuw i64 %index672, 32      ; 2 uses
  %i.aml = icmp eq i64 %index.next673, %n.vec670
  br i1 %i.aml, label %middle.block674, label %vector.body671, !llvm.loop !695

middle.block674:                                  ; preds = %vector.body671
  %cmp.n675 = icmp eq i64 %i.ame, %n.vec670
  br i1 %cmp.n675, label %._crit_edge, label %vec.epilog.iter.check680

vec.epilog.iter.check680:                         ; preds = %middle.block674
  %min.epilog.iters.check681 = icmp eq i64 %i.amf, 0
  br i1 %min.epilog.iters.check681, label %.lr.ph.preheader, label %vec.epilog.ph682, !prof !62

vec.epilog.ph682:                                 ; preds = %vector.main.loop.iter.check667, %vec.epilog.iter.check680
  %vec.epilog.resume.val676 = phi i64 [ %n.vec670, %vec.epilog.iter.check680 ], [ 0, %vector.main.loop.iter.check667 ]
  %n.vec683 = and i64 %i.ame, 8589934584          ; 3 uses
  %i.amm = add i64 %.0244, %n.vec683
  %i.amn = getelementptr i8, ptr %i.aka, i64 %.0244
  br label %vec.epilog.vector.body684

vec.epilog.vector.body684:                        ; preds = %vec.epilog.vector.body684, %vec.epilog.ph682
  %index685 = phi i64 [ %vec.epilog.resume.val676, %vec.epilog.ph682 ], [ %index.next686, %vec.epilog.vector.body684 ] ; 2 uses
  %i.amo = getelementptr i8, ptr %i.amn, i64 %index685
  %i.amp = getelementptr i8, ptr %i.amo, i64 20
  store <8 x i8> splat (i8 32), ptr %i.amp, align 1, !tbaa !37
  %index.next686 = add nuw i64 %index685, 8       ; 2 uses
  %i.amq = icmp eq i64 %index.next686, %n.vec683
  br i1 %i.amq, label %vec.epilog.middle.block687, label %vec.epilog.vector.body684, !llvm.loop !696

vec.epilog.middle.block687:                       ; preds = %vec.epilog.vector.body684
  %cmp.n688 = icmp eq i64 %i.ame, %n.vec683
  br i1 %cmp.n688, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check678, %vec.epilog.iter.check680, %vec.epilog.middle.block687
  %.1254.ph = phi i64 [ %.0244, %iter.check678 ], [ %i.amg, %vec.epilog.iter.check680 ], [ %i.amm, %vec.epilog.middle.block687 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1254 = phi i64 [ %i.amt, %.lr.ph ], [ %.1254.ph, %.lr.ph.preheader ] ; 2 uses
  %i.amr = getelementptr i8, ptr %i.aka, i64 %.1254
  %i.ams = getelementptr i8, ptr %i.amr, i64 20
  store i8 32, ptr %i.ams, align 1, !tbaa !37
  %i.amt = add i64 %.1254, 1                      ; 2 uses
  %i.amu = trunc i64 %i.amt to i32
  %i.amv = icmp ugt i32 %i.agu, %i.amu
  br i1 %i.amv, label %.lr.ph, label %._crit_edge, !llvm.loop !697

._crit_edge:                                      ; preds = %.lr.ph, %middle.block674, %vec.epilog.middle.block687, %tg3__memcpy.exit189
  br i1 %or.cond5, label %iter.check711, label %tg3__memcpy.exit211._crit_edge

iter.check711:                                    ; preds = %._crit_edge
  %i.amw = zext i32 %i.ahf to i64                 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.amw ; 6 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 1
  store i8 %.sroa.0270.0.extract.trunc, ptr %i.amx, align 1, !tbaa !37
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 2
  store i8 %.sroa.4271.0.extract.trunc, ptr %i.amy, align 1, !tbaa !37
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 3
  store i8 %.sroa.5272.0.extract.trunc, ptr %i.amz, align 1, !tbaa !37
  store i8 %.sroa.6273.0.extract.trunc, ptr %i.ana, align 1, !tbaa !37
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 4
  store <4 x i8> <i8 66, i8 73, i8 78, i8 0>, ptr %i.anb, align 1, !tbaa !37
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 8 ; 6 uses
  %min.iters.check693 = icmp ult i64 %.072, 4
  br i1 %min.iters.check693, label %.lr.ph.i205.preheader, label %vector.memcheck690

vector.memcheck690:                               ; preds = %iter.check711
  %i.and = add i64 %i.aho, ptrtoaddr (ptr @test_heap to i64)
  %i.ane = add i64 %i.and, %i.amw
  %i.anf = sub i64 %i.ane, %.073691
  %i.ang = add i64 %i.anf, 15
  %diff.check692 = icmp ult i64 %i.ang, 31
  br i1 %diff.check692, label %.lr.ph.i205.preheader, label %vector.main.loop.iter.check694

vector.main.loop.iter.check694:                   ; preds = %vector.memcheck690
  %min.iters.check695 = icmp ult i64 %.072, 32
  br i1 %min.iters.check695, label %vec.epilog.ph715, label %vector.ph696

vector.ph696:                                     ; preds = %vector.main.loop.iter.check694
  %i.anh = and i64 %.072, 28
  %n.vec697 = and i64 %.072, -32                  ; 5 uses
  %i.ani = getelementptr i8, ptr %.073, i64 %n.vec697
  %i.anj = getelementptr i8, ptr %i.anc, i64 %n.vec697
  %i.ank = and i64 %.072, 31
  br label %vector.body698

vector.body698:                                   ; preds = %vector.ph696, %vector.body698
  %index699 = phi i64 [ 0, %vector.ph696 ], [ %index.next704, %vector.body698 ] ; 3 uses
  %next.gep700 = getelementptr i8, ptr %.073, i64 %index699 ; 2 uses
  %next.gep701 = getelementptr i8, ptr %i.anc, i64 %index699 ; 2 uses
  %i.anl = getelementptr i8, ptr %next.gep700, i64 16
  %wide.load702 = load <16 x i8>, ptr %next.gep700, align 1, !tbaa !37
  %wide.load703 = load <16 x i8>, ptr %i.anl, align 1, !tbaa !37
  %i.anm = getelementptr i8, ptr %next.gep701, i64 16
  store <16 x i8> %wide.load702, ptr %next.gep701, align 1, !tbaa !37
  store <16 x i8> %wide.load703, ptr %i.anm, align 1, !tbaa !37
  %index.next704 = add nuw i64 %index699, 32      ; 2 uses
  %i.ann = icmp eq i64 %index.next704, %n.vec697
  br i1 %i.ann, label %middle.block705, label %vector.body698, !llvm.loop !698

middle.block705:                                  ; preds = %vector.body698
  %cmp.n706 = icmp eq i64 %.072, %n.vec697
  br i1 %cmp.n706, label %tg3__memcpy.exit211.preheader, label %vec.epilog.iter.check713

vec.epilog.iter.check713:                         ; preds = %middle.block705
  %min.epilog.iters.check714 = icmp eq i64 %i.anh, 0
  br i1 %min.epilog.iters.check714, label %.lr.ph.i205.preheader, label %vec.epilog.ph715, !prof !46

vec.epilog.ph715:                                 ; preds = %vector.main.loop.iter.check694, %vec.epilog.iter.check713
  %vec.epilog.resume.val707 = phi i64 [ %n.vec697, %vec.epilog.iter.check713 ], [ 0, %vector.main.loop.iter.check694 ]
  %n.vec716 = and i64 %.072, -4                   ; 4 uses
  %i.ano = getelementptr i8, ptr %.073, i64 %n.vec716
  %i.anp = getelementptr i8, ptr %i.anc, i64 %n.vec716
  %i.anq = and i64 %.072, 3
  br label %vec.epilog.vector.body717

vec.epilog.vector.body717:                        ; preds = %vec.epilog.vector.body717, %vec.epilog.ph715
  %index718 = phi i64 [ %vec.epilog.resume.val707, %vec.epilog.ph715 ], [ %index.next722, %vec.epilog.vector.body717 ] ; 3 uses
  %next.gep719 = getelementptr i8, ptr %.073, i64 %index718
  %next.gep720 = getelementptr i8, ptr %i.anc, i64 %index718
  %wide.load721 = load <4 x i8>, ptr %next.gep719, align 1, !tbaa !37
  store <4 x i8> %wide.load721, ptr %next.gep720, align 1, !tbaa !37
  %index.next722 = add nuw i64 %index718, 4       ; 2 uses
  %i.anr = icmp eq i64 %index.next722, %n.vec716
  br i1 %i.anr, label %vec.epilog.middle.block723, label %vec.epilog.vector.body717, !llvm.loop !699

vec.epilog.middle.block723:                       ; preds = %vec.epilog.vector.body717
  %cmp.n724 = icmp eq i64 %.072, %n.vec716
  br i1 %cmp.n724, label %tg3__memcpy.exit211.preheader, label %.lr.ph.i205.preheader

.lr.ph.i205.preheader:                            ; preds = %iter.check711, %vector.memcheck690, %vec.epilog.iter.check713, %vec.epilog.middle.block723
  %.010.i206.ph = phi ptr [ %.073, %iter.check711 ], [ %.073, %vector.memcheck690 ], [ %i.ani, %vec.epilog.iter.check713 ], [ %i.ano, %vec.epilog.middle.block723 ] ; 2 uses
  %.059.i207.ph = phi ptr [ %i.anc, %iter.check711 ], [ %i.anc, %vector.memcheck690 ], [ %i.anj, %vec.epilog.iter.check713 ], [ %i.anp, %vec.epilog.middle.block723 ] ; 2 uses
  %.068.i208.ph = phi i64 [ %.072, %iter.check711 ], [ %.072, %vector.memcheck690 ], [ %i.ank, %vec.epilog.iter.check713 ], [ %i.anq, %vec.epilog.middle.block723 ] ; 4 uses
  %i.ans = add i64 %.068.i208.ph, -1
  %xtraiter933 = and i64 %.068.i208.ph, 7         ; 2 uses
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %.lr.ph.i205.prol.loopexit, label %.lr.ph.i205.prol

.lr.ph.i205.prol:                                 ; preds = %.lr.ph.i205.preheader, %.lr.ph.i205.prol
  %.010.i206.prol = phi ptr [ %i.anu, %.lr.ph.i205.prol ], [ %.010.i206.ph, %.lr.ph.i205.preheader ] ; 2 uses
  %.059.i207.prol = phi ptr [ %i.anw, %.lr.ph.i205.prol ], [ %.059.i207.ph, %.lr.ph.i205.preheader ] ; 2 uses
  %.068.i208.prol = phi i64 [ %i.ant, %.lr.ph.i205.prol ], [ %.068.i208.ph, %.lr.ph.i205.preheader ]
  %prol.iter935 = phi i64 [ %prol.iter935.next, %.lr.ph.i205.prol ], [ 0, %.lr.ph.i205.preheader ]
  %i.ant = add i64 %.068.i208.prol, -1            ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.010.i206.prol, i64 1 ; 2 uses
  %i.anv = load i8, ptr %.010.i206.prol, align 1, !tbaa !37
  %i.anw = getelementptr inbounds nuw i8, ptr %.059.i207.prol, i64 1 ; 2 uses
  store i8 %i.anv, ptr %.059.i207.prol, align 1, !tbaa !37
  %prol.iter935.next = add i64 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i64 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %.lr.ph.i205.prol.loopexit, label %.lr.ph.i205.prol, !llvm.loop !700

.lr.ph.i205.prol.loopexit:                        ; preds = %.lr.ph.i205.prol, %.lr.ph.i205.preheader
  %.010.i206.unr = phi ptr [ %.010.i206.ph, %.lr.ph.i205.preheader ], [ %i.anu, %.lr.ph.i205.prol ]
  %.059.i207.unr = phi ptr [ %.059.i207.ph, %.lr.ph.i205.preheader ], [ %i.anw, %.lr.ph.i205.prol ]
  %.068.i208.unr = phi i64 [ %.068.i208.ph, %.lr.ph.i205.preheader ], [ %i.ant, %.lr.ph.i205.prol ]
  %i.anx = icmp ult i64 %i.ans, 7
  br i1 %i.anx, label %tg3__memcpy.exit211.preheader, label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %.lr.ph.i205.prol.loopexit, %.lr.ph.i205
  %.010.i206 = phi ptr [ %i.aou, %.lr.ph.i205 ], [ %.010.i206.unr, %.lr.ph.i205.prol.loopexit ] ; 9 uses
  %.059.i207 = phi ptr [ %i.aow, %.lr.ph.i205 ], [ %.059.i207.unr, %.lr.ph.i205.prol.loopexit ] ; 9 uses
  %.068.i208 = phi i64 [ %i.aot, %.lr.ph.i205 ], [ %.068.i208.unr, %.lr.ph.i205.prol.loopexit ]
  %i.any = getelementptr inbounds nuw i8, ptr %.010.i206, i64 1
  %i.anz = load i8, ptr %.010.i206, align 1, !tbaa !37
  %i.aoa = getelementptr inbounds nuw i8, ptr %.059.i207, i64 1
  store i8 %i.anz, ptr %.059.i207, align 1, !tbaa !37
  %i.aob = getelementptr inbounds nuw i8, ptr %.010.i206, i64 2
  %i.aoc = load i8, ptr %i.any, align 1, !tbaa !37
  %i.aod = getelementptr inbounds nuw i8, ptr %.059.i207, i64 2
  store i8 %i.aoc, ptr %i.aoa, align 1, !tbaa !37
  %i.aoe = getelementptr inbounds nuw i8, ptr %.010.i206, i64 3
  %i.aof = load i8, ptr %i.aob, align 1, !tbaa !37
  %i.aog = getelementptr inbounds nuw i8, ptr %.059.i207, i64 3
  store i8 %i.aof, ptr %i.aod, align 1, !tbaa !37
  %i.aoh = getelementptr inbounds nuw i8, ptr %.010.i206, i64 4
  %i.aoi = load i8, ptr %i.aoe, align 1, !tbaa !37
  %i.aoj = getelementptr inbounds nuw i8, ptr %.059.i207, i64 4
  store i8 %i.aoi, ptr %i.aog, align 1, !tbaa !37
  %i.aok = getelementptr inbounds nuw i8, ptr %.010.i206, i64 5
  %i.aol = load i8, ptr %i.aoh, align 1, !tbaa !37
  %i.aom = getelementptr inbounds nuw i8, ptr %.059.i207, i64 5
  store i8 %i.aol, ptr %i.aoj, align 1, !tbaa !37
  %i.aon = getelementptr inbounds nuw i8, ptr %.010.i206, i64 6
  %i.aoo = load i8, ptr %i.aok, align 1, !tbaa !37
  %i.aop = getelementptr inbounds nuw i8, ptr %.059.i207, i64 6
  store i8 %i.aoo, ptr %i.aom, align 1, !tbaa !37
  %i.aoq = getelementptr inbounds nuw i8, ptr %.010.i206, i64 7
  %i.aor = load i8, ptr %i.aon, align 1, !tbaa !37
  %i.aos = getelementptr inbounds nuw i8, ptr %.059.i207, i64 7
  store i8 %i.aor, ptr %i.aop, align 1, !tbaa !37
  %i.aot = add i64 %.068.i208, -8                 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.010.i206, i64 8
  %i.aov = load i8, ptr %i.aoq, align 1, !tbaa !37
  %i.aow = getelementptr inbounds nuw i8, ptr %.059.i207, i64 8
  store i8 %i.aov, ptr %i.aos, align 1, !tbaa !37
  %.not.i209.7 = icmp eq i64 %i.aot, 0
  br i1 %.not.i209.7, label %tg3__memcpy.exit211.preheader, label %.lr.ph.i205, !llvm.loop !701

tg3__memcpy.exit211.preheader:                    ; preds = %.lr.ph.i205.prol.loopexit, %.lr.ph.i205, %vec.epilog.middle.block723, %middle.block705
  %i.aox = icmp ugt i32 %i.ahe, %i.ahc
  br i1 %i.aox, label %iter.check740, label %tg3__memcpy.exit211._crit_edge

iter.check740:                                    ; preds = %tg3__memcpy.exit211.preheader
  %i.aoy = add i32 %i.agu, 28                     ; 7 uses
  %i.aoz = and i64 %.072, 4294967295              ; 6 uses
  %wide.trip.count = zext i32 %i.ahe to i64       ; 4 uses
  %i.apa = sub nsw i64 %wide.trip.count, %i.aoz   ; 7 uses
  %min.iters.check728 = icmp ult i64 %i.apa, 8
  br i1 %min.iters.check728, label %tg3__memcpy.exit211.preheader905, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check740
  %i.apb = xor i64 %i.aoz, -1
  %i.apc = add nsw i64 %i.apb, %wide.trip.count   ; 2 uses
  %i.apd = add i32 %i.agu, %i.ahc
  %i.ape = trunc i64 %i.apc to i32
  %i.apf = sub i32 -29, %i.apd
  %i.apg = icmp ult i32 %i.apf, %i.ape
  %i.aph = icmp ugt i64 %i.apc, 4294967295
  %i.api = or i1 %i.apg, %i.aph
  br i1 %i.api, label %tg3__memcpy.exit211.preheader905, label %vector.main.loop.iter.check729

vector.main.loop.iter.check729:                   ; preds = %vector.scevcheck
  %min.iters.check730 = icmp ult i64 %i.apa, 32
  br i1 %min.iters.check730, label %vec.epilog.ph744, label %vector.ph731

vector.ph731:                                     ; preds = %vector.main.loop.iter.check729
  %i.apj = and i64 %i.apa, 24
  %n.vec732 = and i64 %i.apa, -32                 ; 4 uses
  %i.apk = add nsw i64 %i.aoz, %n.vec732
  br label %vector.body733

vector.body733:                                   ; preds = %vector.ph731, %vector.body733
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next735, %vector.body733 ] ; 2 uses
  %i.apl = add i64 %.072, %index734
  %i.apm = trunc i64 %i.apl to i32
  %i.apn = add i32 %i.aoy, %i.apm
  %i.apo = zext i32 %i.apn to i64
  %i.app = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.apo ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  store <16 x i8> zeroinitializer, ptr %i.app, align 1, !tbaa !37
  store <16 x i8> zeroinitializer, ptr %i.apq, align 1, !tbaa !37
  %index.next735 = add nuw i64 %index734, 32      ; 2 uses
  %i.apr = icmp eq i64 %index.next735, %n.vec732
  br i1 %i.apr, label %middle.block736, label %vector.body733, !llvm.loop !702

middle.block736:                                  ; preds = %vector.body733
  %cmp.n737 = icmp eq i64 %i.apa, %n.vec732
  br i1 %cmp.n737, label %tg3__memcpy.exit211._crit_edge, label %vec.epilog.iter.check742

vec.epilog.iter.check742:                         ; preds = %middle.block736
  %min.epilog.iters.check743 = icmp eq i64 %i.apj, 0
  br i1 %min.epilog.iters.check743, label %tg3__memcpy.exit211.preheader905, label %vec.epilog.ph744, !prof !62

vec.epilog.ph744:                                 ; preds = %vector.main.loop.iter.check729, %vec.epilog.iter.check742
  %vec.epilog.resume.val738 = phi i64 [ %n.vec732, %vec.epilog.iter.check742 ], [ 0, %vector.main.loop.iter.check729 ]
  %n.vec745 = and i64 %i.apa, -8                  ; 3 uses
  %i.aps = add nsw i64 %i.aoz, %n.vec745
  br label %vec.epilog.vector.body746

vec.epilog.vector.body746:                        ; preds = %vec.epilog.vector.body746, %vec.epilog.ph744
  %index747 = phi i64 [ %vec.epilog.resume.val738, %vec.epilog.ph744 ], [ %index.next748, %vec.epilog.vector.body746 ] ; 2 uses
  %i.apt = add i64 %.072, %index747
  %i.apu = trunc i64 %i.apt to i32
  %i.apv = add i32 %i.aoy, %i.apu
  %i.apw = zext i32 %i.apv to i64
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.apw
  store <8 x i8> zeroinitializer, ptr %i.apx, align 1, !tbaa !37
  %index.next748 = add nuw i64 %index747, 8       ; 2 uses
  %i.apy = icmp eq i64 %index.next748, %n.vec745
  br i1 %i.apy, label %vec.epilog.middle.block749, label %vec.epilog.vector.body746, !llvm.loop !703

vec.epilog.middle.block749:                       ; preds = %vec.epilog.vector.body746
  %cmp.n750 = icmp eq i64 %i.apa, %n.vec745
  br i1 %cmp.n750, label %tg3__memcpy.exit211._crit_edge, label %tg3__memcpy.exit211.preheader905

tg3__memcpy.exit211.preheader905:                 ; preds = %iter.check740, %vector.scevcheck, %vec.epilog.iter.check742, %vec.epilog.middle.block749
  %indvars.iv.ph = phi i64 [ %i.aoz, %iter.check740 ], [ %i.aoz, %vector.scevcheck ], [ %i.apk, %vec.epilog.iter.check742 ], [ %i.aps, %vec.epilog.middle.block749 ] ; 4 uses
  %i.apz = sub nsw i64 0, %indvars.iv.ph
  %xtraiter936 = and i64 %i.apz, 3                ; 2 uses
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %tg3__memcpy.exit211.prol.loopexit, label %tg3__memcpy.exit211.prol

tg3__memcpy.exit211.prol:                         ; preds = %tg3__memcpy.exit211.preheader905, %tg3__memcpy.exit211.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %tg3__memcpy.exit211.prol ], [ %indvars.iv.ph, %tg3__memcpy.exit211.preheader905 ] ; 2 uses
  %prol.iter938 = phi i64 [ %prol.iter938.next, %tg3__memcpy.exit211.prol ], [ 0, %tg3__memcpy.exit211.preheader905 ]
  %i.aqa = trunc nuw i64 %indvars.iv.prol to i32
  %i.aqb = add i32 %i.aoy, %i.aqa
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.aqc
  store i8 0, ptr %i.aqd, align 1, !tbaa !37
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter938.next = add i64 %prol.iter938, 1   ; 2 uses
  %prol.iter938.cmp.not = icmp eq i64 %prol.iter938.next, %xtraiter936
  br i1 %prol.iter938.cmp.not, label %tg3__memcpy.exit211.prol.loopexit, label %tg3__memcpy.exit211.prol, !llvm.loop !704

tg3__memcpy.exit211.prol.loopexit:                ; preds = %tg3__memcpy.exit211.prol, %tg3__memcpy.exit211.preheader905
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %tg3__memcpy.exit211.preheader905 ], [ %indvars.iv.next.prol, %tg3__memcpy.exit211.prol ]
  %i.aqe = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aqf = icmp ugt i64 %i.aqe, -4
  br i1 %i.aqf, label %tg3__memcpy.exit211._crit_edge, label %tg3__memcpy.exit211.preheader905.new

tg3__memcpy.exit211.preheader905.new:             ; preds = %tg3__memcpy.exit211.prol.loopexit
  %invariant.op = add i32 1, %i.aoy
  %invariant.op977 = add i32 2, %i.aoy
  %invariant.op979 = add i32 3, %i.aoy
  br label %tg3__memcpy.exit211

tg3__memcpy.exit211:                              ; preds = %tg3__memcpy.exit211, %tg3__memcpy.exit211.preheader905.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %tg3__memcpy.exit211.preheader905.new ], [ %indvars.iv.next.3, %tg3__memcpy.exit211 ] ; 5 uses
  %i.aqg = trunc nuw i64 %indvars.iv to i32
  %i.aqh = add i32 %i.aoy, %i.aqg
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.aqi
  store i8 0, ptr %i.aqj, align 1, !tbaa !37
  %i.aqk = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.aqk, %invariant.op
  %i.aql = zext i32 %.reass to i64
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.aql
  store i8 0, ptr %i.aqm, align 1, !tbaa !37
  %i.aqn = trunc i64 %indvars.iv to i32
  %.reass978 = add i32 %i.aqn, %invariant.op977
  %i.aqo = zext i32 %.reass978 to i64
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.aqo
  store i8 0, ptr %i.aqp, align 1, !tbaa !37
  %i.aqq = trunc i64 %indvars.iv to i32
  %.reass980 = add i32 %i.aqq, %invariant.op979
  %i.aqr = zext i32 %.reass980 to i64
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.aqr
  store i8 0, ptr %i.aqs, align 1, !tbaa !37
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %tg3__memcpy.exit211._crit_edge, label %tg3__memcpy.exit211, !llvm.loop !705

tg3__memcpy.exit211._crit_edge:                   ; preds = %tg3__memcpy.exit211.prol.loopexit, %tg3__memcpy.exit211, %middle.block736, %vec.epilog.middle.block749, %tg3__memcpy.exit211.preheader, %._crit_edge
  store ptr %i.aka, ptr %2, align 8, !tbaa !23
  store i64 %i.ahl, ptr %3, align 8, !tbaa !30
  br label %tg3__error_push.exit

bb.hb:                                            ; preds = %bb.gn
  %i.aqt = add i64 %.0244, 15
  %i.aqu = and i64 %i.aqt, -8
  %i.aqv = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 7 uses
  %i.aqw = add i64 %i.aqv, %i.aqu                 ; 2 uses
  %i.aqx = icmp ugt i64 %i.aqw, 524288
  br i1 %i.aqx, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %.not.i214 = icmp eq ptr %1, null
  br i1 %.not.i214, label %tg3__error_push.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !68 ; 4 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !122 ; 3 uses
  %.not27.i215 = icmp ult i32 %i.aqz, %i.arb
  %.pre.i216 = load ptr, ptr %1, align 8, !tbaa !69 ; 11 uses
  %.pre.i216819 = ptrtoaddr ptr %.pre.i216 to i64
  br i1 %.not27.i215, label %bb.hj, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %.not28.i217 = icmp eq i32 %i.arb, 0
  %i.arc = shl i32 %i.arb, 1
  %spec.select.i218 = select i1 %.not28.i217, i32 16, i32 %i.arc ; 2 uses
  %i.ard = zext i32 %spec.select.i218 to i64
  %i.are = shl nuw nsw i64 %i.ard, 5              ; 4 uses
  %.not.i.i219 = icmp eq ptr %.pre.i216, null
  %i.arf = or disjoint i64 %i.are, 8
  %i.arg = add i64 %i.aqv, %i.arf                 ; 3 uses
  %i.arh = icmp ugt i64 %i.arg, 524288            ; 2 uses
  br i1 %.not.i.i219, label %bb.hf, label %bb.hh

bb.hf:                                            ; preds = %bb.he
  br i1 %i.arh, label %tg3__error_push.exit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ari = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aqv ; 2 uses
  store i64 %i.are, ptr %i.ari, align 8, !tbaa !30
  store i64 %i.arg, ptr @test_heap_used, align 8, !tbaa !30
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  br label %.loopexit.i226

bb.hh:                                            ; preds = %bb.he
  br i1 %i.arh, label %tg3__error_push.exit, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ark = getelementptr inbounds i8, ptr %.pre.i216, i64 -8
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !30
  %i.arm = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aqv ; 2 uses
  store i64 %i.are, ptr %i.arm, align 8, !tbaa !30
  store i64 %i.arg, ptr @test_heap_used, align 8, !tbaa !30
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 8 ; 9 uses
  %i.aro = call i64 @llvm.umin.i64(i64 %i.arl, i64 %i.are) ; 11 uses
  %.not27.i.i220 = icmp eq i64 %i.aro, 0
  br i1 %.not27.i.i220, label %.loopexit.i226, label %iter.check834

iter.check834:                                    ; preds = %bb.hi
  %min.iters.check821 = icmp samesign ult i64 %i.aro, 4
  br i1 %min.iters.check821, label %.lr.ph.i.i221.preheader, label %vector.memcheck818

vector.memcheck818:                               ; preds = %iter.check834
  %i.arp = add i64 %i.aqv, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.arq = sub i64 %.pre.i216819, %i.arp
  %diff.check820 = icmp ugt i64 %i.arq, -32
  br i1 %diff.check820, label %.lr.ph.i.i221.preheader, label %vector.main.loop.iter.check822

vector.main.loop.iter.check822:                   ; preds = %vector.memcheck818
  %min.iters.check823 = icmp samesign ult i64 %i.aro, 32
  br i1 %min.iters.check823, label %vec.epilog.ph838, label %vector.ph824

vector.ph824:                                     ; preds = %vector.main.loop.iter.check822
  %i.arr = and i64 %i.aro, 28
  %n.vec825 = and i64 %i.aro, 137438953440        ; 4 uses
  br label %vector.body826

vector.body826:                                   ; preds = %vector.ph824, %vector.body826
  %index827 = phi i64 [ 0, %vector.ph824 ], [ %index.next830, %vector.body826 ] ; 3 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %index827 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %wide.load828 = load <16 x i8>, ptr %i.ars, align 1, !tbaa !37
  %wide.load829 = load <16 x i8>, ptr %i.art, align 1, !tbaa !37
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 %index827 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  store <16 x i8> %wide.load828, ptr %i.aru, align 1, !tbaa !37
  store <16 x i8> %wide.load829, ptr %i.arv, align 1, !tbaa !37
  %index.next830 = add nuw i64 %index827, 32      ; 2 uses
  %i.arw = icmp eq i64 %index.next830, %n.vec825
  br i1 %i.arw, label %middle.block831, label %vector.body826, !llvm.loop !706

middle.block831:                                  ; preds = %vector.body826
  %cmp.n832 = icmp eq i64 %i.aro, %n.vec825
  br i1 %cmp.n832, label %.loopexit.loopexit.i224, label %vec.epilog.iter.check836

vec.epilog.iter.check836:                         ; preds = %middle.block831
  %min.epilog.iters.check837 = icmp eq i64 %i.arr, 0
  br i1 %min.epilog.iters.check837, label %.lr.ph.i.i221.preheader, label %vec.epilog.ph838, !prof !46

vec.epilog.ph838:                                 ; preds = %vector.main.loop.iter.check822, %vec.epilog.iter.check836
  %vec.epilog.resume.val833 = phi i64 [ %n.vec825, %vec.epilog.iter.check836 ], [ 0, %vector.main.loop.iter.check822 ]
  %n.vec839 = and i64 %i.aro, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body840

vec.epilog.vector.body840:                        ; preds = %vec.epilog.vector.body840, %vec.epilog.ph838
  %index841 = phi i64 [ %vec.epilog.resume.val833, %vec.epilog.ph838 ], [ %index.next843, %vec.epilog.vector.body840 ] ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %index841
  %wide.load842 = load <4 x i8>, ptr %i.arx, align 1, !tbaa !37
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arn, i64 %index841
  store <4 x i8> %wide.load842, ptr %i.ary, align 1, !tbaa !37
  %index.next843 = add nuw i64 %index841, 4       ; 2 uses
  %i.arz = icmp eq i64 %index.next843, %n.vec839
  br i1 %i.arz, label %vec.epilog.middle.block844, label %vec.epilog.vector.body840, !llvm.loop !707

vec.epilog.middle.block844:                       ; preds = %vec.epilog.vector.body840
  %cmp.n845 = icmp eq i64 %i.aro, %n.vec839
  br i1 %cmp.n845, label %.loopexit.loopexit.i224, label %.lr.ph.i.i221.preheader

.lr.ph.i.i221.preheader:                          ; preds = %iter.check834, %vector.memcheck818, %vec.epilog.iter.check836, %vec.epilog.middle.block844
  %.026.i.i222.ph = phi i64 [ 0, %iter.check834 ], [ 0, %vector.memcheck818 ], [ %n.vec825, %vec.epilog.iter.check836 ], [ %n.vec839, %vec.epilog.middle.block844 ] ; 3 uses
  %xtraiter945 = and i64 %i.aro, 3                ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph.i.i221.prol.loopexit, label %.lr.ph.i.i221.prol

.lr.ph.i.i221.prol:                               ; preds = %.lr.ph.i.i221.preheader, %.lr.ph.i.i221.prol
  %.026.i.i222.prol = phi i64 [ %i.asd, %.lr.ph.i.i221.prol ], [ %.026.i.i222.ph, %.lr.ph.i.i221.preheader ] ; 3 uses
  %prol.iter947 = phi i64 [ %prol.iter947.next, %.lr.ph.i.i221.prol ], [ 0, %.lr.ph.i.i221.preheader ]
  %i.asa = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %.026.i.i222.prol
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !37
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arn, i64 %.026.i.i222.prol
  store i8 %i.asb, ptr %i.asc, align 1, !tbaa !37
  %i.asd = add nuw nsw i64 %.026.i.i222.prol, 1   ; 2 uses
  %prol.iter947.next = add i64 %prol.iter947, 1   ; 2 uses
  %prol.iter947.cmp.not = icmp eq i64 %prol.iter947.next, %xtraiter945
  br i1 %prol.iter947.cmp.not, label %.lr.ph.i.i221.prol.loopexit, label %.lr.ph.i.i221.prol, !llvm.loop !708

.lr.ph.i.i221.prol.loopexit:                      ; preds = %.lr.ph.i.i221.prol, %.lr.ph.i.i221.preheader
  %.026.i.i222.unr = phi i64 [ %.026.i.i222.ph, %.lr.ph.i.i221.preheader ], [ %i.asd, %.lr.ph.i.i221.prol ]
  %i.ase = sub nsw i64 %.026.i.i222.ph, %i.aro
  %i.asf = icmp ugt i64 %i.ase, -4
  br i1 %i.asf, label %.loopexit.loopexit.i224, label %.lr.ph.i.i221

.lr.ph.i.i221:                                    ; preds = %.lr.ph.i.i221.prol.loopexit, %.lr.ph.i.i221
  %.026.i.i222 = phi i64 [ %i.asv, %.lr.ph.i.i221 ], [ %.026.i.i222.unr, %.lr.ph.i.i221.prol.loopexit ] ; 6 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %.026.i.i222
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !37
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arn, i64 %.026.i.i222
  store i8 %i.ash, ptr %i.asi, align 1, !tbaa !37
  %i.asj = add nuw nsw i64 %.026.i.i222, 1        ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %i.asj
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !37
  %i.asm = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.asj
  store i8 %i.asl, ptr %i.asm, align 1, !tbaa !37
  %i.asn = add nuw nsw i64 %.026.i.i222, 2        ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %i.asn
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !37
  %i.asq = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.asn
  store i8 %i.asp, ptr %i.asq, align 1, !tbaa !37
  %i.asr = add nuw nsw i64 %.026.i.i222, 3        ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.pre.i216, i64 %i.asr
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !37
  %i.asu = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.asr
  store i8 %i.ast, ptr %i.asu, align 1, !tbaa !37
  %i.asv = add nuw nsw i64 %.026.i.i222, 4        ; 2 uses
  %exitcond.not.i.i223.3 = icmp eq i64 %i.asv, %i.aro
  br i1 %exitcond.not.i.i223.3, label %.loopexit.loopexit.i224, label %.lr.ph.i.i221, !llvm.loop !709

.loopexit.loopexit.i224:                          ; preds = %.lr.ph.i.i221.prol.loopexit, %.lr.ph.i.i221, %vec.epilog.middle.block844, %middle.block831
  %.pre33.pre.i225 = load i32, ptr %i.aqy, align 8, !tbaa !68
  br label %.loopexit.i226

.loopexit.i226:                                   ; preds = %.loopexit.loopexit.i224, %bb.hi, %bb.hg
  %.pre33.i227 = phi i32 [ %i.aqz, %bb.hg ], [ %i.aqz, %bb.hi ], [ %.pre33.pre.i225, %.loopexit.loopexit.i224 ]
  %.018.i.ph.i228 = phi ptr [ %i.arj, %bb.hg ], [ %i.arn, %bb.hi ], [ %i.arn, %.loopexit.loopexit.i224 ] ; 2 uses
  store ptr %.018.i.ph.i228, ptr %1, align 8, !tbaa !69
  store i32 %spec.select.i218, ptr %i.ara, align 4, !tbaa !122
  br label %bb.hj

bb.hj:                                            ; preds = %.loopexit.i226, %bb.hd
  %i.asw = phi i32 [ %.pre33.i227, %.loopexit.i226 ], [ %i.aqz, %bb.hd ] ; 2 uses
  %i.asx = phi ptr [ %.018.i.ph.i228, %.loopexit.i226 ], [ %.pre.i216, %bb.hd ]
  %i.asy = add i32 %i.asw, 1
  store i32 %i.asy, ptr %i.aqy, align 8, !tbaa !68
  %i.asz = zext i32 %i.asw to i64
  %i.ata = getelementptr inbounds nuw [32 x i8], ptr %i.asx, i64 %i.asz ; 5 uses
  store i32 2, ptr %i.ata, align 8, !tbaa !124
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 4
  store i32 50, ptr %i.atb, align 4, !tbaa !125
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  store ptr @.str.11, ptr %i.atc, align 8, !tbaa !126
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  store ptr null, ptr %i.atd, align 8, !tbaa !127
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ata, i64 24
  store i64 -1, ptr %i.ate, align 8, !tbaa !128
  %i.atf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.atf, align 8, !tbaa !67
  br label %tg3__error_push.exit
end_hunk_0
