Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.09?download=true
inline.NumInlined: 1503
inline.NumDeleted: 537
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations15shard_set_unionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_ECsQbU2fm3lSD_3xet:bb.a
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [2 x i8], align 1                ; 6 uses
  %i.av = alloca [112 x i8], align 8              ; 25 uses
  %i.aw = alloca [24 x i8], align 8               ; 15 uses
  %i.ax = alloca [200 x i8], align 8              ; 19 uses
  %i.ay = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %2, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %4, ptr %i.az, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6257.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4644
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i8 0, i64 80, i1 false)
  store i64 1, ptr %i.ba, align 8, !noalias !4644
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i8 0, i64 64, i1 false), !noalias !4644
  store i64 -1, ptr %i.bj, align 8, !noalias !4644
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 168 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 176 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 184 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !noalias !4644
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 32), !noalias !4645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4646
  store i64 2, ptr %i.h, align 8, !noalias !4646
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8), !noalias !4645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4646
  store i64 200, ptr %i.g, align 8, !noalias !4646
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !4645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4646
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !4644, !noundef !18
  %i.bq = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i64 noundef %i.bp), !noalias !4643 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bt = extractvalue { i64, ptr } %i.bq, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bu, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bt, ptr %.sroa.4399.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB28_ECsQbU2fm3lSD_3xet.exit

bb.c:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !4644, !noundef !18
  %i.bx = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0, i64 noundef %i.bw), !noalias !4643 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ca = extractvalue { i64, ptr } %i.bx, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cb, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4402.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ca, ptr %.sroa.4402.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB28_ECsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.c
  store i64 48, ptr %i.bb, align 8, !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !4644
  store i64 0, ptr %i.aw, align 8, !noalias !4644
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cc, align 8, !noalias !4644
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 6 uses
  store i64 0, ptr %i.cd, align 8, !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4648
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc.i unwind label %.loopexit.split-lp256.i, !noalias !4643

.noexc.i:                                         ; preds = %bb.e
  %i.ce = load i64, ptr %i.f, align 8, !range !19, !noalias !4648, !noundef !18
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !4648 ; 3 uses
  br i1 %i.cf, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.420.0.copyload.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !4648 ; 2 uses
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !4648 ; 2 uses
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.ci = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !noalias !4648
  %.sroa.622.0.copyload.i.i = load i64, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !noalias !4648
  %.sroa.7.i.sroa.4.0..sroa.723.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.7.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.7.i.sroa.4.0..sroa.723.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !4648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4648
  %i.cj = icmp eq ptr %i.ch, inttoptr (i64 -1 to ptr)
  %i.ck = icmp eq i64 %.sroa.420.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = icmp eq i64 %.sroa.521.0.copyload.i.i, -1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.cl, i1 false
  %i.cm = icmp eq i64 %.sroa.622.0.copyload.i.i, -1
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.cm, i1 false
  br i1 %or.cond8.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = ptrtoint ptr %i.ch to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.gt, %.thread171.i
  %.sroa.0387.0.i = phi i1 [ %.sroa.0387.5216.i, %bb.gt ], [ %.sroa.0387.2169.i, %.thread171.i ]
  %.pn655.i = phi { ptr, i32 } [ %.pn642217.i, %bb.gt ], [ %.pn170.i, %.thread171.i ] ; 2 uses
  br i1 %.sroa.0387.0.i, label %.thread.i, label %common.resume.i

.loopexit255.i:                                   ; preds = %bb.v, %bb.q
  %lpad.loopexit257.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp256.i:                          ; preds = %.thread207.i, %bb.x, %bb.j, %bb.e
  %lpad.loopexit.split-lp258.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4648
  br label %bb.gy

