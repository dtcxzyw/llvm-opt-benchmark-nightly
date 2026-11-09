Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_deconv?download=true
inline.NumInlined: 138
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev:bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !44 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20, !inline_history !44
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #16, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #17
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !81
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v20260605L14deconvBlock32fEPKvS8_PvRKNS6_9ConvStateES8_PKfSE_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #13 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !27   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.b, align 4            ; 2 uses
  %i.c = icmp slt i32 %.val2, %.val3
  br i1 %i.c, label %.lr.ph58.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS4_PvRKNS2_9ConvStateES4_PKfSA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph58.i.i.i:                                   ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 21 uses
  %i.d = load ptr, ptr %.val, align 8, !tbaa !105, !nonnull !106, !align !107
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108, !nonnull !106, !align !107
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109, !nonnull !106, !align !107
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !106, !align !110
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !106, !align !107
  %i.q = sext i32 %i.h to i64                     ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !106, !align !110
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !106, !align !107
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !106, !align !107
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !106, !align !110
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !106, !align !107
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !106, !align !107
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.an = shl nuw nsw i64 %i.q, 2
  %wide.trip.count86.i.i.i = zext i32 %i.h to i64 ; 2 uses
  %i.ao = shl nsw i64 %i.q, 2
  %i.ap = shl nsw i64 %i.q, 2
  %i.aq = shl nsw i64 %i.q, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %xtraiter117 = and i64 %wide.trip.count86.i.i.i, 3 ; 3 uses
  %i.at = icmp ult i32 %i.h, 4
  %unroll_iter122 = and i64 %wide.trip.count86.i.i.i, 4294967292
  %lcmp.mod119.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod121 = icmp ne i64 %xtraiter117, 0
  br label %bb.b

bb.b:                                             ; preds = %.loopexit17.i.i.i, %.lr.ph58.i.i.i
  %.011556.i.i.i = phi i32 [ %.val2, %.lr.ph58.i.i.i ], [ %i.ne, %.loopexit17.i.i.i ] ; 3 uses
  %i.au = srem i32 %.011556.i.i.i, %i.e           ; 2 uses
  %i.av = sdiv i32 %.011556.i.i.i, %i.e
  %i.aw = mul nsw i32 %i.au, %i.h                 ; 3 uses
  %i.ax = sub nsw i32 %i.k, %i.aw                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.h) ; 7 uses
  %i.ay = icmp slt i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.ay, label %.loopexit17.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !9   ; 3 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 3 uses
  %i.bb = sext i32 %i.av to i64                   ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %i.n
  %i.bd = sext i32 %i.au to i64
  %i.be = add i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = load i32, ptr %i.p, align 4, !tbaa !18  ; 5 uses
  %i.bg = sext i32 %i.bf to i64                   ; 5 uses
  %i.bh = mul i64 %i.be, %i.bg
  %i.bi = mul i64 %i.bh, %i.q
  %i.bj = getelementptr [4 x i8], ptr %i.az, i64 %i.bi ; 13 uses
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.bl = load i32, ptr %i.u, align 4, !tbaa !18  ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !18
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = mul nsw i64 %i.bb, %i.q
  %i.bq = mul i64 %i.bp, %i.bm
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.br
  %i.bt = icmp sgt i32 %i.bf, 0
  br i1 %i.bt, label %.lr.ph55.i.i.i, label %.loopexit17.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.c
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !25  ; 3 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null           ; 3 uses
  %i.bw = icmp slt i32 %i.ax, %i.h                ; 4 uses
  %i.bx = load i32, ptr %i.aa, align 4, !tbaa !18 ; 8 uses
  %i.by = icmp sgt i32 %i.bx, 0                   ; 3 uses
  %i.bz = load i32, ptr %i.ad, align 4, !tbaa !18 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = sext i32 %i.bz to i64
  %i.cc = sext i32 %i.aw to i64                   ; 4 uses
  %i.cd = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 20 uses
  %i.ce = shl nuw nsw i64 %i.cd, 2                ; 13 uses
  %i.cf = mul i64 %i.an, %i.be
  %i.cg = mul i64 %i.cf, %i.bg
  %i.ch = getelementptr i8, ptr %i.az, i64 %i.cg
  %scevgep.i.i.i = getelementptr i8, ptr %i.ch, i64 %i.ce ; 8 uses
  %i.ci = xor i32 %.sroa.speculated.i.i.i, -1
  %i.cj = add i32 %i.h, %i.ci
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 4                ; 8 uses
  %i.cn = sext i32 %i.bx to i64                   ; 7 uses
  %wide.trip.count108.i.i.i = zext nneg i32 %i.bf to i64 ; 7 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.bu, i64 %i.cc ; 18 uses
  %wide.trip.count103.i.i.i = zext nneg i32 %i.bz to i64
  %wide.trip.count81.i.i.i = zext nneg i32 %i.bx to i64
  %invariant.op.i.i = sub nsw i64 2, %i.cn        ; 2 uses
  br i1 %i.ca, label %.lr.ph55.i.split.us.i.i.preheader, label %.lr.ph55.i.split.i.i

.lr.ph55.i.split.us.i.i.preheader:                ; preds = %.lr.ph55.i.i.i
  %2 = mul i64 %i.ao, %i.be
  %3 = mul i64 %2, %i.bg
  %4 = add i64 %3, %i.ba
  %i.co = shl nsw i64 %i.cc, 2
  %5 = add i64 %i.co, %i.bv
  %6 = sub i64 %4, %5
  %min.iters.check41 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %i.cp = add i64 %6, -1
  %n.vec43 = and i64 %i.cd, 2147483640            ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec43, %i.cd
  %xtraiter109 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %i.cq = and i32 %i.bx, 1
  %lcmp.mod115.not = icmp eq i32 %i.cq, 0
  %indvars.iv.next74.i.us.i.i.prol = add nsw i64 %i.cn, -1
  %i.cr = icmp eq i32 %i.bx, 1
  %invariant.op126.a = sub i64 1, %i.cn
  %invariant.op127.a = sub i32 3, %i.bx
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %n.vec = and i64 %i.cd, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cd
  br label %.lr.ph55.i.split.us.i.i

.lr.ph55.i.split.us.i.i:                          ; preds = %.lr.ph55.i.split.us.i.i.preheader, %._crit_edge52.i.loopexit.us.i.i
  %indvars.iv105.i.us.i.i = phi i64 [ %indvars.iv.next106.i.us.i.i, %._crit_edge52.i.loopexit.us.i.i ], [ 0, %.lr.ph55.i.split.us.i.i.preheader ] ; 2 uses
  %i.cs = trunc i64 %indvars.iv105.i.us.i.i to i32 ; 4 uses
  %i.ct = mul i32 %i.h, %i.cs
  %i.cu = sext i32 %i.ct to i64                   ; 3 uses
  %i.cv = shl nsw i64 %i.cu, 2
  %scevgep69.i.us.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.cv
  %i.cw = getelementptr [4 x i8], ptr %i.bj, i64 %i.cu ; 10 uses
  br i1 %.not.i.i.i, label %.lr.ph23.preheader.i.us.i.i, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph55.i.split.us.i.i
  br i1 %min.iters.check41, label %.lr.ph.i.us.i.i.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.us.i.i.preheader
  %i.cx = shl nsw i64 %i.cu, 2
  %i.cy = add i64 %i.cx, %i.cp
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %.lr.ph.i.us.i.i.preheader87, label %vector.body44

