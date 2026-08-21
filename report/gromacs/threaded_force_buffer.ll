Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/threaded_force_buffer?download=true
inline.NumInlined: 1153
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3gmx19ThreadedForceBufferINS_11BasicVectorIfEEE21reduceEnergiesAndDvdlEPNS_16EnumerationArrayI19InteractionFunctionfLS5_95EEEP17gmx_grppairener_tNS_8ArrayRefIfEERKNS_12StepWorkloadEi:bb.a
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !50
  %i.jv = fadd float %i.ju, %i.jn                 ; 2 uses
  store float %i.jv, ptr %i.ih, align 4, !tbaa !50
  %indvars.iv.next101.4.3 = add nsw i64 %indvars.iv100.4, 4 ; 2 uses
  %exitcond104.4.not.3 = icmp eq i64 %indvars.iv.next101.4.3, %wide.trip.count103
  br i1 %exitcond104.4.not.3, label %._crit_edge78.4, label %.preheader70.4.new, !llvm.loop !154

._crit_edge78.4:                                  ; preds = %.preheader70.4.new, %.prol.loopexit156
  %indvars.iv.next106.4 = add nuw nsw i64 %indvars.iv105.4, 1 ; 2 uses
  %exitcond109.4.not = icmp eq i64 %indvars.iv.next106.4, %wide.trip.count108
  br i1 %exitcond109.4.not, label %.thread64.split, label %.preheader70.4, !llvm.loop !155

._crit_edge78:                                    ; preds = %.preheader70.new, %.prol.loopexit126
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge81, label %.preheader70, !llvm.loop !155

.preheader70.new:                                 ; preds = %.prol.loopexit126, %.preheader70.new
  %indvars.iv100 = phi i64 [ %indvars.iv.next101.3136, %.preheader70.new ], [ %indvars.iv100.unr, %.prol.loopexit126 ] ; 5 uses
  %i.jw = phi float [ %i.lb, %.preheader70.new ], [ %.unr130, %.prol.loopexit126 ]
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !102
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 504
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !47
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv105
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !50
  %i.kd = fadd float %i.kc, %i.jw                 ; 2 uses
  store float %i.kd, ptr %i.ct, align 4, !tbaa !50
  %i.ke = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !102
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 504
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !47
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv105
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !50
  %i.kl = fadd float %i.kk, %i.kd                 ; 2 uses
  store float %i.kl, ptr %i.ct, align 4, !tbaa !50
  %i.km = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.kn = getelementptr i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !102
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 504
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !47
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv105
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !50
  %i.kt = fadd float %i.ks, %i.kl                 ; 2 uses
  store float %i.kt, ptr %i.ct, align 4, !tbaa !50
  %i.ku = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.kv = getelementptr i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !102
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 504
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !47
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv105
  %i.la = load float, ptr %i.kz, align 4, !tbaa !50
  %i.lb = fadd float %i.la, %i.kt                 ; 2 uses
  store float %i.lb, ptr %i.ct, align 4, !tbaa !50
  %indvars.iv.next101.3136 = add nsw i64 %indvars.iv100, 4 ; 2 uses
  %exitcond104.not.3 = icmp eq i64 %indvars.iv.next101.3136, %wide.trip.count103
  br i1 %exitcond104.not.3, label %._crit_edge78, label %.preheader70.new, !llvm.loop !154

.thread64.split:                                  ; preds = %._crit_edge78.4, %.loopexit74.split
  %.old66 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %.old67 = load i8, ptr %.old66, align 1, !tbaa !149, !range !131, !noundef !132
  %.old68 = trunc nuw i8 %.old67 to i1
  br i1 %.old68, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.b, %.thread64.split
  %i.lc = sext i32 %6 to i64                      ; 7 uses
  %sext124 = shl i64 %i.h, 32
  %i.ld = ashr exact i64 %sext124, 32             ; 7 uses
  %.promoted86 = load float, ptr %3, align 4, !tbaa !50
  br label %bb.k

._crit_edge85:                                    ; preds = %bb.k
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted86.1 = load float, ptr %i.le, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge85
  %indvars.iv114.1 = phi i64 [ %i.lc, %._crit_edge85 ], [ %indvars.iv.next115.1, %bb.e ] ; 2 uses
  %i.lf = phi float [ %.promoted86.1, %._crit_edge85 ], [ %i.lk, %bb.e ]
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.1
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !102
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 628
  %i.lj = load float, ptr %i.li, align 4, !tbaa !50
  %i.lk = fadd float %i.lj, %i.lf                 ; 2 uses
  store float %i.lk, ptr %i.le, align 4, !tbaa !50
  %indvars.iv.next115.1 = add nsw i64 %indvars.iv114.1, 1 ; 2 uses
  %i.ll = icmp slt i64 %indvars.iv.next115.1, %i.ld
  br i1 %i.ll, label %bb.e, label %._crit_edge85.1, !llvm.loop !159

._crit_edge85.1:                                  ; preds = %bb.e
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted86.2 = load float, ptr %i.lm, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge85.1
  %indvars.iv114.2 = phi i64 [ %i.lc, %._crit_edge85.1 ], [ %indvars.iv.next115.2, %bb.f ] ; 2 uses
  %i.ln = phi float [ %.promoted86.2, %._crit_edge85.1 ], [ %i.ls, %bb.f ]
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.2
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !102
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 632
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !50
  %i.ls = fadd float %i.lr, %i.ln                 ; 2 uses
  store float %i.ls, ptr %i.lm, align 4, !tbaa !50
  %indvars.iv.next115.2 = add nsw i64 %indvars.iv114.2, 1 ; 2 uses
  %i.lt = icmp slt i64 %indvars.iv.next115.2, %i.ld
  br i1 %i.lt, label %bb.f, label %._crit_edge85.2, !llvm.loop !159

