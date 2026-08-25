Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimpleSValBuilder?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpLNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_3LocENS4_6NonLocENS3_8QualTypeE:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66, !nonnull !38, !align !39
  %i.db = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.da, i64 %i.cy) #17 ; 2 uses
  %i.dc = load i32, ptr %i.cs, align 8, !tbaa !60 ; 4 uses
  %i.dd = icmp ult i32 %i.dc, 65
  br i1 %i.dd, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.ab

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %_ZN4llvm6APSIntC2Ejb.exit
  %i.de = sub nsw i32 0, %i.dc
  %i.df = and i32 %i.de, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = lshr i64 -1, %i.dg
  %i.di = icmp eq i32 %i.dc, 0
  %spec.select.i.i = select i1 %i.di, i64 0, i64 %i.dh, !prof !632
  %i.dj = and i64 %spec.select.i.i, %i.db
  store i64 %i.dj, ptr %13, align 8, !tbaa !46
  br label %_ZN4llvm6APSIntaSEm.exit

bb.ab:                                            ; preds = %_ZN4llvm6APSIntC2Ejb.exit
  %i.dk = load ptr, ptr %13, align 8, !tbaa !46
  store i64 %i.db, ptr %i.dk, align 8, !tbaa !633
  %i.dl = load ptr, ptr %13, align 8, !tbaa !46
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = zext i32 %i.dc to i64
  %i.do = add nuw nsw i64 %i.dn, 63
  %sh.diff.i.i = lshr i64 %i.do, 3
  %i.dp = add nuw nsw i64 %sh.diff.i.i, 4294967288
  %i.dq = and i64 %i.dp, 4294967288
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.dq, i1 false)
  br label %_ZN4llvm6APSIntaSEm.exit

_ZN4llvm6APSIntaSEm.exit:                         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.ab
  %i.dr = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %11, ptr noundef nonnull align 8 dereferenceable(13) %13) #17 ; 0 uses
  %i.ds = icmp eq i32 %2, 5
  br i1 %i.ds, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZN4llvm6APSIntaSEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZNK4llvm6APSIntplERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %14, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.0.copyload.i.i.i.i167, ptr noundef nonnull align 8 dereferenceable(13) %11)
  %i.dt = load i32, ptr %i.ch, align 8, !tbaa !60
  %i.du = icmp ult i32 %i.dt, 65
  br i1 %i.du, label %_ZN4llvm5APIntD2Ev.exit171, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN4llvm5APIntD2Ev.exit171, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #18
  br label %_ZN4llvm5APIntD2Ev.exit171

_ZN4llvm5APIntD2Ev.exit171:                       ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dx = load i64, ptr %14, align 8
  store i64 %i.dx, ptr %11, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !60
  store i32 %i.dz, ptr %i.ch, align 8, !tbaa !60
  store i32 0, ptr %i.dy, align 8, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !62, !range !65, !noundef !38
  store i8 %i.eb, ptr %i.ci, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ai

bb.af:                                            ; preds = %_ZN4llvm6APSIntaSEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @_ZNK4llvm6APSIntmiERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %15, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.0.copyload.i.i.i.i167, ptr noundef nonnull align 8 dereferenceable(13) %11)
  %i.ec = load i32, ptr %i.ch, align 8, !tbaa !60
  %i.ed = icmp ult i32 %i.ec, 65
  br i1 %i.ed, label %_ZN4llvm5APIntD2Ev.exit173, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN4llvm5APIntD2Ev.exit173, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #18
  br label %_ZN4llvm5APIntD2Ev.exit173

_ZN4llvm5APIntD2Ev.exit173:                       ; preds = %bb.ah, %bb.ag, %bb.af
  %i.eg = load i64, ptr %15, align 8
  store i64 %i.eg, ptr %11, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !60
  store i32 %i.ei, ptr %i.ch, align 8, !tbaa !60
  store i32 0, ptr %i.eh, align 8, !tbaa !60
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !62, !range !65, !noundef !38
  store i8 %i.ek, ptr %i.ci, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit173, %_ZN4llvm5APIntD2Ev.exit171
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %i.el, ptr noundef nonnull align 8 dereferenceable(13) %11) #17
  %i.en = load i32, ptr %i.cs, align 8, !tbaa !60
  %i.eo = icmp ugt i32 %i.en, 64
  br i1 %i.eo, label %bb.aj, label %_ZN4llvm5APIntD2Ev.exit174

