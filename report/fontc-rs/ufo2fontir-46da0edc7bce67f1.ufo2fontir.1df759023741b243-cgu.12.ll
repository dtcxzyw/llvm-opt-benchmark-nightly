Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.12?download=true
inline.NumInlined: 899
inline.NumDeleted: 422
begin_hunk_0_@_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir11to_ir_glyph:bb.a
  store ptr @6, ptr %i.p, align 8, !noalias !659
  store i64 16, ptr %i.cc, align 8, !noalias !659
  store ptr @6, ptr %i.cd, align 8, !noalias !659
  store i64 16, ptr %i.ce, align 8, !noalias !659
  store ptr @22, ptr %i.cf, align 8, !noalias !659
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull @21, ptr noundef nonnull %i.q, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
          to label %bb.bd unwind label %bb.ay, !noalias !664

bb.bb:                                            ; preds = %bb.bd, %bb.az
  %.sroa.14.8.copyload84.i = load i64, ptr %i.bz, align 8, !noalias !674 ; 2 uses
  %.sroa.17.8.copyload87.i = load ptr, ptr %.sroa.17.8..sroa_idx86.i, align 8, !noalias !674 ; 2 uses
  %.sroa.18.8.copyload90.i = load i64, ptr %.sroa.18.8..sroa_idx89.i, align 8, !noalias !674 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !659
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.fp = load i8, ptr %i.ae, align 8, !range !8, !alias.scope !681, !noalias !664, !noundef !4
  %switch.i.i.i80.i.i = icmp samesign ult i8 %i.fp, 25
  br i1 %switch.i.i.i80.i.i, label %.thread115.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.fq = load ptr, ptr %i.cg, align 8, !alias.scope !684, !noalias !664, !nonnull !4, !noundef !4
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !685
  %i.fs = icmp eq i64 %i.fr, 1
  %i.ft = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.18.8.copyload90.i, i64 0
  br i1 %i.fs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i, label %.thread115.i

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !659
  br label %bb.bb

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i: ; preds = %bb.bk, %bb.bc
  %.sroa.19.i.sroa.7.sroa.0.0 = phi i64 [ %.sroa.19.i.sroa.7.sroa.0.3, %bb.bk ], [ undef, %bb.bc ]
  %.sroa.13.i.sroa.0.4 = phi i48 [ %.sroa.13.i.sroa.0.2, %bb.bk ], [ undef, %bb.bc ]
  %.sroa.17.3.i = phi ptr [ %.sroa.17.2.i, %bb.bk ], [ %.sroa.17.8.copyload87.i, %bb.bc ]
  %.sroa.14.3.i = phi i64 [ %.sroa.14.2.i, %bb.bk ], [ %.sroa.14.8.copyload84.i, %bb.bc ]
  %i.fu = phi <2 x i64> [ %i.gf, %bb.bk ], [ %i.ft, %bb.bc ]
  %i.fv = phi <2 x i8> [ %i.gg, %bb.bk ], [ <i8 -1, i8 undef>, %bb.bc ]
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cg) #19
          to label %bb.bl unwind label %.thread111.loopexit.i, !noalias !655

bb.be:                                            ; preds = %.thread3.i.i, %bb.ay, %bb.s
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !664
  unreachable

