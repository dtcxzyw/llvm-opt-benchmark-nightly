Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/do_fit?download=true
inline.NumInlined: 93
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_Z6rmsdeviPfPA3_fS1_:bb.a
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv90.i
  %i.d = load float, ptr %i.c, align 4, !tbaa !11 ; 4 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv90.i ; 2 uses
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv90.i ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !11
  %i.h = load float, ptr %i.f, align 4, !tbaa !11
  %i.i = fsub float %i.g, %i.h                    ; 2 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.d, float %i.j, float %.054.us60.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !11
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !11
  %i.p = fsub <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p              ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.r, float %i.k)
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %i.d, float %i.t, float %i.s)
  %i.v = fadd float %.03952.us61.i, %i.d
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next91.i
  %i.x = load float, ptr %i.w, align 4, !tbaa !11 ; 4 uses
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv.next91.i ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next91.i ; 2 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !11
  %i.ab = load float, ptr %i.z, align 4, !tbaa !11
  %i.ac = fsub float %i.aa, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ad, float %i.u)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !11
  %i.ai = load <2 x float>, ptr %i.ag, align 4, !tbaa !11
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj           ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.x, float %i.al, float %i.ae)
  %i.an = extractelement <2 x float> %i.ak, i64 1
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.x, float %i.an, float %i.am) ; 3 uses
  %i.ap = fadd float %i.v, %i.x                   ; 3 uses
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, label %.split.us.i, !llvm.loop !0

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa: ; preds = %.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, label %.split.us.i.epil.preheader

.split.us.i.epil.preheader:                       ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv90.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next91.i.1, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.054.us60.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ao, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ]
  %.03952.us61.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ap, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv90.i.epil.init
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11 ; 4 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv90.i.epil.init ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv90.i.epil.init ; 2 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !11
  %i.av = load float, ptr %i.at, align 4, !tbaa !11
  %i.aw = fsub float %i.au, %i.av                 ; 2 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ax, float %.054.us60.i.epil.init)
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !11
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !11
  %i.bd = fsub <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = fmul <2 x float> %i.bd, %i.bd           ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bf, float %i.ay)
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bh, float %i.bg)
  %i.bj = fadd float %.03952.us61.i.epil.init, %i.ar
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit: ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, %.split.us.i.epil.preheader
  %.lcssa7 = phi float [ %i.ao, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ], [ %i.bi, %.split.us.i.epil.preheader ]
  %.lcssa = phi float [ %i.ap, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ], [ %i.bj, %.split.us.i.epil.preheader ]
  %i.bk = fdiv float %.lcssa7, %.lcssa
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit:        ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, %bb.a
  %i.bl = phi float [ +qnan, %bb.a ], [ %i.bk, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit ]
  %i.bm = tail call noundef float @sqrtf(float noundef %i.bl) #16
  ret float %i.bm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z10rhodev_indiPiPfPA3_fS2_(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_Z16calc_similar_indbiPKiPKfPA3_fS4_(i1 noundef zeroext true, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z6rhodeviPfPA3_fS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count111.i = zext nneg i32 %0 to i64
  br label %.split.us.us.us.i

.split.us.us.us.i:                                ; preds = %.split.us.us.us.i, %.lr.ph.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %.split.us.us.us.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %.054.us.us.i = phi float [ %i.ad, %.split.us.us.us.i ], [ 0.000000e+00, %.lr.ph.i ]
  %.03753.us.us.i = phi float [ %i.ag, %.split.us.us.us.i ], [ 0.000000e+00, %.lr.ph.i ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv108.i
  %i.c = load float, ptr %i.b, align 4, !tbaa !11 ; 6 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv108.i ; 3 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv108.i ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !11 ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !11 ; 2 uses
  %i.h = fsub float %i.f, %i.g                    ; 2 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float %i.i, float %.054.us.us.i)
  %i.k = fadd float %i.f, %i.g                    ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.c, float %i.l, float %.03753.us.us.i)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 2 uses
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.c, float %i.s, float %i.j)
  %i.u = fadd float %i.o, %i.q                    ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.c, float %i.v, float %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !11 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.c, float %i.ac, float %i.t) ; 2 uses
  %i.ae = fadd float %i.y, %i.aa                  ; 2 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.c, float %i.af, float %i.w) ; 2 uses
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count111.i
  br i1 %exitcond112.not.i, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, label %.split.us.us.us.i, !llvm.loop !0

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit: ; preds = %.split.us.us.us.i
  %i.ah = fdiv float %i.ad, %i.ag
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit:        ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, %bb.a
  %i.ai = phi float [ +qnan, %bb.a ], [ %i.ah, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit ]
  %i.aj = tail call noundef float @sqrtf(float noundef %i.ai) #16
  %i.ak = fmul float %i.aj, 2.000000e+00
  ret float %i.ak
}

; Function Attrs: mustprogress uwtable
define void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [6 x double], align 16            ; 16 uses
  %i.c = alloca [3 x [3 x float]], align 16       ; 15 uses
  %i.d = alloca [3 x [3 x float]], align 16       ; 15 uses
  %i.e = alloca [3 x [3 x float]], align 16       ; 8 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.f = add i32 %0, -4
  %or.cond = icmp ult i32 %i.f, -2
  %.sink322.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink322.sroa.gep407 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br i1 %or.cond, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %0) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.g

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = shl nuw nsw i32 %0, 1                    ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 9 uses
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 131, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 25 uses
  %i.k = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 132, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 15 uses
  br label %.lr.ph

.lr.ph179.preheader:                              ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %i.i, 3                  ; 12 uses
  store double 0.000000e+00, ptr %i.b, align 16, !tbaa !47
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double 0.000000e+00, ptr %i.t, align 16, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.l, i1 false), !tbaa !47
  %exitcond232.not.3 = icmp eq i32 %0, 2
  br i1 %exitcond232.not.3, label %._crit_edge, label %.lr.ph179.4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 135, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 136, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %.lr.ph179.preheader, label %.lr.ph, !llvm.loop !29

