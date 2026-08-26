Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86InstrInfo?download=true
inline.NumInlined: 6257
inline.NumDeleted: 2374
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK4llvm12X86InstrInfo19describeLoadedValueERKNS_12MachineInstrENS_8RegisterE:bb.a
  br i1 %i.cb, label %bb.n, label %thread-pre-split190

bb.n:                                             ; preds = %select.unfold
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !209
  %i.ce = load i32, ptr %i.bg, align 4, !tbaa !209 ; 2 uses
  %i.cf = icmp eq i32 %i.cd, %i.ce
  %i.cg = icmp sgt i64 %i.br, 0
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 16)
  %i.ch = add nuw nsw i64 %i.br, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.ch)
  br label %.critedge12.sink.split

thread-pre-split190:                              ; preds = %select.unfold
  %.pr191 = load i32, ptr %i.bg, align 4, !tbaa !209
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split190, %bb.n
  %i.ci = phi i32 [ %.pr191, %thread-pre-split190 ], [ %i.ce, %bb.n ] ; 2 uses
  %.not199 = icmp eq i32 %i.ci, 0
  br i1 %.not199, label %.critedge10, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i32 %i.ci, i1 noundef zeroext false) #29 ; 3 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cp = icmp samesign ult i32 %i.cn, 32
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = add nuw nsw i64 %i.cm, 112
  %i.cr = and i64 %i.cq, 255
  br label %.critedge10.sink.split

bb.t:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 146)
  %i.cs = and i64 %i.cm, 2147483647
  br label %.critedge10.sink.split

.critedge10.sink.split:                           ; preds = %bb.t, %bb.s
  %.sink = phi i64 [ %i.cr, %bb.s ], [ %i.cs, %bb.t ]
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sink)
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  br label %.critedge10

.critedge10:                                      ; preds = %.critedge10.sink.split, %.critedge4, %bb.m, %bb.p
  %.1 = phi ptr [ %i.an, %bb.m ], [ %i.am, %bb.p ], [ %i.an, %.critedge4 ], [ %i.am, %.critedge10.sink.split ] ; 4 uses
  %i.ct = icmp sgt i64 %i.br, 1
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge10
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 16)
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.br)
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 30)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge10
  %i.cu = load i32, ptr %i.am, align 8
  %trunc200 = trunc i32 %i.cu to i8
  switch i8 %trunc200, label %.critedge12 [
    i8 0, label %bb.w
    i8 5, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !209
  %.not201 = icmp eq i32 %i.cw, 0
  br i1 %.not201, label %.critedge12, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cx = load i32, ptr %i.bg, align 4, !tbaa !209
  %.not202 = icmp eq i32 %i.cx, 0
  br i1 %.not202, label %.critedge12, label %.critedge12.sink.split

.critedge12.sink.split:                           ; preds = %bb.x, %bb.o
  %.sink235 = phi i64 [ 30, %bb.o ], [ 34, %bb.x ]
  %.2.ph = phi ptr [ %i.am, %bb.o ], [ %.1, %bb.x ]
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sink235)
  br label %.critedge12

.critedge12:                                      ; preds = %.critedge12.sink.split, %bb.v, %bb.w, %bb.x
  %.2 = phi ptr [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ], [ %.2.ph, %.critedge12.sink.split ]
  call void @_ZN4llvm12DIExpression12appendOffsetERNS_15SmallVectorImplImEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.bt) #29
  %i.cy = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #29
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1164, !nonnull !47, !align !187
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cz) #29
  %i.db = load ptr, ptr %4, align 8, !tbaa !49
  %i.dc = load i32, ptr %i.bv, align 8, !tbaa !375
  %i.dd = zext i32 %i.dc to i64
  %i.de = call noundef ptr @_ZN4llvm12DIExpression7getImplERNS_11LLVMContextENS_8ArrayRefImEENS_8Metadata11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr %i.db, i64 %i.dd, i32 noundef 0, i1 noundef zeroext true) #29
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.2, i64 32, i1 false)
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.de, ptr %.sroa.4140.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %.critedge12
  %.sink236 = phi i8 [ 1, %.critedge12 ], [ 0, %bb.q ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sink236, ptr %i.df, align 8, !tbaa !1718
  %i.dg = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bu
  br i1 %i.dh, label %_ZN4llvm11SmallVectorImLj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.dg) #29
  br label %_ZN4llvm11SmallVectorImLj8EED2Ev.exit