bb.bf:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !659
  %i.fx = load <2 x i8>, ptr %i.k, align 8, !noalias !659
  %.sroa.13.i.sroa.0.0.copyload207 = load i48, ptr %.sroa.622.i.sroa.5.0..sroa.622.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !674
  %.sroa.622.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.622.i.sroa.6.0..sroa.622.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !659
  %.sroa.622.i.sroa.7.0.copyload.i = load ptr, ptr %.sroa.622.i.sroa.7.0..sroa.622.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !659
  %i.fy = load <2 x i64>, ptr %.sroa.622.i.sroa.8.0..sroa.622.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !674
  %.sroa.19.i.sroa.7.sroa.0.0.copyload391 = load i64, ptr %.sroa.19.i.sroa.7.0..sroa.825.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i.sroa.7.sroa.7.0..sroa.19.i.sroa.7.0..sroa.825.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 16, i1 false), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !659
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.sroa.19.i.sroa.7.sroa.0.1 = phi i64 [ %.sroa.19.i.sroa.7.sroa.0.0.copyload391, %bb.bf ], [ %.sroa.19.i.sroa.7.sroa.0.2, %bb.bi ]
  %.sroa.13.i.sroa.0.1 = phi i48 [ %.sroa.13.i.sroa.0.0.copyload207, %bb.bf ], [ %.sroa.13.i.sroa.0.0, %bb.bi ]
  %.sroa.17.1.i = phi ptr [ %.sroa.622.i.sroa.7.0.copyload.i, %bb.bf ], [ %.sroa.17.0.i, %bb.bi ]
  %.sroa.14.1.i = phi i64 [ %.sroa.622.i.sroa.6.0.copyload.i, %bb.bf ], [ %.sroa.14.0.i, %bb.bi ]
  %i.fz = phi <2 x i64> [ %i.fy, %bb.bf ], [ %i.gd, %bb.bi ]
  %i.ga = phi <2 x i8> [ %i.fx, %bb.bf ], [ %i.ge, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !659
  br label %bb.bj

bb.bh:                                            ; preds = %bb.am
  %i.gb = load <2 x i8>, ptr %i.l, align 8, !noalias !659
  %.sroa.13.i.sroa.0.0.copyload208 = load i48, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !noalias !674
  %.sroa.14.2.copyload.i = load i64, ptr %.sroa.14.2..sroa.8.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !674
  %.sroa.17.2.copyload.i = load ptr, ptr %.sroa.17.2..sroa.8.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !674
  %i.gc = load <2 x i64>, ptr %.sroa.18.2..sroa.8.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !674
  %.sroa.19.i.sroa.7.sroa.0.0.copyload392 = load i64, ptr %.sroa.19.i.sroa.7.0..sroa.19.2..sroa.8.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i.sroa.7.sroa.7.0..sroa.19.i.sroa.7.0..sroa.19.2..sroa.8.0..sroa_idx.i.sroa_idx.i.sroa_idx.sroa_idx, i64 16, i1 false), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !659
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ai
  %.sroa.19.i.sroa.7.sroa.0.2 = phi i64 [ %.sroa.19.i.sroa.7.sroa.0.0.copyload392, %bb.bh ], [ %.sroa.19.i.sroa.7.sroa.0.0.copyload, %bb.ai ]
  %.sroa.13.i.sroa.0.0 = phi i48 [ %.sroa.13.i.sroa.0.0.copyload208, %bb.bh ], [ %.sroa.13.i.sroa.0.0.copyload, %bb.ai ]
  %.sroa.17.0.i = phi ptr [ %.sroa.17.2.copyload.i, %bb.bh ], [ %.sroa.17.0.copyload.i, %bb.ai ]
  %.sroa.14.0.i = phi i64 [ %.sroa.14.2.copyload.i, %bb.bh ], [ %.sroa.14.0.copyload.i, %bb.ai ]
  %i.gd = phi <2 x i64> [ %i.gc, %bb.bh ], [ %i.ey, %bb.ai ]
  %i.ge = phi <2 x i8> [ %i.gb, %bb.bh ], [ %i.ex, %bb.ai ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs3v5ql5U6hxj_6fontir2ir12path_builder16GlyphPathBuilderECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(96) %i.y)
          to label %bb.bg unwind label %bb.t, !noalias !664

bb.bj:                                            ; preds = %bb.bg, %bb.p
  %.sroa.19.i.sroa.7.sroa.0.3 = phi i64 [ undef, %bb.p ], [ %.sroa.19.i.sroa.7.sroa.0.1, %bb.bg ] ; 3 uses
  %.sroa.13.i.sroa.0.2 = phi i48 [ undef, %bb.p ], [ %.sroa.13.i.sroa.0.1, %bb.bg ] ; 3 uses
  %.sroa.17.2.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.p ], [ %.sroa.17.1.i, %bb.bg ] ; 3 uses
  %.sroa.14.2.i = phi i64 [ 0, %bb.p ], [ %.sroa.14.1.i, %bb.bg ] ; 3 uses
  %i.gf = phi <2 x i64> [ <i64 0, i64 undef>, %bb.p ], [ %i.fz, %bb.bg ] ; 3 uses
  %i.gg = phi <2 x i8> [ <i8 -1, i8 undef>, %bb.p ], [ %i.ga, %bb.bg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.gh = load i8, ptr %i.ae, align 8, !range !8, !alias.scope !689, !noalias !664, !noundef !4
  %switch.i.i.i82.i.i = icmp samesign ult i8 %i.gh, 25
  br i1 %switch.i.i.i82.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.gi = load ptr, ptr %i.cg, align 8, !alias.scope !692, !noalias !664, !nonnull !4, !noundef !4
  %i.gj = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !693
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i, label %bb.bl

.thread3.i.i:                                     ; preds = %bb.af, %.thread10.loopexit.split-lp.i.i, %.thread10.loopexit.i.i
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %i.eu, %bb.af ], [ %lpad.loopexit.i.i, %.thread10.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread10.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs3v5ql5U6hxj_6fontir2ir12path_builder16GlyphPathBuilderECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(96) %i.y) #20
          to label %.thread7.i.i unwind label %bb.be, !noalias !664

