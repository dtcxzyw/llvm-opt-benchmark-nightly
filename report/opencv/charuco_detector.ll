Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/charuco_detector?download=true
inline.NumInlined: 1546
inline.NumDeleted: 599
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv5aruco15CharucoDetector19CharucoDetectorImpl33interpolateCornersCharucoLocalHomERKNS_11_InputArrayES5_S5_RKNS_12_OutputArrayES8_:bb.a
  %i.w = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !293
  %i.x = icmp eq i32 %i.w, 65536
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39, !noalias !293
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.z)
  br label %_ZNK2cv11_InputArray6getMatEi.exit159

bb.o:                                             ; preds = %bb.m
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit159

_ZNK2cv11_InputArray6getMatEi.exit159:            ; preds = %bb.n, %bb.o
  %i.aa = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit159
  %i.ab = icmp eq i64 %i.v, %i.aa
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.ab, label %bb.w, label %bb.r

bb.q:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit159
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit289

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv5aruco15CharucoDetector19CharucoDetectorImpl33interpolateCornersCharucoLocalHomERKNS_11_InputArrayES5_S5_RKNS_12_OutputArrayES8_, ptr noundef nonnull @.str.1, i32 noundef 214) #26
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.v:                                             ; preds = %bb.s
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %11, align 8, !tbaa !79   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.v
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.u
  %.pn106 = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.ae, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit289

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ak = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !294
  %i.al = icmp eq i32 %i.ak, 65536
  br i1 %i.al, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39, !noalias !294
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
  br label %_ZNK2cv11_InputArray6getMatEi.exit163

bb.y:                                             ; preds = %bb.w
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit163

_ZNK2cv11_InputArray6getMatEi.exit163:            ; preds = %bb.x, %bb.y
  %i.ao = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.z unwind label %bb.ac      ; 7 uses

bb.z:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit163
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ap = icmp ugt i64 %i.ao, 44343134792571037
  br i1 %i.ap, label %.noexc164, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc164:                                        ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.z
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.aq = mul nuw nsw i64 %i.ao, 208
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24 ; 4 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %.08.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ar, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #23
  %i.as = add i64 %.057.i.i.i.i.i, -1             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !270

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit:     ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw [208 x i8], ptr %i.ar, i64 %i.ao ; 2 uses
  %i.av = add nuw nsw i64 %i.ao, 63               ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 18014398509481976
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #24
          to label %bb.aa unwind label %.body.thread ; 3 uses

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit
  %i.az = lshr i64 %i.av, 6                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %.idx.i = shl nuw nsw i64 %i.az, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