.lr.ph179.4:                                      ; preds = %.lr.ph179.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 0.000000e+00, ptr %i.ah, align 16, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.l, i1 false), !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.l, i1 false), !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.l, i1 false), !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph179.4, %.lr.ph179.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph188.split.us.preheader, label %.preheader172.preheader

.lr.ph188.split.us.preheader:                     ; preds = %._crit_edge
  %wide.trip.count246 = zext nneg i32 %1 to i64
  %wide.trip.count241 = zext nneg i32 %0 to i64   ; 2 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count241, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.as = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 9 uses
  %xtraiter = and i64 %wide.trip.count241, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod380 = trunc i32 %0 to i1
  br label %.lr.ph188.split.us

.lr.ph188.split.us:                               ; preds = %.lr.ph188.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv243 = phi i64 [ 0, %.lr.ph188.split.us.preheader ], [ %indvars.iv.next244, %..loopexit_crit_edge.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv243
  %i.au = load float, ptr %i.at, align 4, !tbaa !11 ; 2 uses
  %i.av = fpext float %i.au to double             ; 3 uses
  %i.aw = fcmp une float %i.au, 0.000000e+00
  br i1 %i.aw, label %.preheader174.us, label %..loopexit_crit_edge.us

.lr.ph182.us:                                     ; preds = %.lr.ph182.us, %.preheader174.us
  %indvars.iv238 = phi i64 [ 0, %.preheader174.us ], [ %indvars.iv.next239.1, %.lr.ph182.us ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader174.us ], [ %niter.next.1, %.lr.ph182.us ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv238
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11
  %i.az = fpext float %i.ay to double
  %broadcast.splatinsert324 = insertelement <4 x double> poison, double %i.az, i64 0
  %broadcast.splat325 = shufflevector <4 x double> %broadcast.splatinsert324, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv238 ; 2 uses
  %wide.masked.load328 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.ba, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bb = fpext <4 x float> %wide.masked.load328 to <4 x double>
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %broadcast.splat325, <4 x double> %i.bb)
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 8 %i.ba, <4 x i1> %i.as), !tbaa !11
  %indvars.iv.next239 = or disjoint i64 %indvars.iv238, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next239
  %i.bf = load float, ptr %i.be, align 4, !tbaa !11
  %i.bg = fpext float %i.bf to double
  %broadcast.splatinsert324.1 = insertelement <4 x double> poison, double %i.bg, i64 0
  %broadcast.splat325.1 = shufflevector <4 x double> %broadcast.splatinsert324.1, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next239 ; 2 uses
  %wide.masked.load328.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bh, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bi = fpext <4 x float> %wide.masked.load328.1 to <4 x double>
  %i.bj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bz, <4 x double> %broadcast.splat325.1, <4 x double> %i.bi)
  %i.bk = fptrunc <4 x double> %i.bj to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bk, ptr align 4 %i.bh, <4 x i1> %i.as), !tbaa !11
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph182.us, !llvm.loop !30

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %.lr.ph182.us
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.lr.ph182.us.epil.preheader

.lr.ph182.us.epil.preheader:                      ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod380)
  %broadcast.splatinsert326.epil = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat327.epil = shufflevector <4 x double> %broadcast.splatinsert326.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next239.1
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fpext float %i.bm to double
  %broadcast.splatinsert324.epil = insertelement <4 x double> poison, double %i.bn, i64 0
  %broadcast.splat325.epil = shufflevector <4 x double> %broadcast.splatinsert324.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next239.1 ; 2 uses
  %wide.masked.load.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bp = fpext <4 x float> %wide.masked.load.epil to <4 x double>
  %i.bq = fmul <4 x double> %broadcast.splat327.epil, %i.bp
  %wide.masked.load328.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bo, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.br = fpext <4 x float> %wide.masked.load328.epil to <4 x double>
  %i.bs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bq, <4 x double> %broadcast.splat325.epil, <4 x double> %i.br)
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bt, ptr align 4 %i.bo, <4 x i1> %i.as), !tbaa !11
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.lr.ph182.us.epil.preheader, %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.lr.ph188.split.us
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader172.preheader, label %.lr.ph188.split.us, !llvm.loop !31

.preheader174.us:                                 ; preds = %.lr.ph188.split.us
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv243 ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv243 ; 3 uses
  %broadcast.splatinsert326.1 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat327.1 = shufflevector <4 x double> %broadcast.splatinsert326.1, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat327 = shufflevector <4 x double> %broadcast.splatinsert326, <4 x double> poison, <4 x i32> zeroinitializer
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.bw = fpext <4 x float> %wide.masked.load to <4 x double>
  %i.bx = fmul <4 x double> %broadcast.splat327, %i.bw
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !11
  %i.by = fpext <4 x float> %wide.masked.load.1 to <4 x double>
  %i.bz = fmul <4 x double> %broadcast.splat327.1, %i.by
  br label %.lr.ph182.us

.preheader172.preheader:                          ; preds = %..loopexit_crit_edge.us, %._crit_edge
  %i.ca = zext nneg i32 %0 to i64                 ; 6 uses
  %i.cb = zext nneg i32 %0 to i64
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.preheader, %.split.us
  %indvars.iv262 = phi i64 [ 0, %.preheader172.preheader ], [ %indvars.iv.next263, %.split.us ] ; 20 uses
  %indvars.iv260 = phi i64 [ 1, %.preheader172.preheader ], [ %indvars.iv.next261, %.split.us ] ; 5 uses
  %i.cc = trunc nuw i64 %indvars.iv262 to i32
  %.not150.not = icmp sgt i32 %0, %i.cc
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv262 ; 3 uses
  %i.ce = sub nuw nsw i64 %indvars.iv262, %i.cb
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.ce ; 5 uses
  br i1 %.not150.not, label %.preheader172.split.us, label %.preheader172.split.preheader

