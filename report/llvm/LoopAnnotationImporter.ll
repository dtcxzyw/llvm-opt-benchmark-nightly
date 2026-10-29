Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopAnnotationImporter?download=true
inline.NumInlined: 1885
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir4LLVM6detail22LoopAnnotationImporter23translateLoopAnnotationEPKN4llvm6MDNodeENS_8LocationE:bb.a
  store ptr @.str.8, ptr %i.fe, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i.i.i.i.i63.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 42, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i63.i, align 8, !tbaa !65
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !25 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !26
  %.not.i.i.i.i.i64.i = icmp ult i32 %i.fg, %i.fi
  br i1 %.not.i.i.i.i.i64.i, label %bb.al, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fj = zext i32 %i.fg to i64
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !24
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.fm = load i32, ptr %i.ff, align 8, !tbaa !25
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.ff, align 8, !tbaa !25
  br label %_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i.i

_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA43_KcEERS0_OT_.exit.i.i.i, %bb.ai
  %i.fo = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #12
  %i.fp = load ptr, ptr %12, align 8, !tbaa !58
  %.not.i65.i = icmp eq ptr %i.fp, null
  br i1 %.not.i65.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNO4mlir18InFlightDiagnosticlsIRA43_KcEEOS0_OT_.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !66, !range !67, !noundef !68
  %i.fs = trunc nuw i8 %i.fr to i1
  store i8 0, ptr %i.fq, align 8, !tbaa !66
  br i1 %i.fs, label %bb.ao, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit66.i

bb.ao:                                            ; preds = %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ft) #12
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit66.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit66.i:        ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit

bb.ap:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit60.i
  %i.fu = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #12 ; 2 uses
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0      ; 4 uses
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1      ; 8 uses
  %i.fx = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.fv, i64 %i.fw) #12
  %i.fy = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.as, ptr %i.fv, i64 %i.fw, i32 noundef %i.fx) #12 ; 2 uses
  %i.fz = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.ga = zext i32 %i.fy to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !71
  %.not.i.i67.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i67.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gd = add i64 %i.fw, 17
  %i.ge = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.gd, i64 noundef 8) #12 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %.not.i.i.i.i.i157 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i.i157, label %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE11try_emplaceIJRPS1_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr align 1 %i.fv, i64 %i.fw, i1 false)
  br label %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE11try_emplaceIJRPS1_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i

_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE11try_emplaceIJRPS1_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i: ; preds = %bb.ar, %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fw
  store i8 0, ptr %i.gg, align 1, !tbaa !72
  store i64 %i.fw, ptr %i.ge, align 8, !tbaa !74
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.cs, ptr %i.gh, align 8, !tbaa !154
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !71
  %i.gi = load i32, ptr %i.cr, align 4, !tbaa !155
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.cr, align 4, !tbaa !155
  %i.gk = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i32 noundef %i.fy) #12 ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10DILocationELb1EE9push_backES2_.exit.thread.i

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %.sroa.0.0.copyload.i155 = load ptr, ptr %i.av, align 8
  call void @_ZN4mlir11emitWarningENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, ptr %.sroa.0.0.copyload.i155) #12
  %i.gl = load ptr, ptr %13, align 8, !tbaa !58
  %.not.i.i71.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i71.i, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i32 3, ptr %4, align 8, !tbaa !61
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.9, ptr %i.gn, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i.i.i.i.i72.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 52, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i72.i, align 8, !tbaa !65
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !25 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !26
  %.not.i.i.i.i.i73.i = icmp ult i32 %i.gp, %i.gr
  br i1 %.not.i.i.i.i.i73.i, label %bb.av, label %bb.au, !prof !21

bb.au:                                            ; preds = %bb.at
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i

bb.av:                                            ; preds = %bb.at
  %i.gs = zext i32 %i.gp to i64
  %i.gt = load ptr, ptr %i.gm, align 8, !tbaa !24
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.gv = load i32, ptr %i.go, align 8, !tbaa !25
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.go, align 8, !tbaa !25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.pr.i156 = load ptr, ptr %13, align 8, !tbaa !58
  %.not.i.i74.i = icmp eq ptr %.pr.i156, null
  br i1 %.not.i.i74.i, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.gy, align 8, !tbaa !77
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.gz, align 1, !tbaa !78
  store ptr %i.fv, ptr %3, align 8, !tbaa !72
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fw, ptr %i.ha, align 8, !tbaa !72
  %i.hb = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.gx, ptr noundef nonnull align 8 dereferenceable(34) %3) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i: ; preds = %bb.aw, %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit.i, %bb.as
  %i.hc = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #12
  %i.hd = load ptr, ptr %13, align 8, !tbaa !58
  %.not.i75.i = icmp eq ptr %i.hd, null
  br i1 %.not.i75.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !66, !range !67, !noundef !68
  %i.hg = trunc nuw i8 %i.hf to i1
  store i8 0, ptr %i.he, align 8, !tbaa !66
  br i1 %i.hg, label %bb.az, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76.i

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.hh) #12
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit76.i:        ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_10DILocationELb1EE9push_backES2_.exit.thread.i: ; preds = %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE11try_emplaceIJRPS1_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i, %bb.r, %bb.q
  %.0.i = getelementptr inbounds nuw i8, ptr %.0110.i, i64 8 ; 2 uses
  %.not31.i = icmp eq ptr %.0.i, %i.cq
  br i1 %.not31.i, label %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit.thread, label %bb.o

