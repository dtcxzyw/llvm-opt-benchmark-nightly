inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE:bb.a

.thread.i:                                        ; preds = %bb.af
  %i.au = icmp eq i32 %i.al, 0
  %i.av = zext i1 %i.au to i32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.ax = icmp eq i32 %i.al, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = select i1 %i.ax, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.al, 1
  br i1 %.not.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.thread.i
  %i.az = phi i32 [ %i.av, %.thread.i ], [ %i.ay, %bb.ag ]
  %i.ba = icmp sgt i32 %i.al, -1
  %i.bb = zext i1 %i.ba to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.bc = phi i32 [ %i.az, %bb.ah ], [ %i.ay, %bb.ag ]
  %i.bd = phi i32 [ %i.bb, %bb.ah ], [ %.val, %bb.ag ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.bd to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bc to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.be = load i32, ptr %15, align 8, !tbaa !94
  %i.bf = and i32 %i.be, 4095
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.bf, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bg = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc513 unwind label %bb.aq

.noexc513:                                        ; preds = %bb.aj
  %i.bh = icmp eq i32 %i.bg, 65536
  br i1 %i.bh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.noexc513
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !79, !noalias !99
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.bj)
          to label %_ZNK2cv11_InputArray6getMatEi.exit516 unwind label %bb.aq

bb.al:                                            ; preds = %.noexc513
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit516 unwind label %bb.aq

_ZNK2cv11_InputArray6getMatEi.exit516:            ; preds = %bb.ak, %bb.al
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bo = load <2 x i32>, ptr %i.bl, align 8
  %i.bp = load <2 x i32>, ptr %i.bn, align 8
  %i.bq = shufflevector <2 x i32> %i.bo, <2 x i32> %i.bp, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %.fr = freeze <4 x i32> %i.bq
  %i.br = icmp sgt <4 x i32> %.fr, splat (i32 32766)
  %i.bs = bitcast <4 x i1> %i.br to i4
  %i.bt = icmp eq i4 %i.bs, 0
  br i1 %i.bt, label %bb.aw, label %bb.ar

bb.am:                                            ; preds = %bb.x, %bb.w, %.critedge
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.an:                                            ; preds = %bb.z, %bb.y, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ao:                                            ; preds = %bb.ab, %bb.aa, %_ZNK2cv11_InputArray6getMatEi.exit507
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ap:                                            ; preds = %bb.ac, %bb.ai
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ar:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit516
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 1427) #27
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