vector.body44:                                    ; preds = %vector.memcheck, %vector.body44
  %index45 = phi i64 [ %index.next48, %vector.body44 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index45 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %wide.load46 = load <4 x float>, ptr %i.cz, align 4, !tbaa !112
  %wide.load47 = load <4 x float>, ptr %i.da, align 4, !tbaa !112
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index45 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x float> %wide.load46, ptr %i.db, align 4, !tbaa !112
  store <4 x float> %wide.load47, ptr %i.dc, align 4, !tbaa !112
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.dd, label %middle.block49, label %vector.body44, !llvm.loop !82

middle.block49:                                   ; preds = %vector.body44
  br i1 %cmp.n50, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i.preheader87

.lr.ph.i.us.i.i.preheader87:                      ; preds = %vector.memcheck, %.lr.ph.i.us.i.i.preheader, %middle.block49
  %indvars.iv.i.us.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.us.i.i.preheader ], [ %n.vec43, %middle.block49 ] ; 3 uses
  br i1 %lcmp.mod110.not, label %.lr.ph.i.us.i.i.prol.loopexit, label %.lr.ph.i.us.i.i.prol

.lr.ph.i.us.i.i.prol:                             ; preds = %.lr.ph.i.us.i.i.preheader87, %.lr.ph.i.us.i.i.prol
  %indvars.iv.i.us.i.i.prol = phi i64 [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.us.i.i.prol ], [ %indvars.iv.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader87 ] ; 3 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.us.i.i.prol ], [ 0, %.lr.ph.i.us.i.i.preheader87 ]
  %gep.i.us.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us.i.i.prol
  %i.de = load float, ptr %gep.i.us.i.i.prol, align 4, !tbaa !112
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.us.i.i.prol
  store float %i.de, ptr %i.df, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.i.prol, 1 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.us.i.i.prol.loopexit, label %.lr.ph.i.us.i.i.prol, !llvm.loop !83

.lr.ph.i.us.i.i.prol.loopexit:                    ; preds = %.lr.ph.i.us.i.i.prol, %.lr.ph.i.us.i.i.preheader87
  %indvars.iv.i.us.i.i.unr = phi i64 [ %indvars.iv.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader87 ], [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.us.i.i.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i.us.i.i.ph, %i.cd
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.prol.loopexit, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.3, %.lr.ph.i.us.i.i ], [ %indvars.iv.i.us.i.i.unr, %.lr.ph.i.us.i.i.prol.loopexit ] ; 6 uses
  %gep.i.us.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us.i.i
  %i.di = load float, ptr %gep.i.us.i.i, align 4, !tbaa !112
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.us.i.i
  store float %i.di, ptr %i.dj, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %gep.i.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i
  %i.dk = load float, ptr %gep.i.us.i.i.1, align 4, !tbaa !112
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next.i.us.i.i
  store float %i.dk, ptr %i.dl, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.i.i, 2 ; 2 uses
  %gep.i.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i.1
  %i.dm = load float, ptr %gep.i.us.i.i.2, align 4, !tbaa !112
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next.i.us.i.i.1
  store float %i.dm, ptr %i.dn, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.2 = add nuw nsw i64 %indvars.iv.i.us.i.i, 3 ; 2 uses
  %gep.i.us.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i.2
  %i.do = load float, ptr %gep.i.us.i.i.3, align 4, !tbaa !112
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next.i.us.i.i.2
  store float %i.do, ptr %i.dp, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.3 = add nuw nsw i64 %indvars.iv.i.us.i.i, 4 ; 2 uses
  %exitcond.not.i.us.i.i.3 = icmp eq i64 %indvars.iv.next.i.us.i.i.3, %i.cd
  br i1 %exitcond.not.i.us.i.i.3, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !84

.lr.ph23.preheader.i.us.i.i:                      ; preds = %.lr.ph55.i.split.us.i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %i.ce, i1 false), !tbaa !112
  br label %.loopexit.i.us.i.i

.loopexit.i.us.i.i:                               ; preds = %.lr.ph.i.us.i.i.prol.loopexit, %.lr.ph.i.us.i.i, %middle.block49, %.lr.ph23.preheader.i.us.i.i
  br i1 %i.bw, label %.lr.ph25.preheader.i.us.i.i, label %._crit_edge.i.us.i.i

.lr.ph25.preheader.i.us.i.i:                      ; preds = %.loopexit.i.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us.i.i, i8 0, i64 %i.cm, i1 false), !tbaa !112
  br label %._crit_edge.i.us.i.i

._crit_edge.i.us.i.i:                             ; preds = %.lr.ph25.preheader.i.us.i.i, %.loopexit.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %i.by, label %.lr.ph29.i.us.i.i, label %.preheader.i.us.i.i.preheader

.lr.ph29.i.us.i.i:                                ; preds = %._crit_edge.i.us.i.i
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !114, !nonnull !106, !align !107 ; 3 uses
  br i1 %lcmp.mod115.not, label %.prol.loopexit113, label %.prol.loopexit113.unr-lcssa

.prol.loopexit113.unr-lcssa:                      ; preds = %.lr.ph29.i.us.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !18 ; 2 uses
  %i.dt = srem i32 %i.cs, %i.ds
  store i32 %i.dt, ptr %i.as, align 4, !tbaa !18
  %i.du = sdiv i32 %i.cs, %i.ds
  br label %.prol.loopexit113

