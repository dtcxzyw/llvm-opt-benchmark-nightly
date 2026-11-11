Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfileProbe?download=true
inline.NumInlined: 2571
inline.NumDeleted: 1500
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineE:bb.a
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.u
  %i.gk = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %i.cc
  br i1 %i.gl, label %._crit_edge, label %.lr.ph236

.lr.ph.i.i:                                       ; preds = %.lr.ph236
  %i.gm = add i64 %i.go, 1                        ; 2 uses
  %i.gn = icmp eq i64 %i.gm, %i.cc
  br i1 %i.gn, label %._crit_edge, label %.lr.ph236, !llvm.loop !527

.lr.ph236:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.go = phi i64 [ %i.gm, %.lr.ph.i.i ], [ %i.gk, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !110 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit, !llvm.loop !527

_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit: ; preds = %.lr.ph236, %bb.u
  %.012.lcssa.i.i = phi i64 [ %i.gc, %bb.u ], [ %i.go, %.lr.ph236 ]
  %.0.lcssa.i.i = phi i32 [ %i.gi, %bb.u ], [ %i.gq, %.lr.ph236 ]
  %i.gs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 9
  %i.gt = shl nuw nsw i32 %i.gs, 4
  %.idx218 = zext nneg i32 %i.gt to i64
  %i.gu = or disjoint i64 %.idx.i.i, %.idx218     ; 2 uses
  %.not139 = icmp eq i64 %i.gu, %.idx217
  br i1 %.not139, label %._crit_edge, label %bb.j

._crit_edge162:                                   ; preds = %.lr.ph.i.i.i68, %bb.al, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit, %.lr.ph.i.i93.preheader, %.lr.ph.i.i93, %.lr.ph.i.i.i68.preheader, %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5beginEv.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !175
  %i.gx = call noundef ptr @_ZN4llvm9MDBuilder21createPseudoProbeDescEmmNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ak, i64 noundef %i.gw, ptr %.sroa.0129.0, i64 %.sroa.7.0) #24
  %i.gy = call noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.c, ptr nonnull @.str.20, i64 22) #24
  call void @_ZN4llvm11NamedMDNode10addOperandEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(64) %i.gy, ptr noundef %i.gx) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.v:                                             ; preds = %.lr.ph161, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit
  %.pn222 = phi i64 [ %i.db, %.lr.ph161 ], [ %i.kk, %_ZN4llvm16DenseMapIteratorIPNS_11InstructionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit ] ; 2 uses
  %.sroa.0102.0160 = getelementptr i8, ptr %i.ce, i64 %.pn222 ; 2 uses
  %i.gz = load ptr, ptr %.sroa.0102.0160, align 8, !tbaa !550 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0102.0160, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !185 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.gz, i64 -32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !151 ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i76, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !152
  %i.hf = icmp eq i8 %i.he, 14
  br i1 %i.hf, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i: ; preds = %bb.w
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !549
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !557
  %.not142 = icmp eq ptr %i.hh, %i.hj
  %i.hk = select i1 %.not142, i32 134217728, i32 67108864
  br label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit

_ZNK4llvm8CallBase17getCalledFunctionEv.exit:     ; preds = %bb.v, %bb.w, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i
  %.not51 = phi i32 [ %i.hk, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i ], [ 67108864, %bb.v ], [ 67108864, %bb.w ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gz, i64 48 ; 4 uses
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %.not1.i78 = icmp eq ptr %i.hm, null
  %i.hn = ptrtoint ptr %i.hm to i64
  br i1 %.not1.i78, label %bb.x, label %"_ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84"

bb.x:                                             ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit
  %i.ho = call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #24 ; 3 uses
  %.not.i79 = icmp eq ptr %i.ho, null
  br i1 %.not.i79, label %"._ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84_crit_edge", label %bb.y

"._ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84_crit_edge": ; preds = %bb.x
  %.pre172 = load i64, ptr %i.hl, align 8, !tbaa !546
  br label %"_ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84"

bb.y:                                             ; preds = %bb.x
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i80 = load i64, ptr %i.hp, align 8 ; 3 uses
  %i.hq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i80, 4
  %.not.i.i.i81 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i81, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i80, -5
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !209, !nonnull !26, !align !193
  br label %_ZNK4llvm6MDNode10getContextEv.exit.i82

bb.aa:                                            ; preds = %bb.y
  %i.hu = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i80 to ptr
  br label %_ZNK4llvm6MDNode10getContextEv.exit.i82

_ZNK4llvm6MDNode10getContextEv.exit.i82:          ; preds = %bb.aa, %bb.z
  %.0.i.i.i83 = phi ptr [ %i.ht, %bb.z ], [ %i.hu, %bb.aa ]
  %i.hv = call noundef ptr @_ZN4llvm10DILocation7getImplERNS_11LLVMContextEjjPNS_8MetadataES4_bmhNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i83, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ho, ptr noundef null, i1 noundef zeroext false, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true) #24 ; 2 uses
  store ptr %i.hv, ptr %i.hl, align 8, !tbaa !546
  %i.hw = ptrtoint ptr %i.hv to i64
  br label %"_ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84"