bb.av:                                            ; preds = %bb.as
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %19, align 8, !tbaa !76   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517: ; preds = %bb.av
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !50
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517, %bb.au
  %.pn443 = phi { ptr, i32 } [ %i.bz, %bb.au ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517 ], [ %i.ca, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ei

bb.aw:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit516
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !102
  %i.ck = icmp eq ptr %i.ch, %i.cj
  br i1 %i.ck, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.cl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.az unwind label %bb.bb     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ax
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn445 = phi { ptr, i32 } [ %i.cn, %bb.bb ], [ %i.cm, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.ei

bb.bd:                                            ; preds = %bb.az, %bb.aw
  %i.co = load i32, ptr %16, align 8, !tbaa !94   ; 2 uses
  %i.cp = and i32 %i.co, 4095
  %cond = icmp eq i32 %i.cp, 37
  br i1 %cond, label %bb.bf, label %.thread

bb.be:                                            ; preds = %bb.bg, %bb.bf
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.bf:                                            ; preds = %bb.bd
  %i.cr = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %..thread_crit_edge unwind label %bb.be ; 0 uses

..thread_crit_edge:                               ; preds = %bb.bf
  %.pre = load i32, ptr %16, align 8, !tbaa !94
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.bd
  %i.cs = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.co, %bb.bd ]
  %i.ct = and i32 %i.cs, 4095
  %i.cu = icmp eq i32 %i.ct, 35
  br i1 %i.cu, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.thread
  %i.cv = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.bh unwind label %bb.be     ; 0 uses

bb.bh:                                            ; preds = %bb.bg, %.thread
  %i.cw = and i32 %4, 32                          ; 4 uses
  %i.cx = icmp ne i32 %i.cw, 0                    ; 19 uses
  %i.cy = and i32 %4, -33                         ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 3
  %spec.store.select = select i1 %i.cz, i32 1, i32 %i.cy ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #24
  %i.da = invoke fastcc noundef zeroext i1 @_ZN2cvL11genericWarpERKNS_3MatES2_S2_S2_RS0_iiRKNS_7Scalar_IdEEb(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %spec.store.select, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.cx)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br i1 %i.da, label %.critedge493, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.ei

bb.bk:                                            ; preds = %bb.bi
  %i.dc = load i32, ptr %15, align 8, !tbaa !94   ; 2 uses
  %i.dd = and i32 %i.dc, 4095                     ; 2 uses
  %i.de = and i32 %i.dc, 31                       ; 4 uses
  switch i32 %spec.store.select, label %bb.cy [
    i32 0, label %bb.bl
    i32 1, label %bb.bx
    i32 4, label %bb.cq
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.df = load i32, ptr %16, align 8, !tbaa !94   ; 2 uses
  %i.dg = and i32 %i.df, 31
  %i.dh = icmp eq i32 %i.dg, 5
  br i1 %i.dh, label %bb.bm, label %bb.cj

bb.bm:                                            ; preds = %bb.bl
  %i.di = load ptr, ptr %i.ci, align 8, !tbaa !102 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !102 ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.dm = load i64, ptr %i.dj, align 8, !tbaa !11 ; 9 uses
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !11 ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11 ; 9 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11 ; 9 uses
  %i.ds = load i32, ptr %i.bn, align 8, !tbaa !103 ; 9 uses
  %i.dt = load i32, ptr %i.bm, align 4, !tbaa !104 ; 9 uses
  %i.du = load i32, ptr %i.bl, align 8, !tbaa !103 ; 9 uses
  %i.dv = load i32, ptr %i.bk, align 4, !tbaa !104 ; 9 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !102 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !102 ; 9 uses
  switch i32 %i.dd, label %bb.cj [
    i32 0, label %bb.bo
    i32 64, label %bb.bp
    i32 96, label %bb.bq
    i32 2, label %bb.br
    i32 66, label %bb.bs
    i32 98, label %bb.bt
    i32 5, label %bb.bu
    i32 69, label %bb.bv
    i32 101, label %bb.bw
  ]

bb.bn:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline24remapNearestInvoker_8UC1EPKhmiiPhmiiiPKdPKfmS7_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline24remapNearestInvoker_8UC3EPKhmiiPhmiiiPKdPKfmS7_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline24remapNearestInvoker_8UC4EPKhmiiPhmiiiPKdPKfmS7_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.br:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline25remapNearestInvoker_16UC1EPKtmiiPtmiiiPKdPKfmS7_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bs:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline25remapNearestInvoker_16UC3EPKtmiiPtmiiiPKdPKfmS7_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bt:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline25remapNearestInvoker_16UC4EPKtmiiPtmiiiPKdPKfmS7_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bu:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline25remapNearestInvoker_32FC1EPKfmiiPfmiiiPKdS2_mS2_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bv:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline25remapNearestInvoker_32FC3EPKfmiiPfmiiiPKdS2_mS2_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bw:                                            ; preds = %bb.bm
  invoke void @_ZN2cv12cpu_baseline25remapNearestInvoker_32FC4EPKfmiiPfmiiiPKdS2_mS2_mb(ptr noundef %i.di, i64 noundef %i.dm, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dk, i64 noundef %i.dn, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.dx, i64 noundef %i.dp, ptr noundef %i.dz, i64 noundef %i.dr, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bn

bb.bx:                                            ; preds = %bb.bk
  %i.eb = load i32, ptr %16, align 8, !tbaa !94
  %i.ec = and i32 %i.eb, 31
  %i.ed = icmp eq i32 %i.ec, 5
  br i1 %i.ed, label %bb.by, label %bb.cp

bb.by:                                            ; preds = %bb.bx
  %i.ee = load ptr, ptr %i.ci, align 8, !tbaa !102 ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.eg = load ptr, ptr %i.cg, align 8, !tbaa !102 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.ei = load i64, ptr %i.ef, align 8, !tbaa !11 ; 9 uses
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !11 ; 9 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11 ; 9 uses
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11 ; 9 uses
  %i.eo = load i32, ptr %i.bn, align 8, !tbaa !103 ; 9 uses
  %i.ep = load i32, ptr %i.bm, align 4, !tbaa !104 ; 9 uses
  %i.eq = load i32, ptr %i.bl, align 8, !tbaa !103 ; 9 uses
  %i.er = load i32, ptr %i.bk, align 4, !tbaa !104 ; 9 uses
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !102 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !102 ; 9 uses
  switch i32 %i.dd, label %bb.cp [
    i32 0, label %bb.ca
    i32 64, label %bb.cb
    i32 96, label %bb.cc
    i32 2, label %bb.cd
    i32 66, label %bb.ce
    i32 98, label %bb.cf
    i32 5, label %bb.cg
    i32 69, label %bb.ch
    i32 101, label %bb.ci
  ]

bb.bz:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ca:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline23remapLinearInvoker_8UC1EPKhmiiPhmiiiPKdPKfmS7_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.cb:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline23remapLinearInvoker_8UC3EPKhmiiPhmiiiPKdPKfmS7_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.cc:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline23remapLinearInvoker_8UC4EPKhmiiPhmiiiPKdPKfmS7_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.cd:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline24remapLinearInvoker_16UC1EPKtmiiPtmiiiPKdPKfmS7_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.ce:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline24remapLinearInvoker_16UC3EPKtmiiPtmiiiPKdPKfmS7_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.cf:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline24remapLinearInvoker_16UC4EPKtmiiPtmiiiPKdPKfmS7_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.cg:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline24remapLinearInvoker_32FC1EPKfmiiPfmiiiPKdS2_mS2_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.ch:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline24remapLinearInvoker_32FC3EPKfmiiPfmiiiPKdS2_mS2_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.ci:                                            ; preds = %bb.by
  invoke void @_ZN2cv12cpu_baseline24remapLinearInvoker_32FC4EPKfmiiPfmiiiPKdS2_mS2_mb(ptr noundef %i.ee, i64 noundef %i.ei, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef %i.eg, i64 noundef %i.ej, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.et, i64 noundef %i.el, ptr noundef %i.ev, i64 noundef %i.en, i1 noundef zeroext %i.cx)
          to label %.critedge493 unwind label %bb.bz

bb.cj:                                            ; preds = %bb.bl, %bb.bm
  %.lobit = lshr exact i32 %i.cw, 5
  %i.ex = zext nneg i32 %.lobit to i64
  %i.ey = getelementptr inbounds nuw [256 x i8], ptr @_ZZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintEE6nn_tab, i64 %i.ex
  %i.ez = zext nneg i32 %i.de to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !28 ; 2 uses
  %.not465 = icmp eq ptr %i.fb, null
  br i1 %.not465, label %bb.ck, label %bb.dk

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 1632) #27
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

bb.co:                                            ; preds = %bb.cl
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %23, align 8, !tbaa !76   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532: ; preds = %bb.co
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !50
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532, %bb.cn
  %.pn466 = phi { ptr, i32 } [ %i.fc, %bb.cn ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532 ], [ %i.fd, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.ei

bb.cp:                                            ; preds = %bb.by, %bb.bx
  %.lobit560564 = lshr exact i32 %i.cw, 5
  %i.fj = zext nneg i32 %.lobit560564 to i64
  %i.fk = getelementptr inbounds nuw [256 x i8], ptr @_ZZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintEE10linear_tab, i64 %i.fj
  %i.fl = zext nneg i32 %i.de to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !28
  br label %bb.dd

bb.cq:                                            ; preds = %bb.bk
  %.lobit560 = lshr exact i32 %i.cw, 5
  %i.fo = zext nneg i32 %.lobit560 to i64
  %i.fp = getelementptr inbounds nuw [64 x i8], ptr @_ZZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintEE12lanczos4_tab, i64 %i.fo
  %i.fq = zext nneg i32 %i.de to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !28
  %i.ft = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.fu = icmp slt i32 %i.ft, 5
  br i1 %i.fu, label %bb.dd, label %bb.ct

bb.cs:                                            ; preds = %bb.dj, %bb.cq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 1640) #27
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

bb.cx:                                            ; preds = %bb.cu
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = load ptr, ptr %25, align 8, !tbaa !76   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535: ; preds = %bb.cx
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !50
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535, %bb.cw
  %.pn460 = phi { ptr, i32 } [ %i.fw, %bb.cw ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %i.fx, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.ei

bb.cy:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 1643) #27
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540

bb.dc:                                            ; preds = %bb.cz
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %27, align 8, !tbaa !76   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538: ; preds = %bb.dc
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !50
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538, %bb.db
  %.pn458 = phi { ptr, i32 } [ %i.gd, %bb.db ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538 ], [ %i.ge, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.ei

bb.dd:                                            ; preds = %bb.cp, %bb.cr
  %.0401 = phi ptr [ %i.fn, %bb.cp ], [ %i.fs, %bb.cr ] ; 2 uses
  %.not462 = icmp eq ptr %.0401, null
  br i1 %.not462, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 1644) #27
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %bb.df
  unreachable

bb.dh:                                            ; preds = %bb.de
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543

bb.di:                                            ; preds = %bb.df
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %29, align 8, !tbaa !76   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541: ; preds = %bb.di
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !50
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541, %bb.dh
  %.pn463 = phi { ptr, i32 } [ %i.gk, %bb.dh ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541 ], [ %i.gl, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.ei

bb.dj:                                            ; preds = %bb.dd
  %i.gr = icmp eq i32 %i.de, 0
  %i.gs = invoke fastcc noundef ptr @_ZN2cvL14initInterTab2DEib(i32 noundef %spec.store.select, i1 noundef zeroext %i.gr)
          to label %._crit_edge unwind label %bb.cs

._crit_edge:                                      ; preds = %bb.dj
  %.pre569 = load i32, ptr %16, align 8, !tbaa !94
  br label %bb.dk

bb.dk:                                            ; preds = %._crit_edge, %bb.cj
  %i.gt = phi i32 [ %i.df, %bb.cj ], [ %.pre569, %._crit_edge ] ; 3 uses
  %.0402 = phi ptr [ %i.fb, %bb.cj ], [ null, %._crit_edge ]
  %.1 = phi ptr [ null, %bb.cj ], [ %.0401, %._crit_edge ]
  %.0400 = phi ptr [ null, %bb.cj ], [ %i.gs, %._crit_edge ]
  %i.gu = and i32 %i.gt, 4095
  %i.gv = icmp eq i32 %i.gu, 35
  br i1 %i.gv, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.gw = load i32, ptr %17, align 8, !tbaa !94
  %i.gx = and i32 %i.gw, 4094
  %switch = icmp eq i32 %i.gx, 2
  br i1 %switch, label %._crit_edge576, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gy = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.dn unwind label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %.pre572.pre = load i32, ptr %16, align 8, !tbaa !94 ; 2 uses
  br i1 %i.gy, label %._crit_edge576, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %.pre572 = phi i32 [ %.pre572.pre, %bb.dn ], [ %i.gt, %bb.dk ] ; 3 uses
  %i.gz = load i32, ptr %17, align 8, !tbaa !94
  %i.ha = and i32 %i.gz, 4095
  %i.hb = icmp eq i32 %i.ha, 35
  br i1 %i.hb, label %bb.dp, label %._crit_edge570

bb.dp:                                            ; preds = %bb.do
  %i.hc = and i32 %.pre572, 4094
  %switch568 = icmp eq i32 %i.hc, 2
  br i1 %switch568, label %._crit_edge576, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hd = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.dr unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %.pre578 = load i32, ptr %16, align 8, !tbaa !94 ; 2 uses
  br i1 %i.hd, label %._crit_edge576, label %._crit_edge570

._crit_edge576:                                   ; preds = %bb.dn, %bb.dp, %bb.dl, %bb.dr
  %i.he = phi i32 [ %.pre578, %bb.dr ], [ %.pre572, %bb.dp ], [ %i.gt, %bb.dl ], [ %.pre572.pre, %bb.dn ]
  %i.hf = and i32 %i.he, 4095
  %.not470 = icmp eq i32 %i.hf, 35                ; 2 uses
  %spec.select = select i1 %.not470, ptr %16, ptr %17
  %spec.select566 = select i1 %.not470, ptr %17, ptr %16
  br label %bb.ec

bb.ds:                                            ; preds = %bb.dt, %bb.dq, %bb.dm
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

._crit_edge570:                                   ; preds = %bb.dr, %bb.do
  %i.hh = phi i32 [ %.pre572, %bb.do ], [ %.pre578, %bb.dr ] ; 2 uses
  %i.hi = and i32 %i.hh, 4095
  switch i32 %i.hi, label %._crit_edge573 [
    i32 37, label %bb.dt
    i32 35, label %bb.dt
  ]

bb.dt:                                            ; preds = %._crit_edge570, %._crit_edge570
  %i.hj = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.du unwind label %bb.ds

bb.du:                                            ; preds = %bb.dt
  %.pre575 = load i32, ptr %16, align 8, !tbaa !94 ; 2 uses
  br i1 %i.hj, label %bb.eb, label %._crit_edge573

._crit_edge573:                                   ; preds = %bb.du, %._crit_edge570
  %i.hk = phi i32 [ %i.hh, %._crit_edge570 ], [ %.pre575, %bb.du ] ; 2 uses
  %i.hl = and i32 %i.hk, 4095
  %i.hm = icmp eq i32 %i.hl, 5
  br i1 %i.hm, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge573
  %i.hn = load i32, ptr %17, align 8, !tbaa !94
  %i.ho = and i32 %i.hn, 4095
  %i.hp = icmp eq i32 %i.ho, 5
  br i1 %i.hp, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %._crit_edge573
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @__func__._ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 1659) #27
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  unreachable

bb.dz:                                            ; preds = %bb.dw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546

bb.ea:                                            ; preds = %bb.dx
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %31, align 8, !tbaa !76   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544: ; preds = %bb.ea
end_hunk_0
begin_hunk_1_@_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load31 = load <4 x i32>, ptr %i.d, align 4, !tbaa !13
  %i.e = shl nuw nsw i64 %index, 2
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load31, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.h = add nsw <8 x i32> %i.g, %i.b
  %i.i = ashr <8 x i32> %i.h, splat (i32 10)
  %i.j = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 -32768))
  %i.k = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.j, <8 x i32> splat (i32 32767))
  %interleaved.vec = trunc nsw <8 x i32> %i.k to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.f, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1833

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader32 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = add nsw i32 %i.n, %3
  %i.p = ashr i32 %i.o, 10
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13
  %i.s = add nsw i32 %i.r, %4
  %i.t = ashr i32 %i.s, 10
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.p, i32 -32768)
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.u, i32 32767)
  %i.w = trunc nsw i32 %i.v to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  store i16 %i.w, ptr %i.x, align 2, !tbaa !56
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.t, i32 -32768)
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 32767)
  %i.aa = trunc nsw i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1834

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN2cv3hal19warpAffineBlocklineEPiS1_PsS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %i.c = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.c
  %bound0 = icmp ult ptr %2, %scevgep34
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !13
  %i.e = add nsw <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.f = lshr <4 x i32> %i.e, splat (i32 5)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load37 = load <4 x i32>, ptr %i.g, align 4, !tbaa !13
  %i.h = add nsw <4 x i32> %wide.load37, %broadcast.splat36 ; 2 uses
  %i.i = shl nuw nsw i64 %index, 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.k = shufflevector <4 x i32> %i.e, <4 x i32> %i.h, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.l = ashr <8 x i32> %i.k, splat (i32 10)
  %i.m = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.l, <8 x i32> splat (i32 -32768))
  %i.n = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.m, <8 x i32> splat (i32 32767))
  %interleaved.vec = trunc nsw <8 x i32> %i.n to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.j, align 2, !tbaa !56, !alias.scope !1835, !noalias !1838
  %i.o = and <4 x i32> %i.h, splat (i32 992)
  %i.p = and <4 x i32> %i.f, splat (i32 31)
  %i.q = or disjoint <4 x i32> %i.o, %i.p
  %i.r = trunc nuw nsw <4 x i32> %i.q to <4 x i16>
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.r, ptr %i.s, align 2, !tbaa !56, !alias.scope !1838
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader38 ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = add nsw i32 %i.v, %4                     ; 2 uses
  %i.x = lshr i32 %i.w, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = add nsw i32 %i.z, %5                    ; 2 uses
  %i.ab = ashr i32 %i.w, 10
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 -32768)
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 32767)
  %i.ae = trunc nsw i32 %i.ad to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !56
  %i.ag = ashr i32 %i.aa, 10
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 -32768)
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 32767)
  %i.aj = trunc nsw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !56
  %i.al = and i32 %i.aa, 992
  %i.am = and i32 %i.x, 31
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1841

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %7) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %10 = alloca %"class.cv::AutoBuffer.85", align 8 ; 9 uses
  %11 = alloca %"class.cv::Range", align 4        ; 6 uses
  %12 = alloca %"class.cv::WarpAffineInvoker", align 8 ; 18 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = alloca [6 x double], align 16            ; 33 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintEE26__cv_trace_location_fn2456)
  %i.b = icmp eq i32 %7, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN2cv23getDefaultAlgorithmHintEv()
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %4, 7                            ; 3 uses
  %i.f = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = icmp slt i32 %i.f, 5
  br i1 %i.g, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.e, label %bb.m [
    i32 4, label %bb.h
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.h:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 2463) #27
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %16, align 8, !tbaa !76    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.n = load i64, ptr %i.l, align 8, !tbaa !50
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.dh

