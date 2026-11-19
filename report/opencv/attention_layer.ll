Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/attention_layer?download=true
inline.NumInlined: 1129
inline.NumDeleted: 486
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlRKNS_5RangeEE_clESA_:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bj = phi i64 [ %i.an, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ 0, %bb.b ], [ %i.bi, %._crit_edge.loopexit ]
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !223, !nonnull !113, !align !144
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ag
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !114
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !224, !nonnull !113, !align !144
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ag
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !62
  %i.bq = mul i64 %i.bp, %i.as
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = trunc i64 %i.al to i32                  ; 2 uses
  %i.bt = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bu = load ptr, ptr %i.s, align 8, !tbaa !225, !nonnull !113, !align !144
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !114
  %i.bw = shl i64 %i.ac, 32
  %i.bx = mul i64 %i.bw, %i.am
  %i.by = mul i64 %i.bx, %i.an
  %i.bz = ashr exact i64 %i.by, 30
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz
  call void @_ZN2cv3dnn8fastGemmEbiiifPKfiS2_fPfiRNS0_11FastGemmOptE(i1 noundef zeroext false, i32 noundef %.lcssa, i32 noundef %i.bs, i32 noundef %i.bt, float noundef 1.000000e+00, ptr noundef %i.ca, i32 noundef %i.bt, ptr noundef %i.br, float noundef 1.000000e+00, ptr noundef %i.bg, i32 noundef %i.bs, ptr noundef nonnull align 1 dereferenceable(5) %i.t)
  %i.cb = icmp slt i32 %i.ae, 2
  br i1 %i.cb, label %bb.d, label %bb.q

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.04046 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %bb.c ]
  %.04145 = phi ptr [ %i.bg, %.lr.ph ], [ %i.cc, %bb.c ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.04145, ptr align 4 %i.bb, i64 %i.bh, i1 false)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.04145, i64 %i.al
  %i.cd = add nuw i64 %.04046, 1                  ; 2 uses
  %i.ce = load i64, ptr %i.m, align 8, !tbaa !97  ; 2 uses
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !217

bb.d:                                             ; preds = %._crit_edge
  %i.cg = load i8, ptr %i.u, align 8, !tbaa !70, !range !112, !noundef !113
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !226, !nonnull !113, !align !144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !105
  %i.cl = load i64, ptr %i.m, align 8, !tbaa !97  ; 2 uses
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ag
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !114
  store ptr %i.ck, ptr %i.b, align 8, !tbaa !114
  store i64 %i.co, ptr %i.c, align 8, !tbaa !62
  %i.cp = and i64 %i.co, 1
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0vEEOT_.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv3dnnL14rotationKernelEPfPKfmm, ptr noundef nonnull @.str.2, i32 noundef 34) #25
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.j:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.cr, %bb.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cs, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume.i

"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0vEEOT_.exit.i": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cy = lshr exact i64 %i.co, 1                 ; 2 uses
  store i64 %i.cy, ptr %i.d, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cz = trunc i64 %i.cl to i32
  store i32 0, ptr %4, align 4, !tbaa !116
  store i32 %i.cz, ptr %i.w, align 4, !tbaa !117
  store i64 0, ptr %i.y, align 8
  %i.da = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 5 uses
  %i.db = uitofp i64 %i.cl to double
  %i.dc = uitofp nneg i64 %i.cy to double
  %i.dd = fmul nnan double %i.db, %i.dc
  %i.de = fmul nnan double %i.dd, f0x3F50000000000000
  store ptr %i.a, ptr %i.da, align 16, !tbaa !124
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !125
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !124
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !125
  store ptr %i.da, ptr %5, align 8, !tbaa !126
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0E9_M_invokeERKSt9_Any_dataS3_">, ptr %i.x, align 8, !tbaa !126
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef align 8 %5, double noundef %i.de)
          to label %bb.k unwind label %bb.n

common.resume.i:                                  ; preds = %_ZNSt14_Function_baseD2Ev.exit10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dj, %_ZNSt14_Function_baseD2Ev.exit10.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0vEEOT_.exit.i"
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !119 ; 2 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZN2cv3dnnL14rotationKernelEPfPKfmm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN2cv3dnnL14rotationKernelEPfPKfmm.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #24
  unreachable

