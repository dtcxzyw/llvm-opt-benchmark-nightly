Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1860
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN13sentencepiece7unigram7Lattice5NBestEmbf:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false)
  store i64 512, ptr %i.an, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ao = invoke fastcc noundef ptr @_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEE8AllocateEv(ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.m unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit359.thread ; 6 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ay, -1
  %.sroa.speculated.i.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.ba = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !59
  store ptr %i.be, ptr %i.ao, align 8, !tbaa !369
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !370
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !371
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !72
  %i.bl = mul i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !73
  %i.bo = add i64 %i.bl, %i.bn                    ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, 2305843009213693951
  br i1 %i.bp, label %bb.n, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #33
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i192 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i192, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bq = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #32
          to label %.noexc193 unwind label %bb.t  ; 3 uses

.noexc193:                                        ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bq, i1 false), !tbaa !98
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc193, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14444.3 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bs, %.noexc193 ] ; 4 uses
  %.sroa.0438.3 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.br, %.noexc193 ] ; 6 uses
  br i1 %3, label %bb.p, label %bb.v

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZNK13sentencepiece7unigram7Lattice16ForwardAlgorithmEf(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.17") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %1, float noundef %4)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %14, align 8, !tbaa !96   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0438.3, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = ptrtoint ptr %.sroa.14444.3 to i64
  %i.bx = ptrtoint ptr %.sroa.0438.3 to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.3, i64 noundef %i.by) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.bz = invoke noundef ptr @_ZN13sentencepiece6random18GetRandomGeneratorEv()
          to label %.noexc194 unwind label %.loopexit.split-lp531.loopexit.split-lp

.noexc194:                                        ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !98
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !98
  %i.ca = invoke noundef float @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIfEEJRfS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %bb.s unwind label %.loopexit.split-lp531.loopexit.split-lp

bb.s:                                             ; preds = %.noexc194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cb = fadd float %i.ca, 1.000000e-07
  %i.cc = call noundef float @logf(float noundef %i.cb) #31
  %i.cd = fneg float %i.cc
  %i.ce = call noundef float @logf(float noundef %i.cd) #31
  %i.cf = fneg float %i.ce
  br label %bb.y

_ZNSt6vectorIfSaIfEED2Ev.exit359.thread:          ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorED2Ev.exit361

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit359

bb.u:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit334

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  invoke void @_ZN13sentencepiece7unigram7Lattice7ViterbiEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %15, ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.w unwind label %.loopexit.split-lp531.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr %15, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i196 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i196, label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #30
  br label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197

_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197: ; preds = %bb.w, %bb.x
  %i.cp = load ptr, ptr %i.ao, align 8, !tbaa !369
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197, %bb.s
  %.sink1469 = phi float [ %i.cr, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197 ], [ %i.cf, %bb.s ]
  %.sroa.14444.0 = phi ptr [ %.sroa.14444.3, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197 ], [ %i.bv, %bb.s ] ; 6 uses
  %.sroa.0438.0 = phi ptr [ %.sroa.0438.3, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit197 ], [ %i.bt, %bb.s ] ; 10 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store float %.sink1469, ptr %i.cs, align 8, !tbaa !114
  invoke fastcc void @_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorE4pushERKS4_(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr nonnull %i.ao)
          to label %.preheader548 unwind label %.loopexit.split-lp531.loopexit.split-lp

