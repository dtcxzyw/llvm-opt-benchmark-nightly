Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 139
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESE_S4_S4_mSG_iENKUlvE_clEv":.from.
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESE_S4_S4_mSG_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESE_S4_S4_mSG_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr45 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.39 ; 5 uses

.body.from.39:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !3685
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !3685
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !3685
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !3685
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !3686
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !3686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44, !noalias !3687
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %bb.b unwind label %bb.d, !noalias !3687

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !3687
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !204, !noalias !3687
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !3687
  store ptr null, ptr %2, align 8, !tbaa !204, !noalias !3687
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !3687 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !3687
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !3687
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !3687 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !3687
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #44, !noalias !3687
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44, !noalias !3687
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3688, !nonnull !175, !align !773
  %i.u = load i64, ptr %1, align 8, !tbaa !940    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !941  ; 6 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !3690 ; 18 uses
  %i.x = add i64 %i.u, 4                          ; 2 uses
  %.not11.i.i = icmp ugt i64 %i.x, %i.w
  br i1 %.not11.i.i, label %.preheader.i.i, label %.from..lr.ph.i.i

.from..lr.ph.i.i:                                 ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.z = load ptr, ptr %.val, align 8, !tbaa !226, !noalias !3691 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !943, !noalias !3691 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !944, !noalias !3691 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !943, !noalias !3691 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !944, !noalias !3691 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !943, !noalias !3691 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !944, !noalias !3691 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 156
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 164
  br label %.from.30

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i.from.
  %.0.lcssa.i.i = phi i64 [ %i.dr, %.preheader.i.i.from. ], [ %i.u, %bb.e ] ; 8 uses
  %i.aq = icmp ult i64 %.0.lcssa.i.i, %i.w
  br i1 %i.aq, label %.from..lr.ph14.i.i, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SD_mT0_iENKUlmmE_clEmm.exit"

