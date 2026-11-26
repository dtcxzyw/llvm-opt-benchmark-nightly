Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3733
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi6ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.x, %bb.y, %bb.aa, %bb.z, %bb.p
  %.pn139.pn = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %i.cu, %bb.z ], [ %i.dj, %bb.af ], [ %i.cs, %bb.x ], [ %i.ct, %bb.y ], [ %i.cv, %bb.aa ], [ %i.dk, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.af, label %bb.ai, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186: ; preds = %bb.ah, %bb.ai, %bb.m
  %.pn139.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn139.pn, %bb.ai ], [ %.pn139.pn, %bb.ah ]
  br i1 %i.s, label %bb.aj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187

bb.aj:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186, %bb.aj
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !598
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sdiv i64 %3, 4
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = icmp sgt i64 %4, 3
  br i1 %i.f, label %.lr.ph94, label %.preheader

.lr.ph94:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = icmp sgt i64 %3, 3
  br i1 %i.h, label %.lr.ph.us.preheader, label %.lr.ph94.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph94
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.i = or disjoint i64 %smax, 1
  %smax137 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.i)
  %i.j = xor i64 %smax, -1
  %i.k = add nsw i64 %smax137, %i.j               ; 2 uses
  %smax167 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4)
  %i.l = add nsw i64 %smax167, -1                 ; 2 uses
  %i.m = and i64 %i.l, -4
  %i.n = add nuw nsw i64 %i.m, 5
  %smax168 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.n) ; 2 uses
  %i.o = shl i64 %smax168, 2
  %i.p = lshr i64 %i.l, 2                         ; 2 uses
  %i.q = shl i64 %i.p, 4
  %i.r = sub i64 %i.o, %i.q                       ; 4 uses
  %i.s = shl i64 %smax168, 4
  %i.t = shl i64 %i.p, 6
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.w = or disjoint i64 %i.v, 1
  %i.x = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.w) ; 2 uses
  %i.y = sub nsw i64 %i.x, %i.v                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 44
  %mul.result = shl i64 %i.k, 4                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.k, 1152921504606846975
  %i.z = getelementptr i8, ptr %1, i64 %i.u
  %i.aa = and i64 %i.x, 3                         ; 2 uses
  %n.vec = sub i64 %i.y, %i.aa                    ; 3 uses
  %i.ab = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.aa, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar165 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next166, %._crit_edge.us ] ; 2 uses
  %.06092.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.cb, %._crit_edge.us ] ; 5 uses
  %.06191.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ] ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !138   ; 12 uses
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !139 ; 8 uses
  %i.ae = mul nsw i64 %i.ad, %.06092.us
  %i.af = getelementptr [4 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = or disjoint i64 %.06092.us, 1
  %i.ah = mul nsw i64 %i.ad, %i.ag
  %i.ai = getelementptr [4 x i8], ptr %i.ac, i64 %i.ah ; 3 uses
  %i.aj = or disjoint i64 %.06092.us, 2
  %i.ak = mul nsw i64 %i.ad, %i.aj
  %i.al = getelementptr [4 x i8], ptr %i.ac, i64 %i.ak ; 3 uses
  %i.am = or disjoint i64 %.06092.us, 3
  %i.an = mul nsw i64 %i.ad, %i.am
  %i.ao = getelementptr [4 x i8], ptr %i.ac, i64 %i.an ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.b ] ; 3 uses
  %.05985.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bk, %bb.b ] ; 5 uses
  %.16284.us = phi i64 [ %.06191.us, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.05985.us
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !tbaa !44 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05985.us
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !44 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.05985.us
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !44 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.05985.us
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !44 ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.az = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ba = shufflevector <4 x float> %i.au, <4 x float> %i.aw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bc = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bd = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.be = shufflevector <4 x float> %i.ba, <4 x float> %i.az, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %.16284.us ; 4 uses
  store <4 x float> %i.bb, ptr %i.bf, align 1, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x float> %i.bc, ptr %i.bg, align 1, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store <4 x float> %i.bd, ptr %i.bh, align 1, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store <4 x float> %i.be, ptr %i.bi, align 1, !tbaa !44
  %i.bj = add nsw i64 %.16284.us, 16              ; 7 uses
  %i.bk = add nuw nsw i64 %.05985.us, 4           ; 8 uses
  %i.bl = icmp slt i64 %i.bk, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bl, label %bb.b, label %..preheader83_crit_edge.us, !llvm.loop !584

.lr.ph89.us:                                      ; preds = %.lr.ph89.us.preheader204, %.lr.ph89.us
  %.188.us = phi i64 [ %i.bz, %.lr.ph89.us ], [ %.188.us.ph, %.lr.ph89.us.preheader204 ] ; 5 uses
  %.287.us = phi i64 [ %i.by, %.lr.ph89.us ], [ %.287.us.ph, %.lr.ph89.us.preheader204 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.188.us
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17
  %i.bo = getelementptr inbounds [4 x i8], ptr %1, i64 %.287.us ; 4 uses
  store float %i.bn, ptr %i.bo, align 4, !tbaa !17
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.188.us
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !17
  %i.br = getelementptr i8, ptr %i.bo, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !17
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.188.us
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !17
  %i.bu = getelementptr i8, ptr %i.bo, i64 8
  store float %i.bt, ptr %i.bu, align 4, !tbaa !17
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.188.us
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !17
  %i.bx = getelementptr i8, ptr %i.bo, i64 12
  store float %i.bw, ptr %i.bx, align 4, !tbaa !17
  %i.by = add nsw i64 %.287.us, 4                 ; 2 uses
  %i.bz = add nuw nsw i64 %.188.us, 1             ; 2 uses
  %i.ca = icmp slt i64 %i.bz, %3
  br i1 %i.ca, label %.lr.ph89.us, label %._crit_edge.us, !llvm.loop !585

._crit_edge.us:                                   ; preds = %.lr.ph89.us, %middle.block, %..preheader83_crit_edge.us
  %.2.lcssa.us = phi i64 [ %i.bj, %..preheader83_crit_edge.us ], [ %i.ej, %middle.block ], [ %i.by, %.lr.ph89.us ] ; 2 uses
  %i.cb = add nuw nsw i64 %.06092.us, 4           ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.c
  %indvar.next166 = add i64 %indvar165, 1
  br i1 %i.cc, label %.lr.ph.us, label %.preheader, !llvm.loop !586

..preheader83_crit_edge.us:                       ; preds = %bb.b
  %i.cd = icmp slt i64 %i.bk, %3
  br i1 %i.cd, label %.lr.ph89.us.preheader, label %._crit_edge.us

.lr.ph89.us.preheader:                            ; preds = %..preheader83_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph89.us.preheader204, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph89.us.preheader
  %i.ce = shl i64 %.06191.us, 2                   ; 3 uses
  %i.cf = shl i64 %indvar, 6                      ; 3 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.ce
  %scevgep = getelementptr i8, ptr %i.ch, i64 68  ; 2 uses
  %i.ci = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cj = icmp ult ptr %i.ci, %scevgep
  %i.ck = getelementptr i8, ptr %1, i64 %i.cf
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.ce
  %scevgep138 = getelementptr i8, ptr %i.cl, i64 72 ; 2 uses
  %i.cm = getelementptr i8, ptr %scevgep138, i64 %mul.result
  %i.cn = icmp ult ptr %i.cm, %scevgep138
  %i.co = getelementptr i8, ptr %1, i64 %i.cf
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.ce
  %scevgep139 = getelementptr i8, ptr %i.cp, i64 76 ; 2 uses
  %i.cq = getelementptr i8, ptr %scevgep139, i64 %mul.result
  %i.cr = icmp ult ptr %i.cq, %scevgep139
  %i.cs = or i1 %i.cr, %mul.overflow
  %i.ct = or i1 %i.cn, %i.cj
  %i.cu = or i1 %i.ct, %i.cs
  br i1 %i.cu, label %.lr.ph89.us.preheader204, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cv = shl i64 %.06191.us, 2                   ; 2 uses
  %i.cw = shl i64 %indvar, 6                      ; 2 uses
  %i.cx = getelementptr i8, ptr %1, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 64
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw  ; 4 uses
  %i.da = getelementptr i8, ptr %i.z, i64 %i.cv
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cw  ; 4 uses
  %i.dc = shl i64 %indvar165, 4                   ; 4 uses
  %i.dd = mul i64 %i.ad, %i.dc                    ; 2 uses
  %i.de = sub i64 %.16284.us, %.06191.us          ; 8 uses
  %i.df = getelementptr i8, ptr %i.ac, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.de
  %i.di = getelementptr i8, ptr %i.ac, i64 %i.r
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.dd
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.de
  %i.dl = or disjoint i64 %i.dc, 4
  %i.dm = mul i64 %i.ad, %i.dl                    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ac, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.de
  %i.dq = getelementptr i8, ptr %i.ac, i64 %i.r
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dm
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.de
  %i.dt = or disjoint i64 %i.dc, 8
  %i.du = mul i64 %i.ad, %i.dt                    ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ac, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.de
  %i.dy = getelementptr i8, ptr %i.ac, i64 %i.r
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.du
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.de
  %7 = or disjoint i64 %i.dc, 12
  %i.eb = mul i64 %i.ad, %7                       ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ac, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.de
  %i.ef = getelementptr i8, ptr %i.ac, i64 %i.r
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.eb
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.de
  %bound0 = icmp ult ptr %i.cz, %i.dk
  %bound1 = icmp ult ptr %i.dh, %i.db
  %found.conflict = and i1 %bound0, %bound1
  %bound0169 = icmp ult ptr %i.cz, %i.ds
  %bound1170 = icmp ult ptr %i.dp, %i.db
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx = or i1 %found.conflict, %found.conflict171
  %bound0172 = icmp ult ptr %i.cz, %i.ea
  %bound1173 = icmp ult ptr %i.dx, %i.db
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx, %found.conflict174
  %bound0176 = icmp ult ptr %i.cz, %i.eh
  %bound1177 = icmp ult ptr %i.ee, %i.db
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph89.us.preheader204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ei = add i64 %i.bk, %n.vec
  %i.ej = add i64 %i.bj, %i.ab                    ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %1, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.el = add nuw i64 %i.bk, %index               ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.el
  %wide.load = load <4 x float>, ptr %i.em, align 4, !tbaa !17, !alias.scope !599
  %.idx = shl i64 %index, 4
  %i.en = getelementptr i8, ptr %i.ek, i64 %.idx
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.el
  %wide.load180 = load <4 x float>, ptr %i.eo, align 4, !tbaa !17, !alias.scope !600
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.el
  %wide.load181 = load <4 x float>, ptr %i.ep, align 4, !tbaa !17, !alias.scope !601
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.el
  %wide.load182 = load <4 x float>, ptr %i.eq, align 4, !tbaa !17, !alias.scope !602
  %i.er = shufflevector <4 x float> %wide.load, <4 x float> %wide.load180, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.es = shufflevector <4 x float> %wide.load181, <4 x float> %wide.load182, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.er, <8 x float> %i.es, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.en, align 4, !tbaa !17, !alias.scope !603, !noalias !604
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph89.us.preheader204

.lr.ph89.us.preheader204:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph89.us.preheader, %middle.block
  %.188.us.ph = phi i64 [ %i.bk, %vector.memcheck ], [ %i.bk, %vector.scevcheck ], [ %i.bk, %.lr.ph89.us.preheader ], [ %i.ei, %middle.block ]
  %.287.us.ph = phi i64 [ %i.bj, %vector.memcheck ], [ %i.bj, %vector.scevcheck ], [ %i.bj, %.lr.ph89.us.preheader ], [ %i.ej, %middle.block ]
  br label %.lr.ph89.us

.lr.ph94.split:                                   ; preds = %.lr.ph94
  %i.eu = icmp sgt i64 %3, 0
  br i1 %i.eu, label %.lr.ph94.split.split.us, label %.preheader

.lr.ph94.split.split.us:                          ; preds = %.lr.ph94.split
  %i.ev = load ptr, ptr %2, align 8, !tbaa !138   ; 4 uses
  %i.ew = load i64, ptr %i.g, align 8, !tbaa !139 ; 4 uses
  %exitcond.not = icmp eq i64 %3, 1
  %exitcond.not.1 = icmp eq i64 %3, 2
  br label %.preheader83.us96

.preheader83.us96:                                ; preds = %._crit_edge.us102, %.lr.ph94.split.split.us
  %.06092.us97 = phi i64 [ 0, %.lr.ph94.split.split.us ], [ %i.gr, %._crit_edge.us102 ] ; 5 uses
  %.06191.us98 = phi i64 [ 0, %.lr.ph94.split.split.us ], [ %.lcssa209, %._crit_edge.us102 ] ; 4 uses
  %i.ex = mul nsw i64 %i.ew, %.06092.us97
  %i.ey = getelementptr [4 x i8], ptr %i.ev, i64 %i.ex ; 3 uses
  %i.ez = or disjoint i64 %.06092.us97, 1
  %i.fa = mul nsw i64 %i.ew, %i.ez
  %i.fb = getelementptr [4 x i8], ptr %i.ev, i64 %i.fa ; 3 uses
  %i.fc = or disjoint i64 %.06092.us97, 2
  %i.fd = mul nsw i64 %i.ew, %i.fc
  %i.fe = getelementptr [4 x i8], ptr %i.ev, i64 %i.fd ; 3 uses
  %i.ff = or disjoint i64 %.06092.us97, 3
  %i.fg = mul nsw i64 %i.ew, %i.ff
  %i.fh = getelementptr [4 x i8], ptr %i.ev, i64 %i.fg ; 3 uses
  %i.fi = load float, ptr %i.ey, align 4, !tbaa !17
  %i.fj = getelementptr inbounds [4 x i8], ptr %1, i64 %.06191.us98 ; 4 uses
  store float %i.fi, ptr %i.fj, align 4, !tbaa !17
  %i.fk = load float, ptr %i.fb, align 4, !tbaa !17
  %i.fl = getelementptr i8, ptr %i.fj, i64 4
  store float %i.fk, ptr %i.fl, align 4, !tbaa !17
  %i.fm = load float, ptr %i.fe, align 4, !tbaa !17
  %i.fn = getelementptr i8, ptr %i.fj, i64 8
  store float %i.fm, ptr %i.fn, align 4, !tbaa !17
  %i.fo = load float, ptr %i.fh, align 4, !tbaa !17
  %i.fp = getelementptr i8, ptr %i.fj, i64 12
  store float %i.fo, ptr %i.fp, align 4, !tbaa !17
  %i.fq = add nsw i64 %.06191.us98, 4             ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us102, label %bb.c

bb.c:                                             ; preds = %.preheader83.us96
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !17
  %i.ft = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fq ; 4 uses
  store float %i.fs, ptr %i.ft, align 4, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !17
  %i.fw = getelementptr i8, ptr %i.ft, i64 4
  store float %i.fv, ptr %i.fw, align 4, !tbaa !17
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !17
  %i.fz = getelementptr i8, ptr %i.ft, i64 8
  store float %i.fy, ptr %i.fz, align 4, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !17
  %i.gc = getelementptr i8, ptr %i.ft, i64 12
  store float %i.gb, ptr %i.gc, align 4, !tbaa !17
  %i.gd = add nsw i64 %.06191.us98, 8             ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us102, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !17
  %i.gg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gd ; 4 uses
  store float %i.gf, ptr %i.gg, align 4, !tbaa !17
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !17
  %i.gj = getelementptr i8, ptr %i.gg, i64 4
  store float %i.gi, ptr %i.gj, align 4, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !17
  %i.gm = getelementptr i8, ptr %i.gg, i64 8
  store float %i.gl, ptr %i.gm, align 4, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !17
  %i.gp = getelementptr i8, ptr %i.gg, i64 12
  store float %i.go, ptr %i.gp, align 4, !tbaa !17
  %i.gq = add nsw i64 %.06191.us98, 12
  br label %._crit_edge.us102

._crit_edge.us102:                                ; preds = %bb.d, %bb.c, %.preheader83.us96
  %.lcssa209 = phi i64 [ %i.fq, %.preheader83.us96 ], [ %i.gd, %bb.c ], [ %i.gq, %bb.d ] ; 2 uses
  %i.gr = add nuw nsw i64 %.06092.us97, 4         ; 2 uses
  %i.gs = icmp slt i64 %i.gr, %i.c
  br i1 %i.gs, label %.preheader83.us96, label %.preheader, !llvm.loop !586

.preheader:                                       ; preds = %._crit_edge.us102, %._crit_edge.us, %.lr.ph94.split, %bb.a
  %.061.lcssa = phi i64 [ 0, %bb.a ], [ %.2.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph94.split ], [ %.lcssa209, %._crit_edge.us102 ]
  %i.gt = icmp slt i64 %i.c, %4
  br i1 %i.gt, label %.lr.ph111, label %._crit_edge112.split

.lr.ph111:                                        ; preds = %.preheader
  %i.gu = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !139 ; 3 uses
  %i.gx = icmp sgt i64 %3, 0
  br i1 %i.gx, label %.lr.ph.preheader, label %._crit_edge112.split

.lr.ph.preheader:                                 ; preds = %.lr.ph111
  %i.gy = ptrtoaddr ptr %i.gu to i64
  %i.gz = mul i64 %i.gw, -4
  %i.ha = mul i64 %i.gw, %i.b
  %i.hb = shl i64 %i.ha, 4
  %i.hc = add i64 %i.hb, %i.gy
  %i.hd = sub i64 %i.a, %i.hc
  %min.iters.check190 = icmp ult i64 %3, 8
  %n.vec193 = and i64 %3, 9223372036854775800     ; 4 uses
  %cmp.n200 = icmp eq i64 %3, %n.vec193
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

._crit_edge112.split:                             ; preds = %._crit_edge, %.lr.ph111, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar187 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next188, %._crit_edge ] ; 2 uses
  %.058110 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.hz, %._crit_edge ] ; 2 uses
  %.3109 = phi i64 [ %.061.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.he = mul nsw i64 %i.gw, %.058110
  %i.hf = getelementptr [4 x i8], ptr %i.gu, i64 %i.he ; 6 uses
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph
  %i.hg = mul i64 %indvar187, %i.gz
  %i.hh = add i64 %i.hd, %i.hg
  %i.hi = shl i64 %.3109, 2
  %i.hj = add i64 %i.hh, %i.hi
  %i.hk = add i64 %i.hj, -1
  %diff.check = icmp ult i64 %i.hk, 31
  br i1 %diff.check, label %scalar.ph189.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck191
  %i.hl = add i64 %.3109, %n.vec193               ; 2 uses
  %i.hm = getelementptr [4 x i8], ptr %1, i64 %.3109
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index195 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load196 = load <4 x float>, ptr %i.hn, align 4, !tbaa !17
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f32
!404 = !{!379}
!405 = !{!378, !377}
!406 = distinct !{!406, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE17bottomRightCornerIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_"}
!407 = distinct !{!407, !406, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE17bottomRightCornerIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_: argument 0"}
!408 = distinct !{!408, i1 true, !"_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE15essentialVectorEl"}
!409 = distinct !{!409, !408, !"_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE15essentialVectorEl: argument 0"}
!410 = distinct !{!410, i1 true, !"_ZN5Eigen8internal24hseq_side_dependent_implINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi1ELi1ELi0ELi1ELi1EEELi1EE15essentialVectorERKNS_19HouseholderSequenceIS3_S4_Li1EEEl"}
!411 = distinct !{!411, !410, !"_ZN5Eigen8internal24hseq_side_dependent_implINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi1ELi1ELi0ELi1ELi1EEELi1EE15essentialVectorERKNS_19HouseholderSequenceIS3_S4_Li1EEEl: argument 0"}
!412 = distinct !{!412, !47}
!413 = distinct !{!413, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEEE7segmentIlEEKNS3_27ConstFixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeElS6_"}
!414 = distinct !{!414, !413, !"_ZNK5Eigen9DenseBaseINS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEEE7segmentIlEEKNS3_27ConstFixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeElS6_: argument 0"}
!415 = distinct !{!415, !47}
!416 = !{!407}
!417 = !{!409}
!418 = !{!411}
!419 = !{!411, !409}
!420 = !{!414}
!421 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseIKNS_6MatrixIfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0ELb1EEE", !113, i64 0, !37, i64 24, !51, i64 32, !57, i64 40, !39, i64 48}
!422 = !{!421, !39, i64 48}
!423 = distinct !{!423, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3rowEl"}
!424 = distinct !{!424, !423, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!425 = distinct !{!425, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEE3colEl"}
!426 = distinct !{!426, !425, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEE3colEl: argument 0"}
!427 = distinct !{!427, i1 false, !"LVerDomain"}
!428 = distinct !{!428, !427}
!429 = distinct !{!429, !427}
!430 = distinct !{!430, !427}
!431 = distinct !{!431, !47, !48, !49}
!432 = distinct !{!432, !64}
!433 = distinct !{!433, !47}
!434 = distinct !{!434, !64}
!435 = distinct !{!435, !47}
!436 = distinct !{!436, !47, !48}
!437 = distinct !{!437, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3rowEl"}
!438 = distinct !{!438, !437, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!439 = distinct !{!439, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEE3colEl"}
!440 = distinct !{!440, !439, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEE3colEl: argument 0"}
!441 = distinct !{!441, i1 false, !"LVerDomain"}
!442 = distinct !{!442, !441}
!443 = distinct !{!443, !441}
!444 = distinct !{!444, !441}
!445 = distinct !{!445, !47, !48, !49}
!446 = distinct !{!446, !64}
!447 = distinct !{!447, !64}
!448 = distinct !{!448, !47, !48}
!449 = distinct !{!449, !47}
!450 = distinct !{!450, !47}
!451 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEE", !103, i64 0, !104, i64 8, !105, i64 16, !107, i64 24}
!452 = !{!451, !107, i64 24}
!453 = !{!451, !103, i64 0}
!454 = !{!451, !104, i64 8}
!455 = !{!424}
!456 = !{!426}
!457 = !{!428}
!458 = !{!429}
!459 = !{!430}
!460 = !{!429, !428}
!461 = !{!438}
!462 = !{!440}
!463 = !{!442}
!464 = !{!443}
!465 = !{!444}
!466 = !{!443, !442}
!467 = distinct !{!467, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEE3rowEl"}
!468 = distinct !{!468, !467, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEE3rowEl: argument 0"}
!469 = distinct !{!469, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3colEl"}
!470 = distinct !{!470, !469, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!471 = distinct !{!471, i1 false, !"LVerDomain"}
!472 = distinct !{!472, !471}
!473 = distinct !{!473, !471}
!474 = distinct !{!474, !471}
!475 = distinct !{!475, !47, !48, !49}
!476 = distinct !{!476, !47}
!477 = distinct !{!477, !64}
!478 = distinct !{!478, !47}
!479 = distinct !{!479, !47, !48}
!480 = distinct !{!480, !47}
!481 = distinct !{!481, !64}
!482 = distinct !{!482, !47}
!483 = distinct !{!483, !64}
!484 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEE", !110, i64 0, !111, i64 8, !105, i64 16, !112, i64 24}
!485 = !{!484, !112, i64 24}
!486 = !{!484, !110, i64 0}
!487 = !{!484, !111, i64 8}
!488 = !{!468}
!489 = !{!470}
!490 = !{!472}
!491 = !{!473}
!492 = !{!474}
!493 = !{!472, !473}
!494 = distinct !{!494, !47, !48, !49}
!495 = distinct !{!495, !64}
!496 = distinct !{!496, !47, !48}
!497 = distinct !{!497, !47}
!498 = distinct !{!498, !47, !48, !49}
!499 = distinct !{!499, !64}
!500 = distinct !{!500, !47, !48}
!501 = distinct !{!501, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE3colEl"}
!502 = distinct !{!502, !501, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!503 = distinct !{!503, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_"}
!504 = distinct !{!504, !503, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_: argument 0"}
!505 = distinct !{!505, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE3rowEl"}
!506 = distinct !{!506, !505, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE3rowEl: argument 0"}
!507 = distinct !{!507, i1 true, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv"}
!508 = distinct !{!508, !507, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv: argument 0"}
!509 = distinct !{!509, i1 false, !"LVerDomain"}
!510 = distinct !{!510, !509}
!511 = distinct !{!511, !509}
!512 = distinct !{!512, !47, !48, !49}
!513 = distinct !{!513, !47, !48}
!514 = distinct !{!514, i1 false, !"LVerDomain"}
!515 = distinct !{!515, !514}
!516 = distinct !{!516, !514}
!517 = distinct !{!517, !47, !48, !49}
!518 = distinct !{!518, !47, !48}
!519 = distinct !{!519, !47}
!520 = distinct !{!520, !47}
!521 = !{!502}
!522 = !{!504}
!523 = !{!506}
!524 = !{!508}
!525 = !{!510}
!526 = !{!511}
!527 = !{!515}
!528 = !{!516}
!529 = distinct !{!529, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE3colEl"}
!530 = distinct !{!530, !529, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!531 = distinct !{!531, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_"}
!532 = distinct !{!532, !531, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_: argument 0"}
!533 = distinct !{!533, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE3rowEl"}
!534 = distinct !{!534, !533, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE3rowEl: argument 0"}
!535 = distinct !{!535, i1 true, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv"}
!536 = distinct !{!536, !535, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIfEEKNS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv: argument 0"}
!537 = distinct !{!537, i1 false, !"LVerDomain"}
!538 = distinct !{!538, !537}
!539 = distinct !{!539, !537}
!540 = distinct !{!540, !47, !48, !49}
!541 = distinct !{!541, !47, !48}
!542 = distinct !{!542, i1 false, !"LVerDomain"}
!543 = distinct !{!543, !542}
!544 = distinct !{!544, !542}
!545 = distinct !{!545, !47, !48, !49}
!546 = distinct !{!546, !47, !48}
!547 = distinct !{!547, !47}
!548 = distinct !{!548, !47}
!549 = !{!530}
!550 = !{!532}
!551 = !{!534}
!552 = !{!536}
!553 = !{!538}
!554 = !{!539}
!555 = !{!543}
!556 = !{!544}
!557 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEELi0EEE", !50, i64 0, !52, i64 8, !51, i64 16}
!558 = !{!557, !50, i64 0}
!559 = distinct !{!559, !47}
!560 = distinct !{!560, !47}
!561 = distinct !{!561, !47}
!562 = distinct !{!562, !64}
!563 = distinct !{!563, !47}
!564 = distinct !{!564, !47}
!565 = distinct !{!565, !47}
!566 = distinct !{!566, !47}
!567 = distinct !{!567, !47}
!568 = distinct !{!568, !47}
!569 = distinct !{!569, !47}
!570 = distinct !{!570, !47}
!571 = distinct !{!571, !47}
!572 = distinct !{!572, !47}
!573 = distinct !{!573, !47}
!574 = distinct !{!574, !47}
!575 = distinct !{!575, !64}
!576 = distinct !{!576, !64}
!577 = distinct !{!577, !47}
!578 = distinct !{!578, !47}
!579 = distinct !{!579, !47}
!580 = distinct !{!580, !47}
!581 = distinct !{!581, !47}
!582 = distinct !{!582, !47}
!583 = distinct !{!583, !47}
!584 = distinct !{!584, !47}
!585 = distinct !{!585, !47, !48}
!586 = distinct !{!586, !47}
!587 = distinct !{!587, i1 false, !"LVerDomain"}
!588 = distinct !{!588, !587}
!589 = distinct !{!589, !587}
!590 = distinct !{!590, !587}
!591 = distinct !{!591, !587}
!592 = distinct !{!592, !587}
!593 = distinct !{!593, !47, !48, !49}
!594 = distinct !{!594, !47, !48, !49}
!595 = distinct !{!595, !64}
!596 = distinct !{!596, !47}
!597 = distinct !{!597, !47, !48}
!598 = !{i64 2156083767}
!599 = !{!588}
!600 = !{!589}
!601 = !{!590}
!602 = !{!591}
!603 = !{!592}
!604 = !{!588, !589, !590, !591}
!605 = distinct !{!605, !47}
!606 = distinct !{!606, !47}
!607 = distinct !{!607, !47}
!608 = distinct !{!608, !47, !48, !49}
!609 = distinct !{!609, !64}
!610 = distinct !{!610, !47}
!611 = distinct !{!611, !47, !48}
!612 = !{i64 2156083456}
!613 = distinct !{!613, !47}
!614 = distinct !{!614, !47}
!615 = distinct !{!615, !47}
!616 = distinct !{!616, !47}
!617 = distinct !{!617, !47}
!618 = distinct !{!618, !47}
!619 = distinct !{!619, !47}
!620 = distinct !{!620, !47}
!621 = distinct !{!621, !47}
!622 = distinct !{!622, !47}
!623 = distinct !{!623, !47}
!624 = distinct !{!624, !47}
!625 = distinct !{!625, !47}
!626 = distinct !{!626, !47}
!627 = distinct !{!627, !47}
!628 = distinct !{!628, !64}
!629 = distinct !{!629, !47}
!630 = !{i64 2156074406}
!631 = !{i64 2156075229}
!632 = !{i64 2156075283}
!633 = !{i64 2156075346}
!634 = !{i64 2156076175}
!635 = !{i64 2156076229}
!636 = !{i64 2156076292}
!637 = !{i64 2156077121}
!638 = !{i64 2156077175}
!639 = !{i64 2156077238}
!640 = !{i64 2156078067}
!641 = !{i64 2156078121}
!642 = !{i64 2156078184}
!643 = !{i64 2156079013}
!644 = !{i64 2156079067}
!645 = !{i64 2156079130}
!646 = !{i64 2156079959}
!647 = !{i64 2156080013}
!648 = !{i64 2156080076}
!649 = !{i64 2156080905}
!650 = !{i64 2156080959}
!651 = !{i64 2156081022}
!652 = !{i64 2156081851}
!653 = !{i64 2156081905}
!654 = !{i64 2156081968}
!655 = !{i64 2156082020}
!656 = !{i64 2156082841}
!657 = !{i64 2156082895}
!658 = !{i64 2156082958}
!659 = !{i64 2156062841}
!660 = !{i64 2156064112}
!661 = !{i64 2156064166}
!662 = !{i64 2156065380}
!663 = !{i64 2156065434}
!664 = !{i64 2156066648}
!665 = !{i64 2156066702}
!666 = !{i64 2156067916}
!667 = !{i64 2156067970}
!668 = !{i64 2156069184}
!669 = !{i64 2156069238}
!670 = !{i64 2156070452}
!671 = !{i64 2156070506}
!672 = !{i64 2156071720}
!673 = !{i64 2156071774}
!674 = !{i64 2156072988}
!675 = !{i64 2156073042}
!676 = !{i64 2156073094}
!677 = !{i64 2156074300}
!678 = !{i64 2156074354}
!679 = distinct !{!679, !47}
!680 = distinct !{!680, !47}
!681 = distinct !{!681, !47}
!682 = distinct !{!682, !47}
!683 = distinct !{!683, !47}
!684 = distinct !{!684, !47}
!685 = distinct !{!685, !47}
!686 = !{i64 2156023070}
!687 = !{i64 2156022833}
!688 = !{i64 2156022886}
!689 = !{i64 2156023012}
!690 = !{i64 2156023128}
!691 = !{i64 2156023184}
!692 = !{i64 2156023743}
!693 = !{i64 2156023809}
!694 = !{i64 2156023872}
!695 = !{i64 2156024437}
!696 = !{i64 2156024503}
!697 = !{i64 2156024566}
!698 = !{i64 2156025131}
!699 = !{i64 2156025197}
!700 = !{i64 2156025260}
!701 = !{i64 2156025825}
!702 = !{i64 2156025891}
!703 = !{i64 2156025954}
!704 = !{i64 2156026519}
!705 = !{i64 2156026585}
!706 = !{i64 2156026648}
!707 = !{i64 2156027213}
!708 = !{i64 2156027279}
!709 = !{i64 2156027342}
!710 = !{i64 2156027907}
!711 = !{i64 2156027973}
!712 = !{i64 2156028036}
!713 = !{i64 2156028601}
!714 = !{i64 2156028667}
!715 = !{i64 2156028730}
!716 = !{i64 2156028794}
!717 = !{i64 2156029351}
!718 = !{i64 2156029417}
!719 = !{i64 2156029480}
!720 = distinct !{!720, !47}
!721 = distinct !{!721, !47}
!722 = distinct !{!722, !47}
!723 = distinct !{!723, !47}
!724 = distinct !{!724, !47}
!725 = !{!"branch_weights", i32 1, i32 1048575}
!726 = !{!147, !39, i64 0}
!727 = !{!147, !39, i64 8}
!728 = distinct !{!728, !47}
!729 = !{i64 2154181130}
!730 = !{i64 2154180135}
!731 = !{i64 2154180533}
!732 = !{i64 2154180732}
!733 = !{i64 2154180931}
!734 = distinct !{!734, !47}
!735 = !{i64 2154180334}
!736 = !{!"_ZTSN5Eigen14TriangularViewIKNS_9TransposeIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEEELj1EEE", !150, i64 0}
!737 = !{!"p1 _ZTSN5Eigen6MatrixIfLin1ELin1ELi0ELi2ELi2EEE", !11, i64 0}
!738 = !{!"_ZTSN5Eigen7ProductINS_14TriangularViewIKNS_9TransposeIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS3_IfLin1ELin1ELi0ELi2ELi2EEELi0EEE", !736, i64 0, !737, i64 8}
!739 = !{!738, !737, i64 8}
!740 = distinct !{!740, !47}
!741 = distinct !{!741, !47}
!742 = distinct !{!742, !47}
!743 = distinct !{!743, !47}
!744 = distinct !{!744, !47}
!745 = distinct !{!745, !47}
!746 = distinct !{!746, !47}
!747 = distinct !{!747, !47}
!748 = distinct !{!748, !47, !48, !49}
!749 = distinct !{!749, !64}
!750 = distinct !{!750, !47}
!751 = distinct !{!751, !47, !48}
!752 = !{i64 2156083062}
!753 = distinct !{!753, !47}
!754 = distinct !{!754, !47}
!755 = distinct !{!755, !47}
!756 = distinct !{!756, !47}
end_hunk_1
