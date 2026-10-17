Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/DataFlowGraph?download=true
inline.NumInlined: 2061
inline.NumDeleted: 865
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4Luau20DataFlowGraphBuilder5buildEPNS_12AstStatBlockENS_7NotNullINS_8DefArenaEEENS3_INS_18RefinementKeyArenaEEENS3_INS_21InternalErrorReporterEEE:bb.a
  br label %_ZN4Luau9PushScopeD2Ev.exit34

_ZN4Luau9PushScopeD2Ev.exit34:                    ; preds = %bb.p, %._crit_edge.i33
  call void @_ZN4Luau20DataFlowGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

_ZN4Luau9PushScopeD2Ev.exit:                      ; preds = %bb.o, %.loopexit.split-lp, %._crit_edge.i, %bb.n
  %.pn13.pn = phi { ptr, i32 } [ %lpad.phi, %._crit_edge.i ], [ %i.dd, %bb.n ], [ %i.de, %bb.o ], [ %lpad.phi, %.loopexit.split-lp ]
  call void @_ZN4Luau20DataFlowGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau20DataFlowGraphBuilder27visitBlockWithoutChildScopeEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not14 = icmp eq i64 %i.d, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = trunc nuw i8 %.sroa.412.1 to i1
  %i.g = select i1 %i.f, i32 %.sroa.011.1, i32 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.412.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  ret i32 %.sroa.412.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.412.016 = phi i8 [ %.sroa.412.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.011.015 = phi i32 [ %.sroa.011.1, %.lr.ph ], [ undef, %bb.a ]
  %i.h = load ptr, ptr %.017, align 8, !tbaa !77
  %i.i = tail call noundef i32 @_ZN4Luau20DataFlowGraphBuilder5visitEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.h) ; 2 uses
  %.not9 = icmp eq i32 %i.i, 1                    ; 2 uses
  %i.j = trunc nuw i8 %.sroa.412.016 to i1
  %i.k = select i1 %.not9, i1 true, i1 %i.j
  %.sroa.011.1 = select i1 %i.k, i32 %.sroa.011.015, i32 %i.i ; 2 uses
  %.sroa.412.1 = select i1 %.not9, i8 %.sroa.412.016, i8 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder15resolveCapturesEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.78", align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %._crit_edge48, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %.04.i.i
  %i.g = tail call noundef zeroext i1 @_ZNK4Luau6SymboleqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %.pre.pre = load i64, ptr %i.b, align 8, !tbaa !190 ; 3 uses
  br i1 %i.g, label %bb.c, label %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EE5beginEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.04.i.i, 1                  ; 3 uses
  %i.i = icmp ult i64 %i.h, %.pre.pre
  br i1 %i.i, label %bb.b, label %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EE5beginEv.exit, !llvm.loop !360

_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EE5beginEv.exit: ; preds = %bb.b, %bb.c
  %.0.lcssa.i.i = phi i64 [ %i.h, %bb.c ], [ %.04.i.i, %bb.b ] ; 2 uses
  %.not45 = icmp eq i64 %.0.lcssa.i.i, %.pre.pre
  br i1 %.not45, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.d