.preheader548:                                    ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %.val174818 = load ptr, ptr %12, align 16, !tbaa !116 ; 2 uses
  %.val175819 = load ptr, ptr %i.ct, align 8, !tbaa !116 ; 2 uses
  %i.cu = icmp eq ptr %.val174818, %.val175819
  br i1 %i.cu, label %_ZNSt6vectorIfSaIfEED2Ev.exit328.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader548
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.da = icmp sgt i32 %i.ak, 0
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.212.0..sroa_idx.i.i256 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = zext nneg i32 %i.ak to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.dh = mul i64 %2, 10                          ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.dh, i64 512) ; 2 uses
  %.not827 = icmp eq i64 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %.phi.trans.insert.i363 = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %umax1039 = call i64 @llvm.umax.i64(i64 %.sroa.speculated, i64 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph825, %.backedge
  %.val175824 = phi ptr [ %.val175819, %.lr.ph825 ], [ %.val175, %.backedge ] ; 3 uses
  %.promoted789 = phi ptr [ %.val174818, %.lr.ph825 ], [ %.val174, %.backedge ] ; 13 uses
  %.0124821 = phi i32 [ 0, %.lr.ph825 ], [ %.31271124, %.backedge ] ; 4 uses
  %.0128820 = phi i1 [ false, %.lr.ph825 ], [ %.21301123, %.backedge ] ; 3 uses
  %i.ds = load ptr, ptr %.promoted789, align 8, !tbaa !117 ; 8 uses
  %i.dt = ptrtoint ptr %.val175824 to i64
  %i.du = ptrtoint ptr %.promoted789 to i64       ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp sgt i64 %i.dv, 8
  br i1 %i.dw, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds i8, ptr %.val175824, i64 -8 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !117 ; 2 uses
  store ptr %i.ds, ptr %i.dx, align 8, !tbaa !117
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dz, %i.du                    ; 2 uses
  %i.eb = ashr exact i64 %i.ea, 3                 ; 3 uses
  %i.ec = add nsw i64 %i.eb, -1
  %i.ed = lshr i64 %i.ec, 1
  %i.ee = icmp sgt i64 %i.eb, 2
  br i1 %i.ee, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.ef = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.eg = add i64 %i.ef, 2                        ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %.promoted789, i64 %i.eg
  %i.ei = or disjoint i64 %i.ef, 1                ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %.promoted789, i64 %i.ei
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !117
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !117
  %i.em = getelementptr i8, ptr %i.ek, i64 16
  %.val2.i.i.i.i.i = load float, ptr %i.em, align 8, !tbaa !114
  %i.en = getelementptr i8, ptr %i.el, i64 16
  %.val3.i.i.i.i.i = load float, ptr %i.en, align 8, !tbaa !114
  %i.eo = fcmp olt float %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.eo, i64 %i.ei, i64 %i.eg ; 4 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %.promoted789, i64 %spec.select.i.i.i.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !117
  %i.er = getelementptr inbounds [8 x i8], ptr %.promoted789, i64 %.038.i.i.i.i
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !117
  %i.es = icmp slt i64 %spec.select.i.i.i.i, %i.ed
  br i1 %i.es, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !322

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.aa
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.et = and i64 %i.ea, 8
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ev = add nsw i64 %i.eb, -2
  %i.ew = ashr exact i64 %i.ev, 1
  %i.ex = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ew
  br i1 %i.ex, label %.thread.i.i.i, label %bb.ac

.thread.i.i.i:                                    ; preds = %bb.ab
  %i.ey = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ez = or disjoint i64 %i.ey, 1                ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.promoted789, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !117
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.promoted789, i64 %.0.lcssa.i.i.i.i
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i
  %.not.i.i.i198 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i198, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.ez, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.ac ]
  %i.fd = getelementptr i8, ptr %i.dy, i64 16
  %.val16.val.i.i.i.i.i = load float, ptr %i.fd, align 8, !tbaa !114
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.ae ] ; 4 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.promoted789, i64 %.097.i.i.i.i.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !117 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  %.val2.i.i.i.i.i.i = load float, ptr %i.fg, align 8, !tbaa !114
  %i.fh = fcmp olt float %.val2.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.fh, label %bb.ae, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.promoted789, i64 %.06.i.i.i.i.i
  store ptr %i.ff, ptr %i.fi, align 8, !tbaa !117
  %i.fj = icmp sgt i64 %.06.i.i.i.i.i, 2
  br i1 %i.fj, label %bb.ad, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i, !llvm.loop !3

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.06.i.i.i.i.i, %bb.ad ], [ %.097.i.i.i.i.i, %bb.ae ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %.promoted789, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.dy, ptr %i.fk, align 8, !tbaa !117
  br label %bb.af

bb.af:                                            ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i, %bb.z
  %i.fl = getelementptr inbounds i8, ptr %.val175824, i64 -8 ; 3 uses
  store ptr %i.fl, ptr %i.ct, align 8, !tbaa !119
  %i.fm = load ptr, ptr %i.ds, align 8, !tbaa !369 ; 3 uses
  %i.fn = load ptr, ptr %i.cv, align 8, !tbaa !47 ; 4 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !52
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !59
  %i.fq = icmp eq ptr %i.fm, %i.fp
  br i1 %i.fq, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.fr = load ptr, ptr %i.dq, align 8, !tbaa !104 ; 2 uses
  %i.fs = load ptr, ptr %13, align 16, !tbaa !102 ; 3 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %.not523 = icmp eq i64 %i.fv, -32
  br i1 %.not523, label %.lr.ph.i.i.i.i199, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef 1)
          to label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit unwind label %.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i.i.i199:                                ; preds = %bb.ag, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gc, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i.i ], [ %i.fs, %bb.ag ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i200 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i200, label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i199
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !53
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #30
  br label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i199
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.gc, %i.fr
  br i1 %.not.i.i.i.i201, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i199, !llvm.loop !4

_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i.i
  store ptr %i.fs, ptr %i.dq, align 8, !tbaa !104
  br label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit

_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0131813 = load ptr, ptr %i.gd, align 8, !tbaa !370 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0131813, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !370 ; 2 uses
  %.not163814 = icmp eq ptr %i.gf, null
  br i1 %.not163814, label %._crit_edge817, label %.lr.ph816

._crit_edge817:                                   ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !114
  %i.gi = load ptr, ptr %i.dq, align 8, !tbaa !120 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -8
  store float %i.gh, ptr %i.gj, align 8, !tbaa !93
  %i.gk = load ptr, ptr %13, align 16, !tbaa !102
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 5
  %i.gp = icmp eq i64 %i.go, %2
  br i1 %i.gp, label %_ZNSt6vectorIfSaIfEED2Ev.exit328.thread, label %.backedge

.lr.ph816:                                        ; preds = %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit
  %.01311063 = phi ptr [ %i.hr, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ %i.gf, %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit ]
  %i.gq = phi ptr [ %i.hq, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ %i.ge, %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit ]
  %.0131815 = phi ptr [ %.0131, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ %.0131813, %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE6resizeEm.exit ] ; 2 uses
  %i.gr = load ptr, ptr %i.dq, align 8, !tbaa !120 ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -32 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -24 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !83 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 -16 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !53
  %.not.i = icmp eq ptr %i.gu, %i.gw
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph816
  %i.gx = load ptr, ptr %.0131815, align 8, !tbaa !59
  store ptr %i.gx, ptr %i.gu, align 8, !tbaa !59
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gy, ptr %i.gt, align 8, !tbaa !83
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit

bb.ak:                                            ; preds = %.lr.ph816
  %i.gz = load ptr, ptr %i.gs, align 8, !tbaa !52 ; 4 uses
  %i.ha = ptrtoint ptr %i.gu to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 6 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775800
  br i1 %i.hd, label %bb.al, label %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN13sentencepiece7unigram7Lattice5NBestEmbf:bb.a
  %i.xz = lshr i64 %i.xw, 57
  %i.ya = trunc nuw nsw i64 %i.xz to i8
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !80, !noalias !393 ; 2 uses
  %i.yb = insertelement <16 x i8> poison, i8 %i.ya, i64 0
  %i.yc = shufflevector <16 x i8> %i.yb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dq, %bb.do
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xx, %bb.do ], [ %i.yz, %bb.dq ]
  %.sroa.14.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.do ], [ %i.yy, %bb.dq ] ; 2 uses
  %.sroa.642.0.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.xy ; 5 uses
  %i.yd = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.yd, i32 0, i32 3, i32 1), !noalias !393
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i
  %i.yf = load <16 x i8>, ptr %i.ye, align 1, !tbaa !80, !noalias !393 ; 2 uses
  %i.yg = icmp eq <16 x i8> %i.yc, %i.yf
  %i.yh = bitcast <16 x i1> %i.yg to i16
  %i.yi = zext i16 %i.yh to i32
  %i.yj = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.yi) #26, !srcloc !131 ; 2 uses
  %.not70.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yj, 0
  br i1 %.not70.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.dp, %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.071.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yr, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yj, %bb.dp ] ; 3 uses
  %i.yk = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = add nuw i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i, %i.yl
  %i.yn = and i64 %i.ym, %i.xy
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.yn
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.yo, align 8, !tbaa !117, !noalias !393
  %i.yp = icmp eq ptr %.val5.i.i.i.i.i.i.i.i.i.i, %.02040.i
  br i1 %i.yp, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !prof !132

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.yq = add i32 %.sroa.027.071.i.i.i.i.i.i.i.i.i.i, -1
  %i.yr = and i32 %i.yq, %.sroa.027.071.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.dp
  %i.ys = icmp eq <16 x i8> %i.yf, splat (i8 -128)
  %i.yt = bitcast <16 x i1> %i.ys to i16
  %i.yu = zext i16 %i.yt to i32
  %i.yv = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.yu) #26, !srcloc !131 ; 2 uses
  %.not64.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yv, 0
  br i1 %.not64.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i, !prof !88

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.yw = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.xx, i32 %i.yv, i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.14.0.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc300 unwind label %.loopexit524

