Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.bok = select i1 %i.boj, i32 -5592406, i32 -2136298838 ; 3 uses
  %.sroa.0658.0.vec.extract.i = extractelement <2 x float> %.sroa.0658.0.copyload661.i, i64 0 ; 2 uses
  %.sroa.10664.8.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 0 ; 3 uses
  %.sroa.10664.12.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 1
  %foldExtExtBinop246 = fmul <2 x float> %.sroa.0658.0.copyload661.i, %.sroa.0658.0.copyload661.i
  %i.bol = extractelement <2 x float> %foldExtExtBinop246, i64 1
  %i.bom = call float @llvm.fmuladd.f32(float %.sroa.0658.0.vec.extract.i, float %.sroa.0658.0.vec.extract.i, float %i.bol)
  %i.bon = call float @llvm.fmuladd.f32(float %.sroa.10664.8.vec.extract.i, float %.sroa.10664.8.vec.extract.i, float %i.bom)
  %sqrt.i.i.i.i.i98 = call float @llvm.sqrt.f32(float %i.bon)
  %i.boo = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i98 ; 3 uses
  %i.bop = insertelement <2 x float> poison, float %i.boo, i64 0
  %i.boq = shufflevector <2 x float> %i.bop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bor = fmul <2 x float> %.sroa.0658.0.copyload661.i, %i.boq ; 5 uses
  %i.bos = fmul float %.sroa.10664.8.vec.extract.i, %i.boo ; 3 uses
  %i.bot = fmul float %.sroa.10664.12.vec.extract.i, %i.boo ; 2 uses
  %i.bou = insertelement <2 x float> poison, float %i.bos, i64 0 ; 2 uses
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bnm
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bnn
  %.pre715.i = load float, ptr %44, align 4, !tbaa !16
  %i.box = extractelement <2 x float> %i.bor, i64 0 ; 2 uses
  %i.boy = extractelement <2 x float> %i.bor, i64 1
  %i.boz = load float, ptr %i.bly, align 4, !tbaa !16 ; 2 uses
  %i.bpa = load float, ptr %i.blz, align 4, !tbaa !16 ; 2 uses
  %i.bpb = load float, ptr %i.bma, align 4, !tbaa !16 ; 2 uses
  %i.bpc = load float, ptr %i.bmb, align 4, !tbaa !16 ; 2 uses
  %i.bpd = load float, ptr %i.bmc, align 4, !tbaa !16 ; 2 uses
  %i.bpe = insertelement <2 x float> poison, float %i.bpb, i64 0
  %i.bpf = shufflevector <2 x float> %i.bpe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpg = insertelement <2 x float> poison, float %i.bpa, i64 0
  %i.bph = shufflevector <2 x float> %i.bpg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpi = insertelement <2 x float> poison, float %i.bpc, i64 0
  %i.bpj = shufflevector <2 x float> %i.bpi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpk = insertelement <2 x float> poison, float %i.bpd, i64 0
  %i.bpl = shufflevector <2 x float> %i.bpk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpm = load <2 x float>, ptr %i.blv, align 4, !tbaa !16 ; 3 uses
  %i.bpn = shufflevector <2 x float> %i.bpm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bpo = insertelement <4 x float> poison, float %i.boz, i64 1
  %i.bpp = load <2 x float>, ptr %i.blw, align 4, !tbaa !16 ; 3 uses
  %i.bpq = shufflevector <2 x float> %i.bpp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bpr = load <2 x float>, ptr %i.blx, align 4, !tbaa !16 ; 3 uses
  %i.bps = shufflevector <2 x float> %i.bpr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bpt = extractelement <2 x float> %i.bpm, i64 0
  %i.bpu = extractelement <2 x float> %i.bpp, i64 0
  %i.bpv = extractelement <2 x float> %i.bpr, i64 0
  %i.bpw = extractelement <2 x float> %i.bpm, i64 1
  %i.bpx = extractelement <2 x float> %i.bpp, i64 1
  %i.bpy = extractelement <2 x float> %i.bpr, i64 1
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i
  %i.bpz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35, !noundef !36
  %i.bqa = trunc nuw i8 %i.bpz to i1
  br i1 %i.bqa, label %bb.cr, label %bb.dm

bb.cc:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i, %.backedge
  %i.bqb = phi float [ %.pre715.i, %.backedge ], [ %i.bzl, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i ] ; 9 uses
  %indvars.iv700.i = phi i64 [ 0, %.backedge ], [ %indvars.iv.next701.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.bqc = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %indvars.iv700.i ; 4 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bqc, i64 4
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bqc, i64 8
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !9 ; 3 uses
  %i.bqd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 3 uses
  %i.bqe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 5 uses
  %indvars.iv.next701.i = add nuw nsw i64 %indvars.iv700.i, 1 ; 3 uses
  %i.bqf = and i64 %indvars.iv.next701.i, 3
  %i.bqg = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bqf ; 3 uses
  %.sroa.12.0..sroa_idx.i219.i = getelementptr inbounds nuw i8, ptr %i.bqg, i64 4
  %.sroa.22.0..sroa_idx.i221.i = getelementptr inbounds nuw i8, ptr %i.bqg, i64 8
  %.sroa.22.0.copyload.i222.i = load float, ptr %.sroa.22.0..sroa_idx.i221.i, align 8, !tbaa !9 ; 3 uses
  %i.bqh = load <2 x float>, ptr %i.bqc, align 16, !tbaa !9 ; 4 uses
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !9 ; 2 uses
  %i.bqi = load <2 x float>, ptr %i.bqg, align 16, !tbaa !9 ; 4 uses
  %.sroa.12.0.copyload.i220.i = load float, ptr %.sroa.12.0..sroa_idx.i219.i, align 4, !tbaa !9 ; 2 uses
  %i.bqj = shufflevector <2 x float> %i.bqh, <2 x float> %i.bqi, <2 x i32> <i32 1, i32 3>
  %i.bqk = fmul <2 x float> %i.bpf, %i.bqj
  %i.bql = shufflevector <2 x float> %i.bqh, <2 x float> %i.bqi, <2 x i32> <i32 0, i32 2>
  %i.bqm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bql, <2 x float> %i.bph, <2 x float> %i.bqk)
  %i.bqn = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i.i, i64 0
  %i.bqo = insertelement <2 x float> %i.bqn, float %.sroa.22.0.copyload.i222.i, i64 1
  %i.bqp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqo, <2 x float> %i.bpj, <2 x float> %i.bqm)
  %i.bqq = fadd <2 x float> %i.bpl, %i.bqp
  %i.bqr = fdiv <2 x float> splat (float 5.000000e-01), %i.bqq
  %i.bqs = insertelement <4 x float> poison, float %.sroa.12.0.copyload.i.i, i64 0
  %i.bqt = insertelement <4 x float> %i.bqs, float %.sroa.12.0.copyload.i220.i, i64 1
  %i.bqu = shufflevector <4 x float> %i.bqt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bqv = fmul <4 x float> %i.bpn, %i.bqu
  %i.bqw = shufflevector <2 x float> %i.bqh, <2 x float> %i.bqi, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.bqx = insertelement <4 x float> %i.bpo, float %i.bqb, i64 0
  %i.bqy = shufflevector <4 x float> %i.bqx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bqz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bqw, <4 x float> %i.bqy, <4 x float> %i.bqv)
  %i.bra = insertelement <4 x float> poison, float %.sroa.22.0.copyload.i.i, i64 0
  %i.brb = insertelement <4 x float> %i.bra, float %.sroa.22.0.copyload.i222.i, i64 1
  %i.brc = shufflevector <4 x float> %i.brb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.brd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brc, <4 x float> %i.bpq, <4 x float> %i.bqz)
  %i.bre = fadd <4 x float> %i.bps, %i.brd
  %i.brf = shufflevector <2 x float> %i.bqr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.brg = fmul <4 x float> %i.bre, %i.brf        ; 3 uses
  %i.brh = shufflevector <4 x float> %i.brg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bri = insertelement <2 x float> %i.brh, float 1.000000e+00, i64 1
  %i.brj = shufflevector <4 x float> %i.brg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.brk = fadd <2 x float> %i.brj, splat (float 5.000000e-01) ; 2 uses
  %i.brl = shufflevector <2 x float> <float -5.000000e-01, float poison>, <2 x float> %i.brk, <2 x i32> <i32 0, i32 2>
  %i.brm = fsub <2 x float> %i.bri, %i.brl
  %i.brn = fmul <2 x float> %i.bqd, %i.brm
  %i.bro = fadd <2 x float> %i.bqe, %i.brn        ; 5 uses
  store <2 x float> %i.bro, ptr %45, align 8
  %i.brp = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.brg, <2 x i32> <i32 5, i32 1>
  %i.brq = insertelement <2 x float> %i.brk, float -5.000000e-01, i64 0
  %i.brr = fsub <2 x float> %i.brp, %i.brq
  %i.brs = fmul <2 x float> %i.bqd, %i.brr
  %i.brt = extractelement <2 x float> %i.bqe, i64 0 ; 2 uses
  %i.bru = fadd <2 x float> %i.bqe, %i.brs        ; 4 uses
  %i.brv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 980), align 4, !tbaa !29 ; 2 uses
  %i.brw = extractelement <2 x float> %i.bro, i64 0 ; 2 uses
  %i.brx = fcmp oge float %i.brw, %i.brt
  %i.bry = fcmp ole float %i.brw, %i.brv
  %i.brz = and i1 %i.brx, %i.bry
  br i1 %i.brz, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i:    ; preds = %bb.cc
  %i.bsa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 984), align 8, !tbaa !30 ; 2 uses
  %i.bsb = extractelement <2 x float> %i.bro, i64 1 ; 3 uses
  %i.bsc = extractelement <2 x float> %i.bqe, i64 1 ; 2 uses
  %i.bsd = fcmp oge float %i.bsb, %i.bsc
  %i.bse = fcmp ole float %i.bsb, %i.bsa
  %i.bsf = and i1 %i.bsd, %i.bse
  %i.bsg = extractelement <2 x float> %i.bru, i64 0 ; 2 uses
  %i.bsh = fcmp oge float %i.bsg, %i.brt
  %i.bsi = fcmp ole float %i.bsg, %i.brv
  %i.bsj = and i1 %i.bsh, %i.bsi
  %or.cond277 = select i1 %i.bsf, i1 %i.bsj, i1 false
  br i1 %or.cond277, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i: ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i
  %i.bsk = extractelement <2 x float> %i.bru, i64 1 ; 3 uses
  %i.bsl = fcmp oge float %i.bsk, %i.bsc
  %i.bsm = fcmp ole float %i.bsk, %i.bsa
  %i.bsn = and i1 %i.bsl, %i.bsm
  br i1 %i.bsn, label %bb.cd, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

