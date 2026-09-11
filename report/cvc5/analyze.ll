Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/analyze?download=true
inline.NumInlined: 983
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7CaDiCaL8Internal14analyze_reasonEiPNS_6ClauseERiS3_S3_:bb.a
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !179
  %i.an = icmp eq i64 %i.am, %i.h
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.h, ptr %i.al, align 8, !tbaa !179
  %i.ao = add nsw i32 %.1.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i.1 = phi i32 [ %i.ao, %bb.f ], [ %.1.i.i, %bb.e ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa, label %bb.c

_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa: ; preds = %bb.g
  %i.aq = and i64 %i.q, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i

.epil.preheader:                                  ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01520.i.i.epil.init = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.ap, %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa ]
  %.01619.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i.1, %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ar = load i32, ptr %.01520.i.i.epil.init, align 4, !tbaa !200
  %i.as = tail call noundef i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.at
  %i.av = load i32, ptr %i.au, align 8, !tbaa !217
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !179
  %i.az = icmp eq i64 %i.ay, %i.h
  br i1 %i.az, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  store i64 %i.h, ptr %i.ax, align 8, !tbaa !179
  %i.ba = add nsw i32 %.01619.i.i.epil.init, 1
  br label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i

_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i: ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %bb.b
  %.016.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %.1.i.i.1, %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa ], [ %i.ba, %bb.h ], [ %.01619.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !200 ; 2 uses
  %i.bd = icmp slt i32 %.016.lcssa.i.i, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i
  tail call void @_ZN7CaDiCaL8Internal14promote_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull %2, i32 noundef %.016.lcssa.i.i)
  br label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i
  %i.be = and i32 %i.b, 49152
  %.not16.i = icmp eq i32 %i.be, 0
  br i1 %.not16.i, label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3636
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !228
  %.not17.i = icmp sgt i32 %i.bc, %i.bg
  br i1 %.not17.i, label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.a, align 8
  %i.bi = and i32 %i.bh, -49153
  %i.bj = or disjoint i32 %i.bi, 32768
  store i32 %i.bj, ptr %i.a, align 8
  br label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit: ; preds = %bb.a, %bb.i, %bb.j, %bb.k, %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !181, !range !182, !noundef !183
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !177 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load i64, ptr %2, align 8, !tbaa !179
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !179
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !177
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !180 ; 4 uses
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #13
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #14 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = load i64, ptr %2, align 8, !tbaa !179
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !179
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.bu, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bu) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !180
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !177
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.ck, ptr %i.bq, align 8, !tbaa !178
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.n, %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !200 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %.idx = shl nsw i64 %i.co, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %.idx
  %.not17 = icmp eq i32 %i.cn, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.t
  %.018 = phi ptr [ %i.cr, %bb.t ], [ %i.cl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.cq = load i32, ptr %.018, align 4, !tbaa !200 ; 2 uses
  %.not16 = icmp eq i32 %i.cq, %1
  br i1 %.not16, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  tail call void @_ZN7CaDiCaL8Internal15analyze_literalEiRiS1_S1_(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.cp
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7CaDiCaL8Internal32determine_actual_backtrack_levelEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.b = load i32, ptr %i.a, align 8, !tbaa !244
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %i.d = load i32, ptr %i.c, align 4, !tbaa !346
  %.not45 = icmp eq i32 %i.d, 0
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !347
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !347
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.i = load i32, ptr %i.h, align 4, !tbaa !246
  %i.j = add nsw i32 %i.i, -1
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.l = load i32, ptr %i.k, align 4, !tbaa !246  ; 2 uses
  %i.m = add nsw i32 %i.l, -1                     ; 6 uses
  %.not46 = icmp slt i32 %1, %i.m
  br i1 %.not46, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %1 to i64                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !219
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !218
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = icmp ugt i64 %i.v, %i.n
  br i1 %i.w, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sub nsw i32 %i.l, %1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %i.z = load i32, ptr %i.y, align 8, !tbaa !348
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !347
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !347
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3292
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !349
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !208
  %.not.i = icmp ne i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i8, ptr %i.ai, align 4, !range !182
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %.not.i, i1 %i.ak, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !222 ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.an, i64 %i.n
  %i.ap = getelementptr i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !350
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !219
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !218 ; 5 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 4 uses
  %i.ba = icmp ugt i64 %i.az, %i.ar               ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.ba, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph59, %bb.m
  %.03558 = phi i64 [ %i.ar, %.lr.ph59 ], [ %i.bq, %bb.m ] ; 3 uses
  %.03657 = phi i32 [ 0, %.lr.ph59 ], [ %.1, %bb.m ]
  %.03756 = phi i32 [ 0, %.lr.ph59 ], [ %.138, %bb.m ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.03558
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !200
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true) ; 3 uses
  %.not51 = icmp eq i32 %.03756, 0
  br i1 %.not51, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = zext nneg i32 %.03756 to i64
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !202 ; 2 uses
  %i.bj = zext nneg i32 %i.be to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !202 ; 2 uses
  %i.bm = fcmp olt double %i.bi, %i.bl
  %i.bn = fcmp ule double %i.bi, %i.bl
  %i.bo = icmp samesign ugt i32 %.03756, %i.be
  %spec.select.i = and i1 %i.bo, %i.bn
  %.0.i = or i1 %i.bm, %spec.select.i
  br i1 %.0.i, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.k, %bb.l
  %i.bp = trunc i64 %.03558 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.138 = phi i32 [ %i.be, %.critedge ], [ %.03756, %bb.l ]
  %.1 = phi i32 [ %i.bp, %.critedge ], [ %.03657, %bb.l ] ; 2 uses
  %i.bq = add nuw i64 %.03558, 1                  ; 2 uses
  %exitcond62.not = icmp eq i64 %i.bq, %i.az
  br i1 %exitcond62.not, label %.loopexit, label %bb.k, !llvm.loop !343

bb.n:                                             ; preds = %bb.i
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.bs = sub nuw nsw i64 %i.az, %i.ar            ; 3 uses
  %.neg = add nsw i64 %i.ar, 1
  %xtraiter = and i64 %i.bs, 1
  %i.bt = icmp eq i64 %i.az, %.neg
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bs, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.new
  %.055 = phi i64 [ %i.ar, %.lr.ph.new ], [ %i.cr, %bb.u ] ; 4 uses
  %.254 = phi i32 [ 0, %.lr.ph.new ], [ %.3.1, %bb.u ]
  %.23953 = phi i32 [ 0, %.lr.ph.new ], [ %.340.1, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.u ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.055
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !200
  %i.bw = tail call i32 @llvm.abs.i32(i32 %i.bv, i1 true) ; 2 uses
  %.not48 = icmp eq i32 %.23953, 0
  br i1 %.not48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = zext nneg i32 %.23953 to i64
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !191 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !179
  %i.cb = zext nneg i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !179
  %.not49 = icmp slt i64 %i.ca, %i.cd
  br i1 %.not49, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = trunc i64 %.055 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.340 = phi i32 [ %i.bw, %bb.q ], [ %.23953, %bb.p ] ; 3 uses
  %.3 = phi i32 [ %i.ce, %bb.q ], [ %.254, %bb.p ]
  %i.cf = add nuw i64 %.055, 1                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !200
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true) ; 2 uses
  %.not48.1 = icmp eq i32 %.340, 0
  br i1 %.not48.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = zext nneg i32 %.340 to i64
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !191 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !179
  %i.cn = zext nneg i32 %i.ci to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !179
  %.not49.1 = icmp slt i64 %i.cm, %i.cp
  br i1 %.not49.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = trunc i64 %i.cf to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.340.1 = phi i32 [ %i.ci, %bb.t ], [ %.340, %bb.s ] ; 2 uses
  %.3.1 = phi i32 [ %i.cq, %bb.t ], [ %.3, %bb.s ] ; 3 uses
  %i.cr = add nuw i64 %.055, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit83.unr-lcssa, label %bb.o, !llvm.loop !344

.loopexit.loopexit83.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit83.unr-lcssa, %.lr.ph
  %.055.epil.init = phi i64 [ %i.ar, %.lr.ph ], [ %i.cr, %.loopexit.loopexit83.unr-lcssa ] ; 2 uses
  %.254.epil.init = phi i32 [ 0, %.lr.ph ], [ %.3.1, %.loopexit.loopexit83.unr-lcssa ]
  %.23953.epil.init = phi i32 [ 0, %.lr.ph ], [ %.340.1, %.loopexit.loopexit83.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %.not48.epil = icmp eq i32 %.23953.epil.init, 0
  br i1 %.not48.epil, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.epil.preheader
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.055.epil.init
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !200
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = zext nneg i32 %.23953.epil.init to i64
  %i.cw = load ptr, ptr %i.br, align 8, !tbaa !191 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !179
  %i.cz = zext nneg i32 %i.cu to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !179
  %.not49.epil = icmp slt i64 %i.cy, %i.db
  br i1 %.not49.epil, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v, %.epil.preheader
  %i.dc = trunc i64 %.055.epil.init to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit83.unr-lcssa, %bb.w, %bb.v, %bb.m, %bb.n, %bb.j
  %.4 = phi i32 [ %.1, %bb.m ], [ 0, %bb.j ], [ 0, %bb.n ], [ %.3.1, %.loopexit.loopexit83.unr-lcssa ], [ %i.dc, %bb.w ], [ %.254.epil.init, %bb.v ]
  %wide.trip.count = sext i32 %i.m to i64
  %exitcond64.not79 = icmp eq i32 %1, %i.m
  br i1 %exitcond64.not79, label %.critedge2, label %.lr.ph81

bb.x:                                             ; preds = %.lr.ph81
  %exitcond64.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond64.not, label %.critedge2, label %.lr.ph81, !llvm.loop !345

.lr.ph81:                                         ; preds = %.loopexit, %bb.x
  %indvars.iv80 = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.n, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv80, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !350
  %.not50 = icmp sgt i32 %i.df, %.4
  br i1 %.not50, label %.critedge2.split.loop.exit75, label %bb.x, !llvm.loop !345

.critedge2.split.loop.exit75:                     ; preds = %.lr.ph81
  %i.dg = trunc nsw i64 %indvars.iv80 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.x, %.loopexit, %.critedge2.split.loop.exit75
  %.041.lcssa = phi i32 [ %i.dg, %.critedge2.split.loop.exit75 ], [ %i.m, %.loopexit ], [ %i.m, %bb.x ] ; 2 uses
  %i.dh = icmp eq i32 %.041.lcssa, %1
  br i1 %i.dh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge2
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !347
  %i.dk = add nsw i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !347
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %bb.y, %.critedge2, %bb.e, %bb.d, %bb.a, %bb.c, %bb.g
  %.142 = phi i32 [ %i.j, %bb.c ], [ %1, %bb.a ], [ %1, %bb.d ], [ %i.m, %bb.g ], [ %1, %bb.e ], [ %.041.lcssa, %bb.y ], [ %1, %.critedge2 ], [ %1, %bb.h ]
  ret i32 %.142
}

declare noundef ptr @_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal26shrink_and_minimize_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal15minimize_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External27export_learned_large_clauseERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External26export_learned_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(568), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal7iterateEv(ptr noundef nonnull align 8 dereferenceable(5704) initializes((5, 6)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.a, align 1, !tbaa !227
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 105, i32 noundef 0)
  ret void
}

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External45check_no_solution_after_learning_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External37check_solution_on_learned_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(568), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal25bump_also_reason_literalsEii(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !217
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247  ; 4 uses
  %.not21 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  %or.cond29 = select i1 %.not21, i1 true, i1 %i.k
  br i1 %or.cond29, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !200  ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  %.not2230 = icmp eq i32 %i.n, 0
  br i1 %.not2230, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.u = icmp slt i32 %2, 2
  %i.v = add nsw i32 %2, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread
  %.031 = phi ptr [ %i.l, %.lr.ph ], [ %i.bd, %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread ] ; 3 uses
  %i.w = load i32, ptr %.031, align 4, !tbaa !200 ; 4 uses
  %i.x = icmp eq i32 %i.w, %1
  br i1 %i.x, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call noundef i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !220
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1            ; 2 uses
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !217
  %.not.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.not.i, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = or disjoint i32 %i.ac, 1
  store i32 %i.ah, ptr %i.ab, align 1
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !219 ; 4 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !232
  %.not.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.w, ptr %i.ai, align 4, !tbaa !200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !219
  br label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit

bb.i:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !218 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #14 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i32 %i.w, ptr %i.ax, align 4, !tbaa !200
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aw, ptr %i.r, align 8, !tbaa !218
  store ptr %i.az, ptr %i.s, align 8, !tbaa !219
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !232
  br label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit

_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  br i1 %i.u, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit
  %i.bb = load i32, ptr %.031, align 4, !tbaa !200
  %i.bc = sub nsw i32 0, %i.bb
  tail call void @_ZN7CaDiCaL8Internal25bump_also_reason_literalsEii(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.bc, i32 noundef %i.v)
  br label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread

_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread: ; preds = %bb.f, %bb.e, %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit, %bb.d, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.not22 = icmp eq ptr %i.bd, %i.p
  br i1 %.not22, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !243    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
end_hunk_0