.body.thread:                                     ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i282.preheader

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.aa
  %.0.lcssa.i.i.i.i.i413 = phi ptr [ %i.at, %bb.aa ], [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.0343.0393 = phi ptr [ %i.ar, %bb.aa ], [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 10 uses
  %.sroa.18.0373 = phi ptr [ %i.au, %bb.aa ], [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.sroa.0333.0 = phi ptr [ %i.ay, %bb.aa ], [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 6 uses
  %.sroa.16339.0 = phi ptr [ %i.ba, %bb.aa ], [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.bc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board6getIdsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ab unwind label %bb.ad     ; 2 uses

bb.ab:                                            ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK2cv5aruco12CharucoBoard19getNearestMarkerIdxEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.51") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.preheader unwind label %bb.ae

.preheader:                                       ; preds = %bb.ab
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.af

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNK2cv5aruco12CharucoBoard20getChessboardCornersEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.41") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ch unwind label %bb.ck

bb.ac:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit163
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit289

bb.ad:                                            ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ae:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit278

bb.af:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %.0102507 = phi i64 [ 0, %.lr.ph ], [ %i.je, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ca = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc166 unwind label %bb.aw

.noexc166:                                        ; preds = %bb.af
  %i.cb = icmp eq i32 %i.ca, 65536
  br i1 %i.cb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc166
  %i.cc = load ptr, ptr %i.bd, align 8, !tbaa !39, !noalias !295
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.cc)
          to label %_ZNK2cv11_InputArray6getMatEi.exit169 unwind label %bb.aw

bb.ah:                                            ; preds = %.noexc166
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit169 unwind label %bb.aw

_ZNK2cv11_InputArray6getMatEi.exit169:            ; preds = %bb.ag, %bb.ah
  %i.cd = trunc i64 %.0102507 to i32              ; 4 uses
  %i.ce = load i32, ptr %i.be, align 4, !tbaa !84
  %i.cf = icmp slt i32 %i.ce, 2
  br i1 %i.cf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit169
  %i.cg = load ptr, ptr %i.bi, align 8, !tbaa !85
  %sext442 = shl i64 %.0102507, 32
  %i.ch = ashr exact i64 %sext442, 30
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.aj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit169
  %i.cj = load i32, ptr %16, align 8, !tbaa !86
  %i.ck = and i32 %i.cj, 16384
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = load i32, ptr %i.bf, align 4
  %i.cn = icmp eq i32 %i.cm, 1
  %or.cond.i = select i1 %i.cl, i1 true, i1 %i.cn
  br i1 %or.cond.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !85
  %sext441 = shl i64 %.0102507, 32
  %i.cp = ashr exact i64 %sext441, 30
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.al:                                            ; preds = %bb.aj
  %i.cr = load i32, ptr %i.bg, align 8, !tbaa !28
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ct = load ptr, ptr %i.bi, align 8, !tbaa !85
  %i.cu = load i64, ptr %i.bj, align 8, !tbaa !81
  %sext440 = shl i64 %.0102507, 32
  %i.cv = ashr exact i64 %sext440, 32
  %i.cw = mul i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.an:                                            ; preds = %bb.al
  %i.cy = load i32, ptr %i.bh, align 4, !tbaa !87 ; 3 uses
  %i.cz = sdiv i32 %i.cd, %i.cy                   ; 2 uses
  %i.da = mul nsw i32 %i.cz, %i.cy                ; 0 uses
  %.recomposed = srem i32 %i.cd, %i.cy
  %i.db = load ptr, ptr %i.bi, align 8, !tbaa !85
  %i.dc = load i64, ptr %i.bj, align 8, !tbaa !81
  %i.dd = sext i32 %i.cz to i64
  %i.de = mul i64 %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  %i.dg = sext i32 %.recomposed to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dg
  br label %_ZN2cv3Mat2atIiEERT_i.exit

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %bb.ai, %bb.ak, %bb.am, %bb.an
  %.0.i = phi ptr [ %i.ci, %bb.ai ], [ %i.cq, %bb.ak ], [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = load i32, ptr %.0.i, align 4, !tbaa !28 ; 7 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.dj = load ptr, ptr %i.bc, align 8, !tbaa !120 ; 4 uses
  %i.dk = load ptr, ptr %i.bk, align 8, !tbaa !120 ; 3 uses
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 3 uses
  %i.do = ashr i64 %i.dn, 4                       ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.dq = and i64 %i.dn, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.dj, i64 %i.dq ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %i.ed, %bb.as ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i ], [ %i.ec, %bb.as ] ; 9 uses
  %i.dr = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !28
  %i.ds = icmp eq i32 %i.dr, %i.di
  br i1 %i.ds, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28
  %i.dv = icmp eq i32 %i.du, %i.di
  br i1 %i.dv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit677, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28
  %i.dy = icmp eq i32 %i.dx, %i.di
  br i1 %i.dy, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit675, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !28
  %i.eb = icmp eq i32 %i.ea, %i.di
  br i1 %i.eb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ed = add nsw i64 %.052.i.i.i, -1
  %i.ee = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ee, label %bb.ao, label %._crit_edge.loopexit.i.i.i, !llvm.loop !6

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.as
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.dl, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN2cv3Mat2atIiEERT_i.exit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dn, %_ZN2cv3Mat2atIiEERT_i.exit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dj, %_ZN2cv3Mat2atIiEERT_i.exit ] ; 5 uses
  %i.ef = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ef, label %_ZNSt14_Bit_referenceaSEb.exit [
    i64 3, label %bb.at
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i
  %i.eg = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !28
  %i.eh = icmp eq i32 %i.eg, %i.di
  br i1 %i.eh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.au
  %.sroa.032.1.i.i.i = phi ptr [ %i.ei, %bb.au ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ej = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !28
  %i.ek = icmp eq i32 %i.ej, %i.di
  br i1 %i.ek, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.av
  %.sroa.032.2.i.i.i = phi ptr [ %i.el, %bb.av ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.em = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !28
  %i.en = icmp eq i32 %i.em, %i.di
  %spec.select.i.i.i = select i1 %i.en, ptr %.sroa.032.2.i.i.i, ptr %i.dk
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit675: ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit677: ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit: ; preds = %bb.ao, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit675, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit677, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.at
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.at ], [ %i.eq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit677 ], [ %i.ep, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit675 ], [ %i.eo, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.ao ] ; 2 uses
  %i.er = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.dk
  br i1 %i.er, label %_ZNSt14_Bit_referenceaSEb.exit, label %bb.ax

bb.aw:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.cf

bb.ax:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit
  %i.et = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.eu = sub i64 %i.et, %i.dm
  %i.ev = ashr exact i64 %i.eu, 2                 ; 8 uses
  %i.ew = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 6 uses
  %i.ex = load ptr, ptr %15, align 8, !tbaa !72   ; 6 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = ashr exact i64 %i.fa, 3                 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN2cv5aruco15CharucoDetector19CharucoDetectorImpl33interpolateCornersCharucoLocalHomERKNS_11_InputArrayES5_S5_RKNS_12_OutputArrayES8_:bb.a
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fv) #25
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.az, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.fn, ptr %15, align 8, !tbaa !72
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fd
  store ptr %i.fw, ptr %i.bl, align 8, !tbaa !89
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.fx, ptr %i.bm, align 8, !tbaa !73
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.ba:                                            ; preds = %bb.ax
  %.not443 = icmp eq i64 %i.fa, 32
  br i1 %.not443, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.ew, %i.fy
  br i1 %.not.i.i170, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.bb
  store ptr %i.fy, ptr %i.bl, align 8, !tbaa !89
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %bb.ba, %bb.bb, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.be unwind label %bb.bm

bb.bc:                                            ; preds = %bb.bl
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ig, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #26
          to label %.noexc172 unwind label %bb.bx

.noexc172:                                        ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.be:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !300
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %i.ev
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !133
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !302
  %i.gf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bf unwind label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !300
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.ev
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !133
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !303
  %i.gl = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  store i32 %i.ge, ptr %i.gl, align 4
  %.sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.gk, ptr %.sroa_idx321, align 4
  %i.gm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !300
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.ev
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !133
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !302
  %i.gs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !300
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.ev
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !133
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !303
  %i.gy = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 %i.gr, ptr %i.gz, align 4
  %.sroa_idx321.1 = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 %i.gx, ptr %.sroa_idx321.1, align 4
  %i.ha = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !300
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.ev
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !133
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !302
  %i.hg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !300
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %i.ev
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !133
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !303
  %i.hm = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i32 %i.hf, ptr %i.hn, align 4
  %.sroa_idx321.2 = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  store i32 %i.hl, ptr %.sroa_idx321.2, align 4
  %i.ho = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !300
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %i.ev
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !133
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 36
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !302
  %i.hu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2cv5aruco5Board12getObjPointsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !300
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.ev
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !133
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !303
  %i.ia = load ptr, ptr %15, align 8, !tbaa !72   ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store i32 %i.ht, ptr %i.ib, align 4
  %.sroa_idx321.3 = getelementptr inbounds nuw i8, ptr %i.ia, i64 28
  store i32 %i.hz, ptr %.sroa_idx321.3, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store i32 0, ptr %i.bn, align 8, !tbaa !91
  store i32 0, ptr %i.bo, align 4, !tbaa !92
  %i.ic = load ptr, ptr %i.bl, align 8, !tbaa !89
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 3                 ; 2 uses
  %.not.i = icmp ugt i64 %i.ig, 2147483647
  br i1 %.not.i, label %bb.bc, label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bn:                                            ; preds = %bb.bl
  store i32 -2130509787, ptr %18, align 8, !tbaa !38
  store ptr %15, ptr %i.bp, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ii = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc174 unwind label %bb.by

.noexc174:                                        ; preds = %bb.bn
  %i.ij = icmp eq i32 %i.ii, 65536
  %i.ik = icmp slt i32 %i.cd, 0
  %or.cond.i173 = and i1 %i.ik, %i.ij
  br i1 %or.cond.i173, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc174
  %i.il = load ptr, ptr %i.bq, align 8, !tbaa !39, !noalias !304
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.il)
          to label %bb.bq unwind label %bb.by

bb.bp:                                            ; preds = %.noexc174
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cd)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store i32 0, ptr %i.br, align 8, !tbaa !91
  store i32 0, ptr %i.bs, align 4, !tbaa !92
  store i32 16842752, ptr %19, align 8, !tbaa !38
  store ptr %20, ptr %i.bt, align 8, !tbaa !39
  invoke void @_ZN2cv23getPerspectiveTransformERKNS_11_InputArrayES2_i(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 0)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.im = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0343.0393, i64 %.0102507 ; 2 uses
  %i.in = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.im, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.bs unwind label %bb.ca     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  store i32 0, ptr %i.bu, align 8, !tbaa !91
  store i32 0, ptr %i.bv, align 4, !tbaa !92
  store i32 16842752, ptr %21, align 8, !tbaa !38
  store ptr %i.im, ptr %i.bw, align 8, !tbaa !39
  %i.io = invoke noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.bt unwind label %bb.ce

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.ip = call noundef double @llvm.fabs.f64(double %i.io)
  %34 = lshr i64 %.0102507, 6
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0333.0, i64 %34 ; 3 uses
  %i.ir = and i64 %.0102507, 63
  %i.is = shl nuw i64 1, %i.ir                    ; 2 uses
  %i.it = fcmp ogt double %i.ip, f0x3EB0C6F7A0B5ED8D
  br i1 %i.it, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iu = load i64, ptr %i.iq, align 8, !tbaa !81
  %i.iv = or i64 %i.iu, %i.is
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split

bb.bv:                                            ; preds = %bb.bt
  %i.iw = xor i64 %i.is, -1
  %i.ix = load i64, ptr %i.iq, align 8, !tbaa !81
  %i.iy = and i64 %i.ix, %i.iw
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split

_ZNSt14_Bit_referenceaSEb.exit.sink.split:        ; preds = %bb.bu, %bb.bv
  %.sink = phi i64 [ %i.iy, %bb.bv ], [ %i.iv, %bb.bu ]
  store i64 %.sink, ptr %i.iq, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %_ZNSt14_Bit_referenceaSEb.exit.sink.split, %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit
  %i.iz = load ptr, ptr %15, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  %i.ja = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jd) #25
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.je = add nuw i64 %.0102507, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.je, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %bb.af, !llvm.loop !278

bb.bx:                                            ; preds = %bb.bc
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.by:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bq
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.br
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.pn130.pn = phi { ptr, i32 } [ %i.jh, %bb.bz ], [ %i.ji, %bb.ca ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #23
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn130.pn, %bb.cb ], [ %i.jg, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bx
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn, %bb.cc ], [ %i.jf, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bs
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.bm, %bb.bd, %bb.aw
  %.pn139.pn.pn = phi { ptr, i32 } [ %i.es, %bb.aw ], [ %i.jj, %bb.ce ], [ %i.ih, %bb.bm ], [ %i.ga, %bb.bd ], [ %.pn130.pn.pn.pn, %bb.cd ]
  %i.jk = load ptr, ptr %15, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit182, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jl = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jk to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jo) #25
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit182

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit182: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ew

bb.ch:                                            ; preds = %._crit_edge
  %i.jp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !132 ; 2 uses
  %i.jr = load ptr, ptr %22, align 8, !tbaa !133  ; 2 uses
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = sdiv exact i64 %i.ju, 12                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.jw = icmp ugt i64 %i.jv, 1152921504606846975
  br i1 %i.jw, label %bb.ci, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc184 unwind label %bb.cl

.noexc184:                                        ; preds = %bb.ci
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %.not.i.i.i.i183 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not.i.i.i.i183, label %._crit_edge521, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.jx = shl nuw nsw i64 %i.jv, 3
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #24
          to label %.noexc185 unwind label %bb.cl ; 6 uses

.noexc185:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.jy, ptr %23, align 8, !tbaa !72
  %i.jz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jv
  %i.kb = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !73
  %min.iters.check = icmp ult i64 %i.jv, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc185
  %n.vec = and i64 %i.jv, 1152921504606846972     ; 3 uses
  %i.kc = shl nuw nsw i64 %n.vec, 3
  %i.kd = getelementptr i8, ptr %i.jy, i64 %i.kc  ; 2 uses
  %i.ke = and i64 %i.jv, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jy, i64 %i.kf
  %i.kg = getelementptr i8, ptr %i.jy, i64 %i.kf
  %next.gep720 = getelementptr i8, ptr %i.kg, i64 16
  store <4 x i32> splat (i32 -1082130432), ptr %next.gep, align 4
  store <4 x i32> splat (i32 -1082130432), ptr %next.gep720, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jv, %n.vec
  br i1 %cmp.n, label %.lr.ph520, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc185, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.jy, %.noexc185 ], [ %i.kd, %middle.block ]
  %.068.i.i.i.i.i.i.ph = phi i64 [ %i.jv, %.noexc185 ], [ %i.ke, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 -1082130432, ptr %.09.i.i.i.i.i.i, align 4
  %.09.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4
  store i32 -1082130432, ptr %.09.i.i.i.i.i.i.sroa_idx, align 4
  %i.ki = add i64 %.068.i.i.i.i.i.i, -1           ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph520, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !280

.lr.ph520:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa709 = phi ptr [ %i.kd, %middle.block ], [ %i.kj, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.lcssa709, ptr %i.jz, align 8, !tbaa !89
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %25, i64 84
  %i.kn = getelementptr inbounds nuw i8, ptr %25, i64 88
  %i.ko = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.kp = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %25, i64 128 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.kv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %.pre569 = load ptr, ptr %14, align 8, !tbaa !117
  br label %bb.cm

._crit_edge521.loopexit:                          ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit243
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.pre570 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !89
  %.pre571 = load ptr, ptr %23, align 8, !tbaa !72
  %i.lc = ptrtoint ptr %.pre570 to i64
  %i.ld = ptrtoint ptr %.pre571 to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 3
  br label %._crit_edge521

._crit_edge521:                                   ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %._crit_edge521.loopexit
  %i.lg = phi i64 [ %i.lf, %._crit_edge521.loopexit ], [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.lh = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.lh, align 8, !tbaa !91
end_hunk_1
