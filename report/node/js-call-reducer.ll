inline.NumInlined: 12029
inline.NumDeleted: 2622
begin_hunk_0_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a
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
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a
bb.ar:                                            ; preds = %.critedge
  %i.gv = load ptr, ptr %18, align 8
  store ptr %i.ed, ptr %21, align 8
  store <2 x ptr> %34, ptr %i.ee, align 8
  %i.gw = load ptr, ptr %i.o, align 8
  %i.gx = load ptr, ptr %7, align 8               ; 3 uses
  %i.gy = ptrtoint ptr %i.gw to i64
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.dz, ptr %22, align 8
  store <2 x ptr> %36, ptr %i.ea, align 8
  %i.hu = load ptr, ptr %i.o, align 8
  %i.hv = load ptr, ptr %7, align 8               ; 3 uses
  %i.hw = ptrtoint ptr %i.hu to i64
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a

bb.bm:                                            ; preds = %bb.bb
  store ptr %i.dv, ptr %23, align 8
  store <2 x ptr> %38, ptr %i.dw, align 8
  %i.iq = load ptr, ptr %i.o, align 8
  %i.ir = load ptr, ptr %7, align 8               ; 3 uses
  %i.is = ptrtoint ptr %i.iq to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a

bb.bx:                                            ; preds = %.critedge69
  store ptr %i.dr, ptr %24, align 8
  store <2 x ptr> %40, ptr %i.ds, align 8
  %i.jo = load ptr, ptr %i.o, align 8
  %i.jp = load ptr, ptr %7, align 8               ; 3 uses
  %i.jq = ptrtoint ptr %i.jo to i64
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.dn, ptr %25, align 8
  store <2 x ptr> %42, ptr %i.do, align 8
  %i.kl = load ptr, ptr %i.o, align 8
  %i.km = load ptr, ptr %7, align 8               ; 3 uses
  %i.kn = ptrtoint ptr %i.kl to i64
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler24ReduceArrayPrototypePushEPNS1_12MapInferenceE:bb.a

bb.cs:                                            ; preds = %bb.ch
  store ptr %i.dj, ptr %26, align 8
  store <2 x ptr> %44, ptr %i.dk, align 8
  %i.lh = load ptr, ptr %i.o, align 8
  %i.li = load ptr, ptr %7, align 8               ; 3 uses
  %i.lj = ptrtoint ptr %i.lh to i64
end_hunk_6
