inline.NumInlined: 252
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal13ternary_roundERlS1_:bb.a
.lr.ph94:                                         ; preds = %._crit_edge, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.04593 = phi ptr [ %i.bs, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.z, %._crit_edge ] ; 2 uses
  %i.ap = load i32, ptr %.04593, align 4, !tbaa !158 ; 2 uses
  %i.aq = tail call noundef i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = tail call noundef i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.ap, i32 1)
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.as ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph94
  %i.az = load ptr, ptr %.sroa.070.096, align 8, !tbaa !157
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !157
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !12
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %.lr.ph94
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !16 ; 4 uses
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.i, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #11 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  %i.bo = load ptr, ptr %.sroa.070.096, align 8, !tbaa !157
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !157
  %i.bp = icmp sgt i64 %i.be, 0
  br i1 %i.bp, label %bb.j, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #12
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.av, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.br, ptr %i.ax, align 8, !tbaa !174
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.04593, i64 4 ; 2 uses
  %.not59 = icmp eq ptr %i.bs, %i.ab
  br i1 %.not59, label %.thread77, label %.lr.ph94

.thread77:                                        ; preds = %bb.e, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.d, %._crit_edge, %bb.c, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.070.096, i64 8 ; 2 uses
  %.not84 = icmp eq ptr %i.bt, %i.d
  br i1 %.not84, label %._crit_edge99, label %bb.b

bb.l:                                             ; preds = %.lr.ph103, %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit
  %.sroa.066.0101 = phi i32 [ 1, %.lr.ph103 ], [ %i.dy, %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit ] ; 6 uses
  %i.bu = load volatile i8, ptr %i.k, align 8, !tbaa !180, !range !168, !noundef !169
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load i32, ptr %i.m, align 4, !tbaa !181 ; 3 uses
  %.not.i61 = icmp eq i32 %i.bw, 0
  br i1 %.not.i61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.m, align 4, !tbaa !181
  %i.by = icmp eq i32 %i.bw, 1
  br i1 %i.by, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 360
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !183 ; 3 uses
  %.not3.i = icmp eq ptr %i.cb, null
  br i1 %.not3.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !202 ; 2 uses
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.l, align 8, !tbaa !202
  %.not4.i = icmp eq i32 %i.cc, 0
  br i1 %.not4.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.o, align 8, !tbaa !203
  store i32 %i.ce, ptr %i.l, align 8, !tbaa !202
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !204
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cb), !inline_history !206
  br i1 %i.ci, label %.sink.split.i, label %bb.r

.sink.split.i:                                    ; preds = %bb.q, %bb.n
  store volatile i8 1, ptr %i.k, align 8, !tbaa !180
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.q
  %i.cj = load i64, ptr %1, align 8, !tbaa !164
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load i64, ptr %2, align 8, !tbaa !164
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %.critedge

.critedge:                                        ; preds = %bb.s
  %i.cn = tail call i32 @llvm.abs.i32(i32 %.sroa.066.0101, i1 true) ; 3 uses
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !177 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 1            ; 2 uses
  %i.cs = and i32 %i.cr, 117441536
  %or.cond18.not.i = icmp eq i32 %i.cs, 16778240
  br i1 %or.cond18.not.i, label %bb.t, label %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit

