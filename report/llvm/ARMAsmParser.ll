Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmParser?download=true
inline.NumInlined: 13951
inline.NumDeleted: 2231
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN12_GLOBAL__N_112ARMAsmParser15parsePostIdxRegERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE:bb.a
  store i8 3, ptr %i.x, align 8, !tbaa !84
  %.val = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.z = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, ptr null) #29
  %i.aa = zext i1 %i.z to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !74
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.d) #29
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !327
  %i.ad = icmp eq i32 %i.ac, 26
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(40) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(243) %i.d) #29 ; 0 uses
  %i.ai = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112ARMAsmParser22parseMemRegOffsetShiftERN4llvm6ARM_AM8ShiftOpcERj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.ai, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.d) #29
  %i.ak = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #29
  %.pre = load i32, ptr %i.a, align 4, !tbaa !417
  %.pre23 = load i32, ptr %i.b, align 4, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.al = phi i32 [ %.pre23, %bb.j ], [ 0, %bb.h ]
  %i.am = phi i32 [ %.pre, %bb.j ], [ 0, %bb.h ]
  %.sroa.05.0 = phi ptr [ %i.ak, %bb.j ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.an = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1024 ; 20 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 -1, ptr %i.ao, align 8, !tbaa !55, !noalias !1024
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !56, !noalias !1024
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 0, ptr %i.ar, align 8, !tbaa !58, !noalias !1024
  store i8 0, ptr %i.aq, align 8, !tbaa !60, !noalias !1024
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.an, align 8, !tbaa !34, !noalias !1024
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i32 12, ptr %i.as, align 8, !tbaa !71, !noalias !1024
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 0, ptr %i.aw, align 8, !noalias !1025
  store ptr %i.av, ptr %i.au, align 8, !tbaa !39, !noalias !1024
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i32 0, ptr %i.ax, align 8, !tbaa !61, !noalias !1024
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  store i32 8, ptr %i.ay, align 4, !tbaa !62, !noalias !1024
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  store ptr %0, ptr %i.az, align 8, !tbaa !329, !noalias !1024
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store i32 %i.u, ptr %i.ba, align 8, !tbaa !74, !noalias !1025
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 140
  store i8 %.017, ptr %i.bb, align 4, !tbaa !60, !noalias !1025
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  store i32 %i.am, ptr %i.bc, align 8, !tbaa !60, !noalias !1025
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 148
  store i32 %i.al, ptr %i.bd, align 4, !tbaa !60, !noalias !1025
  store ptr %i.m, ptr %i.at, align 8, !tbaa !81, !noalias !1025
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %.sroa.05.0, ptr %i.be, align 8, !tbaa !81, !noalias !1025
  store ptr %i.an, ptr %4, align 8, !tbaa !331
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !61 ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !62
  %.not.i.i.not.i = icmp ult i32 %i.bg, %i.bk
  %.pre3.i = load ptr, ptr %1, align 8, !tbaa !39 ; 4 uses
  %i.bl = ptrtoint ptr %i.an to i64               ; 2 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit, label %bb.l, !prof !95

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.bh
  %i.bn = icmp uge ptr %4, %.pre3.i
  %i.bo = icmp ult ptr %4, %i.bm
  %spec.select.i.i.i.i.i = and i1 %i.bn, %i.bo
  br i1 %spec.select.i.i.i.i.i, label %bb.m, label %.critedge.i.i.i, !prof !332

bb.m:                                             ; preds = %bb.l
  %i.bp = ptrtoint ptr %4 to i64
  %i.bq = ptrtoint ptr %.pre3.i to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bi)
  %i.bs = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.br ; 2 uses
  %.pre24 = load i64, ptr %i.bt, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

