Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/nl_model?download=true
inline.NumInlined: 3258
inline.NumDeleted: 942
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4cvc58internal6theory5arith2nl7NlModel20simpleCheckModelMsumERKSt3mapINS0_12NodeTemplateILb1EEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEEb:bb.a

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.hm = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.hn, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.be:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit296
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.br

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.be
  %i.ho = load ptr, ptr %17, align 8, !tbaa !36   ; 3 uses
  %i.hp = load i64, ptr %i.ho, align 8            ; 3 uses
  %i.hq = and i64 %i.hp, 1152920405095219200
  %.not.i.i300 = icmp eq i64 %i.hq, 1152920405095219200
  br i1 %.not.i.i300, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit301, label %bb.bf, !prof !49

bb.bf:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.hr = add i64 %i.hp, 1152920405095219200
  %i.hs = and i64 %i.hr, 1152920405095219200      ; 2 uses
  %i.ht = and i64 %i.hp, -1152920405095219201
  %i.hu = or disjoint i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.ho, align 8
  %i.hv = icmp eq i64 %i.hs, 0
  br i1 %i.hv, label %bb.bg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit301, !prof !49

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit301 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit301: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %.not.i302 = icmp eq ptr %.sroa.12.01428, %.sroa.18.01427
  br i1 %.not.i302, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit301
  store i32 %i.fw, ptr %.sroa.12.01428, align 4, !tbaa !273
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.12.01428, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit301
  %i.hz = ptrtoint ptr %.sroa.12.01428 to i64
  %i.ia = ptrtoint ptr %.sroa.01029.01429 to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 6 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775804
  br i1 %i.ic, label %bb.bk, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #29
          to label %.noexc303 unwind label %.loopexit.split-lp1129

.noexc303:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bj
  %i.id = ashr exact i64 %i.ib, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 2305843009213693951)
  %i.ih = select i1 %i.if, i64 2305843009213693951, i64 %i.ig ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ii = shl nuw nsw i64 %i.ih, 2
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #25
          to label %.noexc304 unwind label %.loopexit1128 ; 4 uses