bb.aj:                                            ; preds = %bb.ai
  %i.ep = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN4llvm5APIntD2Ev.exit174, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.ep) #18
  br label %_ZN4llvm5APIntD2Ev.exit174

_ZN4llvm5APIntD2Ev.exit174:                       ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.er = load i32, ptr %i.ch, align 8, !tbaa !60
  %i.es = icmp ugt i32 %i.er, 64
  br i1 %i.es, label %bb.al, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit

bb.al:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit174
  %i.et = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.et) #18
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit

_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit174, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit195

bb.an:                                            ; preds = %bb.s, %bb.t
  %i.ev = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %8) #17 ; 8 uses
  %.not = icmp eq ptr %i.ev, null
  br i1 %.not, label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit195, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.048.0.copyload = load ptr, ptr %5, align 8, !tbaa !14
  %.sroa.249.0.copyload = load i8, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !15
  %i.ew = call { ptr, i8 } @_ZN5clang4ento11SValBuilder19convertToArrayIndexENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr %.sroa.048.0.copyload, i8 %.sroa.249.0.copyload) #17 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i8 } %i.ew, 0 ; 3 uses
  %.fca.1.extract45 = extractvalue { ptr, i8 } %i.ew, 1 ; 3 uses
  store ptr %.fca.0.extract44, ptr %5, align 8
  store i8 %.fca.1.extract45, ptr %.sroa.265.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !580 ; 2 uses
  %.not316 = icmp eq i32 %i.ey, 24
  br i1 %.not316, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ez = load ptr, ptr %1, align 8, !tbaa !10    ; 3 uses
  store ptr %i.ez, ptr %16, align 8, !tbaa !10
  %.not.i.i178 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i178, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit179, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ez) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit179

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit179: ; preds = %bb.ap, %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fa, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sroa.0.0.copyload.i180 = load i64, ptr %i.fb, align 8, !tbaa !46
  %i.fc = load ptr, ptr %0, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call { ptr, i8 } %i.fe(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %2, ptr %.sroa.0.0.copyload.i, i8 %.sroa.2.0.copyload.i, ptr noundef nonnull byval(%"class.clang::ento::NonLoc") align 8 %5, i64 %.sroa.0.0.copyload.i180) #17 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i8 } %i.ff, 0
  %.fca.1.extract24 = extractvalue { ptr, i8 } %i.ff, 1
  %i.fg = load ptr, ptr %16, align 8, !tbaa !10   ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i181, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit179
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fg) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit179, %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !587
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %.sroa.0.0.copyload.i183 = load i64, ptr %i.fj, align 8, !tbaa !46
  br label %bb.ax

