Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample?download=true
inline.NumInlined: 78
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn10GridSampleC2Ev:bb.a
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not199 = icmp sgt i32 %i.k, %i.j
  br i1 %.not199, label %._crit_edge201.split, label %.noexc77.lr.ph

.noexc77.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !135 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !135 ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !41, !noalias !135
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40, !noalias !135
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39, !noalias !135 ; 2 uses
  %factor.op.mul = mul i64 %i.r, %i.t
  %i.u = sext i32 %i.m to i64
  %i.v = load ptr, ptr %4, align 8, !tbaa !41, !noalias !136
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40, !noalias !136
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39, !noalias !136
  %factor.op.mul202 = mul i64 %i.x, %i.z
  %i.aa = load ptr, ptr %5, align 8, !tbaa !41, !noalias !137 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !40, !noalias !138
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !39, !noalias !138
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 212
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 216
  %i.al = mul i64 %i.t, %i.u                      ; 4 uses
  br i1 %i.ai, label %.noexc77.lr.ph.split, label %._crit_edge201.split

.noexc77.lr.ph.split:                             ; preds = %.noexc77.lr.ph
  %i.am = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc77.lr.ph.split.split, label %._crit_edge201.split

.noexc77.lr.ph.split.split:                       ; preds = %.noexc77.lr.ph.split
  %i.ao = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !28
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !29
  %.not.i98 = icmp eq i32 %i.aq, 0
  %i.ar = add nsw i32 %i.ao, -1
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = sitofp fast i32 %i.ao to float          ; 2 uses
  %i.au = fadd fast float %i.at, -5.000000e-01
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  %i.ax = insertelement <2 x float> poison, float %i.as, i64 1 ; 3 uses
  %i.ay = insertelement <2 x float> poison, float %i.at, i64 1
  %i.az = insertelement <2 x float> poison, float %i.au, i64 1
  br label %.noexc77

.noexc77:                                         ; preds = %.noexc77.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv = phi i64 [ %i.av, %.noexc77.lr.ph.split.split ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass ; 4 uses
  %.reass203 = mul i64 %factor.op.mul202, %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass203
  br label %.preheader

.preheader:                                       ; preds = %.noexc77, %._crit_edge
  %.064198 = phi i32 [ 0, %.noexc77 ], [ %i.bc, %._crit_edge ]
  %.065197 = phi ptr [ %i.ag, %.noexc77 ], [ %i.em, %._crit_edge ]
  %.066196 = phi ptr [ %i.aa, %.noexc77 ], [ %i.el, %._crit_edge ]
  %.068195 = phi ptr [ %i.bb, %.noexc77 ], [ %i.ek, %._crit_edge ]
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond209.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond209.not, label %._crit_edge201.split, label %.noexc77

._crit_edge:                                      ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120
  %i.bc = add nuw nsw i32 %.064198, 1             ; 2 uses
  %exitcond207.not = icmp eq i32 %i.bc, %i.ah
  br i1 %exitcond207.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !133

bb.c:                                             ; preds = %.preheader, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120
  %.063192 = phi i32 [ 0, %.preheader ], [ %i.en, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120 ]
  %.1191 = phi ptr [ %.065197, %.preheader ], [ %i.em, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120 ] ; 2 uses
  %.167190 = phi ptr [ %.066196, %.preheader ], [ %i.el, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120 ] ; 2 uses
  %.169189 = phi ptr [ %.068195, %.preheader ], [ %i.ek, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120 ] ; 2 uses
  %i.bd = load float, ptr %.167190, align 4, !tbaa !43
  %i.be = load float, ptr %.1191, align 4, !tbaa !43
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1 ; 4 uses
  switch i32 %i.ap, label %_ZN4ncnnL13compute_coordEfiii.exit105 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread184
    i32 3, label %bb.d
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread184:     ; preds = %bb.c
  %i.bh = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bg, <2 x float> zeroinitializer)
  %i.bi = load i32, ptr %10, align 4, !tbaa !36
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = sitofp fast i32 %i.bj to float
  %i.bl = insertelement <2 x float> %i.ax, float %i.bk, i64 0
  %i.bm = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bh, <2 x float> %i.bl)
  br label %_ZN4ncnnL13compute_coordEfiii.exit105

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i98, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bg)
  %i.bo = load i32, ptr %10, align 4, !tbaa !36
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = sitofp fast i32 %i.bp to float
  %i.br = insertelement <2 x float> %i.ax, float %i.bq, i64 0 ; 2 uses
  %i.bs = fsub fast <2 x float> %i.bn, %i.br
  %i.bt = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bs)
  %i.bu = fsub fast <2 x float> %i.br, %i.bt
  br label %_ZN4ncnnL13compute_coordEfiii.exit105

bb.f:                                             ; preds = %bb.d
  %i.bv = fadd fast <2 x float> %i.bg, splat (float 5.000000e-01)
  %i.bw = load i32, ptr %10, align 4, !tbaa !36   ; 2 uses
  %i.bx = sitofp fast i32 %i.bw to float          ; 2 uses
  %i.by = fadd fast float %i.bx, -5.000000e-01
  %i.bz = add nsw i32 %i.bw, -1
  %i.ca = sitofp fast i32 %i.bz to float
  %i.cb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bv)
  %i.cc = insertelement <2 x float> %i.ay, float %i.bx, i64 0
  %i.cd = fsub fast <2 x float> %i.cb, %i.cc
  %i.ce = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cd)
  %i.cf = insertelement <2 x float> %i.az, float %i.by, i64 0
  %i.cg = fsub fast <2 x float> %i.cf, %i.ce
  %i.ch = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cg, <2 x float> zeroinitializer)
  %i.ci = insertelement <2 x float> %i.ax, float %i.ca, i64 0
  %i.cj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ch, <2 x float> %i.ci)
  br label %_ZN4ncnnL13compute_coordEfiii.exit105

_ZN4ncnnL13compute_coordEfiii.exit105:            ; preds = %bb.c, %bb.f, %bb.e, %_ZN4ncnnL13compute_coordEfiii.exit.thread184
  %i.ck = phi <2 x float> [ %i.bm, %_ZN4ncnnL13compute_coordEfiii.exit.thread184 ], [ %i.bu, %bb.e ], [ %i.cj, %bb.f ], [ %i.bg, %bb.c ] ; 3 uses
  %i.cl = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ck)
  %i.cm = fptosi <2 x float> %i.cl to <2 x i32>   ; 3 uses
  %i.cn = extractelement <2 x i32> %i.cm, i64 1   ; 6 uses
  %i.co = add nsw i32 %i.cn, 1                    ; 5 uses
  %i.cp = extractelement <2 x i32> %i.cm, i64 0   ; 6 uses
  %i.cq = add nsw i32 %i.cp, 1                    ; 5 uses
  %i.cr = or i32 %i.cp, %i.cn
  %or.cond.i.i = icmp sgt i32 %i.cr, -1
  %i.cs = icmp sgt i32 %i.m, %i.cn                ; 2 uses
  %or.cond9.i.i = select i1 %or.cond.i.i, i1 %i.cs, i1 false
  %i.ct = icmp sgt i32 %i.o, %i.cp                ; 2 uses
  %i.cu = select i1 %or.cond9.i.i, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.g, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit

bb.g:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit105
  %11 = sext i32 %i.cp to i64
  %i.cv = mul i64 %i.al, %11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cv
  %12 = sext i32 %i.cn to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit

_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit:   ; preds = %bb.g, %_ZN4ncnnL13compute_coordEfiii.exit105
  %i.cz = phi fast float [ %i.cy, %bb.g ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit105 ]
  %i.da = or i32 %i.co, %i.cp
  %or.cond.i.i108 = icmp sgt i32 %i.da, -1
  %i.db = icmp slt i32 %i.co, %i.m                ; 2 uses
  %or.cond9.i.i109 = select i1 %or.cond.i.i108, i1 %i.db, i1 false
  %i.dc = select i1 %or.cond9.i.i109, i1 %i.ct, i1 false
  br i1 %i.dc, label %bb.h, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit110

bb.h:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit
  %13 = sext i32 %i.cp to i64
  %i.dd = mul i64 %i.al, %13
  %i.de = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dd
  %14 = sext i32 %i.co to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %14
  %i.dg = load float, ptr %i.df, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit110

_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit110: ; preds = %bb.h, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit
  %i.dh = phi fast float [ %i.dg, %bb.h ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit ]
  %i.di = or i32 %i.cq, %i.cn
  %or.cond.i.i113 = icmp sgt i32 %i.di, -1
  %or.cond9.i.i114 = select i1 %or.cond.i.i113, i1 %i.cs, i1 false
  %i.dj = icmp slt i32 %i.cq, %i.o                ; 2 uses
  %i.dk = select i1 %or.cond9.i.i114, i1 %i.dj, i1 false
  br i1 %i.dk, label %bb.i, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit115

bb.i:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit110
  %15 = sext i32 %i.cq to i64
  %i.dl = mul i64 %i.al, %15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dl
  %16 = sext i32 %i.cn to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %16
  %i.do = load float, ptr %i.dn, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit115

_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit115: ; preds = %bb.i, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit110
  %i.dp = phi fast float [ %i.do, %bb.i ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit110 ]
  %i.dq = or i32 %i.cq, %i.co
  %or.cond.i.i118 = icmp sgt i32 %i.dq, -1
  %or.cond9.i.i119 = select i1 %or.cond.i.i118, i1 %i.db, i1 false
  %i.dr = select i1 %or.cond9.i.i119, i1 %i.dj, i1 false
  br i1 %i.dr, label %bb.j, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120

bb.j:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit115
  %17 = sext i32 %i.cq to i64
  %i.ds = mul i64 %i.al, %17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ds
  %18 = sext i32 %i.co to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %18
  %i.dv = load float, ptr %i.du, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120

_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit120: ; preds = %bb.j, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit115
  %i.dw = phi fast float [ %i.dv, %bb.j ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit115 ]
  %i.dx = sitofp <2 x i32> %i.cm to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.ck, %i.dx
  %i.dy = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop230 = fsub fast <2 x float> %i.ck, %i.dx
  %i.dz = extractelement <2 x float> %foldExtExtBinop230, i64 0
  %i.ea = fsub fast float 1.000000e+00, %i.dy     ; 2 uses
  %i.eb = fmul fast float %i.cz, %i.ea
  %i.ec = fmul fast float %i.dh, %i.dy
  %i.ed = fadd fast float %i.ec, %i.eb            ; 2 uses
  %i.ee = fmul fast float %i.dp, %i.ea
  %i.ef = fmul fast float %i.dw, %i.dy
  %i.eg = fsub fast float %i.ee, %i.ed
  %i.eh = fadd fast float %i.eg, %i.ef
  %i.ei = fmul fast float %i.eh, %i.dz
  %i.ej = fadd fast float %i.ei, %i.ed
  store float %i.ej, ptr %.169189, align 4, !tbaa !43
  %i.ek = getelementptr inbounds nuw i8, ptr %.169189, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.167190, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1191, i64 4 ; 2 uses
  %i.en = add nuw nsw i32 %.063192, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !134

._crit_edge201.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc77.lr.ph, %.noexc77.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge201.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !48 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not147 = icmp sgt i32 %i.k, %i.j
  br i1 %.not147, label %._crit_edge149.split, label %.noexc53.lr.ph

.noexc53.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !149 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !149
  %i.p = load ptr, ptr %3, align 8, !tbaa !41, !noalias !149
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40, !noalias !149
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39, !noalias !149 ; 2 uses
  %factor.op.mul = mul i64 %i.r, %i.t
  %i.u = sext i32 %i.m to i64
  %i.v = load ptr, ptr %4, align 8, !tbaa !41, !noalias !150
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40, !noalias !150
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39, !noalias !150
  %factor.op.mul150 = mul i64 %i.x, %i.z
  %i.aa = load ptr, ptr %5, align 8, !tbaa !41, !noalias !151 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !40, !noalias !152
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !39, !noalias !152
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 212
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 216
  %i.al = mul i64 %i.t, %i.u
  br i1 %i.ai, label %.noexc53.lr.ph.split, label %._crit_edge149.split

.noexc53.lr.ph.split:                             ; preds = %.noexc53.lr.ph
  %i.am = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc53.lr.ph.split.split, label %._crit_edge149.split

.noexc53.lr.ph.split.split:                       ; preds = %.noexc53.lr.ph.split
  %i.ao = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !28
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !29
  %.not.i74 = icmp eq i32 %i.aq, 0
  %i.ar = add nsw i32 %i.ao, -1
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = sitofp fast i32 %i.ao to float          ; 2 uses
  %i.au = fadd fast float %i.at, -5.000000e-01
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  %i.ax = insertelement <2 x float> poison, float %i.as, i64 1 ; 3 uses
  %i.ay = insertelement <2 x float> poison, float %i.at, i64 1
  %i.az = insertelement <2 x float> poison, float %i.au, i64 1
  br label %.noexc53

