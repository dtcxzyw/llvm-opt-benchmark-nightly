inline.NumInlined: 12029
inline.NumDeleted: 2622
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a

_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i: ; preds = %bb.e
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #23 ; 7 uses
  store ptr %i.au, ptr %12, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store ptr %i.av, ptr %i.al, align 8
  %i.aw = load ptr, ptr %6, align 8               ; 3 uses
  %i.ax = load ptr, ptr %i.k, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 1
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i
  %i.bc = icmp eq i64 %i.ba, 1
  br i1 %i.bc, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = load i8, ptr %i.aw, align 1
  store i8 %i.bd, ptr %i.au, align 1
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler22JSCallReducerAssembler15ReceiverInputAsINS0_7JSArrayEEENS0_5TNodeIT_EEv.exit
  %i.be = icmp samesign ugt i64 %i.ar, 1
  br i1 %i.be, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 1 %i.ao, i64 %i.ar, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp eq i64 %i.ar, 1
  br i1 %i.bf, label %bb.m, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.ao, align 1
  store i8 %i.bg, ptr %i.aj, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit

_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %i.bh = phi ptr [ %i.aj, %bb.m ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ], [ %i.au, %bb.i ], [ %i.au, %bb.h ], [ %i.au, %bb.g ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ar
  store ptr %i.bi, ptr %i.ak, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS_4base11SmallVectorINS0_21MachineRepresentationELm4ESaIS6_EEEEEENS1_6detail29GraphAssemblerLabelForXHelperIS6_vJDpT_EE4TypeESC_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::GraphAssemblerLabel.325") align 8 %11, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %12)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 7 uses
  store ptr %i.bj, ptr %14, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 28
  store ptr %i.bm, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.k, align 8
  %i.bo = load ptr, ptr %6, align 8               ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 8 uses
  %i.bs = icmp ugt i64 %i.br, 4
  br i1 %i.bs, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %14)
  %i.bt = icmp slt i64 %i.br, 0
  br i1 %i.bt, label %bb.o, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i34, !prof !141

bb.o:                                             ; preds = %bb.n
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i34: ; preds = %bb.n
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #23 ; 7 uses
  store ptr %i.bu, ptr %14, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  store ptr %i.bv, ptr %i.bl, align 8
  %i.bw = load ptr, ptr %6, align 8               ; 3 uses
  %i.bx = load ptr, ptr %i.k, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp sgt i64 %i.ca, 1
  br i1 %i.cb, label %bb.p, label %bb.q, !prof !66

bb.p:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bw, i64 %i.ca, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35

bb.q:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i34
  %i.cc = icmp eq i64 %i.ca, 1
  br i1 %i.cc, label %bb.r, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35

bb.r:                                             ; preds = %bb.q
  %i.cd = load i8, ptr %i.bw, align 1
  store i8 %i.cd, ptr %i.bu, align 1
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35

bb.s:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit
  %i.ce = icmp samesign ugt i64 %i.br, 1
  br i1 %i.ce, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 1 %i.bo, i64 %i.br, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35

bb.u:                                             ; preds = %bb.s
  %i.cf = icmp eq i64 %i.br, 1
  br i1 %i.cf, label %bb.v, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35

bb.v:                                             ; preds = %bb.u
  %i.cg = load i8, ptr %i.bo, align 1
  store i8 %i.cg, ptr %i.bj, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35

_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35: ; preds = %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  %i.ch = phi ptr [ %i.bj, %bb.v ], [ %i.bj, %bb.u ], [ %i.bj, %bb.t ], [ %i.bu, %bb.r ], [ %i.bu, %bb.q ], [ %i.bu, %bb.p ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.br
  store ptr %i.ci, ptr %i.bk, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS_4base11SmallVectorINS0_21MachineRepresentationELm4ESaIS6_EEEEEENS1_6detail29GraphAssemblerLabelForXHelperIS6_vJDpT_EE4TypeESC_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::GraphAssemblerLabel.325") align 8 %13, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %14)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 7 uses
  store ptr %i.cj, ptr %16, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 28
  store ptr %i.cm, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.k, align 8
  %i.co = load ptr, ptr %6, align 8               ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 8 uses
  %i.cs = icmp ugt i64 %i.cr, 4
  br i1 %i.cs, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %16)
  %i.ct = icmp slt i64 %i.cr, 0
  br i1 %i.ct, label %bb.x, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i36, !prof !141