bb.t:                                             ; preds = %.critedge
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cn, i32 %.sroa.066.0101, i32 1)
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !8   ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !12
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !16
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 3
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = sub nsw i32 0, %.sroa.066.0101          ; 2 uses
  %i.dg = tail call noundef i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.df, i32 1)
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !16
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 3
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = load i32, ptr %i.r, align 4, !tbaa !17  ; 2 uses
  %.not16.i = icmp slt i32 %i.dr, %i.de
  %.not17.i = icmp slt i32 %i.dr, %i.dq
  %or.cond.i = or i1 %.not16.i, %.not17.i
  br i1 %or.cond.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = icmp slt i32 %i.dq, %i.de
  %i.dt = select i1 %i.ds, i32 %i.df, i32 %.sroa.066.0101
  tail call void @_ZN7CaDiCaL8Internal11ternary_litEiRlS1_(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !177 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.co
  %.pre19.i = load i32, ptr %.phi.trans.insert.i, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.du = phi i32 [ %.pre19.i, %bb.u ], [ %i.cr, %bb.t ]
  %i.dv = phi ptr [ %.pre.i, %bb.u ], [ %i.cp, %bb.t ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.co
  %i.dx = and i32 %i.du, -1025
  store i32 %i.dx, ptr %i.dw, align 1
  br label %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit

_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit:    ; preds = %.critedge, %bb.v
  %i.dy = add i32 %.sroa.066.0101, 1
  %.not85 = icmp eq i32 %.sroa.066.0101, %i.j
  br i1 %.not85, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.l

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit, %bb.s, %bb.r, %bb.l, %._crit_edge99, %.sink.split.i
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !178, !nonnull !169, !align !179
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !158 ; 5 uses
  %.not86107 = icmp eq i32 %i.ea, 0
  br i1 %.not86107, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !177 ; 3 uses
  %xtraiter = and i32 %i.ea, 1
  %3 = icmp eq i32 %i.ea, 1
  br i1 %3, label %.epil.preheader, label %.lr.ph110.new

.lr.ph110.new:                                    ; preds = %.lr.ph110
  %unroll_iter = and i32 %i.ea, -2
  br label %bb.w

._crit_edge111.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge111.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge111.loopexit.unr-lcssa, %.lr.ph110
  %.0109.epil.init = phi i32 [ 0, %.lr.ph110 ], [ %.1.1, %._crit_edge111.loopexit.unr-lcssa ]
  %.sroa.062.0108.epil.init = phi i32 [ 1, %.lr.ph110 ], [ %i.fd, %._crit_edge111.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i32 %i.ea to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.ed = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.062.0108.epil.init, i1 true)
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 1            ; 2 uses
  %i.eh = and i32 %i.eg, 117440512
  %i.ei = icmp eq i32 %i.eh, 16777216
  %i.ej = lshr i32 %i.eg, 10
  %i.ek = and i32 %i.ej, 1
  %spec.select60.epil = select i1 %i.ei, i32 %i.ek, i32 0
  %.1.epil = add nuw nsw i32 %spec.select60.epil, %.0109.epil.init
  br label %._crit_edge111.loopexit

._crit_edge111.loopexit:                          ; preds = %._crit_edge111.loopexit.unr-lcssa, %.epil.preheader
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge111.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ]
  %i.el = icmp ne i32 %.1.lcssa, 0
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %.0.lcssa = phi i1 [ false, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit ], [ %i.el, %._crit_edge111.loopexit ]
  tail call void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  ret i1 %.0.lcssa

bb.w:                                             ; preds = %bb.w, %.lr.ph110.new
  %.0109 = phi i32 [ 0, %.lr.ph110.new ], [ %.1.1, %bb.w ]
  %.sroa.062.0108.a = phi i32 [ 1, %.lr.ph110.new ], [ %i.fd, %bb.w ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph110.new ], [ %niter.next.1, %bb.w ]
  %i.em = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.062.0108.a, i1 true)
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 1            ; 2 uses
  %i.eq = and i32 %i.ep, 117440512
  %i.er = icmp eq i32 %i.eq, 16777216
  %i.es = lshr i32 %i.ep, 10
  %i.et = and i32 %i.es, 1
  %spec.select60 = select i1 %i.er, i32 %i.et, i32 0
  %.1 = add nuw nsw i32 %spec.select60, %.0109
  %i.eu = add nuw i32 %.sroa.062.0108.a, 1
  %i.ev = tail call noundef i32 @llvm.abs.i32(i32 %i.eu, i1 true)
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 1            ; 2 uses
  %i.ez = and i32 %i.ey, 117440512
  %i.fa = icmp eq i32 %i.ez, 16777216
  %i.fb = lshr i32 %i.ey, 10
  %i.fc = and i32 %i.fb, 1
  %spec.select60.1 = select i1 %i.fa, i32 %i.fc, i32 0
  %.1.1 = add nuw nsw i32 %spec.select60.1, %.1   ; 3 uses
  %i.fd = add nuw i32 %.sroa.062.0108.a, 2        ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge111.loopexit.unr-lcssa, label %bb.w
}

