Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@b3World_Step:bb.a
  %i.afk = ptrtoint ptr %i.aff to i64, !nosanitize !10 ; 3 uses
  %i.afl = add i64 %i.afj, %i.afk, !nosanitize !10 ; 3 uses
  %i.afm = icmp ne ptr %i.aff, null, !nosanitize !10 ; 2 uses
  %i.afn = icmp eq i64 %i.afl, 0
  %i.afo = xor i1 %i.afm, %i.afn
  %i.afp = icmp uge i64 %i.afl, %i.afk, !nosanitize !10
  %i.afq = icmp slt i32 %i.afb, 0
  %i.afr = xor i1 %i.afq, %i.afp
  %i.afs = and i1 %i.afo, %i.afr, !nosanitize !10
  br i1 %i.afs, label %bb.hp, label %bb.ho, !prof !11, !nosanitize !10

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @600, i64 %i.afk, i64 %i.afl) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.hp:                                            ; preds = %bb.hn
  %i.aft = ptrtoint ptr %i.afi to i64, !nosanitize !10 ; 2 uses
  %i.afu = and i64 %i.aft, 3, !nosanitize !10
  %i.afv = icmp eq i64 %i.afu, 0, !nosanitize !10
  %i.afw = and i1 %i.afm, %i.afv
  br i1 %i.afw, label %b3AddNonTouchingContact.exit.i, label %bb.hq, !prof !11, !nosanitize !10

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @601, i64 %i.aft) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3AddNonTouchingContact.exit.i:                   ; preds = %bb.hp
  store i32 %i.afa, ptr %i.afi, align 4, !tbaa !84
  %i.afx = load i32, ptr %i.wt, align 4, !tbaa !203
  %i.afy = and i32 %i.afx, 4194304
  %i.afz = icmp ne i32 %i.afy, 0
  call void @b3RemoveContactFromGraph(ptr noundef nonnull %i.fv, i32 noundef %i.adl, i32 noundef %i.adp, i32 noundef %i.adh, i32 noundef %i.adj, i1 noundef zeroext %i.afz) #16
  br label %b3RemoveNonTouchingContact.exit.i

b3RemoveNonTouchingContact.exit.i:                ; preds = %b3AddNonTouchingContact.exit.i, %bb.ge, %bb.gd, %b3RemoveHelper.exit.i.i, %bb.fk, %bb.en
  %i.aga = add i64 %.02644.i, -1
  %i.agb = and i64 %i.aga, %.02644.i              ; 2 uses
  %.not285.i = icmp eq i64 %i.agb, 0
  br i1 %.not285.i, label %._crit_edge2647.i.loopexit, label %.lr.ph2646.split.i, !llvm.loop !432

._crit_edge2647.i.loopexit:                       ; preds = %b3RemoveNonTouchingContact.exit.i
  %.pre = load i32, ptr %i.sq, align 4, !tbaa !255
  br label %._crit_edge2647.i

._crit_edge2647.i:                                ; preds = %._crit_edge2647.i.loopexit, %bb.du
  %i.agc = phi i32 [ %.pre, %._crit_edge2647.i.loopexit ], [ %i.ti, %bb.du ] ; 2 uses
  %indvars.iv.next4687.i = add nuw nsw i64 %indvars.iv4686.i2146, 1 ; 2 uses
  %i.agd = zext i32 %i.agc to i64
  %i.age = icmp samesign ult i64 %indvars.iv.next4687.i, %i.agd
  br i1 %i.age, label %.lr.ph2147, label %b3Collide.exit

b3Collide.exit:                                   ; preds = %._crit_edge2647.i, %._crit_edge2640.i, %bb.ax
  %i.agf = call float @b3GetMilliseconds(i64 noundef %i.fu) #16
  %i.agg = getelementptr inbounds nuw i8, ptr %i.e, i64 4500
  store float %i.agf, ptr %i.agg, align 4, !tbaa !459
  br i1 %i.dp, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %b3Collide.exit
  %i.agh = call i64 @b3GetTicks() #16
  call void @b3Solve(ptr noundef nonnull %i.e, ptr noundef nonnull %4) #16
  %i.agi = call float @b3GetMilliseconds(i64 noundef %i.agh) #16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.e, i64 4504
  store float %i.agi, ptr %i.agj, align 8, !tbaa !460
  br label %bb.hs