.noexc300:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i
  %.val.i.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !80, !noalias !393
  %i.yx = getelementptr inbounds nuw [16 x i8], ptr %.val.i.pre.i.i.i.i.i.i.i.i.i.i, i64 %i.yw
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.yy = add i64 %.sroa.14.0.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.yz = add i64 %i.yy, %.sroa.642.0.i.i.i.i.i.i.i.i.i.i
  br label %bb.dp

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %bb.dr

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.noexc300, %.noexc299, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i5.i.i.i.i.i.i.i.i = phi ptr [ %i.yx, %.noexc300 ], [ %i.di, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.xm, %.noexc299 ] ; 2 uses
  %.val7.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !117, !noalias !394
  store ptr %.val7.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink.i5.i.i.i.i.i.i.i.i, align 8, !tbaa !388, !noalias !394
  %i.za = getelementptr inbounds nuw i8, ptr %.sink.i5.i.i.i.i.i.i.i.i, i64 8
  %i.zb = load ptr, ptr %i.dk, align 8, !tbaa !117, !noalias !394
  store ptr %i.zb, ptr %i.za, align 8, !tbaa !389, !noalias !394
  %.val.i.i293.pre = load i64, ptr %21, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, %bb.dm
  %.val.i.i2931045 = phi i64 [ %.val.i.i293.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.zc = getelementptr inbounds nuw i8, ptr %.02040.i, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !370 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %.not.i296 = icmp eq ptr %i.zd, null
  br i1 %.not.i296, label %.loopexit528, label %bb.cx

.loopexit528:                                     ; preds = %bb.dr
  store ptr %.val.i366802, ptr %i.df, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit528, %.thread.i, %.lr.ph811
  %i.zf = phi ptr [ %i.xc, %.loopexit528 ], [ %i.tt, %.thread.i ], [ %i.tq, %.lr.ph811 ] ; 2 uses
  %.val3.i3671053 = phi ptr [ %.val3.i3671055, %.loopexit528 ], [ %.val3.i367, %.thread.i ], [ %.val3.i3671052.a, %.lr.ph811 ] ; 2 uses
  %.pre.i3641047 = phi i64 [ %.pre.i3641049, %.loopexit528 ], [ %.pre.i364, %.thread.i ], [ %.pre.i3641046.a, %.lr.ph811 ]
  %i.zg = phi i64 [ %i.xg, %.loopexit528 ], [ %i.tu, %.thread.i ], [ %i.tr, %.lr.ph811 ]
  %.promoted8011041 = phi ptr [ %.val.i366802, %.loopexit528 ], [ %.val.i366803, %.thread.i ], [ %.promoted801, %.lr.ph811 ] ; 2 uses
  %.0..0..0..0..0..0..i = load ptr, ptr %i.a, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorE4pushERKS4_(ptr noundef nonnull align 8 dereferenceable(25) %19, ptr %.0..0..0..0..0..0..i)
          to label %bb.dt unwind label %.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  %.val.i302 = load ptr, ptr %i.ct, align 8, !tbaa !116 ; 3 uses
  %i.zh = ptrtoint ptr %.val.i302 to i64
  %i.zi = ptrtoint ptr %.val176 to i64            ; 2 uses
  %i.zj = sub i64 %i.zh, %i.zi
  %i.zk = icmp sgt i64 %i.zj, 8
  br i1 %i.zk, label %bb.du, label %bb.dz

bb.du:                                            ; preds = %bb.dt
  %i.zl = getelementptr inbounds i8, ptr %.val.i302, i64 -8 ; 3 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !117 ; 2 uses
  %i.zn = load ptr, ptr %.val176, align 8, !tbaa !117
  store ptr %i.zn, ptr %i.zl, align 8, !tbaa !117
  %i.zo = ptrtoint ptr %i.zl to i64
  %i.zp = sub i64 %i.zo, %i.zi                    ; 2 uses
  %i.zq = ashr exact i64 %i.zp, 3                 ; 3 uses
  %i.zr = add nsw i64 %i.zq, -1
  %i.zs = lshr i64 %i.zr, 1
  %i.zt = icmp sgt i64 %i.zq, 2
  br i1 %i.zt, label %.lr.ph.i.i.i.i316, label %._crit_edge.i.i.i.i303

.lr.ph.i.i.i.i316:                                ; preds = %bb.du, %.lr.ph.i.i.i.i316
  %.038.i.i.i.i317 = phi i64 [ %spec.select.i.i.i.i320, %.lr.ph.i.i.i.i316 ], [ 0, %bb.du ] ; 2 uses
  %i.zu = shl i64 %.038.i.i.i.i317, 1             ; 2 uses
  %i.zv = add i64 %i.zu, 2                        ; 2 uses
  %i.zw = getelementptr inbounds [8 x i8], ptr %.val176, i64 %i.zv
  %i.zx = or disjoint i64 %i.zu, 1                ; 2 uses
  %i.zy = getelementptr inbounds [8 x i8], ptr %.val176, i64 %i.zx
  %i.zz = load ptr, ptr %i.zw, align 8, !tbaa !117
  %i.aaa = load ptr, ptr %i.zy, align 8, !tbaa !117
  %i.aab = getelementptr i8, ptr %i.zz, i64 16
  %.val2.i.i.i.i.i318 = load float, ptr %i.aab, align 8, !tbaa !114
  %i.aac = getelementptr i8, ptr %i.aaa, i64 16
  %.val3.i.i.i.i.i319 = load float, ptr %i.aac, align 8, !tbaa !114
  %i.aad = fcmp olt float %.val2.i.i.i.i.i318, %.val3.i.i.i.i.i319
  %spec.select.i.i.i.i320 = select i1 %i.aad, i64 %i.zx, i64 %i.zv ; 4 uses
  %i.aae = getelementptr inbounds [8 x i8], ptr %.val176, i64 %spec.select.i.i.i.i320
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !117
  %i.aag = getelementptr inbounds [8 x i8], ptr %.val176, i64 %.038.i.i.i.i317
  store ptr %i.aaf, ptr %i.aag, align 8, !tbaa !117
  %i.aah = icmp slt i64 %spec.select.i.i.i.i320, %i.zs
  br i1 %i.aah, label %.lr.ph.i.i.i.i316, label %._crit_edge.i.i.i.i303, !llvm.loop !322

._crit_edge.i.i.i.i303:                           ; preds = %.lr.ph.i.i.i.i316, %bb.du
  %.0.lcssa.i.i.i.i304 = phi i64 [ 0, %bb.du ], [ %spec.select.i.i.i.i320, %.lr.ph.i.i.i.i316 ] ; 5 uses
  %i.aai = and i64 %i.zp, 8
  %i.aaj = icmp eq i64 %i.aai, 0
  br i1 %i.aaj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i303
  %i.aak = add nsw i64 %i.zq, -2
  %i.aal = ashr exact i64 %i.aak, 1
  %i.aam = icmp eq i64 %.0.lcssa.i.i.i.i304, %i.aal
  br i1 %i.aam, label %.thread.i.i.i315, label %bb.dw

.thread.i.i.i315:                                 ; preds = %bb.dv
  %i.aan = shl nuw nsw i64 %.0.lcssa.i.i.i.i304, 1
  %i.aao = or disjoint i64 %i.aan, 1              ; 2 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %.val176, i64 %i.aao
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !117
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %.val176, i64 %.0.lcssa.i.i.i.i304
  store ptr %i.aaq, ptr %i.aar, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i.i306

bb.dw:                                            ; preds = %bb.dv, %._crit_edge.i.i.i.i303
  %.not.i.i.i305 = icmp eq i64 %.0.lcssa.i.i.i.i304, 0
  br i1 %.not.i.i.i305, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i313, label %.lr.ph.i.i.i.i.i306

.lr.ph.i.i.i.i.i306:                              ; preds = %bb.dw, %.thread.i.i.i315
  %.1.i4.i.i.i307 = phi i64 [ %i.aao, %.thread.i.i.i315 ], [ %.0.lcssa.i.i.i.i304, %bb.dw ]
  %i.aas = getelementptr i8, ptr %i.zm, i64 16
  %.val16.val.i.i.i.i.i308 = load float, ptr %i.aas, align 8, !tbaa !114
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %.lr.ph.i.i.i.i.i306
  %.06.i.i.i.i.i309 = phi i64 [ %.1.i4.i.i.i307, %.lr.ph.i.i.i.i.i306 ], [ %.097.i.i.i.i.i311, %bb.dy ] ; 4 uses
  %.097.in.i.i.i.i.i310 = add nsw i64 %.06.i.i.i.i.i309, -1
  %.097.i.i.i.i.i311 = sdiv i64 %.097.in.i.i.i.i.i310, 2 ; 3 uses
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.val176, i64 %.097.i.i.i.i.i311
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !117 ; 2 uses
  %i.aav = getelementptr i8, ptr %i.aau, i64 16
  %.val2.i.i.i.i.i.i312 = load float, ptr %i.aav, align 8, !tbaa !114
  %i.aaw = fcmp olt float %.val2.i.i.i.i.i.i312, %.val16.val.i.i.i.i.i308
  br i1 %i.aaw, label %bb.dy, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i313

bb.dy:                                            ; preds = %bb.dx
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %.val176, i64 %.06.i.i.i.i.i309
  store ptr %i.aau, ptr %i.aax, align 8, !tbaa !117
  %i.aay = icmp sgt i64 %.06.i.i.i.i.i309, 2
  br i1 %i.aay, label %bb.dx, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i313, !llvm.loop !3

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i313: ; preds = %bb.dy, %bb.dx, %bb.dw
  %.0.lcssa.i.i.i.i.i314 = phi i64 [ 0, %bb.dw ], [ %.06.i.i.i.i.i309, %bb.dx ], [ %.097.i.i.i.i.i311, %bb.dy ]
  %i.aaz = getelementptr inbounds [8 x i8], ptr %.val176, i64 %.0.lcssa.i.i.i.i.i314
  store ptr %i.zm, ptr %i.aaz, align 8, !tbaa !117
  br label %bb.dz

bb.dz:                                            ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Lattice5NBestEmbfE20HypothesisComparatorEEEvT_SH_SH_RT0_.exit.i.i313, %bb.dt
  %i.aba = getelementptr inbounds i8, ptr %.val.i302, i64 -8
  store ptr %i.aba, ptr %i.ct, align 8, !tbaa !119
  %i.abb = add nuw nsw i64 %.0810, 1              ; 2 uses
  %exitcond1040.not = icmp eq i64 %i.abb, %umax1039
  br i1 %exitcond1040.not, label %._crit_edge812.loopexit, label %.lr.ph811, !llvm.loop !367

.loopexit524:                                     ; preds = %bb.dn, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i, %bb.dg
  %.val.i366804 = phi ptr [ %.val.i366802, %bb.dn ], [ %.val.i366802, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i ], [ %.val.i366803, %bb.dg ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.val.i366804, ptr %i.df, align 8
  br label %.body391

.loopexit.split-lp:                               ; preds = %bb.ds
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body391

.body391:                                         ; preds = %.loopexit524, %.loopexit.split-lp, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374, %bb.cw
  %.pn154 = phi { ptr, i32 } [ %.pn152, %bb.cw ], [ %lpad.phi527, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374 ], [ %lpad.loopexit, %.loopexit524 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %.val186 = load ptr, ptr %19, align 16          ; 3 uses
  %.not.i.i.i.i322 = icmp eq ptr %.val186, null
  br i1 %.not.i.i.i.i322, label %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorED2Ev.exit323, label %bb.ea

bb.ea:                                            ; preds = %.body391
  %.val187 = load ptr, ptr %i.dp, align 16
  %i.abc = ptrtoint ptr %.val187 to i64
  %i.abd = ptrtoint ptr %.val186 to i64
  %i.abe = sub i64 %i.abc, %i.abd
  call void @_ZdlPvm(ptr noundef nonnull %.val186, i64 noundef %i.abe) #30
  br label %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorED2Ev.exit323

_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorED2Ev.exit323: ; preds = %.body391, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %.body241

bb.eb:                                            ; preds = %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit270, %bb.bu, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev.exit
  %cond = phi i1 [ false, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit270 ], [ true, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev.exit ], [ true, %bb.bu ]
  %.2126 = phi i32 [ %.0124821, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit270 ], [ %i.sb, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev.exit ], [ %.0124821, %bb.bu ]
  %.not.i.i.i324 = icmp eq ptr %.sroa.0410.01165, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.abf = ptrtoint ptr %.sroa.13.01172 to i64
  %i.abg = ptrtoint ptr %.sroa.0410.01165 to i64
  %i.abh = sub i64 %i.abf, %i.abg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.01165, i64 noundef %i.abh) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.eb, %bb.ec
  %.not.i.i.i325 = icmp eq ptr %.sroa.0418.04961133, null
  br i1 %.not.i.i.i325, label %_ZNSt6vectorIfSaIfEED2Ev.exit326, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.abi = ptrtoint ptr %.sroa.14.04891140 to i64
  %i.abj = ptrtoint ptr %.sroa.0418.04961133 to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0418.04961133, i64 noundef %i.abk) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit326

_ZNSt6vectorIfSaIfEED2Ev.exit326:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ed
  %.not.i.i.i327 = icmp eq ptr %.sroa.0429.04684741157, null
  br i1 %.not.i.i.i327, label %_ZNSt6vectorIfSaIfEED2Ev.exit328, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit326
  %i.abl = ptrtoint ptr %.sroa.12.04604791148 to i64
  %i.abm = ptrtoint ptr %.sroa.0429.04684741157 to i64
  %i.abn = sub i64 %i.abl, %i.abm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0429.04684741157, i64 noundef %i.abn) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit328