._crit_edge85.2:                                  ; preds = %bb.f
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.promoted86.3 = load float, ptr %i.lu, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge85.2
  %indvars.iv114.3 = phi i64 [ %i.lc, %._crit_edge85.2 ], [ %indvars.iv.next115.3, %bb.g ] ; 2 uses
  %i.lv = phi float [ %.promoted86.3, %._crit_edge85.2 ], [ %i.ma, %bb.g ]
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.3
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !102
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 636
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !50
  %i.ma = fadd float %i.lz, %i.lv                 ; 2 uses
  store float %i.ma, ptr %i.lu, align 4, !tbaa !50
  %indvars.iv.next115.3 = add nsw i64 %indvars.iv114.3, 1 ; 2 uses
  %i.mb = icmp slt i64 %indvars.iv.next115.3, %i.ld
  br i1 %i.mb, label %bb.g, label %._crit_edge85.3, !llvm.loop !159

._crit_edge85.3:                                  ; preds = %bb.g
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted86.4 = load float, ptr %i.mc, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge85.3
  %indvars.iv114.4 = phi i64 [ %i.lc, %._crit_edge85.3 ], [ %indvars.iv.next115.4, %bb.h ] ; 2 uses
  %i.md = phi float [ %.promoted86.4, %._crit_edge85.3 ], [ %i.mi, %bb.h ]
  %i.me = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.4
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !102
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 640
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !50
  %i.mi = fadd float %i.mh, %i.md                 ; 2 uses
  store float %i.mi, ptr %i.mc, align 4, !tbaa !50
  %indvars.iv.next115.4 = add nsw i64 %indvars.iv114.4, 1 ; 2 uses
  %i.mj = icmp slt i64 %indvars.iv.next115.4, %i.ld
  br i1 %i.mj, label %bb.h, label %._crit_edge85.4, !llvm.loop !159

._crit_edge85.4:                                  ; preds = %bb.h
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.promoted86.5 = load float, ptr %i.mk, align 4, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge85.4
  %indvars.iv114.5 = phi i64 [ %i.lc, %._crit_edge85.4 ], [ %indvars.iv.next115.5, %bb.i ] ; 2 uses
  %i.ml = phi float [ %.promoted86.5, %._crit_edge85.4 ], [ %i.mq, %bb.i ]
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.5
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !102
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 644
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !50
  %i.mq = fadd float %i.mp, %i.ml                 ; 2 uses
  store float %i.mq, ptr %i.mk, align 4, !tbaa !50
  %indvars.iv.next115.5 = add nsw i64 %indvars.iv114.5, 1 ; 2 uses
  %i.mr = icmp slt i64 %indvars.iv.next115.5, %i.ld
  br i1 %i.mr, label %bb.i, label %._crit_edge85.5, !llvm.loop !159

._crit_edge85.5:                                  ; preds = %bb.i
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.promoted86.6 = load float, ptr %i.ms, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge85.5
  %indvars.iv114.6 = phi i64 [ %i.lc, %._crit_edge85.5 ], [ %indvars.iv.next115.6, %bb.j ] ; 2 uses
  %i.mt = phi float [ %.promoted86.6, %._crit_edge85.5 ], [ %i.my, %bb.j ]
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.6
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !102
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 648
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !50
  %i.my = fadd float %i.mx, %i.mt                 ; 2 uses
  store float %i.my, ptr %i.ms, align 4, !tbaa !50
  %indvars.iv.next115.6 = add nsw i64 %indvars.iv114.6, 1 ; 2 uses
  %i.mz = icmp slt i64 %indvars.iv.next115.6, %i.ld
  br i1 %i.mz, label %bb.j, label %.loopexit.split, !llvm.loop !159

bb.k:                                             ; preds = %.preheader.preheader, %bb.k
  %indvars.iv114 = phi i64 [ %i.lc, %.preheader.preheader ], [ %indvars.iv.next115, %bb.k ] ; 2 uses
  %i.na = phi float [ %.promoted86, %.preheader.preheader ], [ %i.nf, %bb.k ]
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !102
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 624
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !50
  %i.nf = fadd float %i.ne, %i.na                 ; 2 uses
  store float %i.nf, ptr %3, align 4, !tbaa !50
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ng = icmp slt i64 %indvars.iv.next115, %i.ld
  br i1 %i.ng, label %bb.k, label %._crit_edge85, !llvm.loop !159