bb.j:                                             ; preds = %bb.g, %bb.f
  %.sroa.17.0.ph.i = phi i64 [ undef, %bb.f ], [ %.sroa.7.i.sroa.4.0.copyload.i, %bb.g ]
  %.sroa.14.0.ph.i = phi i64 [ undef, %bb.f ], [ %.sroa.521.0.copyload.i.i, %bb.g ]
  %.sroa.12.0.ph.i = phi i64 [ undef, %bb.f ], [ %.sroa.420.0.copyload.i.i, %bb.g ]
  %.sroa.816.0.ph.i = phi i64 [ undef, %bb.f ], [ %i.cn, %bb.g ]
  %.sroa.014.0.ph.i = phi i64 [ 0, %bb.f ], [ 1, %bb.g ] ; 2 uses
  %i.co = phi <2 x i64> [ undef, %bb.f ], [ %i.ci, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4649
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc683.i unwind label %.loopexit.split-lp256.i, !noalias !4643

.noexc683.i:                                      ; preds = %bb.j
  %i.cp = load i64, ptr %i.e, align 8, !range !19, !noalias !4649, !noundef !18
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !4649 ; 3 uses
  br i1 %i.cq, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc683.i
  %.sroa.420.0..sroa_idx.i667.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.420.0.copyload.i668.i = load i64, ptr %.sroa.420.0..sroa_idx.i667.i, align 8, !noalias !4649 ; 2 uses
  %.sroa.521.0..sroa_idx.i669.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.521.0.copyload.i670.i = load i64, ptr %.sroa.521.0..sroa_idx.i669.i, align 8, !noalias !4649 ; 2 uses
  %.sroa.622.0..sroa_idx.i671.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ct = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i671.i, align 8, !noalias !4649
  %.sroa.622.0.copyload.i672.i = load i64, ptr %.sroa.622.0..sroa_idx.i671.i, align 8, !noalias !4649
  %.sroa.7.i665.sroa.4.0..sroa.723.0..sroa_idx.i673.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7.i665.sroa.4.0.copyload.i = load i64, ptr %.sroa.7.i665.sroa.4.0..sroa.723.0..sroa_idx.i673.sroa_idx.i, align 8, !noalias !4649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4649
  %i.cu = icmp eq ptr %i.cs, inttoptr (i64 -1 to ptr)
  %i.cv = icmp eq i64 %.sroa.420.0.copyload.i668.i, -1
  %or.cond.i674.i = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cw = icmp eq i64 %.sroa.521.0.copyload.i670.i, -1
  %or.cond5.i675.i = select i1 %or.cond.i674.i, i1 %i.cw, i1 false
  %i.cx = icmp eq i64 %.sroa.622.0.copyload.i672.i, -1
  %or.cond8.i676.i = select i1 %or.cond5.i675.i, i1 %i.cx, i1 false
  br i1 %or.cond8.i676.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = ptrtoint ptr %i.cs to i64
  br label %bb.n

bb.m:                                             ; preds = %.noexc683.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4649
  br label %bb.gy

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sroa.1734.0.ph.i = phi i64 [ undef, %bb.k ], [ %.sroa.7.i665.sroa.4.0.copyload.i, %bb.l ]
  %.sroa.1428.0.ph.i = phi i64 [ undef, %bb.k ], [ %.sroa.521.0.copyload.i670.i, %bb.l ]
  %.sroa.1226.0.ph.i = phi i64 [ undef, %bb.k ], [ %.sroa.420.0.copyload.i668.i, %bb.l ]
  %.sroa.824.0.ph.i = phi i64 [ undef, %bb.k ], [ %i.cy, %bb.l ]
  %.sroa.022.0.ph.i = phi i64 [ 0, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %i.cz = phi <2 x i64> [ undef, %bb.k ], [ %i.ct, %bb.l ]
  store i64 %.sroa.014.0.ph.i, ptr %i.av, align 8, !noalias !4644
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 5 uses
  store i64 %.sroa.816.0.ph.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4644
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store i64 %.sroa.12.0.ph.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  store i64 %.sroa.14.0.ph.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 4 uses
  store <2 x i64> %i.co, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  store i64 %.sroa.17.0.ph.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !4644
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 4 uses
  store i64 %.sroa.022.0.ph.i, ptr %i.da, align 8, !noalias !4644
  %.sroa.258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 4 uses
  store i64 %.sroa.824.0.ph.i, ptr %.sroa.258.0..sroa_idx.i, align 8, !noalias !4644
  %.sroa.258.sroa.2.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 72 ; 2 uses
  store i64 %.sroa.1226.0.ph.i, ptr %.sroa.258.sroa.2.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.258.sroa.3.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 2 uses
  store i64 %.sroa.1428.0.ph.i, ptr %.sroa.258.sroa.3.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.258.sroa.4.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 88 ; 2 uses
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 96 ; 4 uses
  store <2 x i64> %i.cz, ptr %.sroa.258.sroa.4.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 2 uses
  store i64 %.sroa.1734.0.ph.i, ptr %.sroa.359.0..sroa_idx.i, align 8, !noalias !4644
  %.sroa.7.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.5425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.7427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 44 ; 3 uses
  %.sroa.3157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %.sroa.6476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.2169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.3170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %.sroa.4171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.av, i64 100 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.4188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.4498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.4432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.5433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %.sroa.6434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.sroa.282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.420.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.521.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.622.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.7.i2.sroa.4.0..sroa.723.0..sroa_idx.i10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.7.i.sroa.4.0..sroa.723.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.420.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.622.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.7.i22.sroa.4.0..sroa.723.0..sroa_idx.i30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.420.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.622.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.7.i42.sroa.4.0..sroa.723.0..sroa_idx.i50.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.o

bb.o:                                             ; preds = %bb.z, %bb.n
  %i.dp = phi i64 [ 0, %bb.n ], [ %i.em, %bb.z ]
  %i.dq = phi i64 [ %.sroa.022.0.ph.i, %bb.n ], [ %.pre720.i, %bb.z ]
  %i.dr = phi i64 [ %.sroa.014.0.ph.i, %bb.n ], [ %.pre.i, %bb.z ]
  %.sroa.038.0.i = phi i32 [ 0, %bb.n ], [ %.sroa.038.2.i, %bb.z ]
  %.sroa.0.0.i = phi i64 [ 48, %bb.n ], [ %.sroa.0.2.i, %bb.z ] ; 2 uses
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = trunc nuw i64 %i.dq to i1               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4650)
  call void @llvm.experimental.noalias.scope.decl(metadata !4651)
  br i1 %i.ds, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.dt, label %bb.q, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.du = invoke noundef i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(48) %.sroa.2.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(48) %.sroa.258.0..sroa_idx.i)
          to label %.noexc685.i unwind label %.loopexit255.i, !noalias !4643

