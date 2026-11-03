Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 183
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIjEENS_4TaskIvEESI_EUlmE_EESM_S4_S4_mT0_iENKUlmmE_clEmm":.from.
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr93) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !6246
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !89, !noalias !6246
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !6246
  store i32 2, ptr %i.g, align 8, !tbaa !91, !noalias !6246
  store ptr %i.f, ptr %i.d, align 8, !tbaa !95, !alias.scope !6247
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !96, !alias.scope !6247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !6248
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr93)
          to label %bb.b unwind label %bb.d, !noalias !6248

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !97, !alias.scope !6248
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !100, !noalias !6248
  store ptr %i.j, ptr %i.i, align 8, !tbaa !100, !alias.scope !6248
  store ptr null, ptr %4, align 8, !tbaa !100, !noalias !6248
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96, !noalias !6248 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !97, !noalias !6248
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !97, !alias.scope !6248
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !6248 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48, !noalias !6248
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !6248
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !6248
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !6250, !nonnull !185, !align !446 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !6252, !nonnull !185, !align !446
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !183  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !6253, !nonnull !185, !align !446
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6254, !nonnull !185, !align !447
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82 ; 3 uses
  %i.ac = zext i16 %i.ab to i64                   ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6255, !nonnull !185, !align !446
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !155 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6256, !nonnull !185, !align !446
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87 ; 8 uses
  %i.aj = and i64 %i.ac, 7
  %i.ak = icmp eq i64 %i.aj, 0
  %notmask.i.i = shl nsw i64 -1, %i.ac
  %i.al = xor i64 %notmask.i.i, -1
  %i.am = lshr i64 %i.ac, 3                       ; 3 uses
  %.not64.i.i = icmp eq i16 %i.ab, 0
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not63.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not63.i.i, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not64.i.i, label %.preheader.lr.ph.i.i.us.us.preheader, label %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader

.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = icmp ult i16 %i.ab, 32
  %unroll_iter = and i64 %i.am, 8188
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us

.preheader.lr.ph.i.i.us.us.preheader:             ; preds = %.lr.ph.split.us.split
  %i.ao = shl i64 %2, 2
  %i.ap = mul i64 %i.ao, %i.ai
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ap
  %i.aq = sub nuw i64 %3, %2
  %i.ar = shl i64 %i.aq, 2
  %i.as = mul i64 %i.ar, %i.ai
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.as, i1 false), !tbaa !151, !alias.scope !6257
  br label %._crit_edge