"_ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84": ; preds = %"._ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84_crit_edge", %_ZNK4llvm8CallBase17getCalledFunctionEv.exit, %_ZNK4llvm6MDNode10getContextEv.exit.i82
  %i.hx = phi i64 [ %.pre172, %"._ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84_crit_edge" ], [ %i.hn, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit ], [ %i.hw, %_ZNK4llvm6MDNode10getContextEv.exit.i82 ] ; 2 uses
  %i.hy = inttoptr i64 %i.hx to ptr               ; 3 uses
  %.not141 = icmp eq i64 %i.hx, 0
  br i1 %.not141, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84"
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -16 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8            ; 2 uses
  %i.ib = and i64 %i.ia, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = getelementptr inbounds i8, ptr %i.hy, i64 -32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !29
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ie = lshr i64 %i.ia, 2
  %i.if = and i64 %i.ie, 15
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ig
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i.i

_ZNK4llvm10DILocation8getScopeEv.exit.i.i:        ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ih, %bb.ad ], [ %i.id, %bb.ac ]
  %i.ii = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 4, !tbaa !210
  %.not.i.i85 = icmp eq i8 %i.ij, 20
  br i1 %.not.i.i85, label %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i, label %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i

_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i: ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i.i
  %i.ik = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21EnableFSDiscriminatorE, i64 120), align 8, !tbaa !63, !range !25, !noundef !26
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.ah, label %.thread9.i

_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i: ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !134 ; 10 uses
  %i.io = and i32 %i.in, 7
  %i.ip = icmp eq i32 %i.io, 7
  %i.iq = icmp ugt i32 %i.in, 7
  %i.ir = and i1 %i.iq, %i.ip
  br i1 %i.ir, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i
  %i.is = lshr i32 %i.in, 16
  %i.it = and i32 %i.is, 7
  %i.iu = and i32 %i.in, 268435456
  %.not.i1.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i1.i, label %bb.af, label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.af:                                            ; preds = %bb.ae
  %i.iv = lshr i32 %i.in, 3
  %.0.i.i.i86 = and i32 %i.iv, 65535
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.ag:                                            ; preds = %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i
  %i.iw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21EnableFSDiscriminatorE, i64 120), align 8, !tbaa !63, !range !25, !noundef !26
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i
  %spec.select.i35.i = phi i32 [ 0, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i ], [ %i.in, %bb.ag ]
  %i.iy = and i32 %spec.select.i35.i, 255
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.iz = and i32 %i.in, 1
  %.not.i7.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i7.i.i, label %bb.aj, label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ja = lshr exact i32 %i.in, 1                 ; 2 uses
  %i.jb = and i32 %i.in, 64
  %.not7.i.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not7.i.i.i, label %.thread9.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jc = lshr i32 %i.in, 2
  %i.jd = and i32 %i.jc, 4064
  %i.je = and i32 %i.ja, 31
  %i.jf = or disjoint i32 %i.jd, %i.je
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