bb.hs:                                            ; preds = %b3Collide.exit, %bb.hr
  %i.agk = getelementptr inbounds nuw i8, ptr %..i, i64 4712 ; 2 uses
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !151 ; 2 uses
  %.not137 = icmp eq ptr %i.agl, null
  br i1 %.not137, label %bb.hz, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.agm = getelementptr inbounds nuw i8, ptr %i.e, i64 4696
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !154 ; 4 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 -8
  %i.agp = load i32, ptr %i.ago, align 4, !nosanitize !10
  %i.agq = icmp eq i32 %i.agp, -1056584962, !nosanitize !10
  br i1 %i.agq, label %bb.hu, label %bb.hw, !nosanitize !10

bb.hu:                                            ; preds = %bb.ht
  %i.agr = getelementptr i8, ptr %i.agn, i64 -4
  %i.ags = load i32, ptr %i.agr, align 8, !nosanitize !10
  %i.agt = icmp eq i32 %i.ags, -1886282236, !nosanitize !10
  br i1 %i.agt, label %bb.hw, label %bb.hv, !prof !11, !nosanitize !10

bb.hv:                                            ; preds = %bb.hu
  %i.agu = ptrtoint ptr %i.agn to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @130, i64 %i.agu) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.hw:                                            ; preds = %bb.ht, %bb.hu
  %i.agv = getelementptr inbounds nuw i8, ptr %i.e, i64 4704
  %i.agw = load ptr, ptr %i.agv, align 16, !tbaa !155
  call void %i.agn(ptr noundef nonnull %i.agl, ptr noundef %i.agw) #16
  store ptr null, ptr %i.agk, align 8, !tbaa !151
  %i.agx = load i32, ptr %i.ak, align 16, !tbaa !142 ; 2 uses
  %i.agy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.agx, i32 -1) ; 2 uses
  %i.agz = extractvalue { i32, i1 } %i.agy, 1, !nosanitize !10
  br i1 %i.agz, label %bb.hx, label %bb.hy, !prof !78, !nosanitize !10

bb.hx:                                            ; preds = %bb.hw
  %i.aha = zext i32 %i.agx to i64, !nosanitize !10
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @131, i64 %i.aha, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.hy:                                            ; preds = %bb.hw
  %i.ahb = extractvalue { i32, i1 } %i.agy, 0, !nosanitize !10
  store i32 %i.ahb, ptr %i.ak, align 16, !tbaa !142
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hs
  %i.ahc = call i64 @b3GetTicks() #16
  call void @b3OverlapSensors(ptr noundef nonnull %i.e) #16
  %i.ahd = call float @b3GetMilliseconds(i64 noundef %i.ahc) #16
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.e, i64 4580
  store float %i.ahd, ptr %i.ahe, align 4, !tbaa !461
  %i.ahf = call float @b3GetMilliseconds(i64 noundef %i.ao) #16
  store float %i.ahf, ptr %i.aj, align 4, !tbaa !462
  call void @b3GrowStack(ptr noundef nonnull %i.e) #16
  %i.ahg = getelementptr inbounds nuw i8, ptr %..i, i64 4288 ; 2 uses
  %i.ahh = load i32, ptr %i.ahg, align 16, !tbaa !141 ; 2 uses
  %i.ahi = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 1, i32 %i.ahh), !nosanitize !10 ; 2 uses
  %i.ahj = extractvalue { i32, i1 } %i.ahi, 1, !nosanitize !10
  br i1 %i.ahj, label %bb.ia, label %bb.ib, !prof !78, !nosanitize !10

bb.ia:                                            ; preds = %bb.hz
  %i.ahk = zext i32 %i.ahh to i64, !nosanitize !10
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @132, i64 1, i64 %i.ahk) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ib:                                            ; preds = %bb.hz
  %i.ahl = extractvalue { i32, i1 } %i.ahi, 0, !nosanitize !10 ; 3 uses
  store i32 %i.ahl, ptr %i.ahg, align 16, !tbaa !141
  %i.ahm = sext i32 %i.ahl to i64, !nosanitize !10 ; 4 uses
  %i.ahn = icmp ult i32 %i.ahl, 3
  br i1 %i.ahn, label %bb.id, label %bb.ic, !prof !11, !nosanitize !10

