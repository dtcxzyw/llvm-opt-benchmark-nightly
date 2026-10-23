Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SimpleStackPromotion?download=true
inline.NumInlined: 209
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Znwm

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPassD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %3 = alloca %"class.hermes::IRBuilder", align 8 ; 10 uses
  %4 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %5 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.05.017.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.05.017.i, %i.b
  br i1 %.not18.i, label %_ZN6hermes12_GLOBAL__N_123runSimpleStackPromotionEPNS_6ModuleE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, %.lr.ph.i
  %.sroa.05.020.i = phi ptr [ %.sroa.05.017.i, %.lr.ph.i ], [ %.sroa.05.0.i, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ] ; 2 uses
  %.019.i = phi i1 [ false, %.lr.ph.i ], [ %i.hk, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ]
  %i.m = getelementptr i8, ptr %.sroa.05.020.i, i64 72
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 152 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 160 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %.not3.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !73 ; 4 uses
  %.pre27.i.i = load i32, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.t = zext i32 %.pre27.i.i to i64
  %.idx21.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.idx21.i.i
  %.not266.i.i = icmp eq i32 %.pre27.i.i, 0
  br i1 %.not266.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph10.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i
  %.0245.i.i = phi ptr [ %i.gi, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %.0254.i.i = phi i1 [ %.1.i.i, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i ], [ false, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.0245.i.i, align 8, !tbaa !75 ; 9 uses
  %i.w = call noundef ptr @_ZN6hermes19isStoreOnceVariableEPNS_8VariableE(ptr noundef %i.v) #10 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = load i8, ptr %i.w, align 8, !tbaa !76
  %i.y = add i8 %i.x, -109
  %i.z = icmp ult i8 %i.y, 11
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %i.c, ptr %5, align 8, !tbaa !73
  store i32 0, ptr %i.d, align 8, !tbaa !74
  store i32 8, ptr %i.e, align 4, !tbaa !77
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !74 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i
  %.not1015.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not1015.i.i.i, label %.._crit_edge_crit_edge.i.i.i, label %.lr.ph.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.d
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !74
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.ag = phi i32 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.ba, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !73    ; 3 uses
  %i.ai = zext i32 %i.ag to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %._crit_edge.i.i.i
  %i.ak = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.ak) #10
  br label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !79
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i
  %.016.i.i.i = phi ptr [ %i.bb, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ao = load ptr, ptr %.016.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !76
  %i.ar = icmp eq i8 %i.aq, 49
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.w) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.as = load i32, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %i.at = load i32, ptr %i.e, align 4, !tbaa !77
  %.not.i.i.i.i.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, label %bb.h, !prof !80

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !74
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %.pre.i.i.i.i.i, %bb.h ], [ %i.as, %bb.g ]
  %i.av = load ptr, ptr %5, align 8, !tbaa !73
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = ptrtoint ptr %i.ao to i64
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = load i32, ptr %i.d, align 8, !tbaa !74
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bb, %i.af
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

bb.i:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !96 ; 6 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %.not3746.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not3746.i.i.i, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %bb.i
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 2305843009213693951 ; 2 uses
  %i.bm = and i64 %i.bl, 2305843009213693951      ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.lr.ph.i28.i.i.epil.preheader, label %.lr.ph.i28.i.i.preheader.new

.lr.ph.i28.i.i.preheader.new:                     ; preds = %.lr.ph.i28.i.i.preheader
  %unroll_iter = and i64 %i.bn, 4611686018427387902
  br label %.lr.ph.i28.i.i