.thread115.i:                                     ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !655
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i
  %.sroa.19.i.sroa.7.sroa.0.4 = phi i64 [ %.sroa.19.i.sroa.7.sroa.0.3, %bb.bj ], [ %.sroa.19.i.sroa.7.sroa.0.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i ], [ %.sroa.19.i.sroa.7.sroa.0.3, %bb.bk ]
  %.sroa.13.i.sroa.0.3 = phi i48 [ %.sroa.13.i.sroa.0.2, %bb.bj ], [ %.sroa.13.i.sroa.0.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i ], [ %.sroa.13.i.sroa.0.2, %bb.bk ]
  %.sroa.17.4.i = phi ptr [ %.sroa.17.2.i, %bb.bj ], [ %.sroa.17.3.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i ], [ %.sroa.17.2.i, %bb.bk ] ; 2 uses
  %.sroa.14.4.i = phi i64 [ %.sroa.14.2.i, %bb.bj ], [ %.sroa.14.3.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i ], [ %.sroa.14.2.i, %bb.bk ] ; 2 uses
  %i.gl = phi <2 x i64> [ %i.gf, %bb.bj ], [ %i.fu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i ], [ %i.gf, %bb.bk ] ; 2 uses
  %i.gm = phi <2 x i8> [ %i.gg, %bb.bj ], [ %i.fv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit81.sink.split.i.i ], [ %i.gg, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !655
  %i.gn = extractelement <2 x i8> %i.gm, i64 0
  %.not.i = icmp eq i8 %i.gn, -1
  %i.go = extractelement <2 x i64> %i.gl, i64 0
  br i1 %.not.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i.sroa.7.sroa.7, i64 16, i1 false), !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.sroa.7.sroa.7)
  %i.gp = ptrtoint ptr %.sroa.17.4.i to i64
  %i.gq = zext i48 %.sroa.13.i.sroa.0.3 to i64
  %i.gr = insertelement <2 x i64> poison, i64 %.sroa.14.4.i, i64 0
  %i.gs = insertelement <2 x i64> %i.gr, i64 %i.gp, i64 1
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bl, %.thread115.i
  %.sroa.14.4124.i = phi i64 [ %.sroa.14.8.copyload84.i, %.thread115.i ], [ %.sroa.14.4.i, %bb.bl ]
  %.sroa.17.4123.i = phi ptr [ %.sroa.17.8.copyload87.i, %.thread115.i ], [ %.sroa.17.4.i, %bb.bl ]
  %.sroa.18.4122.i = phi i64 [ %.sroa.18.8.copyload90.i, %.thread115.i ], [ %i.go, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.sroa.7.sroa.7)
  store i64 %.sroa.14.4124.i, ptr %i.ad, align 8, !noalias !655
  store ptr %.sroa.17.4123.i, ptr %.sroa.6.sroa.7.7..sroa_idx.i, align 8, !noalias !655
  store i64 %.sroa.18.4122.i, ptr %.sroa.6.sroa.8.7..sroa_idx.i, align 8, !noalias !655
  %i.gt = load i64, ptr %i.bp, align 16, !alias.scope !695, !noalias !696, !noundef !4 ; 3 uses
  %i.gu = load i64, ptr %i.af, align 16, !range !697, !alias.scope !695, !noalias !696, !noundef !4
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathE8grow_oneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.br unwind label %bb.bp, !noalias !696

bb.bp:                                            ; preds = %bb.bo
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #20
          to label %.thread102.i unwind label %bb.bq, !noalias !655

bb.bq:                                            ; preds = %bb.bp
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !655
  unreachable