.critedge.i.i.i:                                  ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bi)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit: ; preds = %bb.k, %bb.m, %.critedge.i.i.i
  %i.bu = phi i64 [ %i.bl, %bb.k ], [ %.pre24, %bb.m ], [ %i.bl, %.critedge.i.i.i ]
  %i.bv = phi ptr [ %.pre3.i, %bb.k ], [ %i.bs, %bb.m ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %4, %bb.k ], [ %i.bt, %bb.m ], [ %4, %.critedge.i.i.i ]
  %i.bw = load i32, ptr %i.bf, align 8, !tbaa !61 ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !49
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !49
  %i.bz = add i32 %i.bw, 1
  store i32 %i.bz, ptr %i.bf, align 8, !tbaa !61
  %i.ca = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(48) %i.ca) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit
  %.sroa.022.0 = phi i32 [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %bb.g
  %.sroa.022.1 = phi i32 [ %i.aa, %bb.g ], [ %.sroa.022.0, %bb.n ], [ 2, %bb.f ]
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !418
  %i.cf = icmp ugt i32 %i.ce, 64
  br i1 %i.cf, label %bb.p, label %_ZN4llvm8AsmTokenD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN4llvm8AsmTokenD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #30
  br label %_ZN4llvm8AsmTokenD2Ev.exit

_ZN4llvm8AsmTokenD2Ev.exit:                       ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %.sroa.022.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorListERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %2 = alloca %"class.llvm::SMLoc", align 8       ; 11 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %4 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %6 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %8 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %10 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %12 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %14 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::SMLoc", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %33 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %34 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %35 = alloca %"class.std::unique_ptr.269", align 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.k = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.l = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #29 ; 10 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.o = load i64, ptr %i.n, align 8, !tbaa !59
  %i.p = and i64 %i.o, 4294967296
  %.not319 = icmp eq i64 %i.p, 0
  br i1 %.not319, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.r = load i32, ptr %i.q, align 8, !tbaa !327
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.t = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.u = tail call ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #29 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = tail call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser16tryParseRegisterEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext false) ; 9 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 51) #29 ; 3 uses
  %i.x = lshr i32 %i.v, 3                         ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  %i.z = load i16, ptr %i.y, align 2, !tbaa !102
  %i.aa = zext i16 %i.z to i32
  %.not.i = icmp samesign ult i32 %i.x, %i.aa
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %bb.d
  %i.ab = and i32 %i.v, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ae
  %i.ag = zext nneg i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !60
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 1, %i.ab
  %i.al = and i32 %i.ak, %i.aj
  %.not320 = icmp eq i32 %i.al, 0
  br i1 %.not320, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.am = call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorLaneERNS_12VectorLaneTyERjRN4llvm5SMLocE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !60
  switch i32 %i.ao, label %bb.q [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %.sroa.085.0.copyload = load ptr, ptr %2, align 8, !tbaa !81
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand9CreateRegEN4llvm10MCRegisterENS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias writable align 8 %4, i32 %i.v, ptr %i.l, ptr %.sroa.085.0.copyload, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.ap = load ptr, ptr %4, align 8, !tbaa !334
  store ptr %i.ap, ptr %3, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.aq = load ptr, ptr %3, align 8, !tbaa !49    ; 3 uses
  %.not.i164 = icmp eq ptr %i.aq, null
  br i1 %.not.i164, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i: ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %.sroa.082.0.copyload = load ptr, ptr %2, align 8, !tbaa !81
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand24CreateVectorListAllLanesEN4llvm10MCRegisterEjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.269") align 8 %6, i32 %i.v, i32 noundef 1, i1 noundef zeroext false, ptr %i.l, ptr %.sroa.082.0.copyload, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.au = load ptr, ptr %6, align 8, !tbaa !334
  store ptr %i.au, ptr %5, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.av = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %.not.i166 = icmp eq ptr %i.av, null
  br i1 %.not.i166, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit171, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i167

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i167: ; preds = %bb.h
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(48) %i.av) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit171

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit171: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i167, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.az = load i32, ptr %i.b, align 4, !tbaa !74
  %.sroa.079.0.copyload = load ptr, ptr %2, align 8, !tbaa !81
  %i.ba = ptrtoint ptr %.sroa.079.0.copyload to i64
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand23CreateVectorListIndexedEN4llvm10MCRegisterEjjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias writable align 8 %8, i32 %i.v, i32 noundef 1, i32 noundef %i.az, i1 noundef zeroext false, ptr %i.l, i64 %i.ba, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.bb = load ptr, ptr %8, align 8, !tbaa !334
  store ptr %i.bb, ptr %7, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.bc = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i172 = icmp eq ptr %i.bc, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit177, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i173

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i173: ; preds = %bb.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(48) %i.bc) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit177

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i173, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.q

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %bb.d, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.bg = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 69) #29 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !102
  %i.bj = zext i16 %i.bi to i32
  %.not.i178 = icmp samesign ult i32 %i.x, %i.bj
  br i1 %.not.i178, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread
  %i.bk = and i32 %i.v, 7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !103
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bn
  %i.bp = zext nneg i32 %i.x to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !60
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 1, %i.bk
  %i.bu = and i32 %i.bt, %i.bs
  %.not321 = icmp eq i32 %i.bu, 0
  br i1 %.not321, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val148 = load ptr, ptr %i.bv, align 8, !tbaa !311
  %i.bw = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %.val148, i32 %i.v, i32 noundef 1) #29 ; 3 uses
  %i.bx = call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorLaneERNS_12VectorLaneTyERjRN4llvm5SMLocE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !60
  switch i32 %i.bz, label %bb.q [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %.sroa.073.0.copyload = load ptr, ptr %2, align 8, !tbaa !81
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand9CreateRegEN4llvm10MCRegisterENS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias writable align 8 %10, i32 %i.bw, ptr %i.l, ptr %.sroa.073.0.copyload, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.ca = load ptr, ptr %10, align 8, !tbaa !334
  store ptr %i.ca, ptr %9, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.cb = load ptr, ptr %9, align 8, !tbaa !49    ; 3 uses
  %.not.i181 = icmp eq ptr %i.cb, null
  br i1 %.not.i181, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit186, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i182

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i182: ; preds = %bb.l
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(48) %i.cb) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit186

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit186: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i182, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !311
  %i.cg = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 67) #29
  %i.ch = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %i.cf, i32 %i.bw, i32 noundef 1, ptr noundef nonnull %i.cg) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %.sroa.068.0.copyload = load ptr, ptr %2, align 8, !tbaa !81
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand24CreateVectorListAllLanesEN4llvm10MCRegisterEjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.269") align 8 %12, i32 %i.ch, i32 noundef 2, i1 noundef zeroext false, ptr %i.l, ptr %.sroa.068.0.copyload, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.ci = load ptr, ptr %12, align 8, !tbaa !334
  store ptr %i.ci, ptr %11, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.cj = load ptr, ptr %11, align 8, !tbaa !49   ; 3 uses
  %.not.i187 = icmp eq ptr %i.cj, null
  br i1 %.not.i187, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit192, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i188

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i188: ; preds = %bb.m
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(48) %i.cj) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit192

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit192: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i188, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !74
  %.sroa.065.0.copyload = load ptr, ptr %2, align 8, !tbaa !81
  %i.co = ptrtoint ptr %.sroa.065.0.copyload to i64
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand23CreateVectorListIndexedEN4llvm10MCRegisterEjjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias writable align 8 %14, i32 %i.bw, i32 noundef 2, i32 noundef %i.cn, i1 noundef zeroext false, ptr %i.l, i64 %i.co, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.cp = load ptr, ptr %14, align 8, !tbaa !334
  store ptr %i.cp, ptr %13, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.cq = load ptr, ptr %13, align 8, !tbaa !49   ; 3 uses
  %.not.i193 = icmp eq ptr %i.cq, null
  br i1 %.not.i193, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit198, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i194

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i194: ; preds = %bb.n
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(48) %i.cq) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit198

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit198: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i194, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.q

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.cu = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1031 ; 17 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 -1, ptr %i.cv, align 8, !tbaa !55, !noalias !1031
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !56, !noalias !1031
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 0, ptr %i.cy, align 8, !tbaa !58, !noalias !1031
  store i8 0, ptr %i.cx, align 8, !tbaa !60, !noalias !1031
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.cu, align 8, !tbaa !34, !noalias !1031
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store i32 17, ptr %i.cz, align 8, !tbaa !71, !noalias !1031
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  store i64 0, ptr %i.dd, align 8, !noalias !1032
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !39, !noalias !1031
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  store i32 0, ptr %i.de, align 8, !tbaa !61, !noalias !1031
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 92
  store i32 8, ptr %i.df, align 4, !tbaa !62, !noalias !1031
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  store ptr %0, ptr %i.dg, align 8, !tbaa !329, !noalias !1031
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  store i32 %i.v, ptr %i.dh, align 8, !tbaa !74, !noalias !1032
  store ptr %i.l, ptr %i.da, align 8, !tbaa !81, !noalias !1032
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store ptr %i.u, ptr %i.di, align 8, !tbaa !81, !noalias !1032
  store ptr %i.cu, ptr %15, align 8, !tbaa !331
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !61 ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !62
  %.not.i.i.not.i = icmp ult i32 %i.dk, %i.do
  %.pre3.i = load ptr, ptr %1, align 8, !tbaa !39 ; 4 uses
  %i.dp = ptrtoint ptr %i.cu to i64               ; 2 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit, label %bb.o, !prof !95

bb.o:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.dl
  %i.dr = icmp uge ptr %15, %.pre3.i
  %i.ds = icmp ult ptr %15, %i.dq
  %spec.select.i.i.i.i.i = and i1 %i.dr, %i.ds
  br i1 %spec.select.i.i.i.i.i, label %bb.p, label %.critedge.i.i.i, !prof !332

bb.p:                                             ; preds = %bb.o
  %i.dt = ptrtoint ptr %15 to i64
  %i.du = ptrtoint ptr %.pre3.i to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dm)
  %i.dw = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.dv ; 2 uses
  %.pre399.a = load i64, ptr %i.dx, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

