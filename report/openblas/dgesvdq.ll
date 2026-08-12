loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dgesvdq_:bb.a
  %i.axd = mul nsw i64 %i.axc, %i.awg
  %invariant.gep2568 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv2325 ; 11 uses
  %invariant.gep2570 = getelementptr [8 x i8], ptr %i.p, i64 %i.axd ; 11 uses
  %min.iters.check2957 = icmp ugt i64 %i.awx, 3
  %or.cond3228 = select i1 %min.iters.check2957, i1 %ident.check2945.not, i1 false
  br i1 %or.cond3228, label %vector.memcheck2946, label %vec.epilog.scalar.ph2974.preheader

vector.memcheck2946:                              ; preds = %iter.check2973
  %bound02953 = icmp ult ptr %scevgep2949, %scevgep2952
  %bound12954 = icmp ult ptr %scevgep2951, %scevgep2950
  %found.conflict2955 = and i1 %bound02953, %bound12954
  br i1 %found.conflict2955, label %vec.epilog.scalar.ph2974.preheader, label %vector.main.loop.iter.check2958

vector.main.loop.iter.check2958:                  ; preds = %vector.memcheck2946
  %min.iters.check2959 = icmp ult i64 %i.awx, 16
  br i1 %min.iters.check2959, label %vec.epilog.ph2977, label %vector.ph2960

vector.ph2960:                                    ; preds = %vector.main.loop.iter.check2958
  %i.axe = and i64 %i.awx, 12
  %n.vec2961 = and i64 %i.awx, -16                ; 4 uses
  %i.axf = add i64 %indvars.iv2325, %n.vec2961
  br label %vector.body2962

vector.body2962:                                  ; preds = %vector.body2962, %vector.ph2960
  %index2963 = phi i64 [ 0, %vector.ph2960 ], [ %index.next2968, %vector.body2962 ] ; 2 uses
  %i.axg = add nuw i64 %indvars.iv2325, %index2963 ; 2 uses
  %i.axh = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.axg ; 4 uses
  %i.axi = getelementptr i8, ptr %i.axh, i64 32
  %i.axj = getelementptr i8, ptr %i.axh, i64 64
  %i.axk = getelementptr i8, ptr %i.axh, i64 96
  %wide.load2964 = load <4 x double>, ptr %i.axh, align 8, !tbaa !9, !alias.scope !119
  %wide.load2965 = load <4 x double>, ptr %i.axi, align 8, !tbaa !9, !alias.scope !119
  %wide.load2966 = load <4 x double>, ptr %i.axj, align 8, !tbaa !9, !alias.scope !119
  %wide.load2967 = load <4 x double>, ptr %i.axk, align 8, !tbaa !9, !alias.scope !119
  %i.axl = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.axg ; 4 uses
  %i.axm = getelementptr i8, ptr %i.axl, i64 32
  %i.axn = getelementptr i8, ptr %i.axl, i64 64
  %i.axo = getelementptr i8, ptr %i.axl, i64 96
  store <4 x double> %wide.load2964, ptr %i.axl, align 8, !tbaa !9, !alias.scope !122, !noalias !119
  store <4 x double> %wide.load2965, ptr %i.axm, align 8, !tbaa !9, !alias.scope !122, !noalias !119
  store <4 x double> %wide.load2966, ptr %i.axn, align 8, !tbaa !9, !alias.scope !122, !noalias !119
  store <4 x double> %wide.load2967, ptr %i.axo, align 8, !tbaa !9, !alias.scope !122, !noalias !119
  %index.next2968 = add nuw i64 %index2963, 16    ; 2 uses
  %i.axp = icmp eq i64 %index.next2968, %n.vec2961
  br i1 %i.axp, label %middle.block2969, label %vector.body2962, !llvm.loop !124

middle.block2969:                                 ; preds = %vector.body2962
  %cmp.n2970 = icmp eq i64 %i.awx, %n.vec2961
  br i1 %cmp.n2970, label %._crit_edge2094, label %vec.epilog.iter.check2975

vec.epilog.iter.check2975:                        ; preds = %middle.block2969
  %min.epilog.iters.check2976 = icmp eq i64 %i.axe, 0
  br i1 %min.epilog.iters.check2976, label %vec.epilog.scalar.ph2974.preheader, label %vec.epilog.ph2977, !prof !36

vec.epilog.ph2977:                                ; preds = %vector.main.loop.iter.check2958, %vec.epilog.iter.check2975
  %vec.epilog.resume.val2971 = phi i64 [ %n.vec2961, %vec.epilog.iter.check2975 ], [ 0, %vector.main.loop.iter.check2958 ]
  %n.vec2978 = and i64 %i.awx, -4                 ; 3 uses
  %i.axq = add i64 %indvars.iv2325, %n.vec2978
  br label %vec.epilog.vector.body2979

vec.epilog.vector.body2979:                       ; preds = %vec.epilog.vector.body2979, %vec.epilog.ph2977
  %index2980 = phi i64 [ %vec.epilog.resume.val2971, %vec.epilog.ph2977 ], [ %index.next2982, %vec.epilog.vector.body2979 ] ; 2 uses
  %i.axr = add nuw i64 %indvars.iv2325, %index2980 ; 2 uses
  %i.axs = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.axr
  %wide.load2981 = load <4 x double>, ptr %i.axs, align 8, !tbaa !9, !alias.scope !119
  %i.axt = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.axr
  store <4 x double> %wide.load2981, ptr %i.axt, align 8, !tbaa !9, !alias.scope !122, !noalias !119
  %index.next2982 = add nuw i64 %index2980, 4     ; 2 uses
  %i.axu = icmp eq i64 %index.next2982, %n.vec2978
  br i1 %i.axu, label %vec.epilog.middle.block2983, label %vec.epilog.vector.body2979, !llvm.loop !125