.loopexit.split:                                  ; preds = %bb.j, %.thread64.split, %bb.c, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx12_GLOBAL__N_124reduceThreadForceBuffersINS_11BasicVectorIfEEEEvNS_8ArrayRefIS3_EENS4_ISt10unique_ptrINS_17ThreadForceBufferIT_EESt14default_deleteIS9_EEEENS4_IKSt5arrayImLm2EEEENS4_IKiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::array", align 16      ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [256 x ptr], align 16             ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = trunc i64 %i.k to i32
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.n, ptr %i.b, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !80
  %i.o = load i32, ptr %0, align 4, !tbaa !80     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.o, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.p = load i32, ptr %i.b, align 4, !tbaa !80
  %i.q = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.n) ; 3 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !80
  %i.r = load i32, ptr %i.a, align 4, !tbaa !80   ; 2 uses
  %.not70 = icmp sgt i32 %i.r, %i.q
  br i1 %.not70, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.s = load i32, ptr %3, align 4, !tbaa !80     ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = sext i32 %i.r to i64
  %i.v = add nsw i32 %i.q, 1
  %wide.trip.count = zext i32 %i.s to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.s, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i32 %i.s to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph73, %.loopexit
  %indvars.iv92 = phi i64 [ %i.u, %.lr.ph73 ], [ %indvars.iv.next93, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.x = load i64, ptr %2, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 2 uses
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load i64, ptr %4, align 8
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load <2 x i64>, ptr %i.ae, align 8      ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.04860.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod115)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x i64> %i.af, ptr %8, align 16
  %i.ag = lshr i64 %indvars.iv.epil.init, 6
  %i.ah = and i64 %i.ag, 67108863
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ah
  %i.ai = load i64, ptr %9, align 8, !tbaa !77
  %i.aj = and i64 %indvars.iv.epil.init, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ai, %i.ak
  %.not56.epil = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not56.epil, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.epil.preheader
  %i.am = load i64, ptr %5, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48, !noalias !162
  %i.ar = add nsw i32 %.04860.epil.init, 1
  %i.as = sext i32 %.04860.epil.init to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !84
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.d, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.ar, %bb.d ], [ %.04860.epil.init, %.epil.preheader ] ; 4 uses
  %i.au = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.au, label %bb.i, label %.loopexit

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.h ], [ 0, %.lr.ph ] ; 6 uses
  %.04860 = phi i32 [ %.1.1, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x i64> %i.af, ptr %8, align 16
  %i.av = lshr i64 %indvars.iv, 6
  %i.aw = and i64 %i.av, 67108863
  %10 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aw
  %i.ax = load i64, ptr %10, align 8, !tbaa !77
  %i.ay = and i64 %indvars.iv, 62
  %i.az = shl nuw nsw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not56 = icmp eq i64 %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.new
  %i.bb = load i64, ptr %5, align 8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48, !noalias !162
  %i.bg = add nsw i32 %.04860, 1
  %i.bh = sext i32 %.04860 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.new, %bb.e
  %.1 = phi i32 [ %i.bg, %bb.e ], [ %.04860, %.lr.ph.new ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x i64> %i.af, ptr %8, align 16
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %11 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bk
  %i.bl = load i64, ptr %11, align 8, !tbaa !77
  %i.bm = and i64 %indvars.iv.next, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bl, %i.bn
  %.not56.1 = icmp eq i64 %i.bo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not56.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %5, align 8
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !102
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48, !noalias !162
  %i.bu = add nsw i32 %.1, 1
  %i.bv = sext i32 %.1 to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.1 = phi i32 [ %i.bu, %bb.g ], [ %.1, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !165

bb.i:                                             ; preds = %._crit_edge
  %i.bx = shl i32 %i.aa, 5                        ; 4 uses
  %i.by = add i32 %i.bx, 32
  %i.bz = load i32, ptr %6, align 4, !tbaa !80
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bz, i32 %i.by) ; 4 uses
  %i.ca = icmp eq i32 %.1.lcssa, 1
  %i.cb = icmp slt i32 %i.bx, %.sroa.speculated   ; 2 uses
  br i1 %i.ca, label %.preheader57, label %.preheader58

.preheader58:                                     ; preds = %bb.i
  br i1 %i.cb, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader58
  %i.cc = load ptr, ptr %7, align 8, !tbaa !83
  %i.cd = sext i32 %i.bx to i64
  %wide.trip.count85 = sext i32 %.sroa.speculated to i64
  %wide.trip.count80 = zext nneg i32 %.1.lcssa to i64 ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count80, 3    ; 3 uses
  %i.ce = icmp ult i32 %.1.lcssa, 4
  %unroll_iter122 = and i64 %wide.trip.count80, 2147483644
  %lcmp.mod120.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod121 = icmp ne i64 %xtraiter117, 0
  br label %.preheader

.preheader57:                                     ; preds = %bb.i
  br i1 %i.cb, label %.lr.ph69, label %.loopexit

.lr.ph69:                                         ; preds = %.preheader57
  %i.cf = load ptr, ptr %7, align 8, !tbaa !83    ; 8 uses
  %i.cg = load ptr, ptr %i.e, align 16, !tbaa !84 ; 8 uses
  %i.ch = sext i32 %i.bx to i64                   ; 6 uses
  %wide.trip.count90 = sext i32 %.sroa.speculated to i64 ; 6 uses
  %i.ci = sub nsw i64 %wide.trip.count90, %i.ch   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69
  %i.cj = mul nsw i64 %i.ch, 12                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cj
  %i.ck = mul nsw i64 %wide.trip.count90, 12      ; 2 uses
  %scevgep104 = getelementptr i8, ptr %i.cf, i64 %i.ck
  %scevgep105 = getelementptr i8, ptr %i.cg, i64 %i.cj
  %scevgep106 = getelementptr i8, ptr %i.cg, i64 %i.ck
  %bound0 = icmp ult ptr %scevgep, %scevgep106
  %bound1 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cl = and i64 %wide.trip.count90, 7
  %n.vec = sub nsw i64 %i.ci, %i.cl               ; 2 uses
  %i.cm = add nsw i64 %n.vec, %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = add i64 %index, %i.ch                   ; 2 uses
  %i.co = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %i.cn
  %wide.vec = load <24 x float>, ptr %i.co, align 4, !tbaa !50, !alias.scope !166, !noalias !169
  %wide.vec109 = load <24 x float>, ptr %i.cp, align 4, !tbaa !50, !alias.scope !169
  %interleaved.vec = fadd <24 x float> %wide.vec, %wide.vec109
  store <24 x float> %interleaved.vec, ptr %i.co, align 4, !tbaa !50, !alias.scope !166, !noalias !169
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %i.cr = and i32 %.sroa.speculated, 7
  %cmp.n = icmp eq i32 %i.cr, 0
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph69, %middle.block
  %indvars.iv87.ph = phi i64 [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph69 ], [ %i.cm, %middle.block ] ; 4 uses
  %i.cs = sub nsw i64 %wide.trip.count90, %indvars.iv87.ph
  %xtraiter124 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %scalar.ph.prol ], [ %indvars.iv87.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv87.prol ; 3 uses
  %i.cu = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv87.prol ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !50
  %i.cz = fadd float %i.cw, %i.cy
  %i.da = load <2 x float>, ptr %i.ct, align 4, !tbaa !50
  %i.db = load <2 x float>, ptr %i.cu, align 4, !tbaa !50
  %i.dc = fadd <2 x float> %i.da, %i.db
  store <2 x float> %i.dc, ptr %i.ct, align 4, !tbaa !50
  store float %i.cz, ptr %i.cv, align 4, !tbaa !50
  %indvars.iv.next88.prol = add nsw i64 %indvars.iv87.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter124
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !172

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %scalar.ph.preheader ], [ %indvars.iv.next88.prol, %scalar.ph.prol ]
  %i.dd = sub nsw i64 %indvars.iv87.ph, %wide.trip.count90
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %scalar.ph ], [ %indvars.iv87.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv87 ; 3 uses
  %i.dg = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv87 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !50
  %i.dl = fadd float %i.di, %i.dk
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !50
  %i.dn = load <2 x float>, ptr %i.dg, align 4, !tbaa !50
  %i.do = fadd <2 x float> %i.dm, %i.dn
  store <2 x float> %i.do, ptr %i.df, align 4, !tbaa !50
  store float %i.dl, ptr %i.dh, align 4, !tbaa !50
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.dp = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv.next88 ; 3 uses
  %i.dq = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv.next88 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !50
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = load <2 x float>, ptr %i.dp, align 4, !tbaa !50
  %i.dx = load <2 x float>, ptr %i.dq, align 4, !tbaa !50
  %i.dy = fadd <2 x float> %i.dw, %i.dx
  store <2 x float> %i.dy, ptr %i.dp, align 4, !tbaa !50
  store float %i.dv, ptr %i.dr, align 4, !tbaa !50
  %indvars.iv.next88.1 = add nsw i64 %indvars.iv87, 2 ; 2 uses
  %i.dz = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv.next88.1 ; 3 uses
  %i.ea = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv.next88.1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !50
  %i.ef = fadd float %i.ec, %i.ee
  %i.eg = load <2 x float>, ptr %i.dz, align 4, !tbaa !50
  %i.eh = load <2 x float>, ptr %i.ea, align 4, !tbaa !50
  %i.ei = fadd <2 x float> %i.eg, %i.eh
  store <2 x float> %i.ei, ptr %i.dz, align 4, !tbaa !50
  store float %i.ef, ptr %i.eb, align 4, !tbaa !50
  %indvars.iv.next88.2 = add nsw i64 %indvars.iv87, 3 ; 2 uses
  %i.ej = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv.next88.2 ; 3 uses
  %i.ek = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv.next88.2 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !50
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = load <2 x float>, ptr %i.ej, align 4, !tbaa !50
  %i.er = load <2 x float>, ptr %i.ek, align 4, !tbaa !50
  %i.es = fadd <2 x float> %i.eq, %i.er
  store <2 x float> %i.es, ptr %i.ej, align 4, !tbaa !50
  store float %i.ep, ptr %i.el, align 4, !tbaa !50
  %indvars.iv.next88.3 = add nsw i64 %indvars.iv87, 4 ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %indvars.iv.next88.3, %wide.trip.count90
  br i1 %exitcond91.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !173

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge64
  %indvars.iv82 = phi i64 [ %i.cd, %.preheader.lr.ph.split ], [ %indvars.iv.next83, %._crit_edge64 ] ; 7 uses
  %i.et = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv82 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 6 uses
  %i.ev = load <2 x float>, ptr %i.et, align 4, !tbaa !50 ; 2 uses
  %.promoted66 = load float, ptr %i.eu, align 4, !tbaa !50 ; 2 uses
  br i1 %i.ce, label %.epil.preheader116, label %.preheader.new

._crit_edge64.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod120.not, label %._crit_edge64, label %.epil.preheader116

.epil.preheader116:                               ; preds = %._crit_edge64.unr-lcssa, %.preheader
  %indvars.iv77.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next78.3, %._crit_edge64.unr-lcssa ]
  %.epil.init = phi float [ %.promoted66, %.preheader ], [ %i.go, %._crit_edge64.unr-lcssa ]
  %.epil.init119 = phi <2 x float> [ %i.ev, %.preheader ], [ %i.gq, %._crit_edge64.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod121)
  br label %bb.j