bb.m:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.m
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79, !noalias !1842
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ac

bb.o:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ac

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.t = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc73 unwind label %bb.ad

.noexc73:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.u = icmp eq i32 %i.t, 65536
  br i1 %i.u, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc73
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79, !noalias !1845
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.w)
          to label %_ZNK2cv11_InputArray6getMatEi.exit76 unwind label %bb.ad

bb.q:                                             ; preds = %.noexc73
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit76 unwind label %bb.ad

_ZNK2cv11_InputArray6getMatEi.exit76:             ; preds = %bb.p, %bb.q
  %i.x = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  %i.y = icmp slt i32 %.sroa.3.0.extract.trunc, 1
  %i.z = select i1 %i.x, i1 true, i1 %i.y
  br i1 %i.z, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit76
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !91 ; 6 uses
  %i.ac = icmp slt i32 %i.ab, 3
  br i1 %i.ac, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc77 unwind label %bb.ae

.noexc77:                                         ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc77
  unreachable

bb.u:                                             ; preds = %.noexc77
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.aj = icmp sgt i32 %i.ab, 0
  br i1 %i.aj, label %bb.w, label %.thread.i

.thread.i:                                        ; preds = %bb.v
  %i.ak = icmp eq i32 %i.ab, 0
  %i.al = zext i1 %i.ak to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 84
  %i.an = icmp eq i32 %i.ab, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %18, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = select i1 %i.an, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 1
  br i1 %.not.i, label %bb.x, label %_ZNK2cv8MatShapeclEv.exit

