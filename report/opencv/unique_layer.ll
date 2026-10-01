Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unique_layer?download=true
inline.NumInlined: 7981
inline.NumDeleted: 2021
loop-unroll.NumRuntimeUnrolled: 165
loop-unroll.NumUnrolled: 165
begin_hunk_0_@_ZN2cv3dnn15UniqueLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.ae, label %bb.aj

bb.ab:                                            ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.aj
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn15UniqueLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.12, i32 noundef 80) #20
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ai:                                            ; preds = %bb.af
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %13, align 8, !tbaa !96   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ai
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !90
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.ah
  %.pn63 = phi { ptr, i32 } [ %i.bc, %bb.ah ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.bd, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

bb.aj:                                            ; preds = %bb.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !114, !range !358, !noundef !127
  %i.bl = trunc nuw i8 %i.bk to i1
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl15dispatchByDepthERKNS_3MatERSt6vectorIS2_SaIS2_EEib(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i32 noundef %i.aj, i1 noundef zeroext %i.bl)
          to label %bb.br unwind label %bb.ad

bb.ak:                                            ; preds = %bb.v
  %i.bm = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc81 unwind label %bb.ap

.noexc81:                                         ; preds = %bb.ak
  %i.bn = icmp eq i32 %i.bm, 720896
  br i1 %i.bn, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.noexc81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc82 unwind label %bb.ap

.noexc82:                                         ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv12_OutputArray13getUMatVecRefEv, ptr noundef nonnull @.str.23, i32 noundef 419) #20
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %.noexc82
  unreachable

bb.an:                                            ; preds = %.noexc82
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.an
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !90
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i79: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.ao:                                            ; preds = %.noexc81
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !361 ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !363
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !363
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.aq, label %bb.av

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3dnn15UniqueLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.12, i32 noundef 86) #20
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.au:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %15, align 8, !tbaa !96   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.au
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !90
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.at
  %.pn60 = phi { ptr, i32 } [ %i.cb, %bb.at ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.cc, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.body

bb.av:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !365 ; 2 uses
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !366 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 184               ; 4 uses
  %i.co = icmp ugt i64 %i.cn, 44343134792571037
  br i1 %i.co, label %bb.aw, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc88 unwind label %bb.ay

.noexc88:                                         ; preds = %bb.aw
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.av
  %.not.i.i.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.cq = mul nuw nsw i64 %i.cn, 208
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #17
          to label %.noexc89 unwind label %bb.ay  ; 4 uses

.noexc89:                                         ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.cr, ptr %17, align 8, !tbaa !119
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !118
  %i.ct = getelementptr inbounds nuw [208 x i8], ptr %i.cr, i64 %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !129
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc89
  %.08.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %i.cr, %.noexc89 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %i.cn, %.noexc89 ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #19
  %i.cv = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !356

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.cx = phi ptr [ %i.cp, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.cs, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.cw, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !118
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !114, !range !358, !noundef !127
  %i.da = trunc nuw i8 %i.cz to i1
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl15dispatchByDepthERKNS_3MatERSt6vectorIS2_SaIS2_EEib(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %i.aj, i1 noundef zeroext %i.da)
          to label %.preheader unwind label %bb.az

.preheader:                                       ; preds = %.loopexit
  %i.db = load ptr, ptr %i.bx, align 8, !tbaa !365
  %i.dc = load ptr, ptr %i.bv, align 8, !tbaa !366
  %.not = icmp eq ptr %i.db, %i.dc
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16
  br label %bb.ba

._crit_edge:                                      ; preds = %bb.bg, %.preheader
  %i.df = load ptr, ptr %17, align 8, !tbaa !119  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !118 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i ], [ %i.df, %._crit_edge ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, %i.dh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.dj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.df, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !129
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #18
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.br

bb.ay:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i, %bb.aw
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.az:                                            ; preds = %.loopexit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ba:                                            ; preds = %.lr.ph, %bb.bg
  %.0103 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.bg ] ; 7 uses
  %i.dr = load ptr, ptr %17, align 8, !tbaa !119
  %i.ds = getelementptr inbounds nuw [208 x i8], ptr %i.dr, i64 %.0103
  %i.dt = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ds)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.dt, label %bb.bg, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.dv = load ptr, ptr %17, align 8, !tbaa !119
  %i.dw = getelementptr inbounds nuw [208 x i8], ptr %i.dv, i64 %.0103
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %18, ptr noundef nonnull align 4 dereferenceable(52) %i.dx)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.bh

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.bd
  %i.dy = load ptr, ptr %i.bv, align 8, !tbaa !366
  %i.dz = getelementptr inbounds nuw [184 x i8], ptr %i.dy, i64 %.0103
  %i.ea = load ptr, ptr %17, align 8, !tbaa !119
  %i.eb = getelementptr inbounds nuw [208 x i8], ptr %i.ea, i64 %.0103
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !130
  %i.ed = and i32 %i.ec, 4095
  invoke void @_ZN2cv4UMat3fitERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.dz, ptr noundef nonnull align 4 dereferenceable(52) %18, i32 noundef %i.ed, i32 noundef 0)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ee = load ptr, ptr %17, align 8, !tbaa !119
  %i.ef = getelementptr inbounds nuw [208 x i8], ptr %i.ee, i64 %.0103
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.eg = load ptr, ptr %i.bv, align 8, !tbaa !366
  %i.eh = getelementptr inbounds nuw [184 x i8], ptr %i.eg, i64 %.0103
  store i64 0, ptr %i.de, align 8
  store i32 34209792, ptr %19, align 8, !tbaa !367
  store ptr %i.eh, ptr %i.dd, align 8, !tbaa !361
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bb, %bb.bf
  %i.ei = add nuw i64 %.0103, 1                   ; 2 uses
  %i.ej = load ptr, ptr %i.bx, align 8, !tbaa !365
  %i.ek = load ptr, ptr %i.bv, align 8, !tbaa !366
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sdiv exact i64 %i.en, 184
  %i.ep = icmp ult i64 %i.ei, %i.eo
  br i1 %i.ep, label %bb.ba, label %._crit_edge, !llvm.loop !357