.critedge.i.i.i:                                  ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dm)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread, %bb.p, %.critedge.i.i.i
  %i.dy = phi i64 [ %i.dp, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread ], [ %.pre399.a, %bb.p ], [ %i.dp, %.critedge.i.i.i ]
  %i.dz = phi ptr [ %.pre3.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread ], [ %i.dw, %bb.p ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %15, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit180.thread ], [ %i.dx, %bb.p ], [ %15, %.critedge.i.i.i ]
  %i.ea = load i32, ptr %i.dj, align 8, !tbaa !61 ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb
  store i64 %i.dy, ptr %i.ec, align 8, !tbaa !49
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !49
  %i.ed = add i32 %i.ea, 1
  store i32 %i.ed, ptr %i.dj, align 8, !tbaa !61
  %i.ee = load ptr, ptr %15, align 8, !tbaa !49   ; 3 uses
  %.not.i199 = icmp eq ptr %i.ee, null
  br i1 %.not.i199, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit204, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i200

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i200: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(48) %i.ee) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit204

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit204: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i200, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit198, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit192, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit186, %bb.k, %bb.e, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit177, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit171, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit, %bb.f, %bb.c, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit204
  %.sroa.0292.2 = phi i32 [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit204 ], [ 2, %bb.c ], [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit177 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit171 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit ], [ 1, %bb.j ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit198 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit192 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit186 ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.bt

bb.r:                                             ; preds = %bb.b, %bb.a
  %i.ei = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !327
  %.not322 = icmp eq i32 %i.ej, 21
  br i1 %.not322, label %bb.s, label %bb.bt

bb.s:                                             ; preds = %bb.r
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 152
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.em(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29 ; 0 uses
  %i.eo = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.ep = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eo) #29
  %i.eq = tail call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser16tryParseRegisterEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext false) ; 12 uses
  %.not133 = icmp eq i32 %i.eq, 0
  br i1 %.not133, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.es, align 1, !tbaa !85
  store ptr @.str.692, ptr %16, align 8, !tbaa !60
  store i8 3, ptr %i.er, align 8, !tbaa !84
  %.val163 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.et = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val163, ptr %i.ep, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr null, ptr null) #29
  %i.eu = zext i1 %i.et to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.bt

bb.u:                                             ; preds = %bb.s
  %i.ev = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 256
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !59
  %i.ey = and i64 %i.ex, 4294967296
  %.not323 = icmp eq i64 %i.ey, 0
  br i1 %.not323, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ez = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 72) #29 ; 3 uses
  %i.fa = lshr i32 %i.eq, 3                       ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 18
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !102
  %i.fd = zext i16 %i.fc to i32
  %.not.i205 = icmp samesign ult i32 %i.fa, %i.fd
  br i1 %.not.i205, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207: ; preds = %bb.v
  %i.fe = and i32 %i.eq, 7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !103
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fh
  %i.fj = zext nneg i32 %i.fa to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !60
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 1, %i.fe
  %i.fo = and i32 %i.fn, %i.fm
  %.not324 = icmp eq i32 %i.fo, 0
  br i1 %.not324, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207.thread, label %bb.w

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207.thread: ; preds = %bb.v, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207
  %i.fp = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.fq = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fp) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.fr = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.fs, align 1, !tbaa !85
  store ptr @.str.747, ptr %17, align 8, !tbaa !60
  store i8 3, ptr %i.fr, align 8, !tbaa !84
  %.val162 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.ft = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val162, ptr %i.fq, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr null, ptr null) #29
  %i.fu = zext i1 %i.ft to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.bt

bb.w:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207, %bb.u
  %i.fv = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 256
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !59
  %i.fy = and i64 %i.fx, 4294967296
  %.not325 = icmp eq i64 %i.fy, 0
  br i1 %.not325, label %bb.x, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread

bb.x:                                             ; preds = %bb.w
  %i.fz = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 69) #29 ; 3 uses
  %i.ga = lshr i32 %i.eq, 3                       ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 18
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !102
  %i.gd = zext i16 %i.gc to i32
  %.not.i208 = icmp samesign ult i32 %i.ga, %i.gd
  br i1 %.not.i208, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210: ; preds = %bb.x
  %i.ge = and i32 %i.eq, 7
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !103
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gh
  %i.gj = zext nneg i32 %i.ga to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !60
  %i.gm = zext i8 %i.gl to i32
  %i.gn = shl nuw nsw i32 1, %i.ge
  %i.go = and i32 %i.gn, %i.gm
  %.not326 = icmp eq i32 %i.go, 0
  br i1 %.not326, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val147 = load ptr, ptr %i.gp, align 8, !tbaa !311
  %i.gq = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %.val147, i32 %i.eq, i32 noundef 1) #29 ; 2 uses
  %i.gr = add i32 %i.gq, 1
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread: ; preds = %bb.x, %bb.w, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210, %bb.y
  %.sroa.0257.0 = phi i32 [ %i.eq, %bb.w ], [ %i.gr, %bb.y ], [ %i.eq, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210 ], [ %i.eq, %bb.x ]
  %.sroa.041.0 = phi i32 [ %i.eq, %bb.w ], [ %i.gq, %bb.y ], [ %i.eq, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210 ], [ %i.eq, %bb.x ] ; 4 uses
  %.0128 = phi i32 [ 0, %bb.w ], [ 1, %bb.y ], [ 0, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210 ], [ 0, %bb.x ]
  %.0123 = phi i32 [ 1, %bb.w ], [ 2, %bb.y ], [ 1, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210 ], [ 1, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  store ptr null, ptr %18, align 8, !tbaa !323
  %i.gs = call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorLaneERNS_12VectorLaneTyERjRN4llvm5SMLocE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %28, i64 33
  %i.gx = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %30, i64 33
  %.pre = load i32, ptr %i.a, align 4             ; 5 uses
  %.pre398 = load i32, ptr %i.b, align 4          ; 4 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.preheader
  %.sroa.0257.1.ph.ph = phi i32 [ %.sroa.0257.0, %.preheader ], [ %.sroa.0257.4, %.outer.outer.backedge ]
  %.sroa.0292.3.ph.ph = phi i32 [ undef, %.preheader ], [ %.sroa.0292.8, %.outer.outer.backedge ] ; 2 uses
  %.1129.ph.ph = phi i32 [ %.0128, %.preheader ], [ %.6, %.outer.outer.backedge ]
  %.1124.ph.ph = phi i32 [ %.0123, %.preheader ], [ %.4127, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.split
  %.sroa.0257.1.ph = phi i32 [ %.sroa.0246.0, %.split ], [ %.sroa.0257.1.ph.ph, %.outer.outer ] ; 6 uses
  %.1129.ph = phi i32 [ %.2130, %.split ], [ %.1129.ph.ph, %.outer.outer ]
  %.1124.ph = phi i32 [ %i.lc, %.split ], [ %.1124.ph.ph, %.outer.outer ] ; 7 uses
  br label %bb.z

bb.z:                                             ; preds = %.outer, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread
  %.1129 = phi i32 [ %.2130, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread ], [ %.1129.ph, %.outer ] ; 9 uses
  %i.gz = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !327
  %i.hb = icmp eq i32 %i.ha, 26
  br i1 %i.hb, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !327
  %i.he = icmp eq i32 %i.hd, 13
  br i1 %i.he, label %.critedge, label %bb.bl

.critedge:                                        ; preds = %bb.z, %bb.aa
  %i.hf = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !327
  %i.hh = icmp eq i32 %i.hg, 13
  br i1 %i.hh, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %.critedge
  switch i32 %.1129, label %.fold.split [
    i32 0, label %bb.ad
    i32 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.hi = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.hj = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hi) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.hl, align 1, !tbaa !85
  store ptr @.str.748, ptr %19, align 8, !tbaa !60
  store i8 3, ptr %i.hk, align 8, !tbaa !84
  %.val161 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.hm = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val161, ptr %i.hj, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr null, ptr null) #29
  %i.hn = zext i1 %i.hm to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %.thread

.fold.split:                                      ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %.fold.split
  %.2130 = phi i32 [ 1, %bb.ab ], [ %.1129, %.fold.split ] ; 2 uses
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 152
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef nonnull align 8 dereferenceable(40) ptr %i.hq(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29 ; 0 uses
  %i.hs = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.ht = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hs) #29 ; 4 uses
  %i.hu = call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser16tryParseRegisterEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext false) ; 7 uses
  %.not142 = icmp eq i32 %i.hu, 0
  br i1 %.not142, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.hw, align 1, !tbaa !85
  store ptr @.str.692, ptr %20, align 8, !tbaa !60
  store i8 3, ptr %i.hv, align 8, !tbaa !84
  %.val160 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.hx = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val160, ptr %i.ht, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr null, ptr null) #29
  %i.hy = zext i1 %i.hx to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.hz = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 256
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !59
  %i.ic = and i64 %i.ib, 4294967296
  %.not334.a = icmp eq i64 %i.ic, 0
  br i1 %.not334.a, label %bb.ag, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread

bb.ag:                                            ; preds = %bb.af
  %i.id = call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 69) #29 ; 3 uses
  %i.ie = lshr i32 %i.hu, 3                       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 18
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !102
  %i.ih = zext i16 %i.ig to i32
  %.not.i211 = icmp samesign ult i32 %i.ie, %i.ih
  br i1 %.not.i211, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213: ; preds = %bb.ag
  %i.ii = and i32 %i.hu, 7
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !103
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.il
  %i.in = zext nneg i32 %i.ie to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !60
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 1, %i.ii
  %i.is = and i32 %i.ir, %i.iq
  %.not335 = icmp eq i32 %i.is, 0
  br i1 %.not335, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213
  %.val146 = load ptr, ptr %i.gu, align 8, !tbaa !311
  %i.it = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %.val146, i32 %i.hu, i32 noundef 1) #29
  %i.iu = add i32 %i.it, 1
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread: ; preds = %bb.ag, %bb.ah, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213, %bb.af
  %.sroa.0246.0 = phi i32 [ %i.hu, %bb.af ], [ %i.iu, %bb.ah ], [ %i.hu, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213 ], [ %i.hu, %bb.ag ] ; 8 uses
  %i.iv = icmp eq i32 %.sroa.0257.1.ph, %.sroa.0246.0
  br i1 %i.iv, label %bb.z, label %bb.ai, !llvm.loop !1030

bb.ai:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit213.thread
  %i.iw = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 256
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !59
  %i.iz = and i64 %i.iy, 4294967296
  %.not336 = icmp eq i64 %i.iz, 0
  br i1 %.not336, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ja = call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 72) #29 ; 3 uses
  %i.jb = lshr i32 %.sroa.0246.0, 3               ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 18
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !102
  %i.je = zext i16 %i.jd to i32
  %.not.i214 = icmp samesign ult i32 %i.jb, %i.je
  br i1 %.not.i214, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216: ; preds = %bb.aj
  %i.jf = and i32 %.sroa.0246.0, 7
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !103
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ji
  %i.jk = zext nneg i32 %i.jb to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !60
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 1, %i.jf
  %i.jp = and i32 %i.jo, %i.jn
  %.not337 = icmp eq i32 %i.jp, 0
  br i1 %.not337, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216, %bb.ai
  %i.jq = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 256
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !59
  %i.jt = and i64 %i.js, 4294967296
  %.not338 = icmp eq i64 %i.jt, 0
  br i1 %.not338, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ju = call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 51) #29 ; 3 uses
  %i.jv = lshr i32 %.sroa.0246.0, 3               ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 18
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !102
  %i.jy = zext i16 %i.jx to i32
  %.not.i217 = icmp samesign ult i32 %i.jv, %i.jy
  br i1 %.not.i217, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit219, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit219: ; preds = %bb.al
  %i.jz = and i32 %.sroa.0246.0, 7
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !103
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.kc
  %i.ke = zext nneg i32 %i.jv to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !60
  %i.kh = zext i8 %i.kg to i32
  %i.ki = shl nuw nsw i32 1, %i.jz
  %i.kj = and i32 %i.ki, %i.kh
  %.not339 = icmp eq i32 %i.kj, 0
  br i1 %.not339, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread, label %bb.am

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread: ; preds = %bb.al, %bb.aj, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit219, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.kk = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.kl, align 1, !tbaa !85
  store ptr @.str.749, ptr %21, align 8, !tbaa !60
  store i8 3, ptr %i.kk, align 8, !tbaa !84
  %.val159 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.km = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val159, ptr %i.ht, ptr noundef nonnull align 8 dereferenceable(34) %21, ptr null, ptr null) #29
  %i.kn = zext i1 %i.km to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %.thread

bb.am:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit219, %bb.ak
  %i.ko = icmp ugt i32 %.sroa.0257.1.ph, %.sroa.0246.0
  br i1 %i.ko, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.kp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.kq = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.kq, align 1, !tbaa !85
  store ptr @.str.750, ptr %22, align 8, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorListERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE:bb.a
  %i.mp = zext i16 %i.mo to i32
  %.not.i223 = icmp samesign ult i32 %i.ls, %i.mp
  br i1 %.not.i223, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225: ; preds = %bb.av
  %i.mq = and i32 %i.lj, 7
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !103
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mt
  %i.mv = zext nneg i32 %i.ls to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !60
  %i.my = zext i8 %i.mx to i32
  %i.mz = shl nuw nsw i32 1, %i.mq
  %i.na = and i32 %i.mz, %i.my
  %.not330 = icmp eq i32 %i.na, 0
  br i1 %.not330, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225
  switch i32 %.1129, label %.fold.split145 [
    i32 0, label %bb.ay
    i32 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.nb = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.nc, align 1, !tbaa !85
  store ptr @.str.752, ptr %26, align 8, !tbaa !60
  store i8 3, ptr %i.nb, align 8, !tbaa !84
  %.val154 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.nd = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val154, ptr %i.li, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr null, ptr null) #29
  %i.ne = zext i1 %i.nd to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %.thread