.prol.loopexit113:                                ; preds = %.prol.loopexit113.unr-lcssa, %.lr.ph29.i.us.i.i
  %indvars.iv73.i.us.i.i.unr = phi i64 [ %i.cn, %.lr.ph29.i.us.i.i ], [ %indvars.iv.next74.i.us.i.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.011726.i.us.i.i.unr = phi i32 [ %i.cs, %.lr.ph29.i.us.i.i ], [ %i.du, %.prol.loopexit113.unr-lcssa ]
  br i1 %i.cr, label %.preheader.i.us.i.i.preheader, label %.lr.ph29.i.us.i.i.new

.lr.ph29.i.us.i.i.new:                            ; preds = %.prol.loopexit113, %.lr.ph29.i.us.i.i.new
  %indvars.iv73.i.us.i.i = phi i64 [ %indvars.iv.next74.i.us.i.i.1, %.lr.ph29.i.us.i.i.new ], [ %indvars.iv73.i.us.i.i.unr, %.prol.loopexit113 ] ; 4 uses
  %.011726.i.us.i.i = phi i32 [ %i.ee, %.lr.ph29.i.us.i.i.new ], [ %.011726.i.us.i.i.unr, %.prol.loopexit113 ] ; 2 uses
  %.reass.i.reass.us.i.i = add i64 %indvars.iv73.i.us.i.i, %invariant.op.i.i ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.reass.i.reass.us.i.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18 ; 2 uses
  %i.dx = srem i32 %.011726.i.us.i.i, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us.i.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !18
  %i.dz = sdiv i32 %.011726.i.us.i.i, %i.dw       ; 2 uses
  %indvars.iv.next74.i.us.i.i.1 = add nsw i64 %indvars.iv73.i.us.i.i, -2
  %.reass.i.reass.us.i.i.1.reass = add i64 %indvars.iv73.i.us.i.i, %invariant.op126.a ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.reass.i.reass.us.i.i.1.reass
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18 ; 2 uses
  %i.ec = srem i32 %i.dz, %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us.i.i.1.reass
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !18
  %i.ee = sdiv i32 %i.dz, %i.eb
  %i.ef = icmp sgt i64 %indvars.iv73.i.us.i.i, 2
  br i1 %i.ef, label %.lr.ph29.i.us.i.i.new, label %.preheader.i.us.i.i.preheader, !llvm.loop !85

.preheader.i.us.i.i.preheader:                    ; preds = %.prol.loopexit113, %.lr.ph29.i.us.i.i.new, %._crit_edge.i.us.i.i
  br label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %.preheader.i.us.i.i.preheader, %.thread5.i.us.i.i
  %indvars.iv100.i.us.i.i = phi i64 [ %indvars.iv.next101.i.us.i.i, %.thread5.i.us.i.i ], [ 0, %.preheader.i.us.i.i.preheader ] ; 3 uses
  br i1 %i.by, label %.lr.ph33.i.us.i.i, label %.lr.ph49.i.us.i.i

.lr.ph33.i.us.i.i:                                ; preds = %.preheader.i.us.i.i
  %i.eg = load ptr, ptr %i.ae, align 8, !tbaa !115, !nonnull !106, !align !110 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !116, !nonnull !106, !align !110
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ej, i64 %indvars.iv100.i.us.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 36
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph33.i.us.i.i
  %indvars.iv77.i.us.i.i = phi i64 [ 0, %.lr.ph33.i.us.i.i ], [ %indvars.iv.next78.i.us.i.i, %bb.g ] ; 2 uses
  %.010631.i.us.i.i = phi i32 [ 0, %.lr.ph33.i.us.i.i ], [ %i.fj, %bb.g ]
  %i.en = trunc i64 %indvars.iv77.i.us.i.i to i32
  %.reass122.i.us.reass.i.reass.i.reass.reass = add i32 %i.en, %invariant.op127.a
  %i.eo = sext i32 %.reass122.i.us.reass.i.reass.i.reass.reass to i64 ; 6 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !18
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = add nsw i32 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eo
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eo
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !18
  %i.ey = mul nsw i32 %i.ex, %i.ev
  %i.ez = sub i32 %i.et, %i.ey                    ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %.thread5.i.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eo
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !18 ; 2 uses
  %i.fd = srem i32 %i.ez, %i.fc
  %i.fe = sdiv i32 %i.ez, %i.fc                   ; 2 uses
  %.not131.i.us.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not131.i.us.i.i, label %bb.f, label %.thread5.i.us.i.i

bb.f:                                             ; preds = %bb.e
  %i.ff = load ptr, ptr %i.ag, align 8, !tbaa !117, !nonnull !106, !align !107
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.eo
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !18 ; 2 uses
  %.not132.i.us.i.i = icmp slt i32 %i.fe, %i.fh
  br i1 %.not132.i.us.i.i, label %bb.g, label %.thread5.i.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.fi = mul nsw i32 %i.fh, %.010631.i.us.i.i
  %i.fj = add nsw i32 %i.fi, %i.fe                ; 2 uses
  %indvars.iv.next78.i.us.i.i = add nuw nsw i64 %indvars.iv77.i.us.i.i, 1 ; 2 uses
  %exitcond82.not.i.us.i.i = icmp eq i64 %indvars.iv.next78.i.us.i.i, %wide.trip.count81.i.i.i
  br i1 %exitcond82.not.i.us.i.i, label %.critedge.preheader.loopexit.loopexit.i.us.i.i, label %bb.d, !llvm.loop !86

.critedge.preheader.loopexit.loopexit.i.us.i.i:   ; preds = %bb.g
  %i.fk = sext i32 %i.fj to i64
  br label %.lr.ph49.i.us.i.i

.lr.ph49.i.us.i.i:                                ; preds = %.critedge.preheader.loopexit.loopexit.i.us.i.i, %.preheader.i.us.i.i
  %.0106.lcssa.i.us.i.i = phi i64 [ 0, %.preheader.i.us.i.i ], [ %i.fk, %.critedge.preheader.loopexit.loopexit.i.us.i.i ]
  %i.fl = load ptr, ptr %i.ah, align 8, !tbaa !118, !nonnull !106, !align !107
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !18 ; 3 uses
  %i.fn = load ptr, ptr %i.ai, align 8, !tbaa !119, !nonnull !106, !align !107
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !18 ; 3 uses
  %i.fp = add nsw i32 %i.fo, -1
  %i.fq = load ptr, ptr %i.aj, align 8, !tbaa !120, !nonnull !106, !align !110
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !25
  %i.fs = load ptr, ptr %i.ak, align 8, !tbaa !121, !nonnull !106, !align !107
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !18
  %i.fu = load ptr, ptr %i.al, align 8, !tbaa !122, !nonnull !106, !align !107
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18 ; 2 uses
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = sext i32 %i.fo to i64                   ; 6 uses
  %i.fy = mul nsw i64 %i.fx, %i.q                 ; 2 uses
  %i.fz = mul i64 %i.fy, %i.fw
  %i.ga = load ptr, ptr %i.am, align 8, !tbaa !123, !nonnull !106, !align !107
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !18
  %i.gc = icmp sgt i32 %i.fv, 0
  br i1 %i.gc, label %.lr.ph43.split.us.preheader.i.us.us.i.i, label %.thread8.i.us.i.i.preheader

.thread8.i.us.i.i.preheader:                      ; preds = %.lr.ph49.i.us.i.i
  br i1 %min.iters.check, label %.thread8.i.us.i.i.preheader84, label %vector.body

vector.body:                                      ; preds = %.thread8.i.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.thread8.i.us.i.i.preheader ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gd, align 4, !tbaa !112
  %wide.load39 = load <4 x float>, ptr %i.ge, align 4, !tbaa !112
  %i.gf = fadd <4 x float> %wide.load, zeroinitializer
  %i.gg = fadd <4 x float> %wide.load39, zeroinitializer
  store <4 x float> %i.gf, ptr %i.gd, align 4, !tbaa !112
  store <4 x float> %i.gg, ptr %i.ge, align 4, !tbaa !112
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread5.i.us.i.i, label %.thread8.i.us.i.i.preheader84

.thread8.i.us.i.i.preheader84:                    ; preds = %.thread8.i.us.i.i.preheader, %middle.block
  %indvars.iv95.i.us5.i.i.ph = phi i64 [ 0, %.thread8.i.us.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.thread8.i.us.i.i

.thread8.i.us.i.i:                                ; preds = %.thread8.i.us.i.i.preheader84, %.thread8.i.us.i.i
  %indvars.iv95.i.us5.i.i = phi i64 [ %indvars.iv.next96.i.us6.i.i, %.thread8.i.us.i.i ], [ %indvars.iv95.i.us5.i.i.ph, %.thread8.i.us.i.i.preheader84 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv95.i.us5.i.i ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !112
  %i.gk = fadd float %i.gj, 0.000000e+00
  store float %i.gk, ptr %i.gi, align 4, !tbaa !112
  %indvars.iv.next96.i.us6.i.i = add nuw nsw i64 %indvars.iv95.i.us5.i.i, 1 ; 2 uses
  %exitcond99.not.i.us7.i.i = icmp eq i64 %indvars.iv.next96.i.us6.i.i, %i.cd
  br i1 %exitcond99.not.i.us7.i.i, label %.thread5.i.us.i.i, label %.thread8.i.us.i.i, !llvm.loop !88

.lr.ph43.split.us.preheader.i.us.us.i.i:          ; preds = %.lr.ph49.i.us.i.i, %.thread8.i.loopexit.us.us.i.i
  %indvars.iv95.i.us.us.i.i = phi i64 [ %indvars.iv.next96.i.us.us.i.i, %.thread8.i.loopexit.us.us.i.i ], [ 0, %.lr.ph49.i.us.i.i ] ; 3 uses
  %i.gl = trunc i64 %indvars.iv95.i.us.us.i.i to i32
  %i.gm = add i32 %i.aw, %i.gl                    ; 2 uses
  %i.gn = sdiv i32 %i.gm, %i.fm                   ; 3 uses
  %i.go = mul nsw i32 %i.gn, %i.ft
  %i.gp = mul nsw i32 %i.gn, %i.fm                ; 0 uses
  %.recomposed = srem i32 %i.gm, %i.fm            ; 2 uses
  %i.gq = sdiv i32 %.recomposed, %i.fo
  %i.gr = add nsw i32 %i.go, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = mul nsw i64 %i.gs, %i.cb
  %i.gu = add nsw i64 %i.gt, %indvars.iv100.i.us.i.i
  %i.gv = mul i64 %i.fz, %i.gu
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.gv
  %i.gx = mul nsw i32 %i.gn, %i.gb
  %i.gy = sdiv i32 %i.gx, %i.h                    ; 3 uses
  %i.gz = and i32 %.recomposed, %i.fp
  %i.ha = sext i32 %i.gz to i64
  %i.hb = sext i32 %i.gy to i64
  %smax.i.us.us.i.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.gy)
  %i.hc = sub i32 %smax.i.us.us.i.i, %i.gy
  %wide.trip.count91.i.us.us.i.i = zext i32 %i.hc to i64
  %invariant.gep125.i.us.us.i.i = getelementptr [4 x i8], ptr %i.gw, i64 %i.ha
  br label %.lr.ph43.split.us.i.us.us.i.i

.lr.ph43.split.us.i.us.us.i.i:                    ; preds = %._crit_edge38.us.i.us.us.i.i, %.lr.ph43.split.us.preheader.i.us.us.i.i
  %indvars.iv88.i.us.us.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.us.us.i.i ], [ %indvars.iv.next89.i.us.us.i.i, %._crit_edge38.us.i.us.us.i.i ] ; 4 uses
  %.010340.us.i.us.us.i.i = phi float [ 0.000000e+00, %.lr.ph43.split.us.preheader.i.us.us.i.i ], [ %.lcssa93, %._crit_edge38.us.i.us.us.i.i ] ; 3 uses
  %exitcond92.not.i.us.us.i.i = icmp eq i64 %indvars.iv88.i.us.us.i.i, %wide.trip.count91.i.us.us.i.i
  br i1 %exitcond92.not.i.us.us.i.i, label %.thread8.i.loopexit.us.us.i.i, label %.lr.ph37.us.i.us.us.i.i

.lr.ph37.us.i.us.us.i.i:                          ; preds = %.lr.ph43.split.us.i.us.us.i.i
  %i.hd = add nsw i64 %indvars.iv88.i.us.us.i.i, %i.hb
  %i.he = mul nsw i64 %i.hd, %i.bo
  %i.hf = add nsw i64 %i.he, %.0106.lcssa.i.us.i.i
  %i.hg = mul nsw i64 %i.hf, %i.q
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.hg ; 5 uses
  %i.hi = mul i64 %indvars.iv88.i.us.us.i.i, %i.fy
  %gep126.i.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep125.i.us.us.i.i, i64 %i.hi ; 5 uses
  br i1 %i.at, label %.epil.preheader, label %.lr.ph37.us.i.us.us.i.i.new

.lr.ph37.us.i.us.us.i.i.new:                      ; preds = %.lr.ph37.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i.new
  %indvars.iv83.i.us.us.i.i = phi i64 [ %indvars.iv.next84.i.us.us.i.i.3, %.lr.ph37.us.i.us.us.i.i.new ], [ 0, %.lr.ph37.us.i.us.us.i.i ] ; 6 uses
  %.134.us.i.us.us.i.i = phi float [ %i.ic, %.lr.ph37.us.i.us.us.i.i.new ], [ %.010340.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i ]
  %niter123 = phi i64 [ %niter123.next.3, %.lr.ph37.us.i.us.us.i.i.new ], [ 0, %.lr.ph37.us.i.us.us.i.i ]
  %i.hj = mul nsw i64 %indvars.iv83.i.us.us.i.i, %i.fx
  %gep124.i.us.us.i.i = getelementptr [4 x i8], ptr %gep126.i.us.us.i.i, i64 %i.hj
  %i.hk = load float, ptr %gep124.i.us.us.i.i, align 4, !tbaa !112
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv83.i.us.us.i.i
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !112
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.hm, float %.134.us.i.us.us.i.i)
  %indvars.iv.next84.i.us.us.i.i = or disjoint i64 %indvars.iv83.i.us.us.i.i, 1 ; 2 uses
  %i.ho = mul nsw i64 %indvars.iv.next84.i.us.us.i.i, %i.fx
  %gep124.i.us.us.i.i.1 = getelementptr [4 x i8], ptr %gep126.i.us.us.i.i, i64 %i.ho
  %i.hp = load float, ptr %gep124.i.us.us.i.i.1, align 4, !tbaa !112
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next84.i.us.us.i.i
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !112
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %i.hn)
  %indvars.iv.next84.i.us.us.i.i.1 = or disjoint i64 %indvars.iv83.i.us.us.i.i, 2 ; 2 uses
  %i.ht = mul nsw i64 %indvars.iv.next84.i.us.us.i.i.1, %i.fx
  %gep124.i.us.us.i.i.2 = getelementptr [4 x i8], ptr %gep126.i.us.us.i.i, i64 %i.ht
  %i.hu = load float, ptr %gep124.i.us.us.i.i.2, align 4, !tbaa !112
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next84.i.us.us.i.i.1
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !112
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hw, float %i.hs)
  %indvars.iv.next84.i.us.us.i.i.2 = or disjoint i64 %indvars.iv83.i.us.us.i.i, 3 ; 2 uses
  %i.hy = mul nsw i64 %indvars.iv.next84.i.us.us.i.i.2, %i.fx
  %gep124.i.us.us.i.i.3 = getelementptr [4 x i8], ptr %gep126.i.us.us.i.i, i64 %i.hy
  %i.hz = load float, ptr %gep124.i.us.us.i.i.3, align 4, !tbaa !112
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next84.i.us.us.i.i.2
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !112
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ib, float %i.hx) ; 3 uses
  %indvars.iv.next84.i.us.us.i.i.3 = add nuw nsw i64 %indvars.iv83.i.us.us.i.i, 4 ; 2 uses
  %niter123.next.3 = add i64 %niter123, 4         ; 2 uses
  %niter123.ncmp.3 = icmp eq i64 %niter123.next.3, %unroll_iter122
  br i1 %niter123.ncmp.3, label %._crit_edge38.us.i.us.us.i.i.unr-lcssa, label %.lr.ph37.us.i.us.us.i.i.new, !llvm.loop !89

