Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MicrosoftMangle?download=true
inline.NumInlined: 6613
inline.NumDeleted: 3153
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler17mangleTemplateArgEPKN5clang12TemplateDeclERKNS1_16TemplateArgumentEPKNS1_9NamedDeclE:bb.a
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler20mangleIntegerLiteralERKN4llvm6APSIntEPKN5clang23NonTypeTemplateParmDeclENS5_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(577) %0, ptr noundef nonnull align 8 dereferenceable(13) %16, ptr noundef %3, i64 %i.ed)
  %i.gy = load i32, ptr %i.gw, align 8, !tbaa !606
  %i.gz = icmp ugt i32 %i.gy, 64
  br i1 %i.gz, label %bb.as, label %_ZN4llvm5APIntD2Ev.exit93

bb.as:                                            ; preds = %.critedge81
  %i.ha = load ptr, ptr %16, align 8, !tbaa !465  ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN4llvm5APIntD2Ev.exit93, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.ha) #22
  br label %_ZN4llvm5APIntD2Ev.exit93

_ZN4llvm5APIntD2Ev.exit93:                        ; preds = %.critedge81, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.critedge

bb.au:                                            ; preds = %bb.a
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !465
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !465 ; 7 uses
  %i.hh = and i64 %i.he, -16
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load ptr, ptr %i.hi, align 16, !tbaa !604
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i94 = load i64, ptr %i.hk, align 8, !tbaa !465
  %i.hl = and i64 %.sroa.0.0.copyload.i.i.i.i.i94, -16
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !604
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load i8, ptr %i.ho, align 16
  %i.hq = icmp eq i8 %i.hp, 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.hr = load i32, ptr %i.hg, align 8
  %i.hs = icmp eq i32 %i.hr, 7
  %or.cond.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond.i, label %bb.av, label %.critedge.i

bb.av:                                            ; preds = %bb.au
  %i.ht = tail call noundef zeroext i1 @_ZNK5clang7APValue13hasLValuePathEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hg) #21
  br i1 %i.ht, label %bb.aw, label %.critedge.i

bb.aw:                                            ; preds = %bb.av
  %i.hu = tail call { i64, ptr } @_ZNK5clang7APValue13getLValueBaseEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hg) #21 ; 2 uses
  %i.hv = extractvalue { i64, ptr } %i.hu, 0
  store i64 %i.hv, ptr %7, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hx = extractvalue { i64, ptr } %i.hu, 1
  store ptr %i.hx, ptr %i.hw, align 8
  %i.hy = call noundef zeroext i1 @_ZNK5clang7APValue10LValueBasecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.hy, label %bb.ax, label %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread

.critedge.i:                                      ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.hz = call { i64, ptr } @_ZNK5clang7APValue13getLValueBaseEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hg) #21 ; 2 uses
  %i.ia = extractvalue { i64, ptr } %i.hz, 0
  store i64 %i.ia, ptr %8, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ic = extractvalue { i64, ptr } %i.hz, 1
  store ptr %i.ic, ptr %i.ib, align 8
  %i.id = call i64 @_ZNK5clang7APValue10LValueBase7getTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ie = and i64 %i.id, -16
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = load ptr, ptr %i.if, align 16, !tbaa !604
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.0.0.copyload.i.i.i.i12.i = load i64, ptr %i.ih, align 8, !tbaa !465
  %i.ii = and i64 %.sroa.0.0.copyload.i.i.i.i12.i, -16
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = load ptr, ptr %i.ij, align 16, !tbaa !604
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load i8, ptr %i.il, align 16
  %i.in = add i8 %i.im, -2
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.in, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.io = call { ptr, i64 } @_ZNK5clang7APValue13getLValuePathEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hg) #21
  %i.ip = extractvalue { ptr, i64 } %i.io, 1
  %.not.i96 = icmp eq i64 %i.ip, 1
  br i1 %.not.i96, label %bb.az, label %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.iq = call { ptr, i64 } @_ZNK5clang7APValue13getLValuePathEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hg) #21
  %i.ir = extractvalue { ptr, i64 } %i.iq, 0
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !983
  %.not10.i = icmp eq i64 %i.is, 0
  br i1 %.not10.i, label %bb.ba, label %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.it = call { i64, ptr } @_ZNK5clang7APValue13getLValueBaseEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hg) #21
  %i.iu = extractvalue { i64, ptr } %i.it, 0      ; 2 uses
  %i.iv = and i64 %i.iu, 3
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = and i64 %i.iu, -4                       ; 2 uses
  %.not = icmp ne i64 %i.ix, 0
  %or.cond198 = and i1 %i.iw, %.not
  br i1 %or.cond198, label %bb.bb, label %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.iy = inttoptr i64 %i.ix to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.iz = load ptr, ptr %i.hc, align 8, !tbaa !465
  %i.ja = ptrtoint ptr %i.iz to i64
  call void @_ZN5clang16TemplateArgument19initFromDeclarationEPNS_9ValueDeclENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %i.iy, i64 %i.ja, i1 noundef zeroext false) #21
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler17mangleTemplateArgEPKN5clang12TemplateDeclERKNS1_16TemplateArgumentEPKNS1_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(577) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %.critedge