bb.ic:                                            ; preds = %bb.ib
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @133, i64 %i.ahm) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.id:                                            ; preds = %bb.ib
  %i.aho = getelementptr inbounds nuw i8, ptr %..i, i64 4224 ; 2 uses
  %i.ahp = shl nuw nsw i64 %i.ahm, 4              ; 2 uses
  %i.ahq = ptrtoint ptr %i.aho to i64, !nosanitize !10 ; 3 uses
  %i.ahr = add i64 %i.ahp, %i.ahq, !nosanitize !10 ; 2 uses
  %.not138 = icmp ult i64 %i.ahr, %i.ahq, !nosanitize !10
  br i1 %.not138, label %bb.ie, label %bb.if, !prof !78, !nosanitize !10

bb.ie:                                            ; preds = %bb.id
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @134, i64 %i.ahq, i64 %i.ahr) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.if:                                            ; preds = %bb.id
  %i.ahs = getelementptr inbounds nuw [16 x i8], ptr %i.aho, i64 %i.ahm
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store i32 0, ptr %i.aht, align 8, !tbaa !177
  %i.ahu = getelementptr inbounds nuw i8, ptr %..i, i64 4256 ; 2 uses
  %i.ahv = ptrtoint ptr %i.ahu to i64, !nosanitize !10 ; 3 uses
  %i.ahw = add i64 %i.ahp, %i.ahv, !nosanitize !10 ; 2 uses
  %.not139 = icmp ult i64 %i.ahw, %i.ahv, !nosanitize !10
  br i1 %.not139, label %bb.ig, label %bb.ih, !prof !78, !nosanitize !10

bb.ig:                                            ; preds = %bb.if
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @135, i64 %i.ahv, i64 %i.ahw) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ih:                                            ; preds = %bb.if
  %i.ahx = getelementptr inbounds nuw [16 x i8], ptr %i.ahu, i64 %i.ahm
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  store i32 0, ptr %i.ahy, align 8, !tbaa !179
  store i8 0, ptr %i.h, align 1, !tbaa !81
  %i.ahz = load ptr, ptr %i.m, align 16, !tbaa !220
  %.not140 = icmp eq ptr %i.ahz, null
  br i1 %.not140, label %bb.iz, label %bb.ij