bb.cd:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i
  %foldExtExtBinop248 = fsub <2 x float> %i.bro, %i.bru
  %i.bso = extractelement <2 x float> %foldExtExtBinop248, i64 0 ; 2 uses
  %i.bsp = fsub float %i.bsb, %i.bsk              ; 2 uses
  %i.bsq = fmul float %i.bsp, %i.bsp
  %i.bsr = call noundef float @llvm.fmuladd.f32(float %i.bso, float %i.bso, float %i.bsq)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bsr)
  %i.bss = fdiv float %sqrt.i, 1.000000e+01
  %i.bst = fptosi float %i.bss to i32             ; 2 uses
  %i.bsu = call noundef i32 @llvm.smin.i32(i32 %i.bst, i32 1000) ; 2 uses
  %i.bsv = sitofp i32 %i.bsu to float
  %i.bsw = fdiv float 1.000000e+00, %i.bsv        ; 3 uses
  %i.bsx = icmp sgt i32 %i.bst, 0
  br i1 %i.bsx, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.cd
  %i.bsy = fmul nnan float %i.bsw, 5.000000e-01
  br label %bb.ce

._crit_edge.loopexit.i:                           ; preds = %bb.ce
  %i.bsz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9
  %i.bta = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9
  %i.btb = load <2 x float>, ptr %45, align 8, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.cd
  %i.btc = phi <2 x float> [ %i.btb, %._crit_edge.loopexit.i ], [ %i.bro, %bb.cd ] ; 2 uses
  %i.btd = phi <2 x float> [ %i.bta, %._crit_edge.loopexit.i ], [ %i.bqe, %bb.cd ]
  %i.bte = phi <2 x float> [ %i.bsz, %._crit_edge.loopexit.i ], [ %i.bqd, %bb.cd ]
  %foldExtExtBinop250 = fadd <2 x float> %i.bqh, %i.bqi
  %i.btf = extractelement <2 x float> %foldExtExtBinop250, i64 0
  %i.btg = fadd float %.sroa.12.0.copyload.i.i, %.sroa.12.0.copyload.i220.i
  %i.bth = fadd float %.sroa.22.0.copyload.i.i, %.sroa.22.0.copyload.i222.i
  %i.bti = fmul float %i.btf, 5.000000e-01        ; 4 uses
  %i.btj = fmul float %i.btg, 5.000000e-01        ; 4 uses
  %i.btk = fmul float %i.bth, 5.000000e-01        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.btl = fmul float %i.bpt, %i.btj
  %i.btm = call float @llvm.fmuladd.f32(float %i.bti, float %i.bqb, float %i.btl)
  %i.btn = call float @llvm.fmuladd.f32(float %i.btk, float %i.bpu, float %i.btm)
  %i.bto = fadd float %i.bpv, %i.btn
  %i.btp = fmul float %i.bpw, %i.btj
  %i.btq = call float @llvm.fmuladd.f32(float %i.bti, float %i.boz, float %i.btp)
  %i.btr = call float @llvm.fmuladd.f32(float %i.btk, float %i.bpx, float %i.btq)
  %i.bts = fadd float %i.bpy, %i.btr
  %i.btt = fmul float %i.bpb, %i.btj
  %i.btu = call float @llvm.fmuladd.f32(float %i.bti, float %i.bpa, float %i.btt)
  %i.btv = call float @llvm.fmuladd.f32(float %i.btk, float %i.bpc, float %i.btu)
  %i.btw = fadd float %i.bpd, %i.btv
  %i.btx = fdiv float 5.000000e-01, %i.btw        ; 2 uses
  %i.bty = fmul float %i.bto, %i.btx
  %i.btz = fmul float %i.bts, %i.btx
  %i.bua = fadd float %i.btz, 5.000000e-01
  %i.bub = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bty, i64 0
  %i.buc = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bua, i64 1
  %i.bud = fsub <2 x float> %i.bub, %i.buc
  %i.bue = fmul <2 x float> %i.bud, %i.bte
  %i.buf = fadd <2 x float> %i.btd, %i.bue        ; 3 uses
  store <2 x float> %i.buf, ptr %48, align 8
  %.val191.i = load float, ptr %i.bmd, align 8, !tbaa !67
  %.val192.i = load float, ptr %i.bme, align 4, !tbaa !68
  %i.bug = shufflevector <2 x float> %i.buf, <2 x float> %i.btc, <2 x i32> <i32 0, i32 2>
  %65 = insertelement <2 x float> poison, float %.val191.i, i64 0
  %i.buh = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bui = fsub <2 x float> %i.bug, %i.buh        ; 2 uses
  %i.buj = shufflevector <2 x float> %i.buf, <2 x float> %i.btc, <2 x i32> <i32 1, i32 3>
  %66 = insertelement <2 x float> poison, float %.val192.i, i64 0
  %i.buk = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bul = fsub <2 x float> %i.buj, %i.buk        ; 2 uses
  %i.bum = fmul <2 x float> %i.bul, %i.bul
  %i.bun = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bui, <2 x float> %i.bui, <2 x float> %i.bum)
  %i.buo = fcmp ole <2 x float> %i.bun, splat (float 6.400000e+01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  switch i32 %2, label %bb.ci [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.ce:                                            ; preds = %bb.ce, %.lr.ph.i
  %.0170689.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bva, %bb.ce ] ; 2 uses
  %i.bup = uitofp nneg i32 %.0170689.i to float   ; 2 uses
  %i.buq = fmul float %i.bsw, %i.bup
  %i.bur = call float @llvm.fmuladd.f32(float %i.bup, float %i.bsw, float %i.bsy)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.bus = load <2 x float>, ptr %45, align 8, !tbaa !9 ; 3 uses
  %i.but = fsub <2 x float> %i.bru, %i.bus        ; 2 uses
  %i.buu = insertelement <2 x float> poison, float %i.buq, i64 0
  %i.buv = shufflevector <2 x float> %i.buu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.but, <2 x float> %i.buv, <2 x float> %i.bus)
  store <2 x float> %i.buw, ptr %46, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.bux = insertelement <2 x float> poison, float %i.bur, i64 0
  %i.buy = shufflevector <2 x float> %i.bux, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.but, <2 x float> %i.buy, <2 x float> %i.bus)
  store <2 x float> %i.buz, ptr %47, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47, i32 noundef %i.bok, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.bva = add nuw nsw i32 %.0170689.i, 1         ; 2 uses
  %exitcond699.not.i = icmp eq i32 %i.bva, %i.bsu
  br i1 %exitcond699.not.i, label %._crit_edge.loopexit.i, label %bb.ce, !llvm.loop !69

bb.cf:                                            ; preds = %._crit_edge.i
  %i.bvb = call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef nonnull %49)
  br label %bb.ci

bb.cg:                                            ; preds = %._crit_edge.i
  %i.bvc = call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv()
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i
  %i.bvd = call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv()
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %._crit_edge.i
  %.0166.i = phi i32 [ 0, %._crit_edge.i ], [ %i.bvb, %bb.cf ], [ %i.bvc, %bb.cg ], [ %i.bvd, %bb.ch ]
  %.not184.i = icmp eq i32 %.0166.i, 0            ; 2 uses
  %i.bve = extractelement <2 x i1> %i.buo, i64 1
  %spec.select.i106 = and i1 %i.bve, %.not184.i   ; 2 uses
  %i.bvf = extractelement <2 x i1> %i.buo, i64 0
  %spec.select185.i = and i1 %i.bvf, %.not184.i   ; 2 uses
  %i.bvg = select i1 %spec.select.i106, i32 -1978629889, i32 %i.bok
  %i.bvh = select i1 %spec.select185.i, i32 -1978629889, i32 %i.bok
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 8.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 6.800000e+00, i32 noundef %i.bvg, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 6.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 4.800000e+00, i32 noundef %i.bvh, i32 noundef 0)
  %i.bvi = trunc nuw nsw i64 %indvars.iv700.i to i32
  %i.bvj = xor i32 %i.bvi, 2                      ; 2 uses
  %i.bvk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35, !noundef !36
  %i.bvl = trunc nuw i8 %i.bvk to i1
  %.not.i107 = xor i1 %i.bvl, true
  %i.bvm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !35
  %i.bvn = trunc nuw i8 %i.bvm to i1
  %or.cond.i108 = select i1 %.not.i107, i1 %i.bvn, i1 false
  %or.cond3.i = and i1 %spec.select.i106, %or.cond.i108
  br i1 %or.cond3.i, label %bb.cj, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.cj:                                            ; preds = %bb.ci
  %i.bvo = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.bvo, label %bb.ck, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.ck:                                            ; preds = %bb.cj
  %i.bvp = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bvp, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.bvq = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.bvq, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.bvr = zext nneg i32 %i.bvj to i64
  %i.bvs = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bvr ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), ptr noundef nonnull align 16 dereferenceable(16) %i.bvs, i64 16, i1 false), !tbaa.struct !17
  %i.bvt = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8
  %i.bvu = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 820), align 4
  %i.bvv = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 824), align 8
  %i.bvw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bvx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.bvy = shufflevector <4 x float> %i.bvu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvz = fmul <4 x float> %i.bvy, %i.bvx
  %i.bwa = shufflevector <4 x float> %i.bvt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bwa, <4 x float> %i.bvw, <4 x float> %i.bvz)
  %i.bwc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.bwd = shufflevector <4 x float> %i.bvv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bwd, <4 x float> %i.bwc, <4 x float> %i.bwb)
  %i.bwf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.bwg = fadd <4 x float> %i.bwe, %i.bwf
  store <4 x float> %i.bwg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), ptr noundef nonnull align 16 dereferenceable(16) %i.bqc, i64 16, i1 false), !tbaa.struct !17
  %i.bwh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8
  %i.bwi = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 836), align 4
  %i.bwj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 840), align 8
  %i.bwk = shufflevector <4 x float> %i.bwi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwl = fmul <4 x float> %i.bvx, %i.bwk
  %i.bwm = shufflevector <4 x float> %i.bwh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bwm, <4 x float> %i.bvw, <4 x float> %i.bwl)
  %i.bwo = shufflevector <4 x float> %i.bwj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bwo, <4 x float> %i.bwc, <4 x float> %i.bwn)
  %i.bwq = fadd <4 x float> %i.bwf, %i.bwp        ; 5 uses
  store <4 x float> %i.bwq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !9
  %i.bwr = extractelement <4 x float> %i.bwq, i64 1
  %i.bws = fmul float %i.boy, %i.bwr
  %i.bwt = extractelement <4 x float> %i.bwq, i64 0
  %i.bwu = call float @llvm.fmuladd.f32(float %i.box, float %i.bwt, float %i.bws)
  %i.bwv = extractelement <4 x float> %i.bwq, i64 2
  %i.bww = call float @llvm.fmuladd.f32(float %i.bos, float %i.bwv, float %i.bwu)
  %i.bwx = extractelement <4 x float> %i.bwq, i64 3
  %i.bwy = call noundef float @llvm.fmuladd.f32(float %i.bot, float %i.bwx, float %i.bww)
  %.sroa.3.8.vec.insert.i.i110 = insertelement <2 x float> %i.bou, float %i.bwy, i64 1
  store <2 x float> %i.bor, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i.i110, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8
  store i32 %i.bnf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !64
  store i32 %i.bni, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !65
  store i32 %i.bnk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !65
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr %i.bvs, i64 %i.bnm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bxa = load float, ptr %i.bwz, align 4, !tbaa !9
  store float %i.bxa, ptr %i.bov, align 4, !tbaa !9
  %i.bxb = getelementptr inbounds nuw [4 x i8], ptr %i.bvs, i64 %i.bnn
  %i.bxc = load float, ptr %i.bxb, align 4, !tbaa !9
  store float %i.bxc, ptr %i.bow, align 4, !tbaa !9
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !59
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