end_hunk_0
begin_hunk_1_@_ZN3gmx19ThreadedForceBufferIA4_fE21reduceEnergiesAndDvdlEPNS_16EnumerationArrayI19InteractionFunctionfLS4_95EEEP17gmx_grppairener_tNS_8ArrayRefIfEERKNS_12StepWorkloadEi:bb.a
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !50
  %i.jv = fadd float %i.ju, %i.jn                 ; 2 uses
  store float %i.jv, ptr %i.ih, align 4, !tbaa !50
  %indvars.iv.next101.4.3 = add nsw i64 %indvars.iv100.4, 4 ; 2 uses
  %exitcond104.4.not.3 = icmp eq i64 %indvars.iv.next101.4.3, %wide.trip.count103
  br i1 %exitcond104.4.not.3, label %._crit_edge78.4, label %.preheader70.4.new, !llvm.loop !232

._crit_edge78.4:                                  ; preds = %.preheader70.4.new, %.prol.loopexit156
  %indvars.iv.next106.4 = add nuw nsw i64 %indvars.iv105.4, 1 ; 2 uses
  %exitcond109.4.not = icmp eq i64 %indvars.iv.next106.4, %wide.trip.count108
  br i1 %exitcond109.4.not, label %.thread64.split, label %.preheader70.4, !llvm.loop !233

