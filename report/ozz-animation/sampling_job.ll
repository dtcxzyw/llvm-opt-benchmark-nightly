Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/sampling_job?download=true
inline.NumInlined: 276
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation11SamplingJob3RunEv:bb.a
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !60
  %i.jf = zext i16 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ij
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !60
  %i.ji = zext i16 %i.jh to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i: ; preds = %bb.k, %bb.j
  %.sink20.i77.i = phi i64 [ %i.ji, %bb.k ], [ %i.iw, %bb.j ]
  %.pn.i78.i = phi i64 [ %i.iz, %bb.k ], [ %i.in, %bb.j ]
  %.pn21.i79.i = phi i64 [ %i.jc, %bb.k ], [ %i.iq, %bb.j ]
  %.pn22.i80.i = phi i64 [ %i.jf, %bb.k ], [ %i.it, %bb.j ]
  %.sink17.in.i81.i = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.pn22.i80.i
  %.sink17.i82.i = load float, ptr %.sink17.in.i81.i, align 4, !tbaa !61
  %.sink18.in.i83.i = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.pn21.i79.i
  %.sink18.i84.i = load float, ptr %.sink18.in.i83.i, align 4, !tbaa !61
  %.sink19.in.i85.i = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.pn.i78.i
  %.sink19.i86.i = load float, ptr %.sink19.in.i85.i, align 4, !tbaa !61
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.sink20.i77.i
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !61
  %i.jl = insertelement <4 x float> poison, float %.sink19.i86.i, i64 0
  %i.jm = insertelement <4 x float> %i.jl, float %.sink18.i84.i, i64 1
  %i.jn = insertelement <4 x float> %i.jm, float %.sink17.i82.i, i64 2
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 3
  %i.jp = load ptr, ptr %i.bs, align 8, !tbaa !62
  %i.jq = getelementptr inbounds nuw [128 x i8], ptr %i.jp, i64 %.06225.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <4 x float> %i.jo, ptr %i.jr, align 16, !tbaa !56
  %i.js = load ptr, ptr %i.bs, align 8, !tbaa !62
  %i.jt = getelementptr inbounds nuw [128 x i8], ptr %i.js, i64 %.06225.i ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  %i.jv = load i16, ptr %i.ib, align 2, !tbaa !60
  %i.jw = zext i16 %i.jv to i32
  %i.jx = load i16, ptr %i.ie, align 2, !tbaa !60
  %i.jy = zext i16 %i.jx to i32
  %i.jz = load i16, ptr %i.ih, align 2, !tbaa !60
  %i.ka = zext i16 %i.jz to i32
  %i.kb = load i16, ptr %i.ik, align 2, !tbaa !60
  %i.kc = zext i16 %i.kb to i32
  %i.kd = insertelement <4 x i32> poison, i32 %i.jw, i64 0
  %i.ke = insertelement <4 x i32> %i.kd, i32 %i.jy, i64 1
  %i.kf = insertelement <4 x i32> %i.ke, i32 %i.ka, i64 2
  %i.kg = insertelement <4 x i32> %i.kf, i32 %i.kc, i64 3 ; 2 uses
  %i.kh = and <4 x i32> %i.kg, splat (i32 32767)  ; 2 uses
  %i.ki = shl nuw nsw <4 x i32> %i.kh, splat (i32 13)
  %i.kj = bitcast <4 x i32> %i.ki to <4 x float>
  %i.kk = fmul nnan <4 x float> %i.kj, splat (float f0x77800000)
  %i.kl = icmp samesign ugt <4 x i32> %i.kh, splat (i32 31743)
  %i.km = and <4 x i32> %i.kg, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.kn = shl nuw <4 x i32> %i.km, splat (i32 16)
  %i.ko = select <4 x i1> %i.kl, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.kp = or disjoint <4 x i32> %i.ko, %i.kn
  %i.kq = bitcast <4 x float> %i.kk to <4 x i32>
  %i.kr = or <4 x i32> %i.kp, %i.kq
  store <4 x i32> %i.kr, ptr %i.ju, align 16, !tbaa !56
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !60
  %i.ku = zext i16 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !60
  %i.kx = zext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !60
  %i.la = zext i16 %i.kz to i32
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !60
  %i.ld = zext i16 %i.lc to i32
  %i.le = insertelement <4 x i32> poison, i32 %i.ku, i64 0
  %i.lf = insertelement <4 x i32> %i.le, i32 %i.kx, i64 1
  %i.lg = insertelement <4 x i32> %i.lf, i32 %i.la, i64 2
  %i.lh = insertelement <4 x i32> %i.lg, i32 %i.ld, i64 3 ; 2 uses
  %i.li = and <4 x i32> %i.lh, splat (i32 32767)  ; 2 uses
  %i.lj = shl nuw nsw <4 x i32> %i.li, splat (i32 13)
  %i.lk = bitcast <4 x i32> %i.lj to <4 x float>
  %i.ll = fmul nnan <4 x float> %i.lk, splat (float f0x77800000)
  %i.lm = icmp samesign ugt <4 x i32> %i.li, splat (i32 31743)
  %i.ln = and <4 x i32> %i.lh, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.lo = shl nuw <4 x i32> %i.ln, splat (i32 16)
  %i.lp = select <4 x i1> %i.lm, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.lq = or disjoint <4 x i32> %i.lp, %i.lo
  %i.lr = bitcast <4 x float> %i.ll to <4 x i32>
  %i.ls = or <4 x i32> %i.lq, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  store <4 x i32> %i.ls, ptr %i.lt, align 16, !tbaa !56
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !60
  %i.lw = zext i16 %i.lv to i32
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !60
  %i.lz = zext i16 %i.ly to i32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !60
  %i.mc = zext i16 %i.mb to i32
  %i.md = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.me = load i16, ptr %i.md, align 2, !tbaa !60
  %i.mf = zext i16 %i.me to i32
  %i.mg = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %i.mh = insertelement <4 x i32> %i.mg, i32 %i.lz, i64 1
  %i.mi = insertelement <4 x i32> %i.mh, i32 %i.mc, i64 2
  %i.mj = insertelement <4 x i32> %i.mi, i32 %i.mf, i64 3 ; 2 uses
  %i.mk = and <4 x i32> %i.mj, splat (i32 32767)  ; 2 uses
  %i.ml = shl nuw nsw <4 x i32> %i.mk, splat (i32 13)
  %i.mm = bitcast <4 x i32> %i.ml to <4 x float>
  %i.mn = fmul nnan <4 x float> %i.mm, splat (float f0x77800000)
  %i.mo = icmp samesign ugt <4 x i32> %i.mk, splat (i32 31743)
  %i.mp = and <4 x i32> %i.mj, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.mq = shl nuw <4 x i32> %i.mp, splat (i32 16)
  %i.mr = select <4 x i1> %i.mo, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.ms = or disjoint <4 x i32> %i.mr, %i.mq
  %i.mt = bitcast <4 x float> %i.mn to <4 x i32>
  %i.mu = or <4 x i32> %i.ms, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jt, i64 112
  store <4 x i32> %i.mu, ptr %i.mv, align 16, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i, %.lr.ph.i
  %i.mw = add nuw i64 %.06225.i, 1
  %i.mx = lshr i8 %.06126.i, 1                    ; 2 uses
  %.not.i49 = icmp eq i8 %i.mx, 0
  br i1 %.not.i49, label %._crit_edge.i50, label %.lr.ph.i, !llvm.loop !73

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit: ; preds = %._crit_edge.i50
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre192 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98
  %.pre193 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit: ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit, %_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf.exit
  %i.my = phi ptr [ %.pre193, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.bq, %_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf.exit ]
  %i.mz = phi ptr [ %.pre192, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.bn, %_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf.exit ]
  %i.na = phi ptr [ %.pre, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.bl, %_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !47, !noalias !103 ; 17 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 120
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !48, !noalias !103
  store ptr %i.nc, ptr %2, align 8, !alias.scope !103
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ne, ptr %i.nf, align 8, !alias.scope !103
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 128
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !95, !noalias !103 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 136
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !96, !noalias !103
  store ptr %i.ni, ptr %i.ng, align 8, !alias.scope !103
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.nk, ptr %i.nl, align 8, !alias.scope !103
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 144
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !47, !noalias !103
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 152
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !48, !noalias !103
  store ptr %i.no, ptr %i.nm, align 8, !alias.scope !103
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.nq, ptr %i.nr, align 8, !alias.scope !103
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.nt = getelementptr inbounds nuw i8, ptr %i.na, i64 160
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !49, !noalias !103
  %i.nv = getelementptr inbounds nuw i8, ptr %i.na, i64 168
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !50, !noalias !103
  store ptr %i.nu, ptr %i.ns, align 8, !alias.scope !103
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.nw, ptr %i.nx, align 8, !alias.scope !103
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.na, i64 176
  %i.oa = load float, ptr %i.nz, align 8, !tbaa !97, !noalias !103
  store float %i.oa, ptr %i.ny, align 8, !tbaa !55, !alias.scope !103
  %i.ob = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !99
  %i.od = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  call fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %i.z, float noundef %i.ae, i64 noundef %i.u, ptr %i.mz, i64 %i.oc, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.od)
  %i.oe = load ptr, ptr %i.e, align 8, !tbaa !17  ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !98 ; 9 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 272
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !104 ; 8 uses
  %i.oj = load ptr, ptr %i.g, align 8, !tbaa !18  ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 160 ; 4 uses
  br i1 %.not31.i, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit, label %.lr.ph29.i58

.lr.ph29.i58:                                     ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.on = load i64, ptr %i.om, align 8, !tbaa !99
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %.not.i.i59 = icmp ugt i64 %i.on, 255           ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ph = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.pi = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.po = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i93, %.lr.ph29.i58
  %.027.i60 = phi i64 [ 0, %.lr.ph29.i58 ], [ %i.pv, %._crit_edge.i93 ] ; 3 uses
  %i.pr = load ptr, ptr %i.oo, align 8, !tbaa !47
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.027.i60 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !56  ; 2 uses
  store i8 0, ptr %i.ps, align 1, !tbaa !56
  %.not24.i61 = icmp eq i8 %i.pt, 0
  br i1 %.not24.i61, label %._crit_edge.i93, label %.lr.ph.preheader.i62

.lr.ph.preheader.i62:                             ; preds = %bb.m
  %i.pu = shl nuw i64 %.027.i60, 3
  br label %.lr.ph.i63

._crit_edge.i93:                                  ; preds = %bb.s, %bb.m
  %i.pv = add nuw nsw i64 %.027.i60, 1            ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.pv, %i.bu
  br i1 %exitcond.not.i94, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit, label %bb.m, !llvm.loop !78

