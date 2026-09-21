Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/WebpImageLoader?download=true
inline.NumInlined: 6808
inline.NumDeleted: 2601
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNSt3__113packaged_taskIFvvEEclEv:bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #36
  call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #36
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.q

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef %0) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #36 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115future_categoryEv() #36
  invoke void @_ZNSt3__112future_errorC1ENS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 %0, ptr nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTINSt3__112future_errorE, ptr nonnull @_ZNSt3__112future_errorD1Ev) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb0EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind writable sret(%"class.tev::Task.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.38", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #37 ; 21 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb0EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb0EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #36
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1476
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !70, !noalias !1476
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1476
  store i32 2, ptr %i.g, align 8, !tbaa !76, !noalias !1476
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80, !alias.scope !1477
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !81, !alias.scope !1477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !1478
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.38") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !1478

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !1478
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !251, !noalias !1478
  store ptr %i.j, ptr %i.i, align 8, !tbaa !251, !alias.scope !1478
  store ptr null, ptr %4, align 8, !tbaa !251, !noalias !1478
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !81, !noalias !1478 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !1478
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !1478
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1478 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #42, !noalias !1478
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #36, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !1478
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #42
  unreachable

bb.g:                                             ; preds = %.loopexit, %.from..lr.ph
  %.029 = phi i32 [ %2, %.from..lr.ph ], [ %i.gb, %.loopexit ] ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1480, !nonnull !124, !align !282 ; 6 uses
  store i32 %.029, ptr %.reload.addr77, align 8, !tbaa !133
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1482, !nonnull !124, !align !327
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !133 ; 4 uses
  store ptr %.reload.addr77, ptr %.reload.addr, align 8, !tbaa !328
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !201
  store <2 x ptr> %i.ah, ptr %i.t, align 8, !tbaa !201
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1483, !nonnull !124, !align !327
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !422
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !201
  store <2 x ptr> %i.al, ptr %i.w, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !201
  store <2 x ptr> %i.an, ptr %i.y, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1484, !nonnull !124, !align !282
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !259
  %.not11.i.i = icmp slt i32 %i.af, 4
  br i1 %.not11.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i.from..noexc20
  %.0.lcssa.i.i = phi i32 [ %i.bj, %.preheader.i.i.from..noexc20 ], [ 0, %bb.g ] ; 2 uses
  %i.aq = icmp slt i32 %.0.lcssa.i.i, %i.af
  br i1 %i.aq, label %.lr.ph14.i.i.from..lr.ph14.i.i.preheader, label %.loopexit

.lr.ph14.i.i.from..lr.ph14.i.i.preheader:         ; preds = %.preheader.i.i
  %i.ar = load ptr, ptr %.reload.addr, align 8, !tbaa !467, !nonnull !124, !align !327
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !133
  %i.at = sext i32 %i.as to i64                   ; 8 uses
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !468, !nonnull !124, !align !282
  %i.av = load i64, ptr %i.au, align 8, !tbaa !193
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !469, !nonnull !124, !align !282
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !470, !nonnull !124, !align !327
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !471, !nonnull !124, !align !327
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !472, !nonnull !124
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !220, !range !123, !noundef !124
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !473, !nonnull !124, !align !282
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !193 ; 5 uses
  %i.bf = icmp ugt i64 %i.be, 2
  %i.bg = load ptr, ptr %i.y, align 8, !nonnull !124, !align !282 ; 3 uses
  %i.bh = load ptr, ptr %i.z, align 8, !nonnull !124, !align !282 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %.not.i23 = icmp eq i64 %i.be, 0
  %.not68.i = icmp eq i64 %i.be, 3
  %5 = zext nneg i32 %.0.lcssa.i.i to i64
  %6 = zext i32 %i.af to i64
  %exitcond.not.i = icmp eq i64 %i.be, 1
  br label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc20
  %i.bj = phi i32 [ %i.bk, %.noexc20 ], [ 4, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ %i.bj, %.noexc20 ], [ 0, %bb.g ]
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb0EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr, i32 noundef %.012.i.i)
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %.lr.ph.i.i
  %i.bk = add nuw nsw i32 %i.bj, 4                ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bk, %i.af
  br i1 %.not.i.i, label %.preheader.i.i.from..noexc20, label %.lr.ph.i.i, !llvm.loop !1470