.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us: ; preds = %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us"
  %.026.us = phi i64 [ %i.cl, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us" ], [ %2, %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader ] ; 3 uses
  %i.at = mul i64 %.026.us, %i.y
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.at
  %i.av = mul i64 %.026.us, %i.ai
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.av
  call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  call void @llvm.experimental.noalias.scope.decl(metadata !6257)
  br label %.from..preheader.us.i.i.us

.from..preheader.us.i.i.us:                       ; preds = %._crit_edge60.us.i.i.us, %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us
  %.04462.us.i.i.us = phi i64 [ %i.ck, %._crit_edge60.us.i.i.us ], [ 0, %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us ] ; 3 uses
  %i.ax = mul i64 %.04462.us.i.i.us, %i.am
  %i.ay = getelementptr i8, ptr %i.au, i64 %i.ax  ; 5 uses
  br i1 %i.an, label %.from.69.epil.preheader, label %.from.69

.from.69:                                         ; preds = %.from..preheader.us.i.i.us, %.from.69
  %.04258.us.i.i.us = phi i64 [ %i.ca, %.from.69 ], [ 0, %.from..preheader.us.i.i.us ] ; 6 uses
  %.04357.us.i.i.us = phi i64 [ %i.bz, %.from.69 ], [ 0, %.from..preheader.us.i.i.us ]
  %niter = phi i64 [ %niter.next.3, %.from.69 ], [ 0, %.from..preheader.us.i.i.us ]
  %i.az = getelementptr i8, ptr %i.ay, i64 %.04258.us.i.i.us
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !80, !alias.scope !6258
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw i64 %.04258.us.i.i.us, 3
  %i.bd = shl i64 %i.bb, %i.bc
  %i.be = or i64 %i.bd, %.04357.us.i.i.us
  %i.bf = or disjoint i64 %.04258.us.i.i.us, 1    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80, !alias.scope !6258
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw i64 %i.bf, 3
  %i.bk = shl i64 %i.bi, %i.bj
  %i.bl = or i64 %i.bk, %i.be
  %i.bm = or disjoint i64 %.04258.us.i.i.us, 2    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ay, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !80, !alias.scope !6258
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw i64 %i.bm, 3
  %i.br = shl i64 %i.bp, %i.bq
  %i.bs = or i64 %i.br, %i.bl
  %i.bt = or disjoint i64 %.04258.us.i.i.us, 3    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ay, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !80, !alias.scope !6258
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw i64 %i.bt, 3
  %i.by = shl i64 %i.bw, %i.bx
  %i.bz = or i64 %i.by, %i.bs                     ; 3 uses
  %i.ca = add nuw nsw i64 %.04258.us.i.i.us, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge60.us.i.i.us.unr-lcssa, label %.from.69, !llvm.loop !6238

._crit_edge60.us.i.i.us.unr-lcssa:                ; preds = %.from.69
  br i1 %lcmp.mod.not, label %._crit_edge60.us.i.i.us, label %.from.69.epil.preheader

.from.69.epil.preheader:                          ; preds = %._crit_edge60.us.i.i.us.unr-lcssa, %.from..preheader.us.i.i.us
  %.04258.us.i.i.us.epil.init = phi i64 [ 0, %.from..preheader.us.i.i.us ], [ %i.ca, %._crit_edge60.us.i.i.us.unr-lcssa ]
  %.04357.us.i.i.us.epil.init = phi i64 [ 0, %.from..preheader.us.i.i.us ], [ %i.bz, %._crit_edge60.us.i.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod129)
  br label %.from.69.epil

.from.69.epil:                                    ; preds = %.from.69.epil, %.from.69.epil.preheader
  %.04258.us.i.i.us.epil = phi i64 [ %.04258.us.i.i.us.epil.init, %.from.69.epil.preheader ], [ %i.ch, %.from.69.epil ] ; 3 uses
  %.04357.us.i.i.us.epil = phi i64 [ %.04357.us.i.i.us.epil.init, %.from.69.epil.preheader ], [ %i.cg, %.from.69.epil ]
  %epil.iter = phi i64 [ 0, %.from.69.epil.preheader ], [ %epil.iter.next, %.from.69.epil ]
  %i.cb = getelementptr i8, ptr %i.ay, i64 %.04258.us.i.i.us.epil
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !80, !alias.scope !6258
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw i64 %.04258.us.i.i.us.epil, 3
  %i.cf = shl i64 %i.cd, %i.ce
  %i.cg = or i64 %i.cf, %.04357.us.i.i.us.epil    ; 2 uses
  %i.ch = add nuw nsw i64 %.04258.us.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge60.us.i.i.us, label %.from.69.epil, !llvm.loop !6239

._crit_edge60.us.i.i.us:                          ; preds = %.from.69.epil, %._crit_edge60.us.i.i.us.unr-lcssa
  %.lcssa = phi i64 [ %i.bz, %._crit_edge60.us.i.i.us.unr-lcssa ], [ %i.cg, %.from.69.epil ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04462.us.i.i.us
  %i.cj = trunc i64 %.lcssa to i32
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !151, !alias.scope !6257
  %i.ck = add nuw i64 %.04462.us.i.i.us, 1        ; 2 uses
  %exitcond70.not.i.i.us = icmp eq i64 %i.ck, %i.ai
  br i1 %exitcond70.not.i.i.us, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us", label %.from..preheader.us.i.i.us, !llvm.loop !6240

"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us": ; preds = %._crit_edge60.us.i.i.us
  %i.cl = add nuw i64 %.026.us, 1                 ; 2 uses
  %exitcond39.not = icmp eq i64 %i.cl, %3
  br i1 %exitcond39.not, label %._crit_edge, label %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us, !llvm.loop !6241

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge, label %.from..preheader47.i.i

._crit_edge:                                      ; preds = %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23", %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us", %.preheader.lr.ph.i.i.us.us.preheader, %.lr.ph.split.us, %.lr.ph.split, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr93)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #48
  unreachable

.from..preheader47.i.i:                           ; preds = %.lr.ph.split, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23"
  %.026 = phi i64 [ %i.dl, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23" ], [ %2, %.lr.ph.split ] ; 3 uses
  %i.co = mul i64 %.026, %i.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.co
  %i.cq = mul i64 %.026, %i.ai
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  call void @llvm.experimental.noalias.scope.decl(metadata !6257)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %.from..preheader47.i.i
  %.055.i.i = phi i64 [ 0, %.from..preheader47.i.i ], [ %i.dk, %._crit_edge.i.i ] ; 2 uses
  %.03854.i.i = phi i64 [ 0, %.from..preheader47.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03953.i.i = phi i64 [ 0, %.from..preheader47.i.i ], [ %.140.lcssa.i.i, %._crit_edge.i.i ]
  %.04152.i.i = phi i64 [ 0, %.from..preheader47.i.i ], [ %i.cw, %._crit_edge.i.i ]
  %i.cs = shl i64 %.04152.i.i, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.055.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !80, !alias.scope !6258
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or disjoint i64 %i.cs, %i.cv            ; 2 uses
  %i.cx = add i64 %.03953.i.i, 8                  ; 3 uses
  %i.cy = icmp uge i64 %i.cx, %i.ac
  %i.cz = icmp ult i64 %.03854.i.i, %i.ai
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.150.i.i = phi i64 [ %i.dg, %.lr.ph.i.i ], [ %.03854.i.i, %bb.g ] ; 2 uses
  %.14049.i.i = phi i64 [ %i.db, %.lr.ph.i.i ], [ %i.cx, %bb.g ]
  %i.db = sub nuw i64 %.14049.i.i, %i.ac          ; 4 uses
  %i.dc = lshr i64 %i.cw, %i.db
  %i.dd = and i64 %i.dc, %i.al
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.150.i.i
  %i.df = trunc i64 %i.dd to i32
  store i32 %i.df, ptr %i.de, align 4, !tbaa !151, !alias.scope !6257
  %i.dg = add nuw i64 %.150.i.i, 1                ; 3 uses
  %i.dh = icmp uge i64 %i.db, %i.ac
  %i.di = icmp ult i64 %i.dg, %i.ai
  %i.dj = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %i.dj, label %.lr.ph.i.i, label %._crit_edge.i.i.from..lr.ph.i.i, !llvm.loop !6242

._crit_edge.i.i.from..lr.ph.i.i:                  ; preds = %.lr.ph.i.i
  br label %._crit_edge.i.i, !llvm.loop !6242

._crit_edge.i.i:                                  ; preds = %bb.g, %._crit_edge.i.i.from..lr.ph.i.i
  %.140.lcssa.i.i = phi i64 [ %i.db, %._crit_edge.i.i.from..lr.ph.i.i ], [ %i.cx, %bb.g ]
  %.1.lcssa.i.i = phi i64 [ %i.dg, %._crit_edge.i.i.from..lr.ph.i.i ], [ %.03854.i.i, %bb.g ]
  %i.dk = add nuw i64 %.055.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.y
  br i1 %exitcond.not.i.i, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23", label %bb.g, !llvm.loop !6243

"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIjEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23": ; preds = %._crit_edge.i.i
  %i.dl = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %3
  br i1 %exitcond.not, label %._crit_edge, label %.from..preheader47.i.i, !llvm.loop !6241

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i32 -1 acq_rel, align 4 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %bb.h, label %_ZN3tev5Latch9countDownEv.exit.i

bb.h:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.h
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !117 ; 7 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !128
  %i.dt = and i32 %i.ds, 8
  %.not.i.i.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.i:                                             ; preds = %.noexc.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !129 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 33
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.dv, %.from..lr.ph.i.i.i.i.i ], [ %i.en, %.noexc2.i.i ] ; 2 uses
  %i.ec = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.ed = load i8, ptr %i.dy, align 8             ; 2 uses
  %i.ee = trunc i8 %i.ed to i1                    ; 2 uses
  %i.ef = load ptr, ptr %i.dz, align 8
  %i.eg = select i1 %i.ee, ptr %i.ef, ptr %i.ea
  %i.eh = load i64, ptr %i.eb, align 8
  %i.ei = lshr i8 %i.ed, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = select i1 %i.ee, i64 %i.eh, i64 %i.ej
  %i.el = load ptr, ptr %i.ec, align 8, !tbaa !89
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr %i.eg, i64 %i.ek, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.en, %i.dx
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.h
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %lpad.loopexit.split-lp124, 0
  call void @__clang_call_terminate(ptr %i.eo) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ep = icmp slt i32 %i.do, 2
  br i1 %i.ep, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN3tev5Latch9countDownEv.exit.i
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !97 ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr               ; 3 uses
  store ptr %i.es, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.er, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr94 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr94, align 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr nonnull %i.es)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i20 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = atomicrmw add ptr %i.ev, i64 -1 acq_rel, align 8
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !89
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(24) %i.eu) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr93) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.87, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.87 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged18
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIjEENS_4TaskIvEESJ_EUlmE0_EESN_S4_S4_mT0_iEUlmmE_EESN_S4_S4_mSP_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task", align 8         ; 11 uses
  %10 = alloca %class.anon.1163, align 8          ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #47 ; 24 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIjEENS_4TaskIvEESJ_EUlmE0_EESN_S4_S4_mT0_iEUlmmE_EESN_S4_S4_mSP_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIjEENS_4TaskIvEESJ_EUlmE0_EESN_S4_S4_mT0_iEUlmmE_EESN_S4_S4_mSP_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr185 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr183, align 8, !tbaa !97
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr185)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
end_hunk_0
begin_hunk_1_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIiEENS_4TaskIvEESI_EUlmE_EESM_S4_S4_mT0_iENKUlmmE_clEmm":.from.
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !6460
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !89, !noalias !6460
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !6460
  store i32 2, ptr %i.g, align 8, !tbaa !91, !noalias !6460
  store ptr %i.f, ptr %i.d, align 8, !tbaa !95, !alias.scope !6461
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !96, !alias.scope !6461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6462)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !6462
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr93)
          to label %bb.b unwind label %bb.d, !noalias !6462

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !97, !alias.scope !6462
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !100, !noalias !6462
  store ptr %i.j, ptr %i.i, align 8, !tbaa !100, !alias.scope !6462
  store ptr null, ptr %4, align 8, !tbaa !100, !noalias !6462
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96, !noalias !6462 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !97, !noalias !6462
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !97, !alias.scope !6462
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !6462 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48, !noalias !6462
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !6462
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !6462
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !6464, !nonnull !185, !align !446 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !6466, !nonnull !185, !align !446
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !183  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !6467, !nonnull !185, !align !446
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6468, !nonnull !185, !align !447
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82 ; 3 uses
  %i.ac = zext i16 %i.ab to i64                   ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6469, !nonnull !185, !align !446
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !155 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6470, !nonnull !185, !align !446
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87 ; 8 uses
  %i.aj = and i64 %i.ac, 7
  %i.ak = icmp eq i64 %i.aj, 0
  %notmask.i.i = shl nsw i64 -1, %i.ac            ; 3 uses
  %i.al = xor i64 %notmask.i.i, -1
  %i.am = add nsw i64 %i.ac, -1
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = lshr i64 %i.ac, 3                       ; 3 uses
  %.not67.i.i = icmp eq i16 %i.ab, 0
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not66.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not66.i.i, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not67.i.i, label %.preheader.lr.ph.i.i.us.us.preheader, label %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader

.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.ap = icmp ult i16 %i.ab, 32
  %unroll_iter = and i64 %i.ao, 8188
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us

.preheader.lr.ph.i.i.us.us.preheader:             ; preds = %.lr.ph.split.us.split
  %i.aq = shl i64 %2, 2
  %i.ar = mul i64 %i.aq, %i.ai
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ar
  %i.as = sub nuw i64 %3, %2
  %i.at = shl i64 %i.as, 2
  %i.au = mul i64 %i.at, %i.ai
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.au, i1 false), !tbaa !151, !alias.scope !6471
  br label %._crit_edge

.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us: ; preds = %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us"
  %.026.us = phi i64 [ %i.cp, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us" ], [ %2, %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us.preheader ] ; 3 uses
  %i.av = mul i64 %.026.us, %i.y
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.av
  %i.ax = mul i64 %.026.us, %i.ai
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !6472)
  call void @llvm.experimental.noalias.scope.decl(metadata !6471)
  br label %.from..preheader.us.i.i.us

.from..preheader.us.i.i.us:                       ; preds = %._crit_edge63.us.i.i.us, %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us
  %.04465.us.i.i.us = phi i64 [ %i.co, %._crit_edge63.us.i.i.us ], [ 0, %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us ] ; 3 uses
  %i.az = mul i64 %.04465.us.i.i.us, %i.ao
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az  ; 5 uses
  br i1 %i.ap, label %.from.69.epil.preheader, label %.from.69