._crit_edge.i29.i.i.unr-lcssa:                    ; preds = %.lr.ph.i28.i.i
  %i.bp = and i64 %i.bl, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i28.i.i.epil.preheader, label %._crit_edge.i29.i.i

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %._crit_edge.i29.i.i.unr-lcssa, %.lr.ph.i28.i.i.preheader
  %.03349.i.i.i.epil.init = phi i1 [ false, %.lr.ph.i28.i.i.preheader ], [ %.1.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ]
  %.03448.i.i.i.epil.init = phi ptr [ %i.bh, %.lr.ph.i28.i.i.preheader ], [ %i.dc, %._crit_edge.i29.i.i.unr-lcssa ]
  %.03547.i.i.i.epil.init = phi i8 [ 0, %.lr.ph.i28.i.i.preheader ], [ %.136.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %i.bq = load ptr, ptr %.03448.i.i.i.epil.init, align 8, !tbaa !79 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !115
  %i.bv = icmp eq ptr %i.bu, %i.bf                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !76
  %i.by = icmp ne i8 %i.bx, 49                    ; 2 uses
  %i.bz = xor i1 %i.bv, true
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  %6 = zext i1 %i.ca to i8
  %.136.i.i.i.epil = or i8 %.03547.i.i.i.epil.init, %6
  %not..i.i.i.epil = xor i1 %i.by, true
  %i.cb = select i1 %not..i.i.i.epil, i1 %i.bv, i1 false
  %.1.i.i.i.epil = or i1 %.03349.i.i.i.epil.init, %i.cb
  br label %._crit_edge.i29.i.i

._crit_edge.i29.i.i:                              ; preds = %._crit_edge.i29.i.i.unr-lcssa, %.lr.ph.i28.i.i.epil.preheader
  %.136.i.i.i.lcssa = phi i8 [ %.136.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ], [ %.136.i.i.i.epil, %.lr.ph.i28.i.i.epil.preheader ]
  %.1.i.i.i.lcssa = phi i1 [ %.1.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ], [ %.1.i.i.i.epil, %.lr.ph.i28.i.i.epil.preheader ]
  %7 = icmp eq i8 %.136.i.i.i.lcssa, 0
  %i.cc = select i1 %7, i1 %.1.i.i.i.lcssa, i1 false
  br i1 %i.cc, label %bb.j, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i, %.lr.ph.i28.i.i.preheader.new
  %.03349.i.i.i = phi i1 [ false, %.lr.ph.i28.i.i.preheader.new ], [ %.1.i.i.i.1, %.lr.ph.i28.i.i ]
  %.03448.i.i.i = phi ptr [ %i.bh, %.lr.ph.i28.i.i.preheader.new ], [ %i.dc, %.lr.ph.i28.i.i ] ; 3 uses
  %.03547.i.i.i = phi i8 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %.136.i.i.i.1, %.lr.ph.i28.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i28.i.i ]
  %i.cd = load ptr, ptr %.03448.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !107
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !115
  %i.ci = icmp eq ptr %i.ch, %i.bf                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !76
  %i.cl = icmp ne i8 %i.ck, 49                    ; 2 uses
  %i.cm = xor i1 %i.ci, true
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  %8 = zext i1 %i.cn to i8
  %.136.i.i.i = or i8 %.03547.i.i.i, %8
  %not..i.i.i = xor i1 %i.cl, true
  %i.co = select i1 %not..i.i.i, i1 %i.ci, i1 false
  %.1.i.i.i = or i1 %.03349.i.i.i, %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %.03448.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !79 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !115
  %i.cv = icmp eq ptr %i.cu, %i.bf                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !76
  %i.cy = icmp ne i8 %i.cx, 49                    ; 2 uses
  %i.cz = xor i1 %i.cv, true
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  %9 = zext i1 %i.da to i8
  %.136.i.i.i.1 = or i8 %.136.i.i.i, %9           ; 3 uses
  %not..i.i.i.1 = xor i1 %i.cy, true
  %i.db = select i1 %not..i.i.i.1, i1 %i.cv, i1 false
  %.1.i.i.i.1 = or i1 %.1.i.i.i, %i.db            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.03448.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i29.i.i.unr-lcssa, label %.lr.ph.i28.i.i

