Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadSanitizer?download=true
inline.NumInlined: 2058
inline.NumDeleted: 1131
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm19ThreadSanitizerPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8            ; 2 uses
  %i.fa = and i32 %i.ez, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fa, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load ptr, ptr %i.dg, align 8, !tbaa !77, !nonnull !19, !align !91
  %i.fc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.fb) #20
  %i.fd = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.fc, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  store i16 257, ptr %i.dh, align 8
  %i.fe = load ptr, ptr %i.di, align 8, !tbaa !92, !nonnull !19, !align !91 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull %i.ev, ptr noundef %i.fd) #20, !inline_history !93 ; 2 uses
  %.not.not.i73.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.not.i73.i.i, label %bb.ac, label %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  store i16 257, ptr %i.dj, align 8
  %i.fj = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 2) #20 ; 4 uses
  call void @_ZN4llvm18ExtractElementInstC1EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.fj, ptr noundef nonnull %i.ev, ptr noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(34) %30, ptr null, i64 0) #20
  %i.fk = load ptr, ptr %i.dk, align 8, !tbaa !94, !nonnull !19, !align !91 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dl, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull %i.fj, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #20, !inline_history !95
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %31, ptr noundef nonnull %i.fj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i

_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.1.i74.i.i = phi ptr [ %i.fj, %bb.ac ], [ %i.fi, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.1.i74.i.i, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !76
  %.phi.trans.insert104.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre105.i.i = load i32, ptr %.phi.trans.insert104.i.i, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i, %bb.aa
  %i.fo = phi i32 [ %.pre105.i.i, %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i ], [ %i.ez, %bb.aa ]
  %.064.i.i = phi ptr [ %.1.i74.i.i, %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i ], [ %i.ev, %bb.aa ] ; 2 uses
  %i.fp = and i32 %i.fo, 255
  %i.fq = icmp eq i32 %i.fp, 12
  br i1 %i.fq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load ptr, ptr %i.dg, align 8, !tbaa !77, !nonnull !19, !align !91
  %i.fs = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  store i16 257, ptr %i.dm, align 8
  %i.ft = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %31, i32 noundef 50, ptr noundef nonnull %.064.i.i, ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.165.i.i = phi ptr [ %i.ft, %bb.ae ], [ %.064.i.i, %bb.ad ]
  %.sroa.017.0.copyload.i.i = load ptr, ptr %i.dn, align 8, !tbaa !96
  %.sroa.218.0.copyload.i.i = load ptr, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !75
  store ptr %i.fu, ptr %i.k, align 8, !tbaa !75
  store ptr %.165.i.i, ptr %i.do, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  store i16 257, ptr %i.dp, align 8
  %i.fv = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %31, ptr noundef %.sroa.017.0.copyload.i.i, ptr noundef %.sroa.218.0.copyload.i.i, ptr nonnull %i.k, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %34, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br label %_ZN12_GLOBAL__N_115ThreadSanitizer21instrumentLoadOrStoreERKNS0_15InstructionInfoERKN4llvm10DataLayoutE.exit.i

.critedge.i.i:                                    ; preds = %bb.y
  br i1 %.not.i.i.i.i, label %.critedge71.i.i, label %_ZNK4llvm11Instruction11getMetadataEj.exit.i76.i.i

_ZNK4llvm11Instruction11getMetadataEj.exit.i76.i.i: ; preds = %.critedge.i.i
  %i.fw = call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ep, i32 noundef 1) #21 ; 2 uses
  %.not.not.i77.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.not.i77.i.i, label %.critedge71.i.i, label %_ZL14isVtableAccessPN4llvm11InstructionE.exit78.i.i

_ZL14isVtableAccessPN4llvm11InstructionE.exit78.i.i: ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit.i76.i.i
  %i.fx = call noundef zeroext i1 @_ZNK4llvm6MDNode18isTBAAVtableAccessEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #20
  br i1 %i.fx, label %bb.ag, label %_ZL14isVtableAccessPN4llvm11InstructionE.exit78..critedge71_crit_edge.i.i

_ZL14isVtableAccessPN4llvm11InstructionE.exit78..critedge71_crit_edge.i.i: ; preds = %_ZL14isVtableAccessPN4llvm11InstructionE.exit78.i.i
  %.pn.pre.i.i = load ptr, ptr %.0106202.i, align 8, !tbaa !72
  br label %.critedge71.i.i

bb.ag:                                            ; preds = %_ZL14isVtableAccessPN4llvm11InstructionE.exit78.i.i
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.de, align 8, !tbaa !96
  %.sroa.214.0.copyload.i.i = load ptr, ptr %.sroa.214.0..sroa_idx.i.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  store i16 257, ptr %i.df, align 8
  %i.fy = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %31, ptr noundef %.sroa.013.0.copyload.i.i, ptr noundef %.sroa.214.0.copyload.i.i, ptr nonnull %i.j, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %35, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %_ZN12_GLOBAL__N_115ThreadSanitizer21instrumentLoadOrStoreERKNS0_15InstructionInfoERKN4llvm10DataLayoutE.exit.i