.noexc685.i:                                      ; preds = %bb.q
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.noexc685.i
  %i.dw = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4650, !noalias !4652, !noundef !18 ; 3 uses
  %i.dx = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4651, !noalias !4653, !noundef !18 ; 3 uses
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = and i32 %i.dx, %i.dw                    ; 2 uses
  %i.ea = icmp eq i32 %i.dz, %i.dx
  br i1 %i.ea, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = icmp eq i32 %i.dz, %i.dw
  %..i.i = select i1 %i.eb, i16 1, i16 515
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i

bb.u:                                             ; preds = %bb.o
  %..i.i.i = select i1 %i.dt, i16 2, i16 255
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i

bb.v:                                             ; preds = %.noexc685.i
  %i.ec = invoke noundef i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(48) %.sroa.2.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(48) %.sroa.258.0..sroa_idx.i)
          to label %.noexc686.i unwind label %.loopexit255.i, !noalias !4643

.noexc686.i:                                      ; preds = %bb.v
  %switch.tableidx = add nsw i8 %i.ec, 1
  %switch.cast = zext i8 %switch.tableidx to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 4
  %switch.downshift = lshr i48 8606712320, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i

default.unreachable:                              ; preds = %bb.aa, %bb.eo
  unreachable

default.unreachable.i:                            ; preds = %bb.en
  unreachable

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i: ; preds = %.noexc686.i, %bb.s, %bb.r, %bb.p
  %.sroa.08.1.i.ph.i = phi i16 [ 512, %bb.p ], [ %switch.masked, %.noexc686.i ], [ 256, %bb.s ], [ 256, %bb.r ] ; 2 uses
  %.sroa.0629.0.extract.trunc154.i = trunc i16 %.sroa.08.1.i.ph.i to i8
  br label %bb.w

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.08.1.i.i = phi i16 [ %..i.i.i, %bb.u ], [ %..i.i, %bb.t ] ; 2 uses
  %.sroa.0629.0.extract.trunc.i = trunc i16 %.sroa.08.1.i.i to i8 ; 2 uses
  %.not638.i = icmp eq i8 %.sroa.0629.0.extract.trunc.i, -1
  br i1 %.not638.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i
  %.sroa.0629.0.extract.trunc157.i = phi i8 [ %.sroa.0629.0.extract.trunc154.i, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i ], [ %.sroa.0629.0.extract.trunc.i, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i ]
  %.sroa.08.1.i156.i = phi i16 [ %.sroa.08.1.i.ph.i, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.thread.i ], [ %.sroa.08.1.i.i, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i ]
  %.sroa.4630.0.extract.shift.i = lshr i16 %.sroa.08.1.i156.i, 8
  %.sroa.4630.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.4630.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !4644
  store i8 %.sroa.0629.0.extract.trunc157.i, ptr %i.au, align 1, !noalias !4644
  store i8 %.sroa.4630.0.extract.trunc.i, ptr %.sroa.7.0..sroa_idx62.i, align 1, !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !4644
  store i64 2, ptr %.sroa.5425.0..sroa_idx.i, align 8, !noalias !4644
  store i64 0, ptr %.sroa.6426.0..sroa_idx.i, align 8, !noalias !4644
  store i64 1, ptr %.sroa.7427.0..sroa_idx.i, align 8, !noalias !4644
  br label %bb.y

bb.x:                                             ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations30get_next_actions_for_file_info.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 -1, i64 32, i1 false), !noalias !4644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 -1, i64 32, i1 false), !noalias !4644
  %i.ed = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false), !noalias !4644
  %i.ee = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.dv unwind label %.loopexit.split-lp256.i, !noalias !4643 ; 2 uses