bb.x:                                             ; preds = %bb.w, %.thread.i
  %i.ap = phi i32 [ %i.al, %.thread.i ], [ %i.ao, %bb.w ]
  %i.aq = icmp sgt i32 %i.ab, -1
  %i.ar = zext i1 %i.aq to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.w, %bb.x
  %i.as = phi i32 [ %i.ap, %bb.x ], [ %i.ao, %bb.w ]
  %i.at = phi i32 [ %i.ar, %bb.x ], [ %.val, %bb.w ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.at to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.as to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.y

bb.y:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit76, %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZNK2cv8MatShapeclEv.exit ], [ %3, %_ZNK2cv11_InputArray6getMatEi.exit76 ]
  %i.au = load i32, ptr %18, align 8, !tbaa !94
  %i.av = and i32 %i.au, 4095
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0, i32 noundef %i.av, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.aw = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc78 unwind label %bb.af

.noexc78:                                         ; preds = %bb.z
  %i.ax = icmp eq i32 %i.aw, 65536
  br i1 %i.ax, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc78
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !79, !noalias !1848
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.az)
          to label %_ZNK2cv11_InputArray6getMatEi.exit81 unwind label %bb.af

bb.ab:                                            ; preds = %.noexc78
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit81 unwind label %bb.af

_ZNK2cv11_InputArray6getMatEi.exit81:             ; preds = %bb.aa, %bb.ab
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !104
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp sgt i32 %i.be, 0
  %or.cond4 = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %or.cond4, label %bb.al, label %bb.ag

bb.ac:                                            ; preds = %bb.o, %bb.n, %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ad:                                            ; preds = %bb.q, %bb.p, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ae:                                            ; preds = %bb.s, %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ag:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 2477) #27
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ak:                                            ; preds = %bb.ah
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %21, align 8, !tbaa !76   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ak
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !50
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.aj
  %.pn53 = phi { ptr, i32 } [ %i.bk, %bb.aj ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.bl, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.dd

bb.al:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit81
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !102
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.ao unwind label %bb.aq     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn55 = phi { ptr, i32 } [ %i.by, %bb.aq ], [ %i.bx, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.dd

bb.as:                                            ; preds = %bb.ao, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef 2, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.bz = icmp eq i32 %i.e, 3
  %spec.store.select = select i1 %i.bz, i32 1, i32 %i.e ; 3 uses
  %i.ca = load i32, ptr %19, align 8, !tbaa !94
  %i.cb = and i32 %i.ca, 4095                     ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 5
  br i1 %i.cc, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.av:                                            ; preds = %bb.at
  %i.ce = icmp eq i32 %i.cb, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp eq i32 %i.cg, 2
  %or.cond7 = select i1 %i.ce, i1 %i.ch, i1 false
  br i1 %or.cond7, label %bb.ax, label %bb.az

bb.aw:                                            ; preds = %bb.at
  %.old = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.old5 = load i32, ptr %.old, align 8, !tbaa !103
  %.old6 = icmp eq i32 %.old5, 2
  br i1 %.old6, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !104
  %i.ck = icmp eq i32 %i.cj, 3
  br i1 %i.ck, label %bb.be, label %bb.az

bb.ay:                                            ; preds = %bb.bl
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.az:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 2486) #27
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.bd:                                            ; preds = %bb.ba
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %25, align 8, !tbaa !76   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.bd
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !50
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.bc
  %.pn57 = phi { ptr, i32 } [ %i.cm, %bb.bc ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.cn, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %.body91

bb.be:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.ct = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.cu, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !125
  store ptr %24, ptr %i.ct, align 8, !tbaa !79
  %i.cv = load i32, ptr %24, align 8, !tbaa !94
  %i.cw = and i32 %i.cv, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef %i.cw, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.cx = and i32 %4, 16
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.cy = load double, ptr %i.a, align 16, !tbaa !70 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.da = load double, ptr %i.cz, align 16, !tbaa !70 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !70 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !70 ; 2 uses
  %i.df = fneg double %i.de
  %i.dg = fmul double %i.dc, %i.df
  %i.dh = call double @llvm.fmuladd.f64(double %i.cy, double %i.da, double %i.dg) ; 2 uses
  %i.di = fcmp une double %i.dh, 0.000000e+00
  %i.dj = fdiv double 1.000000e+00, %i.dh
  %i.dk = select i1 %i.di, double %i.dj, double 0.000000e+00 ; 3 uses
  %i.dl = fmul double %i.da, %i.dk                ; 2 uses
  %i.dm = fmul double %i.cy, %i.dk                ; 2 uses
  store double %i.dl, ptr %i.a, align 16, !tbaa !70
  %i.dn = fneg double %i.dk                       ; 2 uses
  %i.do = fmul double %i.dc, %i.dn                ; 2 uses
  store double %i.do, ptr %i.db, align 8, !tbaa !70
  %i.dp = fmul double %i.de, %i.dn                ; 2 uses
  store double %i.dp, ptr %i.dd, align 8, !tbaa !70
  store double %i.dm, ptr %i.cz, align 16, !tbaa !70
  %i.dq = fneg double %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 16, !tbaa !70 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !70
  %i.dv = fneg double %i.du                       ; 2 uses
  %i.dw = fmul double %i.do, %i.dv
  %i.dx = call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %i.dw)
  %i.dy = fneg double %i.dp
  %i.dz = fmul double %i.dm, %i.dv
  %i.ea = call double @llvm.fmuladd.f64(double %i.dy, double %i.ds, double %i.dz)
  store double %i.dx, ptr %i.dr, align 16, !tbaa !70
  store double %i.ea, ptr %i.dt, align 8, !tbaa !70
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %.body91

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %29) #24
  %i.ec = invoke fastcc noundef zeroext i1 @_ZN2cvL11genericWarpERKNS_3MatES2_S2_S2_RS0_iiRKNS_7Scalar_IdEEb(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %20, i32 noundef %spec.store.select, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br i1 %i.ec, label %bb.cz, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %.body91

bb.bl:                                            ; preds = %bb.bj
  %i.ee = load i32, ptr %18, align 8, !tbaa !94
  %i.ef = and i32 %i.ee, 4095                     ; 4 uses
  %i.eg = load ptr, ptr %i.bt, align 8, !tbaa !102 ; 19 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !11 ; 19 uses
  %i.ej = load i32, ptr %i.ba, align 4, !tbaa !104 ; 19 uses
  %i.ek = load i32, ptr %i.bd, align 8, !tbaa !103 ; 19 uses
  %i.el = load ptr, ptr %i.br, align 8, !tbaa !102 ; 19 uses
  %i.em = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11 ; 19 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !104 ; 19 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !103 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.2308.0.insert.ext.i = zext i32 %i.ek to i64
  %.sroa.2308.0.insert.shift.i = shl nuw i64 %.sroa.2308.0.insert.ext.i, 32
  %.sroa.0307.0.insert.ext.i = zext i32 %i.ej to i64
  %.sroa.0307.0.insert.insert.i = or disjoint i64 %.sroa.2308.0.insert.shift.i, %.sroa.0307.0.insert.ext.i
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.0307.0.insert.insert.i, i32 noundef %i.ef, ptr noundef %i.eg, i64 noundef %i.ei)
          to label %.noexc90 unwind label %bb.ay