.noexc304:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.ib ; 2 uses
  store i32 %i.fw, ptr %i.ik, align 4, !tbaa !273
  %i.il = icmp sgt i64 %i.ib, 0
  br i1 %i.il, label %bb.bl, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.bl:                                            ; preds = %.noexc304
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ij, ptr align 4 %.sroa.01029.01429, i64 %i.ib, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.bl, %.noexc304
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.01029.01429, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01029.01429, i64 noundef %i.ib) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.bm, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ih
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bn:                                            ; preds = %bb.an, %bb.ak
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.aq, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.pn228 = phi { ptr, i32 } [ %i.ip, %bb.bo ], [ %i.io, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.iz

bb.bq:                                            ; preds = %bb.az, %.critedge254.thread
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.be, %bb.bd
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn231 = phi { ptr, i32 } [ %i.ir, %bb.br ], [ %i.iq, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.iz

.loopexit1128:                                    ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

.loopexit.split-lp1129:                           ; preds = %bb.bk
  %lpad.loopexit.split-lp1131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.bi, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %.critedge254
  %.sroa.18.1 = phi ptr [ %.sroa.18.01427, %.critedge254 ], [ %i.in, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.18.01427, %bb.bi ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.01428, %.critedge254 ], [ %i.im, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.hy, %bb.bi ]
  %.sroa.01029.1 = phi ptr [ %.sroa.01029.01429, %.critedge254 ], [ %i.ij, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.01029.01429, %bb.bi ] ; 2 uses
  %.1117 = phi i32 [ %.01161430, %.critedge254 ], [ %i.dc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.dc, %bb.bi ]
  %exitcond.not = icmp eq i32 %i.dc, %i.cy
  br i1 %exitcond.not, label %.loopexit1127, label %.lr.ph, !llvm.loop !255

bb.bt:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.ai

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bt
  %i.is = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #25
          to label %bb.bu unwind label %bb.bv     ; 3 uses

bb.bu:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  store i32 1, ptr %i.is, align 4, !tbaa !273
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  br label %.loopexit1127

bb.bv:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

.loopexit1127:                                    ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.ag, %bb.bu
  %.sroa.18.2 = phi ptr [ %i.it, %bb.bu ], [ null, %bb.ag ], [ %.sroa.18.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %.sroa.01029.2 = phi ptr [ %i.is, %bb.bu ], [ null, %bb.ag ], [ %.sroa.01029.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.iv = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.iw = load ptr, ptr %15, align 8, !tbaa !56
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 2 uses
  %i.ja = and i64 %i.iz, 34359738360
  %.not2061433.not = icmp eq i64 %i.ja, 0
  br i1 %.not2061433.not, label %.thread1060.thread, label %.lr.ph1442.preheader

.thread1060.thread:                               ; preds = %.loopexit1127
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  br label %.thread1108

.lr.ph1442.preheader:                             ; preds = %.loopexit1127
  %i.jb = lshr exact i64 %i.iz, 3
  %wide.trip.count = and i64 %i.jb, 4294967295
  br label %.lr.ph1442

bb.bw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit433
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1727.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1727.not, label %.thread1060, label %.lr.ph1442, !llvm.loop !256

.lr.ph1442:                                       ; preds = %.lr.ph1442.preheader, %bb.bw
  %indvars.iv = phi i64 [ 0, %.lr.ph1442.preheader ], [ %indvars.iv.next, %bb.bw ] ; 4 uses
  %.01021438 = phi i32 [ -1, %.lr.ph1442.preheader ], [ %.5, %bb.bw ] ; 8 uses
  %.01051437 = phi i1 [ false, %.lr.ph1442.preheader ], [ %.5110, %bb.bw ] ; 8 uses
  %.sroa.01014.01436 = phi ptr [ null, %.lr.ph1442.preheader ], [ %.sroa.01014.2, %bb.bw ] ; 10 uses
  %.sroa.11.01435 = phi ptr [ null, %.lr.ph1442.preheader ], [ %.sroa.11.2, %bb.bw ] ; 10 uses
  %.sroa.14.01434 = phi ptr [ null, %.lr.ph1442.preheader ], [ %.sroa.14.2, %bb.bw ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.jc = load ptr, ptr %15, align 8, !tbaa !56
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !36 ; 9 uses
  store ptr %i.je, ptr %20, align 8, !tbaa !36
  %i.jf = load i64, ptr %i.je, align 8            ; 3 uses
  %i.jg = lshr i64 %i.jf, 40
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = and i32 %i.jh, 1048575                  ; 3 uses
  %i.jj = icmp samesign ult i32 %i.ji, 1048574
  br i1 %i.jj, label %bb.bx, label %bb.by, !prof !50

bb.bx:                                            ; preds = %.lr.ph1442
  %i.jk = add nuw nsw i32 %i.ji, 1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 40
  %i.jn = and i64 %i.jf, -1152920405095219201
  %i.jo = or i64 %i.jm, %i.jn
  store i64 %i.jo, ptr %i.je, align 8
  br label %.critedge258

bb.by:                                            ; preds = %.lr.ph1442
  %i.jp = icmp eq i32 %i.ji, 1048574
  br i1 %i.jp, label %bb.bz, label %.critedge258, !prof !49

bb.bz:                                            ; preds = %bb.by
  %i.jq = or i64 %i.jf, 1152920405095219200
  store i64 %i.jq, ptr %i.je, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.je)
          to label %.critedge258 unwind label %bb.ca

.critedge258:                                     ; preds = %bb.by, %bb.bx, %bb.bz
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01029.2, i64 %indvars.iv
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !273
  %i.jt = load ptr, ptr %i.l, align 8, !tbaa !28  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not10.i.i.i, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431, label %.lr.ph.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.lr.ph.i.i.i:                                     ; preds = %.critedge258
  %i.jv = load i64, ptr %i.je, align 8
  %i.jw = and i64 %i.jv, 1099511627775            ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.cb ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.cb ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !36
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = and i64 %i.jz, 1099511627775
  %i.kb = icmp samesign ult i64 %i.ka, %i.jw      ; 2 uses
  %.19.i.i.i = select i1 %i.kb, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.kb, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i343 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i343, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.cb, !llvm.loop !10

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.cb
  %i.kc = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.kc, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !36
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = and i64 %i.kf, 1099511627775
  %i.kh = icmp samesign ult i64 %i.jw, %i.kg
  br i1 %i.kh, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.ki = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !36 ; 5 uses
  store ptr %i.kj, ptr %21, align 8, !tbaa !36
  %i.kk = load i64, ptr %i.kj, align 8            ; 3 uses
  %i.kl = lshr i64 %i.kk, 40
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = and i32 %i.km, 1048575                  ; 3 uses
  %i.ko = icmp samesign ult i32 %i.kn, 1048574
  br i1 %i.ko, label %bb.cd, label %bb.ce, !prof !50

bb.cd:                                            ; preds = %bb.cc
  %i.kp = add nuw nsw i32 %i.kn, 1
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 40
  %i.ks = and i64 %i.kk, -1152920405095219201
  %i.kt = or i64 %i.kr, %i.ks
  store i64 %i.kt, ptr %i.kj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346

bb.ce:                                            ; preds = %bb.cc
  %i.ku = icmp eq i32 %i.kn, 1048574
  br i1 %i.ku, label %bb.cf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346, !prof !49

bb.cf:                                            ; preds = %bb.ce
  %i.kv = or i64 %i.kk, 1152920405095219200
  store i64 %i.kv, ptr %i.kj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346 unwind label %bb.cy

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346: ; preds = %bb.ce, %bb.cd, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.kw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !36 ; 5 uses
  store ptr %i.kx, ptr %22, align 8, !tbaa !36
  %i.ky = load i64, ptr %i.kx, align 8            ; 3 uses
  %i.kz = lshr i64 %i.ky, 40
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %i.lb = and i32 %i.la, 1048575                  ; 3 uses
  %i.lc = icmp samesign ult i32 %i.lb, 1048574
  br i1 %i.lc, label %bb.cg, label %bb.ch, !prof !50

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346
  %i.ld = add nuw nsw i32 %i.lb, 1
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl nuw nsw i64 %i.le, 40
  %i.lg = and i64 %i.ky, -1152920405095219201
  %i.lh = or i64 %i.lf, %i.lg
  store i64 %i.lh, ptr %i.kx, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346
  %i.li = icmp eq i32 %i.lb, 1048574
  br i1 %i.li, label %bb.ci, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348, !prof !49

bb.ci:                                            ; preds = %bb.ch
  %i.lj = or i64 %i.ky, 1152920405095219200
  store i64 %i.lj, ptr %i.kx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348 unwind label %bb.cz

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348: ; preds = %bb.ch, %bb.cg, %bb.ci
  %i.lk = load ptr, ptr %i.n, align 8, !tbaa !57  ; 3 uses
  %i.ll = load ptr, ptr %i.o, align 8, !tbaa !58
  %.not.i349 = icmp eq ptr %i.lk, %i.ll
  br i1 %.not.i349, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348
  %i.lm = load ptr, ptr %21, align 8, !tbaa !36   ; 5 uses
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !36
  %i.ln = load i64, ptr %i.lm, align 8            ; 3 uses
  %i.lo = lshr i64 %i.ln, 40
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %i.lq = and i32 %i.lp, 1048575                  ; 3 uses
  %i.lr = icmp samesign ult i32 %i.lq, 1048574
  br i1 %i.lr, label %bb.ck, label %bb.cl, !prof !50

bb.ck:                                            ; preds = %bb.cj
  %i.ls = add nuw nsw i32 %i.lq, 1
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = shl nuw nsw i64 %i.lt, 40
  %i.lv = and i64 %i.ln, -1152920405095219201
  %i.lw = or i64 %i.lu, %i.lv
  store i64 %i.lw, ptr %i.lm, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i350

bb.cl:                                            ; preds = %bb.cj
  %i.lx = icmp eq i32 %i.lq, 1048574
  br i1 %i.lx, label %bb.cm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i350, !prof !49

bb.cm:                                            ; preds = %bb.cl
  %i.ly = or i64 %i.ln, 1152920405095219200
  store i64 %i.ly, ptr %i.lm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i350 unwind label %bb.da

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i350: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.lz = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.n, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit353

bb.cn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.lk, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit353 unwind label %bb.da

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit353: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i350, %bb.cn
  %i.mb = load ptr, ptr %i.p, align 8, !tbaa !57  ; 3 uses
  %i.mc = load ptr, ptr %i.q, align 8, !tbaa !58
  %.not.i354 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not.i354, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit353
  %i.md = load ptr, ptr %22, align 8, !tbaa !36   ; 5 uses
  store ptr %i.md, ptr %i.mb, align 8, !tbaa !36
  %i.me = load i64, ptr %i.md, align 8            ; 3 uses
  %i.mf = lshr i64 %i.me, 40
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = and i32 %i.mg, 1048575                  ; 3 uses
  %i.mi = icmp samesign ult i32 %i.mh, 1048574
  br i1 %i.mi, label %bb.cp, label %bb.cq, !prof !50

bb.cp:                                            ; preds = %bb.co
  %i.mj = add nuw nsw i32 %i.mh, 1
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl nuw nsw i64 %i.mk, 40
  %i.mm = and i64 %i.me, -1152920405095219201
  %i.mn = or i64 %i.ml, %i.mm
  store i64 %i.mn, ptr %i.md, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i355

bb.cq:                                            ; preds = %bb.co
  %i.mo = icmp eq i32 %i.mh, 1048574
  br i1 %i.mo, label %bb.cr, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i355, !prof !49

bb.cr:                                            ; preds = %bb.cq
  %i.mp = or i64 %i.me, 1152920405095219200
  store i64 %i.mp, ptr %i.md, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i355 unwind label %bb.da

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i355: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.mq = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr %i.mr, ptr %i.p, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358

bb.cs:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit353
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.mb, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358 unwind label %bb.da

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i355, %bb.cs
  %i.ms = and i32 %i.js, 1
  %.not = icmp eq i32 %i.ms, 0
  br i1 %.not, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358
  %i.mt = load ptr, ptr %21, align 8, !tbaa !36
  %i.mu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.mt)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !89
  %i.mx = load ptr, ptr %22, align 8, !tbaa !36
  %i.my = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %bb.cv unwind label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  %i.mz = icmp slt i32 %i.mw, 0
  br i1 %i.mz, label %bb.cw, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403

bb.cw:                                            ; preds = %bb.cv
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !89
  %i.nc = icmp slt i32 %i.nb, 1
  br i1 %i.nc, label %bb.cx, label %bb.dd

bb.cx:                                            ; preds = %bb.cw
  %40 = xor i1 %.01051437, true
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403

bb.cy:                                            ; preds = %bb.cf
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.cz:                                            ; preds = %bb.ci
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.da:                                            ; preds = %bb.cs, %bb.cr, %bb.cn, %bb.cm
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.db:                                            ; preds = %bb.ct
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dc:                                            ; preds = %bb.cu
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dd:                                            ; preds = %bb.cw
  %i.ni = icmp eq i32 %.01021438, -1
  %i.nj = trunc nuw i64 %indvars.iv to i32
  br i1 %i.ni, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358, %bb.cx, %bb.cv, %bb.dd
  %.11049 = phi i32 [ 0, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358 ], [ 0, %bb.dd ], [ 1, %bb.cv ], [ -1, %bb.cx ] ; 2 uses
  %.3108 = phi i1 [ %.01051437, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358 ], [ %.01051437, %bb.dd ], [ %.01051437, %bb.cv ], [ %40, %bb.cx ] ; 2 uses
  %.3 = phi i32 [ %.01021438, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit358 ], [ %i.nj, %bb.dd ], [ %.01021438, %bb.cv ], [ %.01021438, %bb.cx ] ; 2 uses
  %.not.i404 = icmp eq ptr %.sroa.11.01435, %.sroa.14.01434
  br i1 %.not.i404, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403
  store i32 %.11049, ptr %.sroa.11.01435, align 4, !tbaa !273
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.11.01435, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.df:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403
  %i.nl = ptrtoint ptr %.sroa.11.01435 to i64
  %i.nm = ptrtoint ptr %.sroa.01014.01436 to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 6 uses
  %i.no = icmp eq i64 %i.nn, 9223372036854775804
  br i1 %i.no, label %bb.dg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #29
          to label %.noexc408 unwind label %.loopexit.split-lp

.noexc408:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.df
  %i.np = ashr exact i64 %i.nn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i405 = call i64 @llvm.umax.i64(i64 %i.np, i64 1)
  %i.nq = add nsw i64 %.sroa.speculated.i.i.i405, %i.np ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  %i.ns = call i64 @llvm.umin.i64(i64 %i.nq, i64 2305843009213693951)
  %i.nt = select i1 %i.nr, i64 2305843009213693951, i64 %i.ns ; 3 uses
  %.not.i.i.i406 = icmp ne i64 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i406)
  %i.nu = shl nuw nsw i64 %i.nt, 2
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #25
          to label %.noexc409 unwind label %.loopexit ; 4 uses

.noexc409:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %i.nn ; 2 uses
  store i32 %.11049, ptr %i.nw, align 4, !tbaa !273
  %i.nx = icmp sgt i64 %i.nn, 0
  br i1 %i.nx, label %bb.dh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dh:                                            ; preds = %.noexc409
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nv, ptr align 4 %.sroa.01014.01436, i64 %i.nn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dh, %.noexc409
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %.not.i17.i.i407 = icmp eq ptr %.sroa.01014.01436, null
  br i1 %.not.i17.i.i407, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01014.01436, i64 noundef %i.nn) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.di, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.nt
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.de, %bb.dd
  %.sroa.14.1 = phi ptr [ %.sroa.14.01434, %bb.dd ], [ %i.nz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.14.01434, %bb.de ]
  %.sroa.11.1 = phi ptr [ %.sroa.11.01435, %bb.dd ], [ %i.ny, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.nk, %bb.de ]
  %.sroa.01014.1 = phi ptr [ %.sroa.01014.01436, %bb.dd ], [ %i.nv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.01014.01436, %bb.de ]
  %i.oa = phi i1 [ false, %bb.dd ], [ true, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ true, %bb.de ]
  %.4109 = phi i1 [ %.01051437, %bb.dd ], [ %.3108, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.3108, %bb.de ]
  %.4 = phi i32 [ %.01021438, %bb.dd ], [ %.3, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.3, %bb.de ]
  %i.ob = load ptr, ptr %22, align 8, !tbaa !36   ; 3 uses
  %i.oc = load i64, ptr %i.ob, align 8            ; 3 uses
  %i.od = and i64 %i.oc, 1152920405095219200
  %.not.i.i410 = icmp eq i64 %i.od, 1152920405095219200
  br i1 %.not.i.i410, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit411, label %bb.dj, !prof !49

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.oe = add i64 %i.oc, 1152920405095219200
  %i.of = and i64 %i.oe, 1152920405095219200      ; 2 uses
  %i.og = and i64 %i.oc, -1152920405095219201
  %i.oh = or disjoint i64 %i.of, %i.og
  store i64 %i.oh, ptr %i.ob, align 8
  %i.oi = icmp eq i64 %i.of, 0
  br i1 %i.oi, label %bb.dk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit411, !prof !49

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ob)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit411 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit411: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.ol = load ptr, ptr %21, align 8, !tbaa !36   ; 3 uses
  %i.om = load i64, ptr %i.ol, align 8            ; 3 uses
  %i.on = and i64 %i.om, 1152920405095219200
  %.not.i.i412 = icmp eq i64 %i.on, 1152920405095219200
  br i1 %.not.i.i412, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413, label %bb.dm, !prof !49

