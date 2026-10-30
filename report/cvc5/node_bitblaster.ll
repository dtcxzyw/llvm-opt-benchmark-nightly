Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_bitblaster?download=true
inline.NumInlined: 2543
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4cvc58internal6theory2bv11sLessThanBBINS0_12NodeTemplateILb1EEEEET_RKSt6vectorIS6_SaIS6_EESB_b:bb.a
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !67 ; 10 uses
  store ptr %i.fq, ptr %41, align 8, !tbaa !67
  %i.fr = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.fs = lshr i64 %i.fr, 40
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = and i32 %i.ft, 1048575                  ; 3 uses
  %i.fv = icmp samesign ult i32 %i.fu, 1048574
  br i1 %i.fv, label %bb.bg, label %bb.bh, !prof !68

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit130
  %i.fw = add nuw nsw i32 %i.fu, 1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 40
  %i.fz = and i64 %i.fr, -1152920405095219201
  %i.ga = or i64 %i.fy, %i.fz
  store i64 %i.ga, ptr %i.fq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit132

bb.bh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit130
  %i.gb = icmp eq i32 %i.fu, 1048574
  br i1 %i.gb, label %bb.bi, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit132, !prof !69

bb.bi:                                            ; preds = %bb.bh
  %i.gc = or i64 %i.fr, 1152920405095219200
  store i64 %i.gc, ptr %i.fq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit132 unwind label %bb.bx

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit132: ; preds = %bb.bh, %bb.bg, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23, !noalias !294
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !82, !noalias !294
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef %i.ge, i32 noundef 20)
          to label %.noexc134 unwind label %bb.by

.noexc134:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit132
  store ptr %i.fq, ptr %21, align 8, !tbaa !64, !noalias !294
  %i.gf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull align 8 %21)
          to label %bb.bj unwind label %.body.i133, !noalias !294 ; 0 uses

bb.bj:                                            ; preds = %.noexc134
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %40, ptr noundef nonnull align 8 dereferenceable(124) %20)
          to label %bb.bk unwind label %.body.i133

.body.i133:                                       ; preds = %bb.bj, %.noexc134
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !294
  br label %.body135

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !293
  %i.gh = load ptr, ptr %40, align 8, !tbaa !67, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !296
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !82, !noalias !296
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef %i.gj, i32 noundef 21)
          to label %.noexc139 unwind label %bb.bz

.noexc139:                                        ; preds = %bb.bk
  store ptr %i.fc, ptr %18, align 8, !tbaa !64, !noalias !296
  %i.gk = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull align 8 %18)
          to label %bb.bl unwind label %.body.i138, !noalias !296

bb.bl:                                            ; preds = %.noexc139
  store ptr %i.gh, ptr %19, align 8, !tbaa !64, !noalias !296
  %i.gl = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.gk, ptr noundef nonnull align 8 %19)
          to label %bb.bm unwind label %.body.i138, !noalias !296 ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %17)
          to label %bb.bn unwind label %.body.i138

.body.i138:                                       ; preds = %bb.bm, %bb.bl, %.noexc139
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !296
  br label %.body140

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !295
  %i.gn = load ptr, ptr %40, align 8, !tbaa !67   ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  %i.gp = and i64 %i.go, 1152920405095219200
  %.not.i.i143 = icmp eq i64 %i.gp, 1152920405095219200
  br i1 %.not.i.i143, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit144, label %bb.bo, !prof !69

bb.bo:                                            ; preds = %bb.bn
  %i.gq = add i64 %i.go, 1152920405095219200
  %i.gr = and i64 %i.gq, 1152920405095219200      ; 2 uses
  %i.gs = and i64 %i.go, -1152920405095219201
  %i.gt = or disjoint i64 %i.gr, %i.gs
  store i64 %i.gt, ptr %i.gn, align 8
  %i.gu = icmp eq i64 %i.gr, 0
  br i1 %i.gu, label %bb.bp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit144, !prof !69

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit144 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit144: ; preds = %bb.bn, %bb.bo, %bb.bp
  %i.gx = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.gy = and i64 %i.gx, 1152920405095219200
  %.not.i.i145 = icmp eq i64 %i.gy, 1152920405095219200
  br i1 %.not.i.i145, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146, label %bb.br, !prof !69