.lr.ph.i63:                                       ; preds = %bb.s, %.lr.ph.preheader.i62
  %.06126.i64 = phi i8 [ %i.ajg, %bb.s ], [ %i.pt, %.lr.ph.preheader.i62 ] ; 2 uses
  %.06225.i65 = phi i64 [ %i.ajf, %bb.s ], [ %i.pu, %.lr.ph.preheader.i62 ] ; 6 uses
  %i.pw = and i8 %.06126.i64, 1
  %.not64.i66 = icmp eq i8 %i.pw, 0
  br i1 %.not64.i66, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i63
  %i.px = load ptr, ptr %i.ok, align 8, !tbaa !49
  %.idx.i67 = shl i64 %.06225.i65, 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %.idx.i67 ; 5 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !58 ; 2 uses
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qa
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !60
  %i.qd = zext i16 %i.qc to i32
  %i.qe = sub i32 %i.pz, %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !58 ; 2 uses
  %i.qh = zext i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qh
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !60
  %i.qk = zext i16 %i.qj to i32
  %i.ql = sub i32 %i.qg, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !58 ; 2 uses
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qo
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !60
  %i.qr = zext i16 %i.qq to i32
  %i.qs = sub i32 %i.qn, %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.py, i64 12 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !58 ; 2 uses
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !60
  %i.qy = zext i16 %i.qx to i32
  %i.qz = sub i32 %i.qu, %i.qy
  %i.ra = zext i32 %i.qe to i64                   ; 3 uses
  %i.rb = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.ra ; 3 uses
  %i.rc = zext i32 %i.ql to i64                   ; 3 uses
  %i.rd = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.rc ; 3 uses
  %i.re = zext i32 %i.qs to i64                   ; 3 uses
  %i.rf = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.re ; 3 uses
  %i.rg = zext i32 %i.qz to i64                   ; 3 uses
  %i.rh = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.rg ; 3 uses
  br i1 %.not.i.i59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ri = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ra
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !56
  %i.rk = zext i8 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.rc
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !56
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.re
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !56
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.rg
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !56
  %i.rt = zext i8 %i.rs to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69

bb.p:                                             ; preds = %bb.n
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.ra
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !60
  %i.rw = zext i16 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.rc
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !60
  %i.rz = zext i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.re
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !60
  %i.sc = zext i16 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.rg
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !60
  %i.sf = zext i16 %i.se to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69: ; preds = %bb.p, %bb.o
  %.sink20.i.i70 = phi i64 [ %i.sf, %bb.p ], [ %i.rt, %bb.o ]
  %.pn.i.i71 = phi i64 [ %i.rw, %bb.p ], [ %i.rk, %bb.o ]
  %.pn21.i.i72 = phi i64 [ %i.rz, %bb.p ], [ %i.rn, %bb.o ]
  %.pn22.i.i73 = phi i64 [ %i.sc, %bb.p ], [ %i.rq, %bb.o ]
  %.sink17.in.i.i74 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn22.i.i73
  %.sink17.i.i75 = load float, ptr %.sink17.in.i.i74, align 4, !tbaa !61
  %.sink18.in.i.i76 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn21.i.i72
  %.sink18.i.i77 = load float, ptr %.sink18.in.i.i76, align 4, !tbaa !61
  %.sink19.in.i.i78 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn.i.i71
  %.sink19.i.i79 = load float, ptr %.sink19.in.i.i78, align 4, !tbaa !61
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sink20.i.i70
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !61
  %i.si = insertelement <4 x float> poison, float %.sink19.i.i79, i64 0
  %i.sj = insertelement <4 x float> %i.si, float %.sink18.i.i77, i64 1
  %i.sk = insertelement <4 x float> %i.sj, float %.sink17.i.i75, i64 2
  %i.sl = insertelement <4 x float> %i.sk, float %i.sh, i64 3
  %i.sm = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.sn = getelementptr inbounds nuw [160 x i8], ptr %i.sm, i64 %.06225.i65
  store <4 x float> %i.sl, ptr %i.sn, align 16, !tbaa !56
  %i.so = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.sp = getelementptr inbounds nuw [160 x i8], ptr %i.so, i64 %.06225.i65 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.sr = load i16, ptr %i.rb, align 2, !tbaa !60 ; 2 uses
  %i.ss = zext i16 %i.sr to i32                   ; 2 uses
  %i.st = lshr i32 %i.ss, 3
  %i.su = getelementptr inbounds nuw i8, ptr %i.rb, i64 2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !60
  %i.sw = zext i16 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 13               ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !60 ; 2 uses
  %i.ta = zext i16 %i.sz to i32
  %i.tb = shl i32 %i.ta, 29
  %i.tc = or disjoint i32 %i.tb, %i.sx
  %i.td = and i32 %i.ss, 3
  %.masked.i.i148 = and i32 %i.sx, 24576
  %i.te = or disjoint i32 %.masked.i.i148, %i.st  ; 2 uses
  store i32 %i.te, ptr %i.a, align 16, !tbaa !58
  %i.tf = lshr i32 %i.tc, 15
  %i.tg = and i32 %i.tf, 32767
  store i32 %i.tg, ptr %i.op, align 4, !tbaa !58
  %i.th = lshr i16 %i.sz, 1
  %i.ti = zext nneg i16 %i.th to i32
  store i32 %i.ti, ptr %i.oq, align 8, !tbaa !58
  %i.tj = load i16, ptr %i.rd, align 2, !tbaa !60 ; 2 uses
  %i.tk = zext i16 %i.tj to i32                   ; 2 uses
  %i.tl = lshr i32 %i.tk, 3
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !60
  %i.to = zext i16 %i.tn to i32
  %i.tp = shl nuw nsw i32 %i.to, 13               ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !60 ; 2 uses
  %i.ts = zext i16 %i.tr to i32
  %i.tt = shl i32 %i.ts, 29
  %i.tu = or disjoint i32 %i.tt, %i.tp
  %i.tv = and i32 %i.tk, 3
  %.masked.i48.i149 = and i32 %i.tp, 24576
  %i.tw = or disjoint i32 %.masked.i48.i149, %i.tl ; 2 uses
  store i32 %i.tw, ptr %i.or, align 4, !tbaa !58
  %i.tx = lshr i32 %i.tu, 15
  %i.ty = and i32 %i.tx, 32767
  store i32 %i.ty, ptr %i.os, align 16, !tbaa !58
  %i.tz = lshr i16 %i.tr, 1
  %i.ua = zext nneg i16 %i.tz to i32
  store i32 %i.ua, ptr %i.ot, align 4, !tbaa !58
  %i.ub = load i16, ptr %i.rf, align 2, !tbaa !60 ; 2 uses
  %i.uc = zext i16 %i.ub to i32                   ; 2 uses
  %i.ud = lshr i32 %i.uc, 3
  %i.ue = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !60
  %i.ug = zext i16 %i.uf to i32
  %i.uh = shl nuw nsw i32 %i.ug, 13               ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !60 ; 2 uses
  %i.uk = zext i16 %i.uj to i32
  %i.ul = shl i32 %i.uk, 29
  %i.um = or disjoint i32 %i.ul, %i.uh
  %i.un = and i32 %i.uc, 3
  %.masked.i49.i150 = and i32 %i.uh, 24576
  %i.uo = or disjoint i32 %.masked.i49.i150, %i.ud ; 2 uses
  store i32 %i.uo, ptr %i.ou, align 8, !tbaa !58
  %i.up = lshr i32 %i.um, 15
  %i.uq = and i32 %i.up, 32767
  store i32 %i.uq, ptr %i.ov, align 4, !tbaa !58
  %i.ur = lshr i16 %i.uj, 1
  %i.us = zext nneg i16 %i.ur to i32
  store i32 %i.us, ptr %i.ow, align 16, !tbaa !58
  %i.ut = load i16, ptr %i.rh, align 2, !tbaa !60 ; 2 uses
  %i.uu = zext i16 %i.ut to i32                   ; 2 uses
  %i.uv = lshr i32 %i.uu, 3
  %i.uw = getelementptr inbounds nuw i8, ptr %i.rh, i64 2
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !60
  %i.uy = zext i16 %i.ux to i32
  %i.uz = shl nuw nsw i32 %i.uy, 13               ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !60 ; 2 uses
  %i.vc = zext i16 %i.vb to i32
  %i.vd = shl i32 %i.vc, 29
  %i.ve = or disjoint i32 %i.vd, %i.uz
  %i.vf = and i32 %i.uu, 3
  %i.vg = insertelement <4 x i16> poison, i16 %i.sr, i64 0
  %i.vh = insertelement <4 x i16> %i.vg, i16 %i.tj, i64 1
  %i.vi = insertelement <4 x i16> %i.vh, i16 %i.ub, i64 2
  %i.vj = insertelement <4 x i16> %i.vi, i16 %i.ut, i64 3
  %.masked.i50.i151 = and i32 %i.uz, 24576
  %i.vk = or disjoint i32 %.masked.i50.i151, %i.uv ; 2 uses
  store i32 %i.vk, ptr %i.ox, align 4, !tbaa !58
  %i.vl = lshr i32 %i.ve, 15
  %i.vm = and i32 %i.vl, 32767
  store i32 %i.vm, ptr %i.oy, align 8, !tbaa !58
  %i.vn = lshr i16 %i.vb, 1
  %i.vo = zext nneg i16 %i.vn to i32
  store i32 %i.vo, ptr %i.oz, align 4, !tbaa !58
  %i.vp = zext nneg i32 %i.td to i64              ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vp ; 3 uses
  %i.vr = zext nneg i32 %i.tv to i64              ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vr ; 3 uses
  %i.vt = zext nneg i32 %i.un to i64              ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vt ; 3 uses
  %i.vv = zext nneg i32 %i.vf to i64              ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vv ; 3 uses
  %.sroa.0.0.vec.insert.i152 = insertelement <4 x i32> poison, i32 %i.te, i64 0
  %.sroa.0.4.vec.insert.i153 = insertelement <4 x i32> %.sroa.0.0.vec.insert.i152, i32 %i.tw, i64 1
  %.sroa.0.8.vec.insert.i154 = insertelement <4 x i32> %.sroa.0.4.vec.insert.i153, i32 %i.uo, i64 2
  %.sroa.0.12.vec.insert.i155 = insertelement <4 x i32> %.sroa.0.8.vec.insert.i154, i32 %i.vk, i64 3
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !56
  %i.vz = zext i8 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !58
  %.sroa.7.16.vec.insert.i156 = insertelement <4 x i32> poison, i32 %i.wb, i64 0
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !56
  %i.we = zext i8 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !58
  %.sroa.7.20.vec.insert.i157 = insertelement <4 x i32> %.sroa.7.16.vec.insert.i156, i32 %i.wg, i64 1
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vu, i64 1
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !56
  %i.wj = zext i8 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !58
  %.sroa.7.24.vec.insert.i158 = insertelement <4 x i32> %.sroa.7.20.vec.insert.i157, i32 %i.wl, i64 2
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !56
  %i.wo = zext i8 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !58
  %.sroa.7.28.vec.insert.i159 = insertelement <4 x i32> %.sroa.7.24.vec.insert.i158, i32 %i.wq, i64 3
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  %i.ws = load i8, ptr %i.wr, align 2, !tbaa !56
  %i.wt = zext i8 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.wt
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !58
  %.sroa.12.32.vec.insert.i160 = insertelement <4 x i32> poison, i32 %i.wv, i64 0
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vs, i64 2
  %i.wx = load i8, ptr %i.ww, align 2, !tbaa !56
  %i.wy = zext i8 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !58
  %.sroa.12.36.vec.insert.i161 = insertelement <4 x i32> %.sroa.12.32.vec.insert.i160, i32 %i.xa, i64 1
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  %i.xc = load i8, ptr %i.xb, align 2, !tbaa !56
  %i.xd = zext i8 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !58
  %.sroa.12.40.vec.insert.i162 = insertelement <4 x i32> %.sroa.12.36.vec.insert.i161, i32 %i.xf, i64 2
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.xh = load i8, ptr %i.xg, align 2, !tbaa !56
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !58
  %.sroa.12.44.vec.insert.i163 = insertelement <4 x i32> %.sroa.12.40.vec.insert.i162, i32 %i.xk, i64 3
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vq, i64 3
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !56
  %i.xn = zext i8 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xn
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !58
  %.sroa.17.48.vec.insert.i164 = insertelement <4 x i32> poison, i32 %i.xp, i64 0
  %i.xq = getelementptr inbounds nuw i8, ptr %i.vs, i64 3
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !56
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !58
  %.sroa.17.52.vec.insert.i165 = insertelement <4 x i32> %.sroa.17.48.vec.insert.i164, i32 %i.xu, i64 1
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vu, i64 3
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !56
  %i.xx = zext i8 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !58
  %.sroa.17.56.vec.insert.i166 = insertelement <4 x i32> %.sroa.17.52.vec.insert.i165, i32 %i.xz, i64 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vw, i64 3
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !56
  %i.yc = zext i8 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !58
  %.sroa.17.60.vec.insert.i167 = insertelement <4 x i32> %.sroa.17.56.vec.insert.i166, i32 %i.ye, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.yf = uitofp nneg <4 x i32> %.sroa.0.12.vec.insert.i155 to <4 x float>
  %4 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yf, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %4, ptr %i.b, align 16, !tbaa !56
  %i.yg = sitofp <4 x i32> %.sroa.7.28.vec.insert.i159 to <4 x float>
  %5 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yg, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %5, ptr %i.pa, align 16, !tbaa !56
  %6 = sitofp <4 x i32> %.sroa.12.44.vec.insert.i163 to <4 x float>
  %7 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %7, ptr %i.pb, align 16, !tbaa !56
  %8 = sitofp <4 x i32> %.sroa.17.60.vec.insert.i167 to <4 x float>
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %9, ptr %i.pc, align 16, !tbaa !56
  %i.yh = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vp ; 4 uses
  %i.yi = load <4 x i32>, ptr %i.yh, align 16, !tbaa !56
  %i.yj = and <4 x i32> %i.yi, <i32 0, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %i.yj, ptr %i.yh, align 16, !tbaa !56
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vr ; 4 uses
  %i.yl = load <4 x i32>, ptr %i.yk, align 16, !tbaa !56
  %i.ym = and <4 x i32> %i.yl, <i32 -1, i32 0, i32 -1, i32 -1>
  store <4 x i32> %i.ym, ptr %i.yk, align 16, !tbaa !56
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vt ; 4 uses
  %i.yo = load <4 x i32>, ptr %i.yn, align 16, !tbaa !56
  %i.yp = and <4 x i32> %i.yo, <i32 -1, i32 -1, i32 0, i32 -1>
  store <4 x i32> %i.yp, ptr %i.yn, align 16, !tbaa !56
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vv ; 4 uses
  %i.yr = load <4 x i32>, ptr %i.yq, align 16, !tbaa !56
  %i.ys = and <4 x i32> %i.yr, <i32 -1, i32 -1, i32 -1, i32 0>
  store <4 x i32> %i.ys, ptr %i.yq, align 16, !tbaa !56
  %i.yt = load <4 x float>, ptr %i.b, align 16, !tbaa !56 ; 2 uses
  %i.yu = load <4 x float>, ptr %i.pa, align 16, !tbaa !56 ; 2 uses
  %i.yv = fmul <4 x float> %i.yu, %i.yu
  %i.yw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yt, <4 x float> %i.yt, <4 x float> %i.yv)
  %i.yx = load <4 x float>, ptr %i.pb, align 16, !tbaa !56 ; 2 uses
  %i.yy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yx, <4 x float> %i.yx, <4 x float> %i.yw)
  %i.yz = load <4 x float>, ptr %i.pc, align 16, !tbaa !56 ; 2 uses
  %i.za = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yz, <4 x float> %i.yz, <4 x float> %i.yy)
  %i.zb = fsub <4 x float> splat (float 1.000000e+00), %i.za ; 2 uses
  %i.zc = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.zb)
  %i.zd = fmul <4 x float> %i.zc, %i.zb
  %i.ze = lshr <4 x i16> %i.vj, splat (i16 2)
  %.lobit = and <4 x i16> %i.ze, splat (i16 1)
  %i.zf = zext nneg <4 x i16> %.lobit to <4 x i32>
  %i.zg = shl nuw <4 x i32> %i.zf, splat (i32 31)
  %i.zh = bitcast <4 x float> %i.zd to <4 x i32>
  %i.zi = or <4 x i32> %i.zg, %i.zh               ; 4 uses
  %i.zj = load <4 x i32>, ptr %i.yh, align 16, !tbaa !56
  %i.zk = and <4 x i32> %i.zi, <i32 -1, i32 0, i32 0, i32 0>
  %i.zl = or <4 x i32> %i.zk, %i.zj
  store <4 x i32> %i.zl, ptr %i.yh, align 16, !tbaa !56
  %i.zm = load <4 x i32>, ptr %i.yk, align 16, !tbaa !56
  %i.zn = and <4 x i32> %i.zi, <i32 0, i32 -1, i32 0, i32 0>
  %i.zo = or <4 x i32> %i.zn, %i.zm
  store <4 x i32> %i.zo, ptr %i.yk, align 16, !tbaa !56
  %i.zp = load <4 x i32>, ptr %i.yn, align 16, !tbaa !56
  %i.zq = and <4 x i32> %i.zi, <i32 0, i32 0, i32 -1, i32 0>
  %i.zr = or <4 x i32> %i.zq, %i.zp
  store <4 x i32> %i.zr, ptr %i.yn, align 16, !tbaa !56
  %i.zs = load <4 x i32>, ptr %i.yq, align 16, !tbaa !56
  %i.zt = and <4 x i32> %i.zi, <i32 0, i32 0, i32 0, i32 -1>
  %i.zu = or <4 x i32> %i.zs, %i.zt
  store <4 x i32> %i.zu, ptr %i.yq, align 16, !tbaa !56
  %i.zv = load <4 x float>, ptr %i.b, align 16, !tbaa !56
  store <4 x float> %i.zv, ptr %i.sq, align 16, !tbaa !56
  %i.zw = load <4 x float>, ptr %i.pa, align 16, !tbaa !56
  %10 = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  store <4 x float> %i.zw, ptr %10, align 16, !tbaa !56
  %i.zx = load <4 x float>, ptr %i.pb, align 16, !tbaa !56
  %i.zy = getelementptr inbounds nuw i8, ptr %i.sp, i64 64
  store <4 x float> %i.zx, ptr %i.zy, align 16, !tbaa !56
  %i.zz = load <4 x float>, ptr %i.pc, align 16, !tbaa !56
  %11 = getelementptr inbounds nuw i8, ptr %i.sp, i64 80
  store <4 x float> %i.zz, ptr %11, align 16, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aaa = load i32, ptr %i.py, align 4, !tbaa !58
  %i.aab = zext i32 %i.aaa to i64                 ; 3 uses
  %i.aac = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aab ; 3 uses
  %i.aad = load i32, ptr %i.qf, align 4, !tbaa !58
  %i.aae = zext i32 %i.aad to i64                 ; 3 uses
  %i.aaf = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aae ; 3 uses
  %i.aag = load i32, ptr %i.qm, align 4, !tbaa !58
  %i.aah = zext i32 %i.aag to i64                 ; 3 uses
  %i.aai = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aah ; 3 uses
  %i.aaj = load i32, ptr %i.qt, align 4, !tbaa !58
  %i.aak = zext i32 %i.aaj to i64                 ; 3 uses
  %i.aal = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aak ; 3 uses
  br i1 %.not.i.i59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69
  %i.aam = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aab
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !56
  %i.aao = zext i8 %i.aan to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aae
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !56
  %i.aar = zext i8 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aah
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !56
  %i.aau = zext i8 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aak
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !56
  %i.aax = zext i8 %i.aaw to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81