bb.x:                                             ; preds = %bb.w
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i36: ; preds = %bb.w
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #23 ; 7 uses
  store ptr %i.cu, ptr %16, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cr
  store ptr %i.cv, ptr %i.cl, align 8
  %i.cw = load ptr, ptr %6, align 8               ; 3 uses
  %i.cx = load ptr, ptr %i.k, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp sgt i64 %i.da, 1
  br i1 %i.db, label %bb.y, label %bb.z, !prof !66

bb.y:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cw, i64 %i.da, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37

bb.z:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE22AllocateDynamicStorageEm.exit.i.i36
  %i.dc = icmp eq i64 %i.da, 1
  br i1 %i.dc, label %bb.aa, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i8, ptr %i.cw, align 1
  store i8 %i.dd, ptr %i.cu, align 1
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37

bb.ab:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit35
  %i.de = icmp samesign ugt i64 %i.cr, 1
  br i1 %i.de, label %bb.ac, label %bb.ad, !prof !66

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 1 %i.co, i64 %i.cr, i1 false)
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37

bb.ad:                                            ; preds = %bb.ab
  %i.df = icmp eq i64 %i.cr, 1
  br i1 %i.df, label %bb.ae, label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load i8, ptr %i.co, align 1
  store i8 %i.dg, ptr %i.cj, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37