_ZN8ImGuizmoL11CanActivateEv.exit.i109:           ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.bxd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35, !noundef !36
  %i.bxe = trunc nuw i8 %i.bxd to i1
  %.not4.i = xor i1 %i.bxe, true
  %i.bxf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !35
  %i.bxg = trunc nuw i8 %i.bxf to i1
  %or.cond6.i = select i1 %.not4.i, i1 %i.bxg, i1 false
  %or.cond8.i = and i1 %spec.select185.i, %or.cond6.i
  br i1 %or.cond8.i, label %bb.cn, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.cn:                                            ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.bxh = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.bxh, label %bb.co, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.co:                                            ; preds = %bb.cn
  %i.bxi = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bxi, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bxj = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.bxj, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.bxk = zext nneg i32 %i.bvj to i64
  %i.bxl = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bxk ; 3 uses
  %i.bxm = add nuw nsw i64 %indvars.iv700.i, 3
  %i.bxn = and i64 %i.bxm, 3
  %i.bxo = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bxn ; 2 uses
  %i.bxp = load float, ptr %i.bxl, align 16, !tbaa !11
  %i.bxq = load float, ptr %i.bxo, align 16, !tbaa !11
  %i.bxr = fadd float %i.bxp, %i.bxq
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxl, i64 4
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxo, i64 4
  %i.bxu = load <2 x float>, ptr %i.bxs, align 4, !tbaa !9
  %i.bxv = load <2 x float>, ptr %i.bxt, align 4, !tbaa !9
  %i.bxw = fadd <2 x float> %i.bxu, %i.bxv
  %i.bxx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bxy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.bxz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.bya = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.byb = insertelement <4 x float> poison, float %i.btj, i64 0
  %i.byc = shufflevector <4 x float> %i.byb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byd = fmul <4 x float> %i.byc, %i.bxy
  %i.bye = insertelement <4 x float> poison, float %i.bti, i64 0
  %i.byf = shufflevector <4 x float> %i.bye, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.byf, <4 x float> %i.bxx, <4 x float> %i.byd)
  %i.byh = insertelement <4 x float> poison, float %i.btk, i64 0
  %i.byi = shufflevector <4 x float> %i.byh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.byi, <4 x float> %i.bxz, <4 x float> %i.byg)
  %i.byk = fadd <4 x float> %i.bya, %i.byj        ; 5 uses
  store <4 x float> %i.byk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !9
  %i.byl = shufflevector <2 x float> %i.bxw, <2 x float> %i.bor, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.bym = insertelement <4 x float> %i.byl, float %i.bxr, i64 0
  %i.byn = shufflevector <4 x float> %i.byk, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.byo = fmul <4 x float> %i.bym, %i.byn        ; 4 uses
  %i.byp = shufflevector <4 x float> %i.byo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.byq = fmul <4 x float> %i.byp, %i.bxy
  %i.byr = shufflevector <4 x float> %i.byo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bys = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.byr, <4 x float> %i.bxx, <4 x float> %i.byq)
  %i.byt = shufflevector <4 x float> %i.byo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.byu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.byt, <4 x float> %i.bxz, <4 x float> %i.bys)
  %i.byv = fadd <4 x float> %i.bya, %i.byu
  store <4 x float> %i.byv, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !9
  %i.byw = extractelement <4 x float> %i.byk, i64 0
  %i.byx = extractelement <4 x float> %i.byo, i64 3
  %i.byy = call float @llvm.fmuladd.f32(float %i.box, float %i.byw, float %i.byx)
  %i.byz = extractelement <4 x float> %i.byk, i64 2
  %i.bza = call float @llvm.fmuladd.f32(float %i.bos, float %i.byz, float %i.byy)
  %i.bzb = extractelement <4 x float> %i.byk, i64 3
  %i.bzc = call noundef float @llvm.fmuladd.f32(float %i.bot, float %i.bzb, float %i.bza)
  %.sroa.3.8.vec.insert.i278.i = insertelement <2 x float> %i.bou, float %i.bzc, i64 1
  store <2 x float> %i.bor, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i278.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8
  store i32 %i.bnf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  store i32 %i.bni, ptr %i.l, align 4, !tbaa !65
  store i32 %i.bnk, ptr %i.bmf, align 4, !tbaa !65
  %i.bzd = and i64 %indvars.iv700.i, 1
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bzd
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !65 ; 2 uses
  store i32 %i.bzf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !65
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !65
  %i.bzg = sext i32 %i.bzf to i64                 ; 2 uses
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %i.bxl, i64 %i.bzg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bzi = load float, ptr %i.bzh, align 4, !tbaa !9
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bzg
  store float %i.bzi, ptr %i.bzj, align 4, !tbaa !9
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  %.pre714.i = load float, ptr %44, align 4, !tbaa !16
  br label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