.from.69:                                         ; preds = %.from..preheader.us.i.i.us, %.from.69
  %.04261.us.i.i.us = phi i64 [ %i.cc, %.from.69 ], [ 0, %.from..preheader.us.i.i.us ] ; 6 uses
  %.04360.us.i.i.us = phi i64 [ %i.cb, %.from.69 ], [ 0, %.from..preheader.us.i.i.us ]
  %niter = phi i64 [ %niter.next.3, %.from.69 ], [ 0, %.from..preheader.us.i.i.us ]
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.04261.us.i.i.us
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !80, !alias.scope !6472
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw i64 %.04261.us.i.i.us, 3
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = or i64 %i.bf, %.04360.us.i.i.us
  %i.bh = or disjoint i64 %.04261.us.i.i.us, 1    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ba, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !80, !alias.scope !6472
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw i64 %i.bh, 3
  %i.bm = shl i64 %i.bk, %i.bl
  %i.bn = or i64 %i.bm, %i.bg
  %i.bo = or disjoint i64 %.04261.us.i.i.us, 2    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ba, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !80, !alias.scope !6472
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw i64 %i.bo, 3
  %i.bt = shl i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %i.bn
  %i.bv = or disjoint i64 %.04261.us.i.i.us, 3    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ba, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !80, !alias.scope !6472
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw i64 %i.bv, 3
  %i.ca = shl i64 %i.by, %i.bz
  %i.cb = or i64 %i.ca, %i.bu                     ; 3 uses
  %i.cc = add nuw nsw i64 %.04261.us.i.i.us, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge63.us.i.i.us.unr-lcssa, label %.from.69, !llvm.loop !6452