_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37: ; preds = %bb.y, %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.dh = phi ptr [ %i.cj, %bb.ae ], [ %i.cj, %bb.ad ], [ %i.cj, %bb.ac ], [ %i.cu, %bb.aa ], [ %i.cu, %bb.z ], [ %i.cu, %bb.y ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cr
  store ptr %i.di, ptr %i.ck, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS_4base11SmallVectorINS0_21MachineRepresentationELm4ESaIS6_EEEEEENS1_6detail29GraphAssemblerLabelForXHelperIS6_vJDpT_EE4TypeESC_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::GraphAssemblerLabel.325") align 8 %15, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %16)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %16)
  %i.dj = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.dr = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 56
  %33 = insertelement <2 x ptr> poison, ptr %i.ed, i64 0
  %34 = insertelement <2 x ptr> %33, ptr %i.eg, i64 1
  %35 = insertelement <2 x ptr> poison, ptr %i.dz, i64 0
  %36 = insertelement <2 x ptr> %35, ptr %i.ec, i64 1
  %37 = insertelement <2 x ptr> poison, ptr %i.dv, i64 0
  %38 = insertelement <2 x ptr> %37, ptr %i.dy, i64 1
  %39 = insertelement <2 x ptr> poison, ptr %i.dr, i64 0
  %40 = insertelement <2 x ptr> %39, ptr %i.du, i64 1
  %41 = insertelement <2 x ptr> poison, ptr %i.dn, i64 0
  %42 = insertelement <2 x ptr> %41, ptr %i.dq, i64 1
  %43 = insertelement <2 x ptr> poison, ptr %i.dj, i64 0
  %44 = insertelement <2 x ptr> %43, ptr %i.dm, i64 1
  br label %bb.al

.lr.ph:                                           ; preds = %bb.a, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE9push_backES5_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE9push_backES5_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.eh = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ei = load ptr, ptr %i.l, align 8
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.af, label %bb.ag, !prof !141

bb.af:                                            ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(28) %6)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph
  %i.ek = phi ptr [ %.pre.i.i, %bb.af ], [ %i.eh, %.lr.ph ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store ptr %i.el, ptr %i.k, align 8
  store i8 9, ptr %i.ek, align 1
  %i.em = load ptr, ptr %i.b, align 8, !noalias !810 ; 3 uses
  %i.en = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.eo = load ptr, ptr %i.em, align 8, !noalias !813
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !813
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %i.en, %i.er
  br i1 %i.es, label %bb.ai, label %bb.ah, !prof !66

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #24, !noalias !813
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !noalias !813
  %i.ev = and i32 %i.eu, 251658240
  %.not.i.i.i.i.i38 = icmp eq i32 %i.ev, 251658240
  %i.ew = ptrtoint ptr %i.em to i64
  %i.ex = add i64 %i.ew, 32
  %i.ey = inttoptr i64 %i.ex to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i38, label %bb.aj, label %_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !813
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = add i64 %i.fa, 16
  %i.fc = inttoptr i64 %i.fb to ptr
  br label %_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi.exit

_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi.exit: ; preds = %bb.ai, %bb.aj
  %.sink.i.i.i.i.i39 = phi ptr [ %i.fc, %bb.aj ], [ %i.ey, %bb.ai ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i.i.i39, i64 %i.en
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !813
  %i.ff = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.fg = load ptr, ptr %i.p, align 8
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %bb.ak, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE9push_backES5_.exit, !prof !141

bb.ak:                                            ; preds = %_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
  %.pre.i.i40 = load ptr, ptr %i.o, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE9push_backES5_.exit: ; preds = %_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi.exit, %bb.ak
  %i.fi = phi ptr [ %.pre.i.i40, %bb.ak ], [ %i.ff, %_ZNK2v88internal8compiler22JSCallReducerAssembler8ArgumentEi.exit ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr %i.fj, ptr %i.o, align 8
  store ptr %i.fe, ptr %i.fi, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i32, ptr %i.a, align 4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next, %i.fl
  br i1 %i.fm, label %.lr.ph, label %._crit_edge, !llvm.loop !816

bb.al:                                            ; preds = %bb.dc, %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37
  %.032 = phi i64 [ 0, %_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EEC2ERKS5_.exit37 ], [ %i.md, %bb.dc ] ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.i, align 8 ; 3 uses
  %i.fn = icmp eq i64 %.sroa.01.0.copyload.i.i, 1
  br i1 %i.fn, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = and i64 %.sroa.01.0.copyload.i.i, 3
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = add i64 %.sroa.01.0.copyload.i.i, -2
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  br label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit: ; preds = %bb.al, %bb.am, %bb.an
  %.0.i = phi i64 [ %i.ft, %bb.an ], [ 0, %bb.al ], [ 1, %bb.am ]
  %i.fu = icmp ult i64 %.032, %.0.i
  br i1 %i.fu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.fw = load i32, ptr %i.fv, align 4, !noalias !823
  store i8 0, ptr %27, align 8, !alias.scope !823
  %i.fx = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 1, ptr %i.fx, align 4, !alias.scope !823
  %i.fy = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %i.fw, ptr %i.fy, align 8, !alias.scope !823
  %i.fz = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.fz, align 8, !alias.scope !823
  %i.ga = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  store ptr null, ptr %i.ga, align 8, !alias.scope !823
  %i.gb = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i8 9, ptr %i.gb, align 8, !alias.scope !823
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %1, ptr %28, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %8, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.a, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %27, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gg = load i64, ptr %i.gf, align 8
  %.not = icmp eq i64 %i.gg, 0
  br i1 %.not, label %bb.dg, label %bb.dd

bb.ap:                                            ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.gh = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %.032)
  store ptr %i.gh, ptr %17, align 8
  %i.gi = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #22 ; 4 uses
  %.sroa.01.0.copyload.i.i41 = load i64, ptr %i.i, align 8 ; 3 uses
  %i.gj = icmp eq i64 %.sroa.01.0.copyload.i.i41, 1
  br i1 %i.gj, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = and i64 %.sroa.01.0.copyload.i.i41, 3
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.critedge69, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit43

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit43: ; preds = %bb.aq
  %i.gm = add i64 %.sroa.01.0.copyload.i.i41, -2
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = add i64 %i.gp, -1
  %i.gr = icmp ult i64 %.032, %i.gq
  br i1 %i.gr, label %.critedge, label %.critedge69

.critedge:                                        ; preds = %bb.ap, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.gs = load ptr, ptr %9, align 8
  store ptr %i.gs, ptr %19, align 8
  %.sroa.0.0.copyload = load ptr, ptr %17, align 8
  call void @_ZN2v88internal8compiler16JSGraphAssembler8ConstantENS1_9ObjectRefE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.0") align 8 %20, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr %.sroa.0.0.copyload) #22
  call void @_ZN2v88internal8compiler16JSGraphAssembler14ReferenceEqualENS0_5TNodeINS0_6ObjectEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.100") align 8 %18, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull dead_on_return %20) #22
  %i.gt = and i8 %i.gi, -2
  %i.gu = icmp eq i8 %i.gt, 4
  br i1 %i.gu, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %.critedge
  %i.gv = load ptr, ptr %18, align 8
  store ptr %i.ed, ptr %21, align 8
  store <2 x ptr> %34, ptr %i.ee, align 8
  %i.gw = load ptr, ptr %i.o, align 8
  %i.gx = load ptr, ptr %7, align 8               ; 3 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 8 uses
  %i.hb = icmp ugt i64 %i.ha, 32
  br i1 %i.hb, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %21)
  %i.hc = icmp ugt i64 %i.ha, 9223372036854775800
  br i1 %i.hc, label %bb.at, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i, !prof !141

bb.at:                                            ; preds = %bb.as
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i: ; preds = %bb.as
  %i.hd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #23 ; 7 uses
  store ptr %i.hd, ptr %21, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ha
  store ptr %i.he, ptr %i.ef, align 8
  %i.hf = load ptr, ptr %7, align 8               ; 3 uses
  %i.hg = load ptr, ptr %i.o, align 8
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  %i.hk = icmp sgt i64 %i.hj, 8
  br i1 %i.hk, label %bb.au, label %bb.av, !prof !66

bb.au:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr align 8 %i.hf, i64 %i.hj, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit

bb.av:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i
  %i.hl = icmp eq i64 %i.hj, 8
  br i1 %i.hl, label %bb.aw, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit

bb.aw:                                            ; preds = %bb.av
  %i.hm = load ptr, ptr %i.hf, align 8
  store ptr %i.hm, ptr %i.hd, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit

bb.ax:                                            ; preds = %bb.ar
  %i.hn = icmp samesign ugt i64 %i.ha, 8
  br i1 %i.hn, label %bb.ay, label %bb.az, !prof !66

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %i.gx, i64 %i.ha, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit

bb.az:                                            ; preds = %bb.ax
  %i.ho = icmp eq i64 %i.ha, 8
  br i1 %i.ho, label %bb.ba, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit

bb.ba:                                            ; preds = %bb.az
  %i.hp = load ptr, ptr %i.gx, align 8
  store ptr %i.hp, ptr %i.ed, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit: ; preds = %bb.au, %bb.av, %bb.aw, %bb.ay, %bb.az, %bb.ba
  %i.hq = phi ptr [ %i.ed, %bb.ba ], [ %i.ed, %bb.az ], [ %i.ed, %bb.ay ], [ %i.hd, %bb.aw ], [ %i.hd, %bb.av ], [ %i.hd, %bb.au ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ha
  store ptr %i.hr, ptr %i.ee, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler6GotoIfIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvS7_PNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef %i.gv, ptr noundef nonnull %11, ptr noundef nonnull %21)
  br label %bb.bw

bb.bb:                                            ; preds = %.critedge
  %i.hs = icmp ult i8 %i.gi, 2
  %i.ht = load ptr, ptr %18, align 8              ; 2 uses
  br i1 %i.hs, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.dz, ptr %22, align 8
  store <2 x ptr> %36, ptr %i.ea, align 8
  %i.hu = load ptr, ptr %i.o, align 8
  %i.hv = load ptr, ptr %7, align 8               ; 3 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 8 uses
  %i.hz = icmp ugt i64 %i.hy, 32
  br i1 %i.hz, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %22)
  %i.ia = icmp ugt i64 %i.hy, 9223372036854775800
  br i1 %i.ia, label %bb.be, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i44, !prof !141

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i44: ; preds = %bb.bd
  %i.ib = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #23 ; 7 uses
  store ptr %i.ib, ptr %22, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hy
  store ptr %i.ic, ptr %i.eb, align 8
  %i.id = load ptr, ptr %7, align 8               ; 3 uses
  %i.ie = load ptr, ptr %i.o, align 8
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 3 uses
  %i.ii = icmp sgt i64 %i.ih, 8
  br i1 %i.ii, label %bb.bf, label %bb.bg, !prof !66