._crit_edge38.us.i.us.us.i.i.unr-lcssa:           ; preds = %.lr.ph37.us.i.us.us.i.i.new
  br i1 %lcmp.mod119.not, label %._crit_edge38.us.i.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge38.us.i.us.us.i.i.unr-lcssa, %.lr.ph37.us.i.us.us.i.i
  %indvars.iv83.i.us.us.i.i.epil.init = phi i64 [ 0, %.lr.ph37.us.i.us.us.i.i ], [ %indvars.iv.next84.i.us.us.i.i.3, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ]
  %.134.us.i.us.us.i.i.epil.init = phi float [ %.010340.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i ], [ %i.ic, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv83.i.us.us.i.i.epil = phi i64 [ %indvars.iv83.i.us.us.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next84.i.us.us.i.i.epil, %bb.h ] ; 3 uses
  %.134.us.i.us.us.i.i.epil = phi float [ %.134.us.i.us.us.i.i.epil.init, %.epil.preheader ], [ %i.ih, %bb.h ]
  %epil.iter118 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter118.next, %bb.h ]
  %i.id = mul nsw i64 %indvars.iv83.i.us.us.i.i.epil, %i.fx
  %gep124.i.us.us.i.i.epil = getelementptr [4 x i8], ptr %gep126.i.us.us.i.i, i64 %i.id
  %i.ie = load float, ptr %gep124.i.us.us.i.i.epil, align 4, !tbaa !112
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv83.i.us.us.i.i.epil
  %i.ig = load float, ptr %i.if, align 4, !tbaa !112
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.ig, float %.134.us.i.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next84.i.us.us.i.i.epil = add nuw nsw i64 %indvars.iv83.i.us.us.i.i.epil, 1
  %epil.iter118.next = add i64 %epil.iter118, 1   ; 2 uses
  %epil.iter118.cmp.not = icmp eq i64 %epil.iter118.next, %xtraiter117
  br i1 %epil.iter118.cmp.not, label %._crit_edge38.us.i.us.us.i.i, label %bb.h, !llvm.loop !90

._crit_edge38.us.i.us.us.i.i:                     ; preds = %bb.h, %._crit_edge38.us.i.us.us.i.i.unr-lcssa
  %.lcssa93 = phi float [ %i.ic, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ], [ %i.ih, %bb.h ] ; 2 uses
  %indvars.iv.next89.i.us.us.i.i = add nuw nsw i64 %indvars.iv88.i.us.us.i.i, 1 ; 2 uses
  %exitcond94.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next89.i.us.us.i.i, %i.fw
  br i1 %exitcond94.not.i.us.us.i.i, label %.thread8.i.loopexit.us.us.i.i, label %.lr.ph43.split.us.i.us.us.i.i, !llvm.loop !91