bb.j:                                             ; preds = %._crit_edge.i29.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !116
  store ptr %i.de, ptr %3, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.di) #10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !121
  %i.dk = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr %.sroa.0.0.copyload.i.i.i.i) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %i.g, ptr %4, align 8, !tbaa !73
  store i32 0, ptr %i.h, align 8, !tbaa !74
  store i32 8, ptr %i.i, align 4, !tbaa !77
  %i.dl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !73 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !74 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %.idx56.i.i.i = shl nuw nsw i64 %i.dp, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx56.i.i.i
  %.not3851.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not3851.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

._crit_edge55.i.i.i:                              ; preds = %bb.p, %bb.j
  %i.dr = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.ds = load i32, ptr %i.h, align 8, !tbaa !74  ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.idx.i.i30.i.i = shl nuw nsw i64 %i.dt, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i.i30.i.i
  %.not8.i.i31.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not8.i.i31.i.i, label %._crit_edge.i.i37.i.i, label %.lr.ph.i.i32.i.i

._crit_edge.loopexit.i.i35.i.i:                   ; preds = %.lr.ph.i.i32.i.i
  %.pre.i.i36.i.i = load ptr, ptr %4, align 8, !tbaa !73
  br label %._crit_edge.i.i37.i.i

._crit_edge.i.i37.i.i:                            ; preds = %._crit_edge.loopexit.i.i35.i.i, %._crit_edge55.i.i.i
  %i.dv = phi ptr [ %.pre.i.i36.i.i, %._crit_edge.loopexit.i.i35.i.i ], [ %i.dr, %._crit_edge55.i.i.i ] ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.g
  br i1 %i.dw, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i37.i.i
  call void @free(ptr noundef %i.dv) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %._crit_edge55.i.i.i, %.lr.ph.i.i32.i.i
  %.09.i.i33.i.i = phi ptr [ %i.dy, %.lr.ph.i.i32.i.i ], [ %i.dr, %._crit_edge55.i.i.i ] ; 2 uses
  %i.dx = load ptr, ptr %.09.i.i33.i.i, align 8, !tbaa !79
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.dx) #10
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i33.i.i, i64 8 ; 2 uses
  %.not.i.i34.i.i = icmp eq ptr %i.dy, %i.du
  br i1 %.not.i.i34.i.i, label %._crit_edge.loopexit.i.i35.i.i, label %.lr.ph.i.i32.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i: ; preds = %bb.k, %._crit_edge.i.i37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.j, %bb.p
  %.03252.i.i.i = phi ptr [ %i.ew, %bb.p ], [ %i.dm, %bb.j ] ; 2 uses
  %i.dz = load ptr, ptr %.03252.i.i.i, align 8, !tbaa !79 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !76
  %i.ec = icmp eq i8 %i.eb, 49
  br i1 %i.ec, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph54.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !107
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !115
  %i.eh = icmp eq ptr %i.eg, %i.bf
  br i1 %i.eh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.dz) #10
  %i.ei = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.dk) #10 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %spec.select.i.i.i = select i1 %i.ej, ptr null, ptr %i.ek
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef %spec.select.i.i.i) #10
  %i.el = load i32, ptr %i.h, align 8, !tbaa !74  ; 2 uses
  %i.em = load i32, ptr %i.i, align 4, !tbaa !77
  %.not.i.i.i39.i.i = icmp ult i32 %i.el, %i.em
  br i1 %.not.i.i.i39.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, label %bb.n, !prof !80

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.g, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i40.i.i = load i32, ptr %i.h, align 8, !tbaa !74
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i: ; preds = %bb.n, %bb.m
  %i.en = phi i32 [ %.pre.i.i.i40.i.i, %bb.n ], [ %i.el, %bb.m ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !73
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = ptrtoint ptr %i.dz to i64
  store i64 %i.er, ptr %i.eq, align 1
  %i.es = load i32, ptr %i.h, align 8, !tbaa !74
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.h, align 8, !tbaa !74
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph54.i.i.i
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.dz) #10
  %i.eu = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.dz, i32 noundef 0) #10
  %i.ev = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.eu, ptr noundef %i.dk) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %.03252.i.i.i, i64 8 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.ew, %i.dq
  br i1 %.not38.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i: ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, %._crit_edge.i29.i.i, %bb.i
  %.035.lcssa60.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i ], [ %.0254.i.i, %._crit_edge.i29.i.i ], [ %.0254.i.i, %bb.i ] ; 2 uses
  %i.ex = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10
  br i1 %i.ex, label %bb.q, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