bb.bf:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i44
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr align 8 %i.id, i64 %i.ih, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45

bb.bg:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i44
  %i.ij = icmp eq i64 %i.ih, 8
  br i1 %i.ij, label %bb.bh, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45

bb.bh:                                            ; preds = %bb.bg
  %i.ik = load ptr, ptr %i.id, align 8
  store ptr %i.ik, ptr %i.ib, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45

bb.bi:                                            ; preds = %bb.bc
  %i.il = icmp samesign ugt i64 %i.hy, 8
  br i1 %i.il, label %bb.bj, label %bb.bk, !prof !66

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr align 8 %i.hv, i64 %i.hy, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45

bb.bk:                                            ; preds = %bb.bi
  %i.im = icmp eq i64 %i.hy, 8
  br i1 %i.im, label %bb.bl, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45

bb.bl:                                            ; preds = %bb.bk
  %i.in = load ptr, ptr %i.hv, align 8
  store ptr %i.in, ptr %i.dz, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bl
  %i.io = phi ptr [ %i.dz, %bb.bl ], [ %i.dz, %bb.bk ], [ %i.dz, %bb.bj ], [ %i.ib, %bb.bh ], [ %i.ib, %bb.bg ], [ %i.ib, %bb.bf ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.hy
  store ptr %i.ip, ptr %i.ea, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler6GotoIfIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvS7_PNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef %i.ht, ptr noundef nonnull %13, ptr noundef nonnull %22)
  br label %bb.bw