_ZN4llvm11SmallVectorImLj8EED2Ev.exit:            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.aa:                                            ; preds = %bb.a, %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.di, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.ab:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !208 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !209 ; 3 uses
  %i.dn = icmp eq i32 %i.dm, %3
  br i1 %i.dn, label %.loopexit203, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1009, !noalias !1720
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1013, !noalias !1720
  %i.ds = zext i32 %i.dm to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !1014, !noalias !1720
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dw ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !668, !noalias !1720 ; 2 uses
  %.not.i.i.i.i.i.i103 = icmp eq i16 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i103, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit109, label %.lr.ph.i.i.i.i.preheader.i.i104

.lr.ph.i.i.i.i.preheader.i.i104:                  ; preds = %bb.ac
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add i32 %i.dm, %i.dz
  br label %.lr.ph.i.i.i.i.i.i105

.lr.ph.i.i.i.i.i.i105:                            ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i107, %.lr.ph.i.i.i.i.preheader.i.i104
  %.pn.i.i106 = phi ptr [ %i.ee, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i107 ], [ %i.dx, %.lr.ph.i.i.i.i.preheader.i.i104 ]
  %i.eb = phi i32 [ %i.eh, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i107 ], [ %i.ea, %.lr.ph.i.i.i.i.preheader.i.i104 ] ; 2 uses
  %i.ec = and i32 %i.eb, 65535
  %i.ed = icmp eq i32 %3, %i.ec
  br i1 %i.ed, label %.loopexit203, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i107

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i107: ; preds = %.lr.ph.i.i.i.i.i.i105
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn.i.i106, i64 2 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !668, !noalias !1723 ; 2 uses
  %i.eg = zext i16 %i.ef to i32
  %i.eh = add i32 %i.eb, %i.eg
  %.not.i.i.i.i.i.i.i.i108 = icmp eq i16 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i.i108, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit109, label %.lr.ph.i.i.i.i.i.i105, !llvm.loop !1023

_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit109: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i107, %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ei, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

.loopexit203:                                     ; preds = %.lr.ph.i.i.i.i.i.i105, %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 32, i1 false)
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4137.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ek, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.ad:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !208, !noalias !1730 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !209, !noalias !1730 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !209, !noalias !1730 ; 3 uses
  %i.er = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #29, !noalias !1730
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1164, !noalias !1730, !nonnull !47, !align !187
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.es) #29, !noalias !1730
  %i.eu = tail call noundef ptr @_ZN4llvm12DIExpression7getImplERNS_11LLVMContextENS_8ArrayRefImEENS_8Metadata11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr null, i64 0, i32 noundef 0, i1 noundef zeroext true) #29, !noalias !1730 ; 3 uses
  %i.ev = icmp eq i32 %i.eo, %3
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1730
  store i32 0, ptr %0, align 8, !alias.scope !1730
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.eq, ptr %.sroa.439.0..sroa_idx.i, align 4, !alias.scope !1730
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !1730
  %.sroa.742.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.eu, ptr %.sroa.742.0..sroa_idx.i, align 8, !alias.scope !1730
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ew, align 8, !tbaa !1718, !alias.scope !1730
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.af:                                            ; preds = %bb.ad
  %i.ex = tail call noundef i32 @_ZNK4llvm14MCRegisterInfo14getSubRegIndexENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i32 %i.eo, i32 %3) #29, !noalias !1730 ; 2 uses
  %.not.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i32 %i.eq, i32 noundef %i.ex) #29, !noalias !1730
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1730
  store i32 0, ptr %0, align 8, !alias.scope !1730
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ey, ptr %.sroa.429.0..sroa_idx.i, align 4, !alias.scope !1730
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !1730
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.eu, ptr %.sroa.732.0..sroa_idx.i, align 8, !alias.scope !1730
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ez, align 8, !tbaa !1718, !alias.scope !1730
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