._crit_edge63.us.i.i.us.unr-lcssa:                ; preds = %.from.69
  br i1 %lcmp.mod.not, label %._crit_edge63.us.i.i.us, label %.from.69.epil.preheader

.from.69.epil.preheader:                          ; preds = %._crit_edge63.us.i.i.us.unr-lcssa, %.from..preheader.us.i.i.us
  %.04261.us.i.i.us.epil.init = phi i64 [ 0, %.from..preheader.us.i.i.us ], [ %i.cc, %._crit_edge63.us.i.i.us.unr-lcssa ]
  %.04360.us.i.i.us.epil.init = phi i64 [ 0, %.from..preheader.us.i.i.us ], [ %i.cb, %._crit_edge63.us.i.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod129)
  br label %.from.69.epil

.from.69.epil:                                    ; preds = %.from.69.epil, %.from.69.epil.preheader
  %.04261.us.i.i.us.epil = phi i64 [ %.04261.us.i.i.us.epil.init, %.from.69.epil.preheader ], [ %i.cj, %.from.69.epil ] ; 3 uses
  %.04360.us.i.i.us.epil = phi i64 [ %.04360.us.i.i.us.epil.init, %.from.69.epil.preheader ], [ %i.ci, %.from.69.epil ]
  %epil.iter = phi i64 [ 0, %.from.69.epil.preheader ], [ %epil.iter.next, %.from.69.epil ]
  %i.cd = getelementptr i8, ptr %i.ba, i64 %.04261.us.i.i.us.epil
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !80, !alias.scope !6472
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw i64 %.04261.us.i.i.us.epil, 3
  %i.ch = shl i64 %i.cf, %i.cg
  %i.ci = or i64 %i.ch, %.04360.us.i.i.us.epil    ; 2 uses
  %i.cj = add nuw nsw i64 %.04261.us.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge63.us.i.i.us, label %.from.69.epil, !llvm.loop !6453