.loopexit237.i:                                   ; preds = %bb.bb, %.lr.ph512.i
  %lpad.loopexit239.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp238.loopexit.i:                 ; preds = %bb.bi, %bb.ak
  %lpad.loopexit242.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp238.loopexit.split-lp.loopexit.i: ; preds = %bb.dj, %bb.ch
  %lpad.loopexit245.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.do, %.lr.ph.i
  %lpad.loopexit248.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.au, %bb.br, %bb.cx, %bb.db, %bb.cu, %bb.cq, %bb.cn, %bb.cm, %bb.ci, %._crit_edge.i, %bb.by, %bb.bx, %bb.bo, %bb.ar, %bb.ao, %bb.an, %bb.ag
  %lpad.loopexit252.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i, %bb.ab
  %lpad.loopexit.split-lp253.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.y:                                             ; preds = %bb.ad, %bb.w
  %i.ef = phi i64 [ %i.dp, %bb.w ], [ %i.em, %bb.ad ] ; 7 uses
  %.sroa.0.1515.i = phi i64 [ %.sroa.0.0.i, %bb.w ], [ %.sroa.0.2.i, %bb.ad ] ; 4 uses
  %.sroa.038.1514.i = phi i32 [ %.sroa.038.0.i, %bb.w ], [ %.sroa.038.2.i, %bb.ad ] ; 6 uses
  %.not.i687.i = phi i1 [ false, %bb.w ], [ true, %bb.ad ]
  %i.eg = phi i64 [ 0, %bb.w ], [ 1, %bb.ad ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6426.0..sroa_idx.i, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !4654, !noalias !4644, !noundef !18 ; 9 uses
  %i.ej = icmp ult i64 %i.ei, 2
  br i1 %i.ej, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !4644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !4644
  %.pre.i = load i64, ptr %i.av, align 8, !range !19, !noalias !4644
  %.pre720.i = load i64, ptr %i.da, align 8, !range !19, !noalias !4644
  br label %bb.o

bb.aa:                                            ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !range !32, !noalias !4644, !noundef !18
  switch i8 %i.el, label %default.unreachable [
    i8 0, label %bb.af
    i8 1, label %bb.bn
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.y
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21
          to label %bb.ac unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !4643

end_hunk_0
begin_hunk_1_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations15shard_set_unionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_ECsQbU2fm3lSD_3xet:bb.a
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4644
  br label %bb.dt

bb.az:                                            ; preds = %.lr.ph512.i
  %i.hk = load i64, ptr %i.ap, align 8, !range !19, !noalias !4644, !noundef !18
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = load ptr, ptr %i.dj, align 8, !noalias !4644 ; 2 uses
  br i1 %i.hl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4644
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.496.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4442.0..sroa_idx.i, i64 40, i1 false), !noalias !4644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4644
  store ptr %i.hm, ptr %i.aq, align 8, !noalias !4644
  %i.hn = invoke { i64, ptr } @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bc unwind label %.loopexit237.i, !noalias !4643 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ho = extractvalue { i64, ptr } %i.hn, 0
  %i.hp = trunc nuw i64 %i.ho to i1
  br i1 %i.hp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hq = extractvalue { i64, ptr } %i.hn, 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4644
  %exitcond718.not.i = icmp eq i32 %i.fw, %i.fc
  br i1 %exitcond718.not.i, label %._crit_edge513.i, label %.lr.ph512.i

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %.sink = phi ptr [ %i.hq, %bb.bd ], [ %i.hm, %bb.ba ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hr, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.4447.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4644
  br label %bb.dt

bb.bg:                                            ; preds = %bb.ak
  %i.hs = load i64, ptr %i.ar, align 8, !range !19, !noalias !4644, !noundef !18
  %i.ht = trunc nuw i64 %i.hs to i1
  %i.hu = load ptr, ptr %i.di, align 8, !noalias !4644 ; 2 uses
  br i1 %i.ht, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4644
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.282.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.4432.0..sroa_idx.i, i64 28, i1 false), !noalias !4644
  %.sroa.5433.0.copyload.i = load i32, ptr %.sroa.5433.0..sroa_idx.i, align 4, !noalias !4644 ; 2 uses
  %.sroa.6434.0.copyload.i = load i64, ptr %.sroa.6434.0..sroa_idx.i, align 8, !noalias !4644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4644
  store ptr %i.hu, ptr %i.as, align 8, !noalias !4644
  store i32 %.sroa.5433.0.copyload.i, ptr %.sroa.383.0..sroa_idx.i, align 4, !noalias !4644
  store i64 %.sroa.6434.0.copyload.i, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !4644
  %i.hv = zext i32 %.sroa.5433.0.copyload.i to i64
  %i.hw = add i64 %i.fm, %i.hv                    ; 4 uses
  store i64 %i.hw, ptr %i.bl, align 8, !noalias !4644
  %i.hx = invoke { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bj unwind label %.loopexit.split-lp238.loopexit.i, !noalias !4643 ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hy = extractvalue { i64, ptr } %i.hx, 0
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ia = extractvalue { i64, ptr } %i.hx, 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4644
  %exitcond717.not.i = icmp eq i32 %i.fn, %i.fc
  br i1 %exitcond717.not.i, label %._crit_edge510.i, label %bb.ak

bb.bm:                                            ; preds = %bb.bk, %bb.bh
  %.sink770 = phi ptr [ %i.ia, %bb.bk ], [ %i.hu, %bb.bh ]
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ib, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink770, ptr %.sroa.4439.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4644
  br label %bb.dt

bb.bn:                                            ; preds = %bb.aa
  %i.ic = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %i.ei ; 9 uses
  %i.id = load i64, ptr %i.ic, align 8, !range !19, !noalias !4644, !noundef !18
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.bo, label %.invoke.i, !prof !17

bb.bo:                                            ; preds = %bb.bn
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ei
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !4643, !noalias !4655, !nonnull !18, !align !22, !noundef !18 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ij = load i32, ptr %i.ii, align 8, !noalias !4644, !noundef !18 ; 2 uses
  %i.ik = lshr i32 %i.ij, 30
  %.lobit230.i = and i32 %i.ik, 1                 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.im = load i32, ptr %i.il, align 4, !noalias !4644, !noundef !18 ; 2 uses
  %i.in = shl i32 %i.im, 1
  %i.io = or disjoint i32 %i.in, %.lobit230.i
  %i.ip = add i32 %.lobit230.i, %i.im
  %.not652960.i = icmp slt i32 %i.ij, 0
  %.sroa.0131.0.i = select i1 %.not652960.i, i32 %i.io, i32 %i.ip
  %i.iq = zext i32 %.sroa.0131.0.i to i64
  %i.ir = mul nuw nsw i64 %i.iq, 48
  %i.is = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ih, i64 noundef 2, i64 noundef %i.ir)
          to label %bb.bp unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.it = extractvalue { i64, ptr } %i.is, 0
  %i.iu = trunc nuw i64 %i.it to i1
  br i1 %i.iu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iv = extractvalue { i64, ptr } %i.is, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.iw, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.iv, ptr %.sroa.4465.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %bb.dt

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4658
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ih)
          to label %.noexc40 unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc40:                                         ; preds = %bb.br
  %i.ix = load i64, ptr %i.b, align 8, !range !19, !noalias !4658, !noundef !18
  %i.iy = trunc nuw i64 %i.ix to i1
  %i.iz = load ptr, ptr %i.dn, align 8, !noalias !4658 ; 3 uses
  br i1 %i.iy, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.noexc40
  %.sroa.420.0.copyload.i25 = load i64, ptr %.sroa.420.0..sroa_idx.i24, align 8, !noalias !4658 ; 2 uses
  %.sroa.521.0.copyload.i27 = load i64, ptr %.sroa.521.0..sroa_idx.i26, align 8, !noalias !4658 ; 2 uses
  %i.ja = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i28, align 8, !noalias !4658
  %.sroa.622.0.copyload.i29 = load i64, ptr %.sroa.622.0..sroa_idx.i28, align 8, !noalias !4658
  %.sroa.7.i22.sroa.4.0.copyload = load i64, ptr %.sroa.7.i22.sroa.4.0..sroa.723.0..sroa_idx.i30.sroa_idx, align 8, !noalias !4658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4658
  %i.jb = icmp eq ptr %i.iz, inttoptr (i64 -1 to ptr)
  %i.jc = icmp eq i64 %.sroa.420.0.copyload.i25, -1
  %or.cond.i31 = select i1 %i.jb, i1 %i.jc, i1 false
  %i.jd = icmp eq i64 %.sroa.521.0.copyload.i27, -1
  %or.cond5.i32 = select i1 %or.cond.i31, i1 %i.jd, i1 false
  %i.je = icmp eq i64 %.sroa.622.0.copyload.i29, -1
  %or.cond8.i33 = select i1 %or.cond5.i32, i1 %i.je, i1 false
  br i1 %or.cond8.i33, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jf = ptrtoint ptr %i.iz to i64
  br label %bb.bv