.thread8.i.loopexit.us.us.i.i:                    ; preds = %._crit_edge38.us.i.us.us.i.i, %.lr.ph43.split.us.i.us.us.i.i
  %.0103.lcssa.i.ph.us.us.i.i = phi float [ %.lcssa93, %._crit_edge38.us.i.us.us.i.i ], [ %.010340.us.i.us.us.i.i, %.lr.ph43.split.us.i.us.us.i.i ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv95.i.us.us.i.i ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !112
  %i.ik = fadd float %.0103.lcssa.i.ph.us.us.i.i, %i.ij
  store float %i.ik, ptr %i.ii, align 4, !tbaa !112
  %indvars.iv.next96.i.us.us.i.i = add nuw nsw i64 %indvars.iv95.i.us.us.i.i, 1 ; 2 uses
  %exitcond99.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next96.i.us.us.i.i, %i.cd
  br i1 %exitcond99.not.i.us.us.i.i, label %.thread5.i.us.i.i, label %.lr.ph43.split.us.preheader.i.us.us.i.i, !llvm.loop !92

.thread5.i.us.i.i:                                ; preds = %bb.f, %bb.e, %bb.d, %.thread8.i.us.i.i, %.thread8.i.loopexit.us.us.i.i, %middle.block
  %indvars.iv.next101.i.us.i.i = add nuw nsw i64 %indvars.iv100.i.us.i.i, 1 ; 2 uses
  %exitcond104.not.i.us.i.i = icmp eq i64 %indvars.iv.next101.i.us.i.i, %wide.trip.count103.i.i.i
  br i1 %exitcond104.not.i.us.i.i, label %._crit_edge52.i.loopexit.us.i.i, label %.preheader.i.us.i.i, !llvm.loop !93

._crit_edge52.i.loopexit.us.i.i:                  ; preds = %.thread5.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next106.i.us.i.i = add nuw nsw i64 %indvars.iv105.i.us.i.i, 1 ; 2 uses
  %exitcond109.not.i.us.i.i = icmp eq i64 %indvars.iv.next106.i.us.i.i, %wide.trip.count108.i.i.i
  br i1 %exitcond109.not.i.us.i.i, label %.loopexit17.i.i.i, label %.lr.ph55.i.split.us.i.i, !llvm.loop !94

.lr.ph55.i.split.i.i:                             ; preds = %.lr.ph55.i.i.i
  br i1 %i.by, label %.lr.ph55.i.split.split.us.i.i, label %.lr.ph55.i.split.split.i.i

.lr.ph55.i.split.split.us.i.i:                    ; preds = %.lr.ph55.i.split.i.i
  %i.il = load ptr, ptr %i.ab, align 8, !tbaa !114, !nonnull !106, !align !107 ; 3 uses
  %7 = mul i64 %i.ap, %i.be
  %8 = mul i64 %7, %i.bg
  %9 = add i64 %8, %i.ba
  %i.im = shl nsw i64 %i.cc, 2
  %10 = add i64 %i.im, %i.bv
  %11 = sub i64 %9, %10
  %min.iters.check55 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %i.in = add i64 %11, -1
  %n.vec59 = and i64 %i.cd, 2147483640            ; 3 uses
  %cmp.n66 = icmp eq i64 %n.vec59, %i.cd
  %xtraiter103 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %i.io = and i32 %i.bx, 1
  %lcmp.mod107.not = icmp eq i32 %i.io, 0
  %indvars.iv.next74.i.us25.i.i.prol = add nsw i64 %i.cn, -1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iq = icmp eq i32 %i.bx, 1
  %invariant.op.a = sub i64 1, %i.cn
  br label %bb.i

bb.i:                                             ; preds = %.preheader13.i.loopexit.us27.i.i, %.lr.ph55.i.split.split.us.i.i
  %indvars.iv105.i.us9.i.i = phi i64 [ 0, %.lr.ph55.i.split.split.us.i.i ], [ %indvars.iv.next106.i.us29.i.i, %.preheader13.i.loopexit.us27.i.i ] ; 2 uses
  %i.ir = trunc i64 %indvars.iv105.i.us9.i.i to i32 ; 4 uses
  %i.is = mul i32 %i.h, %i.ir
  %i.it = sext i32 %i.is to i64                   ; 3 uses
  %i.iu = shl nsw i64 %i.it, 2
  %scevgep69.i.us10.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.iu
  %i.iv = getelementptr [4 x i8], ptr %i.bj, i64 %i.it ; 7 uses
  br i1 %.not.i.i.i, label %.lr.ph23.preheader.i.us18.i.i, label %.lr.ph.i.us12.i.i.preheader

.lr.ph.i.us12.i.i.preheader:                      ; preds = %bb.i
  br i1 %min.iters.check55, label %.lr.ph.i.us12.i.i.preheader88, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i.us12.i.i.preheader
  %i.iw = shl nsw i64 %i.it, 2
  %i.ix = add i64 %i.iw, %i.in
  %diff.check57 = icmp ult i64 %i.ix, 31
  br i1 %diff.check57, label %.lr.ph.i.us12.i.i.preheader88, label %vector.body60

vector.body60:                                    ; preds = %vector.memcheck56, %vector.body60
  %index61 = phi i64 [ %index.next64, %vector.body60 ], [ 0, %vector.memcheck56 ] ; 3 uses
  %i.iy = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index61 ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  %wide.load62 = load <4 x float>, ptr %i.iy, align 4, !tbaa !112
  %wide.load63 = load <4 x float>, ptr %i.iz, align 4, !tbaa !112
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index61 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <4 x float> %wide.load62, ptr %i.ja, align 4, !tbaa !112
  store <4 x float> %wide.load63, ptr %i.jb, align 4, !tbaa !112
  %index.next64 = add nuw i64 %index61, 8         ; 2 uses
  %i.jc = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.jc, label %middle.block65, label %vector.body60, !llvm.loop !95

middle.block65:                                   ; preds = %vector.body60
  br i1 %cmp.n66, label %.loopexit.i.us19.i.i, label %.lr.ph.i.us12.i.i.preheader88

.lr.ph.i.us12.i.i.preheader88:                    ; preds = %vector.memcheck56, %.lr.ph.i.us12.i.i.preheader, %middle.block65
  %indvars.iv.i.us13.i.i.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %.lr.ph.i.us12.i.i.preheader ], [ %n.vec59, %middle.block65 ] ; 3 uses
  br i1 %lcmp.mod104.not, label %.lr.ph.i.us12.i.i.prol.loopexit, label %.lr.ph.i.us12.i.i.prol

.lr.ph.i.us12.i.i.prol:                           ; preds = %.lr.ph.i.us12.i.i.preheader88, %.lr.ph.i.us12.i.i.prol
  %indvars.iv.i.us13.i.i.prol = phi i64 [ %indvars.iv.next.i.us15.i.i.prol, %.lr.ph.i.us12.i.i.prol ], [ %indvars.iv.i.us13.i.i.ph, %.lr.ph.i.us12.i.i.preheader88 ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.i.us12.i.i.prol ], [ 0, %.lr.ph.i.us12.i.i.preheader88 ]
  %gep.i.us14.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us13.i.i.prol
  %i.jd = load float, ptr %gep.i.us14.i.i.prol, align 4, !tbaa !112
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i.us13.i.i.prol
  store float %i.jd, ptr %i.je, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.prol = add nuw nsw i64 %indvars.iv.i.us13.i.i.prol, 1 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.i.us12.i.i.prol.loopexit, label %.lr.ph.i.us12.i.i.prol, !llvm.loop !96