bb.dm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit411
  %i.oo = add i64 %i.om, 1152920405095219200
  %i.op = and i64 %i.oo, 1152920405095219200      ; 2 uses
  %i.oq = and i64 %i.om, -1152920405095219201
  %i.or = or disjoint i64 %i.op, %i.oq
  store i64 %i.or, ptr %i.ol, align 8
  %i.os = icmp eq i64 %i.op, 0
  br i1 %i.os, label %bb.dn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413, !prof !49

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ol)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ot = landingpad { ptr, i32 }
          catch ptr null
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  call void @__clang_call_terminate(ptr %i.ou) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit411, %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %.pre1734 = load ptr, ptr %20, align 8, !tbaa !36
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp:                               ; preds = %bb.dg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dp:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.dc, %bb.db, %bb.da
  %.sroa.14.014341493 = phi ptr [ %.sroa.14.01434, %bb.da ], [ %.sroa.14.01434, %bb.db ], [ %.sroa.14.01434, %bb.dc ], [ %.sroa.11.01435, %.loopexit ], [ %.sroa.11.01435, %.loopexit.split-lp ]
  %.pn198.pn = phi { ptr, i32 } [ %i.nf, %bb.da ], [ %i.ng, %bb.db ], [ %i.nh, %bb.dc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.cz
  %.sroa.14.014341492 = phi ptr [ %.sroa.14.014341493, %bb.dp ], [ %.sroa.14.01434, %bb.cz ]
  %.pn198.pn.pn = phi { ptr, i32 } [ %.pn198.pn, %bb.dp ], [ %i.ne, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #24
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.cy
  %.sroa.14.014341491 = phi ptr [ %.sroa.14.014341492, %bb.dq ], [ %.sroa.14.01434, %bb.cy ]
  %.pn198.pn.pn.pn = phi { ptr, i32 } [ %.pn198.pn.pn, %bb.dq ], [ %i.nd, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  br label %bb.dv

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %.critedge258, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413
  %i.ov = phi ptr [ %.pre1734, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ %i.je, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ %i.je, %.critedge258 ], [ %i.je, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ %.sroa.14.01434, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ %.sroa.14.01434, %.critedge258 ], [ %.sroa.14.01434, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ] ; 6 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ %.sroa.11.01435, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ %.sroa.11.01435, %.critedge258 ], [ %.sroa.11.01435, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ]
  %.sroa.01014.2 = phi ptr [ %.sroa.01014.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ %.sroa.01014.01436, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ %.sroa.01014.01436, %.critedge258 ], [ %.sroa.01014.01436, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ] ; 7 uses
  %.2169 = phi i1 [ %i.oa, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ false, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ false, %.critedge258 ], [ false, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ]
  %.5110 = phi i1 [ %.4109, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ %.01051437, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ %.01051437, %.critedge258 ], [ %.01051437, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ] ; 2 uses
  %.5 = phi i32 [ %.4, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit413 ], [ %.01021438, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt4pairIS3_S3_ESt4lessIS3_ESaIS4_IKS3_S5_EEE4findERS8_.exit ], [ %.01021438, %.critedge258 ], [ %.01021438, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S4_IS3_S3_EESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ]
  %i.ow = load i64, ptr %i.ov, align 8            ; 3 uses
  %i.ox = and i64 %i.ow, 1152920405095219200
  %.not.i.i432 = icmp eq i64 %i.ox, 1152920405095219200
  br i1 %.not.i.i432, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit433, label %bb.ds, !prof !49

bb.ds:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431
  %i.oy = add i64 %i.ow, 1152920405095219200
  %i.oz = and i64 %i.oy, 1152920405095219200      ; 2 uses
  %i.pa = and i64 %i.ow, -1152920405095219201
  %i.pb = or disjoint i64 %i.oz, %i.pa
  store i64 %i.pb, ptr %i.ov, align 8
  %i.pc = icmp eq i64 %i.oz, 0
  br i1 %i.pc, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit433, !prof !49

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit433 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit433: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit431, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br i1 %.2169, label %bb.bw, label %.loopexit1126

bb.dv:                                            ; preds = %bb.dr, %bb.ca
  %.sroa.14.014341490 = phi ptr [ %.sroa.14.014341491, %bb.dr ], [ %.sroa.14.01434, %bb.ca ]
  %.pn198.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn198.pn.pn.pn, %bb.dr ], [ %i.ju, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.ix

.thread1060:                                      ; preds = %bb.bw
  %.pre1735 = load ptr, ptr %i.j, align 8, !tbaa !57
  %.pre1736 = load ptr, ptr %15, align 8, !tbaa !56
  %.pre1739 = ptrtoint ptr %.pre1735 to i64
  %.pre1740 = ptrtoint ptr %.pre1736 to i64
  %.pre1742 = sub i64 %.pre1739, %.pre1740        ; 2 uses
  %41 = xor i1 %i.cl, %.5110                      ; 2 uses
  %i.pf = select i1 %41, i32 -1, i32 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.pg = and i64 %.pre1742, 34359738360
  %.not2121448.not = icmp eq i64 %i.pg, 0
  br i1 %.not2121448.not, label %.thread1108, label %.lr.ph1450.preheader

.lr.ph1450.preheader:                             ; preds = %.thread1060
  %.pre1744 = lshr exact i64 %.pre1742, 3
  %wide.trip.count1732 = and i64 %.pre1744, 4294967295
  br label %.lr.ph1450

.lr.ph1450:                                       ; preds = %.lr.ph1450.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit616
  %indvars.iv1729 = phi i64 [ 0, %.lr.ph1450.preheader ], [ %indvars.iv.next1730, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit616 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.ph = load ptr, ptr %15, align 8, !tbaa !56
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv1729
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !36 ; 5 uses
  store ptr %i.pj, ptr %24, align 8, !tbaa !36
  %i.pk = load i64, ptr %i.pj, align 8            ; 3 uses
  %i.pl = lshr i64 %i.pk, 40
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = and i32 %i.pm, 1048575                  ; 3 uses
  %i.po = icmp samesign ult i32 %i.pn, 1048574
  br i1 %i.po, label %bb.dw, label %bb.dx, !prof !50

bb.dw:                                            ; preds = %.lr.ph1450
  %i.pp = add nuw nsw i32 %i.pn, 1
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl nuw nsw i64 %i.pq, 40
  %i.ps = and i64 %i.pk, -1152920405095219201
  %i.pt = or i64 %i.pr, %i.ps
  store i64 %i.pt, ptr %i.pj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit441

bb.dx:                                            ; preds = %.lr.ph1450
  %i.pu = icmp eq i32 %i.pn, 1048574
  br i1 %i.pu, label %bb.dy, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit441, !prof !49

bb.dy:                                            ; preds = %bb.dx
  %i.pv = or i64 %i.pk, 1152920405095219200
  store i64 %i.pv, ptr %i.pj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit441 unwind label %bb.ef

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit441: ; preds = %bb.dx, %bb.dw, %bb.dy
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01029.2, i64 %indvars.iv1729
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !273 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.py = load ptr, ptr %18, align 8, !tbaa !56
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv1729
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !36 ; 14 uses
  store ptr %i.qa, ptr %25, align 8, !tbaa !36
  %i.qb = load i64, ptr %i.qa, align 8            ; 3 uses
  %i.qc = lshr i64 %i.qb, 40
  %i.qd = trunc nuw nsw i64 %i.qc to i32
  %i.qe = and i32 %i.qd, 1048575                  ; 3 uses
  %i.qf = icmp samesign ult i32 %i.qe, 1048574
  br i1 %i.qf, label %bb.dz, label %bb.ea, !prof !50

bb.dz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit441
  %i.qg = add nuw nsw i32 %i.qe, 1
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = shl nuw nsw i64 %i.qh, 40
  %i.qj = and i64 %i.qb, -1152920405095219201
  %i.qk = or i64 %i.qi, %i.qj
  store i64 %i.qk, ptr %i.qa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit443

bb.ea:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit441
  %i.ql = icmp eq i32 %i.qe, 1048574
  br i1 %i.ql, label %bb.eb, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit443, !prof !49

bb.eb:                                            ; preds = %bb.ea
  %i.qm = or i64 %i.qb, 1152920405095219200
  store i64 %i.qm, ptr %i.qa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit443 unwind label %bb.eg

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit443: ; preds = %bb.ea, %bb.dz, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.qn = load ptr, ptr %19, align 8, !tbaa !56
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv1729
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !36 ; 14 uses
  store ptr %i.qp, ptr %26, align 8, !tbaa !36
  %i.qq = load i64, ptr %i.qp, align 8            ; 3 uses
  %i.qr = lshr i64 %i.qq, 40
  %i.qs = trunc nuw nsw i64 %i.qr to i32
  %i.qt = and i32 %i.qs, 1048575                  ; 3 uses
  %i.qu = icmp samesign ult i32 %i.qt, 1048574
  br i1 %i.qu, label %bb.ec, label %bb.ed, !prof !50

bb.ec:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit443
  %i.qv = add nuw nsw i32 %i.qt, 1
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = shl nuw nsw i64 %i.qw, 40
  %i.qy = and i64 %i.qq, -1152920405095219201
  %i.qz = or i64 %i.qx, %i.qy
  store i64 %i.qz, ptr %i.qp, align 8
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508

bb.ed:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit443
  %i.ra = icmp eq i32 %i.qt, 1048574
  br i1 %i.ra, label %bb.ee, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508, !prof !49

bb.ee:                                            ; preds = %bb.ed
  %i.rb = or i64 %i.qq, 1152920405095219200
  store i64 %i.rb, ptr %i.qp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qp)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508 unwind label %bb.eh

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508: ; preds = %bb.ee, %bb.ec, %bb.ed
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01014.2, i64 %indvars.iv1729
  %i.rd = icmp eq ptr %i.qa, %i.qp
  br i1 %i.rd, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523, label %bb.ei

bb.ef:                                            ; preds = %bb.dy
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.eg:                                            ; preds = %bb.eb
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.eh:                                            ; preds = %bb.ee
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.ei:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508
  %i.rh = and i32 %i.px, 1
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %bb.ej, label %bb.ez

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.rj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.qa)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit525 unwind label %bb.et ; 4 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit525: ; preds = %bb.ej
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !89, !noalias !274
  %i.rm = icmp slt i32 %i.rl, 0
  br i1 %i.rm, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit525
  invoke void @_ZNK4cvc58internal8RationalngEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Rational") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %i.rj)
          to label %_ZNK4cvc58internal8Rational3absEv.exit unwind label %bb.et

bb.el:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit525
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.rj)
          to label %.noexc527 unwind label %bb.et

