Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVPTXLowerAggrCopies?download=true
inline.NumInlined: 691
inline.NumDeleted: 523
begin_hunk_0_@_ZN12_GLOBAL__N_120NVPTXLowerAggrCopies13runOnFunctionERN4llvm8FunctionE:bb.a
  %i.cx = load ptr, ptr %3, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  store ptr %i.ap, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.e, align 8, !tbaa !33
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.e, align 8, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.l, %bb.k, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, %bb.j, %bb.b, %bb.s, %bb.r, %bb.p, %bb.o, %bb.i, %bb.h, %bb.f, %bb.e, %bb.m, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm5Value9hasOneUseEv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0188.0215, i64 8
  %.sroa.0188.0 = load ptr, ptr %i.db, align 8, !tbaa !163 ; 2 uses
  %.not206 = icmp eq ptr %.sroa.0188.0, %i.an
  br i1 %.not206, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %._crit_edge220
  %i.dc = zext i32 %i.ai to i64
  %i.dd = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %.idx = shl nuw nsw i64 %i.dc, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  %.not221 = icmp eq i32 %i.ai, 0
  br i1 %.not221, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 69
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 70
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.u

._crit_edge225.loopexit:                          ; preds = %bb.ae
  %.pre = load i32, ptr %i.e, align 8, !tbaa !33
  br label %._crit_edge225

._crit_edge225:                                   ; preds = %._crit_edge225.loopexit, %bb.t
  %i.dz = phi i32 [ %.pre, %._crit_edge225.loopexit ], [ %i.ak, %bb.t ] ; 2 uses
  %i.ea = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.eb = zext i32 %i.dz to i64
  %.idx230 = shl nuw nsw i64 %i.eb, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx230
  %.not134226 = icmp eq i32 %i.dz, 0
  br i1 %.not134226, label %.loopexit, label %.lr.ph229

bb.u:                                             ; preds = %.lr.ph224, %bb.ae
  %.0121222 = phi ptr [ %i.dd, %.lr.ph224 ], [ %i.hh, %bb.ae ] ; 2 uses
  %i.ed = load ptr, ptr %.0121222, align 8, !tbaa !180 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !167
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !174 ; 9 uses
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 -32 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !175 ; 4 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 -32 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !175 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !173
  %i.eo = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.g, ptr noundef %i.en) ; 2 uses
  %.fca.1.extract.i.i165 = extractvalue { i64, i8 } %i.eo, 1
  %i.ep = trunc nuw i8 %.fca.1.extract.i.i165 to i1
  br i1 %i.ep, label %bb.v, label %_ZNK4llvm8TypeSizecvmEv.exit168

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit168:                  ; preds = %bb.u
  %.fca.0.extract.i.i164 = extractvalue { i64, i8 } %i.eo, 0
  %i.eq = add i64 %.fca.0.extract.i.i164, 7
  %i.er = lshr i64 %i.eq, 3
  %i.es = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #14
  %i.et = and i64 %i.er, 4294967295               ; 3 uses
  %i.eu = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.es, i64 noundef %i.et, i1 noundef zeroext false, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i8 0, i64 40, i1 false)
  store ptr %i.ej, ptr %4, align 8, !tbaa !182
  store i64 %i.et, ptr %i.df, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.di, i8 0, i64 40, i1 false)
  store ptr %i.el, ptr %5, align 8, !tbaa !182
  store i64 %i.et, ptr %i.dh, align 8, !tbaa !14
  %i.ev = call i32 @_ZN4llvm9AAResults5aliasERKNS_14MemoryLocationES3_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) #14
  %i.ew = and i32 %i.ev, 255
  %i.ex = icmp eq i32 %i.ew, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.ex, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit168
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !187 ; 2 uses
  %i.fa = trunc i16 %i.ez to i8
  %i.fb = lshr i8 %i.fa, 1
  %i.fc = and i8 %i.fb, 63
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !187 ; 2 uses
  %i.ff = trunc i16 %i.fe to i8
  %i.fg = lshr i8 %i.ff, 1
  %i.fh = and i8 %i.fg, 63
  %i.fi = trunc i16 %i.ez to i1
  %i.fj = trunc i16 %i.fe to i1
  store i8 0, ptr %i.dy, align 8, !tbaa !188
  call void @_ZN4llvm25createMemCpyLoopKnownSizeEPNS_11InstructionEPNS_5ValueES3_PNS_11ConstantIntENS_5AlignES6_bbbRKNS_19TargetTransformInfoESt8optionalIjESA_ImE(ptr noundef nonnull %i.eh, ptr noundef %i.ej, ptr noundef %i.el, ptr noundef %i.eu, i8 %i.fc, i8 %i.fh, i1 noundef zeroext %i.fi, i1 noundef zeroext %i.fj, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 0, ptr noundef nonnull byval(%"class.std::optional.178") align 8 %6) #14
  br label %bb.ae

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !173
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !190, !nonnull !153, !align !154
  store ptr null, ptr %7, align 8, !tbaa !194
  store ptr %i.fm, ptr %i.dl, align 8, !tbaa !197
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !198
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !200
  store ptr null, ptr %i.do, align 8, !tbaa !202
  store i32 0, ptr %i.dp, align 8, !tbaa !212
  store i8 0, ptr %i.dq, align 4, !tbaa !213
  store i8 2, ptr %i.dr, align 1, !tbaa !214
  store i8 7, ptr %i.ds, align 2, !tbaa !215
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.dj, align 8, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !216
  store ptr %i.fp, ptr %i.du, align 8, !tbaa !218
  store ptr %i.fn, ptr %i.dv, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eh) #14
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !219
  store i64 %i.fr, ptr %7, align 8, !tbaa !219
  %i.fs = load ptr, ptr %i.ei, align 8, !tbaa !175
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !173 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i32, ptr %i.fv, align 8            ; 2 uses
  %i.fx = and i32 %i.fw, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.fx, 18
  br i1 %spec.select.i.i.i.i, label %bb.y, label %_ZNK4llvm8LoadInst22getPointerAddressSpaceEv.exit

