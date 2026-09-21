Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/joint_bilateral_filter?download=true
inline.NumInlined: 359
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv8ximgproc20jointBilateralFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEiddi:bb.a
  ]

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8ximgproc20jointBilateralFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEiddi, ptr noundef nonnull @.str.1, i32 noundef 359) #17
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.as:                                            ; preds = %bb.ap
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.as
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !31
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.ar
  %.pn56 = phi { ptr, i32 } [ %i.cd, %bb.ar ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.ce, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %.body

bb.at:                                            ; preds = %bb.an, %bb.an
  %i.ck = fcmp ole double %4, 0.000000e+00
  %spec.store.select = select i1 %i.ck, double 1.000000e+00, double %4 ; 2 uses
  %i.cl = fcmp ole double %5, 0.000000e+00
  %spec.store.select4 = select i1 %i.cl, double 1.000000e+00, double %5 ; 3 uses
  %i.cm = icmp slt i32 %3, 1
  br i1 %i.cm, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.cn = fmul double %spec.store.select4, 1.500000e+00
  %i.co = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cp = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.co)
  br label %bb.ax

bb.av:                                            ; preds = %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.at
  %i.cr = lshr i32 %3, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %storemerge = phi i32 [ %i.cr, %bb.aw ], [ %i.cp, %bb.au ]
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %storemerge, i32 1) ; 2 uses
  br i1 %i.ah, label %bb.ay, label %.thread.i105

.thread.i105:                                     ; preds = %bb.ax
  %i.cs = icmp eq i32 %i.z, 0
  %i.ct = zext i1 %i.cs to i32
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.cv = icmp eq i32 %i.z, 2
  %.sroa.gep133 = getelementptr inbounds nuw i8, ptr %13, i64 88
  %.sroa.gep133.val = load i32, ptr %.sroa.gep133, align 8
  %.val137 = load i32, ptr %i.cu, align 4         ; 2 uses
  %i.cw = select i1 %i.cv, i32 %.sroa.gep133.val, i32 %.val137 ; 2 uses
  %.not.i110 = icmp eq i32 %i.z, 1
  br i1 %.not.i110, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %.thread.i105
  %i.cx = phi i32 [ %i.ct, %.thread.i105 ], [ %i.cw, %bb.ay ]
  %i.cy = icmp sgt i32 %i.z, -1
  %i.cz = zext i1 %i.cy to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.da = phi i32 [ %i.cx, %bb.az ], [ %i.cw, %bb.ay ]
  %i.db = phi i32 [ %i.cz, %bb.az ], [ %.val137, %bb.ay ]
  %.sroa.2.0.insert.ext.i106 = zext i32 %i.db to i64
  %.sroa.2.0.insert.shift.i107 = shl nuw i64 %.sroa.2.0.insert.ext.i106, 32
  %.sroa.0.0.insert.ext.i108 = zext i32 %i.da to i64
  %.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.2.0.insert.shift.i107, %.sroa.0.0.insert.ext.i108
  %i.dc = and i32 %i.by, 4095
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %.sroa.0.0.insert.insert.i109, i32 noundef %i.dc, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.bb unwind label %bb.av

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.dd = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc115 unwind label %bb.bh

.noexc115:                                        ; preds = %bb.bb
  %i.de = icmp eq i32 %i.dd, 65536
  br i1 %i.de, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc115
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !22, !noalias !120
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.dg)
          to label %_ZNK2cv11_InputArray6getMatEi.exit118 unwind label %bb.bh

bb.bd:                                            ; preds = %.noexc115
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit118 unwind label %bb.bh

