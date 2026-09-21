Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_bitblaster?download=true
inline.NumInlined: 2543
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4cvc58internal6theory2bv11sLessThanBBINS0_12NodeTemplateILb1EEEEET_RKSt6vectorIS6_SaIS6_EESB_b:bb.a
  store i64 %i.gj, ptr %i.fx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit134 unwind label %bb.cn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit134: ; preds = %bb.bs, %bb.br, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23, !noalias !294
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !82, !noalias !294
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef %i.gl, i32 noundef 20)
          to label %.noexc137 unwind label %bb.co

.noexc137:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit134
  store ptr %i.fx, ptr %21, align 8, !tbaa !64, !noalias !294
  %i.gm = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull align 8 %21)
          to label %bb.bu unwind label %bb.bw, !noalias !294 ; 0 uses

bb.bu:                                            ; preds = %.noexc137
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %40, ptr noundef nonnull align 8 dereferenceable(124) %20)
          to label %bb.bx unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i135

bb.bw:                                            ; preds = %.noexc137
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i135

.body.i135:                                       ; preds = %bb.bw, %bb.bv
  %.pn.i.i136 = phi { ptr, i32 } [ %i.gn, %bb.bv ], [ %i.go, %bb.bw ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !294
  br label %.body138

bb.bx:                                            ; preds = %bb.bu
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !293
  %i.gp = load ptr, ptr %40, align 8, !tbaa !67, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !296
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !82, !noalias !296
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef %i.gr, i32 noundef 21)
          to label %.noexc143 unwind label %bb.cp

.noexc143:                                        ; preds = %bb.bx
  store ptr %i.fj, ptr %18, align 8, !tbaa !64, !noalias !296
  %i.gs = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull align 8 %18)
          to label %bb.by unwind label %bb.cb, !noalias !296

bb.by:                                            ; preds = %.noexc143
  store ptr %i.gp, ptr %19, align 8, !tbaa !64, !noalias !296
  %i.gt = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.gs, ptr noundef nonnull align 8 %19)
          to label %bb.bz unwind label %bb.cc, !noalias !296 ; 0 uses

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %17)
          to label %bb.cd unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i141

bb.cb:                                            ; preds = %.noexc143
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i141

bb.cc:                                            ; preds = %bb.by
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i141