bb.r:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aab
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !60
  %i.aba = zext i16 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aae
  %i.abc = load i16, ptr %i.abb, align 2, !tbaa !60
  %i.abd = zext i16 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aah
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !60
  %i.abg = zext i16 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aak
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !60
  %i.abj = zext i16 %i.abi to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81: ; preds = %bb.r, %bb.q
  %.sink20.i77.i82 = phi i64 [ %i.abj, %bb.r ], [ %i.aax, %bb.q ]
  %.pn.i78.i83 = phi i64 [ %i.aba, %bb.r ], [ %i.aao, %bb.q ]
  %.pn21.i79.i84 = phi i64 [ %i.abd, %bb.r ], [ %i.aar, %bb.q ]
  %.pn22.i80.i85 = phi i64 [ %i.abg, %bb.r ], [ %i.aau, %bb.q ]
  %.sink17.in.i81.i86 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn22.i80.i85
  %.sink17.i82.i87 = load float, ptr %.sink17.in.i81.i86, align 4, !tbaa !61
  %.sink18.in.i83.i88 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn21.i79.i84
  %.sink18.i84.i89 = load float, ptr %.sink18.in.i83.i88, align 4, !tbaa !61
  %.sink19.in.i85.i90 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn.i78.i83
  %.sink19.i86.i91 = load float, ptr %.sink19.in.i85.i90, align 4, !tbaa !61
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sink20.i77.i82
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !61
  %i.abm = insertelement <4 x float> poison, float %.sink19.i86.i91, i64 0
  %i.abn = insertelement <4 x float> %i.abm, float %.sink18.i84.i89, i64 1
  %i.abo = insertelement <4 x float> %i.abn, float %.sink17.i82.i87, i64 2
  %i.abp = insertelement <4 x float> %i.abo, float %i.abl, i64 3
  %i.abq = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.abr = getelementptr inbounds nuw [160 x i8], ptr %i.abq, i64 %.06225.i65
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  store <4 x float> %i.abp, ptr %i.abs, align 16, !tbaa !56
  %i.abt = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.abu = getelementptr inbounds nuw [160 x i8], ptr %i.abt, i64 %.06225.i65 ; 4 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.abw = load i16, ptr %i.aac, align 2, !tbaa !60 ; 2 uses
  %i.abx = zext i16 %i.abw to i32                 ; 2 uses
  %i.aby = lshr i32 %i.abx, 3
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aac, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !60
  %i.acb = zext i16 %i.aca to i32
  %i.acc = shl nuw nsw i32 %i.acb, 13             ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !60 ; 2 uses
  %i.acf = zext i16 %i.ace to i32
  %i.acg = shl i32 %i.acf, 29
  %i.ach = or disjoint i32 %i.acg, %i.acc
  %i.aci = and i32 %i.abx, 3
  %.masked.i.i = and i32 %i.acc, 24576
  %i.acj = or disjoint i32 %.masked.i.i, %i.aby   ; 2 uses
  store i32 %i.acj, ptr %i.c, align 16, !tbaa !58
  %i.ack = lshr i32 %i.ach, 15
  %i.acl = and i32 %i.ack, 32767
  store i32 %i.acl, ptr %i.pd, align 4, !tbaa !58
  %i.acm = lshr i16 %i.ace, 1
  %i.acn = zext nneg i16 %i.acm to i32
  store i32 %i.acn, ptr %i.pe, align 8, !tbaa !58
  %i.aco = load i16, ptr %i.aaf, align 2, !tbaa !60 ; 2 uses
  %i.acp = zext i16 %i.aco to i32                 ; 2 uses
  %i.acq = lshr i32 %i.acp, 3
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aaf, i64 2
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !60
  %i.act = zext i16 %i.acs to i32
  %i.acu = shl nuw nsw i32 %i.act, 13             ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !60 ; 2 uses
  %i.acx = zext i16 %i.acw to i32
  %i.acy = shl i32 %i.acx, 29
  %i.acz = or disjoint i32 %i.acy, %i.acu
  %i.ada = and i32 %i.acp, 3
  %.masked.i48.i = and i32 %i.acu, 24576
  %i.adb = or disjoint i32 %.masked.i48.i, %i.acq ; 2 uses
  store i32 %i.adb, ptr %i.pf, align 4, !tbaa !58
  %i.adc = lshr i32 %i.acz, 15
  %i.add = and i32 %i.adc, 32767
  store i32 %i.add, ptr %i.pg, align 16, !tbaa !58
  %i.ade = lshr i16 %i.acw, 1
  %i.adf = zext nneg i16 %i.ade to i32
  store i32 %i.adf, ptr %i.ph, align 4, !tbaa !58
  %i.adg = load i16, ptr %i.aai, align 2, !tbaa !60 ; 2 uses
  %i.adh = zext i16 %i.adg to i32                 ; 2 uses
  %i.adi = lshr i32 %i.adh, 3
  %i.adj = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !60
  %i.adl = zext i16 %i.adk to i32
  %i.adm = shl nuw nsw i32 %i.adl, 13             ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !60 ; 2 uses
  %i.adp = zext i16 %i.ado to i32
  %i.adq = shl i32 %i.adp, 29
  %i.adr = or disjoint i32 %i.adq, %i.adm
  %i.ads = and i32 %i.adh, 3
  %.masked.i49.i = and i32 %i.adm, 24576
  %i.adt = or disjoint i32 %.masked.i49.i, %i.adi ; 2 uses
  store i32 %i.adt, ptr %i.pi, align 8, !tbaa !58
  %i.adu = lshr i32 %i.adr, 15
  %i.adv = and i32 %i.adu, 32767
  store i32 %i.adv, ptr %i.pj, align 4, !tbaa !58
  %i.adw = lshr i16 %i.ado, 1
  %i.adx = zext nneg i16 %i.adw to i32
  store i32 %i.adx, ptr %i.pk, align 16, !tbaa !58
  %i.ady = load i16, ptr %i.aal, align 2, !tbaa !60 ; 2 uses
  %i.adz = zext i16 %i.ady to i32                 ; 2 uses
  %i.aea = lshr i32 %i.adz, 3
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aal, i64 2
  %i.aec = load i16, ptr %i.aeb, align 2, !tbaa !60
  %i.aed = zext i16 %i.aec to i32
  %i.aee = shl nuw nsw i32 %i.aed, 13             ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aal, i64 4
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !60 ; 2 uses
  %i.aeh = zext i16 %i.aeg to i32
  %i.aei = shl i32 %i.aeh, 29
  %i.aej = or disjoint i32 %i.aei, %i.aee
  %i.aek = and i32 %i.adz, 3
  %i.ael = insertelement <4 x i16> poison, i16 %i.abw, i64 0
  %i.aem = insertelement <4 x i16> %i.ael, i16 %i.aco, i64 1
  %i.aen = insertelement <4 x i16> %i.aem, i16 %i.adg, i64 2
  %i.aeo = insertelement <4 x i16> %i.aen, i16 %i.ady, i64 3
  %.masked.i50.i = and i32 %i.aee, 24576
  %i.aep = or disjoint i32 %.masked.i50.i, %i.aea ; 2 uses
  store i32 %i.aep, ptr %i.pl, align 4, !tbaa !58
  %i.aeq = lshr i32 %i.aej, 15
  %i.aer = and i32 %i.aeq, 32767
  store i32 %i.aer, ptr %i.pm, align 8, !tbaa !58
  %i.aes = lshr i16 %i.aeg, 1
  %i.aet = zext nneg i16 %i.aes to i32
  store i32 %i.aet, ptr %i.pn, align 4, !tbaa !58
  %i.aeu = zext nneg i32 %i.aci to i64            ; 2 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.aeu ; 3 uses
  %i.aew = zext nneg i32 %i.ada to i64            ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.aew ; 3 uses
  %i.aey = zext nneg i32 %i.ads to i64            ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.aey ; 3 uses
  %i.afa = zext nneg i32 %i.aek to i64            ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.afa ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <4 x i32> poison, i32 %i.acj, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <4 x i32> %.sroa.0.0.vec.insert.i, i32 %i.adb, i64 1
  %.sroa.0.8.vec.insert.i = insertelement <4 x i32> %.sroa.0.4.vec.insert.i, i32 %i.adt, i64 2
  %.sroa.0.12.vec.insert.i = insertelement <4 x i32> %.sroa.0.8.vec.insert.i, i32 %i.aep, i64 3
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 1
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !56
  %i.afe = zext i8 %i.afd to i64
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.afe
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !58
  %.sroa.7.16.vec.insert.i = insertelement <4 x i32> poison, i32 %i.afg, i64 0
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aex, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !56
  %i.afj = zext i8 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !58
  %.sroa.7.20.vec.insert.i = insertelement <4 x i32> %.sroa.7.16.vec.insert.i, i32 %i.afl, i64 1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aez, i64 1
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !56
  %i.afo = zext i8 %i.afn to i64
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !58
  %.sroa.7.24.vec.insert.i = insertelement <4 x i32> %.sroa.7.20.vec.insert.i, i32 %i.afq, i64 2
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afb, i64 1
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !56
  %i.aft = zext i8 %i.afs to i64
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.aft
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !58
  %.sroa.7.28.vec.insert.i = insertelement <4 x i32> %.sroa.7.24.vec.insert.i, i32 %i.afv, i64 3
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aev, i64 2
  %i.afx = load i8, ptr %i.afw, align 2, !tbaa !56
  %i.afy = zext i8 %i.afx to i64
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !58
  %.sroa.12.32.vec.insert.i = insertelement <4 x i32> poison, i32 %i.aga, i64 0
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aex, i64 2
  %i.agc = load i8, ptr %i.agb, align 2, !tbaa !56
  %i.agd = zext i8 %i.agc to i64
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.agd
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !58
  %.sroa.12.36.vec.insert.i = insertelement <4 x i32> %.sroa.12.32.vec.insert.i, i32 %i.agf, i64 1
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aez, i64 2
  %i.agh = load i8, ptr %i.agg, align 2, !tbaa !56
  %i.agi = zext i8 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.agi
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !58
  %.sroa.12.40.vec.insert.i = insertelement <4 x i32> %.sroa.12.36.vec.insert.i, i32 %i.agk, i64 2
  %i.agl = getelementptr inbounds nuw i8, ptr %i.afb, i64 2
  %i.agm = load i8, ptr %i.agl, align 2, !tbaa !56
  %i.agn = zext i8 %i.agm to i64
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.agn
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !58
  %.sroa.12.44.vec.insert.i = insertelement <4 x i32> %.sroa.12.40.vec.insert.i, i32 %i.agp, i64 3
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aev, i64 3
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !56
  %i.ags = zext i8 %i.agr to i64
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ags
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !58
  %.sroa.17.48.vec.insert.i = insertelement <4 x i32> poison, i32 %i.agu, i64 0
  %i.agv = getelementptr inbounds nuw i8, ptr %i.aex, i64 3
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !56
  %i.agx = zext i8 %i.agw to i64
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.agx
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !58
  %.sroa.17.52.vec.insert.i = insertelement <4 x i32> %.sroa.17.48.vec.insert.i, i32 %i.agz, i64 1
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aez, i64 3
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !56
  %i.ahc = zext i8 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.ahc
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !58
  %.sroa.17.56.vec.insert.i = insertelement <4 x i32> %.sroa.17.52.vec.insert.i, i32 %i.ahe, i64 2
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.afb, i64 3
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !56
  %i.ahh = zext i8 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !58
  %.sroa.17.60.vec.insert.i = insertelement <4 x i32> %.sroa.17.56.vec.insert.i, i32 %i.ahj, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ahk = uitofp nneg <4 x i32> %.sroa.0.12.vec.insert.i to <4 x float>
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahk, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %12, ptr %i.d, align 16, !tbaa !56
  %i.ahl = sitofp <4 x i32> %.sroa.7.28.vec.insert.i to <4 x float>
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahl, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %13, ptr %i.po, align 16, !tbaa !56
  %14 = sitofp <4 x i32> %.sroa.12.44.vec.insert.i to <4 x float>
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %15, ptr %i.pp, align 16, !tbaa !56
  %16 = sitofp <4 x i32> %.sroa.17.60.vec.insert.i to <4 x float>
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %17, ptr %i.pq, align 16, !tbaa !56
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.aeu ; 4 uses
  %i.ahn = load <4 x i32>, ptr %i.ahm, align 16, !tbaa !56
  %i.aho = and <4 x i32> %i.ahn, <i32 0, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %i.aho, ptr %i.ahm, align 16, !tbaa !56
  %i.ahp = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.aew ; 4 uses
  %i.ahq = load <4 x i32>, ptr %i.ahp, align 16, !tbaa !56
  %i.ahr = and <4 x i32> %i.ahq, <i32 -1, i32 0, i32 -1, i32 -1>
  store <4 x i32> %i.ahr, ptr %i.ahp, align 16, !tbaa !56
  %i.ahs = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.aey ; 4 uses
  %i.aht = load <4 x i32>, ptr %i.ahs, align 16, !tbaa !56
  %i.ahu = and <4 x i32> %i.aht, <i32 -1, i32 -1, i32 0, i32 -1>
  store <4 x i32> %i.ahu, ptr %i.ahs, align 16, !tbaa !56
  %i.ahv = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.afa ; 4 uses
  %i.ahw = load <4 x i32>, ptr %i.ahv, align 16, !tbaa !56
  %i.ahx = and <4 x i32> %i.ahw, <i32 -1, i32 -1, i32 -1, i32 0>
  store <4 x i32> %i.ahx, ptr %i.ahv, align 16, !tbaa !56
  %i.ahy = load <4 x float>, ptr %i.d, align 16, !tbaa !56 ; 2 uses
  %i.ahz = load <4 x float>, ptr %i.po, align 16, !tbaa !56 ; 2 uses
  %i.aia = fmul <4 x float> %i.ahz, %i.ahz
  %i.aib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahy, <4 x float> %i.ahy, <4 x float> %i.aia)
  %i.aic = load <4 x float>, ptr %i.pp, align 16, !tbaa !56 ; 2 uses
  %i.aid = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aic, <4 x float> %i.aic, <4 x float> %i.aib)
  %i.aie = load <4 x float>, ptr %i.pq, align 16, !tbaa !56 ; 2 uses
  %i.aif = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aie, <4 x float> %i.aie, <4 x float> %i.aid)
  %i.aig = fsub <4 x float> splat (float 1.000000e+00), %i.aif ; 2 uses
  %i.aih = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.aig)
  %i.aii = fmul <4 x float> %i.aih, %i.aig
  %i.aij = lshr <4 x i16> %i.aeo, splat (i16 2)
  %.lobit212 = and <4 x i16> %i.aij, splat (i16 1)
  %i.aik = zext nneg <4 x i16> %.lobit212 to <4 x i32>
  %i.ail = shl nuw <4 x i32> %i.aik, splat (i32 31)
  %i.aim = bitcast <4 x float> %i.aii to <4 x i32>
  %i.ain = or <4 x i32> %i.ail, %i.aim            ; 4 uses
  %i.aio = load <4 x i32>, ptr %i.ahm, align 16, !tbaa !56
  %i.aip = and <4 x i32> %i.ain, <i32 -1, i32 0, i32 0, i32 0>
  %i.aiq = or <4 x i32> %i.aip, %i.aio
  store <4 x i32> %i.aiq, ptr %i.ahm, align 16, !tbaa !56
  %i.air = load <4 x i32>, ptr %i.ahp, align 16, !tbaa !56
  %i.ais = and <4 x i32> %i.ain, <i32 0, i32 -1, i32 0, i32 0>
  %i.ait = or <4 x i32> %i.ais, %i.air
  store <4 x i32> %i.ait, ptr %i.ahp, align 16, !tbaa !56
  %i.aiu = load <4 x i32>, ptr %i.ahs, align 16, !tbaa !56
  %i.aiv = and <4 x i32> %i.ain, <i32 0, i32 0, i32 -1, i32 0>
  %i.aiw = or <4 x i32> %i.aiv, %i.aiu
  store <4 x i32> %i.aiw, ptr %i.ahs, align 16, !tbaa !56
  %i.aix = load <4 x i32>, ptr %i.ahv, align 16, !tbaa !56
  %i.aiy = and <4 x i32> %i.ain, <i32 0, i32 0, i32 0, i32 -1>
  %i.aiz = or <4 x i32> %i.aix, %i.aiy
  store <4 x i32> %i.aiz, ptr %i.ahv, align 16, !tbaa !56
  %i.aja = load <4 x float>, ptr %i.d, align 16, !tbaa !56
  store <4 x float> %i.aja, ptr %i.abv, align 16, !tbaa !56
  %i.ajb = load <4 x float>, ptr %i.po, align 16, !tbaa !56
  %18 = getelementptr inbounds nuw i8, ptr %i.abu, i64 112
  store <4 x float> %i.ajb, ptr %18, align 16, !tbaa !56
  %i.ajc = load <4 x float>, ptr %i.pp, align 16, !tbaa !56
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.abu, i64 128
  store <4 x float> %i.ajc, ptr %i.ajd, align 16, !tbaa !56
  %i.aje = load <4 x float>, ptr %i.pq, align 16, !tbaa !56
  %19 = getelementptr inbounds nuw i8, ptr %i.abu, i64 144
  store <4 x float> %i.aje, ptr %19, align 16, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81, %.lr.ph.i63
  %i.ajf = add nuw i64 %.06225.i65, 1
  %i.ajg = lshr i8 %.06126.i64, 1                 ; 2 uses
  %.not.i92 = icmp eq i8 %i.ajg, 0
  br i1 %.not.i92, label %._crit_edge.i93, label %.lr.ph.i63, !llvm.loop !79

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit: ; preds = %._crit_edge.i93
  %.pre194 = load ptr, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert195 = getelementptr inbounds nuw i8, ptr %.pre194, i64 24
  %.pre196 = load ptr, ptr %.phi.trans.insert195, align 8, !tbaa !98
  %.pre197 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit: ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.ajh = phi ptr [ %.pre197, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.oj, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ]
  %i.aji = phi ptr [ %.pre196, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.og, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ]
  %i.ajj = phi ptr [ %.pre194, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.oe, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !47, !noalias !107 ; 17 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajj, i64 192
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !48, !noalias !107
  store ptr %i.ajl, ptr %3, align 8, !alias.scope !107
  %i.ajo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ajn, ptr %i.ajo, align 8, !alias.scope !107
  %i.ajp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajj, i64 200
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !95, !noalias !107 ; 5 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajj, i64 208
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !96, !noalias !107
  store ptr %i.ajr, ptr %i.ajp, align 8, !alias.scope !107
  %i.aju = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ajt, ptr %i.aju, align 8, !alias.scope !107
  %i.ajv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajj, i64 216
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !47, !noalias !107
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajj, i64 224
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !48, !noalias !107
  store ptr %i.ajx, ptr %i.ajv, align 8, !alias.scope !107
  %i.aka = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.ajz, ptr %i.aka, align 8, !alias.scope !107
  %i.akb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajj, i64 232
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !49, !noalias !107
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajj, i64 240
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !50, !noalias !107
  store ptr %i.akd, ptr %i.akb, align 8, !alias.scope !107
  %i.akg = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.akf, ptr %i.akg, align 8, !alias.scope !107
  %i.akh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajj, i64 248
  %i.akj = load float, ptr %i.aki, align 8, !tbaa !97, !noalias !107
  store float %i.akj, ptr %i.akh, align 8, !tbaa !55, !alias.scope !107
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 32
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !99
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ajh, i64 104
  call fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %i.z, float noundef %i.ae, i64 noundef %i.u, ptr %i.aji, i64 %i.akl, ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull align 8 dereferenceable(36) %i.akm)
  %i.akn = load ptr, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !98 ; 8 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akn, i64 288
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !100 ; 8 uses
  %i.aks = load ptr, ptr %i.g, align 8, !tbaa !18 ; 4 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 104
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aks, i64 176 ; 4 uses
  br i1 %.not31.i, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139, label %.lr.ph29.i102

