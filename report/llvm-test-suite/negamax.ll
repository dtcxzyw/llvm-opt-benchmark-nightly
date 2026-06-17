inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@search_for_move:bb.a
  store i64 %i.js, ptr %3, align 8, !tbaa !16
  call fastcc void @print_stats()
  br label %.thread

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.q
  %indvars.iv324 = phi i64 [ 0, %.lr.ph297.preheader ], [ %indvars.iv.next325, %bb.q ] ; 3 uses
  %.0240296 = phi i32 [ 0, %.lr.ph297.preheader ], [ %.1241, %bb.q ] ; 5 uses
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv324 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !33
  %i.jw = icmp slt i32 %i.jv, -4999
  br i1 %i.jw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph297
  %i.jx = add nsw i32 %.0240296, 1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph297
  %i.jy = icmp sgt i32 %.0240296, 0
  br i1 %i.jy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jz = trunc nuw nsw i64 %indvars.iv324 to i32
  %i.ka = sub nsw i32 %i.jz, %.0240296
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [12 x i8], ptr %4, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kc, ptr noundef nonnull align 4 dereferenceable(12) %i.jt, i64 12, i1 false), !tbaa.struct !35
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %.1241 = phi i32 [ %i.jx, %bb.n ], [ %.0240296, %bb.p ], [ %.0240296, %bb.o ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge298, label %.lr.ph297, !llvm.loop !36

._crit_edge298:                                   ; preds = %bb.q, %._crit_edge289.thread
  %.2251352354 = phi i32 [ %.0249313, %._crit_edge289.thread ], [ %i.fl, %bb.q ] ; 3 uses
  %.0240.lcssa = phi i32 [ 0, %._crit_edge289.thread ], [ %.1241, %bb.q ]
  %i.kd = sub i32 %.0253312, %.0240.lcssa         ; 5 uses
  call fastcc void @print_stats()
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.w, label %bb.r

bb.r:                                             ; preds = %._crit_edge298
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.kf = icmp sgt i32 %i.kd, 0
  br i1 %i.kf, label %.lr.ph310.preheader, label %._crit_edge311

.lr.ph310.preheader:                              ; preds = %bb.r
  %i.kg = zext nneg i32 %i.kd to i64
  %wide.trip.count344 = zext nneg i32 %i.kd to i64 ; 4 uses
  %i.kh = add nsw i64 %wide.trip.count344, -2
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.v
  %indvars.iv341 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next342, %bb.v ] ; 7 uses
  %indvars.iv329 = phi i64 [ 1, %.lr.ph310.preheader ], [ %indvars.iv.next330, %bb.v ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv341 ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 3 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next342, %i.kg
  %i.kk = trunc nuw nsw i64 %indvars.iv341 to i32 ; 3 uses
  br i1 %i.kj, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %.lr.ph310
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !33 ; 3 uses
  %i.kn = sub nsw i64 %indvars.iv341, %wide.trip.count344
  %i.ko = and i64 %i.kn, 1
  %lcmp.mod372.not.not = icmp eq i64 %i.ko, 0
  br i1 %lcmp.mod372.not.not, label %.lr.ph304.prol, label %.lr.ph304.prol.loopexit

.lr.ph304.prol:                                   ; preds = %.lr.ph304.preheader
  %i.kp = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv329
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !33 ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, %i.km
  %spec.select269.prol = call i32 @llvm.smax.i32(i32 %i.kr, i32 %i.km)
  %i.kt = trunc nuw nsw i64 %indvars.iv329 to i32
  %spec.select270.prol = select i1 %i.ks, i32 %i.kt, i32 %i.kk ; 2 uses
  %indvars.iv.next332.prol = add nuw nsw i64 %indvars.iv329, 1
  br label %.lr.ph304.prol.loopexit

.lr.ph304.prol.loopexit:                          ; preds = %.lr.ph304.prol, %.lr.ph304.preheader
  %spec.select270.lcssa.unr = phi i32 [ poison, %.lr.ph304.preheader ], [ %spec.select270.prol, %.lr.ph304.prol ]
  %indvars.iv331.unr = phi i64 [ %indvars.iv329, %.lr.ph304.preheader ], [ %indvars.iv.next332.prol, %.lr.ph304.prol ]
  %.0236301.unr = phi i32 [ %i.kk, %.lr.ph304.preheader ], [ %spec.select270.prol, %.lr.ph304.prol ]
  %.0238300.unr = phi i32 [ %i.km, %.lr.ph304.preheader ], [ %spec.select269.prol, %.lr.ph304.prol ]
  %i.ku = icmp eq i64 %i.kh, %indvars.iv341
  br i1 %i.ku, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304
  %indvars.iv331 = phi i64 [ %indvars.iv.next332.1, %.lr.ph304 ], [ %indvars.iv331.unr, %.lr.ph304.prol.loopexit ] ; 4 uses
  %.0236301 = phi i32 [ %spec.select270.1, %.lr.ph304 ], [ %.0236301.unr, %.lr.ph304.prol.loopexit ]
  %.0238300 = phi i32 [ %spec.select269.1, %.lr.ph304 ], [ %.0238300.unr, %.lr.ph304.prol.loopexit ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv331
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !33 ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, %.0238300
  %spec.select269 = call i32 @llvm.smax.i32(i32 %i.kx, i32 %.0238300) ; 2 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv331 to i32
  %spec.select270 = select i1 %i.ky, i32 %i.kz, i32 %.0236301
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next332
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !33 ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, %spec.select269
  %spec.select269.1 = call i32 @llvm.smax.i32(i32 %i.lc, i32 %spec.select269)
  %i.le = trunc nuw nsw i64 %indvars.iv.next332 to i32
  %spec.select270.1 = select i1 %i.ld, i32 %i.le, i32 %spec.select270 ; 2 uses
  %indvars.iv.next332.1 = add nuw nsw i64 %indvars.iv331, 2 ; 2 uses
  %exitcond335.not.1 = icmp eq i64 %indvars.iv.next332.1, %wide.trip.count344
  br i1 %exitcond335.not.1, label %._crit_edge305, label %.lr.ph304, !llvm.loop !37

._crit_edge305:                                   ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304, %.lr.ph310
  %.0236.lcssa = phi i32 [ %i.kk, %.lr.ph310 ], [ %spec.select270.lcssa.unr, %.lr.ph304.prol.loopexit ], [ %spec.select270.1, %.lr.ph304 ] ; 2 uses
  %i.lf = zext i32 %.0236.lcssa to i64
  %.not266 = icmp eq i64 %indvars.iv341, %i.lf
  br i1 %.not266, label %bb.v, label %bb.s

bb.s:                                             ; preds = %._crit_edge305
  %i.lg = sext i32 %.0236.lcssa to i64            ; 2 uses
  %i.lh = getelementptr inbounds [12 x i8], ptr %4, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.lh, i64 12, i1 false), !tbaa.struct !35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.t
  %indvars.iv338 = phi i64 [ %i.lg, %bb.s ], [ %indvars.iv.next339, %bb.t ] ; 2 uses
  %i.li = getelementptr inbounds [12 x i8], ptr %4, i64 %indvars.iv338 ; 2 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.li, ptr noundef nonnull align 4 dereferenceable(12) %i.lj, i64 12, i1 false), !tbaa.struct !35
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, -1 ; 2 uses
  %i.lk = and i64 %indvars.iv.next339, 4294967295
  %.not267 = icmp eq i64 %i.lk, %indvars.iv341
  br i1 %.not267, label %bb.u, label %bb.t, !llvm.loop !38

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ki, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !35
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge305, %bb.u
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge311, label %.lr.ph310, !llvm.loop !39