.noexc53:                                         ; preds = %.noexc53.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv = phi i64 [ %i.av, %.noexc53.lr.ph.split.split ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass
  %.reass151 = mul i64 %factor.op.mul150, %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass151
  br label %.preheader

.preheader:                                       ; preds = %.noexc53, %._crit_edge
  %.039146 = phi i32 [ 0, %.noexc53 ], [ %i.bc, %._crit_edge ]
  %.040145 = phi ptr [ %i.ag, %.noexc53 ], [ %i.db, %._crit_edge ]
  %.041144 = phi ptr [ %i.aa, %.noexc53 ], [ %i.da, %._crit_edge ]
  %.043143 = phi ptr [ %i.bb, %.noexc53 ], [ %i.cz, %._crit_edge ]
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond157.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond157.not, label %._crit_edge149.split, label %.noexc53

._crit_edge:                                      ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit
  %i.bc = add nuw nsw i32 %.039146, 1             ; 2 uses
  %exitcond155.not = icmp eq i32 %i.bc, %i.ah
  br i1 %exitcond155.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !147

bb.c:                                             ; preds = %.preheader, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit
  %.0140 = phi i32 [ 0, %.preheader ], [ %i.dc, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit ]
  %.1139 = phi ptr [ %.040145, %.preheader ], [ %i.db, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit ] ; 2 uses
  %.142138 = phi ptr [ %.041144, %.preheader ], [ %i.da, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit ] ; 2 uses
  %.144137 = phi ptr [ %.043143, %.preheader ], [ %i.cz, %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit ] ; 2 uses
  %i.bd = load float, ptr %.142138, align 4, !tbaa !43
  %i.be = load float, ptr %.1139, align 4, !tbaa !43
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1 ; 4 uses
  switch i32 %i.ap, label %_ZN4ncnnL13compute_coordEfiii.exit81 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread133
    i32 3, label %bb.d
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread133:     ; preds = %bb.c
  %i.bh = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bg, <2 x float> zeroinitializer)
  %i.bi = load i32, ptr %10, align 4, !tbaa !36
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = sitofp fast i32 %i.bj to float
  %i.bl = insertelement <2 x float> %i.ax, float %i.bk, i64 0
  %i.bm = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bh, <2 x float> %i.bl)
  br label %_ZN4ncnnL13compute_coordEfiii.exit81

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bg)
  %i.bo = load i32, ptr %10, align 4, !tbaa !36
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = sitofp fast i32 %i.bp to float
  %i.br = insertelement <2 x float> %i.ax, float %i.bq, i64 0 ; 2 uses
  %i.bs = fsub fast <2 x float> %i.bn, %i.br
  %i.bt = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bs)
  %i.bu = fsub fast <2 x float> %i.br, %i.bt
  br label %_ZN4ncnnL13compute_coordEfiii.exit81

bb.f:                                             ; preds = %bb.d
  %i.bv = fadd fast <2 x float> %i.bg, splat (float 5.000000e-01)
  %i.bw = load i32, ptr %10, align 4, !tbaa !36   ; 2 uses
  %i.bx = sitofp fast i32 %i.bw to float          ; 2 uses
  %i.by = fadd fast float %i.bx, -5.000000e-01
  %i.bz = add nsw i32 %i.bw, -1
  %i.ca = sitofp fast i32 %i.bz to float
  %i.cb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bv)
  %i.cc = insertelement <2 x float> %i.ay, float %i.bx, i64 0
  %i.cd = fsub fast <2 x float> %i.cb, %i.cc
  %i.ce = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cd)
  %i.cf = insertelement <2 x float> %i.az, float %i.by, i64 0
  %i.cg = fsub fast <2 x float> %i.cf, %i.ce
  %i.ch = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cg, <2 x float> zeroinitializer)
  %i.ci = insertelement <2 x float> %i.ax, float %i.ca, i64 0
  %i.cj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ch, <2 x float> %i.ci)
  br label %_ZN4ncnnL13compute_coordEfiii.exit81

_ZN4ncnnL13compute_coordEfiii.exit81:             ; preds = %bb.c, %bb.f, %bb.e, %_ZN4ncnnL13compute_coordEfiii.exit.thread133
  %i.ck = phi <2 x float> [ %i.bm, %_ZN4ncnnL13compute_coordEfiii.exit.thread133 ], [ %i.bu, %bb.e ], [ %i.cj, %bb.f ], [ %i.bg, %bb.c ]
  %i.cl = fadd fast <2 x float> %i.ck, splat (float 5.000000e-01)
  %i.cm = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cl)
  %i.cn = fptosi <2 x float> %i.cm to <2 x i32>   ; 2 uses
  %i.co = extractelement <2 x i32> %i.cn, i64 0   ; 3 uses
  %i.cp = extractelement <2 x i32> %i.cn, i64 1   ; 3 uses
  %i.cq = or i32 %i.co, %i.cp
  %or.cond.i.i = icmp sgt i32 %i.cq, -1
  %i.cr = icmp sgt i32 %i.m, %i.cp
  %or.cond9.i.i = select i1 %or.cond.i.i, i1 %i.cr, i1 false
  %i.cs = icmp sgt i32 %i.o, %i.co
  %i.ct = select i1 %or.cond9.i.i, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.g, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit

bb.g:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit81
  %11 = sext i32 %i.co to i64
  %i.cu = mul i64 %i.al, %11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cu
  %12 = sext i32 %i.cp to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit

_ZN4ncnnL17get_value_boundedERKNS_3MatEii.exit:   ; preds = %bb.g, %_ZN4ncnnL13compute_coordEfiii.exit81
  %i.cy = phi fast float [ %i.cx, %bb.g ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit81 ]
  store float %i.cy, ptr %.144137, align 4, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.144137, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.142138, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1139, i64 4 ; 2 uses
  %i.dc = add nuw nsw i32 %.0140, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !148

._crit_edge149.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc53.lr.ph, %.noexc53.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge149.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bp

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not591 = icmp sgt i32 %i.k, %i.j
  br i1 %.not591, label %._crit_edge593.split, label %.noexc109.lr.ph

.noexc109.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load ptr, ptr %3, align 8, !tbaa !41, !noalias !163
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40, !noalias !163
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39, !noalias !163 ; 2 uses
  %factor.op.mul = mul i64 %i.o, %i.q
  %i.r = load ptr, ptr %4, align 8, !tbaa !41, !noalias !164
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !164
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !164
  %factor.op.mul594 = mul i64 %i.t, %i.v
  %i.w = load ptr, ptr %5, align 8, !tbaa !41, !noalias !165 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load i64, ptr %i.x, align 8, !tbaa !40, !noalias !166
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !39, !noalias !166
  %i.ab = mul i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  %i.ad = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 212
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.ah = load <2 x i32>, ptr %i.l, align 4, !tbaa !36, !noalias !163 ; 19 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 0
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw <2 x i32> %i.ah, splat (i32 -1)
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>   ; 64 uses
  %i.am = sitofp <2 x i32> %i.ah to <2 x float>   ; 17 uses
  %i.an = fadd fast <2 x float> %i.am, splat (float -5.000000e-01) ; 16 uses
  %i.ao = mul i64 %i.q, %i.aj                     ; 16 uses
  br i1 %i.ae, label %.noexc109.lr.ph.split, label %._crit_edge593.split

.noexc109.lr.ph.split:                            ; preds = %.noexc109.lr.ph
  %i.ap = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.noexc109.lr.ph.split.split, label %._crit_edge593.split

.noexc109.lr.ph.split.split:                      ; preds = %.noexc109.lr.ph.split
  %i.ar = load i32, ptr %i.af, align 4, !tbaa !28 ; 16 uses
  %i.as = load i32, ptr %i.ag, align 8, !tbaa !29
  %.not.i.i = icmp eq i32 %i.as, 0                ; 16 uses
  %i.at = sext i32 %i.k to i64
  %i.au = add nsw i32 %i.j, 1
  br label %.noexc109

.noexc109:                                        ; preds = %.noexc109.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv = phi i64 [ %i.at, %.noexc109.lr.ph.split.split ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass ; 16 uses
  %.reass595 = mul i64 %factor.op.mul594, %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass595
  br label %.preheader

.preheader:                                       ; preds = %.noexc109, %._crit_edge
  %.096590 = phi i32 [ 0, %.noexc109 ], [ %i.ax, %._crit_edge ]
  %.097589 = phi ptr [ %i.ac, %.noexc109 ], [ %i.acw, %._crit_edge ]
  %.098588 = phi ptr [ %i.w, %.noexc109 ], [ %i.acv, %._crit_edge ]
  %.0100587 = phi ptr [ %i.aw, %.noexc109 ], [ %i.acu, %._crit_edge ]
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond601.not = icmp eq i32 %i.au, %lftr.wideiv
  br i1 %exitcond601.not, label %._crit_edge593.split, label %.noexc109

._crit_edge:                                      ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384
  %i.ax = add nuw nsw i32 %.096590, 1             ; 2 uses
  %exitcond599.not = icmp eq i32 %i.ax, %i.ad
  br i1 %exitcond599.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !161

bb.c:                                             ; preds = %.preheader, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384
  %.095584 = phi i32 [ 0, %.preheader ], [ %i.acx, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384 ]
  %.1583 = phi ptr [ %.097589, %.preheader ], [ %i.acw, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384 ] ; 2 uses
  %.199582 = phi ptr [ %.098588, %.preheader ], [ %i.acv, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384 ] ; 2 uses
  %.1101581 = phi ptr [ %.0100587, %.preheader ], [ %i.acu, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384 ] ; 2 uses
  %i.ay = load float, ptr %.199582, align 4, !tbaa !43 ; 2 uses
  %i.az = load float, ptr %.1583, align 4, !tbaa !43 ; 2 uses
  %i.ba = call fast float @llvm.floor.f32(float %i.ay)
  %i.bb = fptosi float %i.ba to i32               ; 4 uses
  %i.bc = call fast float @llvm.floor.f32(float %i.az)
  %i.bd = fptosi float %i.bc to i32               ; 20 uses
  %i.be = add nsw i32 %i.bb, -1
  %i.bf = add nsw i32 %i.bd, -1                   ; 16 uses
  %i.bg = add nsw i32 %i.bb, 1
  %i.bh = add nsw i32 %i.bd, 1                    ; 16 uses
  %i.bi = add nsw i32 %i.bb, 2
  %i.bj = add nsw i32 %i.bd, 2                    ; 16 uses
  %i.bk = sitofp fast i32 %i.be to float          ; 16 uses
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i
    i32 3, label %bb.d
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i:    ; preds = %bb.c
  %i.bl = sitofp fast i32 %i.bf to float
  %i.bm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1
  %i.bo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bn, <2 x float> zeroinitializer)
  %i.bp = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bo, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %bb.f, label %bb.e

_ZN4ncnnL13compute_coordEfiii.exit.i:             ; preds = %bb.c
  %i.bq = sitofp fast i32 %i.bf to float
  %i.br = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bq, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i

bb.e:                                             ; preds = %bb.d
  %i.bt = sitofp fast i32 %i.bf to float
  %i.bu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bt, i64 1
  %i.bw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bv)
  %i.bx = fsub fast <2 x float> %i.bw, %i.al
  %i.by = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bx)
  %i.bz = fsub fast <2 x float> %i.al, %i.by
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i

bb.f:                                             ; preds = %bb.d
  %i.ca = sitofp fast i32 %i.bf to float
  %i.cb = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.ca, i64 1
  %i.cd = fadd fast <2 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cd)
  %i.cf = fsub fast <2 x float> %i.ce, %i.am
  %i.cg = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cf)
  %i.ch = fsub fast <2 x float> %i.an, %i.cg
  %i.ci = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ch, <2 x float> zeroinitializer)
  %i.cj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ci, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i

_ZN4ncnnL13compute_coordEfiii.exit16.i:           ; preds = %bb.f, %bb.e, %_ZN4ncnnL13compute_coordEfiii.exit.i, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i
  %i.ck = phi <2 x float> [ %i.bp, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i ], [ %i.bz, %bb.e ], [ %i.cj, %bb.f ], [ %i.bs, %_ZN4ncnnL13compute_coordEfiii.exit.i ]
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>   ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 0   ; 2 uses
  %i.cn = extractelement <2 x i32> %i.cl, i64 1   ; 2 uses
  %i.co = or i32 %i.cn, %i.cm
  %or.cond.i.i.i = icmp sgt i32 %i.co, -1
  %i.cp = icmp sgt <2 x i32> %i.ah, %i.cl         ; 2 uses
  %i.cq = extractelement <2 x i1> %i.cp, i64 0
  %or.cond9.i.i.i = select i1 %or.cond.i.i.i, i1 %i.cq, i1 false
  %i.cr = extractelement <2 x i1> %i.cp, i64 1
  %i.cs = select i1 %or.cond9.i.i.i, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.g, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit

bb.g:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i
  %9 = sext i32 %i.cn to i64
  %i.ct = mul i64 %i.ao, %9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ct
  %10 = sext i32 %i.cm to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %10
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit: ; preds = %bb.g, %_ZN4ncnnL13compute_coordEfiii.exit16.i
  %i.cx = phi fast float [ %i.cw, %bb.g ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i ]
  %i.cy = sitofp fast i32 %i.bb to float          ; 17 uses
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i145 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i140
    i32 3, label %bb.h
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i140: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit
  %i.cz = sitofp fast i32 %i.bf to float
  %i.da = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cz, i64 1
  %i.dc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.db, <2 x float> zeroinitializer)
  %i.dd = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dc, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i131

bb.h:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit
  br i1 %.not.i.i, label %bb.j, label %bb.i

_ZN4ncnnL13compute_coordEfiii.exit.i145:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit
  %i.de = sitofp fast i32 %i.bf to float
  %i.df = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.de, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i131

bb.i:                                             ; preds = %bb.h
  %i.dh = sitofp fast i32 %i.bf to float
  %i.di = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.dh, i64 1
  %i.dk = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dj)
  %i.dl = fsub fast <2 x float> %i.dk, %i.al
  %i.dm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dl)
  %i.dn = fsub fast <2 x float> %i.al, %i.dm
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i131