.noexc90:                                         ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.2.0.insert.ext.i88 = zext i32 %i.er to i64
  %.sroa.2.0.insert.shift.i89 = shl nuw i64 %.sroa.2.0.insert.ext.i88, 32
  %.sroa.0306.0.insert.ext.i = zext i32 %i.ep to i64
  %.sroa.0306.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i89, %.sroa.0306.0.insert.ext.i
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %9, i64 %.sroa.0306.0.insert.insert.i, i32 noundef %i.ef, ptr noundef %i.el, i64 noundef %i.en)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %.noexc90
  switch i32 %spec.store.select, label %bb.cj [
    i32 0, label %bb.bn
    i32 1, label %bb.bz
  ]

bb.bn:                                            ; preds = %bb.bm
  switch i32 %i.ef, label %bb.cj [
    i32 0, label %bb.bp
    i32 64, label %bb.br
    i32 96, label %bb.bs
    i32 2, label %bb.bt
    i32 66, label %bb.bu
    i32 98, label %bb.bv
    i32 5, label %bb.bw
    i32 69, label %bb.bx
    i32 101, label %bb.by
  ]

bb.bo:                                            ; preds = %.noexc90
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bp:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline29warpAffineNearestInvoker_8UC1EPKhmiiPhmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.br:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline29warpAffineNearestInvoker_8UC3EPKhmiiPhmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bs:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline29warpAffineNearestInvoker_8UC4EPKhmiiPhmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bt:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline30warpAffineNearestInvoker_16UC1EPKtmiiPtmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bu:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline30warpAffineNearestInvoker_16UC3EPKtmiiPtmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bv:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline30warpAffineNearestInvoker_16UC4EPKtmiiPtmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bw:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline30warpAffineNearestInvoker_32FC1EPKfmiiPfmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bx:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline30warpAffineNearestInvoker_32FC3EPKfmiiPfmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.by:                                            ; preds = %bb.bn
  invoke void @_ZN2cv12cpu_baseline30warpAffineNearestInvoker_32FC4EPKfmiiPfmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.bz:                                            ; preds = %bb.bm
  switch i32 %i.ef, label %bb.cj [
    i32 0, label %bb.ca
    i32 64, label %bb.cb
    i32 96, label %bb.cc
    i32 2, label %bb.cd
    i32 66, label %bb.ce
    i32 98, label %bb.cf
    i32 5, label %bb.cg
    i32 69, label %bb.ch
    i32 101, label %bb.ci
  ]

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline28warpAffineLinearInvoker_8UC1EPKhmiiPhmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline28warpAffineLinearInvoker_8UC3EPKhmiiPhmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.cc:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline28warpAffineLinearInvoker_8UC4EPKhmiiPhmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.cd:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline29warpAffineLinearInvoker_16UC1EPKtmiiPtmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.ce:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline29warpAffineLinearInvoker_16UC3EPKtmiiPtmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.cf:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline29warpAffineLinearInvoker_16UC4EPKtmiiPtmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.cg:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline29warpAffineLinearInvoker_32FC1EPKfmiiPfmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.ch:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline29warpAffineLinearInvoker_32FC3EPKfmiiPfmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.ci:                                            ; preds = %bb.bz
  invoke void @_ZN2cv12cpu_baseline29warpAffineLinearInvoker_32FC4EPKfmiiPfmiiPKdiS5_(ptr noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.ej, ptr noundef %i.el, i64 noundef %i.en, i32 noundef %i.er, i32 noundef %i.ep, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.bq

bb.cj:                                            ; preds = %bb.bz, %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !104 ; 7 uses
  %i.ew = shl nsw i32 %i.ev, 1                    ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ey, ptr %10, align 8, !tbaa !1851
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not.i.i.i = icmp ugt i32 %i.ew, 264
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !1853
  br i1 %.not.i.i.i, label %bb.ck, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.fa = icmp slt i32 %i.ev, 0
  %i.fb = shl nuw nsw i64 %i.ex, 2
  %i.fc = select i1 %i.fa, i64 -1, i64 %i.fb
  %i.fd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fc) #25
          to label %.noexc.i unwind label %bb.cm  ; 2 uses

.noexc.i:                                         ; preds = %bb.ck
  store ptr %i.fd, ptr %10, align 8, !tbaa !1851
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc.i, %bb.cj
  %i.fe = phi ptr [ %i.fd, %.noexc.i ], [ %i.ey, %bb.cj ] ; 5 uses
  %i.ff = sext i32 %i.ev to i64                   ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.ff ; 4 uses
  %i.fh = icmp sgt i32 %i.ev, 0
  br i1 %i.fh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %i.fi = load double, ptr %i.a, align 16, !tbaa !70 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !70 ; 3 uses
  %i.fl = icmp eq i32 %i.ev, 1
  br i1 %i.fl, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ff, 2147483646
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.cl ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.cl ]
  %i.fm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fn = uitofp nneg i32 %i.fm to double         ; 2 uses
  %i.fo = fmul double %i.fi, %i.fn
  %i.fp = fmul double %i.fo, 1.024000e+03
  %i.fq = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fr = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fq)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !13
  %i.ft = fmul double %i.fk, %i.fn
  %i.fu = fmul double %i.ft, 1.024000e+03
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fv)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !13
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.fz = uitofp nneg i32 %i.fy to double         ; 2 uses
  %i.ga = fmul double %i.fi, %i.fz
  %i.gb = fmul double %i.ga, 1.024000e+03
  %i.gc = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gd = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gc)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !13
  %i.gf = fmul double %i.fk, %i.fz
  %i.gg = fmul double %i.gf, 1.024000e+03
  %i.gh = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gi = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gh)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !13
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.cl, !llvm.loop !1854