bb.as:                                            ; preds = %bb.ao
  %i.fk = icmp sgt i32 %i.ey, 8
  br i1 %i.fk, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fl = icmp eq i32 %2, 5
  br i1 %i.fl, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = call { ptr, i8 } @_ZN5clang4ento11SValBuilder9evalMinusENS0_6NonLocE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr %.fca.0.extract44, i8 %.fca.1.extract45) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fm, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fm, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.sroa.018.0 = phi ptr [ %.fca.0.extract, %bb.au ], [ %.fca.0.extract44, %bb.at ] ; 2 uses
  %.sroa.5.0 = phi i8 [ %.fca.1.extract, %bb.au ], [ %.fca.1.extract45, %bb.at ] ; 2 uses
  %i.fn = and i64 %6, -16
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load ptr, ptr %i.fo, align 16, !tbaa !40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.fq, align 8, !tbaa !46
  %i.fr = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load ptr, ptr %i.fs, align 16, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.fu, align 16
  switch i8 %i.fv, label %bb.ax [
    i8 40, label %bb.aw
    i8 31, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.fw = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fp) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.as, %bb.aw, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182
  %.sroa.0203.0 = phi i64 [ %i.fw, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.as ], [ %.sroa.0.0.copyload.i183, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182 ] ; 3 uses
  %.sroa.0207.0 = phi ptr [ %.sroa.018.0, %bb.aw ], [ %.sroa.018.0, %bb.av ], [ null, %bb.as ], [ %.fca.0.extract23, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182 ]
  %.sroa.6208.0 = phi i8 [ %.sroa.5.0, %bb.aw ], [ %.sroa.5.0, %bb.av ], [ 1, %bb.as ], [ %.fca.1.extract24, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182 ] ; 2 uses
  %.0118 = phi ptr [ %i.ev, %bb.aw ], [ %i.ev, %bb.av ], [ null, %bb.as ], [ %i.fi, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182 ]
  %i.fx = and i64 %.sroa.0203.0, -16
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !40
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !46
  %i.gb = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = load ptr, ptr %i.gc, align 16, !tbaa !40 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 16
  %i.gg = icmp eq i8 %i.gf, 13
  %.not7.i.i = icmp ne ptr %i.gd, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.gg
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.ax
  %i.gh = load i32, ptr %i.ge, align 16
  %i.gi = and i32 %i.gh, 536346624
  %i.gj = icmp eq i32 %i.gi, 236978176
  br i1 %i.gj, label %bb.ay, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

bb.ay:                                            ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !66, !nonnull !38, !align !39
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 18912
  %.sroa.0.0.copyload.i188 = load i64, ptr %i.gm, align 8, !tbaa !46
  br label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit.thread:        ; preds = %bb.ax, %bb.ay, %_ZNK5clang4Type10isVoidTypeEv.exit
  %.sroa.0203.1 = phi i64 [ %.sroa.0.0.copyload.i188, %bb.ay ], [ %.sroa.0203.0, %_ZNK5clang4Type10isVoidTypeEv.exit ], [ %.sroa.0203.0, %bb.ax ]
  %i.gn = add i8 %.sroa.6208.0, -5
  %spec.select.i.i.i.i.i191 = icmp ult i8 %i.gn, 6
  br i1 %spec.select.i.i.i.i.i191, label %bb.az, label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit195

bb.az:                                            ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !66, !nonnull !38, !align !39
  %i.gr = call noundef ptr @_ZN5clang4ento16MemRegionManager16getElementRegionENS_8QualTypeENS0_6NonLocEPKNS0_9SubRegionERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(152) %i.go, i64 %.sroa.0203.1, ptr %.sroa.0207.0, i8 %.sroa.6208.0, ptr noundef %.0118, ptr noundef nonnull align 8 dereferenceable(23904) %i.gq) #17
  br label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit195