._crit_edge78:                                    ; preds = %.preheader70.new, %.prol.loopexit126
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge81, label %.preheader70, !llvm.loop !233

.preheader70.new:                                 ; preds = %.prol.loopexit126, %.preheader70.new
  %indvars.iv100 = phi i64 [ %indvars.iv.next101.3136, %.preheader70.new ], [ %indvars.iv100.unr, %.prol.loopexit126 ] ; 5 uses
  %i.jw = phi float [ %i.lb, %.preheader70.new ], [ %.unr130, %.prol.loopexit126 ]
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !201
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 504
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !47
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv105
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !50
  %i.kd = fadd float %i.kc, %i.jw                 ; 2 uses
  store float %i.kd, ptr %i.ct, align 4, !tbaa !50
  %i.ke = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !201
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 504
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !47
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv105
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !50
  %i.kl = fadd float %i.kk, %i.kd                 ; 2 uses
  store float %i.kl, ptr %i.ct, align 4, !tbaa !50
  %i.km = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.kn = getelementptr i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !201
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 504
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !47
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv105
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !50
  %i.kt = fadd float %i.ks, %i.kl                 ; 2 uses
  store float %i.kt, ptr %i.ct, align 4, !tbaa !50
  %i.ku = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv100
  %i.kv = getelementptr i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !201
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 504
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !47
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv105
  %i.la = load float, ptr %i.kz, align 4, !tbaa !50
  %i.lb = fadd float %i.la, %i.kt                 ; 2 uses
  store float %i.lb, ptr %i.ct, align 4, !tbaa !50
  %indvars.iv.next101.3136 = add nsw i64 %indvars.iv100, 4 ; 2 uses
  %exitcond104.not.3 = icmp eq i64 %indvars.iv.next101.3136, %wide.trip.count103
  br i1 %exitcond104.not.3, label %._crit_edge78, label %.preheader70.new, !llvm.loop !232

.thread64.split:                                  ; preds = %._crit_edge78.4, %.loopexit74.split
  %.old66 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %.old67 = load i8, ptr %.old66, align 1, !tbaa !149, !range !131, !noundef !132
  %.old68 = trunc nuw i8 %.old67 to i1
  br i1 %.old68, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.b, %.thread64.split
  %i.lc = sext i32 %6 to i64                      ; 7 uses
  %sext124 = shl i64 %i.h, 32
  %i.ld = ashr exact i64 %sext124, 32             ; 7 uses
  %.promoted86 = load float, ptr %3, align 4, !tbaa !50
  br label %bb.k

._crit_edge85:                                    ; preds = %bb.k
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted86.1 = load float, ptr %i.le, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge85
  %indvars.iv114.1 = phi i64 [ %i.lc, %._crit_edge85 ], [ %indvars.iv.next115.1, %bb.e ] ; 2 uses
  %i.lf = phi float [ %.promoted86.1, %._crit_edge85 ], [ %i.lk, %bb.e ]
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.1
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !201
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 628
  %i.lj = load float, ptr %i.li, align 4, !tbaa !50
  %i.lk = fadd float %i.lj, %i.lf                 ; 2 uses
  store float %i.lk, ptr %i.le, align 4, !tbaa !50
  %indvars.iv.next115.1 = add nsw i64 %indvars.iv114.1, 1 ; 2 uses
  %i.ll = icmp slt i64 %indvars.iv.next115.1, %i.ld
  br i1 %i.ll, label %bb.e, label %._crit_edge85.1, !llvm.loop !237

._crit_edge85.1:                                  ; preds = %bb.e
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted86.2 = load float, ptr %i.lm, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge85.1
  %indvars.iv114.2 = phi i64 [ %i.lc, %._crit_edge85.1 ], [ %indvars.iv.next115.2, %bb.f ] ; 2 uses
  %i.ln = phi float [ %.promoted86.2, %._crit_edge85.1 ], [ %i.ls, %bb.f ]
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.2
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !201
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 632
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !50
  %i.ls = fadd float %i.lr, %i.ln                 ; 2 uses
  store float %i.ls, ptr %i.lm, align 4, !tbaa !50
  %indvars.iv.next115.2 = add nsw i64 %indvars.iv114.2, 1 ; 2 uses
  %i.lt = icmp slt i64 %indvars.iv.next115.2, %i.ld
  br i1 %i.lt, label %bb.f, label %._crit_edge85.2, !llvm.loop !237