.critedge.i:                                      ; preds = %bb.af
  %i.fa = load i32, ptr %i.b, align 4, !tbaa !192, !noalias !1730
  switch i32 %i.fa, label %bb.ah [
    i32 2625, label %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.thread.i
    i32 2568, label %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.thread.i
  ]

bb.ah:                                            ; preds = %.critedge.i
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1009, !noalias !1733
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1013, !noalias !1733
  %i.ff = zext i32 %i.eo to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !1014, !noalias !1733
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fj ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !668, !noalias !1733 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i.i.i.i110, label %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i.i111

.lr.ph.i.i.i.i.preheader.i.i111:                  ; preds = %bb.ah
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add i32 %i.eo, %i.fm
  br label %.lr.ph.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i112:                            ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i114, %.lr.ph.i.i.i.i.preheader.i.i111
  %.pn.i.i113 = phi ptr [ %i.fr, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i114 ], [ %i.fk, %.lr.ph.i.i.i.i.preheader.i.i111 ]
  %i.fo = phi i32 [ %i.fu, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i114 ], [ %i.fn, %.lr.ph.i.i.i.i.preheader.i.i111 ] ; 2 uses
  %i.fp = and i32 %i.fo, 65535
  %i.fq = icmp eq i32 %3, %i.fp
  br i1 %i.fq, label %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.i, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i114

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i114: ; preds = %.lr.ph.i.i.i.i.i.i112
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn.i.i113, i64 2 ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !668, !noalias !1736 ; 2 uses
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add i32 %i.fo, %i.ft
  %.not.i.i.i.i.i.i.i.i115 = icmp eq i16 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i.i.i115, label %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i112, !llvm.loop !1023

_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.thread.i: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i114, %bb.ah, %.critedge.i, %.critedge.i
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.fv, align 8, !tbaa !1718, !alias.scope !1730
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i112
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1730
  store i32 0, ptr %0, align 8, !alias.scope !1730
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.eq, ptr %.sroa.421.0..sroa_idx.i, align 4, !alias.scope !1730
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1730
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.eu, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1730
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.fw, align 8, !tbaa !1718, !alias.scope !1730
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.ai:                                            ; preds = %bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !208 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !209 ; 3 uses
  %i.gb = icmp eq i32 %i.ga, %3
  br i1 %i.gb, label %.loopexit204, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1009, !noalias !1743
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !1013, !noalias !1743
  %i.gg = zext i32 %i.ga to i64
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !1014, !noalias !1743
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gk ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !668, !noalias !1743 ; 2 uses
  %.not.i.i.i.i.i.i116 = icmp eq i16 %i.gm, 0
  br i1 %.not.i.i.i.i.i.i116, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit123, label %.lr.ph.i.i.i.i.preheader.i.i117

.lr.ph.i.i.i.i.preheader.i.i117:                  ; preds = %bb.aj
  %i.gn = zext i16 %i.gm to i32
  %i.go = add i32 %i.ga, %i.gn
  br label %.lr.ph.i.i.i.i.i.i118

.lr.ph.i.i.i.i.i.i118:                            ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i120, %.lr.ph.i.i.i.i.preheader.i.i117
  %.pn.i.i119 = phi ptr [ %i.gs, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i120 ], [ %i.gl, %.lr.ph.i.i.i.i.preheader.i.i117 ]
  %i.gp = phi i32 [ %i.gv, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i120 ], [ %i.go, %.lr.ph.i.i.i.i.preheader.i.i117 ] ; 2 uses
  %i.gq = and i32 %i.gp, 65535
  %i.gr = icmp eq i32 %3, %i.gq
  br i1 %i.gr, label %.loopexit204, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i120

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i.i.i.i118
  %i.gs = getelementptr inbounds nuw i8, ptr %.pn.i.i119, i64 2 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !668, !noalias !1746 ; 2 uses
  %i.gu = zext i16 %i.gt to i32
  %i.gv = add i32 %i.gp, %i.gu
  %.not.i.i.i.i.i.i.i.i121 = icmp eq i16 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i.i.i121, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit123, label %.lr.ph.i.i.i.i.i.i118, !llvm.loop !1023