_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit195: ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread, %bb.p, %bb.r, %_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit, %bb.az, %bb.an, %.thread267, %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15PointerToMemberEEESt8optionalIT_Ev.exit
  %.sroa.093.12 = phi ptr [ %.sroa.093.0.copyload94, %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15PointerToMemberEEESt8optionalIT_Ev.exit ], [ %.sroa.093.4, %.thread267 ], [ %.sroa.093.0.copyload95, %bb.p ], [ %.sroa.093.0.copyload96, %bb.r ], [ %i.em, %_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit ], [ %i.gr, %bb.az ], [ null, %bb.an ], [ null, %_ZNK5clang4Type10isVoidTypeEv.exit.thread ]
  %.sroa.10.12 = phi i8 [ %.sroa.10.0.copyload101, %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15PointerToMemberEEESt8optionalIT_Ev.exit ], [ %.sroa.10.4, %.thread267 ], [ %.sroa.10.0.copyload103, %bb.p ], [ %.sroa.10.0.copyload105, %bb.r ], [ 2, %_ZNK5clang4ento4SVal5getAsINS0_6nonloc11ConcreteIntEEESt8optionalIT_Ev.exit ], [ 4, %bb.az ], [ 1, %bb.an ], [ 1, %_ZNK5clang4Type10isVoidTypeEv.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.093.12, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.10.12, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder13getKnownValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr %2, i8 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::ento::SVal", align 8 ; 5 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 5 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread: ; preds = %bb.a
  store ptr null, ptr %6, align 8, !tbaa !10
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #17
  %.pr = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  store ptr %.pr, ptr %6, align 8, !tbaa !10
  %.not.i.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i.i7, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call { ptr, i8 } %i.d(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr %2, i8 %3) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.e, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.e, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.fca.0.extract, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.fca.1.extract, ptr %i.f, align 8
  %i.g = and i8 %.fca.1.extract, -5
  %i.h = icmp ne i8 %i.g, 2
  %.not.not11.i = icmp eq ptr %.fca.0.extract, null
  %.not.not.i = select i1 %i.h, i1 true, i1 %.not.not11.i
  br i1 %.not.not.i, label %bb.c, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8
  %i.i = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %4, i1 noundef zeroext false) #17 ; 2 uses
  %.not8.not.i = icmp eq ptr %i.i, null
  br i1 %.not8.not.i, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102  ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !10
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #17
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.i) #17, !inline_history !104 ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !10     ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i9.i, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #17
  br label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8, %bb.c, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.d
  %.2.i = phi ptr [ %.fca.0.extract, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit8 ], [ null, %bb.c ], [ %i.q, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = load ptr, ptr %6, align 8, !tbaa !10     ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.s, null
  br i1 %.not.i.i9, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit, %bb.e
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit11, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit11

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit11: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.f
  ret ptr %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder11getMinValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr %2, i8 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::ento::SVal", align 8 ; 3 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 3 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call { ptr, i8 } %i.e(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr %2, i8 %3) #17 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.f, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.f, 1 ; 2 uses
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !14
  store i8 %.fca.1.extract, ptr %i.a, align 8, !tbaa !15
  %i.g = load ptr, ptr %5, align 8, !tbaa !10     ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.g, null
  br i1 %.not.i.i16, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.c
  %i.h = and i8 %.fca.1.extract, -5
  %i.i = icmp ne i8 %i.h, 2
  %.not.not24 = icmp eq ptr %.fca.0.extract, null
  %.not.not = select i1 %i.i, i1 true, i1 %.not.not24
  br i1 %.not.not, label %bb.d, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.j = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %4, i1 noundef zeroext false) #17 ; 2 uses
  %.not15.not = icmp eq ptr %i.j, null
  br i1 %.not15.not, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit18

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit18: ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102  ; 2 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !10
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #17
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.j) #17 ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !10     ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.t, null
  br i1 %.not.i.i19, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20, label %bb.e
end_hunk_0
begin_hunk_1_@_ZL20doRearrangeUncheckedN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS1_18BinaryOperatorKindEPKNS2_7SymExprENS_6APSIntES9_SA_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 7 uses
  store i32 1, ptr %i.an, align 8, !tbaa !60
  store i64 0, ptr %17, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 3 uses
  store i8 0, ptr %i.ao, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !62, !range !65, !noundef !38
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(13) %5) #19
  br label %_ZNK4llvm6APSIntgtERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.at = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(13) %5) #19
  br label %_ZNK4llvm6APSIntgtERKS0_.exit

_ZNK4llvm6APSIntgtERKS0_.exit:                    ; preds = %bb.g, %bb.h
  %.in.i = phi i32 [ %i.as, %bb.g ], [ %i.at, %bb.h ]
  %i.au = icmp sgt i32 %.in.i, 0
  br i1 %i.au, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %_ZNK4llvm6APSIntgtERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 6, ptr %i.f, align 4, !tbaa !745
  %i.av = call noundef ptr @_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJRS6_NS_18BinaryOperatorKindES9_RNS_8QualTypeEEEEPKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %i.av, ptr %i.d, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !745
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr @switch.table._ZL20doRearrangeUncheckedN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS1_18BinaryOperatorKindEPKNS2_7SymExprENS_6APSIntES9_SA_, i64 %i.ax
  %switch.gep = getelementptr i8, ptr %i.ay, i64 -10
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.e, align 4, !tbaa !745
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !60, !noalias !746 ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !60, !noalias !746
  %i.bc = icmp ult i32 %i.bb, 65
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %switch.lookup
  %i.bd = load i64, ptr %3, align 8, !tbaa !46, !noalias !746
  store i64 %i.bd, ptr %12, align 8, !tbaa !46, !noalias !746
  br label %_ZNK4llvm6APSIntmiERKS0_.exit

