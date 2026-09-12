Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convtranspose_layer?download=true
inline.NumInlined: 860
inline.NumDeleted: 402
begin_hunk_0_@_ZN2cv3dnn23ConvTranspose2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
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
  br label %bb.ee

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
  br label %bb.ee

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
          to label %bb.al unwind label %bb.av

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
          to label %.noexc151 unwind label %bb.aw

.noexc151:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.am
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #18
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc152_crit_edge unwind label %bb.aw

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
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.cw = icmp ugt i64 %i.ct, %i.cs
  br i1 %i.cw, label %bb.au, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.au:                                            ; preds = %bb.at
  %.idx = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  %.not.i.i = icmp eq i64 %i.cl, %.idx
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.au
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx
  store ptr %i.cx, ptr %i.ci, align 8, !tbaa !175
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.au, %bb.at, %bb.as
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
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.aw:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit212

bb.ax:                                            ; preds = %bb.as
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

bb.ay:                                            ; preds = %.lr.ph221, %bb.bw
  %indvars.iv223 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next224, %bb.bw ] ; 7 uses
  %i.dk = add nuw nsw i64 %indvars.iv223, 2       ; 6 uses
  %i.dl = load i32, ptr %17, align 4, !tbaa !174
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc154 unwind label %bb.bs

.noexc154:                                        ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #20
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc154
  unreachable

bb.bb:                                            ; preds = %.noexc154
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %12, align 8, !tbaa !60   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bb
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !55
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body

bb.bc:                                            ; preds = %bb.ay
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dk
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !76
  %i.dw = load i32, ptr %26, align 4, !tbaa !174
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %i.dk, %i.dx
  br i1 %i.dy, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc160 unwind label %bb.bt

.noexc160:                                        ; preds = %bb.bd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #20
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc160
  unreachable

bb.bf:                                            ; preds = %.noexc160
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.bf
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !55
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.bg:                                            ; preds = %bb.bc
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dk
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !76 ; 2 uses
  %i.eh = load ptr, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.ei = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv223
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !76
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.em = phi i32 [ %i.el, %bb.bh ], [ 0, %bb.bg ]
  %i.en = load ptr, ptr %i.bq, align 8, !tbaa !62 ; 2 uses
  %i.eo = load ptr, ptr %i.dc, align 8, !tbaa !62
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv223
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !76
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.es = phi i32 [ %i.er, %bb.bj ], [ 1, %bb.bi ] ; 4 uses
  %i.et = load ptr, ptr %i.br, align 8, !tbaa !62 ; 2 uses
  %i.eu = load ptr, ptr %i.dd, align 8, !tbaa !62
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv223
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !76
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.ey = phi i32 [ %i.ex, %bb.bl ], [ 1, %bb.bk ] ; 2 uses
  %i.ez = load i32, ptr %i.bm, align 8, !tbaa !174
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %i.dk, %i.fa
  br i1 %i.fb, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc169 unwind label %bb.bu

.noexc169:                                        ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 97) #20
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.noexc169
  unreachable

bb.bp:                                            ; preds = %.noexc169
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166: ; preds = %bb.bp
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !55
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i167: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

bb.bq:                                            ; preds = %bb.bm
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
  %i.fr = load i32, ptr %i.bu, align 4, !tbaa !52
  %i.fs = icmp ne i32 %i.fr, 1
  %i.ft = mul nsw i32 %i.fj, %i.ey
  %.not135 = icmp sgt i32 %i.es, %i.ft
  %or.cond140 = select i1 %i.fs, i1 true, i1 %.not135
  br i1 %or.cond140, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fu = add nsw i32 %i.eg, -1
  %i.fv = add nsw i32 %i.fu, %i.es
  %i.fw = srem i32 %i.fv, %i.es
  %i.fx = sub nsw i32 %i.fq, %i.fw
  %i.fy = sdiv i32 %i.fx, 2
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.fy, i32 0)
  br label %bb.bw