_ZN8ImGuizmoL11CanActivateEv.exit262.i:           ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.bzk = phi float [ %i.bqb, %bb.cp ], [ %i.bqb, %bb.co ], [ %i.bqb, %bb.cn ], [ %.pre714.i, %bb.cq ], [ %i.bqb, %_ZN8ImGuizmoL11CanActivateEv.exit.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i: ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit262.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, %bb.cc
  %i.bzl = phi float [ %i.bzk, %_ZN8ImGuizmoL11CanActivateEv.exit262.i ], [ %i.bqb, %bb.cc ], [ %i.bqb, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i ], [ %i.bqb, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %exitcond703.not.i = icmp eq i64 %indvars.iv.next701.i, 4
  br i1 %exitcond703.not.i, label %bb.cb, label %bb.cc, !llvm.loop !70

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  store float 1.000000e+00, ptr %50, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bmg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bmh, align 4, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bmj, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bmk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bml, align 4, !tbaa !15
  %i.bzm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8, !tbaa !11 ; 2 uses
  %i.bzn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !11 ; 2 uses
  %i.bzo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 852), align 4, !tbaa !14 ; 2 uses
  %i.bzp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.bzq = fmul float %i.bzo, %i.bzp
  %i.bzr = call float @llvm.fmuladd.f32(float %i.bzm, float %i.bzn, float %i.bzq)
  %i.bzs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8, !tbaa !13 ; 2 uses
  %i.bzt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.bzu = call noundef float @llvm.fmuladd.f32(float %i.bzs, float %i.bzt, float %i.bzr)
  %i.bzv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 860), align 4, !tbaa !15
  %i.bzw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !11 ; 2 uses
  %i.bzx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.bzy = fmul float %i.bzo, %i.bzx
  %i.bzz = call float @llvm.fmuladd.f32(float %i.bzm, float %i.bzw, float %i.bzy)
  %i.caa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.cab = call noundef float @llvm.fmuladd.f32(float %i.bzs, float %i.caa, float %i.bzz) ; 2 uses
  %i.cac = call float @llvm.fabs.f32(float %i.cab)
  %i.cad = fcmp olt float %i.cac, f0x34000000
  %i.cae = fsub float %i.bzu, %i.bzv
  %i.caf = fneg float %i.cae
  %i.cag = fdiv float %i.caf, %i.cab
  %.0.i281.i = select i1 %i.cad, float -1.000000e+00, float %i.cag ; 3 uses
  %i.cah = fmul float %i.bzw, %.0.i281.i
  %i.cai = fmul float %i.bzx, %.0.i281.i
  %i.caj = fmul float %i.caa, %.0.i281.i
  %i.cak = fadd float %i.bzn, %i.cah
  %i.cal = fadd float %i.bzp, %i.cai
  %i.cam = fadd float %i.bzt, %i.caj
  %i.can = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !11 ; 2 uses
  %i.cao = fsub float %i.cak, %i.can
  %i.cap = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 820), align 4, !tbaa !14 ; 2 uses
  %i.caq = fsub float %i.cal, %i.cap              ; 2 uses
  %i.car = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 824), align 8, !tbaa !13 ; 2 uses
  %i.cas = fsub float %i.cam, %i.car
  %i.cat = call float @llvm.fabs.f32(float %i.cao) ; 2 uses
  %i.cau = call float @llvm.fabs.f32(float %i.cas) ; 2 uses
  %i.cav = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !11
  %i.caw = fsub float %i.cav, %i.can
  %i.cax = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 836), align 4, !tbaa !14
  %i.cay = fsub float %i.cax, %i.cap              ; 2 uses
  %i.caz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 840), align 8, !tbaa !13
  %i.cba = fsub float %i.caz, %i.car
  %i.cbb = call float @llvm.fabs.f32(float %i.caw) ; 2 uses
  %i.cbc = call float @llvm.fabs.f32(float %i.cba) ; 2 uses
  %i.cbd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !65 ; 2 uses
  %i.cbe = icmp eq i32 %i.cbd, -1
  br i1 %i.cbe, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.cbf = sext i32 %i.cbd to i64                 ; 4 uses
  %i.cbg = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.cbf ; 3 uses
  %i.cbh = load float, ptr %i.cbg, align 8, !tbaa !11
  %i.cbi = call float @llvm.fabs.f32(float %i.cbh) ; 2 uses
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbg, i64 4
  %i.cbk = load float, ptr %i.cbj, align 4, !tbaa !14 ; 2 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbg, i64 8
  %i.cbm = load float, ptr %i.cbl, align 8, !tbaa !13
  %i.cbn = call float @llvm.fabs.f32(float %i.cbm) ; 2 uses
  %i.cbo = fmul float %i.cay, %i.cbk
  %i.cbp = call float @llvm.fabs.f32(float %i.cbo)
  %i.cbq = call float @llvm.fmuladd.f32(float %i.cbi, float %i.cbb, float %i.cbp)
  %i.cbr = call float @llvm.fmuladd.f32(float %i.cbn, float %i.cbc, float %i.cbq) ; 2 uses
  %i.cbs = getelementptr [4 x i8], ptr %7, i64 %i.cbf ; 2 uses
  %i.cbt = getelementptr i8, ptr %i.cbs, i64 12
  %i.cbu = load float, ptr %i.cbt, align 4, !tbaa !9
  %i.cbv = load float, ptr %i.cbs, align 4, !tbaa !9
  %i.cbw = fsub float %i.cbu, %i.cbv              ; 3 uses
  %i.cbx = fcmp ogt float %i.cbr, f0x34000000
  br i1 %i.cbx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.cby = fmul float %i.caq, %i.cbk
  %i.cbz = call float @llvm.fabs.f32(float %i.cby)
  %i.cca = call float @llvm.fmuladd.f32(float %i.cbi, float %i.cat, float %i.cbz)
  %i.ccb = call float @llvm.fmuladd.f32(float %i.cbn, float %i.cau, float %i.cca)
  %i.ccc = fadd float %i.ccb, 0.000000e+00
  %i.ccd = fdiv float %i.ccc, %i.cbr
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0.i = phi float [ %i.ccd, %bb.ct ], [ 1.000000e+00, %bb.cs ] ; 3 uses
  br i1 %.not183.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.cce = fmul float %i.cbw, %.0.i               ; 6 uses
  %i.ccf = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cbf
  %i.ccg = load float, ptr %i.ccf, align 4, !tbaa !9 ; 4 uses
  %i.cch = fcmp ugt float %i.ccg, f0x34000000
  br i1 %i.cch, label %bb.cw, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cw:                                            ; preds = %bb.cv
  %i.cci = call float @fmodf(float noundef %i.cce, float noundef %i.ccg) #19 ; 3 uses
  %i.ccj = call float @llvm.fabs.f32(float %i.cci)
  %i.cck = fdiv float %i.ccj, %i.ccg              ; 2 uses
  %i.ccl = fcmp olt float %i.cck, 5.000000e-01
  br i1 %i.ccl, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ccm = fsub float %i.cce, %i.cci
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cy:                                            ; preds = %bb.cw
  %i.ccn = fcmp ogt float %i.cck, 5.000000e-01
  br i1 %i.ccn, label %bb.cz, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cz:                                            ; preds = %bb.cy
  %i.cco = fsub float %i.cce, %i.cci
  %i.ccp = fcmp olt float %i.cce, 0.000000e+00
  %i.ccq = select i1 %i.ccp, float -1.000000e+00, float 1.000000e+00
  %i.ccr = call float @llvm.fmuladd.f32(float %i.ccg, float %i.ccq, float %i.cco)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103:         ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.0671.i = phi float [ %i.cce, %bb.cv ], [ %i.cce, %bb.cy ], [ %i.ccm, %bb.cx ], [ %i.ccr, %bb.cz ]
  %i.ccs = fcmp ogt float %i.cbw, f0x34000000
  %i.cct = fdiv float %.0671.i, %i.cbw
  %.1.i104 = select i1 %i.ccs, float %i.cct, float %.0.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103, %bb.cu
  %.2.i = phi float [ %.1.i104, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103 ], [ %.0.i, %bb.cu ]
  %i.ccu = getelementptr inbounds [16 x i8], ptr %50, i64 %i.cbf ; 2 uses
  %i.ccv = load <4 x float>, ptr %i.ccu, align 8, !tbaa !9
  %i.ccw = insertelement <4 x float> poison, float %.2.i, i64 0
  %i.ccx = shufflevector <4 x float> %i.ccw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccy = fmul <4 x float> %i.ccx, %i.ccv
  store <4 x float> %i.ccy, ptr %i.ccu, align 8, !tbaa !9
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr
  %i.ccz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !65 ; 2 uses
  %i.cda = icmp eq i32 %i.ccz, -1
  br i1 %i.cda, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.cdb = sext i32 %i.ccz to i64                 ; 4 uses
  %i.cdc = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.cdb ; 3 uses
  %i.cdd = load float, ptr %i.cdc, align 8, !tbaa !11
  %i.cde = call float @llvm.fabs.f32(float %i.cdd) ; 2 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cdc, i64 4
  %i.cdg = load float, ptr %i.cdf, align 4, !tbaa !14 ; 2 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdc, i64 8
  %i.cdi = load float, ptr %i.cdh, align 8, !tbaa !13
  %i.cdj = call float @llvm.fabs.f32(float %i.cdi) ; 2 uses
  %i.cdk = fmul float %i.cay, %i.cdg
  %i.cdl = call float @llvm.fabs.f32(float %i.cdk)
  %i.cdm = call float @llvm.fmuladd.f32(float %i.cde, float %i.cbb, float %i.cdl)
  %i.cdn = call float @llvm.fmuladd.f32(float %i.cdj, float %i.cbc, float %i.cdm) ; 2 uses
  %i.cdo = getelementptr [4 x i8], ptr %7, i64 %i.cdb ; 2 uses
  %i.cdp = getelementptr i8, ptr %i.cdo, i64 12
  %i.cdq = load float, ptr %i.cdp, align 4, !tbaa !9
  %i.cdr = load float, ptr %i.cdo, align 4, !tbaa !9
  %i.cds = fsub float %i.cdq, %i.cdr              ; 3 uses
  %i.cdt = fcmp ogt float %i.cdn, f0x34000000
  br i1 %i.cdt, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.cdu = fmul float %i.caq, %i.cdg
  %i.cdv = call float @llvm.fabs.f32(float %i.cdu)
  %i.cdw = call float @llvm.fmuladd.f32(float %i.cde, float %i.cat, float %i.cdv)
  %i.cdx = call float @llvm.fmuladd.f32(float %i.cdj, float %i.cau, float %i.cdw)
  %i.cdy = fadd float %i.cdx, 0.000000e+00
  %i.cdz = fdiv float %i.cdy, %i.cdn
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0.1.i = phi float [ %i.cdz, %bb.dd ], [ 1.000000e+00, %bb.dc ] ; 3 uses
  br i1 %.not183.i, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.cea = fmul float %i.cds, %.0.1.i             ; 6 uses
  %i.ceb = getelementptr inbounds [4 x i8], ptr %8, i64 %i.cdb
  %i.cec = load float, ptr %i.ceb, align 4, !tbaa !9 ; 4 uses
  %i.ced = fcmp ugt float %i.cec, f0x34000000
  br i1 %i.ced, label %bb.dg, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dg:                                            ; preds = %bb.df
  %i.cee = call float @fmodf(float noundef %i.cea, float noundef %i.cec) #19 ; 3 uses
  %i.cef = call float @llvm.fabs.f32(float %i.cee)
  %i.ceg = fdiv float %i.cef, %i.cec              ; 2 uses
  %i.ceh = fcmp olt float %i.ceg, 5.000000e-01
  br i1 %i.ceh, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.cei = fcmp ogt float %i.ceg, 5.000000e-01
  br i1 %i.cei, label %bb.di, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.di:                                            ; preds = %bb.dh
  %i.cej = fsub float %i.cea, %i.cee
  %i.cek = fcmp olt float %i.cea, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.cka = insertelement <4 x float> %i.cjz, float %i.cju, i64 1
  %i.ckb = insertelement <4 x float> %i.cka, float %i.che, i64 2
  %i.ckc = insertelement <4 x float> %i.ckb, float %i.cgt, i64 3
  %i.ckd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cjy, <4 x float> %i.chg, <4 x float> %i.ckc) ; 4 uses
  %i.cke = extractelement <4 x float> %i.ckd, i64 2
  %i.ckf = extractelement <4 x float> %i.cjr, i64 0 ; 2 uses
  %i.ckg = call float @llvm.fmuladd.f32(float %i.ckf, float %i.cev, float %i.cke)
  %i.ckh = extractelement <4 x float> %i.ckd, i64 3
  %i.cki = extractelement <4 x float> %i.cjr, i64 1 ; 2 uses
  %i.ckj = call float @llvm.fmuladd.f32(float %i.cki, float 0.000000e+00, float %i.ckh)
  %i.ckk = call float @llvm.fmuladd.f32(float %i.ckf, float %i.cgo, float %i.ckj)
  %i.ckl = fadd float %i.chh, %i.cki
  %i.ckm = fadd float %i.cjk, %i.chj
  %i.ckn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.cgn, i64 0
  %i.cko = shufflevector <2 x float> %i.chb, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ckp = insertelement <4 x float> %i.cko, float %i.ckl, i64 0
  %i.ckq = insertelement <4 x float> %i.ckp, float %i.chh, i64 1
  %i.ckr = insertelement <4 x float> %i.ckq, float %i.ckm, i64 2
  %i.cks = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cjr, <4 x float> %i.ckn, <4 x float> %i.ckr) ; 4 uses
  %i.ckt = extractelement <4 x float> %i.cks, i64 2
  %i.cku = call float @llvm.fmuladd.f32(float %i.cjg, float %i.cev, float %i.ckt)
  %i.ckv = extractelement <4 x float> %i.cks, i64 3
  %i.ckw = extractelement <4 x float> %i.cjo, i64 2 ; 3 uses
  %i.ckx = call float @llvm.fmuladd.f32(float %i.ckw, float 0.000000e+00, float %i.ckv)
  %i.cky = call float @llvm.fmuladd.f32(float %i.cjg, float %i.cgo, float %i.ckx)
  %i.ckz = call float @llvm.fmuladd.f32(float %i.cjk, float 0.000000e+00, float %i.chj) ; 2 uses
  %i.cla = fadd float %i.ckz, %i.ckw
  %i.clb = call float @llvm.fmuladd.f32(float %i.cjg, float %i.cgn, float %i.cla)
  %i.clc = call float @llvm.fmuladd.f32(float %i.ckw, float 0.000000e+00, float %i.ckz)
  %i.cld = fadd float %i.clc, %i.cjg
  %i.cle = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !9 ; 4 uses
  %i.clf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8, !tbaa !9 ; 4 uses
  %i.clg = insertelement <4 x float> poison, float %i.cjh, i64 0
  %i.clh = shufflevector <4 x float> %i.clg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cli = fmul <4 x float> %i.clf, %i.clh
  %i.clj = insertelement <4 x float> poison, float %i.cig, i64 0
  %i.clk = shufflevector <4 x float> %i.clj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cll = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clk, <4 x float> %i.cle, <4 x float> %i.cli)
  %i.clm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8, !tbaa !9 ; 4 uses
  %i.cln = insertelement <4 x float> poison, float %i.cji, i64 0
  %i.clo = shufflevector <4 x float> %i.cln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.clp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clo, <4 x float> %i.clm, <4 x float> %i.cll)
  %i.clq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 944), align 8, !tbaa !9 ; 4 uses
  %i.clr = insertelement <4 x float> poison, float %i.cik, i64 0
  %i.cls = shufflevector <4 x float> %i.clr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.clt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cls, <4 x float> %i.clq, <4 x float> %i.clp)
  store <4 x float> %i.clt, ptr %4, align 4
  %i.clu = shufflevector <4 x float> %i.ckd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.clv = fmul <4 x float> %i.clu, %i.clf
  %i.clw = insertelement <4 x float> poison, float %i.cjs, i64 0
  %i.clx = shufflevector <4 x float> %i.clw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cly = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clx, <4 x float> %i.cle, <4 x float> %i.clv)
  %i.clz = shufflevector <4 x float> %i.ckd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cma = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clz, <4 x float> %i.clm, <4 x float> %i.cly)
  %i.cmb = insertelement <4 x float> poison, float %i.cjv, i64 0
  %i.cmc = shufflevector <4 x float> %i.cmb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmc, <4 x float> %i.clq, <4 x float> %i.cma)
  store <4 x float> %i.cmd, ptr %.sroa.7450.0..sroa_idx.i, align 4
  %i.cme = insertelement <4 x float> poison, float %i.ckk, i64 0
  %i.cmf = shufflevector <4 x float> %i.cme, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmg = fmul <4 x float> %i.clf, %i.cmf
  %i.cmh = insertelement <4 x float> poison, float %i.ckg, i64 0
  %i.cmi = shufflevector <4 x float> %i.cmh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmi, <4 x float> %i.cle, <4 x float> %i.cmg)
  %i.cmk = shufflevector <4 x float> %i.cks, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cml = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmk, <4 x float> %i.clm, <4 x float> %i.cmj)
  %i.cmm = shufflevector <4 x float> %i.cks, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cmn = shufflevector <4 x float> %i.cjr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmo = fadd <4 x float> %i.cmm, %i.cmn
  %i.cmp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmo, <4 x float> %i.clq, <4 x float> %i.cml)
  store <4 x float> %i.cmp, ptr %.sroa.11.0..sroa_idx.i92, align 4
  %i.cmq = insertelement <4 x float> poison, float %i.cky, i64 0
  %i.cmr = shufflevector <4 x float> %i.cmq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cms = fmul <4 x float> %i.clf, %i.cmr
  %i.cmt = insertelement <4 x float> poison, float %i.cku, i64 0
  %i.cmu = shufflevector <4 x float> %i.cmt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmu, <4 x float> %i.cle, <4 x float> %i.cms)
  %i.cmw = insertelement <4 x float> poison, float %i.clb, i64 0
  %i.cmx = shufflevector <4 x float> %i.cmw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmx, <4 x float> %i.clm, <4 x float> %i.cmv)
  %i.cmz = insertelement <4 x float> poison, float %i.cld, i64 0
  %i.cna = shufflevector <4 x float> %i.cmz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cna, <4 x float> %i.clq, <4 x float> %i.cmy)
  store <4 x float> %i.cnb, ptr %.sroa.15.0..sroa_idx.i95, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %.sroa.02.0.copyload.i322.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i323.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i324.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cnc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cnd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cne = fmul float %.sroa.12.0.copyload.i323.i, %i.cnd
  %i.cnf = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i322.i, float %i.cnc, float %i.cne)
  %i.cng = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cnh = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i324.i, float %i.cng, float %i.cnf)
  %i.cni = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cnj = fadd float %i.cni, %i.cnh
  %i.cnk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cnl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cnm = fmul float %.sroa.12.0.copyload.i323.i, %i.cnl
  %i.cnn = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i322.i, float %i.cnk, float %i.cnm)
  %i.cno = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cnp = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i324.i, float %i.cno, float %i.cnn)
  %i.cnq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cnr = fadd float %i.cnq, %i.cnp
  %i.cns = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cnt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cnu = fmul float %.sroa.12.0.copyload.i323.i, %i.cnt
  %i.cnv = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i322.i, float %i.cns, float %i.cnu)
  %i.cnw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cnx = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i324.i, float %i.cnw, float %i.cnv)
  %i.cny = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cnz = fadd float %i.cny, %i.cnx
  %i.coa = fdiv float 5.000000e-01, %i.cnz        ; 2 uses
  %i.cob = fmul float %i.cnj, %i.coa
  %i.coc = fmul float %i.cnr, %i.coa
  %i.cod = fadd float %i.coc, 5.000000e-01
  %i.coe = load float, ptr %i.bmt, align 4, !tbaa !9
  %i.cof = load float, ptr %7, align 4, !tbaa !9
  %i.cog = fsub float %i.coe, %i.cof
  %i.coh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 904), align 8, !tbaa !13
  %i.coi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 920), align 8, !tbaa !13
  %i.coj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8 ; 2 uses
  %i.cok = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8 ; 2 uses
  %i.col = shufflevector <2 x float> %i.cfe, <2 x float> %i.cfd, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.com = shufflevector <4 x float> %i.col, <4 x float> %i.coj, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.con = shufflevector <4 x float> %i.com, <4 x float> %i.cok, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.coo = fmul <4 x float> %i.con, %i.con
  %i.cop = shufflevector <2 x float> %i.cfe, <2 x float> %i.cfd, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.coq = shufflevector <4 x float> %i.coj, <4 x float> %i.cop, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.cor = shufflevector <4 x float> %i.coq, <4 x float> %i.cok, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.cos = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cor, <4 x float> %i.cor, <4 x float> %i.coo)
  %i.cot = shufflevector <2 x float> %i.cho, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.cou = insertelement <4 x float> %i.cot, float %i.coh, i64 0
  %i.cov = insertelement <4 x float> %i.cou, float %i.coi, i64 2
  %i.cow = insertelement <4 x float> %i.cov, float %i.cey, i64 3 ; 2 uses
  %i.cox = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cow, <4 x float> %i.cow, <4 x float> %i.cos)
  %i.coy = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cox) ; 4 uses
  %i.coz = extractelement <4 x float> %i.coy, i64 0
  %i.cpa = fmul float %i.cog, %i.coz
  %i.cpb = extractelement <4 x float> %i.coy, i64 1
  %i.cpc = fmul float %i.cpb, %i.cpa
  %i.cpd = fpext float %i.cpc to double
  %i.cpe = load <2 x float>, ptr %i.bmu, align 4, !tbaa !9
  %i.cpf = load <2 x float>, ptr %i.bmv, align 4, !tbaa !9
  %i.cpg = fsub <2 x float> %i.cpe, %i.cpf
  %i.cph = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 936), align 8, !tbaa !13
  %i.cpi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8, !tbaa !9 ; 2 uses
  %i.cpj = shufflevector <2 x float> %i.cfc, <2 x float> %i.cpi, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cpk = fmul <2 x float> %i.cpj, %i.cpj
  %i.cpl = shufflevector <2 x float> %i.cpi, <2 x float> %i.cfc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cpm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cpl, <2 x float> %i.cpl, <2 x float> %i.cpk)
  %i.cpn = shufflevector <2 x float> %i.chm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cpo = insertelement <2 x float> %i.cpn, float %i.cph, i64 0 ; 2 uses
  %i.cpp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cpo, <2 x float> %i.cpo, <2 x float> %i.cpm)
  %i.cpq = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cpp)
  %i.cpr = shufflevector <2 x float> %i.cpq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cps = shufflevector <4 x float> %i.coy, <4 x float> %i.cpr, <2 x i32> <i32 2, i32 4>
  %i.cpt = fmul <2 x float> %i.cpg, %i.cps
  %i.cpu = shufflevector <4 x float> %i.coy, <4 x float> %i.cpr, <2 x i32> <i32 3, i32 5>
  %i.cpv = fmul <2 x float> %i.cpu, %i.cpt
  %i.cpw = fpext <2 x float> %i.cpv to <2 x double> ; 2 uses
  %i.cpx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cob, i64 0
  %i.cpy = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cod, i64 1
  %i.cpz = fsub <2 x float> %i.cpx, %i.cpy
  %i.cqa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9
  %i.cqb = fmul <2 x float> %i.cqa, %i.cpz
  %i.cqc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9
  %i.cqd = fadd <2 x float> %i.cqc, %i.cqb        ; 2 uses
  %i.cqe = extractelement <2 x double> %i.cpw, i64 0
  %i.cqf = extractelement <2 x double> %i.cpw, i64 1
  %i.cqg = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.m, i64 noundef 512, ptr noundef nonnull @.str.2, double noundef %i.cpd, double noundef %i.cqe, double noundef %i.cqf) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.cqh = fadd <2 x float> %i.cqd, splat (float 1.500000e+01)
  store <2 x float> %i.cqh, ptr %51, align 8, !tbaa !9
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %51, i32 noundef -16777216, ptr noundef nonnull %i.m, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.cqi = fadd <2 x float> %i.cqd, splat (float 1.400000e+01)
  store <2 x float> %i.cqi, ptr %52, align 8, !tbaa !9
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.bgx, ptr noundef nonnull align 4 dereferenceable(8) %52, i32 noundef -1, ptr noundef nonnull %i.m, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.cb
  %i.cqj = load i8, ptr %i.bmw, align 8, !tbaa !49, !range !35, !noundef !36
  %i.cqk = trunc nuw i8 %i.cqj to i1
  br i1 %i.cqk, label %bb.dn, label %.thread753.i