bb.j:                                             ; preds = %switch.lookup
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(13) %3) #17, !noalias !746
  br label %_ZNK4llvm6APSIntmiERKS0_.exit

_ZNK4llvm6APSIntmiERKS0_.exit:                    ; preds = %bb.i, %bb.j
  %i.be = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(13) %5) #17, !noalias !749 ; 0 uses
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !60, !noalias !749
  %i.bg = load i64, ptr %12, align 8, !noalias !749
  %i.bh = load i8, ptr %i.ap, align 4, !tbaa !62, !range !65, !noalias !746, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bi = load i32, ptr %i.an, align 8, !tbaa !60
  %i.bj = icmp ult i32 %i.bi, 65
  br i1 %i.bj, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm6APSIntmiERKS0_.exit
  %i.bk = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN4llvm5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #18
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.l, %bb.k, %_ZNK4llvm6APSIntmiERKS0_.exit
  store i64 %i.bg, ptr %17, align 8
  store i32 %i.bf, ptr %i.an, align 8, !tbaa !60
  store i8 %i.bh, ptr %i.ao, align 4, !tbaa !62
  br label %bb.ak

bb.m:                                             ; preds = %_ZNK4llvm6APSIntgtERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 6, ptr %i.g, align 4, !tbaa !745
  %i.bm = call noundef ptr @_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJRS6_NS_18BinaryOperatorKindES9_RNS_8QualTypeEEEEPKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %i.bm, ptr %i.d, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !745
  store i32 %i.bn, ptr %i.e, align 4, !tbaa !745
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !60, !noalias !752 ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !60, !noalias !752
  %i.br = icmp ult i32 %i.bq, 65
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = load i64, ptr %5, align 8, !tbaa !46, !noalias !752
  store i64 %i.bs, ptr %11, align 8, !tbaa !46, !noalias !752
  br label %_ZNK4llvm6APSIntmiERKS0_.exit27

bb.o:                                             ; preds = %bb.m
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(13) %5) #17, !noalias !752
  br label %_ZNK4llvm6APSIntmiERKS0_.exit27

_ZNK4llvm6APSIntmiERKS0_.exit27:                  ; preds = %bb.n, %bb.o
  %i.bt = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(13) %3) #17, !noalias !755 ; 0 uses
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !60, !noalias !755
  %i.bv = load i64, ptr %11, align 8, !noalias !755
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !62, !range !65, !noalias !752, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.by = load i32, ptr %i.an, align 8, !tbaa !60
  %i.bz = icmp ult i32 %i.by, 65
  br i1 %i.bz, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm6APSIntmiERKS0_.exit27
  %i.ca = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #18
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %bb.q, %bb.p, %_ZNK4llvm6APSIntmiERKS0_.exit27
  store i64 %i.bv, ptr %17, align 8
  store i32 %i.bu, ptr %i.an, align 8, !tbaa !60
  store i8 %i.bx, ptr %i.ao, align 4, !tbaa !62
  br label %bb.ak

bb.r:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 9 uses
  store i32 1, ptr %i.cc, align 8, !tbaa !60
  store i64 0, ptr %17, align 8, !tbaa !46
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 4 uses
  store i8 0, ptr %i.cd, align 4, !tbaa !62
  %i.ce = call noundef ptr @_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJRS6_RNS_18BinaryOperatorKindES9_RNS_8QualTypeEEEEPKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 2 uses
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !167
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !745
  %i.cg = icmp eq i32 %i.cf, 5
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.cg, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !60, !noalias !758 ; 2 uses
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !60, !noalias !758
  %i.ck = icmp ult i32 %i.cj, 65
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = load i64, ptr %3, align 8, !tbaa !46, !noalias !758
  store i64 %i.cl, ptr %10, align 8, !tbaa !46, !noalias !758
  br label %_ZNK4llvm6APSIntplERKS0_.exit