.lr.ph29.i102:                                    ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akn, i64 32
  %i.akw = load i64, ptr %i.akv, align 8, !tbaa !99
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aks, i64 120
  %.not.i.i103 = icmp ugt i64 %i.akw, 255         ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i137, %.lr.ph29.i102
  %.027.i104 = phi i64 [ 0, %.lr.ph29.i102 ], [ %i.alc, %._crit_edge.i137 ] ; 3 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !47
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 %.027.i104 ; 2 uses
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !56 ; 2 uses
  store i8 0, ptr %i.akz, align 1, !tbaa !56
  %.not24.i105 = icmp eq i8 %i.ala, 0
  br i1 %.not24.i105, label %._crit_edge.i137, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.t
  %i.alb = shl nuw i64 %.027.i104, 3
  br label %.lr.ph.i107

._crit_edge.i137:                                 ; preds = %bb.z, %bb.t
  %i.alc = add nuw nsw i64 %.027.i104, 1          ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %i.alc, %i.bu
  br i1 %exitcond.not.i138, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit, label %bb.t, !llvm.loop !72

.lr.ph.i107:                                      ; preds = %bb.z, %.lr.ph.preheader.i106
  %.06126.i108 = phi i8 [ %i.avx, %bb.z ], [ %i.ala, %.lr.ph.preheader.i106 ] ; 2 uses
  %.06225.i109 = phi i64 [ %i.avw, %bb.z ], [ %i.alb, %.lr.ph.preheader.i106 ] ; 6 uses
  %i.ald = and i8 %.06126.i108, 1
  %.not64.i110 = icmp eq i8 %i.ald, 0
  br i1 %.not64.i110, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i107
  %i.ale = load ptr, ptr %i.akt, align 8, !tbaa !49
  %.idx.i111 = shl i64 %.06225.i109, 4
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 %.idx.i111 ; 5 uses
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !58 ; 2 uses
  %i.alh = zext i32 %i.alg to i64
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.alh
  %i.alj = load i16, ptr %i.ali, align 2, !tbaa !60
  %i.alk = zext i16 %i.alj to i32
  %i.all = sub i32 %i.alg, %i.alk
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alf, i64 4 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !58 ; 2 uses
  %i.alo = zext i32 %i.aln to i64
  %i.alp = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.alo
  %i.alq = load i16, ptr %i.alp, align 2, !tbaa !60
  %i.alr = zext i16 %i.alq to i32
  %i.als = sub i32 %i.aln, %i.alr
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alf, i64 8 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !58 ; 2 uses
  %i.alv = zext i32 %i.alu to i64
  %i.alw = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.alv
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !60
  %i.aly = zext i16 %i.alx to i32
  %i.alz = sub i32 %i.alu, %i.aly
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alf, i64 12 ; 2 uses
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !58 ; 2 uses
  %i.amc = zext i32 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.amc
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !60
  %i.amf = zext i16 %i.ame to i32
  %i.amg = sub i32 %i.amb, %i.amf
  %i.amh = zext i32 %i.all to i64                 ; 3 uses
  %i.ami = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.amh ; 3 uses
  %i.amj = zext i32 %i.als to i64                 ; 3 uses
  %i.amk = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.amj ; 3 uses
  %i.aml = zext i32 %i.alz to i64                 ; 3 uses
  %i.amm = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.aml ; 3 uses
  %i.amn = zext i32 %i.amg to i64                 ; 3 uses
  %i.amo = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.amn ; 3 uses
  br i1 %.not.i.i103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.amh
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !56
  %i.amr = zext i8 %i.amq to i64
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.amj
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !56
  %i.amu = zext i8 %i.amt to i64
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.aml
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !56
  %i.amx = zext i8 %i.amw to i64
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.amn
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !56
  %i.ana = zext i8 %i.amz to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113