vec.epilog.middle.block2983:                      ; preds = %vec.epilog.vector.body2979
  %cmp.n2984 = icmp eq i64 %i.awx, %n.vec2978
  br i1 %cmp.n2984, label %._crit_edge2094, label %vec.epilog.scalar.ph2974.preheader

vec.epilog.scalar.ph2974.preheader:               ; preds = %vector.memcheck2946, %iter.check2973, %vec.epilog.iter.check2975, %vec.epilog.middle.block2983
  %indvars.iv2327.ph = phi i64 [ %indvars.iv2325, %iter.check2973 ], [ %indvars.iv2325, %vector.memcheck2946 ], [ %i.axf, %vec.epilog.iter.check2975 ], [ %i.axq, %vec.epilog.middle.block2983 ] ; 4 uses
  %i.axv = sub i64 %wide.trip.count2330, %indvars.iv2327.ph
  %xtraiter3261 = and i64 %i.axv, 7               ; 2 uses
  %lcmp.mod3262.not = icmp eq i64 %xtraiter3261, 0
  br i1 %lcmp.mod3262.not, label %vec.epilog.scalar.ph2974.prol.loopexit, label %vec.epilog.scalar.ph2974.prol

vec.epilog.scalar.ph2974.prol:                    ; preds = %vec.epilog.scalar.ph2974.preheader, %vec.epilog.scalar.ph2974.prol
  %indvars.iv2327.prol = phi i64 [ %indvars.iv.next2328.prol, %vec.epilog.scalar.ph2974.prol ], [ %indvars.iv2327.ph, %vec.epilog.scalar.ph2974.preheader ] ; 3 uses
  %prol.iter3263 = phi i64 [ %prol.iter3263.next, %vec.epilog.scalar.ph2974.prol ], [ 0, %vec.epilog.scalar.ph2974.preheader ]
  %i.axw = mul nsw i64 %indvars.iv2327.prol, %i.awc
  %gep2569.prol = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.axw
  %i.axx = load double, ptr %gep2569.prol, align 8, !tbaa !9
  %gep2571.prol = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv2327.prol
  store double %i.axx, ptr %gep2571.prol, align 8, !tbaa !9
  %indvars.iv.next2328.prol = add nuw nsw i64 %indvars.iv2327.prol, 1 ; 2 uses
  %prol.iter3263.next = add i64 %prol.iter3263, 1 ; 2 uses
  %prol.iter3263.cmp.not = icmp eq i64 %prol.iter3263.next, %xtraiter3261
  br i1 %prol.iter3263.cmp.not, label %vec.epilog.scalar.ph2974.prol.loopexit, label %vec.epilog.scalar.ph2974.prol, !llvm.loop !126

vec.epilog.scalar.ph2974.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2974.prol, %vec.epilog.scalar.ph2974.preheader
  %indvars.iv2327.unr = phi i64 [ %indvars.iv2327.ph, %vec.epilog.scalar.ph2974.preheader ], [ %indvars.iv.next2328.prol, %vec.epilog.scalar.ph2974.prol ]
  %i.axy = sub i64 %indvars.iv2327.ph, %wide.trip.count2330
  %i.axz = icmp ugt i64 %i.axy, -8
  br i1 %i.axz, label %._crit_edge2094, label %vec.epilog.scalar.ph2974

vec.epilog.scalar.ph2974:                         ; preds = %vec.epilog.scalar.ph2974.prol.loopexit, %vec.epilog.scalar.ph2974
  %indvars.iv2327 = phi i64 [ %indvars.iv.next2328.7, %vec.epilog.scalar.ph2974 ], [ %indvars.iv2327.unr, %vec.epilog.scalar.ph2974.prol.loopexit ] ; 10 uses
  %i.aya = mul nsw i64 %indvars.iv2327, %i.awc
  %gep2569 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.aya
  %i.ayb = load double, ptr %gep2569, align 8, !tbaa !9
  %gep2571 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv2327
  store double %i.ayb, ptr %gep2571, align 8, !tbaa !9
  %indvars.iv.next2328 = add nuw nsw i64 %indvars.iv2327, 1 ; 2 uses
  %i.ayc = mul nsw i64 %indvars.iv.next2328, %i.awc
  %gep2569.1 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.ayc
  %i.ayd = load double, ptr %gep2569.1, align 8, !tbaa !9
  %gep2571.1 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328
  store double %i.ayd, ptr %gep2571.1, align 8, !tbaa !9
  %indvars.iv.next2328.1 = add nuw nsw i64 %indvars.iv2327, 2 ; 2 uses
  %i.aye = mul nsw i64 %indvars.iv.next2328.1, %i.awc
  %gep2569.2 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.aye
  %i.ayf = load double, ptr %gep2569.2, align 8, !tbaa !9
  %gep2571.2 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328.1
  store double %i.ayf, ptr %gep2571.2, align 8, !tbaa !9
  %indvars.iv.next2328.2 = add nuw nsw i64 %indvars.iv2327, 3 ; 2 uses
  %i.ayg = mul nsw i64 %indvars.iv.next2328.2, %i.awc
  %gep2569.3 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.ayg
  %i.ayh = load double, ptr %gep2569.3, align 8, !tbaa !9
  %gep2571.3 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328.2
  store double %i.ayh, ptr %gep2571.3, align 8, !tbaa !9
  %indvars.iv.next2328.3 = add nuw nsw i64 %indvars.iv2327, 4 ; 2 uses
  %i.ayi = mul nsw i64 %indvars.iv.next2328.3, %i.awc
  %gep2569.4 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.ayi
  %i.ayj = load double, ptr %gep2569.4, align 8, !tbaa !9
  %gep2571.4 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328.3
  store double %i.ayj, ptr %gep2571.4, align 8, !tbaa !9
  %indvars.iv.next2328.4 = add nuw nsw i64 %indvars.iv2327, 5 ; 2 uses
  %i.ayk = mul nsw i64 %indvars.iv.next2328.4, %i.awc
  %gep2569.5 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.ayk
  %i.ayl = load double, ptr %gep2569.5, align 8, !tbaa !9
  %gep2571.5 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328.4
  store double %i.ayl, ptr %gep2571.5, align 8, !tbaa !9
  %indvars.iv.next2328.5 = add nuw nsw i64 %indvars.iv2327, 6 ; 2 uses
  %i.aym = mul nsw i64 %indvars.iv.next2328.5, %i.awc
  %gep2569.6 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.aym
  %i.ayn = load double, ptr %gep2569.6, align 8, !tbaa !9
  %gep2571.6 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328.5
  store double %i.ayn, ptr %gep2571.6, align 8, !tbaa !9
  %indvars.iv.next2328.6 = add nuw nsw i64 %indvars.iv2327, 7 ; 2 uses
  %i.ayo = mul nsw i64 %indvars.iv.next2328.6, %i.awc
  %gep2569.7 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %i.ayo
  %i.ayp = load double, ptr %gep2569.7, align 8, !tbaa !9
  %gep2571.7 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %indvars.iv.next2328.6
  store double %i.ayp, ptr %gep2571.7, align 8, !tbaa !9
  %indvars.iv.next2328.7 = add nuw nsw i64 %indvars.iv2327, 8 ; 2 uses
  %exitcond2331.not.7 = icmp eq i64 %indvars.iv.next2328.7, %wide.trip.count2330
  br i1 %exitcond2331.not.7, label %._crit_edge2094, label %vec.epilog.scalar.ph2974, !llvm.loop !127

