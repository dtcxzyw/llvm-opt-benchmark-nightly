Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/quantize_lut?download=true
inline.NumInlined: 213
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5faiss12quantize_lut22round_uint8_per_columnEPfmmS1_S1_:bb.a
  %i.dj = fsub float %i.di, %i.cy
  %i.dk = fmul float %i.r, %i.dj
  %i.dl = fadd float %i.dk, 5.000000e-01
  %i.dm = tail call float @llvm.floor.f32(float %i.dl)
  store float %i.dm, ptr %i.dh, align 4, !tbaa !12
  %i.dn = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %i.dn, %2
  br i1 %exitcond.not.i55, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit, label %.lr.ph.i54, !llvm.loop !35

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit: ; preds = %.lr.ph.i54, %middle.block
  %i.do = fadd float %.03765, %i.cy               ; 2 uses
  %i.dp = add nuw i64 %.066, 1                    ; 2 uses
  %exitcond78.not = icmp eq i64 %i.dp, %1
  br i1 %exitcond78.not, label %._crit_edge69, label %.lr.ph.i54.preheader, !llvm.loop !29

bb.b:                                             ; preds = %._crit_edge69
  store float %i.cw, ptr %3, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge69
  %.not44 = icmp eq ptr %4, null
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.037.lcssa, ptr %4, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.056.09196, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dq = ptrtoint ptr %.sroa.12.08998 to i64
  %i.dr = ptrtoint ptr %.sroa.056.09196 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.09196, i64 noundef %i.ds) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss12quantize_lut28round_uint8_per_column_multiEPfmmmS1_S1_(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %._crit_edge107, label %.noexc59

.noexc59:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.b = shl nuw nsw i64 %2, 2
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #15 ; 32 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %2 ; 5 uses
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !12
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc59
  %i.g = getelementptr i8, ptr %i.c, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !12
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc59
  %.not112 = icmp eq i64 %1, 0
  br i1 %.not112, label %.preheader.preheader, label %.preheader.lr.ph.split.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check175 = icmp ult i64 %2, 8
  br i1 %min.iters.check175, label %.preheader.preheader184, label %vector.ph176

vector.ph176:                                     ; preds = %.preheader.preheader
  %n.vec177 = and i64 %2, 2305843009213693944     ; 3 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next180, %vector.body178 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index179 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x float> splat (float +inf), ptr %i.h, align 4, !tbaa !12
  store <4 x float> splat (float +inf), ptr %i.i, align 4, !tbaa !12
  %index.next180 = add nuw i64 %index179, 8       ; 2 uses
  %i.j = icmp eq i64 %index.next180, %n.vec177
  br i1 %i.j, label %middle.block181, label %vector.body178, !llvm.loop !36

middle.block181:                                  ; preds = %vector.body178
  %cmp.n182 = icmp eq i64 %2, %n.vec177
  br i1 %cmp.n182, label %.lr.ph106.split.preheader, label %.preheader.preheader184

.preheader.preheader184:                          ; preds = %.preheader.preheader, %middle.block181
  %.05194.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec177, %middle.block181 ]
  br label %.preheader

.lr.ph106.split.preheader:                        ; preds = %.preheader, %middle.block181
  %i.k = add nsw i64 %2, -1
  %xtraiter206 = and i64 %2, 7                    ; 3 uses
  %i.l = icmp ult i64 %i.k, 7
  br i1 %i.l, label %.lr.ph106.split.epil.preheader, label %.lr.ph106.split.preheader.new

.lr.ph106.split.preheader.new:                    ; preds = %.lr.ph106.split.preheader
  %unroll_iter211 = and i64 %2, 2305843009213693944
  br label %.lr.ph106.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.m = icmp ult i64 %3, 4
  %unroll_iter = and i64 %3, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  %xtraiter192 = and i64 %3, 3                    ; 3 uses
  %i.n = icmp ult i64 %3, 4
  %unroll_iter197 = and i64 %3, -4
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %min.iters.check165 = icmp ult i64 %2, 8
  br i1 %min.iters.check165, label %.preheader.us.us.preheader187, label %vector.ph166