_ZNK2cv11_InputArray6getMatEi.exit118:            ; preds = %bb.bc, %bb.bd
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !96 ; 2 uses
  %i.dj = load ptr, ptr %i.t, align 8, !tbaa !96
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.dl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.bg unwind label %bb.bj     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %.pre = load ptr, ptr %i.dh, align 8, !tbaa !96
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bi:                                            ; preds = %bb.be
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #15
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn58 = phi { ptr, i32 } [ %i.do, %bb.bj ], [ %i.dn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.cf

bb.bl:                                            ; preds = %bb.bg, %_ZNK2cv11_InputArray6getMatEi.exit118
  %i.dp = phi ptr [ %.pre, %bb.bg ], [ %i.di, %_ZNK2cv11_InputArray6getMatEi.exit118 ]
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ds = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.bo unwind label %bb.bq     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bm
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn60 = phi { ptr, i32 } [ %i.du, %bb.bq ], [ %i.dt, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.cf

bb.bs:                                            ; preds = %bb.bo, %bb.bl
  %i.dv = load i32, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.dw = load i32, ptr %13, align 8, !tbaa !16
  %24 = insertelement <2 x i32> poison, i32 %i.dv, i64 0
  %25 = insertelement <2 x i32> %24, i32 %i.dw, i64 1
  %26 = lshr <2 x i32> %25, splat (i32 5)
  %27 = and <2 x i32> %26, splat (i32 127)
  %28 = add nuw nsw <2 x i32> %27, splat (i32 1)
  %29 = and <2 x i32> %28, splat (i32 253)
  %.scalar = bitcast <2 x i32> %29 to i64
  %30 = icmp eq i64 %.scalar, 4294967297
  br i1 %30, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.dx = and i32 %i.dv, 31
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN2cv8ximgproc23jointBilateralFilter_8uERNS_3MatES2_S2_iddi(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef %.sroa.speculated, double noundef %spec.store.select, double noundef %spec.store.select4, i32 noundef %6)
          to label %bb.cc unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bw:                                            ; preds = %bb.bt
  invoke void @_ZN2cv8ximgproc24jointBilateralFilter_32fERNS_3MatES2_S2_iddi(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef %.sroa.speculated, double noundef %spec.store.select, double noundef %spec.store.select4, i32 noundef %6)
          to label %bb.cc unwind label %bb.bv

bb.bx:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -15, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv8ximgproc20jointBilateralFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEiddi, ptr noundef nonnull @.str.1, i32 noundef 397) #17
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.cb:                                            ; preds = %bb.by
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %22, align 8, !tbaa !30   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.cb
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !31
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.ca
  %.pn62 = phi { ptr, i32 } [ %i.ea, %bb.ca ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.eb, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.cf

bb.cc:                                            ; preds = %bb.bu, %bb.bw
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.cd

bb.cd:                                            ; preds = %bb.n, %bb.cc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.h
  ret void

bb.cf:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.br, %bb.bk
  %.pn64.pn = phi { ptr, i32 } [ %.pn58, %bb.bk ], [ %.pn60, %bb.br ], [ %i.dz, %bb.bv ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bh
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %bb.cf ], [ %i.dm, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.body

.body:                                            ; preds = %bb.cg, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.p
  %.pn69 = phi { ptr, i32 } [ %i.x, %bb.p ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bp, %bb.af ], [ %i.bq, %bb.ag ], [ %.pn64.pn.pn, %bb.cg ], [ %i.cq, %bb.av ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  br label %bb.ch

bb.ch:                                            ; preds = %.body, %bb.o
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %.body ], [ %i.w, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn69.pn, %bb.ch ]
  resume { ptr, i32 } %.pn72.pn
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv15bilateralFilterERKNS_11_InputArrayERKNS_12_OutputArrayEiddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc24JointBilateralFilter_32fINS_3VecIfLi1EEES3_ED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc24JointBilateralFilter_32fINS_3VecIfLi1EEES3_EclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge61

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.g = add i32 %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = sext i32 %i.g to i64
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !124
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge59
  %i.q = phi i32 [ %i.d, %.preheader.lr.ph ], [ %i.y, %._crit_edge59 ]
  %i.r = phi i32 [ %i.f, %.preheader.lr.ph ], [ %i.z, %._crit_edge59 ] ; 5 uses
  %i.s = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.aa, %._crit_edge59 ] ; 3 uses
  %indvars.iv67 = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next68, %._crit_edge59 ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = sub nsw i32 %i.u, %i.r
  %i.w = icmp slt i32 %i.r, %i.v
  br i1 %i.w, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.x = sext i32 %i.r to i64
  br label %bb.b

._crit_edge61:                                    ; preds = %._crit_edge59, %bb.a
  ret void

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre70 = load i32, ptr %i.c, align 4, !tbaa !36
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.y = phi i32 [ %.pre70, %._crit_edge59.loopexit ], [ %i.q, %.preheader ] ; 2 uses
  %i.z = phi i32 [ %i.bu, %._crit_edge59.loopexit ], [ %i.r, %.preheader ] ; 2 uses
  %i.aa = phi ptr [ %i.br, %._crit_edge59.loopexit ], [ %i.s, %.preheader ]
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.ab = add nsw i32 %i.y, %i.z
  %i.ac = sext i32 %i.ab to i64
end_hunk_0
