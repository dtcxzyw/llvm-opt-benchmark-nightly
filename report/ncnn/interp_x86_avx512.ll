Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512?download=true
inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnn17Interp_x86_avx512D0Ev:bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZN4ncnn6InterpD2Ev.exit

_ZN4ncnn6InterpD2Ev.exit:                         ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(272) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #24
  ret void
}

declare noundef i32 @_ZN4ncnn6Interp10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 13 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 14 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca float, align 4                    ; 4 uses
  %i.m = alloca float, align 4                    ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 7 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !23     ; 30 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !23     ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  store i32 %i.z, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !30
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !33
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29
  store i32 %i.al, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27
  store i32 %i.an, ptr %i.f, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.w to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = sdiv exact i64 %i.av, 72                ; 5 uses
  %i.ax = icmp ugt i64 %i.aw, 128102389400760775
  br i1 %i.ax, label %.noexc137, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc137:                                        ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.w
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #26 ; 4 uses
  store ptr %i.az, ptr %4, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !36
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.prol ], [ %i.az, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.prol ], [ %i.aw, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 64
  store i64 0, ptr %i.bd, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  %i.be = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !75

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.az, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.aw, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.be, %.lr.ph.i.i.i.i.i.prol ]
  %i.bg = icmp ult i64 %i.aw, 4
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i64 0, ptr %i.bi, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bh, i8 0, i64 28, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bl, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i8 0, i64 28, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 176
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  store i64 0, ptr %i.bo, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 216
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 280
  store i64 0, ptr %i.br, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bp, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  %i.bs = add nsw i64 %.01012.i.i.i.i.i, -4       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bt, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !35
  %.pre144 = load ptr, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.bu = icmp eq ptr %.pre, %.pre144
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.lcssa, ptr %i.bv, align 8, !tbaa !35
  br i1 %i.bu, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnn3MataSERKS0_.exit107, %.loopexit.thread, %.loopexit
  %i.bw = phi ptr [ %i.ay, %.loopexit.thread ], [ %i.bv, %.loopexit ], [ %i.bv, %_ZN4ncnn3MataSERKS0_.exit107 ]
  %i.bx = invoke noundef i32 @_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.l unwind label %_ZN4ncnn3MatD2Ev.exit ; 0 uses