.lr.ph.i.us12.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.us12.i.i.prol, %.lr.ph.i.us12.i.i.preheader88
  %indvars.iv.i.us13.i.i.unr = phi i64 [ %indvars.iv.i.us13.i.i.ph, %.lr.ph.i.us12.i.i.preheader88 ], [ %indvars.iv.next.i.us15.i.i.prol, %.lr.ph.i.us12.i.i.prol ]
  %i.jf = sub nsw i64 %indvars.iv.i.us13.i.i.ph, %i.cd
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %.loopexit.i.us19.i.i, label %.lr.ph.i.us12.i.i

.lr.ph.i.us12.i.i:                                ; preds = %.lr.ph.i.us12.i.i.prol.loopexit, %.lr.ph.i.us12.i.i
  %indvars.iv.i.us13.i.i = phi i64 [ %indvars.iv.next.i.us15.i.i.3, %.lr.ph.i.us12.i.i ], [ %indvars.iv.i.us13.i.i.unr, %.lr.ph.i.us12.i.i.prol.loopexit ] ; 6 uses
  %gep.i.us14.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us13.i.i
  %i.jh = load float, ptr %gep.i.us14.i.i, align 4, !tbaa !112
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i.us13.i.i
  store float %i.jh, ptr %i.ji, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i = add nuw nsw i64 %indvars.iv.i.us13.i.i, 1 ; 2 uses
  %gep.i.us14.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us15.i.i
  %i.jj = load float, ptr %gep.i.us14.i.i.1, align 4, !tbaa !112
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.us15.i.i
  store float %i.jj, ptr %i.jk, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.1 = add nuw nsw i64 %indvars.iv.i.us13.i.i, 2 ; 2 uses
  %gep.i.us14.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us15.i.i.1
  %i.jl = load float, ptr %gep.i.us14.i.i.2, align 4, !tbaa !112
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.us15.i.i.1
  store float %i.jl, ptr %i.jm, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.2 = add nuw nsw i64 %indvars.iv.i.us13.i.i, 3 ; 2 uses
  %gep.i.us14.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us15.i.i.2
  %i.jn = load float, ptr %gep.i.us14.i.i.3, align 4, !tbaa !112
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.us15.i.i.2
  store float %i.jn, ptr %i.jo, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.3 = add nuw nsw i64 %indvars.iv.i.us13.i.i, 4 ; 2 uses
  %exitcond.not.i.us16.i.i.3 = icmp eq i64 %indvars.iv.next.i.us15.i.i.3, %i.cd
  br i1 %exitcond.not.i.us16.i.i.3, label %.loopexit.i.us19.i.i, label %.lr.ph.i.us12.i.i, !llvm.loop !97

.lr.ph23.preheader.i.us18.i.i:                    ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iv, i8 0, i64 %i.ce, i1 false), !tbaa !112
  br label %.loopexit.i.us19.i.i

.loopexit.i.us19.i.i:                             ; preds = %.lr.ph.i.us12.i.i.prol.loopexit, %.lr.ph.i.us12.i.i, %middle.block65, %.lr.ph23.preheader.i.us18.i.i
  br i1 %i.bw, label %.lr.ph25.preheader.i.us20.i.i, label %._crit_edge.i.us21.i.i

.lr.ph25.preheader.i.us20.i.i:                    ; preds = %.loopexit.i.us19.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us10.i.i, i8 0, i64 %i.cm, i1 false), !tbaa !112
  br label %._crit_edge.i.us21.i.i

