Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/elim?download=true
inline.NumInlined: 990
inline.NumDeleted: 386
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL4heapINS_9elim_moreEE2upEj:bb.a
  %i.aa = phi i32 [ %.pre12, %bb.e ], [ %i.s, %bb.d ]
  %i.ab = add i32 %i.aa, -1
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !177
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !169 ; 3 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !238 ; 5 uses
  %i.ai = shl i32 %i.ag, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 7248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !197
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 880
  %i.am = zext i32 %i.ai to i64
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !178 ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !179 ; 2 uses
  %i.aq = sitofp i64 %i.ap to double              ; 3 uses
  %i.ar = or disjoint i32 %i.ai, 1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !179 ; 2 uses
  %i.av = sitofp i64 %i.au to double              ; 3 uses
  %.not.i.i7 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE6parentEj.exit
  %i.aw = fneg double %i.av
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i

bb.g:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE6parentEj.exit
  %.not20.i.i = icmp eq i64 %i.au, 0
  br i1 %.not20.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = fneg double %i.aq
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 3448
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !239 ; 2 uses
  %.not21.i.i = icmp eq i32 %i.az, 0
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fadd nnan double %i.aq, %i.av
  %i.bc = fmul double %i.bb, %i.ba
  %.014.i.i = select i1 %.not21.i.i, double 0.000000e+00, double %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 3432
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !240 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.be, 0
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fmul nnan double %i.aq, %i.av
  %i.bh = fmul double %i.bg, %i.bf
  %.0.i.i = select i1 %.not22.i.i, double 0.000000e+00, double %i.bh
  %i.bi = fadd double %.014.i.i, %.0.i.i
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i