vector.ph166:                                     ; preds = %.preheader.us.us.preheader
  %n.vec167 = and i64 %2, 2305843009213693944     ; 3 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next170, %vector.body168 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index169 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x float> splat (float +inf), ptr %i.o, align 4, !tbaa !12
  store <4 x float> splat (float +inf), ptr %i.p, align 4, !tbaa !12
  %index.next170 = add nuw i64 %index169, 8       ; 2 uses
  %i.q = icmp eq i64 %index.next170, %n.vec167
  br i1 %i.q, label %middle.block171, label %vector.body168, !llvm.loop !37

middle.block171:                                  ; preds = %vector.body168
  %cmp.n172 = icmp eq i64 %2, %n.vec167
  br i1 %cmp.n172, label %.lr.ph.us.us.preheader, label %.preheader.us.us.preheader187

.preheader.us.us.preheader187:                    ; preds = %.preheader.us.us.preheader, %middle.block171
  %.05194.us.us.ph = phi i64 [ 0, %.preheader.us.us.preheader ], [ %n.vec167, %middle.block171 ]
  br label %.preheader.us.us

.lr.ph.us.us.preheader:                           ; preds = %.preheader.us.us, %middle.block171
  %i.r = add nsw i64 %2, -1
  %xtraiter199 = and i64 %2, 7                    ; 3 uses
  %i.s = icmp ult i64 %i.r, 7
  br i1 %i.s, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us.preheader.new