declare void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal7ternaryEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.d = load i32, ptr %i.c, align 4, !tbaa !207
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4, !range !168
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 6 uses
  %i.i = load volatile i8, ptr %i.h, align 8, !tbaa !180, !range !168, !noundef !169
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !181  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !181
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !182
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183  ; 3 uses
  %.not3.i = icmp eq ptr %i.s, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.k, align 8, !tbaa !202  ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.k, align 8, !tbaa !202
  %.not4.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.w = load i32, ptr %i.v, align 8, !tbaa !203
  store i32 %i.w, ptr %i.k, align 8, !tbaa !202
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.s), !inline_history !206
  br i1 %i.aa, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.h, align 8, !tbaa !180
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !208
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !209
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !210, !range !168, !noundef !169
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %0, align 8, !tbaa !211
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !212, !range !168, !noundef !169
  %i.al = trunc nuw i8 %i.ak to i1
  %.pre56 = load i32, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.am = and i32 %.pre56, -257
  %spec.select = select i1 %i.al, i32 %.pre56, i32 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %spec.select, %bb.j ]
  %i.ao = or i32 %i.an, 2560
  store i32 %i.ao, ptr %0, align 8, !tbaa !211
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4968 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !213
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !213
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !214
  %.not40 = icmp eq ptr %i.at, %i.av
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !215
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3824
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !216
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fmul nnan double %i.ba, 1.000000e-03
  %i.bc = sitofp i64 %i.ax to double
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = fptosi double %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !217
  %i.bh = sext i32 %i.bg to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.be, i64 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3812
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !218
  %i.bk = sext i32 %i.bj to i64
  %spec.store.select27 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.bk) ; 2 uses
  store i64 %spec.store.select27, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !219
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !220
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3808
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !221
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bp, %i.bs                ; 2 uses
  %i.bu = sdiv i64 %i.bt, 100
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !164
  %i.bv = load volatile i8, ptr %i.h, align 8, !tbaa !180, !range !168, !noundef !169
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3800 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5000 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3660 ; 2 uses
  %i.cc = load i32, ptr %i.l, align 4, !tbaa !181 ; 3 uses
  %.not.i32.peel = icmp eq i32 %i.cc, 0
  br i1 %.not.i32.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.l, align 4, !tbaa !181
  %i.ce = icmp eq i32 %i.cc, 1
  br i1 %i.ce, label %.sink.split.i36, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 360
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !183 ; 3 uses
  %.not3.i33.peel = icmp eq ptr %i.ch, null
  br i1 %.not3.i33.peel, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.k, align 8, !tbaa !202
  %.not4.i34.peel = icmp eq i32 %i.ci, 0
  br i1 %.not4.i34.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.bx, align 8, !tbaa !203
  store i32 %i.ck, ptr %i.k, align 8, !tbaa !202
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !204
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ch), !inline_history !206
  br i1 %i.co, label %.sink.split.i36, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cp = load i32, ptr %i.by, align 4, !tbaa !222
  %i.cq = icmp slt i32 %i.cp, 1
  %i.cr = icmp slt i64 %i.bt, -99
  %or.cond29.peel = select i1 %i.cq, i1 true, i1 %i.cr
  %i.cs = icmp slt i64 %spec.store.select27, 0
  %or.cond31.peel = select i1 %or.cond29.peel, i1 true, i1 %i.cs
  br i1 %or.cond31.peel, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i64, ptr %i.bz, align 8, !tbaa !175
  %i.cu = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.cv = call noundef zeroext i1 @_ZN7CaDiCaL8Internal13ternary_roundERlS1_(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.cw = load i64, ptr %i.bz, align 8, !tbaa !175
  %i.cx = sub i64 %i.cw, %i.ct
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.cz = sub i64 %i.cy, %i.cu
  %i.da = load i32, ptr %i.cb, align 4, !tbaa !223
  %.not21.peel = icmp eq i32 %i.da, 0
  %i.db = and i64 %i.cx, 4294967295
  %.not22.peel = icmp eq i64 %i.db, 0             ; 2 uses
  %narrow.peel = select i1 %.not21.peel, i1 %.not22.peel, i1 false
  %i.dc = zext i1 %narrow.peel to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 51, i32 noundef %i.dc)
  %not..not22.peel = xor i1 %.not22.peel, true    ; 3 uses
  %i.dd = and i64 %i.cz, 4294967295
  %.not24.not.peel = icmp eq i64 %i.dd, 0
  br i1 %.not24.not.peel, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load volatile i8, ptr %i.h, align 8, !tbaa !180, !range !168, !noundef !169
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %.critedge, label %.peel.next