.critedge71.i.i:                                  ; preds = %_ZL14isVtableAccessPN4llvm11InstructionE.exit78..critedge71_crit_edge.i.i, %_ZNK4llvm11Instruction11getMetadataEj.exit.i76.i.i, %.critedge.i.i, %_ZL14isVtableAccessPN4llvm11InstructionE.exit.i.i, %_ZNK4llvm11Instruction11getMetadataEj.exit.i.i.i, %bb.z
  %i.fz = phi ptr [ %.pn.pre.i.i, %_ZL14isVtableAccessPN4llvm11InstructionE.exit78..critedge71_crit_edge.i.i ], [ %i.ep, %_ZNK4llvm11Instruction11getMetadataEj.exit.i76.i.i ], [ %i.ep, %.critedge.i.i ], [ %.pn.pre106.i.i, %_ZL14isVtableAccessPN4llvm11InstructionE.exit.i.i ], [ %i.ep, %_ZNK4llvm11Instruction11getMetadataEj.exit.i.i.i ], [ %i.ep, %bb.z ]
  %storemerge.in.in.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %storemerge.in.in.in.i.i = load i16, ptr %storemerge.in.in.in.in.i.i, align 2, !tbaa !98 ; 2 uses
  %storemerge.in.in.i.i = trunc i16 %storemerge.in.in.in.i.i to i8
  %storemerge.in.i.i = lshr i8 %storemerge.in.in.i.i, 1
  %storemerge.i.i = and i8 %storemerge.in.i.i, 63 ; 2 uses
  %i.ga = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL25ClCompoundReadBeforeWrite, i64 120), align 8, !tbaa !23, !range !18, !noundef !19
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.critedge71.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.0106202.i, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !99
  %i.ge = trunc i32 %i.gd to i1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge71.i.i
  %i.gf = phi i1 [ false, %.critedge71.i.i ], [ %i.ge, %bb.ah ] ; 2 uses
  %i.gg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21ClDistinguishVolatile, i64 120), align 8, !tbaa !23, !range !18, !noundef !19
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = trunc i16 %storemerge.in.in.in.i.i to i1
  %i.gj = select i1 %i.gh, i1 %i.gi, i1 false     ; 2 uses
  %i.gk = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bf, ptr noundef nonnull %.1.i.i.i) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.gk, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %i.gk, 1
  %i.gl = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.gl, label %bb.aj, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.67) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %bb.ai
  %i.gm = icmp samesign ugt i8 %storemerge.i.i, 2
  br i1 %i.gm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %i.gn = zext nneg i8 %storemerge.i.i to i64
  %i.go = shl nuw nsw i64 1, %i.gn
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.go to i32
  %i.gp = trunc i64 %.fca.0.extract.i.i.i to i32
  %i.gq = add i32 %i.gp, 7
  %i.gr = lshr i32 %i.gq, 3
  %i.gs = urem i32 %.lhs.trunc.i.i, %i.gr
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak, %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %i.gu = zext nneg i32 %i.eo to i64              ; 3 uses
  br i1 %i.gf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.gu
  br label %bb.av

bb.an:                                            ; preds = %bb.al
  br i1 %i.gj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.v69.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dy, i64 472, i64 392
  %.v69.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.v69.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %.v69.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.gu
  br label %bb.av

bb.ap:                                            ; preds = %bb.an
  %.v68.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dy, i64 152, i64 72
  %.v68.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.v68.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.v68.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.gu
  br label %bb.av

bb.aq:                                            ; preds = %bb.ak
  %i.gy = zext nneg i32 %i.eo to i64              ; 3 uses
  br i1 %i.gf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.gy
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  br i1 %i.gj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.v67.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dy, i64 632, i64 552
  %.v67.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.v67.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.v67.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.gy
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %.v.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dy, i64 312, i64 232
  %.v.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.v.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.v.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.gy
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.ao, %bb.am
  %.sink.i.i = phi ptr [ %i.gz, %bb.ar ], [ %i.hb, %bb.au ], [ %i.ha, %bb.at ], [ %i.gv, %bb.am ], [ %i.gx, %bb.ap ], [ %i.gw, %bb.ao ] ; 2 uses
  %.sroa.10.0..sroa_idx90.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %.sroa.080.0.i.i.a = load ptr, ptr %.sroa.10.0..sroa_idx90.i.i, align 8, !tbaa !75
  %.sroa.10.0.i.i = load ptr, ptr %.sink.i.i, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  store i16 257, ptr %i.ds, align 8
  %i.hc = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %31, ptr noundef %.sroa.10.0.i.i, ptr noundef %.sroa.080.0.i.i.a, ptr nonnull %i.j, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %36, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %_ZN12_GLOBAL__N_115ThreadSanitizer21instrumentLoadOrStoreERKNS0_15InstructionInfoERKN4llvm10DataLayoutE.exit.i