bb.y:                                             ; preds = %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !220
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !221
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm8LoadInst22getPointerAddressSpaceEv.exit

_ZNK4llvm8LoadInst22getPointerAddressSpaceEv.exit: ; preds = %bb.x, %bb.y
  %i.gb = phi i32 [ %.pre.i.i, %bb.y ], [ %i.fw, %bb.x ]
  %i.gc = load ptr, ptr %i.ek, align 8, !tbaa !175
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !173 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = and i32 %i.gg, 254
  %spec.select.i.i.i.i169 = icmp eq i32 %i.gh, 18
  br i1 %spec.select.i.i.i.i169, label %bb.z, label %_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit

bb.z:                                             ; preds = %_ZNK4llvm8LoadInst22getPointerAddressSpaceEv.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !220
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !221
  %.phi.trans.insert.i.i170 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.pre.i.i171 = load i32, ptr %.phi.trans.insert.i.i170, align 8
  br label %_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit

_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit: ; preds = %_ZNK4llvm8LoadInst22getPointerAddressSpaceEv.exit, %bb.z
  %i.gl = phi i32 [ %.pre.i.i171, %bb.z ], [ %i.gg, %_ZNK4llvm8LoadInst22getPointerAddressSpaceEv.exit ]
  %.not138.unshifted = xor i32 %i.gl, %i.gb
  %.not138 = icmp ult i32 %.not138.unshifted, 256
  br i1 %.not138, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit
  %i.gm = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 0) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store i16 257, ptr %i.dw, align 8
  %i.gn = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %7, i32 noundef 52, ptr noundef %i.ej, ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store i16 257, ptr %i.dx, align 8
  %i.go = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %7, i32 noundef 52, ptr noundef %i.el, ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit
  %.0123 = phi ptr [ %i.gn, %bb.aa ], [ %i.ej, %_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit ]
  %.0122 = phi ptr [ %i.go, %bb.aa ], [ %i.el, %_ZNK4llvm9StoreInst22getPointerAddressSpaceEv.exit ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !187 ; 2 uses
  %i.gr = lshr i16 %i.gq, 1
  %.sroa.0177.0.insert.ext = and i16 %i.gr, 63
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !187 ; 2 uses
  %i.gu = lshr i16 %i.gt, 1
  %.sroa.0.0.insert.ext = and i16 %i.gu, 63
  %i.gv = trunc i16 %i.gt to i1
  %i.gw = trunc i16 %i.gq to i1
  %spec.select = select i1 %i.gv, i1 true, i1 %i.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %.sroa.0177.0.insert.insert = or disjoint i16 %.sroa.0177.0.insert.ext, 256
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  %i.gx = call noundef ptr @_ZN4llvm13IRBuilderBase21CreateMemTransferInstEjPNS_5ValueENS_10MaybeAlignES2_S3_S2_bRKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(88) %7, i32 noundef 258, ptr noundef %.0122, i16 %.sroa.0177.0.insert.insert, ptr noundef %.0123, i16 %.sroa.0.0.insert.insert, ptr noundef %i.eu, i1 noundef zeroext %spec.select, ptr noundef nonnull align 8 dereferenceable(40) %10) #14 ; 2 uses
  %i.gy = load i32, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.gz = load i32, ptr %i.f, align 4, !tbaa !36
  %.not.i172 = icmp ult i32 %i.gy, %i.gz
  br i1 %.not.i172, label %bb.ad, label %bb.ac, !prof !37

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.gx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit173

bb.ad:                                            ; preds = %bb.ab
  %i.ha = zext i32 %i.gy to i64
  %i.hb = load ptr, ptr %3, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha
  store ptr %i.gx, ptr %i.hc, align 1
  %i.hd = load i32, ptr %i.e, align 8, !tbaa !33
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.e, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit173

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit173: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dk) #14
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MemIntrinsicELb1EE9push_backES2_.exit173, %bb.w
  %i.hf = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eh) #14 ; 0 uses
  %i.hg = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ed) #14 ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0121222, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hh, %i.de
  br i1 %.not, label %._crit_edge225.loopexit, label %bb.u