._crit_edge2094:                                  ; preds = %vec.epilog.scalar.ph2974.prol.loopexit, %vec.epilog.scalar.ph2974, %middle.block2969, %vec.epilog.middle.block2983, %bb.gb
  %indvars.iv.next2326 = add nuw nsw i64 %indvars.iv2325, 1 ; 2 uses
  %exitcond2334.not = icmp eq i64 %indvars.iv.next2326, %wide.trip.count2333
  %indvar.next2948 = add i64 %indvar2947, 1
  br i1 %exitcond2334.not, label %._crit_edge2099, label %bb.gb, !llvm.loop !128

._crit_edge2099:                                  ; preds = %._crit_edge2094
  store i32 %i.awh, ptr %i.f, align 4, !tbaa !8
  %.not2666 = icmp eq i32 %.pr1921, 1
  br i1 %.not2666, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %._crit_edge2099
  %i.ayq = add nsw i32 %.pr1921, -1               ; 2 uses
  store i32 %i.ayq, ptr %i.a, align 4, !tbaa !8
  store i32 %i.ayq, ptr %i.b, align 4, !tbaa !8
  %i.ayr = add nuw nsw i32 %.pr1921, 2
  %i.ays = mul nsw i32 %i.ayr, %i.n
  %i.ayt = sext i32 %i.ays to i64
  %i.ayu = getelementptr [8 x i8], ptr %i.p, i64 %i.ayt
  %i.ayv = getelementptr i8, ptr %i.ayu, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.ayv, ptr noundef nonnull %11) #6
  %.pre2426 = load i32, ptr %6, align 4, !tbaa !8
  %.pre2427 = load i32, ptr %i.h, align 4, !tbaa !8
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge2099.thread, %bb.gc, %._crit_edge2099
  %i.ayw = phi i32 [ %.pre2427, %bb.gc ], [ %.pr1921, %._crit_edge2099 ], [ %.pr1921, %._crit_edge2099.thread ] ; 2 uses
  %i.ayx = phi i32 [ %.pre2426, %bb.gc ], [ %i.aim, %._crit_edge2099 ], [ %i.aim, %._crit_edge2099.thread ] ; 2 uses
  %i.ayy = load i32, ptr %18, align 4, !tbaa !8
  %i.ayz = add i32 %i.ayw, %i.ayx                 ; 2 uses
  %i.aza = sub i32 %i.ayy, %i.ayz
  store i32 %i.aza, ptr %i.a, align 4, !tbaa !8
  %i.azb = add nsw i32 %i.ayw, 1
  %i.azc = mul nsw i32 %i.azb, %i.n
  %i.azd = sext i32 %i.azc to i64
  %i.aze = getelementptr [8 x i8], ptr %i.p, i64 %i.azd
  %i.azf = getelementptr i8, ptr %i.aze, i64 8
  %i.azg = sext i32 %i.ayx to i64
  %i.azh = getelementptr [8 x i8], ptr %i.u, i64 %i.azg
  %i.azi = getelementptr i8, ptr %i.azh, i64 8
  %i.azj = sext i32 %i.ayz to i64
  %i.azk = getelementptr [8 x i8], ptr %i.u, i64 %i.azj
  %i.azl = getelementptr i8, ptr %i.azk, i64 8
  call void @dgeqrf_(ptr noundef nonnull %6, ptr noundef nonnull %i.h, ptr noundef %i.azf, ptr noundef nonnull %11, ptr noundef %i.azi, ptr noundef %i.azl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #6
  %i.azm = load i32, ptr %i.h, align 4, !tbaa !8  ; 4 uses
  %.not18422106 = icmp slt i32 %i.azm, 1
  br i1 %.not18422106, label %._crit_edge2110, label %.lr.ph2109.a

.lr.ph2109.a:                                     ; preds = %bb.gd
  %22 = load i32, ptr %6, align 4, !tbaa !8       ; 2 uses
  %.not18432101 = icmp slt i32 %22, 1
  %23 = zext nneg i32 %i.azm to i64               ; 12 uses
  %24 = sext i32 %i.n to i64                      ; 9 uses
  %25 = add i32 %22, 1                            ; 3 uses
  %26 = sext i32 %i.q to i64                      ; 3 uses
  %27 = add nuw i32 %i.azm, 1                     ; 2 uses
  %wide.trip.count2343 = zext i32 %27 to i64      ; 2 uses
  %wide.trip.count2338 = zext i32 %25 to i64      ; 5 uses
  %i.azn = shl nsw i64 %26, 3
  %i.azo = shl nsw i64 %i.r, 3                    ; 2 uses
  %i.azp = getelementptr i8, ptr %12, i64 %i.azn
  %i.azq = getelementptr i8, ptr %i.azp, i64 %i.azo
  %scevgep2989 = getelementptr i8, ptr %i.azq, i64 8
  %i.azr = shl nuw nsw i64 %wide.trip.count2343, 3 ; 2 uses
  %i.azs = add nsw i64 %i.azr, -8
  %i.azt = mul i64 %i.azs, %26
  %i.azu = shl nuw nsw i64 %wide.trip.count2338, 3 ; 2 uses
  %i.azv = getelementptr i8, ptr %12, i64 %i.azt
  %i.azw = getelementptr i8, ptr %i.azv, i64 %i.azo
  %scevgep2990 = getelementptr i8, ptr %i.azw, i64 %i.azu
  %i.azx = shl nuw nsw i64 %23, 3                 ; 2 uses
  %scevgep2991 = getelementptr i8, ptr %10, i64 %i.azx
  %i.azy = getelementptr i8, ptr %10, i64 %i.azx
  %i.azz = getelementptr i8, ptr %i.azy, i64 %i.azr
  %i.baa = getelementptr i8, ptr %i.azz, i64 %i.azu
  %scevgep2992 = getelementptr i8, ptr %i.baa, i64 -24
  %i.bab = add nsw i64 %wide.trip.count2338, -1   ; 5 uses
  %min.iters.check2997 = icmp ugt i32 %25, 4
  %ident.check2987.not = icmp eq i32 %i.n, 1
  %or.cond3229 = select i1 %min.iters.check2997, i1 %ident.check2987.not, i1 false
  %bound02993 = icmp ult ptr %scevgep2989, %scevgep2992
  %bound12994 = icmp ult ptr %scevgep2991, %scevgep2990
  %found.conflict2995 = and i1 %bound02993, %bound12994
  %stride.check = icmp slt i32 %i.q, 0
  %i.bac = or i1 %found.conflict2995, %stride.check
  %min.iters.check2999 = icmp ult i32 %25, 17
  %i.bad = and i64 %i.bab, 12
  %n.vec3001 = and i64 %i.bab, -16                ; 4 uses
  %i.bae = or disjoint i64 %n.vec3001, 1
  %cmp.n3010 = icmp eq i64 %i.bab, %n.vec3001
  %min.epilog.iters.check3016 = icmp eq i64 %i.bad, 0
  %n.vec3018 = and i64 %i.bab, -4                 ; 3 uses
  %i.baf = or disjoint i64 %n.vec3018, 1
  %cmp.n3024 = icmp eq i64 %i.bab, %n.vec3018
  br label %28

28:                                               ; preds = %.lr.ph2109.a, %._crit_edge2105
  %indvars.iv2340 = phi i64 [ 1, %.lr.ph2109.a ], [ %indvars.iv.next2341, %._crit_edge2105 ] ; 3 uses
  br i1 %.not18432101, label %._crit_edge2105, label %iter.check3013

iter.check3013:                                   ; preds = %28
  %i.bag = mul nsw i64 %indvars.iv2340, %26
  %invariant.gep2572 = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv2340 ; 11 uses
  %invariant.gep2574 = getelementptr [8 x i8], ptr %i.s, i64 %i.bag ; 11 uses
  %or.cond3229.not = xor i1 %or.cond3229, true
  %brmerge = select i1 %or.cond3229.not, i1 true, i1 %i.bac
  br i1 %brmerge, label %vec.epilog.scalar.ph3014.preheader, label %vector.main.loop.iter.check2998

vector.main.loop.iter.check2998:                  ; preds = %iter.check3013
  br i1 %min.iters.check2999, label %vec.epilog.ph3017, label %vector.ph3000

vector.ph3000:                                    ; preds = %vector.main.loop.iter.check2998
  %invariant.gep3323 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %23
  br label %vector.body3002

vector.body3002:                                  ; preds = %vector.body3002, %vector.ph3000
  %index3003 = phi i64 [ 0, %vector.ph3000 ], [ %index.next3008, %vector.body3002 ] ; 2 uses
  %i.bah = or disjoint i64 %index3003, 1          ; 2 uses
  %gep3324 = getelementptr [8 x i8], ptr %invariant.gep3323, i64 %i.bah ; 4 uses
  %i.bai = getelementptr i8, ptr %gep3324, i64 32
  %i.baj = getelementptr i8, ptr %gep3324, i64 64
  %i.bak = getelementptr i8, ptr %gep3324, i64 96
  %wide.load3004 = load <4 x double>, ptr %gep3324, align 8, !tbaa !9, !alias.scope !129
  %wide.load3005 = load <4 x double>, ptr %i.bai, align 8, !tbaa !9, !alias.scope !129
  %wide.load3006 = load <4 x double>, ptr %i.baj, align 8, !tbaa !9, !alias.scope !129
  %wide.load3007 = load <4 x double>, ptr %i.bak, align 8, !tbaa !9, !alias.scope !129
  %i.bal = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %i.bah ; 4 uses
  %i.bam = getelementptr i8, ptr %i.bal, i64 32
  %i.ban = getelementptr i8, ptr %i.bal, i64 64
  %i.bao = getelementptr i8, ptr %i.bal, i64 96
  store <4 x double> %wide.load3004, ptr %i.bal, align 8, !tbaa !9, !alias.scope !132, !noalias !129
  store <4 x double> %wide.load3005, ptr %i.bam, align 8, !tbaa !9, !alias.scope !132, !noalias !129
  store <4 x double> %wide.load3006, ptr %i.ban, align 8, !tbaa !9, !alias.scope !132, !noalias !129
  store <4 x double> %wide.load3007, ptr %i.bao, align 8, !tbaa !9, !alias.scope !132, !noalias !129
  %index.next3008 = add nuw i64 %index3003, 16    ; 2 uses
  %i.bap = icmp eq i64 %index.next3008, %n.vec3001
  br i1 %i.bap, label %middle.block3009, label %vector.body3002, !llvm.loop !134

middle.block3009:                                 ; preds = %vector.body3002
  br i1 %cmp.n3010, label %._crit_edge2105, label %vec.epilog.iter.check3015

vec.epilog.iter.check3015:                        ; preds = %middle.block3009
  br i1 %min.epilog.iters.check3016, label %vec.epilog.scalar.ph3014.preheader, label %vec.epilog.ph3017, !prof !36

vec.epilog.ph3017:                                ; preds = %vector.main.loop.iter.check2998, %vec.epilog.iter.check3015
  %vec.epilog.resume.val3011 = phi i64 [ %n.vec3001, %vec.epilog.iter.check3015 ], [ 0, %vector.main.loop.iter.check2998 ]
  %invariant.gep3325 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %23
  br label %vec.epilog.vector.body3019

vec.epilog.vector.body3019:                       ; preds = %vec.epilog.vector.body3019, %vec.epilog.ph3017
  %index3020 = phi i64 [ %vec.epilog.resume.val3011, %vec.epilog.ph3017 ], [ %index.next3022, %vec.epilog.vector.body3019 ] ; 2 uses
  %i.baq = or disjoint i64 %index3020, 1          ; 2 uses
  %gep3326 = getelementptr [8 x i8], ptr %invariant.gep3325, i64 %i.baq
  %wide.load3021 = load <4 x double>, ptr %gep3326, align 8, !tbaa !9, !alias.scope !129
  %i.bar = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %i.baq
  store <4 x double> %wide.load3021, ptr %i.bar, align 8, !tbaa !9, !alias.scope !132, !noalias !129
  %index.next3022 = add nuw i64 %index3020, 4     ; 2 uses
  %i.bas = icmp eq i64 %index.next3022, %n.vec3018
  br i1 %i.bas, label %vec.epilog.middle.block3023, label %vec.epilog.vector.body3019, !llvm.loop !135

vec.epilog.middle.block3023:                      ; preds = %vec.epilog.vector.body3019
  br i1 %cmp.n3024, label %._crit_edge2105, label %vec.epilog.scalar.ph3014.preheader

vec.epilog.scalar.ph3014.preheader:               ; preds = %iter.check3013, %vec.epilog.iter.check3015, %vec.epilog.middle.block3023
  %indvars.iv2335.ph = phi i64 [ 1, %iter.check3013 ], [ %i.baf, %vec.epilog.middle.block3023 ], [ %i.bae, %vec.epilog.iter.check3015 ] ; 4 uses
  %i.bat = sub nsw i64 %wide.trip.count2338, %indvars.iv2335.ph
  %xtraiter3264 = and i64 %i.bat, 7               ; 2 uses
  %lcmp.mod3265.not = icmp eq i64 %xtraiter3264, 0
  br i1 %lcmp.mod3265.not, label %vec.epilog.scalar.ph3014.prol.loopexit, label %vec.epilog.scalar.ph3014.prol

vec.epilog.scalar.ph3014.prol:                    ; preds = %vec.epilog.scalar.ph3014.preheader, %vec.epilog.scalar.ph3014.prol
  %indvars.iv2335.prol = phi i64 [ %indvars.iv.next2336.prol, %vec.epilog.scalar.ph3014.prol ], [ %indvars.iv2335.ph, %vec.epilog.scalar.ph3014.preheader ] ; 3 uses
  %prol.iter3266 = phi i64 [ %prol.iter3266.next, %vec.epilog.scalar.ph3014.prol ], [ 0, %vec.epilog.scalar.ph3014.preheader ]
  %i.bau = add nuw nsw i64 %indvars.iv2335.prol, %23
  %i.bav = mul nsw i64 %i.bau, %24
  %gep2573.prol = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bav
  %i.baw = load double, ptr %gep2573.prol, align 8, !tbaa !9
  %gep2575.prol = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv2335.prol
  store double %i.baw, ptr %gep2575.prol, align 8, !tbaa !9
  %indvars.iv.next2336.prol = add nuw nsw i64 %indvars.iv2335.prol, 1 ; 2 uses
  %prol.iter3266.next = add i64 %prol.iter3266, 1 ; 2 uses
  %prol.iter3266.cmp.not = icmp eq i64 %prol.iter3266.next, %xtraiter3264
  br i1 %prol.iter3266.cmp.not, label %vec.epilog.scalar.ph3014.prol.loopexit, label %vec.epilog.scalar.ph3014.prol, !llvm.loop !136

vec.epilog.scalar.ph3014.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3014.prol, %vec.epilog.scalar.ph3014.preheader
  %indvars.iv2335.unr = phi i64 [ %indvars.iv2335.ph, %vec.epilog.scalar.ph3014.preheader ], [ %indvars.iv.next2336.prol, %vec.epilog.scalar.ph3014.prol ]
  %i.bax = sub nsw i64 %indvars.iv2335.ph, %wide.trip.count2338
  %i.bay = icmp ugt i64 %i.bax, -8
  br i1 %i.bay, label %._crit_edge2105, label %vec.epilog.scalar.ph3014

vec.epilog.scalar.ph3014:                         ; preds = %vec.epilog.scalar.ph3014.prol.loopexit, %vec.epilog.scalar.ph3014
  %indvars.iv2335 = phi i64 [ %indvars.iv.next2336.7, %vec.epilog.scalar.ph3014 ], [ %indvars.iv2335.unr, %vec.epilog.scalar.ph3014.prol.loopexit ] ; 10 uses
  %i.baz = add nuw nsw i64 %indvars.iv2335, %23
  %i.bba = mul nsw i64 %i.baz, %24
  %gep2573 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bba
  %i.bbb = load double, ptr %gep2573, align 8, !tbaa !9
  %gep2575 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv2335
  store double %i.bbb, ptr %gep2575, align 8, !tbaa !9
  %indvars.iv.next2336 = add nuw nsw i64 %indvars.iv2335, 1 ; 2 uses
  %i.bbc = add nuw nsw i64 %indvars.iv.next2336, %23
  %i.bbd = mul nsw i64 %i.bbc, %24
  %gep2573.1 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbd
  %i.bbe = load double, ptr %gep2573.1, align 8, !tbaa !9
  %gep2575.1 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336
  store double %i.bbe, ptr %gep2575.1, align 8, !tbaa !9
  %indvars.iv.next2336.1 = add nuw nsw i64 %indvars.iv2335, 2 ; 2 uses
  %i.bbf = add nuw nsw i64 %indvars.iv.next2336.1, %23
  %i.bbg = mul nsw i64 %i.bbf, %24
  %gep2573.2 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbg
  %i.bbh = load double, ptr %gep2573.2, align 8, !tbaa !9
  %gep2575.2 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336.1
  store double %i.bbh, ptr %gep2575.2, align 8, !tbaa !9
  %indvars.iv.next2336.2 = add nuw nsw i64 %indvars.iv2335, 3 ; 2 uses
  %i.bbi = add nuw nsw i64 %indvars.iv.next2336.2, %23
  %i.bbj = mul nsw i64 %i.bbi, %24
  %gep2573.3 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbj
  %i.bbk = load double, ptr %gep2573.3, align 8, !tbaa !9
  %gep2575.3 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336.2
  store double %i.bbk, ptr %gep2575.3, align 8, !tbaa !9
  %indvars.iv.next2336.3 = add nuw nsw i64 %indvars.iv2335, 4 ; 2 uses
  %i.bbl = add nuw nsw i64 %indvars.iv.next2336.3, %23
  %i.bbm = mul nsw i64 %i.bbl, %24
  %gep2573.4 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbm
  %i.bbn = load double, ptr %gep2573.4, align 8, !tbaa !9
  %gep2575.4 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336.3
  store double %i.bbn, ptr %gep2575.4, align 8, !tbaa !9
  %indvars.iv.next2336.4 = add nuw nsw i64 %indvars.iv2335, 5 ; 2 uses
  %i.bbo = add nuw nsw i64 %indvars.iv.next2336.4, %23
  %i.bbp = mul nsw i64 %i.bbo, %24
  %gep2573.5 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbp
  %i.bbq = load double, ptr %gep2573.5, align 8, !tbaa !9
  %gep2575.5 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336.4
  store double %i.bbq, ptr %gep2575.5, align 8, !tbaa !9
  %indvars.iv.next2336.5 = add nuw nsw i64 %indvars.iv2335, 6 ; 2 uses
  %i.bbr = add nuw nsw i64 %indvars.iv.next2336.5, %23
  %i.bbs = mul nsw i64 %i.bbr, %24
  %gep2573.6 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbs
  %i.bbt = load double, ptr %gep2573.6, align 8, !tbaa !9
  %gep2575.6 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336.5
  store double %i.bbt, ptr %gep2575.6, align 8, !tbaa !9
  %indvars.iv.next2336.6 = add nuw nsw i64 %indvars.iv2335, 7 ; 2 uses
  %i.bbu = add nuw nsw i64 %indvars.iv.next2336.6, %23
  %i.bbv = mul nsw i64 %i.bbu, %24
  %gep2573.7 = getelementptr [8 x i8], ptr %invariant.gep2572, i64 %i.bbv
  %i.bbw = load double, ptr %gep2573.7, align 8, !tbaa !9
  %gep2575.7 = getelementptr [8 x i8], ptr %invariant.gep2574, i64 %indvars.iv.next2336.6
  store double %i.bbw, ptr %gep2575.7, align 8, !tbaa !9
  %indvars.iv.next2336.7 = add nuw nsw i64 %indvars.iv2335, 8 ; 2 uses
  %exitcond2339.not.7 = icmp eq i64 %indvars.iv.next2336.7, %wide.trip.count2338
  br i1 %exitcond2339.not.7, label %._crit_edge2105, label %vec.epilog.scalar.ph3014, !llvm.loop !137

._crit_edge2105:                                  ; preds = %vec.epilog.scalar.ph3014.prol.loopexit, %vec.epilog.scalar.ph3014, %middle.block3009, %vec.epilog.middle.block3023, %28
  %indvars.iv.next2341 = add nuw nsw i64 %indvars.iv2340, 1 ; 2 uses
  %exitcond2344.not = icmp eq i64 %indvars.iv.next2341, %wide.trip.count2343
  br i1 %exitcond2344.not, label %._crit_edge2110, label %28, !llvm.loop !138

._crit_edge2110:                                  ; preds = %._crit_edge2105, %bb.gd
  %storemerge1841.lcssa = phi i32 [ 1, %bb.gd ], [ %27, %._crit_edge2105 ]
  store i32 %storemerge1841.lcssa, ptr %i.f, align 4, !tbaa !8
  %i.bbx = add nsw i32 %i.azm, -1                 ; 2 uses
  store i32 %i.bbx, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bbx, ptr %i.b, align 4, !tbaa !8
  %i.bby = shl i32 %i.q, 1
  %i.bbz = sext i32 %i.bby to i64
  %i.bca = getelementptr [8 x i8], ptr %i.s, i64 %i.bbz
  %i.bcb = getelementptr i8, ptr %i.bca, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bcb, ptr noundef nonnull %13) #6
  %i.bcc = load i32, ptr %18, align 4, !tbaa !8
  %i.bcd = load i32, ptr %6, align 4, !tbaa !8
  %i.bce = load i32, ptr %i.h, align 4, !tbaa !8
  %i.bcf = add i32 %i.bce, %i.bcd                 ; 2 uses
  %i.bcg = sub i32 %i.bcc, %i.bcf
  store i32 %i.bcg, ptr %i.a, align 4, !tbaa !8
  %i.bch = sext i32 %i.bcf to i64
  %i.bci = getelementptr [8 x i8], ptr %i.u, i64 %i.bch
  %i.bcj = getelementptr i8, ptr %i.bci, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.bcj, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %i.bck = load i32, ptr %6, align 4, !tbaa !8
  %i.bcl = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.bcm = sub nsw i32 %i.bck, %i.bcl
  store i32 %i.bcm, ptr %i.a, align 4, !tbaa !8
  %i.bcn = add i32 %i.q, 1                        ; 2 uses
  %i.bco = add i32 %i.bcn, %i.bcl
  %i.bcp = sext i32 %i.bco to i64
  %i.bcq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bcp
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bcq, ptr noundef nonnull %13) #6
  %i.bcr = load i32, ptr %6, align 4, !tbaa !8
  %i.bcs = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.bct = sub nsw i32 %i.bcr, %i.bcs
  store i32 %i.bct, ptr %i.a, align 4, !tbaa !8
  %i.bcu = add nsw i32 %i.bcs, 1
  %i.bcv = mul nsw i32 %i.bcu, %i.q
  %i.bcw = sext i32 %i.bcv to i64
  %i.bcx = getelementptr [8 x i8], ptr %i.s, i64 %i.bcw
  %i.bcy = getelementptr i8, ptr %i.bcx, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bcy, ptr noundef nonnull %13) #6
  %i.bcz = load i32, ptr %6, align 4, !tbaa !8
  %i.bda = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.bdb = sub nsw i32 %i.bcz, %i.bda             ; 2 uses
  store i32 %i.bdb, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bdb, ptr %i.b, align 4, !tbaa !8
  %i.bdc = add nsw i32 %i.bda, 1
  %i.bdd = mul i32 %i.bdc, %i.bcn
  %i.bde = sext i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bde
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b76, ptr noundef %i.bdf, ptr noundef nonnull %13) #6
  %i.bdg = load i32, ptr %18, align 4, !tbaa !8
  %i.bdh = load i32, ptr %6, align 4, !tbaa !8    ; 2 uses
  %i.bdi = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.bdj = add i32 %i.bdi, %i.bdh                 ; 2 uses
  %i.bdk = sub i32 %i.bdg, %i.bdj
  store i32 %i.bdk, ptr %i.a, align 4, !tbaa !8
  %i.bdl = add nsw i32 %i.bdi, 1
  %i.bdm = mul nsw i32 %i.bdl, %i.n
  %i.bdn = sext i32 %i.bdm to i64
  %i.bdo = getelementptr [8 x i8], ptr %i.p, i64 %i.bdn
  %i.bdp = getelementptr i8, ptr %i.bdo, i64 8
  %i.bdq = sext i32 %i.bdh to i64
  %i.bdr = getelementptr [8 x i8], ptr %i.u, i64 %i.bdq
  %i.bds = getelementptr i8, ptr %i.bdr, i64 8
  %i.bdt = sext i32 %i.bdj to i64
  %i.bdu = getelementptr [8 x i8], ptr %i.u, i64 %i.bdt
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 8
  call void @dormqr_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %i.h, ptr noundef %i.bdp, ptr noundef nonnull %11, ptr noundef %i.bds, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.bdv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #6
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  %i.bdw = load i32, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.bdx = load i32, ptr %5, align 4, !tbaa !8    ; 2 uses
  %i.bdy = icmp sge i32 %i.bdw, %i.bdx
  %or.cond47 = select i1 %i.bdy, i1 true, i1 %i.af
  br i1 %or.cond47, label %bb.ha, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge2110
  %i.bdz = sub nsw i32 %i.bdx, %i.bdw
  store i32 %i.bdz, ptr %i.a, align 4, !tbaa !8
  %i.bea = add i32 %i.n, 1                        ; 2 uses
  %i.beb = add i32 %i.bea, %i.bdw
  %i.bec = sext i32 %i.beb to i64
  %i.bed = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bec
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bed, ptr noundef nonnull %11) #6
  %i.bee = load i32, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.bef = load i32, ptr %i.g, align 4, !tbaa !8  ; 2 uses
  %i.beg = icmp slt i32 %i.bee, %i.bef
  br i1 %i.beg, label %bb.gf, label %.thread1923