_ZN12_GLOBAL__N_115ThreadSanitizer21instrumentLoadOrStoreERKNS0_15InstructionInfoERKN4llvm10DataLayoutE.exit.i: ; preds = %bb.av, %bb.ag, %bb.af, %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i, %bb.v, %_ZN4llvm16getLoadStoreTypeEPKNS_5ValueE.exit.i.i
  %.1.i.i = phi i8 [ 0, %_ZN4llvm16getLoadStoreTypeEPKNS_5ValueE.exit.i.i ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.av ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dt) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.du) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.hd = or i8 %.1.i.i, %.0100204.i              ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0106202.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.he, %i.dd
  br i1 %.not.i, label %.loopexit181.i, label %bb.t

.loopexit181.i:                                   ; preds = %_ZN12_GLOBAL__N_115ThreadSanitizer21instrumentLoadOrStoreERKNS0_15InstructionInfoERKN4llvm10DataLayoutE.exit.i, %bb.s, %._crit_edge199.i
  %.1.i = phi i8 [ 0, %._crit_edge199.i ], [ 0, %bb.s ], [ %i.hd, %_ZN12_GLOBAL__N_115ThreadSanitizer21instrumentLoadOrStoreERKNS0_15InstructionInfoERKN4llvm10DataLayoutE.exit.i ] ; 3 uses
  %i.hf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ClInstrumentAtomics, i64 120), align 8, !tbaa !23, !range !18, !noundef !19
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.aw, label %.loopexit180.i