_ZNSt6vectorIfSaIfEED2Ev.exit328:                 ; preds = %bb.ee, %_ZNSt6vectorIfSaIfEED2Ev.exit326
  br i1 %cond, label %.backedge, label %.loopexit560

.backedge:                                        ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit328, %._crit_edge817
  %.31271124 = phi i32 [ %.0124821, %._crit_edge817 ], [ %.2126, %_ZNSt6vectorIfSaIfEED2Ev.exit328 ]
  %.21301123 = phi i1 [ %.0128820, %._crit_edge817 ], [ %.1129, %_ZNSt6vectorIfSaIfEED2Ev.exit328 ]
  %.val174 = load ptr, ptr %12, align 16, !tbaa !116 ; 2 uses
  %.val175 = load ptr, ptr %i.ct, align 8, !tbaa !116 ; 2 uses
  %i.abo = icmp eq ptr %.val174, %.val175
  br i1 %i.abo, label %_ZNSt6vectorIfSaIfEED2Ev.exit328.thread, label %bb.z, !llvm.loop !368

.body241:                                         ; preds = %.loopexit535, %.loopexit.split-lp536.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i, %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorED2Ev.exit323, %.loopexit, %bb.cj, %bb.bt
  %.pn158 = phi { ptr, i32 } [ %lpad.phi542, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i ], [ %.pn147, %bb.cj ], [ %.pn145, %bb.bt ], [ %.pn154, %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorED2Ev.exit323 ], [ %.pn149, %.loopexit ], [ %lpad.loopexit537, %.loopexit535 ], [ %lpad.loopexit.split-lp1763, %.loopexit.split-lp536.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i329 = icmp eq ptr %.sroa.0410.01165, null
  br i1 %.not.i.i.i329, label %_ZNSt6vectorIdSaIdEED2Ev.exit330, label %bb.ef

bb.ef:                                            ; preds = %.body241.thread, %.body241
  %.pn1581226.a = phi { ptr, i32 } [ %lpad.loopexit545, %.body241.thread ], [ %.pn158, %.body241 ]
  %.sroa.0418.049611341224 = phi ptr [ %i.ii, %.body241.thread ], [ %.sroa.0418.04961133, %.body241 ]
  %.sroa.14.048911421222 = phi ptr [ %i.ij, %.body241.thread ], [ %.sroa.14.04891140, %.body241 ]
  %.sroa.12.046047911501220 = phi ptr [ %i.ih, %.body241.thread ], [ %.sroa.12.04604791148, %.body241 ]
  %.sroa.0429.046847411581218 = phi ptr [ %i.if, %.body241.thread ], [ %.sroa.0429.04684741157, %.body241 ]
  %.sroa.0410.011661217 = phi ptr [ %i.ik, %.body241.thread ], [ %.sroa.0410.01165, %.body241 ] ; 2 uses
  %.sroa.13.011741216 = phi ptr [ %i.ip, %.body241.thread ], [ %.sroa.13.01172, %.body241 ]
  %i.abp = ptrtoint ptr %.sroa.13.011741216 to i64
  %i.abq = ptrtoint ptr %.sroa.0410.011661217 to i64
  %i.abr = sub i64 %i.abp, %i.abq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.011661217, i64 noundef %i.abr) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit330