_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit: ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i152, %_ZN4mlir18InFlightDiagnosticD2Ev.exit49.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit57.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit66.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit76.i
  %.sroa.026.6.i = phi i8 [ %i.ch, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i152 ], [ %i.eo, %_ZN4mlir18InFlightDiagnosticD2Ev.exit57.i ], [ %i.hc, %_ZN4mlir18InFlightDiagnosticD2Ev.exit76.i ], [ %i.fo, %_ZN4mlir18InFlightDiagnosticD2Ev.exit66.i ], [ %i.do, %_ZN4mlir18InFlightDiagnosticD2Ev.exit49.i ]
  %i.hi = trunc nuw i8 %.sroa.026.6.i to i1
  br i1 %i.hi, label %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit.thread, label %_ZN12_GLOBAL__N_122LoopMetadataConversion7convertEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10DILocationELb1EE9push_backES2_.exit.thread.i, %_ZNK4llvm6MDNode8operandsEv.exit.i, %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit
  %i.hj = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.1, i64 27), !inline_history !129 ; 2 uses
  %i.hk = extractvalue { ptr, i8 } %i.hj, 0       ; 2 uses
  %i.hl = extractvalue { ptr, i8 } %i.hj, 1
  %i.hm = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupBoolNodeEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.12, i64 26, i1 noundef zeroext true), !inline_history !130 ; 2 uses
  %i.hn = extractvalue { ptr, i8 } %i.hm, 0       ; 2 uses
  %i.ho = extractvalue { ptr, i8 } %i.hm, 1
  %i.hp = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupBoolNodeEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.13, i64 36, i1 noundef zeroext false), !inline_history !130 ; 2 uses
  %i.hq = extractvalue { ptr, i8 } %i.hp, 0       ; 2 uses
  %i.hr = extractvalue { ptr, i8 } %i.hp, 1
  %i.hs = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupBoolNodeEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.14, i64 35, i1 noundef zeroext false), !inline_history !130 ; 2 uses
  %i.ht = extractvalue { ptr, i8 } %i.hs, 0       ; 2 uses
  %i.hu = extractvalue { ptr, i8 } %i.hs, 1
  %i.hv = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion13lookupIntNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.15, i64 25), !inline_history !130 ; 2 uses
  %i.hw = extractvalue { ptr, i8 } %i.hv, 0       ; 2 uses
  %i.hx = extractvalue { ptr, i8 } %i.hv, 1
  %i.hy = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.16, i64 39), !inline_history !130 ; 2 uses
  %i.hz = extractvalue { ptr, i8 } %i.hy, 0       ; 2 uses
  %i.ia = extractvalue { ptr, i8 } %i.hy, 1
  %i.ib = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.17, i64 37), !inline_history !130 ; 2 uses
  %i.ic = extractvalue { ptr, i8 } %i.ib, 0       ; 2 uses
  %i.id = extractvalue { ptr, i8 } %i.ib, 1
  %i.ie = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.18, i64 32), !inline_history !130 ; 2 uses
  %i.if = extractvalue { ptr, i8 } %i.ie, 0       ; 2 uses
  %i.ig = extractvalue { ptr, i8 } %i.ie, 1
  %i.ih = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ii = trunc nuw i8 %i.ho to i1
  %i.ij = trunc nuw i8 %i.hr to i1
  %i.ik = select i1 %i.ii, i1 %i.ij, i1 false
  %i.il = trunc nuw i8 %i.hu to i1
  %i.im = select i1 %i.ik, i1 %i.il, i1 false
  %i.in = trunc nuw i8 %i.hx to i1
  %i.io = select i1 %i.im, i1 %i.in, i1 false
  %i.ip = trunc nuw i8 %i.ia to i1
  %i.iq = select i1 %i.io, i1 %i.ip, i1 false
  %i.ir = trunc nuw i8 %i.id to i1
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  %i.it = trunc nuw i8 %i.ig to i1
  %i.iu = select i1 %i.is, i1 %i.it, i1 false
  br i1 %i.iu, label %bb.ba, label %_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit.thread
  %i.iv = insertelement <4 x ptr> poison, ptr %i.hn, i64 0
  %i.iw = insertelement <4 x ptr> %i.iv, ptr %i.hq, i64 1
  %i.ix = insertelement <4 x ptr> %i.iw, ptr %i.ht, i64 2
  %i.iy = insertelement <4 x ptr> %i.ix, ptr %i.hw, i64 3
  %.fr = freeze <4 x ptr> %i.iy
  %i.iz = icmp eq ptr %i.hz, null
  %i.ja = icmp eq ptr %i.ic, null
  %i.jb = icmp eq ptr %i.if, null
  %i.jc = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.jd = bitcast <4 x i1> %i.jc to i4
  %i.je = icmp eq i4 %i.jd, 0
  %op.rdx457 = select i1 %i.je, i1 %i.iz, i1 false
  %36 = select i1 %op.rdx457, i1 %i.ja, i1 false
  %op.rdx459 = select i1 %36, i1 %i.jb, i1 false
  br i1 %op.rdx459, label %_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit, label %.critedge44.i.i145

.critedge44.i.i145:                               ; preds = %bb.ba
  %i.jf = ptrtoint ptr %i.ic to i64
  %i.jg = ptrtoint ptr %i.if to i64
  %i.jh = call ptr @_ZN4mlir4LLVM17LoopVectorizeAttr3getEPNS_11MLIRContextENS_8BoolAttrES4_S4_NS_11IntegerAttrENS0_18LoopAnnotationAttrES6_S6_(ptr noundef %i.ih, ptr %i.hn, ptr %i.hq, ptr %i.ht, ptr %i.hw, ptr %i.hz, i64 %i.jf, i64 %i.jg) #12, !inline_history !130
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit.thread, %bb.ba, %.critedge44.i.i145
  %.sroa.0.0.i.i133 = phi ptr [ %i.jh, %.critedge44.i.i145 ], [ null, %bb.ba ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit.thread ] ; 2 uses
  %i.ji = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion13lookupIntNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.22, i64 26) ; 2 uses
  %i.jj = extractvalue { ptr, i8 } %i.ji, 0       ; 2 uses
  %i.jk = extractvalue { ptr, i8 } %i.ji, 1
  %i.jl = trunc nuw i8 %i.jk to i1
  %i.jm = icmp ne ptr %i.jj, null
  %or.cond.not.i.i115 = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond.not.i.i115, label %bb.bb, label %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertInterleaveAttrEv.exit

bb.bb:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit
  %i.jn = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.jo = call ptr @_ZN4mlir4LLVM18LoopInterleaveAttr3getEPNS_11MLIRContextENS_11IntegerAttrE(ptr noundef %i.jn, ptr nonnull %i.jj) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertInterleaveAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion21convertInterleaveAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit, %bb.bb
  %.sroa.0.0.i.i116 = phi ptr [ %i.jo, %bb.bb ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion20convertVectorizeAttrEv.exit ] ; 2 uses
  %i.jp = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion21lookupBooleanUnitNodeEN4llvm9StringRefES2_b(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.23, i64 23, ptr nonnull @.str.24, i64 24) ; 2 uses
  %i.jq = extractvalue { ptr, i8 } %i.jp, 0       ; 2 uses
  %i.jr = extractvalue { ptr, i8 } %i.jp, 1
  %i.js = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion13lookupIntNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.25, i64 22), !inline_history !131 ; 2 uses
  %i.jt = extractvalue { ptr, i8 } %i.js, 0       ; 2 uses
  %i.ju = extractvalue { ptr, i8 } %i.js, 1
  %i.jv = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.26, i64 32), !inline_history !131 ; 2 uses
  %i.jw = extractvalue { ptr, i8 } %i.jv, 0       ; 2 uses
  %i.jx = extractvalue { ptr, i8 } %i.jv, 1
  %i.jy = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.27, i64 21), !inline_history !131 ; 2 uses
  %i.jz = extractvalue { ptr, i8 } %i.jy, 0       ; 2 uses
  %i.ka = extractvalue { ptr, i8 } %i.jy, 1
  %i.kb = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.28, i64 34), !inline_history !131 ; 2 uses
  %i.kc = extractvalue { ptr, i8 } %i.kb, 0       ; 2 uses
  %i.kd = extractvalue { ptr, i8 } %i.kb, 1
  %i.ke = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.29, i64 35), !inline_history !131 ; 2 uses
  %i.kf = extractvalue { ptr, i8 } %i.ke, 0       ; 2 uses
  %i.kg = extractvalue { ptr, i8 } %i.ke, 1
  %i.kh = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.30, i64 29), !inline_history !131 ; 2 uses
  %i.ki = extractvalue { ptr, i8 } %i.kh, 0       ; 2 uses
  %i.kj = extractvalue { ptr, i8 } %i.kh, 1
  %i.kk = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.kl = trunc nuw i8 %i.jr to i1
  %i.km = trunc nuw i8 %i.ju to i1
  %i.kn = select i1 %i.kl, i1 %i.km, i1 false
  %i.ko = trunc nuw i8 %i.jx to i1
  %i.kp = select i1 %i.kn, i1 %i.ko, i1 false
  %i.kq = trunc nuw i8 %i.ka to i1
  %i.kr = select i1 %i.kp, i1 %i.kq, i1 false
  %i.ks = trunc nuw i8 %i.kd to i1
  %i.kt = select i1 %i.kr, i1 %i.ks, i1 false
  %i.ku = trunc nuw i8 %i.kg to i1
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  %i.kw = trunc nuw i8 %i.kj to i1
  %i.kx = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %i.kx, label %bb.bc, label %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertInterleaveAttrEv.exit
  %i.ky = insertelement <4 x ptr> poison, ptr %i.jq, i64 0
  %i.kz = insertelement <4 x ptr> %i.ky, ptr %i.jt, i64 1
  %i.la = insertelement <4 x ptr> %i.kz, ptr %i.jw, i64 2
  %i.lb = insertelement <4 x ptr> %i.la, ptr %i.jz, i64 3
  %.fr465 = freeze <4 x ptr> %i.lb
  %i.lc = icmp eq ptr %i.kc, null
  %i.ld = icmp eq ptr %i.kf, null
  %i.le = icmp eq ptr %i.ki, null
  %i.lf = icmp ne <4 x ptr> %.fr465, splat (ptr null)
  %i.lg = bitcast <4 x i1> %i.lf to i4
  %i.lh = icmp eq i4 %i.lg, 0
  %op.rdx454 = select i1 %i.lh, i1 %i.lc, i1 false
  %37 = select i1 %op.rdx454, i1 %i.ld, i1 false
  %op.rdx456 = select i1 %37, i1 %i.le, i1 false
  br i1 %op.rdx456, label %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit, label %.critedge44.i.i114