bb.br:                                            ; preds = %bb.bo, %bb.bn
  %i.gy = load ptr, ptr %i.bo, align 8, !alias.scope !695, !noalias !696, !nonnull !4, !noundef !4
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !655
  %i.ha = add i64 %i.gt, 1
  store i64 %i.ha, ptr %i.bp, align 16, !alias.scope !695, !noalias !696
  %i.hb = icmp eq ptr %i.dz, %i.du
  br i1 %i.hb, label %._crit_edge.i, label %bb.o

bb.bs:                                            ; preds = %bb.bw, %bb.bm
  %.sroa.25.sroa.8.sroa.0.0 = phi i64 [ %i.hk, %bb.bw ], [ %.sroa.19.i.sroa.7.sroa.0.4, %bb.bm ]
  %.sroa.12.sroa.9.sroa.0.0 = phi i64 [ %.sroa.12.sroa.9.0.extract.shift, %bb.bw ], [ %i.gq, %bb.bm ]
  %.sroa.7.0 = phi i64 [ -9223372036854775808, %bb.bw ], [ -9223372036854775806, %bb.bm ]
  %i.hc = phi <2 x i64> [ %i.hi, %bb.bw ], [ %i.gs, %bb.bm ]
  %i.hd = phi <2 x i64> [ %i.hj, %bb.bw ], [ %i.gl, %bb.bm ]
  %i.he = phi <2 x i8> [ %10, %bb.bw ], [ %i.gm, %bb.bm ] ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEECs2zvA5OmMqFb_10ufo2fontir.exit.i unwind label %bb.bt, !noalias !657

bb.bt:                                            ; preds = %bb.bs
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.bu, !noalias !657

bb.bu:                                            ; preds = %bb.bt
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !657
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %._crit_edge.i
  %i.hh = load i64, ptr %i.ac, align 8, !range !5, !noalias !655, !noundef !4 ; 4 uses
  %.not65.i = icmp eq i64 %i.hh, -1
  %i.hi = load <2 x i64>, ptr %i.ch, align 8, !noalias !655 ; 2 uses
  br i1 %.not65.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.hj = load <2 x i64>, ptr %.sroa.651.0..sroa_idx.i, align 8, !noalias !694
  %.sroa.25.sroa.8.0..sroa.25.40..sroa.651.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.hk = load i64, ptr %.sroa.25.sroa.8.0..sroa.25.40..sroa.651.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !655
  %.sroa.12.sroa.8.0.extract.shift = lshr i64 %i.hh, 8
  %7 = trunc i64 %i.hh to i8
  %8 = insertelement <2 x i8> poison, i8 %7, i64 0
  %9 = trunc i64 %.sroa.12.sroa.8.0.extract.shift to i8
  %10 = insertelement <2 x i8> %8, i8 %9, i64 1
  %.sroa.12.sroa.9.0.extract.shift = lshr i64 %i.hh, 16
  br label %bb.bs

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !655
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.hl = invoke noundef align 16 ptr @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsaGmGRvprAGn_5plist5value5ValueE3geteECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 42)
          to label %.noexc72.i unwind label %.thread111.loopexit.split-lp.i, !noalias !657 ; 4 uses

.noexc72.i:                                       ; preds = %bb.bx
  %.not.i71.i = icmp eq ptr %i.hl, null
  br i1 %.not.i71.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.noexc72.i
  %i.hm = load i64, ptr %i.hl, align 16, !range !699, !noalias !700, !noundef !4 ; 2 uses
  %i.hn = icmp ne i64 %i.hm, -9223372036854775807
  call void @llvm.assume(i1 %i.hn)
  %i.ho = icmp eq i64 %i.hm, -9223372036854775808
  br i1 %i.ho, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.noexc72.i
  %i.hp = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %.noexc73.i unwind label %.thread111.loopexit.split-lp.i, !noalias !657 ; 2 uses

.noexc73.i:                                       ; preds = %bb.bz
  %i.hq = extractvalue { i64, i64 } %i.hp, 0
  %i.hr = extractvalue { i64, i64 } %i.hp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !701
  store i64 %i.hq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !698, !noalias !701
  store i64 %i.hr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !698, !noalias !701
  br label %_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ht = load ptr, ptr %i.hs, align 16, !noalias !700, !nonnull !4, !noundef !4 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !700, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !702
  %i.hw = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %.noexc74.i unwind label %.thread111.loopexit.split-lp.i, !noalias !657 ; 2 uses