bb.br:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit144
  %i.gz = add i64 %i.gx, 1152920405095219200
  %i.ha = and i64 %i.gz, 1152920405095219200      ; 2 uses
  %i.hb = and i64 %i.gx, -1152920405095219201
  %i.hc = or disjoint i64 %i.ha, %i.hb
  store i64 %i.hc, ptr %i.fq, align 8
  %i.hd = icmp eq i64 %i.ha, 0
  br i1 %i.hd, label %bb.bs, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146, !prof !69

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit144, %bb.br, %bb.bs
  %i.hg = load i64, ptr %i.fc, align 8            ; 3 uses
  %i.hh = and i64 %i.hg, 1152920405095219200
  %.not.i.i147 = icmp eq i64 %i.hh, 1152920405095219200
  br i1 %.not.i.i147, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148, label %bb.bu, !prof !69

bb.bu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146
  %i.hi = add i64 %i.hg, 1152920405095219200
  %i.hj = and i64 %i.hi, 1152920405095219200      ; 2 uses
  %i.hk = and i64 %i.hg, -1152920405095219201
  %i.hl = or disjoint i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.fc, align 8
  %i.hm = icmp eq i64 %i.hj, 0
  br i1 %i.hm, label %bb.bv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148, !prof !69

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #26
  unreachable

bb.bx:                                            ; preds = %bb.bi
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.by:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit132
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body135

bb.bz:                                            ; preds = %bb.bk
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body140

.body140:                                         ; preds = %.body.i138, %bb.bz
  %eh.lpad-body141 = phi { ptr, i32 } [ %i.hr, %bb.bz ], [ %i.gm, %.body.i138 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #23
  br label %.body135

.body135:                                         ; preds = %bb.by, %.body.i133, %.body140
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body141, %.body140 ], [ %i.hq, %bb.by ], [ %i.gg, %.body.i133 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #23
  br label %bb.ca

bb.ca:                                            ; preds = %.body135, %bb.bx
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %.body135 ], [ %i.hp, %bb.bx ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  br label %.loopexit

bb.cb:                                            ; preds = %bb.a
  %i.hs = ashr exact i64 %i.f, 3                  ; 3 uses
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = add nsw i64 %i.hs, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %i.hv = add i32 %i.ht, -2
  %i.hw = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i, %bb.cb
  %.07.i = phi i32 [ 0, %bb.cb ], [ %i.is, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %i.hy = zext i32 %.07.i to i64
  %i.hz = load ptr, ptr %1, align 8, !tbaa !83
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hy ; 2 uses
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !77 ; 3 uses
  %i.ic = load ptr, ptr %i.hx, align 8, !tbaa !78
  %.not.i.i149 = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i.i149, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !67 ; 5 uses
  store ptr %i.id, ptr %i.ib, align 8, !tbaa !67
  %i.ie = load i64, ptr %i.id, align 8            ; 3 uses
  %i.if = lshr i64 %i.ie, 40
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 1048575                  ; 3 uses
  %i.ii = icmp samesign ult i32 %i.ih, 1048574
  br i1 %i.ii, label %bb.ce, label %bb.cf, !prof !68

bb.ce:                                            ; preds = %bb.cd
  %i.ij = add nuw nsw i32 %i.ih, 1
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ik, 40
  %i.im = and i64 %i.ie, -1152920405095219201
  %i.in = or i64 %i.il, %i.im
  store i64 %i.in, ptr %i.id, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.io = icmp eq i32 %i.ih, 1048574
  br i1 %i.io, label %bb.cg, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !69

bb.cg:                                            ; preds = %bb.cf
  %i.ip = or i64 %i.ie, 1152920405095219200
  store i64 %i.ip, ptr %i.id, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.iq = load ptr, ptr %i.hw, align 8, !tbaa !77
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %i.ir, ptr %i.hw, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i

bb.ch:                                            ; preds = %bb.cc
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %bb.ch, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i
  %i.is = add i32 %.07.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.is, %i.hv
  br i1 %.not.i, label %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit, label %bb.cc, !llvm.loop !265

_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %54 = add nsw i64 %i.hs, 4294967295
  %wide.trip.count = and i64 %54, 4294967295
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i155, %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i155 ], [ 0, %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit ] ; 2 uses
  %i.iv = load ptr, ptr %2, align 8, !tbaa !83
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv ; 2 uses
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !77 ; 3 uses
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !78
  %.not.i.i153 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i.i153, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iz = load ptr, ptr %i.iw, align 8, !tbaa !67 ; 5 uses
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !67
  %i.ja = load i64, ptr %i.iz, align 8            ; 3 uses
  %i.jb = lshr i64 %i.ja, 40
  %i.jc = trunc nuw nsw i64 %i.jb to i32
  %i.jd = and i32 %i.jc, 1048575                  ; 3 uses
  %i.je = icmp samesign ult i32 %i.jd, 1048574
  br i1 %i.je, label %bb.ck, label %bb.cl, !prof !68

bb.ck:                                            ; preds = %bb.cj
  %i.jf = add nuw nsw i32 %i.jd, 1
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 40
  %i.ji = and i64 %i.ja, -1152920405095219201
  %i.jj = or i64 %i.jh, %i.ji
  store i64 %i.jj, ptr %i.iz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i154

bb.cl:                                            ; preds = %bb.cj
  %i.jk = icmp eq i32 %i.jd, 1048574
  br i1 %i.jk, label %bb.cm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i154, !prof !69

bb.cm:                                            ; preds = %bb.cl
  %i.jl = or i64 %i.ja, 1152920405095219200
  store i64 %i.jl, ptr %i.iz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i154: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.jm = load ptr, ptr %i.it, align 8, !tbaa !77
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jn, ptr %i.it, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i155

bb.cn:                                            ; preds = %bb.ci
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %i.iw)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i155: ; preds = %bb.cn, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit159, label %bb.ci, !llvm.loop !265