.lr.ph:                                           ; preds = %.loopexit, %_ZN4ncnn3MataSERKS0_.exit107
  %i.by = phi ptr [ %i.fb, %_ZN4ncnn3MataSERKS0_.exit107 ], [ %.pre144, %.loopexit ]
  %.0142 = phi i64 [ %i.ez, %_ZN4ncnn3MataSERKS0_.exit107 ], [ 0, %.loopexit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.by, i64 %.0142 ; 15 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !31, !noalias !79
  switch i32 %i.cb, label %bb.f [
    i32 1, label %.noexc
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

.noexc:                                           ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !29, !noalias !79
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !79
  %i.cg = mul nsw i32 %i.cf, %i.cd                ; 2 uses
  %i.ch = insertelement <4 x i32> <i32 1, i32 poison, i32 1, i32 1>, i32 %i.cg, i64 1
  %i.ci = sext i32 %i.cg to i64
  %i.cj = add nsw i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 4611686018427387900
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29, !noalias !79 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !27, !noalias !79
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !33, !noalias !79
  %i.cr = mul nsw i32 %i.cq, %i.co                ; 2 uses
  %i.cs = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.cm, i64 1
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cr, i64 2
  %i.cu = sext i32 %i.cm to i64
  %i.cv = sext i32 %i.cr to i64
  %i.cw = mul nsw i64 %i.cv, %i.cu
  %i.cx = add nsw i64 %i.cw, 3
  %i.cy = and i64 %i.cx, 4611686018427387900
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 44 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !30, !noalias !79
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !33, !noalias !79
  %i.df = mul nsw i32 %i.de, %i.dc
  %i.dg = load <2 x i32>, ptr %i.cz, align 4, !tbaa !28, !noalias !79
  %i.dh = load i32, ptr %i.da, align 8, !tbaa !27, !noalias !79
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !29, !noalias !79
  %i.dj = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dk = shufflevector <4 x i32> <i32 3, i32 poison, i32 poison, i32 1>, <4 x i32> %i.dj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dl = sext i32 %i.di to i64
  %i.dm = sext i32 %i.dh to i64
  %i.dn = mul nsw i64 %i.dm, %i.dl
  %i.do = add nsw i64 %i.dn, 3
  %i.dp = and i64 %i.do, 4611686018427387900
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !29, !noalias !79 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !27, !noalias !79 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !40, !noalias !79 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !30, !noalias !79
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !33, !noalias !79
  %i.ea = mul nsw i32 %i.dz, %i.dx
  %.sroa.29.44.vec.insert = insertelement <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>, i32 %i.dr, i64 1
  %.sroa.29.48.vec.insert = insertelement <4 x i32> %.sroa.29.44.vec.insert, i32 %i.dt, i64 2
  %.sroa.29.52.vec.insert = insertelement <4 x i32> %.sroa.29.48.vec.insert, i32 %i.dv, i64 3
  %i.eb = sext i32 %i.dr to i64
  %i.ec = sext i32 %i.dt to i64
  %i.ed = mul nsw i64 %i.ec, %i.eb
  %i.ee = sext i32 %i.dv to i64
  %i.ef = mul i64 %i.ed, %i.ee
  %i.eg = add i64 %i.ef, 3
  %i.eh = and i64 %i.eg, 4611686018427387900
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.noexc, %bb.c, %bb.d, %bb.e
  %.sroa.12.0 = phi i64 [ 4, %bb.e ], [ 4, %.noexc ], [ 4, %bb.c ], [ 4, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.42196.0 = phi i64 [ %i.eh, %bb.e ], [ %i.ck, %.noexc ], [ %i.cy, %bb.c ], [ %i.dp, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.37.0 = phi i32 [ %i.ea, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ %i.df, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.29.0 = phi <4 x i32> [ %.sroa.29.52.vec.insert, %bb.e ], [ %i.ch, %.noexc ], [ %i.ct, %bb.c ], [ %i.dk, %bb.d ], [ zeroinitializer, %.lr.ph ]
  %.sroa.17.0 = phi i32 [ 1, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.lr.ph ]
  %i.ei = load ptr, ptr %4, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw [72 x i8], ptr %i.ei, i64 %.0142 ; 11 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.pre146 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.not.i118 = icmp eq ptr %.pre146, null
  br i1 %.not.i118, label %_ZN4ncnn3MataSERKS0_.exit107, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.el = atomicrmw add ptr %.pre146, i32 -1 acq_rel, align 4
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.h, label %_ZN4ncnn3MataSERKS0_.exit107

bb.h:                                             ; preds = %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %.not3.i119 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MataSERKS0_.exit107 unwind label %_ZN4ncnn3MatD2Ev.exit, !inline_history !1

bb.j:                                             ; preds = %bb.h
  %.not.i131 = icmp eq ptr %i.ep, null
  br i1 %.not.i131, label %_ZN4ncnn3MataSERKS0_.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ep) #6
  br label %_ZN4ncnn3MataSERKS0_.exit107

_ZN4ncnn3MataSERKS0_.exit107:                     ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  store ptr null, ptr %i.ej, align 8, !tbaa !43
  store ptr null, ptr %i.ek, align 8, !tbaa !41
  store i64 %.sroa.12.0, ptr %i.et, align 8, !tbaa !32
  store i32 %.sroa.17.0, ptr %i.eu, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr null, ptr %i.ey, align 8, !tbaa !42
  store <4 x i32> %.sroa.29.0, ptr %i.ev, align 8, !tbaa !28
  store i32 %.sroa.37.0, ptr %i.ew, align 8, !tbaa !30
  store i64 %.sroa.42196.0, ptr %i.ex, align 8, !tbaa !37
  %i.ez = add nuw i64 %.0142, 1                   ; 2 uses
  %i.fa = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.fb = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = sdiv exact i64 %i.fe, 72
  %i.fg = icmp ult i64 %i.ez, %i.ff
  br i1 %i.fg, label %.lr.ph, label %._crit_edge, !llvm.loop !78

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %bb.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %i.fh

bb.l:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %4, align 8, !tbaa !23    ; 3 uses
  %i.fj = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.fi, %bb.l ] ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i139 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i139, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.fm = atomicrmw add ptr %i.fl, i32 -1 acq_rel, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.n, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !42 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.fp, null
  %i.fq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef %i.fq)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !1

bb.p:                                             ; preds = %bb.n
  %.not.i1.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.fq) #6
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #27
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i:        ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %.lr.ph.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 0, ptr %i.fx, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fw, i8 0, i64 20, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fy, %i.fj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fi, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !36
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #24
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !80, !range !81, !noundef !82
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.u, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.gi = load i32, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %.not.i109 = icmp eq i32 %i.gi, 0
  br i1 %.not.i109, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.u
  %i.gj = load i64, ptr %i.ag, align 8, !tbaa !32
  %.tr.i = trunc i64 %i.gj to i32
  %i.gk = shl i32 %.tr.i, 3
  %i.gl = sdiv i32 %i.gk, %i.gi
  %i.gm = icmp eq i32 %i.gl, 16
  br i1 %i.gm, label %bb.v, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.v:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.gn = call noundef i32 @_ZNK4ncnn17Interp_x86_avx51213forward_bf16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit104

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.u, %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.t
  %i.go = load i32, ptr %i.e, align 4, !tbaa !28  ; 5 uses
  switch i32 %i.af, label %bb.ax [
    i32 1, label %bb.w
    i32 2, label %bb.ac
  ]

bb.w:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.gp = load i32, ptr %i.f, align 4, !tbaa !28
  %i.gq = load i32, ptr %i.b, align 4, !tbaa !28
  %i.gr = load i32, ptr %i.d, align 4, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !46
  call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i32 noundef %i.go, i32 noundef %i.gp, i32 noundef %i.gq, i64 noundef %i.ah, i32 noundef %i.gr, ptr noundef %i.gt)
  %i.gu = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN4ncnn3MataSERKS0_.exit104, label %_ZNK4ncnn3Mat5emptyEv.exit111