_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread: ; preds = %bb.ay, %bb.ax, %bb.az, %bb.ba, %.critedge.i, %bb.aw
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !601, !nonnull !455, !align !456 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !600
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 32 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !599 ; 2 uses
  %i.jh = icmp eq ptr %i.je, %i.jg
  br i1 %i.jh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread
  %i.ji = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jc, ptr noundef nonnull @.str.24, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bd:                                            ; preds = %_ZL30getAsArrayToPointerDecayedDeclN5clang8QualTypeERKNS_7APValueE.exit.thread
  store i8 36, ptr %i.jg, align 1
  %i.jj = load ptr, ptr %i.jf, align 8, !tbaa !599
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  store ptr %i.jk, ptr %i.jf, align 8, !tbaa !599
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.bc, %bb.bd
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.0.0.copyload.i98 = load i64, ptr %i.jl, align 8, !tbaa !465
  %i.jm = and i64 %.sroa.0.0.copyload.i98, -16
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load ptr, ptr %i.jn, align 16, !tbaa !604
  %i.jp = call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jo) #21
  %.not74 = icmp eq ptr %i.jp, null
  br i1 %.not74, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.jq = load ptr, ptr %i.jb, align 8, !tbaa !601, !nonnull !455, !align !456 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !600
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 32 ; 3 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !599 ; 2 uses
  %i.jv = icmp eq ptr %i.js, %i.ju
  br i1 %i.jv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jq, ptr noundef nonnull @.str.26, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

bb.bg:                                            ; preds = %bb.be
  store i8 77, ptr %i.ju, align 1
  %i.jx = load ptr, ptr %i.jt, align 8, !tbaa !599
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  store ptr %i.jy, ptr %i.jt, align 8, !tbaa !599
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

_ZN4llvm11raw_ostreamlsEPKc.exit102:              ; preds = %bb.bf, %bb.bg
  %i.jz = call i64 @_ZNK5clang16TemplateArgument30getNonTypeTemplateArgumentTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler10mangleTypeEN5clang8QualTypeENS1_11SourceRangeENS0_19QualifierMangleModeE(ptr noundef nonnull align 8 dereferenceable(577) %0, i64 %i.jz, i64 0, i32 noundef 0)
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit102, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ka = load ptr, ptr %i.hc, align 8, !tbaa !465
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = load ptr, ptr %i.hf, align 8, !tbaa !465
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler22mangleTemplateArgValueEN5clang8QualTypeERKNS1_7APValueENS0_10TplArgKindEb(ptr noundef nonnull align 8 dereferenceable(577) %0, i64 %i.kb, ptr noundef nonnull align 8 dereferenceable(56) %i.kc, i32 noundef 1, i1 noundef zeroext false)
  br label %.critedge

