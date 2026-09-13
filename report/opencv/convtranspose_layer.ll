Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convtranspose_layer?download=true
inline.NumInlined: 860
inline.NumDeleted: 402
begin_hunk_0_@_ZN2cv3dnn23ConvTranspose2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %.pn108 = phi { ptr, i32 } [ %i.af, %bb.r ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.ag, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ed

._crit_edge:                                      ; preds = %bb.u
  br i1 %spec.select, label %bb.x, label %._crit_edge.thread

bb.t:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %.075218 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.u ]
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.an, align 4, !tbaa !76
  %i.ao = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.c, i32 %.sroa.0.0.copyload)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %not. = xor i1 %i.ao, true
  %spec.select = select i1 %not., i1 true, i1 %.075218 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !226

bb.v:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ar = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.aq)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %._crit_edge.thread
  br i1 %i.ar, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %.075.lcssa287 = phi i1 [ false, %bb.w ], [ true, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.as = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.af    ; 0 uses

.noexc:                                           ; preds = %bb.x
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.at, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.au, align 4, !tbaa !79
  store i32 16842752, ptr %22, align 8, !tbaa !81
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %i.av, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.aw = icmp sgt i32 %i.e, 2
  br i1 %i.aw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ax = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc148 unwind label %bb.ag ; 0 uses

.noexc148:                                        ; preds = %bb.z
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2)
          to label %bb.ab unwind label %bb.ag

bb.aa:                                            ; preds = %bb.y
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc148
  %i.ay = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.ay, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !79
  store i32 16842752, ptr %24, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %i.ba, align 8, !tbaa !82
  %i.bb = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %17)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1020
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !231
  %i.bf = load ptr, ptr %0, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 296
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef %i.bc, i32 noundef %i.be)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ak

bb.ae:                                            ; preds = %._crit_edge.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.af:                                            ; preds = %.noexc, %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %.noexc148, %bb.z
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn110.pn = phi { ptr, i32 } [ %i.bl, %bb.ah ], [ %i.bk, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %bb.ai ], [ %i.bj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ed

bb.ak:                                            ; preds = %bb.ad, %bb.w
  %.075.lcssa286 = phi i1 [ %.075.lcssa287, %bb.ad ], [ false, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !52
  invoke void @_ZN2cv3dnn14dnn5_v2026060516deconvInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_S9_NS1_11AutoPaddingE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %26, ptr noundef nonnull align 4 dereferenceable(52) %17, ptr noundef nonnull align 4 dereferenceable(52) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i32 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i32 noundef %i.bv)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.bw = load i32, ptr %17, align 4, !tbaa !174  ; 2 uses
  %i.bx = add i32 %i.bw, -3                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !175 ; 2 uses
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !64 ; 3 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i.i, label %.noexc152, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = icmp ugt i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !176

.noexc.i.i:                                       ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc151 unwind label %bb.av

.noexc151:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.am
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #18
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge unwind label %bb.av

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !62 ; 2 uses
  %.pre228 = load ptr, ptr %i.by, align 8, !tbaa !62
  %.pre231 = ptrtoint ptr %.pre228 to i64
  %.pre232 = ptrtoint ptr %.pre to i64
  br label %.noexc152

.noexc152:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge, %bb.al
  %.pre-phi233 = phi i64 [ %.pre232, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge ], [ %i.cc, %bb.al ]
  %.pre-phi = phi i64 [ %.pre231, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge ], [ %i.cb, %bb.al ]
  %i.cg = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge ], [ %i.ca, %bb.al ] ; 2 uses
  %i.ch = phi ptr [ %i.cf, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge ], [ null, %bb.al ] ; 7 uses
  store ptr %i.ch, ptr %27, align 8, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !175
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !63
  %i.cl = sub i64 %.pre-phi, %.pre-phi233         ; 6 uses
  %i.cm = icmp sgt i64 %i.cl, 4
  br i1 %i.cm, label %bb.an, label %bb.ao, !prof !177

bb.an:                                            ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ch, ptr align 4 %i.cg, i64 %i.cl, i1 false)
  br label %bb.aq

