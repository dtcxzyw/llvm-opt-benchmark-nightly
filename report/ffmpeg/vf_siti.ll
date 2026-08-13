inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@filter_frame:bb.a
  %i.acc = load i16, ptr %gep145.i.1, align 2, !tbaa !55 ; 2 uses
  %i.acd = zext i16 %i.acc to i32
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acb ; 2 uses
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !55
  %i.acg = zext i16 %i.acf to i32
  %i.ach = sub nsw i32 %i.acd, %i.acg
  %i.aci = sitofp nsz i32 %i.ach to float
  store i16 %i.acc, ptr %i.ace, align 2, !tbaa !55
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acb
  store float %i.aci, ptr %i.acj, align 4, !tbaa !20
  %indvars.iv.next106.i.1 = add nuw nsw i64 %indvars.iv105.i, 2 ; 2 uses
  %exitcond109.not.i.1 = icmp eq i64 %indvars.iv.next106.i.1, %i.xv
  br i1 %exitcond109.not.i.1, label %._crit_edge80.split.split.us.us.i, label %scalar.ph289, !llvm.loop !96

._crit_edge80.split.split.us.us.i:                ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block298
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count133.i
  br i1 %exitcond114.not.i, label %calculate_motion.exit, label %.preheader.us86.i, !llvm.loop !82

.preheader.i48:                                   ; preds = %.preheader.i48.preheader, %._crit_edge80.split.split.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge80.split.split.i ], [ 0, %.preheader.i48.preheader ] ; 3 uses
  %i.ack = mul nsw i64 %indvars.iv100.i, %i.xu
  %i.acl = mul nuw nsw i64 %indvars.iv100.i, %i.xv ; 4 uses
  %invariant.gep.i49 = getelementptr [2 x i8], ptr %i.q, i64 %i.ack ; 4 uses
  %brmerge400 = select i1 %min.iters.check271, i1 true, i1 %i.aat
  br i1 %brmerge400, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %.preheader.i48, %vector.body274
  %index275 = phi i64 [ %index.next278, %vector.body274 ], [ 0, %.preheader.i48 ] ; 3 uses
  %i.acm = add nuw nsw i64 %index275, %i.acl      ; 2 uses
  %i.acn = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %index275 ; 2 uses
  %i.aco = getelementptr i8, ptr %i.acn, i64 8
  %wide.load276 = load <4 x i16>, ptr %i.acn, align 2, !tbaa !55, !alias.scope !97
  %wide.load277 = load <4 x i16>, ptr %i.aco, align 2, !tbaa !55, !alias.scope !97
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acm ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store <4 x i16> %wide.load276, ptr %i.acp, align 2, !tbaa !55, !alias.scope !100, !noalias !97
  store <4 x i16> %wide.load277, ptr %i.acq, align 2, !tbaa !55, !alias.scope !100, !noalias !97
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acm ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  store <4 x float> zeroinitializer, ptr %i.acr, align 4, !tbaa !20
  store <4 x float> zeroinitializer, ptr %i.acs, align 4, !tbaa !20
  %index.next278 = add nuw i64 %index275, 8       ; 2 uses
  %i.act = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.act, label %middle.block279, label %vector.body274, !llvm.loop !102