.fold.split145:                                   ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %.fold.split145
  %.3131 = phi i32 [ 1, %bb.aw ], [ %.1129, %.fold.split145 ]
  %.val = load ptr, ptr %i.gu, align 8, !tbaa !311
  %i.nf = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %.val, i32 %i.lj, i32 noundef 1) #29 ; 2 uses
  %i.ng = add i32 %.sroa.0257.1.ph, 1
  %.not331 = icmp eq i32 %i.nf, %i.ng
  br i1 %.not331, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %i.nh = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ni = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.ni, align 1, !tbaa !85
  store ptr @.str.753, ptr %27, align 8, !tbaa !60
  store i8 3, ptr %i.nh, align 8, !tbaa !84
  %.val153 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.nj = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val153, ptr %i.li, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr null, ptr null) #29
  %i.nk = zext i1 %i.nj to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %.thread

bb.ba:                                            ; preds = %bb.ay
  %i.nl = add i32 %i.nf, 1
  %i.nm = add i32 %.1124.ph, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.nn = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.no = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.nn) #29
  %i.np = call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorLaneERNS_12VectorLaneTyERjRN4llvm5SMLocE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.nr = load i32, ptr %i.e, align 4, !tbaa !60
  %.not136 = icmp eq i32 %i.nr, %.pre
  %i.ns = load i32, ptr %i.f, align 4
  %.not137 = icmp eq i32 %.pre398, %i.ns
  %or.cond455 = select i1 %.not136, i1 %.not137, i1 false
  br i1 %or.cond455, label %bb.bd, label %bb.bc, !llvm.loop !1030

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  store i8 1, ptr %i.gw, align 1, !tbaa !85
  store ptr @.str.751, ptr %28, align 8, !tbaa !60
  store i8 3, ptr %i.gv, align 8, !tbaa !84
  %.val152 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.nt = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val152, ptr %i.no, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr null, ptr null) #29
  %i.nu = zext i1 %i.nt to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.bc
  %.sroa.0292.6 = phi i32 [ %.sroa.0292.3.ph.ph, %bb.bb ], [ %i.nu, %bb.bc ], [ 1, %bb.ba ]
  %.2 = phi i32 [ 4, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.bk

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225.thread: ; preds = %bb.av, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225
  %.not138 = icmp eq i32 %.1129, 0
  br i1 %.not138, label %bb.be, label %.thread306

bb.be:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225.thread
  %i.nv = add i32 %.sroa.0257.1.ph, 2
  %i.nw = icmp eq i32 %i.lj, %i.nv
  %spec.select = select i1 %i.nw, i32 2, i32 1
  br label %.thread306

.thread306:                                       ; preds = %bb.be, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit222, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225.thread
  %.5 = phi i32 [ %.1129, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit225.thread ], [ %spec.select, %bb.be ], [ 1, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit222 ] ; 2 uses
  %i.nx = add i32 %.5, %.sroa.0257.1.ph
  %.not333 = icmp eq i32 %i.lj, %i.nx
  br i1 %.not333, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread306
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  %i.ny = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.nz = getelementptr inbounds nuw i8, ptr %29, i64 33
  store i8 1, ptr %i.nz, align 1, !tbaa !85
  store ptr @.str.753, ptr %29, align 8, !tbaa !60
  store i8 3, ptr %i.ny, align 8, !tbaa !84
  %.val151 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.oa = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val151, ptr %i.li, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr null, ptr null) #29
  %i.ob = zext i1 %i.oa to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %.thread

bb.bg:                                            ; preds = %.thread306
  %i.oc = add i32 %.1124.ph, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  %i.od = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.oe = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.od) #29
  %i.of = call fastcc i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorLaneERNS_12VectorLaneTyERjRN4llvm5SMLocE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.oh = load i32, ptr %i.g, align 4, !tbaa !60
  %.not139 = icmp eq i32 %i.oh, %.pre
  %i.oi = load i32, ptr %i.h, align 4
  %.not140 = icmp eq i32 %.pre398, %i.oi
  %or.cond456 = select i1 %.not139, i1 %.not140, i1 false
  br i1 %or.cond456, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  store i8 1, ptr %i.gy, align 1, !tbaa !85
  store ptr @.str.751, ptr %30, align 8, !tbaa !60
  store i8 3, ptr %i.gx, align 8, !tbaa !84
  %.val150 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.oj = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val150, ptr %i.oe, ptr noundef nonnull align 8 dereferenceable(34) %30, ptr null, ptr null) #29
  %i.ok = zext i1 %i.oj to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %bb.bi
  %.sroa.0292.7 = phi i32 [ %.sroa.0292.3.ph.ph, %bb.bh ], [ %i.ok, %bb.bi ], [ 1, %bb.bg ]
  %.3 = phi i32 [ 0, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bd
  %.sroa.0257.4 = phi i32 [ %i.lj, %bb.bj ], [ %i.nl, %bb.bd ]
  %.sroa.0292.8 = phi i32 [ %.sroa.0292.7, %bb.bj ], [ %.sroa.0292.6, %bb.bd ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.bj ], [ %.3131, %bb.bd ]
  %.4127 = phi i32 [ %i.oc, %bb.bj ], [ %i.nm, %bb.bd ]
  %.4 = phi i32 [ %.3, %bb.bj ], [ %.2, %bb.bd ]
  switch i32 %.4, label %.thread [
    i32 0, label %.outer.outer.backedge
    i32 4, label %.outer.outer.backedge
  ]

.outer.outer.backedge:                            ; preds = %bb.bk, %bb.bk
  br label %.outer.outer, !llvm.loop !1030

bb.bl:                                            ; preds = %bb.aa
  %i.ol = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !327
  %.not327 = icmp eq i32 %i.om, 22
  %i.on = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29 ; 2 uses
  br i1 %.not327, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oo = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.on) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  %i.op = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 1, ptr %i.oq, align 1, !tbaa !85
  store ptr @.str.754, ptr %31, align 8, !tbaa !60
  store i8 3, ptr %i.op, align 8, !tbaa !84
  %.val149 = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.or = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val149, ptr %i.oo, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr null, ptr null) #29
  %i.os = zext i1 %i.or to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %.thread