_ZNSt6vectorIdSaIdEED2Ev.exit330:                 ; preds = %bb.ef, %.body241
  %.pn1581227 = phi { ptr, i32 } [ %.pn1581226.a, %bb.ef ], [ %.pn158, %.body241 ] ; 2 uses
  %.sroa.0418.049611341225 = phi ptr [ %.sroa.0418.049611341224, %bb.ef ], [ %.sroa.0418.04961133, %.body241 ] ; 2 uses
  %.sroa.14.048911421223 = phi ptr [ %.sroa.14.048911421222, %bb.ef ], [ %.sroa.14.04891140, %.body241 ]
  %.sroa.12.046047911501221 = phi ptr [ %.sroa.12.046047911501220, %bb.ef ], [ %.sroa.12.04604791148, %.body241 ] ; 2 uses
  %.sroa.0429.046847411581219 = phi ptr [ %.sroa.0429.046847411581218, %bb.ef ], [ %.sroa.0429.04684741157, %.body241 ] ; 2 uses
  %.not.i.i.i331 = icmp eq ptr %.sroa.0418.049611341225, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorIfSaIfEED2Ev.exit332, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit330
  %.pn158.pn513 = phi { ptr, i32 } [ %i.ja, %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread ], [ %.pn1581227, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ]
  %.sroa.12.0455511 = phi ptr [ %i.ih, %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread ], [ %.sroa.12.046047911501221, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ]
  %.sroa.0429.0463509 = phi ptr [ %i.if, %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread ], [ %.sroa.0429.046847411581219, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ]
  %.sroa.14.0484508 = phi ptr [ %i.ij, %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread ], [ %.sroa.14.048911421223, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ]
  %.sroa.0418.0491507 = phi ptr [ %i.ii, %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread ], [ %.sroa.0418.049611341225, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ] ; 2 uses
  %i.abs = ptrtoint ptr %.sroa.14.0484508 to i64
  %i.abt = ptrtoint ptr %.sroa.0418.0491507 to i64
  %i.abu = sub i64 %i.abs, %i.abt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0418.0491507, i64 noundef %i.abu) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit332