bb.u:                                             ; preds = %bb.s
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(13) %3) #17, !noalias !758
  br label %_ZNK4llvm6APSIntplERKS0_.exit

_ZNK4llvm6APSIntplERKS0_.exit:                    ; preds = %bb.t, %bb.u
  %i.cm = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(13) %5) #17, !noalias !761 ; 0 uses
  %i.cn = load i32, ptr %i.ci, align 8, !tbaa !60, !noalias !761
  %i.co = load i64, ptr %10, align 8, !noalias !761
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !62, !range !65, !noalias !758, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.ch, align 8, !tbaa !60, !noalias !764 ; 2 uses
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !60, !noalias !764
  %i.ct = icmp ult i32 %i.cs, 65
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = load i64, ptr %3, align 8, !tbaa !46, !noalias !764
  store i64 %i.cu, ptr %9, align 8, !tbaa !46, !noalias !764
  br label %_ZNK4llvm6APSIntmiERKS0_.exit30

bb.x:                                             ; preds = %bb.v
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(13) %3) #17, !noalias !764
  br label %_ZNK4llvm6APSIntmiERKS0_.exit30

_ZNK4llvm6APSIntmiERKS0_.exit30:                  ; preds = %bb.w, %bb.x
  %i.cv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(13) %5) #17, !noalias !767 ; 0 uses
  %i.cw = load i32, ptr %i.cr, align 8, !tbaa !60, !noalias !767
  %i.cx = load i64, ptr %9, align 8, !noalias !767
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !62, !range !65, !noalias !764, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm6APSIntmiERKS0_.exit30, %_ZNK4llvm6APSIntplERKS0_.exit
  %.sroa.041.0 = phi i64 [ %i.co, %_ZNK4llvm6APSIntplERKS0_.exit ], [ %i.cx, %_ZNK4llvm6APSIntmiERKS0_.exit30 ]
  %.sroa.642.0 = phi i32 [ %i.cn, %_ZNK4llvm6APSIntplERKS0_.exit ], [ %i.cw, %_ZNK4llvm6APSIntmiERKS0_.exit30 ]
  %.sroa.1144.0 = phi i8 [ %i.cq, %_ZNK4llvm6APSIntplERKS0_.exit ], [ %i.cz, %_ZNK4llvm6APSIntmiERKS0_.exit30 ]
  %i.da = load i32, ptr %i.cc, align 8, !tbaa !60
  %i.db = icmp ult i32 %i.da, 65
  br i1 %i.db, label %_ZN4llvm5APIntD2Ev.exit32, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN4llvm5APIntD2Ev.exit32, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #18
  br label %_ZN4llvm5APIntD2Ev.exit32

_ZN4llvm5APIntD2Ev.exit32:                        ; preds = %bb.aa, %bb.z, %bb.y
  store i64 %.sroa.041.0, ptr %17, align 8
  store i32 %.sroa.642.0, ptr %i.cc, align 8, !tbaa !60
  store i8 %.sroa.1144.0, ptr %i.cd, align 4, !tbaa !62
  store i32 5, ptr %i.e, align 4, !tbaa !745
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 64, ptr %i.de, align 8, !tbaa !60, !alias.scope !770
  store i64 0, ptr %8, align 8, !alias.scope !770
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 0, ptr %i.df, align 4, !tbaa !62, !alias.scope !770
  %i.dg = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %17, ptr noundef nonnull align 8 dereferenceable(13) %8)
  %i.dh = load i32, ptr %i.de, align 8, !tbaa !60
  %i.di = icmp ugt i32 %i.dh, 64
  br i1 %i.di, label %bb.ab, label %_ZNK4llvm6APSIntltEl.exit

bb.ab:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit32
  %i.dj = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZNK4llvm6APSIntltEl.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #18
  br label %_ZNK4llvm6APSIntltEl.exit

