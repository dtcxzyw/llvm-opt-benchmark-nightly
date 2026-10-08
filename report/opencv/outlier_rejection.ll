Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/outlier_rejection?download=true
inline.NumInlined: 369
inline.NumDeleted: 178
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv9videostab36TranslationBasedLocalOutlierRejector7processENS_5Size_IiEERKNS_11_InputArrayES6_RKNS_12_OutputArrayE:bb.a

bb.n:                                             ; preds = %.noexc183
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18, !noalias !80
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.u)
          to label %_ZNK2cv11_InputArray6getMatEi.exit186 unwind label %bb.s

bb.o:                                             ; preds = %.noexc183
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit186 unwind label %bb.s

_ZNK2cv11_InputArray6getMatEi.exit186:            ; preds = %bb.n, %bb.o
  %i.v = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit186
  %i.w = icmp eq i32 %i.q, %i.v
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %i.w, label %bb.ac, label %bb.x

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit186
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn161 = phi { ptr, i32 } [ %i.aa, %bb.t ], [ %i.z, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn161.pn = phi { ptr, i32 } [ %.pn161, %bb.u ], [ %i.y, %bb.r ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %bb.v ], [ %i.x, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv9videostab19NullOutlierRejector7processENS_5Size_IiEERKNS_11_InputArrayES6_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 78) #21
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.ab:                                            ; preds = %bb.y
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ab
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.aa
  %.pn165 = phi { ptr, i32 } [ %i.ab, %bb.aa ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.ac, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ai = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc190 unwind label %bb.ao

.noexc190:                                        ; preds = %bb.ac
  %i.aj = icmp eq i32 %i.ai, 65536
  br i1 %i.aj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc190
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18, !noalias !81
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.al)
          to label %_ZNK2cv11_InputArray6getMatEi.exit193 unwind label %bb.ao

bb.ae:                                            ; preds = %.noexc190
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit193 unwind label %bb.ao

_ZNK2cv11_InputArray6getMatEi.exit193:            ; preds = %bb.ad, %bb.ae
  %i.am = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.ap     ; 3 uses

bb.af:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit193
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.an = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc194 unwind label %bb.ar

.noexc194:                                        ; preds = %bb.af
  %i.ao = icmp eq i32 %i.an, 65536
  br i1 %i.ao, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc194
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18, !noalias !82
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.aq)
          to label %_ZNK2cv11_InputArray6getMatEi.exit197 unwind label %bb.ar

bb.ah:                                            ; preds = %.noexc194
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit197 unwind label %bb.ar

_ZNK2cv11_InputArray6getMatEi.exit197:            ; preds = %bb.ag, %bb.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !89 ; 12 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.at = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc198 unwind label %bb.as

.noexc198:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit197
  %i.au = icmp eq i32 %i.at, 65536
  br i1 %i.au, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.noexc198
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18, !noalias !90
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.aw)
          to label %_ZNK2cv11_InputArray6getMatEi.exit201 unwind label %bb.as

bb.aj:                                            ; preds = %.noexc198
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit201 unwind label %bb.as

_ZNK2cv11_InputArray6getMatEi.exit201:            ; preds = %bb.ai, %bb.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 11 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, i32 noundef %i.am, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit201
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.az = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc202 unwind label %bb.au

.noexc202:                                        ; preds = %bb.ak
  %i.ba = icmp eq i32 %i.az, 65536
  br i1 %i.ba, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.noexc202
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18, !noalias !91
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %i.bc)
          to label %_ZNK2cv11_InputArray6getMatEi.exit205 unwind label %bb.au

bb.am:                                            ; preds = %.noexc202
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit205 unwind label %bb.au

_ZNK2cv11_InputArray6getMatEi.exit205:            ; preds = %bb.al, %bb.am
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !89
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = add <2 x i32> %i.a, splat (i32 -1)
  %i.bh = load <2 x i32>, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  %i.bi = add <2 x i32> %i.bg, %i.bh
  %i.bj = sdiv <2 x i32> %i.bi, %i.bh             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bl = extractelement <2 x i32> %i.bj, i64 0   ; 2 uses
  %i.bm = extractelement <2 x i32> %i.bj, i64 1
  %i.bn = mul nsw i32 %i.bm, %i.bl
  %i.bo = sext i32 %i.bn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6assignEmRKS1_.exit unwind label %bb.av

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6assignEmRKS1_.exit: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit205
  %i.bp = load ptr, ptr %16, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6assignEmRKS1_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6assignEmRKS1_.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.bv = icmp sgt i32 %i.am, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %17 = add nsw <2 x i32> %i.bj, splat (i32 -1)   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.am to i64
  %18 = extractelement <2 x i32> %17, i64 0
  %19 = extractelement <2 x i32> %17, i64 1
  br label %bb.ax

bb.ao:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit193
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn167 = phi { ptr, i32 } [ %i.bx, %bb.ap ], [ %i.bw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.ar:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.as:                                            ; preds = %bb.aj, %bb.ai, %_ZNK2cv11_InputArray6getMatEi.exit197
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.at:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit201
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.au:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.av:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit205
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %16, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i207 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i207, label %_ZNSt6vectorIiSaIiEED2Ev.exit208, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit208

_ZNSt6vectorIiSaIiEED2Ev.exit208:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

bb.ax:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !26
  %i.cl = load <2 x i32>, ptr %i.bf, align 8, !tbaa !19
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>
  %i.cn = fdiv <2 x float> %i.ck, %i.cm           ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.co)
  %.sroa.speculated246 = call i32 @llvm.smin.i32(i32 %18, i32 %i.cp)
  %i.cq = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cr = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cq)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %19, i32 %i.cr)
  %i.cs = mul nsw i32 %.sroa.speculated, %i.bl
  %i.ct = add nsw i32 %i.cs, %.sroa.speculated246
  %i.cu = sext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cu ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.az:                                            ; preds = %bb.ax
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !29 ; 4 uses
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 5 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775804
  br i1 %i.dh, label %bb.ba, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
          to label %.noexc211 unwind label %.loopexit.split-lp