bb.bu:                                            ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4658
  %i.jg = ptrtoint ptr %i.iz to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jh, align 8, !noalias !4647
  %.sroa.6134.i.sroa.7.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.jg, ptr %.sroa.6134.i.sroa.7.0..sroa_idx101, align 8, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %bb.dt

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.1699.0.ph = phi i64 [ undef, %bb.bs ], [ %.sroa.7.i22.sroa.4.0.copyload, %bb.bt ]
  %.sroa.1390.0.ph = phi i64 [ undef, %bb.bs ], [ %.sroa.521.0.copyload.i27, %bb.bt ]
  %.sroa.1187.0.ph = phi i64 [ undef, %bb.bs ], [ %.sroa.420.0.copyload.i25, %bb.bt ]
  %.sroa.785.0.ph = phi i64 [ undef, %bb.bs ], [ %i.jf, %bb.bt ]
  %.sroa.084.0.ph = phi i64 [ 0, %bb.bs ], [ 1, %bb.bt ]
  %i.ji = phi <2 x i64> [ undef, %bb.bs ], [ %i.ja, %bb.bt ]
  store i64 %.sroa.785.0.ph, ptr %i.if, align 8, !noalias !4644
  %.sroa.6134.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %.sroa.1187.0.ph, ptr %.sroa.6134.i.sroa.7.0..sroa_idx, align 8, !noalias !4644
  %.sroa.6134.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i64 %.sroa.1390.0.ph, ptr %.sroa.6134.i.sroa.9.0..sroa_idx, align 8, !noalias !4644
  %.sroa.6134.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  store <2 x i64> %i.ji, ptr %.sroa.6134.i.sroa.11.0..sroa_idx, align 8, !noalias !4644
  store i64 %.sroa.084.0.ph, ptr %i.ic, align 8, !noalias !4644
  %.sroa.3141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  store i64 %.sroa.1699.0.ph, ptr %.sroa.3141.0..sroa_idx.i, align 8, !noalias !4644
  br label %bb.ad

bb.bw:                                            ; preds = %bb.ae
  %i.jj = load i64, ptr %i.da, align 8, !range !19, !noalias !4644, !noundef !18
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.bx, label %.invoke.i, !prof !17

bb.bx:                                            ; preds = %bb.bw
  %i.jl = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644, !noundef !18 ; 3 uses
  %.not644.i = icmp slt i32 %i.jl, 0              ; 5 uses
  %i.jm = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644 ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 0
  %.sroa.0151.0.i = select i1 %.not644.i, i1 true, i1 %i.jn ; 2 uses
  %i.jo = and i32 %i.jl, 1073741824               ; 2 uses
  %.not645.i = icmp ne i32 %i.jo, 0               ; 3 uses
  %i.jp = and i32 %i.jm, 1073741824
  %i.jq = icmp ne i32 %i.jp, 0
  %.sroa.0153.0.i = select i1 %.not645.i, i1 true, i1 %i.jq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4644
  %.sroa.0155.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4644 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3157.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !4644
  %i.jr = load i32, ptr %i.db, align 4, !noalias !4644, !noundef !18 ; 4 uses
  store i64 %.sroa.0155.0.copyload.i, ptr %i.i, align 8, !noalias !4644
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader3newmECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.i, i32 noundef %i.jr, i1 noundef zeroext %.sroa.0151.0.i, i1 noundef zeroext %.sroa.0153.0.i)
          to label %bb.by unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4644
  %i.js = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bz unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.jt = extractvalue { i64, ptr } %i.js, 0
  %i.ju = extractvalue { i64, ptr } %i.js, 1      ; 2 uses
  %i.jv = trunc nuw i64 %i.jt to i1
  br i1 %i.jv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jw, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ju, ptr %.sroa.4471.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %bb.dg