_ZNK4llvm6APSIntltEl.exit:                        ; preds = %_ZN4llvm5APIntD2Ev.exit32, %bb.ab, %bb.ac
  %i.dl = icmp slt i32 %i.dg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br i1 %i.dl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZNK4llvm6APSIntltEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dn = load i32, ptr %i.cc, align 8, !tbaa !60, !noalias !773 ; 3 uses
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !60, !noalias !773
  %i.do = icmp ult i32 %i.dn, 65
  br i1 %i.do, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.ad
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(13) %17) #17, !noalias !773
  %.pr.i = load i32, ptr %i.dm, align 8, !tbaa !60, !noalias !776 ; 2 uses
  %i.dp = icmp ult i32 %.pr.i, 65
  br i1 %i.dp, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %bb.ae

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %bb.ad
  %.sink.i = phi ptr [ %17, %bb.ad ], [ %7, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.dq = phi i32 [ %i.dn, %bb.ad ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 2 uses
  %.pre.i = load i64, ptr %.sink.i, align 8, !tbaa !46, !noalias !773
  %i.dr = xor i64 %.pre.i, -1
  %i.ds = sub nsw i32 0, %i.dq
  %i.dt = and i32 %i.ds, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = lshr i64 -1, %i.du
  %i.dw = icmp eq i32 %i.dq, 0
  %spec.select.i.i.i.i = select i1 %i.dw, i64 0, i64 %i.dv, !prof !632
  %i.dx = and i64 %spec.select.i.i.i.i, %i.dr
  store i64 %i.dx, ptr %7, align 8, !tbaa !46, !noalias !776
  br label %_ZNK4llvm6APSIntngEv.exit

bb.ae:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #17, !noalias !776
  br label %_ZNK4llvm6APSIntngEv.exit

_ZNK4llvm6APSIntngEv.exit:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, %bb.ae
  %i.dy = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #17, !noalias !776 ; 0 uses
  %i.dz = load i32, ptr %i.dm, align 8, !tbaa !60, !noalias !776
  %i.ea = load i64, ptr %7, align 8, !noalias !776
  %i.eb = load i8, ptr %i.cd, align 4, !tbaa !62, !range !65, !noalias !773, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ec = load i32, ptr %i.cc, align 8, !tbaa !60
  %i.ed = icmp ult i32 %i.ec, 65
  br i1 %i.ed, label %_ZN4llvm5APIntD2Ev.exit34, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm6APSIntngEv.exit
  %i.ee = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN4llvm5APIntD2Ev.exit34, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #18
  br label %_ZN4llvm5APIntD2Ev.exit34

_ZN4llvm5APIntD2Ev.exit34:                        ; preds = %bb.ag, %bb.af, %_ZNK4llvm6APSIntngEv.exit
  store i64 %i.ea, ptr %17, align 8
  store i32 %i.dz, ptr %i.cc, align 8, !tbaa !60
  store i8 %i.eb, ptr %i.cd, align 4, !tbaa !62
  store i32 6, ptr %i.e, align 4, !tbaa !745
  br label %bb.ak

bb.ah:                                            ; preds = %_ZNK4llvm6APSIntltEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 64, ptr %i.eg, align 8, !tbaa !60, !alias.scope !779
  store i64 0, ptr %6, align 8, !alias.scope !779
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.eh, align 4, !tbaa !62, !alias.scope !779
  %i.ei = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %17, ptr noundef nonnull align 8 dereferenceable(13) %6)
  %i.ej = load i32, ptr %i.eg, align 8, !tbaa !60
  %i.ek = icmp ugt i32 %i.ej, 64
  br i1 %i.ek, label %bb.ai, label %_ZNK4llvm6APSInteqEl.exit

bb.ai:                                            ; preds = %bb.ah
  %i.el = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZNK4llvm6APSInteqEl.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.el) #18
  br label %_ZNK4llvm6APSInteqEl.exit