.noexc527:                                        ; preds = %bb.el
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.r, ptr noundef nonnull %i.rn)
          to label %.noexc528 unwind label %bb.et

.noexc528:                                        ; preds = %.noexc527
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZNK4cvc58internal8Rational3absEv.exit unwind label %bb.em

bb.em:                                            ; preds = %.noexc528
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %.body529 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rp = landingpad { ptr, i32 }
          catch ptr null
  %i.rq = extractvalue { ptr, i32 } %i.rp, 0
  call void @__clang_call_terminate(ptr %i.rq) #26
  unreachable

_ZNK4cvc58internal8Rational3absEv.exit:           ; preds = %.noexc528, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.rr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.qp)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit532 unwind label %bb.eu ; 4 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit532: ; preds = %_ZNK4cvc58internal8Rational3absEv.exit
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !89, !noalias !275
  %i.ru = icmp slt i32 %i.rt, 0
  br i1 %i.ru, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit532
  invoke void @_ZNK4cvc58internal8RationalngEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Rational") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %i.rr)
          to label %bb.es unwind label %bb.eu

bb.ep:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit532
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.rr)
          to label %.noexc535 unwind label %bb.eu

.noexc535:                                        ; preds = %bb.ep
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.s, ptr noundef nonnull %i.rv)
          to label %.noexc536 unwind label %bb.eu