bb.gf:                                            ; preds = %bb.ge
  %i.beh = sub nsw i32 %i.bef, %i.bee
  br label %.thread1923.sink.split

bb.gg:                                            ; preds = %bb.fc
  br i1 %i.an, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.bei = load i32, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.bej = load i32, ptr %6, align 4, !tbaa !8    ; 2 uses
  %i.bek = icmp eq i32 %i.bei, %i.bej
  br i1 %i.bek, label %bb.gi, label %bb.gn

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  call void @dlacpy_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %12, ptr noundef nonnull %13) #6
  %i.bel = load i32, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.bem = icmp sgt i32 %i.bel, 1
  br i1 %i.bem, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.ben = add nsw i32 %i.bel, -1                 ; 2 uses
  store i32 %i.ben, ptr %i.a, align 4, !tbaa !8
  store i32 %i.ben, ptr %i.b, align 4, !tbaa !8
  %i.beo = sext i32 %i.q to i64
  %i.bep = getelementptr [8 x i8], ptr %i.s, i64 %i.beo
  %i.beq = getelementptr i8, ptr %i.bep, i64 16
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.beq, ptr noundef nonnull %13) #6
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.ber = load i32, ptr %18, align 4, !tbaa !8
  %i.bes = load i32, ptr %6, align 4, !tbaa !8    ; 2 uses
  %i.bet = sub nsw i32 %i.ber, %i.bes
  store i32 %i.bet, ptr %i.a, align 4, !tbaa !8
  %i.beu = sext i32 %i.bes to i64
  %i.bev = getelementptr [8 x i8], ptr %i.u, i64 %i.beu
  %i.bew = getelementptr i8, ptr %i.bev, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.bew, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  %i.bex = load i32, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.bey = load i32, ptr %5, align 4, !tbaa !8    ; 2 uses
  %i.bez = icmp sge i32 %i.bex, %i.bey
  %or.cond49 = select i1 %i.bez, i1 true, i1 %i.af
  br i1 %or.cond49, label %bb.ha, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bfa = sub nsw i32 %i.bey, %i.bex
  store i32 %i.bfa, ptr %i.a, align 4, !tbaa !8
  %i.bfb = add i32 %i.n, 1                        ; 2 uses
  %i.bfc = add i32 %i.bfb, %i.bex
  %i.bfd = sext i32 %i.bfc to i64
  %i.bfe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bfd
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bfe, ptr noundef nonnull %11) #6
  %i.bff = load i32, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.bfg = load i32, ptr %i.g, align 4, !tbaa !8  ; 2 uses
  %i.bfh = icmp slt i32 %i.bff, %i.bfg
  br i1 %i.bfh, label %bb.gm, label %.thread1923