._crit_edge.i.us21.i.i:                           ; preds = %.lr.ph25.preheader.i.us20.i.i, %.loopexit.i.us19.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %lcmp.mod107.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge.i.us21.i.i
  %i.jp = load i32, ptr %i.ip, align 4, !tbaa !18 ; 2 uses
  %i.jq = srem i32 %i.ir, %i.jp
  store i32 %i.jq, ptr %i.ar, align 4, !tbaa !18
  %i.jr = sdiv i32 %i.ir, %i.jp
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge.i.us21.i.i
  %indvars.iv73.i.us23.i.i.unr = phi i64 [ %i.cn, %._crit_edge.i.us21.i.i ], [ %indvars.iv.next74.i.us25.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.011726.i.us24.i.i.unr = phi i32 [ %i.ir, %._crit_edge.i.us21.i.i ], [ %i.jr, %.prol.loopexit.unr-lcssa ]
  br i1 %i.iq, label %.preheader13.i.loopexit.us27.i.i, label %._crit_edge.i.us21.i.i.new

._crit_edge.i.us21.i.i.new:                       ; preds = %.prol.loopexit, %._crit_edge.i.us21.i.i.new
  %indvars.iv73.i.us23.i.i = phi i64 [ %indvars.iv.next74.i.us25.i.i.1, %._crit_edge.i.us21.i.i.new ], [ %indvars.iv73.i.us23.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.011726.i.us24.i.i = phi i32 [ %i.kb, %._crit_edge.i.us21.i.i.new ], [ %.011726.i.us24.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.reass.i.reass.us26.i.i = add i64 %indvars.iv73.i.us23.i.i, %invariant.op.i.i ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.il, i64 %.reass.i.reass.us26.i.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !18 ; 2 uses
  %i.ju = srem i32 %.011726.i.us24.i.i, %i.jt
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us26.i.i
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !18
  %i.jw = sdiv i32 %.011726.i.us24.i.i, %i.jt     ; 2 uses
  %indvars.iv.next74.i.us25.i.i.1 = add nsw i64 %indvars.iv73.i.us23.i.i, -2
  %.reass.i.reass.us26.i.i.1.reass = add i64 %indvars.iv73.i.us23.i.i, %invariant.op.a ; 2 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.il, i64 %.reass.i.reass.us26.i.i.1.reass
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !18 ; 2 uses
  %i.jz = srem i32 %i.jw, %i.jy
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us26.i.i.1.reass
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !18
  %i.kb = sdiv i32 %i.jw, %i.jy
  %i.kc = icmp sgt i64 %indvars.iv73.i.us23.i.i, 2
  br i1 %i.kc, label %._crit_edge.i.us21.i.i.new, label %.preheader13.i.loopexit.us27.i.i, !llvm.loop !85

.preheader13.i.loopexit.us27.i.i:                 ; preds = %._crit_edge.i.us21.i.i.new, %.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next106.i.us29.i.i = add nuw nsw i64 %indvars.iv105.i.us9.i.i, 1 ; 2 uses
  %exitcond109.not.i.us30.i.i = icmp eq i64 %indvars.iv.next106.i.us29.i.i, %wide.trip.count108.i.i.i
  br i1 %exitcond109.not.i.us30.i.i, label %.loopexit17.i.i.i, label %bb.i, !llvm.loop !94

.lr.ph55.i.split.split.i.i:                       ; preds = %.lr.ph55.i.split.i.i
  br i1 %.not.i.i.i, label %.lr.ph55.i.split.split.split.us.i.i, label %.lr.ph.i.preheader.i.i.preheader

.lr.ph.i.preheader.i.i.preheader:                 ; preds = %.lr.ph55.i.split.split.i.i
  %12 = mul i64 %i.aq, %i.be
  %13 = mul i64 %12, %i.bg
  %14 = add i64 %13, %i.ba
  %i.kd = shl nsw i64 %i.cc, 2
  %15 = add i64 %i.kd, %i.bv
  %16 = sub i64 %14, %15
  %min.iters.check71 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %i.ke = add i64 %16, -1
  %n.vec75 = and i64 %i.cd, 2147483640            ; 3 uses
  %cmp.n82 = icmp eq i64 %n.vec75, %i.cd
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.preheader.i.i

.lr.ph55.i.split.split.split.us.i.i:              ; preds = %.lr.ph55.i.split.split.i.i
  br i1 %i.bw, label %.lr.ph23.preheader.i.us33.us.i.i.preheader, label %.lr.ph23.preheader.i.us33.i.i.preheader

.lr.ph23.preheader.i.us33.i.i.preheader:          ; preds = %.lr.ph55.i.split.split.split.us.i.i
  %xtraiter94 = and i64 %wide.trip.count108.i.i.i, 3 ; 3 uses
  %i.kf = icmp ult i32 %i.bf, 4
  br i1 %i.kf, label %.lr.ph23.preheader.i.us33.i.i.epil.preheader, label %.lr.ph23.preheader.i.us33.i.i.preheader.new

.lr.ph23.preheader.i.us33.i.i.preheader.new:      ; preds = %.lr.ph23.preheader.i.us33.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count108.i.i.i, 2147483644
  br label %.lr.ph23.preheader.i.us33.i.i

.lr.ph23.preheader.i.us33.us.i.i.preheader:       ; preds = %.lr.ph55.i.split.split.split.us.i.i
  %xtraiter97 = and i64 %wide.trip.count108.i.i.i, 3 ; 3 uses
  %i.kg = icmp ult i32 %i.bf, 4
  br i1 %i.kg, label %.lr.ph23.preheader.i.us33.us.i.i.epil.preheader, label %.lr.ph23.preheader.i.us33.us.i.i.preheader.new

.lr.ph23.preheader.i.us33.us.i.i.preheader.new:   ; preds = %.lr.ph23.preheader.i.us33.us.i.i.preheader
  %unroll_iter101 = and i64 %wide.trip.count108.i.i.i, 2147483644
  br label %.lr.ph23.preheader.i.us33.us.i.i

.lr.ph23.preheader.i.us33.us.i.i:                 ; preds = %.lr.ph23.preheader.i.us33.us.i.i, %.lr.ph23.preheader.i.us33.us.i.i.preheader.new
  %indvars.iv105.i.us31.us.i.i = phi i64 [ 0, %.lr.ph23.preheader.i.us33.us.i.i.preheader.new ], [ %indvars.iv.next106.i.us37.us.i.i.3, %.lr.ph23.preheader.i.us33.us.i.i ] ; 5 uses
  %niter102 = phi i64 [ 0, %.lr.ph23.preheader.i.us33.us.i.i.preheader.new ], [ %niter102.next.3, %.lr.ph23.preheader.i.us33.us.i.i ]
  %i.kh = trunc nuw nsw i64 %indvars.iv105.i.us31.us.i.i to i32
  %i.ki = mul i32 %i.h, %i.kh
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = shl nsw i64 %i.kj, 2
  %scevgep69.i.us32.us.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.kk
  %i.kl = getelementptr [4 x i8], ptr %i.bj, i64 %i.kj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kl, i8 0, i64 %i.ce, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us32.us.i.i, i8 0, i64 %i.cm, i1 false), !tbaa !112
  %i.km = trunc i64 %indvars.iv105.i.us31.us.i.i to i32
  %i.kn = or disjoint i32 %i.km, 1
  %i.ko = mul i32 %i.h, %i.kn
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = shl nsw i64 %i.kp, 2
  %scevgep69.i.us32.us.i.i.1 = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.kq
  %i.kr = getelementptr [4 x i8], ptr %i.bj, i64 %i.kp
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 0, i64 %i.ce, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us32.us.i.i.1, i8 0, i64 %i.cm, i1 false), !tbaa !112
  %i.ks = trunc i64 %indvars.iv105.i.us31.us.i.i to i32
  %i.kt = or disjoint i32 %i.ks, 2
  %i.ku = mul i32 %i.h, %i.kt
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = shl nsw i64 %i.kv, 2
  %scevgep69.i.us32.us.i.i.2 = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.kw
  %i.kx = getelementptr [4 x i8], ptr %i.bj, i64 %i.kv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kx, i8 0, i64 %i.ce, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us32.us.i.i.2, i8 0, i64 %i.cm, i1 false), !tbaa !112
  %i.ky = trunc i64 %indvars.iv105.i.us31.us.i.i to i32
  %i.kz = or disjoint i32 %i.ky, 3
  %i.la = mul i32 %i.h, %i.kz
  %i.lb = sext i32 %i.la to i64                   ; 2 uses
  %i.lc = shl nsw i64 %i.lb, 2
  %scevgep69.i.us32.us.i.i.3 = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.lc
  %i.ld = getelementptr [4 x i8], ptr %i.bj, i64 %i.lb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ld, i8 0, i64 %i.ce, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us32.us.i.i.3, i8 0, i64 %i.cm, i1 false), !tbaa !112
  %indvars.iv.next106.i.us37.us.i.i.3 = add nuw nsw i64 %indvars.iv105.i.us31.us.i.i, 4 ; 2 uses
  %niter102.next.3 = add i64 %niter102, 4         ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.loopexit17.i.i.i.loopexit90.unr-lcssa, label %.lr.ph23.preheader.i.us33.us.i.i, !llvm.loop !94

.lr.ph23.preheader.i.us33.i.i:                    ; preds = %.lr.ph23.preheader.i.us33.i.i, %.lr.ph23.preheader.i.us33.i.i.preheader.new
  %indvars.iv105.i.us31.i.i = phi i64 [ 0, %.lr.ph23.preheader.i.us33.i.i.preheader.new ], [ %indvars.iv.next106.i.us37.i.i.3, %.lr.ph23.preheader.i.us33.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.preheader.i.us33.i.i.preheader.new ], [ %niter.next.3, %.lr.ph23.preheader.i.us33.i.i ]
  %i.le = trunc nuw nsw i64 %indvars.iv105.i.us31.i.i to i32
  %i.lf = mul i32 %i.h, %i.le
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr [4 x i8], ptr %i.bj, i64 %i.lg
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lh, i8 0, i64 %i.ce, i1 false), !tbaa !112
  %i.li = trunc i64 %indvars.iv105.i.us31.i.i to i32
  %i.lj = or disjoint i32 %i.li, 1
  %i.lk = mul i32 %i.h, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr [4 x i8], ptr %i.bj, i64 %i.ll
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lm, i8 0, i64 %i.ce, i1 false), !tbaa !112
  %i.ln = trunc i64 %indvars.iv105.i.us31.i.i to i32
  %i.lo = or disjoint i32 %i.ln, 2
  %i.lp = mul i32 %i.h, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr [4 x i8], ptr %i.bj, i64 %i.lq
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lr, i8 0, i64 %i.ce, i1 false), !tbaa !112
  %i.ls = trunc i64 %indvars.iv105.i.us31.i.i to i32
  %i.lt = or disjoint i32 %i.ls, 3
  %i.lu = mul i32 %i.h, %i.lt
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr [4 x i8], ptr %i.bj, i64 %i.lv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lw, i8 0, i64 %i.ce, i1 false), !tbaa !112
  %indvars.iv.next106.i.us37.i.i.3 = add nuw nsw i64 %indvars.iv105.i.us31.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit17.i.i.i.loopexit91.unr-lcssa, label %.lr.ph23.preheader.i.us33.i.i, !llvm.loop !94

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i.preheader.i.i.preheader, %._crit_edge.i.i.i
  %indvars.iv105.i.i.i = phi i64 [ %indvars.iv.next106.i.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.preheader ] ; 2 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv105.i.i.i to i32
  %i.ly = mul i32 %i.h, %i.lx
  %i.lz = sext i32 %i.ly to i64                   ; 3 uses
  %i.ma = getelementptr [4 x i8], ptr %i.bj, i64 %i.lz ; 6 uses
  br i1 %min.iters.check71, label %.lr.ph.i.i.i.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph.i.preheader.i.i
  %i.mb = shl nsw i64 %i.lz, 2
  %i.mc = add i64 %i.mb, %i.ke
  %diff.check73 = icmp ult i64 %i.mc, 31
  br i1 %diff.check73, label %.lr.ph.i.i.i.preheader, label %vector.body76