.critedge44.i.i114:                               ; preds = %bb.bc
  %i.li = ptrtoint ptr %i.kf to i64
  %i.lj = ptrtoint ptr %i.ki to i64
  %i.lk = call ptr @_ZN4mlir4LLVM14LoopUnrollAttr3getEPNS_11MLIRContextENS_8BoolAttrENS_11IntegerAttrES4_S4_NS0_18LoopAnnotationAttrES6_S6_(ptr noundef %i.kk, ptr %i.jq, ptr %i.jt, ptr %i.jw, ptr %i.jz, ptr %i.kc, i64 %i.li, i64 %i.lj) #12, !inline_history !131
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertInterleaveAttrEv.exit, %bb.bc, %.critedge44.i.i114
  %.sroa.0.0.i.i102 = phi ptr [ %i.lk, %.critedge44.i.i114 ], [ null, %bb.bc ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertInterleaveAttrEv.exit ] ; 2 uses
  %i.ll = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion21lookupBooleanUnitNodeEN4llvm9StringRefES2_b(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.34, i64 31, ptr nonnull @.str.35, i64 32) ; 2 uses
  %i.lm = extractvalue { ptr, i8 } %i.ll, 0       ; 2 uses
  %i.ln = extractvalue { ptr, i8 } %i.ll, 1
  %i.lo = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion13lookupIntNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.36, i64 30), !inline_history !132 ; 2 uses
  %i.lp = extractvalue { ptr, i8 } %i.lo, 0       ; 2 uses
  %i.lq = extractvalue { ptr, i8 } %i.lo, 1
  %i.lr = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.37, i64 39), !inline_history !132 ; 2 uses
  %i.ls = extractvalue { ptr, i8 } %i.lr, 0       ; 2 uses
  %i.lt = extractvalue { ptr, i8 } %i.lr, 1
  %i.lu = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.38, i64 39), !inline_history !132 ; 2 uses
  %i.lv = extractvalue { ptr, i8 } %i.lu, 0       ; 2 uses
  %i.lw = extractvalue { ptr, i8 } %i.lu, 1
  %i.lx = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.39, i64 49), !inline_history !132 ; 2 uses
  %i.ly = extractvalue { ptr, i8 } %i.lx, 0       ; 2 uses
  %i.lz = extractvalue { ptr, i8 } %i.lx, 1
  %i.ma = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.40, i64 49), !inline_history !132 ; 2 uses
  %i.mb = extractvalue { ptr, i8 } %i.ma, 0       ; 2 uses
  %i.mc = extractvalue { ptr, i8 } %i.ma, 1
  %i.md = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.41, i64 37), !inline_history !132 ; 2 uses
  %i.me = extractvalue { ptr, i8 } %i.md, 0       ; 2 uses
  %i.mf = extractvalue { ptr, i8 } %i.md, 1
  %i.mg = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.mh = trunc nuw i8 %i.ln to i1
  %i.mi = trunc nuw i8 %i.lq to i1
  %i.mj = select i1 %i.mh, i1 %i.mi, i1 false
  %i.mk = trunc nuw i8 %i.lt to i1
  %i.ml = select i1 %i.mj, i1 %i.mk, i1 false
  %i.mm = trunc nuw i8 %i.lw to i1
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  %i.mo = trunc nuw i8 %i.lz to i1
  %i.mp = select i1 %i.mn, i1 %i.mo, i1 false
  %i.mq = trunc nuw i8 %i.mc to i1
  %i.mr = select i1 %i.mp, i1 %i.mq, i1 false
  %i.ms = trunc nuw i8 %i.mf to i1
  %i.mt = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %i.mt, label %bb.bd, label %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit
  %i.mu = insertelement <4 x ptr> poison, ptr %i.lm, i64 0
  %i.mv = insertelement <4 x ptr> %i.mu, ptr %i.lp, i64 1
  %i.mw = insertelement <4 x ptr> %i.mv, ptr %i.ls, i64 2
  %i.mx = insertelement <4 x ptr> %i.mw, ptr %i.lv, i64 3
  %.fr471 = freeze <4 x ptr> %i.mx
  %i.my = icmp eq ptr %i.ly, null
  %i.mz = icmp eq ptr %i.mb, null
  %i.na = icmp eq ptr %i.me, null
  %i.nb = icmp ne <4 x ptr> %.fr471, splat (ptr null)
  %i.nc = bitcast <4 x i1> %i.nb to i4
  %i.nd = icmp eq i4 %i.nc, 0
  %op.rdx451 = select i1 %i.nd, i1 %i.my, i1 false
  %38 = select i1 %op.rdx451, i1 %i.mz, i1 false
  %op.rdx453 = select i1 %38, i1 %i.na, i1 false
  br i1 %op.rdx453, label %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit, label %.critedge44.i.i