middle.block279:                                  ; preds = %vector.body274
  br i1 %cmp.n280, label %._crit_edge80.split.split.i, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %.preheader.i48, %middle.block279
  %indvars.iv97.i.ph = phi i64 [ %n.vec273, %middle.block279 ], [ 0, %.preheader.i48 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph270.prol.loopexit, label %scalar.ph270.prol

scalar.ph270.prol:                                ; preds = %scalar.ph270.preheader
  %i.acu = add nuw nsw i64 %indvars.iv97.i.ph, %i.acl ; 2 uses
  %gep.i50.prol = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %indvars.iv97.i.ph
  %i.acv = load i16, ptr %gep.i50.prol, align 2, !tbaa !55
  %i.acw = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acu
  store i16 %i.acv, ptr %i.acw, align 2, !tbaa !55
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acu
  store float 0.000000e+00, ptr %i.acx, align 4, !tbaa !20
  %indvars.iv.next98.i.prol = or disjoint i64 %indvars.iv97.i.ph, 1
  br label %scalar.ph270.prol.loopexit

scalar.ph270.prol.loopexit:                       ; preds = %scalar.ph270.prol, %scalar.ph270.preheader
  %indvars.iv97.i.unr = phi i64 [ %indvars.iv97.i.ph, %scalar.ph270.preheader ], [ %indvars.iv.next98.i.prol, %scalar.ph270.prol ]
  %i.acy = icmp eq i64 %indvars.iv97.i.ph, %i.aau
  br i1 %i.acy, label %._crit_edge80.split.split.i, label %scalar.ph270

._crit_edge80.split.split.i:                      ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270, %middle.block279
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count133.i
  br i1 %exitcond104.not.i, label %calculate_motion.exit, label %.preheader.i48, !llvm.loop !82

scalar.ph270:                                     ; preds = %scalar.ph270.prol.loopexit, %scalar.ph270
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i.1, %scalar.ph270 ], [ %indvars.iv97.i.unr, %scalar.ph270.prol.loopexit ] ; 4 uses
  %i.acz = add nuw nsw i64 %indvars.iv97.i, %i.acl ; 2 uses
  %gep.i50 = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %indvars.iv97.i
  %i.ada = load i16, ptr %gep.i50, align 2, !tbaa !55
  %i.adb = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.acz
  store i16 %i.ada, ptr %i.adb, align 2, !tbaa !55
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.acz
  store float 0.000000e+00, ptr %i.adc, align 4, !tbaa !20
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %i.add = add nuw nsw i64 %indvars.iv.next98.i, %i.acl ; 2 uses
  %gep.i50.1 = getelementptr [2 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.next98.i
  %i.ade = load i16, ptr %gep.i50.1, align 2, !tbaa !55
  %i.adf = getelementptr inbounds nuw [2 x i8], ptr %i.xp, i64 %i.add
  store i16 %i.ade, ptr %i.adf, align 2, !tbaa !55
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.add
  store float 0.000000e+00, ptr %i.adg, align 4, !tbaa !20
  %indvars.iv.next98.i.1 = add nuw nsw i64 %indvars.iv97.i, 2 ; 2 uses
  %exitcond.not.i51.1 = icmp eq i64 %indvars.iv.next98.i.1, %i.xv
  br i1 %exitcond.not.i51.1, label %._crit_edge80.split.split.i, label %scalar.ph270, !llvm.loop !103

bb.e:                                             ; preds = %convolve_sobel.exit
  br i1 %i.xm, label %.preheader74.lr.ph.i, label %calculate_motion.exit

.preheader74.lr.ph.i:                             ; preds = %convolve_sobel.exit.thread93.thread, %convolve_sobel.exit.thread93, %bb.e
  %i.adh = phi ptr [ %i.xd, %convolve_sobel.exit.thread93 ], [ %i.xi, %bb.e ], [ %i.ao, %convolve_sobel.exit.thread93.thread ] ; 2 uses
  %i.adi = phi ptr [ %i.xe, %convolve_sobel.exit.thread93 ], [ %i.xj, %bb.e ], [ %i.ap, %convolve_sobel.exit.thread93.thread ]
  %i.adj = phi ptr [ %i.xg, %convolve_sobel.exit.thread93 ], [ %i.xl, %bb.e ], [ %i.ar, %convolve_sobel.exit.thread93.thread ] ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.adl = shl nuw nsw i32 %i.z, 4
  %i.adm = select i1 %i.y, i32 219, i32 876       ; 2 uses
  %i.adn = shl nuw nsw i32 %i.z, 8
  %i.ado = add nsw i32 %i.adn, -1
  %i.adp = uitofp nneg i32 %i.adm to float
  %i.adq = load i32, ptr %i.adk, align 4, !tbaa !48 ; 2 uses
  %i.adr = icmp sgt i32 %i.adq, 0
  br i1 %i.adr, label %.preheader74.preheader.i, label %calculate_motion.exit

.preheader74.preheader.i:                         ; preds = %.preheader74.lr.ph.i
  %i.ads = sext i32 %i.x to i64
  br label %.preheader74.i

.preheader74.i:                                   ; preds = %._crit_edge.i, %.preheader74.preheader.i
  %i.adt = phi i32 [ %i.ac, %.preheader74.preheader.i ], [ %i.adx, %._crit_edge.i ]
  %i.adu = phi i32 [ %i.adq, %.preheader74.preheader.i ], [ %i.ady, %._crit_edge.i ] ; 3 uses
  %indvars.iv94.i = phi i64 [ 0, %.preheader74.preheader.i ], [ %indvars.iv.next95.i, %._crit_edge.i ] ; 4 uses
  %i.adv = icmp sgt i32 %i.adu, 0
  br i1 %i.adv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader74.i
  %i.adw = mul nsw i64 %indvars.iv94.i, %i.ads
  %invariant.gep = getelementptr i8, ptr %i.q, i64 %i.adw
  br label %bb.f

._crit_edge.loopexit.i:                           ; preds = %bb.k
  %.pre.i = load i32, ptr %i.ab, align 8, !tbaa !47
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader74.i
  %i.adx = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.adt, %.preheader74.i ] ; 2 uses
  %i.ady = phi i32 [ %i.afc, %._crit_edge.loopexit.i ], [ %i.adu, %.preheader74.i ]
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %i.adz = sext i32 %i.adx to i64
  %i.aea = icmp slt i64 %indvars.iv.next95.i, %i.adz
  br i1 %i.aea, label %.preheader74.i, label %calculate_motion.exit, !llvm.loop !104

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i47, %bb.k ] ; 4 uses
  %i.aeb = phi i32 [ %i.adu, %.lr.ph.i ], [ %i.afc, %bb.k ]
  %i.aec = sext i32 %i.aeb to i64
  %i.aed = mul nsw i64 %indvars.iv94.i, %i.aec
  %i.aee = add nsw i64 %i.aed, %indvars.iv.i45    ; 2 uses
  %i.aef = load i32, ptr %i.m, align 8, !tbaa !42
  %.not.i46 = icmp eq i32 %i.aef, 0
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i45
  %i.aeg = load i8, ptr %gep, align 1, !tbaa !51  ; 2 uses
  br i1 %.not.i46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aeh = zext i8 %i.aeg to i16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aei = zext i8 %i.aeg to i32
  %i.aej = sub nsw i32 %i.aei, %i.adl
  %i.aek = sitofp nsz i32 %i.aej to float
  %i.ael = tail call nsz float @llvm.maxnum.f32(float %i.aek, float 0.000000e+00)
  %i.aem = tail call nsz float @llvm.minnum.f32(float %i.ael, float %i.adp)
  %i.aen = fptosi float %i.aem to i32
  %i.aeo = mul nsw i32 %i.ado, %i.aen
  %i.aep = sdiv i32 %i.aeo, %i.adm
  %i.aeq = trunc i32 %i.aep to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aer = phi i16 [ %i.aeh, %bb.g ], [ %i.aeq, %bb.h ] ; 2 uses
  %i.aes = load i64, ptr %i.n, align 8, !tbaa !26
  %i.aet = icmp ugt i64 %i.aes, 1
  br i1 %i.aet, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aeu = zext i16 %i.aer to i32
  %i.aev = getelementptr inbounds i8, ptr %i.adj, i64 %i.aee
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !51
  %i.aex = zext i8 %i.aew to i32
  %i.aey = sub nsw i32 %i.aeu, %i.aex
  %i.aez = sitofp nsz i32 %i.aey to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i = phi nsz float [ %i.aez, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.afa = trunc i16 %i.aer to i8
  %i.afb = getelementptr inbounds i8, ptr %i.adj, i64 %i.aee
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !51
  %i.afc = load i32, ptr %i.adk, align 4, !tbaa !48 ; 3 uses
  %i.afd = sext i32 %i.afc to i64                 ; 2 uses
  %i.afe = mul nsw i64 %indvars.iv94.i, %i.afd
  %i.aff = getelementptr [4 x i8], ptr %i.adi, i64 %i.afe
  %i.afg = getelementptr [4 x i8], ptr %i.aff, i64 %indvars.iv.i45
  store float %.1.i, ptr %i.afg, align 4, !tbaa !20
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %i.afh = icmp slt i64 %indvars.iv.next.i47, %i.afd
  br i1 %i.afh, label %bb.f, label %._crit_edge.loopexit.i, !llvm.loop !106

calculate_motion.exit:                            ; preds = %._crit_edge.i, %._crit_edge80.split.split.i, %._crit_edge80.split.split.us.us.i, %._crit_edge80.split.us.us.split.i, %._crit_edge80.split.us.us.split.us.us.i, %convolve_sobel.exit.thread93, %convolve_sobel.exit.thread, %bb.d, %.preheader.lr.ph.i, %bb.e, %.preheader74.lr.ph.i
  %i.afi = phi ptr [ %i.xi, %bb.d ], [ %i.xn, %.preheader.lr.ph.i ], [ %i.xd, %convolve_sobel.exit.thread93 ], [ %i.xn, %._crit_edge80.split.split.i ], [ %i.xn, %._crit_edge80.split.us.us.split.us.us.i ], [ %i.xn, %._crit_edge80.split.us.us.split.i ], [ %i.xi, %bb.e ], [ %i.adh, %.preheader74.lr.ph.i ], [ %i.xn, %._crit_edge80.split.split.us.us.i ], [ %i.wy, %convolve_sobel.exit.thread ], [ %i.adh, %._crit_edge.i ]
  %i.afj = load ptr, ptr %i.r, align 8, !tbaa !44 ; 8 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !48 ; 5 uses
  %i.afm = add nsw i32 %i.afl, -2                 ; 2 uses
  %i.afn = load i32, ptr %i.ab, align 8, !tbaa !47 ; 5 uses
  %i.afo = add nsw i32 %i.afn, -2                 ; 2 uses
  %i.afp = mul nsw i32 %i.afo, %i.afm             ; 3 uses
  %i.afq = icmp sgt i32 %i.afn, 2
  br i1 %i.afq, label %.preheader40.lr.ph.i, label %._crit_edge45.thread78.i

._crit_edge45.thread78.i:                         ; preds = %calculate_motion.exit
  %i.afr = sitofp nsz i32 %i.afp to double
  br label %std_deviation.exit

.preheader40.lr.ph.i:                             ; preds = %calculate_motion.exit
  %i.afs = icmp sgt i32 %i.afl, 2
  br i1 %i.afs, label %.preheader40.us.preheader.i, label %.preheader.lr.ph.thread.i

.preheader.lr.ph.thread.i:                        ; preds = %.preheader40.lr.ph.i
  %i.aft = sitofp nsz i32 %i.afp to double
  br label %std_deviation.exit

.preheader40.us.preheader.i:                      ; preds = %.preheader40.lr.ph.i
  %i.afu = zext nneg i32 %i.afm to i64
  %wide.trip.count63.i = zext nneg i32 %i.afo to i64
  %flatten.tripcount = mul nuw nsw i64 %i.afu, %wide.trip.count63.i ; 6 uses
  %2 = add nsw i64 %flatten.tripcount, -1         ; 2 uses
  %unroll_iter.a = and i64 %flatten.tripcount, 3  ; 3 uses
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %.epil.preheader, label %.preheader40.us.i.a

.preheader40.us.i.a:                              ; preds = %.preheader40.us.preheader.i
  %unroll_iter = and i64 %flatten.tripcount, 4611686018427387900
  br label %.preheader40.us.i.new

.preheader40.us.i.new:                            ; preds = %.preheader40.us.i.new, %.preheader40.us.i.a
  %indvars.iv.i54 = phi i64 [ 0, %.preheader40.us.i.a ], [ %indvars.iv.next.i56.3, %.preheader40.us.i.new ] ; 5 uses
  %.142.us.i = phi double [ 0.000000e+00, %.preheader40.us.i.a ], [ %i.agj, %.preheader40.us.i.new ]
  %niter = phi i64 [ 0, %.preheader40.us.i.a ], [ %niter.next.3, %.preheader40.us.i.new ]
  %gep.i55 = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i54
  %i.afv = load float, ptr %gep.i55, align 4, !tbaa !20
  %i.afw = fpext nsz float %i.afv to double
  %i.afx = fadd nsz double %.142.us.i, %i.afw
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i54
  %gep.i55.1 = getelementptr inbounds nuw i8, ptr %i.afy, i64 4
  %i.afz = load float, ptr %gep.i55.1, align 4, !tbaa !20
  %i.aga = fpext nsz float %i.afz to double
  %i.agb = fadd nsz double %i.afx, %i.aga
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i54
  %gep.i55.2 = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.agd = load float, ptr %gep.i55.2, align 4, !tbaa !20
  %i.age = fpext nsz float %i.agd to double
  %i.agf = fadd nsz double %i.agb, %i.age
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i54
  %gep.i55.3 = getelementptr inbounds nuw i8, ptr %i.agg, i64 12
  %i.agh = load float, ptr %gep.i55.3, align 4, !tbaa !20
  %i.agi = fpext nsz float %i.agh to double
  %i.agj = fadd nsz double %i.agf, %i.agi         ; 3 uses
  %indvars.iv.next.i56.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader40.us.i.new, !llvm.loop !107

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader40.us.i.new
  %lcmp.mod361.not = icmp eq i64 %unroll_iter.a, 0
  br i1 %lcmp.mod361.not, label %._crit_edge45.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader40.us.preheader.i
  %indvars.iv.i54.epil.init = phi i64 [ 0, %.preheader40.us.preheader.i ], [ %indvars.iv.next.i56.3, %._crit_edge.us.i.unr-lcssa ]
  %.142.us.i.epil.init = phi double [ 0.000000e+00, %.preheader40.us.preheader.i ], [ %i.agj, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod363 = icmp ne i64 %unroll_iter.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod363)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.i54.epil = phi i64 [ %indvars.iv.next.i56.epil, %bb.l ], [ %indvars.iv.i54.epil.init, %.epil.preheader ] ; 2 uses
  %.142.us.i.epil = phi double [ %i.agm, %bb.l ], [ %.142.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %gep.i55.epil = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv.i54.epil
  %i.agk = load float, ptr %gep.i55.epil, align 4, !tbaa !20
  %i.agl = fpext nsz float %i.agk to double
  %i.agm = fadd nsz double %.142.us.i.epil, %i.agl ; 2 uses
  %indvars.iv.next.i56.epil = add nuw nsw i64 %indvars.iv.i54.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %unroll_iter.a
  br i1 %epil.iter.cmp.not, label %._crit_edge45.i, label %bb.l, !llvm.loop !108

._crit_edge45.i:                                  ; preds = %bb.l, %._crit_edge.us.i.unr-lcssa
  %.lcssa344 = phi double [ %i.agj, %._crit_edge.us.i.unr-lcssa ], [ %i.agm, %bb.l ]
  %i.agn = sitofp nsz i32 %i.afp to double        ; 3 uses
  %i.ago = fdiv nsz double %.lcssa344, %i.agn     ; 3 uses
  %unroll_iter373 = and i64 %flatten.tripcount, 1
  %lcmp.mod370.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod370.not, label %.epil.preheader367, label %.preheader.us.i58

.preheader.us.i58:                                ; preds = %._crit_edge45.i
  %unroll_iter369 = and i64 %flatten.tripcount, 4611686018427387902
  br label %.preheader.us.i58.new

.preheader.us.i58.new:                            ; preds = %.preheader.us.i58.new, %.preheader.us.i58
  %indvars.iv65.i = phi i64 [ 0, %.preheader.us.i58 ], [ %indvars.iv.next66.i.1, %.preheader.us.i58.new ] ; 3 uses
  %.13647.us.i = phi double [ 0.000000e+00, %.preheader.us.i58 ], [ %i.ahd, %.preheader.us.i58.new ]
  %niter374 = phi i64 [ 0, %.preheader.us.i58 ], [ %niter374.next.1, %.preheader.us.i58.new ]
  %gep82.i = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv65.i
  %i.agp = load float, ptr %gep82.i, align 4, !tbaa !20
  %i.agq = fpext nsz float %i.agp to double
  %i.agr = fsub nsz double %i.agq, %i.ago
  %i.ags = fptrunc nsz double %i.agr to float     ; 2 uses
  %i.agt = fmul nsz float %i.ags, %i.ags
  %i.agu = fpext nsz float %i.agt to double
  %i.agv = fadd nsz double %.13647.us.i, %i.agu
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv65.i
  %gep82.i.1 = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %i.agx = load float, ptr %gep82.i.1, align 4, !tbaa !20
  %i.agy = fpext nsz float %i.agx to double
  %i.agz = fsub nsz double %i.agy, %i.ago
  %i.aha = fptrunc nsz double %i.agz to float     ; 2 uses
  %i.ahb = fmul nsz float %i.aha, %i.aha
  %i.ahc = fpext nsz float %i.ahb to double
  %i.ahd = fadd nsz double %i.agv, %i.ahc         ; 3 uses
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter374.next.1 = add i64 %niter374, 2         ; 2 uses
  %niter374.ncmp.1 = icmp eq i64 %niter374.next.1, %unroll_iter369
  br i1 %niter374.ncmp.1, label %._crit_edge.us53.i.unr-lcssa, label %.preheader.us.i58.new, !llvm.loop !110

._crit_edge.us53.i.unr-lcssa:                     ; preds = %.preheader.us.i58.new
  %lcmp.mod366.not = icmp eq i64 %unroll_iter373, 0
  br i1 %lcmp.mod366.not, label %std_deviation.exit, label %.epil.preheader367

.epil.preheader367:                               ; preds = %._crit_edge.us53.i.unr-lcssa, %._crit_edge45.i
  %indvars.iv65.i.epil.init = phi i64 [ 0, %._crit_edge45.i ], [ %indvars.iv.next66.i.1, %._crit_edge.us53.i.unr-lcssa ]
  %.13647.us.i.epil.init = phi double [ 0.000000e+00, %._crit_edge45.i ], [ %i.ahd, %._crit_edge.us53.i.unr-lcssa ]
  %lcmp.mod368 = trunc i64 %flatten.tripcount to i1
  tail call void @llvm.assume(i1 %lcmp.mod368)
  %gep82.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv65.i.epil.init
  %i.ahe = load float, ptr %gep82.i.epil, align 4, !tbaa !20
  %i.ahf = fpext nsz float %i.ahe to double
  %i.ahg = fsub nsz double %i.ahf, %i.ago
  %i.ahh = fptrunc nsz double %i.ahg to float     ; 2 uses
  %i.ahi = fmul nsz float %i.ahh, %i.ahh
  %i.ahj = fpext nsz float %i.ahi to double
  %i.ahk = fadd nsz double %.13647.us.i.epil.init, %i.ahj
  br label %std_deviation.exit

std_deviation.exit:                               ; preds = %.epil.preheader367, %._crit_edge.us53.i.unr-lcssa, %._crit_edge45.thread78.i, %.preheader.lr.ph.thread.i
  %4 = phi double [ %i.afr, %._crit_edge45.thread78.i ], [ %i.aft, %.preheader.lr.ph.thread.i ], [ %i.agn, %._crit_edge.us53.i.unr-lcssa ], [ %i.agn, %.epil.preheader367 ]
  %.035.lcssa.i = phi double [ 0.000000e+00, %._crit_edge45.thread78.i ], [ 0.000000e+00, %.preheader.lr.ph.thread.i ], [ %i.ahd, %._crit_edge.us53.i.unr-lcssa ], [ %i.ahk, %.epil.preheader367 ]
  %i.ahl = fdiv nsz double %.035.lcssa.i, %4
  %i.ahm = tail call nsz double @llvm.sqrt.f64(double %i.ahl)
  %i.ahn = fptrunc nsz double %i.ahm to float     ; 2 uses
  %i.aho = load ptr, ptr %i.afi, align 8, !tbaa !49 ; 8 uses
  %i.ahp = mul nsw i32 %i.afn, %i.afl             ; 3 uses
  %i.ahq = icmp sgt i32 %i.afn, 0
  br i1 %i.ahq, label %.preheader40.lr.ph.i61, label %._crit_edge45.thread78.i59

._crit_edge45.thread78.i59:                       ; preds = %std_deviation.exit
  %i.ahr = sitofp nsz i32 %i.ahp to double
  br label %std_deviation.exit91

.preheader40.lr.ph.i61:                           ; preds = %std_deviation.exit
  %i.ahs = icmp sgt i32 %i.afl, 0
  br i1 %i.ahs, label %.preheader40.us.preheader.i63, label %.preheader.lr.ph.thread.i62

.preheader.lr.ph.thread.i62:                      ; preds = %.preheader40.lr.ph.i61
  %i.aht = sitofp nsz i32 %i.ahp to double
  br label %std_deviation.exit91

.preheader40.us.preheader.i63:                    ; preds = %.preheader40.lr.ph.i61
  %i.ahu = zext nneg i32 %i.afl to i64
  %wide.trip.count63.i64 = zext nneg i32 %i.afn to i64
  %flatten.tripcount125 = mul nuw nsw i64 %i.ahu, %wide.trip.count63.i64 ; 7 uses
  %unroll_iter381 = and i64 %flatten.tripcount125, 3 ; 3 uses
  %5 = icmp samesign ult i64 %flatten.tripcount125, 4
  br i1 %5, label %.epil.preheader375, label %.preheader40.us.i65

.preheader40.us.i65:                              ; preds = %.preheader40.us.preheader.i63
  %unroll_iter376 = and i64 %flatten.tripcount125, 4611686018427387900
  br label %.preheader40.us.i65.new

.preheader40.us.i65.new:                          ; preds = %.preheader40.us.i65.new, %.preheader40.us.i65
  %indvars.iv.i69 = phi i64 [ 0, %.preheader40.us.i65 ], [ %indvars.iv.next.i72.3, %.preheader40.us.i65.new ] ; 5 uses
  %.142.us.i70 = phi double [ 0.000000e+00, %.preheader40.us.i65 ], [ %i.aij, %.preheader40.us.i65.new ]
  %niter382 = phi i64 [ 0, %.preheader40.us.i65 ], [ %niter382.next.3, %.preheader40.us.i65.new ]
  %gep.i71 = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i69
  %i.ahv = load float, ptr %gep.i71, align 4, !tbaa !20
  %i.ahw = fpext nsz float %i.ahv to double
  %i.ahx = fadd nsz double %.142.us.i70, %i.ahw
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i69
  %gep.i71.1 = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %i.ahz = load float, ptr %gep.i71.1, align 4, !tbaa !20
  %i.aia = fpext nsz float %i.ahz to double
  %i.aib = fadd nsz double %i.ahx, %i.aia
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i69
  %gep.i71.2 = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aid = load float, ptr %gep.i71.2, align 4, !tbaa !20
  %i.aie = fpext nsz float %i.aid to double
  %i.aif = fadd nsz double %i.aib, %i.aie
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i69
  %gep.i71.3 = getelementptr inbounds nuw i8, ptr %i.aig, i64 12
  %i.aih = load float, ptr %gep.i71.3, align 4, !tbaa !20
  %i.aii = fpext nsz float %i.aih to double
  %i.aij = fadd nsz double %i.aif, %i.aii         ; 3 uses
  %indvars.iv.next.i72.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter382.next.3 = add i64 %niter382, 4         ; 2 uses
  %niter382.ncmp.3 = icmp eq i64 %niter382.next.3, %unroll_iter376
  br i1 %niter382.ncmp.3, label %._crit_edge.us.i74.unr-lcssa, label %.preheader40.us.i65.new, !llvm.loop !107

._crit_edge.us.i74.unr-lcssa:                     ; preds = %.preheader40.us.i65.new
  %lcmp.mod373.not = icmp eq i64 %unroll_iter381, 0
  br i1 %lcmp.mod373.not, label %._crit_edge45.i77, label %.epil.preheader375

.epil.preheader375:                               ; preds = %._crit_edge.us.i74.unr-lcssa, %.preheader40.us.preheader.i63
  %indvars.iv.i69.epil.init = phi i64 [ 0, %.preheader40.us.preheader.i63 ], [ %indvars.iv.next.i72.3, %._crit_edge.us.i74.unr-lcssa ]
  %.142.us.i70.epil.init = phi double [ 0.000000e+00, %.preheader40.us.preheader.i63 ], [ %i.aij, %._crit_edge.us.i74.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %unroll_iter381, 0
  tail call void @llvm.assume(i1 %lcmp.mod375)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader375
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.next.i72.epil, %bb.m ], [ %indvars.iv.i69.epil.init, %.epil.preheader375 ] ; 2 uses
  %.142.us.i70.epil = phi double [ %i.aim, %bb.m ], [ %.142.us.i70.epil.init, %.epil.preheader375 ]
  %epil.iter377 = phi i64 [ %epil.iter377.next, %bb.m ], [ 0, %.epil.preheader375 ]
  %gep.i71.epil = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv.i69.epil
  %i.aik = load float, ptr %gep.i71.epil, align 4, !tbaa !20
  %i.ail = fpext nsz float %i.aik to double
  %i.aim = fadd nsz double %.142.us.i70.epil, %i.ail ; 2 uses
  %indvars.iv.next.i72.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter377.next = add i64 %epil.iter377, 1   ; 2 uses
  %epil.iter377.cmp.not = icmp eq i64 %epil.iter377.next, %unroll_iter381
  br i1 %epil.iter377.cmp.not, label %._crit_edge45.i77, label %bb.m, !llvm.loop !111

._crit_edge45.i77:                                ; preds = %bb.m, %._crit_edge.us.i74.unr-lcssa
  %.lcssa342 = phi double [ %i.aij, %._crit_edge.us.i74.unr-lcssa ], [ %i.aim, %bb.m ]
  %i.ain = sitofp nsz i32 %i.ahp to double        ; 3 uses
  %i.aio = fdiv nsz double %.lcssa342, %i.ain     ; 3 uses
  %unroll_iter389 = and i64 %flatten.tripcount125, 1
  %lcmp.mod386.not = icmp eq i64 %flatten.tripcount125, 1
  br i1 %lcmp.mod386.not, label %.epil.preheader383, label %.preheader.us.i79

.preheader.us.i79:                                ; preds = %._crit_edge45.i77
  %unroll_iter383 = and i64 %flatten.tripcount125, 4611686018427387902
  br label %.preheader.us.i79.new

.preheader.us.i79.new:                            ; preds = %.preheader.us.i79.new, %.preheader.us.i79
  %indvars.iv65.i83 = phi i64 [ 0, %.preheader.us.i79 ], [ %indvars.iv.next66.i86.1, %.preheader.us.i79.new ] ; 3 uses
  %.13647.us.i84 = phi double [ 0.000000e+00, %.preheader.us.i79 ], [ %i.ajd, %.preheader.us.i79.new ]
  %niter390 = phi i64 [ 0, %.preheader.us.i79 ], [ %niter390.next.1, %.preheader.us.i79.new ]
  %gep82.i85 = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv65.i83
  %i.aip = load float, ptr %gep82.i85, align 4, !tbaa !20
  %i.aiq = fpext nsz float %i.aip to double
  %i.air = fsub nsz double %i.aiq, %i.aio
  %i.ais = fptrunc nsz double %i.air to float     ; 2 uses
  %i.ait = fmul nsz float %i.ais, %i.ais
  %i.aiu = fpext nsz float %i.ait to double
  %i.aiv = fadd nsz double %.13647.us.i84, %i.aiu
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv65.i83
  %gep82.i85.1 = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  %i.aix = load float, ptr %gep82.i85.1, align 4, !tbaa !20
  %i.aiy = fpext nsz float %i.aix to double
  %i.aiz = fsub nsz double %i.aiy, %i.aio
  %i.aja = fptrunc nsz double %i.aiz to float     ; 2 uses
  %i.ajb = fmul nsz float %i.aja, %i.aja
  %i.ajc = fpext nsz float %i.ajb to double
  %i.ajd = fadd nsz double %i.aiv, %i.ajc         ; 3 uses
  %indvars.iv.next66.i86.1 = add nuw nsw i64 %indvars.iv65.i83, 2 ; 2 uses
  %niter390.next.1 = add i64 %niter390, 2         ; 2 uses
  %niter390.ncmp.1 = icmp eq i64 %niter390.next.1, %unroll_iter383
  br i1 %niter390.ncmp.1, label %._crit_edge.us53.i88.unr-lcssa, label %.preheader.us.i79.new, !llvm.loop !110

._crit_edge.us53.i88.unr-lcssa:                   ; preds = %.preheader.us.i79.new
  %lcmp.mod380.not = icmp eq i64 %unroll_iter389, 0
  br i1 %lcmp.mod380.not, label %std_deviation.exit91, label %.epil.preheader383

.epil.preheader383:                               ; preds = %._crit_edge.us53.i88.unr-lcssa, %._crit_edge45.i77
  %indvars.iv65.i83.epil.init = phi i64 [ 0, %._crit_edge45.i77 ], [ %indvars.iv.next66.i86.1, %._crit_edge.us53.i88.unr-lcssa ]
  %.13647.us.i84.epil.init = phi double [ 0.000000e+00, %._crit_edge45.i77 ], [ %i.ajd, %._crit_edge.us53.i88.unr-lcssa ]
  %lcmp.mod382 = trunc i64 %flatten.tripcount125 to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %gep82.i85.epil = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv65.i83.epil.init
  %i.aje = load float, ptr %gep82.i85.epil, align 4, !tbaa !20
  %i.ajf = fpext nsz float %i.aje to double
  %i.ajg = fsub nsz double %i.ajf, %i.aio
  %i.ajh = fptrunc nsz double %i.ajg to float     ; 2 uses
  %i.aji = fmul nsz float %i.ajh, %i.ajh
  %i.ajj = fpext nsz float %i.aji to double
  %i.ajk = fadd nsz double %.13647.us.i84.epil.init, %i.ajj
  br label %std_deviation.exit91

std_deviation.exit91:                             ; preds = %.epil.preheader383, %._crit_edge.us53.i88.unr-lcssa, %._crit_edge45.thread78.i59, %.preheader.lr.ph.thread.i62
  %6 = phi double [ %i.ahr, %._crit_edge45.thread78.i59 ], [ %i.aht, %.preheader.lr.ph.thread.i62 ], [ %i.ain, %._crit_edge.us53.i88.unr-lcssa ], [ %i.ain, %.epil.preheader383 ]
  %.035.lcssa.i58 = phi double [ 0.000000e+00, %._crit_edge45.thread78.i59 ], [ 0.000000e+00, %.preheader.lr.ph.thread.i62 ], [ %i.ajd, %._crit_edge.us53.i88.unr-lcssa ], [ %i.ajk, %.epil.preheader383 ]
  %i.ajl = fdiv nsz double %.035.lcssa.i58, %6
  %i.ajm = tail call nsz double @llvm.sqrt.f64(double %i.ajl)
  %i.ajn = fptrunc nsz double %i.ajm to float     ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.ajp = load <2 x float>, ptr %i.ajo, align 8, !tbaa !20
  %i.ajq = insertelement <2 x float> poison, float %i.ahn, i64 0
  %i.ajr = insertelement <2 x float> %i.ajq, float %i.ajn, i64 1 ; 4 uses
  %i.ajs = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ajr, <2 x float> %i.ajp)
  store <2 x float> %i.ajs, ptr %i.ajo, align 8, !tbaa !20
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.aju = load <2 x float>, ptr %i.ajt, align 8, !tbaa !20
  %i.ajv = fadd nsz <2 x float> %i.aju, %i.ajr
  store <2 x float> %i.ajv, ptr %i.ajt, align 8, !tbaa !20
  %i.ajw = load i64, ptr %i.n, align 8, !tbaa !26
  %i.ajx = icmp eq i64 %i.ajw, 1
  br i1 %i.ajx, label %.thread, label %bb.n

bb.n:                                             ; preds = %std_deviation.exit91
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ajz = load <2 x float>, ptr %i.ajy, align 8, !tbaa !20
  %i.aka = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ajr, <2 x float> %i.ajz)
  br label %.thread

