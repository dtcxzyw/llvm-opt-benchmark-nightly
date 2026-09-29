Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@imdct_step3_inner_s_loop:bb.a
  store float %i.ci, ptr %i.bz, align 4, !tbaa !63
  %i.cj = load float, ptr %i.cc, align 4, !tbaa !63
  %i.ck = extractelement <2 x float> %i.cd, i64 0
  %i.cl = fadd float %i.ck, %i.cj
  store float %i.cl, ptr %i.cb, align 4, !tbaa !63
  %i.cm = fmul <2 x float> %i.am, %i.cg
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ak, <2 x float> %i.cn)
  store <2 x float> %i.co, ptr %i.cc, align 4, !tbaa !63
  %i.cp = getelementptr inbounds i8, ptr %.0104107, i64 -24
  %i.cq = getelementptr inbounds i8, ptr %.0108, i64 -24
  %i.cr = getelementptr inbounds i8, ptr %.0104107, i64 -28 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.0108, i64 -28 ; 3 uses
  %i.ct = load <2 x float>, ptr %i.cr, align 4, !tbaa !63 ; 3 uses
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !63
  %i.cv = load <2 x float>, ptr %i.cs, align 4, !tbaa !63
  %i.cw = fsub <2 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = extractelement <2 x float> %i.ct, i64 1
  %i.cy = fadd float %i.cx, %i.cu
  store float %i.cy, ptr %i.cp, align 4, !tbaa !63
  %i.cz = load float, ptr %i.cs, align 4, !tbaa !63
  %i.da = extractelement <2 x float> %i.ct, i64 0
  %i.db = fadd float %i.da, %i.cz
  store float %i.db, ptr %i.cr, align 4, !tbaa !63
  %i.dc = fmul <2 x float> %i.ai, %i.cw
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ag, <2 x float> %i.dd)
  store <2 x float> %i.de, ptr %i.cs, align 4, !tbaa !63
  %i.df = getelementptr inbounds [4 x i8], ptr %.0104107, i64 %i.ae
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0108, i64 %i.ae
  %i.dh = add nsw i32 %.0105106, -1
  %i.di = icmp samesign ugt i32 %.0105106, 1
  br i1 %i.di, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_inner_s_loop_ld654(i32 noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = shl nsw i32 %0, 4
  %i.d = sext i32 %i.c to i64
  %.neg = mul nsw i64 %i.d, -4
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.neg
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = ashr i32 %4, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %3, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !63 ; 2 uses
  %i.k = fneg float %i.j
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %i.k, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.075 = phi ptr [ %i.b, %.lr.ph ], [ %i.cs, %bb.b ] ; 13 uses
  %i.o = getelementptr inbounds i8, ptr %.075, i64 -4
  %i.p = getelementptr inbounds i8, ptr %.075, i64 -36
  %i.q = getelementptr inbounds i8, ptr %.075, i64 -8
  %i.r = getelementptr inbounds i8, ptr %.075, i64 -40
  %i.s = getelementptr inbounds i8, ptr %.075, i64 -12 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.075, i64 -44 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.075, i64 -20
  %i.v = getelementptr inbounds i8, ptr %.075, i64 -52
  %i.w = getelementptr inbounds i8, ptr %.075, i64 -24
  %i.x = getelementptr inbounds i8, ptr %.075, i64 -56
  %i.y = getelementptr inbounds i8, ptr %.075, i64 -28 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.075, i64 -60 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.o, align 4, !tbaa !63 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !63 ; 2 uses
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = load <2 x float>, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.ae = load float, ptr %i.q, align 4, !tbaa !63
  %i.af = load <2 x float>, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.ag = load float, ptr %i.r, align 4, !tbaa !63
  %i.ah = load <2 x float>, ptr %i.y, align 4, !tbaa !63 ; 2 uses
  %i.ai = load float, ptr %i.w, align 4, !tbaa !63
  %i.aj = load <2 x float>, ptr %i.z, align 4, !tbaa !63 ; 2 uses
  %i.ak = load float, ptr %i.x, align 4, !tbaa !63
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.an = fsub <4 x float> %i.al, %i.am           ; 4 uses
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aq = fadd <2 x float> %i.ao, %i.ap
  %i.ar = fsub <2 x float> %i.ao, %i.ap
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = fmul <2 x float> %i.m, %i.as            ; 2 uses
  %i.au = load <2 x float>, ptr %i.u, align 4, !tbaa !63 ; 2 uses
  %i.av = load <2 x float>, ptr %i.v, align 4, !tbaa !63 ; 2 uses
  %i.aw = fsub <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.az = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ba = fsub <2 x float> %i.ay, %i.az
  %i.bb = fadd <2 x float> %i.ay, %i.az
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.bd = fmul <2 x float> %i.n, %i.bc            ; 2 uses
  %i.be = fadd <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x float> %i.bf, float %i.ae, i64 0
  %i.bh = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x float> %i.bh, float %i.ag, i64 0
  %i.bj = fadd <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = fadd <2 x float> %i.au, %i.av           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x float> %i.bl, float %i.ai, i64 0
  %i.bn = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.ak, i64 0
  %i.bp = fadd <2 x float> %i.bm, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.bj, %i.bp
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bs = fsub <2 x float> %i.be, %i.bk
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bu = fadd <2 x float> %i.be, %i.bk
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bw = fadd <2 x float> %i.bj, %i.bp
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.by = fsub <4 x float> %i.bv, %i.bx
  %i.bz = fadd <4 x float> %i.bv, %i.bx
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ca, ptr %i.s, align 4, !tbaa !63
  %i.cb = fadd <4 x float> %i.bt, %i.br
  %i.cc = fsub <4 x float> %i.bt, %i.br
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.cd, ptr %i.y, align 4, !tbaa !63
  %i.ce = fsub <2 x float> %i.at, %i.bd
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cg = fadd <2 x float> %i.ac, %i.ax           ; 2 uses
  %i.ch = fsub <2 x float> %i.ac, %i.ax           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ck = fadd <2 x float> %i.at, %i.bd
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.cm = fsub <4 x float> %i.cj, %i.cl
  %i.cn = fadd <4 x float> %i.cj, %i.cl
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.co, ptr %i.t, align 4, !tbaa !63
  %i.cp = fadd <4 x float> %i.ci, %i.cf
  %i.cq = fsub <4 x float> %i.ci, %i.cf
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.cr, ptr %i.z, align 4, !tbaa !63
  %i.cs = getelementptr inbounds i8, ptr %.075, i64 -64 ; 2 uses
  %i.ct = icmp ugt ptr %i.cs, %i.e
  br i1 %i.ct, label %bb.b, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #24 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4, !tbaa !45
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = sext i32 %3 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388423 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409424 = icmp eq i32 %i.a, 0
  br i1 %.not409424, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 4 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader534, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %4 = lshr exact i64 %i.ab, 1
  %5 = and i64 %4, 9223372036854775800            ; 2 uses
  %6 = add nsw i64 %.idx, -8
  %i.ae = sub i64 %6, %5
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ae ; 2 uses
  %i.af = or i64 %i.ab, 12
  %scevgep513 = getelementptr i8, ptr %0, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.x, i64 %5
  %scevgep514 = getelementptr i8, ptr %i.ag, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep513
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0515 = icmp ult ptr %scevgep, %scevgep514
  %bound1516 = icmp ult ptr %i.x, %i.z
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx = or i1 %found.conflict, %found.conflict517
  br i1 %conflict.rdx, label %.lr.ph.preheader534, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ah = and i64 %i.ad, 3                        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 4, i64 %i.ah
  %n.vec = sub nsw i64 %i.ad, %i.aj               ; 4 uses
  %i.ak = mul i64 %n.vec, -8                      ; 2 uses
  %i.al = getelementptr i8, ptr %.0388423, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.z, i64 %i.ak
  %i.an = shl i64 %n.vec, 4
  %i.ao = getelementptr i8, ptr %0, i64 %i.an
  %i.ap = shl i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ar = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388423, i64 %i.ar
  %i.as = shl i64 %index, 4                       ; 4 uses
  %next.gep518 = getelementptr i8, ptr %0, i64 %i.as ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 %i.as     ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.at, i64 16 ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 %i.as     ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.au, i64 32 ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 %i.as     ; 2 uses
  %next.gep521 = getelementptr i8, ptr %i.av, i64 48 ; 2 uses
  %i.aw = shl i64 %index, 3
  %next.gep522 = getelementptr i8, ptr %i.x, i64 %i.aw ; 2 uses
  %i.ax = load float, ptr %next.gep518, align 4, !tbaa !63, !alias.scope !255
  %i.ay = load float, ptr %next.gep519, align 4, !tbaa !63, !alias.scope !255
  %i.az = load float, ptr %next.gep520, align 4, !tbaa !63, !alias.scope !255
  %i.ba = load float, ptr %next.gep521, align 4, !tbaa !63, !alias.scope !255
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3
  %wide.vec = load <8 x float>, ptr %next.gep522, align 4, !tbaa !63, !alias.scope !256 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bf = getelementptr inbounds nuw i8, ptr %next.gep518, i64 8 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.au, i64 40     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.av, i64 56     ; 2 uses
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !63, !alias.scope !255
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !63, !alias.scope !255
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !63, !alias.scope !255
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !63, !alias.scope !255
  %i.bn = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 2
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 3
  %i.br = fneg <8 x float> %wide.vec
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bt = fmul <4 x float> %i.bq, %i.bs
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %strided.vec, <4 x float> %i.bt)
  %i.bv = load float, ptr %next.gep518, align 4, !tbaa !63, !alias.scope !255
  %i.bw = load float, ptr %next.gep519, align 4, !tbaa !63, !alias.scope !255
  %i.bx = load float, ptr %next.gep520, align 4, !tbaa !63, !alias.scope !255
  %i.by = load float, ptr %next.gep521, align 4, !tbaa !63, !alias.scope !255
  %i.bz = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 3
  %wide.vec524 = load <8 x float>, ptr %next.gep522, align 4, !tbaa !63, !alias.scope !256 ; 2 uses
  %strided.vec525 = shufflevector <8 x float> %wide.vec524, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec526 = shufflevector <8 x float> %wide.vec524, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cd = load float, ptr %i.bf, align 4, !tbaa !63, !alias.scope !255
  %i.ce = load float, ptr %i.bg, align 4, !tbaa !63, !alias.scope !255
  %i.cf = load float, ptr %i.bh, align 4, !tbaa !63, !alias.scope !255
  %i.cg = load float, ptr %i.bi, align 4, !tbaa !63, !alias.scope !255
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = fmul <4 x float> %i.ck, %strided.vec525
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %strided.vec526, <4 x float> %i.cl)
  %i.cn = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cm, <4 x float> %i.bu, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.cn, align 4, !tbaa !63, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %.lr.ph.preheader534, label %vector.body, !llvm.loop !244