._crit_edge85.2:                                  ; preds = %bb.f
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.promoted86.3 = load float, ptr %i.lu, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge85.2
  %indvars.iv114.3 = phi i64 [ %i.lc, %._crit_edge85.2 ], [ %indvars.iv.next115.3, %bb.g ] ; 2 uses
  %i.lv = phi float [ %.promoted86.3, %._crit_edge85.2 ], [ %i.ma, %bb.g ]
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.3
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !201
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 636
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !50
  %i.ma = fadd float %i.lz, %i.lv                 ; 2 uses
  store float %i.ma, ptr %i.lu, align 4, !tbaa !50
  %indvars.iv.next115.3 = add nsw i64 %indvars.iv114.3, 1 ; 2 uses
  %i.mb = icmp slt i64 %indvars.iv.next115.3, %i.ld
  br i1 %i.mb, label %bb.g, label %._crit_edge85.3, !llvm.loop !237

._crit_edge85.3:                                  ; preds = %bb.g
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted86.4 = load float, ptr %i.mc, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge85.3
  %indvars.iv114.4 = phi i64 [ %i.lc, %._crit_edge85.3 ], [ %indvars.iv.next115.4, %bb.h ] ; 2 uses
  %i.md = phi float [ %.promoted86.4, %._crit_edge85.3 ], [ %i.mi, %bb.h ]
  %i.me = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.4
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !201
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 640
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !50
  %i.mi = fadd float %i.mh, %i.md                 ; 2 uses
  store float %i.mi, ptr %i.mc, align 4, !tbaa !50
  %indvars.iv.next115.4 = add nsw i64 %indvars.iv114.4, 1 ; 2 uses
  %i.mj = icmp slt i64 %indvars.iv.next115.4, %i.ld
  br i1 %i.mj, label %bb.h, label %._crit_edge85.4, !llvm.loop !237

._crit_edge85.4:                                  ; preds = %bb.h
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.promoted86.5 = load float, ptr %i.mk, align 4, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge85.4
  %indvars.iv114.5 = phi i64 [ %i.lc, %._crit_edge85.4 ], [ %indvars.iv.next115.5, %bb.i ] ; 2 uses
  %i.ml = phi float [ %.promoted86.5, %._crit_edge85.4 ], [ %i.mq, %bb.i ]
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.5
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !201
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 644
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !50
  %i.mq = fadd float %i.mp, %i.ml                 ; 2 uses
  store float %i.mq, ptr %i.mk, align 4, !tbaa !50
  %indvars.iv.next115.5 = add nsw i64 %indvars.iv114.5, 1 ; 2 uses
  %i.mr = icmp slt i64 %indvars.iv.next115.5, %i.ld
  br i1 %i.mr, label %bb.i, label %._crit_edge85.5, !llvm.loop !237

._crit_edge85.5:                                  ; preds = %bb.i
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.promoted86.6 = load float, ptr %i.ms, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge85.5
  %indvars.iv114.6 = phi i64 [ %i.lc, %._crit_edge85.5 ], [ %indvars.iv.next115.6, %bb.j ] ; 2 uses
  %i.mt = phi float [ %.promoted86.6, %._crit_edge85.5 ], [ %i.my, %bb.j ]
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114.6
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !201
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 648
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !50
  %i.my = fadd float %i.mx, %i.mt                 ; 2 uses
  store float %i.my, ptr %i.ms, align 4, !tbaa !50
  %indvars.iv.next115.6 = add nsw i64 %indvars.iv114.6, 1 ; 2 uses
  %i.mz = icmp slt i64 %indvars.iv.next115.6, %i.ld
  br i1 %i.mz, label %bb.j, label %.loopexit.split, !llvm.loop !237

bb.k:                                             ; preds = %.preheader.preheader, %bb.k
  %indvars.iv114 = phi i64 [ %i.lc, %.preheader.preheader ], [ %indvars.iv.next115, %bb.k ] ; 2 uses
  %i.na = phi float [ %.promoted86, %.preheader.preheader ], [ %i.nf, %bb.k ]
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv114
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !201
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 624
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !50
  %i.nf = fadd float %i.ne, %i.na                 ; 2 uses
  store float %i.nf, ptr %3, align 4, !tbaa !50
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ng = icmp slt i64 %indvars.iv.next115, %i.ld
  br i1 %i.ng, label %bb.k, label %._crit_edge85, !llvm.loop !237