bb.u:                                             ; preds = %bb.aa
  %i.dg = add nuw nsw i32 %.01345, 1
  %i.dh = load volatile i8, ptr %i.h, align 8, !tbaa !180, !range !168, !noundef !169
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.critedge, label %.peel.next, !llvm.loop !224

.peel.next:                                       ; preds = %bb.t, %bb.u
  %.01345 = phi i32 [ %i.dg, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %.01444 = phi i1 [ %i.eg, %bb.u ], [ %i.cv, %bb.t ] ; 3 uses
  %.01543 = phi i1 [ %.116, %bb.u ], [ %not..not22.peel, %bb.t ] ; 4 uses
  %i.dj = load i32, ptr %i.l, align 4, !tbaa !181 ; 3 uses
  %.not.i32 = icmp eq i32 %i.dj, 0
  br i1 %.not.i32, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.peel.next
  %i.dk = add nsw i32 %i.dj, -1
  store i32 %i.dk, ptr %i.l, align 4, !tbaa !181
  %i.dl = icmp eq i32 %i.dj, 1
  br i1 %i.dl, label %.sink.split.i36, label %bb.w

bb.w:                                             ; preds = %bb.v, %.peel.next
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !182
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 360
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !183 ; 3 uses
  %.not3.i33 = icmp eq ptr %i.do, null
  br i1 %.not3.i33, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load i32, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.k, align 8, !tbaa !202
  %.not4.i34 = icmp eq i32 %i.dp, 0
  br i1 %.not4.i34, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dr = load i32, ptr %i.bx, align 8, !tbaa !203
  store i32 %i.dr, ptr %i.k, align 8, !tbaa !202
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !204
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.do), !inline_history !206
  br i1 %i.dv, label %.sink.split.i36, label %bb.z

.sink.split.i36:                                  ; preds = %bb.y, %bb.v, %bb.q, %bb.n
  %.01444.lcssa = phi i1 [ false, %bb.n ], [ false, %bb.q ], [ %.01444, %bb.v ], [ %.01444, %bb.y ]
  %.01543.lcssa = phi i1 [ false, %bb.n ], [ false, %bb.q ], [ %.01543, %bb.v ], [ %.01543, %bb.y ]
  store volatile i8 1, ptr %i.h, align 8, !tbaa !180
  br label %.critedge

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.y
  %i.dw = load i32, ptr %i.by, align 4, !tbaa !222
  %i.dx = icmp sge i32 %.01345, %i.dw
  %i.dy = load i64, ptr %i.b, align 8
  %i.dz = icmp slt i64 %i.dy, 0
  %or.cond29 = select i1 %i.dx, i1 true, i1 %i.dz
  %i.ea = load i64, ptr %i.a, align 8
  %i.eb = icmp slt i64 %i.ea, 0
  %or.cond31 = select i1 %or.cond29, i1 true, i1 %i.eb
  br i1 %or.cond31, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = load i64, ptr %i.ap, align 8, !tbaa !213
  %i.ed = add nsw i64 %i.ec, 1
  store i64 %i.ed, ptr %i.ap, align 8, !tbaa !213
  %i.ee = load i64, ptr %i.bz, align 8, !tbaa !175
  %i.ef = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.eg = call noundef zeroext i1 @_ZN7CaDiCaL8Internal13ternary_roundERlS1_(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.eh = load i64, ptr %i.bz, align 8, !tbaa !175
  %i.ei = sub i64 %i.eh, %i.ee
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.ek = sub i64 %i.ej, %i.ef
  %i.el = load i32, ptr %i.cb, align 4, !tbaa !223
  %.not21 = icmp eq i32 %i.el, 0
  %i.em = and i64 %i.ei, 4294967295
  %.not22 = icmp eq i64 %i.em, 0                  ; 2 uses
  %narrow = select i1 %.not21, i1 %.not22, i1 false
  %i.en = zext i1 %narrow to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 51, i32 noundef %i.en)
  %not..not22 = xor i1 %.not22, true
  %.116 = select i1 %not..not22, i1 true, i1 %.01543 ; 3 uses
  %i.eo = and i64 %i.ek, 4294967295
  %.not24.not = icmp eq i64 %i.eo, 0
  br i1 %.not24.not, label %.critedge, label %bb.u