.from..lr.ph14.i.i:                               ; preds = %.preheader.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 5 uses
  %i.as = load ptr, ptr %.val, align 8, !tbaa !226 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !943 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !944 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !943 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !944 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !943 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !944 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 148 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 156 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 164 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 172 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 176 ; 2 uses
  %i.bm = sub nuw i64 %i.w, %.0.lcssa.i.i         ; 3 uses
  %min.iters.check = icmp ult i64 %i.bm, 10
  br i1 %min.iters.check, label %.from.35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.from..lr.ph14.i.i
  %ident.check = icmp ne i64 %i.av, 1
  %ident.check56 = icmp ne i64 %i.az, 1
  %ident.check57 = icmp ne i64 %i.bd, 1
  %i.bn = or i1 %ident.check, %ident.check56
  %i.bo = or i1 %i.bn, %ident.check57
  br i1 %i.bo, label %.from.35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bp = shl i64 %.0.lcssa.i.i, 2                ; 3 uses
  %i.bq = getelementptr i8, ptr %i.at, i64 %i.bp  ; 3 uses
  %i.br = shl i64 %i.w, 2                         ; 3 uses
  %i.bs = getelementptr i8, ptr %i.at, i64 %i.br  ; 3 uses
  %i.bt = getelementptr i8, ptr %i.ax, i64 %i.bp  ; 3 uses
  %i.bu = getelementptr i8, ptr %i.ax, i64 %i.br  ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bb, i64 %i.bp  ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bb, i64 %i.br  ; 3 uses
  %i.bx = getelementptr i8, ptr %.val, i64 180    ; 3 uses
  %bound0 = icmp ult ptr %i.bq, %i.bu
  %bound1 = icmp ult ptr %i.bt, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  %bound083 = icmp ult ptr %i.bq, %i.bw
  %bound184 = icmp ult ptr %i.bv, %i.bs
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx = or i1 %found.conflict, %found.conflict85
  %bound086 = icmp ult ptr %i.bq, %i.bx
  %bound187 = icmp ult ptr %i.ar, %i.bs
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %conflict.rdx, %found.conflict88
  %bound090 = icmp ult ptr %i.bt, %i.bw
  %bound191 = icmp ult ptr %i.bv, %i.bu
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89, %found.conflict92
  %bound094 = icmp ult ptr %i.bt, %i.bx
  %bound195 = icmp ult ptr %i.ar, %i.bu
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx93, %found.conflict96
  %bound098 = icmp ult ptr %i.bv, %i.bx
  %bound199 = icmp ult ptr %i.ar, %i.bw
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx97, %found.conflict100
  br i1 %conflict.rdx101, label %.from.35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, -2                      ; 3 uses
  %i.by = add i64 %.0.lcssa.i.i, %n.vec
  %i.bz = load float, ptr %i.ar, align 8, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.ca = load float, ptr %i.be, align 4, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.cb = load float, ptr %i.bf, align 8, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.cc = load float, ptr %i.bg, align 4, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.cd = load float, ptr %i.bh, align 8, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.ce = load float, ptr %i.bi, align 4, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.cf = load float, ptr %i.bj, align 8, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.cg = load float, ptr %i.bk, align 4, !tbaa !119, !alias.scope !3692 ; 2 uses
  %i.ch = load float, ptr %i.bl, align 8, !tbaa !119, !alias.scope !3692 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = add nuw i64 %.0.lcssa.i.i, %index       ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ci ; 2 uses
  %wide.load = load <2 x float>, ptr %i.cj, align 4, !tbaa !119, !alias.scope !3693, !noalias !3694 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ci ; 2 uses
  %wide.load102 = load <2 x float>, ptr %i.ck, align 4, !tbaa !119, !alias.scope !3695, !noalias !3696 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ci ; 2 uses
  %wide.load103 = load <2 x float>, ptr %i.cl, align 4, !tbaa !119, !alias.scope !3697, !noalias !3692 ; 2 uses
  %i.cm = extractelement <2 x float> %wide.load, i64 0 ; 3 uses
  %i.cn = call noundef float @llvm.fma.f32(float %i.bz, float %i.cm, float 0.000000e+00)
  %i.co = extractelement <2 x float> %wide.load, i64 1 ; 3 uses
  %i.cp = call noundef float @llvm.fma.f32(float %i.bz, float %i.co, float 0.000000e+00)
  %i.cq = call noundef float @llvm.fma.f32(float %i.ca, float %i.cm, float 0.000000e+00)
  %i.cr = call noundef float @llvm.fma.f32(float %i.ca, float %i.co, float 0.000000e+00)
  %i.cs = call noundef float @llvm.fma.f32(float %i.cb, float %i.cm, float 0.000000e+00)
  %i.ct = call noundef float @llvm.fma.f32(float %i.cb, float %i.co, float 0.000000e+00)
  %i.cu = extractelement <2 x float> %wide.load102, i64 0 ; 3 uses
  %i.cv = call noundef float @llvm.fma.f32(float %i.cc, float %i.cu, float %i.cn)
  %i.cw = extractelement <2 x float> %wide.load102, i64 1 ; 3 uses
  %i.cx = call noundef float @llvm.fma.f32(float %i.cc, float %i.cw, float %i.cp)
  %i.cy = call noundef float @llvm.fma.f32(float %i.cd, float %i.cu, float %i.cq)
  %i.cz = call noundef float @llvm.fma.f32(float %i.cd, float %i.cw, float %i.cr)
  %i.da = call noundef float @llvm.fma.f32(float %i.ce, float %i.cu, float %i.cs)
  %i.db = call noundef float @llvm.fma.f32(float %i.ce, float %i.cw, float %i.ct)
  %i.dc = extractelement <2 x float> %wide.load103, i64 0 ; 3 uses
  %i.dd = call noundef float @llvm.fma.f32(float %i.cf, float %i.dc, float %i.cv)
  %i.de = extractelement <2 x float> %wide.load103, i64 1 ; 3 uses
  %i.df = call noundef float @llvm.fma.f32(float %i.cf, float %i.de, float %i.cx)
  %i.dg = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.df, i64 1
  %i.di = call noundef float @llvm.fma.f32(float %i.cg, float %i.dc, float %i.cy)
  %i.dj = call noundef float @llvm.fma.f32(float %i.cg, float %i.de, float %i.cz)
  %i.dk = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dj, i64 1
  %i.dm = call noundef float @llvm.fma.f32(float %i.ch, float %i.dc, float %i.da)
  %i.dn = call noundef float @llvm.fma.f32(float %i.ch, float %i.de, float %i.db)
  %i.do = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dn, i64 1
  store <2 x float> %i.dh, ptr %i.cj, align 4, !tbaa !119, !alias.scope !3693, !noalias !3694
  store <2 x float> %i.dl, ptr %i.ck, align 4, !tbaa !119, !alias.scope !3695, !noalias !3696
  store <2 x float> %i.dp, ptr %i.cl, align 4, !tbaa !119, !alias.scope !3697, !noalias !3692
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !3678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SD_mT0_iENKUlmmE_clEmm.exit", label %.from.35.preheader