bb.bm:                                            ; preds = %bb.bb
  store ptr %i.dv, ptr %23, align 8
  store <2 x ptr> %38, ptr %i.dw, align 8
  %i.iq = load ptr, ptr %i.o, align 8
  %i.ir = load ptr, ptr %7, align 8               ; 3 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 8 uses
  %i.iv = icmp ugt i64 %i.iu, 32
  br i1 %i.iv, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %23)
  %i.iw = icmp ugt i64 %i.iu, 9223372036854775800
  br i1 %i.iw, label %bb.bo, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i46, !prof !141

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i46: ; preds = %bb.bn
  %i.ix = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #23 ; 7 uses
  store ptr %i.ix, ptr %23, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iu
  store ptr %i.iy, ptr %i.dx, align 8
  %i.iz = load ptr, ptr %7, align 8               ; 3 uses
  %i.ja = load ptr, ptr %i.o, align 8
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 3 uses
  %i.je = icmp sgt i64 %i.jd, 8
  br i1 %i.je, label %bb.bp, label %bb.bq, !prof !66

bb.bp:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ix, ptr align 8 %i.iz, i64 %i.jd, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47

bb.bq:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i46
  %i.jf = icmp eq i64 %i.jd, 8
  br i1 %i.jf, label %bb.br, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47

bb.br:                                            ; preds = %bb.bq
  %i.jg = load ptr, ptr %i.iz, align 8
  store ptr %i.jg, ptr %i.ix, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47

bb.bs:                                            ; preds = %bb.bm
  %i.jh = icmp samesign ugt i64 %i.iu, 8
  br i1 %i.jh, label %bb.bt, label %bb.bu, !prof !66

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr align 8 %i.ir, i64 %i.iu, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47

bb.bu:                                            ; preds = %bb.bs
  %i.ji = icmp eq i64 %i.iu, 8
  br i1 %i.ji, label %bb.bv, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47

bb.bv:                                            ; preds = %bb.bu
  %i.jj = load ptr, ptr %i.ir, align 8
  store ptr %i.jj, ptr %i.dv, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47: ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bt, %bb.bu, %bb.bv
  %i.jk = phi ptr [ %i.dv, %bb.bv ], [ %i.dv, %bb.bu ], [ %i.dv, %bb.bt ], [ %i.ix, %bb.br ], [ %i.ix, %bb.bq ], [ %i.ix, %bb.bp ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.iu
  store ptr %i.jl, ptr %i.dw, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler6GotoIfIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvS7_PNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef %i.ht, ptr noundef nonnull %15, ptr noundef nonnull %23)
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit
  %.sink = phi ptr [ %22, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit45 ], [ %23, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit47 ], [ %21, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.dc

.critedge69:                                      ; preds = %bb.aq, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit43
  %i.jm = and i8 %i.gi, -2
  %i.jn = icmp eq i8 %i.jm, 4
  br i1 %i.jn, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %.critedge69
  store ptr %i.dr, ptr %24, align 8
  store <2 x ptr> %40, ptr %i.ds, align 8
  %i.jo = load ptr, ptr %i.o, align 8
  %i.jp = load ptr, ptr %7, align 8               ; 3 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 8 uses
  %i.jt = icmp ugt i64 %i.js, 32
  br i1 %i.jt, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %24)
  %i.ju = icmp ugt i64 %i.js, 9223372036854775800
  br i1 %i.ju, label %bb.bz, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i48, !prof !141

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i48: ; preds = %bb.by
  %i.jv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #23 ; 7 uses
  store ptr %i.jv, ptr %24, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.js
  store ptr %i.jw, ptr %i.dt, align 8
  %i.jx = load ptr, ptr %7, align 8               ; 3 uses
  %i.jy = load ptr, ptr %i.o, align 8
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jx to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 3 uses
  %i.kc = icmp sgt i64 %i.kb, 8
  br i1 %i.kc, label %bb.ca, label %bb.cb, !prof !66