.critedge44.i.i:                                  ; preds = %bb.bd
  %i.ne = ptrtoint ptr %i.mb to i64
  %i.nf = ptrtoint ptr %i.me to i64
  %i.ng = call ptr @_ZN4mlir4LLVM20LoopUnrollAndJamAttr3getEPNS_11MLIRContextENS_8BoolAttrENS_11IntegerAttrENS0_18LoopAnnotationAttrES6_S6_S6_S6_(ptr noundef %i.mg, ptr %i.lm, ptr %i.lp, ptr %i.ls, ptr %i.lv, ptr %i.ly, i64 %i.ne, i64 %i.nf) #12, !inline_history !132
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit, %bb.bd, %.critedge44.i.i
  %.sroa.0.0.i.i82 = phi ptr [ %i.ng, %.critedge44.i.i ], [ null, %bb.bd ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertUnrollAttrEv.exit ] ; 2 uses
  %i.nh = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.42, i64 17) ; 2 uses
  %i.ni = extractvalue { ptr, i8 } %i.nh, 0       ; 2 uses
  %i.nj = extractvalue { ptr, i8 } %i.nh, 1
  %i.nk = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.43, i64 33) ; 2 uses
  %i.nl = extractvalue { ptr, i8 } %i.nk, 0       ; 2 uses
  %i.nm = extractvalue { ptr, i8 } %i.nk, 1
  %i.nn = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.no = trunc nuw i8 %i.nj to i1
  %i.np = trunc nuw i8 %i.nm to i1
  %i.nq = select i1 %i.no, i1 %i.np, i1 false
  br i1 %i.nq, label %bb.be, label %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit
  %i.nr = icmp eq ptr %i.ni, null
  %i.ns = icmp eq ptr %i.nl, null
  %or.cond6.i.i66 = select i1 %i.nr, i1 %i.ns, i1 false
  br i1 %or.cond6.i.i66, label %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit, label %.critedge14.i.i67

.critedge14.i.i67:                                ; preds = %bb.be
  %i.nt = call ptr @_ZN4mlir4LLVM12LoopLICMAttr3getEPNS_11MLIRContextENS_8BoolAttrES4_(ptr noundef %i.nn, ptr %i.ni, ptr %i.nl) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit, %bb.be, %.critedge14.i.i67
  %.sroa.0.0.i.i63 = phi ptr [ %i.nt, %.critedge14.i.i67 ], [ null, %bb.be ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertUnrollAndJamAttrEv.exit ] ; 2 uses
  %i.nu = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupBoolNodeEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.44, i64 27, i1 noundef zeroext true), !inline_history !133 ; 2 uses
  %i.nv = extractvalue { ptr, i8 } %i.nu, 0       ; 2 uses
  %i.nw = extractvalue { ptr, i8 } %i.nu, 1
  %i.nx = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.45, i64 40), !inline_history !133 ; 2 uses
  %i.ny = extractvalue { ptr, i8 } %i.nx, 0       ; 2 uses
  %i.nz = extractvalue { ptr, i8 } %i.nx, 1
  %i.oa = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.46, i64 40), !inline_history !133 ; 2 uses
  %i.ob = extractvalue { ptr, i8 } %i.oa, 0       ; 2 uses
  %i.oc = extractvalue { ptr, i8 } %i.oa, 1
  %i.od = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.47, i64 38), !inline_history !133 ; 2 uses
  %i.oe = extractvalue { ptr, i8 } %i.od, 0       ; 2 uses
  %i.of = extractvalue { ptr, i8 } %i.od, 1
  %i.og = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion18lookupFollowupNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.48, i64 33), !inline_history !133 ; 2 uses
  %i.oh = extractvalue { ptr, i8 } %i.og, 0       ; 2 uses
  %i.oi = extractvalue { ptr, i8 } %i.og, 1
  %i.oj = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ok = trunc nuw i8 %i.nw to i1
  %i.ol = trunc nuw i8 %i.nz to i1
  %i.om = select i1 %i.ok, i1 %i.ol, i1 false
  %i.on = trunc nuw i8 %i.oc to i1
  %i.oo = select i1 %i.om, i1 %i.on, i1 false
  %i.op = trunc nuw i8 %i.of to i1
  %i.oq = select i1 %i.oo, i1 %i.op, i1 false
  %i.or = trunc nuw i8 %i.oi to i1
  %i.os = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %i.os, label %bb.bf, label %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit
  %i.ot = insertelement <4 x ptr> poison, ptr %i.nv, i64 0
  %i.ou = insertelement <4 x ptr> %i.ot, ptr %i.ny, i64 1
  %i.ov = insertelement <4 x ptr> %i.ou, ptr %i.ob, i64 2
  %i.ow = insertelement <4 x ptr> %i.ov, ptr %i.oe, i64 3
  %.fr477 = freeze <4 x ptr> %i.ow
  %i.ox = icmp eq ptr %i.oh, null
  %i.oy = icmp ne <4 x ptr> %.fr477, splat (ptr null)
  %i.oz = bitcast <4 x i1> %i.oy to i4
  %i.pa = icmp eq i4 %i.oz, 0
  %op.rdx450 = select i1 %i.pa, i1 %i.ox, i1 false
  br i1 %op.rdx450, label %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit, label %.critedge32.i.i

.critedge32.i.i:                                  ; preds = %bb.bf
  %i.pb = call ptr @_ZN4mlir4LLVM18LoopDistributeAttr3getEPNS_11MLIRContextENS_8BoolAttrENS0_18LoopAnnotationAttrES5_S5_S5_(ptr noundef %i.oj, ptr %i.nv, ptr %i.ny, ptr %i.ob, ptr %i.oe, ptr %i.oh) #12, !inline_history !133
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit, %bb.bf, %.critedge32.i.i
  %.sroa.0.0.i.i60 = phi ptr [ %i.pb, %.critedge32.i.i ], [ null, %bb.bf ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertLICMAttrEv.exit ] ; 2 uses
  %i.pc = ptrtoint ptr %.sroa.0.0.i.i60 to i64
  %i.pd = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupBoolNodeEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.49, i64 26, i1 noundef zeroext false) ; 2 uses
  %i.pe = extractvalue { ptr, i8 } %i.pd, 0       ; 2 uses
  %i.pf = extractvalue { ptr, i8 } %i.pd, 1
  %i.pg = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion13lookupIntNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.50, i64 37) ; 2 uses
  %i.ph = extractvalue { ptr, i8 } %i.pg, 0       ; 2 uses
  %i.pi = extractvalue { ptr, i8 } %i.pg, 1
  %i.pj = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.pk = trunc nuw i8 %i.pf to i1
  %i.pl = trunc nuw i8 %i.pi to i1
  %i.pm = select i1 %i.pk, i1 %i.pl, i1 false
  br i1 %i.pm, label %bb.bg, label %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit

bb.bg:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit
  %i.pn = icmp eq ptr %i.pe, null
  %i.po = icmp eq ptr %i.ph, null
  %or.cond6.i.i = select i1 %i.pn, i1 %i.po, i1 false
  br i1 %or.cond6.i.i, label %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit, label %.critedge14.i.i