bb.aw:                                            ; preds = %.loopexit181.i
  %i.hh = load ptr, ptr %39, align 8, !tbaa !21   ; 2 uses
  %i.hi = load i32, ptr %i.az, align 8, !tbaa !44 ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %.idx223.i = shl nuw nsw i64 %i.hj, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx223.i
  %.not111208.i = icmp eq i32 %i.hi, 0
  br i1 %.not111208.i, label %.loopexit180.i, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 9 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %49, i64 2872
  %i.hu = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %49, i64 1032
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %49, i64 952
  %i.ij = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %49, i64 872
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.ip = getelementptr inbounds nuw i8, ptr %14, i64 88
  %.sroa.gep5 = getelementptr inbounds nuw i8, ptr %49, i64 2968
  %.sroa.gep6 = getelementptr inbounds nuw i8, ptr %49, i64 2952
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_115ThreadSanitizer16instrumentAtomicEPN4llvm11InstructionERKNS1_10DataLayoutE.exit.i, %.lr.ph212.i
  %.2210.i = phi i8 [ %.1.i, %.lr.ph212.i ], [ %i.xk, %_ZN12_GLOBAL__N_115ThreadSanitizer16instrumentAtomicEPN4llvm11InstructionERKNS1_10DataLayoutE.exit.i ]
  %.0107209.i = phi ptr [ %i.hh, %.lr.ph212.i ], [ %i.xl, %_ZN12_GLOBAL__N_115ThreadSanitizer16instrumentAtomicEPN4llvm11InstructionERKNS1_10DataLayoutE.exit.i ] ; 2 uses
  %i.iq = load ptr, ptr %.0107209.i, align 8, !tbaa !100 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @_ZN4llvm24InstrumentationIRBuilderC2EPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef %i.iq)
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !63
  switch i8 %i.ir, label %_ZN12_GLOBAL__N_115ThreadSanitizer16instrumentAtomicEPN4llvm11InstructionERKNS1_10DataLayoutE.exit.i [
    i8 63, label %bb.ay
    i8 64, label %bb.bl
    i8 68, label %bb.by
    i8 67, label %bb.cv
    i8 66, label %bb.dt
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.is = getelementptr inbounds i8, ptr %i.iq, i64 -32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !66
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !76 ; 8 uses
  %i.iw = call noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iv) #20
  br i1 %i.iw, label %_ZN12_GLOBAL__N_115ThreadSanitizer16instrumentAtomicEPN4llvm11InstructionERKNS1_10DataLayoutE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ix = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bf, ptr noundef nonnull %i.iv) ; 2 uses
  %.fca.1.extract.i.i.i126.i = extractvalue { i64, i8 } %i.ix, 1
  %i.iy = trunc nuw i8 %.fca.1.extract.i.i.i126.i to i1
  br i1 %i.iy, label %bb.ba, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i127.i

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.67) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i127.i:            ; preds = %bb.az
  %.fca.0.extract.i.i.i128.i = extractvalue { i64, i8 } %i.ix, 0
  %i.iz = trunc i64 %.fca.0.extract.i.i.i128.i to i32
  %i.ja = add i32 %i.iz, 7                        ; 3 uses
  %i.jb = and i32 %i.ja, -8
  %i.jc = call range(i32 0, 30) i32 @llvm.ctpop.i32(i32 %i.jb)
  %i.jd = icmp ne i32 %i.jc, 1
  %i.je = and i32 %i.ja, 248
  %switch.not.i.i129.i = icmp eq i32 %i.je, 0
  %or.cond.i.i130.i = or i1 %switch.not.i.i129.i, %i.jd
  br i1 %or.cond.i.i130.i, label %_ZN12_GLOBAL__N_115ThreadSanitizer16instrumentAtomicEPN4llvm11InstructionERKNS1_10DataLayoutE.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i127.i
  %i.jf = lshr i32 %i.ja, 3
  %i.jg = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jf, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %i.it, ptr %i.c, align 16, !tbaa !75
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !98
  %i.jj = lshr i16 %i.ji, 7
  %i.jk = and i16 %i.jj, 7
  %i.jl = zext nneg i16 %i.jk to i32
  %.val165.i.i = load ptr, ptr %i.hl, align 8
  %switch.tableidx.i.i.i = add nsw i32 %i.jl, -4  ; 2 uses
  %i.jm = icmp ult i32 %switch.tableidx.i.i.i, 4
  %switch.idx.cast.i.i.i = zext i32 %switch.tableidx.i.i.i to i64
  %switch.offset.i.i.i = add nuw nsw i64 %switch.idx.cast.i.i.i, 2
  %.0.i.i131.i = select i1 %i.jm, i64 %switch.offset.i.i.i, i64 0
  %i.jn = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val165.i.i) #20
  %i.jo = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.jn, i64 noundef %.0.i.i131.i, i1 noundef zeroext false, i1 noundef zeroext false) #20
  store ptr %i.jo, ptr %i.ik, align 8, !tbaa !75
  %i.jp = zext nneg i32 %i.jg to i64
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.jp ; 2 uses
  %.sroa.089.0.copyload.i.i = load ptr, ptr %i.jq, align 8, !tbaa !96
  %.sroa.290.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.sroa.290.0.copyload.i.i = load ptr, ptr %.sroa.290.0..sroa_idx.i.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store i16 257, ptr %i.im, align 8
  %i.jr = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef %.sroa.089.0.copyload.i.i, ptr noundef %.sroa.290.0.copyload.i.i, ptr nonnull %i.c, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i16 257, ptr %i.in, align 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !76 ; 4 uses
  %i.ju = icmp eq ptr %i.jt, %i.iv
  br i1 %i.ju, label %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = load i32, ptr %i.jv, align 8            ; 3 uses
  %i.jx = and i32 %i.jw, 254
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.jx, 18 ; 2 uses
  br i1 %spec.select.i.i.i.i.i.i, label %bb.bd, label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !101
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !105
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i.i.i

_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i.i.i:  ; preds = %bb.bd, %bb.bc
  %i.kb = phi i32 [ %.pre.i.i.i.i, %bb.bd ], [ %i.jw, %bb.bc ]
  %i.kc = and i32 %i.kb, 255
  %i.kd = icmp eq i32 %i.kc, 15
  br i1 %i.kd, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.kf = load i32, ptr %i.ke, align 8            ; 2 uses
  %i.kg = and i32 %i.kf, 254
  %spec.select.i.i.i19.i.i.i = icmp eq i32 %i.kg, 18
  br i1 %spec.select.i.i.i19.i.i.i, label %bb.bf, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !101
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !105
  %.phi.trans.insert.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %.pre.i21.i.i.i = load i32, ptr %.phi.trans.insert.i20.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i.i:  ; preds = %bb.bf, %bb.be
  %i.kk = phi i32 [ %.pre.i21.i.i.i, %bb.bf ], [ %i.kf, %bb.be ]
  %i.kl = and i32 %i.kk, 255
  %i.km = icmp eq i32 %i.kl, 12
  br i1 %i.km, label %.sink.split.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i.i, %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i.i.i
  br i1 %spec.select.i.i.i.i.i.i, label %bb.bh, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !101
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !105
  %.phi.trans.insert.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.pre.i24.i.i.i = load i32, ptr %.phi.trans.insert.i23.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i.i.i: ; preds = %bb.bh, %bb.bg
  %i.kq = phi i32 [ %.pre.i24.i.i.i, %bb.bh ], [ %i.jw, %bb.bg ]
end_hunk_0
