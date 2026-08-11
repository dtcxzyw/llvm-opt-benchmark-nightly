inline.NumInlined: 875
inline.NumDeleted: 387
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv3dnn13GemmLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_:bb.a
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !84, !range !94, !noundef !95
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ac, label %bb.aw

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %.off.i = add nsw i32 %.011.i184, -1
  %switch.i84 = icmp ult i32 %.off.i, 2
  br i1 %switch.i84, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -136
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -52
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink223 = phi ptr [ %i.cg, %bb.ae ], [ %i.ce, %bb.ad ]
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %19, ptr noundef nonnull align 4 dereferenceable(52) %.sink223)
  %i.ch = load i32, ptr %19, align 4, !tbaa !98   ; 4 uses
  %narrow.i85 = call i32 @llvm.smax.i32(i32 %i.ch, i32 0) ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 3
  br i1 %i.ci, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %spec.select.i86 = zext nneg i32 %narrow.i85 to i64
  call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %spec.select.i86, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13GemmLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__146) #23
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !85 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = select i1 %i.cl, i32 %narrow.i85, i32 %i.ck
  switch i32 %i.cm, label %_ZNK2cv8MatShapeixEm.exit168 [
    i32 1, label %bb.ai
    i32 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !99 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 1
  %i.cq = icmp eq i32 %i.co, %i.bw
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond, label %_ZNK2cv8MatShapeixEm.exit168, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %19, i64 noundef 0)
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !99
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13GemmLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__151) #23
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !99 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.cw = icmp eq i32 %i.ch, 2
  br i1 %i.cw, label %_ZNK2cv8MatShapeixEm.exit107, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104: ; preds = %bb.ao
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !32
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit107:                     ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !99 ; 3 uses
  %i.df = icmp eq i32 %i.de, 1
  %i.dg = icmp eq i32 %i.de, %i.bw
  %or.cond192 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond192, label %_ZNK2cv8MatShapeixEm.exit151, label %.thread

bb.ap:                                            ; preds = %bb.ak
  %i.dh = icmp eq i32 %i.cu, %i.bs
  br i1 %i.dh, label %bb.aq, label %bb.au

.thread:                                          ; preds = %_ZNK2cv8MatShapeixEm.exit107
  %i.di = icmp eq i32 %i.cu, %i.bs
  br i1 %i.di, label %_ZNK2cv8MatShapeixEm.exit129, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.dj = icmp eq i32 %i.ch, 2
  br i1 %i.dj, label %_ZNK2cv8MatShapeixEm.exit129.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %7, align 8, !tbaa !73    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126: ; preds = %bb.at
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !32
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit129:                     ; preds = %.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !99 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 1
  %i.dt = icmp eq i32 %i.dr, %i.bw
  %or.cond195 = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond195, label %_ZNK2cv8MatShapeixEm.exit151, label %bb.au

_ZNK2cv8MatShapeixEm.exit129.thread:              ; preds = %bb.aq
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !99 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 1
  %i.dx = icmp eq i32 %i.dv, %i.bw
  %or.cond195221 = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond195221, label %_ZNK2cv8MatShapeixEm.exit168, label %bb.au

bb.au:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit129.thread, %.thread, %_ZNK2cv8MatShapeixEm.exit129, %bb.ap
  %i.dy = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %19, i64 noundef 0)
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !99
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13GemmLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__158) #23
  unreachable

_ZNK2cv8MatShapeixEm.exit151:                     ; preds = %_ZNK2cv8MatShapeixEm.exit129, %_ZNK2cv8MatShapeixEm.exit107
  %i.ea = phi i32 [ %i.de, %_ZNK2cv8MatShapeixEm.exit107 ], [ %i.dr, %_ZNK2cv8MatShapeixEm.exit129 ] ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 1
  %i.ec = icmp eq i32 %i.ea, %i.bw
  %or.cond188 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond188, label %_ZNK2cv8MatShapeixEm.exit168, label %bb.av

bb.av:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit151
  %i.ed = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %19, i64 noundef 1)
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !99
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13GemmLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__160) #23
  unreachable