bb.j:                                             ; preds = %bb.h
  %i.do = sitofp fast i32 %i.bf to float
  %i.dp = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.do, i64 1
  %i.dr = fadd fast <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.ds = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dr)
  %i.dt = fsub fast <2 x float> %i.ds, %i.am
  %i.du = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dt)
  %i.dv = fsub fast <2 x float> %i.an, %i.du
  %i.dw = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dv, <2 x float> zeroinitializer)
  %i.dx = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dw, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i131

_ZN4ncnnL13compute_coordEfiii.exit16.i131:        ; preds = %bb.j, %bb.i, %_ZN4ncnnL13compute_coordEfiii.exit.i145, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i140
  %i.dy = phi <2 x float> [ %i.dd, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i140 ], [ %i.dn, %bb.i ], [ %i.dx, %bb.j ], [ %i.dg, %_ZN4ncnnL13compute_coordEfiii.exit.i145 ]
  %i.dz = fptosi <2 x float> %i.dy to <2 x i32>   ; 3 uses
  %i.ea = extractelement <2 x i32> %i.dz, i64 0   ; 2 uses
  %i.eb = extractelement <2 x i32> %i.dz, i64 1   ; 2 uses
  %i.ec = or i32 %i.eb, %i.ea
  %or.cond.i.i.i134 = icmp sgt i32 %i.ec, -1
  %i.ed = icmp sgt <2 x i32> %i.ah, %i.dz         ; 2 uses
  %i.ee = extractelement <2 x i1> %i.ed, i64 0
  %or.cond9.i.i.i135 = select i1 %or.cond.i.i.i134, i1 %i.ee, i1 false
  %i.ef = extractelement <2 x i1> %i.ed, i64 1
  %i.eg = select i1 %or.cond9.i.i.i135, i1 %i.ef, i1 false
  br i1 %i.eg, label %bb.k, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit146

bb.k:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i131
  %11 = sext i32 %i.eb to i64
  %i.eh = mul i64 %i.ao, %11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.eh
  %12 = sext i32 %i.ea to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit146

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit146: ; preds = %bb.k, %_ZN4ncnnL13compute_coordEfiii.exit16.i131
  %i.el = phi fast float [ %i.ek, %bb.k ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i131 ]
  %i.em = sitofp fast i32 %i.bg to float          ; 16 uses
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i162 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i157
    i32 3, label %bb.l
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i157: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit146
  %i.en = sitofp fast i32 %i.bf to float
  %i.eo = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.en, i64 1
  %i.eq = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ep, <2 x float> zeroinitializer)
  %i.er = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eq, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i148

bb.l:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit146
  br i1 %.not.i.i, label %bb.n, label %bb.m

_ZN4ncnnL13compute_coordEfiii.exit.i162:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit146
  %i.es = sitofp fast i32 %i.bf to float
  %i.et = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.es, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i148

bb.m:                                             ; preds = %bb.l
  %i.ev = sitofp fast i32 %i.bf to float
  %i.ew = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.ev, i64 1
  %i.ey = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ex)
  %i.ez = fsub fast <2 x float> %i.ey, %i.al
  %i.fa = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ez)
  %i.fb = fsub fast <2 x float> %i.al, %i.fa
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i148

bb.n:                                             ; preds = %bb.l
  %i.fc = sitofp fast i32 %i.bf to float
  %i.fd = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.fc, i64 1
  %i.ff = fadd fast <2 x float> %i.fe, splat (float 5.000000e-01)
  %i.fg = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ff)
  %i.fh = fsub fast <2 x float> %i.fg, %i.am
  %i.fi = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fh)
  %i.fj = fsub fast <2 x float> %i.an, %i.fi
  %i.fk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fj, <2 x float> zeroinitializer)
  %i.fl = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fk, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i148

_ZN4ncnnL13compute_coordEfiii.exit16.i148:        ; preds = %bb.n, %bb.m, %_ZN4ncnnL13compute_coordEfiii.exit.i162, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i157
  %i.fm = phi <2 x float> [ %i.er, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i157 ], [ %i.fb, %bb.m ], [ %i.fl, %bb.n ], [ %i.eu, %_ZN4ncnnL13compute_coordEfiii.exit.i162 ]
  %i.fn = fptosi <2 x float> %i.fm to <2 x i32>   ; 3 uses
  %i.fo = extractelement <2 x i32> %i.fn, i64 0   ; 2 uses
  %i.fp = extractelement <2 x i32> %i.fn, i64 1   ; 2 uses
  %i.fq = or i32 %i.fp, %i.fo
  %or.cond.i.i.i151 = icmp sgt i32 %i.fq, -1
  %i.fr = icmp sgt <2 x i32> %i.ah, %i.fn         ; 2 uses
  %i.fs = extractelement <2 x i1> %i.fr, i64 0
  %or.cond9.i.i.i152 = select i1 %or.cond.i.i.i151, i1 %i.fs, i1 false
  %i.ft = extractelement <2 x i1> %i.fr, i64 1
  %i.fu = select i1 %or.cond9.i.i.i152, i1 %i.ft, i1 false
  br i1 %i.fu, label %bb.o, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit163

bb.o:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i148
  %13 = sext i32 %i.fp to i64
  %i.fv = mul i64 %i.ao, %13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fv
  %14 = sext i32 %i.fo to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %14
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit163

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit163: ; preds = %bb.o, %_ZN4ncnnL13compute_coordEfiii.exit16.i148
  %i.fz = phi fast float [ %i.fy, %bb.o ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i148 ]
  %i.ga = sitofp fast i32 %i.bi to float          ; 16 uses
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i179 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i174
    i32 3, label %bb.p
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i174: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit163
  %i.gb = sitofp fast i32 %i.bf to float
  %i.gc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.gb, i64 1
  %i.ge = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gd, <2 x float> zeroinitializer)
  %i.gf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ge, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i165

bb.p:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit163
  br i1 %.not.i.i, label %bb.r, label %bb.q

_ZN4ncnnL13compute_coordEfiii.exit.i179:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit163
  %i.gg = sitofp fast i32 %i.bf to float
  %i.gh = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.gg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i165

bb.q:                                             ; preds = %bb.p
  %i.gj = sitofp fast i32 %i.bf to float
  %i.gk = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gj, i64 1
  %i.gm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gl)
  %i.gn = fsub fast <2 x float> %i.gm, %i.al
  %i.go = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gn)
  %i.gp = fsub fast <2 x float> %i.al, %i.go
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i165

bb.r:                                             ; preds = %bb.p
  %i.gq = sitofp fast i32 %i.bf to float
  %i.gr = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.gq, i64 1
  %i.gt = fadd fast <2 x float> %i.gs, splat (float 5.000000e-01)
  %i.gu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gt)
  %i.gv = fsub fast <2 x float> %i.gu, %i.am
  %i.gw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gv)
  %i.gx = fsub fast <2 x float> %i.an, %i.gw
  %i.gy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gx, <2 x float> zeroinitializer)
  %i.gz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i165

_ZN4ncnnL13compute_coordEfiii.exit16.i165:        ; preds = %bb.r, %bb.q, %_ZN4ncnnL13compute_coordEfiii.exit.i179, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i174
  %i.ha = phi <2 x float> [ %i.gf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i174 ], [ %i.gp, %bb.q ], [ %i.gz, %bb.r ], [ %i.gi, %_ZN4ncnnL13compute_coordEfiii.exit.i179 ]
  %i.hb = fptosi <2 x float> %i.ha to <2 x i32>   ; 3 uses
  %i.hc = extractelement <2 x i32> %i.hb, i64 0   ; 2 uses
  %i.hd = extractelement <2 x i32> %i.hb, i64 1   ; 2 uses
  %i.he = or i32 %i.hd, %i.hc
  %or.cond.i.i.i168 = icmp sgt i32 %i.he, -1
  %i.hf = icmp sgt <2 x i32> %i.ah, %i.hb         ; 2 uses
  %i.hg = extractelement <2 x i1> %i.hf, i64 0
  %or.cond9.i.i.i169 = select i1 %or.cond.i.i.i168, i1 %i.hg, i1 false
  %i.hh = extractelement <2 x i1> %i.hf, i64 1
  %i.hi = select i1 %or.cond9.i.i.i169, i1 %i.hh, i1 false
  br i1 %i.hi, label %bb.s, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit180

bb.s:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i165
  %15 = sext i32 %i.hd to i64
  %i.hj = mul i64 %i.ao, %15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.hj
  %16 = sext i32 %i.hc to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %16
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit180

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit180: ; preds = %bb.s, %_ZN4ncnnL13compute_coordEfiii.exit16.i165
  %i.hn = phi fast float [ %i.hm, %bb.s ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i165 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i196 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i191
    i32 3, label %bb.t
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i191: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit180
  %i.ho = sitofp fast i32 %i.bd to float
  %i.hp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.ho, i64 1
  %i.hr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hq, <2 x float> zeroinitializer)
  %i.hs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hr, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i182

bb.t:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit180
  br i1 %.not.i.i, label %bb.v, label %bb.u

_ZN4ncnnL13compute_coordEfiii.exit.i196:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit180
  %i.ht = sitofp fast i32 %i.bd to float
  %i.hu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.ht, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i182

bb.u:                                             ; preds = %bb.t
  %i.hw = sitofp fast i32 %i.bd to float
  %i.hx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.hw, i64 1
  %i.hz = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hy)
  %i.ia = fsub fast <2 x float> %i.hz, %i.al
  %i.ib = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ia)
  %i.ic = fsub fast <2 x float> %i.al, %i.ib
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i182

bb.v:                                             ; preds = %bb.t
  %i.id = sitofp fast i32 %i.bd to float
  %i.ie = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.id, i64 1
  %i.ig = fadd fast <2 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ig)
  %i.ii = fsub fast <2 x float> %i.ih, %i.am
  %i.ij = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ii)
  %i.ik = fsub fast <2 x float> %i.an, %i.ij
  %i.il = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ik, <2 x float> zeroinitializer)
  %i.im = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.il, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i182

_ZN4ncnnL13compute_coordEfiii.exit16.i182:        ; preds = %bb.v, %bb.u, %_ZN4ncnnL13compute_coordEfiii.exit.i196, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i191
  %i.in = phi <2 x float> [ %i.hs, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i191 ], [ %i.ic, %bb.u ], [ %i.im, %bb.v ], [ %i.hv, %_ZN4ncnnL13compute_coordEfiii.exit.i196 ]
  %i.io = fptosi <2 x float> %i.in to <2 x i32>   ; 3 uses
  %i.ip = extractelement <2 x i32> %i.io, i64 0   ; 2 uses
  %i.iq = extractelement <2 x i32> %i.io, i64 1   ; 2 uses
  %i.ir = or i32 %i.iq, %i.ip
  %or.cond.i.i.i185 = icmp sgt i32 %i.ir, -1
  %i.is = icmp sgt <2 x i32> %i.ah, %i.io         ; 2 uses
  %i.it = extractelement <2 x i1> %i.is, i64 0
  %or.cond9.i.i.i186 = select i1 %or.cond.i.i.i185, i1 %i.it, i1 false
  %i.iu = extractelement <2 x i1> %i.is, i64 1
  %i.iv = select i1 %or.cond9.i.i.i186, i1 %i.iu, i1 false
  br i1 %i.iv, label %bb.w, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit197

bb.w:                                             ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i182
  %17 = sext i32 %i.iq to i64
  %i.iw = mul i64 %i.ao, %17
  %i.ix = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.iw
  %18 = sext i32 %i.ip to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %18
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit197

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit197: ; preds = %bb.w, %_ZN4ncnnL13compute_coordEfiii.exit16.i182
  %i.ja = phi fast float [ %i.iz, %bb.w ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i182 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i213 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i208
    i32 3, label %bb.x
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i208: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit197
  %i.jb = sitofp fast i32 %i.bd to float
  %i.jc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.jb, i64 1
  %i.je = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jd, <2 x float> zeroinitializer)
  %i.jf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.je, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i199

bb.x:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit197
  br i1 %.not.i.i, label %bb.z, label %bb.y

_ZN4ncnnL13compute_coordEfiii.exit.i213:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit197
  %i.jg = sitofp fast i32 %i.bd to float
  %i.jh = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.ji = insertelement <2 x float> %i.jh, float %i.jg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i199

bb.y:                                             ; preds = %bb.x
  %i.jj = sitofp fast i32 %i.bd to float
  %i.jk = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.jl = insertelement <2 x float> %i.jk, float %i.jj, i64 1
  %i.jm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jl)
  %i.jn = fsub fast <2 x float> %i.jm, %i.al
  %i.jo = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jn)
  %i.jp = fsub fast <2 x float> %i.al, %i.jo
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i199

bb.z:                                             ; preds = %bb.x
  %i.jq = sitofp fast i32 %i.bd to float
  %i.jr = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.jq, i64 1
  %i.jt = fadd fast <2 x float> %i.js, splat (float 5.000000e-01)
  %i.ju = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jt)
  %i.jv = fsub fast <2 x float> %i.ju, %i.am
  %i.jw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jv)
  %i.jx = fsub fast <2 x float> %i.an, %i.jw
  %i.jy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jx, <2 x float> zeroinitializer)
  %i.jz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i199