.noexc536:                                        ; preds = %.noexc535
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.es unwind label %bb.eq

bb.eq:                                            ; preds = %.noexc536
  %i.rw = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %.body537 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rx = landingpad { ptr, i32 }
          catch ptr null
  %i.ry = extractvalue { ptr, i32 } %i.rx, 0
  call void @__clang_call_terminate(ptr %i.ry) #26
  unreachable

bb.es:                                            ; preds = %bb.eo, %.noexc536
  %i.rz = call i32 @__gmpq_equal(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28) #28
  %.not1123 = icmp eq i32 %i.rz, 0
  br i1 %.not1123, label %bb.ev, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit554

bb.et:                                            ; preds = %.noexc527, %bb.el, %bb.ek, %bb.ej
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %.body529

bb.eu:                                            ; preds = %.noexc535, %bb.ep, %bb.eo, %_ZNK4cvc58internal8Rational3absEv.exit
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body537

bb.ev:                                            ; preds = %bb.es
  %i.sc = call i32 @__gmpq_cmp(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %27) #28
  %42 = icmp slt i32 %i.sc, 0
  %i.sd = xor i1 %41, %42
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit554

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit554: ; preds = %bb.es, %bb.ev
  %.095 = phi i1 [ %i.sd, %bb.ev ], [ true, %bb.es ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZN4cvc58internal8RationalD2Ev.exit unwind label %bb.ew

bb.ew:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit554
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  call void @__clang_call_terminate(ptr %i.sf) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit554
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZN4cvc58internal8RationalD2Ev.exit555 unwind label %bb.ex

bb.ex:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  call void @__clang_call_terminate(ptr %i.sh) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit555:           ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523

.body537:                                         ; preds = %bb.eu, %bb.eq
  %.pn207.pn = phi { ptr, i32 } [ %i.rw, %bb.eq ], [ %i.sb, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %.body529 unwind label %bb.ey

bb.ey:                                            ; preds = %.body537
  %i.si = landingpad { ptr, i32 }
          catch ptr null
  %i.sj = extractvalue { ptr, i32 } %i.si, 0
  call void @__clang_call_terminate(ptr %i.sj) #26
  unreachable

.body529:                                         ; preds = %.body537, %bb.et, %bb.em
  %.pn207.pn.pn = phi { ptr, i32 } [ %i.ro, %bb.em ], [ %i.sa, %bb.et ], [ %.pn207.pn, %.body537 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.gm

bb.ez:                                            ; preds = %bb.ei
  %i.sk = load i32, ptr %i.rc, align 4, !tbaa !273 ; 2 uses
  %i.sl = icmp eq i32 %i.sk, 0
  %i.sm = icmp ne i32 %i.sk, %i.pf
  %spec.select = select i1 %i.sl, i1 %i.cl, i1 %i.sm
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523: ; preds = %bb.ez, %_ZN4cvc58internal8RationalD2Ev.exit555, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508
  %.2 = phi i1 [ true, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit508 ], [ %.095, %_ZN4cvc58internal8RationalD2Ev.exit555 ], [ %spec.select, %bb.ez ] ; 3 uses
  %i.sn = load ptr, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  %.not10.i.i.i573 = icmp eq ptr %i.sn, null
  br i1 %.not10.i.i.i573, label %.critedge.i, label %.lr.ph.i.i.i574

.lr.ph.i.i.i574:                                  ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523
  %i.so = load ptr, ptr %24, align 8, !tbaa !36
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = and i64 %i.sp, 1099511627775            ; 4 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.lr.ph.i.i.i574
  %.012.i.i.i575 = phi ptr [ %i.sn, %.lr.ph.i.i.i574 ], [ %.1.i.i.i580, %bb.fa ] ; 4 uses
  %.0811.i.i.i576 = phi ptr [ %i.b, %.lr.ph.i.i.i574 ], [ %.19.i.i.i577, %bb.fa ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.012.i.i.i575, i64 32
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !36
  %i.st = load i64, ptr %i.ss, align 8
  %i.su = and i64 %i.st, 1099511627775
  %i.sv = icmp samesign ult i64 %i.su, %i.sq      ; 3 uses
  %.19.i.i.i577 = select i1 %i.sv, ptr %.0811.i.i.i576, ptr %.012.i.i.i575 ; 3 uses
  %.1.in.v.i.i.i578 = select i1 %i.sv, i64 24, i64 16
  %.1.in.i.i.i579 = getelementptr inbounds nuw i8, ptr %.012.i.i.i575, i64 %.1.in.v.i.i.i578
  %.1.i.i.i580 = load ptr, ptr %.1.in.i.i.i579, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i581 = icmp eq ptr %.1.i.i.i580, null
  br i1 %.not.i.i.i581, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.fa, !llvm.loop !261

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.fa
  %i.sw = icmp eq ptr %.19.i.i.i577, %i.b
  br i1 %i.sw, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %.19.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.sv, ptr %.0811.i.i.i576, ptr %.012.i.i.i575
  %.19.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.sx = load ptr, ptr %.19.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !36
  %i.sy = load i64, ptr %i.sx, align 8
  %i.sz = and i64 %i.sy, 1099511627775
  %i.ta = icmp samesign ult i64 %i.sq, %i.sz
  br i1 %i.ta, label %.lr.ph.i.i.i.i.preheader, label %bb.fe

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.sn, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !36
  %i.td = load i64, ptr %i.tc, align 8
  %i.te = and i64 %i.td, 1099511627775
  %i.tf = icmp samesign ult i64 %i.te, %i.sq      ; 3 uses
  %.19.i.i.i.i = select i1 %i.tf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.tf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i584 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i584, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !261

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.tg = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.tg, label %.critedge.i, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.tf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.th = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !36
  %i.ti = load i64, ptr %i.th, align 8
  %i.tj = and i64 %i.ti, 1099511627775
  %i.tk = icmp samesign ult i64 %i.sq, %i.tj
  br i1 %i.tk, label %.critedge.i, label %bb.fc

.critedge.i:                                      ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523, %bb.fb, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.fb ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i ], [ %i.b, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit523 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %24, ptr %10, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.tl = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc585 unwind label %bb.fd

.noexc585:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.fc

bb.fc:                                            ; preds = %.noexc585, %bb.fb
  %.sroa.06.0.i = phi ptr [ %i.tl, %.noexc585 ], [ %.19.i.i.i.i, %bb.fb ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.tn = zext i1 %.2 to i8
  store i8 %i.tn, ptr %i.tm, align 1, !tbaa !48
  br label %bb.fo

bb.fd:                                            ; preds = %.critedge.i
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.fe:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit
  %i.tp = getelementptr inbounds nuw i8, ptr %.19.i.i.i577, i64 40
  %i.tq = load i8, ptr %i.tp, align 8, !tbaa !123, !range !104, !noundef !105
  %i.tr = zext i1 %.2 to i8
  %.not211 = icmp eq i8 %i.tq, %i.tr
  br i1 %.not211, label %bb.fo, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit600

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit600: ; preds = %bb.fe
  %i.ts = load i64, ptr %i.qp, align 8            ; 3 uses
  %i.tt = and i64 %i.ts, 1152920405095219200
  %.not.i.i601 = icmp eq i64 %i.tt, 1152920405095219200
  br i1 %.not.i.i601, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, label %bb.ff, !prof !49

bb.ff:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit600
  %i.tu = add i64 %i.ts, 1152920405095219200
  %i.tv = and i64 %i.tu, 1152920405095219200      ; 2 uses
  %i.tw = and i64 %i.ts, -1152920405095219201
  %i.tx = or disjoint i64 %i.tv, %i.tw
  store i64 %i.tx, ptr %i.qp, align 8
  %i.ty = icmp eq i64 %i.tv, 0
  br i1 %i.ty, label %bb.fg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, !prof !49

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.tz = landingpad { ptr, i32 }
          catch ptr null
  %i.ua = extractvalue { ptr, i32 } %i.tz, 0
  call void @__clang_call_terminate(ptr %i.ua) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit600, %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.ub = load i64, ptr %i.qa, align 8            ; 3 uses
  %i.uc = and i64 %i.ub, 1152920405095219200
  %.not.i.i603 = icmp eq i64 %i.uc, 1152920405095219200
  br i1 %.not.i.i603, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, label %bb.fi, !prof !49

bb.fi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602
  %i.ud = add i64 %i.ub, 1152920405095219200
  %i.ue = and i64 %i.ud, 1152920405095219200      ; 2 uses
  %i.uf = and i64 %i.ub, -1152920405095219201
  %i.ug = or disjoint i64 %i.ue, %i.uf
  store i64 %i.ug, ptr %i.qa, align 8
  %i.uh = icmp eq i64 %i.ue, 0
  br i1 %i.uh, label %bb.fj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, !prof !49

end_hunk_0