bb.w:                                             ; preds = %bb.u
  %i.anb = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.amh
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !60
  %i.and = zext i16 %i.anc to i64
  %i.ane = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.amj
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !60
  %i.ang = zext i16 %i.anf to i64
  %i.anh = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.aml
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !60
  %i.anj = zext i16 %i.ani to i64
  %i.ank = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.amn
  %i.anl = load i16, ptr %i.ank, align 2, !tbaa !60
  %i.anm = zext i16 %i.anl to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113: ; preds = %bb.w, %bb.v
  %.sink20.i.i114 = phi i64 [ %i.anm, %bb.w ], [ %i.ana, %bb.v ]
  %.pn.i.i115 = phi i64 [ %i.and, %bb.w ], [ %i.amr, %bb.v ]
  %.pn21.i.i116 = phi i64 [ %i.ang, %bb.w ], [ %i.amu, %bb.v ]
  %.pn22.i.i117 = phi i64 [ %i.anj, %bb.w ], [ %i.amx, %bb.v ]
  %.sink17.in.i.i118 = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.pn22.i.i117
  %.sink17.i.i119 = load float, ptr %.sink17.in.i.i118, align 4, !tbaa !61
  %.sink18.in.i.i120 = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.pn21.i.i116
  %.sink18.i.i121 = load float, ptr %.sink18.in.i.i120, align 4, !tbaa !61
  %.sink19.in.i.i122 = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.pn.i.i115
  %.sink19.i.i123 = load float, ptr %.sink19.in.i.i122, align 4, !tbaa !61
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.sink20.i.i114
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !61
  %i.anp = insertelement <4 x float> poison, float %.sink19.i.i123, i64 0
  %i.anq = insertelement <4 x float> %i.anp, float %.sink18.i.i121, i64 1
  %i.anr = insertelement <4 x float> %i.anq, float %.sink17.i.i119, i64 2
  %i.ans = insertelement <4 x float> %i.anr, float %i.ano, i64 3
  %i.ant = load ptr, ptr %i.aku, align 8, !tbaa !62
  %i.anu = getelementptr inbounds nuw [128 x i8], ptr %i.ant, i64 %.06225.i109
  store <4 x float> %i.ans, ptr %i.anu, align 16, !tbaa !56
  %i.anv = load ptr, ptr %i.aku, align 8, !tbaa !62
  %i.anw = getelementptr inbounds nuw [128 x i8], ptr %i.anv, i64 %.06225.i109 ; 3 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 32
  %i.any = load i16, ptr %i.ami, align 2, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation11SamplingJob3RunEv:bb.a
  %i.aqn = and <4 x i32> %i.aqm, splat (i32 32767) ; 2 uses
  %i.aqo = shl nuw nsw <4 x i32> %i.aqn, splat (i32 13)
  %i.aqp = bitcast <4 x i32> %i.aqo to <4 x float>
  %i.aqq = fmul nnan <4 x float> %i.aqp, splat (float f0x77800000)
  %i.aqr = icmp samesign ugt <4 x i32> %i.aqn, splat (i32 31743)
  %i.aqs = and <4 x i32> %i.aqm, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.aqt = shl nuw <4 x i32> %i.aqs, splat (i32 16)
  %i.aqu = select <4 x i1> %i.aqr, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.aqv = or disjoint <4 x i32> %i.aqu, %i.aqt
  %i.aqw = bitcast <4 x float> %i.aqq to <4 x i32>
  %i.aqx = or <4 x i32> %i.aqv, %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.anw, i64 64
  store <4 x i32> %i.aqx, ptr %i.aqy, align 16, !tbaa !56
  %i.aqz = load i32, ptr %i.alf, align 4, !tbaa !58
  %i.ara = zext i32 %i.aqz to i64                 ; 3 uses
  %i.arb = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.ara ; 3 uses
  %i.arc = load i32, ptr %i.alm, align 4, !tbaa !58
  %i.ard = zext i32 %i.arc to i64                 ; 3 uses
  %i.are = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.ard ; 3 uses
  %i.arf = load i32, ptr %i.alt, align 4, !tbaa !58
  %i.arg = zext i32 %i.arf to i64                 ; 3 uses
  %i.arh = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.arg ; 3 uses
  %i.ari = load i32, ptr %i.ama, align 4, !tbaa !58
  %i.arj = zext i32 %i.ari to i64                 ; 3 uses
  %i.ark = getelementptr inbounds nuw [6 x i8], ptr %i.akr, i64 %i.arj ; 3 uses
  br i1 %.not.i.i103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.ara
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !56
  %i.arn = zext i8 %i.arm to i64
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.ard
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !56
  %i.arq = zext i8 %i.arp to i64
  %i.arr = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.arg
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !56
  %i.art = zext i8 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.arj
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !56
  %i.arw = zext i8 %i.arv to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125