bb.ao:                                            ; preds = %.noexc152
  %i.cn = icmp eq i64 %i.cl, 4
  br i1 %i.cn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.co = load i32, ptr %i.cg, align 4, !tbaa !76
  store i32 %i.co, ptr %i.ch, align 4, !tbaa !76
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.cl ; 2 uses
  store ptr %i.cp, ptr %i.ci, align 8, !tbaa !175
  %i.cq = load i32, ptr %i.bu, align 4, !tbaa !52
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cr = shl nsw i32 %i.bx, 1
  %i.cs = sext i32 %i.cr to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.ct = ashr exact i64 %i.cl, 2                 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cv = sub nuw nsw i64 %i.cs, %i.ct
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr %i.cp, i64 noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.cw = icmp ugt i64 %i.ct, %i.cs
  br i1 %i.cw, label %34, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

34:                                               ; preds = %bb.at
  %.idx = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  %.not.i.i = icmp eq i64 %i.cl, %.idx
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx
  store ptr %i.cx, ptr %i.ci, align 8, !tbaa !175
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %34, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cy = icmp sgt i32 %i.bw, 3
  br i1 %i.cy, label %.lr.ph221, label %.loopexit

.lr.ph221:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.df = load ptr, ptr %27, align 8              ; 2 uses
  %i.dg = zext nneg i32 %i.bx to i64
  %wide.trip.count226 = zext nneg i32 %i.bx to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.df, i64 %i.dg
  br label %bb.ax

bb.au:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.av:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit212

bb.aw:                                            ; preds = %bb.as
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

bb.ax:                                            ; preds = %.lr.ph221, %bb.bv
  %indvars.iv223 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next224, %bb.bv ] ; 7 uses
  %i.dk = add nuw nsw i64 %indvars.iv223, 2       ; 6 uses
  %i.dl = load i32, ptr %17, align 4, !tbaa !174
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc154 unwind label %bb.br

.noexc154:                                        ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #20
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc154
  unreachable

bb.ba:                                            ; preds = %.noexc154
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %12, align 8, !tbaa !60   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ba
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !55
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body

bb.bb:                                            ; preds = %bb.ax
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dk
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !76
  %i.dw = load i32, ptr %26, align 4, !tbaa !174
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %i.dk, %i.dx
  br i1 %i.dy, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc160 unwind label %bb.bs

.noexc160:                                        ; preds = %bb.bc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #20
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %.noexc160
  unreachable

bb.be:                                            ; preds = %.noexc160
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.be
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !55
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.bf:                                            ; preds = %bb.bb
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dk
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !76 ; 2 uses
  %i.eh = load ptr, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.ei = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv223
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !76
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.em = phi i32 [ %i.el, %bb.bg ], [ 0, %bb.bf ]
  %i.en = load ptr, ptr %i.bq, align 8, !tbaa !62 ; 2 uses
  %i.eo = load ptr, ptr %i.dc, align 8, !tbaa !62
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv223
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !76
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.es = phi i32 [ %i.er, %bb.bi ], [ 1, %bb.bh ] ; 4 uses
  %i.et = load ptr, ptr %i.br, align 8, !tbaa !62 ; 2 uses
  %i.eu = load ptr, ptr %i.dd, align 8, !tbaa !62
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv223
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !76
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.ey = phi i32 [ %i.ex, %bb.bk ], [ 1, %bb.bj ] ; 2 uses
  %i.ez = load i32, ptr %i.bm, align 8, !tbaa !174
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %i.dk, %i.fa
  br i1 %i.fb, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc169 unwind label %bb.bt

.noexc169:                                        ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #20
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc169
  unreachable

bb.bo:                                            ; preds = %.noexc169
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166: ; preds = %bb.bo
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !55
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i167: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

bb.bp:                                            ; preds = %bb.bl
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dk
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !76 ; 2 uses
  %i.fk = add nsw i32 %i.dv, -1
  %i.fl = mul nsw i32 %i.es, %i.fk
  %i.fm = add nsw i32 %i.fj, -1
  %i.fn = mul nsw i32 %i.fm, %i.ey
  %reass.sub = sub i32 %i.em, %i.eg
  %i.fo = add i32 %reass.sub, 1
  %i.fp = add i32 %i.fo, %i.fl
  %i.fq = add i32 %i.fp, %i.fn                    ; 3 uses
end_hunk_0