.noexc74.i:                                       ; preds = %bb.ca
  %i.hx = getelementptr inbounds nuw [80 x i8], ptr %i.ht, i64 %i.hv
  %i.hy = extractvalue { i64, i64 } %i.hw, 0
  %i.hz = extractvalue { i64, i64 } %i.hw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !702
  store i64 %i.hy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !702
  store i64 %i.hz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !702
  invoke void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTjBQ_EE6extendINtNtNtB2i_8adapters10filter_map9FilterMapINtNtNtB2k_5slice4iter4IterNtNtCsaGmGRvprAGn_5plist5value5ValueENCNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors0EEB56_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hx)
          to label %_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1L_8adapters10filter_map9FilterMapINtNtNtB1N_5slice4iter4IterNtNtCsaGmGRvprAGn_5plist5value5ValueENCNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors0EEB4K_.exit.i.i unwind label %bb.cb, !noalias !703

bb.cb:                                            ; preds = %.noexc74.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjNtCs9NoVXegZYB5_8smol_str7SmolStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.thread102.i unwind label %bb.cc, !noalias !703

bb.cc:                                            ; preds = %bb.cb
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !703
  unreachable

_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1L_8adapters10filter_map9FilterMapINtNtNtB1N_5slice4iter4IterNtNtCsaGmGRvprAGn_5plist5value5ValueENCNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors0EEB4K_.exit.i.i: ; preds = %.noexc74.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !702
  br label %_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors.exit.i

_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors.exit.i: ; preds = %_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTjB16_EE9from_iterINtNtNtB1L_8adapters10filter_map9FilterMapINtNtNtB1N_5slice4iter4IterNtNtCsaGmGRvprAGn_5plist5value5ValueENCNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors0EEB4K_.exit.i.i, %.noexc73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !655
  %i.ic = load ptr, ptr %i.cj, align 8, !alias.scope !654, !noalias !656, !nonnull !4, !noundef !4 ; 2 uses
  %i.id = load i64, ptr %i.ck, align 8, !alias.scope !654, !noalias !656, !noundef !4
  %i.ie = getelementptr inbounds nuw [152 x i8], ptr %i.ic, i64 %i.id
  store ptr %i.ic, ptr %i.z, align 8, !noalias !655
  store ptr %i.ie, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !655
  store i64 0, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !655
  store ptr %i.ab, ptr %i.cl, align 8, !noalias !655
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2f_9enumerate9EnumerateINtNtNtB2j_5slice4iter4IterNtNtCshMXdXt2UU3C_5norad5glyph9ComponentEENCNvNtCs2zvA5OmMqFb_10ufo2fontir4toir20to_ir_glyph_instance0EE9from_iterB4E_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.z)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit80.i unwind label %bb.cd, !noalias !657

bb.cd:                                            ; preds = %_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors.exit.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjNtCs9NoVXegZYB5_8smol_str7SmolStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ab)
          to label %.thread102.i unwind label %bb.ce, !noalias !657

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit80.i: ; preds = %_RNvNtCs2zvA5OmMqFb_10ufo2fontir4toir17component_anchors.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !655
  %i.ig = load double, ptr %i.cm, align 8, !alias.scope !654, !noalias !656, !noundef !4
  %i.ih = load i64, ptr %i.cn, align 8, !alias.scope !654, !noalias !656, !noundef !4
  %i.ii = load <2 x i64>, ptr %i.af, align 16, !noalias !694
  %i.ij = load i64, ptr %i.bp, align 16, !noalias !694
  %.sroa.25.sroa.8.sroa.0.0.copyload = load i64, ptr %i.aa, align 8, !noalias !694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.8.sroa.8.0..sroa_idx, i64 16, i1 false), !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !655
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjNtCs9NoVXegZYB5_8smol_str7SmolStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ab)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit

bb.ce:                                            ; preds = %.thread102.i, %bb.cd
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !657
  unreachable

