Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTWriter?download=true
inline.NumInlined: 27547
inline.NumDeleted: 12721
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 203
begin_hunk_0_@_ZN4llvm15BitstreamWriter12EncodeAbbrevERKNS_13BitCodeAbbrevE:bb.a
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull %i.bz, i64 noundef %i.bv, i64 noundef 1) #30
  %.pre8.pre.i.i.i19 = load i64, ptr %i.bt, align 8, !tbaa !381
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i13

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i13:   ; preds = %bb.i, %bb.h
  %.pre8.i.i.i14 = phi i64 [ %i.bu, %bb.h ], [ %.pre8.pre.i.i.i19, %bb.i ]
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !383
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.pre8.i.i.i14
  store i32 %i.bp, ptr %i.cb, align 1
  %.pre.i.i.i15 = load i64, ptr %i.bt, align 8, !tbaa !381
  %i.cc = add i64 %.pre.i.i.i15, 4
  store i64 %i.cc, ptr %i.bt, align 8, !tbaa !381
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !378 ; 3 uses
  %.not.i16 = icmp eq i32 %i.cd, 0
  %i.ce = sub i32 32, %i.cd
  %i.cf = lshr i32 %i.bn, %i.ce
  %storemerge.i17 = select i1 %.not.i16, i32 0, i32 %i.cf
  store i32 %storemerge.i17, ptr %i.f, align 4, !tbaa !379
  %i.cg = add i32 %i.cd, 3
  %i.ch = and i32 %i.cg, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit20

_ZN4llvm15BitstreamWriter4EmitEjj.exit20:         ; preds = %bb.g, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i13
  %storemerge6.i18 = phi i32 [ %i.ch, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i13 ], [ %i.bq, %bb.g ]
  store i32 %storemerge6.i18, ptr %i.c, align 8, !tbaa !378
  %i.ci = load i8, ptr %i.ai, align 8
  %i.cj = lshr i8 %i.ci, 1
  %i.ck = and i8 %i.cj, 7
  switch i8 %i.ck, label %bb.j [
    i8 1, label %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit.sink.split
    i8 2, label %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit.sink.split
    i8 3, label %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit
    i8 4, label %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit
    i8 5, label %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit
  ]

bb.j:                                             ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit20
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.260, i1 noundef zeroext true) #34
  unreachable

_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit.sink.split: ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit20, %_ZN4llvm15BitstreamWriter4EmitEjj.exit20, %_ZN4llvm15BitstreamWriter4EmitEjj.exit
  %.sink30 = phi i32 [ 8, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ], [ 5, %_ZN4llvm15BitstreamWriter4EmitEjj.exit20 ], [ 5, %_ZN4llvm15BitstreamWriter4EmitEjj.exit20 ]
  %i.cl = load i64, ptr %i.ah, align 8, !tbaa !3082
  tail call void @_ZN4llvm15BitstreamWriter9EmitVBR64Emj(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %i.cl, i32 noundef %.sink30)
  br label %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit

_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit: ; preds = %_ZNK4llvm15BitCodeAbbrevOp15hasEncodingDataEv.exit.sink.split, %_ZN4llvm15BitstreamWriter4EmitEjj.exit20, %_ZN4llvm15BitstreamWriter4EmitEjj.exit20, %_ZN4llvm15BitstreamWriter4EmitEjj.exit20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.af
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !6405
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15BitstreamWriter7EmitVBREjj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i32 %2, -1                           ; 2 uses
  %i.b = shl nuw i32 1, %i.a                      ; 4 uses
  %.not20 = icmp ult i32 %1, %i.b
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br i1 %.not20, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre23 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !378
  %.pre25 = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !379
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i32, ptr %i.d, align 8, !tbaa !378
  %.pre22 = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !379
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15BitstreamWriter4EmitEjj.exit
  %i.f = phi i32 [ %.pre22, %.lr.ph ], [ %i.ad, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ]
  %i.g = phi i32 [ %.pre, %.lr.ph ], [ %storemerge6.i, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ] ; 2 uses
  %.021 = phi i32 [ %1, %.lr.ph ], [ %i.ae, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ] ; 2 uses
  %i.h = and i32 %.021, %i.c
  %i.i = or i32 %i.h, %i.b                        ; 2 uses
  %i.j = shl i32 %i.i, %i.g
  %i.k = or i32 %i.f, %i.j                        ; 3 uses
  store i32 %i.k, ptr %.phi.trans.insert24, align 4, !tbaa !379
  %i.l = add i32 %i.g, %2                         ; 2 uses
  %i.m = icmp ult i32 %i.l, 32
  br i1 %i.m, label %_ZN4llvm15BitstreamWriter4EmitEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !380, !nonnull !147, !align !148 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381  ; 2 uses
  %i.q = add i64 %i.p, 4                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !382
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.d, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.u, i64 noundef %i.q, i64 noundef 1) #30
  %.pre8.pre.i.i.i = load i64, ptr %i.o, align 8, !tbaa !381
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i:     ; preds = %bb.d, %bb.c
  %.pre8.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.pre8.pre.i.i.i, %bb.d ]
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !383
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.pre8.i.i.i
  store i32 %i.k, ptr %i.w, align 1
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !tbaa !381
  %i.x = add i64 %.pre.i.i.i, 4
  store i64 %i.x, ptr %i.o, align 8, !tbaa !381
  %i.y = load i32, ptr %i.d, align 8, !tbaa !378  ; 3 uses
  %.not.i = icmp eq i32 %i.y, 0
  %i.z = sub i32 32, %i.y
  %i.aa = lshr i32 %i.i, %i.z
  %storemerge.i = select i1 %.not.i, i32 0, i32 %i.aa ; 2 uses
  store i32 %storemerge.i, ptr %.phi.trans.insert24, align 4, !tbaa !379
  %i.ab = add i32 %i.y, %2
  %i.ac = and i32 %i.ab, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit

_ZN4llvm15BitstreamWriter4EmitEjj.exit:           ; preds = %bb.b, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i
  %i.ad = phi i32 [ %storemerge.i, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %storemerge6.i = phi i32 [ %i.ac, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i ], [ %i.l, %bb.b ] ; 3 uses
  store i32 %storemerge6.i, ptr %i.d, align 8, !tbaa !378
  %i.ae = lshr i32 %.021, %i.a                    ; 3 uses
  %.not = icmp ult i32 %i.ae, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit, %.._crit_edge_crit_edge
  %i.af = phi i32 [ %.pre25, %.._crit_edge_crit_edge ], [ %i.ad, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ]
  %i.ag = phi i32 [ %.pre23, %.._crit_edge_crit_edge ], [ %storemerge6.i, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %.._crit_edge_crit_edge ], [ %i.ae, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = shl i32 %.0.lcssa, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ak = or i32 %i.af, %i.ai                     ; 2 uses
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !379
  %i.al = add i32 %i.ag, %2                       ; 2 uses
  %i.am = icmp ult i32 %i.al, 32
  br i1 %i.am, label %_ZN4llvm15BitstreamWriter4EmitEjj.exit19, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !380, !nonnull !147, !align !148 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !381 ; 2 uses
  %i.ar = add i64 %i.aq, 4                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !382
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.f, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull %i.av, i64 noundef %i.ar, i64 noundef 1) #30
  %.pre8.pre.i.i.i18 = load i64, ptr %i.ap, align 8, !tbaa !381
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12:   ; preds = %bb.f, %bb.e
  %.pre8.i.i.i13 = phi i64 [ %i.aq, %bb.e ], [ %.pre8.pre.i.i.i18, %bb.f ]
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !383
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.pre8.i.i.i13
  store i32 %i.ak, ptr %i.ax, align 1
  %.pre.i.i.i14 = load i64, ptr %i.ap, align 8, !tbaa !381
  %i.ay = add i64 %.pre.i.i.i14, 4
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !381
  %i.az = load i32, ptr %i.ah, align 8, !tbaa !378 ; 3 uses
  %.not.i15 = icmp eq i32 %i.az, 0
  %i.ba = sub i32 32, %i.az
  %i.bb = lshr i32 %.0.lcssa, %i.ba
  %storemerge.i16 = select i1 %.not.i15, i32 0, i32 %i.bb
  store i32 %storemerge.i16, ptr %i.aj, align 4, !tbaa !379
  %i.bc = add i32 %i.az, %2
  %i.bd = and i32 %i.bc, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit19

_ZN4llvm15BitstreamWriter4EmitEjj.exit19:         ; preds = %._crit_edge, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12
  %storemerge6.i17 = phi i32 [ %i.bd, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12 ], [ %i.al, %._crit_edge ]
  store i32 %storemerge6.i17, ptr %i.ah, align 8, !tbaa !378
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15BitstreamWriter9EmitVBR64Emj(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 4294967296
  br i1 %i.a, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %1 to i32
  tail call void @_ZN4llvm15BitstreamWriter7EmitVBREjj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.b, i32 noundef %2)
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i32 %2, -1                           ; 2 uses
  %i.d = shl nuw i32 1, %i.c                      ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add i32 %i.d, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = zext nneg i32 %i.c to i64
  %.pre = load i32, ptr %i.g, align 8, !tbaa !378
  %.pre26 = load i32, ptr %i.h, align 4, !tbaa !379
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm15BitstreamWriter4EmitEjj.exit
  %i.k = phi i32 [ %.pre26, %.lr.ph ], [ %i.aj, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ]
  %i.l = phi i32 [ %.pre, %.lr.ph ], [ %storemerge6.i, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ] ; 2 uses
  %.025 = phi i64 [ %1, %.lr.ph ], [ %i.ak, %_ZN4llvm15BitstreamWriter4EmitEjj.exit ] ; 2 uses
  %i.m = trunc i64 %.025 to i32
  %i.n = and i32 %i.f, %i.m
  %i.o = or i32 %i.n, %i.d                        ; 2 uses
  %i.p = shl i32 %i.o, %i.l
  %i.q = or i32 %i.k, %i.p                        ; 3 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !379
  %i.r = add i32 %i.l, %2                         ; 2 uses
  %i.s = icmp ult i32 %i.r, 32
  br i1 %i.s, label %_ZN4llvm15BitstreamWriter4EmitEjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !380, !nonnull !147, !align !148 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !381  ; 2 uses
  %i.w = add i64 %i.v, 4                          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !382
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %bb.e, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull %i.aa, i64 noundef %i.w, i64 noundef 1) #30
  %.pre8.pre.i.i.i = load i64, ptr %i.u, align 8, !tbaa !381
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i:     ; preds = %bb.e, %bb.d
  %.pre8.i.i.i = phi i64 [ %i.v, %bb.d ], [ %.pre8.pre.i.i.i, %bb.e ]
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !383
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.pre8.i.i.i
  store i32 %i.q, ptr %i.ac, align 1
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !tbaa !381
  %i.ad = add i64 %.pre.i.i.i, 4
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !381
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !378 ; 3 uses
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = sub i32 32, %i.ae
  %i.ag = lshr i32 %i.o, %i.af
  %storemerge.i = select i1 %.not.i, i32 0, i32 %i.ag ; 2 uses
  store i32 %storemerge.i, ptr %i.h, align 4, !tbaa !379
  %i.ah = add i32 %i.ae, %2
  %i.ai = and i32 %i.ah, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit

_ZN4llvm15BitstreamWriter4EmitEjj.exit:           ; preds = %bb.c, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i
  %i.aj = phi i32 [ %storemerge.i, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i ], [ %i.q, %bb.c ] ; 2 uses
  %storemerge6.i = phi i32 [ %i.ai, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i ], [ %i.r, %bb.c ] ; 4 uses
  store i32 %storemerge6.i, ptr %i.g, align 8, !tbaa !378
  %i.ak = lshr i64 %.025, %i.j                    ; 3 uses
  %.not = icmp ult i64 %i.ak, %i.e
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !28

._crit_edge:                                      ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit
  %i.al = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = shl i32 %i.al, %storemerge6.i
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.an = or i32 %i.aj, %i.am                     ; 2 uses
  store i32 %i.an, ptr %4, align 4, !tbaa !379
  %i.ao = add i32 %storemerge6.i, %2              ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 32
  br i1 %i.ap, label %_ZN4llvm15BitstreamWriter4EmitEjj.exit23, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %5, align 8, !tbaa !380, !nonnull !147, !align !148 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !381 ; 2 uses
  %i.at = add i64 %i.as, 4                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !382
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %bb.g, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i16

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull %i.ax, i64 noundef %i.at, i64 noundef 1) #30
  %.pre8.pre.i.i.i22 = load i64, ptr %i.ar, align 8, !tbaa !381
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i16

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i16:   ; preds = %bb.g, %bb.f
  %.pre8.i.i.i17 = phi i64 [ %i.as, %bb.f ], [ %.pre8.pre.i.i.i22, %bb.g ]
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !383
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.pre8.i.i.i17
  store i32 %i.an, ptr %i.az, align 1
  %.pre.i.i.i18 = load i64, ptr %i.ar, align 8, !tbaa !381
  %i.ba = add i64 %.pre.i.i.i18, 4
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !381
  %i.bb = load i32, ptr %3, align 8, !tbaa !378   ; 3 uses
  %.not.i19 = icmp eq i32 %i.bb, 0
  %i.bc = sub i32 32, %i.bb
  %i.bd = lshr i32 %i.al, %i.bc
  %storemerge.i20 = select i1 %.not.i19, i32 0, i32 %i.bd
  store i32 %storemerge.i20, ptr %4, align 4, !tbaa !379
  %i.be = add i32 %i.bb, %2
  %i.bf = and i32 %i.be, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit23

_ZN4llvm15BitstreamWriter4EmitEjj.exit23:         ; preds = %._crit_edge, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i16
  %storemerge6.i21 = phi i32 [ %i.bf, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i16 ], [ %i.ao, %._crit_edge ]
  store i32 %storemerge6.i21, ptr %3, align 8, !tbaa !378
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit23, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !349    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.261) #34
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !103
  store ptr null, ptr %i.r, align 8, !tbaa !344
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !103
  store ptr null, ptr %2, align 8, !tbaa !343
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6414)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !6414, !noalias !6413
  store ptr null, ptr %i.t, align 8, !tbaa !344, !alias.scope !6414, !noalias !6413
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !6413, !noalias !6414
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !343, !alias.scope !6414, !noalias !6413
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !6409

_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6416)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !103, !alias.scope !6416, !noalias !6415
  store ptr null, ptr %i.y, align 8, !tbaa !344, !alias.scope !6416, !noalias !6415
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !103, !alias.scope !6415, !noalias !6416
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !343, !alias.scope !6416, !noalias !6415
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !6409

_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !348
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #32
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !349
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !347
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !348
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvm15BitstreamWriter9BlockInfoESaIS2_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !6419   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6420 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZNSt6vectorIN4llvm15BitstreamWriter9BlockInfoESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvm15BitstreamWriter9BlockInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN4llvm15BitstreamWriter9BlockInfoEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !349  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !153
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !154
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !6417
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !6417
  br label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.e ], [ %i.w, %bb.f ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i, !prof !351

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30
  br label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !349
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.z = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm15BitstreamWriter9BlockInfoEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i.i.i.i.i
end_hunk_0