._crit_edge63.us.i.i.us:                          ; preds = %.from.69.epil, %._crit_edge63.us.i.i.us.unr-lcssa
  %.lcssa = phi i64 [ %i.cb, %._crit_edge63.us.i.i.us.unr-lcssa ], [ %i.ci, %.from.69.epil ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.04465.us.i.i.us
  %i.cl = and i64 %.lcssa, %i.an
  %.not.i.us.i.i.us = icmp eq i64 %i.cl, 0
  %i.cm = select i1 %.not.i.us.i.i.us, i64 0, i64 %notmask.i.i
  %storemerge.i.us.i.i.us = or i64 %i.cm, %.lcssa
  %i.cn = trunc i64 %storemerge.i.us.i.i.us to i32
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !151, !alias.scope !6471
  %i.co = add nuw i64 %.04465.us.i.i.us, 1        ; 2 uses
  %exitcond73.not.i.i.us = icmp eq i64 %i.co, %i.ai
  br i1 %exitcond73.not.i.i.us, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us", label %.from..preheader.us.i.i.us, !llvm.loop !6454

"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us": ; preds = %._crit_edge63.us.i.i.us
  %i.cp = add nuw i64 %.026.us, 1                 ; 2 uses
  %exitcond39.not = icmp eq i64 %i.cp, %3
  br i1 %exitcond39.not, label %._crit_edge, label %.preheader.us.i.i.us.from..preheader.lr.ph.i.i.us, !llvm.loop !6455

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge, label %.from..preheader50.i.i

._crit_edge:                                      ; preds = %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23", %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit.us", %.preheader.lr.ph.i.i.us.us.preheader, %.lr.ph.split.us, %.lr.ph.split, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr93)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #48
  unreachable

.from..preheader50.i.i:                           ; preds = %.lr.ph.split, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23"
  %.026 = phi i64 [ %i.dr, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23" ], [ %2, %.lr.ph.split ] ; 3 uses
  %i.cs = mul i64 %.026, %i.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cs
  %i.cu = mul i64 %.026, %i.ai
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !6472)
  call void @llvm.experimental.noalias.scope.decl(metadata !6471)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %.from..preheader50.i.i
  %.058.i.i = phi i64 [ 0, %.from..preheader50.i.i ], [ %i.dq, %._crit_edge.i.i ] ; 2 uses
  %.03857.i.i = phi i64 [ 0, %.from..preheader50.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03956.i.i = phi i64 [ 0, %.from..preheader50.i.i ], [ %.140.lcssa.i.i, %._crit_edge.i.i ]
  %.04155.i.i = phi i64 [ 0, %.from..preheader50.i.i ], [ %i.da, %._crit_edge.i.i ]
  %i.cw = shl i64 %.04155.i.i, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.058.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !80, !alias.scope !6472
  %i.cz = zext i8 %i.cy to i64
  %i.da = or disjoint i64 %i.cw, %i.cz            ; 2 uses
  %i.db = add i64 %.03956.i.i, 8                  ; 3 uses
  %i.dc = icmp uge i64 %i.db, %i.ac
  %i.dd = icmp ult i64 %.03857.i.i, %i.ai
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.153.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %.03857.i.i, %bb.g ] ; 2 uses
  %.14052.i.i = phi i64 [ %i.df, %.lr.ph.i.i ], [ %i.db, %bb.g ]
  %i.df = sub nuw i64 %.14052.i.i, %i.ac          ; 4 uses
  %i.dg = lshr i64 %i.da, %i.df
  %i.dh = and i64 %i.dg, %i.al                    ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.153.i.i
  %i.dj = and i64 %i.dh, %i.an
  %.not.i47.i.i = icmp eq i64 %i.dj, 0
  %i.dk = select i1 %.not.i47.i.i, i64 0, i64 %notmask.i.i
  %storemerge.i49.i.i = or i64 %i.dk, %i.dh
  %i.dl = trunc i64 %storemerge.i49.i.i to i32
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !151, !alias.scope !6471
  %i.dm = add nuw i64 %.153.i.i, 1                ; 3 uses
  %i.dn = icmp uge i64 %i.df, %i.ac
  %i.do = icmp ult i64 %i.dm, %i.ai
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %.lr.ph.i.i, label %._crit_edge.i.i.from..lr.ph.i.i, !llvm.loop !6456