_ZNK4ncnn3Mat5emptyEv.exit111:                    ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !30
  %i.ha = sext i32 %i.gz to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24
  br label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Interp_x86_avx51213forward_bf16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca float, align 4                    ; 4 uses
  %i.m = alloca float, align 4                    ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 6 uses
  %i.w = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 14 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !23     ; 20 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !23     ; 36 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  store i32 %i.am, ptr %i.v, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27
  store i32 %i.ao, ptr %i.w, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !34
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = sdiv exact i64 %i.aw, 72                ; 5 uses
  %i.ay = icmp ugt i64 %i.ax, 128102389400760775
  br i1 %i.ay, label %.noexc95, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc95:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.x
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #26 ; 4 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !36
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.prol ], [ %i.ba, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.prol ], [ %i.ax, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 64
  store i64 0, ptr %i.be, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  %i.bf = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !89

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.ax, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %i.bh = icmp ult i64 %i.ax, 4
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i64 0, ptr %i.bj, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bm, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bl, i8 0, i64 28, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 176
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  store i64 0, ptr %i.bp, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 216
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 280
  store i64 0, ptr %i.bs, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, i8 0, i64 28, i1 false)
  %i.bt = add nsw i64 %.01012.i.i.i.i.i, -4       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !35
  %.pre101 = load ptr, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.bv = icmp eq ptr %.pre, %.pre101
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.lcssa, ptr %i.bw, align 8, !tbaa !35
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnn3MataSERKS0_.exit66, %.loopexit.thread, %.loopexit
  %i.bx = phi ptr [ %i.az, %.loopexit.thread ], [ %i.bw, %.loopexit ], [ %i.bw, %_ZN4ncnn3MataSERKS0_.exit66 ]
  %i.by = invoke noundef i32 @_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.l unwind label %_ZN4ncnn3MatD2Ev.exit ; 0 uses