.preheader.i.i.from..noexc20:                     ; preds = %.noexc20
  br label %.preheader.i.i, !llvm.loop !1470

.lr.ph14.i.i:                                     ; preds = %.noexc21, %.lr.ph14.i.i.from..lr.ph14.i.i.preheader
  %indvars.iv = phi i64 [ %5, %.lr.ph14.i.i.from..lr.ph14.i.i.preheader ], [ %indvars.iv.next, %.noexc21 ] ; 11 uses
  %i.bl = load ptr, ptr %i.ax, align 8
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.aw ; 3 uses
  %i.bm = load float, ptr %i.ay, align 4, !tbaa !68 ; 7 uses
  %i.bn = load float, ptr %i.az, align 4, !tbaa !68 ; 7 uses
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph14.i.i
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !193 ; 2 uses
  %i.bp = mul i64 %i.bo, %indvars.iv
  %i.bq = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !96
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = call noundef float @llvm.fma.f32(float %i.bu, float %i.bm, float %i.bn)
  %i.bw = load i64, ptr %i.bi, align 8
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !130
  %i.by = getelementptr [24 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = getelementptr i8, ptr %i.by, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !133
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, %i.at
  %i.ce = add nsw i64 %i.cd, %indvars.iv
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !247
  %i.cg = getelementptr i8, ptr %i.by, i64 -16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !248
  %i.ci = mul i64 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ci
  store float %i.bv, ptr %i.cj, align 4, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph14.i.i
  br i1 %i.bf, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  br i1 %.not.i23, label %.noexc21, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %.preheader.i
  %i.ck = load i64, ptr %i.bg, align 8, !tbaa !193
  %i.cl = mul i64 %i.ck, %indvars.iv
  %invariant.gep.i = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %i.cl ; 2 uses
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !130 ; 6 uses
  %i.cn = load i8, ptr %invariant.gep.i, align 1, !tbaa !96
  %i.co = uitofp i8 %i.cn to float
  %i.cp = call noundef float @llvm.fma.f32(float %i.co, float %i.bm, float %i.bn)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !133
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cs, %i.at
  %i.cu = add nsw i64 %i.ct, %indvars.iv
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !248
  %i.cy = mul i64 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cy
  store float %i.cp, ptr %i.cz, align 4, !tbaa !68
  br i1 %exitcond.not.i, label %.noexc21, label %.from.60.1

bb.j:                                             ; preds = %bb.i
  %i.da = load i64, ptr %i.bg, align 8, !tbaa !193
  %i.db = mul i64 %i.da, %indvars.iv
  %invariant.gep.i.i = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %i.db ; 3 uses
  %i.dc = load i8, ptr %invariant.gep.i.i, align 1, !tbaa !96
  %i.dd = uitofp i8 %i.dc to float
  %gep.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 1
  %i.de = load <2 x i8>, ptr %gep.1.i.i, align 1, !tbaa !96
  %i.df = uitofp <2 x i8> %i.de to <2 x float>    ; 2 uses
  %i.dg = call noundef float @llvm.fma.f32(float %i.dd, float %i.bm, float %i.bn)
  %i.dh = extractelement <2 x float> %i.df, i64 0
  %i.di = call noundef float @llvm.fma.f32(float %i.dh, float %i.bm, float %i.bn)
  %i.dj = extractelement <2 x float> %i.df, i64 1
  %i.dk = call noundef float @llvm.fma.f32(float %i.dj, float %i.bm, float %i.bn)
  %i.dl = load ptr, ptr %i.bh, align 8, !tbaa !130 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !133
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul nsw i64 %i.do, %i.at
  %i.dq = add nsw i64 %i.dp, %indvars.iv
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !248
  %i.du = mul i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.du
  store float %i.dg, ptr %i.dv, align 4, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !133
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.at
  %i.eb = add nsw i64 %i.ea, %indvars.iv
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !247
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !248
  %i.ef = mul i64 %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef
  store float %i.di, ptr %i.eg, align 4, !tbaa !68
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !133
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.ek, %i.at
  %i.em = add nsw i64 %i.el, %indvars.iv
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !247
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !248
  %i.eq = mul i64 %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eq
  store float %i.dk, ptr %i.er, align 4, !tbaa !68
  br i1 %.not68.i, label %.noexc21, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %bb.j, %.lr.ph67.i
  %.03266.i = phi i64 [ %i.fm, %.lr.ph67.i ], [ 3, %bb.j ] ; 5 uses
  %gep65.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %.03266.i
  %i.es = load i8, ptr %gep65.i, align 1, !tbaa !96
  %i.et = uitofp i8 %i.es to float
  %i.eu = call noundef float @llvm.fma.f32(float %i.et, float %i.bm, float %i.bn)
  %i.ev = and i64 %.03266.i, 2147483648
  %.not.i.i24 = icmp eq i64 %i.ev, 0
  %i.ew = load i64, ptr %i.bi, align 8
  %sext.i.i = shl i64 %.03266.i, 32
  %i.ex = ashr exact i64 %sext.i.i, 32
  %i.ey = add i64 %i.ew, %i.ex
  %i.ez = and i64 %.03266.i, 4294967295
  %i.fa = select i1 %.not.i.i24, i64 %i.ez, i64 %i.ey
  %i.fb = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !133
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %i.fe, %i.at
  %i.fg = add nsw i64 %i.ff, %indvars.iv
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !247
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !248
  %i.fk = mul i64 %i.fg, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fk
  store float %i.eu, ptr %i.fl, align 4, !tbaa !68
  %i.fm = add nuw i64 %.03266.i, 1                ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.fm, %i.be
  br i1 %exitcond70.not.i, label %.noexc21, label %.lr.ph67.i, !llvm.loop !1471

.from.60.1:                                       ; preds = %.from..lr.ph.i
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 1
  %i.fn = load i8, ptr %gep.i.1, align 1, !tbaa !96
  %i.fo = uitofp i8 %i.fn to float
  %i.fp = call noundef float @llvm.fma.f32(float %i.fo, float %i.bm, float %i.bn)
  %i.fq = getelementptr i8, ptr %i.cm, i64 24
  %i.fr = getelementptr i8, ptr %i.cm, i64 40
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !133
  %i.ft = sext i32 %i.fs to i64
  %i.fu = mul nsw i64 %i.ft, %i.at
  %i.fv = add nsw i64 %i.fu, %indvars.iv
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !247
  %i.fx = getelementptr i8, ptr %i.cm, i64 32
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !248
  %i.fz = mul i64 %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fz
  store float %i.fp, ptr %i.ga, align 4, !tbaa !68
  br label %.noexc21

.noexc21:                                         ; preds = %.from..lr.ph.i, %.from.60.1, %.lr.ph67.i, %bb.j, %.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next, %6
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph14.i.i, !llvm.loop !1472

.loopexit:                                        ; preds = %.noexc21, %.preheader.i.i
  %i.gb = add i32 %.029, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gb, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1473

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  %i.ge = call ptr @__cxa_begin_catch(ptr %i.gd) #36 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.l
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = atomicrmw add ptr %i.gg, i32 -1 acq_rel, align 4 ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 1
  br i1 %i.gi, label %bb.m, label %_ZN3tev5Latch9countDownEv.exit.i

bb.m:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !100 ; 7 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !107
  %i.gm = and i32 %i.gl, 8
  %.not.i.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !108 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !109 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.go, %i.gq
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.n
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.go, %.from..lr.ph.i.i.i.i.i ], [ %i.hg, %.noexc2.i.i ] ; 2 uses
  %i.gv = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.gw = load i8, ptr %i.gr, align 8             ; 2 uses
  %i.gx = trunc i8 %i.gw to i1                    ; 2 uses
  %i.gy = load ptr, ptr %i.gs, align 8
  %i.gz = select i1 %i.gx, ptr %i.gy, ptr %i.gt
  %i.ha = load i64, ptr %i.gu, align 8
  %i.hb = lshr i8 %i.gw, 1
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = select i1 %i.gx, i64 %i.ha, i64 %i.hc
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !70
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr %i.gz, i64 %i.hd, i32 noundef 8, ptr nonnull @.str.97, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, %i.gq
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.from..loopexit.split-lp.i.i:                     ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.hh = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.hh) #42
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.hi = icmp slt i32 %i.gh, 2
  br i1 %i.hi, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.n, %_ZN3tev5Latch9countDownEv.exit.i
  %i.hj = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !201 ; 2 uses
  %i.hl = inttoptr i64 %i.hk to ptr               ; 3 uses
  store ptr %i.hl, ptr %.reload.addr76, align 8
  %.not.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 0, ptr %index.addr79, align 4
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr nonnull %i.hl)
  br label %AfterCoroEnd