.lr.ph.us.us.preheader.new:                       ; preds = %.lr.ph.us.us.preheader
  %unroll_iter204 = and i64 %2, 2305843009213693944
  br label %.lr.ph.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader187, %.preheader.us.us
  %.05194.us.us = phi i64 [ %i.u, %.preheader.us.us ], [ %.05194.us.us.ph, %.preheader.us.us.preheader187 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05194.us.us
  store float +inf, ptr %i.t, align 4, !tbaa !12
  %i.u = add nuw i64 %.05194.us.us, 1             ; 2 uses
  %exitcond122.not = icmp eq i64 %i.u, %2
  br i1 %exitcond122.not, label %.lr.ph.us.us.preheader, label %.preheader.us.us, !llvm.loop !38

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us98
  %.05194.us = phi i64 [ %i.bt, %._crit_edge.split.us98 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.05293.us = phi float [ %.1.us, %._crit_edge.split.us98 ], [ 0.000000e+00, %.preheader.us.preheader ] ; 2 uses
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us, %.preheader.us
  %.05090.us97 = phi i64 [ 0, %.preheader.us ], [ %i.bp, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us ] ; 2 uses
  %.08389.us = phi float [ -inf, %.preheader.us ], [ %.sroa.speculated.us, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us ] ; 2 uses
  %.08488.us = phi float [ +inf, %.preheader.us ], [ %.sroa.speculated72.us, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us ] ; 2 uses
  %i.v = mul i64 %.05090.us97, %2
  %i.w = add i64 %i.v, %.05194.us
  %i.x = mul i64 %i.w, %3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 10 uses
  br i1 %i.m, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.011.i.us = phi i64 [ %i.ao, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ] ; 5 uses
  %.0810.i.us = phi float [ %.1.i.us.3, %.lr.ph.i.us ], [ +inf, %.lr.ph.i.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12 ; 2 uses
  %i.ab = fcmp olt float %i.aa, %.0810.i.us
  %.1.i.us = select i1 %i.ab, float %i.aa, float %.0810.i.us ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = fcmp olt float %i.ae, %.1.i.us
  %.1.i.us.1 = select i1 %i.af, float %i.ae, float %.1.i.us ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = fcmp olt float %i.ai, %.1.i.us.1
  %.1.i.us.2 = select i1 %i.aj, float %i.ai, float %.1.i.us.1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !12 ; 2 uses
  %i.an = fcmp olt float %i.am, %.1.i.us.2
  %.1.i.us.3 = select i1 %i.an, float %i.am, float %.1.i.us.2 ; 3 uses
  %i.ao = add nuw i64 %.011.i.us, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i61.us.preheader.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !0

.lr.ph.i61.us.preheader.unr-lcssa:                ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not, label %.lr.ph.i61.us.preheader, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.i61.us.preheader.unr-lcssa, %.lr.ph.i.preheader.us
  %.011.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us ], [ %i.ao, %.lr.ph.i61.us.preheader.unr-lcssa ]
  %.0810.i.us.epil.init = phi float [ +inf, %.lr.ph.i.preheader.us ], [ %.1.i.us.3, %.lr.ph.i61.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %.011.i.us.epil = phi i64 [ %i.as, %.lr.ph.i.us.epil ], [ %.011.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %.0810.i.us.epil = phi float [ %.1.i.us.epil, %.lr.ph.i.us.epil ], [ %.0810.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i.us.epil
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.ar = fcmp olt float %i.aq, %.0810.i.us.epil
  %.1.i.us.epil = select i1 %i.ar, float %i.aq, float %.0810.i.us.epil ; 2 uses
  %i.as = add nuw i64 %.011.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i61.us.preheader, label %.lr.ph.i.us.epil, !llvm.loop !39

.lr.ph.i61.us.preheader:                          ; preds = %.lr.ph.i.us.epil, %.lr.ph.i61.us.preheader.unr-lcssa
  %.1.i.us.lcssa = phi float [ %.1.i.us.3, %.lr.ph.i61.us.preheader.unr-lcssa ], [ %.1.i.us.epil, %.lr.ph.i.us.epil ] ; 2 uses
  br i1 %i.n, label %.lr.ph.i61.us.epil.preheader, label %.lr.ph.i61.us

.lr.ph.i61.us:                                    ; preds = %.lr.ph.i61.us.preheader, %.lr.ph.i61.us
  %.011.i62.us = phi i64 [ %i.bi, %.lr.ph.i61.us ], [ 0, %.lr.ph.i61.us.preheader ] ; 5 uses
  %.0810.i63.us = phi float [ %.1.i64.us.3, %.lr.ph.i61.us ], [ -inf, %.lr.ph.i61.us.preheader ] ; 2 uses
  %niter198 = phi i64 [ %niter198.next.3, %.lr.ph.i61.us ], [ 0, %.lr.ph.i61.us.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i62.us
  %i.au = load float, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.0810.i63.us
  %.1.i64.us = select i1 %i.av, float %i.au, float %.0810.i63.us ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i62.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = fcmp ogt float %i.ay, %.1.i64.us
  %.1.i64.us.1 = select i1 %i.az, float %i.ay, float %.1.i64.us ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i62.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12 ; 2 uses
  %i.bd = fcmp ogt float %i.bc, %.1.i64.us.1
  %.1.i64.us.2 = select i1 %i.bd, float %i.bc, float %.1.i64.us.1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i62.us
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bh = fcmp ogt float %i.bg, %.1.i64.us.2
  %.1.i64.us.3 = select i1 %i.bh, float %i.bg, float %.1.i64.us.2 ; 3 uses
  %i.bi = add nuw i64 %.011.i62.us, 4             ; 2 uses
  %niter198.next.3 = add nuw i64 %niter198, 4     ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa, label %.lr.ph.i61.us, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i61.us
  br i1 %lcmp.mod194.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us, label %.lr.ph.i61.us.epil.preheader

.lr.ph.i61.us.epil.preheader:                     ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa, %.lr.ph.i61.us.preheader
  %.011.i62.us.epil.init = phi i64 [ 0, %.lr.ph.i61.us.preheader ], [ %i.bi, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa ]
  %.0810.i63.us.epil.init = phi float [ -inf, %.lr.ph.i61.us.preheader ], [ %.1.i64.us.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i61.us.epil

.lr.ph.i61.us.epil:                               ; preds = %.lr.ph.i61.us.epil, %.lr.ph.i61.us.epil.preheader
  %.011.i62.us.epil = phi i64 [ %i.bm, %.lr.ph.i61.us.epil ], [ %.011.i62.us.epil.init, %.lr.ph.i61.us.epil.preheader ] ; 2 uses
  %.0810.i63.us.epil = phi float [ %.1.i64.us.epil, %.lr.ph.i61.us.epil ], [ %.0810.i63.us.epil.init, %.lr.ph.i61.us.epil.preheader ] ; 2 uses
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.lr.ph.i61.us.epil ], [ 0, %.lr.ph.i61.us.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i62.us.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, %.0810.i63.us.epil
  %.1.i64.us.epil = select i1 %i.bl, float %i.bk, float %.0810.i63.us.epil ; 2 uses
  %i.bm = add nuw i64 %.011.i62.us.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us, label %.lr.ph.i61.us.epil, !llvm.loop !40

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us: ; preds = %.lr.ph.i61.us.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa
  %.1.i64.us.lcssa = phi float [ %.1.i64.us.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa ], [ %.1.i64.us.epil, %.lr.ph.i61.us.epil ] ; 2 uses
  %i.bn = fcmp olt float %.1.i.us.lcssa, %.08488.us
  %.sroa.speculated72.us = select i1 %i.bn, float %.1.i.us.lcssa, float %.08488.us ; 3 uses
  %i.bo = fcmp olt float %.08389.us, %.1.i64.us.lcssa
  %.sroa.speculated.us = select i1 %i.bo, float %.1.i64.us.lcssa, float %.08389.us ; 2 uses
  %i.bp = add nuw i64 %.05090.us97, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not, label %._crit_edge.split.us98, label %.lr.ph.i.preheader.us, !llvm.loop !41

._crit_edge.split.us98:                           ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05194.us
  store float %.sroa.speculated72.us, ptr %i.bq, align 4, !tbaa !12
  %i.br = fsub float %.sroa.speculated.us, %.sroa.speculated72.us ; 2 uses
  %i.bs = fcmp ogt float %i.br, %.05293.us
  %.1.us = select i1 %i.bs, float %i.br, float %.05293.us ; 3 uses
  %i.bt = add nuw i64 %.05194.us, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.bt, %2
  br i1 %exitcond121.not, label %.lr.ph.us.preheader, label %.preheader.us, !llvm.loop !42

.preheader:                                       ; preds = %.preheader.preheader184, %.preheader
  %.05194 = phi i64 [ %i.bv, %.preheader ], [ %.05194.ph, %.preheader.preheader184 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05194
  store float +inf, ptr %i.bu, align 4, !tbaa !12
  %i.bv = add nuw i64 %.05194, 1                  ; 2 uses
  %exitcond123.not = icmp eq i64 %i.bv, %2
  br i1 %exitcond123.not, label %.lr.ph106.split.preheader, label %.preheader, !llvm.loop !43

.lr.ph.us.preheader:                              ; preds = %._crit_edge.split.us98
  %i.bw = fcmp ogt float %.1.us, 0.000000e+00
  %i.bx = fdiv float 2.550000e+02, %.1.us
  %i.by = select i1 %i.bw, float %i.bx, float 0.000000e+00 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, -4                         ; 3 uses
  %broadcast.splatinsert162 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat163 = shufflevector <4 x float> %broadcast.splatinsert162, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us, %.lr.ph.us.us.preheader.new
  %.048103.us.us = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %i.de, %.lr.ph.us.us ] ; 9 uses
  %.049102.us.us = phi float [ 0.000000e+00, %.lr.ph.us.us.preheader.new ], [ %i.dd, %.lr.ph.us.us ]
  %niter205 = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %niter205.next.7, %.lr.ph.us.us ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fadd float %.049102.us.us, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = fadd float %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = fadd float %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = fadd float %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = fadd float %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cv = fadd float %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12
  %i.cz = fadd float %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fadd float %i.cz, %i.dc                 ; 3 uses
  %i.de = add nuw i64 %.048103.us.us, 8           ; 2 uses
  %niter205.next.7 = add i64 %niter205, 8         ; 2 uses
  %niter205.ncmp.7 = icmp eq i64 %niter205.next.7, %unroll_iter204
  br i1 %niter205.ncmp.7, label %._crit_edge107.loopexit185.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !44

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.048103.us = phi i64 [ %i.ea, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.049102.us = phi float [ %i.dz, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph.us.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i69.preheader.us
end_hunk_0