bb.ca:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jx, i64 %i.kb, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49

bb.cb:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i48
  %i.kd = icmp eq i64 %i.kb, 8
  br i1 %i.kd, label %bb.cc, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49

bb.cc:                                            ; preds = %bb.cb
  %i.ke = load ptr, ptr %i.jx, align 8
  store ptr %i.ke, ptr %i.jv, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49

bb.cd:                                            ; preds = %bb.bx
  %i.kf = icmp samesign ugt i64 %i.js, 8
  br i1 %i.kf, label %bb.ce, label %bb.cf, !prof !66

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr align 8 %i.jp, i64 %i.js, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49

bb.cf:                                            ; preds = %bb.cd
  %i.kg = icmp eq i64 %i.js, 8
  br i1 %i.kg, label %bb.cg, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49

bb.cg:                                            ; preds = %bb.cf
  %i.kh = load ptr, ptr %i.jp, align 8
  store ptr %i.kh, ptr %i.dr, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49: ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %i.ki = phi ptr [ %i.dr, %bb.cg ], [ %i.dr, %bb.cf ], [ %i.dr, %bb.ce ], [ %i.jv, %bb.cc ], [ %i.jv, %bb.cb ], [ %i.jv, %bb.ca ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.js
  store ptr %i.kj, ptr %i.ds, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler4GotoIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %11, ptr noundef nonnull %24)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %24)
  br label %bb.dc

bb.ch:                                            ; preds = %.critedge69
  %i.kk = icmp ult i8 %i.gi, 2
  br i1 %i.kk, label %bb.ci, label %bb.cs

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.dn, ptr %25, align 8
  store <2 x ptr> %42, ptr %i.do, align 8
  %i.kl = load ptr, ptr %i.o, align 8
  %i.km = load ptr, ptr %7, align 8               ; 3 uses
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 8 uses
  %i.kq = icmp ugt i64 %i.kp, 32
  br i1 %i.kq, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %25)
  %i.kr = icmp ugt i64 %i.kp, 9223372036854775800
  br i1 %i.kr, label %bb.ck, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i50, !prof !141

bb.ck:                                            ; preds = %bb.cj
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i50: ; preds = %bb.cj
  %i.ks = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kp) #23 ; 7 uses
  store ptr %i.ks, ptr %25, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kp
  store ptr %i.kt, ptr %i.dp, align 8
  %i.ku = load ptr, ptr %7, align 8               ; 3 uses
  %i.kv = load ptr, ptr %i.o, align 8
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.ku to i64
  %i.ky = sub i64 %i.kw, %i.kx                    ; 3 uses
  %i.kz = icmp sgt i64 %i.ky, 8
  br i1 %i.kz, label %bb.cl, label %bb.cm, !prof !66

bb.cl:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ks, ptr align 8 %i.ku, i64 %i.ky, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51

bb.cm:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i50
  %i.la = icmp eq i64 %i.ky, 8
  br i1 %i.la, label %bb.cn, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51

bb.cn:                                            ; preds = %bb.cm
  %i.lb = load ptr, ptr %i.ku, align 8
  store ptr %i.lb, ptr %i.ks, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51

bb.co:                                            ; preds = %bb.ci
  %i.lc = icmp samesign ugt i64 %i.kp, 8
  br i1 %i.lc, label %bb.cp, label %bb.cq, !prof !66

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.km, i64 %i.kp, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51

bb.cq:                                            ; preds = %bb.co
  %i.ld = icmp eq i64 %i.kp, 8
  br i1 %i.ld, label %bb.cr, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51