.from.35.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %.from..lr.ph14.i.i, %middle.block
  %.113.i.i.ph = phi i64 [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %vector.scevcheck ], [ %.0.lcssa.i.i, %.from..lr.ph14.i.i ], [ %i.by, %middle.block ]
  br label %.from.35

.from.30:                                         ; preds = %.from.30, %.from..lr.ph.i.i
  %i.dr = phi i64 [ %i.x, %.from..lr.ph.i.i ], [ %i.gm, %.from.30 ] ; 3 uses
  %.012.i.i = phi i64 [ %i.u, %.from..lr.ph.i.i ], [ %i.dr, %.from.30 ] ; 6 uses
  %i.ds = add i64 %.012.i.i, 1                    ; 3 uses
  %i.dt = add i64 %.012.i.i, 2                    ; 3 uses
  %i.du = add i64 %.012.i.i, 3                    ; 3 uses
  %i.dv = mul i64 %.012.i.i, %i.ac
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dy = mul i64 %i.ds, %i.ac
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dy ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.4.vec.insert.i.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i.i, float %i.ea, i64 1
  %i.eb = mul i64 %i.dt, %i.ac
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.eb ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.8.vec.insert.i.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i.i, float %i.ed, i64 2
  %i.ee = mul i64 %i.du, %i.ac
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ee ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.12.vec.insert.i.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i.i, float %i.eg, i64 3 ; 3 uses
  %i.eh = mul i64 %.012.i.i, %i.ag
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.eh ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.0.vec.insert.i.1.i.i.i.i = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.ek = mul i64 %i.ds, %i.ag
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ek ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.4.vec.insert.i.1.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.1.i.i.i.i, float %i.em, i64 1
  %i.en = mul i64 %i.dt, %i.ag
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.en ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.8.vec.insert.i.1.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.1.i.i.i.i, float %i.ep, i64 2
  %i.eq = mul i64 %i.du, %i.ag
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.eq ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.12.vec.insert.i.1.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.1.i.i.i.i, float %i.es, i64 3 ; 3 uses
  %i.et = mul i64 %.012.i.i, %i.ak
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.et ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.0.vec.insert.i.2.i.i.i.i = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ew = mul i64 %i.ds, %i.ak
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ew ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.4.vec.insert.i.2.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.2.i.i.i.i, float %i.ey, i64 1
  %i.ez = mul i64 %i.dt, %i.ak
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ez ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.8.vec.insert.i.2.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.2.i.i.i.i, float %i.fb, i64 2
  %i.fc = mul i64 %i.du, %i.ak
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fc ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !119, !noalias !3691
  %.sroa.0.12.vec.insert.i.2.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.2.i.i.i.i, float %i.fe, i64 3 ; 3 uses
  %i.ff = load <1 x float>, ptr %i.y, align 8, !noalias !3698
  %i.fg = shufflevector <1 x float> %i.ff, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fh = fmul <4 x float> %.sroa.0.12.vec.insert.i.i.i.i.i, %i.fg
  %i.fi = fadd <4 x float> %i.fh, zeroinitializer
  %i.fj = load <1 x float>, ptr %i.al, align 4, !noalias !3698
  %i.fk = shufflevector <1 x float> %i.fj, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fmul <4 x float> %.sroa.0.12.vec.insert.i.i.i.i.i, %i.fk
  %i.fm = fadd <4 x float> %i.fl, zeroinitializer
  %i.fn = load <1 x float>, ptr %i.am, align 8, !noalias !3698
  %i.fo = shufflevector <1 x float> %i.fn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fp = fmul <4 x float> %.sroa.0.12.vec.insert.i.i.i.i.i, %i.fo
  %i.fq = fadd <4 x float> %i.fp, zeroinitializer
  %i.fr = load <1 x float>, ptr %i.an, align 4, !noalias !3698
  %i.fs = shufflevector <1 x float> %i.fr, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x float> %.sroa.0.12.vec.insert.i.1.i.i.i.i, %i.fs
  %i.fu = fadd <4 x float> %i.fi, %i.ft
  %i.fv = load <1 x float>, ptr %i.ao, align 8, !noalias !3698
  %i.fw = shufflevector <1 x float> %i.fv, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fmul <4 x float> %.sroa.0.12.vec.insert.i.1.i.i.i.i, %i.fw
  %i.fy = fadd <4 x float> %i.fm, %i.fx
  %i.fz = load <4 x float>, ptr %i.ap, align 4, !noalias !3698 ; 4 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = fmul <4 x float> %.sroa.0.12.vec.insert.i.1.i.i.i.i, %i.ga
  %i.gc = fadd <4 x float> %i.fq, %i.gb
  %i.gd = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ge = fmul <4 x float> %.sroa.0.12.vec.insert.i.2.i.i.i.i, %i.gd
  %i.gf = fadd <4 x float> %i.fu, %i.ge           ; 4 uses
  %i.gg = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gh = fmul <4 x float> %.sroa.0.12.vec.insert.i.2.i.i.i.i, %i.gg
  %i.gi = fadd <4 x float> %i.fy, %i.gh           ; 4 uses
  %i.gj = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gk = fmul <4 x float> %.sroa.0.12.vec.insert.i.2.i.i.i.i, %i.gj
  %i.gl = fadd <4 x float> %i.gk, %i.gc           ; 4 uses
  %.sroa.0.0.vec.extract12.i.i.i.i.i = extractelement <4 x float> %i.gf, i64 0
  store float %.sroa.0.0.vec.extract12.i.i.i.i.i, ptr %i.dw, align 4, !tbaa !119
  %.sroa.0.4.vec.extract14.i.i.i.i.i = extractelement <4 x float> %i.gf, i64 1
  store float %.sroa.0.4.vec.extract14.i.i.i.i.i, ptr %i.dz, align 4, !tbaa !119
  %.sroa.0.8.vec.extract16.i.i.i.i.i = extractelement <4 x float> %i.gf, i64 2
  store float %.sroa.0.8.vec.extract16.i.i.i.i.i, ptr %i.ec, align 4, !tbaa !119
  %.sroa.0.12.vec.extract18.i.i.i.i.i = extractelement <4 x float> %i.gf, i64 3
  store float %.sroa.0.12.vec.extract18.i.i.i.i.i, ptr %i.ef, align 4, !tbaa !119
  %.sroa.0.0.vec.extract12.i.1.i.i.i.i = extractelement <4 x float> %i.gi, i64 0
  store float %.sroa.0.0.vec.extract12.i.1.i.i.i.i, ptr %i.ei, align 4, !tbaa !119
  %.sroa.0.4.vec.extract14.i.1.i.i.i.i = extractelement <4 x float> %i.gi, i64 1
  store float %.sroa.0.4.vec.extract14.i.1.i.i.i.i, ptr %i.el, align 4, !tbaa !119
  %.sroa.0.8.vec.extract16.i.1.i.i.i.i = extractelement <4 x float> %i.gi, i64 2
  store float %.sroa.0.8.vec.extract16.i.1.i.i.i.i, ptr %i.eo, align 4, !tbaa !119
  %.sroa.0.12.vec.extract18.i.1.i.i.i.i = extractelement <4 x float> %i.gi, i64 3
  store float %.sroa.0.12.vec.extract18.i.1.i.i.i.i, ptr %i.er, align 4, !tbaa !119
  %.sroa.0.0.vec.extract12.i.2.i.i.i.i = extractelement <4 x float> %i.gl, i64 0
  store float %.sroa.0.0.vec.extract12.i.2.i.i.i.i, ptr %i.eu, align 4, !tbaa !119
  %.sroa.0.4.vec.extract14.i.2.i.i.i.i = extractelement <4 x float> %i.gl, i64 1
  store float %.sroa.0.4.vec.extract14.i.2.i.i.i.i, ptr %i.ex, align 4, !tbaa !119
  %.sroa.0.8.vec.extract16.i.2.i.i.i.i = extractelement <4 x float> %i.gl, i64 2
  store float %.sroa.0.8.vec.extract16.i.2.i.i.i.i, ptr %i.fa, align 4, !tbaa !119
  %.sroa.0.12.vec.extract18.i.2.i.i.i.i = extractelement <4 x float> %i.gl, i64 3
  store float %.sroa.0.12.vec.extract18.i.2.i.i.i.i, ptr %i.fd, align 4, !tbaa !119
  %i.gm = add i64 %i.dr, 4                        ; 2 uses
  %.not.i.i = icmp ugt i64 %i.gm, %i.w
  br i1 %.not.i.i, label %.preheader.i.i.from., label %.from.30, !llvm.loop !3681