bb.cm:                                            ; preds = %bb.ck
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit305.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.cl
  %i.gl = and i32 %i.ev, 1
  %lcmp.mod.not = icmp eq i32 %i.gl, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod106 = trunc i32 %i.ev to i1
  call void @llvm.assume(i1 %lcmp.mod106)
  %i.gm = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.gn = uitofp nneg i32 %i.gm to double         ; 2 uses
  %i.go = fmul double %i.fi, %i.gn
  %i.gp = fmul double %i.go, 1.024000e+03
  %i.gq = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gr = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gq)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i.epil.init
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !13
  %i.gt = fmul double %i.fk, %i.gn
  %i.gu = fmul double %i.gt, 1.024000e+03
  %i.gv = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gv)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.epil.init
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !13
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !103
  store i32 0, ptr %11, align 4, !tbaa !16
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.hb = load <2 x double>, ptr %6, align 8, !tbaa !70
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hd = load <2 x double>, ptr %i.hc, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv17WarpAffineInvokerE, i64 16), ptr %12, align 8, !tbaa !33
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.he, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.hf, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.cr unwind label %bb.cp

bb.co:                                            ; preds = %._crit_edge.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.he) #24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.hh, %bb.cp ], [ %i.hg, %bb.co ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(488) %12) #24
  br label %.body.i

bb.cr:                                            ; preds = %bb.cn
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 424
  store i32 %spec.store.select, ptr %i.hi, align 8, !tbaa !1855
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 428
  store i32 %5, ptr %i.hj, align 4, !tbaa !1857
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 432
  store <2 x double> %i.hb, ptr %i.hk, align 8, !tbaa !70
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 448
  store <2 x double> %i.hd, ptr %i.hl, align 8, !tbaa !70
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 464
  store ptr %i.fe, ptr %i.hm, align 8, !tbaa !1858
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 472
  store ptr %i.fg, ptr %i.hn, align 8, !tbaa !1859
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 480
  store ptr %i.a, ptr %i.ho, align 8, !tbaa !1860
  %i.hp = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.hq = uitofp i64 %i.hp to double
  %i.hr = fmul nnan double %i.hq, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, double noundef %i.hr)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv17WarpAffineInvokerE, i64 16), ptr %12, align 8, !tbaa !33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hf) #24, !inline_history !1861
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.he) #24, !inline_history !1861
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(488) %12) #24, !inline_history !1861
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.hs = load ptr, ptr %10, align 8, !tbaa !1851 ; 3 uses
  %.not.i.i302.i = icmp eq ptr %i.hs, %i.ey
  %i.ht = icmp eq ptr %i.hs, null
  %or.cond.i.i = or i1 %.not.i.i302.i, %i.ht
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZdaPv(ptr noundef nonnull %i.hs) #28
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i:           ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN2cv3halL10warpAffineEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit

bb.cv:                                            ; preds = %bb.cs, %bb.cr
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv17WarpAffineInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %12) #24
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %.pn.i = phi { ptr, i32 } [ %i.hu, %bb.cv ], [ %.pn.pn.i.i, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
end_hunk_1
begin_hunk_2_@_ZN2cv3hal26warpPerspectiveBlocklineNNEPKdPsdddi:bb.a
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.r, <2 x double> %i.j)
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s             ; 2 uses
  %i.w = fcmp olt <2 x double> %i.v, splat (double f0x41DFFFFFFFC00000)
  %i.x = select <2 x i1> %i.w, <2 x double> %i.v, <2 x double> splat (double f0x41DFFFFFFFC00000) ; 3 uses
  %i.y = fcmp ogt <2 x double> %i.x, splat (double f0xC1E0000000000000) ; 2 uses
  %i.z = extractelement <2 x i1> %i.y, i64 1
  %i.aa = extractelement <2 x double> %i.x, i64 1
  %.sroa.speculated45 = select i1 %i.z, double %i.aa, double f0xC1E0000000000000
  %i.ab = extractelement <2 x i1> %i.y, i64 0
  %i.ac = extractelement <2 x double> %i.x, i64 0
  %.sroa.speculated = select i1 %i.ab, double %i.ac, double f0xC1E0000000000000
  %i.ad = insertelement <2 x double> poison, double %.sroa.speculated45, i64 0
  %i.ae = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ad)
  %i.af = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.ag = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.af)
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 -32768)
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 32767)
  %i.aj = trunc nsw i32 %i.ai to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !56
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 -32768)
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.al, i32 32767)
  %i.an = trunc nsw i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1862

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN2cv3hal24warpPerspectiveBlocklineEPKdPsS3_dddi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load double, ptr %i.b, align 8, !tbaa !70
  %i.d = load double, ptr %0, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !70
  %wide.trip.count = zext nneg i32 %6 to i64
  %i.g = insertelement <2 x double> poison, double %i.f, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.d, i64 1
  %i.i = insertelement <2 x double> poison, double %4, i64 0
  %i.j = insertelement <2 x double> %i.i, double %3, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = uitofp nneg i32 %i.k to double           ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.c, double %i.l, double %5) ; 2 uses
  %i.n = fcmp une double %i.m, 0.000000e+00
  %i.o = fdiv double 3.200000e+01, %i.m
  %i.p = select i1 %i.n, double %i.o, double 0.000000e+00
  %i.q = insertelement <2 x double> poison, double %i.l, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.r, <2 x double> %i.j)
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.s             ; 2 uses
  %i.w = fcmp olt <2 x double> %i.v, splat (double f0x41DFFFFFFFC00000)
  %i.x = select <2 x i1> %i.w, <2 x double> %i.v, <2 x double> splat (double f0x41DFFFFFFFC00000) ; 3 uses
  %i.y = fcmp ogt <2 x double> %i.x, splat (double f0xC1E0000000000000) ; 2 uses
  %i.z = extractelement <2 x i1> %i.y, i64 1
  %i.aa = extractelement <2 x double> %i.x, i64 1
  %.sroa.speculated50 = select i1 %i.z, double %i.aa, double f0xC1E0000000000000
  %i.ab = extractelement <2 x i1> %i.y, i64 0
  %i.ac = extractelement <2 x double> %i.x, i64 0
  %.sroa.speculated = select i1 %i.ab, double %i.ac, double f0xC1E0000000000000
  %i.ad = insertelement <2 x double> poison, double %.sroa.speculated50, i64 0
  %i.ae = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ad) ; 2 uses
  %i.af = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.ag = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.af) ; 2 uses
  %i.ah = ashr i32 %i.ae, 5
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 -32768)
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 32767)
  %i.ak = trunc nsw i32 %i.aj to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !56
  %i.am = ashr i32 %i.ag, 5
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 -32768)
  %i.ao = tail call i32 @llvm.smin.i32(i32 %i.an, i32 32767)
  %i.ap = trunc nsw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !56
  %i.ar = shl i32 %i.ag, 5
  %i.as = and i32 %i.ar, 992
  %i.at = and i32 %i.ae, 31
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = trunc nuw nsw i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1863

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Range", align 4        ; 6 uses
  %11 = alloca %"class.cv::WarpPerspectiveInvoker", align 8 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = alloca [9 x double], align 16            ; 4 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintEE26__cv_trace_location_fn3017)
  %i.b = icmp eq i32 %7, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN2cv23getDefaultAlgorithmHintEv()
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 3022) #27
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %15, align 8, !tbaa !76    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.k = load i64, ptr %i.i, align 8, !tbaa !50
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.ct