bb.cr:                                            ; preds = %bb.cq
  %i.le = load ptr, ptr %i.km, align 8
  store ptr %i.le, ptr %i.dn, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51: ; preds = %bb.cl, %bb.cm, %bb.cn, %bb.cp, %bb.cq, %bb.cr
  %i.lf = phi ptr [ %i.dn, %bb.cr ], [ %i.dn, %bb.cq ], [ %i.dn, %bb.cp ], [ %i.ks, %bb.cn ], [ %i.ks, %bb.cm ], [ %i.ks, %bb.cl ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kp
  store ptr %i.lg, ptr %i.do, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler4GotoIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %13, ptr noundef nonnull %25)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %25)
  br label %bb.dc

bb.cs:                                            ; preds = %bb.ch
  store ptr %i.dj, ptr %26, align 8
  store <2 x ptr> %44, ptr %i.dk, align 8
  %i.lh = load ptr, ptr %i.o, align 8
  %i.li = load ptr, ptr %7, align 8               ; 3 uses
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 8 uses
  %i.lm = icmp ugt i64 %i.ll, 32
  br i1 %i.lm, label %bb.ct, label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %26)
  %i.ln = icmp ugt i64 %i.ll, 9223372036854775800
  br i1 %i.ln, label %bb.cu, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i52, !prof !141

bb.cu:                                            ; preds = %bb.ct
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i52: ; preds = %bb.ct
  %i.lo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #23 ; 7 uses
  store ptr %i.lo, ptr %26, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ll
  store ptr %i.lp, ptr %i.dl, align 8
  %i.lq = load ptr, ptr %7, align 8               ; 3 uses
  %i.lr = load ptr, ptr %i.o, align 8
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, 8
  br i1 %i.lv, label %bb.cv, label %bb.cw, !prof !66

bb.cv:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i52
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lo, ptr align 8 %i.lq, i64 %i.lu, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53

bb.cw:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE22AllocateDynamicStorageEm.exit.i.i52
  %i.lw = icmp eq i64 %i.lu, 8
  br i1 %i.lw, label %bb.cx, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53

bb.cx:                                            ; preds = %bb.cw
  %i.lx = load ptr, ptr %i.lq, align 8
  store ptr %i.lx, ptr %i.lo, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53

bb.cy:                                            ; preds = %bb.cs
  %i.ly = icmp samesign ugt i64 %i.ll, 8
  br i1 %i.ly, label %bb.cz, label %bb.da, !prof !66

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr align 8 %i.li, i64 %i.ll, i1 false)
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53

bb.da:                                            ; preds = %bb.cy
  %i.lz = icmp eq i64 %i.ll, 8
  br i1 %i.lz, label %bb.db, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53

bb.db:                                            ; preds = %bb.da
  %i.ma = load ptr, ptr %i.li, align 8
  store ptr %i.ma, ptr %i.dj, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53: ; preds = %bb.cv, %bb.cw, %bb.cx, %bb.cz, %bb.da, %bb.db
  %i.mb = phi ptr [ %i.dj, %bb.db ], [ %i.dj, %bb.da ], [ %i.dj, %bb.cz ], [ %i.lo, %bb.cx ], [ %i.lo, %bb.cw ], [ %i.lo, %bb.cv ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ll
  store ptr %i.mc, ptr %i.dk, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler4GotoIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %15, ptr noundef nonnull %26)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %26)
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit49, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit53, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EEC2ERKS7_.exit51, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.md = add nuw i64 %.032, 1
  br label %bb.al, !llvm.loop !824

bb.dd:                                            ; preds = %bb.ao
  call void @_ZN2v88internal8compiler14GraphAssembler4BindILm4294967295EEEvPNS1_19GraphAssemblerLabelIXT_EEE(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.me = load i32, ptr %i.a, align 4             ; 3 uses
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  store ptr %i.mg, ptr %29, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %i.mg, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %i.mj, ptr %i.mi, align 8
  %i.mk = icmp ugt i32 %i.me, 1
  br i1 %i.mk, label %bb.de, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE6resizeEm.exit

bb.de:                                            ; preds = %bb.dd
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %i.mf)
  %.pre.i = load ptr, ptr %29, align 8
  %.pre = load i32, ptr %i.a, align 4
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE6resizeEm.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE6resizeEm.exit: ; preds = %bb.dd, %bb.de
  %i.ml = phi i32 [ %.pre, %bb.de ], [ %i.me, %bb.dd ]
  %i.mm = phi ptr [ %.pre.i, %bb.de ], [ %i.mg, %bb.dd ]
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mf
  store ptr %i.mn, ptr %i.mh, align 8
  %i.mo = icmp sgt i32 %i.ml, 0
  br i1 %i.mo, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE6resizeEm.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.df