.loopexit.split:                                  ; preds = %bb.j, %.thread64.split, %bb.c, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx12_GLOBAL__N_124reduceThreadForceBuffersIA4_fEEvNS_8ArrayRefINS_11BasicVectorIfEEEENS3_ISt10unique_ptrINS_17ThreadForceBufferIT_EESt14default_deleteISA_EEEENS3_IKSt5arrayImLm2EEEENS3_IKiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::array", align 16      ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [256 x ptr], align 16             ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = trunc i64 %i.k to i32
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.n, ptr %i.b, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !80
  %i.o = load i32, ptr %0, align 4, !tbaa !80     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.o, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.p = load i32, ptr %i.b, align 4, !tbaa !80
  %i.q = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.n) ; 3 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !80
  %i.r = load i32, ptr %i.a, align 4, !tbaa !80   ; 2 uses
  %.not70 = icmp sgt i32 %i.r, %i.q
  br i1 %.not70, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.s = load i32, ptr %3, align 4, !tbaa !80     ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = sext i32 %i.r to i64
  %i.v = add nsw i32 %i.q, 1
  %wide.trip.count = zext i32 %i.s to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.s, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod116 = trunc i32 %i.s to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph73, %.loopexit
  %indvars.iv92 = phi i64 [ %i.u, %.lr.ph73 ], [ %indvars.iv.next93, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.x = load i64, ptr %2, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 2 uses
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load i64, ptr %4, align 8
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load <2 x i64>, ptr %i.ae, align 8      ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.04860.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod116)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x i64> %i.af, ptr %8, align 16
  %i.ag = lshr i64 %indvars.iv.epil.init, 6
  %i.ah = and i64 %i.ag, 67108863
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ah
  %i.ai = load i64, ptr %9, align 8, !tbaa !77
  %i.aj = and i64 %indvars.iv.epil.init, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ai, %i.ak
  %.not56.epil = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not56.epil, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.epil.preheader
  %i.am = load i64, ptr %5, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !201
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48, !noalias !238
  %i.ar = add nsw i32 %.04860.epil.init, 1
  %i.as = sext i32 %.04860.epil.init to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.d, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.ar, %bb.d ], [ %.04860.epil.init, %.epil.preheader ] ; 4 uses
  %i.au = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.au, label %bb.i, label %.loopexit

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.h ], [ 0, %.lr.ph ] ; 6 uses
  %.04860 = phi i32 [ %.1.1, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x i64> %i.af, ptr %8, align 16
  %i.av = lshr i64 %indvars.iv, 6
  %i.aw = and i64 %i.av, 67108863
  %10 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aw
  %i.ax = load i64, ptr %10, align 8, !tbaa !77
  %i.ay = and i64 %indvars.iv, 62
  %i.az = shl nuw nsw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not56 = icmp eq i64 %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.new
  %i.bb = load i64, ptr %5, align 8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !201
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48, !noalias !238
  %i.bg = add nsw i32 %.04860, 1
  %i.bh = sext i32 %.04860 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.new, %bb.e
  %.1 = phi i32 [ %i.bg, %bb.e ], [ %.04860, %.lr.ph.new ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x i64> %i.af, ptr %8, align 16
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %11 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bk
  %i.bl = load i64, ptr %11, align 8, !tbaa !77
  %i.bm = and i64 %indvars.iv.next, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bl, %i.bn
  %.not56.1 = icmp eq i64 %i.bo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not56.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %5, align 8
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !201
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48, !noalias !238
  %i.bu = add nsw i32 %.1, 1
  %i.bv = sext i32 %.1 to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.1 = phi i32 [ %i.bu, %bb.g ], [ %.1, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !241

bb.i:                                             ; preds = %._crit_edge
  %i.bx = shl i32 %i.aa, 5                        ; 4 uses
  %i.by = add i32 %i.bx, 32
  %i.bz = load i32, ptr %6, align 4, !tbaa !80
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bz, i32 %i.by) ; 4 uses
  %i.ca = icmp eq i32 %.1.lcssa, 1
  %i.cb = icmp slt i32 %i.bx, %.sroa.speculated   ; 2 uses
  br i1 %i.ca, label %.preheader57, label %.preheader58

.preheader58:                                     ; preds = %bb.i
  br i1 %i.cb, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader58
  %i.cc = load ptr, ptr %7, align 8, !tbaa !83
  %i.cd = sext i32 %i.bx to i64
  %wide.trip.count85 = sext i32 %.sroa.speculated to i64
  %wide.trip.count80 = zext nneg i32 %.1.lcssa to i64 ; 2 uses
  %xtraiter118 = and i64 %wide.trip.count80, 3    ; 3 uses
  %i.ce = icmp ult i32 %.1.lcssa, 4
  %unroll_iter123 = and i64 %wide.trip.count80, 2147483644
  %lcmp.mod121.not = icmp eq i64 %xtraiter118, 0
  %lcmp.mod122 = icmp ne i64 %xtraiter118, 0
  br label %.preheader

.preheader57:                                     ; preds = %bb.i
  br i1 %i.cb, label %.lr.ph69, label %.loopexit

.lr.ph69:                                         ; preds = %.preheader57
  %i.cf = load ptr, ptr %7, align 8, !tbaa !83    ; 8 uses
  %i.cg = load ptr, ptr %i.e, align 16, !tbaa !83 ; 8 uses
  %i.ch = sext i32 %i.bx to i64                   ; 7 uses
  %wide.trip.count90 = sext i32 %.sroa.speculated to i64 ; 7 uses
  %i.ci = sub nsw i64 %wide.trip.count90, %i.ch   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69
  %i.cj = mul nsw i64 %i.ch, 12
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cj
  %i.ck = mul nsw i64 %wide.trip.count90, 12
  %scevgep104 = getelementptr i8, ptr %i.cf, i64 %i.ck
  %i.cl = shl nsw i64 %i.ch, 4
  %scevgep105 = getelementptr i8, ptr %i.cg, i64 %i.cl
  %scevgep106 = getelementptr i8, ptr %i.cg, i64 -4
  %i.cm = shl nsw i64 %wide.trip.count90, 4
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.cm
  %bound0 = icmp ult ptr %scevgep, %scevgep107
  %bound1 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cn = and i64 %wide.trip.count90, 7
  %i.co = and i32 %.sroa.speculated, 7
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = select i1 %i.cp, i64 8, i64 %i.cn
  %n.vec = sub nsw i64 %i.ci, %i.cq               ; 2 uses
  %i.cr = add nsw i64 %n.vec, %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = add i64 %index, %i.ch                   ; 2 uses
  %i.ct = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.cs
  %wide.vec = load <24 x float>, ptr %i.ct, align 4, !tbaa !50, !alias.scope !242, !noalias !245 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec108 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.vec110 = load <32 x float>, ptr %i.cu, align 4, !tbaa !50, !alias.scope !245 ; 3 uses
  %strided.vec111 = shufflevector <32 x float> %wide.vec110, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec112 = shufflevector <32 x float> %wide.vec110, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.cv = fadd <8 x float> %strided.vec, %strided.vec111
  %i.cw = fadd <8 x float> %strided.vec108, %strided.vec112
  %i.cx = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cy = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <32 x float> %wide.vec110, <32 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.da = fadd <16 x float> %i.cy, %i.cz
  %interleaved.vec = shufflevector <16 x float> %i.cx, <16 x float> %i.da, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.ct, align 4, !tbaa !50, !alias.scope !242, !noalias !245
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %scalar.ph.preheader, label %vector.body, !llvm.loop !247

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph69
  %indvars.iv87.ph = phi i64 [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph69 ], [ %i.cr, %vector.body ] ; 4 uses
  %i.dc = sub nsw i64 %wide.trip.count90, %indvars.iv87.ph
  %xtraiter125 = and i64 %i.dc, 3                 ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %scalar.ph.prol ], [ %indvars.iv87.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv87.prol ; 3 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %indvars.iv87.prol ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !50
  %i.dj = fadd float %i.dg, %i.di
  %i.dk = load <2 x float>, ptr %i.dd, align 4, !tbaa !50
  %i.dl = load <2 x float>, ptr %i.de, align 4, !tbaa !50
  %i.dm = fadd <2 x float> %i.dk, %i.dl
  store <2 x float> %i.dm, ptr %i.dd, align 4, !tbaa !50
  store float %i.dj, ptr %i.df, align 4, !tbaa !50
  %indvars.iv.next88.prol = add nsw i64 %indvars.iv87.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter125
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !248

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %scalar.ph.preheader ], [ %indvars.iv.next88.prol, %scalar.ph.prol ]
  %i.dn = sub nsw i64 %indvars.iv87.ph, %wide.trip.count90
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %scalar.ph ], [ %indvars.iv87.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv87 ; 3 uses
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %indvars.iv87 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !50
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = load <2 x float>, ptr %i.dp, align 4, !tbaa !50
  %i.dx = load <2 x float>, ptr %i.dq, align 4, !tbaa !50
  %i.dy = fadd <2 x float> %i.dw, %i.dx
  store <2 x float> %i.dy, ptr %i.dp, align 4, !tbaa !50
  store float %i.dv, ptr %i.dr, align 4, !tbaa !50
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.dz = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv.next88 ; 3 uses
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %indvars.iv.next88 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !50
  %i.ef = fadd float %i.ec, %i.ee
  %i.eg = load <2 x float>, ptr %i.dz, align 4, !tbaa !50
  %i.eh = load <2 x float>, ptr %i.ea, align 4, !tbaa !50
  %i.ei = fadd <2 x float> %i.eg, %i.eh
  store <2 x float> %i.ei, ptr %i.dz, align 4, !tbaa !50
  store float %i.ef, ptr %i.eb, align 4, !tbaa !50
  %indvars.iv.next88.1 = add nsw i64 %indvars.iv87, 2 ; 2 uses
  %i.ej = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv.next88.1 ; 3 uses
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %indvars.iv.next88.1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !50
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = load <2 x float>, ptr %i.ej, align 4, !tbaa !50
  %i.er = load <2 x float>, ptr %i.ek, align 4, !tbaa !50
  %i.es = fadd <2 x float> %i.eq, %i.er
  store <2 x float> %i.es, ptr %i.ej, align 4, !tbaa !50
  store float %i.ep, ptr %i.el, align 4, !tbaa !50
  %indvars.iv.next88.2 = add nsw i64 %indvars.iv87, 3 ; 2 uses
  %i.et = getelementptr inbounds [12 x i8], ptr %i.cf, i64 %indvars.iv.next88.2 ; 3 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %indvars.iv.next88.2 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !50
  %i.ez = fadd float %i.ew, %i.ey
  %i.fa = load <2 x float>, ptr %i.et, align 4, !tbaa !50
  %i.fb = load <2 x float>, ptr %i.eu, align 4, !tbaa !50
  %i.fc = fadd <2 x float> %i.fa, %i.fb
  store <2 x float> %i.fc, ptr %i.et, align 4, !tbaa !50
  store float %i.ez, ptr %i.ev, align 4, !tbaa !50
  %indvars.iv.next88.3 = add nsw i64 %indvars.iv87, 4 ; 2 uses
  %exitcond91.not.3 = icmp eq i64 %indvars.iv.next88.3, %wide.trip.count90
  br i1 %exitcond91.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !249

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge64
  %indvars.iv82 = phi i64 [ %i.cd, %.preheader.lr.ph.split ], [ %indvars.iv.next83, %._crit_edge64 ] ; 7 uses
  %i.fd = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv82 ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 6 uses
  %i.ff = load <2 x float>, ptr %i.fd, align 4, !tbaa !50 ; 2 uses
  %.promoted66 = load float, ptr %i.fe, align 4, !tbaa !50 ; 2 uses
end_hunk_1