_ZNK2cv8MatShapeixEm.exit168:                     ; preds = %_ZNK2cv8MatShapeixEm.exit129.thread, %bb.ah, %_ZNK2cv8MatShapeixEm.exit151, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit168, %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !81, !range !94, !noundef !95
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ei = call noundef ptr @_ZNK2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %17) ; 5 uses
  %i.ej = call noundef ptr @_ZNK2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %17) ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %.not6.i = icmp eq ptr %i.ei, %i.ek
  br i1 %.not6.i, label %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ax
  %i.el = ptrtoaddr ptr %i.ej to i64
  %i.em = ptrtoaddr ptr %i.ei to i64
  %22 = add i64 %i.el, -12
  %23 = sub i64 %22, %i.em                        ; 2 uses
  %i.en = lshr i64 %23, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %23, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader226, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.eo, 9223372036854775800     ; 3 uses
  %i.ep = shl i64 %n.vec, 2
  %i.eq = getelementptr i8, ptr %i.ei, i64 %i.ep
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi224 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.eu, %vector.body ]
  %i.er = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ei, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !99
  %wide.load225 = load <4 x i32>, ptr %i.es, align 4, !tbaa !99
  %i.et = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.eu = mul <4 x i32> %wide.load225, %vec.phi224 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.eu, %i.et
  %i.ew = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit.loopexit, label %.lr.ph.i.preheader226

.lr.ph.i.preheader226:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi ptr [ %i.ei, %.lr.ph.i.preheader ], [ %i.eq, %middle.block ]
  %.057.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader226, %.lr.ph.i
  %.08.i = phi ptr [ %i.ez, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader226 ] ; 2 uses
  %.057.i = phi i32 [ %i.ey, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader226 ]
  %i.ex = load i32, ptr %.08.i, align 4, !tbaa !99
  %i.ey = mul nsw i32 %i.ex, %.057.i              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ez, %i.ek
  br i1 %.not.i, label %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !145

_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ew, %middle.block ], [ %i.ey, %.lr.ph.i ]
  %i.fa = mul nsw i32 %.lcssa, %i.bs
  br label %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit

_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit: ; preds = %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit.loopexit, %bb.ax
  %.05.lcssa.i = phi i32 [ %i.bs, %bb.ax ], [ %i.fa, %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 %.05.lcssa.i, ptr %i.a, align 4, !tbaa !99
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bw, ptr %i.fb, align 4, !tbaa !99
  call void @_ZN2cv8MatShapeC1ESt16initializer_listIiE(ptr noundef nonnull align 4 dereferenceable(52) %20, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.be

bb.ay:                                            ; preds = %bb.aw
  %i.fc = load i8, ptr %i.bp, align 4, !tbaa !77, !range !94, !noundef !95
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @_ZN2cv6detail18check_failed_falseEbRKNS0_12CheckContextE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13GemmLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__177) #23
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %21, ptr noundef nonnull align 4 dereferenceable(52) %17)
  %i.fe = load i32, ptr %21, align 4, !tbaa !98   ; 2 uses
  %narrow.i175 = call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %spec.select.i176 = zext nneg i32 %narrow.i175 to i64
  %i.ff = add nsw i64 %spec.select.i176, -1       ; 2 uses
  %narrow.i177 = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %spec.select.i178 = zext nneg i32 %narrow.i177 to i64
  %i.fg = icmp ult i64 %i.ff, %spec.select.i178
  br i1 %i.fg, label %_ZN2cv8MatShapeixEm.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 97) #23
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %5, align 8, !tbaa !73    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179: ; preds = %bb.bd
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !32
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ff
  store i32 %i.bw, ptr %i.fo, align 4, !tbaa !99
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.be