bb.bn:                                            ; preds = %bb.bl
  %i.ot = call ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.on) #29 ; 3 uses
  %i.ou = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 152
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = call noundef nonnull align 8 dereferenceable(40) ptr %i.ow(ptr noundef nonnull align 8 dereferenceable(243) %i.j) #29 ; 0 uses
  switch i32 %.pre, label %.thread [
    i32 0, label %bb.bo
    i32 1, label %bb.bo
    i32 2, label %bb.bs
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %i.oy = icmp eq i32 %.1124.ph, 2
  br i1 %i.oy, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.oz = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 256
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !59
  %i.pc = and i64 %i.pb, 4294967296
  %.not328 = icmp eq i64 %i.pc, 0
  br i1 %.not328, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pd = icmp eq i32 %.1129, 1
  %. = select i1 %i.pd, i32 67, i32 62
  %i.pe = call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef %.) #29
  %i.pf = load ptr, ptr %i.gu, align 8, !tbaa !311
  %i.pg = call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %i.pf, i32 %.sroa.041.0, i32 noundef 1, ptr noundef nonnull %i.pe) #29
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %.sroa.041.1 = phi i32 [ %.sroa.041.0, %bb.bp ], [ %i.pg, %bb.bq ], [ %.sroa.041.0, %bb.bo ] ; 2 uses
  %i.ph = icmp eq i32 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  %i.pi = icmp eq i32 %.1129, 2                   ; 2 uses
  br i1 %i.ph, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i227.a, label %call.0

call.0:                                           ; preds = %bb.br
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand24CreateVectorListAllLanesEN4llvm10MCRegisterEjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.269") align 8 %33, i32 %.sroa.041.1, i32 noundef %.1124.ph, i1 noundef zeroext %i.pi, ptr %i.l, ptr %i.ot, ptr noundef nonnull align 8 dereferenceable(1000) %0) #29, !callees !1033
  br label %_ZNSt10unique_ptrIN4llvm18MCParsedAsmOperandESt14default_deleteIS1_EED2Ev.exit228

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i227.a: ; preds = %bb.br
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand16CreateVectorListEN4llvm10MCRegisterEjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.269") align 8 %33, i32 %.sroa.041.1, i32 noundef %.1124.ph, i1 noundef zeroext %i.pi, ptr %i.l, ptr %i.ot, ptr noundef nonnull align 8 dereferenceable(1000) %0) #29, !callees !1033
  br label %_ZNSt10unique_ptrIN4llvm18MCParsedAsmOperandESt14default_deleteIS1_EED2Ev.exit228

_ZNSt10unique_ptrIN4llvm18MCParsedAsmOperandESt14default_deleteIS1_EED2Ev.exit228: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i227.a, %call.0
  %36 = load ptr, ptr %33, align 8, !tbaa !334
  store ptr %36, ptr %32, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %32)
  %i.pj = load ptr, ptr %32, align 8, !tbaa !49   ; 3 uses
  %.not.i229 = icmp eq ptr %i.pj, null
  br i1 %.not.i229, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit231, label %_ZNKSt14default_deleteIN12_GLOBAL__N_110ARMOperandEEclEPS1_.exit.i230

_ZNKSt14default_deleteIN12_GLOBAL__N_110ARMOperandEEclEPS1_.exit.i230: ; preds = %_ZNSt10unique_ptrIN4llvm18MCParsedAsmOperandESt14default_deleteIS1_EED2Ev.exit228
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !34
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(48) %i.pj) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit231

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit231: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_110ARMOperandEEclEPS1_.exit.i230, %_ZNSt10unique_ptrIN4llvm18MCParsedAsmOperandESt14default_deleteIS1_EED2Ev.exit228
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %.thread

bb.bs:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  %i.pn = icmp eq i32 %.1129, 2
  %i.po = ptrtoint ptr %i.ot to i64
  call fastcc void @_ZN12_GLOBAL__N_110ARMOperand23CreateVectorListIndexedEN4llvm10MCRegisterEjjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias writable align 8 %35, i32 %.sroa.041.0, i32 noundef %.1124.ph, i32 noundef %.pre398, i1 noundef zeroext %i.pn, ptr %i.l, i64 %i.po, ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.pp = load ptr, ptr %35, align 8, !tbaa !334
  store ptr %i.pp, ptr %34, align 8, !tbaa !331
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %34)
  %i.pq = load ptr, ptr %34, align 8, !tbaa !49   ; 3 uses
  %.not.i232 = icmp eq ptr %i.pq, null
  br i1 %.not.i232, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit237, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i233

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i233: ; preds = %bb.bs
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !34
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(48) %i.pq) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit237

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit237: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i233, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %.thread

.thread:                                          ; preds = %bb.bk, %bb.as, %bb.az, %bb.ax, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit222.thread, %bb.bf, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread, %bb.an, %bb.ae, %.split.thread, %bb.bn, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit231, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit237, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread, %bb.bm, %bb.ac
  %.sroa.0292.9 = phi i32 [ %.sroa.0292.4.ph, %.split.thread ], [ %i.hn, %bb.ac ], [ %i.ln, %bb.as ], [ %i.os, %bb.bm ], [ %i.hy, %bb.ae ], [ 1, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit210.thread ], [ 0, %bb.bn ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit237 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit231 ], [ %i.kn, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit216.thread ], [ %i.ks, %bb.an ], [ %i.ne, %bb.ax ], [ %i.nk, %bb.az ], [ %i.ml, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit222.thread ], [ %i.ob, %bb.bf ], [ %.sroa.0292.8, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.bt

bb.bt:                                            ; preds = %bb.t, %.thread, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207.thread, %bb.r, %bb.q
  %.sroa.0292.11 = phi i32 [ %.sroa.0292.2, %bb.q ], [ 2, %bb.r ], [ %i.eu, %bb.t ], [ %.sroa.0292.9, %.thread ], [ %i.fu, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit207.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.sroa.0292.11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseITCondCodeERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.b) #29
  %i.d = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #29 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.b) #29 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !327
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !59
  %i.i = tail call fastcc noundef i32 @_ZN4llvmL21ARMCondCodeFromStringENS_9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(243) %i.b) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1038 ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 -1, ptr %i.p, align 8, !tbaa !55, !noalias !1038
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !56, !noalias !1038
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.s, align 8, !tbaa !58, !noalias !1038
  store i8 0, ptr %i.r, align 8, !tbaa !60, !noalias !1038
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.o, align 8, !tbaa !34, !noalias !1038
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 0, ptr %i.t, align 8, !tbaa !71, !noalias !1038
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 0, ptr %i.x, align 8, !noalias !1039
  store ptr %i.w, ptr %i.v, align 8, !tbaa !39, !noalias !1038
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i32 0, ptr %i.y, align 8, !tbaa !61, !noalias !1038
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store i32 8, ptr %i.z, align 4, !tbaa !62, !noalias !1038
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store ptr %0, ptr %i.aa, align 8, !tbaa !329, !noalias !1038
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i32 %i.i, ptr %i.ab, align 8, !tbaa !60, !noalias !1039
  store ptr %i.d, ptr %i.u, align 8, !tbaa !81, !noalias !1039
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr %i.d, ptr %i.ac, align 8, !tbaa !81, !noalias !1039
  store ptr %i.o, ptr %2, align 8, !tbaa !331
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61 ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !62
  %.not.i.i.not.i = icmp ult i32 %i.ae, %i.ai
  %.pre3.i = load ptr, ptr %1, align 8, !tbaa !39 ; 4 uses
  %i.aj = ptrtoint ptr %i.o to i64                ; 2 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit, label %bb.d, !prof !95

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.af
  %i.al = icmp uge ptr %2, %.pre3.i
  %i.am = icmp ult ptr %2, %i.ak
  %spec.select.i.i.i.i.i = and i1 %i.al, %i.am
  br i1 %spec.select.i.i.i.i.i, label %bb.e, label %.critedge.i.i.i, !prof !332