.critedge:                                        ; preds = %bb.aa, %bb.z, %bb.u, %bb.r, %bb.s, %bb.t, %bb.m, %.sink.split.i36
  %.2 = phi i1 [ %.01543.lcssa, %.sink.split.i36 ], [ false, %bb.m ], [ false, %bb.r ], [ %not..not22.peel, %bb.s ], [ %not..not22.peel, %bb.t ], [ %.116, %bb.u ], [ %.116, %bb.aa ], [ %.01543, %bb.z ]
  %.1 = phi i1 [ %.01444.lcssa, %.sink.split.i36 ], [ false, %bb.m ], [ false, %bb.r ], [ %i.cv, %bb.s ], [ %i.cv, %bb.t ], [ %i.eg, %bb.u ], [ %i.eg, %bb.aa ], [ %.01444, %bb.z ]
  tail call void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  tail call void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i1 noundef zeroext false)
  %i.ep = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ep, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  br i1 %.1, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eq = load i64, ptr %i.ad, align 8, !tbaa !209
  store i64 %i.eq, ptr %i.ab, align 8, !tbaa !208
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.er = load i32, ptr %0, align 8, !tbaa !211
  %i.es = and i32 %i.er, -2561                    ; 2 uses
  store i32 %i.es, ptr %0, align 8, !tbaa !211
  %i.et = load i8, ptr %i.ag, align 8, !tbaa !210, !range !168, !noundef !169
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !212, !range !168, !noundef !169
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = or i32 %i.es, 256
  store i32 %i.ey, ptr %0, align 8, !tbaa !211
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.b, %bb.h, %bb.a, %bb.ah
  %.017 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ %.2, %bb.ah ], [ false, %bb.b ], [ false, %.sink.split.i ]
  ret i1 %.017
}