bb.p:                                             ; preds = %bb.k
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.74 unwind label %bb.s

.from.70:                                         ; preds = %bb.l
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.74

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.hp = load ptr, ptr %i.h, align 8, !tbaa !81  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = atomicrmw add ptr %i.hq, i64 -1 acq_rel, align 8
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ht = load ptr, ptr %i.hp, align 8, !tbaa !70
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(24) %i.hp) #36, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hp) #36
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.q, %bb.r
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #36
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.74:                                    ; preds = %bb.p, %.from.70
  %.pn = phi { ptr, i32 } [ %i.ho, %.from.70 ], [ %i.hn, %bb.p ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #36
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #36
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #36
  resume { ptr, i32 } %.merged18

bb.s:                                             ; preds = %bb.p
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb0EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %3 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !467, !nonnull !124, !align !327
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133
  %i.c = sext i32 %i.b to i64                     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !468, !nonnull !124, !align !282
  %i.f = load i64, ptr %i.e, align 8, !tbaa !193
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !469, !nonnull !124, !align !282
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !470, !nonnull !124, !align !327
  %i.m = load float, ptr %i.l, align 4, !tbaa !68
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !471, !nonnull !124, !align !327
  %i.r = load float, ptr %i.q, align 4, !tbaa !68
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !472, !nonnull !124
  %i.w = load i8, ptr %i.v, align 1, !tbaa !220, !range !123, !noundef !124
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv:.from.

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !81  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #36, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #36
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #36
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #36
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #36
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #36
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind writable sret(%"class.tev::Task.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.38", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #37 ; 19 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %.reload.addr66 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.reload.addr67 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.62 ; 5 uses

.body.from.62:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #36
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1583
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !70, !noalias !1583
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1583
  store i32 2, ptr %i.g, align 8, !tbaa !76, !noalias !1583
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80, !alias.scope !1584
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !81, !alias.scope !1584
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !1585
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.38") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.b unwind label %bb.d, !noalias !1585

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !1585
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !251, !noalias !1585
  store ptr %i.j, ptr %i.i, align 8, !tbaa !251, !alias.scope !1585
  store ptr null, ptr %4, align 8, !tbaa !251, !noalias !1585
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !81, !noalias !1585 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !1585
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !1585
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1585 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #42, !noalias !1585
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #36, !noalias !1585
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !1585
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit25, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr68)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #42
  unreachable

bb.g:                                             ; preds = %.loopexit25, %.from..lr.ph
  %.027 = phi i32 [ %2, %.from..lr.ph ], [ %i.au, %.loopexit25 ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1587, !nonnull !124, !align !282 ; 7 uses
  store i32 %.027, ptr %.reload.addr67, align 8, !tbaa !133
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1589, !nonnull !124, !align !327
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !133 ; 4 uses
  store ptr %.reload.addr67, ptr %.reload.addr, align 8, !tbaa !328
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !201
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1590, !nonnull !124, !align !327
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !422
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !201
  store <2 x ptr> %i.aj, ptr %i.v, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !201
  store <2 x ptr> %i.al, ptr %i.w, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1591, !nonnull !124, !align !327
  store ptr %i.an, ptr %i.x, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1592, !nonnull !124, !align !282
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !259
  %.not11.i.i = icmp slt i32 %i.ad, 4
  br i1 %.not11.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i.from..noexc20
  %.0.lcssa.i.i = phi i32 [ %i.ar, %.preheader.i.i.from..noexc20 ], [ 0, %bb.g ] ; 2 uses
  %i.aq = icmp slt i32 %.0.lcssa.i.i, %i.ad
  br i1 %i.aq, label %.lr.ph14.i.i, label %.loopexit25

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc20
  %i.ar = phi i32 [ %i.as, %.noexc20 ], [ 4, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ %i.ar, %.noexc20 ], [ 0, %bb.g ]
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.012.i.i)
          to label %.noexc20 unwind label %.from..loopexit.split-lp

.noexc20:                                         ; preds = %.lr.ph.i.i
  %i.as = add nuw nsw i32 %i.ar, 4                ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, %i.ad
  br i1 %.not.i.i, label %.preheader.i.i.from..noexc20, label %.lr.ph.i.i, !llvm.loop !1578

.preheader.i.i.from..noexc20:                     ; preds = %.noexc20
  br label %.preheader.i.i, !llvm.loop !1578

.lr.ph14.i.i:                                     ; preds = %.preheader.i.i, %.noexc21
  %.113.i.i = phi i32 [ %i.at, %.noexc21 ], [ %.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.113.i.i)
          to label %.noexc21 unwind label %.from..loopexit

.noexc21:                                         ; preds = %.lr.ph14.i.i
  %i.at = add nuw nsw i32 %.113.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, %i.ad
  br i1 %exitcond.not.i.i, label %.loopexit25, label %.lr.ph14.i.i, !llvm.loop !1579

.loopexit25:                                      ; preds = %.noexc21, %.preheader.i.i
  %i.au = add i32 %.027, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1580

.from..loopexit:                                  ; preds = %.lr.ph14.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.from..loopexit.split-lp:                         ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.from..loopexit.split-lp, %.from..loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  %i.av = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #36 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.60

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN3tev5Latch9countDownEv.exit.i

bb.j:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !107
  %i.be = and i32 %i.bd, 8
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !108 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !109 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bg, %.from..lr.ph.i.i.i.i.i ], [ %i.by, %.noexc2.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bp = trunc i8 %i.bo to i1                    ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %i.bl
  %i.bs = load i64, ptr %i.bm, align 8
  %i.bt = lshr i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bp, i64 %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !70
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr %i.br, i64 %i.bv, i32 noundef 8, ptr nonnull @.str.97, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bi
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.from..loopexit.split-lp.i.i:                     ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bz) #42
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ca = icmp slt i32 %i.az, 2
  br i1 %i.ca, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.k, %_ZN3tev5Latch9countDownEv.exit.i
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !201 ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  store ptr %i.cd, ptr %.reload.addr66, align 8
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i8 0, ptr %index.addr69, align 4
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr nonnull %i.cd)
  br label %AfterCoroEnd

bb.m:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.64 unwind label %bb.p

.from.60:                                         ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.64

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !81  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 acq_rel, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #36, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #36
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.n, %bb.o
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #36
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.64:                                    ; preds = %bb.m, %.from.60
  %.pn = phi { ptr, i32 } [ %i.cg, %.from.60 ], [ %i.cf, %bb.m ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #36
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr68) #36
  br label %.body

.body:                                            ; preds = %.body.from.64, %.body.from.62, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.64 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.62 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #36
  resume { ptr, i32 } %.merged18

bb.p:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.480", align 16 ; 9 uses
  %3 = alloca %"struct.nanogui::Array.480", align 16 ; 4 uses
  %4 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %5 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !482, !nonnull !124, !align !327
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !483, !nonnull !124, !align !282
  %i.f = load i64, ptr %i.e, align 8, !tbaa !193
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484, !nonnull !124, !align !282
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !485, !nonnull !124, !align !327
  %i.m = load float, ptr %i.l, align 4, !tbaa !68
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