bb.y:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113
  %i.arx = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.ara
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !60
  %i.arz = zext i16 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.ard
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !60
  %i.asc = zext i16 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.arg
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !60
  %i.asf = zext i16 %i.ase to i64
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr %i.ajl, i64 %i.arj
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !60
  %i.asi = zext i16 %i.ash to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125: ; preds = %bb.y, %bb.x
  %.sink20.i77.i126 = phi i64 [ %i.asi, %bb.y ], [ %i.arw, %bb.x ]
  %.pn.i78.i127 = phi i64 [ %i.arz, %bb.y ], [ %i.arn, %bb.x ]
  %.pn21.i79.i128 = phi i64 [ %i.asc, %bb.y ], [ %i.arq, %bb.x ]
  %.pn22.i80.i129 = phi i64 [ %i.asf, %bb.y ], [ %i.art, %bb.x ]
  %.sink17.in.i81.i130 = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.pn22.i80.i129
  %.sink17.i82.i131 = load float, ptr %.sink17.in.i81.i130, align 4, !tbaa !61
  %.sink18.in.i83.i132 = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.pn21.i79.i128
  %.sink18.i84.i133 = load float, ptr %.sink18.in.i83.i132, align 4, !tbaa !61
  %.sink19.in.i85.i134 = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.pn.i78.i127
  %.sink19.i86.i135 = load float, ptr %.sink19.in.i85.i134, align 4, !tbaa !61
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %.sink20.i77.i126
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !61
  %i.asl = insertelement <4 x float> poison, float %.sink19.i86.i135, i64 0
  %i.asm = insertelement <4 x float> %i.asl, float %.sink18.i84.i133, i64 1
  %i.asn = insertelement <4 x float> %i.asm, float %.sink17.i82.i131, i64 2
  %i.aso = insertelement <4 x float> %i.asn, float %i.ask, i64 3
  %i.asp = load ptr, ptr %i.aku, align 8, !tbaa !62
  %i.asq = getelementptr inbounds nuw [128 x i8], ptr %i.asp, i64 %.06225.i109
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  store <4 x float> %i.aso, ptr %i.asr, align 16, !tbaa !56
  %i.ass = load ptr, ptr %i.aku, align 8, !tbaa !62
  %i.ast = getelementptr inbounds nuw [128 x i8], ptr %i.ass, i64 %.06225.i109 ; 3 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 80
  %i.asv = load i16, ptr %i.arb, align 2, !tbaa !60
  %i.asw = zext i16 %i.asv to i32
  %i.asx = load i16, ptr %i.are, align 2, !tbaa !60
  %i.asy = zext i16 %i.asx to i32
  %i.asz = load i16, ptr %i.arh, align 2, !tbaa !60
  %i.ata = zext i16 %i.asz to i32
  %i.atb = load i16, ptr %i.ark, align 2, !tbaa !60
  %i.atc = zext i16 %i.atb to i32
  %i.atd = insertelement <4 x i32> poison, i32 %i.asw, i64 0
  %i.ate = insertelement <4 x i32> %i.atd, i32 %i.asy, i64 1
  %i.atf = insertelement <4 x i32> %i.ate, i32 %i.ata, i64 2
  %i.atg = insertelement <4 x i32> %i.atf, i32 %i.atc, i64 3 ; 2 uses
  %i.ath = and <4 x i32> %i.atg, splat (i32 32767) ; 2 uses
  %i.ati = shl nuw nsw <4 x i32> %i.ath, splat (i32 13)
  %i.atj = bitcast <4 x i32> %i.ati to <4 x float>
  %i.atk = fmul nnan <4 x float> %i.atj, splat (float f0x77800000)
  %i.atl = icmp samesign ugt <4 x i32> %i.ath, splat (i32 31743)
  %i.atm = and <4 x i32> %i.atg, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.atn = shl nuw <4 x i32> %i.atm, splat (i32 16)
  %i.ato = select <4 x i1> %i.atl, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.atp = or disjoint <4 x i32> %i.ato, %i.atn
  %i.atq = bitcast <4 x float> %i.atk to <4 x i32>
  %i.atr = or <4 x i32> %i.atp, %i.atq
  store <4 x i32> %i.atr, ptr %i.asu, align 16, !tbaa !56
  %i.ats = getelementptr inbounds nuw i8, ptr %i.arb, i64 2
  %i.att = load i16, ptr %i.ats, align 2, !tbaa !60
  %i.atu = zext i16 %i.att to i32
  %i.atv = getelementptr inbounds nuw i8, ptr %i.are, i64 2
  %i.atw = load i16, ptr %i.atv, align 2, !tbaa !60
  %i.atx = zext i16 %i.atw to i32
  %i.aty = getelementptr inbounds nuw i8, ptr %i.arh, i64 2
  %i.atz = load i16, ptr %i.aty, align 2, !tbaa !60
  %i.aua = zext i16 %i.atz to i32
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ark, i64 2
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !60
  %i.aud = zext i16 %i.auc to i32
  %i.aue = insertelement <4 x i32> poison, i32 %i.atu, i64 0
  %i.auf = insertelement <4 x i32> %i.aue, i32 %i.atx, i64 1
  %i.aug = insertelement <4 x i32> %i.auf, i32 %i.aua, i64 2
  %i.auh = insertelement <4 x i32> %i.aug, i32 %i.aud, i64 3 ; 2 uses
  %i.aui = and <4 x i32> %i.auh, splat (i32 32767) ; 2 uses
  %i.auj = shl nuw nsw <4 x i32> %i.aui, splat (i32 13)
  %i.auk = bitcast <4 x i32> %i.auj to <4 x float>
  %i.aul = fmul nnan <4 x float> %i.auk, splat (float f0x77800000)
  %i.aum = icmp samesign ugt <4 x i32> %i.aui, splat (i32 31743)
  %i.aun = and <4 x i32> %i.auh, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.auo = shl nuw <4 x i32> %i.aun, splat (i32 16)
  %i.aup = select <4 x i1> %i.aum, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.auq = or disjoint <4 x i32> %i.aup, %i.auo
  %i.aur = bitcast <4 x float> %i.aul to <4 x i32>
  %i.aus = or <4 x i32> %i.auq, %i.aur
  %i.aut = getelementptr inbounds nuw i8, ptr %i.ast, i64 96
  store <4 x i32> %i.aus, ptr %i.aut, align 16, !tbaa !56
  %i.auu = getelementptr inbounds nuw i8, ptr %i.arb, i64 4
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !60
  %i.auw = zext i16 %i.auv to i32
  %i.aux = getelementptr inbounds nuw i8, ptr %i.are, i64 4
  %i.auy = load i16, ptr %i.aux, align 2, !tbaa !60
  %i.auz = zext i16 %i.auy to i32
  %i.ava = getelementptr inbounds nuw i8, ptr %i.arh, i64 4
  %i.avb = load i16, ptr %i.ava, align 2, !tbaa !60
  %i.avc = zext i16 %i.avb to i32
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ark, i64 4
  %i.ave = load i16, ptr %i.avd, align 2, !tbaa !60
  %i.avf = zext i16 %i.ave to i32
  %i.avg = insertelement <4 x i32> poison, i32 %i.auw, i64 0
  %i.avh = insertelement <4 x i32> %i.avg, i32 %i.auz, i64 1
  %i.avi = insertelement <4 x i32> %i.avh, i32 %i.avc, i64 2
  %i.avj = insertelement <4 x i32> %i.avi, i32 %i.avf, i64 3 ; 2 uses
  %i.avk = and <4 x i32> %i.avj, splat (i32 32767) ; 2 uses
  %i.avl = shl nuw nsw <4 x i32> %i.avk, splat (i32 13)
  %i.avm = bitcast <4 x i32> %i.avl to <4 x float>
  %i.avn = fmul nnan <4 x float> %i.avm, splat (float f0x77800000)
  %i.avo = icmp samesign ugt <4 x i32> %i.avk, splat (i32 31743)
  %i.avp = and <4 x i32> %i.avj, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.avq = shl nuw <4 x i32> %i.avp, splat (i32 16)
  %i.avr = select <4 x i1> %i.avo, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.avs = or disjoint <4 x i32> %i.avr, %i.avq
  %i.avt = bitcast <4 x float> %i.avn to <4 x i32>
  %i.avu = or <4 x i32> %i.avs, %i.avt
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ast, i64 112
  store <4 x i32> %i.avu, ptr %i.avv, align 16, !tbaa !56
  br label %bb.z