._crit_edge.i.i.from..lr.ph.i.i:                  ; preds = %.lr.ph.i.i
  br label %._crit_edge.i.i, !llvm.loop !6456

._crit_edge.i.i:                                  ; preds = %bb.g, %._crit_edge.i.i.from..lr.ph.i.i
  %.140.lcssa.i.i = phi i64 [ %i.df, %._crit_edge.i.i.from..lr.ph.i.i ], [ %i.db, %bb.g ]
  %.1.lcssa.i.i = phi i64 [ %i.dm, %._crit_edge.i.i.from..lr.ph.i.i ], [ %.03857.i.i, %bb.g ]
  %i.dq = add nuw i64 %.058.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dq, %i.y
  br i1 %exitcond.not.i.i, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23", label %bb.g, !llvm.loop !6457

"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIiEENS_4TaskIvEESF_ENKUlmE_clEm.exit.loopexit23": ; preds = %._crit_edge.i.i
  %i.dr = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not, label %._crit_edge, label %.from..preheader50.i.i, !llvm.loop !6455

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = atomicrmw add ptr %i.dt, i32 -1 acq_rel, align 4 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %bb.h, label %_ZN3tev5Latch9countDownEv.exit.i

bb.h:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.h
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !117 ; 7 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !128
  %i.dz = and i32 %i.dy, 8
  %.not.i.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.i:                                             ; preds = %.noexc.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !129 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.eb, %.from..lr.ph.i.i.i.i.i ], [ %i.et, %.noexc2.i.i ] ; 2 uses
  %i.ei = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.ej = load i8, ptr %i.ee, align 8             ; 2 uses
  %i.ek = trunc i8 %i.ej to i1                    ; 2 uses
  %i.el = load ptr, ptr %i.ef, align 8
  %i.em = select i1 %i.ek, ptr %i.el, ptr %i.eg
  %i.en = load i64, ptr %i.eh, align 8
  %i.eo = lshr i8 %i.ej, 1
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = select i1 %i.ek, i64 %i.en, i64 %i.ep
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !89
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr %i.em, i64 %i.eq, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.et, %i.ed
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.h
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %lpad.loopexit.split-lp124, 0
  call void @__clang_call_terminate(ptr %i.eu) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ev = icmp slt i32 %i.du, 2
  br i1 %i.ev, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !97 ; 2 uses
  %i.ey = inttoptr i64 %i.ex to ptr               ; 3 uses
  store ptr %i.ey, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr94 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr94, align 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr nonnull %i.ey)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.fa = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i20 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = atomicrmw add ptr %i.fb, i64 -1 acq_rel, align 8
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !89
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(24) %i.fa) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fa) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr93) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.87, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.87 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged18
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIiEENS_4TaskIvEESJ_EUlmE0_EESN_S4_S4_mT0_iEUlmmE_EESN_S4_S4_mSP_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task", align 8         ; 11 uses
  %10 = alloca %class.anon.1182, align 8          ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #47 ; 24 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIiEENS_4TaskIvEESJ_EUlmE0_EESN_S4_S4_mT0_iEUlmmE_EESN_S4_S4_mSP_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIiEENS_4TaskIvEESJ_EUlmE0_EESN_S4_S4_mT0_iEUlmmE_EESN_S4_S4_mSP_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr185 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr183, align 8, !tbaa !97
end_hunk_1