bb.e:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %2 to i64
  %i.ao = ptrtoint ptr %.pre3.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ag)
  %i.aq = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ap ; 2 uses
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

.critedge.i.i.i:                                  ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ag)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit: ; preds = %bb.c, %bb.e, %.critedge.i.i.i
  %i.as = phi i64 [ %i.aj, %bb.c ], [ %.pre, %bb.e ], [ %i.aj, %.critedge.i.i.i ]
  %i.at = phi ptr [ %.pre3.i, %bb.c ], [ %i.aq, %bb.e ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %2, %bb.c ], [ %i.ar, %bb.e ], [ %2, %.critedge.i.i.i ]
  %i.au = load i32, ptr %i.ad, align 8, !tbaa !61 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  store i64 %i.as, ptr %i.aw, align 8, !tbaa !49
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !49
  %i.ax = add i32 %i.au, 1
  store i32 %i.ax, ptr %i.ad, align 8, !tbaa !61
  %i.ay = load ptr, ptr %2, align 8, !tbaa !49    ; 3 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(48) %i.ay) #29, !inline_history !7
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit
  %.sroa.012.0 = phi i32 [ 2, %bb.a ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_110ARMOperandESt14default_deleteIS1_EED2Ev.exit ], [ 2, %bb.b ]
  ret i32 %.sroa.012.0
}

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm12ARMBankedReg21lookupBankedRegByNameENS_9StringRefE(ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110ARMOperand14CreateBitfieldEjjN4llvm5SMLocES2_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, i32 noundef range(i32 0, 32) %1, i32 noundef range(i32 1, 33) %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(1000) %5) unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1042 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -1, ptr %i.b, align 8, !tbaa !55, !noalias !1042
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !56, !noalias !1042
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !58, !noalias !1042
  store i8 0, ptr %i.d, align 8, !tbaa !60, !noalias !1042
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.a, align 8, !tbaa !34, !noalias !1042
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 33, ptr %i.f, align 8, !tbaa !71, !noalias !1042
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.j, align 8
  store ptr %i.i, ptr %i.h, align 8, !tbaa !39, !noalias !1042
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.k, align 8, !tbaa !61, !noalias !1042
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 8, ptr %i.l, align 4, !tbaa !62, !noalias !1042
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %5, ptr %i.m, align 8, !tbaa !329, !noalias !1042
  store ptr %i.a, ptr %0, align 8, !tbaa !334, !alias.scope !1042
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 %1, ptr %i.n, align 8, !tbaa !60
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112ARMAsmParser22parseMemRegOffsetShiftERN4llvm6ARM_AM8ShiftOpcERj:bb.a
  br i1 %or.cond4, label %bb.o, label %.thread221

bb.n:                                             ; preds = %bb.l
  %.old3 = icmp samesign ugt i64 %i.fi, 32
  br i1 %.old3, label %bb.o, label %.thread221

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.n, %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.fs, align 1, !tbaa !85
  store ptr @.str.737, ptr %7, align 8, !tbaa !60
  store i8 3, ptr %i.fr, align 8, !tbaa !84
  %.val = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.ft = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %i.ep, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.thread226

.thread221:                                       ; preds = %bb.k, %bb.n, %bb.m
  %i.fu = icmp eq i64 %i.fi, 0
  br i1 %i.fu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread221
  store i32 2, ptr %1, align 4, !tbaa !417
  br label %bb.q