.body.i141:                                       ; preds = %bb.cc, %bb.cb, %bb.ca
  %.pn5.i.i142 = phi { ptr, i32 } [ %i.gu, %bb.ca ], [ %i.gw, %bb.cc ], [ %i.gv, %bb.cb ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !296
  br label %.body144

bb.cd:                                            ; preds = %bb.bz
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !295
  %i.gx = load ptr, ptr %40, align 8, !tbaa !67   ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8            ; 3 uses
  %i.gz = and i64 %i.gy, 1152920405095219200
  %.not.i.i147 = icmp eq i64 %i.gz, 1152920405095219200
  br i1 %.not.i.i147, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148, label %bb.ce, !prof !69

bb.ce:                                            ; preds = %bb.cd
  %i.ha = add i64 %i.gy, 1152920405095219200
  %i.hb = and i64 %i.ha, 1152920405095219200      ; 2 uses
  %i.hc = and i64 %i.gy, -1152920405095219201
  %i.hd = or disjoint i64 %i.hb, %i.hc
  store i64 %i.hd, ptr %i.gx, align 8
  %i.he = icmp eq i64 %i.hb, 0
  br i1 %i.he, label %bb.cf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148, !prof !69

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148: ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.hh = load i64, ptr %i.fx, align 8            ; 3 uses
  %i.hi = and i64 %i.hh, 1152920405095219200
  %.not.i.i149 = icmp eq i64 %i.hi, 1152920405095219200
  br i1 %.not.i.i149, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150, label %bb.ch, !prof !69

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148
  %i.hj = add i64 %i.hh, 1152920405095219200
  %i.hk = and i64 %i.hj, 1152920405095219200      ; 2 uses
  %i.hl = and i64 %i.hh, -1152920405095219201
  %i.hm = or disjoint i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.fx, align 8
  %i.hn = icmp eq i64 %i.hk, 0
  br i1 %i.hn, label %bb.ci, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150, !prof !69

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148, %bb.ch, %bb.ci
  %i.hq = load i64, ptr %i.fj, align 8            ; 3 uses
  %i.hr = and i64 %i.hq, 1152920405095219200
  %.not.i.i151 = icmp eq i64 %i.hr, 1152920405095219200
  br i1 %.not.i.i151, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit152, label %bb.ck, !prof !69

bb.ck:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit150
  %i.hs = add i64 %i.hq, 1152920405095219200
  %i.ht = and i64 %i.hs, 1152920405095219200      ; 2 uses
  %i.hu = and i64 %i.hq, -1152920405095219201
  %i.hv = or disjoint i64 %i.ht, %i.hu
  store i64 %i.hv, ptr %i.fj, align 8
  %i.hw = icmp eq i64 %i.ht, 0
  br i1 %i.hw, label %bb.cl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit152, !prof !69

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit152 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #26
  unreachable

bb.cn:                                            ; preds = %bb.bt
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.co:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit134
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body138

bb.cp:                                            ; preds = %bb.bx
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body144

.body144:                                         ; preds = %.body.i141, %bb.cp
  %eh.lpad-body145 = phi { ptr, i32 } [ %i.ib, %bb.cp ], [ %.pn5.i.i142, %.body.i141 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #23
  br label %.body138

.body138:                                         ; preds = %bb.co, %.body.i135, %.body144
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body145, %.body144 ], [ %i.ia, %bb.co ], [ %.pn.i.i136, %.body.i135 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #23
  br label %bb.cq

bb.cq:                                            ; preds = %.body138, %bb.cn
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %.body138 ], [ %i.hz, %bb.cn ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  br label %.loopexit

bb.cr:                                            ; preds = %bb.a
  %i.ic = ashr exact i64 %i.f, 3                  ; 2 uses
  %i.id = trunc i64 %i.ic to i32
  %i.ie = add nsw i64 %i.ic, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %i.if = add i32 %i.id, -2                       ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i, %bb.cr
  %.07.i = phi i32 [ 0, %bb.cr ], [ %i.jc, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %i.ii = zext i32 %.07.i to i64
  %i.ij = load ptr, ptr %1, align 8, !tbaa !83
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ii ; 2 uses
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !77 ; 3 uses
  %i.im = load ptr, ptr %i.ih, align 8, !tbaa !78
  %.not.i.i153 = icmp eq ptr %i.il, %i.im
  br i1 %.not.i.i153, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !67 ; 5 uses
  store ptr %i.in, ptr %i.il, align 8, !tbaa !67
  %i.io = load i64, ptr %i.in, align 8            ; 3 uses
  %i.ip = lshr i64 %i.io, 40
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = and i32 %i.iq, 1048575                  ; 3 uses
  %i.is = icmp samesign ult i32 %i.ir, 1048574
  br i1 %i.is, label %bb.cu, label %bb.cv, !prof !68

bb.cu:                                            ; preds = %bb.ct
  %i.it = add nuw nsw i32 %i.ir, 1
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 40
  %i.iw = and i64 %i.io, -1152920405095219201
  %i.ix = or i64 %i.iv, %i.iw
  store i64 %i.ix, ptr %i.in, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.iy = icmp eq i32 %i.ir, 1048574
  br i1 %i.iy, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !69

bb.cw:                                            ; preds = %bb.cv
  %i.iz = or i64 %i.io, 1152920405095219200
  store i64 %i.iz, ptr %i.in, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.in)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.ja = load ptr, ptr %i.ig, align 8, !tbaa !77
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.jb, ptr %i.ig, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i

bb.cx:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr %i.il, ptr noundef nonnull align 8 dereferenceable(8) %i.ik)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i unwind label %.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %bb.cx, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i
  %i.jc = add i32 %.07.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.jc, %i.if
  br i1 %.not.i, label %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit, label %bb.cs, !llvm.loop !265

_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i159, %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit
  %.07.i156 = phi i32 [ 0, %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit ], [ %55, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i159 ] ; 2 uses
  %54 = zext i32 %.07.i156 to i64
  %i.jf = load ptr, ptr %2, align 8, !tbaa !83
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %54 ; 2 uses
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !77 ; 3 uses
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !78
  %.not.i.i157 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i157, label %bb.dd, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !67 ; 5 uses
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !67
  %i.jk = load i64, ptr %i.jj, align 8            ; 3 uses
  %i.jl = lshr i64 %i.jk, 40
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = and i32 %i.jm, 1048575                  ; 3 uses
  %i.jo = icmp samesign ult i32 %i.jn, 1048574
  br i1 %i.jo, label %bb.da, label %bb.db, !prof !68

bb.da:                                            ; preds = %bb.cz
  %i.jp = add nuw nsw i32 %i.jn, 1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl nuw nsw i64 %i.jq, 40
  %i.js = and i64 %i.jk, -1152920405095219201
  %i.jt = or i64 %i.jr, %i.js
  store i64 %i.jt, ptr %i.jj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i158

bb.db:                                            ; preds = %bb.cz
  %i.ju = icmp eq i32 %i.jn, 1048574
  br i1 %i.ju, label %bb.dc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i158, !prof !69

bb.dc:                                            ; preds = %bb.db
  %i.jv = or i64 %i.jk, 1152920405095219200
  store i64 %i.jv, ptr %i.jj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i158 unwind label %.loopexit260

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i158: ; preds = %bb.dc, %bb.db, %bb.da
  %i.jw = load ptr, ptr %i.jd, align 8, !tbaa !77
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %i.jx, ptr %i.jd, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i159

bb.dd:                                            ; preds = %bb.cy
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %i.jg)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i159 unwind label %.loopexit260

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i159: ; preds = %bb.dd, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i158
  %55 = add i32 %.07.i156, 1                      ; 2 uses
  %.not.i160 = icmp ugt i32 %55, %i.if
  br i1 %.not.i160, label %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit163, label %bb.cy, !llvm.loop !265