.critedge14.i.i:                                  ; preds = %bb.bg
  %i.pp = call ptr @_ZN4mlir4LLVM16LoopPipelineAttr3getEPNS_11MLIRContextENS_8BoolAttrENS_11IntegerAttrE(ptr noundef %i.pj, ptr %i.pe, ptr %i.ph) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit, %bb.bg, %.critedge14.i.i
  %.sroa.0.0.i.i50 = phi ptr [ %i.pp, %.critedge14.i.i ], [ null, %bb.bg ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion21convertDistributeAttrEv.exit ] ; 2 uses
  %i.pq = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion13lookupIntNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.51, i64 22) ; 2 uses
  %i.pr = extractvalue { ptr, i8 } %i.pq, 0       ; 2 uses
  %i.ps = extractvalue { ptr, i8 } %i.pq, 1
  %i.pt = trunc nuw i8 %i.ps to i1
  %i.pu = icmp ne ptr %i.pr, null
  %or.cond.not.i.i46 = select i1 %i.pt, i1 %i.pu, i1 false
  br i1 %or.cond.not.i.i46, label %bb.bh, label %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertPeeledAttrEv.exit

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit
  %i.pv = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.pw = call ptr @_ZN4mlir4LLVM14LoopPeeledAttr3getEPNS_11MLIRContextENS_11IntegerAttrE(ptr noundef %i.pv, ptr nonnull %i.pr) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertPeeledAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion17convertPeeledAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit, %bb.bh
  %.sroa.0.0.i.i47 = phi ptr [ %i.pw, %bb.bh ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertPipelineAttrEv.exit ] ; 2 uses
  %i.px = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.52, i64 34) ; 2 uses
  %i.py = extractvalue { ptr, i8 } %i.px, 0       ; 2 uses
  %i.pz = extractvalue { ptr, i8 } %i.px, 1
  %i.qa = trunc nuw i8 %i.pz to i1
  %i.qb = icmp ne ptr %i.py, null
  %or.cond.not.i.i = select i1 %i.qa, i1 %i.qb, i1 false
  br i1 %or.cond.not.i.i, label %bb.bi, label %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertUnswitchAttrEv.exit

bb.bi:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertPeeledAttrEv.exit
  %i.qc = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.qd = call ptr @_ZN4mlir4LLVM16LoopUnswitchAttr3getEPNS_11MLIRContextENS_8BoolAttrE(ptr noundef %i.qc, ptr nonnull %i.py) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertUnswitchAttrEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion19convertUnswitchAttrEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertPeeledAttrEv.exit, %bb.bi
  %.sroa.0.0.i.i43 = phi ptr [ %i.qd, %bb.bi ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion17convertPeeledAttrEv.exit ] ; 2 uses
  %i.qe = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_122LoopMetadataConversion14lookupUnitNodeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr nonnull @.str.2, i64 22), !inline_history !129 ; 2 uses
  %i.qf = extractvalue { ptr, i8 } %i.qe, 0       ; 2 uses
  %i.qg = extractvalue { ptr, i8 } %i.qe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr @.str.3, ptr %14, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 22, ptr %i.qh, align 8
  %i.qi = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.3, i64 22) #12
  %i.qj = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.as, ptr nonnull @.str.3, i64 22, i32 noundef %i.qi) #12 ; 2 uses
  %i.qk = icmp eq i32 %i.qj, -1
  %i.ql = load ptr, ptr %i.as, align 8, !tbaa !69
  br i1 %i.qk, label %_ZN12_GLOBAL__N_122LoopMetadataConversion23lookupIntNodeAsBoolAttrEN4llvm9StringRefE.exit, label %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion19convertUnswitchAttrEv.exit
  %i.qm = sext i32 %i.qj to i64                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %35, i64 40
  %.pre.i.i33 = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  %.pre8.i.i = zext i32 %.pre.i.i33 to i64
  %i.qn = icmp eq i64 %i.qm, %.pre8.i.i
  br i1 %i.qn, label %_ZN12_GLOBAL__N_122LoopMetadataConversion23lookupIntNodeAsBoolAttrEN4llvm9StringRefE.exit, label %_ZN12_GLOBAL__N_122LoopMetadataConversion22lookupAndErasePropertyEN4llvm9StringRefE.exit.i

_ZN12_GLOBAL__N_122LoopMetadataConversion22lookupAndErasePropertyEN4llvm9StringRefE.exit.i: ; preds = %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.qm
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !71 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !20 ; 4 uses
  call void @_ZN4llvm13StringMapImpl9RemoveKeyEPNS_18StringMapEntryBaseE(ptr noundef nonnull align 8 dereferenceable(20) %i.as, ptr noundef nonnull %i.qp) #12
  %i.qs = load i64, ptr %i.qp, align 8, !tbaa !74
  %i.qt = add i64 %i.qs, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.qp, i64 noundef %i.qt, i64 noundef 8) #12
  %.not.i34 = icmp eq ptr %i.qr, null
  br i1 %.not.i34, label %_ZN12_GLOBAL__N_122LoopMetadataConversion23lookupIntNodeAsBoolAttrEN4llvm9StringRefE.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion22lookupAndErasePropertyEN4llvm9StringRefE.exit.i
  %i.qu = getelementptr inbounds i8, ptr %i.qr, i64 -16 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8            ; 3 uses
  %i.qw = and i64 %i.qv, 2
  %.not.i.i.i35 = icmp eq i64 %i.qw, 0
  br i1 %.not.i.i.i35, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i:        ; preds = %bb.bj
  %i.qx = and i64 %i.qv, 960
  %.not8.i = icmp eq i64 %i.qx, 128
  br i1 %.not8.i, label %bb.bo, label %bb.bk

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i: ; preds = %bb.bj
  %i.qy = getelementptr inbounds i8, ptr %i.qr, i64 -24
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !25
  %.not827.i = icmp eq i32 %i.qz, 2
  br i1 %.not827.i, label %.thread.i40, label %bb.bk

bb.bk:                                            ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %.val12.val.i = load ptr, ptr %i.av, align 8
  call fastcc void @"_ZZN12_GLOBAL__N_122LoopMetadataConversion23lookupIntNodeAsBoolAttrEN4llvm9StringRefEENK3$_0clEv"(ptr dead_on_unwind noalias writable align 8 %15, ptr %.val12.val.i, ptr nonnull %14)
  %i.ra = load ptr, ptr %15, align 8, !tbaa !58
  %.not.i.i36 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i36, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %15) #12
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
end_hunk_0
begin_hunk_1_@_ZN4mlir4LLVM6detail22LoopAnnotationImporter23translateLoopAnnotationEPKN4llvm6MDNodeENS_8LocationE:bb.a
  %i.ye = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.yg = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %33, i64 36
  %i.yi = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.yk = getelementptr inbounds nuw i8, ptr %27, i64 33
  %i.yl = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %33, i64 200 ; 2 uses
  %.pre = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !71
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph, %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit
  %i.yn = phi ptr [ %.pre, %.lr.ph ], [ %i.zi, %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit ] ; 2 uses
  %.sroa.0176.0388 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %.sroa.0176.1, %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit ]
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = load i64, ptr %i.yn, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #12
  %.sroa.0.0.copyload.i = load ptr, ptr %i.av, align 8
  call void @_ZN4mlir11emitWarningENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %33, ptr %.sroa.0.0.copyload.i) #12, !inline_history !129
  %i.yq = load ptr, ptr %33, align 8, !tbaa !58
  %.not.i.i16 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i16, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #12
  store i32 3, ptr %26, align 8, !tbaa !61
  store ptr @.str.4, ptr %i.yf, align 8, !tbaa !63
  store i64 24, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !65
  %i.yr = load i32, ptr %i.yg, align 8, !tbaa !25 ; 2 uses
  %i.ys = load i32, ptr %i.yh, align 4, !tbaa !26
  %.not.i.i.i.i.i = icmp ult i32 %i.yr, %i.ys
  br i1 %.not.i.i.i.i.i, label %bb.dj, label %bb.di, !prof !21