.lr.ph.preheader534:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.0388428.ph = phi ptr [ %.0388423, %vector.memcheck ], [ %.0388423, %.lr.ph.preheader ], [ %i.al, %vector.body ]
  %.pn419427.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.am, %vector.body ]
  %.0397426.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ao, %vector.body ]
  %.0399425.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.aq, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader534, %.lr.ph
  %.0388428 = phi ptr [ %.0388, %.lr.ph ], [ %.0388428.ph, %.lr.ph.preheader534 ] ; 3 uses
  %.pn419427 = phi ptr [ %.0388428, %.lr.ph ], [ %.pn419427.ph, %.lr.ph.preheader534 ]
  %.0397426 = phi ptr [ %i.dg, %.lr.ph ], [ %.0397426.ph, %.lr.ph.preheader534 ] ; 4 uses
  %.0399425 = phi ptr [ %i.df, %.lr.ph ], [ %.0399425.ph, %.lr.ph.preheader534 ] ; 4 uses
  %i.cp = load float, ptr %.0397426, align 4, !tbaa !63
  %i.cq = load float, ptr %.0399425, align 4, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %.0397426, i64 8 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !63
  %i.ct = getelementptr inbounds nuw i8, ptr %.0399425, i64 4 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !63
  %i.cv = fneg float %i.cu
  %i.cw = fmul float %i.cs, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.cw)
  %i.cy = getelementptr i8, ptr %.pn419427, i64 -4
  store float %i.cx, ptr %i.cy, align 4, !tbaa !63
  %i.cz = load float, ptr %.0397426, align 4, !tbaa !63
  %i.da = load float, ptr %i.ct, align 4, !tbaa !63
  %i.db = load float, ptr %i.cr, align 4, !tbaa !63
  %i.dc = load float, ptr %.0399425, align 4, !tbaa !63
  %i.dd = fmul float %i.db, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.da, float %i.dd)
  store float %i.de, ptr %.0388428, align 4, !tbaa !63
  %i.df = getelementptr inbounds nuw i8, ptr %.0399425, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0397426, i64 16 ; 2 uses
  %.0388 = getelementptr i8, ptr %.0388428, i64 -8 ; 2 uses
  %.not409 = icmp eq ptr %i.dg, %i.aa
  br i1 %.not409, label %._crit_edge, label %.lr.ph, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph, %setup_temp_malloc.exit
  %.0399.lcssa = phi ptr [ %i.x, %setup_temp_malloc.exit ], [ %i.df, %.lr.ph ]
  %.0388.lcssa = phi ptr [ %.0388423, %setup_temp_malloc.exit ], [ %.0388, %.lr.ph ] ; 2 uses
  %.not410430 = icmp ult ptr %.0388.lcssa, %i.t
  br i1 %.not410430, label %._crit_edge436, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %._crit_edge
  %i.dh = getelementptr i8, ptr %i.aa, i64 -12
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %.lr.ph435
  %.1389433 = phi ptr [ %i.ea, %.lr.ph435 ], [ %.0388.lcssa, %.lr.ph435.preheader ] ; 3 uses
  %.1398432 = phi ptr [ %i.ec, %.lr.ph435 ], [ %i.dh, %.lr.ph435.preheader ] ; 4 uses
  %.1400431 = phi ptr [ %i.eb, %.lr.ph435 ], [ %.0399.lcssa, %.lr.ph435.preheader ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1398432, i64 8 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !63
  %i.dk = fneg float %i.dj
  %i.dl = load float, ptr %.1400431, align 4, !tbaa !63
  %i.dm = load float, ptr %.1398432, align 4, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %.1400431, i64 4 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !63
  %i.dp = fmul float %i.dm, %i.do
  %i.dq = call float @llvm.fmuladd.f32(float %i.dk, float %i.dl, float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %.1389433, i64 4
  store float %i.dq, ptr %i.dr, align 4, !tbaa !63
  %i.ds = load float, ptr %i.di, align 4, !tbaa !63
  %i.dt = fneg float %i.ds
  %i.du = load float, ptr %i.dn, align 4, !tbaa !63
  %i.dv = load float, ptr %.1398432, align 4, !tbaa !63
  %i.dw = fneg float %i.dv
  %i.dx = load float, ptr %.1400431, align 4, !tbaa !63
  %i.dy = fmul float %i.dx, %i.dw
  %i.dz = call float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.dy)
  store float %i.dz, ptr %.1389433, align 4, !tbaa !63
  %i.ea = getelementptr inbounds i8, ptr %.1389433, i64 -8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1400431, i64 8
  %i.ec = getelementptr inbounds i8, ptr %.1398432, i64 -16
  %.not410 = icmp ult ptr %i.ea, %i.t
  br i1 %.not410, label %._crit_edge436, label %.lr.ph435, !llvm.loop !246

._crit_edge436:                                   ; preds = %.lr.ph435, %._crit_edge
  %i.ed = getelementptr [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.ee = sext i32 %i.b to i64                    ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.t, i64 %i.ee ; 3 uses
  %.0405437 = getelementptr i8, ptr %i.ed, i64 -32 ; 2 uses
  %.not411438 = icmp ult ptr %.0405437, %i.x
  br i1 %.not411438, label %._crit_edge447, label %.lr.ph446.preheader

.lr.ph446.preheader:                              ; preds = %._crit_edge436
  %i.eg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ee
  br label %.lr.ph446

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.lr.ph446
  %.0405444 = phi ptr [ %.0405, %.lr.ph446 ], [ %.0405437, %.lr.ph446.preheader ] ; 4 uses
  %.0401443 = phi ptr [ %i.gl, %.lr.ph446 ], [ %i.t, %.lr.ph446.preheader ] ; 6 uses
  %.0402442 = phi ptr [ %i.gk, %.lr.ph446 ], [ %i.ef, %.lr.ph446.preheader ] ; 6 uses
  %.0403441 = phi ptr [ %i.gj, %.lr.ph446 ], [ %0, %.lr.ph446.preheader ] ; 5 uses
  %.0404440 = phi ptr [ %i.gi, %.lr.ph446 ], [ %i.eg, %.lr.ph446.preheader ] ; 5 uses
  %.pn418439 = phi ptr [ %.0405444, %.lr.ph446 ], [ %i.ed, %.lr.ph446.preheader ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0402442, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !63 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0401443, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !63 ; 2 uses
  %i.el = fsub float %i.ei, %i.ek                 ; 2 uses
  %i.em = load float, ptr %.0402442, align 4, !tbaa !63
  %i.en = load float, ptr %.0401443, align 4, !tbaa !63
  %i.eo = fsub float %i.em, %i.en                 ; 2 uses
  %i.ep = fadd float %i.ei, %i.ek
  %i.eq = getelementptr inbounds nuw i8, ptr %.0404440, i64 4
  store float %i.ep, ptr %i.eq, align 4, !tbaa !63
  %i.er = load float, ptr %.0402442, align 4, !tbaa !63
  %i.es = load float, ptr %.0401443, align 4, !tbaa !63
end_hunk_0