bb.cb:                                            ; preds = %bb.bz
  %i.jx = ptrtoint ptr %i.ju to i64
  %.not545.i = icmp eq i32 %i.jr, 0
  br i1 %.not545.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.dr, %bb.cb
  %i.jy = phi i64 [ %i.ef, %bb.cb ], [ %i.nt, %bb.dr ]
  %i.jz = zext i32 %i.jr to i64
  %i.ka = mul nuw nsw i64 %i.jz, 48
  %i.kb = add i64 %i.ka, %.sroa.0.1515.i
  %i.kc = add i64 %i.kb, %i.jx                    ; 3 uses
  %i.kd = load i32, ptr %i.dd, align 4, !noalias !4644, !noundef !18
  %i.ke = zext i32 %i.kd to i64
  %i.kf = mul nuw nsw i64 %i.ke, 48
  %i.kg = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 2, i64 noundef %i.kf)
          to label %bb.cc unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643 ; 2 uses

.lr.ph.i:                                         ; preds = %bb.cb, %bb.dr
  %i.kh = phi i64 [ %i.nt, %bb.dr ], [ %i.ef, %bb.cb ]
  %.sroa.0608.0501.i = phi i32 [ %i.ki, %bb.dr ], [ 0, %bb.cb ]
  %i.ki = add nuw i32 %.sroa.0608.0501.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4644
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dm unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643

bb.cc:                                            ; preds = %._crit_edge.i
  %i.kj = extractvalue { i64, ptr } %i.kg, 0
  %i.kk = trunc nuw i64 %i.kj to i1
  br i1 %i.kk, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kl = extractvalue { i64, ptr } %i.kg, 1
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.km, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kl, ptr %.sroa.4484.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %bb.dg

bb.ce:                                            ; preds = %bb.cc
  br i1 %.sroa.0151.0.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %._crit_edge506.i, %bb.ce
  %.sroa.0.5.i = phi i64 [ %i.kc, %bb.ce ], [ %.sroa.0.6.lcssa.i, %._crit_edge506.i ], [ %.sroa.0.6.lcssa.i, %bb.cj ] ; 2 uses
  br i1 %.sroa.0153.0.i, label %bb.cn, label %bb.cl

bb.cg:                                            ; preds = %bb.ce
  %.lobit.i = lshr i32 %i.jl, 31
  %.658.i = zext nneg i32 %.lobit.i to i64
  %.sroa.gep11.sroa.gep.val.i = load i32, ptr %i.db, align 4, !noalias !4644
  %.sroa.gep.sroa.gep.val.i = load i32, ptr %i.dd, align 4, !noalias !4644
  %i.kn = select i1 %.not644.i, i32 %.sroa.gep11.sroa.gep.val.i, i32 %.sroa.gep.sroa.gep.val.i ; 2 uses
  %.not546.i = icmp eq i32 %i.kn, 0
  br i1 %.not546.i, label %._crit_edge506.i, label %.lr.ph505.i

.lr.ph505.i:                                      ; preds = %bb.cg
  %i.ko = select i1 %.not644.i, ptr %2, ptr %4
  br label %bb.ch

._crit_edge506.i:                                 ; preds = %bb.dl, %bb.cg
  %.sroa.0.6.lcssa.i = phi i64 [ %i.kc, %bb.cg ], [ %i.nn, %bb.dl ] ; 2 uses
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val.i = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val.i = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %6 = select i1 %.not644.i, i32 %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val.i, i32 %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val.i
  %.not647.i = icmp sgt i32 %6, -1
  br i1 %.not647.i, label %bb.cf, label %bb.ci

bb.ch:                                            ; preds = %bb.dl, %.lr.ph505.i
  %.sroa.0.6503.i = phi i64 [ %i.kc, %.lr.ph505.i ], [ %i.nn, %bb.dl ]
  %.sroa.0619.0502.i = phi i32 [ 0, %.lr.ph505.i ], [ %i.kp, %bb.dl ]
  %i.kp = add nuw i32 %.sroa.0619.0502.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4644
  invoke void @_RINvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_21FileVerificationEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ko)
          to label %bb.dh unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.i, !noalias !4643

bb.ci:                                            ; preds = %._crit_edge506.i
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.658.i
  %i.kr = load ptr, ptr %i.kq, align 8, !alias.scope !4643, !noalias !4655, !nonnull !18, !align !22, !noundef !18
  %.sroa.gep.sroa.gep.val224.i = load i32, ptr %i.dd, align 4, !noalias !4644
  %.sroa.gep11.sroa.gep.val225.i = load i32, ptr %i.db, align 4, !noalias !4644
  %7 = select i1 %.not644.i, i32 %.sroa.gep.sroa.gep.val224.i, i32 %.sroa.gep11.sroa.gep.val225.i
  %i.ks = zext i32 %7 to i64
  %i.kt = mul nuw nsw i64 %i.ks, 48
  %i.ku = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kr, i64 noundef 2, i64 noundef %i.kt)
          to label %bb.cj unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.kv = extractvalue { i64, ptr } %i.ku, 0
  %i.kw = trunc nuw i64 %i.kv to i1
  br i1 %i.kw, label %bb.ck, label %bb.cf