bb.gm:                                            ; preds = %bb.gl
  %i.bfi = sub nsw i32 %i.bfg, %i.bff
  br label %.thread1923.sink.split

bb.gn:                                            ; preds = %bb.gh
  %i.bfj = shl nsw i32 %i.bei, 1
  %i.bfk = icmp sgt i32 %i.bfj, %i.bej
  br i1 %i.bfk, label %bb.go, label %bb.gt

bb.go:                                            ; preds = %bb.gn
  call void @dlacpy_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %12, ptr noundef nonnull %13) #6
  %i.bfl = load i32, ptr %i.h, align 4, !tbaa !8  ; 3 uses
  %i.bfm = icmp sgt i32 %i.bfl, 1
  br i1 %i.bfm, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.bfn = add nsw i32 %i.bfl, -1                 ; 2 uses
  store i32 %i.bfn, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bfn, ptr %i.b, align 4, !tbaa !8
  %i.bfo = sext i32 %i.q to i64
  %i.bfp = getelementptr [8 x i8], ptr %i.s, i64 %i.bfo
  %i.bfq = getelementptr i8, ptr %i.bfp, i64 16
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bfq, ptr noundef nonnull %13) #6
  %.pre2432 = load i32, ptr %i.h, align 4, !tbaa !8
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.bfr = phi i32 [ %.pre2432, %bb.gp ], [ %i.bfl, %bb.go ] ; 2 uses
  %i.bfs = load i32, ptr %6, align 4, !tbaa !8
  %i.bft = sub nsw i32 %i.bfs, %i.bfr
  store i32 %i.bft, ptr %i.a, align 4, !tbaa !8
  %i.bfu = add i32 %i.q, 1
  %i.bfv = add i32 %i.bfu, %i.bfr
  %i.bfw = sext i32 %i.bfv to i64
  %i.bfx = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bfw
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.bfx, ptr noundef nonnull %13) #6
  %i.bfy = load i32, ptr %18, align 4, !tbaa !8
  %i.bfz = load i32, ptr %6, align 4, !tbaa !8    ; 2 uses
  %i.bga = sub nsw i32 %i.bfy, %i.bfz
  store i32 %i.bga, ptr %i.a, align 4, !tbaa !8
  %i.bgb = sext i32 %i.bfz to i64
  %i.bgc = getelementptr [8 x i8], ptr %i.u, i64 %i.bgb
  %i.bgd = getelementptr i8, ptr %i.bgc, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.bgd, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  %i.bge = load i32, ptr %6, align 4, !tbaa !8    ; 3 uses
  %i.bgf = load i32, ptr %5, align 4, !tbaa !8    ; 2 uses
  %i.bgg = icmp sge i32 %i.bge, %i.bgf
  %or.cond51 = select i1 %i.bgg, i1 true, i1 %i.af
  br i1 %or.cond51, label %bb.ha, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bgh = sub nsw i32 %i.bgf, %i.bge
  store i32 %i.bgh, ptr %i.a, align 4, !tbaa !8
  %i.bgi = add i32 %i.n, 1                        ; 2 uses
  %i.bgj = add i32 %i.bgi, %i.bge
end_hunk_0