.preheader.i.i.from.:                             ; preds = %.from.30
  br label %.preheader.i.i, !llvm.loop !3681

.from.35:                                         ; preds = %.from.35.preheader, %.from.35
  %.113.i.i = phi i64 [ %i.ho, %.from.35 ], [ %.113.i.i.ph, %.from.35.preheader ] ; 4 uses
  %i.gn = mul i64 %.113.i.i, %i.av
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gn ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !119 ; 3 uses
  %i.gq = mul i64 %.113.i.i, %i.az
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.gq ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !119 ; 3 uses
  %i.gt = mul i64 %.113.i.i, %i.bd
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.gt ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !119 ; 3 uses
  %i.gw = load float, ptr %i.ar, align 8, !tbaa !119
  %i.gx = call noundef float @llvm.fma.f32(float %i.gw, float %i.gp, float 0.000000e+00)
  %i.gy = load float, ptr %i.be, align 4, !tbaa !119
  %i.gz = call noundef float @llvm.fma.f32(float %i.gy, float %i.gp, float 0.000000e+00)
  %i.ha = load float, ptr %i.bf, align 8, !tbaa !119
  %i.hb = call noundef float @llvm.fma.f32(float %i.ha, float %i.gp, float 0.000000e+00)
  %i.hc = load float, ptr %i.bg, align 4, !tbaa !119
  %i.hd = call noundef float @llvm.fma.f32(float %i.hc, float %i.gs, float %i.gx)
  %i.he = load float, ptr %i.bh, align 8, !tbaa !119
  %i.hf = call noundef float @llvm.fma.f32(float %i.he, float %i.gs, float %i.gz)
  %i.hg = load float, ptr %i.bi, align 4, !tbaa !119
  %i.hh = call noundef float @llvm.fma.f32(float %i.hg, float %i.gs, float %i.hb)
  %i.hi = load float, ptr %i.bj, align 8, !tbaa !119
  %i.hj = call noundef float @llvm.fma.f32(float %i.hi, float %i.gv, float %i.hd)
  %i.hk = load float, ptr %i.bk, align 4, !tbaa !119
  %i.hl = call noundef float @llvm.fma.f32(float %i.hk, float %i.gv, float %i.hf)
  %i.hm = load float, ptr %i.bl, align 8, !tbaa !119
  %i.hn = call noundef float @llvm.fma.f32(float %i.hm, float %i.gv, float %i.hh)
  store float %i.hj, ptr %i.go, align 4, !tbaa !119
  store float %i.hl, ptr %i.gr, align 4, !tbaa !119
  store float %i.hn, ptr %i.gu, align 4, !tbaa !119
  %i.ho = add nuw i64 %.113.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ho, %i.w
  br i1 %exitcond.not.i.i, label %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SD_mT0_iENKUlmmE_clEmm.exit", label %.from.35, !llvm.loop !3682

"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SD_mT0_iENKUlmmE_clEmm.exit": ; preds = %.from.35, %middle.block, %.preheader.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr45)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SD_mT0_iENKUlmmE_clEmm.exit"
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #49
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %"_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_9ImageData20applyColorConversionERKN7nanogui6MatrixIfLm3EEEiE3$_0EENS_4TaskIvEERNS_10ThreadPoolET_SD_mT0_iENKUlmmE_clEmm.exit"
  %i.hr = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = atomicrmw add ptr %i.hs, i32 -1 acq_rel, align 4 ; 2 uses
  %i.hu = icmp slt i32 %i.ht, 1
  br i1 %i.hu, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !240 ; 7 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !247
  %i.hy = and i32 %i.hx, 8
  %.not.i.i.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

end_hunk_0