.thread9.i:                                       ; preds = %bb.aj, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i
  %i.jg = phi i32 [ %i.ja, %bb.aj ], [ 0, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i ]
  %i.jh = and i32 %i.jg, 31
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit: ; preds = %bb.ae, %bb.af, %bb.ah, %bb.ai, %bb.ak, %.thread9.i
  %.1.i.i = phi i32 [ %i.it, %bb.ae ], [ %i.iy, %bb.ah ], [ %.0.i.i.i86, %bb.af ], [ 0, %bb.ai ], [ %i.jf, %bb.ak ], [ %i.jh, %.thread9.i ] ; 2 uses
  %i.ji = shl i32 %i.hb, 3
  %i.jj = icmp ult i32 %i.hb, 8192
  %i.jk = and i32 %.1.i.i, 2147483640
  %i.jl = icmp eq i32 %i.jk, 0
  %or.cond7.i = select i1 %i.jj, i1 %i.jl, i1 false
  %i.jm = shl nuw nsw i32 %.1.i.i, 16
  %6 = or i32 %i.jm, 268435456
  %7 = select i1 %or.cond7.i, i32 %6, i32 0
  %i.jn = or i32 %i.ji, %.not51
  %i.jo = or i32 %i.jn, %7
  %.0.i = or i32 %i.jo, 52428807
  %i.jp = call noundef ptr @_ZNK4llvm10DILocation22cloneWithDiscriminatorEj(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i32 noundef %.0.i)
  store ptr %i.jp, ptr %i.hl, align 8, !tbaa !546
  br label %bb.al

bb.al:                                            ; preds = %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit, %"_ZZN4llvm19SampleProfileProber17instrumentOneFuncERNS_8FunctionEPNS_13TargetMachineEENK3$_0clEPNS_11InstructionE.exit84"
  %i.jq = add i64 %.pn222, 16
  %i.jr = ashr exact i64 %i.jq, 4                 ; 3 uses
  %.not.i.i87 = icmp ult i64 %i.jr, %i.cm
  br i1 %.not.i.i87, label %bb.am, label %._crit_edge162

bb.am:                                            ; preds = %bb.al
  %i.js = lshr i64 %i.jr, 5                       ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !110
  %i.jv = trunc nuw i64 %i.jr to i32
  %i.jw = and i32 %i.jv, 31
  %i.jx = shl nsw i32 -1, %i.jw
  %i.jy = and i32 %i.ju, %i.jx                    ; 2 uses
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %.lr.ph.i.i93.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_11InstructionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit

.lr.ph.i.i93.preheader:                           ; preds = %bb.am
  %i.ka = add nuw nsw i64 %i.js, 1                ; 2 uses
  %i.kb = icmp eq i64 %i.ka, %i.dd
  br i1 %i.kb, label %._crit_edge162, label %.lr.ph238

.lr.ph.i.i93:                                     ; preds = %.lr.ph238
  %i.kc = add i64 %i.ke, 1                        ; 2 uses
  %i.kd = icmp eq i64 %i.kc, %i.dd
  br i1 %i.kd, label %._crit_edge162, label %.lr.ph238, !llvm.loop !532

.lr.ph238:                                        ; preds = %.lr.ph.i.i93.preheader, %.lr.ph.i.i93
  %i.ke = phi i64 [ %i.kc, %.lr.ph.i.i93 ], [ %i.ka, %.lr.ph.i.i93.preheader ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !110 ; 2 uses
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph.i.i93, label %_ZN4llvm16DenseMapIteratorIPNS_11InstructionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit, !llvm.loop !532

_ZN4llvm16DenseMapIteratorIPNS_11InstructionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEELb0EEppEv.exit: ; preds = %.lr.ph238, %bb.am
  %.012.lcssa.i.i90 = phi i64 [ %i.js, %bb.am ], [ %i.ke, %.lr.ph238 ]
  %.0.lcssa.i.i91 = phi i32 [ %i.jy, %bb.am ], [ %i.kg, %.lr.ph238 ]
  %i.ki = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i91, i1 true)
  %.idx.i.i92 = shl i64 %.012.lcssa.i.i90, 9
  %i.kj = shl nuw nsw i32 %i.ki, 4
  %.idx221 = zext nneg i32 %i.kj to i64
  %i.kk = or disjoint i64 %.idx.i.i92, %.idx221   ; 2 uses
  %.not140 = icmp eq i64 %i.kk, %.idx220
  br i1 %.not140, label %._crit_edge162, label %bb.v
}