.lr.ph229:                                        ; preds = %._crit_edge225, %bb.ai
  %.0126227 = phi ptr [ %i.hq, %bb.ai ], [ %i.ea, %._crit_edge225 ] ; 2 uses
  %i.hi = load ptr, ptr %.0126227, align 8, !tbaa !222 ; 5 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !175
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !176 ; 2 uses
  switch i32 %i.hm, label %bb.ag [
    i32 257, label %_ZN4llvm8dyn_castINS_10MemCpyInstENS_12MemIntrinsicEEEDcPT0_.exit
    i32 255, label %_ZN4llvm8dyn_castINS_10MemCpyInstENS_12MemIntrinsicEEEDcPT0_.exit
    i32 258, label %bb.af
  ]

_ZN4llvm8dyn_castINS_10MemCpyInstENS_12MemIntrinsicEEEDcPT0_.exit: ; preds = %.lr.ph229, %.lr.ph229
  call void @_ZN4llvm18expandMemCpyAsLoopEPNS_10MemCpyInstERKNS_19TargetTransformInfoEPNS_15ScalarEvolutionE(ptr noundef nonnull %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef null) #14
  br label %.critedge145

bb.af:                                            ; preds = %.lr.ph229
  %i.hn = call noundef zeroext i1 @_ZN4llvm19expandMemMoveAsLoopEPNS_11MemMoveInstERKNS_19TargetTransformInfoE(ptr noundef nonnull %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.u) #14
  br i1 %i.hn, label %.critedge145, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph229
  %i.ho = and i32 %i.hm, -3
  %switch.selectcmp.i.i.i.i.i.i.i.i.not = icmp eq i32 %i.ho, 260
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i.not, label %bb.ah, label %.critedge145

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm18expandMemSetAsLoopEPNS_10MemSetInstERKNS_19TargetTransformInfoE(ptr noundef nonnull %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.u) #14
  br label %.critedge145

.critedge145:                                     ; preds = %_ZN4llvm8dyn_castINS_10MemCpyInstENS_12MemIntrinsicEEEDcPT0_.exit, %bb.ah, %bb.ag, %bb.af
  %i.hp = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hi) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge145, %bb.af
  %i.hq = getelementptr inbounds nuw i8, ptr %.0126227, i64 8 ; 2 uses
  %.not134 = icmp eq ptr %i.hq, %i.ec
  br i1 %.not134, label %.loopexit, label %.lr.ph229

.loopexit:                                        ; preds = %bb.ai, %._crit_edge225, %._crit_edge220
  %i.hr = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.d
  br i1 %i.hs, label %_ZN4llvm11SmallVectorIPNS_12MemIntrinsicELj4EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.hr) #14
  br label %_ZN4llvm11SmallVectorIPNS_12MemIntrinsicELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MemIntrinsicELj4EED2Ev.exit: ; preds = %.loopexit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ht = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.a
  br i1 %i.hu, label %_ZN4llvm11SmallVectorIPNS_8LoadInstELj4EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MemIntrinsicELj4EED2Ev.exit
  call void @free(ptr noundef %i.ht) #14
  br label %_ZN4llvm11SmallVectorIPNS_8LoadInstELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8LoadInstELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_12MemIntrinsicELj4EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %or.cond.not
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %i.g = load i32, ptr %i.a, align 8, !tbaa !33
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !33
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !33
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN4llvm25createMemCpyLoopKnownSizeEPNS_11InstructionEPNS_5ValueES3_PNS_11ConstantIntENS_5AlignES6_bbbRKNS_19TargetTransformInfoESt8optionalIjESA_ImE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8, i8, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), i64, ptr noundef byval(%"class.std::optional.178") align 8) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN4llvm18expandMemCpyAsLoopEPNS_10MemCpyInstERKNS_19TargetTransformInfoEPNS_15ScalarEvolutionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19expandMemMoveAsLoopEPNS_11MemMoveInstERKNS_19TargetTransformInfoE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4llvm18expandMemSetAsLoopEPNS_10MemSetInstERKNS_19TargetTransformInfoE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.p [
    i8 8, label %bb.b
    i8 15, label %bb.c
    i8 17, label %bb.e
    i8 16, label %bb.f
    i8 13, label %bb.g
    i8 12, label %bb.h
    i8 0, label %bb.q
    i8 1, label %bb.q
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 6, label %bb.k
    i8 5, label %bb.k
    i8 10, label %bb.l
    i8 4, label %bb.m
    i8 18, label %bb.n
    i8 19, label %bb.n
    i8 21, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef 0) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !224
  %i.f = zext i32 %i.e to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 254
  %spec.select.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !220
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ]
  %i.l = lshr i32 %i.k, 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef %i.l) #14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !224
end_hunk_0