vector.body76:                                    ; preds = %vector.memcheck72, %vector.body76
  %index77 = phi i64 [ %index.next80, %vector.body76 ], [ 0, %vector.memcheck72 ] ; 3 uses
  %i.md = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index77 ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16
  %wide.load78 = load <4 x float>, ptr %i.md, align 4, !tbaa !112
  %wide.load79 = load <4 x float>, ptr %i.me, align 4, !tbaa !112
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %index77 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store <4 x float> %wide.load78, ptr %i.mf, align 4, !tbaa !112
  store <4 x float> %wide.load79, ptr %i.mg, align 4, !tbaa !112
  %index.next80 = add nuw i64 %index77, 8         ; 2 uses
  %i.mh = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.mh, label %middle.block81, label %vector.body76, !llvm.loop !98

middle.block81:                                   ; preds = %vector.body76
  br i1 %cmp.n82, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck72, %.lr.ph.i.preheader.i.i, %middle.block81
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck72 ], [ 0, %.lr.ph.i.preheader.i.i ], [ %n.vec75, %middle.block81 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.mi = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !112
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.i.i.i.prol
  store float %i.mi, ptr %i.mj, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !99

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.mk = sub nsw i64 %indvars.iv.i.i.i.ph, %i.cd
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.mm = load float, ptr %gep.i.i.i, align 4, !tbaa !112
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.i.i.i
  store float %i.mm, ptr %i.mn, align 4, !tbaa !112
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.mo = load float, ptr %gep.i.i.i.1, align 4, !tbaa !112
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.next.i.i.i
  store float %i.mo, ptr %i.mp, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %gep.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.mq = load float, ptr %gep.i.i.i.2, align 4, !tbaa !112
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.next.i.i.i.1
  store float %i.mq, ptr %i.mr, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %gep.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ms = load float, ptr %gep.i.i.i.3, align 4, !tbaa !112
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.next.i.i.i.2
  store float %i.ms, ptr %i.mt, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %i.cd
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !100

.loopexit.i.loopexit.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block81
  br i1 %i.bw, label %.lr.ph25.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %.loopexit.i.loopexit.i.i
  %i.mu = shl nsw i64 %i.lz, 2
  %scevgep69.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.mu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.i.i, i8 0, i64 %i.cm, i1 false), !tbaa !112
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph25.preheader.i.i.i, %.loopexit.i.loopexit.i.i
  %indvars.iv.next106.i.i.i = add nuw nsw i64 %indvars.iv105.i.i.i, 1 ; 2 uses
  %exitcond109.not.i.i.i = icmp eq i64 %indvars.iv.next106.i.i.i, %wide.trip.count108.i.i.i
  br i1 %exitcond109.not.i.i.i, label %.loopexit17.i.i.i, label %.lr.ph.i.preheader.i.i, !llvm.loop !94

.loopexit17.i.i.i.loopexit90.unr-lcssa:           ; preds = %.lr.ph23.preheader.i.us33.us.i.i
  %lcmp.mod99.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us33.us.i.i.epil.preheader

.lr.ph23.preheader.i.us33.us.i.i.epil.preheader:  ; preds = %.loopexit17.i.i.i.loopexit90.unr-lcssa, %.lr.ph23.preheader.i.us33.us.i.i.preheader
  %indvars.iv105.i.us31.us.i.i.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i.us33.us.i.i.preheader ], [ %indvars.iv.next106.i.us37.us.i.i.3, %.loopexit17.i.i.i.loopexit90.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph23.preheader.i.us33.us.i.i.epil

.lr.ph23.preheader.i.us33.us.i.i.epil:            ; preds = %.lr.ph23.preheader.i.us33.us.i.i.epil, %.lr.ph23.preheader.i.us33.us.i.i.epil.preheader
  %indvars.iv105.i.us31.us.i.i.epil = phi i64 [ %indvars.iv.next106.i.us37.us.i.i.epil, %.lr.ph23.preheader.i.us33.us.i.i.epil ], [ %indvars.iv105.i.us31.us.i.i.epil.init, %.lr.ph23.preheader.i.us33.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter98 = phi i64 [ %epil.iter98.next, %.lr.ph23.preheader.i.us33.us.i.i.epil ], [ 0, %.lr.ph23.preheader.i.us33.us.i.i.epil.preheader ]
  %i.mv = trunc nuw nsw i64 %indvars.iv105.i.us31.us.i.i.epil to i32
  %i.mw = mul i32 %i.h, %i.mv
  %i.mx = sext i32 %i.mw to i64                   ; 2 uses
  %i.my = shl nsw i64 %i.mx, 2
  %scevgep69.i.us32.us.i.i.epil = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.my
  %i.mz = getelementptr [4 x i8], ptr %i.bj, i64 %i.mx
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.mz, i8 0, i64 %i.ce, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep69.i.us32.us.i.i.epil, i8 0, i64 %i.cm, i1 false), !tbaa !112
  %indvars.iv.next106.i.us37.us.i.i.epil = add nuw nsw i64 %indvars.iv105.i.us31.us.i.i.epil, 1
  %epil.iter98.next = add i64 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i64 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us33.us.i.i.epil, !llvm.loop !101

.loopexit17.i.i.i.loopexit91.unr-lcssa:           ; preds = %.lr.ph23.preheader.i.us33.i.i
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us33.i.i.epil.preheader

.lr.ph23.preheader.i.us33.i.i.epil.preheader:     ; preds = %.loopexit17.i.i.i.loopexit91.unr-lcssa, %.lr.ph23.preheader.i.us33.i.i.preheader
  %indvars.iv105.i.us31.i.i.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i.us33.i.i.preheader ], [ %indvars.iv.next106.i.us37.i.i.3, %.loopexit17.i.i.i.loopexit91.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter94, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph23.preheader.i.us33.i.i.epil

.lr.ph23.preheader.i.us33.i.i.epil:               ; preds = %.lr.ph23.preheader.i.us33.i.i.epil, %.lr.ph23.preheader.i.us33.i.i.epil.preheader
  %indvars.iv105.i.us31.i.i.epil = phi i64 [ %indvars.iv.next106.i.us37.i.i.epil, %.lr.ph23.preheader.i.us33.i.i.epil ], [ %indvars.iv105.i.us31.i.i.epil.init, %.lr.ph23.preheader.i.us33.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph23.preheader.i.us33.i.i.epil ], [ 0, %.lr.ph23.preheader.i.us33.i.i.epil.preheader ]
  %i.na = trunc nuw nsw i64 %indvars.iv105.i.us31.i.i.epil to i32
  %i.nb = mul i32 %i.h, %i.na
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr [4 x i8], ptr %i.bj, i64 %i.nc
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nd, i8 0, i64 %i.ce, i1 false), !tbaa !112
  %indvars.iv.next106.i.us37.i.i.epil = add nuw nsw i64 %indvars.iv105.i.us31.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter94
  br i1 %epil.iter.cmp.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us33.i.i.epil, !llvm.loop !102

.loopexit17.i.i.i:                                ; preds = %._crit_edge.i.i.i, %.loopexit17.i.i.i.loopexit91.unr-lcssa, %.lr.ph23.preheader.i.us33.i.i.epil, %.loopexit17.i.i.i.loopexit90.unr-lcssa, %.lr.ph23.preheader.i.us33.us.i.i.epil, %.preheader13.i.loopexit.us27.i.i, %._crit_edge52.i.loopexit.us.i.i, %bb.c, %bb.b
  %i.ne = add nsw i32 %.011556.i.i.i, 1           ; 2 uses
  %exitcond110.not.i.i.i = icmp eq i32 %i.ne, %.val3
  br i1 %exitcond110.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS4_PvRKNS2_9ConvStateES4_PKfSA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !103

"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS4_PvRKNS2_9ConvStateES4_PKfSA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %.loopexit17.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v20260605L14deconvBlock32fEPKvS8_PvRKNS6_9ConvStateES8_PKfSE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS3_PvRKNS1_9ConvStateES3_PKfS9_E3$_0", ptr %0, align 8, !tbaa !125
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !9
  store ptr %.val, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(168) %.val6, i64 168, i1 false), !tbaa.struct !41
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !9  ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 168) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
end_hunk_0