bb.z:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125, %.lr.ph.i107
  %i.avw = add nuw i64 %.06225.i109, 1
  %i.avx = lshr i8 %.06126.i108, 1                ; 2 uses
  %.not.i136 = icmp eq i8 %i.avx, 0
  br i1 %.not.i136, label %._crit_edge.i137, label %.lr.ph.i107, !llvm.loop !73

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit: ; preds = %._crit_edge.i137
  %.pre198 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139: ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.avy = phi ptr [ %.pre198, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit ], [ %i.aks, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ] ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.awa = load i64, ptr %i.i, align 8, !tbaa !19
  %i.awb = tail call noundef i64 @llvm.umin.i64(i64 %i.awa, i64 %i.u) ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avy, i64 144
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !62
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avy, i64 160
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !63
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avy, i64 176
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !62
  %i.awi = insertelement <4 x float> poison, float %i.z, i64 0
  %i.awj = shufflevector <4 x float> %i.awi, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not.i144 = icmp eq i64 %i.awb, 0
  br i1 %.not.i144, label %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139, %.lr.ph.i145
  %.011.i = phi i64 [ %i.bai, %.lr.ph.i145 ], [ 0, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139 ] ; 7 uses
  %i.awk = getelementptr inbounds nuw [128 x i8], ptr %i.awd, i64 %.011.i ; 8 uses
  %i.awl = load <4 x float>, ptr %i.awk, align 16, !tbaa !56 ; 2 uses
  %i.awm = fsub <4 x float> %i.awj, %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awo = load <4 x float>, ptr %i.awn, align 16, !tbaa !56
  %i.awp = fsub <4 x float> %i.awo, %i.awl
  %i.awq = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.awp)
  %i.awr = fmul <4 x float> %i.awm, %i.awq        ; 3 uses
  %i.aws = getelementptr inbounds nuw [160 x i8], ptr %i.awf, i64 %.011.i ; 10 uses
  %i.awt = load <4 x float>, ptr %i.aws, align 16, !tbaa !56 ; 2 uses
  %i.awu = fsub <4 x float> %i.awj, %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 16
  %i.aww = load <4 x float>, ptr %i.awv, align 16, !tbaa !56
  %i.awx = fsub <4 x float> %i.aww, %i.awt
  %i.awy = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.awx)
  %i.awz = fmul <4 x float> %i.awu, %i.awy        ; 4 uses
  %i.axa = getelementptr inbounds nuw [128 x i8], ptr %i.awh, i64 %.011.i ; 8 uses
  %i.axb = load <4 x float>, ptr %i.axa, align 16, !tbaa !56 ; 2 uses
  %i.axc = fsub <4 x float> %i.awj, %i.axb
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axa, i64 16
  %i.axe = load <4 x float>, ptr %i.axd, align 16, !tbaa !56
  %i.axf = fsub <4 x float> %i.axe, %i.axb
  %i.axg = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.axf)
  %i.axh = fmul <4 x float> %i.axc, %i.axg        ; 3 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awk, i64 32
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awk, i64 80
  %i.axk = load <4 x float>, ptr %i.axj, align 16, !tbaa !56, !noalias !108
  %i.axl = load <4 x float>, ptr %i.axi, align 16, !tbaa !56, !noalias !108 ; 2 uses
  %i.axm = fsub <4 x float> %i.axk, %i.axl
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.axm, <4 x float> %i.awr, <4 x float> %i.axl)
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awk, i64 96
  %i.axo = load <4 x float>, ptr %i.axn, align 16, !tbaa !56, !noalias !108
  %i.axp = getelementptr inbounds nuw i8, ptr %i.awk, i64 48
  %i.axq = load <4 x float>, ptr %i.axp, align 16, !tbaa !56, !noalias !108 ; 2 uses
  %i.axr = fsub <4 x float> %i.axo, %i.axq
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.axr, <4 x float> %i.awr, <4 x float> %i.axq)
  %i.axs = getelementptr inbounds nuw i8, ptr %i.awk, i64 112
  %i.axt = load <4 x float>, ptr %i.axs, align 16, !tbaa !56, !noalias !108
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awk, i64 64
  %i.axv = load <4 x float>, ptr %i.axu, align 16, !tbaa !56, !noalias !108 ; 2 uses
  %i.axw = fsub <4 x float> %i.axt, %i.axv
  %i.axx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.axw, <4 x float> %i.awr, <4 x float> %i.axv)
  %i.axy = load ptr, ptr %i.avz, align 8, !tbaa !109
  %i.axz = getelementptr inbounds nuw [160 x i8], ptr %i.axy, i64 %.011.i ; 3 uses
  store <4 x float> %20, ptr %i.axz, align 16, !tbaa !56
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.axz, i64 16
  store <4 x float> %21, ptr %.sroa.49.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.axz, i64 32
  store <4 x float> %i.axx, ptr %.sroa.510.0..sroa_idx.i, align 16, !tbaa !56
  %i.aya = getelementptr inbounds nuw i8, ptr %i.aws, i64 32
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aws, i64 96
  %i.ayc = load <4 x float>, ptr %i.ayb, align 16, !tbaa !56, !noalias !110
  %i.ayd = load <4 x float>, ptr %i.aya, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.aye = fsub <4 x float> %i.ayc, %i.ayd
  %i.ayf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aye, <4 x float> %i.awz, <4 x float> %i.ayd) ; 3 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aws, i64 112
  %i.ayh = load <4 x float>, ptr %i.ayg, align 16, !tbaa !56, !noalias !110
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.aws, i64 48
  %i.ayj = load <4 x float>, ptr %i.ayi, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.ayk = fsub <4 x float> %i.ayh, %i.ayj
  %i.ayl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayk, <4 x float> %i.awz, <4 x float> %i.ayj) ; 3 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.aws, i64 128
  %i.ayn = load <4 x float>, ptr %i.aym, align 16, !tbaa !56, !noalias !110
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aws, i64 64
  %i.ayp = load <4 x float>, ptr %i.ayo, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.ayq = fsub <4 x float> %i.ayn, %i.ayp
  %i.ayr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayq, <4 x float> %i.awz, <4 x float> %i.ayp) ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.aws, i64 144
  %i.ayt = load <4 x float>, ptr %i.ays, align 16, !tbaa !56, !noalias !110
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.aws, i64 80
  %i.ayv = load <4 x float>, ptr %i.ayu, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.ayw = fsub <4 x float> %i.ayt, %i.ayv
  %i.ayx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayw, <4 x float> %i.awz, <4 x float> %i.ayv) ; 3 uses
  %i.ayy = fmul <4 x float> %i.ayl, %i.ayl
  %i.ayz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayf, <4 x float> %i.ayf, <4 x float> %i.ayy)
  %i.aza = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayr, <4 x float> %i.ayr, <4 x float> %i.ayz)
  %i.azb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayx, <4 x float> %i.ayx, <4 x float> %i.aza) ; 2 uses
  %i.azc = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.azb) ; 3 uses
  %i.azd = fmul <4 x float> %i.azc, splat (float 5.000000e-01)
  %i.aze = fmul <4 x float> %i.azc, %i.azb
  %i.azf = fmul <4 x float> %i.azc, %i.aze
  %i.azg = fsub <4 x float> splat (float 3.000000e+00), %i.azf
  %i.azh = fmul <4 x float> %i.azd, %i.azg        ; 4 uses
  %i.azi = fmul <4 x float> %i.ayf, %i.azh
  %i.azj = fmul <4 x float> %i.ayl, %i.azh
  %i.azk = fmul <4 x float> %i.ayr, %i.azh
  %i.azl = fmul <4 x float> %i.ayx, %i.azh
  %i.azm = load ptr, ptr %i.avz, align 8, !tbaa !109
  %i.azn = getelementptr inbounds nuw [160 x i8], ptr %i.azm, i64 %.011.i ; 4 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 48
  store <4 x float> %i.azi, ptr %i.azo, align 16, !tbaa !56
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azn, i64 64
  store <4 x float> %i.azj, ptr %.sroa.46.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azn, i64 80
  store <4 x float> %i.azk, ptr %.sroa.57.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azn, i64 96
  store <4 x float> %i.azl, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !56
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axa, i64 32
  %i.azq = getelementptr inbounds nuw i8, ptr %i.axa, i64 80
  %i.azr = load <4 x float>, ptr %i.azq, align 16, !tbaa !56, !noalias !111
  %i.azs = load <4 x float>, ptr %i.azp, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.azt = fsub <4 x float> %i.azr, %i.azs
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azt, <4 x float> %i.axh, <4 x float> %i.azs)
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axa, i64 96
  %i.azv = load <4 x float>, ptr %i.azu, align 16, !tbaa !56, !noalias !111
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axa, i64 48
  %i.azx = load <4 x float>, ptr %i.azw, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.azy = fsub <4 x float> %i.azv, %i.azx
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azy, <4 x float> %i.axh, <4 x float> %i.azx)
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axa, i64 112
  %i.baa = load <4 x float>, ptr %i.azz, align 16, !tbaa !56, !noalias !111
  %i.bab = getelementptr inbounds nuw i8, ptr %i.axa, i64 64
  %i.bac = load <4 x float>, ptr %i.bab, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.bad = fsub <4 x float> %i.baa, %i.bac
  %i.bae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bad, <4 x float> %i.axh, <4 x float> %i.bac)
  %i.baf = load ptr, ptr %i.avz, align 8, !tbaa !109
  %i.bag = getelementptr inbounds nuw [160 x i8], ptr %i.baf, i64 %.011.i ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 112
  store <4 x float> %22, ptr %i.bah, align 16, !tbaa !56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bag, i64 128
  store <4 x float> %23, ptr %.sroa.4.0..sroa_idx.i, align 16, !tbaa !56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bag, i64 144
  store <4 x float> %i.bae, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !56
  %i.bai = add nuw i64 %.011.i, 1                 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.bai, %i.awb
  br i1 %exitcond.not.i146, label %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, label %.lr.ph.i145, !llvm.loop !90

_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit: ; preds = %.lr.ph.i145, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit.thread