._crit_edge73:                                    ; preds = %bb.df, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE6resizeEm.exit
  call fastcc void @"_ZZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceEENK3$_0clENS0_12ElementsKindERNS_4base11SmallVectorIPNS1_4NodeELm1ESaISA_EEE"(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(32) %29)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.dg

bb.df:                                            ; preds = %.lr.ph72, %bb.df
  %indvars.iv81 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next82, %bb.df ] ; 3 uses
  %i.mt = load ptr, ptr %i.mp, align 8
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %indvars.iv81
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = load ptr, ptr %i.mq, align 8, !noalias !825
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !825
  %i.my = load ptr, ptr %1, align 8, !noalias !825
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !825
  %i.nb = call noundef ptr %i.na(ptr noundef nonnull align 8 dereferenceable(280) %1) #22, !noalias !825, !inline_history !828
  %i.nc = load ptr, ptr %i.b, align 8, !noalias !825
  %i.nd = load ptr, ptr %i.nc, align 8, !noalias !825
  %i.ne = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.nd) #22, !noalias !825
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder11CheckNumberERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(12) %i.nf) #22, !noalias !825
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !825
  store ptr %i.mv, ptr %5, align 8, !noalias !825
  %i.nh = load <2 x ptr>, ptr %i.mr, align 8, !noalias !825
  store <2 x ptr> %i.nh, ptr %i.ms, align 8, !noalias !825
  %i.ni = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.mx, ptr noundef %i.ng, i32 noundef 3, ptr noundef nonnull %5, i1 noundef zeroext false) #22, !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !825
  %i.nj = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef %i.ni) #22, !noalias !829
  %i.nk = load ptr, ptr %i.mq, align 8
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = load ptr, ptr %1, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = call noundef ptr %i.no(ptr noundef nonnull align 8 dereferenceable(264) %1) #22
  %i.nq = call noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder16NumberSilenceNaNENS0_14SilenceNanModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.np, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.nj, ptr %4, align 8
  %i.nr = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.nl, ptr noundef %i.nq, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ns = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef %i.nr) #22, !noalias !832
  %i.nt = load ptr, ptr %29, align 8
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv81
  store ptr %i.ns, ptr %i.nu, align 8
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.nv = load i32, ptr %i.a, align 4
  %i.nw = sext i32 %i.nv to i64
  %i.nx = icmp slt i64 %indvars.iv.next82, %i.nw
  br i1 %i.nx, label %bb.df, label %._crit_edge73, !llvm.loop !835

bb.dg:                                            ; preds = %._crit_edge73, %bb.ao
  %i.ny = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.nz = load i64, ptr %i.ny, align 8
  %.not67 = icmp eq i64 %i.nz, 0
  br i1 %.not67, label %bb.dt, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN2v88internal8compiler14GraphAssembler4BindILm4294967295EEEvPNS1_19GraphAssemblerLabelIXT_EEE(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.oa = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 3 uses
  store ptr %i.oc, ptr %30, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store ptr %i.oc, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %30, i64 56
  store ptr %i.of, ptr %i.oe, align 8
  %i.og = icmp ugt i32 %i.oa, 4
  br i1 %i.og, label %bb.di, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE6resizeEm.exit

bb.di:                                            ; preds = %bb.dh
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %30, i64 noundef %i.ob)
  %.pre.i54 = load ptr, ptr %30, align 8
  %.pre90 = load i32, ptr %i.a, align 4
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE6resizeEm.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE6resizeEm.exit: ; preds = %bb.dh, %bb.di
  %i.oh = phi i32 [ %.pre90, %bb.di ], [ %i.oa, %bb.dh ]
  %i.oi = phi ptr [ %.pre.i54, %bb.di ], [ %i.oc, %bb.dh ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ob ; 2 uses
  store ptr %i.oj, ptr %i.od, align 8
  %i.ok = icmp sgt i32 %i.oh, 0
  br i1 %i.ok, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE6resizeEm.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ds
end_hunk_0