_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit159: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i155
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  invoke void @_ZN4cvc58internal6theory2bv11uLessThanBBINS0_12NodeTemplateILb1EEEEET_RKSt6vectorIS6_SaIS6_EESB_b(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %43, i1 noundef zeroext %3)
          to label %bb.co unwind label %bb.fc

bb.co:                                            ; preds = %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.jo = and i64 %i.hu, 4294967295               ; 4 uses
  %i.jp = load ptr, ptr %1, align 8, !tbaa !83
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jo
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !67 ; 5 uses
  store ptr %i.jr, ptr %47, align 8, !tbaa !67
  %i.js = load i64, ptr %i.jr, align 8            ; 3 uses
  %i.jt = lshr i64 %i.js, 40
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %i.jv = and i32 %i.ju, 1048575                  ; 3 uses
  %i.jw = icmp samesign ult i32 %i.jv, 1048574
  br i1 %i.jw, label %bb.cp, label %bb.cq, !prof !68

bb.cp:                                            ; preds = %bb.co
  %i.jx = add nuw nsw i32 %i.jv, 1
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = shl nuw nsw i64 %i.jy, 40
  %i.ka = and i64 %i.js, -1152920405095219201
  %i.kb = or i64 %i.jz, %i.ka
  store i64 %i.kb, ptr %i.jr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit161

bb.cq:                                            ; preds = %bb.co
  %i.kc = icmp eq i32 %i.jv, 1048574
  br i1 %i.kc, label %bb.cr, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit161, !prof !69

bb.cr:                                            ; preds = %bb.cq
  %i.kd = or i64 %i.js, 1152920405095219200
  store i64 %i.kd, ptr %i.jr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit161 unwind label %.thread240

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit161: ; preds = %bb.cq, %bb.cp, %bb.cr
  %i.ke = load ptr, ptr %2, align 8, !tbaa !83
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.jo
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !67 ; 9 uses
  store ptr %i.kg, ptr %48, align 8, !tbaa !67
  %i.kh = load i64, ptr %i.kg, align 8            ; 3 uses
  %i.ki = lshr i64 %i.kh, 40
  %i.kj = trunc nuw nsw i64 %i.ki to i32
  %i.kk = and i32 %i.kj, 1048575                  ; 3 uses
  %i.kl = icmp samesign ult i32 %i.kk, 1048574
  br i1 %i.kl, label %bb.cs, label %bb.ct, !prof !68

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit161
  %i.km = add nuw nsw i32 %i.kk, 1
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 40
  %i.kp = and i64 %i.kh, -1152920405095219201
  %i.kq = or i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163

bb.ct:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit161
  %i.kr = icmp eq i32 %i.kk, 1048574
  br i1 %i.kr, label %bb.cu, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163, !prof !69

bb.cu:                                            ; preds = %bb.ct
  %i.ks = or i64 %i.kh, 1152920405095219200
  store i64 %i.ks, ptr %i.kg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163 unwind label %.thread246

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163: ; preds = %bb.ct, %bb.cs, %bb.cu
  %i.kt = load ptr, ptr %47, align 8, !tbaa !67, !noalias !297 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !297
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !297
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !298
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !82, !noalias !298
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef %i.kv, i32 noundef 5)
          to label %.noexc165 unwind label %bb.fd