bb.k:                                             ; preds = %bb.e
  %i.m = and i32 %4, 7                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.n = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.k
  %i.o = icmp eq i32 %i.n, 65536
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79, !noalias !1864
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.q)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ad

bb.m:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ad

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.r = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc57 unwind label %bb.ae

.noexc57:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.s = icmp eq i32 %i.r, 65536
  br i1 %i.s, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc57
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79, !noalias !1867
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.u)
          to label %_ZNK2cv11_InputArray6getMatEi.exit60 unwind label %bb.ae

bb.o:                                             ; preds = %.noexc57
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit60 unwind label %bb.ae

_ZNK2cv11_InputArray6getMatEi.exit60:             ; preds = %bb.n, %bb.o
  %i.v = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  %i.w = icmp slt i32 %.sroa.3.0.extract.trunc, 1
  %i.x = select i1 %i.v, i1 true, i1 %i.w
  br i1 %i.x, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit60
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !91   ; 6 uses
  %i.aa = icmp slt i32 %i.z, 3
  br i1 %i.aa, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc61 unwind label %bb.af

.noexc61:                                         ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc61
  unreachable

bb.s:                                             ; preds = %.noexc61
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.body

bb.t:                                             ; preds = %bb.p
  %i.ah = icmp sgt i32 %i.z, 0
  br i1 %i.ah, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  %i.ai = icmp eq i32 %i.z, 0
  %i.aj = zext i1 %i.ai to i32
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.al = icmp eq i32 %i.z, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %17, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = select i1 %i.al, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %bb.v, label %_ZNK2cv8MatShapeclEv.exit

bb.v:                                             ; preds = %bb.u, %.thread.i
  %i.an = phi i32 [ %i.aj, %.thread.i ], [ %i.am, %bb.u ]
  %i.ao = icmp sgt i32 %i.z, -1
  %i.ap = zext i1 %i.ao to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.u, %bb.v
  %i.aq = phi i32 [ %i.an, %bb.v ], [ %i.am, %bb.u ]
  %i.ar = phi i32 [ %i.ap, %bb.v ], [ %.val, %bb.u ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ar to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aq to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit60, %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZNK2cv8MatShapeclEv.exit ], [ %3, %_ZNK2cv11_InputArray6getMatEi.exit60 ]
  %i.as = load i32, ptr %17, align 8, !tbaa !94
  %i.at = and i32 %i.as, 4095
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0, i32 noundef %i.at, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.au = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc62 unwind label %bb.ag

.noexc62:                                         ; preds = %bb.x
  %i.av = icmp eq i32 %i.au, 65536
  br i1 %i.av, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc62
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !79, !noalias !1870
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.ax)
          to label %_ZNK2cv11_InputArray6getMatEi.exit65 unwind label %bb.ag

bb.z:                                             ; preds = %.noexc62
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit65 unwind label %bb.ag

_ZNK2cv11_InputArray6getMatEi.exit65:             ; preds = %bb.y, %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !102
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.bd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.ac unwind label %bb.ai     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.ak

bb.ad:                                            ; preds = %bb.m, %bb.l, %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ae:                                            ; preds = %bb.o, %bb.n, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.af:                                            ; preds = %bb.q, %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ah:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn36 = phi { ptr, i32 } [ %i.bj, %bb.ai ], [ %i.bi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.cp

bb.ak:                                            ; preds = %bb.ac, %_ZNK2cv11_InputArray6getMatEi.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bk = icmp eq i32 %i.m, 3
  %spec.store.select = select i1 %i.bk, i32 1, i32 %i.m ; 3 uses
  %i.bl = load i32, ptr %18, align 8, !tbaa !94
  %i.bm = and i32 %i.bl, 4095                     ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 5
  br i1 %i.bn, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.an:                                            ; preds = %bb.al
  %i.bp = icmp eq i32 %i.bm, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.br, 3
  %or.cond = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.ar

bb.ao:                                            ; preds = %bb.al
  %.old = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.old1 = load i32, ptr %.old, align 8, !tbaa !103
  %.old2 = icmp eq i32 %.old1, 3
  br i1 %.old2, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !104
  %i.bv = icmp eq i32 %i.bu, 3
  br i1 %i.bv, label %bb.aw, label %bb.ar

bb.aq:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body90

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE, ptr noundef nonnull @.str.1, i32 noundef 3048) #27
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.av:                                            ; preds = %bb.as
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %22, align 8, !tbaa !76   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.av
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.au
  %.pn38 = phi { ptr, i32 } [ %i.bx, %bb.au ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.by, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.body90

bb.aw:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.ce = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.cf, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !125
  store ptr %21, ptr %i.ce, align 8, !tbaa !79
  %i.cg = load i32, ptr %21, align 8, !tbaa !94
  %i.ch = and i32 %i.cg, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef %i.ch, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.ci = and i32 %4, 16
  %.not42 = icmp eq i32 %i.ci, 0
  br i1 %.not42, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.cj, align 8, !tbaa !1873
  %i.ck = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.ck, align 4, !tbaa !1874
  store i32 16842752, ptr %25, align 8, !tbaa !125
  %i.cl = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %21, ptr %i.cl, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.cm = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.cn, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !125
  store ptr %21, ptr %i.cm, align 8, !tbaa !79
  %i.co = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 0)
          to label %bb.az unwind label %bb.bb     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body90

bb.bb:                                            ; preds = %bb.ay
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %.body90