bb.be:                                            ; preds = %_ZN2cv8MatShapeixEm.exit, %_ZSt10accumulateIPKiiSt10multipliesIiEET0_T_S5_S4_T1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  ret i1 false
}

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer8getTypesERKSt6vectorIiSaIiEEiiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn13GemmLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %13 = alloca %"struct.cv::MatShape", align 4    ; 13 uses
  %14 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !143    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv3dnn13GemmLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_, ptr noundef nonnull @.str.17, i32 noundef 188) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %11, align 8, !tbaa !73    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !93   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !97
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !118
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !118
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !118  ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !206

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !118
  store float %i.s, ptr %i.d, align 4, !tbaa !118
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !97
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !206

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !118
  store float %i.ac, ptr %i.ab, align 4, !tbaa !118
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x float> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !118
  store <4 x float> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !118
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !207

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !118
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !208

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = add i64 %i.aq, -4
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !118
  store <4 x float> %broadcast.splat, ptr %i.aw, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !210

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !97
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !206

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load float, ptr %1, align 4, !tbaa !118
  store float %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !118
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !97
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -4
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec115, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x float> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !118
  store <4 x float> %broadcast.splat117, ptr %i.bj, align 4, !tbaa !118
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !211

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !212

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !25    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load float, ptr %3, align 4, !tbaa !118 ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec141, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x float> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !118
  store <4 x float> %broadcast.splat143, ptr %i.ck, align 4, !tbaa !118
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !213

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !118
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !214

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !206

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load float, ptr %i.bm, align 4, !tbaa !118
  store float %i.cp, ptr %i.ca, align 4, !tbaa !118
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !206

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load float, ptr %1, align 4, !tbaa !118
  store float %i.cu, ptr %i.cq, align 4, !tbaa !118
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #20
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !25
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !97
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !28
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

declare void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #8

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #8

declare void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare noundef i32 @_ZN2cv13getNumThreadsEv() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 %1, double noundef %2) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 14 uses
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, label %bb.b

_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %3, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv5utils5trace7details6RegionD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !138
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !215 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22, !inline_history !215
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #21, !inline_history !215
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !216
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !110
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %i.a, align 8, !tbaa !217
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = mul nsw i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !219
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = udiv i64 %i.f, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !112
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, %i.e
  %i.o = udiv i64 %i.n, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !220
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !221
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.j
  %i.v = sub i64 %i.o, %i.j
  %i.w = shl i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.u, i64 %i.w, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn13GemmLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !222
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !113
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !224
  store ptr %i.c, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !110
  %i.c = sext i32 %i.b to i64
  %i.d = load i64, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.e = mul i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !227
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = udiv i64 %i.e, %i.h                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !112
  %i.l = sext i32 %i.k to i64
  %i.m = mul i64 %i.d, %i.l
  %i.n = udiv i64 %i.m, %i.h                      ; 3 uses
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE0_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 %i.n, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.i ; 4 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.p, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i.i
  %i.v = load float, ptr %i.q, align 8, !tbaa !118 ; 2 uses
  %2 = shl i64 %i.n, 2
  %i.w = add i64 %2, -4
  %3 = shl i64 %i.i, 2
  %4 = sub i64 %i.w, %3                           ; 2 uses
  %5 = lshr exact i64 %4, 2
  %i.x = add nuw nsw i64 %5, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2
  %i.z = getelementptr i8, ptr %i.t, i64 %i.y
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !118
  store <4 x float> %broadcast.splat, ptr %i.ab, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE0_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.b, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %bb.b ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.v, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE0_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !230

_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE0_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn13GemmLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_EUlRKNS_5RangeEE0_, ptr %0, align 8, !tbaa !222
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !113
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !231
  store ptr %i.c, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !110    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !112
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE1_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !232  ; 2 uses
  %i.j = load i32, ptr %i.f, align 8, !tbaa !234
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %indvars.iv.i.i.i, %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.l
  %i.n = load i64, ptr %i.g, align 8, !tbaa !235
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.i, i64 %i.n, i1 false)
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !112
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i.i.i, %i.p
  br i1 %i.q, label %bb.b, label %_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE1_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, !llvm.loop !236

_ZSt10__invoke_rIvRZN2cv3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayES8_EUlRKNS0_5RangeEE1_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn13GemmLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_EUlRKNS_5RangeEE1_, ptr %0, align 8, !tbaa !222
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !113
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !237
  store ptr %i.c, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E2_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !110
  %i.c = sext i32 %i.b to i64
  %i.d = load i64, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.e = mul i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !240
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = udiv i64 %i.e, %i.h                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !112
  %i.l = sext i32 %i.k to i64
  %i.m = mul i64 %i.d, %i.l
  %i.n = udiv i64 %i.m, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.i
  %i.r = sub i64 %i.n, %i.i
  %i.s = shl i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.s, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13GemmLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn13GemmLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_EUlRKNS_5RangeEE2_, ptr %0, align 8, !tbaa !222
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13GemmLayerImpl7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayES9_EUlRKNS1_5RangeEE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !113
end_hunk_2
