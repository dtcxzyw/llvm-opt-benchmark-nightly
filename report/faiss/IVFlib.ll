Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IVFlib?download=true
inline.NumInlined: 1397
inline.NumDeleted: 665
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5faiss6ivflib32ivf_residual_add_from_flat_codesEPNS_25IndexIVFResidualQuantizerEmPKhl:bb.a
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.u, %bb.h ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.j, align 8, !tbaa !27
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.b
  %i.z = icmp slt i64 %3, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !242
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 7, ptr nonnull @"_ZZN5faiss6ivflib32ivf_residual_add_from_flat_codesEPNS_25IndexIVFResidualQuantizerEmPKhlENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined", ptr nonnull %i.a, ptr nonnull %i.ae, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.ad)
  %i.af = load i64, ptr %i.b, align 8, !tbaa !55
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.aj = add i64 %i.ai, %i.af
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  ret void

bb.m:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @"_ZZN5faiss6ivflib32ivf_residual_add_from_flat_codesEPNS_25IndexIVFResidualQuantizerEmPKhlENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined"(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(504) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(25) %8) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.g = load i64, ptr %i.f, align 8, !tbaa !247  ; 5 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.invoke, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc40:                                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 3 uses
  store i8 0, ptr %i.i, align 1, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc40, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.j, %bb.c ], [ %i.j, %.noexc40 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.096.0 = phi ptr [ %i.i, %bb.c ], [ %i.i, %.noexc40 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.k, %.noexc40 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164  ; 5 uses
  %i.p = icmp ugt i64 %i.o, 2305843009213693951
  br i1 %i.p, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.not.i.i.i.i41 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i41, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc44:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !56
  %i.t = add nsw i64 %i.o, -1                     ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc44
  %i.v = getelementptr i8, ptr %i.r, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !56
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc44, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.091.0 = phi ptr [ %i.r, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.r, %.noexc44 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.994.0 = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc44 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.w = tail call i32 @omp_get_num_threads()
  %i.x = tail call i32 @omp_get_thread_num()
  %i.y = load i64, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  %.pre122 = load i32, ptr %0, align 4, !tbaa !139 ; 3 uses
  br i1 %i.z, label %bb.e, label %bb.u

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.aa = add nsw i64 %i.y, -1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 1, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !139
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre122, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !55
  %i.ac = call i64 @llvm.smin.i64(i64 %i.ab, i64 %i.aa) ; 3 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !55
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %.not111 = icmp sgt i64 %i.ad, %i.ac
  br i1 %.not111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.e
  %i.ae = sext i32 %i.w to i64
  %i.af = sext i32 %i.x to i64
  %i.ag = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ah = ptrtoint ptr %.sroa.096.0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph114, %bb.t
  %i.am = phi i64 [ %i.ac, %.lr.ph114 ], [ %i.gt, %bb.t ]
  %.039112 = phi i64 [ %i.ad, %.lr.ph114 ], [ %i.gu, %bb.t ] ; 4 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !131
  %i.ao = load i64, ptr %6, align 8, !tbaa !55
  %i.ap = mul nsw i64 %i.ao, %.039112
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap ; 10 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !172
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load i64, ptr %i.as, align 8, !tbaa !165 ; 3 uses
  %i.au = trunc i64 %i.at to i32                  ; 5 uses
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !27  ; 2 uses
  %.not.i = icmp sgt i32 %i.au, 8
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = zext i8 %i.av to i32
  %notmask30.i = shl nsw i32 -1, %i.au
  %i.ax = xor i32 %notmask30.i, -1
  %i.ay = and i32 %i.aw, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %sext = shl i64 %i.at, 32
  %i.ba = ashr exact i64 %sext, 32
  br label %_ZN5faiss15BitstringReader4readEi.exit

bb.h:                                             ; preds = %bb.f
  %i.bb = zext i8 %i.av to i64                    ; 3 uses
  %i.bc = and i64 %i.at, 2147483647
  %i.bd = add nsw i32 %i.au, -8                   ; 3 uses
  %i.be = icmp samesign ugt i32 %i.au, 16
  br i1 %i.be, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.bf = add nsw i32 %i.au, -17                  ; 3 uses
  %i.bg = lshr i32 %i.bf, 3
  %narrow = add nuw nsw i32 %i.bg, 1
  %i.bh = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %i.bi = icmp ult i32 %i.bf, 24
  br i1 %i.bi, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bh, 1073741820
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 2 uses
  %.02435.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %.024.i.3, %.lr.ph.i ] ; 5 uses
  %.02633.i = phi i64 [ %i.bb, %.lr.ph.i.preheader.new ], [ %i.cd, %.lr.ph.i ]
  %.02732.i = phi i32 [ %i.bd, %.lr.ph.i.preheader.new ], [ %i.ce, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.02435.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.02435.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !27
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = or disjoint i64 %i.bq, %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.02435.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 16
  %i.bx = or disjoint i64 %i.br, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.02435.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27
  %i.cb = zext i8 %i.ca to i64
  %9 = shl nuw nsw i64 %i.cb, 24
  %10 = or disjoint i64 %i.bx, %9
  %i.cc = shl i64 %10, %indvars.iv.i
  %i.cd = or i64 %i.cc, %.02633.i                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 32 ; 2 uses
  %i.ce = add nsw i32 %.02732.i, -32              ; 3 uses
  %.024.i.3 = add nuw nsw i64 %.02435.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !243

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02435.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %.024.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02633.i.epil.init = phi i64 [ %i.bb, %.lr.ph.i.preheader ], [ %i.cd, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02732.i.epil.init = phi i32 [ %i.bd, %.lr.ph.i.preheader ], [ %i.ce, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.02435.i.epil = phi i64 [ %.024.i.epil, %.lr.ph.i.epil ], [ %.02435.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.02633.i.epil = phi i64 [ %i.cj, %.lr.ph.i.epil ], [ %.02633.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.02732.i.epil = phi i32 [ %i.ck, %.lr.ph.i.epil ], [ %.02732.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.02435.i.epil
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27
  %i.ch = zext i8 %i.cg to i64
  %i.ci = shl i64 %i.ch, %indvars.iv.i.epil
  %i.cj = or i64 %i.ci, %.02633.i.epil            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 8
  %i.ck = add nsw i32 %.02732.i.epil, -8          ; 2 uses
  %.024.i.epil = add nuw nsw i64 %.02435.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !244

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa148 = phi i64 [ %i.cd, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.i.epil ]
  %.lcssa = phi i32 [ %i.ce, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ck, %.lr.ph.i.epil ]
  %i.cl = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.cm = and i64 %i.cl, 2147483640
  %i.cn = add nuw nsw i64 %i.cm, 16
  %i.co = lshr i64 %i.cl, 3
  %i.cp = add nuw nsw i64 %i.co, 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.h
  %.027.lcssa.i = phi i32 [ %i.bd, %bb.h ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %.026.lcssa.i = phi i64 [ %i.bb, %bb.h ], [ %.lcssa148, %._crit_edge.i.loopexit ]
  %.025.lcssa.i = phi i64 [ 8, %bb.h ], [ %i.cn, %._crit_edge.i.loopexit ]
  %.024.lcssa.i = phi i64 [ 1, %bb.h ], [ %i.cp, %._crit_edge.i.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.024.lcssa.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !27
  %notmask.i = shl nsw i32 -1, %.027.lcssa.i
  %i.cs = xor i32 %notmask.i, -1
  %i.ct = zext i8 %i.cr to i32
  %i.cu = and i32 %i.ct, %i.cs
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl i64 %i.cv, %.025.lcssa.i
  %i.cx = or i64 %i.cw, %.026.lcssa.i
  br label %_ZN5faiss15BitstringReader4readEi.exit

_ZN5faiss15BitstringReader4readEi.exit:           ; preds = %bb.g, %._crit_edge.i
  %.sroa.6.1 = phi i64 [ %i.bc, %._crit_edge.i ], [ %i.ba, %bb.g ]
  %.0.i = phi i64 [ %i.cx, %._crit_edge.i ], [ %i.az, %bb.g ] ; 2 uses
  %i.cy = srem i64 %.0.i, %i.ae
  %i.cz = icmp eq i64 %i.cy, %i.af
  br i1 %i.cz, label %bb.i, label %bb.t

bb.i:                                             ; preds = %_ZN5faiss15BitstringReader4readEi.exit
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.096.0, i8 0, i64 %i.ai, i1 false)
  %i.da = load i64, ptr %i.aj, align 8, !tbaa !163 ; 2 uses
  %.not116 = icmp eq i64 %i.da, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !93
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit, %bb.i
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.i ], [ %.sroa.10.1, %_ZN5faiss15BitstringWriter5writeEmi.exit ] ; 3 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !170
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 296
  invoke void @_ZNK5faiss17AdditiveQuantizer6decodeEPKhPfm(ptr noundef nonnull align 8 dereferenceable(412) %i.dd, ptr noundef %.sroa.096.0, ptr noundef %.sroa.091.0, i64 noundef 1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph, %_ZN5faiss15BitstringWriter5writeEmi.exit
  %.0110 = phi i64 [ 0, %.lr.ph ], [ %i.fn, %_ZN5faiss15BitstringWriter5writeEmi.exit ] ; 2 uses
  %.sroa.10.0109 = phi i64 [ 0, %.lr.ph ], [ %.sroa.10.1, %_ZN5faiss15BitstringWriter5writeEmi.exit ] ; 4 uses
  %.sroa.6.0108 = phi i64 [ %.sroa.6.1, %.lr.ph ], [ %.sroa.6.2, %_ZN5faiss15BitstringWriter5writeEmi.exit ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.0110
  %i.df = load i64, ptr %i.de, align 8, !tbaa !55 ; 5 uses
  %i.dg = trunc i64 %i.df to i32                  ; 4 uses
  %i.dh = trunc i64 %.sroa.6.0108 to i32
  %i.di = and i32 %i.dh, 7                        ; 2 uses
  %i.dj = sub nuw nsw i32 8, %i.di                ; 4 uses
  %i.dk = lshr i64 %.sroa.6.0108, 3               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.dn = zext i8 %i.dm to i32
  %i.do = lshr i32 %i.dn, %i.di                   ; 2 uses
  %.not.i45 = icmp slt i32 %i.dj, %i.dg
  br i1 %.not.i45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %notmask30.i46 = shl nsw i32 -1, %i.dg
  %i.dp = xor i32 %notmask30.i46, -1
  %i.dq = and i32 %i.do, %i.dp
  %i.dr = zext nneg i32 %i.dq to i64
  %sext102 = shl i64 %i.df, 32
  %i.ds = ashr exact i64 %sext102, 32
  br label %_ZN5faiss15BitstringReader4readEi.exit64

bb.l:                                             ; preds = %bb.j
  %i.dt = zext nneg i32 %i.do to i64              ; 2 uses
  %i.du = and i64 %i.df, 4294967295
  %i.dv = sub nuw nsw i32 %i.dg, %i.dj            ; 3 uses
  %.02431.i48 = add nuw nsw i64 %i.dk, 1          ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.dv, 8
  br i1 %i.dw, label %.lr.ph.preheader.i55, label %._crit_edge.i49

.lr.ph.preheader.i55:                             ; preds = %bb.l
  %i.dx = zext nneg i32 %i.dj to i64
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.preheader.i55
  %indvars.iv.i57 = phi i64 [ %i.dx, %.lr.ph.preheader.i55 ], [ %indvars.iv.next.i61, %.lr.ph.i56 ] ; 2 uses
  %.02435.i58 = phi i64 [ %.02431.i48, %.lr.ph.preheader.i55 ], [ %.024.i62, %.lr.ph.i56 ] ; 2 uses
  %.02633.i59 = phi i64 [ %i.dt, %.lr.ph.preheader.i55 ], [ %i.ec, %.lr.ph.i56 ]
  %.02732.i60 = phi i32 [ %i.dv, %.lr.ph.preheader.i55 ], [ %i.ed, %.lr.ph.i56 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.02435.i58
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl i64 %i.ea, %indvars.iv.i57
  %i.ec = or i64 %i.eb, %.02633.i59               ; 2 uses
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i57, 8 ; 2 uses
  %i.ed = add nsw i32 %.02732.i60, -8             ; 2 uses
  %.024.i62 = add nuw nsw i64 %.02435.i58, 1      ; 2 uses
  %i.ee = icmp samesign ugt i32 %.02732.i60, 16
  br i1 %i.ee, label %.lr.ph.i56, label %._crit_edge.loopexit.i63, !llvm.loop !243

._crit_edge.loopexit.i63:                         ; preds = %.lr.ph.i56
  %i.ef = trunc nuw i64 %indvars.iv.next.i61 to i32
  br label %._crit_edge.i49

._crit_edge.i49:                                  ; preds = %._crit_edge.loopexit.i63, %bb.l
  %.027.lcssa.i50 = phi i32 [ %i.dv, %bb.l ], [ %i.ed, %._crit_edge.loopexit.i63 ]
  %.026.lcssa.i51 = phi i64 [ %i.dt, %bb.l ], [ %i.ec, %._crit_edge.loopexit.i63 ]
  %.025.lcssa.i52 = phi i32 [ %i.dj, %bb.l ], [ %i.ef, %._crit_edge.loopexit.i63 ]
  %.024.lcssa.i53 = phi i64 [ %.02431.i48, %bb.l ], [ %.024.i62, %._crit_edge.loopexit.i63 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.024.lcssa.i53
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !27
  %notmask.i54 = shl nsw i32 -1, %.027.lcssa.i50
  %i.ei = xor i32 %notmask.i54, -1
  %i.ej = zext i8 %i.eh to i32
  %i.ek = and i32 %i.ej, %i.ei
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = zext nneg i32 %.025.lcssa.i52 to i64
  %i.en = shl i64 %i.el, %i.em
  %i.eo = or i64 %i.en, %.026.lcssa.i51
  br label %_ZN5faiss15BitstringReader4readEi.exit64

_ZN5faiss15BitstringReader4readEi.exit64:         ; preds = %bb.k, %._crit_edge.i49
  %.pn = phi i64 [ %i.du, %._crit_edge.i49 ], [ %i.ds, %bb.k ]
  %.0.i47 = phi i64 [ %i.eo, %._crit_edge.i49 ], [ %i.dr, %bb.k ] ; 3 uses
  %.sroa.6.2 = add i64 %.pn, %.sroa.6.0108
  %i.ep = and i64 %.sroa.10.0109, 7               ; 3 uses
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = sub nuw nsw i32 8, %i.eq                ; 2 uses
  %.not.i65 = icmp slt i32 %i.er, %i.dg
  br i1 %.not.i65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5faiss15BitstringReader4readEi.exit64
  %i.es = shl i64 %.0.i47, %i.ep
  %i.et = lshr i64 %.sroa.10.0109, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !27
  %i.ew = trunc i64 %i.es to i8
  %i.ex = or i8 %i.ev, %i.ew
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !27
  %sext103 = shl i64 %i.df, 32
  %i.ey = ashr exact i64 %sext103, 32
  br label %_ZN5faiss15BitstringWriter5writeEmi.exit

bb.n:                                             ; preds = %_ZN5faiss15BitstringReader4readEi.exit64
  %i.ez = lshr i64 %.sroa.10.0109, 3              ; 2 uses
  %i.fa = shl i64 %.0.i47, %i.ep
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 %i.ez ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fd = trunc i64 %i.fa to i8
  %i.fe = or i8 %i.fc, %i.fd
  store i8 %i.fe, ptr %i.fb, align 1, !tbaa !27
  %i.ff = and i64 %i.df, 4294967295               ; 2 uses
  %i.fg = zext nneg i32 %i.er to i64
  %i.fh = lshr i64 %.0.i47, %i.fg                 ; 2 uses
  %.not1617.i = icmp eq i64 %i.fh, 0
  br i1 %.not1617.i, label %_ZN5faiss15BitstringWriter5writeEmi.exit, label %.lr.ph.i66

end_hunk_0