.preheader172.split.preheader:                    ; preds = %.preheader172
  %xtraiter381 = and i64 %indvars.iv260, 3        ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv262, 3
  br i1 %i.cg, label %.preheader172.split.epil.preheader, label %.preheader172.split.preheader.new

.preheader172.split.preheader.new:                ; preds = %.preheader172.split.preheader
  %unroll_iter384 = and i64 %indvars.iv260, -4
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !49 ; 4 uses
  br label %.preheader172.split

.preheader172.split.us:                           ; preds = %.preheader172
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !49 ; 9 uses
  %xtraiter386 = and i64 %indvars.iv260, 7        ; 3 uses
  %i.cj = icmp samesign ult i64 %indvars.iv262, 7
  br i1 %i.cj, label %.epil.preheader, label %.preheader172.split.us.new

.preheader172.split.us.new:                       ; preds = %.preheader172.split.us
  %unroll_iter390 = and i64 %indvars.iv260, -8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader172.split.us.new
  %indvars.iv255 = phi i64 [ 0, %.preheader172.split.us.new ], [ %indvars.iv.next256.7, %bb.e ] ; 10 uses
  %niter391 = phi i64 [ 0, %.preheader172.split.us.new ], [ %niter391.next.7, %bb.e ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv255
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv255
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !47
  %indvars.iv.next256 = or disjoint i64 %indvars.iv255, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !47
  %indvars.iv.next256.1 = or disjoint i64 %indvars.iv255, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256.1
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !47
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.1
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !47
  %indvars.iv.next256.2 = or disjoint i64 %indvars.iv255, 3 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256.2
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.2
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !49
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.cz, align 8, !tbaa !47
  %indvars.iv.next256.3 = or disjoint i64 %indvars.iv255, 4 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256.3
  store double 0.000000e+00, ptr %i.da, align 8, !tbaa !47
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.3
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !49
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dd, align 8, !tbaa !47
  %indvars.iv.next256.4 = or disjoint i64 %indvars.iv255, 5 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256.4
  store double 0.000000e+00, ptr %i.de, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.4
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dh, align 8, !tbaa !47
  %indvars.iv.next256.5 = or disjoint i64 %indvars.iv255, 6 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256.5
  store double 0.000000e+00, ptr %i.di, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.5
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dl, align 8, !tbaa !47
  %indvars.iv.next256.6 = or disjoint i64 %indvars.iv255, 7 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next256.6
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next256.6
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !49
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.dp, align 8, !tbaa !47
  %indvars.iv.next256.7 = add nuw nsw i64 %indvars.iv255, 8 ; 2 uses
  %niter391.next.7 = add i64 %niter391, 8         ; 2 uses
  %niter391.ncmp.7 = icmp eq i64 %niter391.next.7, %unroll_iter390
  br i1 %niter391.ncmp.7, label %.split.us.loopexit.unr-lcssa, label %bb.e, !llvm.loop !32

.preheader172.split:                              ; preds = %bb.j, %.preheader172.split.preheader.new
  %indvars.iv248 = phi i64 [ 0, %.preheader172.split.preheader.new ], [ %indvars.iv.next249.3, %bb.j ] ; 8 uses
  %niter385 = phi i64 [ 0, %.preheader172.split.preheader.new ], [ %niter385.next.3, %bb.j ]
  %i.dq = icmp samesign ult i64 %indvars.iv248, %i.ca
  br i1 %i.dq, label %bb.f, label %.preheader172.split.1

bb.f:                                             ; preds = %.preheader172.split
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv248
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !11
  %i.dt = fpext float %i.ds to double
  br label %.preheader172.split.1

.preheader172.split.1:                            ; preds = %.preheader172.split, %bb.f
  %.sink317 = phi double [ %i.dt, %bb.f ], [ 0.000000e+00, %.preheader172.split ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv248
  store double %.sink317, ptr %i.du, align 8, !tbaa !47
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv248
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv262
  store double %.sink317, ptr %i.dx, align 8, !tbaa !47
  %indvars.iv.next249 = or disjoint i64 %indvars.iv248, 1 ; 4 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next249, %i.ca
  br i1 %i.dy, label %bb.g, label %.preheader172.split.2

bb.g:                                             ; preds = %.preheader172.split.1
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next249
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !11
  %i.eb = fpext float %i.ea to double
  br label %.preheader172.split.2

.preheader172.split.2:                            ; preds = %bb.g, %.preheader172.split.1
  %.sink317.1 = phi double [ %i.eb, %bb.g ], [ 0.000000e+00, %.preheader172.split.1 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next249
  store double %.sink317.1, ptr %i.ec, align 8, !tbaa !47
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next249
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !49
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv262
  store double %.sink317.1, ptr %i.ef, align 8, !tbaa !47
  %indvars.iv.next249.1 = or disjoint i64 %indvars.iv248, 2 ; 4 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next249.1, %i.ca
  br i1 %i.eg, label %bb.h, label %.preheader172.split.3

bb.h:                                             ; preds = %.preheader172.split.2
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next249.1
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !11
  %i.ej = fpext float %i.ei to double
  br label %.preheader172.split.3

.preheader172.split.3:                            ; preds = %bb.h, %.preheader172.split.2
  %.sink317.2 = phi double [ %i.ej, %bb.h ], [ 0.000000e+00, %.preheader172.split.2 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next249.1
  store double %.sink317.2, ptr %i.ek, align 8, !tbaa !47
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next249.1
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !49
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv262
  store double %.sink317.2, ptr %i.en, align 8, !tbaa !47
  %indvars.iv.next249.2 = or disjoint i64 %indvars.iv248, 3 ; 4 uses
  %i.eo = icmp samesign ult i64 %indvars.iv.next249.2, %i.ca
  br i1 %i.eo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader172.split.3
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next249.2
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !11
  %i.er = fpext float %i.eq to double
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader172.split.3
  %.sink317.3 = phi double [ %i.er, %bb.i ], [ 0.000000e+00, %.preheader172.split.3 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next249.2
  store double %.sink317.3, ptr %i.es, align 8, !tbaa !47
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next249.2
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !49
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv262
  store double %.sink317.3, ptr %i.ev, align 8, !tbaa !47
  %indvars.iv.next249.3 = add nuw nsw i64 %indvars.iv248, 4 ; 2 uses
  %niter385.next.3 = add i64 %niter385, 4         ; 2 uses
  %niter385.ncmp.3 = icmp eq i64 %niter385.next.3, %unroll_iter384
  br i1 %niter385.ncmp.3, label %.split.us.loopexit379.unr-lcssa, label %.preheader172.split, !llvm.loop !32

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod388.not, label %.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.us.loopexit.unr-lcssa, %.preheader172.split.us
  %indvars.iv255.epil.init = phi i64 [ 0, %.preheader172.split.us ], [ %indvars.iv.next256.7, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod389 = icmp ne i64 %xtraiter386, 0
  tail call void @llvm.assume(i1 %lcmp.mod389)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv255.epil = phi i64 [ %indvars.iv.next256.epil, %bb.k ], [ %indvars.iv255.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter387 = phi i64 [ %epil.iter387.next, %bb.k ], [ 0, %.epil.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv255.epil
  store double 0.000000e+00, ptr %i.ew, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv255.epil
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv262
  store double 0.000000e+00, ptr %i.ez, align 8, !tbaa !47
  %indvars.iv.next256.epil = add nuw nsw i64 %indvars.iv255.epil, 1
  %epil.iter387.next = add i64 %epil.iter387, 1   ; 2 uses
  %epil.iter387.cmp.not = icmp eq i64 %epil.iter387.next, %xtraiter386
  br i1 %epil.iter387.cmp.not, label %.split.us, label %bb.k, !llvm.loop !33

.split.us.loopexit379.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.split.us, label %.preheader172.split.epil.preheader

.preheader172.split.epil.preheader:               ; preds = %.split.us.loopexit379.unr-lcssa, %.preheader172.split.preheader
  %indvars.iv248.epil.init = phi i64 [ 0, %.preheader172.split.preheader ], [ %indvars.iv.next249.3, %.split.us.loopexit379.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter381, 0
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %i.fa = load ptr, ptr %i.cd, align 8, !tbaa !49
  br label %.preheader172.split.epil

.preheader172.split.epil:                         ; preds = %bb.m, %.preheader172.split.epil.preheader
  %indvars.iv248.epil = phi i64 [ %indvars.iv.next249.epil, %bb.m ], [ %indvars.iv248.epil.init, %.preheader172.split.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.m ], [ 0, %.preheader172.split.epil.preheader ]
  %i.fb = icmp samesign ult i64 %indvars.iv248.epil, %i.ca
  br i1 %i.fb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader172.split.epil
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv248.epil
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !11
  %i.fe = fpext float %i.fd to double
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader172.split.epil
  %.sink317.epil = phi double [ %i.fe, %bb.l ], [ 0.000000e+00, %.preheader172.split.epil ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv248.epil
  store double %.sink317.epil, ptr %i.ff, align 8, !tbaa !47
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv248.epil
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !49
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv262
  store double %.sink317.epil, ptr %i.fi, align 8, !tbaa !47
  %indvars.iv.next249.epil = add nuw nsw i64 %indvars.iv248.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter381
  br i1 %epil.iter.cmp.not, label %.split.us, label %.preheader172.split.epil, !llvm.loop !34

.split.us:                                        ; preds = %.split.us.loopexit379.unr-lcssa, %bb.m, %.split.us.loopexit.unr-lcssa, %bb.k
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %indvars.iv.next261 = add nuw i64 %indvars.iv260, 1
  %exitcond269.not = icmp eq i64 %indvars.iv.next263, %i.i
  br i1 %exitcond269.not, label %._crit_edge191, label %.preheader172, !llvm.loop !35

._crit_edge191:                                   ; preds = %.split.us
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.j, i32 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a)
  %i.fj = load ptr, ptr @debug, align 8, !tbaa !51 ; 2 uses
  %i.fk = icmp ne ptr %i.fj, null
  %i.fl = load i32, ptr %i.a, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  %or.cond3 = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge191
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr nonnull %i.fj) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge191
  %i.fn = icmp sgt i32 %0, 1
  br i1 %i.fn, label %.preheader171.lr.ph, label %._crit_edge203

.preheader171.lr.ph:                              ; preds = %bb.o
  %i.fo = add nsw i32 %0, -1
  %i.fp = zext nneg i32 %0 to i64
  %wide.trip.count283 = zext nneg i32 %i.fo to i64
  %invariant.gep312 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fp ; 4 uses
  %xtraiter392 = and i64 %i.i, 2                  ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter392, 0
  %lcmp.mod396 = icmp ne i64 %xtraiter392, 0
  %min.iters.check = icmp ult i32 %0, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %gep313.1 = getelementptr inbounds nuw i8, ptr %invariant.gep312, i64 8
  %exitcond279.not.1 = icmp eq i32 %0, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %gep313.2 = getelementptr inbounds nuw i8, ptr %invariant.gep312, i64 16
  br label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %._crit_edge200, %.preheader171.lr.ph
  %indvars.iv280 = phi i64 [ 0, %.preheader171.lr.ph ], [ %indvars.iv.next281, %._crit_edge200 ] ; 3 uses
  %.0132202 = phi i32 [ 0, %.preheader171.lr.ph ], [ %spec.select.lcssa, %._crit_edge200 ]
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195, %.lr.ph195.preheader
  %indvars.iv270 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next271.3, %.lr.ph195 ] ; 6 uses
  %.0130194 = phi float [ -1.000000e+03, %.lr.ph195.preheader ], [ %spec.select152.3, %.lr.ph195 ] ; 2 uses
  %.1133193 = phi i32 [ %.0132202, %.lr.ph195.preheader ], [ %spec.select.3, %.lr.ph195 ]
  %niter398 = phi i64 [ 0, %.lr.ph195.preheader ], [ %niter398.next.3, %.lr.ph195 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv270
  %i.ft = load double, ptr %i.fs, align 16, !tbaa !47 ; 2 uses
  %i.fu = fpext float %.0130194 to double
  %i.fv = fcmp ogt double %i.ft, %i.fu            ; 2 uses
  %i.fw = fptrunc double %i.ft to float
  %i.fx = trunc nuw nsw i64 %indvars.iv270 to i32
  %spec.select = select i1 %i.fv, i32 %i.fx, i32 %.1133193
  %spec.select152 = select i1 %i.fv, float %i.fw, float %.0130194 ; 2 uses
  %indvars.iv.next271 = or disjoint i64 %indvars.iv270, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next271
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !47 ; 2 uses
  %i.ga = fpext float %spec.select152 to double
  %i.gb = fcmp ogt double %i.fz, %i.ga            ; 2 uses
  %i.gc = fptrunc double %i.fz to float
  %i.gd = trunc nuw nsw i64 %indvars.iv.next271 to i32
  %spec.select.1 = select i1 %i.gb, i32 %i.gd, i32 %spec.select
  %spec.select152.1 = select i1 %i.gb, float %i.gc, float %spec.select152 ; 2 uses
  %indvars.iv.next271.1 = or disjoint i64 %indvars.iv270, 2 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next271.1
  %i.gf = load double, ptr %i.ge, align 16, !tbaa !47 ; 2 uses
  %i.gg = fpext float %spec.select152.1 to double
  %i.gh = fcmp ogt double %i.gf, %i.gg            ; 2 uses
  %i.gi = fptrunc double %i.gf to float
  %i.gj = trunc nuw nsw i64 %indvars.iv.next271.1 to i32
  %spec.select.2 = select i1 %i.gh, i32 %i.gj, i32 %spec.select.1
  %spec.select152.2 = select i1 %i.gh, float %i.gi, float %spec.select152.1 ; 2 uses
  %indvars.iv.next271.2 = or disjoint i64 %indvars.iv270, 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next271.2
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !47 ; 2 uses
  %i.gm = fpext float %spec.select152.2 to double
  %i.gn = fcmp ogt double %i.gl, %i.gm            ; 2 uses
  %i.go = fptrunc double %i.gl to float
  %i.gp = trunc nuw nsw i64 %indvars.iv.next271.2 to i32
  %spec.select.3 = select i1 %i.gn, i32 %i.gp, i32 %spec.select.2 ; 3 uses
  %spec.select152.3 = select i1 %i.gn, float %i.go, float %spec.select152.2 ; 2 uses
  %indvars.iv.next271.3 = add nuw nsw i64 %indvars.iv270, 4 ; 2 uses
  %niter398.next.3 = add i64 %niter398, 4
  %niter398.ncmp.3 = icmp eq i64 %niter398, 0
  br i1 %niter398.ncmp.3, label %.lr.ph199.unr-lcssa, label %.lr.ph195, !llvm.loop !36

.lr.ph199.unr-lcssa:                              ; preds = %.lr.ph195
  br i1 %lcmp.mod394.not, label %.lr.ph199, label %.lr.ph195.epil.preheader

.lr.ph195.epil.preheader:                         ; preds = %.lr.ph199.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph195.epil

.lr.ph195.epil:                                   ; preds = %.lr.ph195.epil, %.lr.ph195.epil.preheader
  %indvars.iv270.epil = phi i64 [ %indvars.iv.next271.3, %.lr.ph195.epil.preheader ], [ %indvars.iv.next271.epil, %.lr.ph195.epil ] ; 3 uses
  %.0130194.epil = phi float [ %spec.select152.3, %.lr.ph195.epil.preheader ], [ %spec.select152.epil, %.lr.ph195.epil ] ; 2 uses
  %.1133193.epil = phi i32 [ %spec.select.3, %.lr.ph195.epil.preheader ], [ %spec.select.epil, %.lr.ph195.epil ]
  %epil.iter393 = phi i64 [ 0, %.lr.ph195.epil.preheader ], [ %epil.iter393.next, %.lr.ph195.epil ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv270.epil
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !47 ; 2 uses
  %i.gs = fpext float %.0130194.epil to double
  %i.gt = fcmp ogt double %i.gr, %i.gs            ; 2 uses
  %i.gu = fptrunc double %i.gr to float
  %i.gv = trunc nuw nsw i64 %indvars.iv270.epil to i32
  %spec.select.epil = select i1 %i.gt, i32 %i.gv, i32 %.1133193.epil ; 2 uses
  %spec.select152.epil = select i1 %i.gt, float %i.gu, float %.0130194.epil
  %indvars.iv.next271.epil = add nuw nsw i64 %indvars.iv270.epil, 1
  %epil.iter393.next = add i64 %epil.iter393, 1   ; 2 uses
  %epil.iter393.cmp.not = icmp eq i64 %epil.iter393.next, 2
  br i1 %epil.iter393.cmp.not, label %.lr.ph199, label %.lr.ph195.epil, !llvm.loop !37

.lr.ph199:                                        ; preds = %.lr.ph195.epil, %.lr.ph199.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %.lr.ph199.unr-lcssa ], [ %spec.select.epil, %.lr.ph195.epil ] ; 2 uses
  %i.gw = zext nneg i32 %spec.select.lcssa to i64 ; 9 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gw
  store double -1.000000e+04, ptr %i.gx, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv280 ; 4 uses
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv280 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.body331

vector.body331:                                   ; preds = %.lr.ph199, %vector.body331
  %index332 = phi i64 [ %index.next336, %vector.body331 ], [ 0, %.lr.ph199 ] ; 5 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index332
  %wide.load = load <4 x ptr>, ptr %i.ha, align 8, !tbaa !49
  %wide.gep = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.load, i64 %i.gw
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47
  %i.hb = fmul <4 x double> %wide.masked.gather, splat (double f0x3FF6A09E667F3BCD)
  %i.hc = fptrunc <4 x double> %i.hb to <4 x float>
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index332
  store <4 x float> %i.hc, ptr %i.hd, align 4, !tbaa !11
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %index332
  %wide.load333 = load <4 x ptr>, ptr %i.he, align 8, !tbaa !49
  %wide.gep334 = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.load333, i64 %i.gw
  %wide.masked.gather335 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep334, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !47
  %i.hf = fmul <4 x double> %wide.masked.gather335, splat (double f0x3FF6A09E667F3BCD)
  %i.hg = fptrunc <4 x double> %i.hf to <4 x float>
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %index332
  store <4 x float> %i.hg, ptr %i.hh, align 4, !tbaa !11
  %index.next336 = add nuw i64 %index332, 4
  br label %vector.body331, !llvm.loop !38

scalar.ph:                                        ; preds = %.lr.ph199
  %i.hi = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.gw
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !47
  %i.hl = fmul double %i.hk, f0x3FF6A09E667F3BCD
  %i.hm = fptrunc double %i.hl to float
  store float %i.hm, ptr %i.gy, align 4, !tbaa !11
  %i.hn = load ptr, ptr %invariant.gep312, align 8, !tbaa !49
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.gw
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !47
  %i.hq = fmul double %i.hp, f0x3FF6A09E667F3BCD
  %i.hr = fptrunc double %i.hq to float
  store float %i.hr, ptr %i.gz, align 4, !tbaa !11
  %i.hs = load ptr, ptr %i.fq, align 8, !tbaa !49
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.gw
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !47
  %i.hv = fmul double %i.hu, f0x3FF6A09E667F3BCD
  %i.hw = fptrunc double %i.hv to float
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.hw, ptr %i.hx, align 4, !tbaa !11
  %i.hy = load ptr, ptr %gep313.1, align 8, !tbaa !49
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.gw
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !47
  %i.ib = fmul double %i.ia, f0x3FF6A09E667F3BCD
  %i.ic = fptrunc double %i.ib to float
  %i.id = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store float %i.ic, ptr %i.id, align 4, !tbaa !11
  br i1 %exitcond279.not.1, label %._crit_edge200, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph
  %i.ie = load ptr, ptr %i.fr, align 8, !tbaa !49
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.gw
  %i.ig = load double, ptr %i.if, align 8, !tbaa !47
  %i.ih = fmul double %i.ig, f0x3FF6A09E667F3BCD
  %i.ii = fptrunc double %i.ih to float
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store float %i.ii, ptr %i.ij, align 4, !tbaa !11
  %i.ik = load ptr, ptr %gep313.2, align 8, !tbaa !49
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.gw
  %i.im = load double, ptr %i.il, align 8, !tbaa !47
  %i.in = fmul double %i.im, f0x3FF6A09E667F3BCD
  %i.io = fptrunc double %i.in to float
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store float %i.io, ptr %i.ip, align 4, !tbaa !11
  br label %._crit_edge200

._crit_edge200:                                   ; preds = %scalar.ph.2, %scalar.ph
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge203, label %.lr.ph195.preheader, !llvm.loop !39

._crit_edge203:                                   ; preds = %._crit_edge200, %bb.o
  switch i32 %0, label %bb.r [
    i32 3, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %._crit_edge203
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.iu = load float, ptr %i.iq, align 4, !tbaa !11 ; 2 uses
  %i.iv = load float, ptr %i.c, align 16, !tbaa !11 ; 2 uses
  %i.iw = load <2 x float>, ptr %i.is, align 4, !tbaa !11 ; 3 uses
  %i.ix = load <2 x float>, ptr %i.it, align 16, !tbaa !11 ; 3 uses
  %i.iy = fneg <2 x float> %i.ix
  %i.iz = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ja = insertelement <2 x float> %i.iz, float %i.iv, i64 1
  %i.jb = fmul <2 x float> %i.ja, %i.iy
  %i.jc = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jd = insertelement <2 x float> %i.jc, float %i.iu, i64 1
  %i.je = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.jd, <2 x float> %i.jb)
  store <2 x float> %i.je, ptr %i.ir, align 8, !tbaa !11
  %i.jf = fneg float %i.iu
  %i.jg = extractelement <2 x float> %i.iw, i64 0
  %i.jh = fmul float %i.jg, %i.jf
  %i.ji = extractelement <2 x float> %i.ix, i64 0
  %i.jj = call float @llvm.fmuladd.f32(float %i.iv, float %i.ji, float %i.jh)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float %i.jj, ptr %i.jk, align 16, !tbaa !11
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.jp = load float, ptr %i.jl, align 4, !tbaa !11 ; 2 uses
  %i.jq = load float, ptr %i.d, align 16, !tbaa !11 ; 2 uses
  %i.jr = load <2 x float>, ptr %i.jn, align 4, !tbaa !11 ; 3 uses
  %i.js = load <2 x float>, ptr %i.jo, align 16, !tbaa !11 ; 3 uses
  %i.jt = fneg <2 x float> %i.js
  %i.ju = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jv = insertelement <2 x float> %i.ju, float %i.jq, i64 1
  %i.jw = fmul <2 x float> %i.jv, %i.jt
  %i.jx = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jy = insertelement <2 x float> %i.jx, float %i.jp, i64 1
  %i.jz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.jy, <2 x float> %i.jw)
  store <2 x float> %i.jz, ptr %i.jm, align 8, !tbaa !11
  %i.ka = fneg float %i.jp
  %i.kb = extractelement <2 x float> %i.jr, i64 0
  %i.kc = fmul float %i.kb, %i.ka
  %i.kd = extractelement <2 x float> %i.js, i64 0
  %i.ke = call float @llvm.fmuladd.f32(float %i.jq, float %i.kd, float %i.kc)
  br label %.thread

bb.q:                                             ; preds = %._crit_edge203
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !11
  %i.kh = fneg float %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float %i.kh, ptr %i.ki, align 4, !tbaa !11
  %i.kj = load float, ptr %i.c, align 16, !tbaa !11
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float %i.kj, ptr %i.kk, align 16, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.km = load float, ptr %i.kl, align 4, !tbaa !11
  %i.kn = fneg float %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.kn, ptr %i.ko, align 4, !tbaa !11
  %i.kp = load float, ptr %i.d, align 16, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p
  %.sink322.sroa.phi = phi ptr [ %.sink322.sroa.gep, %bb.q ], [ %.sink322.sroa.gep407, %bb.p ]
  %.sink320 = phi float [ %i.kp, %bb.q ], [ %i.ke, %bb.p ]
  store float %.sink320, ptr %.sink322.sroa.phi, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  br label %.preheader170.preheader

bb.r:                                             ; preds = %._crit_edge203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  %i.kq = icmp sgt i32 %0, 0
  br i1 %i.kq, label %.preheader170.preheader, label %iter.check

.preheader170.preheader:                          ; preds = %.thread, %bb.r
  %wide.trip.count298 = zext nneg i32 %0 to i64   ; 2 uses
  %i.kr = add nsw i32 %0, -1
  %i.ks = icmp ult i32 %i.kr, 7
  %lcmp.mod402.not = icmp eq i32 %0, 0
  %lcmp.mod404 = icmp ne i32 %0, 0
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.preheader, %._crit_edge210
  %indvars.iv295 = phi i64 [ 0, %.preheader170.preheader ], [ %indvars.iv.next296, %._crit_edge210 ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv295 ; 9 uses
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv295
  br label %.preheader169

.preheader168:                                    ; preds = %._crit_edge210
  %i.ku = icmp slt i32 %0, 3
  br i1 %i.ku, label %iter.check, label %.lr.ph215.preheader

iter.check:                                       ; preds = %bb.r, %.preheader168
  %i.kv = zext nneg i32 %0 to i64
  br label %.lr.ph213

.preheader169:                                    ; preds = %.preheader170, %._crit_edge206
  %indvars.iv290 = phi i64 [ 0, %.preheader170 ], [ %indvars.iv.next291, %._crit_edge206 ] ; 3 uses
  %invariant.gep207 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv290 ; 9 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv290 ; 2 uses
  %.promoted = load float, ptr %i.kw, align 4, !tbaa !11 ; 2 uses
  br i1 %i.ks, label %.epil.preheader399, label %.preheader169.new

.preheader169.new:                                ; preds = %.preheader169, %.preheader169.new
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.7, %.preheader169.new ], [ 0, %.preheader169 ] ; 10 uses
  %i.kx = phi float [ %i.lv, %.preheader169.new ], [ %.promoted, %.preheader169 ]
  %niter406 = phi i64 [ %niter406.next.7, %.preheader169.new ], [ 0, %.preheader169 ]
  %gep = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv285
  %i.ky = load float, ptr %gep, align 4, !tbaa !11
  %gep208 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv285
  %i.kz = load float, ptr %gep208, align 4, !tbaa !11
  %i.la = call float @llvm.fmuladd.f32(float %i.ky, float %i.kz, float %i.kx)
  %indvars.iv.next286 = or disjoint i64 %indvars.iv285, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286
  %i.lb = load float, ptr %gep.1, align 4, !tbaa !11
  %gep208.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286
  %i.lc = load float, ptr %gep208.1, align 4, !tbaa !11
  %i.ld = call float @llvm.fmuladd.f32(float %i.lb, float %i.lc, float %i.la)
  %indvars.iv.next286.1 = or disjoint i64 %indvars.iv285, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286.1
  %i.le = load float, ptr %gep.2, align 4, !tbaa !11
  %gep208.2 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286.1
  %i.lf = load float, ptr %gep208.2, align 4, !tbaa !11
  %i.lg = call float @llvm.fmuladd.f32(float %i.le, float %i.lf, float %i.ld)
  %indvars.iv.next286.2 = or disjoint i64 %indvars.iv285, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286.2
  %i.lh = load float, ptr %gep.3, align 4, !tbaa !11
  %gep208.3 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286.2
  %i.li = load float, ptr %gep208.3, align 4, !tbaa !11
  %i.lj = call float @llvm.fmuladd.f32(float %i.lh, float %i.li, float %i.lg)
  %indvars.iv.next286.3 = or disjoint i64 %indvars.iv285, 4 ; 2 uses
  %gep.4 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286.3
  %i.lk = load float, ptr %gep.4, align 4, !tbaa !11
  %gep208.4 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286.3
  %i.ll = load float, ptr %gep208.4, align 4, !tbaa !11
  %i.lm = call float @llvm.fmuladd.f32(float %i.lk, float %i.ll, float %i.lj)
  %indvars.iv.next286.4 = or disjoint i64 %indvars.iv285, 5 ; 2 uses
  %gep.5 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286.4
  %i.ln = load float, ptr %gep.5, align 4, !tbaa !11
  %gep208.5 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286.4
  %i.lo = load float, ptr %gep208.5, align 4, !tbaa !11
  %i.lp = call float @llvm.fmuladd.f32(float %i.ln, float %i.lo, float %i.lm)
  %indvars.iv.next286.5 = or disjoint i64 %indvars.iv285, 6 ; 2 uses
  %gep.6 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286.5
  %i.lq = load float, ptr %gep.6, align 4, !tbaa !11
  %gep208.6 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286.5
  %i.lr = load float, ptr %gep208.6, align 4, !tbaa !11
  %i.ls = call float @llvm.fmuladd.f32(float %i.lq, float %i.lr, float %i.lp)
  %indvars.iv.next286.6 = or disjoint i64 %indvars.iv285, 7 ; 2 uses
  %gep.7 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next286.6
  %i.lt = load float, ptr %gep.7, align 4, !tbaa !11
  %gep208.7 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv.next286.6
  %i.lu = load float, ptr %gep208.7, align 4, !tbaa !11
  %i.lv = call float @llvm.fmuladd.f32(float %i.lt, float %i.lu, float %i.ls) ; 3 uses
  %indvars.iv.next286.7 = add nuw nsw i64 %indvars.iv285, 8 ; 2 uses
  %niter406.next.7 = add i64 %niter406, 8         ; 2 uses
  %niter406.ncmp.7 = icmp eq i64 %niter406.next.7, 0
  br i1 %niter406.ncmp.7, label %._crit_edge206.unr-lcssa, label %.preheader169.new, !llvm.loop !40

._crit_edge206.unr-lcssa:                         ; preds = %.preheader169.new
  br i1 %lcmp.mod402.not, label %._crit_edge206, label %.epil.preheader399

.epil.preheader399:                               ; preds = %._crit_edge206.unr-lcssa, %.preheader169
  %indvars.iv285.epil.init = phi i64 [ 0, %.preheader169 ], [ %indvars.iv.next286.7, %._crit_edge206.unr-lcssa ]
  %.epil.init = phi float [ %.promoted, %.preheader169 ], [ %i.lv, %._crit_edge206.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod404)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader399
  %indvars.iv285.epil = phi i64 [ %indvars.iv285.epil.init, %.epil.preheader399 ], [ %indvars.iv.next286.epil, %bb.s ] ; 3 uses
  %i.lw = phi float [ %.epil.init, %.epil.preheader399 ], [ %i.lz, %bb.s ]
  %epil.iter401 = phi i64 [ 0, %.epil.preheader399 ], [ %epil.iter401.next, %bb.s ]
  %gep.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv285.epil
  %i.lx = load float, ptr %gep.epil, align 4, !tbaa !11
  %gep208.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep207, i64 %indvars.iv285.epil
  %i.ly = load float, ptr %gep208.epil, align 4, !tbaa !11
  %i.lz = call float @llvm.fmuladd.f32(float %i.lx, float %i.ly, float %i.lw) ; 2 uses
  %indvars.iv.next286.epil = add nuw nsw i64 %indvars.iv285.epil, 1
  %epil.iter401.next = add i64 %epil.iter401, 1   ; 2 uses
  %epil.iter401.cmp.not = icmp eq i64 %epil.iter401.next, %i.ca
  br i1 %epil.iter401.cmp.not, label %._crit_edge206, label %bb.s, !llvm.loop !41

._crit_edge206:                                   ; preds = %bb.s, %._crit_edge206.unr-lcssa
  %.lcssa = phi float [ %i.lv, %._crit_edge206.unr-lcssa ], [ %i.lz, %bb.s ]
  store float %.lcssa, ptr %i.kw, align 4, !tbaa !11
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count298
  br i1 %exitcond294.not, label %._crit_edge210, label %.preheader169, !llvm.loop !42

._crit_edge210:                                   ; preds = %._crit_edge206
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count298
  br i1 %exitcond299.not, label %.preheader168, label %.preheader170, !llvm.loop !43

.lr.ph213:                                        ; preds = %iter.check, %.lr.ph213
  %indvars.iv300 = phi i64 [ %i.kv, %iter.check ], [ %indvars.iv.next301, %.lr.ph213 ] ; 4 uses
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv300
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv300
  store float 1.000000e+00, ptr %i.mb, align 4, !tbaa !11
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1
  %i.mc = trunc nuw i64 %indvars.iv300 to i32
  %i.md = icmp slt i32 %i.mc, 2
  br i1 %i.md, label %.lr.ph213, label %.lr.ph215.preheader, !llvm.loop !44

.lr.ph215.preheader:                              ; preds = %.lr.ph213, %.preheader168
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %.lr.ph215 ], [ 0, %.lr.ph215.preheader ] ; 3 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv303
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !49
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 258, ptr noundef %i.mf)
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv303
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !49
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 259, ptr noundef %i.mh)
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next304, %i.i
  br i1 %exitcond308.not, label %._crit_edge216, label %.lr.ph215, !llvm.loop !45

._crit_edge216:                                   ; preds = %.lr.ph215
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull %i.j)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(60) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %1) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.b, ptr %i.a, align 8, !tbaa !22
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !24
  %i.f = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.f, ptr %i.c, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.h, ptr %i.g, align 1, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %0, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !25
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z6jacobiPPdiS_S0_Pi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z11do_fit_ndimiiPfPA3_KfPA3_f(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 16       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader29.preheader, label %._crit_edge

.preheader29.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %.pre = load float, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre44 = load float, ptr %.phi.trans.insert, align 4, !tbaa !11 ; 2 uses
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre46 = load float, ptr %.phi.trans.insert45, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre48 = load float, ptr %.phi.trans.insert47, align 4, !tbaa !11 ; 2 uses
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre51 = load float, ptr %.phi.trans.insert50, align 16, !tbaa !11 ; 2 uses
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre54 = load float, ptr %.phi.trans.insert53, align 4, !tbaa !11 ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre56 = load float, ptr %.phi.trans.insert55, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre59 = load float, ptr %.phi.trans.insert58, align 4, !tbaa !11 ; 2 uses
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre62 = load float, ptr %.phi.trans.insert61, align 16, !tbaa !11 ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader29.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.preheader29.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %.pre44, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %.pre46, i64 0
  %broadcast.splat66 = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %.pre48, i64 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> poison, <8 x i32> zeroinitializer
end_hunk_0