bb.ck:                                            ; preds = %bb.cj
  %i.kx = extractvalue { i64, ptr } %i.ku, 1
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ky, align 8, !alias.scope !4642, !noalias !4647
  %.sroa.4495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kx, ptr %.sroa.4495.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %bb.dg

bb.cl:                                            ; preds = %bb.ct, %bb.cf
  %.sroa.0.7.i = phi i64 [ %i.ll, %bb.ct ], [ %.sroa.0.5.i, %bb.cf ]
  %i.kz = load i64, ptr %i.cd, align 8, !alias.scope !4659, !noalias !4644, !noundef !18 ; 3 uses
  %i.la = load i64, ptr %i.aw, align 8, !range !23, !alias.scope !4659, !noalias !4644, !noundef !18
  %i.lb = icmp eq i64 %i.kz, %i.la
  br i1 %i.lb, label %bb.cm, label %bb.cx

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTymEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw) #20
          to label %bb.cx unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643

bb.cn:                                            ; preds = %bb.cf
  %.lobit226.i = lshr exact i32 %i.jo, 30
  %.662.i = zext nneg i32 %.lobit226.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4644
  %i.lc = select i1 %.not645.i, ptr %2, ptr %4
  invoke void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_15FileMetadataExt11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lc)
          to label %bb.co unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643

bb.co:                                            ; preds = %bb.cn
  %i.ld = load i64, ptr %i.ag, align 8, !range !19, !noalias !4644, !noundef !18
  %i.le = trunc nuw i64 %i.ld to i1
  %i.lf = load ptr, ptr %i.df, align 8, !noalias !4644 ; 2 uses
  br i1 %i.le, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4644
  br label %.loopexit782

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4205.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4498.0..sroa_idx.i, i64 40, i1 false), !noalias !4644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4644
  store ptr %i.lf, ptr %i.ah, align 8, !noalias !4644
  %i.lg = invoke { i64, ptr } @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_15FileMetadataExt9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cr unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643 ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.lh = extractvalue { i64, ptr } %i.lg, 0
  %i.li = extractvalue { i64, ptr } %i.lg, 1      ; 2 uses
  %i.lj = trunc nuw i64 %i.lh to i1
  br i1 %i.lj, label %.loopexit782, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = add i64 %.sroa.0.5.i, %i.lk
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val227.i = load i32, ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val228.i = load i32, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  %i.lm = select i1 %.not645.i, i32 %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.val227.i, i32 %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.val228.i
  %i.ln = and i32 %i.lm, 1073741824
  %.not648.i = icmp eq i32 %i.ln, 0
  br i1 %.not648.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4644
  br label %bb.cl

bb.cu:                                            ; preds = %bb.cs
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.662.i
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !4643, !noalias !4655, !nonnull !18, !align !22, !noundef !18
  %i.lq = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lp, i64 noundef 2, i64 noundef 48)
          to label %bb.cv unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4643 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.lr = extractvalue { i64, ptr } %i.lq, 0
  %i.ls = trunc nuw i64 %i.lr to i1
  br i1 %i.ls, label %bb.cw, label %bb.ct

bb.cw:                                            ; preds = %bb.cv
  %i.lt = extractvalue { i64, ptr } %i.lq, 1
  br label %.loopexit782

