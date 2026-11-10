Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6sample:bb.a
bb.bc:                                            ; preds = %.body113
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body123 unwind label %bb.al

bb.bd:                                            ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gp = add nuw nsw i64 %i.ge, 1
  store i64 %i.gp, ptr %i.ga, align 8, !noalias !2078
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %.val5.i = load i64, ptr %i.go, align 8, !noundef !7
  %.val6.i = load i64, ptr %i.gq, align 8, !noundef !7
  %i.gr = icmp eq i64 %.val5.i, %.val6.i
  store i64 %i.ge, ptr %i.ga, align 8
  %i.gs = load i64, ptr %i.fz, align 8, !noundef !7
  %i.gt = add i64 %i.gs, -1
  store i64 %i.gt, ptr %i.fz, align 8
  %i.gu = load i64, ptr %i.fq, align 8, !noalias !7, !noundef !7
  %i.gv = add i64 %i.gu, -1                       ; 2 uses
  store i64 %i.gv, ptr %i.fq, align 8, !noalias !7
  %i.gw = icmp eq i64 %i.gv, 0                    ; 2 uses
  br i1 %i.gr, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.gw, label %bb.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit118

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit118 unwind label %.loopexit.split-lp190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.gw, label %bb.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120 unwind label %.loopexit.split-lp190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit118: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gx = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 5 uses
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !2082, !noundef !7 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 9223372036854775807
  br i1 %i.ha, label %bb.bj, label %bb.bi, !prof !14

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit118
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #32
          to label %.noexc121 unwind label %.loopexit.split-lp190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit118
  %i.hb = add nuw nsw i64 %i.gz, 1
  store i64 %i.hb, ptr %i.gy, align 8, !noalias !2082
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !noundef !7 ; 3 uses
  %i.he = load i64, ptr %i.ac, align 8, !noundef !7 ; 2 uses
  %i.hf = icmp ult i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hd, i64 noundef %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #32
          to label %bb.x unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load i64, ptr %i.gy, align 8, !noundef !7
  %i.hi = add i64 %i.hh, -1
  store i64 %i.hi, ptr %i.gy, align 8
  br label %.body123