bb.bc:                                            ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %28) #24
  %i.cr = invoke fastcc noundef zeroext i1 @_ZN2cvL11genericWarpERKNS_3MatES2_S2_S2_RS0_iiRKNS_7Scalar_IdEEb(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef %spec.store.select, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br i1 %i.cr, label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %.body90

bb.bf:                                            ; preds = %bb.bd
  %i.ct = load i32, ptr %17, align 8, !tbaa !94
  %i.cu = and i32 %i.ct, 4095                     ; 4 uses
  %i.cv = load ptr, ptr %i.ba, align 8, !tbaa !102 ; 19 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !11 ; 19 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !104 ; 19 uses
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !103 ; 19 uses
  %i.dc = load ptr, ptr %i.ay, align 8, !tbaa !102 ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11 ; 19 uses
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !104 ; 19 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !103 ; 19 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !102 ; 19 uses
  switch i32 %spec.store.select, label %bb.ca [
    i32 0, label %bb.bg
    i32 1, label %bb.bq
  ]

bb.bg:                                            ; preds = %bb.bf
  switch i32 %i.cu, label %bb.ca [
    i32 0, label %bb.bh
    i32 64, label %bb.bi
    i32 96, label %bb.bj
    i32 2, label %bb.bk
    i32 66, label %bb.bl
    i32 98, label %bb.bm
    i32 5, label %bb.bn
    i32 69, label %bb.bo
    i32 101, label %bb.bp
  ]

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveNearestInvoker_8UC1EPKhmiiPhmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveNearestInvoker_8UC3EPKhmiiPhmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bj:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveNearestInvoker_8UC4EPKhmiiPhmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bk:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline35warpPerspectiveNearestInvoker_16UC1EPKtmiiPtmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bl:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline35warpPerspectiveNearestInvoker_16UC3EPKtmiiPtmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bm:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline35warpPerspectiveNearestInvoker_16UC4EPKtmiiPtmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bn:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline35warpPerspectiveNearestInvoker_32FC1EPKfmiiPfmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bo:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline35warpPerspectiveNearestInvoker_32FC3EPKfmiiPfmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bp:                                            ; preds = %bb.bg
  invoke void @_ZN2cv12cpu_baseline35warpPerspectiveNearestInvoker_32FC4EPKfmiiPfmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bq:                                            ; preds = %bb.bf
  switch i32 %i.cu, label %bb.ca [
    i32 0, label %bb.br
    i32 64, label %bb.bs
    i32 96, label %bb.bt
    i32 2, label %bb.bu
    i32 66, label %bb.bv
    i32 98, label %bb.bw
    i32 5, label %bb.bx
    i32 69, label %bb.by
    i32 101, label %bb.bz
  ]

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline33warpPerspectiveLinearInvoker_8UC1EPKhmiiPhmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline33warpPerspectiveLinearInvoker_8UC3EPKhmiiPhmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bt:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline33warpPerspectiveLinearInvoker_8UC4EPKhmiiPhmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bu:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveLinearInvoker_16UC1EPKtmiiPtmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bv:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveLinearInvoker_16UC3EPKtmiiPtmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bw:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveLinearInvoker_16UC4EPKtmiiPtmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bx:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveLinearInvoker_32FC1EPKfmiiPfmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.by:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveLinearInvoker_32FC3EPKfmiiPfmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.bz:                                            ; preds = %bb.bq
  invoke void @_ZN2cv12cpu_baseline34warpPerspectiveLinearInvoker_32FC4EPKfmiiPfmiiPKdiS5_(ptr noundef %i.cv, i64 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.cz, ptr noundef %i.dc, i64 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dg, ptr noundef %i.dk, i32 noundef %5, ptr noundef nonnull %6)
          to label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit unwind label %bb.aq

bb.ca:                                            ; preds = %bb.bq, %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.2283.0.insert.ext.i = zext i32 %i.db to i64
  %.sroa.2283.0.insert.shift.i = shl nuw i64 %.sroa.2283.0.insert.ext.i, 32
  %.sroa.0282.0.insert.ext.i = zext i32 %i.cz to i64
  %.sroa.0282.0.insert.insert.i = or disjoint i64 %.sroa.2283.0.insert.shift.i, %.sroa.0282.0.insert.ext.i
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.0282.0.insert.insert.i, i32 noundef %i.cu, ptr noundef %i.cv, i64 noundef %i.cx)
          to label %.noexc89 unwind label %bb.aq

.noexc89:                                         ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.2.0.insert.ext.i69 = zext i32 %i.di to i64
  %.sroa.2.0.insert.shift.i70 = shl nuw i64 %.sroa.2.0.insert.ext.i69, 32
  %.sroa.0281.0.insert.ext.i = zext i32 %i.dg to i64
  %.sroa.0281.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i70, %.sroa.0281.0.insert.ext.i
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %9, i64 %.sroa.0281.0.insert.insert.i, i32 noundef %i.cu, ptr noundef %i.dc, i64 noundef %i.de)
          to label %bb.cb unwind label %bb.cj

bb.cb:                                            ; preds = %.noexc89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !103
  store i32 0, ptr %10, align 4, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.do = load <2 x double>, ptr %6, align 8, !tbaa !70
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dq = load <2 x double>, ptr %i.dp, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv22WarpPerspectiveInvokerE, i64 16), ptr %11, align 8, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dr, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ds, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.cg unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #24
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.du, %bb.ce ], [ %i.dt, %bb.cd ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(472) %11) #24
  br label %.body.i

bb.cg:                                            ; preds = %bb.cc
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 424
  store ptr %i.dk, ptr %i.dv, align 8, !tbaa !1875
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 432
  store i32 %spec.store.select, ptr %i.dw, align 8, !tbaa !1877
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 436
  store i32 %5, ptr %i.dx, align 4, !tbaa !1878
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 440
  store <2 x double> %i.do, ptr %i.dy, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 456
  store <2 x double> %i.dq, ptr %i.dz, align 8, !tbaa !70
  %i.ea = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.eb = uitofp i64 %i.ea to double
  %i.ec = fmul nnan double %i.eb, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %i.ec)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv22WarpPerspectiveInvokerE, i64 16), ptr %11, align 8, !tbaa !33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ds) #24, !inline_history !1879
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #24, !inline_history !1879
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(472) %11) #24, !inline_history !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit

bb.cj:                                            ; preds = %.noexc89
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ch, %bb.cg
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv22WarpPerspectiveInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %11) #24
  br label %.body.i

.body.i:                                          ; preds = %bb.ck, %bb.cf
  %.pn.i = phi { ptr, i32 } [ %i.ee, %bb.ck ], [ %.pn.pn.i.i, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #24
  br label %bb.cl

bb.cl:                                            ; preds = %.body.i, %bb.cj
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ed, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body90

_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit: ; preds = %bb.ci, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.bd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !120
  %.not.i92 = icmp eq i32 %i.eg, 0
  br i1 %.not.i92, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %14)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #26
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv3halL15warpPerspectiveEiPKhmiiPhmiiPKdiiS5_NS_13AlgorithmHintE.exit, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  ret void

.body90:                                          ; preds = %bb.aq, %bb.cl, %bb.be, %bb.bb, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn46 = phi { ptr, i32 } [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %bb.be ], [ %i.cq, %bb.bb ], [ %i.cp, %bb.ba ], [ %i.bw, %bb.aq ], [ %.pn.pn.i, %bb.cl ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  br label %bb.co

bb.co:                                            ; preds = %.body90, %bb.am
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %.body90 ], [ %i.bo, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.aj
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.co ], [ %.pn36, %bb.aj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.ag
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.cp ], [ %i.bh, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body

.body:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.cq
  %.pn46.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn, %bb.cq ], [ %i.bg, %bb.af ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #24
  br label %bb.cr

bb.cr:                                            ; preds = %.body, %bb.ae
  %.pn46.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn, %.body ], [ %i.bf, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ad
  %.pn46.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn.pn, %bb.cr ], [ %i.be, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn46.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn.pn.pn, %bb.cs ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9warpPolarERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IfEEdi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, <2 x float> %3, double noundef %4, i32 noundef %5) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Size_", align 8         ; 5 uses
  %7 = alloca %"class.cv::Point_", align 8        ; 2 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
end_hunk_2