.lr.ph:                                           ; preds = %.loopexit, %_ZN4ncnn3MataSERKS0_.exit66
  %i.bz = phi ptr [ %i.fb, %_ZN4ncnn3MataSERKS0_.exit66 ], [ %.pre101, %.loopexit ]
  %.0100 = phi i64 [ %i.ez, %_ZN4ncnn3MataSERKS0_.exit66 ], [ 0, %.loopexit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %.0100 ; 15 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !31, !noalias !93
  switch i32 %i.cc, label %bb.f [
    i32 1, label %.noexc
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

.noexc:                                           ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29, !noalias !93
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !33, !noalias !93
  %i.ch = mul nsw i32 %i.cg, %i.ce                ; 2 uses
  %i.ci = insertelement <4 x i32> <i32 1, i32 poison, i32 1, i32 1>, i32 %i.ch, i64 1
  %i.cj = sext i32 %i.ch to i64
  %i.ck = add nsw i64 %i.cj, 3
  %i.cl = and i64 %i.ck, 4611686018427387900
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29, !noalias !93 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !27, !noalias !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !33, !noalias !93
  %i.cs = mul nsw i32 %i.cr, %i.cp                ; 2 uses
  %i.ct = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.cn, i64 1
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cs, i64 2
  %i.cv = sext i32 %i.cn to i64
  %i.cw = sext i32 %i.cs to i64
  %i.cx = mul nsw i64 %i.cw, %i.cv
  %i.cy = add nsw i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 4611686018427387900
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 44 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !30, !noalias !93
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !33, !noalias !93
  %i.dg = mul nsw i32 %i.df, %i.dd
  %i.dh = load <2 x i32>, ptr %i.da, align 4, !tbaa !28, !noalias !93
  %i.di = load i32, ptr %i.db, align 8, !tbaa !27, !noalias !93
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !29, !noalias !93
  %i.dk = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dl = shufflevector <4 x i32> <i32 3, i32 poison, i32 poison, i32 1>, <4 x i32> %i.dk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dm = sext i32 %i.dj to i64
  %i.dn = sext i32 %i.di to i64
  %i.do = mul nsw i64 %i.dn, %i.dm
  %i.dp = add nsw i64 %i.do, 3
  %i.dq = and i64 %i.dp, 4611686018427387900
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29, !noalias !93 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !27, !noalias !93 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40, !noalias !93 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !30, !noalias !93
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !33, !noalias !93
  %i.eb = mul nsw i32 %i.ea, %i.dy
  %.sroa.31.44.vec.insert = insertelement <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>, i32 %i.ds, i64 1
  %.sroa.31.48.vec.insert = insertelement <4 x i32> %.sroa.31.44.vec.insert, i32 %i.du, i64 2
  %.sroa.31.52.vec.insert = insertelement <4 x i32> %.sroa.31.48.vec.insert, i32 %i.dw, i64 3
  %i.ec = sext i32 %i.ds to i64
  %i.ed = sext i32 %i.du to i64
  %i.ee = mul nsw i64 %i.ed, %i.ec
  %i.ef = sext i32 %i.dw to i64
  %i.eg = mul i64 %i.ee, %i.ef
  %i.eh = add i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 4611686018427387900
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.noexc, %bb.c, %bb.d, %bb.e
  %.sroa.44152.0 = phi i64 [ %i.ei, %bb.e ], [ %i.cl, %.noexc ], [ %i.cz, %bb.c ], [ %i.dq, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.39.0 = phi i32 [ %i.eb, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ %i.dg, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.31.0 = phi <4 x i32> [ %.sroa.31.52.vec.insert, %bb.e ], [ %i.ci, %.noexc ], [ %i.cu, %bb.c ], [ %i.dl, %bb.d ], [ zeroinitializer, %.lr.ph ]
  %.sroa.13.0 = phi i64 [ 4, %bb.e ], [ 4, %.noexc ], [ 4, %bb.c ], [ 4, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.18.0 = phi i32 [ 1, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.lr.ph ]
  %i.ej = load ptr, ptr %4, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw [72 x i8], ptr %i.ej, i64 %.0100 ; 10 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.pre103 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41 ; 2 uses
  %.not.i76 = icmp eq ptr %.pre103, null
  br i1 %.not.i76, label %_ZN4ncnn3MataSERKS0_.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.el = atomicrmw add ptr %.pre103, i32 -1 acq_rel, align 4
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.h, label %_ZN4ncnn3MataSERKS0_.exit66

bb.h:                                             ; preds = %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MataSERKS0_.exit66 unwind label %_ZN4ncnn3MatD2Ev.exit, !inline_history !1

bb.j:                                             ; preds = %bb.h
  %.not.i89 = icmp eq ptr %i.ep, null
  br i1 %.not.i89, label %_ZN4ncnn3MataSERKS0_.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ep) #6
  br label %_ZN4ncnn3MataSERKS0_.exit66

_ZN4ncnn3MataSERKS0_.exit66:                      ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  store <2 x ptr> splat (ptr null), ptr %i.ek, align 8, !tbaa !48
  store i64 %.sroa.13.0, ptr %i.et, align 8, !tbaa !32
  store i32 %.sroa.18.0, ptr %i.eu, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store ptr null, ptr %i.ey, align 8, !tbaa !42
  store <4 x i32> %.sroa.31.0, ptr %i.ev, align 8, !tbaa !28
  store i32 %.sroa.39.0, ptr %i.ew, align 8, !tbaa !30
  store i64 %.sroa.44152.0, ptr %i.ex, align 8, !tbaa !37
  %i.ez = add nuw i64 %.0100, 1                   ; 2 uses
  %i.fa = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.fb = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = sdiv exact i64 %i.fe, 72
  %i.fg = icmp ult i64 %i.ez, %i.ff
  br i1 %i.fg, label %.lr.ph, label %._crit_edge, !llvm.loop !92

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %bb.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  resume { ptr, i32 } %i.fh

bb.l:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %4, align 8, !tbaa !23    ; 3 uses
  %i.fj = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.fi, %bb.l ] ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i97, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.fm = atomicrmw add ptr %i.fl, i32 -1 acq_rel, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.n, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !42 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.fp, null
  %i.fq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef %i.fq)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !1

bb.p:                                             ; preds = %bb.n
  %.not.i1.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.fq) #6
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #27
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i:        ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %.lr.ph.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 0, ptr %i.fx, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fw, i8 0, i64 20, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fy, %i.fj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fi, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !36
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #24
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, %bb.a
  %i.gf = load i32, ptr %i.v, align 4, !tbaa !28  ; 5 uses
  switch i32 %i.ag, label %bb.ag [
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.gg = load i32, ptr %i.w, align 4, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46
  call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef %i.ac, i64 noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.gi)
  %i.gj = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %_ZN4ncnn3MataSERKS0_.exit63, label %_ZNK4ncnn3Mat5emptyEv.exit69

_ZNK4ncnn3Mat5emptyEv.exit69:                     ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !37
  %i.gn = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !30
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul i64 %i.gm, %i.gp
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_ZN4ncnn3MataSERKS0_.exit63, label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.gs = icmp eq i32 %i.gf, %i.ac
  br i1 %i.gs, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.gt = icmp eq ptr %i.y, %i.x
  br i1 %i.gt, label %_ZN4ncnn3MataSERKS0_.exit63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 2 uses
  %.not.i62 = icmp eq ptr %i.gv, null
  br i1 %.not.i62, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gw = atomicrmw add ptr %i.gv, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !41 ; 2 uses
  %.not.i80 = icmp eq ptr %i.gy, null
  br i1 %.not.i80, label %_ZN4ncnn3Mat7releaseEv.exit82, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gz = atomicrmw add ptr %i.gy, i32 -1 acq_rel, align 4
end_hunk_1