.thread:                                          ; preds = %std_deviation.exit91, %bb.n
  %i.akb = phi <2 x float> [ %i.aka, %bb.n ], [ %i.ajr, %std_deviation.exit91 ]
  %i.akc = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <2 x float> %i.akb, ptr %i.akc, align 8, !tbaa !20
  %i.akd = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ake = fpext nsz float %i.ahn to double
  %i.akf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.ake) #8 ; 0 uses
  %i.akg = call i32 @av_dict_set(ptr noundef nonnull %i.akd, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b, i32 noundef 0) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.akh = fpext nsz float %i.ajn to double
  %i.aki = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.akh) #8 ; 0 uses
  %i.akj = call i32 @av_dict_set(ptr noundef nonnull %i.akd, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 0) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.akk = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 56
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !112
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !113
  %i.ako = call i32 @ff_filter_frame(ptr noundef %i.akn, ptr noundef nonnull %1) #8
  ret i32 %i.ako
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !115
  %i.h = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.g) #8
  call void @av_image_fill_max_pixsteps(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  call void @av_freep(ptr noundef nonnull %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  call void @av_freep(ptr noundef nonnull %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.k) #8
  %i.l = load i32, ptr %i.a, align 16, !tbaa !45  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !117  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !47
  %i.t = icmp ne i32 %i.l, 1
  %i.u = sext i32 %i.o to i64
  %i.v = zext i1 %i.t to i64
  %i.w = shl nsw i64 %i.u, %i.v
  %i.x = sext i32 %i.r to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = call noalias ptr @av_malloc(i64 noundef %i.y) #8
  store ptr %i.z, ptr %i.i, align 8, !tbaa !50
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !48
  %i.ab = add nsw i32 %i.aa, -2
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !47
  %i.af = add nsw i32 %i.ae, -2
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.ad, %i.ag
  %i.ai = call noalias ptr @av_malloc(i64 noundef %i.ah) #8
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !44
  %i.aj = load i32, ptr %i.p, align 4, !tbaa !48
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = load i32, ptr %i.s, align 8, !tbaa !47
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.al, %i.an
  %i.ap = call noalias ptr @av_malloc(i64 noundef %i.ao) #8 ; 2 uses
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !49
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !50
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !44
  %.not29 = icmp eq ptr %i.ar, null
  %.not30 = icmp eq ptr %i.ap, null
  %or.cond = select i1 %.not29, i1 true, i1 %.not30
  %spec.select = select i1 %or.cond, i32 -12, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %spec.select, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #5

declare void @av_image_fill_max_pixsteps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #5

declare ptr @av_default_item_name(ptr noundef) #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !7, i64 0}
!22 = !{!23, !6, i64 84}
!23 = !{!"SiTiContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !24, i64 24, !14, i64 32, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !25, i64 64, !25, i64 72, !6, i64 80, !6, i64 84}
!24 = !{!"long", !7, i64 0}
!25 = !{!"p1 float", !12, i64 0}
!26 = !{!23, !24, i64 24}
!27 = !{!28, !29, i64 16}
!28 = !{!"AVFilterLink", !29, i64 0, !15, i64 8, !29, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!29 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!33 = !{!"AVFilterFormatsConfig", !34, i64 0, !34, i64 8, !35, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!34 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!35 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!36 = !{!37, !6, i64 280}
!37 = !{!"AVFrame", !7, i64 0, !7, i64 64, !38, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !30, i64 124, !24, i64 136, !24, i64 144, !30, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !39, i64 248, !6, i64 256, !32, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !24, i64 304, !40, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !12, i64 376, !31, i64 384, !24, i64 408, !6, i64 416}
!38 = !{!"p2 omnipotent char", !17, i64 0}
!39 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!40 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!41 = !{!37, !6, i64 116}
!42 = !{!23, !6, i64 80}
!43 = !{!14, !14, i64 0}
!44 = !{!23, !25, i64 64}
!45 = !{!6, !6, i64 0}
!46 = !{!23, !6, i64 8}
!47 = !{!23, !6, i64 16}
!48 = !{!23, !6, i64 12}
!49 = !{!23, !25, i64 72}
!50 = !{!23, !14, i64 32}
!51 = !{!7, !7, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !7, i64 0}
!57 = distinct !{!57, !53, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !53, !58}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53, !58, !59}
!63 = distinct !{!63, !53, !58}
!64 = !{!65}
!65 = distinct !{!65, !66}
!66 = distinct !{!66, !"LVerDomain"}
!67 = !{!68}
!68 = distinct !{!68, !66}
!69 = !{!70}
!70 = distinct !{!70, !66}
!71 = !{!72}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !53, !58, !59}
!74 = distinct !{!74, !53, !58}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !53, !58, !59}
!81 = distinct !{!81, !53, !58}
!82 = distinct !{!82, !53}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !53, !58, !59}
!89 = distinct !{!89, !53, !58}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !53, !58, !59}
!96 = distinct !{!96, !53, !58}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !53, !58, !59}
!103 = distinct !{!103, !53, !58}
!104 = distinct !{!104, !53, !105}
!105 = !{!"llvm.loop.unswitch.partial.disable"}
!106 = distinct !{!106, !53}
!107 = distinct !{!107, !53}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = distinct !{!110, !53}
!111 = distinct !{!111, !109}
!112 = !{!10, !16, i64 56}
!113 = !{!114, !114, i64 0}
!114 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!115 = !{!28, !6, i64 36}
!116 = !{!28, !6, i64 40}
!117 = !{!28, !6, i64 44}
end_hunk_0