_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit123: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i120, %bb.aj
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.gw, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

.loopexit204:                                     ; preds = %.lr.ph.i.i.i.i.i.i118, %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 36
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !209
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fy, i64 68
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !209
  %i.hb = icmp eq i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit204
  store i32 1, ptr %0, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5130.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.hc, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.al:                                            ; preds = %.loopexit204
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.hd, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.am:                                            ; preds = %bb.a
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !208
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !209 ; 2 uses
  %i.hi = icmp eq i32 %3, %i.hh
  br i1 %i.hi, label %.loopexit205, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1009, !noalias !1753
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1013, !noalias !1753
  %i.hn = zext i32 %3 to i64
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !1014, !noalias !1753
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hr ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !668, !noalias !1753 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.an
  %i.hu = zext i16 %i.ht to i32
  %i.hv = add i32 %3, %i.hu
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.pn.i.i.i = phi ptr [ %i.hz, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i ], [ %i.hs, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.hw = phi i32 [ %i.ic, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i ], [ %i.hv, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.hx = and i32 %i.hw, 65535
  %i.hy = icmp eq i32 %i.hh, %i.hx
  br i1 %i.hy, label %.loopexit205, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 2 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !668, !noalias !1756 ; 2 uses
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add i32 %i.hw, %i.ib
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ia, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1023

_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i, %bb.an
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.id, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

.loopexit205:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.am
  %i.ie = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #29
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !1164, !nonnull !47, !align !187
  %i.ig = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.if) #29
  %i.ih = tail call noundef ptr @_ZN4llvm12DIExpression7getImplERNS_11LLVMContextENS_8ArrayRefImEENS_8Metadata11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr null, i64 0, i32 noundef 0, i1 noundef zeroext true) #29 ; 2 uses
  %i.ii = load ptr, ptr %i.he, align 8, !tbaa !208 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !209
  %i.il = icmp eq i32 %3, %i.ik
  br i1 %i.il, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.loopexit205
  %i.im = tail call noundef ptr @_ZN4llvm12DIExpression9appendExtEPKS0_jjb(ptr noundef %i.ih, i32 noundef 32, i32 noundef 64, i1 noundef zeroext true) #29
  %.pre = load ptr, ptr %i.he, align 8, !tbaa !208
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit205, %bb.ao
  %i.in = phi ptr [ %.pre, %bb.ao ], [ %i.ii, %.loopexit205 ]
  %.0167 = phi ptr [ %i.im, %bb.ao ], [ %i.ih, %.loopexit205 ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.io, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0167, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ip, align 8, !tbaa !1718
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZNK4llvm15TargetInstrInfo19describeLoadedValueERKNS_12MachineInstrENS_8RegisterE(ptr dead_on_unwind writable sret(%"class.std::optional.723") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 %3) #29
  br label %_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit

_ZL24describeMOVrrLoadedValueRKN4llvm12MachineInstrENS_8RegisterEPKNS_18TargetRegisterInfoE.exit: ; preds = %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.i, %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit.thread.i, %bb.ag, %bb.ae, %.critedge, %.critedge2, %_ZN4llvm11SmallVectorImLj8EED2Ev.exit, %bb.aq, %bb.ap, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, %bb.al, %bb.ak, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit123, %.loopexit203, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit109, %bb.aa, %bb.e, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !375  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !376
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !467

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store i64 %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !375
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !375
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN4llvm12DIExpression12appendOffsetERNS_15SmallVectorImplImEEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare noundef ptr @_ZN4llvm12DIExpression9appendExtEPKS0_jjb(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK4llvm15TargetInstrInfo19describeLoadedValueERKNS_12MachineInstrENS_8RegisterE(ptr dead_on_unwind writable sret(%"class.std::optional.723") align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i32) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12X86InstrInfo21setSpecialOperandAttrERNS_12MachineInstrES2_S2_S2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #29
end_hunk_0