_ZNSt6vectorIfSaIfEED2Ev.exit332:                 ; preds = %bb.eg, %_ZNSt6vectorIdSaIdEED2Ev.exit330
  %.sroa.0429.0462 = phi ptr [ %.sroa.0429.0463509, %bb.eg ], [ %.sroa.0429.046847411581219, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ] ; 2 uses
  %.sroa.12.0454 = phi ptr [ %.sroa.12.0455511, %bb.eg ], [ %.sroa.12.046047911501221, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ]
  %.pn158.pn.pn = phi { ptr, i32 } [ %.pn158.pn513, %bb.eg ], [ %.pn1581227, %_ZNSt6vectorIdSaIdEED2Ev.exit330 ] ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %.sroa.0429.0462, null
  br i1 %.not.i.i.i333, label %_ZNSt6vectorIfSaIfEED2Ev.exit334, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit332.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit332
  %.pn158.pn.pn521 = phi { ptr, i32 } [ %i.iz, %_ZNSt6vectorIfSaIfEED2Ev.exit332.thread ], [ %.pn158.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit332 ]
  %.sroa.12.0454520 = phi ptr [ %i.ih, %_ZNSt6vectorIfSaIfEED2Ev.exit332.thread ], [ %.sroa.12.0454, %_ZNSt6vectorIfSaIfEED2Ev.exit332 ]
  %.sroa.0429.0462519 = phi ptr [ %i.if, %_ZNSt6vectorIfSaIfEED2Ev.exit332.thread ], [ %.sroa.0429.0462, %_ZNSt6vectorIfSaIfEED2Ev.exit332 ] ; 2 uses
  %i.abv = ptrtoint ptr %.sroa.12.0454520 to i64
  %i.abw = ptrtoint ptr %.sroa.0429.0462519 to i64
  %i.abx = sub i64 %i.abv, %i.abw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0429.0462519, i64 noundef %i.abx) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit334