_ZNK4llvm6APSInteqEl.exit:                        ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.en = icmp eq i32 %i.ei, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.en, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit34, %_ZNK4llvm6APSInteqEl.exit, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit29
  %i.eo = phi ptr [ %i.cc, %_ZN4llvm5APIntD2Ev.exit34 ], [ %i.cc, %_ZNK4llvm6APSInteqEl.exit ], [ %i.an, %_ZN4llvm5APIntD2Ev.exit ], [ %i.an, %_ZN4llvm5APIntD2Ev.exit29 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.ep = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(13) %17) #17
  store ptr %i.ep, ptr %18, align 8
  %i.eq = call noundef ptr @_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS4_4KindE2EEEJRS6_RNS_18BinaryOperatorKindERS7_RNS_8QualTypeEEEEPKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.al

bb.al:                                            ; preds = %_ZNK4llvm6APSInteqEl.exit, %bb.ak
  %i.er = phi ptr [ %i.eo, %bb.ak ], [ %i.cc, %_ZNK4llvm6APSInteqEl.exit ]
  %.sroa.021.0 = phi ptr [ %i.eq, %bb.ak ], [ %i.ce, %_ZNK4llvm6APSInteqEl.exit ]
  %i.es = load i32, ptr %i.er, align 8, !tbaa !60
  %i.et = icmp ugt i32 %i.es, 64
  br i1 %i.et, label %bb.am, label %_ZN4llvm5APIntD2Ev.exit35

bb.am:                                            ; preds = %bb.al
  %i.eu = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN4llvm5APIntD2Ev.exit35, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.eu) #18
  br label %_ZN4llvm5APIntD2Ev.exit35

_ZN4llvm5APIntD2Ev.exit35:                        ; preds = %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.ew = insertvalue { ptr, i8 } poison, ptr %.sroa.021.0, 0
  %i.ex = insertvalue { ptr, i8 } %i.ew, i8 9, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.e, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %_ZN4llvm5APIntD2Ev.exit35
  %.fca.1.insert.merged = phi { ptr, i8 } [ %i.ex, %_ZN4llvm5APIntD2Ev.exit35 ], [ %i.al, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %i.al, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  ret { ptr, i8 } %.fca.1.insert.merged
}

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite) uwtable
define linkonce_odr hidden void @_ZNK5clang4ento10APSIntType8getValueEm(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 %0, ptr noundef nonnull readonly align 4 dereferenceable(5) %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::APSInt", align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = load i32, ptr %1, align 4, !tbaa !105    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !107, !range !65, !noundef !38 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.a, ptr %i.d, align 8, !tbaa !60
  %i.e = icmp ult i32 %i.a, 65
  br i1 %i.e, label %_ZN4llvm6APSIntC2Ejb.exit.thread, label %_ZN4llvm6APSIntC2Ejb.exit

_ZN4llvm6APSIntC2Ejb.exit.thread:                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 %i.c, ptr %i.f, align 4, !tbaa !62
  br label %_ZN4llvm6APSIntaSEm.exit.thread

_ZN4llvm6APSIntC2Ejb.exit:                        ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(13) %3, i64 noundef 0, i1 noundef zeroext false) #17
  %.pr = load i32, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i8 %i.c, ptr %i.g, align 4, !tbaa !62
  %i.h = icmp ult i32 %.pr, 65
  br i1 %i.h, label %_ZN4llvm6APSIntaSEm.exit.thread, label %_ZN4llvm6APSIntaSEm.exit

_ZN4llvm6APSIntaSEm.exit.thread:                  ; preds = %_ZN4llvm6APSIntC2Ejb.exit, %_ZN4llvm6APSIntC2Ejb.exit.thread
  %i.i = phi ptr [ %i.f, %_ZN4llvm6APSIntC2Ejb.exit.thread ], [ %i.g, %_ZN4llvm6APSIntC2Ejb.exit ]
  %i.j = phi i32 [ %i.a, %_ZN4llvm6APSIntC2Ejb.exit.thread ], [ %.pr, %_ZN4llvm6APSIntC2Ejb.exit ] ; 3 uses
  %i.k = sub nsw i32 0, %i.j
end_hunk_1