bb.n:                                             ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IRZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0vEEOT_.exit.i"
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %i.x, align 8, !tbaa !119 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.dk, null
  br i1 %.not.i9.i, label %_ZNSt14_Function_baseD2Ev.exit10.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit10.i:               ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %common.resume.i

_ZN2cv3dnnL14rotationKernelEPfPKfmm.exit:         ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %_ZN2cv3dnnL14rotationKernelEPfPKfmm.exit, %bb.d, %._crit_edge
  %i.do = add nsw i32 %.047, 1                    ; 2 uses
  %i.dp = load i32, ptr %i.f, align 4, !tbaa !117
  %i.dq = icmp slt i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.b, label %._crit_edge50, !llvm.loop !218
}

declare void @_ZN2cv3dnn8fastGemmEbiiifPKfiS2_fPfiRNS0_11FastGemmOptE(i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(5)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #17 align 2 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !tbaa !116  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph4.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

.lr.ph4.i.i.i:                                    ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !126   ; 4 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !234, !nonnull !113, !align !144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !235, !nonnull !113, !align !144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !62   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !236, !nonnull !113, !align !144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !237, !nonnull !113, !align !144
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62   ; 6 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph4.i.i.i
  %i.n = sext i32 %.val2 to i64                   ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %.val3 to i64 ; 2 uses
  %2 = shl nsw i64 %wide.trip.count.i.i.i, 2
  %3 = add nsw i64 %2, -4
  %4 = mul i64 %i.g, %3
  %i.o = shl i64 %i.m, 3
  %i.p = add i64 %4, %i.o                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.p
  %5 = mul i64 %i.g, %i.n
  %6 = shl i64 %5, 2                              ; 2 uses
  %scevgep7 = getelementptr i8, ptr %i.j, i64 %6
  %scevgep8 = getelementptr i8, ptr %i.d, i64 %i.p
  %scevgep9 = getelementptr i8, ptr %i.d, i64 %6
  %min.iters.check = icmp ult i64 %i.m, 4
  %bound0 = icmp ult ptr %scevgep9, %scevgep
  %bound1 = icmp ult ptr %scevgep7, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.g, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %7 = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.n, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.q = mul i64 %indvars.iv.i.i.i, %i.g          ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %7
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.t = shl i64 %index, 1                        ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %wide.vec = load <8 x float>, ptr %i.u, align 4, !tbaa !106, !alias.scope !238 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec10 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %wide.vec11 = load <8 x float>, ptr %i.v, align 4, !tbaa !106, !alias.scope !239, !noalias !238 ; 2 uses
  %strided.vec12 = shufflevector <8 x float> %wide.vec11, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec13 = shufflevector <8 x float> %wide.vec11, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.w = fneg <4 x float> %strided.vec
  %i.x = fmul <4 x float> %strided.vec13, %i.w
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec12, <4 x float> %strided.vec10, <4 x float> %i.x)
  %i.z = fmul <4 x float> %strided.vec, %strided.vec12
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec13, <4 x float> %strided.vec10, <4 x float> %i.z)
  %interleaved.vec = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !106, !alias.scope !239, !noalias !238
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.0281.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0281.i.i.i = phi i64 [ %i.as, %scalar.ph ], [ %.0281.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ac = shl i64 %.0281.i.i.i, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !106 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !106
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac ; 2 uses
  %i.aj = fneg float %i.ae
  %i.ak = load <2 x float>, ptr %i.ai, align 4, !tbaa !106 ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.aj, i64 1
  %i.an = fmul <2 x float> %i.ak, %i.am
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.aq, <2 x float> %i.ao)
  store <2 x float> %i.ar, ptr %i.ai, align 4, !tbaa !106
  %i.as = add nuw i64 %.0281.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.as, %i.m
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !231

._crit_edge.i.i.i:                                ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond7.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond7.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.lr.ph.i.i.i, !llvm.loop !232

"_ZSt10__invoke_rIvRZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %._crit_edge.i.i.i, %bb.a, %.lr.ph4.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0", ptr %0, align 8, !tbaa !143
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !126
  store ptr %.val, ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !240
  store ptr %i.a, ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL14rotationKernelEPfPKfmmE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !129
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #21 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !16
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !129
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