_ZN4ncnnL13compute_coordEfiii.exit16.i199:        ; preds = %bb.z, %bb.y, %_ZN4ncnnL13compute_coordEfiii.exit.i213, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i208
  %i.ka = phi <2 x float> [ %i.jf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i208 ], [ %i.jp, %bb.y ], [ %i.jz, %bb.z ], [ %i.ji, %_ZN4ncnnL13compute_coordEfiii.exit.i213 ]
  %i.kb = fptosi <2 x float> %i.ka to <2 x i32>   ; 3 uses
  %i.kc = extractelement <2 x i32> %i.kb, i64 0   ; 2 uses
  %i.kd = extractelement <2 x i32> %i.kb, i64 1   ; 2 uses
  %i.ke = or i32 %i.kd, %i.kc
  %or.cond.i.i.i202 = icmp sgt i32 %i.ke, -1
  %i.kf = icmp sgt <2 x i32> %i.ah, %i.kb         ; 2 uses
  %i.kg = extractelement <2 x i1> %i.kf, i64 0
  %or.cond9.i.i.i203 = select i1 %or.cond.i.i.i202, i1 %i.kg, i1 false
  %i.kh = extractelement <2 x i1> %i.kf, i64 1
  %i.ki = select i1 %or.cond9.i.i.i203, i1 %i.kh, i1 false
  br i1 %i.ki, label %bb.aa, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit214

bb.aa:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i199
  %19 = sext i32 %i.kd to i64
  %i.kj = mul i64 %i.ao, %19
  %i.kk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.kj
  %20 = sext i32 %i.kc to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %20
  %i.km = load float, ptr %i.kl, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit214

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit214: ; preds = %bb.aa, %_ZN4ncnnL13compute_coordEfiii.exit16.i199
  %i.kn = phi fast float [ %i.km, %bb.aa ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i199 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i230 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i225
    i32 3, label %bb.ab
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i225: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit214
  %i.ko = sitofp fast i32 %i.bd to float
  %i.kp = insertelement <2 x float> poison, float %i.em, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.ko, i64 1
  %i.kr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kq, <2 x float> zeroinitializer)
  %i.ks = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kr, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i216

bb.ab:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit214
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

_ZN4ncnnL13compute_coordEfiii.exit.i230:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit214
  %i.kt = sitofp fast i32 %i.bd to float
  %i.ku = insertelement <2 x float> poison, float %i.em, i64 0
  %i.kv = insertelement <2 x float> %i.ku, float %i.kt, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i216

bb.ac:                                            ; preds = %bb.ab
  %i.kw = sitofp fast i32 %i.bd to float
  %i.kx = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ky = insertelement <2 x float> %i.kx, float %i.kw, i64 1
  %i.kz = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ky)
  %i.la = fsub fast <2 x float> %i.kz, %i.al
  %i.lb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.la)
  %i.lc = fsub fast <2 x float> %i.al, %i.lb
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i216

bb.ad:                                            ; preds = %bb.ab
  %i.ld = sitofp fast i32 %i.bd to float
  %i.le = insertelement <2 x float> poison, float %i.em, i64 0
  %i.lf = insertelement <2 x float> %i.le, float %i.ld, i64 1
  %i.lg = fadd fast <2 x float> %i.lf, splat (float 5.000000e-01)
  %i.lh = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lg)
  %i.li = fsub fast <2 x float> %i.lh, %i.am
  %i.lj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.li)
  %i.lk = fsub fast <2 x float> %i.an, %i.lj
  %i.ll = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lk, <2 x float> zeroinitializer)
  %i.lm = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ll, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i216

_ZN4ncnnL13compute_coordEfiii.exit16.i216:        ; preds = %bb.ad, %bb.ac, %_ZN4ncnnL13compute_coordEfiii.exit.i230, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i225
  %i.ln = phi <2 x float> [ %i.ks, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i225 ], [ %i.lc, %bb.ac ], [ %i.lm, %bb.ad ], [ %i.kv, %_ZN4ncnnL13compute_coordEfiii.exit.i230 ]
  %i.lo = fptosi <2 x float> %i.ln to <2 x i32>   ; 3 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0   ; 2 uses
  %i.lq = extractelement <2 x i32> %i.lo, i64 1   ; 2 uses
  %i.lr = or i32 %i.lq, %i.lp
  %or.cond.i.i.i219 = icmp sgt i32 %i.lr, -1
  %i.ls = icmp sgt <2 x i32> %i.ah, %i.lo         ; 2 uses
  %i.lt = extractelement <2 x i1> %i.ls, i64 0
  %or.cond9.i.i.i220 = select i1 %or.cond.i.i.i219, i1 %i.lt, i1 false
  %i.lu = extractelement <2 x i1> %i.ls, i64 1
  %i.lv = select i1 %or.cond9.i.i.i220, i1 %i.lu, i1 false
  br i1 %i.lv, label %bb.ae, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit231

bb.ae:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i216
  %21 = sext i32 %i.lq to i64
  %i.lw = mul i64 %i.ao, %21
  %i.lx = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.lw
  %22 = sext i32 %i.lp to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %22
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit231

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit231: ; preds = %bb.ae, %_ZN4ncnnL13compute_coordEfiii.exit16.i216
  %i.ma = phi fast float [ %i.lz, %bb.ae ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i216 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i247 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i242
    i32 3, label %bb.af
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i242: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit231
  %i.mb = sitofp fast i32 %i.bd to float
  %i.mc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.md = insertelement <2 x float> %i.mc, float %i.mb, i64 1
  %i.me = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.md, <2 x float> zeroinitializer)
  %i.mf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.me, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i233

bb.af:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit231
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

_ZN4ncnnL13compute_coordEfiii.exit.i247:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit231
  %i.mg = sitofp fast i32 %i.bd to float
  %i.mh = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.mg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i233

bb.ag:                                            ; preds = %bb.af
  %i.mj = sitofp fast i32 %i.bd to float
  %i.mk = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.ml = insertelement <2 x float> %i.mk, float %i.mj, i64 1
  %i.mm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ml)
  %i.mn = fsub fast <2 x float> %i.mm, %i.al
  %i.mo = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mn)
  %i.mp = fsub fast <2 x float> %i.al, %i.mo
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i233

bb.ah:                                            ; preds = %bb.af
  %i.mq = sitofp fast i32 %i.bd to float
  %i.mr = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.ms = insertelement <2 x float> %i.mr, float %i.mq, i64 1
  %i.mt = fadd fast <2 x float> %i.ms, splat (float 5.000000e-01)
  %i.mu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mt)
  %i.mv = fsub fast <2 x float> %i.mu, %i.am
  %i.mw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mv)
  %i.mx = fsub fast <2 x float> %i.an, %i.mw
  %i.my = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mx, <2 x float> zeroinitializer)
  %i.mz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.my, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i233

_ZN4ncnnL13compute_coordEfiii.exit16.i233:        ; preds = %bb.ah, %bb.ag, %_ZN4ncnnL13compute_coordEfiii.exit.i247, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i242
  %i.na = phi <2 x float> [ %i.mf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i242 ], [ %i.mp, %bb.ag ], [ %i.mz, %bb.ah ], [ %i.mi, %_ZN4ncnnL13compute_coordEfiii.exit.i247 ]
  %i.nb = fptosi <2 x float> %i.na to <2 x i32>   ; 3 uses
  %i.nc = extractelement <2 x i32> %i.nb, i64 0   ; 2 uses
  %i.nd = extractelement <2 x i32> %i.nb, i64 1   ; 2 uses
  %i.ne = or i32 %i.nd, %i.nc
  %or.cond.i.i.i236 = icmp sgt i32 %i.ne, -1
  %i.nf = icmp sgt <2 x i32> %i.ah, %i.nb         ; 2 uses
  %i.ng = extractelement <2 x i1> %i.nf, i64 0
  %or.cond9.i.i.i237 = select i1 %or.cond.i.i.i236, i1 %i.ng, i1 false
  %i.nh = extractelement <2 x i1> %i.nf, i64 1
  %i.ni = select i1 %or.cond9.i.i.i237, i1 %i.nh, i1 false
  br i1 %i.ni, label %bb.ai, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit248

bb.ai:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i233
  %23 = sext i32 %i.nd to i64
  %i.nj = mul i64 %i.ao, %23
  %i.nk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.nj
  %24 = sext i32 %i.nc to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %24
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit248

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit248: ; preds = %bb.ai, %_ZN4ncnnL13compute_coordEfiii.exit16.i233
  %i.nn = phi fast float [ %i.nm, %bb.ai ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i233 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i264 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i259
    i32 3, label %bb.aj
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i259: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit248
  %i.no = sitofp fast i32 %i.bh to float
  %i.np = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.nq = insertelement <2 x float> %i.np, float %i.no, i64 1
  %i.nr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.nq, <2 x float> zeroinitializer)
  %i.ns = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.nr, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i250

bb.aj:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit248
  br i1 %.not.i.i, label %bb.al, label %bb.ak

_ZN4ncnnL13compute_coordEfiii.exit.i264:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit248
  %i.nt = sitofp fast i32 %i.bh to float
  %i.nu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %i.nt, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i250

bb.ak:                                            ; preds = %bb.aj
  %i.nw = sitofp fast i32 %i.bh to float
  %i.nx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %i.nw, i64 1
  %i.nz = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ny)
  %i.oa = fsub fast <2 x float> %i.nz, %i.al
  %i.ob = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oa)
  %i.oc = fsub fast <2 x float> %i.al, %i.ob
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i250

bb.al:                                            ; preds = %bb.aj
  %i.od = sitofp fast i32 %i.bh to float
  %i.oe = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %i.od, i64 1
  %i.og = fadd fast <2 x float> %i.of, splat (float 5.000000e-01)
  %i.oh = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.og)
  %i.oi = fsub fast <2 x float> %i.oh, %i.am
  %i.oj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oi)
  %i.ok = fsub fast <2 x float> %i.an, %i.oj
  %i.ol = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ok, <2 x float> zeroinitializer)
  %i.om = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ol, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i250

_ZN4ncnnL13compute_coordEfiii.exit16.i250:        ; preds = %bb.al, %bb.ak, %_ZN4ncnnL13compute_coordEfiii.exit.i264, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i259
  %i.on = phi <2 x float> [ %i.ns, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i259 ], [ %i.oc, %bb.ak ], [ %i.om, %bb.al ], [ %i.nv, %_ZN4ncnnL13compute_coordEfiii.exit.i264 ]
  %i.oo = fptosi <2 x float> %i.on to <2 x i32>   ; 3 uses
  %i.op = extractelement <2 x i32> %i.oo, i64 0   ; 2 uses
  %i.oq = extractelement <2 x i32> %i.oo, i64 1   ; 2 uses
  %i.or = or i32 %i.oq, %i.op
  %or.cond.i.i.i253 = icmp sgt i32 %i.or, -1
  %i.os = icmp sgt <2 x i32> %i.ah, %i.oo         ; 2 uses
  %i.ot = extractelement <2 x i1> %i.os, i64 0
  %or.cond9.i.i.i254 = select i1 %or.cond.i.i.i253, i1 %i.ot, i1 false
  %i.ou = extractelement <2 x i1> %i.os, i64 1
  %i.ov = select i1 %or.cond9.i.i.i254, i1 %i.ou, i1 false
  br i1 %i.ov, label %bb.am, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit265

bb.am:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i250
  %25 = sext i32 %i.oq to i64
  %i.ow = mul i64 %i.ao, %25
  %i.ox = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ow
  %26 = sext i32 %i.op to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ox, i64 %26
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit265

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit265: ; preds = %bb.am, %_ZN4ncnnL13compute_coordEfiii.exit16.i250
  %i.pa = phi fast float [ %i.oz, %bb.am ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i250 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i281 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i276
    i32 3, label %bb.an
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i276: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit265
  %i.pb = sitofp fast i32 %i.bh to float
  %i.pc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.pb, i64 1
  %i.pe = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pd, <2 x float> zeroinitializer)
  %i.pf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.pe, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i267

bb.an:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit265
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

_ZN4ncnnL13compute_coordEfiii.exit.i281:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit265
  %i.pg = sitofp fast i32 %i.bh to float
  %i.ph = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.pi = insertelement <2 x float> %i.ph, float %i.pg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i267

bb.ao:                                            ; preds = %bb.an
  %i.pj = sitofp fast i32 %i.bh to float
  %i.pk = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.pl = insertelement <2 x float> %i.pk, float %i.pj, i64 1
  %i.pm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pl)
  %i.pn = fsub fast <2 x float> %i.pm, %i.al
  %i.po = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pn)
  %i.pp = fsub fast <2 x float> %i.al, %i.po
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i267

bb.ap:                                            ; preds = %bb.an
  %i.pq = sitofp fast i32 %i.bh to float
  %i.pr = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %i.pq, i64 1
  %i.pt = fadd fast <2 x float> %i.ps, splat (float 5.000000e-01)
  %i.pu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pt)
  %i.pv = fsub fast <2 x float> %i.pu, %i.am
  %i.pw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pv)
  %i.px = fsub fast <2 x float> %i.an, %i.pw
  %i.py = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.px, <2 x float> zeroinitializer)
  %i.pz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.py, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i267