.thread226:                                       ; preds = %bb.e, %bb.g, %bb.o
  %.2.ph = phi i1 [ %i.ft, %bb.o ], [ %i.fg, %bb.g ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.r

bb.q:                                             ; preds = %.thread221, %bb.p
  %i.fv = icmp eq i64 %i.fi, 32
  %i.fw = trunc i64 %i.fi to i32
  %i.fx = select i1 %i.fv, i32 0, i32 %i.fw
  store i32 %i.fx, ptr %2, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %bb.q, %.thread226, %.thread223, %_ZN4llvmeqENS_9StringRefES0_.exit152.thread219, %bb.b
  %.5 = phi i1 [ %i.j, %bb.b ], [ %i.ev, %.thread223 ], [ %.2.ph, %.thread226 ], [ %i.ei, %_ZN4llvmeqENS_9StringRefES0_.exit152.thread219 ], [ false, %bb.q ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN12_GLOBAL__N_112ARMAsmParser15parseVectorLaneERNS_12VectorLaneTyERjRN4llvm5SMLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1000) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 16 uses
  store i32 0, ptr %2, align 4, !tbaa !74
  %i.d = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.e = load i32, ptr %i.d, align 8, !tbaa !327
  %i.f = icmp eq i32 %i.e, 19
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.l = load i32, ptr %i.k, align 8, !tbaa !327
  %i.m = icmp eq i32 %i.l, 20
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4, !tbaa !60
  %i.n = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.o = tail call ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29
  store ptr %i.o, ptr %3, align 8, !tbaa !81
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29 ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.t = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.u = load i32, ptr %i.t, align 8, !tbaa !327
  %i.v = icmp eq i32 %i.u, 38
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.aa = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.ab = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #29 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.ad = call noundef zeroext i1 @_ZN4llvm11MCAsmParser15parseExpressionERPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(243) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !85
  store ptr @.str.700, ptr %4, align 8, !tbaa !60
  store i8 3, ptr %i.ae, align 8, !tbaa !84
  %.val35 = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.ag = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val35, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !415 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !401
  %.not = icmp eq i8 %i.ai, 1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !85
  store ptr @.str.755, ptr %5, align 8, !tbaa !60
  store i8 3, ptr %i.aj, align 8, !tbaa !84
  %.val34 = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.al = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val34, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.am = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.an = load i32, ptr %i.am, align 8, !tbaa !327
  %.not37 = icmp eq i32 %i.an, 20
  %i.ao = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29 ; 2 uses
  br i1 %.not37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !85
  store ptr @.str.756, ptr %6, align 8, !tbaa !60
  store i8 3, ptr %i.aq, align 8, !tbaa !84
  %.val33 = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.as = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val33, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.at = call ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #29
  store ptr %i.at, ptr %3, align 8, !tbaa !81
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !403 ; 2 uses
  %or.cond = icmp ugt i64 %i.az, 7
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #29
  %i.bb = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !85
  store ptr @.str.757, ptr %7, align 8, !tbaa !60
  store i8 3, ptr %i.bc, align 8, !tbaa !84
  %.val = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.be = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bf = trunc nuw nsw i64 %i.az to i32
  store i32 %i.bf, ptr %2, align 4, !tbaa !74
  store i32 2, ptr %1, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.k, %bb.n, %bb.m, %bb.g
  %.sroa.0.0.shrunk = phi i1 [ %i.ag, %bb.g ], [ %i.al, %bb.i ], [ %i.as, %bb.k ], [ %i.be, %bb.m ], [ false, %bb.n ]
  %.sroa.0.0 = zext i1 %.sroa.0.0.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.c
  %.sroa.0.1 = phi i32 [ 0, %bb.c ], [ %.sroa.0.0, %bb.o ], [ 0, %bb.p ]
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110ARMOperand24CreateVectorListAllLanesEN4llvm10MCRegisterEjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.269") align 8 captures(none) initializes((0, 8)) %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(1000) %6) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %i.b = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1063 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 -1, ptr %i.c, align 8, !tbaa !55, !noalias !1063
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !56, !noalias !1063
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !58, !noalias !1063
  store i8 0, ptr %i.e, align 8, !tbaa !60, !noalias !1063
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.b, align 8, !tbaa !34, !noalias !1063
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 25, ptr %i.g, align 8, !tbaa !71, !noalias !1063
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.k, align 8
  store ptr %i.j, ptr %i.i, align 8, !tbaa !39, !noalias !1063
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.l, align 8, !tbaa !61, !noalias !1063
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 8, ptr %i.m, align 4, !tbaa !62, !noalias !1063
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %6, ptr %i.n, align 8, !tbaa !329, !noalias !1063
  store ptr %i.b, ptr %0, align 8, !tbaa !334, !alias.scope !1063
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %1, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %2, ptr %i.p, align 4, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 %i.a, ptr %i.q, align 4, !tbaa !60
  store ptr %4, ptr %i.h, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %5, ptr %i.r, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110ARMOperand23CreateVectorListIndexedEN4llvm10MCRegisterEjjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, i32 %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr %5, i64 %6, ptr noundef nonnull align 8 dereferenceable(1000) %7) unnamed_addr #3 align 2 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr
  %i.b = zext i1 %4 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.c = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1066 ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 -1, ptr %i.d, align 8, !tbaa !55, !noalias !1066
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !56, !noalias !1066
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.g, align 8, !tbaa !58, !noalias !1066
  store i8 0, ptr %i.f, align 8, !tbaa !60, !noalias !1066
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.c, align 8, !tbaa !34, !noalias !1066
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 26, ptr %i.h, align 8, !tbaa !71, !noalias !1066
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.l, align 8
  store ptr %i.k, ptr %i.j, align 8, !tbaa !39, !noalias !1066
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.m, align 8, !tbaa !61, !noalias !1066
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 8, ptr %i.n, align 4, !tbaa !62, !noalias !1066
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %7, ptr %i.o, align 8, !tbaa !329, !noalias !1066
  store ptr %i.c, ptr %0, align 8, !tbaa !334, !alias.scope !1066
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i32 %1, ptr %i.p, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 %2, ptr %i.q, align 4, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %3, ptr %i.r, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i8 %i.b, ptr %i.s, align 4, !tbaa !60
  store ptr %5, ptr %i.i, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.a, ptr %i.t, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110ARMOperand16CreateVectorListEN4llvm10MCRegisterEjbNS1_5SMLocES3_RNS_12ARMAsmParserE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.269") align 8 captures(none) initializes((0, 8)) %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(1000) %6) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %i.b = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1069 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 -1, ptr %i.c, align 8, !tbaa !55, !noalias !1069
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !56, !noalias !1069
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !58, !noalias !1069
  store i8 0, ptr %i.e, align 8, !tbaa !60, !noalias !1069
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.b, align 8, !tbaa !34, !noalias !1069
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 24, ptr %i.g, align 8, !tbaa !71, !noalias !1069
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.k, align 8
  store ptr %i.j, ptr %i.i, align 8, !tbaa !39, !noalias !1069
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.l, align 8, !tbaa !61, !noalias !1069
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 8, ptr %i.m, align 4, !tbaa !62, !noalias !1069
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %6, ptr %i.n, align 8, !tbaa !329, !noalias !1069
  store ptr %i.b, ptr %0, align 8, !tbaa !334, !alias.scope !1069
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %1, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %2, ptr %i.p, align 4, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 %i.a, ptr %i.q, align 4, !tbaa !60
  store ptr %4, ptr %i.h, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %5, ptr %i.r, align 8, !tbaa !81
  ret void
}

declare i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240), i32, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243), ptr noundef nonnull align 8 dereferenceable(34), ptr, ptr) local_unnamed_addr #5

declare noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110ARMOperand9CreateMemEN4llvm10MCRegisterEPKNS1_6MCExprES2_NS1_6ARM_AM8ShiftOpcEjjbNS1_5SMLocES8_RNS_12ARMAsmParserES8_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, i32 %1, ptr noundef %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 33) %6, i1 noundef zeroext %7, i64 %8, i64 %9, ptr noundef nonnull align 8 dereferenceable(1000) %10, i64 %11) unnamed_addr #3 align 2 {
bb.a:
  %i.a = inttoptr i64 %8 to ptr
  %i.b = inttoptr i64 %9 to ptr
  %i.c = inttoptr i64 %11 to ptr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.d = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31, !noalias !1072 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.e, align 8, !tbaa !55, !noalias !1072
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !56, !noalias !1072
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !58, !noalias !1072
  store i8 0, ptr %i.g, align 8, !tbaa !60, !noalias !1072
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_110ARMOperandE, i64 16), ptr %i.d, align 8, !tbaa !34, !noalias !1072
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 11, ptr %i.i, align 8, !tbaa !71, !noalias !1072
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.l, ptr %i.k, align 8, !tbaa !39, !noalias !1072
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.m, align 8, !tbaa !61, !noalias !1072
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  store i32 8, ptr %i.n, align 4, !tbaa !62, !noalias !1072
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %10, ptr %i.o, align 8, !tbaa !329, !noalias !1072
  store ptr %i.d, ptr %0, align 8, !tbaa !334, !alias.scope !1072
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i32 %1, ptr %i.p, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %2, ptr %i.q, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i32 %3, ptr %i.r, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  store i32 %4, ptr %i.s, align 4, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i32 %5, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  store i32 %6, ptr %i.u, align 4, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.w = zext i1 %7 to i8
  store i8 %i.w, ptr %i.v, align 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.b, ptr %i.x, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.c, ptr %i.y, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE18growAndEmplaceBackIJRiRS2_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !74
  %i.b = load i32, ptr %2, align 4, !tbaa !74
  %.sroa.2.0.insert.ext = zext i32 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.insert.insert)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !61
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !39
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = load i32, ptr %i.a, align 8, !tbaa !61
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !61
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE18growAndEmplaceBackIJRjRS2_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !74
  %i.b = load i32, ptr %2, align 4, !tbaa !74
  %.sroa.2.0.insert.ext = zext i32 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.insert.insert)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !61
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_10MCRegisterEELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !39
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
end_hunk_2