.noexc165:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163
  store ptr %i.kt, ptr %15, align 8, !tbaa !64, !noalias !298
  %i.kw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull align 8 %15)
          to label %bb.cv unwind label %.body.i164, !noalias !298

bb.cv:                                            ; preds = %.noexc165
  store ptr %i.kg, ptr %16, align 8, !tbaa !64, !noalias !298
  %i.kx = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.kw, ptr noundef nonnull align 8 %16)
          to label %bb.cw unwind label %.body.i164, !noalias !298 ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %46, ptr noundef nonnull align 8 dereferenceable(124) %14)
          to label %bb.cx unwind label %.body.i164

.body.i164:                                       ; preds = %bb.cw, %bb.cv, %.noexc165
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !298
  br label %bb.fo

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !297
  %i.kz = load ptr, ptr %44, align 8, !tbaa !67   ; 9 uses
  store ptr %i.kz, ptr %49, align 8, !tbaa !67
  %i.la = load i64, ptr %i.kz, align 8            ; 3 uses
  %i.lb = lshr i64 %i.la, 40
  %i.lc = trunc nuw nsw i64 %i.lb to i32
  %i.ld = and i32 %i.lc, 1048575                  ; 3 uses
  %i.le = icmp samesign ult i32 %i.ld, 1048574
  br i1 %i.le, label %bb.cy, label %bb.cz, !prof !68

bb.cy:                                            ; preds = %bb.cx
  %i.lf = add nuw nsw i32 %i.ld, 1
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = shl nuw nsw i64 %i.lg, 40
  %i.li = and i64 %i.la, -1152920405095219201
  %i.lj = or i64 %i.lh, %i.li
  store i64 %i.lj, ptr %i.kz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit170

bb.cz:                                            ; preds = %bb.cx
  %i.lk = icmp eq i32 %i.ld, 1048574
  br i1 %i.lk, label %bb.da, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit170, !prof !69

bb.da:                                            ; preds = %bb.cz
  %i.ll = or i64 %i.la, 1152920405095219200
  store i64 %i.ll, ptr %i.kz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit170 unwind label %bb.fe

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit170: ; preds = %bb.cz, %bb.cy, %bb.da
  %i.lm = load ptr, ptr %46, align 8, !tbaa !67, !noalias !299 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !300
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !82, !noalias !300
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef %i.lo, i32 noundef 21)
          to label %.noexc172 unwind label %bb.ff

.noexc172:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit170
  store ptr %i.lm, ptr %12, align 8, !tbaa !64, !noalias !300
  %i.lp = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull align 8 %12)
          to label %bb.db unwind label %.body.i171, !noalias !300

bb.db:                                            ; preds = %.noexc172
  store ptr %i.kz, ptr %13, align 8, !tbaa !64, !noalias !300
  %i.lq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.lp, ptr noundef nonnull align 8 %13)
          to label %bb.dc unwind label %.body.i171, !noalias !300 ; 0 uses

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %45, ptr noundef nonnull align 8 dereferenceable(124) %11)
          to label %bb.dd unwind label %.body.i171

.body.i171:                                       ; preds = %bb.dc, %bb.db, %.noexc172
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !300
  br label %.body173

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !299
  %i.ls = load ptr, ptr %45, align 8, !tbaa !67   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.lt = load ptr, ptr %1, align 8, !tbaa !83
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.jo
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !67 ; 10 uses
  store ptr %i.lv, ptr %51, align 8, !tbaa !67
  %i.lw = load i64, ptr %i.lv, align 8            ; 3 uses
  %i.lx = lshr i64 %i.lw, 40
  %i.ly = trunc nuw nsw i64 %i.lx to i32
  %i.lz = and i32 %i.ly, 1048575                  ; 3 uses
  %i.ma = icmp samesign ult i32 %i.lz, 1048574
  br i1 %i.ma, label %bb.de, label %bb.df, !prof !68

bb.de:                                            ; preds = %bb.dd
  %i.mb = add nuw nsw i32 %i.lz, 1
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = shl nuw nsw i64 %i.mc, 40
  %i.me = and i64 %i.lw, -1152920405095219201
  %i.mf = or i64 %i.md, %i.me
  store i64 %i.mf, ptr %i.lv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit177

bb.df:                                            ; preds = %bb.dd
  %i.mg = icmp eq i32 %i.lz, 1048574
  br i1 %i.mg, label %bb.dg, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit177, !prof !69

bb.dg:                                            ; preds = %bb.df
  %i.mh = or i64 %i.lw, 1152920405095219200
  store i64 %i.mh, ptr %i.lv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lv)
end_hunk_0