bb.ii:                                            ; preds = %bb.ir, %bb.il
  %.lcssa = phi i64 [ %i.ait, %bb.ir ], [ %i.aih, %bb.il ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 %i.as, i64 %.lcssa) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ij:                                            ; preds = %bb.ih
  %i.aia = call i64 @b3HashWorldState(ptr noundef nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %0, ptr %5, align 8, !tbaa !221
  %i.aib = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.aib, align 4
  %i.aic = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aia, ptr %i.aic, align 8, !tbaa !464
  %i.aid = load ptr, ptr %i.m, align 16, !tbaa !220
  call void @b3RecWrite_StateHash(ptr noundef %i.aid, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %.sroa.6155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.aie = call i32 @b3DynamicTree_GetProxyCount(ptr noundef nonnull %i.ar) #16
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @b3DynamicTree_GetRootBounds(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %7, ptr noundef nonnull %i.ar) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !268
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.1 = phi i8 [ 1, %bb.ik ], [ 0, %bb.ij ]       ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %..i, i64 880 ; 2 uses
  %i.aih = add i64 %i.as, 80, !nosanitize !10
  %.not141.1 = icmp ugt ptr %i.ar, inttoptr (i64 -81 to ptr)
  br i1 %.not141.1, label %bb.ii, label %bb.im, !prof !78, !nosanitize !10

bb.im:                                            ; preds = %bb.il
  %i.aii = call i32 @b3DynamicTree_GetProxyCount(ptr noundef nonnull %i.aig) #16
  %i.aij = icmp eq i32 %i.aii, 0
  br i1 %i.aij, label %bb.ir, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @b3DynamicTree_GetRootBounds(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %7, ptr noundef nonnull %i.aig) #16
  %8 = trunc nuw i8 %.1 to i1
  br i1 %8, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !268
  br label %bb.iq

bb.ip:                                            ; preds = %bb.in
  %.sroa.0156.0.copyload.1 = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.4157.0.copyload.1 = load float, ptr %.sroa.4157.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5158.0.copyload.1 = load <2 x float>, ptr %.sroa.5158.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6159.0.copyload.1 = load float, ptr %.sroa.6159.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0152.0.copyload.1 = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.4153.0.copyload.1 = load float, ptr %.sroa.4153.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5154.0.copyload.1 = load <2 x float>, ptr %.sroa.5154.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6155.0.copyload.1 = load float, ptr %.sroa.6155.0..sroa_idx, align 4 ; 2 uses
  %i.aik = fcmp olt <2 x float> %.sroa.0152.0.copyload.1, %.sroa.0156.0.copyload.1
  %i.ail = select <2 x i1> %i.aik, <2 x float> %.sroa.0152.0.copyload.1, <2 x float> %.sroa.0156.0.copyload.1
  %i.aim = fcmp olt float %.sroa.4153.0.copyload.1, %.sroa.4157.0.copyload.1
  %i.ain = select i1 %i.aim, float %.sroa.4153.0.copyload.1, float %.sroa.4157.0.copyload.1
  %i.aio = fcmp ogt <2 x float> %.sroa.5154.0.copyload.1, %.sroa.5158.0.copyload.1
  %i.aip = select <2 x i1> %i.aio, <2 x float> %.sroa.5154.0.copyload.1, <2 x float> %.sroa.5158.0.copyload.1
  %i.aiq = fcmp ogt float %.sroa.6155.0.copyload.1, %.sroa.6159.0.copyload.1
  %i.air = select i1 %i.aiq, float %.sroa.6155.0.copyload.1, float %.sroa.6159.0.copyload.1
  store <2 x float> %i.ail, ptr %6, align 8, !tbaa !144
  store float %i.ain, ptr %.sroa.4153.0..sroa_idx, align 8, !tbaa !144
  store <2 x float> %i.aip, ptr %.sroa.5154.0..sroa_idx, align 4, !tbaa !144
  store float %i.air, ptr %.sroa.6155.0..sroa_idx, align 4, !tbaa !144
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.im
  %.1.1 = phi i8 [ 1, %bb.iq ], [ %.1, %bb.im ]   ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %..i, i64 960 ; 2 uses
  %i.ait = add i64 %i.as, 160, !nosanitize !10
  %.not141.2 = icmp ugt ptr %i.ar, inttoptr (i64 -161 to ptr)
  br i1 %.not141.2, label %bb.ii, label %bb.is, !prof !78, !nosanitize !10

bb.is:                                            ; preds = %bb.ir
  %i.aiu = call i32 @b3DynamicTree_GetProxyCount(ptr noundef nonnull %i.ais) #16
  %i.aiv = icmp eq i32 %i.aiu, 0
  br i1 %i.aiv, label %bb.iw, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @b3DynamicTree_GetRootBounds(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %7, ptr noundef nonnull %i.ais) #16
  %i.aiw = trunc nuw i8 %.1.1 to i1
  br i1 %i.aiw, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !268
  br label %.thread

bb.iv:                                            ; preds = %bb.it
  %.sroa.0156.0.copyload.2 = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.4157.0.copyload.2 = load float, ptr %.sroa.4157.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5158.0.copyload.2 = load <2 x float>, ptr %.sroa.5158.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6159.0.copyload.2 = load float, ptr %.sroa.6159.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0152.0.copyload.2 = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.4153.0.copyload.2 = load float, ptr %.sroa.4153.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5154.0.copyload.2 = load <2 x float>, ptr %.sroa.5154.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6155.0.copyload.2 = load float, ptr %.sroa.6155.0..sroa_idx, align 4 ; 2 uses
  %i.aix = fcmp olt <2 x float> %.sroa.0152.0.copyload.2, %.sroa.0156.0.copyload.2
  %i.aiy = select <2 x i1> %i.aix, <2 x float> %.sroa.0152.0.copyload.2, <2 x float> %.sroa.0156.0.copyload.2
  %i.aiz = fcmp olt float %.sroa.4153.0.copyload.2, %.sroa.4157.0.copyload.2
  %i.aja = select i1 %i.aiz, float %.sroa.4153.0.copyload.2, float %.sroa.4157.0.copyload.2
  %i.ajb = fcmp ogt <2 x float> %.sroa.5154.0.copyload.2, %.sroa.5158.0.copyload.2
  %i.ajc = select <2 x i1> %i.ajb, <2 x float> %.sroa.5154.0.copyload.2, <2 x float> %.sroa.5158.0.copyload.2
  %i.ajd = fcmp ogt float %.sroa.6155.0.copyload.2, %.sroa.6159.0.copyload.2
  %i.aje = select i1 %i.ajd, float %.sroa.6155.0.copyload.2, float %.sroa.6159.0.copyload.2
  store <2 x float> %i.aiy, ptr %6, align 8, !tbaa !144
  store float %i.aja, ptr %.sroa.4153.0..sroa_idx, align 8, !tbaa !144
  store <2 x float> %i.ajc, ptr %.sroa.5154.0..sroa_idx, align 4, !tbaa !144
  store float %i.aje, ptr %.sroa.6155.0..sroa_idx, align 4, !tbaa !144
  br label %.thread

.thread:                                          ; preds = %bb.iu, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ix

bb.iw:                                            ; preds = %bb.is
  %i.ajf = trunc nuw i8 %.1.1 to i1
  br i1 %i.ajf, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %.thread, %bb.iw
  %i.ajg = load ptr, ptr %i.m, align 16, !tbaa !220
  call void @b3RecAccumulateBounds(ptr noundef %i.ajg, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6) #16
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ja

bb.ja:                                            ; preds = %b3GetUnlockedWorldFromId.exit, %bb.iz
  ret void
}

declare void @b3RecWrite_Step(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3ResetScheduler(ptr noundef) local_unnamed_addr #3

declare i64 @b3GetTicks() local_unnamed_addr #3

declare void @b3UpdateBroadPhasePairs(ptr noundef) local_unnamed_addr #3

declare float @b3GetMilliseconds(i64 noundef) local_unnamed_addr #3

declare void @b3Solve(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #2

declare void @b3OverlapSensors(ptr noundef) local_unnamed_addr #3

declare void @b3GrowStack(ptr noundef) local_unnamed_addr #3

declare i64 @b3HashWorldState(ptr noundef) local_unnamed_addr #3

declare void @b3RecWrite_StateHash(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @b3DynamicTree_GetProxyCount(ptr noundef) local_unnamed_addr #3

declare void @b3DynamicTree_GetRootBounds(ptr dead_on_unwind writable sret(%struct.b3AABB) align 4, ptr noundef) local_unnamed_addr #3

declare void @b3RecAccumulateBounds(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b3World_Draw(i32 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !func_sanitize !470 {
bb.a:
  %i.a = alloca [24 x i32], align 16              ; 5 uses
  %3 = alloca %struct.DrawContext, align 8        ; 7 uses
  %4 = alloca %struct.b3Transform, align 8        ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %struct.b3AABB, align 8             ; 8 uses
  %i.f = alloca [32 x i8], align 16               ; 7 uses
  %i.g = and i32 %0, 65535
  %i.h = zext nneg i32 %i.g to i64
  %i.i = add nsw i64 %i.h, -1                     ; 4 uses
  %i.j = icmp ult i64 %i.i, 129
  br i1 %i.j, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @14, i64 %i.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %i.i ; 30 uses
  %i.l = mul nuw nsw i64 %i.i, 4768
  %i.m = add i64 %i.l, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10 ; 2 uses
  %.not.i = icmp ult i64 %i.m, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !78, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 ptrtoint (ptr @b3_worlds to i64), i64 %i.m) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4763
  %i.o = load i8, ptr %i.n, align 1, !tbaa !81    ; 3 uses
  %i.p = icmp ult i8 %i.o, 2
  br i1 %i.p, label %b3GetUnlockedWorldFromId.exit, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.q = zext i8 %i.o to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @17, i64 %i.q) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3GetUnlockedWorldFromId.exit:                    ; preds = %bb.e
  %i.r = trunc nuw i8 %i.o to i1                  ; 2 uses
  %..i = select i1 %i.r, ptr null, ptr %i.k       ; 2 uses
  br i1 %i.r, label %bb.fe, label %b3GetIdCapacity.exit

b3GetIdCapacity.exit:                             ; preds = %b3GetUnlockedWorldFromId.exit
  %i.s = tail call float @b3GetLengthUnitsPerMeter() #16 ; 2 uses
  %i.t = fmul float %i.s, 3.000000e-01            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) @__const.b3World_Draw.graphColors, i64 96, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 3872
  %i.v = load i32, ptr %i.u, align 16, !tbaa !227
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4328 ; 2 uses
  tail call void @b3SetBitCountAndClear(ptr noundef nonnull %i.w, i32 noundef %i.v) #16
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3952
  %i.y = load i32, ptr %i.x, align 16, !tbaa !227
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4344 ; 3 uses
  tail call void @b3SetBitCountAndClear(ptr noundef nonnull %i.z, i32 noundef %i.y) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 3992
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 4360 ; 3 uses
  tail call void @b3SetBitCountAndClear(ptr noundef nonnull %i.ac, i32 noundef %i.ab) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 4032
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !227
end_hunk_0