_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %.015.i.i = phi double [ %i.bi, %bb.i ], [ %i.ax, %bb.h ], [ %i.aw, %bb.f ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.g
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !179 ; 2 uses
  %i.bl = sitofp i64 %i.bk to double              ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !179 ; 2 uses
  %i.bo = sitofp i64 %i.bn to double              ; 3 uses
  %.not.i11.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i11.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i
  %i.bp = fneg double %i.bo
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i
  %.not20.i12.i = icmp eq i64 %i.bn, 0
  br i1 %.not20.i12.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = fneg double %i.bl
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 3448
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !239 ; 2 uses
  %.not21.i13.i = icmp eq i32 %i.bs, 0
  %i.bt = sitofp i32 %i.bs to double
  %i.bu = fadd nnan double %i.bl, %i.bo
  %i.bv = fmul double %i.bu, %i.bt
  %.014.i14.i = select i1 %.not21.i13.i, double 0.000000e+00, double %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 3432
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !240 ; 2 uses
  %.not22.i15.i = icmp eq i32 %i.bx, 0
  %i.by = sitofp i32 %i.bx to double
  %i.bz = fmul nnan double %i.bl, %i.bo
  %i.ca = fmul double %i.bz, %i.by
  %.0.i16.i = select i1 %.not22.i15.i, double 0.000000e+00, double %i.ca
  %i.cb = fadd double %.014.i14.i, %.0.i16.i
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit

_ZN7CaDiCaL9elim_moreclEjj.exit:                  ; preds = %bb.j, %bb.l, %bb.m
  %.015.i17.i = phi double [ %i.cb, %bb.m ], [ %i.bq, %bb.l ], [ %i.bp, %bb.j ] ; 2 uses
  %i.cc = fcmp ogt double %.015.i.i, %.015.i17.i
  %i.cd = fcmp uge double %.015.i.i, %.015.i17.i
  %i.ce = icmp ugt i32 %i.ag, %1
  %spec.select.i = and i1 %i.ce, %i.cd
  %.0.i = or i1 %i.cc, %spec.select.i
  br i1 %.0.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN7CaDiCaL9elim_moreclEjj.exit
  %i.cf = zext i32 %i.ag to i64                   ; 3 uses
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !176 ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.z to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2                 ; 3 uses
  %.not.i.i8 = icmp ugt i64 %i.ck, %i.cf
  br i1 %.not.i.i8, label %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = add nuw nsw i64 %i.cf, 1
  %i.cm = sub nuw nsw i64 %i.cl, %i.ck
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cg, i64 noundef %i.cm, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i9 = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i9 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i:  ; preds = %bb.o, %bb.n
  %i.cn = phi ptr [ %i.z, %bb.n ], [ %.pre.i.i9, %bb.o ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.ck, %bb.n ], [ %.pre15.i, %bb.o ] ; 2 uses
  %i.co = phi ptr [ %i.cg, %bb.n ], [ %.pre.i, %bb.o ]
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %i.a
  br i1 %.not.i6.i, label %_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit, label %bb.p

bb.p:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i
  %i.cp = sub nuw nsw i64 %i.d, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.co, i64 noundef %i.cp, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !177
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit

_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit: ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i, %bb.p
  %i.cq = phi ptr [ %.pre.i7.i, %bb.p ], [ %i.cn, %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cf ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.a ; 3 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !169
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %0, align 8, !tbaa !177   ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !169
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cw, align 4, !tbaa !169
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !169
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !169
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !169
  %i.dc = load i32, ptr %i.cr, align 4, !tbaa !169
  %i.dd = load i32, ptr %i.cs, align 4, !tbaa !169
  store i32 %i.dd, ptr %i.cr, align 4, !tbaa !169
  store i32 %i.dc, ptr %i.cs, align 4, !tbaa !169
  br label %bb.b, !llvm.loop !308

.critedge:                                        ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE10has_parentEj.exit, %_ZN7CaDiCaL9elim_moreclEjj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_9elim_moreEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = add nuw nsw i64 %i.a, 1                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = shl i32 %1, 1                            ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = or disjoint i32 %i.g, 1
  %i.j = zext i32 %i.i to i64
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !177
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %i.k = phi ptr [ %i.fv, %bb.ac ], [ %.pre, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.p, %i.a
  br i1 %.not.i.i, label %_ZN7CaDiCaL4heapINS_9elim_moreEE8has_leftEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sub nuw nsw i64 %i.d, %i.p
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.l, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !177
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE8has_leftEj.exit

_ZN7CaDiCaL4heapINS_9elim_moreEE8has_leftEj.exit: ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %.pre.i.i, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.a
  %i.t = load i32, ptr %i.s, align 4, !tbaa !169  ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !176
  %i.y = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = icmp ult i64 %i.w, %i.ac
  br i1 %i.ad, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE8has_leftEj.exit
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !176 ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.r to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.not.i.i13 = icmp ugt i64 %i.ai, %i.a
  br i1 %.not.i.i13, label %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = sub nuw nsw i64 %i.d, %i.ai
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ae, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i14 = load ptr, ptr %i.b, align 8, !tbaa !177 ; 3 uses
  %.phi.trans.insert.a = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %i.a
  %.pre45.a = load i32, ptr %.phi.trans.insert.a, align 4, !tbaa !169
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !177
  %.pre47 = load ptr, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %.pre59 = ptrtoint ptr %.pre47 to i64
  %.pre60 = ptrtoint ptr %.pre.i.i14 to i64
  %.pre62 = sub i64 %.pre59, %.pre60
  %.pre64 = ashr exact i64 %.pre62, 2
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit

_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit:     ; preds = %bb.d, %bb.e
  %.pre-phi65 = phi i64 [ %i.ai, %bb.d ], [ %.pre64, %bb.e ] ; 2 uses
  %3 = phi ptr [ %i.r, %bb.d ], [ %.pre.i.i14, %bb.e ]
  %4 = phi ptr [ %i.ae, %bb.d ], [ %.pre47, %bb.e ]
  %5 = phi ptr [ %i.y, %bb.d ], [ %.pre46, %bb.e ] ; 2 uses
  %6 = phi i32 [ %i.t, %bb.d ], [ %.pre45.a, %bb.e ] ; 2 uses
  %i.aj = shl i32 %6, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !169 ; 4 uses
  %.not.i.i15 = icmp ugt i64 %.pre-phi65, %i.a
  br i1 %.not.i.i15, label %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit
  %i.ao = sub nuw nsw i64 %i.d, %.pre-phi65
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %4, i64 noundef %i.ao, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i16 = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  %.phi.trans.insert48 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i16, i64 %i.a
  %.pre49 = load i32, ptr %.phi.trans.insert48, align 4, !tbaa !169
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !177
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit

_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit: ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit, %bb.f
  %7 = phi ptr [ %.pre.i.i16, %bb.f ], [ %3, %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit ] ; 3 uses
  %8 = phi ptr [ %.pre50, %bb.f ], [ %5, %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit ] ; 2 uses
  %9 = phi i32 [ %.pre49, %bb.f ], [ %6, %_ZN7CaDiCaL4heapINS_9elim_moreEE4leftEj.exit ] ; 2 uses
  %i.ap = zext i32 %9 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = add nuw nsw i64 %i.aq, 2
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !176
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %8 to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = icmp ult i64 %i.ar, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge

_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge: ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit
  %.pre54 = load ptr, ptr %i.f, align 8, !tbaa !238 ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre54, i64 7248
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !197
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre56, i64 880
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !178
  br label %bb.q

bb.g:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %7 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 2 uses
  %.not.i.i17 = icmp ugt i64 %i.bc, %i.a
  br i1 %.not.i.i17, label %_ZN7CaDiCaL4heapINS_9elim_moreEE5rightEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = sub nuw nsw i64 %i.d, %i.bc
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ay, i64 noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i18 = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  %.phi.trans.insert51 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i18, i64 %i.a
  %.pre52 = load i32, ptr %.phi.trans.insert51, align 4, !tbaa !169
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !177
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE5rightEj.exit

_ZN7CaDiCaL4heapINS_9elim_moreEE5rightEj.exit:    ; preds = %bb.g, %bb.h
  %i.be = phi ptr [ %.pre.i.i18, %bb.h ], [ %7, %bb.g ]
  %i.bf = phi ptr [ %.pre53, %bb.h ], [ %8, %bb.g ]
  %i.bg = phi i32 [ %.pre52, %bb.h ], [ %9, %bb.g ]
  %i.bh = shl i32 %i.bg, 1
  %i.bi = add i32 %i.bh, 2
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !169 ; 3 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !238 ; 6 uses
  %i.bn = shl i32 %i.an, 1                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 7248
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 880
  %i.br = zext i32 %i.bn to i64
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !178 ; 5 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !179 ; 2 uses
  %i.bv = sitofp i64 %i.bu to double              ; 3 uses
  %i.bw = or disjoint i32 %i.bn, 1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !179 ; 2 uses
  %i.ca = sitofp i64 %i.bz to double              ; 3 uses
  %.not.i.i19 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i19, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE5rightEj.exit
  %i.cb = fneg double %i.ca
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i

bb.j:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE5rightEj.exit
  %.not20.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not20.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = fneg double %i.bv
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 3448
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !239 ; 2 uses
  %.not21.i.i = icmp eq i32 %i.ce, 0
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fadd nnan double %i.bv, %i.ca
  %i.ch = fmul double %i.cg, %i.cf
  %.014.i.i = select i1 %.not21.i.i, double 0.000000e+00, double %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 3432
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !240 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.cj, 0
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fmul nnan double %i.bv, %i.ca
  %i.cm = fmul double %i.cl, %i.ck
  %.0.i.i = select i1 %.not22.i.i, double 0.000000e+00, double %i.cm
  %i.cn = fadd double %.014.i.i, %.0.i.i
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i

_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.015.i.i = phi double [ %i.cn, %bb.l ], [ %i.cc, %bb.k ], [ %i.cb, %bb.i ] ; 2 uses
  %i.co = shl i32 %i.bl, 1                        ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !179 ; 2 uses
  %i.cs = sitofp i64 %i.cr to double              ; 3 uses
  %i.ct = or disjoint i32 %i.co, 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !179 ; 2 uses
  %i.cx = sitofp i64 %i.cw to double              ; 3 uses
  %.not.i11.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i11.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i
  %i.cy = fneg double %i.cx
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit

bb.n:                                             ; preds = %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i
  %.not20.i12.i = icmp eq i64 %i.cw, 0
  br i1 %.not20.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = fneg double %i.cs
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit

bb.p:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 3448
  %i.db = load i32, ptr %i.da, align 8, !tbaa !239 ; 2 uses
  %.not21.i13.i = icmp eq i32 %i.db, 0
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fadd nnan double %i.cs, %i.cx
  %i.de = fmul double %i.dd, %i.dc
  %.014.i14.i = select i1 %.not21.i13.i, double 0.000000e+00, double %i.de
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 3432
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !240 ; 2 uses
  %.not22.i15.i = icmp eq i32 %i.dg, 0
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fmul nnan double %i.cs, %i.cx
  %i.dj = fmul double %i.di, %i.dh
  %.0.i16.i = select i1 %.not22.i15.i, double 0.000000e+00, double %i.dj
  %i.dk = fadd double %.014.i14.i, %.0.i16.i
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit

_ZN7CaDiCaL9elim_moreclEjj.exit:                  ; preds = %bb.m, %bb.o, %bb.p
  %.015.i17.i = phi double [ %i.dk, %bb.p ], [ %i.cz, %bb.o ], [ %i.cy, %bb.m ] ; 2 uses
  %i.dl = fcmp ogt double %.015.i.i, %.015.i17.i
  %i.dm = fcmp uge double %.015.i.i, %.015.i17.i
  %i.dn = icmp ugt i32 %i.an, %i.bl
  %spec.select.i = and i1 %i.dn, %i.dm
  %.0.i = or i1 %i.dl, %spec.select.i
  %spec.select = select i1 %.0.i, i32 %i.bl, i32 %i.an
  br label %bb.q

bb.q:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge, %_ZN7CaDiCaL9elim_moreclEjj.exit
  %i.do = phi ptr [ %i.be, %_ZN7CaDiCaL9elim_moreclEjj.exit ], [ %7, %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge ] ; 2 uses
  %i.dp = phi ptr [ %i.bs, %_ZN7CaDiCaL9elim_moreclEjj.exit ], [ %.pre58, %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge ] ; 4 uses
  %i.dq = phi ptr [ %i.bm, %_ZN7CaDiCaL9elim_moreclEjj.exit ], [ %.pre54, %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %spec.select, %_ZN7CaDiCaL9elim_moreclEjj.exit ], [ %i.an, %_ZN7CaDiCaL4heapINS_9elim_moreEE9has_rightEj.exit._crit_edge ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.h
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !179 ; 2 uses
  %i.dt = sitofp i64 %i.ds to double              ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.j
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !179 ; 2 uses
  %i.dw = sitofp i64 %i.dv to double              ; 3 uses
  %.not.i.i20 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i20, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dx = fneg double %i.dw
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i26

bb.s:                                             ; preds = %bb.q
  %.not20.i.i21 = icmp eq i64 %i.dv, 0
  br i1 %.not20.i.i21, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dy = fneg double %i.dt
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i26

bb.u:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 3448
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !239 ; 2 uses
  %.not21.i.i22 = icmp eq i32 %i.ea, 0
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fadd nnan double %i.dt, %i.dw
  %i.ed = fmul double %i.ec, %i.eb
  %.014.i.i23 = select i1 %.not21.i.i22, double 0.000000e+00, double %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 3432
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !240 ; 2 uses
  %.not22.i.i24 = icmp eq i32 %i.ef, 0
  %i.eg = sitofp i32 %i.ef to double
  %i.eh = fmul nnan double %i.dt, %i.dw
  %i.ei = fmul double %i.eh, %i.eg
  %.0.i.i25 = select i1 %.not22.i.i24, double 0.000000e+00, double %i.ei
  %i.ej = fadd double %.014.i.i23, %.0.i.i25
  br label %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i26

_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i26: ; preds = %bb.u, %bb.t, %bb.r
  %.015.i.i27 = phi double [ %i.ej, %bb.u ], [ %i.dy, %bb.t ], [ %i.dx, %bb.r ] ; 2 uses
  %i.ek = shl i32 %.1, 1                          ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !179 ; 2 uses
  %i.eo = sitofp i64 %i.en to double              ; 3 uses
  %i.ep = or disjoint i32 %i.ek, 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !179 ; 2 uses
  %i.et = sitofp i64 %i.es to double              ; 3 uses
  %.not.i11.i28 = icmp eq i64 %i.en, 0
  br i1 %.not.i11.i28, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i26
  %i.eu = fneg double %i.et
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit37

bb.w:                                             ; preds = %_ZN7CaDiCaL8Internal18compute_elim_scoreEj.exit.i26
  %.not20.i12.i29 = icmp eq i64 %i.es, 0
  br i1 %.not20.i12.i29, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ev = fneg double %i.eo
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit37

bb.y:                                             ; preds = %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 3448
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !239 ; 2 uses
  %.not21.i13.i30 = icmp eq i32 %i.ex, 0
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fadd nnan double %i.eo, %i.et
  %i.fa = fmul double %i.ez, %i.ey
  %.014.i14.i31 = select i1 %.not21.i13.i30, double 0.000000e+00, double %i.fa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dq, i64 3432
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !240 ; 2 uses
  %.not22.i15.i32 = icmp eq i32 %i.fc, 0
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = fmul nnan double %i.eo, %i.et
  %i.ff = fmul double %i.fe, %i.fd
  %.0.i16.i33 = select i1 %.not22.i15.i32, double 0.000000e+00, double %i.ff
  %i.fg = fadd double %.014.i14.i31, %.0.i16.i33
  br label %_ZN7CaDiCaL9elim_moreclEjj.exit37

_ZN7CaDiCaL9elim_moreclEjj.exit37:                ; preds = %bb.v, %bb.x, %bb.y
  %.015.i17.i34 = phi double [ %i.fg, %bb.y ], [ %i.ev, %bb.x ], [ %i.eu, %bb.v ] ; 2 uses
  %i.fh = fcmp ogt double %.015.i.i27, %.015.i17.i34
  %i.fi = fcmp uge double %.015.i.i27, %.015.i17.i34
  %i.fj = icmp ugt i32 %1, %.1
  %spec.select.i35 = and i1 %i.fj, %i.fi
  %.0.i36 = or i1 %i.fh, %spec.select.i35
  br i1 %.0.i36, label %bb.z, label %.thread

bb.z:                                             ; preds = %_ZN7CaDiCaL9elim_moreclEjj.exit37
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !176 ; 3 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.do to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 2                 ; 3 uses
  %.not.i.i38 = icmp ugt i64 %i.fo, %i.a
  br i1 %.not.i.i38, label %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = sub nuw nsw i64 %i.d, %i.fo
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.fk, i64 noundef %i.fp, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i39 = load ptr, ptr %i.b, align 8, !tbaa !177 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i39 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i:  ; preds = %bb.aa, %bb.z
  %i.fq = phi ptr [ %i.do, %bb.z ], [ %.pre.i.i39, %bb.aa ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.fo, %bb.z ], [ %.pre15.i, %bb.aa ] ; 2 uses
  %i.fr = phi ptr [ %i.fk, %bb.z ], [ %.pre.i, %bb.aa ]
  %i.fs = zext i32 %.1 to i64                     ; 3 uses
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %i.fs
  br i1 %.not.i6.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i
  %i.ft = add nuw nsw i64 %i.fs, 1
  %i.fu = sub nuw nsw i64 %i.ft, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.fr, i64 noundef %i.fu, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !177
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i
  %i.fv = phi ptr [ %.pre.i7.i, %bb.ab ], [ %i.fq, %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.a ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fs ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !169
  %i.fz = zext i32 %i.fy to i64
  %i.ga = load ptr, ptr %0, align 8, !tbaa !177   ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fz ; 2 uses
  %i.gc = load i32, ptr %i.fx, align 4, !tbaa !169
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.gb, align 4, !tbaa !169
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !169
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !169
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !169
  %i.gh = load i32, ptr %i.fw, align 4, !tbaa !169
  %i.gi = load i32, ptr %i.fx, align 4, !tbaa !169
  store i32 %i.gi, ptr %i.fw, align 4, !tbaa !169
  store i32 %i.gh, ptr %i.fx, align 4, !tbaa !169
  br label %bb.b

.thread:                                          ; preds = %_ZN7CaDiCaL9elim_moreclEjj.exit37, %_ZN7CaDiCaL4heapINS_9elim_moreEE8has_leftEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !169    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !195

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !176
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !169
  store i32 %i.s, ptr %i.d, align 4, !tbaa !169
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
end_hunk_0