_ZN4ncnnL13compute_coordEfiii.exit16.i267:        ; preds = %bb.ap, %bb.ao, %_ZN4ncnnL13compute_coordEfiii.exit.i281, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i276
  %i.qa = phi <2 x float> [ %i.pf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i276 ], [ %i.pp, %bb.ao ], [ %i.pz, %bb.ap ], [ %i.pi, %_ZN4ncnnL13compute_coordEfiii.exit.i281 ]
  %i.qb = fptosi <2 x float> %i.qa to <2 x i32>   ; 3 uses
  %i.qc = extractelement <2 x i32> %i.qb, i64 0   ; 2 uses
  %i.qd = extractelement <2 x i32> %i.qb, i64 1   ; 2 uses
  %i.qe = or i32 %i.qd, %i.qc
  %or.cond.i.i.i270 = icmp sgt i32 %i.qe, -1
  %i.qf = icmp sgt <2 x i32> %i.ah, %i.qb         ; 2 uses
  %i.qg = extractelement <2 x i1> %i.qf, i64 0
  %or.cond9.i.i.i271 = select i1 %or.cond.i.i.i270, i1 %i.qg, i1 false
  %i.qh = extractelement <2 x i1> %i.qf, i64 1
  %i.qi = select i1 %or.cond9.i.i.i271, i1 %i.qh, i1 false
  br i1 %i.qi, label %bb.aq, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit282

bb.aq:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i267
  %27 = sext i32 %i.qd to i64
  %i.qj = mul i64 %i.ao, %27
  %i.qk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.qj
  %28 = sext i32 %i.qc to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %28
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit282

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit282: ; preds = %bb.aq, %_ZN4ncnnL13compute_coordEfiii.exit16.i267
  %i.qn = phi fast float [ %i.qm, %bb.aq ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i267 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i298 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i293
    i32 3, label %bb.ar
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i293: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit282
  %i.qo = sitofp fast i32 %i.bh to float
  %i.qp = insertelement <2 x float> poison, float %i.em, i64 0
  %i.qq = insertelement <2 x float> %i.qp, float %i.qo, i64 1
  %i.qr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qq, <2 x float> zeroinitializer)
  %i.qs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.qr, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i284

bb.ar:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit282
  br i1 %.not.i.i, label %bb.at, label %bb.as

_ZN4ncnnL13compute_coordEfiii.exit.i298:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit282
  %i.qt = sitofp fast i32 %i.bh to float
  %i.qu = insertelement <2 x float> poison, float %i.em, i64 0
  %i.qv = insertelement <2 x float> %i.qu, float %i.qt, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i284

bb.as:                                            ; preds = %bb.ar
  %i.qw = sitofp fast i32 %i.bh to float
  %i.qx = insertelement <2 x float> poison, float %i.em, i64 0
  %i.qy = insertelement <2 x float> %i.qx, float %i.qw, i64 1
  %i.qz = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.qy)
  %i.ra = fsub fast <2 x float> %i.qz, %i.al
  %i.rb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ra)
  %i.rc = fsub fast <2 x float> %i.al, %i.rb
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i284

bb.at:                                            ; preds = %bb.ar
  %i.rd = sitofp fast i32 %i.bh to float
  %i.re = insertelement <2 x float> poison, float %i.em, i64 0
  %i.rf = insertelement <2 x float> %i.re, float %i.rd, i64 1
  %i.rg = fadd fast <2 x float> %i.rf, splat (float 5.000000e-01)
  %i.rh = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rg)
  %i.ri = fsub fast <2 x float> %i.rh, %i.am
  %i.rj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ri)
  %i.rk = fsub fast <2 x float> %i.an, %i.rj
  %i.rl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.rk, <2 x float> zeroinitializer)
  %i.rm = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.rl, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i284

_ZN4ncnnL13compute_coordEfiii.exit16.i284:        ; preds = %bb.at, %bb.as, %_ZN4ncnnL13compute_coordEfiii.exit.i298, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i293
  %i.rn = phi <2 x float> [ %i.qs, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i293 ], [ %i.rc, %bb.as ], [ %i.rm, %bb.at ], [ %i.qv, %_ZN4ncnnL13compute_coordEfiii.exit.i298 ]
  %i.ro = fptosi <2 x float> %i.rn to <2 x i32>   ; 3 uses
  %i.rp = extractelement <2 x i32> %i.ro, i64 0   ; 2 uses
  %i.rq = extractelement <2 x i32> %i.ro, i64 1   ; 2 uses
  %i.rr = or i32 %i.rq, %i.rp
  %or.cond.i.i.i287 = icmp sgt i32 %i.rr, -1
  %i.rs = icmp sgt <2 x i32> %i.ah, %i.ro         ; 2 uses
  %i.rt = extractelement <2 x i1> %i.rs, i64 0
  %or.cond9.i.i.i288 = select i1 %or.cond.i.i.i287, i1 %i.rt, i1 false
  %i.ru = extractelement <2 x i1> %i.rs, i64 1
  %i.rv = select i1 %or.cond9.i.i.i288, i1 %i.ru, i1 false
  br i1 %i.rv, label %bb.au, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit299

bb.au:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i284
  %29 = sext i32 %i.rq to i64
  %i.rw = mul i64 %i.ao, %29
  %i.rx = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.rw
  %30 = sext i32 %i.rp to i64
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %30
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit299

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit299: ; preds = %bb.au, %_ZN4ncnnL13compute_coordEfiii.exit16.i284
  %i.sa = phi fast float [ %i.rz, %bb.au ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i284 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i315 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i310
    i32 3, label %bb.av
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i310: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit299
  %i.sb = sitofp fast i32 %i.bh to float
  %i.sc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.sd = insertelement <2 x float> %i.sc, float %i.sb, i64 1
  %i.se = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sd, <2 x float> zeroinitializer)
  %i.sf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.se, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i301

bb.av:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit299
  br i1 %.not.i.i, label %bb.ax, label %bb.aw

_ZN4ncnnL13compute_coordEfiii.exit.i315:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit299
  %i.sg = sitofp fast i32 %i.bh to float
  %i.sh = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %i.sg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i301

bb.aw:                                            ; preds = %bb.av
  %i.sj = sitofp fast i32 %i.bh to float
  %i.sk = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.sl = insertelement <2 x float> %i.sk, float %i.sj, i64 1
  %i.sm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sl)
  %i.sn = fsub fast <2 x float> %i.sm, %i.al
  %i.so = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sn)
  %i.sp = fsub fast <2 x float> %i.al, %i.so
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i301

bb.ax:                                            ; preds = %bb.av
  %i.sq = sitofp fast i32 %i.bh to float
  %i.sr = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %i.sq, i64 1
  %i.st = fadd fast <2 x float> %i.ss, splat (float 5.000000e-01)
  %i.su = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.st)
  %i.sv = fsub fast <2 x float> %i.su, %i.am
  %i.sw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sv)
  %i.sx = fsub fast <2 x float> %i.an, %i.sw
  %i.sy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sx, <2 x float> zeroinitializer)
  %i.sz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.sy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i301

_ZN4ncnnL13compute_coordEfiii.exit16.i301:        ; preds = %bb.ax, %bb.aw, %_ZN4ncnnL13compute_coordEfiii.exit.i315, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i310
  %i.ta = phi <2 x float> [ %i.sf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i310 ], [ %i.sp, %bb.aw ], [ %i.sz, %bb.ax ], [ %i.si, %_ZN4ncnnL13compute_coordEfiii.exit.i315 ]
  %i.tb = fptosi <2 x float> %i.ta to <2 x i32>   ; 3 uses
  %i.tc = extractelement <2 x i32> %i.tb, i64 0   ; 2 uses
  %i.td = extractelement <2 x i32> %i.tb, i64 1   ; 2 uses
  %i.te = or i32 %i.td, %i.tc
  %or.cond.i.i.i304 = icmp sgt i32 %i.te, -1
  %i.tf = icmp sgt <2 x i32> %i.ah, %i.tb         ; 2 uses
  %i.tg = extractelement <2 x i1> %i.tf, i64 0
  %or.cond9.i.i.i305 = select i1 %or.cond.i.i.i304, i1 %i.tg, i1 false
  %i.th = extractelement <2 x i1> %i.tf, i64 1
  %i.ti = select i1 %or.cond9.i.i.i305, i1 %i.th, i1 false
  br i1 %i.ti, label %bb.ay, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit316

bb.ay:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i301
  %31 = sext i32 %i.td to i64
  %i.tj = mul i64 %i.ao, %31
  %i.tk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.tj
  %32 = sext i32 %i.tc to i64
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %32
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit316

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit316: ; preds = %bb.ay, %_ZN4ncnnL13compute_coordEfiii.exit16.i301
  %i.tn = phi fast float [ %i.tm, %bb.ay ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i301 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i332 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i327
    i32 3, label %bb.az
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i327: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit316
  %i.to = sitofp fast i32 %i.bj to float
  %i.tp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.tq = insertelement <2 x float> %i.tp, float %i.to, i64 1
  %i.tr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tq, <2 x float> zeroinitializer)
  %i.ts = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.tr, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i318

bb.az:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit316
  br i1 %.not.i.i, label %bb.bb, label %bb.ba

_ZN4ncnnL13compute_coordEfiii.exit.i332:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit316
  %i.tt = sitofp fast i32 %i.bj to float
  %i.tu = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.tv = insertelement <2 x float> %i.tu, float %i.tt, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i318

bb.ba:                                            ; preds = %bb.az
  %i.tw = sitofp fast i32 %i.bj to float
  %i.tx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ty = insertelement <2 x float> %i.tx, float %i.tw, i64 1
  %i.tz = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ty)
  %i.ua = fsub fast <2 x float> %i.tz, %i.al
  %i.ub = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ua)
  %i.uc = fsub fast <2 x float> %i.al, %i.ub
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i318

bb.bb:                                            ; preds = %bb.az
  %i.ud = sitofp fast i32 %i.bj to float
  %i.ue = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.uf = insertelement <2 x float> %i.ue, float %i.ud, i64 1
  %i.ug = fadd fast <2 x float> %i.uf, splat (float 5.000000e-01)
  %i.uh = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ug)
  %i.ui = fsub fast <2 x float> %i.uh, %i.am
  %i.uj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ui)
  %i.uk = fsub fast <2 x float> %i.an, %i.uj
  %i.ul = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.uk, <2 x float> zeroinitializer)
  %i.um = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ul, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i318

_ZN4ncnnL13compute_coordEfiii.exit16.i318:        ; preds = %bb.bb, %bb.ba, %_ZN4ncnnL13compute_coordEfiii.exit.i332, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i327
  %i.un = phi <2 x float> [ %i.ts, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i327 ], [ %i.uc, %bb.ba ], [ %i.um, %bb.bb ], [ %i.tv, %_ZN4ncnnL13compute_coordEfiii.exit.i332 ]
  %i.uo = fptosi <2 x float> %i.un to <2 x i32>   ; 3 uses
  %i.up = extractelement <2 x i32> %i.uo, i64 0   ; 2 uses
  %i.uq = extractelement <2 x i32> %i.uo, i64 1   ; 2 uses
  %i.ur = or i32 %i.uq, %i.up
  %or.cond.i.i.i321 = icmp sgt i32 %i.ur, -1
  %i.us = icmp sgt <2 x i32> %i.ah, %i.uo         ; 2 uses
  %i.ut = extractelement <2 x i1> %i.us, i64 0
  %or.cond9.i.i.i322 = select i1 %or.cond.i.i.i321, i1 %i.ut, i1 false
  %i.uu = extractelement <2 x i1> %i.us, i64 1
  %i.uv = select i1 %or.cond9.i.i.i322, i1 %i.uu, i1 false
  br i1 %i.uv, label %bb.bc, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333

bb.bc:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i318
  %33 = sext i32 %i.uq to i64
  %i.uw = mul i64 %i.ao, %33
  %i.ux = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.uw
  %34 = sext i32 %i.up to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %34
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333: ; preds = %bb.bc, %_ZN4ncnnL13compute_coordEfiii.exit16.i318
  %i.va = phi fast float [ %i.uz, %bb.bc ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i318 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i349 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344
    i32 3, label %bb.bd
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  %i.vb = sitofp fast i32 %i.bj to float
  %i.vc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.vd = insertelement <2 x float> %i.vc, float %i.vb, i64 1
  %i.ve = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vd, <2 x float> zeroinitializer)
  %i.vf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ve, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.bd:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  br i1 %.not.i.i, label %bb.bf, label %bb.be

_ZN4ncnnL13compute_coordEfiii.exit.i349:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  %i.vg = sitofp fast i32 %i.bj to float
  %i.vh = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.vi = insertelement <2 x float> %i.vh, float %i.vg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.be:                                            ; preds = %bb.bd
  %i.vj = sitofp fast i32 %i.bj to float
  %i.vk = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.vl = insertelement <2 x float> %i.vk, float %i.vj, i64 1
  %i.vm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vl)
  %i.vn = fsub fast <2 x float> %i.vm, %i.al
  %i.vo = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vn)
  %i.vp = fsub fast <2 x float> %i.al, %i.vo
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.bf:                                            ; preds = %bb.bd
  %i.vq = sitofp fast i32 %i.bj to float
  %i.vr = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.vs = insertelement <2 x float> %i.vr, float %i.vq, i64 1
  %i.vt = fadd fast <2 x float> %i.vs, splat (float 5.000000e-01)
  %i.vu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vt)
  %i.vv = fsub fast <2 x float> %i.vu, %i.am
  %i.vw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vv)
  %i.vx = fsub fast <2 x float> %i.an, %i.vw
  %i.vy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vx, <2 x float> zeroinitializer)
  %i.vz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