_ZNK3ozz9animation11SamplingJob8ValidateEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, %bb.c, %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit
  %.0.i191 = phi i1 [ false, %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit ], [ true, %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  store ptr %1, ptr %0, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.e = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.f, align 8, !tbaa !43
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %0, float noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"struct.ozz::span.9", align 8      ; 5 uses
  %6 = alloca %"struct.ozz::span.3", align 8      ; 6 uses
  %.tr = trunc nsw i64 %2 to i32                  ; 2 uses
  %i.a = shl i32 %.tr, 2                          ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124  ; 4 uses
  %i.h = fsub float %0, %1                        ; 2 uses
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = load float, ptr %i.k, align 8, !tbaa !55
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fcmp ogt float %i.j, %i.m
  br i1 %i.n, label %bb.c, label %.thread3

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !125
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp olt float %i.h, 0.000000e+00
  %or.cond = or i1 %i.s, %i.i
  br i1 %or.cond, label %.thread5, label %.thread3

.thread5:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = zext i32 %i.a to i64
  %i.u = load ptr, ptr %4, align 8, !tbaa !49
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !55
  %i.x = fdiv float %0, %i.w
  %i.y = fadd float %i.x, 5.000000e-01
  %i.z = fptosi float %i.y to i32                 ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.f, label %.thread3

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ab = zext i32 %i.a to i64                    ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  store ptr %i.ac, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nuw i32 %i.z, 1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !58
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store ptr %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ar, align 8
  %i.as = call { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.af
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58
  %i.ax = add i32 %i.aw, 1
  br label %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit

bb.h:                                             ; preds = %.thread5, %bb.f
  %i.ay = phi ptr [ %i.u, %.thread5 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.az = phi i64 [ %i.t, %.thread5 ], [ %i.ab, %bb.f ] ; 8 uses
  %.not24.i = icmp eq i32 %i.a, 0
  br i1 %.not24.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp samesign ult i64 %i.az, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.az, 24
  %n.vec = and i64 %i.az, 4294967264              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op57 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op59 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bb = add <8 x i32> %broadcast.splat, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass58 = add <8 x i32> %vec.ind, %invariant.op57
  %.reass60 = add <8 x i32> %vec.ind, %invariant.op59
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <8 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !58
  store <8 x i32> %.reass, ptr %i.bd, align 4, !tbaa !58
  store <8 x i32> %.reass58, ptr %i.be, align 4, !tbaa !58
  store <8 x i32> %.reass60, ptr %i.bf, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec37 = and i64 %i.az, 4294967288            ; 3 uses
  %broadcast.splatinsert38 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bh = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert40 = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat41 = shufflevector <8 x i32> %broadcast.splatinsert40, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat41, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3ozz9animation11SamplingJob7ContextC2Ei:bb.a
  tail call void @_ZN3ozz9animation11SamplingJob7Context6ResizeEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7Context6ResizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((0, 16), (24, 60), (64, 100), (104, 140), (144, 192)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  %i.e = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.g), !inline_history !67
  store ptr null, ptr %i.f, align 8, !tbaa !64
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.l = add nuw nsw i32 %i.k, 3
  %i.m = lshr i32 %i.l, 2                         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !41
  %i.o = zext nneg i32 %i.m to i64                ; 10 uses
  %i.p = add nuw nsw i64 %i.o, 7
  %i.q = lshr i64 %i.p, 3                         ; 7 uses
  %i.r = mul nuw nsw i64 %i.o, 464
  %i.s = mul nuw nsw i64 %i.q, 3
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t, i64 noundef 16) ; 4 uses
  store ptr %i.y, ptr %i.f, align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32

_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32: ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %i.o, 7               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.o, ptr %i.ab, align 8, !tbaa !134
  %.idx.i21 = mul nuw nsw i64 %i.o, 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i ; 2 uses
  %.idx.i34 = shl nuw nsw i64 %i.o, 4             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i34 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i34
  br label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52

_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.ak, align 8, !tbaa !63
  br label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52

_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52: ; preds = %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32
  %.sink153 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ac, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sink152 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ae, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sink = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.af, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sroa.086.5 = phi ptr [ %i.y, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ah, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ] ; 2 uses
  %.sroa.04.0.i49 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ag, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %i.al = shl nuw nsw i64 %i.o, 2                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.o, ptr %i.am, align 8, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sink153, ptr %i.an, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.o, ptr %i.ao, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink152, ptr %i.ap, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.al, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.04.0.i49, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.al, ptr %i.au, align 8, !tbaa !50
  %.not.i53 = icmp eq i64 %i.q, 0                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.086.5, i64 %i.q ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.q
  %.sroa.086.5.sink = select i1 %.not.i53, ptr null, ptr %.sroa.086.5
  %.sink154 = select i1 %.not.i53, ptr null, ptr %i.av
  %.sroa.04.0.i66 = select i1 %.not.i53, ptr null, ptr %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.086.5.sink, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.q, ptr %i.ay, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink154, ptr %i.az, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.q, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.04.0.i66, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.q, ptr %i.bc, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7ContextD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c, !inline_history !67

bb.b:                                             ; preds = %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7Context10DeallocateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !64
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN3ozz9animation9AnimationE", !10, i64 0}
!12 = !{!"p1 _ZTSN3ozz9animation11SamplingJob7ContextE", !10, i64 0}
!13 = !{!"p1 _ZTSN3ozz4math12SoaTransformE", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN3ozz4spanINS_4math12SoaTransformEEE", !13, i64 0, !14, i64 8}
!16 = !{!"_ZTSN3ozz9animation11SamplingJobE", !9, i64 0, !11, i64 8, !12, i64 16, !15, i64 24}
!17 = !{!16, !11, i64 8}
!18 = !{!16, !12, i64 16}
!19 = !{!15, !14, i64 8}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 float", !10, i64 0}
!22 = !{!"_ZTSN3ozz4spanIfEE", !21, i64 0, !14, i64 8}
!23 = !{!"_ZTSN3ozz4spanIhEE", !20, i64 0, !14, i64 8}
!24 = !{!"p1 short", !10, i64 0}
!25 = !{!"_ZTSN3ozz4spanItEE", !24, i64 0, !14, i64 8}
!26 = !{!"p1 int", !10, i64 0}
!27 = !{!"_ZTSN3ozz4spanIjEE", !26, i64 0, !14, i64 8}
!28 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb0EEE", !23, i64 0, !25, i64 16, !23, i64 32, !27, i64 48, !9, i64 64}
!29 = !{!"p1 _ZTSN3ozz9animation8internal9Float3KeyE", !10, i64 0}
!30 = !{!"_ZTSN3ozz4spanINS_9animation8internal9Float3KeyEEE", !29, i64 0, !14, i64 8}
!31 = !{!"p1 _ZTSN3ozz9animation8internal13QuaternionKeyE", !10, i64 0}
!32 = !{!"_ZTSN3ozz4spanINS_9animation8internal13QuaternionKeyEEE", !31, i64 0, !14, i64 8}
!33 = !{!"_ZTSN3ozz9animation9AnimationE", !9, i64 0, !6, i64 4, !10, i64 8, !20, i64 16, !22, i64 24, !28, i64 40, !28, i64 112, !28, i64 184, !30, i64 256, !32, i64 272, !30, i64 288}
!34 = !{!33, !6, i64 4}
!35 = !{!"_ZTSN3ozz9animation11SamplingJob7Context5CacheE", !27, i64 0, !23, i64 16, !6, i64 32}
!36 = !{!"p1 _ZTSN3ozz9animation8internal15InterpSoaFloat3E", !10, i64 0}
!37 = !{!"_ZTSN3ozz4spanINS_9animation8internal15InterpSoaFloat3EEE", !36, i64 0, !14, i64 8}
!38 = !{!"p1 _ZTSN3ozz9animation8internal19InterpSoaQuaternionE", !10, i64 0}
!39 = !{!"_ZTSN3ozz4spanINS_9animation8internal19InterpSoaQuaternionEEE", !38, i64 0, !14, i64 8}
!40 = !{!"_ZTSN3ozz9animation11SamplingJob7ContextE", !11, i64 0, !9, i64 8, !6, i64 12, !10, i64 16, !35, i64 24, !35, i64 64, !35, i64 104, !37, i64 144, !39, i64 160, !37, i64 176}
!41 = !{!40, !6, i64 12}
!42 = !{!40, !11, i64 0}
!43 = !{!40, !9, i64 8}
!44 = !{!40, !6, i64 56}
!45 = !{!40, !6, i64 96}
!46 = !{!40, !6, i64 136}
!47 = !{!23, !20, i64 0}
!48 = !{!23, !14, i64 8}
!49 = !{!27, !26, i64 0}
!50 = !{!27, !14, i64 8}
!51 = !{!"_ZTSN3ozz4spanIKhEE", !20, i64 0, !14, i64 8}
!52 = !{!"_ZTSN3ozz4spanIKtEE", !24, i64 0, !14, i64 8}
!53 = !{!"_ZTSN3ozz4spanIKjEE", !26, i64 0, !14, i64 8}
!54 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb1EEE", !51, i64 0, !52, i64 16, !51, i64 32, !53, i64 48, !9, i64 64}
!55 = !{!54, !9, i64 64}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!6, !6, i64 0}
!59 = !{!"short", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!9, !9, i64 0}
!62 = !{!37, !36, i64 0}
!63 = !{!39, !38, i64 0}
!64 = !{!40, !10, i64 16}
!65 = !{!"vtable pointer", !4, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{ptr @_ZN3ozz9animation11SamplingJob7Context10DeallocateEv}
!68 = distinct !{!68, i1 false, !"_ZNK3ozz9animation9Animation17translations_ctrlEv"}
!69 = distinct !{!69, !68, !"_ZNK3ozz9animation9Animation17translations_ctrlEv: argument 0"}
!70 = distinct !{!70, i1 false, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!71 = distinct !{!71, !70, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, i1 false, !"_ZNK3ozz9animation9Animation14rotations_ctrlEv"}
!75 = distinct !{!75, !74, !"_ZNK3ozz9animation9Animation14rotations_ctrlEv: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!77 = distinct !{!77, !76, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !57}
!80 = distinct !{!80, i1 false, !"_ZNK3ozz9animation9Animation11scales_ctrlEv"}
!81 = distinct !{!81, !80, !"_ZNK3ozz9animation9Animation11scales_ctrlEv: argument 0"}
!82 = distinct !{!82, i1 false, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!83 = distinct !{!83, !82, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!84 = distinct !{!84, i1 false, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f"}
!85 = distinct !{!85, !84, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f: argument 0"}
!86 = distinct !{!86, i1 false, !"_ZN3ozz4math8NLerpEstERKNS0_13SoaQuaternionES3_Dv4_f"}
!87 = distinct !{!87, !86, !"_ZN3ozz4math8NLerpEstERKNS0_13SoaQuaternionES3_Dv4_f: argument 0"}
!88 = distinct !{!88, i1 false, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f"}
!89 = distinct !{!89, !88, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f: argument 0"}
!90 = distinct !{!90, !57}
!91 = !{!16, !9, i64 0}
!92 = !{!69}
!93 = !{!71}
!94 = !{!71, !69}
!95 = !{!25, !24, i64 0}
!96 = !{!25, !14, i64 8}
!97 = !{!28, !9, i64 64}
!98 = !{!22, !21, i64 0}
!99 = !{!22, !14, i64 8}
!100 = !{!30, !29, i64 0}
!101 = !{!75}
!102 = !{!77}
!103 = !{!77, !75}
!104 = !{!32, !31, i64 0}
!105 = !{!81}
!106 = !{!83}
!107 = !{!83, !81}
!108 = !{!85}
!109 = !{!15, !13, i64 0}
!110 = !{!87}
!111 = !{!89}
!112 = distinct !{!112, !57, !129, !130}
!113 = distinct !{!113, !57, !129, !130}
!114 = distinct !{!114, !57, !130, !129}
!115 = distinct !{!115, !57}
!116 = distinct !{!116, !132}
!117 = distinct !{!117, !57}
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = distinct !{!122, !57}
!123 = !{!52, !14, i64 8}
!124 = !{!35, !6, i64 32}
!125 = !{!53, !14, i64 8}
!126 = !{!53, !26, i64 0}
!127 = !{!51, !14, i64 8}
!128 = !{!51, !20, i64 0}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!"branch_weights", i32 8, i32 24}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!52, !24, i64 0}
!134 = !{!37, !14, i64 8}
!135 = !{!39, !14, i64 8}
end_hunk_2