declare noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare noundef i64 @_ZN4llvm11GlobalValue30getGUIDAssumingExternalLinkageENS_9StringRefE(ptr, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef, i32 noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm10DILocation22cloneWithDiscriminatorEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 2
  %.not.i.i.i.i = icmp eq i64 %i.c, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  br label %_ZNK4llvm10DILocation8getScopeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  br label %_ZNK4llvm10DILocation8getScopeEv.exit

_ZNK4llvm10DILocation8getScopeEv.exit:            ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !132 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !210
  %.not27 = icmp eq i8 %i.k, 20
  br i1 %.not27, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit
  %.024 = phi ptr [ %i.cg, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit ], [ %i.j, %_ZNK4llvm10DILocation8getScopeEv.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !134
  %.not9 = icmp eq i32 %i.m, 0
  br i1 %.not9, label %.critedge, label %bb.n

.critedge:                                        ; preds = %.lr.ph, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit, %_ZNK4llvm10DILocation8getScopeEv.exit
  %.0.lcssa = phi ptr [ %i.j, %_ZNK4llvm10DILocation8getScopeEv.exit ], [ %i.cg, %_ZNK4llvm18DILexicalBlockBase8getScopeEv.exit ], [ %.024, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !209, !nonnull !26, !align !193
  br label %_ZNK4llvm6MDNode10getContextEv.exit

bb.e:                                             ; preds = %.critedge
  %i.s = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK4llvm6MDNode10getContextEv.exit

_ZNK4llvm6MDNode10getContextEv.exit:              ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6MDNode10getContextEv.exit
  %i.t = getelementptr inbounds i8, ptr %0, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm6MDNode10getContextEv.exit
  %i.v = lshr i64 %i.b, 2
  %i.w = and i64 %i.v, 15
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.x
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i

_ZNK4llvm10DILocation8getScopeEv.exit.i:          ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !132 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !210
  %i.ab = icmp eq i8 %i.aa, 16
  br i1 %i.ab, label %_ZNK4llvm10DILocation7getFileEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i1.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i:        ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i2.i = phi ptr [ %i.ak, %bb.j ], [ %i.ag, %bb.i ]
  %i.al = load ptr, ptr %.sroa.0.0.i.i.i.i2.i, align 8, !tbaa !132
  br label %_ZNK4llvm10DILocation7getFileEv.exit

_ZNK4llvm10DILocation7getFileEv.exit:             ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i
  %i.am = phi ptr [ %i.al, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.z, %_ZNK4llvm10DILocation8getScopeEv.exit.i ]
  %i.an = tail call noundef ptr @_ZN4llvm18DILexicalBlockFile7getImplERNS_11LLVMContextEPNS_8MetadataES4_jNS3_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %.0.lcssa, ptr noundef %i.am, i32 noundef %1, i32 noundef 0, i1 noundef zeroext true) #24
  %.0.copyload.i.i.i.i.i.i.i.i10 = load i64, ptr %i.n, align 8 ; 3 uses
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i10, 4
  %.not.i.i11 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm10DILocation7getFileEv.exit
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i.i.i10, -5
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !209, !nonnull !26, !align !193
  br label %_ZNK4llvm6MDNode10getContextEv.exit13

bb.l:                                             ; preds = %_ZNK4llvm10DILocation7getFileEv.exit
  %i.as = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i10 to ptr
  br label %_ZNK4llvm6MDNode10getContextEv.exit13

_ZNK4llvm6MDNode10getContextEv.exit13:            ; preds = %bb.k, %bb.l
  %.0.i.i12 = phi ptr [ %i.ar, %bb.k ], [ %i.as, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !135
  %i.ax = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ay = and i64 %i.ax, 2
  %.not.i.i.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i14, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %_ZNK4llvm6MDNode10getContextEv.exit13
  %i.az = and i64 %i.ax, 960
  %i.ba = icmp eq i64 %i.az, 128
  br i1 %i.ba, label %bb.m, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %_ZNK4llvm6MDNode10getContextEv.exit13
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !64
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %.thread.i.i, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i
end_hunk_0