bb.bh:                                            ; preds = %bb.bd, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn54.pn = phi { ptr, i32 } [ %i.er, %bb.bi ], [ %i.eq, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bc, %bb.bj, %bb.az
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.az ], [ %.pn54.pn, %bb.bj ], [ %i.du, %bb.bc ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #19
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ay
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn, %bb.bk ], [ %i.dp, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %.body

bb.bm:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.16, i32 noundef %i.ak)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv3dnn15UniqueLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.12, i32 noundef 100) #20
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.bq:                                            ; preds = %bb.bn
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %20, align 8, !tbaa !96   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bq
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !90
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.bp
  %.pn52 = phi { ptr, i32 } [ %i.es, %bb.bp ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.et, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.body

bb.br:                                            ; preds = %bb.aj, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.ez = load ptr, ptr %8, align 8, !tbaa !119   ; 3 uses
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.not4.i.i.i94 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not4.i.i.i94, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i100, label %.lr.ph.i.i.i95

end_hunk_0
begin_hunk_1_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre394, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not471 = icmp ne i32 %i.ca, 0                 ; 4 uses
  br i1 %.not471, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %.loopexit302.thread

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i, %bb.k
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit302 unwind label %bb.t ; 4 uses

.loopexit302:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !137
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %bb.aa

.loopexit302.thread:                              ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %bb.aa

_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %.loopexit302.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge319

_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.loopexit302
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !156
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !411
  %xtraiter578 = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod579.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod579.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter580 = phi i64 [ %prol.iter580.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 4, !tbaa !158
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 4
  store i8 0, ptr %i.ep, align 4, !tbaa !159
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter580.next = add i64 %prol.iter580, 1   ; 2 uses
  %prol.iter580.cmp.not = icmp eq i64 %prol.iter580.next, %xtraiter578
  br i1 %prol.iter580.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !388

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph318, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 4, !tbaa !158
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  store i8 0, ptr %i.et, align 4, !tbaa !159
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !158
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  store i8 0, ptr %i.ev, align 4, !tbaa !159
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ew, align 4, !tbaa !158
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store i8 0, ptr %i.ex, align 4, !tbaa !159
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ey, align 4, !tbaa !158
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 28
  store i8 0, ptr %i.ez, align 4, !tbaa !159
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.fa, align 4, !tbaa !158
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  store i8 0, ptr %i.fb, align 4, !tbaa !159
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.fc, align 4, !tbaa !158
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 44
  store i8 0, ptr %i.fd, align 4, !tbaa !159
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.fe, align 4, !tbaa !158
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 52
  store i8 0, ptr %i.ff, align 4, !tbaa !159
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.fg, align 4, !tbaa !158
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store i8 0, ptr %i.fh, align 4, !tbaa !159
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph318, label %.lr.ph.i.i.i.i.i, !llvm.loop !389

.lr.ph318:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa, ptr %i.fk, align 8, !tbaa !161
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !148 ; 5 uses
  %wide.trip.count365 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter582 = and i64 %wide.trip.count365, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader581, label %.lr.ph318.new

.lr.ph318.new:                                    ; preds = %.lr.ph318
  %unroll_iter586 = and i64 %wide.trip.count365, 2147483644
  br label %bb.v

._crit_edge319.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod584.not = icmp eq i64 %xtraiter582, 0
  br i1 %lcmp.mod584.not, label %._crit_edge319, label %.epil.preheader581

.epil.preheader581:                               ; preds = %._crit_edge319.loopexit.unr-lcssa, %.lr.ph318
  %indvars.iv361.epil.init = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next362.3, %._crit_edge319.loopexit.unr-lcssa ]
  %lcmp.mod585 = icmp ne i64 %xtraiter582, 0
  call void @llvm.assume(i1 %lcmp.mod585)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader581
  %indvars.iv361.epil = phi i64 [ %indvars.iv361.epil.init, %.epil.preheader581 ], [ %indvars.iv.next362.epil, %bb.p ] ; 4 uses
  %epil.iter583 = phi i64 [ 0, %.epil.preheader581 ], [ %epil.iter583.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv361.epil
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !90
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv361.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv361.epil to i32
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !158
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i8 %i.fo, ptr %i.fr, align 4, !tbaa !159
  %indvars.iv.next362.epil = add nuw nsw i64 %indvars.iv361.epil, 1
  %epil.iter583.next = add i64 %epil.iter583, 1   ; 2 uses
  %epil.iter583.cmp.not = icmp eq i64 %epil.iter583.next, %xtraiter582
  br i1 %epil.iter583.cmp.not, label %._crit_edge319, label %bb.p, !llvm.loop !390

._crit_edge319:                                   ; preds = %._crit_edge319.loopexit.unr-lcssa, %bb.p, %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  %i.fs = phi ptr [ %i.eg, %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge319.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eh, %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge319.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysIhZNKS1_14uniqueAxisImplIhhEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKhSC_E_ZNKS3_IhhEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit260

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph318.new
  %indvars.iv361 = phi i64 [ 0, %.lr.ph318.new ], [ %indvars.iv.next362.3, %bb.v ] ; 7 uses
  %niter587 = phi i64 [ 0, %.lr.ph318.new ], [ %niter587.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv361
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !90
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv361 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv361 to i32
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !158
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i8 %i.ga, ptr %i.gd, align 4, !tbaa !159
  %indvars.iv.next362 = or disjoint i64 %indvars.iv361, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next362
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !90
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next362 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next362 to i32
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !158
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i8 %i.gf, ptr %i.gi, align 4, !tbaa !159
  %indvars.iv.next362.1 = or disjoint i64 %indvars.iv361, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next362.1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !90
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next362.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next362.1 to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !158
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i8 %i.gk, ptr %i.gn, align 4, !tbaa !159
  %indvars.iv.next362.2 = or disjoint i64 %indvars.iv361, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next362.2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !90
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next362.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next362.2 to i32
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !158
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 %i.gp, ptr %i.gs, align 4, !tbaa !159
  %indvars.iv.next362.3 = add nuw nsw i64 %indvars.iv361, 4 ; 2 uses
  %niter587.next.3 = add i64 %niter587, 4         ; 2 uses
  %niter587.ncmp.3 = icmp eq i64 %niter587.next.3, %unroll_iter586
  br i1 %niter587.ncmp.3, label %._crit_edge319.loopexit.unr-lcssa, label %bb.v, !llvm.loop !391

bb.w:                                             ; preds = %._crit_edge319
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !411
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ao

bb.y:                                             ; preds = %._crit_edge319
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !411
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIihESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dd

bb.aa:                                            ; preds = %.loopexit302.thread, %.loopexit302
  %i.hi = phi ptr [ %i.eg, %.loopexit302.thread ], [ %i.cw, %.loopexit302 ] ; 2 uses
  %i.hj = phi ptr [ %i.eh, %.loopexit302.thread ], [ %i.dk, %.loopexit302 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp slt i64 %i.hl, 0
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ae

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #17
          to label %.noexc166 unwind label %bb.ae ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.hn, ptr %17, align 8, !tbaa !163
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hl  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !412
  store i8 0, ptr %i.hn, align 1, !tbaa !90
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 1 ; 2 uses
  %i.hr = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc166
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hq, i8 0, i64 %i.hr, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.ad, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.ho, %bb.ad ], [ %i.hq, %.noexc166 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ht, align 8, !tbaa !413
  %i.hu = icmp ne i64 %.088, 0
  %or.cond = select i1 %.not471, i1 %i.hu, i1 false
  br i1 %or.cond, label %.preheader301.preheader, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.preheader301.preheader:                          ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %.pre395 = load i64, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.preheader, %._crit_edge310
  %i.hv = phi i64 [ %.pre395, %.preheader301.preheader ], [ %i.iz, %._crit_edge310 ] ; 2 uses
  %i.hw = phi i64 [ %.pre395, %.preheader301.preheader ], [ %i.ja, %._crit_edge310 ]
  %indvars.iv = phi i64 [ 0, %.preheader301.preheader ], [ %indvars.iv.next, %._crit_edge310 ] ; 3 uses
  %.not343 = icmp eq i64 %i.hw, 0
  br i1 %.not343, label %._crit_edge310, label %.preheader

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge310, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %.not471, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %._crit_edge315

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hx = shl nuw nsw i64 %i.cg, 4
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #17
          to label %.noexc174 unwind label %bb.ag ; 9 uses

.noexc174:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.hy, ptr %18, align 8, !tbaa !166
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.cg
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !167
  %xtraiter = and i64 %i.cg, 7
  %i.ib = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.ib, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol

.lr.ph.i.i.i.i.i168.prol:                         ; preds = %.noexc174, %.lr.ph.i.i.i.i.i168.prol
  %.013.i.i.i.i.i169.prol = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i168.prol ], [ %i.hy, %.noexc174 ] ; 3 uses
  %.01012.i.i.i.i.i170.prol = phi i64 [ %i.id, %.lr.ph.i.i.i.i.i168.prol ], [ %i.cg, %.noexc174 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i168.prol ], [ 0, %.noexc174 ]
  store i32 0, ptr %.013.i.i.i.i.i169.prol, align 8, !tbaa !169
  %i.ic = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 8
  store i64 0, ptr %i.ic, align 8, !tbaa !170
  %i.id = add nsw i64 %.01012.i.i.i.i.i170.prol, -1 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol, !llvm.loop !392

.lr.ph.i.i.i.i.i168.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i168.prol, %.noexc174
  %.lcssa563.unr = phi ptr [ poison, %.noexc174 ], [ %i.ie, %.lr.ph.i.i.i.i.i168.prol ]
  %.013.i.i.i.i.i169.unr = phi ptr [ %i.hy, %.noexc174 ], [ %i.ie, %.lr.ph.i.i.i.i.i168.prol ]
  %.01012.i.i.i.i.i170.unr = phi i64 [ %i.cg, %.noexc174 ], [ %i.id, %.lr.ph.i.i.i.i.i168.prol ]
  %i.if = icmp ult i32 %i.ca, 8
  br i1 %i.if, label %.lr.ph314, label %.lr.ph.i.i.i.i.i168

.lr.ph.i.i.i.i.i168:                              ; preds = %.lr.ph.i.i.i.i.i168.prol.loopexit, %.lr.ph.i.i.i.i.i168
  %.013.i.i.i.i.i169 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i168 ], [ %.013.i.i.i.i.i169.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i170 = phi i64 [ %i.iv, %.lr.ph.i.i.i.i.i168 ], [ %.01012.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i169, align 8, !tbaa !169
  %i.ig = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 8
  store i64 0, ptr %i.ig, align 8, !tbaa !170
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 16
  store i32 0, ptr %i.ih, align 8, !tbaa !169
  %i.ii = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 24
  store i64 0, ptr %i.ii, align 8, !tbaa !170
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 32
  store i32 0, ptr %i.ij, align 8, !tbaa !169
  %i.ik = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 40
  store i64 0, ptr %i.ik, align 8, !tbaa !170
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 48
  store i32 0, ptr %i.il, align 8, !tbaa !169
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 56
  store i64 0, ptr %i.im, align 8, !tbaa !170
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 64
  store i32 0, ptr %i.in, align 8, !tbaa !169
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 72
  store i64 0, ptr %i.io, align 8, !tbaa !170
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 80
  store i32 0, ptr %i.ip, align 8, !tbaa !169
  %i.iq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 88
  store i64 0, ptr %i.iq, align 8, !tbaa !170
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 96
  store i32 0, ptr %i.ir, align 8, !tbaa !169
  %i.is = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 104
  store i64 0, ptr %i.is, align 8, !tbaa !170
  %i.it = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 112
  store i32 0, ptr %i.it, align 8, !tbaa !169
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 120
  store i64 0, ptr %i.iu, align 8, !tbaa !170
  %i.iv = add nsw i64 %.01012.i.i.i.i.i170, -8    ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 128 ; 2 uses
  %.not.i.i.i.i.i171.7 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i.i.i171.7, label %.lr.ph314, label %.lr.ph.i.i.i.i.i168, !llvm.loop !2

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit180

.preheader:                                       ; preds = %.preheader301, %._crit_edge
  %i.iy = phi i64 [ %i.jb, %._crit_edge ], [ %i.hv, %.preheader301 ] ; 2 uses
  %.0109309 = phi i64 [ %.1110.lcssa, %._crit_edge ], [ 0, %.preheader301 ] ; 2 uses
  %.0112308 = phi i64 [ %i.jc, %._crit_edge ], [ 0, %.preheader301 ] ; 2 uses
  %.not344 = icmp eq i64 %i.iy, 0
  br i1 %.not344, label %._crit_edge, label %.lr.ph

._crit_edge310:                                   ; preds = %._crit_edge, %.preheader301
  %i.iz = phi i64 [ %i.hv, %.preheader301 ], [ %i.jb, %._crit_edge ]
  %i.ja = phi i64 [ 0, %.preheader301 ], [ %i.jb, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond354.not, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %.preheader301, !llvm.loop !393

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.jb = phi i64 [ 0, %.preheader ], [ %i.ju, %.lr.ph ] ; 3 uses
  %.1110.lcssa = phi i64 [ %.0109309, %.preheader ], [ %i.js, %.lr.ph ]
  %i.jc = add nuw i64 %.0112308, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jc, %.088
  br i1 %exitcond.not, label %._crit_edge310, label %.preheader, !llvm.loop !394

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.jd = phi i64 [ %i.ju, %.lr.ph ], [ %i.iy, %.preheader ]
  %.1110307 = phi i64 [ %i.js, %.lr.ph ], [ %.0109309, %.preheader ] ; 2 uses
  %.0111306 = phi i64 [ %i.jt, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.je = load i32, ptr %i.c, align 4, !tbaa !139
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %.0112308, %i.jf
  %i.jh = add i64 %i.jg, %indvars.iv
  %i.ji = mul i64 %i.jh, %i.jd
  %i.jj = load ptr, ptr %i.f, align 8, !tbaa !148
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.ji
  %i.jl = getelementptr i8, ptr %i.jk, i64 %.0111306
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !90
  %i.jn = load i64, ptr %i.g, align 8, !tbaa !117
  %i.jo = mul i64 %i.jn, %indvars.iv
  %i.jp = load ptr, ptr %17, align 8, !tbaa !163
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.jo
  %i.jr = getelementptr i8, ptr %i.jq, i64 %.1110307
  store i8 %i.jm, ptr %i.jr, align 1, !tbaa !90
  %i.js = add i64 %.1110307, 1                    ; 2 uses
  %i.jt = add nuw i64 %.0111306, 1                ; 2 uses
  %i.ju = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  %i.jv = icmp ult i64 %i.jt, %i.ju
  br i1 %i.jv, label %.lr.ph, label %._crit_edge, !llvm.loop !395

.lr.ph314:                                        ; preds = %.lr.ph.i.i.i.i.i168, %.lr.ph.i.i.i.i.i168.prol.loopexit
  %.lcssa563 = phi ptr [ %.lcssa563.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ], [ %i.iw, %.lr.ph.i.i.i.i.i168 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa563, ptr %i.jw, align 8, !tbaa !172
  %wide.trip.count359 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre396 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter575 = and i64 %wide.trip.count359, 3   ; 3 uses
  %i.jx = icmp ult i32 %i.ca, 4
  br i1 %i.jx, label %.epil.preheader, label %.lr.ph314.new

.lr.ph314.new:                                    ; preds = %.lr.ph314
  %unroll_iter = and i64 %wide.trip.count359, 2147483644
  br label %bb.ah

._crit_edge315.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %._crit_edge315, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge315.loopexit.unr-lcssa, %.lr.ph314
  %indvars.iv355.epil.init = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next356.3, %._crit_edge315.loopexit.unr-lcssa ]
  %lcmp.mod577 = icmp ne i64 %xtraiter575, 0
  call void @llvm.assume(i1 %lcmp.mod577)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %indvars.iv355.epil = phi i64 [ %indvars.iv355.epil.init, %.epil.preheader ], [ %indvars.iv.next356.epil, %bb.af ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %i.jy = mul i64 %.pre396, %indvars.iv355.epil
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv355.epil ; 2 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv355.epil to i32
  store i32 %i.ka, ptr %i.jz, align 8, !tbaa !169
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i64 %i.jy, ptr %i.kb, align 8, !tbaa !170
  %indvars.iv.next356.epil = add nuw nsw i64 %indvars.iv355.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter575
  br i1 %epil.iter.cmp.not, label %._crit_edge315, label %bb.af, !llvm.loop !396

._crit_edge315:                                   ; preds = %._crit_edge315.loopexit.unr-lcssa, %bb.af, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !414
  %i.kc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.kc, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !414
  %i.kd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.kd, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIhhEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IhhEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ai unwind label %bb.al

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

bb.ah:                                            ; preds = %bb.ah, %.lr.ph314.new
  %indvars.iv355 = phi i64 [ 0, %.lr.ph314.new ], [ %indvars.iv.next356.3, %bb.ah ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph314.new ], [ %niter.next.3, %bb.ah ]
  %i.kf = mul i64 %.pre396, %indvars.iv355
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv355 ; 2 uses
  %i.kh = trunc nuw nsw i64 %indvars.iv355 to i32
  store i32 %i.kh, ptr %i.kg, align 8, !tbaa !169
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.kf, ptr %i.ki, align 8, !tbaa !170
  %indvars.iv.next356 = or disjoint i64 %indvars.iv355, 1 ; 3 uses
  %i.kj = mul i64 %.pre396, %indvars.iv.next356
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.next356 ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv.next356 to i32
  store i32 %i.kl, ptr %i.kk, align 8, !tbaa !169
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kj, ptr %i.km, align 8, !tbaa !170
  %indvars.iv.next356.1 = or disjoint i64 %indvars.iv355, 2 ; 3 uses
  %i.kn = mul i64 %.pre396, %indvars.iv.next356.1
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.next356.1 ; 2 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv.next356.1 to i32
  store i32 %i.kp, ptr %i.ko, align 8, !tbaa !169
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %i.kn, ptr %i.kq, align 8, !tbaa !170
  %indvars.iv.next356.2 = or disjoint i64 %indvars.iv355, 3 ; 3 uses
  %i.kr = mul i64 %.pre396, %indvars.iv.next356.2
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.next356.2 ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv.next356.2 to i32
  store i32 %i.kt, ptr %i.ks, align 8, !tbaa !169
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i64 %i.kr, ptr %i.ku, align 8, !tbaa !170
  %indvars.iv.next356.3 = add nuw nsw i64 %indvars.iv355, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge315.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !397

bb.ai:                                            ; preds = %._crit_edge315
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kv = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i175 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !167
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.lb = load ptr, ptr %17, align 8, !tbaa !163  ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !412
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lb to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lg) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.ao

bb.al:                                            ; preds = %._crit_edge315
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.li = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i177 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !167
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178:     ; preds = %bb.am, %bb.al, %bb.ag
end_hunk_1
begin_hunk_2_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre394, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not471 = icmp ne i32 %i.ca, 0                 ; 4 uses
  br i1 %.not471, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %.loopexit302.thread

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i, %bb.k
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit302 unwind label %bb.t ; 4 uses

.loopexit302:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !137
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %bb.aa

.loopexit302.thread:                              ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %bb.aa

_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %.loopexit302.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge319

_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.loopexit302
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !193
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !442
  %xtraiter578 = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod579.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod579.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter580 = phi i64 [ %prol.iter580.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 4, !tbaa !195
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 4
  store i8 0, ptr %i.ep, align 4, !tbaa !196
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter580.next = add i64 %prol.iter580, 1   ; 2 uses
  %prol.iter580.cmp.not = icmp eq i64 %prol.iter580.next, %xtraiter578
  br i1 %prol.iter580.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !419

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph318, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 4, !tbaa !195
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  store i8 0, ptr %i.et, align 4, !tbaa !196
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !195
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  store i8 0, ptr %i.ev, align 4, !tbaa !196
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ew, align 4, !tbaa !195
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store i8 0, ptr %i.ex, align 4, !tbaa !196
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ey, align 4, !tbaa !195
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 28
  store i8 0, ptr %i.ez, align 4, !tbaa !196
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.fa, align 4, !tbaa !195
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  store i8 0, ptr %i.fb, align 4, !tbaa !196
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.fc, align 4, !tbaa !195
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 44
  store i8 0, ptr %i.fd, align 4, !tbaa !196
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.fe, align 4, !tbaa !195
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 52
  store i8 0, ptr %i.ff, align 4, !tbaa !196
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.fg, align 4, !tbaa !195
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store i8 0, ptr %i.fh, align 4, !tbaa !196
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph318, label %.lr.ph.i.i.i.i.i, !llvm.loop !420

.lr.ph318:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa, ptr %i.fk, align 8, !tbaa !197
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !148 ; 5 uses
  %wide.trip.count365 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter582 = and i64 %wide.trip.count365, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader581, label %.lr.ph318.new

.lr.ph318.new:                                    ; preds = %.lr.ph318
  %unroll_iter586 = and i64 %wide.trip.count365, 2147483644
  br label %bb.v

._crit_edge319.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod584.not = icmp eq i64 %xtraiter582, 0
  br i1 %lcmp.mod584.not, label %._crit_edge319, label %.epil.preheader581

.epil.preheader581:                               ; preds = %._crit_edge319.loopexit.unr-lcssa, %.lr.ph318
  %indvars.iv361.epil.init = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next362.3, %._crit_edge319.loopexit.unr-lcssa ]
  %lcmp.mod585 = icmp ne i64 %xtraiter582, 0
  call void @llvm.assume(i1 %lcmp.mod585)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader581
  %indvars.iv361.epil = phi i64 [ %indvars.iv361.epil.init, %.epil.preheader581 ], [ %indvars.iv.next362.epil, %bb.p ] ; 4 uses
  %epil.iter583 = phi i64 [ 0, %.epil.preheader581 ], [ %epil.iter583.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv361.epil
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !90
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv361.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv361.epil to i32
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !195
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i8 %i.fo, ptr %i.fr, align 4, !tbaa !196
  %indvars.iv.next362.epil = add nuw nsw i64 %indvars.iv361.epil, 1
  %epil.iter583.next = add i64 %epil.iter583, 1   ; 2 uses
  %epil.iter583.cmp.not = icmp eq i64 %epil.iter583.next, %xtraiter582
  br i1 %epil.iter583.cmp.not, label %._crit_edge319, label %bb.p, !llvm.loop !421

._crit_edge319:                                   ; preds = %._crit_edge319.loopexit.unr-lcssa, %bb.p, %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  %i.fs = phi ptr [ %i.eg, %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge319.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eh, %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge319.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysIaZNKS1_14uniqueAxisImplIaaEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKaSC_E_ZNKS3_IaaEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit260

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairIiaESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph318.new
  %indvars.iv361 = phi i64 [ 0, %.lr.ph318.new ], [ %indvars.iv.next362.3, %bb.v ] ; 7 uses
  %niter587 = phi i64 [ 0, %.lr.ph318.new ], [ %niter587.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv361
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !90
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv361 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv361 to i32
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !195
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i8 %i.ga, ptr %i.gd, align 4, !tbaa !196
  %indvars.iv.next362 = or disjoint i64 %indvars.iv361, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next362
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !90
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next362 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next362 to i32
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !195
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i8 %i.gf, ptr %i.gi, align 4, !tbaa !196
  %indvars.iv.next362.1 = or disjoint i64 %indvars.iv361, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next362.1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !90
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next362.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next362.1 to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !195
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i8 %i.gk, ptr %i.gn, align 4, !tbaa !196
  %indvars.iv.next362.2 = or disjoint i64 %indvars.iv361, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next362.2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !90
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next362.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next362.2 to i32
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !195
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 %i.gp, ptr %i.gs, align 4, !tbaa !196
  %indvars.iv.next362.3 = add nuw nsw i64 %indvars.iv361, 4 ; 2 uses
  %niter587.next.3 = add i64 %niter587, 4         ; 2 uses
  %niter587.ncmp.3 = icmp eq i64 %niter587.next.3, %unroll_iter586
  br i1 %niter587.ncmp.3, label %._crit_edge319.loopexit.unr-lcssa, label %bb.v, !llvm.loop !422

bb.w:                                             ; preds = %._crit_edge319
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !193  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !442
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ao

bb.y:                                             ; preds = %._crit_edge319
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !193  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !442
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIiaESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dd

bb.aa:                                            ; preds = %.loopexit302.thread, %.loopexit302
  %i.hi = phi ptr [ %i.eg, %.loopexit302.thread ], [ %i.cw, %.loopexit302 ] ; 2 uses
  %i.hj = phi ptr [ %i.eh, %.loopexit302.thread ], [ %i.dk, %.loopexit302 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp slt i64 %i.hl, 0
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ae

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #17
          to label %.noexc166 unwind label %bb.ae ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.hn, ptr %17, align 8, !tbaa !199
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hl  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !443
  store i8 0, ptr %i.hn, align 1, !tbaa !90
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 1 ; 2 uses
  %i.hr = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc166
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hq, i8 0, i64 %i.hr, i1 false)
  br label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i, %bb.ad, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.ho, %bb.ad ], [ %i.hq, %.noexc166 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ht, align 8, !tbaa !444
  %i.hu = icmp ne i64 %.088, 0
  %or.cond = select i1 %.not471, i1 %i.hu, i1 false
  br i1 %or.cond, label %.preheader301.preheader, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.preheader301.preheader:                          ; preds = %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %.pre395 = load i64, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.preheader, %._crit_edge310
  %i.hv = phi i64 [ %.pre395, %.preheader301.preheader ], [ %i.iz, %._crit_edge310 ] ; 2 uses
  %i.hw = phi i64 [ %.pre395, %.preheader301.preheader ], [ %i.ja, %._crit_edge310 ]
  %indvars.iv = phi i64 [ 0, %.preheader301.preheader ], [ %indvars.iv.next, %._crit_edge310 ] ; 3 uses
  %.not343 = icmp eq i64 %i.hw, 0
  br i1 %.not343, label %._crit_edge310, label %.preheader

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge310, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %.not471, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %._crit_edge315

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hx = shl nuw nsw i64 %i.cg, 4
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #17
          to label %.noexc174 unwind label %bb.ag ; 9 uses

.noexc174:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.hy, ptr %18, align 8, !tbaa !166
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.cg
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !167
  %xtraiter = and i64 %i.cg, 7
  %i.ib = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.ib, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol

.lr.ph.i.i.i.i.i168.prol:                         ; preds = %.noexc174, %.lr.ph.i.i.i.i.i168.prol
  %.013.i.i.i.i.i169.prol = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i168.prol ], [ %i.hy, %.noexc174 ] ; 3 uses
  %.01012.i.i.i.i.i170.prol = phi i64 [ %i.id, %.lr.ph.i.i.i.i.i168.prol ], [ %i.cg, %.noexc174 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i168.prol ], [ 0, %.noexc174 ]
  store i32 0, ptr %.013.i.i.i.i.i169.prol, align 8, !tbaa !169
  %i.ic = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 8
  store i64 0, ptr %i.ic, align 8, !tbaa !170
  %i.id = add nsw i64 %.01012.i.i.i.i.i170.prol, -1 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol, !llvm.loop !423

.lr.ph.i.i.i.i.i168.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i168.prol, %.noexc174
  %.lcssa563.unr = phi ptr [ poison, %.noexc174 ], [ %i.ie, %.lr.ph.i.i.i.i.i168.prol ]
  %.013.i.i.i.i.i169.unr = phi ptr [ %i.hy, %.noexc174 ], [ %i.ie, %.lr.ph.i.i.i.i.i168.prol ]
  %.01012.i.i.i.i.i170.unr = phi i64 [ %i.cg, %.noexc174 ], [ %i.id, %.lr.ph.i.i.i.i.i168.prol ]
  %i.if = icmp ult i32 %i.ca, 8
  br i1 %i.if, label %.lr.ph314, label %.lr.ph.i.i.i.i.i168

.lr.ph.i.i.i.i.i168:                              ; preds = %.lr.ph.i.i.i.i.i168.prol.loopexit, %.lr.ph.i.i.i.i.i168
  %.013.i.i.i.i.i169 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i168 ], [ %.013.i.i.i.i.i169.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i170 = phi i64 [ %i.iv, %.lr.ph.i.i.i.i.i168 ], [ %.01012.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i169, align 8, !tbaa !169
  %i.ig = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 8
  store i64 0, ptr %i.ig, align 8, !tbaa !170
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 16
  store i32 0, ptr %i.ih, align 8, !tbaa !169
  %i.ii = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 24
  store i64 0, ptr %i.ii, align 8, !tbaa !170
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 32
  store i32 0, ptr %i.ij, align 8, !tbaa !169
  %i.ik = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 40
  store i64 0, ptr %i.ik, align 8, !tbaa !170
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 48
  store i32 0, ptr %i.il, align 8, !tbaa !169
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 56
  store i64 0, ptr %i.im, align 8, !tbaa !170
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 64
  store i32 0, ptr %i.in, align 8, !tbaa !169
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 72
  store i64 0, ptr %i.io, align 8, !tbaa !170
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 80
  store i32 0, ptr %i.ip, align 8, !tbaa !169
  %i.iq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 88
  store i64 0, ptr %i.iq, align 8, !tbaa !170
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 96
  store i32 0, ptr %i.ir, align 8, !tbaa !169
  %i.is = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 104
  store i64 0, ptr %i.is, align 8, !tbaa !170
  %i.it = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 112
  store i32 0, ptr %i.it, align 8, !tbaa !169
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 120
  store i64 0, ptr %i.iu, align 8, !tbaa !170
  %i.iv = add nsw i64 %.01012.i.i.i.i.i170, -8    ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 128 ; 2 uses
  %.not.i.i.i.i.i171.7 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i.i.i171.7, label %.lr.ph314, label %.lr.ph.i.i.i.i.i168, !llvm.loop !2

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit180

.preheader:                                       ; preds = %.preheader301, %._crit_edge
  %i.iy = phi i64 [ %i.jb, %._crit_edge ], [ %i.hv, %.preheader301 ] ; 2 uses
  %.0109309 = phi i64 [ %.1110.lcssa, %._crit_edge ], [ 0, %.preheader301 ] ; 2 uses
  %.0112308 = phi i64 [ %i.jc, %._crit_edge ], [ 0, %.preheader301 ] ; 2 uses
  %.not344 = icmp eq i64 %i.iy, 0
  br i1 %.not344, label %._crit_edge, label %.lr.ph

._crit_edge310:                                   ; preds = %._crit_edge, %.preheader301
  %i.iz = phi i64 [ %i.hv, %.preheader301 ], [ %i.jb, %._crit_edge ]
  %i.ja = phi i64 [ 0, %.preheader301 ], [ %i.jb, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond354.not, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %.preheader301, !llvm.loop !424

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.jb = phi i64 [ 0, %.preheader ], [ %i.ju, %.lr.ph ] ; 3 uses
  %.1110.lcssa = phi i64 [ %.0109309, %.preheader ], [ %i.js, %.lr.ph ]
  %i.jc = add nuw i64 %.0112308, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jc, %.088
  br i1 %exitcond.not, label %._crit_edge310, label %.preheader, !llvm.loop !425

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.jd = phi i64 [ %i.ju, %.lr.ph ], [ %i.iy, %.preheader ]
  %.1110307 = phi i64 [ %i.js, %.lr.ph ], [ %.0109309, %.preheader ] ; 2 uses
  %.0111306 = phi i64 [ %i.jt, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.je = load i32, ptr %i.c, align 4, !tbaa !139
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %.0112308, %i.jf
  %i.jh = add i64 %i.jg, %indvars.iv
  %i.ji = mul i64 %i.jh, %i.jd
  %i.jj = load ptr, ptr %i.f, align 8, !tbaa !148
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.ji
  %i.jl = getelementptr i8, ptr %i.jk, i64 %.0111306
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !90
  %i.jn = load i64, ptr %i.g, align 8, !tbaa !117
  %i.jo = mul i64 %i.jn, %indvars.iv
  %i.jp = load ptr, ptr %17, align 8, !tbaa !199
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.jo
  %i.jr = getelementptr i8, ptr %i.jq, i64 %.1110307
  store i8 %i.jm, ptr %i.jr, align 1, !tbaa !90
  %i.js = add i64 %.1110307, 1                    ; 2 uses
  %i.jt = add nuw i64 %.0111306, 1                ; 2 uses
  %i.ju = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  %i.jv = icmp ult i64 %i.jt, %i.ju
  br i1 %i.jv, label %.lr.ph, label %._crit_edge, !llvm.loop !426

.lr.ph314:                                        ; preds = %.lr.ph.i.i.i.i.i168, %.lr.ph.i.i.i.i.i168.prol.loopexit
  %.lcssa563 = phi ptr [ %.lcssa563.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ], [ %i.iw, %.lr.ph.i.i.i.i.i168 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa563, ptr %i.jw, align 8, !tbaa !172
  %wide.trip.count359 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre396 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter575 = and i64 %wide.trip.count359, 3   ; 3 uses
  %i.jx = icmp ult i32 %i.ca, 4
  br i1 %i.jx, label %.epil.preheader, label %.lr.ph314.new

.lr.ph314.new:                                    ; preds = %.lr.ph314
  %unroll_iter = and i64 %wide.trip.count359, 2147483644
  br label %bb.ah

._crit_edge315.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %._crit_edge315, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge315.loopexit.unr-lcssa, %.lr.ph314
  %indvars.iv355.epil.init = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next356.3, %._crit_edge315.loopexit.unr-lcssa ]
  %lcmp.mod577 = icmp ne i64 %xtraiter575, 0
  call void @llvm.assume(i1 %lcmp.mod577)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %indvars.iv355.epil = phi i64 [ %indvars.iv355.epil.init, %.epil.preheader ], [ %indvars.iv.next356.epil, %bb.af ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %i.jy = mul i64 %.pre396, %indvars.iv355.epil
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv355.epil ; 2 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv355.epil to i32
  store i32 %i.ka, ptr %i.jz, align 8, !tbaa !169
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i64 %i.jy, ptr %i.kb, align 8, !tbaa !170
  %indvars.iv.next356.epil = add nuw nsw i64 %indvars.iv355.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter575
  br i1 %epil.iter.cmp.not, label %._crit_edge315, label %bb.af, !llvm.loop !427

._crit_edge315:                                   ; preds = %._crit_edge315.loopexit.unr-lcssa, %bb.af, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !445
  %i.kc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.kc, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !445
  %i.kd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.kd, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIaaEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IaaEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ai unwind label %bb.al

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

bb.ah:                                            ; preds = %bb.ah, %.lr.ph314.new
  %indvars.iv355 = phi i64 [ 0, %.lr.ph314.new ], [ %indvars.iv.next356.3, %bb.ah ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph314.new ], [ %niter.next.3, %bb.ah ]
  %i.kf = mul i64 %.pre396, %indvars.iv355
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv355 ; 2 uses
  %i.kh = trunc nuw nsw i64 %indvars.iv355 to i32
  store i32 %i.kh, ptr %i.kg, align 8, !tbaa !169
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.kf, ptr %i.ki, align 8, !tbaa !170
  %indvars.iv.next356 = or disjoint i64 %indvars.iv355, 1 ; 3 uses
  %i.kj = mul i64 %.pre396, %indvars.iv.next356
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.next356 ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv.next356 to i32
  store i32 %i.kl, ptr %i.kk, align 8, !tbaa !169
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kj, ptr %i.km, align 8, !tbaa !170
  %indvars.iv.next356.1 = or disjoint i64 %indvars.iv355, 2 ; 3 uses
  %i.kn = mul i64 %.pre396, %indvars.iv.next356.1
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.next356.1 ; 2 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv.next356.1 to i32
  store i32 %i.kp, ptr %i.ko, align 8, !tbaa !169
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %i.kn, ptr %i.kq, align 8, !tbaa !170
  %indvars.iv.next356.2 = or disjoint i64 %indvars.iv355, 3 ; 3 uses
  %i.kr = mul i64 %.pre396, %indvars.iv.next356.2
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.next356.2 ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv.next356.2 to i32
  store i32 %i.kt, ptr %i.ks, align 8, !tbaa !169
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i64 %i.kr, ptr %i.ku, align 8, !tbaa !170
  %indvars.iv.next356.3 = add nuw nsw i64 %indvars.iv355, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge315.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !428

bb.ai:                                            ; preds = %._crit_edge315
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kv = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i175 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !167
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.lb = load ptr, ptr %17, align 8, !tbaa !199  ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !443
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lb to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lg) #18
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.ao

bb.al:                                            ; preds = %._crit_edge315
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.li = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i177 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !167
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178:     ; preds = %bb.am, %bb.al, %bb.ag
end_hunk_2
begin_hunk_3_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre401, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not478 = icmp eq i32 %i.ca, 0                 ; 3 uses
  br i1 %.not478, label %.loopexit303, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit303.thread unwind label %bb.t ; 4 uses

.loopexit303:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit.thread, label %bb.aa

.loopexit303.thread:                              ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !137
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt12_Vector_baseISt4pairIitESaIS1_EEC2EmRKS2_.exit.i, label %bb.aa

.loopexit.thread:                                 ; preds = %.loopexit303
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge320

_ZNSt12_Vector_baseISt4pairIitESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.loopexit303.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIitESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !205
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !477
  %xtraiter = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 4, !tbaa !208
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 4
  store i16 0, ptr %i.ep, align 4, !tbaa !209
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !450

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa584.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph319, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 4, !tbaa !208
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  store i16 0, ptr %i.et, align 4, !tbaa !209
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !208
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  store i16 0, ptr %i.ev, align 4, !tbaa !209
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ew, align 4, !tbaa !208
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store i16 0, ptr %i.ex, align 4, !tbaa !209
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ey, align 4, !tbaa !208
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 28
  store i16 0, ptr %i.ez, align 4, !tbaa !209
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.fa, align 4, !tbaa !208
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  store i16 0, ptr %i.fb, align 4, !tbaa !209
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.fc, align 4, !tbaa !208
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 44
  store i16 0, ptr %i.fd, align 4, !tbaa !209
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.fe, align 4, !tbaa !208
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 52
  store i16 0, ptr %i.ff, align 4, !tbaa !209
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.fg, align 4, !tbaa !208
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store i16 0, ptr %i.fh, align 4, !tbaa !209
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph319, label %.lr.ph.i.i.i.i.i, !llvm.loop !451

.lr.ph319:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa584 = phi ptr [ %.lcssa584.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa584, ptr %i.fk, align 8, !tbaa !210
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !202 ; 5 uses
  %wide.trip.count370 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter593 = and i64 %wide.trip.count370, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph319.new

.lr.ph319.new:                                    ; preds = %.lr.ph319
  %unroll_iter = and i64 %wide.trip.count370, 2147483644
  br label %bb.v

._crit_edge320.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod594.not, label %._crit_edge320, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge320.loopexit.unr-lcssa, %.lr.ph319
  %indvars.iv366.epil.init = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next367.3, %._crit_edge320.loopexit.unr-lcssa ]
  %lcmp.mod595 = icmp ne i64 %xtraiter593, 0
  call void @llvm.assume(i1 %lcmp.mod595)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv366.epil = phi i64 [ %indvars.iv366.epil.init, %.epil.preheader ], [ %indvars.iv.next367.epil, %bb.p ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv366.epil
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !211
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv366.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv366.epil to i32
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !208
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i16 %i.fo, ptr %i.fr, align 4, !tbaa !209
  %indvars.iv.next367.epil = add nuw nsw i64 %indvars.iv366.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter593
  br i1 %epil.iter.cmp.not, label %._crit_edge320, label %bb.p, !llvm.loop !452

._crit_edge320:                                   ; preds = %._crit_edge320.loopexit.unr-lcssa, %bb.p, %.loopexit.thread
  %i.fs = phi ptr [ %i.ea, %.loopexit.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge320.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eb, %.loopexit.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge320.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysItZNKS1_14uniqueAxisImplIttEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKtSC_E_ZNKS3_IttEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit261

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIitESaIS1_EEC2EmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph319.new
  %indvars.iv366 = phi i64 [ 0, %.lr.ph319.new ], [ %indvars.iv.next367.3, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph319.new ], [ %niter.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv366
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !211
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv366 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv366 to i32
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !208
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i16 %i.ga, ptr %i.gd, align 4, !tbaa !209
  %indvars.iv.next367 = or disjoint i64 %indvars.iv366, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next367
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !211
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next367 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next367 to i32
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !208
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i16 %i.gf, ptr %i.gi, align 4, !tbaa !209
  %indvars.iv.next367.1 = or disjoint i64 %indvars.iv366, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next367.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !211
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next367.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next367.1 to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !208
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i16 %i.gk, ptr %i.gn, align 4, !tbaa !209
  %indvars.iv.next367.2 = or disjoint i64 %indvars.iv366, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next367.2
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !211
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next367.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next367.2 to i32
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !208
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i16 %i.gp, ptr %i.gs, align 4, !tbaa !209
  %indvars.iv.next367.3 = add nuw nsw i64 %indvars.iv366, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge320.loopexit.unr-lcssa, label %bb.v, !llvm.loop !453

bb.w:                                             ; preds = %._crit_edge320
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !205  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !477
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.an

bb.y:                                             ; preds = %._crit_edge320
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !205  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !477
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIitESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.de

bb.aa:                                            ; preds = %.loopexit303.thread, %.loopexit303
  %i.hi = phi ptr [ %i.cw, %.loopexit303.thread ], [ %i.ea, %.loopexit303 ] ; 2 uses
  %i.hj = phi ptr [ %i.dk, %.loopexit303.thread ], [ %i.eb, %.loopexit303 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp ugt i64 %i.hl, 4611686018427387903
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ad

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = shl nuw nsw i64 %i.hl, 1
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #17
          to label %.noexc166 unwind label %bb.ad ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.ho, ptr %17, align 8, !tbaa !213
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !478
  store i16 0, ptr %i.ho, align 2, !tbaa !211
  %i.hr = getelementptr i8, ptr %i.ho, i64 2      ; 3 uses
  %i.hs = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hs, 1  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.hr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !211
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hu, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hr, %.noexc166 ], [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hv, align 8, !tbaa !479
  br i1 %.not478, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader302.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge316

.preheader302.lr.ph:                              ; preds = %_ZNSt12_Vector_baseItSaItEEC2EmRKS0_.exit.thread.i
  %.not347 = icmp eq i64 %.088, 0
  %i.hw = load i64, ptr %i.d, align 8             ; 14 uses
  %.not348 = icmp eq i64 %i.hw, 0
  %brmerge = select i1 %.not347, i1 true, i1 %.not348
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader302.preheader

.preheader302.preheader:                          ; preds = %.preheader302.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %i.hx = mul i64 %i.hw, -2
  %i.hy = mul i64 %i.hw, -2
  %min.iters.check539 = icmp ult i64 %i.hw, 4
  %min.iters.check540 = icmp ult i64 %i.hw, 16
  %i.hz = and i64 %i.hw, 12
  %n.vec542 = and i64 %i.hw, -16                  ; 5 uses
  %cmp.n549 = icmp eq i64 %i.hw, %n.vec542
  %min.epilog.iters.check = icmp eq i64 %i.hz, 0
  %n.vec551 = and i64 %i.hw, -4                   ; 4 uses
  %cmp.n555 = icmp eq i64 %i.hw, %n.vec551
  %xtraiter596 = and i64 %i.hw, 3                 ; 2 uses
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  br label %.preheader302

.preheader302:                                    ; preds = %.preheader302.preheader, %._crit_edge311
  %indvars.iv = phi i64 [ 0, %.preheader302.preheader ], [ %indvars.iv.next, %._crit_edge311 ] ; 5 uses
  %i.ia = mul i64 %i.hx, %indvars.iv
  %i.ib = shl nuw nsw i64 %indvars.iv, 1
  %i.ic = load i32, ptr %i.c, align 4
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  %i.ig = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ih = mul i64 %i.ig, %indvars.iv
  %i.ii = load ptr, ptr %17, align 8              ; 2 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64
  %i.ik = getelementptr [2 x i8], ptr %i.ii, i64 %i.ih ; 7 uses
  %i.il = add i64 %i.ia, %i.ij
  %i.im = mul i64 %i.ig, %i.ib
  %i.in = add i64 %i.il, %i.im
  %i.io = sub i64 %i.in, %i.if
  %i.ip = mul i64 %i.hy, %i.id
  br label %iter.check

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge311, %.preheader302.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.iq = shl nuw nsw i64 %i.cg, 4
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #17
          to label %.noexc174 unwind label %bb.af ; 9 uses

.noexc174:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ir, ptr %18, align 8, !tbaa !166
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.cg
  %i.it = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.is, ptr %i.it, align 8, !tbaa !167
  %xtraiter599 = and i64 %i.cg, 7
  %i.iu = and i32 %i.ca, 7
  %lcmp.mod600.not = icmp eq i32 %i.iu, 0
  br i1 %lcmp.mod600.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol

.lr.ph.i.i.i.i.i168.prol:                         ; preds = %.noexc174, %.lr.ph.i.i.i.i.i168.prol
  %.013.i.i.i.i.i169.prol = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i168.prol ], [ %i.ir, %.noexc174 ] ; 3 uses
  %.01012.i.i.i.i.i170.prol = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ], [ %i.cg, %.noexc174 ]
  %prol.iter601 = phi i64 [ %prol.iter601.next, %.lr.ph.i.i.i.i.i168.prol ], [ 0, %.noexc174 ]
  store i32 0, ptr %.013.i.i.i.i.i169.prol, align 8, !tbaa !169
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 8
  store i64 0, ptr %i.iv, align 8, !tbaa !170
  %i.iw = add nsw i64 %.01012.i.i.i.i.i170.prol, -1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 16 ; 3 uses
  %prol.iter601.next = add i64 %prol.iter601, 1   ; 2 uses
  %prol.iter601.cmp.not = icmp eq i64 %prol.iter601.next, %xtraiter599
  br i1 %prol.iter601.cmp.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol, !llvm.loop !454

.lr.ph.i.i.i.i.i168.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i168.prol, %.noexc174
  %.lcssa.unr = phi ptr [ poison, %.noexc174 ], [ %i.ix, %.lr.ph.i.i.i.i.i168.prol ]
  %.013.i.i.i.i.i169.unr = phi ptr [ %i.ir, %.noexc174 ], [ %i.ix, %.lr.ph.i.i.i.i.i168.prol ]
  %.01012.i.i.i.i.i170.unr = phi i64 [ %i.cg, %.noexc174 ], [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ]
  %i.iy = icmp ult i32 %i.ca, 8
  br i1 %i.iy, label %.lr.ph, label %.lr.ph.i.i.i.i.i168

.lr.ph.i.i.i.i.i168:                              ; preds = %.lr.ph.i.i.i.i.i168.prol.loopexit, %.lr.ph.i.i.i.i.i168
  %.013.i.i.i.i.i169 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i.i168 ], [ %.013.i.i.i.i.i169.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i170 = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i168 ], [ %.01012.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i169, align 8, !tbaa !169
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 8
  store i64 0, ptr %i.iz, align 8, !tbaa !170
  %i.ja = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 16
  store i32 0, ptr %i.ja, align 8, !tbaa !169
  %i.jb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 24
  store i64 0, ptr %i.jb, align 8, !tbaa !170
  %i.jc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 32
  store i32 0, ptr %i.jc, align 8, !tbaa !169
  %i.jd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 40
  store i64 0, ptr %i.jd, align 8, !tbaa !170
  %i.je = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 48
  store i32 0, ptr %i.je, align 8, !tbaa !169
  %i.jf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 56
  store i64 0, ptr %i.jf, align 8, !tbaa !170
  %i.jg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 64
  store i32 0, ptr %i.jg, align 8, !tbaa !169
  %i.jh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 72
  store i64 0, ptr %i.jh, align 8, !tbaa !170
  %i.ji = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 80
  store i32 0, ptr %i.ji, align 8, !tbaa !169
  %i.jj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 88
  store i64 0, ptr %i.jj, align 8, !tbaa !170
  %i.jk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 96
  store i32 0, ptr %i.jk, align 8, !tbaa !169
  %i.jl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 104
  store i64 0, ptr %i.jl, align 8, !tbaa !170
  %i.jm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 112
  store i32 0, ptr %i.jm, align 8, !tbaa !169
  %i.jn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 120
  store i64 0, ptr %i.jn, align 8, !tbaa !170
  %i.jo = add nsw i64 %.01012.i.i.i.i.i170, -8    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 128 ; 2 uses
  %.not.i.i.i.i.i171.7 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i.i171.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i168, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit180

iter.check:                                       ; preds = %.preheader302, %._crit_edge
  %.0109310 = phi i64 [ 0, %.preheader302 ], [ %.lcssa515, %._crit_edge ] ; 7 uses
  %.0112309 = phi i64 [ 0, %.preheader302 ], [ %i.kt, %._crit_edge ] ; 3 uses
  %i.jr = mul i64 %.0112309, %i.id
  %i.js = add i64 %i.jr, %indvars.iv
  %i.jt = mul i64 %i.js, %i.hw
  %i.ju = getelementptr [2 x i8], ptr %i.ie, i64 %i.jt ; 7 uses
  br i1 %min.iters.check539, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jv = mul i64 %i.ip, %.0112309
  %i.jw = add i64 %i.io, %i.jv
  %i.jx = shl i64 %.0109310, 1
  %i.jy = add i64 %i.jw, %i.jx
  %i.jz = add i64 %i.jy, -1
  %diff.check = icmp ult i64 %i.jz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check540, label %vec.epilog.ph, label %vector.ph541

vector.ph541:                                     ; preds = %vector.main.loop.iter.check
  %i.ka = add i64 %.0109310, %n.vec542            ; 2 uses
  %i.kb = getelementptr [2 x i8], ptr %i.ik, i64 %.0109310
  br label %vector.body543

vector.body543:                                   ; preds = %vector.ph541, %vector.body543
  %index544 = phi i64 [ 0, %vector.ph541 ], [ %index.next547, %vector.body543 ] ; 3 uses
  %i.kc = getelementptr [2 x i8], ptr %i.ju, i64 %index544 ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 16
  %wide.load545 = load <8 x i16>, ptr %i.kc, align 2, !tbaa !211
  %wide.load546 = load <8 x i16>, ptr %i.kd, align 2, !tbaa !211
  %i.ke = getelementptr [2 x i8], ptr %i.kb, i64 %index544 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  store <8 x i16> %wide.load545, ptr %i.ke, align 2, !tbaa !211
  store <8 x i16> %wide.load546, ptr %i.kf, align 2, !tbaa !211
  %index.next547 = add nuw i64 %index544, 16      ; 2 uses
  %i.kg = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.kg, label %middle.block548, label %vector.body543, !llvm.loop !455

middle.block548:                                  ; preds = %vector.body543
  br i1 %cmp.n549, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block548
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec542, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.kh = add i64 %.0109310, %n.vec551            ; 2 uses
  %i.ki = getelementptr [2 x i8], ptr %i.ik, i64 %.0109310
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index552 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next554, %vec.epilog.vector.body ] ; 3 uses
  %i.kj = getelementptr [2 x i8], ptr %i.ju, i64 %index552
  %wide.load553 = load <4 x i16>, ptr %i.kj, align 2, !tbaa !211
  %i.kk = getelementptr [2 x i8], ptr %i.ki, i64 %index552
  store <4 x i16> %wide.load553, ptr %i.kk, align 2, !tbaa !211
  %index.next554 = add nuw i64 %index552, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next554, %n.vec551
  br i1 %i.kl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !456

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n555, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1110308.ph = phi i64 [ %.0109310, %iter.check ], [ %.0109310, %vector.memcheck ], [ %i.ka, %vec.epilog.iter.check ], [ %i.kh, %vec.epilog.middle.block ] ; 2 uses
  %.0111307.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec542, %vec.epilog.iter.check ], [ %n.vec551, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod597.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1110308.prol = phi i64 [ %i.kp, %vec.epilog.scalar.ph.prol ], [ %.1110308.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0111307.prol = phi i64 [ %i.kq, %vec.epilog.scalar.ph.prol ], [ %.0111307.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter598 = phi i64 [ %prol.iter598.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.km = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307.prol
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !211
  %i.ko = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308.prol
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !211
  %i.kp = add i64 %.1110308.prol, 1               ; 3 uses
  %i.kq = add nuw i64 %.0111307.prol, 1           ; 2 uses
  %prol.iter598.next = add i64 %prol.iter598, 1   ; 2 uses
  %prol.iter598.cmp.not = icmp eq i64 %prol.iter598.next, %xtraiter596
  br i1 %prol.iter598.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !457

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa583.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.kp, %vec.epilog.scalar.ph.prol ]
  %.1110308.unr = phi i64 [ %.1110308.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kp, %vec.epilog.scalar.ph.prol ]
  %.0111307.unr = phi i64 [ %.0111307.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kq, %vec.epilog.scalar.ph.prol ]
  %i.kr = sub i64 %.0111307.ph, %i.hw
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge311:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond359.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader302, !llvm.loop !458

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block548
  %.lcssa515 = phi i64 [ %i.kh, %vec.epilog.middle.block ], [ %i.ka, %middle.block548 ], [ %.lcssa583.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.lm, %vec.epilog.scalar.ph ]
  %i.kt = add nuw i64 %.0112309, 1                ; 2 uses
  %exitcond357.not = icmp eq i64 %i.kt, %.088
  br i1 %exitcond357.not, label %._crit_edge311, label %iter.check, !llvm.loop !459

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1110308 = phi i64 [ %i.lm, %vec.epilog.scalar.ph ], [ %.1110308.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0111307 = phi i64 [ %i.ln, %vec.epilog.scalar.ph ], [ %.0111307.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ku = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !211
  %i.kw = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !211
  %i.kx = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.ky = getelementptr i8, ptr %i.kx, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !211
  %i.la = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  %i.lb = getelementptr i8, ptr %i.la, i64 2
  store i16 %i.kz, ptr %i.lb, align 2, !tbaa !211
  %i.lc = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.ld = getelementptr i8, ptr %i.lc, i64 4
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !211
  %i.lf = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  %i.lg = getelementptr i8, ptr %i.lf, i64 4
  store i16 %i.le, ptr %i.lg, align 2, !tbaa !211
  %i.lh = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.li = getelementptr i8, ptr %i.lh, i64 6
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !211
  %i.lk = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  %i.ll = getelementptr i8, ptr %i.lk, i64 6
  store i16 %i.lj, ptr %i.ll, align 2, !tbaa !211
  %i.lm = add i64 %.1110308, 4                    ; 2 uses
  %i.ln = add nuw i64 %.0111307, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ln, %i.hw
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !460

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i168, %.lr.ph.i.i.i.i.i168.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ], [ %i.jp, %.lr.ph.i.i.i.i.i168 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.lo, align 8, !tbaa !172
  %wide.trip.count364 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre402 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter603 = and i64 %wide.trip.count364, 3   ; 3 uses
  %i.lp = icmp ult i32 %i.ca, 4
  br i1 %i.lp, label %.epil.preheader602, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter607 = and i64 %wide.trip.count364, 2147483644
  br label %bb.ag

._crit_edge316.loopexit.unr-lcssa:                ; preds = %bb.ag
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %._crit_edge316, label %.epil.preheader602

.epil.preheader602:                               ; preds = %._crit_edge316.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv360.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next361.3, %._crit_edge316.loopexit.unr-lcssa ]
  %lcmp.mod606 = icmp ne i64 %xtraiter603, 0
  call void @llvm.assume(i1 %lcmp.mod606)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader602
  %indvars.iv360.epil = phi i64 [ %indvars.iv360.epil.init, %.epil.preheader602 ], [ %indvars.iv.next361.epil, %bb.ae ] ; 4 uses
  %epil.iter604 = phi i64 [ 0, %.epil.preheader602 ], [ %epil.iter604.next, %bb.ae ]
  %i.lq = mul i64 %.pre402, %indvars.iv360.epil
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %indvars.iv360.epil ; 2 uses
  %i.ls = trunc nuw nsw i64 %indvars.iv360.epil to i32
  store i32 %i.ls, ptr %i.lr, align 8, !tbaa !169
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.lq, ptr %i.lt, align 8, !tbaa !170
  %indvars.iv.next361.epil = add nuw nsw i64 %indvars.iv360.epil, 1
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %._crit_edge316, label %bb.ae, !llvm.loop !461

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit.unr-lcssa, %bb.ae, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !480
  %i.lu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.lu, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !480
  %i.lv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.lv, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIttEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IttEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ah unwind label %bb.ak

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.new
  %indvars.iv360 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next361.3, %bb.ag ] ; 7 uses
  %niter608 = phi i64 [ 0, %.lr.ph.new ], [ %niter608.next.3, %bb.ag ]
end_hunk_3
begin_hunk_4_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre401, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not478 = icmp eq i32 %i.ca, 0                 ; 3 uses
  br i1 %.not478, label %.loopexit303, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit303.thread unwind label %bb.t ; 4 uses

.loopexit303:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit.thread, label %bb.aa

.loopexit303.thread:                              ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !137
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt12_Vector_baseISt4pairIisESaIS1_EEC2EmRKS2_.exit.i, label %bb.aa

.loopexit.thread:                                 ; preds = %.loopexit303
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge320

_ZNSt12_Vector_baseISt4pairIisESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.loopexit303.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIisESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !220
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !512
  %xtraiter = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 4, !tbaa !222
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 4
  store i16 0, ptr %i.ep, align 4, !tbaa !223
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !485

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa584.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph319, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 4, !tbaa !222
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  store i16 0, ptr %i.et, align 4, !tbaa !223
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !222
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  store i16 0, ptr %i.ev, align 4, !tbaa !223
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ew, align 4, !tbaa !222
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store i16 0, ptr %i.ex, align 4, !tbaa !223
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ey, align 4, !tbaa !222
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 28
  store i16 0, ptr %i.ez, align 4, !tbaa !223
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.fa, align 4, !tbaa !222
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  store i16 0, ptr %i.fb, align 4, !tbaa !223
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.fc, align 4, !tbaa !222
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 44
  store i16 0, ptr %i.fd, align 4, !tbaa !223
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.fe, align 4, !tbaa !222
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 52
  store i16 0, ptr %i.ff, align 4, !tbaa !223
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.fg, align 4, !tbaa !222
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store i16 0, ptr %i.fh, align 4, !tbaa !223
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph319, label %.lr.ph.i.i.i.i.i, !llvm.loop !486

.lr.ph319:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa584 = phi ptr [ %.lcssa584.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa584, ptr %i.fk, align 8, !tbaa !224
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !202 ; 5 uses
  %wide.trip.count370 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter593 = and i64 %wide.trip.count370, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph319.new

.lr.ph319.new:                                    ; preds = %.lr.ph319
  %unroll_iter = and i64 %wide.trip.count370, 2147483644
  br label %bb.v

._crit_edge320.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod594.not, label %._crit_edge320, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge320.loopexit.unr-lcssa, %.lr.ph319
  %indvars.iv366.epil.init = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next367.3, %._crit_edge320.loopexit.unr-lcssa ]
  %lcmp.mod595 = icmp ne i64 %xtraiter593, 0
  call void @llvm.assume(i1 %lcmp.mod595)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv366.epil = phi i64 [ %indvars.iv366.epil.init, %.epil.preheader ], [ %indvars.iv.next367.epil, %bb.p ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv366.epil
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !211
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv366.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv366.epil to i32
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !222
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i16 %i.fo, ptr %i.fr, align 4, !tbaa !223
  %indvars.iv.next367.epil = add nuw nsw i64 %indvars.iv366.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter593
  br i1 %epil.iter.cmp.not, label %._crit_edge320, label %bb.p, !llvm.loop !487

._crit_edge320:                                   ; preds = %._crit_edge320.loopexit.unr-lcssa, %bb.p, %.loopexit.thread
  %i.fs = phi ptr [ %i.ea, %.loopexit.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge320.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eb, %.loopexit.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge320.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysIsZNKS1_14uniqueAxisImplIssEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKsSC_E_ZNKS3_IssEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit261

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIisESaIS1_EEC2EmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph319.new
  %indvars.iv366 = phi i64 [ 0, %.lr.ph319.new ], [ %indvars.iv.next367.3, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph319.new ], [ %niter.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv366
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !211
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv366 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv366 to i32
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !222
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i16 %i.ga, ptr %i.gd, align 4, !tbaa !223
  %indvars.iv.next367 = or disjoint i64 %indvars.iv366, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next367
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !211
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next367 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next367 to i32
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !222
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i16 %i.gf, ptr %i.gi, align 4, !tbaa !223
  %indvars.iv.next367.1 = or disjoint i64 %indvars.iv366, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next367.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !211
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next367.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next367.1 to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !222
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i16 %i.gk, ptr %i.gn, align 4, !tbaa !223
  %indvars.iv.next367.2 = or disjoint i64 %indvars.iv366, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %indvars.iv.next367.2
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !211
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next367.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next367.2 to i32
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !222
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i16 %i.gp, ptr %i.gs, align 4, !tbaa !223
  %indvars.iv.next367.3 = add nuw nsw i64 %indvars.iv366, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge320.loopexit.unr-lcssa, label %bb.v, !llvm.loop !488

bb.w:                                             ; preds = %._crit_edge320
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !220  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !512
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.an

bb.y:                                             ; preds = %._crit_edge320
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !220  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !512
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIisESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.de

bb.aa:                                            ; preds = %.loopexit303.thread, %.loopexit303
  %i.hi = phi ptr [ %i.cw, %.loopexit303.thread ], [ %i.ea, %.loopexit303 ] ; 2 uses
  %i.hj = phi ptr [ %i.dk, %.loopexit303.thread ], [ %i.eb, %.loopexit303 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp ugt i64 %i.hl, 4611686018427387903
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ad

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = shl nuw nsw i64 %i.hl, 1
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #17
          to label %.noexc166 unwind label %bb.ad ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.ho, ptr %17, align 8, !tbaa !226
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !513
  store i16 0, ptr %i.ho, align 2, !tbaa !211
  %i.hr = getelementptr i8, ptr %i.ho, i64 2      ; 3 uses
  %i.hs = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hs, 1  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.hr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !211
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hu, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hr, %.noexc166 ], [ null, %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hv, align 8, !tbaa !514
  br i1 %.not478, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader302.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge316

.preheader302.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_.exit.thread.i
  %.not347 = icmp eq i64 %.088, 0
  %i.hw = load i64, ptr %i.d, align 8             ; 14 uses
  %.not348 = icmp eq i64 %i.hw, 0
  %brmerge = select i1 %.not347, i1 true, i1 %.not348
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader302.preheader

.preheader302.preheader:                          ; preds = %.preheader302.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %i.hx = mul i64 %i.hw, -2
  %i.hy = mul i64 %i.hw, -2
  %min.iters.check539 = icmp ult i64 %i.hw, 4
  %min.iters.check540 = icmp ult i64 %i.hw, 16
  %i.hz = and i64 %i.hw, 12
  %n.vec542 = and i64 %i.hw, -16                  ; 5 uses
  %cmp.n549 = icmp eq i64 %i.hw, %n.vec542
  %min.epilog.iters.check = icmp eq i64 %i.hz, 0
  %n.vec551 = and i64 %i.hw, -4                   ; 4 uses
  %cmp.n555 = icmp eq i64 %i.hw, %n.vec551
  %xtraiter596 = and i64 %i.hw, 3                 ; 2 uses
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  br label %.preheader302

.preheader302:                                    ; preds = %.preheader302.preheader, %._crit_edge311
  %indvars.iv = phi i64 [ 0, %.preheader302.preheader ], [ %indvars.iv.next, %._crit_edge311 ] ; 5 uses
  %i.ia = mul i64 %i.hx, %indvars.iv
  %i.ib = shl nuw nsw i64 %indvars.iv, 1
  %i.ic = load i32, ptr %i.c, align 4
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  %i.ig = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ih = mul i64 %i.ig, %indvars.iv
  %i.ii = load ptr, ptr %17, align 8              ; 2 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64
  %i.ik = getelementptr [2 x i8], ptr %i.ii, i64 %i.ih ; 7 uses
  %i.il = add i64 %i.ia, %i.ij
  %i.im = mul i64 %i.ig, %i.ib
  %i.in = add i64 %i.il, %i.im
  %i.io = sub i64 %i.in, %i.if
  %i.ip = mul i64 %i.hy, %i.id
  br label %iter.check

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge311, %.preheader302.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.iq = shl nuw nsw i64 %i.cg, 4
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #17
          to label %.noexc174 unwind label %bb.af ; 9 uses

.noexc174:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ir, ptr %18, align 8, !tbaa !166
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.cg
  %i.it = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.is, ptr %i.it, align 8, !tbaa !167
  %xtraiter599 = and i64 %i.cg, 7
  %i.iu = and i32 %i.ca, 7
  %lcmp.mod600.not = icmp eq i32 %i.iu, 0
  br i1 %lcmp.mod600.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol

.lr.ph.i.i.i.i.i168.prol:                         ; preds = %.noexc174, %.lr.ph.i.i.i.i.i168.prol
  %.013.i.i.i.i.i169.prol = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i168.prol ], [ %i.ir, %.noexc174 ] ; 3 uses
  %.01012.i.i.i.i.i170.prol = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ], [ %i.cg, %.noexc174 ]
  %prol.iter601 = phi i64 [ %prol.iter601.next, %.lr.ph.i.i.i.i.i168.prol ], [ 0, %.noexc174 ]
  store i32 0, ptr %.013.i.i.i.i.i169.prol, align 8, !tbaa !169
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 8
  store i64 0, ptr %i.iv, align 8, !tbaa !170
  %i.iw = add nsw i64 %.01012.i.i.i.i.i170.prol, -1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 16 ; 3 uses
  %prol.iter601.next = add i64 %prol.iter601, 1   ; 2 uses
  %prol.iter601.cmp.not = icmp eq i64 %prol.iter601.next, %xtraiter599
  br i1 %prol.iter601.cmp.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol, !llvm.loop !489

.lr.ph.i.i.i.i.i168.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i168.prol, %.noexc174
  %.lcssa.unr = phi ptr [ poison, %.noexc174 ], [ %i.ix, %.lr.ph.i.i.i.i.i168.prol ]
  %.013.i.i.i.i.i169.unr = phi ptr [ %i.ir, %.noexc174 ], [ %i.ix, %.lr.ph.i.i.i.i.i168.prol ]
  %.01012.i.i.i.i.i170.unr = phi i64 [ %i.cg, %.noexc174 ], [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ]
  %i.iy = icmp ult i32 %i.ca, 8
  br i1 %i.iy, label %.lr.ph, label %.lr.ph.i.i.i.i.i168

.lr.ph.i.i.i.i.i168:                              ; preds = %.lr.ph.i.i.i.i.i168.prol.loopexit, %.lr.ph.i.i.i.i.i168
  %.013.i.i.i.i.i169 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i.i168 ], [ %.013.i.i.i.i.i169.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i170 = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i168 ], [ %.01012.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i169, align 8, !tbaa !169
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 8
  store i64 0, ptr %i.iz, align 8, !tbaa !170
  %i.ja = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 16
  store i32 0, ptr %i.ja, align 8, !tbaa !169
  %i.jb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 24
  store i64 0, ptr %i.jb, align 8, !tbaa !170
  %i.jc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 32
  store i32 0, ptr %i.jc, align 8, !tbaa !169
  %i.jd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 40
  store i64 0, ptr %i.jd, align 8, !tbaa !170
  %i.je = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 48
  store i32 0, ptr %i.je, align 8, !tbaa !169
  %i.jf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 56
  store i64 0, ptr %i.jf, align 8, !tbaa !170
  %i.jg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 64
  store i32 0, ptr %i.jg, align 8, !tbaa !169
  %i.jh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 72
  store i64 0, ptr %i.jh, align 8, !tbaa !170
  %i.ji = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 80
  store i32 0, ptr %i.ji, align 8, !tbaa !169
  %i.jj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 88
  store i64 0, ptr %i.jj, align 8, !tbaa !170
  %i.jk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 96
  store i32 0, ptr %i.jk, align 8, !tbaa !169
  %i.jl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 104
  store i64 0, ptr %i.jl, align 8, !tbaa !170
  %i.jm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 112
  store i32 0, ptr %i.jm, align 8, !tbaa !169
  %i.jn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 120
  store i64 0, ptr %i.jn, align 8, !tbaa !170
  %i.jo = add nsw i64 %.01012.i.i.i.i.i170, -8    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 128 ; 2 uses
  %.not.i.i.i.i.i171.7 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i.i171.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i168, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit180

iter.check:                                       ; preds = %.preheader302, %._crit_edge
  %.0109310 = phi i64 [ 0, %.preheader302 ], [ %.lcssa515, %._crit_edge ] ; 7 uses
  %.0112309 = phi i64 [ 0, %.preheader302 ], [ %i.kt, %._crit_edge ] ; 3 uses
  %i.jr = mul i64 %.0112309, %i.id
  %i.js = add i64 %i.jr, %indvars.iv
  %i.jt = mul i64 %i.js, %i.hw
  %i.ju = getelementptr [2 x i8], ptr %i.ie, i64 %i.jt ; 7 uses
  br i1 %min.iters.check539, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jv = mul i64 %i.ip, %.0112309
  %i.jw = add i64 %i.io, %i.jv
  %i.jx = shl i64 %.0109310, 1
  %i.jy = add i64 %i.jw, %i.jx
  %i.jz = add i64 %i.jy, -1
  %diff.check = icmp ult i64 %i.jz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check540, label %vec.epilog.ph, label %vector.ph541

vector.ph541:                                     ; preds = %vector.main.loop.iter.check
  %i.ka = add i64 %.0109310, %n.vec542            ; 2 uses
  %i.kb = getelementptr [2 x i8], ptr %i.ik, i64 %.0109310
  br label %vector.body543

vector.body543:                                   ; preds = %vector.ph541, %vector.body543
  %index544 = phi i64 [ 0, %vector.ph541 ], [ %index.next547, %vector.body543 ] ; 3 uses
  %i.kc = getelementptr [2 x i8], ptr %i.ju, i64 %index544 ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 16
  %wide.load545 = load <8 x i16>, ptr %i.kc, align 2, !tbaa !211
  %wide.load546 = load <8 x i16>, ptr %i.kd, align 2, !tbaa !211
  %i.ke = getelementptr [2 x i8], ptr %i.kb, i64 %index544 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  store <8 x i16> %wide.load545, ptr %i.ke, align 2, !tbaa !211
  store <8 x i16> %wide.load546, ptr %i.kf, align 2, !tbaa !211
  %index.next547 = add nuw i64 %index544, 16      ; 2 uses
  %i.kg = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.kg, label %middle.block548, label %vector.body543, !llvm.loop !490

middle.block548:                                  ; preds = %vector.body543
  br i1 %cmp.n549, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block548
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec542, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.kh = add i64 %.0109310, %n.vec551            ; 2 uses
  %i.ki = getelementptr [2 x i8], ptr %i.ik, i64 %.0109310
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index552 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next554, %vec.epilog.vector.body ] ; 3 uses
  %i.kj = getelementptr [2 x i8], ptr %i.ju, i64 %index552
  %wide.load553 = load <4 x i16>, ptr %i.kj, align 2, !tbaa !211
  %i.kk = getelementptr [2 x i8], ptr %i.ki, i64 %index552
  store <4 x i16> %wide.load553, ptr %i.kk, align 2, !tbaa !211
  %index.next554 = add nuw i64 %index552, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next554, %n.vec551
  br i1 %i.kl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !491

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n555, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1110308.ph = phi i64 [ %.0109310, %iter.check ], [ %.0109310, %vector.memcheck ], [ %i.ka, %vec.epilog.iter.check ], [ %i.kh, %vec.epilog.middle.block ] ; 2 uses
  %.0111307.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec542, %vec.epilog.iter.check ], [ %n.vec551, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod597.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1110308.prol = phi i64 [ %i.kp, %vec.epilog.scalar.ph.prol ], [ %.1110308.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0111307.prol = phi i64 [ %i.kq, %vec.epilog.scalar.ph.prol ], [ %.0111307.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter598 = phi i64 [ %prol.iter598.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.km = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307.prol
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !211
  %i.ko = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308.prol
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !211
  %i.kp = add i64 %.1110308.prol, 1               ; 3 uses
  %i.kq = add nuw i64 %.0111307.prol, 1           ; 2 uses
  %prol.iter598.next = add i64 %prol.iter598, 1   ; 2 uses
  %prol.iter598.cmp.not = icmp eq i64 %prol.iter598.next, %xtraiter596
  br i1 %prol.iter598.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !492

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa583.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.kp, %vec.epilog.scalar.ph.prol ]
  %.1110308.unr = phi i64 [ %.1110308.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kp, %vec.epilog.scalar.ph.prol ]
  %.0111307.unr = phi i64 [ %.0111307.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kq, %vec.epilog.scalar.ph.prol ]
  %i.kr = sub i64 %.0111307.ph, %i.hw
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge311:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond359.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader302, !llvm.loop !493

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block548
  %.lcssa515 = phi i64 [ %i.kh, %vec.epilog.middle.block ], [ %i.ka, %middle.block548 ], [ %.lcssa583.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.lm, %vec.epilog.scalar.ph ]
  %i.kt = add nuw i64 %.0112309, 1                ; 2 uses
  %exitcond357.not = icmp eq i64 %i.kt, %.088
  br i1 %exitcond357.not, label %._crit_edge311, label %iter.check, !llvm.loop !494

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1110308 = phi i64 [ %i.lm, %vec.epilog.scalar.ph ], [ %.1110308.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0111307 = phi i64 [ %i.ln, %vec.epilog.scalar.ph ], [ %.0111307.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ku = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !211
  %i.kw = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !211
  %i.kx = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.ky = getelementptr i8, ptr %i.kx, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !211
  %i.la = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  %i.lb = getelementptr i8, ptr %i.la, i64 2
  store i16 %i.kz, ptr %i.lb, align 2, !tbaa !211
  %i.lc = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.ld = getelementptr i8, ptr %i.lc, i64 4
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !211
  %i.lf = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  %i.lg = getelementptr i8, ptr %i.lf, i64 4
  store i16 %i.le, ptr %i.lg, align 2, !tbaa !211
  %i.lh = getelementptr [2 x i8], ptr %i.ju, i64 %.0111307
  %i.li = getelementptr i8, ptr %i.lh, i64 6
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !211
  %i.lk = getelementptr [2 x i8], ptr %i.ik, i64 %.1110308
  %i.ll = getelementptr i8, ptr %i.lk, i64 6
  store i16 %i.lj, ptr %i.ll, align 2, !tbaa !211
  %i.lm = add i64 %.1110308, 4                    ; 2 uses
  %i.ln = add nuw i64 %.0111307, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ln, %i.hw
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !495

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i168, %.lr.ph.i.i.i.i.i168.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ], [ %i.jp, %.lr.ph.i.i.i.i.i168 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.lo, align 8, !tbaa !172
  %wide.trip.count364 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre402 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter603 = and i64 %wide.trip.count364, 3   ; 3 uses
  %i.lp = icmp ult i32 %i.ca, 4
  br i1 %i.lp, label %.epil.preheader602, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter607 = and i64 %wide.trip.count364, 2147483644
  br label %bb.ag

._crit_edge316.loopexit.unr-lcssa:                ; preds = %bb.ag
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %._crit_edge316, label %.epil.preheader602

.epil.preheader602:                               ; preds = %._crit_edge316.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv360.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next361.3, %._crit_edge316.loopexit.unr-lcssa ]
  %lcmp.mod606 = icmp ne i64 %xtraiter603, 0
  call void @llvm.assume(i1 %lcmp.mod606)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader602
  %indvars.iv360.epil = phi i64 [ %indvars.iv360.epil.init, %.epil.preheader602 ], [ %indvars.iv.next361.epil, %bb.ae ] ; 4 uses
  %epil.iter604 = phi i64 [ 0, %.epil.preheader602 ], [ %epil.iter604.next, %bb.ae ]
  %i.lq = mul i64 %.pre402, %indvars.iv360.epil
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %indvars.iv360.epil ; 2 uses
  %i.ls = trunc nuw nsw i64 %indvars.iv360.epil to i32
  store i32 %i.ls, ptr %i.lr, align 8, !tbaa !169
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.lq, ptr %i.lt, align 8, !tbaa !170
  %indvars.iv.next361.epil = add nuw nsw i64 %indvars.iv360.epil, 1
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %._crit_edge316, label %bb.ae, !llvm.loop !496

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit.unr-lcssa, %bb.ae, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !515
  %i.lu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.lu, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !515
  %i.lv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.lv, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIssEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IssEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ah unwind label %bb.ak

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.new
  %indvars.iv360 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next361.3, %bb.ag ] ; 7 uses
  %niter608 = phi i64 [ 0, %.lr.ph.new ], [ %niter608.next.3, %bb.ag ]
end_hunk_4
begin_hunk_5_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS_6hfloatEfEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEib:bb.a
          cleanup
  br label %bb.dj

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit259

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163

bb.u:                                             ; preds = %.lr.ph313, %_ZNK2cv6hfloatcvfEv.exit
  %indvars.iv358 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next359, %_ZNK2cv6hfloatcvfEv.exit ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv358
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !543 ; 2 uses
  %i.fb = zext i16 %i.fa to i32                   ; 2 uses
  %i.fc = shl nuw nsw i32 %i.fb, 13               ; 2 uses
  %i.fd = and i32 %i.fc, 268427264                ; 2 uses
  %i.fe = add nuw nsw i32 %i.fd, 939524096
  %i.ff = and i32 %i.fb, 31744
  switch i32 %i.ff, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.v
    i32 0, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.fg = or i32 %i.fc, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.w:                                             ; preds = %bb.u
  %i.fh = add nuw nsw i32 %i.fd, 947912704
  %i.fi = bitcast i32 %i.fh to float
  %i.fj = fadd float %i.fi, f0xB8800000
  %i.fk = bitcast float %i.fj to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %bb.u, %bb.v, %bb.w
  %i.fl = phi i32 [ %i.fg, %bb.v ], [ %i.fk, %bb.w ], [ %i.fe, %bb.u ]
  %.signext.i = sext i16 %i.fa to i32
  %i.fm = and i32 %.signext.i, -2147483648
  %i.fn = or i32 %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv358 ; 2 uses
  %i.fp = trunc nuw nsw i64 %indvars.iv358 to i32
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !237
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !238
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge314, label %bb.u, !llvm.loop !520

bb.x:                                             ; preds = %._crit_edge314
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.fr = load ptr, ptr %14, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = load ptr, ptr %i.er, align 8, !tbaa !233
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #18
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit:        ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.aq

bb.z:                                             ; preds = %._crit_edge314
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.fx = load ptr, ptr %14, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = load ptr, ptr %i.er, align 8, !tbaa !233
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gb) #18
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163:     ; preds = %bb.aa, %bb.z, %bb.t
  %i.gc = phi ptr [ %i.dk, %bb.t ], [ %i.et, %bb.z ], [ %i.et, %bb.aa ]
  %i.gd = phi ptr [ %i.cw, %bb.t ], [ %i.es, %bb.z ], [ %i.es, %bb.aa ]
  %.pn119 = phi { ptr, i32 } [ %i.ey, %bb.t ], [ %i.fw, %bb.z ], [ %i.fw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dh

bb.ab:                                            ; preds = %.loopexit298.thread, %.loopexit298
  %i.ge = phi ptr [ %i.cw, %.loopexit298.thread ], [ %i.ea, %.loopexit298 ] ; 2 uses
  %i.gf = phi ptr [ %i.dk, %.loopexit298.thread ], [ %i.eb, %.loopexit298 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.gg, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.gh = mul i64 %i.gg, %i.cg                    ; 5 uses
  %i.gi = icmp ugt i64 %i.gh, 2305843009213693951
  br i1 %i.gi, label %bb.ac, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ae

.noexc165:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gj = shl nuw nsw i64 %i.gh, 2
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #17
          to label %.noexc166 unwind label %bb.ae ; 4 uses

.noexc166:                                        ; preds = %bb.ad
  store ptr %i.gk, ptr %17, align 8, !tbaa !241
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gh
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !242
  store float 0.000000e+00, ptr %i.gk, align 4, !tbaa !243
  %i.gn = getelementptr i8, ptr %i.gk, i64 4      ; 3 uses
  %i.go = add nsw i64 %i.gh, -1                   ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.go, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !243
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.gq, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gn, %.noexc166 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.gr, align 8, !tbaa !244
  br i1 %.not471, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader297.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge310

.preheader297.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.not341 = icmp eq i64 %.088, 0
  %i.gs = load i64, ptr %i.d, align 8             ; 6 uses
  %.not342 = icmp eq i64 %i.gs, 0
  %brmerge = select i1 %.not341, i1 true, i1 %.not342
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader297.preheader

.preheader297.preheader:                          ; preds = %.preheader297.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %min.iters.check532 = icmp ult i64 %i.gs, 4
  %n.vec534 = and i64 %i.gs, -4                   ; 4 uses
  %cmp.n541 = icmp eq i64 %i.gs, %n.vec534
  br label %.preheader297

.preheader297:                                    ; preds = %.preheader297.preheader, %._crit_edge305
  %indvars.iv = phi i64 [ 0, %.preheader297.preheader ], [ %indvars.iv.next, %._crit_edge305 ] ; 3 uses
  %i.gt = load i32, ptr %i.c, align 4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = load ptr, ptr %i.f, align 8
  %i.gw = load i64, ptr %i.g, align 8
  %i.gx = mul i64 %i.gw, %indvars.iv
  %i.gy = load ptr, ptr %17, align 8
  %i.gz = getelementptr [4 x i8], ptr %i.gy, i64 %i.gx ; 2 uses
  br label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge305, %.preheader297.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ha = shl nuw nsw i64 %i.cg, 4
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #17
          to label %.noexc170 unwind label %bb.ai ; 9 uses

.noexc170:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.hb, ptr %18, align 8, !tbaa !166
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.cg
  %i.hd = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !167
  %xtraiter = and i64 %i.cg, 7
  %i.he = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.he, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc170, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.prol ], [ %i.hb, %.noexc170 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.hg, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc170 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc170 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !169
  %i.hf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.hf, align 8, !tbaa !170
  %i.hg = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !521

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc170
  %.lcssa.unr = phi ptr [ poison, %.noexc170 ], [ %i.hh, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.hb, %.noexc170 ], [ %i.hh, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc170 ], [ %i.hg, %.lr.ph.i.i.i.i.i.prol ]
  %i.hi = icmp ult i32 %i.ca, 8
  br i1 %i.hi, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.hy, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !169
  %i.hj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.hj, align 8, !tbaa !170
  %i.hk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.hk, align 8, !tbaa !169
  %i.hl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.hl, align 8, !tbaa !170
  %i.hm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.hm, align 8, !tbaa !169
  %i.hn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.hn, align 8, !tbaa !170
  %i.ho = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ho, align 8, !tbaa !169
  %i.hp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.hp, align 8, !tbaa !170
  %i.hq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.hq, align 8, !tbaa !169
  %i.hr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.hr, align 8, !tbaa !170
  %i.hs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.hs, align 8, !tbaa !169
  %i.ht = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ht, align 8, !tbaa !170
  %i.hu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.hu, align 8, !tbaa !169
  %i.hv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.hv, align 8, !tbaa !170
  %i.hw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.hw, align 8, !tbaa !169
  %i.hx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.hx, align 8, !tbaa !170
  %i.hy = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit178

.preheader:                                       ; preds = %.preheader297, %._crit_edge
  %.0109304 = phi i64 [ 0, %.preheader297 ], [ %.lcssa509, %._crit_edge ] ; 3 uses
  %.0112303 = phi i64 [ 0, %.preheader297 ], [ %i.iz, %._crit_edge ] ; 2 uses
  %i.ib = mul i64 %.0112303, %i.gu
  %i.ic = add i64 %i.ib, %indvars.iv
  %i.id = mul i64 %i.ic, %i.gs
  %i.ie = getelementptr [2 x i8], ptr %i.gv, i64 %i.id ; 2 uses
  br i1 %min.iters.check532, label %scalar.ph531.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %.preheader
  %i.if = add i64 %.0109304, %n.vec534            ; 2 uses
  %i.ig = getelementptr [4 x i8], ptr %i.gz, i64 %.0109304
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph533
  %index536 = phi i64 [ 0, %vector.ph533 ], [ %index.next539, %vector.body535 ] ; 3 uses
  %i.ih = getelementptr [2 x i8], ptr %i.ie, i64 %index536
  %wide.load537 = load <4 x i16>, ptr %i.ih, align 2, !tbaa !543 ; 2 uses
  %i.ii = zext <4 x i16> %wide.load537 to <4 x i32> ; 2 uses
  %i.ij = shl nuw nsw <4 x i32> %i.ii, splat (i32 13) ; 2 uses
  %i.ik = and <4 x i32> %i.ij, splat (i32 268427264) ; 2 uses
  %i.il = add nuw nsw <4 x i32> %i.ik, splat (i32 939524096)
  %i.im = and <4 x i32> %i.ii, splat (i32 31744)  ; 2 uses
  %i.in = icmp eq <4 x i32> %i.im, splat (i32 31744)
  %i.io = icmp eq <4 x i32> %i.im, zeroinitializer
  %i.ip = add nuw nsw <4 x i32> %i.ik, splat (i32 947912704)
  %i.iq = bitcast <4 x i32> %i.ip to <4 x float>
  %i.ir = fadd <4 x float> %i.iq, splat (float f0xB8800000)
  %i.is = bitcast <4 x float> %i.ir to <4 x i32>
  %i.it = or <4 x i32> %i.ij, splat (i32 1879048192)
  %predphi = select <4 x i1> %i.in, <4 x i32> %i.it, <4 x i32> %i.il
  %predphi538 = select <4 x i1> %i.io, <4 x i32> %i.is, <4 x i32> %predphi
  %i.iu = sext <4 x i16> %wide.load537 to <4 x i32>
  %i.iv = and <4 x i32> %i.iu, splat (i32 -2147483648)
  %i.iw = or <4 x i32> %predphi538, %i.iv
  %i.ix = getelementptr [4 x i8], ptr %i.ig, i64 %index536
  store <4 x i32> %i.iw, ptr %i.ix, align 4, !tbaa !243
  %index.next539 = add nuw i64 %index536, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next539, %n.vec534
  br i1 %i.iy, label %middle.block540, label %vector.body535, !llvm.loop !522

middle.block540:                                  ; preds = %vector.body535
  br i1 %cmp.n541, label %._crit_edge, label %scalar.ph531.preheader

scalar.ph531.preheader:                           ; preds = %.preheader, %middle.block540
  %.1110302.ph = phi i64 [ %.0109304, %.preheader ], [ %i.if, %middle.block540 ]
  %.0111301.ph = phi i64 [ 0, %.preheader ], [ %n.vec534, %middle.block540 ]
  br label %scalar.ph531

._crit_edge305:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond351.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader297, !llvm.loop !523

._crit_edge:                                      ; preds = %_ZNK2cv6hfloatcvfEv.exit172, %middle.block540
  %.lcssa509 = phi i64 [ %i.if, %middle.block540 ], [ %i.jq, %_ZNK2cv6hfloatcvfEv.exit172 ]
  %i.iz = add nuw i64 %.0112303, 1                ; 2 uses
  %exitcond349.not = icmp eq i64 %i.iz, %.088
  br i1 %exitcond349.not, label %._crit_edge305, label %.preheader, !llvm.loop !524

scalar.ph531:                                     ; preds = %scalar.ph531.preheader, %_ZNK2cv6hfloatcvfEv.exit172
  %.1110302 = phi i64 [ %i.jq, %_ZNK2cv6hfloatcvfEv.exit172 ], [ %.1110302.ph, %scalar.ph531.preheader ] ; 2 uses
  %.0111301 = phi i64 [ %i.jr, %_ZNK2cv6hfloatcvfEv.exit172 ], [ %.0111301.ph, %scalar.ph531.preheader ] ; 2 uses
  %i.ja = getelementptr [2 x i8], ptr %i.ie, i64 %.0111301
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !543 ; 2 uses
  %i.jc = zext i16 %i.jb to i32                   ; 2 uses
  %i.jd = shl nuw nsw i32 %i.jc, 13               ; 2 uses
  %i.je = and i32 %i.jd, 268427264                ; 2 uses
  %i.jf = add nuw nsw i32 %i.je, 939524096
  %i.jg = and i32 %i.jc, 31744
  switch i32 %i.jg, label %_ZNK2cv6hfloatcvfEv.exit172 [
    i32 31744, label %bb.af
    i32 0, label %bb.ag
  ]

bb.af:                                            ; preds = %scalar.ph531
  %i.jh = or i32 %i.jd, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit172

bb.ag:                                            ; preds = %scalar.ph531
  %i.ji = add nuw nsw i32 %i.je, 947912704
  %i.jj = bitcast i32 %i.ji to float
  %i.jk = fadd float %i.jj, f0xB8800000
  %i.jl = bitcast float %i.jk to i32
  br label %_ZNK2cv6hfloatcvfEv.exit172

_ZNK2cv6hfloatcvfEv.exit172:                      ; preds = %scalar.ph531, %bb.af, %bb.ag
  %i.jm = phi i32 [ %i.jh, %bb.af ], [ %i.jl, %bb.ag ], [ %i.jf, %scalar.ph531 ]
  %.signext.i171 = sext i16 %i.jb to i32
  %i.jn = and i32 %.signext.i171, -2147483648
  %i.jo = or i32 %i.jm, %i.jn
  %i.jp = getelementptr [4 x i8], ptr %i.gz, i64 %.1110302
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !243
  %i.jq = add i64 %.1110302, 1                    ; 2 uses
  %i.jr = add nuw i64 %.0111301, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jr, %i.gs
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph531, !llvm.loop !525

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.hz, %.lr.ph.i.i.i.i.i ]
  %i.js = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.js, align 8, !tbaa !172
  %wide.trip.count356 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre394 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter578 = and i64 %wide.trip.count356, 3   ; 3 uses
  %i.jt = icmp ult i32 %i.ca, 4
  br i1 %i.jt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count356, 2147483644
  br label %bb.aj

._crit_edge310.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod579.not, label %._crit_edge310, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge310.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv352.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next353.3, %._crit_edge310.loopexit.unr-lcssa ]
  %lcmp.mod580 = icmp ne i64 %xtraiter578, 0
  call void @llvm.assume(i1 %lcmp.mod580)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %indvars.iv352.epil = phi i64 [ %indvars.iv352.epil.init, %.epil.preheader ], [ %indvars.iv.next353.epil, %bb.ah ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.ju = mul i64 %.pre394, %indvars.iv352.epil
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv352.epil ; 2 uses
  %i.jw = trunc nuw nsw i64 %indvars.iv352.epil to i32
  store i32 %i.jw, ptr %i.jv, align 8, !tbaa !169
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %i.ju, ptr %i.jx, align 8, !tbaa !170
  %indvars.iv.next353.epil = add nuw nsw i64 %indvars.iv352.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter578
  br i1 %epil.iter.cmp.not, label %._crit_edge310, label %bb.ah, !llvm.loop !526

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit.unr-lcssa, %bb.ah, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !246
  %i.jy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.jy, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !246
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.jz, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplINS_6hfloatEfEEvRKNS_3MatERSt6vectorIS5_SaIS5_EEibEUlmmE_ZNKS3_IS4_fEEvS7_SB_ibEUlmmE0_EEvRS8_ISt4pairIiT_ESaISG_EERKT0_RKT1_RS8_IiSaIiEESS_RS8_IlSaIlEESS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ak unwind label %bb.an

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit176

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.new
  %indvars.iv352 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next353.3, %bb.aj ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.aj ]
  %i.kb = mul i64 %.pre394, %indvars.iv352
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv352 ; 2 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv352 to i32
  store i32 %i.kd, ptr %i.kc, align 8, !tbaa !169
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i64 %i.kb, ptr %i.ke, align 8, !tbaa !170
  %indvars.iv.next353 = or disjoint i64 %indvars.iv352, 1 ; 3 uses
  %i.kf = mul i64 %.pre394, %indvars.iv.next353
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv.next353 ; 2 uses
  %i.kh = trunc nuw nsw i64 %indvars.iv.next353 to i32
  store i32 %i.kh, ptr %i.kg, align 8, !tbaa !169
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %i.kf, ptr %i.ki, align 8, !tbaa !170
  %indvars.iv.next353.1 = or disjoint i64 %indvars.iv352, 2 ; 3 uses
  %i.kj = mul i64 %.pre394, %indvars.iv.next353.1
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv.next353.1 ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv.next353.1 to i32
  store i32 %i.kl, ptr %i.kk, align 8, !tbaa !169
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kj, ptr %i.km, align 8, !tbaa !170
  %indvars.iv.next353.2 = or disjoint i64 %indvars.iv352, 3 ; 3 uses
  %i.kn = mul i64 %.pre394, %indvars.iv.next353.2
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv.next353.2 ; 2 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv.next353.2 to i32
  store i32 %i.kp, ptr %i.ko, align 8, !tbaa !169
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %i.kn, ptr %i.kq, align 8, !tbaa !170
  %indvars.iv.next353.3 = add nuw nsw i64 %indvars.iv352, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge310.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !527

bb.ak:                                            ; preds = %._crit_edge310
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
end_hunk_5
begin_hunk_6_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS_6bfloatEfEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEib:bb.a
  %indvars.iv356.ph = phi i64 [ 0, %.lr.ph311 ], [ %n.vec531, %middle.block538 ]
  br label %scalar.ph528

._crit_edge312:                                   ; preds = %scalar.ph528, %middle.block538, %.thread483
  %i.fb = phi ptr [ %i.ek, %.thread483 ], [ %i.ep, %middle.block538 ], [ %i.ep, %scalar.ph528 ] ; 2 uses
  %i.fc = phi ptr [ %i.ea, %.thread483 ], [ %i.cw, %middle.block538 ], [ %i.cw, %scalar.ph528 ] ; 3 uses
  %i.fd = phi ptr [ %i.eb, %.thread483 ], [ %i.dk, %middle.block538 ], [ %i.dk, %scalar.ph528 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysIfZNKS1_14uniqueAxisImplINS_6bfloatEfEEvRKNS_3MatERSt6vectorIS5_SaIS5_EEibEUlRKfSD_E_ZNKS3_IS4_fEEvS7_SB_ibEUlSD_SD_E0_EEvRS8_ISt4pairIiT_ESaISI_EERKT0_RKT1_RS8_IiSaIiEESU_RS8_IlSaIlEESU_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.u unwind label %bb.w

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit257

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163

scalar.ph528:                                     ; preds = %scalar.ph528.preheader, %scalar.ph528
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %scalar.ph528 ], [ %indvars.iv356.ph, %scalar.ph528.preheader ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv356
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !572
  %i.fl = zext i16 %i.fk to i32
  %i.fm = shl nuw i32 %i.fl, 16
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv356 ; 2 uses
  %i.fo = trunc nuw nsw i64 %indvars.iv356 to i32
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !237
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !238
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count360
  br i1 %exitcond361.not, label %._crit_edge312, label %scalar.ph528, !llvm.loop !549

bb.u:                                             ; preds = %._crit_edge312
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.fq = load ptr, ptr %14, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = load ptr, ptr %i.fb, align 8, !tbaa !233
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fu) #18
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit:        ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.al

bb.w:                                             ; preds = %._crit_edge312
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.fw = load ptr, ptr %14, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = load ptr, ptr %i.fb, align 8, !tbaa !233
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #18
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163:     ; preds = %bb.x, %bb.w, %bb.t
  %i.gb = phi ptr [ %i.dk, %bb.t ], [ %i.fd, %bb.w ], [ %i.fd, %bb.x ]
  %i.gc = phi ptr [ %i.cw, %bb.t ], [ %i.fc, %bb.w ], [ %i.fc, %bb.x ]
  %.pn119 = phi { ptr, i32 } [ %i.fi, %bb.t ], [ %i.fv, %bb.w ], [ %i.fv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dc

bb.y:                                             ; preds = %.loopexit296.thread, %.loopexit296
  %i.gd = phi ptr [ %i.cw, %.loopexit296.thread ], [ %i.ea, %.loopexit296 ] ; 2 uses
  %i.ge = phi ptr [ %i.dk, %.loopexit296.thread ], [ %i.eb, %.loopexit296 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.gf = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.gf, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.gg = mul i64 %i.gf, %i.cg                    ; 5 uses
  %i.gh = icmp ugt i64 %i.gg, 2305843009213693951
  br i1 %i.gh, label %bb.z, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ab

.noexc165:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gi = shl nuw nsw i64 %i.gg, 2
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #17
          to label %.noexc166 unwind label %bb.ab ; 4 uses

.noexc166:                                        ; preds = %bb.aa
  store ptr %i.gj, ptr %17, align 8, !tbaa !241
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gg
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !242
  store float 0.000000e+00, ptr %i.gj, align 4, !tbaa !243
  %i.gm = getelementptr i8, ptr %i.gj, i64 4      ; 3 uses
  %i.gn = add nsw i64 %i.gg, -1                   ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gn, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gm, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !243
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.gp, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gm, %.noexc166 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.gq, align 8, !tbaa !244
  br i1 %.not468, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader295.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge308

.preheader295.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.not339 = icmp eq i64 %.088, 0
  %i.gr = load i64, ptr %i.d, align 8             ; 6 uses
  %.not340 = icmp eq i64 %i.gr, 0
  %brmerge = select i1 %.not339, i1 true, i1 %.not340
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader295.preheader

.preheader295.preheader:                          ; preds = %.preheader295.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %min.iters.check542 = icmp ult i64 %i.gr, 8
  %n.vec544 = and i64 %i.gr, -8                   ; 4 uses
  %cmp.n551 = icmp eq i64 %i.gr, %n.vec544
  br label %.preheader295

.preheader295:                                    ; preds = %.preheader295.preheader, %._crit_edge303
  %indvars.iv = phi i64 [ 0, %.preheader295.preheader ], [ %indvars.iv.next, %._crit_edge303 ] ; 3 uses
  %i.gs = load i32, ptr %i.c, align 4
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load ptr, ptr %i.f, align 8
  %i.gv = load i64, ptr %i.g, align 8
  %i.gw = mul i64 %i.gv, %indvars.iv
  %i.gx = load ptr, ptr %17, align 8
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %i.gw ; 2 uses
  br label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge303, %.preheader295.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.gz = shl nuw nsw i64 %i.cg, 4
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #17
          to label %.noexc170 unwind label %bb.ad ; 9 uses

.noexc170:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ha, ptr %18, align 8, !tbaa !166
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.cg
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !167
  %xtraiter = and i64 %i.cg, 7
  %i.hd = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.hd, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc170, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.prol ], [ %i.ha, %.noexc170 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.hf, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc170 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc170 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !169
  %i.he = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.he, align 8, !tbaa !170
  %i.hf = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !550

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc170
  %.lcssa.unr = phi ptr [ poison, %.noexc170 ], [ %i.hg, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ha, %.noexc170 ], [ %i.hg, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc170 ], [ %i.hf, %.lr.ph.i.i.i.i.i.prol ]
  %i.hh = icmp ult i32 %i.ca, 8
  br i1 %i.hh, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.hx, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !169
  %i.hi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.hi, align 8, !tbaa !170
  %i.hj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.hj, align 8, !tbaa !169
  %i.hk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.hk, align 8, !tbaa !170
  %i.hl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.hl, align 8, !tbaa !169
  %i.hm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.hm, align 8, !tbaa !170
  %i.hn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.hn, align 8, !tbaa !169
  %i.ho = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ho, align 8, !tbaa !170
  %i.hp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.hp, align 8, !tbaa !169
  %i.hq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.hq, align 8, !tbaa !170
  %i.hr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.hr, align 8, !tbaa !169
  %i.hs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.hs, align 8, !tbaa !170
  %i.ht = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.ht, align 8, !tbaa !169
  %i.hu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.hu, align 8, !tbaa !170
  %i.hv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.hv, align 8, !tbaa !169
  %i.hw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.hw, align 8, !tbaa !170
  %i.hx = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit176

.preheader:                                       ; preds = %.preheader295, %._crit_edge
  %.0109302 = phi i64 [ 0, %.preheader295 ], [ %.lcssa506, %._crit_edge ] ; 3 uses
  %.0112301 = phi i64 [ 0, %.preheader295 ], [ %i.ip, %._crit_edge ] ; 2 uses
  %i.ia = mul i64 %.0112301, %i.gt
  %i.ib = add i64 %i.ia, %indvars.iv
  %i.ic = mul i64 %i.ib, %i.gr
  %i.id = getelementptr [2 x i8], ptr %i.gu, i64 %i.ic ; 2 uses
  br i1 %min.iters.check542, label %scalar.ph541.preheader, label %vector.ph543

vector.ph543:                                     ; preds = %.preheader
  %i.ie = add i64 %.0109302, %n.vec544            ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %i.gy, i64 %.0109302
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph543
  %index546 = phi i64 [ 0, %vector.ph543 ], [ %index.next549, %vector.body545 ] ; 3 uses
  %i.ig = getelementptr [2 x i8], ptr %i.id, i64 %index546 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  %wide.load547 = load <4 x i16>, ptr %i.ig, align 2, !tbaa !572
  %wide.load548 = load <4 x i16>, ptr %i.ih, align 2, !tbaa !572
  %i.ii = zext <4 x i16> %wide.load547 to <4 x i32>
  %i.ij = zext <4 x i16> %wide.load548 to <4 x i32>
  %i.ik = shl nuw <4 x i32> %i.ii, splat (i32 16)
  %i.il = shl nuw <4 x i32> %i.ij, splat (i32 16)
  %i.im = getelementptr [4 x i8], ptr %i.if, i64 %index546 ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 16
  store <4 x i32> %i.ik, ptr %i.im, align 4, !tbaa !243
  store <4 x i32> %i.il, ptr %i.in, align 4, !tbaa !243
  %index.next549 = add nuw i64 %index546, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next549, %n.vec544
  br i1 %i.io, label %middle.block550, label %vector.body545, !llvm.loop !551

middle.block550:                                  ; preds = %vector.body545
  br i1 %cmp.n551, label %._crit_edge, label %scalar.ph541.preheader

scalar.ph541.preheader:                           ; preds = %.preheader, %middle.block550
  %.1110300.ph = phi i64 [ %.0109302, %.preheader ], [ %i.ie, %middle.block550 ]
  %.0111299.ph = phi i64 [ 0, %.preheader ], [ %n.vec544, %middle.block550 ]
  br label %scalar.ph541

._crit_edge303:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond349.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond349.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader295, !llvm.loop !552

._crit_edge:                                      ; preds = %scalar.ph541, %middle.block550
  %.lcssa506 = phi i64 [ %i.ie, %middle.block550 ], [ %i.iv, %scalar.ph541 ]
  %i.ip = add nuw i64 %.0112301, 1                ; 2 uses
  %exitcond347.not = icmp eq i64 %i.ip, %.088
  br i1 %exitcond347.not, label %._crit_edge303, label %.preheader, !llvm.loop !553

scalar.ph541:                                     ; preds = %scalar.ph541.preheader, %scalar.ph541
  %.1110300 = phi i64 [ %i.iv, %scalar.ph541 ], [ %.1110300.ph, %scalar.ph541.preheader ] ; 2 uses
  %.0111299 = phi i64 [ %i.iw, %scalar.ph541 ], [ %.0111299.ph, %scalar.ph541.preheader ] ; 2 uses
  %i.iq = getelementptr [2 x i8], ptr %i.id, i64 %.0111299
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !572
  %i.is = zext i16 %i.ir to i32
  %i.it = shl nuw i32 %i.is, 16
  %i.iu = getelementptr [4 x i8], ptr %i.gy, i64 %.1110300
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !243
  %i.iv = add i64 %.1110300, 1                    ; 2 uses
  %i.iw = add nuw i64 %.0111299, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.iw, %i.gr
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph541, !llvm.loop !554

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.hy, %.lr.ph.i.i.i.i.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.ix, align 8, !tbaa !172
  %wide.trip.count354 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre392 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter591 = and i64 %wide.trip.count354, 3   ; 3 uses
  %i.iy = icmp ult i32 %i.ca, 4
  br i1 %i.iy, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count354, 2147483644
  br label %bb.ae

._crit_edge308.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod592.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod592.not, label %._crit_edge308, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge308.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv350.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next351.3, %._crit_edge308.loopexit.unr-lcssa ]
  %lcmp.mod593 = icmp ne i64 %xtraiter591, 0
  call void @llvm.assume(i1 %lcmp.mod593)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv350.epil = phi i64 [ %indvars.iv350.epil.init, %.epil.preheader ], [ %indvars.iv.next351.epil, %bb.ac ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.iz = mul i64 %.pre392, %indvars.iv350.epil
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %indvars.iv350.epil ; 2 uses
  %i.jb = trunc nuw nsw i64 %indvars.iv350.epil to i32
  store i32 %i.jb, ptr %i.ja, align 8, !tbaa !169
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %i.iz, ptr %i.jc, align 8, !tbaa !170
  %indvars.iv.next351.epil = add nuw nsw i64 %indvars.iv350.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter591
  br i1 %epil.iter.cmp.not, label %._crit_edge308, label %bb.ac, !llvm.loop !555

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit.unr-lcssa, %bb.ac, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !246
  %i.jd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.jd, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !246
  %i.je = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.je, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplINS_6bfloatEfEEvRKNS_3MatERSt6vectorIS5_SaIS5_EEibEUlmmE_ZNKS3_IS4_fEEvS7_SB_ibEUlmmE0_EEvRS8_ISt4pairIiT_ESaISG_EERKT0_RKT1_RS8_IiSaIiEESS_RS8_IlSaIlEESS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.af unwind label %bb.ai

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit174

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv350 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next351.3, %bb.ae ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ae ]
  %i.jg = mul i64 %.pre392, %indvars.iv350
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %indvars.iv350 ; 2 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv350 to i32
  store i32 %i.ji, ptr %i.jh, align 8, !tbaa !169
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i64 %i.jg, ptr %i.jj, align 8, !tbaa !170
  %indvars.iv.next351 = or disjoint i64 %indvars.iv350, 1 ; 3 uses
  %i.jk = mul i64 %.pre392, %indvars.iv.next351
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %indvars.iv.next351 ; 2 uses
  %i.jm = trunc nuw nsw i64 %indvars.iv.next351 to i32
  store i32 %i.jm, ptr %i.jl, align 8, !tbaa !169
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.jk, ptr %i.jn, align 8, !tbaa !170
  %indvars.iv.next351.1 = or disjoint i64 %indvars.iv350, 2 ; 3 uses
  %i.jo = mul i64 %.pre392, %indvars.iv.next351.1
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %indvars.iv.next351.1 ; 2 uses
  %i.jq = trunc nuw nsw i64 %indvars.iv.next351.1 to i32
  store i32 %i.jq, ptr %i.jp, align 8, !tbaa !169
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %i.jo, ptr %i.jr, align 8, !tbaa !170
  %indvars.iv.next351.2 = or disjoint i64 %indvars.iv350, 3 ; 3 uses
  %i.js = mul i64 %.pre392, %indvars.iv.next351.2
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %indvars.iv.next351.2 ; 2 uses
  %i.ju = trunc nuw nsw i64 %indvars.iv.next351.2 to i32
  store i32 %i.ju, ptr %i.jt, align 8, !tbaa !169
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i64 %i.js, ptr %i.jv, align 8, !tbaa !170
  %indvars.iv.next351.3 = add nuw nsw i64 %indvars.iv350, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge308.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !556

bb.af:                                            ; preds = %._crit_edge308
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.jw = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !167
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jw to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kb) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.kc = load ptr, ptr %17, align 8, !tbaa !241  ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !242
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.al

end_hunk_6
begin_hunk_7_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit257

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit163

scalar.ph530:                                     ; preds = %scalar.ph530.prol.loopexit, %scalar.ph530
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.3, %scalar.ph530 ], [ %indvars.iv357.unr, %scalar.ph530.prol.loopexit ] ; 7 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv357
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !139
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv357 ; 2 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv357 to i32
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !258
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.fr, ptr %i.fu, align 4, !tbaa !259
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next358
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !139
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next358 ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv.next358 to i32
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !258
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !259
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next358.1
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !139
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next358.1 ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.next358.1 to i32
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !258
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.gb, ptr %i.ge, align 4, !tbaa !259
  %indvars.iv.next358.2 = add nuw nsw i64 %indvars.iv357, 3 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next358.2
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !139
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next358.2 ; 2 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv.next358.2 to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !258
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.gg, ptr %i.gj, align 4, !tbaa !259
  %indvars.iv.next358.3 = add nuw nsw i64 %indvars.iv357, 4 ; 2 uses
  %exitcond362.not.3 = icmp eq i64 %indvars.iv.next358.3, %wide.trip.count361
  br i1 %exitcond362.not.3, label %._crit_edge313, label %scalar.ph530, !llvm.loop !582

bb.u:                                             ; preds = %._crit_edge313
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gk = load ptr, ptr %14, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = load ptr, ptr %i.fi, align 8, !tbaa !603
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #18
  br label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit:        ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.al

bb.w:                                             ; preds = %._crit_edge313
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gq = load ptr, ptr %14, align 8, !tbaa !255  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit163, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gr = load ptr, ptr %i.fi, align 8, !tbaa !603
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #18
  br label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit163:     ; preds = %bb.x, %bb.w, %bb.t
  %i.gv = phi ptr [ %i.dk, %bb.t ], [ %i.fk, %bb.w ], [ %i.fk, %bb.x ]
  %i.gw = phi ptr [ %i.cw, %bb.t ], [ %i.fj, %bb.w ], [ %i.fj, %bb.x ]
  %.pn119 = phi { ptr, i32 } [ %i.fp, %bb.t ], [ %i.gp, %bb.w ], [ %i.gp, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dc

bb.y:                                             ; preds = %.loopexit297.thread, %.loopexit297
  %i.gx = phi ptr [ %i.cw, %.loopexit297.thread ], [ %i.ea, %.loopexit297 ] ; 2 uses
  %i.gy = phi ptr [ %i.dk, %.loopexit297.thread ], [ %i.eb, %.loopexit297 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.gz, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.ha = mul i64 %i.gz, %i.cg                    ; 5 uses
  %i.hb = icmp ugt i64 %i.ha, 2305843009213693951
  br i1 %i.hb, label %bb.z, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ab

.noexc165:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hc = shl nuw nsw i64 %i.ha, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #17
          to label %.noexc166 unwind label %bb.ab ; 4 uses

.noexc166:                                        ; preds = %bb.aa
  store ptr %i.hd, ptr %17, align 8, !tbaa !261
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !606
  store i32 0, ptr %i.hd, align 4, !tbaa !139
  %i.hg = getelementptr i8, ptr %i.hd, i64 4      ; 3 uses
  %i.hh = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hh, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.hg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !139
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hj, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hg, %.noexc166 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hk, align 8, !tbaa !607
  br i1 %.not469, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader296.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge309

.preheader296.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %.not340 = icmp eq i64 %.088, 0
  %i.hl = load i64, ptr %i.d, align 8             ; 8 uses
  %.not341 = icmp eq i64 %i.hl, 0
  %brmerge = select i1 %.not340, i1 true, i1 %.not341
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader296.preheader

.preheader296.preheader:                          ; preds = %.preheader296.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %xtraiter580 = and i64 %i.hl, 1
  %i.hm = icmp eq i64 %i.hl, 1
  %unroll_iter = and i64 %i.hl, -2
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod583 = trunc i64 %i.hl to i1
  br label %.preheader296

.preheader296:                                    ; preds = %.preheader296.preheader, %._crit_edge304
  %indvars.iv = phi i64 [ 0, %.preheader296.preheader ], [ %indvars.iv.next, %._crit_edge304 ] ; 5 uses
  %i.hn = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ho = load i64, ptr %i.g, align 8
  %i.hp = mul i64 %i.ho, %indvars.iv
  %i.hq = load ptr, ptr %17, align 8
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp ; 3 uses
  br label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge304, %.preheader296.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.hs = shl nuw nsw i64 %i.cg, 4
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #17
          to label %.noexc170 unwind label %bb.ad ; 9 uses

.noexc170:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ht, ptr %18, align 8, !tbaa !166
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.cg
  %i.hv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !167
  %xtraiter584 = and i64 %i.cg, 7
  %i.hw = and i32 %i.ca, 7
  %lcmp.mod585.not = icmp eq i32 %i.hw, 0
  br i1 %lcmp.mod585.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc170, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.prol ], [ %i.ht, %.noexc170 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc170 ]
  %prol.iter586 = phi i64 [ %prol.iter586.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc170 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !169
  %i.hx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.hx, align 8, !tbaa !170
  %i.hy = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter586.next = add i64 %prol.iter586, 1   ; 2 uses
  %prol.iter586.cmp.not = icmp eq i64 %prol.iter586.next, %xtraiter584
  br i1 %prol.iter586.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !583

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc170
  %.lcssa.unr = phi ptr [ poison, %.noexc170 ], [ %i.hz, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ht, %.noexc170 ], [ %i.hz, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc170 ], [ %i.hy, %.lr.ph.i.i.i.i.i.prol ]
  %i.ia = icmp ult i32 %i.ca, 8
  br i1 %i.ia, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !169
  %i.ib = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ib, align 8, !tbaa !170
  %i.ic = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ic, align 8, !tbaa !169
  %i.id = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.id, align 8, !tbaa !170
  %i.ie = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.ie, align 8, !tbaa !169
  %i.if = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.if, align 8, !tbaa !170
  %i.ig = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ig, align 8, !tbaa !169
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ih, align 8, !tbaa !170
  %i.ii = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.ii, align 8, !tbaa !169
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ij, align 8, !tbaa !170
  %i.ik = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.ik, align 8, !tbaa !169
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.il, align 8, !tbaa !170
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.im, align 8, !tbaa !169
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.in, align 8, !tbaa !170
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.io, align 8, !tbaa !169
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.ip, align 8, !tbaa !170
  %i.iq = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit176

.preheader:                                       ; preds = %.preheader296, %._crit_edge
  %.0109303 = phi i64 [ 0, %.preheader296 ], [ %.lcssa571, %._crit_edge ] ; 2 uses
  %.0112302 = phi i64 [ 0, %.preheader296 ], [ %i.jd, %._crit_edge ] ; 4 uses
  br i1 %i.hm, label %.epil.preheader, label %.preheader.new

._crit_edge304:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond350.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader296, !llvm.loop !584

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod581.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.1110301.epil.init = phi i64 [ %.0109303, %.preheader ], [ %i.jy, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0111300.epil.init = phi i64 [ 0, %.preheader ], [ %i.jz, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod583)
  %i.it = load i32, ptr %i.c, align 4, !tbaa !139
  %i.iu = sext i32 %i.it to i64
  %i.iv = mul i64 %.0112302, %i.iu
  %i.iw = add i64 %i.iv, %indvars.iv
  %i.ix = mul i64 %i.iw, %i.hl
  %i.iy = getelementptr [4 x i8], ptr %i.hn, i64 %i.ix
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %.0111300.epil.init
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !139
  %i.jb = getelementptr [4 x i8], ptr %i.hr, i64 %.1110301.epil.init
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !139
  %i.jc = add i64 %.1110301.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa571 = phi i64 [ %i.jy, %._crit_edge.unr-lcssa ], [ %i.jc, %.epil.preheader ]
  %i.jd = add nuw i64 %.0112302, 1                ; 2 uses
  %exitcond348.not = icmp eq i64 %i.jd, %.088
  br i1 %exitcond348.not, label %._crit_edge304, label %.preheader, !llvm.loop !585

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.1110301 = phi i64 [ %i.jy, %.preheader.new ], [ %.0109303, %.preheader ] ; 3 uses
  %.0111300 = phi i64 [ %i.jz, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.je = load i32, ptr %i.c, align 4, !tbaa !139
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %.0112302, %i.jf
  %i.jh = add i64 %i.jg, %indvars.iv
  %i.ji = mul i64 %i.jh, %i.hl
  %i.jj = getelementptr [4 x i8], ptr %i.hn, i64 %i.ji
  %i.jk = getelementptr [4 x i8], ptr %i.jj, i64 %.0111300
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !139
  %i.jm = getelementptr [4 x i8], ptr %i.hr, i64 %.1110301
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !139
  %i.jn = load i32, ptr %i.c, align 4, !tbaa !139
  %i.jo = sext i32 %i.jn to i64
  %i.jp = mul i64 %.0112302, %i.jo
  %i.jq = add i64 %i.jp, %indvars.iv
  %i.jr = mul i64 %i.jq, %i.hl
  %i.js = getelementptr [4 x i8], ptr %i.hn, i64 %i.jr
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %.0111300
  %i.ju = getelementptr i8, ptr %i.jt, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !139
  %i.jw = getelementptr [4 x i8], ptr %i.hr, i64 %.1110301
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !139
  %i.jy = add i64 %.1110301, 2                    ; 3 uses
  %i.jz = add nuw i64 %.0111300, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !586

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ir, %.lr.ph.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.ka, align 8, !tbaa !172
  %wide.trip.count355 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre393 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter588 = and i64 %wide.trip.count355, 3   ; 3 uses
  %i.kb = icmp ult i32 %i.ca, 4
  br i1 %i.kb, label %.epil.preheader587, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter591 = and i64 %wide.trip.count355, 2147483644
  br label %bb.ae

._crit_edge309.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %._crit_edge309, label %.epil.preheader587

.epil.preheader587:                               ; preds = %._crit_edge309.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv351.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next352.3, %._crit_edge309.loopexit.unr-lcssa ]
  %lcmp.mod590 = icmp ne i64 %xtraiter588, 0
  call void @llvm.assume(i1 %lcmp.mod590)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader587
  %indvars.iv351.epil = phi i64 [ %indvars.iv351.epil.init, %.epil.preheader587 ], [ %indvars.iv.next352.epil, %bb.ac ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader587 ], [ %epil.iter.next, %bb.ac ]
  %i.kc = mul i64 %.pre393, %indvars.iv351.epil
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv351.epil ; 2 uses
  %i.ke = trunc nuw nsw i64 %indvars.iv351.epil to i32
  store i32 %i.ke, ptr %i.kd, align 8, !tbaa !169
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %i.kc, ptr %i.kf, align 8, !tbaa !170
  %indvars.iv.next352.epil = add nuw nsw i64 %indvars.iv351.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter588
  br i1 %epil.iter.cmp.not, label %._crit_edge309, label %bb.ac, !llvm.loop !587

._crit_edge309:                                   ; preds = %._crit_edge309.loopexit.unr-lcssa, %bb.ac, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !608
  %i.kg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.kg, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !608
  %i.kh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.kh, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIjjEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IjjEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.af unwind label %bb.ai

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit174

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv351 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next352.3, %bb.ae ] ; 7 uses
  %niter592 = phi i64 [ 0, %.lr.ph.new ], [ %niter592.next.3, %bb.ae ]
  %i.kj = mul i64 %.pre393, %indvars.iv351
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv351 ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv351 to i32
  store i32 %i.kl, ptr %i.kk, align 8, !tbaa !169
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kj, ptr %i.km, align 8, !tbaa !170
  %indvars.iv.next352 = or disjoint i64 %indvars.iv351, 1 ; 3 uses
  %i.kn = mul i64 %.pre393, %indvars.iv.next352
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.next352 ; 2 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv.next352 to i32
  store i32 %i.kp, ptr %i.ko, align 8, !tbaa !169
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %i.kn, ptr %i.kq, align 8, !tbaa !170
  %indvars.iv.next352.1 = or disjoint i64 %indvars.iv351, 2 ; 3 uses
  %i.kr = mul i64 %.pre393, %indvars.iv.next352.1
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.next352.1 ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv.next352.1 to i32
  store i32 %i.kt, ptr %i.ks, align 8, !tbaa !169
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i64 %i.kr, ptr %i.ku, align 8, !tbaa !170
  %indvars.iv.next352.2 = or disjoint i64 %indvars.iv351, 3 ; 3 uses
  %i.kv = mul i64 %.pre393, %indvars.iv.next352.2
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.next352.2 ; 2 uses
  %i.kx = trunc nuw nsw i64 %indvars.iv.next352.2 to i32
  store i32 %i.kx, ptr %i.kw, align 8, !tbaa !169
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.kv, ptr %i.ky, align 8, !tbaa !170
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %niter592.next.3 = add i64 %niter592, 4         ; 2 uses
  %niter592.ncmp.3 = icmp eq i64 %niter592.next.3, %unroll_iter591
  br i1 %niter592.ncmp.3, label %._crit_edge309.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !588

bb.af:                                            ; preds = %._crit_edge309
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kz = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.la = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !167
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.lf = load ptr, ptr %17, align 8, !tbaa !261  ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !606
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lk) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
end_hunk_7
begin_hunk_8_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit262

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit163

scalar.ph535:                                     ; preds = %scalar.ph535.prol.loopexit, %scalar.ph535
  %indvars.iv362 = phi i64 [ %indvars.iv.next363.3, %scalar.ph535 ], [ %indvars.iv362.unr, %scalar.ph535.prol.loopexit ] ; 7 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv362
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !139
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv362 ; 2 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv362 to i32
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !270
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.fr, ptr %i.fu, align 4, !tbaa !271
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next363
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !139
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next363 ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv.next363 to i32
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !270
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !271
  %indvars.iv.next363.1 = add nuw nsw i64 %indvars.iv362, 2 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next363.1
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !139
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next363.1 ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.next363.1 to i32
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !270
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.gb, ptr %i.ge, align 4, !tbaa !271
  %indvars.iv.next363.2 = add nuw nsw i64 %indvars.iv362, 3 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next363.2
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !139
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next363.2 ; 2 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv.next363.2 to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !270
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.gg, ptr %i.gj, align 4, !tbaa !271
  %indvars.iv.next363.3 = add nuw nsw i64 %indvars.iv362, 4 ; 2 uses
  %exitcond367.not.3 = icmp eq i64 %indvars.iv.next363.3, %wide.trip.count366
  br i1 %exitcond367.not.3, label %._crit_edge318, label %scalar.ph535, !llvm.loop !618

bb.u:                                             ; preds = %._crit_edge318
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gk = load ptr, ptr %14, align 8, !tbaa !267  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = load ptr, ptr %i.fi, align 8, !tbaa !639
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #18
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.al

bb.w:                                             ; preds = %._crit_edge318
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gq = load ptr, ptr %14, align 8, !tbaa !267  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit163, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gr = load ptr, ptr %i.fi, align 8, !tbaa !639
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #18
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit163:     ; preds = %bb.x, %bb.w, %bb.t
  %i.gv = phi ptr [ %i.dk, %bb.t ], [ %i.fk, %bb.w ], [ %i.fk, %bb.x ]
  %i.gw = phi ptr [ %i.cw, %bb.t ], [ %i.fj, %bb.w ], [ %i.fj, %bb.x ]
  %.pn119 = phi { ptr, i32 } [ %i.fp, %bb.t ], [ %i.gp, %bb.w ], [ %i.gp, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dc

bb.y:                                             ; preds = %.loopexit302.thread, %.loopexit302
  %i.gx = phi ptr [ %i.cw, %.loopexit302.thread ], [ %i.ea, %.loopexit302 ] ; 2 uses
  %i.gy = phi ptr [ %i.dk, %.loopexit302.thread ], [ %i.eb, %.loopexit302 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.gz, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.ha = mul i64 %i.gz, %i.cg                    ; 5 uses
  %i.hb = icmp ugt i64 %i.ha, 2305843009213693951
  br i1 %i.hb, label %bb.z, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc167 unwind label %bb.ab

.noexc167:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i165 = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i.i.i165, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i166, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.hc = shl nuw nsw i64 %i.ha, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #17
          to label %.noexc168 unwind label %bb.ab ; 4 uses

.noexc168:                                        ; preds = %bb.aa
  store ptr %i.hd, ptr %17, align 8, !tbaa !138
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !149
  store i32 0, ptr %i.hd, align 4, !tbaa !139
  %i.hg = getelementptr i8, ptr %i.hd, i64 4      ; 3 uses
  %i.hh = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i166, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc168
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hh, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.hg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !139
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i166

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i166: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc168
  %.0.i.i.i.i.i = phi ptr [ %i.hj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hg, %.noexc168 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hk, align 8, !tbaa !137
  br i1 %.not474, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader301.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge314

.preheader301.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i166
  %.not345 = icmp eq i64 %.088, 0
  %i.hl = load i64, ptr %i.d, align 8             ; 8 uses
  %.not346 = icmp eq i64 %i.hl, 0
  %brmerge = select i1 %.not345, i1 true, i1 %.not346
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader301.preheader

.preheader301.preheader:                          ; preds = %.preheader301.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %xtraiter585 = and i64 %i.hl, 1
  %i.hm = icmp eq i64 %i.hl, 1
  %unroll_iter = and i64 %i.hl, -2
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  %lcmp.mod588 = trunc i64 %i.hl to i1
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.preheader, %._crit_edge309
  %indvars.iv = phi i64 [ 0, %.preheader301.preheader ], [ %indvars.iv.next, %._crit_edge309 ] ; 5 uses
  %i.hn = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ho = load i64, ptr %i.g, align 8
  %i.hp = mul i64 %i.ho, %indvars.iv
  %i.hq = load ptr, ptr %17, align 8
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp ; 3 uses
  br label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge309, %.preheader301.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.hs = shl nuw nsw i64 %i.cg, 4
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #17
          to label %.noexc172 unwind label %bb.ad ; 9 uses

.noexc172:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ht, ptr %18, align 8, !tbaa !166
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %i.cg
  %i.hv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !167
  %xtraiter589 = and i64 %i.cg, 7
  %i.hw = and i32 %i.ca, 7
  %lcmp.mod590.not = icmp eq i32 %i.hw, 0
  br i1 %lcmp.mod590.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc172, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.prol ], [ %i.ht, %.noexc172 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc172 ]
  %prol.iter591 = phi i64 [ %prol.iter591.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc172 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !169
  %i.hx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.hx, align 8, !tbaa !170
  %i.hy = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter591.next = add i64 %prol.iter591, 1   ; 2 uses
  %prol.iter591.cmp.not = icmp eq i64 %prol.iter591.next, %xtraiter589
  br i1 %prol.iter591.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !619

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc172
  %.lcssa.unr = phi ptr [ poison, %.noexc172 ], [ %i.hz, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ht, %.noexc172 ], [ %i.hz, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc172 ], [ %i.hy, %.lr.ph.i.i.i.i.i.prol ]
  %i.ia = icmp ult i32 %i.ca, 8
  br i1 %i.ia, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !169
  %i.ib = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ib, align 8, !tbaa !170
  %i.ic = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ic, align 8, !tbaa !169
  %i.id = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.id, align 8, !tbaa !170
  %i.ie = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.ie, align 8, !tbaa !169
  %i.if = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.if, align 8, !tbaa !170
  %i.ig = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ig, align 8, !tbaa !169
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ih, align 8, !tbaa !170
  %i.ii = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.ii, align 8, !tbaa !169
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ij, align 8, !tbaa !170
  %i.ik = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.ik, align 8, !tbaa !169
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.il, align 8, !tbaa !170
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.im, align 8, !tbaa !169
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.in, align 8, !tbaa !170
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.io, align 8, !tbaa !169
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.ip, align 8, !tbaa !170
  %i.iq = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit178

.preheader:                                       ; preds = %.preheader301, %._crit_edge
  %.0109308 = phi i64 [ 0, %.preheader301 ], [ %.lcssa576, %._crit_edge ] ; 2 uses
  %.0112307 = phi i64 [ 0, %.preheader301 ], [ %i.jd, %._crit_edge ] ; 4 uses
  br i1 %i.hm, label %.epil.preheader, label %.preheader.new

._crit_edge309:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond355.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader301, !llvm.loop !620

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod586.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.1110306.epil.init = phi i64 [ %.0109308, %.preheader ], [ %i.jy, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0111305.epil.init = phi i64 [ 0, %.preheader ], [ %i.jz, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod588)
  %i.it = load i32, ptr %i.c, align 4, !tbaa !139
  %i.iu = sext i32 %i.it to i64
  %i.iv = mul i64 %.0112307, %i.iu
  %i.iw = add i64 %i.iv, %indvars.iv
  %i.ix = mul i64 %i.iw, %i.hl
  %i.iy = getelementptr [4 x i8], ptr %i.hn, i64 %i.ix
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %.0111305.epil.init
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !139
  %i.jb = getelementptr [4 x i8], ptr %i.hr, i64 %.1110306.epil.init
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !139
  %i.jc = add i64 %.1110306.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa576 = phi i64 [ %i.jy, %._crit_edge.unr-lcssa ], [ %i.jc, %.epil.preheader ]
  %i.jd = add nuw i64 %.0112307, 1                ; 2 uses
  %exitcond353.not = icmp eq i64 %i.jd, %.088
  br i1 %exitcond353.not, label %._crit_edge309, label %.preheader, !llvm.loop !621

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.1110306 = phi i64 [ %i.jy, %.preheader.new ], [ %.0109308, %.preheader ] ; 3 uses
  %.0111305 = phi i64 [ %i.jz, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.je = load i32, ptr %i.c, align 4, !tbaa !139
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %.0112307, %i.jf
  %i.jh = add i64 %i.jg, %indvars.iv
  %i.ji = mul i64 %i.jh, %i.hl
  %i.jj = getelementptr [4 x i8], ptr %i.hn, i64 %i.ji
  %i.jk = getelementptr [4 x i8], ptr %i.jj, i64 %.0111305
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !139
  %i.jm = getelementptr [4 x i8], ptr %i.hr, i64 %.1110306
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !139
  %i.jn = load i32, ptr %i.c, align 4, !tbaa !139
  %i.jo = sext i32 %i.jn to i64
  %i.jp = mul i64 %.0112307, %i.jo
  %i.jq = add i64 %i.jp, %indvars.iv
  %i.jr = mul i64 %i.jq, %i.hl
  %i.js = getelementptr [4 x i8], ptr %i.hn, i64 %i.jr
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %.0111305
  %i.ju = getelementptr i8, ptr %i.jt, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !139
  %i.jw = getelementptr [4 x i8], ptr %i.hr, i64 %.1110306
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !139
  %i.jy = add i64 %.1110306, 2                    ; 3 uses
  %i.jz = add nuw i64 %.0111305, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !622

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ir, %.lr.ph.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.ka, align 8, !tbaa !172
  %wide.trip.count360 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre398 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter593 = and i64 %wide.trip.count360, 3   ; 3 uses
  %i.kb = icmp ult i32 %i.ca, 4
  br i1 %i.kb, label %.epil.preheader592, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter596 = and i64 %wide.trip.count360, 2147483644
  br label %bb.ae

._crit_edge314.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod594.not, label %._crit_edge314, label %.epil.preheader592

.epil.preheader592:                               ; preds = %._crit_edge314.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv356.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next357.3, %._crit_edge314.loopexit.unr-lcssa ]
  %lcmp.mod595 = icmp ne i64 %xtraiter593, 0
  call void @llvm.assume(i1 %lcmp.mod595)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader592
  %indvars.iv356.epil = phi i64 [ %indvars.iv356.epil.init, %.epil.preheader592 ], [ %indvars.iv.next357.epil, %bb.ac ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader592 ], [ %epil.iter.next, %bb.ac ]
  %i.kc = mul i64 %.pre398, %indvars.iv356.epil
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv356.epil ; 2 uses
  %i.ke = trunc nuw nsw i64 %indvars.iv356.epil to i32
  store i32 %i.ke, ptr %i.kd, align 8, !tbaa !169
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %i.kc, ptr %i.kf, align 8, !tbaa !170
  %indvars.iv.next357.epil = add nuw nsw i64 %indvars.iv356.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter593
  br i1 %epil.iter.cmp.not, label %._crit_edge314, label %bb.ac, !llvm.loop !623

._crit_edge314:                                   ; preds = %._crit_edge314.loopexit.unr-lcssa, %bb.ac, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !184
  %i.kg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.kg, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !184
  %i.kh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.kh, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIiiEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IiiEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.af unwind label %bb.ai

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit176

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv356 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next357.3, %bb.ae ] ; 7 uses
  %niter597 = phi i64 [ 0, %.lr.ph.new ], [ %niter597.next.3, %bb.ae ]
  %i.kj = mul i64 %.pre398, %indvars.iv356
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv356 ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv356 to i32
  store i32 %i.kl, ptr %i.kk, align 8, !tbaa !169
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kj, ptr %i.km, align 8, !tbaa !170
  %indvars.iv.next357 = or disjoint i64 %indvars.iv356, 1 ; 3 uses
  %i.kn = mul i64 %.pre398, %indvars.iv.next357
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.next357 ; 2 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv.next357 to i32
  store i32 %i.kp, ptr %i.ko, align 8, !tbaa !169
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %i.kn, ptr %i.kq, align 8, !tbaa !170
  %indvars.iv.next357.1 = or disjoint i64 %indvars.iv356, 2 ; 3 uses
  %i.kr = mul i64 %.pre398, %indvars.iv.next357.1
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.next357.1 ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv.next357.1 to i32
  store i32 %i.kt, ptr %i.ks, align 8, !tbaa !169
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i64 %i.kr, ptr %i.ku, align 8, !tbaa !170
  %indvars.iv.next357.2 = or disjoint i64 %indvars.iv356, 3 ; 3 uses
  %i.kv = mul i64 %.pre398, %indvars.iv.next357.2
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.next357.2 ; 2 uses
  %i.kx = trunc nuw nsw i64 %indvars.iv.next357.2 to i32
  store i32 %i.kx, ptr %i.kw, align 8, !tbaa !169
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.kv, ptr %i.ky, align 8, !tbaa !170
  %indvars.iv.next357.3 = add nuw nsw i64 %indvars.iv356, 4 ; 2 uses
  %niter597.next.3 = add i64 %niter597, 4         ; 2 uses
  %niter597.ncmp.3 = icmp eq i64 %niter597.next.3, %unroll_iter596
  br i1 %niter597.ncmp.3, label %._crit_edge314.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !624

bb.af:                                            ; preds = %._crit_edge314
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kz = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i173 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.la = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !167
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.lf = load ptr, ptr %17, align 8, !tbaa !138  ; 3 uses
  %.not.i.i.i174 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !149
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lk) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
end_hunk_8
begin_hunk_9_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163

scalar.ph531:                                     ; preds = %scalar.ph531.prol.loopexit, %scalar.ph531
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.3, %scalar.ph531 ], [ %indvars.iv357.unr, %scalar.ph531.prol.loopexit ] ; 7 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv357
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !243
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv357 ; 2 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv357 to i32
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !237
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store float %i.fu, ptr %i.fx, align 4, !tbaa !238
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next358
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !243
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next358 ; 2 uses
  %i.gb = trunc nuw nsw i64 %indvars.iv.next358 to i32
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !237
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store float %i.fz, ptr %i.gc, align 4, !tbaa !238
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next358.1
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !243
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next358.1 ; 2 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv.next358.1 to i32
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !237
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store float %i.ge, ptr %i.gh, align 4, !tbaa !238
  %indvars.iv.next358.2 = add nuw nsw i64 %indvars.iv357, 3 ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next358.2
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !243
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next358.2 ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv.next358.2 to i32
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !237
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store float %i.gj, ptr %i.gm, align 4, !tbaa !238
  %indvars.iv.next358.3 = add nuw nsw i64 %indvars.iv357, 4 ; 2 uses
  %exitcond362.not.3 = icmp eq i64 %indvars.iv.next358.3, %wide.trip.count361
  br i1 %exitcond362.not.3, label %._crit_edge312, label %scalar.ph531, !llvm.loop !650

bb.u:                                             ; preds = %._crit_edge312
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gn = load ptr, ptr %14, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.go = load ptr, ptr %i.fl, align 8, !tbaa !233
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #18
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit:        ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.al

bb.w:                                             ; preds = %._crit_edge312
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = load ptr, ptr %i.fl, align 8, !tbaa !233
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #18
  br label %_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIifESaIS1_EED2Ev.exit163:     ; preds = %bb.x, %bb.w, %bb.t
  %i.gy = phi ptr [ %i.dk, %bb.t ], [ %i.fn, %bb.w ], [ %i.fn, %bb.x ]
  %i.gz = phi ptr [ %i.cw, %bb.t ], [ %i.fm, %bb.w ], [ %i.fm, %bb.x ]
  %.pn119 = phi { ptr, i32 } [ %i.fs, %bb.t ], [ %i.gs, %bb.w ], [ %i.gs, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dc

bb.y:                                             ; preds = %.loopexit296.thread, %.loopexit296
  %i.ha = phi ptr [ %i.cw, %.loopexit296.thread ], [ %i.ea, %.loopexit296 ] ; 2 uses
  %i.hb = phi ptr [ %i.dk, %.loopexit296.thread ], [ %i.eb, %.loopexit296 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hc = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hc, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hd = mul i64 %i.hc, %i.cg                    ; 5 uses
  %i.he = icmp ugt i64 %i.hd, 2305843009213693951
  br i1 %i.he, label %bb.z, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ab

.noexc165:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hf = shl nuw nsw i64 %i.hd, 2
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #17
          to label %.noexc166 unwind label %bb.ab ; 4 uses

.noexc166:                                        ; preds = %bb.aa
  store ptr %i.hg, ptr %17, align 8, !tbaa !241
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hd
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !242
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !243
  %i.hj = getelementptr i8, ptr %i.hg, i64 4      ; 3 uses
  %i.hk = add nsw i64 %i.hd, -1                   ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hk, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.hj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !243
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hm, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hj, %.noexc166 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hn, align 8, !tbaa !244
  br i1 %.not469, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader295.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge308

.preheader295.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.not339 = icmp eq i64 %.088, 0
  %i.ho = load i64, ptr %i.d, align 8             ; 10 uses
  %.not340 = icmp eq i64 %i.ho, 0
  %brmerge = select i1 %.not339, i1 true, i1 %.not340
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader295.preheader

.preheader295.preheader:                          ; preds = %.preheader295.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %i.hp = mul i64 %i.ho, -4
  %i.hq = mul i64 %i.ho, -4
  %min.iters.check546 = icmp ult i64 %i.ho, 8
  %n.vec548 = and i64 %i.ho, -8                   ; 4 uses
  %cmp.n555 = icmp eq i64 %i.ho, %n.vec548
  %xtraiter595 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br label %.preheader295

.preheader295:                                    ; preds = %.preheader295.preheader, %._crit_edge303
  %indvars.iv = phi i64 [ 0, %.preheader295.preheader ], [ %indvars.iv.next, %._crit_edge303 ] ; 5 uses
  %i.hr = mul i64 %i.hp, %indvars.iv
  %i.hs = shl nuw nsw i64 %indvars.iv, 2
  %i.ht = load i32, ptr %i.c, align 4
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hw = ptrtoaddr ptr %i.hv to i64
  %i.hx = load i64, ptr %i.g, align 8             ; 2 uses
  %i.hy = mul i64 %i.hx, %indvars.iv
  %i.hz = load ptr, ptr %17, align 8              ; 2 uses
  %i.ia = ptrtoaddr ptr %i.hz to i64
  %i.ib = getelementptr [4 x i8], ptr %i.hz, i64 %i.hy ; 6 uses
  %i.ic = add i64 %i.hr, %i.ia
  %i.id = mul i64 %i.hx, %i.hs
  %i.ie = add i64 %i.ic, %i.id
  %i.if = sub i64 %i.ie, %i.hw
  %i.ig = mul i64 %i.hq, %i.hu
  br label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge303, %.preheader295.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ih = shl nuw nsw i64 %i.cg, 4
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #17
          to label %.noexc170 unwind label %bb.ad ; 9 uses

.noexc170:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ii, ptr %18, align 8, !tbaa !166
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.cg
  %i.ik = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !167
  %xtraiter598 = and i64 %i.cg, 7
  %i.il = and i32 %i.ca, 7
  %lcmp.mod599.not = icmp eq i32 %i.il, 0
  br i1 %lcmp.mod599.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc170, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.prol ], [ %i.ii, %.noexc170 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.in, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc170 ]
  %prol.iter600 = phi i64 [ %prol.iter600.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc170 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !169
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.im, align 8, !tbaa !170
  %i.in = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter600.next = add i64 %prol.iter600, 1   ; 2 uses
  %prol.iter600.cmp.not = icmp eq i64 %prol.iter600.next, %xtraiter598
  br i1 %prol.iter600.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !651

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc170
  %.lcssa.unr = phi ptr [ poison, %.noexc170 ], [ %i.io, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ii, %.noexc170 ], [ %i.io, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc170 ], [ %i.in, %.lr.ph.i.i.i.i.i.prol ]
  %i.ip = icmp ult i32 %i.ca, 8
  br i1 %i.ip, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !169
  %i.iq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.iq, align 8, !tbaa !170
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ir, align 8, !tbaa !169
  %i.is = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.is, align 8, !tbaa !170
  %i.it = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.it, align 8, !tbaa !169
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.iu, align 8, !tbaa !170
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.iv, align 8, !tbaa !169
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.iw, align 8, !tbaa !170
  %i.ix = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.ix, align 8, !tbaa !169
  %i.iy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.iy, align 8, !tbaa !170
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.iz, align 8, !tbaa !169
  %i.ja = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ja, align 8, !tbaa !170
  %i.jb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.jb, align 8, !tbaa !169
  %i.jc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.jc, align 8, !tbaa !170
  %i.jd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.jd, align 8, !tbaa !169
  %i.je = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.je, align 8, !tbaa !170
  %i.jf = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit176

.preheader:                                       ; preds = %.preheader295, %._crit_edge
  %.0109302 = phi i64 [ 0, %.preheader295 ], [ %.lcssa507, %._crit_edge ] ; 5 uses
  %.0112301 = phi i64 [ 0, %.preheader295 ], [ %i.kf, %._crit_edge ] ; 3 uses
  %i.ji = mul i64 %.0112301, %i.hu
  %i.jj = add i64 %i.ji, %indvars.iv
  %i.jk = mul i64 %i.jj, %i.ho
  %i.jl = getelementptr [4 x i8], ptr %i.hv, i64 %i.jk ; 6 uses
  br i1 %min.iters.check546, label %scalar.ph545.preheader, label %vector.memcheck544

vector.memcheck544:                               ; preds = %.preheader
  %i.jm = mul i64 %i.ig, %.0112301
  %i.jn = add i64 %i.if, %i.jm
  %i.jo = shl i64 %.0109302, 2
  %i.jp = add i64 %i.jn, %i.jo
  %i.jq = add i64 %i.jp, -1
  %diff.check = icmp ult i64 %i.jq, 31
  br i1 %diff.check, label %scalar.ph545.preheader, label %vector.ph547

vector.ph547:                                     ; preds = %vector.memcheck544
  %i.jr = add i64 %.0109302, %n.vec548            ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %i.ib, i64 %.0109302
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next553, %vector.body549 ] ; 3 uses
  %i.jt = getelementptr [4 x i8], ptr %i.jl, i64 %index550 ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 16
  %wide.load551 = load <4 x float>, ptr %i.jt, align 4, !tbaa !243
  %wide.load552 = load <4 x float>, ptr %i.ju, align 4, !tbaa !243
  %i.jv = getelementptr [4 x i8], ptr %i.js, i64 %index550 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  store <4 x float> %wide.load551, ptr %i.jv, align 4, !tbaa !243
  store <4 x float> %wide.load552, ptr %i.jw, align 4, !tbaa !243
  %index.next553 = add nuw i64 %index550, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next553, %n.vec548
  br i1 %i.jx, label %middle.block554, label %vector.body549, !llvm.loop !652

middle.block554:                                  ; preds = %vector.body549
  br i1 %cmp.n555, label %._crit_edge, label %scalar.ph545.preheader

scalar.ph545.preheader:                           ; preds = %vector.memcheck544, %.preheader, %middle.block554
  %.1110300.ph = phi i64 [ %.0109302, %vector.memcheck544 ], [ %.0109302, %.preheader ], [ %i.jr, %middle.block554 ] ; 2 uses
  %.0111299.ph = phi i64 [ 0, %vector.memcheck544 ], [ 0, %.preheader ], [ %n.vec548, %middle.block554 ] ; 3 uses
  br i1 %lcmp.mod596.not, label %scalar.ph545.prol.loopexit, label %scalar.ph545.prol

scalar.ph545.prol:                                ; preds = %scalar.ph545.preheader, %scalar.ph545.prol
  %.1110300.prol = phi i64 [ %i.kb, %scalar.ph545.prol ], [ %.1110300.ph, %scalar.ph545.preheader ] ; 2 uses
  %.0111299.prol = phi i64 [ %i.kc, %scalar.ph545.prol ], [ %.0111299.ph, %scalar.ph545.preheader ] ; 2 uses
  %prol.iter597 = phi i64 [ %prol.iter597.next, %scalar.ph545.prol ], [ 0, %scalar.ph545.preheader ]
  %i.jy = getelementptr [4 x i8], ptr %i.jl, i64 %.0111299.prol
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !243
  %i.ka = getelementptr [4 x i8], ptr %i.ib, i64 %.1110300.prol
  store float %i.jz, ptr %i.ka, align 4, !tbaa !243
  %i.kb = add i64 %.1110300.prol, 1               ; 3 uses
  %i.kc = add nuw i64 %.0111299.prol, 1           ; 2 uses
  %prol.iter597.next = add i64 %prol.iter597, 1   ; 2 uses
  %prol.iter597.cmp.not = icmp eq i64 %prol.iter597.next, %xtraiter595
  br i1 %prol.iter597.cmp.not, label %scalar.ph545.prol.loopexit, label %scalar.ph545.prol, !llvm.loop !653

scalar.ph545.prol.loopexit:                       ; preds = %scalar.ph545.prol, %scalar.ph545.preheader
  %.lcssa586.unr = phi i64 [ poison, %scalar.ph545.preheader ], [ %i.kb, %scalar.ph545.prol ]
  %.1110300.unr = phi i64 [ %.1110300.ph, %scalar.ph545.preheader ], [ %i.kb, %scalar.ph545.prol ]
  %.0111299.unr = phi i64 [ %.0111299.ph, %scalar.ph545.preheader ], [ %i.kc, %scalar.ph545.prol ]
  %i.kd = sub i64 %.0111299.ph, %i.ho
  %i.ke = icmp ugt i64 %i.kd, -4
  br i1 %i.ke, label %._crit_edge, label %scalar.ph545

._crit_edge303:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond350.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader295, !llvm.loop !654

._crit_edge:                                      ; preds = %scalar.ph545.prol.loopexit, %scalar.ph545, %middle.block554
  %.lcssa507 = phi i64 [ %i.jr, %middle.block554 ], [ %.lcssa586.unr, %scalar.ph545.prol.loopexit ], [ %i.ky, %scalar.ph545 ]
  %i.kf = add nuw i64 %.0112301, 1                ; 2 uses
  %exitcond348.not = icmp eq i64 %i.kf, %.088
  br i1 %exitcond348.not, label %._crit_edge303, label %.preheader, !llvm.loop !655

scalar.ph545:                                     ; preds = %scalar.ph545.prol.loopexit, %scalar.ph545
  %.1110300 = phi i64 [ %i.ky, %scalar.ph545 ], [ %.1110300.unr, %scalar.ph545.prol.loopexit ] ; 5 uses
  %.0111299 = phi i64 [ %i.kz, %scalar.ph545 ], [ %.0111299.unr, %scalar.ph545.prol.loopexit ] ; 5 uses
  %i.kg = getelementptr [4 x i8], ptr %i.jl, i64 %.0111299
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !243
  %i.ki = getelementptr [4 x i8], ptr %i.ib, i64 %.1110300
  store float %i.kh, ptr %i.ki, align 4, !tbaa !243
  %i.kj = getelementptr [4 x i8], ptr %i.jl, i64 %.0111299
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !243
  %i.km = getelementptr [4 x i8], ptr %i.ib, i64 %.1110300
  %i.kn = getelementptr i8, ptr %i.km, i64 4
  store float %i.kl, ptr %i.kn, align 4, !tbaa !243
  %i.ko = getelementptr [4 x i8], ptr %i.jl, i64 %.0111299
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !243
  %i.kr = getelementptr [4 x i8], ptr %i.ib, i64 %.1110300
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  store float %i.kq, ptr %i.ks, align 4, !tbaa !243
  %i.kt = getelementptr [4 x i8], ptr %i.jl, i64 %.0111299
  %i.ku = getelementptr i8, ptr %i.kt, i64 12
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !243
  %i.kw = getelementptr [4 x i8], ptr %i.ib, i64 %.1110300
  %i.kx = getelementptr i8, ptr %i.kw, i64 12
  store float %i.kv, ptr %i.kx, align 4, !tbaa !243
  %i.ky = add i64 %.1110300, 4                    ; 2 uses
  %i.kz = add nuw i64 %.0111299, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kz, %i.ho
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph545, !llvm.loop !656

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.jg, %.lr.ph.i.i.i.i.i ]
  %i.la = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.la, align 8, !tbaa !172
  %wide.trip.count355 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre393 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter601 = and i64 %wide.trip.count355, 3   ; 3 uses
  %i.lb = icmp ult i32 %i.ca, 4
  br i1 %i.lb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count355, 2147483644
  br label %bb.ae

._crit_edge308.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod602.not, label %._crit_edge308, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge308.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv351.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next352.3, %._crit_edge308.loopexit.unr-lcssa ]
  %lcmp.mod603 = icmp ne i64 %xtraiter601, 0
  call void @llvm.assume(i1 %lcmp.mod603)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv351.epil = phi i64 [ %indvars.iv351.epil.init, %.epil.preheader ], [ %indvars.iv.next352.epil, %bb.ac ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.lc = mul i64 %.pre393, %indvars.iv351.epil
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv351.epil ; 2 uses
  %i.le = trunc nuw nsw i64 %indvars.iv351.epil to i32
  store i32 %i.le, ptr %i.ld, align 8, !tbaa !169
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i64 %i.lc, ptr %i.lf, align 8, !tbaa !170
  %indvars.iv.next352.epil = add nuw nsw i64 %indvars.iv351.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter601
  br i1 %epil.iter.cmp.not, label %._crit_edge308, label %bb.ac, !llvm.loop !657

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit.unr-lcssa, %bb.ac, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !246
  %i.lg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.lg, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !246
  %i.lh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.lh, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIffEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IffEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.af unwind label %bb.ai

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit174

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %indvars.iv351 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next352.3, %bb.ae ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ae ]
  %i.lj = mul i64 %.pre393, %indvars.iv351
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv351 ; 2 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv351 to i32
  store i32 %i.ll, ptr %i.lk, align 8, !tbaa !169
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i64 %i.lj, ptr %i.lm, align 8, !tbaa !170
  %indvars.iv.next352 = or disjoint i64 %indvars.iv351, 1 ; 3 uses
  %i.ln = mul i64 %.pre393, %indvars.iv.next352
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv.next352 ; 2 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv.next352 to i32
  store i32 %i.lp, ptr %i.lo, align 8, !tbaa !169
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i64 %i.ln, ptr %i.lq, align 8, !tbaa !170
  %indvars.iv.next352.1 = or disjoint i64 %indvars.iv351, 2 ; 3 uses
  %i.lr = mul i64 %.pre393, %indvars.iv.next352.1
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv.next352.1 ; 2 uses
  %i.lt = trunc nuw nsw i64 %indvars.iv.next352.1 to i32
  store i32 %i.lt, ptr %i.ls, align 8, !tbaa !169
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i64 %i.lr, ptr %i.lu, align 8, !tbaa !170
  %indvars.iv.next352.2 = or disjoint i64 %indvars.iv351, 3 ; 3 uses
  %i.lv = mul i64 %.pre393, %indvars.iv.next352.2
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv.next352.2 ; 2 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv.next352.2 to i32
  store i32 %i.lx, ptr %i.lw, align 8, !tbaa !169
end_hunk_9
begin_hunk_10_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre404, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not483 = icmp eq i32 %i.ca, 0                 ; 3 uses
  br i1 %.not483, label %.loopexit308, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit308.thread unwind label %bb.t ; 4 uses

.loopexit308:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit.thread, label %bb.aa

.loopexit308.thread:                              ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !137
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %bb.aa

.loopexit.thread:                                 ; preds = %.loopexit308
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge325

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.loopexit308.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 4
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !166
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !167
  %xtraiter = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !169
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.ep, align 8, !tbaa !170
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !678

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa575.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph324, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !169
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !170
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.eu, align 8, !tbaa !169
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.ev, align 8, !tbaa !170
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.ew, align 8, !tbaa !169
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ex, align 8, !tbaa !170
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ey, align 8, !tbaa !169
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ez, align 8, !tbaa !170
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.fa, align 8, !tbaa !169
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.fb, align 8, !tbaa !170
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.fc, align 8, !tbaa !169
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.fd, align 8, !tbaa !170
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.fe, align 8, !tbaa !169
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ff, align 8, !tbaa !170
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.fg, align 8, !tbaa !169
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.fh, align 8, !tbaa !170
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph324, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph324:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa575 = phi ptr [ %.lcssa575.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa575, ptr %i.fk, align 8, !tbaa !172
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !174 ; 5 uses
  %wide.trip.count373 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter584 = and i64 %wide.trip.count373, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph324.new

.lr.ph324.new:                                    ; preds = %.lr.ph324
  %unroll_iter = and i64 %wide.trip.count373, 2147483644
  br label %bb.v

._crit_edge325.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod585.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod585.not, label %._crit_edge325, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge325.loopexit.unr-lcssa, %.lr.ph324
  %indvars.iv369.epil.init = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next370.3, %._crit_edge325.loopexit.unr-lcssa ]
  %lcmp.mod586 = icmp ne i64 %xtraiter584, 0
  call void @llvm.assume(i1 %lcmp.mod586)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv369.epil = phi i64 [ %indvars.iv369.epil.init, %.epil.preheader ], [ %indvars.iv.next370.epil, %bb.p ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv369.epil
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !117
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv369.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv369.epil to i32
  store i32 %i.fq, ptr %i.fp, align 8, !tbaa !169
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fo, ptr %i.fr, align 8, !tbaa !170
  %indvars.iv.next370.epil = add nuw nsw i64 %indvars.iv369.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter584
  br i1 %epil.iter.cmp.not, label %._crit_edge325, label %bb.p, !llvm.loop !679

._crit_edge325:                                   ; preds = %._crit_edge325.loopexit.unr-lcssa, %bb.p, %.loopexit.thread
  %i.fs = phi ptr [ %i.ea, %.loopexit.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge325.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eb, %.loopexit.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge325.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplImmEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKmSC_E_ZNKS3_ImmEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit266

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph324.new
  %indvars.iv369 = phi i64 [ 0, %.lr.ph324.new ], [ %indvars.iv.next370.3, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph324.new ], [ %niter.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv369
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !117
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv369 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv369 to i32
  store i32 %i.gc, ptr %i.gb, align 8, !tbaa !169
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.ga, ptr %i.gd, align 8, !tbaa !170
  %indvars.iv.next370 = or disjoint i64 %indvars.iv369, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next370
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !117
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next370 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next370 to i32
  store i32 %i.gh, ptr %i.gg, align 8, !tbaa !169
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.gf, ptr %i.gi, align 8, !tbaa !170
  %indvars.iv.next370.1 = or disjoint i64 %indvars.iv369, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next370.1
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !117
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next370.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next370.1 to i32
  store i32 %i.gm, ptr %i.gl, align 8, !tbaa !169
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.gk, ptr %i.gn, align 8, !tbaa !170
  %indvars.iv.next370.2 = or disjoint i64 %indvars.iv369, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next370.2
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !117
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next370.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next370.2 to i32
  store i32 %i.gr, ptr %i.gq, align 8, !tbaa !169
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 %i.gp, ptr %i.gs, align 8, !tbaa !170
  %indvars.iv.next370.3 = add nuw nsw i64 %indvars.iv369, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge325.loopexit.unr-lcssa, label %bb.v, !llvm.loop !680

bb.w:                                             ; preds = %._crit_edge325
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !167
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ao

bb.y:                                             ; preds = %._crit_edge325
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !167
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.df

bb.aa:                                            ; preds = %.loopexit308.thread, %.loopexit308
  %i.hi = phi ptr [ %i.cw, %.loopexit308.thread ], [ %i.ea, %.loopexit308 ] ; 2 uses
  %i.hj = phi ptr [ %i.dk, %.loopexit308.thread ], [ %i.eb, %.loopexit308 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp ugt i64 %i.hl, 1152921504606846975
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ad

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = shl nuw nsw i64 %i.hl, 3
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #17
          to label %.noexc166 unwind label %bb.ad ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.ho, ptr %17, align 8, !tbaa !276
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !701
  store i64 0, ptr %i.ho, align 8, !tbaa !117
  %i.hr = getelementptr i8, ptr %i.ho, i64 8      ; 3 uses
  %i.hs = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hs, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.hr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !117
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hu, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hr, %.noexc166 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hv, align 8, !tbaa !702
  br i1 %.not483, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i167.thread, label %.preheader307.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i167.thread: ; preds = %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge321

.preheader307.lr.ph:                              ; preds = %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %.not350 = icmp eq i64 %.088, 0
  %i.hw = load i32, ptr %i.c, align 4
  %i.hx = sext i32 %i.hw to i64
  br i1 %.not350, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i169, label %.preheader307.preheader

.preheader307.preheader:                          ; preds = %.preheader307.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %.pre405 = load i64, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  br label %.preheader307

.preheader307:                                    ; preds = %.preheader307.preheader, %._crit_edge316
  %i.hy = phi i64 [ %.pre405, %.preheader307.preheader ], [ %i.jg, %._crit_edge316 ] ; 2 uses
  %i.hz = phi i64 [ %.pre405, %.preheader307.preheader ], [ %i.jh, %._crit_edge316 ]
  %indvars.iv = phi i64 [ 0, %.preheader307.preheader ], [ %indvars.iv.next, %._crit_edge316 ] ; 3 uses
  %i.ia = load ptr, ptr %i.f, align 8
  %i.ib = load ptr, ptr %17, align 8
  %.not351 = icmp eq i64 %i.hz, 0
  br i1 %.not351, label %._crit_edge316, label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i169: ; preds = %._crit_edge316, %.preheader307.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ic = shl nuw nsw i64 %i.cg, 4
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #17
          to label %.noexc177 unwind label %bb.ag ; 9 uses

.noexc177:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i169
  store ptr %i.id, ptr %18, align 8, !tbaa !166
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.cg
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !167
  %xtraiter587 = and i64 %i.cg, 7
  %i.ig = and i32 %i.ca, 7
  %lcmp.mod588.not = icmp eq i32 %i.ig, 0
  br i1 %lcmp.mod588.not, label %.lr.ph.i.i.i.i.i170.prol.loopexit, label %.lr.ph.i.i.i.i.i170.prol

.lr.ph.i.i.i.i.i170.prol:                         ; preds = %.noexc177, %.lr.ph.i.i.i.i.i170.prol
  %.013.i.i.i.i.i171.prol = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i170.prol ], [ %i.id, %.noexc177 ] ; 3 uses
  %.01012.i.i.i.i.i172.prol = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i170.prol ], [ %i.cg, %.noexc177 ]
  %prol.iter589 = phi i64 [ %prol.iter589.next, %.lr.ph.i.i.i.i.i170.prol ], [ 0, %.noexc177 ]
  store i32 0, ptr %.013.i.i.i.i.i171.prol, align 8, !tbaa !169
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171.prol, i64 8
  store i64 0, ptr %i.ih, align 8, !tbaa !170
  %i.ii = add nsw i64 %.01012.i.i.i.i.i172.prol, -1 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171.prol, i64 16 ; 3 uses
  %prol.iter589.next = add i64 %prol.iter589, 1   ; 2 uses
  %prol.iter589.cmp.not = icmp eq i64 %prol.iter589.next, %xtraiter587
  br i1 %prol.iter589.cmp.not, label %.lr.ph.i.i.i.i.i170.prol.loopexit, label %.lr.ph.i.i.i.i.i170.prol, !llvm.loop !681

.lr.ph.i.i.i.i.i170.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i170.prol, %.noexc177
  %.lcssa.unr = phi ptr [ poison, %.noexc177 ], [ %i.ij, %.lr.ph.i.i.i.i.i170.prol ]
  %.013.i.i.i.i.i171.unr = phi ptr [ %i.id, %.noexc177 ], [ %i.ij, %.lr.ph.i.i.i.i.i170.prol ]
  %.01012.i.i.i.i.i172.unr = phi i64 [ %i.cg, %.noexc177 ], [ %i.ii, %.lr.ph.i.i.i.i.i170.prol ]
  %i.ik = icmp ult i32 %i.ca, 8
  br i1 %i.ik, label %.lr.ph320, label %.lr.ph.i.i.i.i.i170

.lr.ph.i.i.i.i.i170:                              ; preds = %.lr.ph.i.i.i.i.i170.prol.loopexit, %.lr.ph.i.i.i.i.i170
  %.013.i.i.i.i.i171 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i170 ], [ %.013.i.i.i.i.i171.unr, %.lr.ph.i.i.i.i.i170.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i172 = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i170 ], [ %.01012.i.i.i.i.i172.unr, %.lr.ph.i.i.i.i.i170.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i171, align 8, !tbaa !169
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 8
  store i64 0, ptr %i.il, align 8, !tbaa !170
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 16
  store i32 0, ptr %i.im, align 8, !tbaa !169
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 24
  store i64 0, ptr %i.in, align 8, !tbaa !170
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 32
  store i32 0, ptr %i.io, align 8, !tbaa !169
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 40
  store i64 0, ptr %i.ip, align 8, !tbaa !170
  %i.iq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 48
  store i32 0, ptr %i.iq, align 8, !tbaa !169
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 56
  store i64 0, ptr %i.ir, align 8, !tbaa !170
  %i.is = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 64
  store i32 0, ptr %i.is, align 8, !tbaa !169
  %i.it = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 72
  store i64 0, ptr %i.it, align 8, !tbaa !170
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 80
  store i32 0, ptr %i.iu, align 8, !tbaa !169
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 88
  store i64 0, ptr %i.iv, align 8, !tbaa !170
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 96
  store i32 0, ptr %i.iw, align 8, !tbaa !169
  %i.ix = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 104
  store i64 0, ptr %i.ix, align 8, !tbaa !170
  %i.iy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 112
  store i32 0, ptr %i.iy, align 8, !tbaa !169
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 120
  store i64 0, ptr %i.iz, align 8, !tbaa !170
  %i.ja = add nsw i64 %.01012.i.i.i.i.i172, -8    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i171, i64 128 ; 2 uses
  %.not.i.i.i.i.i173.7 = icmp eq i64 %i.ja, 0
  br i1 %.not.i.i.i.i.i173.7, label %.lr.ph320, label %.lr.ph.i.i.i.i.i170, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit185

.preheader:                                       ; preds = %.preheader307, %._crit_edge
  %i.jd = phi i64 [ %i.ji, %._crit_edge ], [ %i.hy, %.preheader307 ] ; 2 uses
  %.0109315 = phi i64 [ %.1110.lcssa, %._crit_edge ], [ 0, %.preheader307 ] ; 2 uses
  %.0112314 = phi i64 [ %i.jj, %._crit_edge ], [ 0, %.preheader307 ] ; 2 uses
  %.not352 = icmp eq i64 %i.jd, 0
  br i1 %.not352, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.je = mul i64 %.0112314, %i.hx
  %i.jf = add i64 %i.je, %indvars.iv
  br label %bb.ae

._crit_edge316:                                   ; preds = %._crit_edge, %.preheader307
  %i.jg = phi i64 [ %i.hy, %.preheader307 ], [ %i.ji, %._crit_edge ]
  %i.jh = phi i64 [ 0, %.preheader307 ], [ %i.ji, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond362.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i169, label %.preheader307, !llvm.loop !682

._crit_edge:                                      ; preds = %bb.ae, %.preheader
  %i.ji = phi i64 [ 0, %.preheader ], [ %i.jv, %bb.ae ] ; 3 uses
  %.1110.lcssa = phi i64 [ %.0109315, %.preheader ], [ %i.jt, %bb.ae ]
  %i.jj = add nuw i64 %.0112314, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jj, %.088
  br i1 %exitcond.not, label %._crit_edge316, label %.preheader, !llvm.loop !683

bb.ae:                                            ; preds = %.lr.ph, %bb.ae
  %i.jk = phi i64 [ %i.jd, %.lr.ph ], [ %i.jv, %bb.ae ]
  %.1110313 = phi i64 [ %.0109315, %.lr.ph ], [ %i.jt, %bb.ae ] ; 2 uses
  %.0111312 = phi i64 [ 0, %.lr.ph ], [ %i.ju, %bb.ae ] ; 2 uses
  %i.jl = mul i64 %i.jf, %i.jk
  %i.jm = getelementptr [8 x i8], ptr %i.ia, i64 %i.jl
  %i.jn = getelementptr [8 x i8], ptr %i.jm, i64 %.0111312
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !117
  %i.jp = load i64, ptr %i.g, align 8, !tbaa !117
  %i.jq = mul i64 %i.jp, %indvars.iv
  %i.jr = getelementptr [8 x i8], ptr %i.ib, i64 %i.jq
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %.1110313
  store i64 %i.jo, ptr %i.js, align 8, !tbaa !117
  %i.jt = add i64 %.1110313, 1                    ; 2 uses
  %i.ju = add nuw i64 %.0111312, 1                ; 2 uses
  %i.jv = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  %i.jw = icmp ult i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.ae, label %._crit_edge, !llvm.loop !684

.lr.ph320:                                        ; preds = %.lr.ph.i.i.i.i.i170, %.lr.ph.i.i.i.i.i170.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i170.prol.loopexit ], [ %i.jb, %.lr.ph.i.i.i.i.i170 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.jx, align 8, !tbaa !172
  %wide.trip.count367 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre406 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter591 = and i64 %wide.trip.count367, 3   ; 3 uses
  %i.jy = icmp ult i32 %i.ca, 4
  br i1 %i.jy, label %.epil.preheader590, label %.lr.ph320.new

.lr.ph320.new:                                    ; preds = %.lr.ph320
  %unroll_iter595 = and i64 %wide.trip.count367, 2147483644
  br label %bb.ah

._crit_edge321.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod593.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod593.not, label %._crit_edge321, label %.epil.preheader590

.epil.preheader590:                               ; preds = %._crit_edge321.loopexit.unr-lcssa, %.lr.ph320
  %indvars.iv363.epil.init = phi i64 [ 0, %.lr.ph320 ], [ %indvars.iv.next364.3, %._crit_edge321.loopexit.unr-lcssa ]
  %lcmp.mod594 = icmp ne i64 %xtraiter591, 0
  call void @llvm.assume(i1 %lcmp.mod594)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader590
  %indvars.iv363.epil = phi i64 [ %indvars.iv363.epil.init, %.epil.preheader590 ], [ %indvars.iv.next364.epil, %bb.af ] ; 4 uses
  %epil.iter592 = phi i64 [ 0, %.epil.preheader590 ], [ %epil.iter592.next, %bb.af ]
  %i.jz = mul i64 %.pre406, %indvars.iv363.epil
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv363.epil ; 2 uses
  %i.kb = trunc nuw nsw i64 %indvars.iv363.epil to i32
  store i32 %i.kb, ptr %i.ka, align 8, !tbaa !169
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %i.jz, ptr %i.kc, align 8, !tbaa !170
  %indvars.iv.next364.epil = add nuw nsw i64 %indvars.iv363.epil, 1
  %epil.iter592.next = add i64 %epil.iter592, 1   ; 2 uses
  %epil.iter592.cmp.not = icmp eq i64 %epil.iter592.next, %xtraiter591
  br i1 %epil.iter592.cmp.not, label %._crit_edge321, label %bb.af, !llvm.loop !685

._crit_edge321:                                   ; preds = %._crit_edge321.loopexit.unr-lcssa, %bb.af, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i167.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !703
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.kd, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !703
  %i.ke = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.ke, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplImmEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_ImmEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ai unwind label %bb.al

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i169
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit183

bb.ah:                                            ; preds = %bb.ah, %.lr.ph320.new
  %indvars.iv363 = phi i64 [ 0, %.lr.ph320.new ], [ %indvars.iv.next364.3, %bb.ah ] ; 7 uses
  %niter596 = phi i64 [ 0, %.lr.ph320.new ], [ %niter596.next.3, %bb.ah ]
  %i.kg = mul i64 %.pre406, %indvars.iv363
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv363 ; 2 uses
  %i.ki = trunc nuw nsw i64 %indvars.iv363 to i32
  store i32 %i.ki, ptr %i.kh, align 8, !tbaa !169
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i64 %i.kg, ptr %i.kj, align 8, !tbaa !170
  %indvars.iv.next364 = or disjoint i64 %indvars.iv363, 1 ; 3 uses
  %i.kk = mul i64 %.pre406, %indvars.iv.next364
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next364 ; 2 uses
  %i.km = trunc nuw nsw i64 %indvars.iv.next364 to i32
  store i32 %i.km, ptr %i.kl, align 8, !tbaa !169
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i64 %i.kk, ptr %i.kn, align 8, !tbaa !170
  %indvars.iv.next364.1 = or disjoint i64 %indvars.iv363, 2 ; 3 uses
  %i.ko = mul i64 %.pre406, %indvars.iv.next364.1
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next364.1 ; 2 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv.next364.1 to i32
  store i32 %i.kq, ptr %i.kp, align 8, !tbaa !169
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 %i.ko, ptr %i.kr, align 8, !tbaa !170
  %indvars.iv.next364.2 = or disjoint i64 %indvars.iv363, 3 ; 3 uses
  %i.ks = mul i64 %.pre406, %indvars.iv.next364.2
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next364.2 ; 2 uses
  %i.ku = trunc nuw nsw i64 %indvars.iv.next364.2 to i32
  store i32 %i.ku, ptr %i.kt, align 8, !tbaa !169
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 %i.ks, ptr %i.kv, align 8, !tbaa !170
  %indvars.iv.next364.3 = add nuw nsw i64 %indvars.iv363, 4 ; 2 uses
  %niter596.next.3 = add i64 %niter596, 4         ; 2 uses
  %niter596.ncmp.3 = icmp eq i64 %niter596.next.3, %unroll_iter595
  br i1 %niter596.ncmp.3, label %._crit_edge321.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !686

bb.ai:                                            ; preds = %._crit_edge321
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kw = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i179 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit180, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !167
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit180

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit180:     ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.lc = load ptr, ptr %17, align 8, !tbaa !276  ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit180
  %i.ld = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !701
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit180, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.ao

bb.al:                                            ; preds = %._crit_edge321
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.lj = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit183, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lk = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !167
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit183

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit183:     ; preds = %bb.am, %bb.al, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.kf, %bb.ag ], [ %i.li, %bb.al ], [ %i.li, %bb.am ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre400, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not479 = icmp eq i32 %i.ca, 0                 ; 3 uses
  br i1 %.not479, label %.loopexit304, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit304.thread unwind label %bb.t ; 4 uses

.loopexit304:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit.thread, label %bb.aa

.loopexit304.thread:                              ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !137
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt12_Vector_baseISt4pairIilESaIS1_EEC2EmRKS2_.exit.i, label %bb.aa

.loopexit.thread:                                 ; preds = %.loopexit304
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge321

_ZNSt12_Vector_baseISt4pairIilESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.loopexit304.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 4
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIilESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !282
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !732
  %xtraiter = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !284
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.ep, align 8, !tbaa !285
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !708

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa571.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph320, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !284
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !285
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.eu, align 8, !tbaa !284
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i64 0, ptr %i.ev, align 8, !tbaa !285
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.ew, align 8, !tbaa !284
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ex, align 8, !tbaa !285
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ey, align 8, !tbaa !284
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ez, align 8, !tbaa !285
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.fa, align 8, !tbaa !284
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i64 0, ptr %i.fb, align 8, !tbaa !285
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.fc, align 8, !tbaa !284
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.fd, align 8, !tbaa !285
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.fe, align 8, !tbaa !284
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ff, align 8, !tbaa !285
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.fg, align 8, !tbaa !284
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i64 0, ptr %i.fh, align 8, !tbaa !285
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph320, label %.lr.ph.i.i.i.i.i, !llvm.loop !709

.lr.ph320:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa571 = phi ptr [ %.lcssa571.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa571, ptr %i.fk, align 8, !tbaa !286
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !174 ; 5 uses
  %wide.trip.count369 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter580 = and i64 %wide.trip.count369, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph320.new

.lr.ph320.new:                                    ; preds = %.lr.ph320
  %unroll_iter = and i64 %wide.trip.count369, 2147483644
  br label %bb.v

._crit_edge321.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %._crit_edge321, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge321.loopexit.unr-lcssa, %.lr.ph320
  %indvars.iv365.epil.init = phi i64 [ 0, %.lr.ph320 ], [ %indvars.iv.next366.3, %._crit_edge321.loopexit.unr-lcssa ]
  %lcmp.mod582 = icmp ne i64 %xtraiter580, 0
  call void @llvm.assume(i1 %lcmp.mod582)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv365.epil = phi i64 [ %indvars.iv365.epil.init, %.epil.preheader ], [ %indvars.iv.next366.epil, %bb.p ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv365.epil
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !117
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv365.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv365.epil to i32
  store i32 %i.fq, ptr %i.fp, align 8, !tbaa !284
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fo, ptr %i.fr, align 8, !tbaa !285
  %indvars.iv.next366.epil = add nuw nsw i64 %indvars.iv365.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter580
  br i1 %epil.iter.cmp.not, label %._crit_edge321, label %bb.p, !llvm.loop !710

._crit_edge321:                                   ; preds = %._crit_edge321.loopexit.unr-lcssa, %bb.p, %.loopexit.thread
  %i.fs = phi ptr [ %i.ea, %.loopexit.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge321.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eb, %.loopexit.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge321.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysIlZNKS1_14uniqueAxisImplIllEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKlSC_E_ZNKS3_IllEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit262

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIilESaIS1_EEC2EmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph320.new
  %indvars.iv365 = phi i64 [ 0, %.lr.ph320.new ], [ %indvars.iv.next366.3, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph320.new ], [ %niter.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv365
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !117
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv365 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv365 to i32
  store i32 %i.gc, ptr %i.gb, align 8, !tbaa !284
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.ga, ptr %i.gd, align 8, !tbaa !285
  %indvars.iv.next366 = or disjoint i64 %indvars.iv365, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next366
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !117
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next366 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next366 to i32
  store i32 %i.gh, ptr %i.gg, align 8, !tbaa !284
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.gf, ptr %i.gi, align 8, !tbaa !285
  %indvars.iv.next366.1 = or disjoint i64 %indvars.iv365, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next366.1
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !117
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next366.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next366.1 to i32
  store i32 %i.gm, ptr %i.gl, align 8, !tbaa !284
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.gk, ptr %i.gn, align 8, !tbaa !285
  %indvars.iv.next366.2 = or disjoint i64 %indvars.iv365, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next366.2
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !117
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next366.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next366.2 to i32
  store i32 %i.gr, ptr %i.gq, align 8, !tbaa !284
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 %i.gp, ptr %i.gs, align 8, !tbaa !285
  %indvars.iv.next366.3 = add nuw nsw i64 %indvars.iv365, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge321.loopexit.unr-lcssa, label %bb.v, !llvm.loop !711

bb.w:                                             ; preds = %._crit_edge321
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !732
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ao

bb.y:                                             ; preds = %._crit_edge321
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !282  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !732
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIilESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.df

bb.aa:                                            ; preds = %.loopexit304.thread, %.loopexit304
  %i.hi = phi ptr [ %i.cw, %.loopexit304.thread ], [ %i.ea, %.loopexit304 ] ; 2 uses
  %i.hj = phi ptr [ %i.dk, %.loopexit304.thread ], [ %i.eb, %.loopexit304 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp ugt i64 %i.hl, 1152921504606846975
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ad

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = shl nuw nsw i64 %i.hl, 3
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #17
          to label %.noexc166 unwind label %bb.ad ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.ho, ptr %17, align 8, !tbaa !151
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !153
  store i64 0, ptr %i.ho, align 8, !tbaa !117
  %i.hr = getelementptr i8, ptr %i.ho, i64 8      ; 3 uses
  %i.hs = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hs, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.hr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !117
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hu, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hr, %.noexc166 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hv, align 8, !tbaa !152
  br i1 %.not479, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader303.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge317

.preheader303.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %.not346 = icmp eq i64 %.088, 0
  %i.hw = load i32, ptr %i.c, align 4
  %i.hx = sext i32 %i.hw to i64
  br i1 %.not346, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader303.preheader

.preheader303.preheader:                          ; preds = %.preheader303.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %.pre401 = load i64, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  br label %.preheader303

.preheader303:                                    ; preds = %.preheader303.preheader, %._crit_edge312
  %i.hy = phi i64 [ %.pre401, %.preheader303.preheader ], [ %i.jg, %._crit_edge312 ] ; 2 uses
  %i.hz = phi i64 [ %.pre401, %.preheader303.preheader ], [ %i.jh, %._crit_edge312 ]
  %indvars.iv = phi i64 [ 0, %.preheader303.preheader ], [ %indvars.iv.next, %._crit_edge312 ] ; 3 uses
  %i.ia = load ptr, ptr %i.f, align 8
  %i.ib = load ptr, ptr %17, align 8
  %.not347 = icmp eq i64 %i.hz, 0
  br i1 %.not347, label %._crit_edge312, label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge312, %.preheader303.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ic = shl nuw nsw i64 %i.cg, 4
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #17
          to label %.noexc174 unwind label %bb.ag ; 9 uses

.noexc174:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.id, ptr %18, align 8, !tbaa !166
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.cg
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !167
  %xtraiter583 = and i64 %i.cg, 7
  %i.ig = and i32 %i.ca, 7
  %lcmp.mod584.not = icmp eq i32 %i.ig, 0
  br i1 %lcmp.mod584.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol

.lr.ph.i.i.i.i.i168.prol:                         ; preds = %.noexc174, %.lr.ph.i.i.i.i.i168.prol
  %.013.i.i.i.i.i169.prol = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i168.prol ], [ %i.id, %.noexc174 ] ; 3 uses
  %.01012.i.i.i.i.i170.prol = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i168.prol ], [ %i.cg, %.noexc174 ]
  %prol.iter585 = phi i64 [ %prol.iter585.next, %.lr.ph.i.i.i.i.i168.prol ], [ 0, %.noexc174 ]
  store i32 0, ptr %.013.i.i.i.i.i169.prol, align 8, !tbaa !169
  %i.ih = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 8
  store i64 0, ptr %i.ih, align 8, !tbaa !170
  %i.ii = add nsw i64 %.01012.i.i.i.i.i170.prol, -1 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 16 ; 3 uses
  %prol.iter585.next = add i64 %prol.iter585, 1   ; 2 uses
  %prol.iter585.cmp.not = icmp eq i64 %prol.iter585.next, %xtraiter583
  br i1 %prol.iter585.cmp.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol, !llvm.loop !712

.lr.ph.i.i.i.i.i168.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i168.prol, %.noexc174
  %.lcssa.unr = phi ptr [ poison, %.noexc174 ], [ %i.ij, %.lr.ph.i.i.i.i.i168.prol ]
  %.013.i.i.i.i.i169.unr = phi ptr [ %i.id, %.noexc174 ], [ %i.ij, %.lr.ph.i.i.i.i.i168.prol ]
  %.01012.i.i.i.i.i170.unr = phi i64 [ %i.cg, %.noexc174 ], [ %i.ii, %.lr.ph.i.i.i.i.i168.prol ]
  %i.ik = icmp ult i32 %i.ca, 8
  br i1 %i.ik, label %.lr.ph316, label %.lr.ph.i.i.i.i.i168

.lr.ph.i.i.i.i.i168:                              ; preds = %.lr.ph.i.i.i.i.i168.prol.loopexit, %.lr.ph.i.i.i.i.i168
  %.013.i.i.i.i.i169 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i168 ], [ %.013.i.i.i.i.i169.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i170 = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i168 ], [ %.01012.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i169, align 8, !tbaa !169
  %i.il = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 8
  store i64 0, ptr %i.il, align 8, !tbaa !170
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 16
  store i32 0, ptr %i.im, align 8, !tbaa !169
  %i.in = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 24
  store i64 0, ptr %i.in, align 8, !tbaa !170
  %i.io = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 32
  store i32 0, ptr %i.io, align 8, !tbaa !169
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 40
  store i64 0, ptr %i.ip, align 8, !tbaa !170
  %i.iq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 48
  store i32 0, ptr %i.iq, align 8, !tbaa !169
  %i.ir = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 56
  store i64 0, ptr %i.ir, align 8, !tbaa !170
  %i.is = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 64
  store i32 0, ptr %i.is, align 8, !tbaa !169
  %i.it = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 72
  store i64 0, ptr %i.it, align 8, !tbaa !170
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 80
  store i32 0, ptr %i.iu, align 8, !tbaa !169
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 88
  store i64 0, ptr %i.iv, align 8, !tbaa !170
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 96
  store i32 0, ptr %i.iw, align 8, !tbaa !169
  %i.ix = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 104
  store i64 0, ptr %i.ix, align 8, !tbaa !170
  %i.iy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 112
  store i32 0, ptr %i.iy, align 8, !tbaa !169
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 120
  store i64 0, ptr %i.iz, align 8, !tbaa !170
  %i.ja = add nsw i64 %.01012.i.i.i.i.i170, -8    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 128 ; 2 uses
  %.not.i.i.i.i.i171.7 = icmp eq i64 %i.ja, 0
  br i1 %.not.i.i.i.i.i171.7, label %.lr.ph316, label %.lr.ph.i.i.i.i.i168, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit180

.preheader:                                       ; preds = %.preheader303, %._crit_edge
  %i.jd = phi i64 [ %i.ji, %._crit_edge ], [ %i.hy, %.preheader303 ] ; 2 uses
  %.0109311 = phi i64 [ %.1110.lcssa, %._crit_edge ], [ 0, %.preheader303 ] ; 2 uses
  %.0112310 = phi i64 [ %i.jj, %._crit_edge ], [ 0, %.preheader303 ] ; 2 uses
  %.not348 = icmp eq i64 %i.jd, 0
  br i1 %.not348, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.je = mul i64 %.0112310, %i.hx
  %i.jf = add i64 %i.je, %indvars.iv
  br label %bb.ae

._crit_edge312:                                   ; preds = %._crit_edge, %.preheader303
  %i.jg = phi i64 [ %i.hy, %.preheader303 ], [ %i.ji, %._crit_edge ]
  %i.jh = phi i64 [ 0, %.preheader303 ], [ %i.ji, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond358.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader303, !llvm.loop !713

._crit_edge:                                      ; preds = %bb.ae, %.preheader
  %i.ji = phi i64 [ 0, %.preheader ], [ %i.jv, %bb.ae ] ; 3 uses
  %.1110.lcssa = phi i64 [ %.0109311, %.preheader ], [ %i.jt, %bb.ae ]
  %i.jj = add nuw i64 %.0112310, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jj, %.088
  br i1 %exitcond.not, label %._crit_edge312, label %.preheader, !llvm.loop !714

bb.ae:                                            ; preds = %.lr.ph, %bb.ae
  %i.jk = phi i64 [ %i.jd, %.lr.ph ], [ %i.jv, %bb.ae ]
  %.1110309 = phi i64 [ %.0109311, %.lr.ph ], [ %i.jt, %bb.ae ] ; 2 uses
  %.0111308 = phi i64 [ 0, %.lr.ph ], [ %i.ju, %bb.ae ] ; 2 uses
  %i.jl = mul i64 %i.jf, %i.jk
  %i.jm = getelementptr [8 x i8], ptr %i.ia, i64 %i.jl
  %i.jn = getelementptr [8 x i8], ptr %i.jm, i64 %.0111308
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !117
  %i.jp = load i64, ptr %i.g, align 8, !tbaa !117
  %i.jq = mul i64 %i.jp, %indvars.iv
  %i.jr = getelementptr [8 x i8], ptr %i.ib, i64 %i.jq
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %.1110309
  store i64 %i.jo, ptr %i.js, align 8, !tbaa !117
  %i.jt = add i64 %.1110309, 1                    ; 2 uses
  %i.ju = add nuw i64 %.0111308, 1                ; 2 uses
  %i.jv = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  %i.jw = icmp ult i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.ae, label %._crit_edge, !llvm.loop !715

.lr.ph316:                                        ; preds = %.lr.ph.i.i.i.i.i168, %.lr.ph.i.i.i.i.i168.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ], [ %i.jb, %.lr.ph.i.i.i.i.i168 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.jx, align 8, !tbaa !172
  %wide.trip.count363 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre402 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter587 = and i64 %wide.trip.count363, 3   ; 3 uses
  %i.jy = icmp ult i32 %i.ca, 4
  br i1 %i.jy, label %.epil.preheader586, label %.lr.ph316.new

.lr.ph316.new:                                    ; preds = %.lr.ph316
  %unroll_iter591 = and i64 %wide.trip.count363, 2147483644
  br label %bb.ah

._crit_edge317.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod589.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod589.not, label %._crit_edge317, label %.epil.preheader586

.epil.preheader586:                               ; preds = %._crit_edge317.loopexit.unr-lcssa, %.lr.ph316
  %indvars.iv359.epil.init = phi i64 [ 0, %.lr.ph316 ], [ %indvars.iv.next360.3, %._crit_edge317.loopexit.unr-lcssa ]
  %lcmp.mod590 = icmp ne i64 %xtraiter587, 0
  call void @llvm.assume(i1 %lcmp.mod590)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader586
  %indvars.iv359.epil = phi i64 [ %indvars.iv359.epil.init, %.epil.preheader586 ], [ %indvars.iv.next360.epil, %bb.af ] ; 4 uses
  %epil.iter588 = phi i64 [ 0, %.epil.preheader586 ], [ %epil.iter588.next, %bb.af ]
  %i.jz = mul i64 %.pre402, %indvars.iv359.epil
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv359.epil ; 2 uses
  %i.kb = trunc nuw nsw i64 %indvars.iv359.epil to i32
  store i32 %i.kb, ptr %i.ka, align 8, !tbaa !169
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %i.jz, ptr %i.kc, align 8, !tbaa !170
  %indvars.iv.next360.epil = add nuw nsw i64 %indvars.iv359.epil, 1
  %epil.iter588.next = add i64 %epil.iter588, 1   ; 2 uses
  %epil.iter588.cmp.not = icmp eq i64 %epil.iter588.next, %xtraiter587
  br i1 %epil.iter588.cmp.not, label %._crit_edge317, label %bb.af, !llvm.loop !716

._crit_edge317:                                   ; preds = %._crit_edge317.loopexit.unr-lcssa, %bb.af, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !733
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.kd, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !733
  %i.ke = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.ke, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIllEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IllEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ai unwind label %bb.al

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

bb.ah:                                            ; preds = %bb.ah, %.lr.ph316.new
  %indvars.iv359 = phi i64 [ 0, %.lr.ph316.new ], [ %indvars.iv.next360.3, %bb.ah ] ; 7 uses
  %niter592 = phi i64 [ 0, %.lr.ph316.new ], [ %niter592.next.3, %bb.ah ]
  %i.kg = mul i64 %.pre402, %indvars.iv359
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv359 ; 2 uses
  %i.ki = trunc nuw nsw i64 %indvars.iv359 to i32
  store i32 %i.ki, ptr %i.kh, align 8, !tbaa !169
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i64 %i.kg, ptr %i.kj, align 8, !tbaa !170
  %indvars.iv.next360 = or disjoint i64 %indvars.iv359, 1 ; 3 uses
  %i.kk = mul i64 %.pre402, %indvars.iv.next360
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next360 ; 2 uses
  %i.km = trunc nuw nsw i64 %indvars.iv.next360 to i32
  store i32 %i.km, ptr %i.kl, align 8, !tbaa !169
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i64 %i.kk, ptr %i.kn, align 8, !tbaa !170
  %indvars.iv.next360.1 = or disjoint i64 %indvars.iv359, 2 ; 3 uses
  %i.ko = mul i64 %.pre402, %indvars.iv.next360.1
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next360.1 ; 2 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv.next360.1 to i32
  store i32 %i.kq, ptr %i.kp, align 8, !tbaa !169
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 %i.ko, ptr %i.kr, align 8, !tbaa !170
  %indvars.iv.next360.2 = or disjoint i64 %indvars.iv359, 3 ; 3 uses
  %i.ks = mul i64 %.pre402, %indvars.iv.next360.2
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next360.2 ; 2 uses
  %i.ku = trunc nuw nsw i64 %indvars.iv.next360.2 to i32
  store i32 %i.ku, ptr %i.kt, align 8, !tbaa !169
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 %i.ks, ptr %i.kv, align 8, !tbaa !170
  %indvars.iv.next360.3 = add nuw nsw i64 %indvars.iv359, 4 ; 2 uses
  %niter592.next.3 = add i64 %niter592, 4         ; 2 uses
  %niter592.ncmp.3 = icmp eq i64 %niter592.next.3, %unroll_iter591
  br i1 %niter592.ncmp.3, label %._crit_edge317.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !717

bb.ai:                                            ; preds = %._crit_edge317
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.kw = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i175 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !167
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit:        ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.lc = load ptr, ptr %17, align 8, !tbaa !151  ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !153
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #18
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.ao

bb.al:                                            ; preds = %._crit_edge317
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.lj = load ptr, ptr %18, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i177 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lk = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !167
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #18
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178:     ; preds = %bb.am, %bb.al, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.kf, %bb.ag ], [ %i.li, %bb.al ], [ %i.li, %bb.am ] ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS_3MatERSt6vectorIS3_SaIS3_EEib:bb.a
  %i.bz = phi i64 [ %.pre400, %bb.b ], [ %i.by, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ]
  %i.ca = phi i32 [ %i.m, %bb.b ], [ %.pre, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 15 uses
  %.088 = phi i64 [ 1, %bb.b ], [ %.0.lcssa.i, %_ZSt10accumulateIPimSt10multipliesIiEET0_T_S4_S3_T1_.exit145 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !139
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 1, i64 %i.bz
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cg = sext i32 %i.ca to i64                   ; 19 uses
  %i.ch = icmp slt i32 %i.ca, 0
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %.not477 = icmp eq i32 %i.ca, 0                 ; 3 uses
  br i1 %.not477, label %.loopexit302, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cg, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc146 unwind label %bb.q  ; 4 uses

.noexc146:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !138  ; 4 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %.noexc146
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !149
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cu) #18
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cl, ptr %10, align 8, !tbaa !138
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cg, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #17
          to label %.noexc152 unwind label %bb.r  ; 4 uses

.noexc152:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.da = load ptr, ptr %11, align 8, !tbaa !138  ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !137
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

bb.l:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148: ; preds = %bb.l, %.noexc152
  %.not.i8.i149 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #18
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i148
  store ptr %i.cz, ptr %11, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %i.cg, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #17
          to label %.noexc156 unwind label %bb.s  ; 4 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !151  ; 4 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.n:                                             ; preds = %.noexc156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.n, %.noexc156
  %.not.i8.i154 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i154, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !153
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i, %bb.o
  store ptr %i.dn, ptr %12, align 8, !tbaa !151
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !152
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cg
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dy = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.loopexit302.thread unwind label %bb.t ; 4 uses

.loopexit302:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit.thread, label %bb.aa

.loopexit302.thread:                              ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  store ptr %i.dz, ptr %13, align 8, !tbaa !138
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.cg
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !137
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %_ZNSt12_Vector_baseISt4pairIidESaIS1_EEC2EmRKS2_.exit.i, label %bb.aa

.loopexit.thread:                                 ; preds = %.loopexit302
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %._crit_edge319

_ZNSt12_Vector_baseISt4pairIidESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.loopexit302.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ek = shl nuw nsw i64 %i.cg, 4
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc161 unwind label %bb.u  ; 9 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIidESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.el, ptr %14, align 8, !tbaa !291
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.cg
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !764
  %xtraiter = and i64 %i.cg, 7
  %i.eo = and i32 %i.ca, 7
  %lcmp.mod.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc161, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.noexc161 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc161 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc161 ]
  store i32 0, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !293
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store double 0.000000e+00, ptr %i.ep, align 8, !tbaa !294
  %i.eq = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !738

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc161
  %.lcssa576.unr = phi ptr [ poison, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.el, %.noexc161 ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc161 ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.es = icmp ult i32 %i.ca, 8
  br i1 %i.es, label %.lr.ph318, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !293
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store double 0.000000e+00, ptr %i.et, align 8, !tbaa !294
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.eu, align 8, !tbaa !293
  %i.ev = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store double 0.000000e+00, ptr %i.ev, align 8, !tbaa !294
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store i32 0, ptr %i.ew, align 8, !tbaa !293
  %i.ex = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !294
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ey, align 8, !tbaa !293
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store double 0.000000e+00, ptr %i.ez, align 8, !tbaa !294
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i32 0, ptr %i.fa, align 8, !tbaa !293
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !294
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.fc, align 8, !tbaa !293
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store double 0.000000e+00, ptr %i.fd, align 8, !tbaa !294
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store i32 0, ptr %i.fe, align 8, !tbaa !293
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store double 0.000000e+00, ptr %i.ff, align 8, !tbaa !294
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.fg, align 8, !tbaa !293
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store double 0.000000e+00, ptr %i.fh, align 8, !tbaa !294
  %i.fi = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph318, label %.lr.ph.i.i.i.i.i, !llvm.loop !739

.lr.ph318:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa576 = phi ptr [ %.lcssa576.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fj, %.lr.ph.i.i.i.i.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.lcssa576, ptr %i.fk, align 8, !tbaa !295
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !288 ; 5 uses
  %wide.trip.count369 = zext nneg i32 %i.ca to i64 ; 2 uses
  %xtraiter585 = and i64 %wide.trip.count369, 3   ; 3 uses
  %i.fm = icmp ult i32 %i.ca, 4
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph318.new

.lr.ph318.new:                                    ; preds = %.lr.ph318
  %unroll_iter = and i64 %wide.trip.count369, 2147483644
  br label %bb.v

._crit_edge319.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  br i1 %lcmp.mod586.not, label %._crit_edge319, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge319.loopexit.unr-lcssa, %.lr.ph318
  %indvars.iv365.epil.init = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next366.3, %._crit_edge319.loopexit.unr-lcssa ]
  %lcmp.mod587 = icmp ne i64 %xtraiter585, 0
  call void @llvm.assume(i1 %lcmp.mod587)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv365.epil = phi i64 [ %indvars.iv365.epil.init, %.epil.preheader ], [ %indvars.iv.next366.epil, %bb.p ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv365.epil
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !145
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv365.epil ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv365.epil to i32
  store i32 %i.fq, ptr %i.fp, align 8, !tbaa !293
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store double %i.fo, ptr %i.fr, align 8, !tbaa !294
  %indvars.iv.next366.epil = add nuw nsw i64 %indvars.iv365.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter585
  br i1 %epil.iter.cmp.not, label %._crit_edge319, label %bb.p, !llvm.loop !740

._crit_edge319:                                   ; preds = %._crit_edge319.loopexit.unr-lcssa, %bb.p, %.loopexit.thread
  %i.fs = phi ptr [ %i.ea, %.loopexit.thread ], [ %i.cw, %bb.p ], [ %i.cw, %._crit_edge319.loopexit.unr-lcssa ] ; 3 uses
  %i.ft = phi ptr [ %i.eb, %.loopexit.thread ], [ %i.dk, %bb.p ], [ %i.dk, %._crit_edge319.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysIdZNKS1_14uniqueAxisImplIddEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlRKdSC_E_ZNKS3_IddEEvS6_SA_ibEUlSC_SC_E0_EEvRS7_ISt4pairIiT_ESaISH_EERKT0_RKT1_RS7_IiSaIiEEST_RS7_IlSaIlEEST_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.w unwind label %bb.y

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i147
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit261

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIidESaIS1_EEC2EmRKS2_.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit163

bb.v:                                             ; preds = %bb.v, %.lr.ph318.new
  %indvars.iv365 = phi i64 [ 0, %.lr.ph318.new ], [ %indvars.iv.next366.3, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph318.new ], [ %niter.next.3, %bb.v ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv365
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !145
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv365 ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv365 to i32
  store i32 %i.gc, ptr %i.gb, align 8, !tbaa !293
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store double %i.ga, ptr %i.gd, align 8, !tbaa !294
  %indvars.iv.next366 = or disjoint i64 %indvars.iv365, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next366
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !145
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next366 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next366 to i32
  store i32 %i.gh, ptr %i.gg, align 8, !tbaa !293
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store double %i.gf, ptr %i.gi, align 8, !tbaa !294
  %indvars.iv.next366.1 = or disjoint i64 %indvars.iv365, 2 ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next366.1
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !145
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next366.1 ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next366.1 to i32
  store i32 %i.gm, ptr %i.gl, align 8, !tbaa !293
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store double %i.gk, ptr %i.gn, align 8, !tbaa !294
  %indvars.iv.next366.2 = or disjoint i64 %indvars.iv365, 3 ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next366.2
  %i.gp = load double, ptr %i.go, align 8, !tbaa !145
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.next366.2 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next366.2 to i32
  store i32 %i.gr, ptr %i.gq, align 8, !tbaa !293
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store double %i.gp, ptr %i.gs, align 8, !tbaa !294
  %indvars.iv.next366.3 = add nuw nsw i64 %indvars.iv365, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge319.loopexit.unr-lcssa, label %bb.v, !llvm.loop !741

bb.w:                                             ; preds = %._crit_edge319
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gt = load ptr, ptr %14, align 8, !tbaa !291  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !764
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit:        ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.an

bb.y:                                             ; preds = %._crit_edge319
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ha = load ptr, ptr %14, align 8, !tbaa !291  ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !764
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #18
  br label %_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit163

_ZNSt6vectorISt4pairIidESaIS1_EED2Ev.exit163:     ; preds = %bb.z, %bb.y, %bb.u
  %i.hg = phi ptr [ %i.dk, %bb.u ], [ %i.ft, %bb.y ], [ %i.ft, %bb.z ]
  %i.hh = phi ptr [ %i.cw, %bb.u ], [ %i.fs, %bb.y ], [ %i.fs, %bb.z ]
  %.pn119 = phi { ptr, i32 } [ %i.fy, %bb.u ], [ %i.gz, %bb.y ], [ %i.gz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.de

bb.aa:                                            ; preds = %.loopexit302.thread, %.loopexit302
  %i.hi = phi ptr [ %i.cw, %.loopexit302.thread ], [ %i.ea, %.loopexit302 ] ; 2 uses
  %i.hj = phi ptr [ %i.dk, %.loopexit302.thread ], [ %i.eb, %.loopexit302 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  store i64 %i.hk, ptr %i.g, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.hl = mul i64 %i.hk, %i.cg                    ; 5 uses
  %i.hm = icmp ugt i64 %i.hl, 1152921504606846975
  br i1 %i.hm, label %bb.ab, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc165 unwind label %bb.ad

.noexc165:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i164 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i164, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hn = shl nuw nsw i64 %i.hl, 3
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #17
          to label %.noexc166 unwind label %bb.ad ; 4 uses

.noexc166:                                        ; preds = %bb.ac
  store ptr %i.ho, ptr %17, align 8, !tbaa !297
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !765
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !145
  %i.hr = getelementptr i8, ptr %i.ho, i64 8      ; 3 uses
  %i.hs = add nsw i64 %i.hl, -1                   ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hs, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.hr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !145
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc166
  %.0.i.i.i.i.i = phi ptr [ %i.hu, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hr, %.noexc166 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.hv, align 8, !tbaa !766
  br i1 %.not477, label %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.preheader301.lr.ph

_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge315

.preheader301.lr.ph:                              ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %.not346 = icmp eq i64 %.088, 0
  %i.hw = load i64, ptr %i.d, align 8             ; 10 uses
  %.not347 = icmp eq i64 %i.hw, 0
  %i.hx = load i32, ptr %i.c, align 4
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %brmerge = select i1 %.not346, i1 true, i1 %.not347
  br i1 %brmerge, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader301.preheader

.preheader301.preheader:                          ; preds = %.preheader301.lr.ph
  %wide.trip.count = zext nneg i32 %i.ca to i64
  %i.hz = mul i64 %i.hw, -8
  %i.ia = mul i64 %i.hw, %i.hy
  %i.ib = mul i64 %i.ia, -8
  %min.iters.check538 = icmp ult i64 %i.hw, 4
  %n.vec540 = and i64 %i.hw, -4                   ; 4 uses
  %cmp.n547 = icmp eq i64 %i.hw, %n.vec540
  %xtraiter588 = and i64 %i.hw, 3                 ; 2 uses
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.preheader, %._crit_edge310
  %indvars.iv = phi i64 [ 0, %.preheader301.preheader ], [ %indvars.iv.next, %._crit_edge310 ] ; 5 uses
  %i.ic = mul i64 %i.hz, %indvars.iv
  %i.id = shl nuw nsw i64 %indvars.iv, 3
  %i.ie = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  %i.ig = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ih = mul i64 %i.ig, %indvars.iv
  %i.ii = load ptr, ptr %17, align 8              ; 2 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64
  %i.ik = getelementptr [8 x i8], ptr %i.ii, i64 %i.ih ; 6 uses
  %i.il = add i64 %i.ic, %i.ij
  %i.im = mul i64 %i.ig, %i.id
  %i.in = add i64 %i.il, %i.im
  %i.io = sub i64 %i.in, %i.if
  br label %.preheader

_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i: ; preds = %._crit_edge310, %.preheader301.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ip = shl nuw nsw i64 %i.cg, 4
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #17
          to label %.noexc174 unwind label %bb.af ; 9 uses

.noexc174:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.iq, ptr %18, align 8, !tbaa !166
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.cg
  %i.is = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !167
  %xtraiter591 = and i64 %i.cg, 7
  %i.it = and i32 %i.ca, 7
  %lcmp.mod592.not = icmp eq i32 %i.it, 0
  br i1 %lcmp.mod592.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol

.lr.ph.i.i.i.i.i168.prol:                         ; preds = %.noexc174, %.lr.ph.i.i.i.i.i168.prol
  %.013.i.i.i.i.i169.prol = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ], [ %i.iq, %.noexc174 ] ; 3 uses
  %.01012.i.i.i.i.i170.prol = phi i64 [ %i.iv, %.lr.ph.i.i.i.i.i168.prol ], [ %i.cg, %.noexc174 ]
  %prol.iter593 = phi i64 [ %prol.iter593.next, %.lr.ph.i.i.i.i.i168.prol ], [ 0, %.noexc174 ]
  store i32 0, ptr %.013.i.i.i.i.i169.prol, align 8, !tbaa !169
  %i.iu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 8
  store i64 0, ptr %i.iu, align 8, !tbaa !170
  %i.iv = add nsw i64 %.01012.i.i.i.i.i170.prol, -1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169.prol, i64 16 ; 3 uses
  %prol.iter593.next = add i64 %prol.iter593, 1   ; 2 uses
  %prol.iter593.cmp.not = icmp eq i64 %prol.iter593.next, %xtraiter591
  br i1 %prol.iter593.cmp.not, label %.lr.ph.i.i.i.i.i168.prol.loopexit, label %.lr.ph.i.i.i.i.i168.prol, !llvm.loop !742

.lr.ph.i.i.i.i.i168.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i168.prol, %.noexc174
  %.lcssa.unr = phi ptr [ poison, %.noexc174 ], [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ]
  %.013.i.i.i.i.i169.unr = phi ptr [ %i.iq, %.noexc174 ], [ %i.iw, %.lr.ph.i.i.i.i.i168.prol ]
  %.01012.i.i.i.i.i170.unr = phi i64 [ %i.cg, %.noexc174 ], [ %i.iv, %.lr.ph.i.i.i.i.i168.prol ]
  %i.ix = icmp ult i32 %i.ca, 8
  br i1 %i.ix, label %.lr.ph, label %.lr.ph.i.i.i.i.i168

.lr.ph.i.i.i.i.i168:                              ; preds = %.lr.ph.i.i.i.i.i168.prol.loopexit, %.lr.ph.i.i.i.i.i168
  %.013.i.i.i.i.i169 = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i168 ], [ %.013.i.i.i.i.i169.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i170 = phi i64 [ %i.jn, %.lr.ph.i.i.i.i.i168 ], [ %.01012.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i.i169, align 8, !tbaa !169
  %i.iy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 8
  store i64 0, ptr %i.iy, align 8, !tbaa !170
  %i.iz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 16
  store i32 0, ptr %i.iz, align 8, !tbaa !169
  %i.ja = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 24
  store i64 0, ptr %i.ja, align 8, !tbaa !170
  %i.jb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 32
  store i32 0, ptr %i.jb, align 8, !tbaa !169
  %i.jc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 40
  store i64 0, ptr %i.jc, align 8, !tbaa !170
  %i.jd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 48
  store i32 0, ptr %i.jd, align 8, !tbaa !169
  %i.je = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 56
  store i64 0, ptr %i.je, align 8, !tbaa !170
  %i.jf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 64
  store i32 0, ptr %i.jf, align 8, !tbaa !169
  %i.jg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 72
  store i64 0, ptr %i.jg, align 8, !tbaa !170
  %i.jh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 80
  store i32 0, ptr %i.jh, align 8, !tbaa !169
  %i.ji = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 88
  store i64 0, ptr %i.ji, align 8, !tbaa !170
  %i.jj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 96
  store i32 0, ptr %i.jj, align 8, !tbaa !169
  %i.jk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 104
  store i64 0, ptr %i.jk, align 8, !tbaa !170
  %i.jl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 112
  store i32 0, ptr %i.jl, align 8, !tbaa !169
  %i.jm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 120
  store i64 0, ptr %i.jm, align 8, !tbaa !170
  %i.jn = add nsw i64 %.01012.i.i.i.i.i170, -8    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i169, i64 128 ; 2 uses
  %.not.i.i.i.i.i171.7 = icmp eq i64 %i.jn, 0
  br i1 %.not.i.i.i.i.i171.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i168, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

.preheader:                                       ; preds = %.preheader301, %._crit_edge
  %.0109309 = phi i64 [ 0, %.preheader301 ], [ %.lcssa514, %._crit_edge ] ; 5 uses
  %.0112308 = phi i64 [ 0, %.preheader301 ], [ %i.kn, %._crit_edge ] ; 3 uses
  %i.jq = mul i64 %.0112308, %i.hy
  %i.jr = add i64 %i.jq, %indvars.iv
  %i.js = mul i64 %i.jr, %i.hw
  %i.jt = getelementptr [8 x i8], ptr %i.ie, i64 %i.js ; 6 uses
  br i1 %min.iters.check538, label %scalar.ph537.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ju = mul i64 %i.ib, %.0112308
  %i.jv = add i64 %i.io, %i.ju
  %i.jw = shl i64 %.0109309, 3
  %i.jx = add i64 %i.jv, %i.jw
  %i.jy = add i64 %i.jx, -1
  %diff.check = icmp ult i64 %i.jy, 31
  br i1 %diff.check, label %scalar.ph537.preheader, label %vector.ph539

vector.ph539:                                     ; preds = %vector.memcheck
  %i.jz = add i64 %.0109309, %n.vec540            ; 2 uses
  %i.ka = getelementptr [8 x i8], ptr %i.ik, i64 %.0109309
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph539
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next545, %vector.body541 ] ; 3 uses
  %i.kb = getelementptr [8 x i8], ptr %i.jt, i64 %index542 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  %wide.load543 = load <2 x double>, ptr %i.kb, align 8, !tbaa !145
  %wide.load544 = load <2 x double>, ptr %i.kc, align 8, !tbaa !145
  %i.kd = getelementptr [8 x i8], ptr %i.ka, i64 %index542 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  store <2 x double> %wide.load543, ptr %i.kd, align 8, !tbaa !145
  store <2 x double> %wide.load544, ptr %i.ke, align 8, !tbaa !145
  %index.next545 = add nuw i64 %index542, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next545, %n.vec540
  br i1 %i.kf, label %middle.block546, label %vector.body541, !llvm.loop !743

middle.block546:                                  ; preds = %vector.body541
  br i1 %cmp.n547, label %._crit_edge, label %scalar.ph537.preheader

scalar.ph537.preheader:                           ; preds = %vector.memcheck, %.preheader, %middle.block546
  %.1110307.ph = phi i64 [ %.0109309, %vector.memcheck ], [ %.0109309, %.preheader ], [ %i.jz, %middle.block546 ] ; 2 uses
  %.0111306.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec540, %middle.block546 ] ; 3 uses
  br i1 %lcmp.mod589.not, label %scalar.ph537.prol.loopexit, label %scalar.ph537.prol

scalar.ph537.prol:                                ; preds = %scalar.ph537.preheader, %scalar.ph537.prol
  %.1110307.prol = phi i64 [ %i.kj, %scalar.ph537.prol ], [ %.1110307.ph, %scalar.ph537.preheader ] ; 2 uses
  %.0111306.prol = phi i64 [ %i.kk, %scalar.ph537.prol ], [ %.0111306.ph, %scalar.ph537.preheader ] ; 2 uses
  %prol.iter590 = phi i64 [ %prol.iter590.next, %scalar.ph537.prol ], [ 0, %scalar.ph537.preheader ]
  %i.kg = getelementptr [8 x i8], ptr %i.jt, i64 %.0111306.prol
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !145
  %i.ki = getelementptr [8 x i8], ptr %i.ik, i64 %.1110307.prol
  store double %i.kh, ptr %i.ki, align 8, !tbaa !145
  %i.kj = add i64 %.1110307.prol, 1               ; 3 uses
  %i.kk = add nuw i64 %.0111306.prol, 1           ; 2 uses
  %prol.iter590.next = add i64 %prol.iter590, 1   ; 2 uses
  %prol.iter590.cmp.not = icmp eq i64 %prol.iter590.next, %xtraiter588
  br i1 %prol.iter590.cmp.not, label %scalar.ph537.prol.loopexit, label %scalar.ph537.prol, !llvm.loop !744

scalar.ph537.prol.loopexit:                       ; preds = %scalar.ph537.prol, %scalar.ph537.preheader
  %.lcssa575.unr = phi i64 [ poison, %scalar.ph537.preheader ], [ %i.kj, %scalar.ph537.prol ]
  %.1110307.unr = phi i64 [ %.1110307.ph, %scalar.ph537.preheader ], [ %i.kj, %scalar.ph537.prol ]
  %.0111306.unr = phi i64 [ %.0111306.ph, %scalar.ph537.preheader ], [ %i.kk, %scalar.ph537.prol ]
  %i.kl = sub i64 %.0111306.ph, %i.hw
  %i.km = icmp ugt i64 %i.kl, -4
  br i1 %i.km, label %._crit_edge, label %scalar.ph537

._crit_edge310:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond358.not, label %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i, label %.preheader301, !llvm.loop !745

._crit_edge:                                      ; preds = %scalar.ph537.prol.loopexit, %scalar.ph537, %middle.block546
  %.lcssa514 = phi i64 [ %i.jz, %middle.block546 ], [ %.lcssa575.unr, %scalar.ph537.prol.loopexit ], [ %i.lg, %scalar.ph537 ]
  %i.kn = add nuw i64 %.0112308, 1                ; 2 uses
  %exitcond356.not = icmp eq i64 %i.kn, %.088
  br i1 %exitcond356.not, label %._crit_edge310, label %.preheader, !llvm.loop !746

scalar.ph537:                                     ; preds = %scalar.ph537.prol.loopexit, %scalar.ph537
  %.1110307 = phi i64 [ %i.lg, %scalar.ph537 ], [ %.1110307.unr, %scalar.ph537.prol.loopexit ] ; 5 uses
  %.0111306 = phi i64 [ %i.lh, %scalar.ph537 ], [ %.0111306.unr, %scalar.ph537.prol.loopexit ] ; 5 uses
  %i.ko = getelementptr [8 x i8], ptr %i.jt, i64 %.0111306
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !145
  %i.kq = getelementptr [8 x i8], ptr %i.ik, i64 %.1110307
  store double %i.kp, ptr %i.kq, align 8, !tbaa !145
  %i.kr = getelementptr [8 x i8], ptr %i.jt, i64 %.0111306
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !145
  %i.ku = getelementptr [8 x i8], ptr %i.ik, i64 %.1110307
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  store double %i.kt, ptr %i.kv, align 8, !tbaa !145
  %i.kw = getelementptr [8 x i8], ptr %i.jt, i64 %.0111306
  %i.kx = getelementptr i8, ptr %i.kw, i64 16
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !145
  %i.kz = getelementptr [8 x i8], ptr %i.ik, i64 %.1110307
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  store double %i.ky, ptr %i.la, align 8, !tbaa !145
  %i.lb = getelementptr [8 x i8], ptr %i.jt, i64 %.0111306
  %i.lc = getelementptr i8, ptr %i.lb, i64 24
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !145
  %i.le = getelementptr [8 x i8], ptr %i.ik, i64 %.1110307
  %i.lf = getelementptr i8, ptr %i.le, i64 24
  store double %i.ld, ptr %i.lf, align 8, !tbaa !145
  %i.lg = add i64 %.1110307, 4                    ; 2 uses
  %i.lh = add nuw i64 %.0111306, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.lh, %i.hw
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph537, !llvm.loop !747

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i168, %.lr.ph.i.i.i.i.i168.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i168.prol.loopexit ], [ %i.jo, %.lr.ph.i.i.i.i.i168 ]
  %i.li = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.lcssa, ptr %i.li, align 8, !tbaa !172
  %wide.trip.count363 = zext nneg i32 %i.ca to i64 ; 2 uses
  %.pre401 = load i64, ptr %i.g, align 8, !tbaa !117 ; 5 uses
  %xtraiter595 = and i64 %wide.trip.count363, 3   ; 3 uses
  %i.lj = icmp ult i32 %i.ca, 4
  br i1 %i.lj, label %.epil.preheader594, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter599 = and i64 %wide.trip.count363, 2147483644
  br label %bb.ag

._crit_edge315.loopexit.unr-lcssa:                ; preds = %bb.ag
  %lcmp.mod597.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod597.not, label %._crit_edge315, label %.epil.preheader594

.epil.preheader594:                               ; preds = %._crit_edge315.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv359.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next360.3, %._crit_edge315.loopexit.unr-lcssa ]
  %lcmp.mod598 = icmp ne i64 %xtraiter595, 0
  call void @llvm.assume(i1 %lcmp.mod598)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader594
  %indvars.iv359.epil = phi i64 [ %indvars.iv359.epil.init, %.epil.preheader594 ], [ %indvars.iv.next360.epil, %bb.ae ] ; 4 uses
  %epil.iter596 = phi i64 [ 0, %.epil.preheader594 ], [ %epil.iter596.next, %bb.ae ]
  %i.lk = mul i64 %.pre401, %indvars.iv359.epil
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv359.epil ; 2 uses
  %i.lm = trunc nuw nsw i64 %indvars.iv359.epil to i32
  store i32 %i.lm, ptr %i.ll, align 8, !tbaa !169
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store i64 %i.lk, ptr %i.ln, align 8, !tbaa !170
  %indvars.iv.next360.epil = add nuw nsw i64 %indvars.iv359.epil, 1
  %epil.iter596.next = add i64 %epil.iter596, 1   ; 2 uses
  %epil.iter596.cmp.not = icmp eq i64 %epil.iter596.next, %xtraiter595
  br i1 %epil.iter596.cmp.not, label %._crit_edge315, label %bb.ae, !llvm.loop !748

._crit_edge315:                                   ; preds = %._crit_edge315.loopexit.unr-lcssa, %bb.ae, %_ZNSt6vectorISt4pairIimESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %17, ptr %19, align 8, !tbaa !767
  %i.lo = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.lo, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr %17, ptr %20, align 8, !tbaa !767
  %i.lp = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.g, ptr %i.lp, align 8, !tbaa !174
  invoke void @_ZNK2cv3dnn15UniqueLayerImpl16sortAndGroupKeysImZNKS1_14uniqueAxisImplIddEEvRKNS_3MatERSt6vectorIS4_SaIS4_EEibEUlmmE_ZNKS3_IddEEvS6_SA_ibEUlmmE0_EEvRS7_ISt4pairIiT_ESaISF_EERKT0_RKT1_RS7_IiSaIiEESR_RS7_IlSaIlEESR_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ah unwind label %bb.ak

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIimESaIS1_EEC2EmRKS2_.exit.i
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIimESaIS1_EED2Ev.exit178

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.new
  %indvars.iv359 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next360.3, %bb.ag ] ; 7 uses
  %niter600 = phi i64 [ 0, %.lr.ph.new ], [ %niter600.next.3, %bb.ag ]
  %i.lr = mul i64 %.pre401, %indvars.iv359
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv359 ; 2 uses
  %i.lt = trunc nuw nsw i64 %indvars.iv359 to i32
  store i32 %i.lt, ptr %i.ls, align 8, !tbaa !169
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i64 %i.lr, ptr %i.lu, align 8, !tbaa !170
  %indvars.iv.next360 = or disjoint i64 %indvars.iv359, 1 ; 3 uses
  %i.lv = mul i64 %.pre401, %indvars.iv.next360
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv.next360 ; 2 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv.next360 to i32
  store i32 %i.lx, ptr %i.lw, align 8, !tbaa !169
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %i.lv, ptr %i.ly, align 8, !tbaa !170
  %indvars.iv.next360.1 = or disjoint i64 %indvars.iv359, 2 ; 3 uses
  %i.lz = mul i64 %.pre401, %indvars.iv.next360.1
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv.next360.1 ; 2 uses
  %i.mb = trunc nuw nsw i64 %indvars.iv.next360.1 to i32
  store i32 %i.mb, ptr %i.ma, align 8, !tbaa !169
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.lz, ptr %i.mc, align 8, !tbaa !170
  %indvars.iv.next360.2 = or disjoint i64 %indvars.iv359, 3 ; 3 uses
  %i.md = mul i64 %.pre401, %indvars.iv.next360.2
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %indvars.iv.next360.2 ; 2 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv.next360.2 to i32
  store i32 %i.mf, ptr %i.me, align 8, !tbaa !169
end_hunk_12