_ZN4ncnnL13compute_coordEfiii.exit16.i335:        ; preds = %bb.bf, %bb.be, %_ZN4ncnnL13compute_coordEfiii.exit.i349, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344
  %i.wa = phi <2 x float> [ %i.vf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344 ], [ %i.vp, %bb.be ], [ %i.vz, %bb.bf ], [ %i.vi, %_ZN4ncnnL13compute_coordEfiii.exit.i349 ]
  %i.wb = fptosi <2 x float> %i.wa to <2 x i32>   ; 3 uses
  %i.wc = extractelement <2 x i32> %i.wb, i64 0   ; 2 uses
  %i.wd = extractelement <2 x i32> %i.wb, i64 1   ; 2 uses
  %i.we = or i32 %i.wd, %i.wc
  %or.cond.i.i.i338 = icmp sgt i32 %i.we, -1
  %i.wf = icmp sgt <2 x i32> %i.ah, %i.wb         ; 2 uses
  %i.wg = extractelement <2 x i1> %i.wf, i64 0
  %or.cond9.i.i.i339 = select i1 %or.cond.i.i.i338, i1 %i.wg, i1 false
  %i.wh = extractelement <2 x i1> %i.wf, i64 1
  %i.wi = select i1 %or.cond9.i.i.i339, i1 %i.wh, i1 false
  br i1 %i.wi, label %bb.bg, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350

bb.bg:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i335
  %35 = sext i32 %i.wd to i64
  %i.wj = mul i64 %i.ao, %35
  %i.wk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.wj
  %36 = sext i32 %i.wc to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.wk, i64 %36
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350: ; preds = %bb.bg, %_ZN4ncnnL13compute_coordEfiii.exit16.i335
  %i.wn = phi fast float [ %i.wm, %bb.bg ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i335 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i366 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361
    i32 3, label %bb.bh
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  %i.wo = sitofp fast i32 %i.bj to float
  %i.wp = insertelement <2 x float> poison, float %i.em, i64 0
  %i.wq = insertelement <2 x float> %i.wp, float %i.wo, i64 1
  %i.wr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wq, <2 x float> zeroinitializer)
  %i.ws = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wr, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bh:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

_ZN4ncnnL13compute_coordEfiii.exit.i366:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  %i.wt = sitofp fast i32 %i.bj to float
  %i.wu = insertelement <2 x float> poison, float %i.em, i64 0
  %i.wv = insertelement <2 x float> %i.wu, float %i.wt, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bi:                                            ; preds = %bb.bh
  %i.ww = sitofp fast i32 %i.bj to float
  %i.wx = insertelement <2 x float> poison, float %i.em, i64 0
  %i.wy = insertelement <2 x float> %i.wx, float %i.ww, i64 1
  %i.wz = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wy)
  %i.xa = fsub fast <2 x float> %i.wz, %i.al
  %i.xb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xa)
  %i.xc = fsub fast <2 x float> %i.al, %i.xb
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bj:                                            ; preds = %bb.bh
  %i.xd = sitofp fast i32 %i.bj to float
  %i.xe = insertelement <2 x float> poison, float %i.em, i64 0
  %i.xf = insertelement <2 x float> %i.xe, float %i.xd, i64 1
  %i.xg = fadd fast <2 x float> %i.xf, splat (float 5.000000e-01)
  %i.xh = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xg)
  %i.xi = fsub fast <2 x float> %i.xh, %i.am
  %i.xj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xi)
  %i.xk = fsub fast <2 x float> %i.an, %i.xj
  %i.xl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xk, <2 x float> zeroinitializer)
  %i.xm = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.xl, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

_ZN4ncnnL13compute_coordEfiii.exit16.i352:        ; preds = %bb.bj, %bb.bi, %_ZN4ncnnL13compute_coordEfiii.exit.i366, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361
  %i.xn = phi <2 x float> [ %i.ws, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361 ], [ %i.xc, %bb.bi ], [ %i.xm, %bb.bj ], [ %i.wv, %_ZN4ncnnL13compute_coordEfiii.exit.i366 ]
  %i.xo = fptosi <2 x float> %i.xn to <2 x i32>   ; 3 uses
  %i.xp = extractelement <2 x i32> %i.xo, i64 0   ; 2 uses
  %i.xq = extractelement <2 x i32> %i.xo, i64 1   ; 2 uses
  %i.xr = or i32 %i.xq, %i.xp
  %or.cond.i.i.i355 = icmp sgt i32 %i.xr, -1
  %i.xs = icmp sgt <2 x i32> %i.ah, %i.xo         ; 2 uses
  %i.xt = extractelement <2 x i1> %i.xs, i64 0
  %or.cond9.i.i.i356 = select i1 %or.cond.i.i.i355, i1 %i.xt, i1 false
  %i.xu = extractelement <2 x i1> %i.xs, i64 1
  %i.xv = select i1 %or.cond9.i.i.i356, i1 %i.xu, i1 false
  br i1 %i.xv, label %bb.bk, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367

bb.bk:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i352
  %37 = sext i32 %i.xq to i64
  %i.xw = mul i64 %i.ao, %37
  %i.xx = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.xw
  %38 = sext i32 %i.xp to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xx, i64 %38
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367: ; preds = %bb.bk, %_ZN4ncnnL13compute_coordEfiii.exit16.i352
  %i.ya = phi fast float [ %i.xz, %bb.bk ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i352 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i383 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378
    i32 3, label %bb.bl
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  %i.yb = sitofp fast i32 %i.bj to float
  %i.yc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.yd = insertelement <2 x float> %i.yc, float %i.yb, i64 1
  %i.ye = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.yd, <2 x float> zeroinitializer)
  %i.yf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ye, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bl:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

_ZN4ncnnL13compute_coordEfiii.exit.i383:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  %i.yg = sitofp fast i32 %i.bj to float
  %i.yh = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.yi = insertelement <2 x float> %i.yh, float %i.yg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bm:                                            ; preds = %bb.bl
  %i.yj = sitofp fast i32 %i.bj to float
  %i.yk = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.yl = insertelement <2 x float> %i.yk, float %i.yj, i64 1
  %i.ym = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yl)
  %i.yn = fsub fast <2 x float> %i.ym, %i.al
  %i.yo = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yn)
  %i.yp = fsub fast <2 x float> %i.al, %i.yo
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bn:                                            ; preds = %bb.bl
  %i.yq = sitofp fast i32 %i.bj to float
  %i.yr = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.ys = insertelement <2 x float> %i.yr, float %i.yq, i64 1
  %i.yt = fadd fast <2 x float> %i.ys, splat (float 5.000000e-01)
  %i.yu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yt)
  %i.yv = fsub fast <2 x float> %i.yu, %i.am
  %i.yw = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yv)
  %i.yx = fsub fast <2 x float> %i.an, %i.yw
  %i.yy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.yx, <2 x float> zeroinitializer)
  %i.yz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.yy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

_ZN4ncnnL13compute_coordEfiii.exit16.i369:        ; preds = %bb.bn, %bb.bm, %_ZN4ncnnL13compute_coordEfiii.exit.i383, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378
  %i.za = phi <2 x float> [ %i.yf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378 ], [ %i.yp, %bb.bm ], [ %i.yz, %bb.bn ], [ %i.yi, %_ZN4ncnnL13compute_coordEfiii.exit.i383 ]
  %i.zb = fptosi <2 x float> %i.za to <2 x i32>   ; 3 uses
  %i.zc = extractelement <2 x i32> %i.zb, i64 0   ; 2 uses
  %i.zd = extractelement <2 x i32> %i.zb, i64 1   ; 2 uses
  %i.ze = or i32 %i.zd, %i.zc
  %or.cond.i.i.i372 = icmp sgt i32 %i.ze, -1
  %i.zf = icmp sgt <2 x i32> %i.ah, %i.zb         ; 2 uses
  %i.zg = extractelement <2 x i1> %i.zf, i64 0
  %or.cond9.i.i.i373 = select i1 %or.cond.i.i.i372, i1 %i.zg, i1 false
  %i.zh = extractelement <2 x i1> %i.zf, i64 1
  %i.zi = select i1 %or.cond9.i.i.i373, i1 %i.zh, i1 false
  br i1 %i.zi, label %bb.bo, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384

bb.bo:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i369
  %39 = sext i32 %i.zd to i64
  %i.zj = mul i64 %i.ao, %39
  %i.zk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.zj
  %40 = sext i32 %i.zc to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %40
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384: ; preds = %bb.bo, %_ZN4ncnnL13compute_coordEfiii.exit16.i369
  %i.zn = phi fast float [ %i.zm, %bb.bo ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i369 ]
  %i.zo = sitofp fast i32 %i.bd to float
  %i.zp = fsub fast float %i.az, %i.zo            ; 5 uses
  %i.zq = fadd fast float %i.zp, 1.000000e+00     ; 3 uses
  %i.zr = fsub fast float 1.000000e+00, %i.zp     ; 3 uses
  %i.zs = fmul fast float %i.zq, %i.zq
  %i.zt = insertelement <2 x float> poison, float %i.zq, i64 0
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zv = fmul fast <2 x float> %i.zu, <float 7.500000e-01, float 6.000000e+00>
  %i.zw = fsub fast <2 x float> <float 3.750000e+00, float 3.000000e+00>, %i.zv ; 2 uses
  %i.zx = extractelement <2 x float> %i.zw, i64 0
  %reass.mul.i385 = fmul fast float %i.zs, %i.zx
  %i.zy = extractelement <2 x float> %i.zw, i64 1
  %i.zz = fadd fast float %reass.mul.i385, %i.zy  ; 2 uses
  %i.aaa = fmul fast float %i.zp, %i.zp
  %i.aab = fmul fast float %i.zp, 1.250000e+00
  %i.aac = fadd fast float %i.aab, -2.250000e+00
  %i.aad = fmul fast float %i.aaa, %i.aac
  %i.aae = fadd fast float %i.aad, 1.000000e+00   ; 2 uses
  %i.aaf = fmul fast float %i.zr, %i.zr
  %i.aag = fmul fast float %i.zr, 1.250000e+00
  %i.aah = fadd fast float %i.aag, -2.250000e+00
  %i.aai = fmul fast float %i.aaf, %i.aah         ; 2 uses
  %i.aaj = fadd fast float %i.aai, 1.000000e+00
  %i.aak = fadd fast float %i.aai, %i.aae
  %i.aal = fadd fast float %i.aak, %i.zz
  %i.aam = fsub fast float %i.ay, %i.cy           ; 3 uses
  %i.aan = insertelement <2 x float> poison, float %i.aam, i64 0
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aap = fadd fast <2 x float> %i.aao, <float -0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.aaq = fsub fast float 1.000000e+00, %i.aam   ; 3 uses
  %i.aar = shufflevector <2 x float> %i.aap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aas = fmul fast <2 x float> %i.aar, <float 7.500000e-01, float 6.000000e+00>
  %i.aat = fsub fast <2 x float> <float 3.750000e+00, float 3.000000e+00>, %i.aas ; 2 uses
  %i.aau = fmul fast <2 x float> %i.aap, %i.aap
  %i.aav = fmul fast float %i.aam, 1.250000e+00
  %i.aaw = fadd fast float %i.aav, -2.250000e+00
  %i.aax = shufflevector <2 x float> %i.aat, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aay = insertelement <2 x float> %i.aax, float %i.aaw, i64 0
  %i.aaz = fmul fast <2 x float> %i.aau, %i.aay
  %i.aba = insertelement <2 x float> %i.aat, float 1.000000e+00, i64 0
  %i.abb = fadd fast <2 x float> %i.aaz, %i.aba   ; 4 uses
  %i.abc = fmul fast float %i.aaq, %i.aaq
  %i.abd = fmul fast float %i.aaq, 1.250000e+00
  %i.abe = fadd fast float %i.abd, -2.250000e+00
  %i.abf = fmul fast float %i.abc, %i.abe         ; 2 uses
  %i.abg = fadd fast float %i.abf, 1.000000e+00   ; 4 uses
  %i.abh = extractelement <2 x float> %i.abb, i64 0 ; 3 uses
  %i.abi = fadd fast float %i.abf, %i.abh
  %i.abj = extractelement <2 x float> %i.abb, i64 1 ; 3 uses
  %i.abk = fadd fast float %i.abi, %i.abj         ; 4 uses
  %i.abl = insertelement <2 x float> poison, float %i.el, i64 0
  %i.abm = insertelement <2 x float> %i.abl, float %i.cx, i64 1
  %i.abn = fmul fast <2 x float> %i.abm, %i.abb
  %i.abo = fmul fast float %i.fz, %i.abg
  %i.abp = call fast float @llvm.vector.reduce.fadd.v2f32(float %i.abo, <2 x float> %i.abn)
  %i.abq = fmul fast float %i.abk, %i.hn
  %i.abr = fsub fast float %i.abp, %i.abq
  %i.abs = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.abt = insertelement <2 x float> %i.abs, float %i.ja, i64 1
  %i.abu = fmul fast <2 x float> %i.abt, %i.abb
  %i.abv = fmul fast float %i.ma, %i.abg
  %i.abw = call fast float @llvm.vector.reduce.fadd.v2f32(float %i.abv, <2 x float> %i.abu)
  %i.abx = fmul fast float %i.abk, %i.nn
  %i.aby = fsub fast float %i.abw, %i.abx
  %i.abz = fmul fast float %i.pa, %i.abj
  %i.aca = fmul fast float %i.qn, %i.abh
  %i.acb = fadd fast float %i.aca, %i.abz
  %i.acc = fmul fast float %i.sa, %i.abg
  %i.acd = fadd fast float %i.acb, %i.acc
  %i.ace = fmul fast float %i.abk, %i.tn
  %i.acf = fsub fast float %i.acd, %i.ace
  %i.acg = fmul fast float %i.va, %i.abj
  %i.ach = fmul fast float %i.wn, %i.abh
  %i.aci = fadd fast float %i.ach, %i.acg
  %i.acj = fmul fast float %i.ya, %i.abg
  %i.ack = fadd fast float %i.aci, %i.acj
  %i.acl = fmul fast float %i.abk, %i.zn
  %i.acm = fsub fast float %i.ack, %i.acl
  %i.acn = fmul fast float %i.abr, %i.zz
  %i.aco = fmul fast float %i.aby, %i.aae
  %i.acp = fadd fast float %i.aco, %i.acn
  %i.acq = fmul fast float %i.acf, %i.aaj
  %i.acr = fadd fast float %i.acp, %i.acq
  %i.acs = fmul fast float %i.aal, %i.acm
  %i.act = fsub fast float %i.acr, %i.acs
  store float %i.act, ptr %.1101581, align 4, !tbaa !43
  %i.acu = getelementptr inbounds nuw i8, ptr %.1101581, i64 4 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.199582, i64 4 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.1583, i64 4 ; 2 uses
  %i.acx = add nuw nsw i32 %.095584, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.acx, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !162