._crit_edge311:                                   ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ll = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.2251352354, i32 noundef %.0244314) ; 0 uses
  %i.lm = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ln) ; 0 uses
  %i.lp = add nuw nsw i32 %.0244314, 44
  %i.lq = icmp samesign ult i32 %.0244314, 6
  br i1 %i.lq, label %bb.k, label %bb.w, !llvm.loop !40

bb.w:                                             ; preds = %._crit_edge298, %._crit_edge311
  store i32 -1, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %2, align 4, !tbaa !4
  %i.lr = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  store i64 %i.lr, ptr %3, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %.split.loop.exit, %bb.w
  %.3 = phi i32 [ %.2251351, %.split.loop.exit ], [ %.2251352354, %bb.w ], [ -5000, %bb.g ], [ 5000, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_fatal_error_aux(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @move_generator(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @score_and_get_first(ptr noundef, i32 noundef, i32 noundef, i64, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @sort_moves(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_position_values(...) local_unnamed_addr #3

declare void @toggle_move(i64, i32, i32 noundef) local_unnamed_addr #3

declare void @check_hash_code_sanity(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @negamax(i32 noundef range(i32 -2147483648, 49) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 -2147483647, -2147483648) %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [256 x %struct.Move], align 16      ; 9 uses
  %5 = alloca %struct.Move, align 8               ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %6 = alloca %struct.Move, align 8               ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !4
  store i32 %3, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = xor i32 %1, 1                            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = load i64, ptr @g_num_nodes, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @g_num_nodes, align 8, !tbaa !16
  %i.g = load i32, ptr @starting_depth, align 4, !tbaa !4
  %i.h = sub nsw i32 %i.g, %0
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @stat_nodes, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !4
  %i.m = icmp slt i32 %0, 1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @does_next_player_win(i32 noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @does_who_just_moved_win(i32 noundef %i.d, i32 noundef 0) #10 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  %i.r = sub nsw i32 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 -5000, i32 %i.r
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %1 to i64                  ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = zext nneg i32 %i.d to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = icmp sgt i32 %i.u, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr @cut1, align 4, !tbaa !4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr @cut1, align 4, !tbaa !4
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not = icmp slt i32 %i.ac, %i.ae
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr @cut2, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr @cut2, align 4, !tbaa !4
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  store i32 -1, ptr %6, align 8, !tbaa !13
  %i.ah = call i32 @hashlookup(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %0, ptr noundef nonnull %6, i32 noundef %1) #10
  %.not196 = icmp eq i32 %i.ah, 0
  br i1 %.not196, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  store i32 -1, ptr %6, align 8, !tbaa !13
  %i.aj = call i32 @does_next_player_win(i32 noundef %1, i32 noundef 0) #10
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr @cut3, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr @cut3, align 4, !tbaa !4
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @does_who_just_moved_win(i32 noundef %i.d, i32 noundef 0) #10
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @cut4, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr @cut4, align 4, !tbaa !4
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.ar = call i32 @move_generator_stage1(ptr noundef nonnull %4, i32 noundef %1) #10 ; 2 uses
  %.not197 = icmp ne i32 %i.ar, 0                 ; 3 uses
  br i1 %.not197, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @move_generator_stage2(ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1) #10 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 458, i32 noundef 1, ptr noundef nonnull @.str.13) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.199 = phi i32 [ 3, %bb.p ], [ 3, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.0183 = phi i32 [ 0, %bb.p ], [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %6, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8
  call void @score_and_get_first(ptr noundef nonnull %4, i32 noundef %.0183, i32 noundef %1, i64 %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 16 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !35
  %i.au = getelementptr inbounds nuw [49152 x i8], ptr @g_keyinfo, i64 %i.s ; 2 uses
  %i.av = add nsw i32 %0, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  %.0186 = phi i32 [ 1, %bb.q ], [ %.1187223, %.loopexit ] ; 3 uses
  %.0184 = phi i32 [ 0, %bb.q ], [ %.1185201, %.loopexit ] ; 5 uses
  %.0181 = phi i32 [ 0, %bb.q ], [ %.1182225, %.loopexit ]
  switch i32 %.0181, label %bb.u [
    i32 0, label %bb.t
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %.loopexit.jt1
  call void @sort_moves(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %.0183) #10
  %7 = icmp slt i32 %.0184, %.0183
  br i1 %7, label %.lr.ph.preheader, label %..loopexit_crit_edge

bb.t:                                             ; preds = %bb.r
  %8 = icmp slt i32 %.0184, %.0186
  br i1 %8, label %.lr.ph.preheader, label %.loopexit.jt1

bb.u:                                             ; preds = %bb.r
  %9 = call i32 @move_generator_stage2(ptr noundef nonnull %4, i32 noundef %.0186, i32 noundef %1) #10 ; 2 uses
  %i.aw = icmp slt i32 %.0184, %9
  br i1 %i.aw, label %.lr.ph.preheader, label %bb.ab

..loopexit_crit_edge:                             ; preds = %bb.s
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  %.pre213 = load i32, ptr %i.b, align 4, !tbaa !4
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.t, %bb.u, %bb.s
  %.1182224 = phi i32 [ 1, %bb.t ], [ 3, %bb.u ], [ %.199, %bb.s ] ; 3 uses
  %10 = phi i1 [ true, %bb.t ], [ false, %bb.u ], [ %.not197, %bb.s ] ; 3 uses
  %.1187222 = phi i32 [ %.0186, %bb.t ], [ %9, %bb.u ], [ %.0183, %bb.s ] ; 5 uses
  %i.ax = sext i32 %.0184 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.aa ] ; 5 uses
  %i.ay = load i32, ptr @starting_depth, align 4, !tbaa !4
  %i.az = sub nsw i32 %i.ay, %0
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @g_move_number, i64 %i.ba
  %i.bc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !4
  %i.bd = load i32, ptr @g_empty_squares, align 4, !tbaa !4
  %i.be = add nsw i32 %i.bd, -2
  store i32 %i.be, ptr @g_empty_squares, align 4, !tbaa !4
  %i.bf = getelementptr inbounds [12 x i8], ptr %4, i64 %indvars.iv ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %i.bf, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4
  call void @toggle_move(i64 %.sroa.02.0.copyload, i32 %.sroa.23.0.copyload, i32 noundef %1) #10
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [1536 x i8], ptr %i.au, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !15
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [48 x i8], ptr %i.bi, i64 %i.bl ; 12 uses
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !18 ; 2 uses
  %i.bo = and i32 %i.bn, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = sdiv i32 %i.bn, 32
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = xor i32 %i.bp, %i.bt
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20 ; 2 uses
  %i.bx = and i32 %i.bw, 31
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = sdiv i32 %i.bw, 32
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = xor i32 %i.by, %i.cc
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !21
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.ch = xor i32 %i.cg, %i.cf
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !24 ; 2 uses
  %i.ck = and i32 %i.cj, 31
  %i.cl = shl nuw i32 1, %i.ck
  %i.cm = sdiv i32 %i.cj, 32
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = xor i32 %i.cl, %i.cp
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !25 ; 2 uses
  %i.ct = and i32 %i.cs, 31
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = sdiv i32 %i.cs, 32
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = xor i32 %i.cu, %i.cy
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.dd = xor i32 %i.dc, %i.db
  store i32 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.de = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !27 ; 2 uses
  %i.dg = and i32 %i.df, 31
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = sdiv i32 %i.df, 32
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = xor i32 %i.dh, %i.dl
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !28 ; 2 uses
  %i.dp = and i32 %i.do, 31
  %i.dq = shl nuw i32 1, %i.dp
  %i.dr = sdiv i32 %i.do, 32
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = xor i32 %i.dq, %i.du
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.dx = load i32, ptr %i.dw, align 16, !tbaa !29
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.dz = xor i32 %i.dy, %i.dx
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !30 ; 2 uses
  %i.ec = and i32 %i.eb, 31
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = sdiv i32 %i.eb, 32
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = xor i32 %i.ed, %i.eh
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %i.el = and i32 %i.ek, 31
  %i.em = shl nuw i32 1, %i.el
  %i.en = sdiv i32 %i.ek, 32
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = xor i32 %i.em, %i.eq
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.ev = xor i32 %i.eu, %i.et
  store i32 %i.ev, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.ew = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ex = sub nsw i32 0, %i.ew
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ez = sub nsw i32 0, %i.ey
  %i.fa = call fastcc i32 @negamax(i32 noundef %i.av, i32 noundef %i.d, i32 noundef %i.ex, i32 noundef %i.ez)
  %i.fb = sub nsw i32 0, %i.fa
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !4
  %i.fc = load i32, ptr @g_empty_squares, align 4, !tbaa !4
  %i.fd = add nsw i32 %i.fc, 2
  store i32 %i.fd, ptr @g_empty_squares, align 4, !tbaa !4
  %.sroa.0.0.copyload = load i64, ptr %i.bf, align 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4
  call void @toggle_move(i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef %1) #10
  %i.fe = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [1536 x i8], ptr %i.au, i64 %i.ff
  %i.fh = load i32, ptr %i.bj, align 4, !tbaa !15
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [48 x i8], ptr %i.fg, i64 %i.fi ; 12 uses
  %i.fk = load i32, ptr %i.fj, align 16, !tbaa !18 ; 2 uses
  %i.fl = and i32 %i.fk, 31
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = sdiv i32 %i.fk, 32
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = xor i32 %i.fm, %i.fq
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !20 ; 2 uses
  %i.fu = and i32 %i.ft, 31
  %i.fv = shl nuw i32 1, %i.fu
  %i.fw = sdiv i32 %i.ft, 32
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = xor i32 %i.fv, %i.fz
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !21
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.ge = xor i32 %i.gd, %i.gc
  store i32 %i.ge, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !24 ; 2 uses
  %i.gh = and i32 %i.gg, 31
  %i.gi = shl nuw i32 1, %i.gh
  %i.gj = sdiv i32 %i.gg, 32
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !4
  %i.gn = xor i32 %i.gi, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.gp = load i32, ptr %i.go, align 16, !tbaa !25 ; 2 uses
  %i.gq = and i32 %i.gp, 31
  %i.gr = shl nuw i32 1, %i.gq
  %i.gs = sdiv i32 %i.gp, 32
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4
  %i.gw = xor i32 %i.gr, %i.gv
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !26
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.ha = xor i32 %i.gz, %i.gy
  store i32 %i.ha, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !27 ; 2 uses
  %i.hd = and i32 %i.hc, 31
  %i.he = shl nuw i32 1, %i.hd
  %i.hf = sdiv i32 %i.hc, 32
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = xor i32 %i.he, %i.hi
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !28 ; 2 uses
  %i.hm = and i32 %i.hl, 31
  %i.hn = shl nuw i32 1, %i.hm
  %i.ho = sdiv i32 %i.hl, 32
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.hp ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  %i.hs = xor i32 %i.hn, %i.hr
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.hu = load i32, ptr %i.ht, align 16, !tbaa !29
  %i.hv = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.hw = xor i32 %i.hv, %i.hu
  store i32 %i.hw, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !30 ; 2 uses
  %i.hz = and i32 %i.hy, 31
  %i.ia = shl nuw i32 1, %i.hz
  %i.ib = sdiv i32 %i.hy, 32
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = xor i32 %i.ia, %i.ie
  store i32 %i.if, ptr %i.id, align 4, !tbaa !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !31 ; 2 uses
  %i.ii = and i32 %i.ih, 31
  %i.ij = shl nuw i32 1, %i.ii
  %i.ik = sdiv i32 %i.ih, 32
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4
  %i.io = xor i32 %i.ij, %i.in
  store i32 %i.io, ptr %i.im, align 4, !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fj, i64 44
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !32
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.is = xor i32 %i.ir, %i.iq
  store i32 %i.is, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.it = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.iu = load i32, ptr %i.b, align 4, !tbaa !4   ; 4 uses
  %.not198 = icmp slt i32 %i.it, %i.iu
  br i1 %.not198, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  store i32 %i.it, ptr %i.a, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !tbaa.struct !35
  %i.iv = load i32, ptr @starting_depth, align 4, !tbaa !4
  %i.iw = sub nsw i32 %i.iv, %0
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr @stat_cutoffs, i64 %i.ix ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.ja = add nsw i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !4
  %i.jb = icmp slt i64 %indvars.iv, 5
  %i.jc = getelementptr inbounds [40 x i8], ptr @stat_nth_try, i64 %i.ix ; 2 uses
  br i1 %i.jb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %indvars.iv ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !4
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 20 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !4
  br label %.loopexit

bb.y:                                             ; preds = %.lr.ph
  %i.jj = load i32, ptr %i.a, align 4, !tbaa !4
  %i.jk = icmp sgt i32 %i.it, %i.jj
  br i1 %i.jk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.it, ptr %i.a, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !tbaa.struct !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.1187222, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !41

.loopexit:                                        ; preds = %bb.aa, %..loopexit_crit_edge, %bb.w, %bb.x
  %.1182225 = phi i32 [ %.199, %..loopexit_crit_edge ], [ %.1182224, %bb.x ], [ %.1182224, %bb.w ], [ %.1182224, %bb.aa ]
  %11 = phi i1 [ %.not197, %..loopexit_crit_edge ], [ %10, %bb.x ], [ %10, %bb.w ], [ %10, %bb.aa ]
  %.1187223 = phi i32 [ %.0183, %..loopexit_crit_edge ], [ %.1187222, %bb.x ], [ %.1187222, %bb.w ], [ %.1187222, %bb.aa ]
  %i.jl = phi i32 [ %.pre213, %..loopexit_crit_edge ], [ %i.iu, %bb.x ], [ %i.iu, %bb.w ], [ %i.iu, %bb.aa ]
  %i.jm = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.it, %bb.x ], [ %i.it, %bb.w ], [ %i.it, %bb.aa ]
  %.1185201 = phi i32 [ %.0184, %..loopexit_crit_edge ], [ %i.bc, %bb.x ], [ %i.bc, %bb.w ], [ %.1187222, %bb.aa ]
  %i.jn = icmp slt i32 %i.jm, %i.jl
  %or.cond = and i1 %11, %i.jn
  br i1 %or.cond, label %bb.r, label %bb.ab, !llvm.loop !42

.loopexit.jt1:                                    ; preds = %bb.t
  %.pre.jt1 = load i32, ptr %i.c, align 4, !tbaa !4
  %.pre213.jt1 = load i32, ptr %i.b, align 4, !tbaa !4
  %12 = icmp slt i32 %.pre.jt1, %.pre213.jt1
  br i1 %12, label %bb.s, label %bb.ab, !llvm.loop !42

bb.ab:                                            ; preds = %.loopexit.jt1, %.loopexit, %bb.u
  %i.jo = load i32, ptr %i.a, align 4, !tbaa !4
  %i.jp = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.jq = and i64 %i.e, 4294967295
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = lshr i64 %i.jr, 5
  %i.jt = trunc i64 %i.js to i32
  call void @hashstore(i32 noundef %i.jo, i32 noundef %2, i32 noundef %3, i32 noundef %i.jt, i32 noundef %0, ptr noundef nonnull byval(%struct.Move) align 8 %5, i32 noundef %1) #10
  %i.ju = load i32, ptr %i.a, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.c, %bb.b, %bb.ab, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.1 = phi i32 [ %i.ju, %bb.ab ], [ 5000, %bb.e ], [ -5000, %bb.g ], [ %i.ai, %bb.i ], [ 5000, %bb.k ], [ -5000, %bb.m ], [ %spec.select, %bb.c ], [ 5000, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @u64bit_to_string(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_stats() unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @cut1, align 4, !tbaa !4
  %i.b = load i32, ptr @cut2, align 4, !tbaa !4
  %i.c = load i32, ptr @cut3, align 4, !tbaa !4
  %i.d = load i32, ptr @cut4, align 4, !tbaa !4
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stat_cutoffs, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @stat_nodes, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %.not13 = icmp eq i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %.not13, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.j, i32 noundef %i.i, i32 noundef %i.g) ; 0 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr @stat_nth_try, i64 %indvars.iv ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !4
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ab) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !43

bb.d:                                             ; preds = %bb.c
  ret void
}

declare i32 @does_next_player_win(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @does_who_just_moved_win(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hashlookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @move_generator_stage1(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @move_generator_stage2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @hashstore(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.Move) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!15 = !{!14, !5, i64 4}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !5, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 12, !14, i64 24, !14, i64 36}
!20 = !{!19, !5, i64 4}
!21 = !{!19, !5, i64 8}
!22 = !{!23, !5, i64 16}
!23 = !{!"", !6, i64 0, !5, i64 16}
!24 = !{!19, !5, i64 12}
!25 = !{!19, !5, i64 16}
!26 = !{!19, !5, i64 20}
!27 = !{!19, !5, i64 24}
!28 = !{!19, !5, i64 28}
!29 = !{!19, !5, i64 32}
!30 = !{!19, !5, i64 36}
!31 = !{!19, !5, i64 40}
!32 = !{!19, !5, i64 44}
!33 = !{!14, !5, i64 8}
!34 = distinct !{!34, !12}
!35 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
end_hunk_0