declare void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(5704), i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!13, !14, i64 0}
!17 = !{!18, !5, i64 3820}
!18 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !19, i64 4, !19, i64 5, !19, i64 6, !19, i64 7, !19, i64 8, !19, i64 9, !19, i64 10, !19, i64 11, !19, i64 12, !19, i64 13, !19, i64 14, !19, i64 15, !19, i64 16, !19, i64 17, !19, i64 18, !6, i64 19, !20, i64 24, !21, i64 72, !5, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !19, i64 120, !22, i64 128, !22, i64 152, !22, i64 176, !22, i64 200, !22, i64 224, !22, i64 248, !27, i64 272, !30, i64 296, !19, i64 320, !19, i64 321, !5, i64 324, !35, i64 328, !40, i64 472, !36, i64 480, !41, i64 504, !46, i64 528, !41, i64 552, !50, i64 576, !51, i64 600, !56, i64 624, !57, i64 632, !60, i64 688, !65, i64 712, !46, i64 736, !70, i64 760, !75, i64 784, !75, i64 808, !79, i64 832, !46, i64 856, !75, i64 880, !82, i64 904, !87, i64 928, !92, i64 952, !92, i64 960, !92, i64 968, !92, i64 976, !92, i64 984, !19, i64 992, !19, i64 993, !19, i64 994, !5, i64 996, !21, i64 1000, !92, i64 1008, !21, i64 1016, !21, i64 1024, !21, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !46, i64 1064, !46, i64 1088, !46, i64 1112, !46, i64 1136, !19, i64 1160, !19, i64 1161, !46, i64 1168, !46, i64 1192, !46, i64 1216, !46, i64 1240, !46, i64 1264, !46, i64 1288, !46, i64 1312, !93, i64 1336, !21, i64 2152, !46, i64 2160, !94, i64 2184, !27, i64 2208, !99, i64 2232, !104, i64 2800, !106, i64 2968, !113, i64 3056, !114, i64 3104, !115, i64 3112, !116, i64 3120, !121, i64 3144, !126, i64 3168, !131, i64 3192, !132, i64 3904, !149, i64 5552, !151, i64 5608, !152, i64 5632, !59, i64 5664, !154, i64 5672, !19, i64 5680, !155, i64 5688, !156, i64 5696}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN7CaDiCaL9ReluctantE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !19, i64 40, !19, i64 41}
!21 = !{!"long", !6, i64 0}
!22 = !{!"_ZTSSt6vectorImSaImEE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseImSaImEE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 long", !11, i64 0}
!27 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !13, i64 0}
!30 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !11, i64 0}
!35 = !{!"_ZTSN7CaDiCaL6PhasesE", !36, i64 0, !36, i64 24, !36, i64 48, !36, i64 72, !36, i64 96, !36, i64 120}
!36 = !{!"_ZTSSt6vectorIaSaIaEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!"_ZTSSt6vectorIjSaIjEE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 int", !11, i64 0}
!46 = !{!"_ZTSSt6vectorIiSaIiEE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!50 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !21, i64 16}
!51 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !11, i64 0}
!56 = !{!"double", !6, i64 0}
!57 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !41, i64 0, !41, i64 24, !58, i64 48}
!58 = !{!"_ZTSN7CaDiCaL13score_smallerE", !59, i64 0}
!59 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !11, i64 0}
!60 = !{!"_ZTSSt6vectorIdSaIdEE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 double", !11, i64 0}
!65 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p1 _ZTSN7CaDiCaL3VarE", !11, i64 0}
!70 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !11, i64 0}
!75 = !{!"_ZTSSt6vectorIlSaIlEE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!79 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !9, i64 0}
!82 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!86 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !11, i64 0}
!87 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !11, i64 0}
!92 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !11, i64 0}
!93 = !{!"_ZTS4Reap", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24}
!94 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!98 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !11, i64 0}
!99 = !{!"_ZTSN7CaDiCaL8AveragesE", !21, i64 0, !100, i64 8, !100, i64 288}
!100 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !101, i64 0, !103, i64 80, !102, i64 160, !102, i64 200, !102, i64 240}
!101 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !102, i64 0, !102, i64 40}
!102 = !{!"_ZTSN7CaDiCaL3EMAE", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32}
!103 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !102, i64 0, !102, i64 40}
!104 = !{!"_ZTSN7CaDiCaL5LimitE", !19, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !5, i64 128, !5, i64 132, !6, i64 136, !21, i64 152, !105, i64 160}
!105 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!106 = !{!"_ZTSN7CaDiCaL4LastE", !107, i64 0, !107, i64 8, !108, i64 16, !109, i64 40, !110, i64 56, !110, i64 64, !111, i64 72, !112, i64 80}
!107 = !{!"_ZTSN7CaDiCaL4LastUt_E", !21, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !21, i64 0, !21, i64 8, !21, i64 16}
!109 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !21, i64 0, !21, i64 8}
!110 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !21, i64 0}
!111 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !21, i64 0}
!112 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !21, i64 0}
!113 = !{!"_ZTSN7CaDiCaL3IncE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!114 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !11, i64 0}
!115 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !11, i64 0}
!116 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !117, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!120 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !15, i64 0}
!121 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !15, i64 0}
!126 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !127, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !128, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !129, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!130 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !15, i64 0}
!131 = !{!"_ZTSN7CaDiCaL7OptionsE", !59, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !5, i64 604, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !5, i64 656, !5, i64 660, !5, i64 664, !5, i64 668, !5, i64 672, !5, i64 676, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !5, i64 708}
!132 = !{!"_ZTSN7CaDiCaL5StatsE", !59, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !133, i64 32, !134, i64 88, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !21, i64 240, !21, i64 248, !21, i64 256, !135, i64 264, !136, i64 296, !136, i64 320, !137, i64 344, !138, i64 360, !139, i64 392, !142, i64 472, !143, i64 528, !144, i64 560, !21, i64 584, !21, i64 592, !21, i64 600, !21, i64 608, !21, i64 616, !21, i64 624, !21, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !21, i64 664, !21, i64 672, !21, i64 680, !21, i64 688, !21, i64 696, !21, i64 704, !21, i64 712, !21, i64 720, !21, i64 728, !21, i64 736, !21, i64 744, !21, i64 752, !21, i64 760, !21, i64 768, !21, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !21, i64 808, !21, i64 816, !21, i64 824, !21, i64 832, !21, i64 840, !21, i64 848, !21, i64 856, !21, i64 864, !21, i64 872, !21, i64 880, !21, i64 888, !21, i64 896, !21, i64 904, !21, i64 912, !21, i64 920, !21, i64 928, !21, i64 936, !21, i64 944, !21, i64 952, !21, i64 960, !21, i64 968, !21, i64 976, !21, i64 984, !21, i64 992, !21, i64 1000, !21, i64 1008, !21, i64 1016, !21, i64 1024, !21, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !21, i64 1064, !21, i64 1072, !21, i64 1080, !21, i64 1088, !21, i64 1096, !21, i64 1104, !21, i64 1112, !21, i64 1120, !21, i64 1128, !21, i64 1136, !21, i64 1144, !21, i64 1152, !21, i64 1160, !21, i64 1168, !21, i64 1176, !21, i64 1184, !21, i64 1192, !21, i64 1200, !21, i64 1208, !21, i64 1216, !21, i64 1224, !145, i64 1232, !21, i64 1248, !21, i64 1256, !21, i64 1264, !21, i64 1272, !146, i64 1280, !21, i64 1304, !21, i64 1312, !21, i64 1320, !21, i64 1328, !21, i64 1336, !21, i64 1344, !21, i64 1352, !21, i64 1360, !21, i64 1368, !21, i64 1376, !21, i64 1384, !21, i64 1392, !21, i64 1400, !21, i64 1408, !21, i64 1416, !21, i64 1424, !21, i64 1432, !21, i64 1440, !21, i64 1448, !21, i64 1456, !21, i64 1464, !21, i64 1472, !21, i64 1480, !21, i64 1488, !21, i64 1496, !21, i64 1504, !21, i64 1512, !21, i64 1520, !21, i64 1528, !21, i64 1536, !147, i64 1544, !147, i64 1576, !148, i64 1608, !21, i64 1624, !21, i64 1632, !21, i64 1640}
!133 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!134 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72}
!135 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !21, i64 0, !21, i64 8, !21, i64 16}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !56, i64 0, !56, i64 8}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !21, i64 0, !21, i64 8, !140, i64 16, !140, i64 32, !140, i64 48, !141, i64 64}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !21, i64 0, !21, i64 8}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !21, i64 0, !21, i64 8}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !21, i64 0, !21, i64 8, !21, i64 16}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !21, i64 0, !21, i64 8}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !21, i64 0, !21, i64 8, !21, i64 16}
!147 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!148 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !21, i64 0, !21, i64 8}
!149 = !{!"_ZTSN7CaDiCaL5ArenaE", !59, i64 0, !150, i64 8, !150, i64 32}
!150 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !40, i64 0, !40, i64 8, !40, i64 16}
!151 = !{!"_ZTSN7CaDiCaL6FormatE", !40, i64 0, !21, i64 8, !21, i64 16}
!152 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !153, i64 0, !21, i64 8, !6, i64 16}
!153 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!154 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !11, i64 0}
!155 = !{!"_ZTSN7CaDiCaL5RangeE", !45, i64 0}
!156 = !{!"_ZTSN7CaDiCaL5SangeE", !45, i64 0}
!157 = !{!92, !92, i64 0}
!158 = !{!5, !5, i64 0}
!159 = !{!18, !21, i64 4976}
!160 = !{!49, !45, i64 8}
!161 = !{!49, !45, i64 16}
!162 = !{!49, !45, i64 0}
!163 = !{!14, !14, i64 0}
!164 = !{!21, !21, i64 0}
!165 = !{!18, !40, i64 472}
!166 = !{!6, !6, i64 0}
!167 = !{!18, !19, i64 320}
!168 = !{i8 0, i8 2}
!169 = !{}
!170 = !{!25, !26, i64 8}
!171 = !{!25, !26, i64 16}
!172 = !{!25, !26, i64 0}
!173 = !{!18, !21, i64 4984}
!174 = !{!13, !14, i64 16}
!175 = !{!18, !21, i64 4992}
!176 = !{!18, !21, i64 5000}
!177 = !{!73, !74, i64 0}
!178 = !{!155, !45, i64 0}
!179 = !{i64 4}
!180 = !{!18, !19, i64 5680}
!181 = !{!18, !5, i64 2964}
!182 = !{!18, !154, i64 5672}
!183 = !{!184, !191, i64 360}
!184 = !{!"_ZTSN7CaDiCaL8ExternalE", !59, i64 0, !5, i64 8, !21, i64 16, !185, i64 24, !46, i64 64, !46, i64 88, !46, i64 112, !22, i64 136, !185, i64 160, !46, i64 200, !19, i64 224, !19, i64 225, !46, i64 232, !185, i64 256, !185, i64 296, !41, i64 336, !191, i64 360, !192, i64 368, !193, i64 376, !194, i64 384, !185, i64 392, !195, i64 432, !40, i64 488, !46, i64 496, !185, i64 520, !155, i64 560}
!185 = !{!"_ZTSSt6vectorIbSaIbEE", !186, i64 0}
!186 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !187, i64 0}
!187 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !188, i64 0}
!188 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !189, i64 0, !189, i64 16, !26, i64 32}
!189 = !{!"_ZTSSt13_Bit_iterator", !190, i64 0}
!190 = !{!"_ZTSSt18_Bit_iterator_base", !26, i64 0, !5, i64 8}
!191 = !{!"p1 _ZTSN7CaDiCaL10TerminatorE", !11, i64 0}
!192 = !{!"p1 _ZTSN7CaDiCaL7LearnerE", !11, i64 0}
!193 = !{!"p1 _ZTSN7CaDiCaL23FixedAssignmentListenerE", !11, i64 0}
!194 = !{!"p1 _ZTSN7CaDiCaL18ExternalPropagatorE", !11, i64 0}
!195 = !{!"_ZTSSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !196, i64 0}
!196 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !197, i64 0, !21, i64 8, !198, i64 16, !21, i64 24, !200, i64 32, !199, i64 48}
!197 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!198 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !199, i64 0}
!199 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!200 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !201, i64 0, !21, i64 8}
!201 = !{!"float", !6, i64 0}
!202 = !{!18, !5, i64 2960}
!203 = !{!18, !5, i64 3800}
!204 = !{!205, !205, i64 0}
!205 = !{!"vtable pointer", !7, i64 0}
!206 = distinct !{null}
!207 = !{!18, !5, i64 3804}
!208 = !{!18, !21, i64 3040}
!209 = !{!18, !21, i64 4192}
!210 = !{!18, !19, i64 8}
!211 = !{!18, !5, i64 0}
!212 = !{!18, !19, i64 7}
!213 = !{!18, !21, i64 4968}
!214 = !{!91, !91, i64 0}
!215 = !{!18, !21, i64 3960}
!216 = !{!18, !5, i64 3824}
!217 = !{!18, !5, i64 3816}
!218 = !{!18, !5, i64 3812}
!219 = !{!18, !21, i64 4208}
!220 = !{!18, !21, i64 4216}
!221 = !{!18, !5, i64 3808}
!222 = !{!18, !5, i64 3828}
!223 = !{!18, !5, i64 3660}
!224 = distinct !{!224, !225, !226}
!225 = !{!"llvm.loop.mustprogress"}
!226 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