bb.bm:                                            ; preds = %bb.bj
  %i.hj = load ptr, ptr %i.ab, align 8, !nonnull !7, !noundef !7
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hd
  %i.hl = load double, ptr %i.hk, align 8, !noundef !7
  store i64 %i.gz, ptr %i.gy, align 8
  %i.hm = load i64, ptr %i.gx, align 8, !noundef !7 ; 2 uses
  %i.hn = icmp ne i64 %i.hm, 0
  call void @llvm.assume(i1 %i.hn)
  %i.ho = add i64 %i.hm, 1                        ; 2 uses
  store i64 %i.ho, ptr %i.gx, align 8
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.hq = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.hq, ptr %i.a, align 8, !noalias !2083
  %i.hr = load i64, ptr %i.at, align 8, !alias.scope !2083, !noundef !7 ; 3 uses
  %i.hs = load i64, ptr %i.j, align 8, !range !19, !alias.scope !2083, !noundef !7
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEE8grow_oneB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bt unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load i64, ptr %i.hq, align 8, !noalias !2084, !noundef !7
  %i.hw = add i64 %i.hv, -1                       ; 2 uses
  store i64 %i.hw, ptr %i.hq, align 8, !noalias !2084
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.br, label %.body123

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body123 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bt:                                            ; preds = %bb.bp, %bb.bo
  %i.hz = load ptr, ptr %i.as, align 8, !alias.scope !2083, !nonnull !7, !noundef !7
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hr
  store ptr %i.hq, ptr %i.ia, align 8
  %i.ib = add i64 %i.hr, 1
  store i64 %i.ib, ptr %i.at, align 8, !alias.scope !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body125 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.av, align 8
  %i.ie = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !noalias !2064, !noundef !7 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 9223372036854775807
  br i1 %i.ih, label %bb.ae, label %.invoke762, !prof !30

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i129 unwind label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body125 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i129: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit133: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ik = load ptr, ptr %i.as, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.il = load i64, ptr %i.at, align 8, !noundef !7 ; 3 uses
  %i.im = lshr i64 %i.il, 1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  %.not.i134 = icmp eq i64 %i.im, 0
  br i1 %.not.i134, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit133
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.il ; 2 uses
  %min.iters.check = icmp ult i64 %i.il, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i
  %n.vec = and i64 %i.im, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.io = xor i64 %index, -1
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %index ; 3 uses
  %i.iq = getelementptr [8 x i8], ptr %i.in, i64 %i.io ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ip, align 8, !alias.scope !2085
  %wide.load899 = load <2 x ptr>, ptr %i.ir, align 8, !alias.scope !2085
  %i.is = getelementptr i8, ptr %i.iq, i64 -8     ; 2 uses
  %i.it = getelementptr i8, ptr %i.iq, i64 -24    ; 2 uses
  %wide.load900 = load <2 x i64>, ptr %i.is, align 8, !alias.scope !2086
  %wide.load901 = load <2 x i64>, ptr %i.it, align 8, !alias.scope !2086
  %reverse = shufflevector <2 x i64> %wide.load900, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse902 = shufflevector <2 x i64> %wide.load901, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ip, align 8, !alias.scope !2085
  store <2 x i64> %reverse902, ptr %i.ir, align 8, !alias.scope !2085
  %reverse903 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse904 = shufflevector <2 x ptr> %wide.load899, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse903, ptr %i.is, align 8, !alias.scope !2086
  store <2 x ptr> %reverse904, ptr %i.it, align 8, !alias.scope !2086
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !2026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.im, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ja, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader ] ; 3 uses
  %i.iv = xor i64 %.sroa.0.016.i, -1
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.sroa.0.016.i ; 2 uses
  %i.ix = getelementptr [8 x i8], ptr %i.in, i64 %i.iv ; 2 uses
  %i.iy = load ptr, ptr %i.iw, align 8, !alias.scope !2085, !nonnull !7, !noundef !7
  %i.iz = load i64, ptr %i.ix, align 8, !alias.scope !2086
  store i64 %i.iz, ptr %i.iw, align 8, !alias.scope !2085
  store ptr %i.iy, ptr %i.ix, align 8, !alias.scope !2086
  %i.ja = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ja, %i.im
  br i1 %exitcond.not.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i, !llvm.loop !2027

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i, %middle.block, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseKCDlm5CXZl_4rand5distr8weighted14weighted_index13WeightedIndexdEECs2JiOgHzbbc7_10tokenizers.exit133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %i.jb = load ptr, ptr %i.g, align 8, !alias.scope !2089, !nonnull !7, !noundef !7 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !2089, !noundef !7
  %i.jd = add i64 %i.jc, -1                       ; 2 uses
  store i64 %i.jd, ptr %i.jb, align 8, !noalias !2089
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %bb.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136

bb.by:                                            ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136 unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136: ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread183 unwind label %bb.cb

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit136
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141 unwind label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit
  br i1 %.sroa.023.0, label %bb.ci, label %.thread183

bb.cd:                                            ; preds = %bb.ca
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.thread183

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.ji = load ptr, ptr %i.k, align 8, !alias.scope !2093, !nonnull !7, !noundef !7 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !2093, !noundef !7
  %i.jk = add i64 %i.jj, -1                       ; 2 uses
  store i64 %i.jk, ptr %i.ji, align 8, !noalias !2093
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.ce, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit

bb.ce:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit141, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144 unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.cf
  %common.resume.op = phi { ptr, i32 } [ %i.jm, %bb.cf ], [ %.pn70, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit144: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

.thread183:                                       ; preds = %bb.bz, %bb.cd, %bb.ci, %bb.cc
  %.pn68186 = phi { ptr, i32 } [ %.pn66, %bb.cc ], [ %.pn66, %bb.ci ], [ %i.jh, %bb.cd ], [ %i.jf, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.jo = load ptr, ptr %i.k, align 8, !alias.scope !2097, !nonnull !7, !noundef !7 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !2097, !noundef !7
  %i.jq = add i64 %i.jp, -1                       ; 2 uses
  store i64 %i.jq, ptr %i.jo, align 8, !noalias !2097
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit146

bb.ch:                                            ; preds = %.thread183
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers.exit146 unwind label %bb.al

bb.ci:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #33
          to label %.thread183 unwind label %bb.al

bb.cj:                                            ; preds = %bb.f
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.0.0383 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.jw, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.idx
  %i.jy = icmp eq i64 %i.jw, 0
  br i1 %i.jy, label %.loopexit195, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.cj
  %i.jz = icmp ult i64 %.sroa.0.0383, %i.ai
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.0.0383 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 3 uses
  br i1 %i.jz, label %.lr.ph382.split, label %.invoke758

.lr.ph382.split:                                  ; preds = %.lr.ph382
  %i.kd = load i64, ptr %i.kc, align 8, !noundef !7 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.loopexit195, label %.lr.ph382.split.split

.loopexit194:                                     ; preds = %bb.cy, %.lr.ph382.split.split
  %i.kf = icmp eq ptr %i.kh, %i.jx
  br i1 %i.kf, label %.loopexit195, label %.lr.ph382.split.splitthread-pre-split, !llvm.loop !2044

.lr.ph382.split.splitthread-pre-split:            ; preds = %.loopexit194
  %.pr = load i64, ptr %i.kc, align 8
  br label %.lr.ph382.split.split

.lr.ph382.split.split:                            ; preds = %.lr.ph382.split, %.lr.ph382.split.splitthread-pre-split
  %i.kg = phi i64 [ %.pr, %.lr.ph382.split.splitthread-pre-split ], [ %i.kd, %.lr.ph382.split ] ; 2 uses
  %.sroa.03.0381 = phi ptr [ %i.kh, %.lr.ph382.split.splitthread-pre-split ], [ %i.ju, %.lr.ph382.split ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.03.0381, i64 8 ; 2 uses
  %i.ki = load ptr, ptr %i.kb, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.idx390 = shl nuw nsw i64 %i.kg, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx390
  %i.kk = icmp eq i64 %i.kg, 0
  br i1 %i.kk, label %.loopexit194, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph382.split.split, %bb.cy
  %.sroa.06.0380 = phi ptr [ %i.kl, %bb.cy ], [ %i.ki, %.lr.ph382.split.split ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.06.0380, i64 8 ; 2 uses
  %i.km = load ptr, ptr %.sroa.06.0380, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 12 uses
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !2098, !noundef !7
  %i.kp = icmp ult i64 %i.ko, 9223372036854775807
  br i1 %i.kp, label %bb.ck, label %.invoke, !prof !14

bb.ck:                                            ; preds = %.lr.ph
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !7 ; 3 uses
  %i.kt = load ptr, ptr %.sroa.03.0381, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !noalias !2099, !noundef !7
  %i.kw = icmp ult i64 %i.kv, 9223372036854775807
  br i1 %i.kw, label %bb.cl, label %.invoke, !prof !14

bb.cl:                                            ; preds = %bb.ck
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.ky = load i64, ptr %i.kx, align 8, !noundef !7 ; 5 uses
  %i.kz = load i64, ptr %i.ac, align 8, !noundef !7 ; 2 uses
  %i.la = icmp ult i64 %i.ky, %i.kz
  br i1 %i.la, label %bb.cm, label %.invoke758

bb.cm:                                            ; preds = %bb.cl
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi:bb.a
  %i.ie = load i64, ptr %i.x, align 8, !alias.scope !2236, !noundef !7 ; 3 uses
  %i.if = load i64, ptr %i.d, align 8, !range !19, !alias.scope !2236, !noundef !7
  %i.ig = icmp eq i64 %i.ie, %i.if
  br i1 %i.ig, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEE8grow_oneB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bn unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load i64, ptr %i.id, align 8, !noalias !2237, !noundef !7
  %i.ij = add i64 %i.ii, -1                       ; 2 uses
  store i64 %i.ij, ptr %i.id, align 8, !noalias !2237
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.bl, label %.body

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bn:                                            ; preds = %bb.bj, %bb.bi
  %i.im = load ptr, ptr %i.w, align 8, !alias.scope !2236, !nonnull !7, !noundef !7
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ie
  store ptr %i.id, ptr %i.in, align 8
  %i.io = add i64 %i.ie, 1
  store i64 %i.io, ptr %i.x, align 8, !alias.scope !2236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ip = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 4 uses
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !2238, !noundef !7 ; 2 uses
  %i.is = icmp ult i64 %i.ir, 9223372036854775807
  br i1 %i.is, label %bb.bo, label %.invoke579, !prof !14

.invoke579:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEBJ_.exit97, %bb.bn, %bb.bd
  %i.it = phi ptr [ @148, %bb.bd ], [ @149, %bb.bn ], [ @148, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEBJ_.exit97 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.it) #32
          to label %.cont580 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont580:                                         ; preds = %.invoke579
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.iu = add nuw nsw i64 %i.ir, 1
  store i64 %i.iu, ptr %i.iq, align 8, !noalias !2238
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  %i.iw = load <2 x i64>, ptr %i.iv, align 8, !alias.scope !2240
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.iy = load <2 x i64>, ptr %i.ix, align 8, !alias.scope !2240
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !2240, !noundef !7 ; 4 uses
  %.not.i92 = icmp eq ptr %i.ja, null
  br i1 %.not.i92, label %bb.bv, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !2241, !noundef !7 ; 2 uses
  %i.jc = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %i.jc)
  %i.jd = add i64 %i.jb, 1                        ; 2 uses
  store i64 %i.jd, ptr %i.ja, align 8, !noalias !2241
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %bb.bq, label %bb.bv, !prof !13

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.cb, %bb.bu
  %.pn46 = phi { ptr, i32 } [ %i.jy, %bb.cb ], [ %i.jk, %bb.bu ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %i.jf = load ptr, ptr %i.hl, align 16, !alias.scope !2244, !noundef !7 ; 3 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %.body, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jh = load i64, ptr %i.jf, align 8, !noalias !2245, !noundef !7
  %i.ji = add i64 %i.jh, -1                       ; 2 uses
  store i64 %i.ji, ptr %i.jf, align 8, !noalias !2245
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %bb.bt, label %.body

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %.body unwind label %bb.ah

bb.bu:                                            ; preds = %bb.bx
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bv:                                            ; preds = %bb.bo, %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  store <2 x i64> %i.iw, ptr %i.b, align 16, !alias.scope !2239
  store <2 x i64> %i.iy, ptr %i.hk, align 16, !alias.scope !2239
  store ptr %i.ja, ptr %i.hl, align 16, !alias.scope !2239
  %i.jm = load <2 x double>, ptr %i.jl, align 8, !alias.scope !2240
  store <2 x double> %i.jm, ptr %i.hm, align 8, !alias.scope !2239
  %i.jn = load i64, ptr %i.iq, align 8, !noundef !7
  %i.jo = add i64 %i.jn, -1
  store i64 %i.jo, ptr %i.iq, align 8
  %i.jp = load ptr, ptr %i.hl, align 16, !noundef !7 ; 5 uses
  %.not45 = icmp eq ptr %i.jp, null
  br i1 %.not45, label %bb.bx, label %bb.bw, !prof !13

bb.bw:                                            ; preds = %bb.bv
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !7 ; 2 uses
  %i.jr = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %i.jr)
  %i.js = add i64 %i.jq, 1                        ; 2 uses
  store i64 %i.js, ptr %i.jp, align 8
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %bb.by, label %bb.bz, !prof !13

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #32
          to label %bb.af unwind label %bb.bu

bb.by:                                            ; preds = %bb.bw
  call void @llvm.trap()
  unreachable

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  %i.ju = load ptr, ptr %i.c, align 8, !alias.scope !2248, !nonnull !7, !noundef !7 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !2248, !noundef !7
  %i.jw = add i64 %i.jv, -1                       ; 2 uses
  store i64 %i.jw, ptr %i.ju, align 8, !noalias !2248
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %bb.ca, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit95

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit95 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jy = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jp, ptr %i.c, align 8
  br label %bb.br

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit95: ; preds = %bb.bz, %bb.ca
  store ptr %i.jp, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %i.jz = load ptr, ptr %i.hl, align 16, !alias.scope !2251, !noundef !7 ; 3 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEBJ_.exit97, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit95
  %i.kb = load i64, ptr %i.jz, align 8, !noalias !2252, !noundef !7
  %i.kc = add i64 %i.kb, -1                       ; 2 uses
  store i64 %i.kc, ptr %i.jz, align 8, !noalias !2252
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %bb.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEBJ_.exit97

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEBJ_.exit97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEBJ_.exit97: ; preds = %bb.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit95, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ke = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !2232, !noundef !7 ; 2 uses
  %i.kh = icmp ult i64 %i.kg, 9223372036854775807
  br i1 %i.kh, label %bb.bf, label %.invoke579, !prof !30

bb.ce:                                            ; preds = %bb.bf
  %i.ki = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.kj = load i64, ptr %i.x, align 8, !noundef !7 ; 3 uses
  %i.kk = lshr i64 %i.kj, 1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  %.not.i98 = icmp eq i64 %i.kk, 0
  br i1 %.not.i98, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i: ; preds = %bb.ce
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kj ; 2 uses
  %min.iters.check = icmp ult i64 %i.kj, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i
  %n.vec = and i64 %i.kk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.km = xor i64 %index, -1
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %index ; 3 uses
  %i.ko = getelementptr [8 x i8], ptr %i.kl, i64 %i.km ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.kn, align 8, !alias.scope !2253
  %wide.load683 = load <2 x ptr>, ptr %i.kp, align 8, !alias.scope !2253
  %i.kq = getelementptr i8, ptr %i.ko, i64 -8     ; 2 uses
  %i.kr = getelementptr i8, ptr %i.ko, i64 -24    ; 2 uses
  %wide.load684 = load <2 x i64>, ptr %i.kq, align 8, !alias.scope !2254
  %wide.load685 = load <2 x i64>, ptr %i.kr, align 8, !alias.scope !2254
  %reverse = shufflevector <2 x i64> %wide.load684, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse686 = shufflevector <2 x i64> %wide.load685, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.kn, align 8, !alias.scope !2253
  store <2 x i64> %reverse686, ptr %i.kp, align 8, !alias.scope !2253
  %reverse687 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse688 = shufflevector <2 x ptr> %wide.load683, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse687, ptr %i.kq, align 8, !alias.scope !2254
  store <2 x ptr> %reverse688, ptr %i.kr, align 8, !alias.scope !2254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !2206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kk, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ky, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i.preheader ] ; 3 uses
  %i.kt = xor i64 %.sroa.0.016.i, -1
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %.sroa.0.016.i ; 2 uses
  %i.kv = getelementptr [8 x i8], ptr %i.kl, i64 %i.kt ; 2 uses
  %i.kw = load ptr, ptr %i.ku, align 8, !alias.scope !2253, !nonnull !7, !noundef !7
  %i.kx = load i64, ptr %i.kv, align 8, !alias.scope !2254
  store i64 %i.kx, ptr %i.ku, align 8, !alias.scope !2253
  store ptr %i.kw, ptr %i.kv, align 8, !alias.scope !2254
  %i.ky = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ky, %i.kk
  br i1 %exitcond.not.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i, !llvm.loop !2207

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit.loopexit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE12split_at_mutB1r_.exit11.i, %middle.block
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !2255
  br label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit: ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit.loopexit, %bb.ce
  %i.kz = phi ptr [ %.pre, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit.loopexit ], [ %i.hv, %bb.ce ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %i.la = load i64, ptr %i.kz, align 8, !noalias !2255, !noundef !7
  %i.lb = add i64 %i.la, -1                       ; 2 uses
  store i64 %i.lb, ptr %i.kz, align 8, !noalias !2255
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cg unwind label %bb.at

bb.cg:                                            ; preds = %bb.cf, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB7_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1L_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ld = load i64, ptr %i.gt, align 8, !noundef !7
  %i.le = add i64 %i.ld, -1
  store i64 %i.le, ptr %i.gt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bb

bb.ch:                                            ; preds = %.thread130, %.thread126
  %.pn48.pn.pn129 = phi { ptr, i32 } [ %i.gp, %.thread126 ], [ %.pn48, %.thread130 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #33
          to label %common.resume unwind label %bb.ah

bb.ci:                                            ; preds = %bb.ar
  %i.lf = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.lf, label %.thread124, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lg = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.lg, i64 3, i64 4
  br label %.thread124

.thread124:                                       ; preds = %bb.ap, %bb.ci, %bb.cj, %bb.ar
  %.sroa.017.0 = phi i64 [ 2, %bb.ci ], [ %., %bb.cj ], [ 1, %bb.ar ], [ 1, %bb.ap ]
  %i.lh = add i64 %.sroa.017.0, %.sroa.0.0329     ; 2 uses
  %.not = icmp ugt i64 %i.lh, %i.i
  br i1 %.not, label %bb.c, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E13with_capacityBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 !guid !2258 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !12, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E3popBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality !guid !2313 {
bb.a:
  %.sroa.12.i.i = alloca [80 x i8], align 8       ; 5 uses
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1                     ; 19 uses
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %1, align 8, !range !19, !noundef !7
  %i.h = icmp samesign ult i64 %i.f, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 27 uses
  %i.k = icmp ult i64 %i.d, 115292150460684699
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %_RNCNvMs8_CskEsHVYarYHE_9dary_heapINtB7_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeKj8_E3pop0BS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.j, i64 noundef 10)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEB18_.exit.i unwind label %bb.e, !noalias !2314

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31, !noalias !2314
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEB18_.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !2314
  %i.o = call i64 @llvm.usub.sat.i64(i64 %i.f, i64 8)
  %.not7.i.i = icmp samesign ult i64 %i.d, 10
  br i1 %.not7.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEB18_.exit.i
  %.sroa.14.0.lcssa.i.i = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEB18_.exit.i ], [ %spec.select.6.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.05.0.lcssa.i.i = phi i64 [ 1, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeEB18_.exit.i ], [ %i.gh, %bb.ah ] ; 3 uses
  %.sroa.04.01.i.i.i = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, 1 ; 2 uses
  %i.p = icmp ult i64 %.sroa.04.01.i.i.i, %i.f
  br i1 %i.p, label %.lr.ph.i.i.i, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE14max_sibling_toKj8_EBN_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i.i.i
  %.sroa.04.03.i.i.i = phi i64 [ %.sroa.04.0.i.i.i, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i.i.i ], [ %.sroa.04.01.i.i.i, %._crit_edge.i.i ] ; 4 uses
  %.sroa.0.02.i.i.i = phi i64 [ %spec.select.i.i.i, %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i.i.i ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.0.02.i.i.i ; 3 uses
  %i.r = icmp ult i64 %.sroa.04.03.i.i.i, %i.f
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.04.03.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2319, !noalias !2314, !noundef !7 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !2320, !noalias !2314, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.u, %i.w
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !2320, !noalias !2314, !noundef !7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !2319, !noalias !2314, !noundef !7 ; 2 uses
  %i.ab = icmp eq i32 %i.y, %i.aa
  %i.ac = icmp ule i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = icmp ule i64 %i.u, %i.w
  br label %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !2320, !noalias !2314, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !2319, !noalias !2314, !noundef !7
  %i.ai = icmp ule i32 %i.af, %i.ah
  br label %_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2leBa_.exit.i.i.i

end_hunk_1