bb.bi:                                            ; preds = %bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !465
  %i.kf = inttoptr i64 %i.ke to ptr               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.kg = load ptr, ptr %0, align 8, !tbaa !624, !nonnull !455, !align !456
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !532, !nonnull !455, !align !456
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.819") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull align 8 dereferenceable(23904) %i.ki) #21, !inline_history !976
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !985, !range !460, !noundef !455
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.0.0.copyload.i115 = load i64, ptr %i.km, align 8, !tbaa !465
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler20mangleIntegerLiteralERKN4llvm6APSIntEPKN5clang23NonTypeTemplateParmDeclENS5_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(577) %0, ptr noundef nonnull align 8 dereferenceable(13) %5, ptr noundef %3, i64 %.sroa.0.0.copyload.i115), !inline_history !976
  %.pre = load i8, ptr %i.kj, align 8, !tbaa !985, !range !460
  %i.kn = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.kj, align 8, !tbaa !985
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = icmp ugt i32 %20, 64
  %or.cond.i.i.i = select i1 %i.kn, i1 %21, i1 false
  br i1 %or.cond.i.i.i, label %bb.bk, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.ko = load ptr, ptr %5, align 8, !tbaa !465   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.ko) #22
  br label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit.thread: ; preds = %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.kq = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #24, !inline_history !976
  %i.kr = call noundef ptr @_ZNK5clang4Stmt16getStmtClassNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kf) #21, !inline_history !976 ; 3 uses
  %.not.i116 = icmp eq ptr %i.kr, null
  br i1 %.not.i116, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ks = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kr) #21
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.bm, %bb.bn
  %.sroa.0.0.i = phi i64 [ %i.ks, %bb.bn ], [ 0, %bb.bm ]
  %.val.i = load ptr, ptr %0, align 8, !tbaa !624
  %i.kt = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.kt, align 8, !tbaa !656
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !986
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr noundef nonnull align 8 dereferenceable(15256) %.val.val.i, i32 %i.kq, i32 noundef 2346) #21, !noalias !986
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr nonnull @.str.239, i64 17), !noalias !986
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr %i.kr, i64 %.sroa.0.0.i), !noalias !986
  call void @_ZN5clang17DiagnosticBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(66) %4) #21
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !986
  %i.ku = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kf) #24, !inline_history !976 ; 2 uses
  %i.kv = load ptr, ptr %6, align 8, !tbaa !696   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i118, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.bo

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !697
  %i.ky = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.kx) ; 2 uses
  store ptr %i.ky, ptr %6, align 8, !tbaa !696
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %_ZN4llvm9StringRefC2EPKc.exit
  %i.kz = phi ptr [ %i.ky, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.kv, %_ZN4llvm9StringRefC2EPKc.exit ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 416 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 424 ; 3 uses
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !529 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 428
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !582
  %.not.i5.i.i.i = icmp ult i32 %i.lc, %i.le
  br i1 %.not.i5.i.i.i, label %bb.bq, label %bb.bp, !prof !527

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.la, i64 %i.ku, i8 1)
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.lf = zext i32 %i.lc to i64
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !458
  %i.lh = getelementptr inbounds nuw [12 x i8], ptr %i.lg, i64 %i.lf ; 2 uses
  store i64 %i.ku, ptr %i.lh, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.li = load i32, ptr %i.lb, align 8, !tbaa !529
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.lb, align 8, !tbaa !529
  br label %_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_11SourceRangeEvEERKS0_OT_.exit: ; preds = %bb.bp, %bb.bq
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #21, !inline_history !976
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.critedge

bb.br:                                            ; preds = %bb.a
  %i.lk = icmp eq i64 %i.d, 0
  br i1 %i.lk, label %bb.bs, label %.lr.ph.preheader

bb.bs:                                            ; preds = %bb.br
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lm = load i32, ptr %i.ll, align 4            ; 2 uses
  %i.ln = and i32 %i.lm, 126
  %switch = icmp eq i32 %i.ln, 68
  br i1 %switch, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !601, !nonnull !455, !align !456 ; 3 uses
  %i.lq = load ptr, ptr %0, align 8, !tbaa !624, !nonnull !455, !align !456
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !532, !nonnull !455, !align !456
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 2600
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !463, !nonnull !455, !align !456
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 144
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = icmp ugt i64 %i.lw, 816043786239999999  ; 2 uses
  %i.ly = select i1 %i.lx, ptr @.str.27, ptr @.str.28 ; 2 uses
  %i.lz = select i1 %i.lx, i64 3, i64 4           ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !600
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 32 ; 3 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !599 ; 2 uses
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = icmp ugt i64 %i.lz, %i.mg
  br i1 %i.mh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.mi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lp, ptr noundef nonnull %i.ly, i64 noundef %i.lz) #21 ; 0 uses
  br label %.critedge