._crit_edge593.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc109.lr.ph, %.noexc109.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge593.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not313 = icmp sgt i32 %i.k, %i.j
  br i1 %.not313, label %._crit_edge.split, label %.noexc122.lr.ph

.noexc122.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !178 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !178 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38, !noalias !178 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !41, !noalias !178
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !178
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !178 ; 2 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.o to i64
  %i.y = load ptr, ptr %4, align 8, !tbaa !41, !noalias !179
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40, !noalias !179
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39, !noalias !179
  %factor.op.mul315 = mul i64 %i.aa, %i.ac
  %i.ad = load ptr, ptr %5, align 8, !tbaa !41, !noalias !180 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40, !noalias !181 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !39, !noalias !181 ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = shl i64 %i.ag, 1
  %i.al = mul i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = mul i64 %i.v, %i.w                      ; 9 uses
  %i.aq = mul i64 %i.ap, %i.x                     ; 8 uses
  br i1 %i.ao, label %.noexc122.lr.ph.split, label %._crit_edge.split

.noexc122.lr.ph.split:                            ; preds = %.noexc122.lr.ph
  %i.ar = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.noexc122.lr.ph.split.split, label %._crit_edge.split

.noexc122.lr.ph.split.split:                      ; preds = %.noexc122.lr.ph.split
  %i.at = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.noexc122.us.preheader, label %._crit_edge.split

.noexc122.us.preheader:                           ; preds = %.noexc122.lr.ph.split.split
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %.noexc122.us