.thread102.i:                                     ; preds = %bb.cd, %bb.cb, %bb.bp, %bb.s, %bb.r, %.thread7.i.i, %.thread111.loopexit.split-lp.i, %.thread111.loopexit.i
  %.pn101.i = phi { ptr, i32 } [ %i.ia, %bb.cb ], [ %i.if, %bb.cd ], [ %i.gw, %bb.bp ], [ %.pn73.i.i, %bb.s ], [ %.pn73.i.i, %.thread7.i.i ], [ %.pn73.i.i, %bb.r ], [ %lpad.loopexit.i, %.thread111.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread111.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #20
          to label %.body unwind label %bb.ce, !noalias !657

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  %i.il = load i64, ptr %i.ba, align 8, !range !5, !noundef !4
  %.not70 = icmp eq i64 %i.il, -1
  br i1 %.not70, label %bb.dg, label %bb.df

.body:                                            ; preds = %.loopexit240, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.dh, %bb.cv, %bb.cu, %bb.cw, %bb.co, %.thread102.i, %bb.bt, %.body94, %bb.dk
  %.pn = phi { ptr, i32 } [ %i.jc, %bb.co ], [ %eh.lpad-body95, %.body94 ], [ %i.ki, %bb.dk ], [ %i.jk, %bb.cv ], [ %.pn101.i, %.thread102.i ], [ %i.hf, %bb.bt ], [ %i.kg, %bb.dh ], [ %i.jk, %bb.cw ], [ %i.jk, %bb.cu ], [ %lpad.loopexit, %.loopexit240 ], [ %lpad.loopexit241, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit248, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshMXdXt2UU3C_5norad5glyph5GlyphECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(408) %i.ay) #20
          to label %bb.j unwind label %bb.cx

.loopexit240:                                     ; preds = %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit80.i, %bb.cg
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.du, %bb.dx, %bb.dg
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEECs2zvA5OmMqFb_10ufo2fontir.exit.i
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEECs2zvA5OmMqFb_10ufo2fontir.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.12.sroa.9.0.insert.shift = shl nuw i64 %.sroa.12.sroa.9.sroa.0.0, 16
  %i.im = extractelement <2 x i8> %i.he, i64 1
  %.sroa.12.sroa.8.0.insert.ext = zext i8 %i.im to i64
  %.sroa.12.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.12.sroa.8.0.insert.ext, 8
  %.sroa.12.sroa.8.0.insert.insert = or disjoint i64 %.sroa.12.sroa.8.0.insert.shift, %.sroa.12.sroa.9.0.insert.shift
  %i.in = extractelement <2 x i8> %i.he, i64 0
  %.sroa.12.sroa.0.0.insert.ext = zext i8 %i.in to i64
  %.sroa.12.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.sroa.8.0.insert.insert, %.sroa.12.sroa.0.0.insert.ext
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.11.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.8.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.8.sroa.8)
  %.sroa.8185.sroa.4.0..sroa.8185.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.25.sroa.8.sroa.0.0, ptr %.sroa.8185.sroa.4.0..sroa.8185.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.sroa.11.sroa.7.sroa.7.0..sroa.8185.sroa.4.0..sroa.8185.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.11.sroa.7.sroa.7.0..sroa.8185.sroa.4.0..sroa.8185.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.11.sroa.7.sroa.7, i64 16, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %i.io, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.sroa.0.0.insert.insert, ptr %.sroa.4181.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.hc, ptr %.sroa.5182.0..sroa_idx, align 8
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.hd, ptr %.sroa.7184.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.cy

bb.cg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.11.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.sroa.8.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.8.sroa.8)
  store i64 1, ptr %i.av, align 8
  store i64 %i.ih, ptr %.sroa.619.0..sroa_idx20, align 8
  store <2 x i64> %i.hi, ptr %.sroa.619.sroa.7.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  store <2 x i64> %i.ii, ptr %.sroa.619.sroa.9.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  store i64 %i.ij, ptr %.sroa.619.sroa.11.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  store i64 %.sroa.25.sroa.8.sroa.0.0.copyload, ptr %.sroa.619.sroa.11.sroa.7.0..sroa.619.sroa.11.0..sroa.619.0..sroa_idx20.sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.11.sroa.7.sroa.7.0..sroa.619.sroa.11.sroa.7.0..sroa.619.sroa.11.0..sroa.619.0..sroa_idx20.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.11.sroa.7.sroa.7, i64 16, i1 false)
  store double %i.ig, ptr %.sroa.619.sroa.12.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  invoke void @_RNvMsq_NtCs3v5ql5U6hxj_6fontir2irNtB5_12GlyphBuilder14try_add_source(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.014.0306, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.av)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.ip = load i8, ptr %i.aw, align 8, !range !704, !noundef !4
  %.not = icmp eq i8 %i.ip, -1
  br i1 %.not, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.iq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cy
end_hunk_0
