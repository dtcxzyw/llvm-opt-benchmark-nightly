Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLDriver?download=true
inline.NumInlined: 2450
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@llvm.fabs.f32
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123
  %i.b = load ptr, ptr %1, align 8, !tbaa !123
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = xor i16 %i.f, %i.d
  %i.h = and i16 %i.g, 4095
  %or.cond28 = icmp eq i16 %i.h, 0
  br i1 %or.cond28, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !427
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !427
  %.not21 = icmp eq i8 %i.j, %i.l
  br i1 %.not21, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !428
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !428
  %.not22 = icmp eq i8 %i.n, %i.p
  br i1 %.not22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !429
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !429
  %.not23 = icmp eq i8 %i.r, %i.t
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !471
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !471
  %.not29 = icmp eq i8 %i.v, %i.x
  br i1 %.not29, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !142  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !142 ; 3 uses
  %.not24 = icmp eq ptr %i.z, %i.ab
  br i1 %.not24, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not25 = icmp eq ptr %i.z, null
  %.not26 = icmp eq ptr %i.ab, null
  %or.cond = or i1 %.not25, %.not26
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %i.ab)
  %i.ad = xor i1 %i.ac, true
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g, %bb.i, %bb.h, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ %i.ad, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !116
  %i.b = load float, ptr %1, align 4, !tbaa !116
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !116
  %i.h = fcmp oeq float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !116
  %i.m = fcmp oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !116
  %i.r = fcmp oeq float %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !116
  %i.w = fcmp oeq float %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !116
  %i.ab = fcmp oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !116
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !116
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !116
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !116
  %i.aq = fcmp oeq float %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !116
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.au = load float, ptr %i.at, align 4, !tbaa !116
  %i.av = fcmp oeq float %i.as, %i.au
  br i1 %i.av, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load float, ptr %i.ay, align 4, !tbaa !116
  %i.ba = fcmp oeq float %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load float, ptr %i.bd, align 4, !tbaa !116
  %i.bf = fcmp oeq float %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !116
  %i.bk = fcmp oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !116
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !116
  %i.bp = fcmp oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !116
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !116
  %i.bu = fcmp oeq float %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !116
  %i.bz = fcmp oeq float %i.bw, %i.by
  br i1 %i.bz, label %2, label %bb.q

2:                                                ; preds = %bb.p
  br label %bb.q

bb.q:                                             ; preds = %2, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ true, %2 ], [ false, %bb.b ], [ false, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ], [ false, %bb.i ]
  ret i1 %.lcssa
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIhEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !114
  store i8 0, ptr %i.a, align 8, !tbaa !115
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %i.c = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !115
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #31
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !130
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %1, align 1, !tbaa !115
  %.not3.i = icmp eq i8 %i.i, 0
  br i1 %.not3.i, label %_ZN4core6stringIcE7calclenIhEEjPKT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.j = trunc i64 %strlen.i to i32
  %i.k = add i32 %i.j, 1
  br label %_ZN4core6stringIcE7calclenIhEEjPKT_.exit

_ZN4core6stringIcE7calclenIhEEjPKT_.exit:         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = zext i32 %.0.lcssa.i to i64              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4core6stringIcE7calclenIhEEjPKT_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i8 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4core6stringIcE7calclenIhEEjPKT_.exit
  %.not18 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.p = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !115
  %i.s = load ptr, ptr %0, align 8, !tbaa !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !115
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !553

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.m, align 8, !tbaa !114
  %i.v = icmp ugt i64 %i.u, %i.l
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !115
  %i.y = load ptr, ptr %0, align 8, !tbaa !130
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.x, ptr %i.z, align 1, !tbaa !115
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !115
  %i.ac = load ptr, ptr %0, align 8, !tbaa !130
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !115
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !115
  %i.ag = load ptr, ptr %0, align 8, !tbaa !130
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !115
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !115
  %i.ak = load ptr, ptr %0, align 8, !tbaa !130
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !115
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !554

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i8 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5video23COpenGLExtensionHandler10getFeatureEv(ptr noundef nonnull align 8 dereferenceable(1880)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video13IRenderTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !521  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !555
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit

_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !507  ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i2, label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit, label %bb.c

end_hunk_0