_ZNSt6vectorIfSaIfEED2Ev.exit328.thread:          ; preds = %.backedge, %._crit_edge817, %.preheader548
  %i.aby = load <2 x ptr>, ptr %13, align 16, !tbaa !120
  store <2 x ptr> %i.aby, ptr %0, align 8, !tbaa !120
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aca = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.acb = load ptr, ptr %i.aca, align 16, !tbaa !103
  store ptr %i.acb, ptr %i.abz, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %.loopexit560

.loopexit560:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit328, %_ZNSt6vectorIfSaIfEED2Ev.exit328.thread
  %.not.i.i.i335 = icmp eq ptr %.sroa.0438.0, null
  br i1 %.not.i.i.i335, label %_ZNSt6vectorIfSaIfEED2Ev.exit336, label %bb.ei

bb.ei:                                            ; preds = %.loopexit560
  %i.acc = ptrtoint ptr %.sroa.14444.0 to i64
  %i.acd = ptrtoint ptr %.sroa.0438.0 to i64
  %i.ace = sub i64 %i.acc, %i.acd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.0, i64 noundef %i.ace) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit336

_ZNSt6vectorIfSaIfEED2Ev.exit336:                 ; preds = %.loopexit560, %bb.ei
  %i.acf = load ptr, ptr %13, align 16, !tbaa !102 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.acf, %i.ach
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i337

.lr.ph.i.i.i337:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit336, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aco, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i ], [ %i.acf, %_ZNSt6vectorIfSaIfEED2Ev.exit336 ] ; 3 uses
  %i.aci = load ptr, ptr %.05.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i.i338 = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i.i.i.i.i.i338, label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i.i.i337
  %i.acj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !53
  %i.acl = ptrtoint ptr %i.ack to i64
  %i.acm = ptrtoint ptr %i.aci to i64
  %i.acn = sub i64 %i.acl, %i.acm
  call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.acn) #30
  br label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i: ; preds = %bb.ej, %.lr.ph.i.i.i337
  %i.aco = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i339 = icmp eq ptr %i.aco, %i.ach
  br i1 %.not.i.i.i339, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i337, !llvm.loop !4

_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 16, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIfSaIfEED2Ev.exit336
  %i.acp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.acf, %_ZNSt6vectorIfSaIfEED2Ev.exit336 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.acp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i
  %i.acq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.acr = load ptr, ptr %i.acq, align 16, !tbaa !103
  %i.acs = ptrtoint ptr %i.acr to i64
end_hunk_1