.thread753.i:                                     ; preds = %bb.dm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next708.old.i = add nuw nsw i64 %indvars.iv707.i, 1 ; 2 uses
  %exitcond711.not.old.i = icmp eq i64 %indvars.iv.next708.old.i, %wide.trip.count710.i
  br i1 %exitcond711.not.old.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread753.i, %bb.dn
  %indvars.iv707.i.be = phi i64 [ %indvars.iv.next708.old.i, %.thread753.i ], [ %indvars.iv.next708.i, %bb.dn ]
  br label %.backedge, !llvm.loop !71

bb.dn:                                            ; preds = %bb.dm
  %.pre723.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35 ; 2 uses
  %i.cql = trunc nuw i8 %.pre723.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next708.i = add nuw nsw i64 %indvars.iv707.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next708.i, %wide.trip.count710.i
  %or.cond755.i = select i1 %i.cql, i1 true, i1 %exitcond711.not.i
  br i1 %or.cond755.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread753.i, %bb.dn
  %i.cqm = phi i8 [ 0, %.thread753.i ], [ %.pre723.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.cqn = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.cqm, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cqo = trunc nuw i8 %i.cqn to i1
  br i1 %i.cqo, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.cqp = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.cqq = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !33 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.cqr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !56, !range !35, !noundef !36
  %i.cqs = trunc nuw i8 %i.cqr to i1
  br i1 %i.cqs, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cqt = icmp eq i32 %.0, 11
  %i.cqu = select i1 %i.cqt, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.cqu, ptr %i.i, align 16, !tbaa !65
  %i.cqv = icmp eq i32 %.0, 8
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.cqv, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.cqw, align 4, !tbaa !65
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.cqx, align 8, !tbaa !65
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i32 -16777046, ptr %i.cqw, align 4, !tbaa !65
  %i.cqy = icmp eq i32 %.0, 9
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.cqy, label %.thread69.i.i, label %bb.dt

.thread69.i.i:                                    ; preds = %bb.ds
  store i32 -1978629889, ptr %i.cqz, align 8, !tbaa !65
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 -16733696, ptr %i.cqz, align 8, !tbaa !65
  %i.cra = icmp eq i32 %.0, 10
  br i1 %i.cra, label %.loopexit.loopexit52.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread69.i.i, %.thread70.i.i
  br label %.loopexit.loopexit52.i.i

.loopexit.loopexit52.i.i:                         ; preds = %bb.du, %bb.dt
  %i.crb = phi i32 [ -5636096, %bb.du ], [ -1978629889, %bb.dt ]
  %i.crc = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.crb, ptr %i.crc, align 4, !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i: ; preds = %.loopexit.loopexit52.i.i, %.preheader.preheader.i.i
  %i.crd = phi i32 [ -1717986919, %.preheader.preheader.i.i ], [ %i.cqu, %.loopexit.loopexit52.i.i ]
  %i.cre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !32, !range !35, !noundef !36
  %i.crf = trunc nuw i8 %i.cre to i1
  br i1 %i.crf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.crg = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.crh = load <2 x float>, ptr %i.cqp, align 4
  %.phi.trans.insert128.i = getelementptr inbounds nuw i8, ptr %35, i64 40
  %.pre129.i = load float, ptr %.phi.trans.insert128.i, align 4
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cri = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9
  %i.crj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !9
  %i.crk = fsub <2 x float> %i.cri, %i.crj        ; 4 uses
  %i.crl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  %i.crm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.crn = fsub float %i.crl, %i.crm              ; 3 uses
  %foldExtExtBinop255 = fmul <2 x float> %i.crk, %i.crk
  %i.cro = extractelement <2 x float> %foldExtExtBinop255, i64 1
  %i.crp = extractelement <2 x float> %i.crk, i64 0 ; 2 uses
  %i.crq = call float @llvm.fmuladd.f32(float %i.crp, float %i.crp, float %i.cro)
  %i.crr = call float @llvm.fmuladd.f32(float %i.crn, float %i.crn, float %i.crq)
  %sqrt.i.i.i.i111 = call noundef float @llvm.sqrt.f32(float %i.crr)
  %i.crs = fdiv float 1.000000e+00, %sqrt.i.i.i.i111 ; 2 uses
  %i.crt = insertelement <2 x float> poison, float %i.crs, i64 0
  %i.cru = shufflevector <2 x float> %i.crt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.crv = fmul <2 x float> %i.crk, %i.cru
  %i.crw = fmul float %i.crn, %i.crs
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.crx = phi float [ %i.crw, %bb.dw ], [ %.pre129.i, %bb.dv ]
  %i.cry = phi <2 x float> [ %i.crv, %bb.dw ], [ %i.crh, %bb.dv ] ; 2 uses
  %i.crz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.csa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.csb = shufflevector <2 x float> %i.cry, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.csc = fmul <4 x float> %i.csb, %i.csa
  %i.csd = shufflevector <2 x float> %i.cry, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cse = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.csd, <4 x float> %i.crz, <4 x float> %i.csc)
  %i.csf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.csg = insertelement <4 x float> poison, float %i.crx, i64 0
  %i.csh = shufflevector <4 x float> %i.csg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.csi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.csh, <4 x float> %i.csf, <4 x float> %i.cse)
  store <4 x float> %i.csi, ptr %i.cqp, align 4
  %i.csj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !28
  %i.csk = fmul float %i.csj, 6.000000e-02
  store float %i.csk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  %i.csl = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.csm = getelementptr inbounds nuw i8, ptr %36, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %.sroa.02.0.copyload.i.i116 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i.i117 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i.i118 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.csn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cso = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.csp = fmul float %.sroa.12.0.copyload.i.i117, %i.cso
  %i.csq = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.csn, float %i.csp)
  %i.csr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.css = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.csr, float %i.csq)
  %i.cst = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.csu = fadd float %i.cst, %i.css
  %i.csv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.csw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.csx = fmul float %.sroa.12.0.copyload.i.i117, %i.csw
  %i.csy = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.csv, float %i.csx)
  %i.csz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cta = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.csz, float %i.csy)
  %i.ctb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.ctc = fadd float %i.ctb, %i.cta
  %i.ctd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cte = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.ctf = fmul float %.sroa.12.0.copyload.i.i117, %i.cte
  %i.ctg = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.ctd, float %i.ctf)
  %i.cth = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cti = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cth, float %i.ctg)
  %i.ctj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.ctk = fadd float %i.ctj, %i.cti
  %i.ctl = fdiv float 5.000000e-01, %i.ctk        ; 2 uses
  %i.ctm = fmul float %i.csu, %i.ctl
  %i.ctn = fmul float %i.ctc, %i.ctl
  %i.cto = fadd float %i.ctn, 5.000000e-01
  %i.ctp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ctm, i64 0
  %i.ctq = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cto, i64 1
  %i.ctr = fsub <2 x float> %i.ctp, %i.ctq
  %i.cts = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9
  %i.ctt = fmul <2 x float> %i.cts, %i.ctr
  %i.ctu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9
  %i.ctv = fadd <2 x float> %i.ctu, %i.ctt
  store <2 x float> %i.ctv, ptr %38, align 8
  %i.ctw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqq, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.ctw, i32 noundef %i.crd, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.ctx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !34, !range !35, !noundef !36
  %i.cty = trunc nuw i8 %i.ctx to i1
  br i1 %i.cty, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !9
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.ctz = sub nsw i64 1, %indvars.iv118.i
  %i.cua = and i64 %i.ctz, 4294967295
  %i.cub = select i1 %.cmp.i, i64 2, i64 %i.cua
  %i.cuc = getelementptr inbounds nuw [4 x i8], ptr %i.cqp, i64 %i.cub
  %i.cud = load float, ptr %i.cuc, align 4
  %i.cue = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cuf = select i1 %.cmp113.not.i, i64 0, i64 %i.cue
  %i.cug = getelementptr inbounds nuw [4 x i8], ptr %i.cqp, i64 %i.cuf
  %i.cuh = load float, ptr %i.cug, align 4
  %i.cui = call float @atan2f(float noundef %i.cud, float noundef %i.cuh) #19
  %i.cuj = fadd float %i.cui, f0x3FC90FDB
  %i.cuk = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %i.cul = icmp eq i64 %indvars.iv.next119.i, 3   ; 2 uses
  %i.cum = select i1 %i.cul, i64 0, i64 %indvars.iv.next119.i
  %i.cun = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cum
  %i.cuo = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cup = add nuw nsw i32 %i.cuo, 2
  %i.cuq = urem i32 %i.cup, 3
  %i.cur = zext nneg i32 %i.cuq to i64
  %i.cus = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cur
  %i.cut = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !48 ; 3 uses
  %i.cuu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cuv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cuw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.cuy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.cuz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cva = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cvb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.cvc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 3 uses
  %i.cvd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 3 uses
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cve = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cvf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cvg = fmul float %.sroa.12.0.copyload.i50.i, %i.cvf
  %i.cvh = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cve, float %i.cvg)
  %i.cvi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cvj = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvi, float %i.cvh)
  %i.cvk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cvl = fadd float %i.cvk, %i.cvj
  %i.cvm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cvn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cvo = fmul float %.sroa.12.0.copyload.i50.i, %i.cvn
  %i.cvp = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvm, float %i.cvo)
  %i.cvq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cvr = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvq, float %i.cvp)
  %i.cvs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cvt = fadd float %i.cvs, %i.cvr
  %i.cvu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cvv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cvw = fmul float %.sroa.12.0.copyload.i50.i, %i.cvv
  %i.cvx = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvu, float %i.cvw)
  %i.cvy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cvz = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvy, float %i.cvx)
  %i.cwa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cwb = fadd float %i.cwa, %i.cvz
  %i.cwc = fdiv float 5.000000e-01, %i.cwb        ; 2 uses
  %i.cwd = fmul float %i.cvl, %i.cwc
  %i.cwe = fmul float %i.cvt, %i.cwc
  %i.cwf = fadd float %i.cwd, 5.000000e-01
  %i.cwg = fadd float %i.cwe, 5.000000e-01
  %i.cwh = fsub float 1.000000e+00, %i.cwg
  %i.cwi = extractelement <2 x float> %i.cvc, i64 0
  %i.cwj = fmul float %i.cwi, %i.cwf
  %i.cwk = extractelement <2 x float> %i.cvc, i64 1
  %i.cwl = fmul float %i.cwk, %i.cwh
  %i.cwm = extractelement <2 x float> %i.cvd, i64 0
  %i.cwn = fadd float %i.cwm, %i.cwj
  %i.cwo = extractelement <2 x float> %i.cvd, i64 1
  %i.cwp = fadd float %i.cwo, %i.cwl
  %.val44.i = load float, ptr %36, align 16, !tbaa !67
  %.val45.i = load float, ptr %i.csm, align 4, !tbaa !68
  %i.cwq = fsub float %i.cwn, %.val44.i           ; 2 uses
  %i.cwr = fsub float %i.cwp, %.val45.i           ; 2 uses
  %i.cws = fmul float %i.cwr, %i.cwr
  %i.cwt = call noundef float @llvm.fmuladd.f32(float %i.cwq, float %i.cwq, float %i.cws)
  %sqrt.i115 = call float @llvm.sqrt.f32(float %i.cwt) ; 2 uses
  %i.cwu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  %i.cwv = fcmp ogt float %sqrt.i115, %i.cwu
  br i1 %i.cwv, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i112 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i113, %bb.eb ] ; 3 uses
  %i.cww = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.cwx = uitofp nneg i32 %i.cww to float
  %i.cwy = fmul nnan float %i.cwx, 1.562500e-02
  %i.cwz = call float @llvm.fmuladd.f32(float %i.cwy, float f0x40490FDB, float %i.cuj) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.cxa = call float @cosf(float noundef %i.cwz) #19
  %i.cxb = call float @sinf(float noundef %i.cwz) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.cxa, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.cxb, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.csl, align 8
  %i.cxc = load float, ptr %i.cuk, align 4, !tbaa !9
  %i.cxd = load float, ptr %i.cun, align 4, !tbaa !9
  %i.cxe = load float, ptr %i.cus, align 4, !tbaa !9
  %i.cxf = fmul float %i.cut, %i.cxc              ; 2 uses
  %i.cxg = fmul float %i.cut, %i.cxd              ; 2 uses
  %i.cxh = fmul float %i.cut, %i.cxe              ; 2 uses
  %i.cxi = fmul float %i.cuz, %i.cxg
  %i.cxj = call float @llvm.fmuladd.f32(float %i.cxf, float %i.cuy, float %i.cxi)
  %i.cxk = call float @llvm.fmuladd.f32(float %i.cxh, float %i.cva, float %i.cxj)
  %i.cxl = fadd float %i.cvb, %i.cxk
  %i.cxm = fdiv float 5.000000e-01, %i.cxl
  %i.cxn = insertelement <2 x float> poison, float %i.cxg, i64 0
  %i.cxo = shufflevector <2 x float> %i.cxn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxp = fmul <2 x float> %i.cuv, %i.cxo
  %i.cxq = insertelement <2 x float> poison, float %i.cxf, i64 0
  %i.cxr = shufflevector <2 x float> %i.cxq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxr, <2 x float> %i.cuu, <2 x float> %i.cxp)
  %i.cxt = insertelement <2 x float> poison, float %i.cxh, i64 0
  %i.cxu = shufflevector <2 x float> %i.cxt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxu, <2 x float> %i.cuw, <2 x float> %i.cxs)
  %i.cxw = fadd <2 x float> %i.cux, %i.cxv
  %i.cxx = insertelement <2 x float> poison, float %i.cxm, i64 0
  %i.cxy = shufflevector <2 x float> %i.cxx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxz = fmul <2 x float> %i.cxw, %i.cxy        ; 2 uses
  %i.cya = extractelement <2 x float> %i.cxz, i64 1
  %i.cyb = fadd float %i.cya, 5.000000e-01
  %i.cyc = insertelement <2 x float> %i.cxz, float 1.000000e+00, i64 1
  %i.cyd = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cyb, i64 1
  %i.cye = fsub <2 x float> %i.cyc, %i.cyd
  %i.cyf = fmul <2 x float> %i.cvc, %i.cye
  %i.cyg = fadd <2 x float> %i.cvd, %i.cyf
  %i.cyh = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i112
  store <2 x float> %i.cyg, ptr %i.cyh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, 64
  br i1 %exitcond.not.i114, label %bb.ea, label %bb.eb, !llvm.loop !72

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i115, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cyi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cue
  %i.cyj = load i32, ptr %i.cyi, align 4, !tbaa !65
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqq, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cyj, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %i.cul, label %bb.dy, label %bb.dz, !llvm.loop !73

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !9
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cyk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cyl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.cym = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.cyn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.cyo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.cyp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 2 uses
  %i.cyq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 2 uses
  %i.cyr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 3 uses
  %i.cys = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9
  %i.cyt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 2 uses
  %i.cyu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cyv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cyw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !9 ; 5 uses
  %i.cyx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 2 uses
  %i.cyy = shufflevector <2 x float> %i.cyw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cyz = insertelement <2 x float> %i.cyy, float %.sroa.12.0.copyload.i75.i, i64 1
  %i.cza = shufflevector <2 x float> %i.cyz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czb = shufflevector <2 x float> %i.cyw, <2 x float> %i.cyx, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.czc = insertelement <4 x float> %i.czb, float %i.cym, i64 3
  %i.czd = fmul <4 x float> %i.cza, %i.czc
  %i.cze = shufflevector <2 x float> %i.cyw, <2 x float> %i.cys, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.czf = shufflevector <2 x float> %i.cyu, <2 x float> %i.cyt, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 2 uses
  %i.czg = shufflevector <2 x float> %i.cyw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.czh = shufflevector <4 x float> %i.czg, <4 x float> %i.czf, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.czi = insertelement <4 x float> %i.czh, float %i.cyv, i64 2
  %i.czj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cze, <4 x float> %i.czi, <4 x float> %i.czd) ; 3 uses
  %i.czk = extractelement <4 x float> %i.czj, i64 0
  %i.czl = call noundef float @llvm.fmuladd.f32(float %i.cyr, float %i.cyr, float %i.czk) ; 2 uses
  %i.czm = fcmp olt float %i.czl, f0x34000000
  %i.czn = extractelement <4 x float> %i.czj, i64 3
  %i.czo = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i76.i, float %i.cyn, float %i.czn)
  %i.czp = fadd float %i.cyo, %i.czo
  %i.czq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !9 ; 3 uses
  %.sroa.8.0.copyload.i121 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !9 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !9 ; 3 uses
  %i.czr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !48 ; 3 uses
  %i.czs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i122 = call float @llvm.sqrt.f32(float %i.czl)
  %i.czt = insertelement <2 x float> poison, float %i.czp, i64 0
  %i.czu = insertelement <2 x float> %i.czt, float %sqrt.i.i122, i64 1
  %i.czv = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.czu ; 3 uses
  %i.czw = insertelement <2 x float> %i.cyw, float %i.cyr, i64 1
  %i.czx = shufflevector <2 x float> %i.czv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.czy = fmul <2 x float> %i.czw, %i.czx        ; 6 uses
  %i.czz = fmul <2 x float> %i.czy, %i.czy
  %i.daa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.dab = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.sroa.22.0.copyload.i76.i, i64 0
  %i.dac = shufflevector <4 x float> %i.dab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dad = shufflevector <2 x float> %i.cyk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dae = shufflevector <4 x float> %i.dad, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.daf = shufflevector <4 x float> %i.czj, <4 x float> %i.daa, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.dag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dac, <4 x float> %i.dae, <4 x float> %i.daf) ; 2 uses
  %i.dah = shufflevector <2 x float> %i.cyl, <2 x float> %i.czv, <4 x i32> <i32 0, i32 1, i32 3, i32 3> ; 2 uses
  %i.dai = fadd <4 x float> %i.dah, %i.dag
  %i.daj = fmul <4 x float> %i.dah, %i.dag        ; 3 uses
  %i.dak = shufflevector <4 x float> %i.dai, <4 x float> %i.daj, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.dal = shufflevector <2 x float> %i.czv, <2 x float> %i.czy, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.dam = shufflevector <4 x float> %i.dal, <4 x float> %i.dak, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.dan = fmul <4 x float> %i.dam, %i.dak        ; 4 uses
  %i.dao = extractelement <4 x float> %i.dan, i64 1
  %i.dap = fadd float %i.dao, 5.000000e-01
  %i.daq = shufflevector <4 x float> %i.dan, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dar = insertelement <2 x float> %i.daq, float 1.000000e+00, i64 1
  %i.das = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dap, i64 1
  %i.dat = fsub <2 x float> %i.dar, %i.das
  %i.dau = fmul <2 x float> %i.cyp, %i.dat
  %i.dav = fadd <2 x float> %i.cyq, %i.dau
  store <2 x float> %i.dav, ptr %39, align 16
  %i.daw = shufflevector <4 x float> %i.daj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.dax = shufflevector <2 x float> %i.czy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.day = extractelement <2 x float> %i.czq, i64 0 ; 2 uses
  %i.daz = shufflevector <2 x float> %i.czq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dba = shufflevector <2 x float> %i.cyt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dbb = shufflevector <2 x float> %i.czy, <2 x float> %i.daw, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dbc = shufflevector <2 x float> %i.czy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dbd = fmul <4 x float> %i.dbb, %i.dbc        ; 2 uses
  %i.dbe = shufflevector <2 x float> %i.cyx, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.dbf = extractelement <4 x float> %i.dan, i64 2
  %i.dbg = shufflevector <4 x float> %i.daj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dbh = shufflevector <4 x float> %i.dbg, <4 x float> %i.dax, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dbi = shufflevector <4 x float> %i.dbh, <4 x float> %i.dan, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.dbj = shufflevector <4 x float> %i.dbi, <4 x float> %i.dbd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dbk = shufflevector <4 x float> %i.dbd, <4 x float> %i.dax, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.dbl = shufflevector <2 x float> %i.czq, <2 x float> %i.cys, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.dbm = insertelement <4 x float> %i.dbe, float %i.cym, i64 3
  %i.dbn = shufflevector <4 x float> %i.dbm, <4 x float> %i.daz, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.dbo = shufflevector <4 x float> %i.dbn, <4 x float> %i.dba, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cqq, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqq, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.dbp = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.dbq = sext i32 %.0 to i64
  %i.dbr = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.dbq
  %i.dbs = getelementptr i8, ptr %i.dbr, i64 -64
  %i.dbt = load ptr, ptr %i.dbs, align 8, !tbaa !74
  %i.dbu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !62 ; 2 uses
  %i.dbv = fdiv float %i.dbu, f0x40490FDB
  %i.dbw = fmul float %i.dbv, 1.800000e+02
  %i.dbx = fpext float %i.dbw to double
  %i.dby = fpext float %i.dbu to double
  %i.dbz = load <2 x float>, ptr %i.dbp, align 8, !tbaa !9 ; 2 uses
  %i.dca = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.dbt, double noundef %i.dbx, double noundef %i.dby) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.dcb = fadd <2 x float> %i.dbz, splat (float 1.500000e+01)
  store <2 x float> %i.dcb, ptr %40, align 8, !tbaa !9
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cqq, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.dcc = fadd <2 x float> %i.dbz, splat (float 1.400000e+01)
  store <2 x float> %i.dcc, ptr %41, align 8, !tbaa !9
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cqq, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ] ; 3 uses
  br i1 %i.czm, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