bb.di:                                            ; preds = %bb.dh
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ye, ptr noundef nonnull align 8 dereferenceable(24) %26)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.yt = zext i32 %i.yr to i64
  %i.yu = load ptr, ptr %i.ye, align 8, !tbaa !24
  %i.yv = getelementptr inbounds nuw [24 x i8], ptr %i.yu, i64 %i.yt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.yv, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false)
  %i.yw = load i32, ptr %i.yg, align 8, !tbaa !25
  %i.yx = add i32 %i.yw, 1
  store i32 %i.yx, ptr %i.yg, align 8, !tbaa !25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit: ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %.pr = load ptr, ptr %33, align 8, !tbaa !58
  %.not.i.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i.i15, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #12
  store i8 5, ptr %i.yj, align 8, !tbaa !77
  store i8 1, ptr %i.yk, align 1, !tbaa !78
  store ptr %i.yo, ptr %27, align 8, !tbaa !72
  store i64 %i.yp, ptr %i.yl, align 8, !tbaa !72
  %i.yy = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.yi, ptr noundef nonnull align 8 dereferenceable(34) %27) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #12
  %.pr375 = load ptr, ptr %33, align 8, !tbaa !58
  %.not.i14 = icmp eq ptr %.pr375, null
  br i1 %.not.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %33) #12
  br label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread: ; preds = %bb.dg, %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit, %bb.dk, %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit
  %i.yz = load i8, ptr %i.ym, align 8, !tbaa !66, !range !67, !noundef !68
  %i.za = trunc nuw i8 %i.yz to i1
  store i8 0, ptr %i.ym, align 8, !tbaa !66
  br i1 %i.za, label %bb.dl, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.dl:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.yi) #12
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit.thread, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.0176.0388, i64 8 ; 3 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !71 ; 2 uses
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %.lr.ph.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %.lr.ph.i.i.i
  %i.ze = phi ptr [ %i.zf, %.lr.ph.i.i.i ], [ %i.zb, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 3 uses
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !71 ; 2 uses
  %i.zh = icmp eq ptr %i.zg, null
  br i1 %i.zh, label %.lr.ph.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit, !llvm.loop !143

_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %i.zi = phi ptr [ %i.zc, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.zg, %.lr.ph.i.i.i ]
  %.sroa.0176.1 = phi ptr [ %i.zb, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.zf, %.lr.ph.i.i.i ] ; 2 uses
  %.not381 = icmp eq ptr %.sroa.0176.1, %i.yd
  br i1 %.not381, label %.loopexit, label %bb.dg

bb.dm:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion23convertParallelAccessesEv.exit
  %i.zj = load i32, ptr %i.aq, align 8, !tbaa !25
  %.not.i.i11 = icmp eq i32 %i.zj, 0
  br i1 %.not.i.i11, label %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit, label %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit: ; preds = %bb.dm
  %i.zk = load ptr, ptr %i.ax, align 8, !tbaa !95, !nonnull !68, !align !96
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !163, !nonnull !68, !align !96
  %i.zm = load ptr, ptr %35, align 8, !tbaa !24
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !165
  %i.zo = call ptr @_ZN4mlir4LLVM12ModuleImport12translateLocEPN4llvm10DILocationE(ptr noundef nonnull align 8 dereferenceable(498) %i.zl, ptr noundef %i.zn) #12 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !168
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i12 = load ptr, ptr %i.zq, align 8, !tbaa !170
  %i.zr = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i12, @_ZN4mlir6detail14TypeIDResolverINS_8FusedLocEvE2idE
  %spec.select.i.i.i13 = select i1 %i.zr, ptr %i.zo, ptr null ; 3 uses
  %.pr377 = load i32, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.zs = ptrtoint ptr %spec.select.i.i.i13 to i64 ; 2 uses
  %i.zt = icmp ult i32 %.pr377, 2
  br i1 %i.zt, label %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit
  %.not.i = icmp eq i32 %.pr377, 2
  br i1 %.not.i, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  %.sroa.0.0.copyload.i8 = load ptr, ptr %i.av, align 8
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %29, ptr %.sroa.0.0.copyload.i8) #12
  %i.zu = load ptr, ptr %29, align 8, !tbaa !58
  %.not.i.i.i9 = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.thread.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.zv = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #12
  store i32 3, ptr %28, align 8, !tbaa !61
  %i.zw = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.57, ptr %i.zw, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 54, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !65
  %i.zx = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !25 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !26
  %.not.i.i.i.i.i.i = icmp ult i32 %i.zy, %i.aaa
  br i1 %.not.i.i.i.i.i.i, label %bb.dr, label %bb.dq, !prof !21

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.zv, ptr noundef nonnull align 8 dereferenceable(24) %28)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.aab = zext i32 %i.zy to i64
  %i.aac = load ptr, ptr %i.zv, align 8, !tbaa !24
  %i.aad = getelementptr inbounds nuw [24 x i8], ptr %i.aac, i64 %i.aab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aad, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false)
  %i.aae = load i32, ptr %i.zx, align 8, !tbaa !25
  %i.aaf = add i32 %i.aae, 1
  store i32 %i.aaf, ptr %i.zx, align 8, !tbaa !25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.i: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #12
  %.pr.i = load ptr, ptr %29, align 8, !tbaa !58
  %.not.i.i10 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.thread.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %29) #12
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.thread.i

_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.thread.i: ; preds = %bb.ds, %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.i, %bb.do
  %i.aag = getelementptr inbounds nuw i8, ptr %29, i64 200 ; 2 uses
  %i.aah = load i8, ptr %i.aag, align 8, !tbaa !66, !range !67, !noundef !68
  %i.aai = trunc nuw i8 %i.aah to i1
  store i8 0, ptr %i.aag, align 8, !tbaa !66
  br i1 %i.aai, label %bb.dt, label %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit.thread

bb.dt:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.thread.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aaj) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit.thread

_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit.thread.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  br label %_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit

bb.du:                                            ; preds = %bb.dn
  %i.aak = load ptr, ptr %i.ax, align 8, !tbaa !95, !nonnull !68, !align !96
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !163, !nonnull !68, !align !96
  %i.aam = load ptr, ptr %35, align 8, !tbaa !24
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !165
  %i.aap = call ptr @_ZN4mlir4LLVM12ModuleImport12translateLocEPN4llvm10DILocationE(ptr noundef nonnull align 8 dereferenceable(498) %i.aal, ptr noundef %i.aao) #12 ; 2 uses
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !168
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aar, align 8, !tbaa !170
  %i.aas = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_8FusedLocEvE2idE
  %spec.select.i.i.i = select i1 %i.aas, ptr %i.aap, ptr null
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit: ; preds = %bb.dm, %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit, %bb.du
  %i.aat = phi i64 [ %i.zs, %bb.du ], [ 0, %bb.dm ], [ %i.zs, %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit ]
  %.sroa.01.0.i379 = phi ptr [ %spec.select.i.i.i13, %bb.du ], [ null, %bb.dm ], [ %spec.select.i.i.i13, %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit ]
  %.sroa.03.0.i = phi ptr [ %spec.select.i.i.i, %bb.du ], [ null, %bb.dm ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion15convertStartLocEv.exit ] ; 2 uses
  %i.aau = load ptr, ptr %i.ay, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  %i.aav = trunc nuw i8 %i.hl to i1
  %i.aaw = trunc nuw i8 %i.qg to i1
  %i.aax = select i1 %i.aav, i1 %i.aaw, i1 false
  %i.aay = and i1 %i.aax, %.sroa.523.1.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.aba = load i8, ptr %i.aaz, align 8, !range !67
  %i.abb = trunc nuw i8 %i.aba to i1
  %or.cond.i = select i1 %i.aay, i1 %i.abb, i1 false
  br i1 %or.cond.i, label %bb.dv, label %_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit

bb.dv:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit
  %i.abc = insertelement <8 x ptr> poison, ptr %i.hk, i64 0
  %i.abd = insertelement <8 x ptr> %i.abc, ptr %.sroa.0.0.i.i133, i64 1
  %i.abe = insertelement <8 x ptr> %i.abd, ptr %.sroa.0.0.i.i116, i64 2
  %i.abf = insertelement <8 x ptr> %i.abe, ptr %.sroa.0.0.i.i102, i64 3
  %i.abg = insertelement <8 x ptr> %i.abf, ptr %.sroa.0.0.i.i82, i64 4
  %i.abh = insertelement <8 x ptr> %i.abg, ptr %.sroa.0.0.i.i63, i64 5
  %i.abi = insertelement <8 x ptr> %i.abh, ptr %.sroa.0.0.i.i60, i64 6
  %i.abj = insertelement <8 x ptr> %i.abi, ptr %.sroa.0.0.i.i50, i64 7
  %.fr478 = freeze <8 x ptr> %i.abj
  %i.abk = icmp eq <8 x ptr> %.fr478, splat (ptr null) ; 2 uses
  %i.abl = insertelement <4 x ptr> poison, ptr %.sroa.0.0.i.i47, i64 0
  %i.abm = insertelement <4 x ptr> %i.abl, ptr %.sroa.0.0.i.i43, i64 1
  %i.abn = insertelement <4 x ptr> %i.abm, ptr %i.qf, i64 2
  %i.abo = insertelement <4 x ptr> %i.abn, ptr %.sroa.022.1.i, i64 3
  %.fr479 = freeze <4 x ptr> %i.abo
  %i.abp = icmp eq <4 x ptr> %.fr479, splat (ptr null)
  %i.abq = icmp eq ptr %.sroa.01.0.i379, null
  %i.abr = icmp eq ptr %.sroa.03.0.i, null
  %i.abs = getelementptr inbounds nuw i8, ptr %32, i64 8
  %.val.i7 = load i32, ptr %i.abs, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val.i7, 0
  %i.abt = shufflevector <8 x i1> %i.abk, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.abt, %i.abp
  %i.abu = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abv = shufflevector <8 x i1> %i.abu, <8 x i1> %i.abk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.abw = bitcast <8 x i1> %i.abv to i8
  %i.abx = icmp eq i8 %i.abw, -1
  %op.rdx = select i1 %i.abx, i1 %i.abq, i1 false
  %39 = select i1 %op.rdx, i1 %i.abr, i1 false
  %op.rdx449 = select i1 %39, i1 %.not.i.i.i, i1 false
  br i1 %op.rdx449, label %_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit, label %.critedge90.i

.critedge90.i:                                    ; preds = %bb.dv
  %i.aby = load ptr, ptr %32, align 8, !tbaa !24
  store ptr %i.aby, ptr %30, align 8, !tbaa !173
  %i.abz = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.aca = zext i32 %.val.i7 to i64
  store i64 %i.aca, ptr %i.abz, align 8, !tbaa !174
  %i.acb = ptrtoint ptr %.sroa.0.0.i.i63 to i64
  %i.acc = ptrtoint ptr %.sroa.0.0.i.i50 to i64
  %i.acd = ptrtoint ptr %.sroa.0.0.i.i47 to i64
  %i.ace = ptrtoint ptr %.sroa.0.0.i.i43 to i64
  %i.acf = ptrtoint ptr %i.qf to i64
  %i.acg = ptrtoint ptr %.sroa.022.1.i to i64
  %i.ach = ptrtoint ptr %.sroa.03.0.i to i64
  %i.aci = call ptr @_ZN4mlir4LLVM18LoopAnnotationAttr3getEPNS_11MLIRContextENS_8BoolAttrENS0_17LoopVectorizeAttrENS0_18LoopInterleaveAttrENS0_14LoopUnrollAttrENS0_20LoopUnrollAndJamAttrENS0_12LoopLICMAttrENS0_18LoopDistributeAttrENS0_16LoopPipelineAttrENS0_14LoopPeeledAttrENS0_16LoopUnswitchAttrES4_S4_NS_8FusedLocESE_N4llvm8ArrayRefINS0_15AccessGroupAttrEEE(ptr noundef %i.aau, ptr %i.hk, ptr %.sroa.0.0.i.i133, ptr %.sroa.0.0.i.i116, ptr %.sroa.0.0.i.i102, ptr %.sroa.0.0.i.i82, i64 %i.acb, i64 %i.pc, i64 %i.acc, i64 %i.acd, i64 %i.ace, i64 %i.acf, i64 %i.acg, i64 %i.aat, i64 %i.ach, ptr noundef nonnull byval(%"class.llvm::ArrayRef.388") align 8 %30) #12
  br label %_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit

_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit.thread, %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit, %bb.dv, %.critedge90.i
  %.sroa.0.0.i = phi ptr [ %i.aci, %.critedge90.i ], [ null, %bb.dv ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion13convertEndLocEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit, %_ZNK4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE4keysEv.exit, %_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit
  %.sroa.0223.0 = phi ptr [ %.sroa.0.0.i, %_ZL15createIfNonNullIN4mlir4LLVM18LoopAnnotationAttrEJN4llvm9FailureOrINS0_8BoolAttrEEENS4_INS1_17LoopVectorizeAttrEEENS4_INS1_18LoopInterleaveAttrEEENS4_INS1_14LoopUnrollAttrEEENS4_INS1_20LoopUnrollAndJamAttrEEENS4_INS1_12LoopLICMAttrEEENS4_INS1_18LoopDistributeAttrEEENS4_INS1_16LoopPipelineAttrEEENS4_INS1_14LoopPeeledAttrEEENS4_INS1_16LoopUnswitchAttrEEES6_S6_NS4_INS0_8FusedLocEEESQ_NS4_INS3_11SmallVectorINS1_15AccessGroupAttrELj6EEEEEEET_PNS0_11MLIRContextEDpRKT0_.exit ], [ null, %_ZNK4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEE4keysEv.exit ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_20StringMapKeyIteratorIPKNS_6MDNodeEEENS_17StringMapIterBaseIS4_Lb1EEESt20forward_iterator_tagNS_9StringRefElPS9_RS9_EppEv.exit ]
  %i.acj = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 2 uses
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !94, !range !67, !noundef !68
  %i.acl = trunc nuw i8 %i.ack to i1
  store i8 0, ptr %i.acj, align 8, !tbaa !94
  br i1 %i.acl, label %bb.dw, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir4LLVM15AccessGroupAttrELj6EEELb0ELb0EED2Ev.exit

bb.dw:                                            ; preds = %.loopexit
  %i.acm = load ptr, ptr %32, align 8, !tbaa !24  ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aco = icmp eq ptr %i.acm, %i.acn
  br i1 %i.aco, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir4LLVM15AccessGroupAttrELj6EEELb0ELb0EED2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @free(ptr noundef %i.acm) #12
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir4LLVM15AccessGroupAttrELj6EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir4LLVM15AccessGroupAttrELj6EEELb0ELb0EED2Ev.exit: ; preds = %.loopexit, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversion7convertEv.exit

_ZN12_GLOBAL__N_122LoopMetadataConversion7convertEv.exit: ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir4LLVM15AccessGroupAttrELj6EEELb0ELb0EED2Ev.exit
  %.sroa.0223.1 = phi ptr [ %.sroa.0223.0, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir4LLVM15AccessGroupAttrELj6EEELb0ELb0EED2Ev.exit ], [ null, %_ZN12_GLOBAL__N_122LoopMetadataConversion19initConversionStateEv.exit ] ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %35, i64 44
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !155
  %i.acr = icmp eq i32 %i.acq, 0
  %.pre13.i.i = load ptr, ptr %i.as, align 8, !tbaa !69 ; 4 uses
  br i1 %i.acr, label %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEED2Ev.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZN12_GLOBAL__N_122LoopMetadataConversion7convertEv.exit
  %i.acs = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !79 ; 2 uses
  %i.acu = zext i32 %i.act to i64
  %.idx.i.i = shl nuw nsw i64 %i.acu, 3
  %i.acv = getelementptr inbounds nuw i8, ptr %.pre13.i.i, i64 %.idx.i.i
  %.not11.i.i = icmp eq i32 %i.act, 0
  br i1 %.not11.i.i, label %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEED2Ev.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dy, %bb.ea
  %.012.i.i = phi ptr [ %i.acz, %bb.ea ], [ %.pre13.i.i, %bb.dy ] ; 2 uses
  %i.acw = load ptr, ptr %.012.i.i, align 8, !tbaa !71 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.acw, null
  br i1 %.not10.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !74
  %i.acy = add i64 %i.acx, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.acw, i64 noundef %i.acy, i64 noundef 8) #12
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.acz, %i.acv
  br i1 %.not.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ea
  %.pre.i.i = load ptr, ptr %i.as, align 8, !tbaa !69
  br label %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEED2Ev.exit.i

_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEED2Ev.exit.i: ; preds = %.loopexit.loopexit.i.i, %bb.dy, %_ZN12_GLOBAL__N_122LoopMetadataConversion7convertEv.exit
  %i.ada = phi ptr [ %.pre.i.i, %.loopexit.loopexit.i.i ], [ %.pre13.i.i, %bb.dy ], [ %.pre13.i.i, %_ZN12_GLOBAL__N_122LoopMetadataConversion7convertEv.exit ]
  call void @free(ptr noundef %i.ada) #12
  %i.adb = load ptr, ptr %35, align 8, !tbaa !24  ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.ap
  br i1 %i.adc, label %_ZN12_GLOBAL__N_122LoopMetadataConversionD2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEED2Ev.exit.i
  call void @free(ptr noundef %i.adb) #12
  br label %_ZN12_GLOBAL__N_122LoopMetadataConversionD2Ev.exit

_ZN12_GLOBAL__N_122LoopMetadataConversionD2Ev.exit: ; preds = %_ZN4llvm9StringMapIPKNS_6MDNodeENS_15MallocAllocatorEED2Ev.exit.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0223.1, ptr %31, align 8
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.add = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEN4mlir4LLVM18LoopAnnotationAttrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JRS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %31), !noalias !175 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.e, %_ZN12_GLOBAL__N_122LoopMetadataConversionD2Ev.exit, %bb.a
  %.sroa.0165.1 = phi ptr [ null, %bb.a ], [ %i.ao, %bb.e ], [ %.sroa.0223.1, %_ZN12_GLOBAL__N_122LoopMetadataConversionD2Ev.exit ]
  ret ptr %.sroa.0165.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4LLVM6detail22LoopAnnotationImporter20translateAccessGroupEPKN4llvm6MDNodeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.llvm::SmallVector.2", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 6, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = and i64 %i.f, 2
  %.not.i.i = icmp eq i64 %i.g, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32
  %i.i = lshr i32 %i.h, 6
  %i.j = and i32 %i.i, 15
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.not = icmp eq i32 %.0.i.i, 0
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MDNodeELb1EE9push_backES3_.exit, label %bb.d

_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MDNodeELb1EE9push_backES3_.exit: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  store ptr %1, ptr %i.b, align 8
  store i32 1, ptr %i.c, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MDNodeELb1EE9push_backES3_.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.m = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MDNodeELb1EE9push_backES3_.exit ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit ]
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %1, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds i8, ptr %1, i64 -24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %i.r = zext i32 %i.q to i64
  br label %_ZNK4llvm6MDNode8operandsEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = lshr i64 %i.f, 2
  %i.t = and i64 %i.s, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.u
  %i.w = lshr i64 %i.f, 6
  %i.x = and i64 %i.w, 15
  br label %_ZNK4llvm6MDNode8operandsEv.exit

_ZNK4llvm6MDNode8operandsEv.exit:                 ; preds = %bb.e, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.x, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.3.0.i.i, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %.not3161 = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %.not3161, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm6MDNode8operandsEv.exit, %bb.j
  %.03062 = phi ptr [ %i.aj, %bb.j ], [ %.sroa.0.0.i.i, %_ZNK4llvm6MDNode8operandsEv.exit ] ; 2 uses
  %i.z = load ptr, ptr %.03062, align 8, !tbaa !46 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !49
  %i.ab = add i8 %i.aa, -38
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ab, -33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_6MDNodeELb1EE9push_backES3_.exit38, label %bb.g

end_hunk_1