bb.bs:                                            ; preds = %bb.az
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %bb.bd
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bu:                                            ; preds = %bb.bn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bv:                                            ; preds = %bb.bq
  %i.gc = sdiv i32 %i.fq, 2
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.br
  %.072 = phi i32 [ %.sroa.speculated, %bb.br ], [ %i.gc, %bb.bv ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv223
  store i32 %.072, ptr %i.gd, align 4, !tbaa !76
  %i.ge = sub nsw i32 %i.fq, %.072
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv223
  store i32 %i.ge, ptr %gep, align 4, !tbaa !76
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %.loopexit, label %bb.ay, !llvm.loop !227

.loopexit:                                        ; preds = %bb.bw, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.aq
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 2 uses
  %i.gg = invoke noundef zeroext i1 @_ZN2cvneERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %17, ptr noundef nonnull align 4 dereferenceable(52) %i.gf)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %.loopexit
  br i1 %i.gg, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.gi = load i32, ptr %i.bo, align 8, !tbaa !65
  invoke void @_ZN2cv3dnn14dnn5_v202606059ConvState10initDeconvERKNS_8MatShapeES5_S5_iRKSt6vectorIiSaIiEESA_SA_(ptr noundef nonnull align 8 dereferenceable(344) %i.gh, ptr noundef nonnull align 4 dereferenceable(52) %17, ptr noundef nonnull align 4 dereferenceable(52) %i.bm, ptr noundef nonnull align 4 dereferenceable(52) %26, i32 noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gj = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.gf, ptr noundef nonnull align 4 dereferenceable(52) %17)
          to label %bb.cb unwind label %bb.ca     ; 0 uses

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.loopexit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.bz, %bb.bx
  %i.gl = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cc unwind label %bb.cd     ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  switch i32 %i.gl, label %bb.ce [
    i32 720896, label %bb.cj
    i32 327680, label %bb.cj
  ]

bb.cd:                                            ; preds = %bb.cb
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cv3dnn23ConvTranspose2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.14, i32 noundef 243) #20
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.ce
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.ci:                                            ; preds = %bb.cf
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %28, align 8, !tbaa !60   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.ci
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !55
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.ch
  %.pn115 = phi { ptr, i32 } [ %i.gn, %bb.ch ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %i.go, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %.body

bb.cj:                                            ; preds = %bb.cc, %bb.cc
  %i.gu = icmp eq i32 %i.gl, 327680
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %30) #19
  br i1 %i.gu, label %bb.ck, label %bb.cu

bb.ck:                                            ; preds = %bb.cj
  %i.gv = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc179 unwind label %bb.ct

.noexc179:                                        ; preds = %bb.ck
  %i.gw = icmp eq i32 %i.gv, 327680
  br i1 %i.gw, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %.noexc179
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc180 unwind label %bb.ct

.noexc180:                                        ; preds = %bb.cl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv12_OutputArray12getMatVecRefEv, ptr noundef nonnull @.str.21, i32 noundef 412) #20
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %.noexc180
  unreachable

bb.cn:                                            ; preds = %.noexc180
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176: ; preds = %bb.cn
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !55
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body181

bb.co:                                            ; preds = %.noexc179
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !82 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !178 ; 6 uses
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !179 ; 3 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = sdiv exact i64 %i.hk, 208               ; 2 uses
  %i.hm = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.hn = sub nuw nsw i64 1, %i.hl
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 noundef %i.hn)
          to label %._ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit_crit_edge unwind label %bb.ct

._ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.cp
  %.pre230 = load ptr, ptr %i.hf, align 8, !tbaa !178
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.cq:                                            ; preds = %bb.co
  %i.ho = icmp ugt i64 %i.hl, 1
  br i1 %i.ho, label %bb.cr, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.cr:                                            ; preds = %bb.cq
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 208 ; 4 uses
  %.not.i.i183 = icmp eq ptr %i.hg, %i.hp
  br i1 %.not.i.i183, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cr, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i ], [ %i.hp, %bb.cr ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #19
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.hq, %i.hg
  br i1 %.not.i.i.i.i184, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.hp, ptr %i.hf, align 8, !tbaa !178
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %._ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.cr, %bb.cq
  %i.hr = phi ptr [ %.pre230, %._ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.hp, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.hg, %bb.cr ], [ %i.hg, %bb.cq ]
  %i.hs = load ptr, ptr %i.he, align 8, !tbaa !179 ; 2 uses
  %.not.i.i186.not = icmp eq ptr %i.hr, %i.hs
  br i1 %.not.i.i186.not, label %.invoke, label %_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit:         ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  invoke void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.hs, ptr noundef nonnull align 4 dereferenceable(52) %26, i32 noundef %i.p)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit
  %i.ht = load ptr, ptr %i.hf, align 8, !tbaa !178
  %i.hu = load ptr, ptr %i.he, align 8, !tbaa !179 ; 2 uses
  %.not.i.i188.not = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i.i188.not, label %.invoke, label %_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit190

_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit190:      ; preds = %bb.cs
  %i.hv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %i.hu)
          to label %bb.dd unwind label %bb.ct     ; 0 uses

bb.ct:                                            ; preds = %.invoke, %bb.cz, %bb.cv, %bb.cu, %bb.cp, %bb.cl, %bb.ck, %bb.dc, %_ZNSt6vectorIN2cv4UMatESaIS1_EE2atEm.exit, %_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit190, %_ZNSt6vectorIN2cv3MatESaIS1_EE2atEm.exit
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body181

bb.cu:                                            ; preds = %bb.cj
  %i.hx = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc194 unwind label %bb.ct

.noexc194:                                        ; preds = %bb.cu
  %i.hy = icmp eq i32 %i.hx, 720896
end_hunk_0