.noexc122.us:                                     ; preds = %.noexc122.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us
  %indvars.iv = phi i64 [ %i.av, %.noexc122.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass.us ; 8 uses
  %.reass316.us = mul i64 %factor.op.mul315, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass316.us
  br label %.preheader284.us.us

.preheader284.us.us:                              ; preds = %._crit_edge298.split.us.us.us, %.noexc122.us
  %.099310.us.us = phi ptr [ %i.ay, %.noexc122.us ], [ %i.gi, %._crit_edge298.split.us.us.us ]
  %.0100309.us.us = phi ptr [ %i.ad, %.noexc122.us ], [ %i.gj, %._crit_edge298.split.us.us.us ]
  %.0103308.us.us = phi ptr [ %i.aj, %.noexc122.us ], [ %i.gk, %._crit_edge298.split.us.us.us ]
  %.0106307.us.us = phi ptr [ %i.am, %.noexc122.us ], [ %i.gl, %._crit_edge298.split.us.us.us ]
  %.0109306.us.us = phi i32 [ 0, %.noexc122.us ], [ %i.go, %._crit_edge298.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader284.us.us
  %.1297.us.us.us = phi ptr [ %.099310.us.us, %.preheader284.us.us ], [ %i.gi, %._crit_edge.us.us.us ]
  %.1101296.us.us.us = phi ptr [ %.0100309.us.us, %.preheader284.us.us ], [ %i.gj, %._crit_edge.us.us.us ]
  %.1104295.us.us.us = phi ptr [ %.0103308.us.us, %.preheader284.us.us ], [ %i.gk, %._crit_edge.us.us.us ]
  %.1107294.us.us.us = phi ptr [ %.0106307.us.us, %.preheader284.us.us ], [ %i.gl, %._crit_edge.us.us.us ]
  %.0111293.us.us.us = phi i32 [ 0, %.preheader284.us.us ], [ %i.gn, %._crit_edge.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us, %.preheader.us.us.us
  %.2289.us.us.us = phi ptr [ %.1297.us.us.us, %.preheader.us.us.us ], [ %i.gi, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2102288.us.us.us = phi ptr [ %.1101296.us.us.us, %.preheader.us.us.us ], [ %i.gj, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2105287.us.us.us = phi ptr [ %.1104295.us.us.us, %.preheader.us.us.us ], [ %i.gk, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2108286.us.us.us = phi ptr [ %.1107294.us.us.us, %.preheader.us.us.us ], [ %i.gl, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.0110285.us.us.us = phi i32 [ 0, %.preheader.us.us.us ], [ %i.gm, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ]
  %i.az = load float, ptr %.2102288.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.ba = load float, ptr %.2105287.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bb = load float, ptr %.2108286.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bc = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.az)
  %i.bd = fptosi float %i.bc to i32               ; 9 uses
  %i.be = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.ba)
  %i.bf = fptosi float %i.be to i32               ; 9 uses
  %i.bg = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bb)
  %i.bh = fptosi float %i.bg to i32               ; 11 uses
  %i.bi = add nsw i32 %i.bd, 1                    ; 7 uses
  %i.bj = add nsw i32 %i.bf, 1                    ; 7 uses
  %i.bk = add nsw i32 %i.bh, 1                    ; 9 uses
  %i.bl = or i32 %i.bf, %i.bd                     ; 2 uses
  %i.bm = or i32 %i.bl, %i.bh
  %or.cond3.i.i.us.us.us = icmp sgt i32 %i.bm, -1
  %i.bn = icmp sgt i32 %i.m, %i.bd                ; 4 uses
  %or.cond.i.i.us.us.us = select i1 %or.cond3.i.i.us.us.us, i1 %i.bn, i1 false
  %i.bo = icmp sgt i32 %i.o, %i.bf                ; 4 uses
  %or.cond17.i.i.us.us.us = select i1 %or.cond.i.i.us.us.us, i1 %i.bo, i1 false
  %i.bp = icmp sgt i32 %i.q, %i.bh                ; 4 uses
  %i.bq = select i1 %or.cond17.i.i.us.us.us, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnn3MatD2Ev.exit.i.us.us.us:                 ; preds = %bb.c
  %9 = sext i32 %i.bh to i64
  %i.br = mul i64 %i.aq, %9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  %i.bt = sext i32 %i.bf to i64
  %i.bu = mul i64 %i.ap, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  %i.bw = sext i32 %i.bd to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, %bb.c
  %i.bz = phi float [ %i.by, %_ZN4ncnn3MatD2Ev.exit.i.us.us.us ], [ 0.000000e+00, %bb.c ]
  %i.ca = or i32 %i.bi, %i.bf                     ; 2 uses
  %i.cb = or i32 %i.ca, %i.bh
  %or.cond3.i.i149.us.us.us = icmp sgt i32 %i.cb, -1
  %i.cc = icmp slt i32 %i.bi, %i.m                ; 4 uses
  %or.cond.i.i150.us.us.us = select i1 %or.cond3.i.i149.us.us.us, i1 %i.cc, i1 false
  %or.cond17.i.i151.us.us.us = select i1 %or.cond.i.i150.us.us.us, i1 %i.bo, i1 false
  %i.cd = select i1 %or.cond17.i.i151.us.us.us, i1 %i.bp, i1 false
  br i1 %i.cd, label %_ZN4ncnn3MatD2Ev.exit.i152.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us

_ZN4ncnn3MatD2Ev.exit.i152.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us
  %10 = sext i32 %i.bh to i64
  %i.ce = mul i64 %i.aq, %10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ce
  %i.cg = sext i32 %i.bf to i64
  %i.ch = mul i64 %i.ap, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch
  %i.cj = sext i32 %i.bi to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i152.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us
  %i.cm = phi float [ %i.cl, %_ZN4ncnn3MatD2Ev.exit.i152.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ]
  %i.cn = or i32 %i.bj, %i.bd                     ; 2 uses
  %i.co = or i32 %i.cn, %i.bh
  %or.cond3.i.i154.us.us.us = icmp sgt i32 %i.co, -1
  %or.cond.i.i155.us.us.us = select i1 %or.cond3.i.i154.us.us.us, i1 %i.bn, i1 false
  %i.cp = icmp slt i32 %i.bj, %i.o                ; 4 uses
  %or.cond17.i.i156.us.us.us = select i1 %or.cond.i.i155.us.us.us, i1 %i.cp, i1 false
  %i.cq = select i1 %or.cond17.i.i156.us.us.us, i1 %i.bp, i1 false
  br i1 %i.cq, label %_ZN4ncnn3MatD2Ev.exit.i157.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit158.us.us.us

_ZN4ncnn3MatD2Ev.exit.i157.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us
  %11 = sext i32 %i.bh to i64
  %i.cr = mul i64 %i.aq, %11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cr
  %i.ct = sext i32 %i.bj to i64
  %i.cu = mul i64 %i.ap, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu
  %i.cw = sext i32 %i.bd to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit158.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit158.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i157.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us
  %i.cz = phi float [ %i.cy, %_ZN4ncnn3MatD2Ev.exit.i157.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us ]
  %i.da = or i32 %i.bj, %i.bi                     ; 2 uses
  %i.db = or i32 %i.da, %i.bh
  %or.cond3.i.i159.us.us.us = icmp sgt i32 %i.db, -1
  %or.cond.i.i160.us.us.us = select i1 %or.cond3.i.i159.us.us.us, i1 %i.cc, i1 false
  %or.cond17.i.i161.us.us.us = select i1 %or.cond.i.i160.us.us.us, i1 %i.cp, i1 false
  %i.dc = select i1 %or.cond17.i.i161.us.us.us, i1 %i.bp, i1 false
  br i1 %i.dc, label %_ZN4ncnn3MatD2Ev.exit.i162.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit163.us.us.us

_ZN4ncnn3MatD2Ev.exit.i162.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit158.us.us.us
  %12 = sext i32 %i.bh to i64
  %i.dd = mul i64 %i.aq, %12
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dd
  %i.df = sext i32 %i.bj to i64
  %i.dg = mul i64 %i.ap, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  %i.di = sext i32 %i.bi to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit163.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit163.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i162.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit158.us.us.us
  %i.dl = phi float [ %i.dk, %_ZN4ncnn3MatD2Ev.exit.i162.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit158.us.us.us ]
  %i.dm = or i32 %i.bk, %i.bl
  %or.cond3.i.i164.us.us.us = icmp sgt i32 %i.dm, -1
  %or.cond.i.i165.us.us.us = select i1 %or.cond3.i.i164.us.us.us, i1 %i.bn, i1 false
  %or.cond17.i.i166.us.us.us = select i1 %or.cond.i.i165.us.us.us, i1 %i.bo, i1 false
  %i.dn = icmp slt i32 %i.bk, %i.q                ; 4 uses
  %i.do = select i1 %or.cond17.i.i166.us.us.us, i1 %i.dn, i1 false
  br i1 %i.do, label %_ZN4ncnn3MatD2Ev.exit.i167.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit168.us.us.us

_ZN4ncnn3MatD2Ev.exit.i167.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit163.us.us.us
  %13 = sext i32 %i.bk to i64
  %i.dp = mul i64 %i.aq, %13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dp
  %i.dr = sext i32 %i.bf to i64
  %i.ds = mul i64 %i.ap, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds
  %i.du = sext i32 %i.bd to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit168.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit168.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i167.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit163.us.us.us
  %i.dx = phi float [ %i.dw, %_ZN4ncnn3MatD2Ev.exit.i167.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit163.us.us.us ]
  %i.dy = or i32 %i.bk, %i.ca
  %or.cond3.i.i169.us.us.us = icmp sgt i32 %i.dy, -1
  %or.cond.i.i170.us.us.us = select i1 %or.cond3.i.i169.us.us.us, i1 %i.cc, i1 false
  %or.cond17.i.i171.us.us.us = select i1 %or.cond.i.i170.us.us.us, i1 %i.bo, i1 false
  %i.dz = select i1 %or.cond17.i.i171.us.us.us, i1 %i.dn, i1 false
  br i1 %i.dz, label %_ZN4ncnn3MatD2Ev.exit.i172.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit173.us.us.us

_ZN4ncnn3MatD2Ev.exit.i172.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit168.us.us.us
  %14 = sext i32 %i.bk to i64
  %i.ea = mul i64 %i.aq, %14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ea
  %i.ec = sext i32 %i.bf to i64
  %i.ed = mul i64 %i.ap, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  %i.ef = sext i32 %i.bi to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit173.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit173.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i172.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit168.us.us.us
  %i.ei = phi float [ %i.eh, %_ZN4ncnn3MatD2Ev.exit.i172.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit168.us.us.us ]
  %i.ej = or i32 %i.cn, %i.bk
  %or.cond3.i.i174.us.us.us = icmp sgt i32 %i.ej, -1
  %or.cond.i.i175.us.us.us = select i1 %or.cond3.i.i174.us.us.us, i1 %i.bn, i1 false
  %or.cond17.i.i176.us.us.us = select i1 %or.cond.i.i175.us.us.us, i1 %i.cp, i1 false
  %i.ek = select i1 %or.cond17.i.i176.us.us.us, i1 %i.dn, i1 false
  br i1 %i.ek, label %_ZN4ncnn3MatD2Ev.exit.i177.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit178.us.us.us

_ZN4ncnn3MatD2Ev.exit.i177.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit173.us.us.us
  %15 = sext i32 %i.bk to i64
  %i.el = mul i64 %i.aq, %15
  %i.em = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.el
  %i.en = sext i32 %i.bj to i64
  %i.eo = mul i64 %i.ap, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eo
  %i.eq = sext i32 %i.bd to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit178.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit178.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i177.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit173.us.us.us
  %i.et = phi float [ %i.es, %_ZN4ncnn3MatD2Ev.exit.i177.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit173.us.us.us ]
  %i.eu = or i32 %i.da, %i.bk
  %or.cond3.i.i179.us.us.us = icmp sgt i32 %i.eu, -1
  %or.cond.i.i180.us.us.us = select i1 %or.cond3.i.i179.us.us.us, i1 %i.cc, i1 false
  %or.cond17.i.i181.us.us.us = select i1 %or.cond.i.i180.us.us.us, i1 %i.cp, i1 false
  %i.ev = select i1 %or.cond17.i.i181.us.us.us, i1 %i.dn, i1 false
  br i1 %i.ev, label %_ZN4ncnn3MatD2Ev.exit.i182.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us

_ZN4ncnn3MatD2Ev.exit.i182.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit178.us.us.us
  %16 = sext i32 %i.bk to i64
  %i.ew = mul i64 %i.aq, %16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ew
  %i.ey = sext i32 %i.bj to i64
  %i.ez = mul i64 %i.ap, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  %i.fb = sext i32 %i.bi to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i182.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit178.us.us.us
  %i.fe = phi float [ %i.fd, %_ZN4ncnn3MatD2Ev.exit.i182.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit178.us.us.us ]
  %i.ff = sitofp fast i32 %i.bd to float
  %i.fg = fsub fast float %i.az, %i.ff            ; 5 uses
  %i.fh = sitofp fast i32 %i.bf to float
  %i.fi = fsub fast float %i.ba, %i.fh            ; 3 uses
  %i.fj = sitofp fast i32 %i.bh to float
  %i.fk = fsub fast float %i.bb, %i.fj
  %i.fl = fsub fast float 1.000000e+00, %i.fg     ; 4 uses
  %i.fm = fmul fast float %i.bz, %i.fl
  %i.fn = fmul fast float %i.cm, %i.fg
  %i.fo = fadd fast float %i.fn, %i.fm
  %i.fp = fmul fast float %i.cz, %i.fl
  %i.fq = fmul fast float %i.dl, %i.fg
  %i.fr = fadd fast float %i.fq, %i.fp
  %i.fs = fmul fast float %i.dx, %i.fl
  %i.ft = fmul fast float %i.ei, %i.fg
  %i.fu = fadd fast float %i.ft, %i.fs
  %i.fv = fmul fast float %i.et, %i.fl
  %i.fw = fmul fast float %i.fe, %i.fg
  %i.fx = fadd fast float %i.fw, %i.fv
  %i.fy = fsub fast float 1.000000e+00, %i.fi     ; 2 uses
  %i.fz = fmul fast float %i.fo, %i.fy
  %i.ga = fmul fast float %i.fr, %i.fi
  %i.gb = fadd fast float %i.ga, %i.fz            ; 2 uses
  %i.gc = fmul fast float %i.fu, %i.fy
  %i.gd = fmul fast float %i.fx, %i.fi
  %i.ge = fsub fast float %i.gc, %i.gb
  %i.gf = fadd fast float %i.ge, %i.gd
  %i.gg = fmul fast float %i.gf, %i.fk
  %i.gh = fadd fast float %i.gg, %i.gb
  store float %i.gh, ptr %.2289.us.us.us, align 4, !tbaa !43
  %i.gi = getelementptr inbounds nuw i8, ptr %.2289.us.us.us, i64 4 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.2102288.us.us.us, i64 4 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.2105287.us.us.us, i64 4 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.2108286.us.us.us, i64 4 ; 3 uses
  %i.gm = add nuw nsw i32 %.0110285.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.gm, %i.at
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !175

._crit_edge.us.us.us:                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us
  %i.gn = add nuw nsw i32 %.0111293.us.us.us, 1   ; 2 uses
  %exitcond324.not = icmp eq i32 %i.gn, %i.ar
  br i1 %exitcond324.not, label %._crit_edge298.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !176

._crit_edge298.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.go = add nuw nsw i32 %.0109306.us.us, 1      ; 2 uses
  %exitcond325.not = icmp eq i32 %i.go, %i.an
  br i1 %exitcond325.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us, label %.preheader284.us.us, !llvm.loop !177

._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us:  ; preds = %._crit_edge298.split.us.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond327.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond327.not, label %._crit_edge.split, label %.noexc122.us

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us, %.noexc122.lr.ph.split.split, %.noexc122.lr.ph, %.noexc122.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not184 = icmp sgt i32 %i.k, %i.j
  br i1 %.not184, label %._crit_edge.split, label %.noexc64.lr.ph

.noexc64.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !193 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !193 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38, !noalias !193
  %i.r = load ptr, ptr %3, align 8, !tbaa !41, !noalias !193
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !193
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !193 ; 2 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.o to i64
  %i.y = load ptr, ptr %4, align 8, !tbaa !41, !noalias !194
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40, !noalias !194
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39, !noalias !194
  %factor.op.mul186 = mul i64 %i.aa, %i.ac
  %i.ad = load ptr, ptr %5, align 8, !tbaa !41, !noalias !195 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40, !noalias !196 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !39, !noalias !196 ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = shl i64 %i.ag, 1
  %i.al = mul i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = mul i64 %i.v, %i.w                      ; 2 uses
  %i.aq = mul i64 %i.ap, %i.x
  br i1 %i.ao, label %.noexc64.lr.ph.split, label %._crit_edge.split

.noexc64.lr.ph.split:                             ; preds = %.noexc64.lr.ph
  %i.ar = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.noexc64.lr.ph.split.split, label %._crit_edge.split

.noexc64.lr.ph.split.split:                       ; preds = %.noexc64.lr.ph.split
  %i.at = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.noexc64.us.preheader, label %._crit_edge.split

.noexc64.us.preheader:                            ; preds = %.noexc64.lr.ph.split.split
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %.noexc64.us

.noexc64.us:                                      ; preds = %.noexc64.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us
  %indvars.iv = phi i64 [ %i.av, %.noexc64.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass.us
  %.reass187.us = mul i64 %factor.op.mul186, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass187.us
  br label %.preheader155.us.us

.preheader155.us.us:                              ; preds = %._crit_edge169.split.us.us.us, %.noexc64.us
  %.042181.us.us = phi i32 [ 0, %.noexc64.us ], [ %i.cg, %._crit_edge169.split.us.us.us ]
  %.043180.us.us = phi ptr [ %i.am, %.noexc64.us ], [ %i.cd, %._crit_edge169.split.us.us.us ]
  %.044179.us.us = phi ptr [ %i.aj, %.noexc64.us ], [ %i.cc, %._crit_edge169.split.us.us.us ]
  %.047178.us.us = phi ptr [ %i.ad, %.noexc64.us ], [ %i.cb, %._crit_edge169.split.us.us.us ]
  %.050177.us.us = phi ptr [ %i.ay, %.noexc64.us ], [ %i.ca, %._crit_edge169.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader155.us.us
  %.041168.us.us.us = phi i32 [ 0, %.preheader155.us.us ], [ %i.cf, %._crit_edge.us.us.us ]
  %.1167.us.us.us = phi ptr [ %.043180.us.us, %.preheader155.us.us ], [ %i.cd, %._crit_edge.us.us.us ]
  %.145166.us.us.us = phi ptr [ %.044179.us.us, %.preheader155.us.us ], [ %i.cc, %._crit_edge.us.us.us ]
  %.148165.us.us.us = phi ptr [ %.047178.us.us, %.preheader155.us.us ], [ %i.cb, %._crit_edge.us.us.us ]
  %.151164.us.us.us = phi ptr [ %.050177.us.us, %.preheader155.us.us ], [ %i.ca, %._crit_edge.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us, %.preheader.us.us.us
  %.0160.us.us.us = phi i32 [ 0, %.preheader.us.us.us ], [ %i.ce, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ]
  %.2159.us.us.us = phi ptr [ %.1167.us.us.us, %.preheader.us.us.us ], [ %i.cd, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %.246158.us.us.us = phi ptr [ %.145166.us.us.us, %.preheader.us.us.us ], [ %i.cc, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %.249157.us.us.us = phi ptr [ %.148165.us.us.us, %.preheader.us.us.us ], [ %i.cb, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %.252156.us.us.us = phi ptr [ %.151164.us.us.us, %.preheader.us.us.us ], [ %i.ca, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %i.az = load float, ptr %.249157.us.us.us, align 4, !tbaa !43
  %i.ba = load float, ptr %.246158.us.us.us, align 4, !tbaa !43
  %i.bb = load float, ptr %.2159.us.us.us, align 4, !tbaa !43
  %i.bc = fadd fast float %i.az, 5.000000e-01
  %i.bd = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bc)
  %i.be = fptosi float %i.bd to i32               ; 3 uses
  %i.bf = fadd fast float %i.ba, 5.000000e-01
  %i.bg = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bf)
  %i.bh = fptosi float %i.bg to i32               ; 3 uses
  %i.bi = fadd fast float %i.bb, 5.000000e-01
  %i.bj = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bi)
  %i.bk = fptosi float %i.bj to i32               ; 3 uses
  %i.bl = or i32 %i.bh, %i.be
  %i.bm = or i32 %i.bl, %i.bk
  %or.cond3.i.i.us.us.us = icmp sgt i32 %i.bm, -1
  %i.bn = icmp sgt i32 %i.m, %i.be
  %or.cond.i.i.us.us.us = select i1 %or.cond3.i.i.us.us.us, i1 %i.bn, i1 false
  %i.bo = icmp sgt i32 %i.o, %i.bh
  %or.cond17.i.i.us.us.us = select i1 %or.cond.i.i.us.us.us, i1 %i.bo, i1 false
  %i.bp = icmp sgt i32 %i.q, %i.bk
  %i.bq = select i1 %or.cond17.i.i.us.us.us, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnn3MatD2Ev.exit.i.us.us.us:                 ; preds = %bb.c
  %9 = sext i32 %i.bk to i64
  %i.br = mul i64 %i.aq, %9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  %i.bt = sext i32 %i.bh to i64
  %i.bu = mul i64 %i.ap, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  %i.bw = sext i32 %i.be to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, %bb.c
  %i.bz = phi float [ %i.by, %_ZN4ncnn3MatD2Ev.exit.i.us.us.us ], [ 0.000000e+00, %bb.c ]
  store float %i.bz, ptr %.252156.us.us.us, align 4, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %.252156.us.us.us, i64 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.249157.us.us.us, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.246158.us.us.us, i64 4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2159.us.us.us, i64 4 ; 3 uses
  %i.ce = add nuw nsw i32 %.0160.us.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %i.at
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !190

._crit_edge.us.us.us:                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us
  %i.cf = add nuw nsw i32 %.041168.us.us.us, 1    ; 2 uses
  %exitcond195.not = icmp eq i32 %i.cf, %i.ar
  br i1 %exitcond195.not, label %._crit_edge169.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !191

._crit_edge169.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.cg = add nuw nsw i32 %.042181.us.us, 1       ; 2 uses
  %exitcond196.not = icmp eq i32 %i.cg, %i.an
  br i1 %exitcond196.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us, label %.preheader155.us.us, !llvm.loop !192

._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us:  ; preds = %._crit_edge169.split.us.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond198.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond198.not, label %._crit_edge.split, label %.noexc64.us

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us, %.noexc64.lr.ph.split.split, %.noexc64.lr.ph, %.noexc64.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"_ZTSN4ncnn10GridSampleE", !25, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!27 = !{!26, !6, i64 208}
!28 = !{!26, !6, i64 212}
!29 = !{!26, !6, i64 216}
!30 = !{!26, !6, i64 220}
!31 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!34 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !33, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!35 = !{!34, !6, i64 44}
!36 = !{!6, !6, i64 0}
!37 = !{!34, !6, i64 48}
!38 = !{!34, !6, i64 52}
!39 = !{!34, !13, i64 16}
!40 = !{!34, !13, i64 64}
!41 = !{!34, !10, i64 0}
!42 = !{!"float", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"vtable pointer", !4, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{i64 2, i64 -1, i64 -1, i1 true}
!48 = !{!47}
!49 = distinct !{!49, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!50 = distinct !{!50, !49, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !51, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !44, !107, !108}
!58 = distinct !{!58, !44, !107}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !44, !107, !108}
!65 = distinct !{!65, !44, !107}
!66 = distinct !{!66, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!67 = distinct !{!67, !66, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!69 = distinct !{!69, !68, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!70 = distinct !{!70, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!71 = distinct !{!71, !70, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, !44, !107, !108}
!73 = distinct !{!73, !44, !107}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44, !107, !108}
!76 = distinct !{!76, !44, !107}
!77 = distinct !{null}
!78 = distinct !{!78, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !78, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !80, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
end_hunk_0