._crit_edge48:                                    ; preds = %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit, %bb.a, %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EE5beginEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph47, %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit
  %.sroa.8.046 = phi i64 [ %.0.lcssa.i.i, %.lr.ph47 ], [ %.lcssa, %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.sroa.8.046 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !198  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !199
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !200  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.q, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !201 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !201 ; 2 uses
  %.not4042 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4042, label %._crit_edge44, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.ad = phi ptr [ %i.ah, %bb.e ], [ %i.u, %bb.d ]
  %.01941 = phi i64 [ %i.af, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.01941
  %.sroa.05.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !44
  invoke void @_ZN4Luau15collectOperandsENS_7NotNullIKNS_3DefEEEPSt6vectorIS3_SaIS3_EE(ptr %.sroa.05.0.copyload, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.01941, 1                  ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !199
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !200 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !361

bb.f:                                             ; preds = %.lr.ph
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge44:                                    ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EEaSERKS6_.exit, %._crit_edge
  %i.ao = load ptr, ptr %1, align 8, !tbaa !200   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge44
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !202
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit: ; preds = %._crit_edge44, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.at = load i64, ptr %i.b, align 8, !tbaa !190 ; 2 uses
  %i.au = add i64 %.sroa.8.046, 1                 ; 3 uses
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %.lr.ph69, label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit

bb.h:                                             ; preds = %.lr.ph69
  %i.aw = add i64 %i.ay, 1                        ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  br i1 %i.ax, label %.lr.ph69, label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit, !llvm.loop !362

.lr.ph69:                                         ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit, %bb.h
  %i.ay = phi i64 [ %i.aw, %bb.h ], [ %i.au, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %i.ay
  %i.bb = call noundef zeroext i1 @_ZNK4Luau6SymboleqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  br i1 %i.bb, label %bb.h, label %._ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge70, !llvm.loop !362

._ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge70: ; preds = %.lr.ph69
  br label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit, !llvm.loop !362

_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit: ; preds = %bb.h, %._ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge70, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit
  %.lcssa = phi i64 [ %i.au, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit ], [ %i.ay, %._ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE8iteratorppEv.exit_crit_edge70 ], [ %i.aw, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, %.pre.pre
  br i1 %.not, label %._crit_edge48, label %bb.d

_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit: ; preds = %._crit_edge, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EEaSERKS6_.exit
  %.sroa.029.043 = phi ptr [ %i.cy, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EEaSERKS6_.exit ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %.sroa.029.043, align 8, !tbaa !44, !nonnull !54, !noundef !54 ; 3 uses
  %i.bc = load i32, ptr %.sroa.01.0.copyload, align 8, !tbaa !204
  %i.bd = icmp eq i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 6 uses
  %i.bf = select i1 %i.bd, ptr %i.be, ptr null    ; 3 uses
  %.not.i24 = icmp eq ptr %1, %i.bf
  br i1 %.not.i24, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EEaSERKS6_.exit, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread

_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread: ; preds = %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !199 ; 3 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !200   ; 8 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !202
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !200 ; 9 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ugt i64 %i.bk, %i.bq
  br i1 %i.br, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread
  %i.bs = icmp ugt i64 %i.bk, 9223372036854775800
  br i1 %i.bs, label %bb.j, label %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_M_allocateEm.exit.i.i, !prof !143

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %bb.i
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28
          to label %.lr.ph.i.i.i.i.preheader.i.i unwind label %.loopexit ; 4 uses

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.bu = add i64 %i.bi, -8
  %i.bv = sub i64 %i.bu, %i.bj
  %i.bw = and i64 %i.bv, -8
  %i.bx = add i64 %i.bw, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.bh, i64 %i.bx, i1 false), !tbaa !44
  %2 = load ptr, ptr %i.be, align 8, !tbaa !200   ; 3 uses
  %.not.i.i25 = icmp eq ptr %2, null
  br i1 %.not.i.i25, label %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !202
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %2 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.cb) #26
  br label %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.preheader.i.i
  store ptr %i.bt, ptr %i.be, align 8, !tbaa !200
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bk
  store ptr %i.cc, ptr %i.bl, align 8, !tbaa !202
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i

bb.l:                                             ; preds = %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !199 ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bp                    ; 5 uses
  %.not24.i = icmp ult i64 %i.cg, %i.bk
  br i1 %.not24.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp sgt i64 %i.bk, 8
  br i1 %i.ch, label %bb.n, label %bb.o, !prof !364

bb.n:                                             ; preds = %bb.m
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bn, ptr align 8 %i.bh, i64 %i.bk, i1 false)
  %.pre28.i = load ptr, ptr %i.be, align 8, !tbaa !200
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ci = icmp eq i64 %i.bk, 8
  br i1 %i.ci, label %bb.p, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cj = load i64, ptr %i.bh, align 8, !tbaa !44
  store i64 %i.cj, ptr %i.bn, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i

bb.q:                                             ; preds = %bb.l
  %i.ck = icmp sgt i64 %i.cg, 8
  br i1 %i.ck, label %bb.r, label %bb.s, !prof !364

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bn, ptr align 8 %i.bh, i64 %i.cg, i1 false)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !200
  %.pre25.i = load ptr, ptr %i.cd, align 8, !tbaa !199 ; 2 uses
  %.pre26.i = load ptr, ptr %i.be, align 8, !tbaa !200 ; 2 uses
  %.pre27.i = load ptr, ptr %i.j, align 8, !tbaa !199
  %.pre29.i = ptrtoint ptr %.pre25.i to i64
  %.pre30.i = ptrtoint ptr %.pre26.i to i64
  %.pre32.i = sub i64 %.pre29.i, %.pre30.i
  br label %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.t, label %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cm = load i64, ptr %i.bh, align 8, !tbaa !44
  store i64 %i.cm, ptr %i.bn, align 8, !tbaa !44
  br label %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i

_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %.pre-phi33.i = phi i64 [ %.pre32.i, %bb.r ], [ %i.cg, %bb.s ], [ 8, %bb.t ]
  %i.cn = phi ptr [ %.pre27.i, %bb.r ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ] ; 2 uses
  %i.co = phi ptr [ %.pre26.i, %bb.r ], [ %i.bn, %bb.s ], [ %i.bn, %bb.t ] ; 2 uses
  %i.cp = phi ptr [ %.pre25.i, %bb.r ], [ %i.ce, %bb.s ], [ %i.ce, %bb.t ]
  %i.cq = phi ptr [ %.pre.i, %bb.r ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.pre-phi33.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.cr, %i.cn
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.cp, %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.cr, %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i ] ; 2 uses
  %i.cs = load i64, ptr %.0810.i.i.i.i.i, align 8, !tbaa !44
  store i64 %i.cs, ptr %.011.i.i.i.i.i, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ct, %i.cn
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !363

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i, %bb.p, %bb.o, %bb.n, %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.cv = phi ptr [ %i.bt, %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.co, %_ZSt4copyIPN4Luau7NotNullIKNS0_3DefEEES5_ET0_T_S7_S6_.exit.i ], [ %i.bn, %bb.p ], [ %i.bn, %bb.o ], [ %.pre28.i, %bb.n ], [ %i.co, %.lr.ph.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.bk
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !199
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EEaSERKS6_.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EEaSERKS6_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.i, %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.029.043, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.cy, %i.ac
  br i1 %.not40, label %._crit_edge44, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !200   ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit28, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !202
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #26
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit28

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit28: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau20DataFlowGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load i64, ptr %i.c, align 8, !tbaa !190  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.t, %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.04.i.i.i.i ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #26
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i.i.i

_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i.i.i
  %i.t = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.t, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i.i.i: ; preds = %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !191
  br label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i.i

_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i.i.i, %bb.b
  %i.u = phi ptr [ %.pre.i.i.i, %_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i.i.i ], [ %i.b, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.u) #25
  br label %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit

_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit: ; preds = %bb.a, %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EED2Ev.exit:  ; preds = %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZNSt6vectorISt10unique_ptrIN4Luau8DfgScopeESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i1, label %_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_13RefinementKeyENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EED2Ev.exit
end_hunk_0