bb.bv:                                            ; preds = %bb.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.md, ptr noundef nonnull align 1 dereferenceable(3) %i.ly, i64 %i.lz, i1 false)
  %i.mj = load ptr, ptr %i.mc, align 8, !tbaa !599
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.lz
  store ptr %i.mk, ptr %i.mc, align 8, !tbaa !599
  br label %.critedge

bb.bw:                                            ; preds = %bb.bs
  %i.ml = and i32 %i.lm, 127
  %i.mm = icmp eq i32 %i.ml, 48
  tail call void @llvm.assume(i1 %i.mm)
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !601, !nonnull !455, !align !456 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !600
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 32 ; 3 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !599 ; 2 uses
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = icmp ult i64 %i.mv, 2
  br i1 %i.mw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.mx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mo, ptr noundef nonnull @.str.12, i64 noundef 2) #21 ; 0 uses
  br label %.critedge

bb.by:                                            ; preds = %bb.bw
  store i16 21284, ptr %i.ms, align 1
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !599
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  store ptr %i.mz, ptr %i.mr, align 8, !tbaa !599
  br label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.br
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0206 = phi ptr [ %i.nd, %.lr.ph ], [ %i.nb, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler17mangleTemplateArgEPKN5clang12TemplateDeclERKNS1_16TemplateArgumentEPKNS1_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(577) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %.0206, ptr noundef %3)
  %i.nd = getelementptr inbounds nuw i8, ptr %.0206, i64 24 ; 2 uses
  %.not79 = icmp eq ptr %i.nd, %i.nc
  br i1 %.not79, label %.critedge, label %.lr.ph

bb.bz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !465
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.nf) #21
  %i.ng = call noundef ptr @_ZNK5clang12TemplateName17getAsTemplateDeclEb(ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext false) #21
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !559 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 28
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = and i32 %i.nk, 127                      ; 2 uses
  %i.nm = add nsw i32 %i.nl, -64
  %i.nn = icmp ult i32 %i.nm, -5
  %.not80204 = icmp eq ptr %i.ni, null
  %.not80 = or i1 %.not80204, %i.nn
  br i1 %.not80, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.no = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ni) #21, !inline_history !9 ; 2 uses
  %.not.i108 = icmp eq ptr %i.no, null
  br i1 %.not.i108, label %bb.cb, label %_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler10mangleTypeEPKN5clang7TagDeclE.exit

bb.cb:                                            ; preds = %bb.ca
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 104
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !684
  br label %_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler10mangleTypeEPKN5clang7TagDeclE.exit

_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler10mangleTypeEPKN5clang7TagDeclE.exit: ; preds = %bb.ca, %bb.cb
  %i.nr = phi ptr [ %i.nq, %bb.cb ], [ %i.no, %bb.ca ] ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 72
  %i.nt = load i16, ptr %i.ns, align 8
  %i.nu = lshr i16 %i.nt, 13
  %i.nv = zext nneg i16 %i.nu to i32
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i109 = load ptr, ptr %i.nw, align 8
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler17mangleTagTypeKindEN5clang11TagTypeKindE(ptr %.val.i109, i32 noundef %i.nv), !inline_history !9
  %i.nx = ptrtoint ptr %i.nr to i64               ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nr, i64 40
  %.sroa.0.0.copyload.i123 = load i64, ptr %i.ny, align 8, !tbaa !459
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler21mangleUnqualifiedNameEN5clang10GlobalDeclENS1_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(577) %0, i64 %i.nx, i64 %.sroa.0.0.copyload.i123)
  call fastcc void @_ZN12_GLOBAL__N_123MicrosoftCXXNameMangler16mangleNestedNameEN5clang10GlobalDeclE(ptr noundef nonnull align 8 dereferenceable(577) %0, i64 %i.nx)
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !601, !nonnull !455, !align !456 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32 ; 2 uses
end_hunk_0