bb.cx:                                            ; preds = %bb.cm, %bb.cl
  %i.lu = load ptr, ptr %i.cc, align 8, !alias.scope !4659, !noalias !4644, !nonnull !18, !noundef !18
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lu, i64 %i.kz ; 2 uses
  store i64 %.sroa.0155.0.copyload.i, ptr %i.lv, align 8, !noalias !4643
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i32 %.sroa.038.1514.i, ptr %i.lw, align 8, !noalias !4643
  %i.lx = add i64 %i.kz, 1
  store i64 %i.lx, ptr %i.cd, align 8, !alias.scope !4659, !noalias !4644
  %i.ly = load i32, ptr %i.dg, align 8, !noalias !4644, !noundef !18 ; 2 uses
  %i.lz = lshr i32 %i.ly, 30
  %.lobit229.i = and i32 %i.lz, 1                 ; 2 uses
  %i.ma = load i32, ptr %i.dh, align 4, !noalias !4644, !noundef !18 ; 2 uses
  %i.mb = shl i32 %i.ma, 1
  %i.mc = or disjoint i32 %i.mb, %.lobit229.i
  %i.md = add i32 %.lobit229.i, %i.ma
  %.not650959.i = icmp slt i32 %i.ly, 0
  %.sroa.0216.0.i = select i1 %.not650959.i, i32 %i.mc, i32 %i.md
  %i.me = add i32 %.sroa.038.1514.i, 1
  %i.mf = add i32 %i.me, %.sroa.0216.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4660
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc20 unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc20:                                         ; preds = %bb.cx
  %i.mg = load i64, ptr %i.c, align 8, !range !19, !noalias !4660, !noundef !18
  %i.mh = trunc nuw i64 %i.mg to i1
  %i.mi = load ptr, ptr %i.dl, align 8, !noalias !4660 ; 3 uses
  br i1 %i.mh, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %.noexc20
  %.sroa.420.0.copyload.i5 = load i64, ptr %.sroa.420.0..sroa_idx.i4, align 8, !noalias !4660 ; 2 uses
  %.sroa.521.0.copyload.i7 = load i64, ptr %.sroa.521.0..sroa_idx.i6, align 8, !noalias !4660 ; 2 uses
  %i.mj = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i8, align 8, !noalias !4660
  %.sroa.622.0.copyload.i9 = load i64, ptr %.sroa.622.0..sroa_idx.i8, align 8, !noalias !4660
  %.sroa.7.i2.sroa.4.0.copyload = load i64, ptr %.sroa.7.i2.sroa.4.0..sroa.723.0..sroa_idx.i10.sroa_idx, align 8, !noalias !4660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4660
  %i.mk = icmp eq ptr %i.mi, inttoptr (i64 -1 to ptr)
  %i.ml = icmp eq i64 %.sroa.420.0.copyload.i5, -1
  %or.cond.i11 = select i1 %i.mk, i1 %i.ml, i1 false
  %i.mm = icmp eq i64 %.sroa.521.0.copyload.i7, -1
  %or.cond5.i12 = select i1 %or.cond.i11, i1 %i.mm, i1 false
  %i.mn = icmp eq i64 %.sroa.622.0.copyload.i9, -1
  %or.cond8.i13 = select i1 %or.cond5.i12, i1 %i.mn, i1 false
  br i1 %or.cond8.i13, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mo = ptrtoint ptr %i.mi to i64
  br label %bb.db

bb.da:                                            ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4660
  %i.mp = ptrtoint ptr %i.mi to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.mq, align 8, !noalias !4647
  %.sroa.6219.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mp, ptr %.sroa.6219.i.sroa.7.0..sroa_idx, align 8, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
  br label %bb.dg

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.16124.0.ph = phi i64 [ undef, %bb.cy ], [ %.sroa.7.i2.sroa.4.0.copyload, %bb.cz ]
  %.sroa.13115.0.ph = phi i64 [ undef, %bb.cy ], [ %.sroa.521.0.copyload.i7, %bb.cz ]
  %.sroa.11112.0.ph = phi i64 [ undef, %bb.cy ], [ %.sroa.420.0.copyload.i5, %bb.cz ]
  %.sroa.7110.0.ph = phi i64 [ undef, %bb.cy ], [ %i.mo, %bb.cz ]
  %.sroa.0109.0.ph = phi i64 [ 0, %bb.cy ], [ 1, %bb.cz ]
  %i.mr = phi <2 x i64> [ undef, %bb.cy ], [ %i.mj, %bb.cz ]
  store i64 %.sroa.7110.0.ph, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4644
  store i64 %.sroa.11112.0.ph, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  store i64 %.sroa.13115.0.ph, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  store <2 x i64> %i.mr, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !4644
  store i64 %.sroa.0109.0.ph, ptr %i.av, align 8, !noalias !4644
  store i64 %.sroa.16124.0.ph, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !4644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4661
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc:                                           ; preds = %bb.db
  %i.ms = load i64, ptr %i.d, align 8, !range !19, !noalias !4661, !noundef !18
  %i.mt = trunc nuw i64 %i.ms to i1
  %i.mu = load ptr, ptr %i.dm, align 8, !noalias !4661 ; 3 uses
  br i1 %i.mt, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %.noexc
  %.sroa.420.0.copyload.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !4661 ; 2 uses
  %.sroa.521.0.copyload.i = load i64, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !4661 ; 2 uses
  %i.mv = load <2 x i64>, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !4661
  %.sroa.622.0.copyload.i = load i64, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !4661
  %.sroa.7.i.sroa.4.0.copyload = load i64, ptr %.sroa.7.i.sroa.4.0..sroa.723.0..sroa_idx.i.sroa_idx, align 8, !noalias !4661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4661
  %i.mw = icmp eq ptr %i.mu, inttoptr (i64 -1 to ptr)
  %i.mx = icmp eq i64 %.sroa.420.0.copyload.i, -1
  %or.cond.i = select i1 %i.mw, i1 %i.mx, i1 false
  %i.my = icmp eq i64 %.sroa.521.0.copyload.i, -1
  %or.cond5.i = select i1 %or.cond.i, i1 %i.my, i1 false
  %i.mz = icmp eq i64 %.sroa.622.0.copyload.i, -1
  %or.cond8.i = select i1 %or.cond5.i, i1 %i.mz, i1 false
  br i1 %or.cond8.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.na = ptrtoint ptr %i.mu to i64
  br label %bb.df

bb.de:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4661
  %i.nb = ptrtoint ptr %i.mu to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.nc, align 8, !noalias !4647
  %.sroa.6229.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nb, ptr %.sroa.6229.i.sroa.7.0..sroa_idx, align 8, !noalias !4647
  store i64 1, ptr %0, align 8, !alias.scope !4642, !noalias !4647
end_hunk_1