end_hunk_1
begin_hunk_2_@_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE:bb.a
  %i.w = insertelement <2 x float> %i.v, float %i.r, i64 1 ; 3 uses
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.x              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ab = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.ac, %i.w
  %i.ae = fmul <2 x float> %i.ad, %i.y            ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.w
  %i.ai = fmul <2 x float> %i.y, %i.ah            ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.z, %i.ak
  %i.am = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> zeroinitializer
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.am, <2 x float> %i.al)
  %i.ao = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ap = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ao, <2 x float> %i.an)
  %i.aq = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fadd <2 x float> %i.aq, %i.ap
  %i.as = fdiv <2 x float> splat (float 5.000000e-01), %i.ar
  %i.at = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ax = fmul <4 x float> %i.aa, %i.aw
  %i.ay = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.au, <4 x float> %i.ax)
  %i.ba = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.bb, <4 x float> %i.az)
  %i.bf = fadd <4 x float> %i.bd, %i.be
  %i.bg = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bh = fmul <4 x float> %i.bf, %i.bg           ; 4 uses
  %i.bi = extractelement <4 x float> %i.bh, i64 1
  %i.bj = fadd float %i.bi, 5.000000e-01
  %i.bk = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float 1.000000e+00, i64 1
  %i.bm = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bj, i64 1
  %i.bn = fsub <2 x float> %i.bl, %i.bm
  %i.bo = fmul <2 x float> %i.o, %i.bn
  %i.bp = fadd <2 x float> %i.p, %i.bo
  store <2 x float> %i.bp, ptr %1, align 8
  %i.bq = extractelement <4 x float> %i.bh, i64 3
  %i.br = fadd float %i.bq, 5.000000e-01
  %i.bs = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float 1.000000e+00, i64 1
  %i.bu = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.br, i64 1
  %i.bv = fsub <2 x float> %i.bt, %i.bu
  %i.bw = fmul <2 x float> %i.o, %i.bv
  %i.bx = fadd <2 x float> %i.p, %i.bw
  store <2 x float> %i.bx, ptr %2, align 8
  %i.by = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !33
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.by, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -2147483648, float noundef 6.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.bz = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_ImGuizmo.cpp() #18 section ".text.startup" {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), i8 0, i64 24, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !31
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !32
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZN8ImGuizmoL14directionUnaryE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"_ZTSN8ImGuizmo5vec_tE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!13 = !{!12, !10, i64 8}
!14 = !{!12, !10, i64 4}
!15 = !{!12, !10, i64 12}
!16 = !{!7, !7, i64 0}
!17 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9}
!18 = !{!19, !10, i64 964}
!19 = !{!"_ZTSN8ImGuizmo7ContextE", !20, i64 0, !22, i64 8, !23, i64 12, !23, i64 76, !23, i64 140, !23, i64 204, !23, i64 268, !23, i64 332, !23, i64 396, !23, i64 460, !12, i64 524, !12, i64 540, !12, i64 556, !12, i64 572, !12, i64 588, !12, i64 604, !12, i64 620, !10, i64 636, !24, i64 640, !24, i64 648, !24, i64 656, !10, i64 664, !12, i64 668, !25, i64 684, !25, i64 685, !12, i64 688, !12, i64 704, !12, i64 720, !12, i64 736, !10, i64 752, !10, i64 756, !12, i64 760, !12, i64 776, !10, i64 792, !7, i64 796, !7, i64 799, !7, i64 804, !12, i64 816, !12, i64 832, !12, i64 848, !12, i64 864, !6, i64 880, !7, i64 884, !25, i64 892, !23, i64 896, !6, i64 960, !10, i64 964, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !10, i64 988, !25, i64 992}
!20 = !{!"p1 _ZTS10ImDrawList", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSN8ImGuizmo4MODEE", !7, i64 0}
!23 = !{!"_ZTSN8ImGuizmo8matrix_tE", !7, i64 0}
!24 = !{!"_ZTS6ImVec2", !10, i64 0, !10, i64 4}
!25 = !{!"bool", !7, i64 0}
!26 = !{!19, !10, i64 968}
!27 = !{!19, !10, i64 972}
!28 = !{!19, !10, i64 976}
!29 = !{!19, !10, i64 980}
!30 = !{!19, !10, i64 984}
!31 = !{!19, !10, i64 988}
!32 = !{!19, !25, i64 992}
!33 = !{!19, !20, i64 0}
!34 = !{!19, !25, i64 684}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!38, !10, i64 288}
!38 = !{!"_ZTS7ImGuiIO", !6, i64 0, !6, i64 4, !24, i64 8, !10, i64 16, !10, i64 20, !39, i64 24, !39, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !7, i64 52, !10, i64 140, !10, i64 144, !21, i64 152, !40, i64 160, !10, i64 168, !25, i64 172, !41, i64 176, !24, i64 184, !25, i64 192, !25, i64 193, !25, i64 194, !25, i64 195, !25, i64 196, !25, i64 197, !10, i64 200, !39, i64 208, !39, i64 216, !21, i64 224, !21, i64 232, !21, i64 240, !21, i64 248, !21, i64 256, !21, i64 264, !21, i64 272, !21, i64 280, !24, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !25, i64 312, !25, i64 313, !25, i64 314, !25, i64 315, !7, i64 316, !7, i64 828, !25, i64 908, !25, i64 909, !25, i64 910, !25, i64 911, !25, i64 912, !25, i64 913, !25, i64 914, !10, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !24, i64 940, !25, i64 948, !6, i64 952, !6, i64 956, !24, i64 960, !7, i64 968, !7, i64 1008, !7, i64 1048, !7, i64 1053, !7, i64 1058, !7, i64 1063, !7, i64 1068, !7, i64 1073, !7, i64 1080, !7, i64 1100, !7, i64 1120, !7, i64 1160, !7, i64 1180, !7, i64 3228, !7, i64 5276, !7, i64 5356, !10, i64 5436, !25, i64 5440, !42, i64 5442, !43, i64 5448}
!39 = !{!"p1 omnipotent char", !21, i64 0}
!40 = !{!"p1 _ZTS11ImFontAtlas", !21, i64 0}
!41 = !{!"p1 _ZTS6ImFont", !21, i64 0}
!42 = !{!"short", !7, i64 0}
!43 = !{!"_ZTS8ImVectorItE", !6, i64 0, !6, i64 4, !44, i64 8}
!44 = !{!"p1 short", !21, i64 0}
!45 = !{!19, !10, i64 648}
!46 = !{!38, !10, i64 292}
!47 = !{!19, !10, i64 652}
!48 = !{!19, !10, i64 664}
!49 = !{!25, !25, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!19, !10, i64 640}
!53 = !{!19, !10, i64 644}
!54 = !{!19, !10, i64 636}
!55 = distinct !{!55, !51}
!56 = !{!19, !25, i64 685}
!57 = !{!19, !25, i64 892}
!58 = !{!19, !22, i64 8}
!59 = !{i64 0, i64 64, !16}
!60 = !{!19, !6, i64 960}
!61 = !{!19, !10, i64 756}
!62 = !{!19, !10, i64 752}
!63 = !{!19, !10, i64 792}
!64 = !{!19, !6, i64 880}
!65 = !{!6, !6, i64 0}
!66 = distinct !{!66, !51}
!67 = !{!24, !10, i64 0}
!68 = !{!24, !10, i64 4}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51}
!71 = distinct !{!71, !51}
!72 = distinct !{!72, !51}
!73 = distinct !{!73, !51}
!74 = !{!39, !39, i64 0}
!75 = distinct !{!75, !51}
!76 = distinct !{!76, !51}
!77 = distinct !{!77, !51}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !51}
!80 = distinct !{!80, !51}
end_hunk_2