.noexc211:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.az
  %i.di = ashr exact i64 %i.dg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 2305843009213693951)
  %i.dm = select i1 %i.dk, i64 2305843009213693951, i64 %i.dl ; 3 uses
  %.not.i.i.i210 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i210)
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #24
          to label %.noexc212 unwind label %.loopexit ; 4 uses

.noexc212:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !19
  %i.dr = icmp sgt i64 %i.dg, 0
  br i1 %i.dr, label %bb.bb, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bb:                                            ; preds = %.noexc212
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.do, ptr align 4 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bb, %.noexc212
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dt = load ptr, ptr %i.cz, align 8, !tbaa !30
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dv) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !29
  store ptr %i.ds, ptr %i.cx, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dw, ptr %i.cz, align 8, !tbaa !30
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ay
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ax, !llvm.loop !71

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit218

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !93
  %i.ea = fsub float 1.000000e+00, %i.dz
  %i.eb = call noundef float @logf(float noundef %i.ea) #20
  %i.ec = fpext float %i.eb to double
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !94
  %i.ef = fsub float 1.000000e+00, %i.ee
  %i.eg = load i32, ptr %i.dx, align 8, !tbaa !95
  %i.eh = fpext float %i.ef to double
  %i.ei = sitofp i32 %i.eg to double
  %i.ej = call noundef double @pow(double noundef %i.eh, double noundef %i.ei) #20
  %i.ek = fsub double 1.000000e+00, %i.ej
  %i.el = call double @log(double noundef %i.ek) #20
  %i.em = fdiv double %i.ec, %i.el
  %i.en = call double @llvm.ceil.f64(double %i.em)
  %i.eo = fptosi double %i.en to i32              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !36
  %i.er = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.eq, %i.er
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit214, label %.lr.ph311

.lr.ph311:                                        ; preds = %._crit_edge
  %i.es = icmp sgt i32 %i.eo, 0
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  br label %bb.bg

._crit_edge312:                                   ; preds = %._crit_edge304
  %.not.i.i.i213 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIiSaIiEED2Ev.exit214, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge312
  %i.eu = ptrtoint ptr %.sroa.27.1 to i64
  %i.ev = ptrtoint ptr %.sroa.0.1 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ew) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit214

_ZNSt6vectorIiSaIiEED2Ev.exit214:                 ; preds = %._crit_edge, %._crit_edge312, %bb.bd
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !22
  %.not.i215 = icmp eq i32 %i.ey, 0
  br i1 %.not.i215, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit214
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #23
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit214, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.bg:                                            ; preds = %.lr.ph311, %._crit_edge304
  %i.fb = phi ptr [ %i.er, %.lr.ph311 ], [ %i.nc, %._crit_edge304 ]
  %.0138309 = phi i64 [ 0, %.lr.ph311 ], [ %i.na, %._crit_edge304 ] ; 2 uses
  %.sroa.27.0308 = phi ptr [ null, %.lr.ph311 ], [ %.sroa.27.1, %._crit_edge304 ] ; 5 uses
  %.sroa.18.0307 = phi ptr [ null, %.lr.ph311 ], [ %.sroa.18.1, %._crit_edge304 ] ; 8 uses
  %.sroa.0.0306 = phi ptr [ null, %.lr.ph311 ], [ %.sroa.0.1, %._crit_edge304 ] ; 13 uses
  %.sroa.0242.0305 = phi i64 [ 4294967295, %.lr.ph311 ], [ %.sroa.0242.2264, %._crit_edge304 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %.0138309 ; 5 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !37 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !37 ; 2 uses
  %i.fg = icmp eq ptr %i.fd, %i.ff
  br i1 %i.fg, label %.thread, label %.preheader272

.preheader272:                                    ; preds = %bb.bg
  br i1 %i.es, label %.lr.ph285, label %._crit_edge286.thread

._crit_edge286.thread:                            ; preds = %.preheader272
  %i.fh = ptrtoint ptr %.sroa.18.0307 to i64
  %i.fi = ptrtoint ptr %.sroa.0.0306 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 2
  br label %bb.bn

.lr.ph285:                                        ; preds = %.preheader272
  %i.fl = ptrtoint ptr %i.ff to i64
  %i.fm = ptrtoint ptr %i.fd to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = ashr exact i64 %i.fn, 2                 ; 3 uses
  %i.fp = load float, ptr %i.et, align 4, !tbaa !101 ; 2 uses
  %i.fq = fmul float %i.fp, %i.fp                 ; 3 uses
  %i.fr = icmp eq i64 %i.fn, 4
  %unroll_iter = and i64 %i.fo, -2
  %i.fs = and i64 %i.fn, 4
  %lcmp.mod.not = icmp eq i64 %i.fs, 0
  %lcmp.mod383 = trunc i64 %i.fo to i1
  br label %bb.bh

.thread:                                          ; preds = %bb.bg
  %i.ft = ptrtoint ptr %.sroa.18.0307 to i64
  %i.fu = ptrtoint ptr %.sroa.0.0306 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  br label %bb.bn

bb.bh:                                            ; preds = %.lr.ph285, %bb.bi
end_hunk_0