_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit163: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.i159
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  invoke void @_ZN4cvc58internal6theory2bv11uLessThanBBINS0_12NodeTemplateILb1EEEEET_RKSt6vectorIS6_SaIS6_EESB_b(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %43, i1 noundef zeroext %3)
          to label %bb.de unwind label %bb.gg

bb.de:                                            ; preds = %_ZN4cvc58internal6theory2bv11extractBitsINS0_12NodeTemplateILb1EEEEEvRKSt6vectorIT_SaIS7_EERS9_jj.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.jy = and i64 %i.ie, 4294967295               ; 4 uses
  %i.jz = load ptr, ptr %1, align 8, !tbaa !83
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jy
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !67 ; 5 uses
  store ptr %i.kb, ptr %47, align 8, !tbaa !67
  %i.kc = load i64, ptr %i.kb, align 8            ; 3 uses
  %i.kd = lshr i64 %i.kc, 40
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = and i32 %i.ke, 1048575                  ; 3 uses
  %i.kg = icmp samesign ult i32 %i.kf, 1048574
  br i1 %i.kg, label %bb.df, label %bb.dg, !prof !68

bb.df:                                            ; preds = %bb.de
  %i.kh = add nuw nsw i32 %i.kf, 1
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl nuw nsw i64 %i.ki, 40
  %i.kk = and i64 %i.kc, -1152920405095219201
  %i.kl = or i64 %i.kj, %i.kk
  store i64 %i.kl, ptr %i.kb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit165

bb.dg:                                            ; preds = %bb.de
  %i.km = icmp eq i32 %i.kf, 1048574
  br i1 %i.km, label %bb.dh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit165, !prof !69

bb.dh:                                            ; preds = %bb.dg
  %i.kn = or i64 %i.kc, 1152920405095219200
  store i64 %i.kn, ptr %i.kb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit165 unwind label %.thread247

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit165: ; preds = %bb.dg, %bb.df, %bb.dh
  %i.ko = load ptr, ptr %2, align 8, !tbaa !83
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.jy
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !67 ; 9 uses
  store ptr %i.kq, ptr %48, align 8, !tbaa !67
  %i.kr = load i64, ptr %i.kq, align 8            ; 3 uses
  %i.ks = lshr i64 %i.kr, 40
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = and i32 %i.kt, 1048575                  ; 3 uses
  %i.kv = icmp samesign ult i32 %i.ku, 1048574
  br i1 %i.kv, label %bb.di, label %bb.dj, !prof !68

bb.di:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit165
  %i.kw = add nuw nsw i32 %i.ku, 1
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 40
  %i.kz = and i64 %i.kr, -1152920405095219201
  %i.la = or i64 %i.ky, %i.kz
  store i64 %i.la, ptr %i.kq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit167

bb.dj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit165
  %i.lb = icmp eq i32 %i.ku, 1048574
  br i1 %i.lb, label %bb.dk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit167, !prof !69