bb.q:                                             ; preds = %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %i.ey = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !73 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !74 ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %.idx.i42.i.i = shl nuw nsw i64 %i.fc, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx.i42.i.i
  %.not24.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i43.i.i

bb.r:                                             ; preds = %.lr.ph.i43.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.02125.i.i.i, i64 8 ; 2 uses
  %.not.i44.i.i = icmp eq ptr %i.fe, %i.fd
  br i1 %.not.i44.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i43.i.i

.lr.ph.i43.i.i:                                   ; preds = %bb.q, %bb.r
  %.02125.i.i.i = phi ptr [ %i.fe, %bb.r ], [ %i.ez, %bb.q ] ; 2 uses
  %i.ff = load ptr, ptr %.02125.i.i.i, align 8, !tbaa !79
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !76
  %i.fi = icmp eq i8 %i.fh, 51
  br i1 %i.fi, label %bb.r, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

._crit_edge.i45.i.i:                              ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.j, ptr %2, align 8, !tbaa !73
  store i32 0, ptr %i.k, align 8, !tbaa !74
  store i32 8, ptr %i.l, align 4, !tbaa !77
  %i.fj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !73 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !74 ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %.idx31.i.i.i = shl nuw nsw i64 %i.fn, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx31.i.i.i
  %.not2226.i.i.i = icmp eq i32 %i.fm, 0
  %.pre32.i.i.i = load i32, ptr %i.k, align 8, !tbaa !74 ; 2 uses
  br i1 %.not2226.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

._crit_edge30.i.i.i:                              ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, %._crit_edge.i45.i.i
  %i.fp = phi i32 [ %.pre32.i.i.i, %._crit_edge.i45.i.i ], [ %i.gg, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ] ; 2 uses
  %i.fq = load ptr, ptr %2, align 8, !tbaa !73    ; 3 uses
  %i.fr = zext i32 %i.fp to i64
  %.idx.i.i49.i.i = shl nuw nsw i64 %i.fr, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i49.i.i
  %.not8.i.i50.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not8.i.i50.i.i, label %._crit_edge.i.i56.i.i, label %.lr.ph.i.i51.i.i

._crit_edge.loopexit.i.i54.i.i:                   ; preds = %.lr.ph.i.i51.i.i
  %.pre.i.i55.i.i = load ptr, ptr %2, align 8, !tbaa !73
  br label %._crit_edge.i.i56.i.i

._crit_edge.i.i56.i.i:                            ; preds = %._crit_edge.loopexit.i.i54.i.i, %._crit_edge30.i.i.i
  %i.ft = phi ptr [ %.pre.i.i55.i.i, %._crit_edge.loopexit.i.i54.i.i ], [ %i.fq, %._crit_edge30.i.i.i ] ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.j
  br i1 %i.fu, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i56.i.i
  call void @free(ptr noundef %i.ft) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %._crit_edge30.i.i.i, %.lr.ph.i.i51.i.i
  %.09.i.i52.i.i = phi ptr [ %i.fw, %.lr.ph.i.i51.i.i ], [ %i.fq, %._crit_edge30.i.i.i ] ; 2 uses
  %i.fv = load ptr, ptr %.09.i.i52.i.i, align 8, !tbaa !79
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.fv) #10
  %i.fw = getelementptr inbounds nuw i8, ptr %.09.i.i52.i.i, i64 8 ; 2 uses
  %.not.i.i53.i.i = icmp eq ptr %i.fw, %i.fs
end_hunk_0