bb.dk:                                            ; preds = %bb.dj
  %i.lc = or i64 %i.kr, 1152920405095219200
  store i64 %i.lc, ptr %i.kq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit167 unwind label %.thread253

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit167: ; preds = %bb.dj, %bb.di, %bb.dk
  %i.ld = load ptr, ptr %47, align 8, !tbaa !67, !noalias !297 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !297
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !297
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !298
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !82, !noalias !298
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef %i.lf, i32 noundef 5)
          to label %.noexc170 unwind label %bb.gh

.noexc170:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit167
  store ptr %i.ld, ptr %15, align 8, !tbaa !64, !noalias !298
  %i.lg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull align 8 %15)
          to label %bb.dl unwind label %bb.do, !noalias !298

bb.dl:                                            ; preds = %.noexc170
  store ptr %i.kq, ptr %16, align 8, !tbaa !64, !noalias !298
  %i.lh = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.lg, ptr noundef nonnull align 8 %16)
          to label %bb.dm unwind label %bb.dp, !noalias !298 ; 0 uses

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %46, ptr noundef nonnull align 8 dereferenceable(124) %14)
          to label %bb.dq unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body.i168

bb.do:                                            ; preds = %.noexc170
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i168

bb.dp:                                            ; preds = %bb.dl
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i168

.body.i168:                                       ; preds = %bb.dp, %bb.do, %bb.dn
  %.pn5.i.i169 = phi { ptr, i32 } [ %i.li, %bb.dn ], [ %i.lk, %bb.dp ], [ %i.lj, %bb.do ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !298
  br label %bb.gs

bb.dq:                                            ; preds = %bb.dm
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !297
  %i.ll = load ptr, ptr %44, align 8, !tbaa !67   ; 9 uses
  store ptr %i.ll, ptr %49, align 8, !tbaa !67
  %i.lm = load i64, ptr %i.ll, align 8            ; 3 uses
  %i.ln = lshr i64 %i.lm, 40
  %i.lo = trunc nuw nsw i64 %i.ln to i32
  %i.lp = and i32 %i.lo, 1048575                  ; 3 uses
  %i.lq = icmp samesign ult i32 %i.lp, 1048574
  br i1 %i.lq, label %bb.dr, label %bb.ds, !prof !68

bb.dr:                                            ; preds = %bb.dq
  %i.lr = add nuw nsw i32 %i.lp, 1
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 40
  %i.lu = and i64 %i.lm, -1152920405095219201
  %i.lv = or i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.ll, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175

bb.ds:                                            ; preds = %bb.dq
  %i.lw = icmp eq i32 %i.lp, 1048574
  br i1 %i.lw, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175, !prof !69

bb.dt:                                            ; preds = %bb.ds
  %i.lx = or i64 %i.lm, 1152920405095219200
  store i64 %i.lx, ptr %i.ll, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ll)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175 unwind label %bb.gi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175: ; preds = %bb.ds, %bb.dr, %bb.dt
  %i.ly = load ptr, ptr %46, align 8, !tbaa !67, !noalias !299 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !300
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !82, !noalias !300
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef %i.ma, i32 noundef 21)
          to label %.noexc178 unwind label %bb.gj

.noexc178:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175
  store ptr %i.ly, ptr %12, align 8, !tbaa !64, !noalias !300
  %i.mb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull align 8 %12)
          to label %bb.du unwind label %bb.dx, !noalias !300

bb.du:                                            ; preds = %.noexc178
  store ptr %i.ll, ptr %13, align 8, !tbaa !64, !noalias !300
  %i.mc = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.mb, ptr noundef nonnull align 8 %13)
          to label %bb.dv unwind label %bb.dy, !noalias !300 ; 0 uses

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.318") align 8 %45, ptr noundef nonnull align 8 dereferenceable(124) %11)
          to label %bb.dz unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body.i176

bb.dx:                                            ; preds = %.noexc178
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body.i176

bb.dy:                                            ; preds = %bb.du
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i176

.body.i176:                                       ; preds = %bb.dy, %bb.dx, %bb.dw
  %.pn5.i.i177 = phi { ptr, i32 } [ %i.md, %bb.dw ], [ %i.mf, %bb.dy ], [ %i.me, %bb.dx ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !300
  br label %.body179

bb.dz:                                            ; preds = %bb.dv
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !299
  %i.mg = load ptr, ptr %45, align 8, !tbaa !67   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
end_hunk_0
