Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/submodule--helper?download=true
inline.NumInlined: 212
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@module_update:bb.a
  store ptr @.str.67, ptr %i.ia, align 16, !tbaa !57
  %i.ib = getelementptr inbounds nuw i8, ptr %22, i64 1864
  store ptr @.str.68, ptr %i.ib, align 8, !tbaa !58
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 1872
  store i32 0, ptr %i.ic, align 16, !tbaa !59
  %i.id = getelementptr inbounds nuw i8, ptr %22, i64 1876
  store i32 0, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 1880
  store ptr @opt_parse_list_objects_filter, ptr %i.ie, align 8, !tbaa !60
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 1888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.if, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) @__const.module_update.git_submodule_helper_usage, i64 16, i1 false)
  call void @update_clone_config_from_gitmodules(ptr noundef nonnull %i.j) #18
  %i.ig = load ptr, ptr @the_repository, align 8, !tbaa !30
  call void @repo_config(ptr noundef %i.ig, ptr noundef nonnull @git_update_clone_config, ptr noundef nonnull %i.j) #18
  %i.ih = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %22, ptr noundef nonnull %i.g, i32 noundef 0) #18
  %i.ii = load i32, ptr %i.ha, align 4, !tbaa !106
  %.not = icmp eq i32 %i.ii, 0
  br i1 %.not, label %bb.b, label %.thread115

.thread115:                                       ; preds = %bb.a
  store i32 1, ptr %i.aj, align 16, !tbaa !212
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.aj, align 16
  %i.ij = icmp ne i32 %.pre, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !108
  %i.im = icmp eq i32 %i.il, 0
  %or.cond = select i1 %i.im, i1 true, i1 %i.ij
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @usage_with_options(ptr noundef nonnull %i.g, ptr noundef nonnull %22) #19
  unreachable

bb.d:                                             ; preds = %.thread115, %bb.b
  %i.in = load ptr, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %.not16 = icmp eq ptr %i.in, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.io = call i32 @ref_storage_format_by_name(ptr noundef nonnull %i.in) #18 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 144
  store i32 %i.io, ptr %i.ip, align 16, !tbaa !109
  %i.iq = icmp eq i32 %i.io, 0
  br i1 %i.iq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ir = call fastcc ptr @_(ptr noundef nonnull @.str.70)
  %i.is = load ptr, ptr %i.f, align 8, !tbaa !55
  call void (ptr, ...) @die(ptr noundef %i.ir, ptr noundef %i.is) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.it = getelementptr inbounds nuw i8, ptr %20, i64 120 ; 2 uses
  store ptr %21, ptr %i.it, align 8, !tbaa !110
  store ptr %2, ptr %20, align 16, !tbaa !111
  %i.iu = load i32, ptr %i.cj, align 8, !tbaa !213 ; 2 uses
  %.not17 = icmp eq i32 %i.iu, 0
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.iv = getelementptr inbounds nuw i8, ptr %20, i64 104
  store i32 %i.iu, ptr %i.iv, align 8, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.ix = call fastcc i32 @module_list_compute(ptr noundef %1, ptr noundef %2, ptr noundef %18, ptr noundef %i.iw)
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %bb.fz, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.iz = load i32, ptr %18, align 8, !tbaa !68
  %.not18 = icmp eq i32 %i.iz, 0
  br i1 %.not18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ja = getelementptr inbounds nuw i8, ptr %20, i64 196
  store i32 1, ptr %i.ja, align 4, !tbaa !113
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.jb = load i32, ptr %i.aj, align 16, !tbaa !212
  %.not19 = icmp eq i32 %i.jb, 0
  br i1 %.not19, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %i.jc = load ptr, ptr %20, align 16, !tbaa !111
  %i.jd = call fastcc i32 @module_list_compute(ptr noundef %1, ptr noundef %i.jc, ptr noundef %19, ptr noundef %23)
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not20 = icmp eq i32 %i.ih, 0
  br i1 %.not20, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.jf = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.jg = call i32 @repo_config_get(ptr noundef %i.jf, ptr noundef nonnull @.str.155) #18
  %.not21 = icmp eq i32 %i.jg, 0
  br i1 %.not21, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.jh = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !114 ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  %.val.i.pre = load ptr, ptr %23, align 8, !tbaa !115 ; 2 uses
  br i1 %i.jj, label %.lr.ph.i, label %module_list_active.exit

.lr.ph.i:                                         ; preds = %bb.p, %bb.u
  %.pre9193 = phi i32 [ %.pre9194, %bb.u ], [ %i.ji, %bb.p ] ; 2 uses
  %i.jk = phi i32 [ %i.kb, %bb.u ], [ %i.ji, %bb.p ]
  %i.jl = phi ptr [ %i.kc, %bb.u ], [ %.val.i.pre, %bb.p ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %.sroa.13.031.i = phi i32 [ %.sroa.13.1.i, %bb.u ], [ 0, %bb.p ] ; 4 uses
  %.sroa.7.030.i = phi i32 [ %.sroa.7.3.i, %bb.u ], [ 0, %bb.p ] ; 4 uses
  %.sroa.0.029.i = phi ptr [ %.sroa.0.2.i, %bb.u ], [ null, %bb.p ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !84 ; 2 uses
  %i.jo = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 108
  %i.jq = call i32 @is_submodule_active(ptr noundef %i.jo, ptr noundef nonnull %i.jp) #18
  %.not.i = icmp eq i32 %i.jq, 0
  br i1 %.not.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.jr = add nsw i32 %.sroa.13.031.i, 1          ; 2 uses
  %.not21.i = icmp slt i32 %.sroa.13.031.i, %.sroa.7.030.i
  br i1 %.not21.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.js = mul i32 %.sroa.7.030.i, 3
  %i.jt = add i32 %i.js, 48
  %i.ju = sdiv i32 %i.jt, 2
  %..i = call i32 @llvm.smax.i32(i32 %i.ju, i32 %i.jr) ; 3 uses
  %i.jv = sext i32 %..i to i64                    ; 2 uses
  %mul.ov.i.i = icmp slt i32 %..i, 0
  br i1 %mul.ov.i.i, label %bb.s, label %st_mult.exit.i

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @die(ptr noundef nonnull @.str.181, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.jv) #19
  unreachable

st_mult.exit.i:                                   ; preds = %bb.r
  %i.jw = shl nuw nsw i64 %i.jv, 3
  %i.jx = call ptr @xrealloc(ptr noundef %.sroa.0.029.i, i64 noundef %i.jw) #18
  %.pre89 = load ptr, ptr %23, align 8, !tbaa !115
  %.pre91.pre = load i32, ptr %i.jh, align 4, !tbaa !114
  br label %bb.t

bb.t:                                             ; preds = %st_mult.exit.i, %bb.q
  %.pre91 = phi i32 [ %.pre91.pre, %st_mult.exit.i ], [ %.pre9193, %bb.q ] ; 2 uses
  %i.jy = phi ptr [ %.pre89, %st_mult.exit.i ], [ %i.jl, %bb.q ]
  %.sroa.0.1.i = phi ptr [ %i.jx, %st_mult.exit.i ], [ %.sroa.0.029.i, %bb.q ] ; 2 uses
  %.sroa.7.2.i = phi i32 [ %..i, %st_mult.exit.i ], [ %.sroa.7.030.i, %bb.q ]
  %i.jz = sext i32 %.sroa.13.031.i to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %.sroa.0.1.i, i64 %i.jz
  store ptr %i.jn, ptr %i.ka, align 8, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.pre9194 = phi i32 [ %.pre91, %bb.t ], [ %.pre9193, %.lr.ph.i ]
  %i.kb = phi i32 [ %.pre91, %bb.t ], [ %i.jk, %.lr.ph.i ] ; 2 uses
  %i.kc = phi ptr [ %i.jy, %bb.t ], [ %i.jl, %.lr.ph.i ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %bb.t ], [ %.sroa.0.029.i, %.lr.ph.i ] ; 2 uses
  %.sroa.7.3.i = phi i32 [ %.sroa.7.2.i, %bb.t ], [ %.sroa.7.030.i, %.lr.ph.i ] ; 2 uses
  %.sroa.13.1.i = phi i32 [ %i.jr, %bb.t ], [ %.sroa.13.031.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kd = sext i32 %i.kb to i64
  %i.ke = icmp slt i64 %indvars.iv.next.i, %i.kd
  br i1 %i.ke, label %.lr.ph.i, label %module_list_active.exit, !llvm.loop !0

module_list_active.exit:                          ; preds = %bb.u, %bb.p
  %.val.i = phi ptr [ %.val.i.pre, %bb.p ], [ %i.kc, %bb.u ]
  %.sroa.0.0.lcssa.i = phi ptr [ null, %bb.p ], [ %.sroa.0.2.i, %bb.u ]
  %.sroa.7.0.lcssa.i = phi i32 [ 0, %bb.p ], [ %.sroa.7.3.i, %bb.u ]
  %.sroa.13.0.lcssa.i = phi i32 [ 0, %bb.p ], [ %.sroa.13.1.i, %bb.u ]
  call void @free(ptr noundef %.val.i) #18
  store ptr %.sroa.0.0.lcssa.i, ptr %23, align 8, !tbaa !116
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.7.0.lcssa.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !24
  store i32 %.sroa.13.0.lcssa.i, ptr %i.jh, align 4, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %module_list_active.exit, %bb.o, %bb.n
  %i.kf = load <2 x ptr>, ptr %20, align 16, !tbaa !55
  store <2 x ptr> %i.kf, ptr %24, align 16, !tbaa !55
  %i.kg = load i32, ptr %i.gd, align 4, !tbaa !117
  %.not22 = icmp eq i32 %i.kg, 0
  br i1 %.not22, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kh = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 1, ptr %i.kh, align 16, !tbaa !119
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ki = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !114 ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  %.val.pre = load ptr, ptr %23, align 8, !tbaa !115 ; 2 uses
  br i1 %i.kk, label %.lr.ph.i24.preheader, label %.thread

.lr.ph.i24.preheader:                             ; preds = %bb.x
  %i.kl = zext nneg i32 %i.kj to i64
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader, %.lr.ph.i24
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i26, %.lr.ph.i24 ], [ 0, %.lr.ph.i24.preheader ] ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.val.pre, i64 %indvars.iv.i25
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !84
  call fastcc void @init_submodule_cb(ptr noundef %i.kn, ptr noundef nonnull %24) #18, !inline_history !1
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i26, %i.kl
  br i1 %exitcond.not, label %.thread, label %.lr.ph.i24, !llvm.loop !2

.thread:                                          ; preds = %.lr.ph.i24, %bb.x
  call void @free(ptr noundef %.val.pre) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %.val23 = load ptr, ptr %23, align 8, !tbaa !115
  call void @free(ptr noundef %.val23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.fz

bb.z:                                             ; preds = %.thread, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr @.str.191, ptr %17, align 8, !tbaa !215
  %i.ko = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.192, ptr %i.ko, align 8, !tbaa !216
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.kq = load i32, ptr %i.j, align 8, !tbaa !217
  %i.kr = sext i32 %i.kq to i64
  store i64 %i.kr, ptr %i.kp, align 8, !tbaa !218
  %i.ks = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i64 0, ptr %i.ks, align 8
  store ptr @update_clone_get_next_task, ptr %i.kt, align 8, !tbaa !219
  %i.ku = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr @update_clone_start_failure, ptr %i.ku, align 8, !tbaa !220
  %i.kv = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr null, ptr %i.kv, align 8, !tbaa !221
  %i.kw = getelementptr inbounds nuw i8, ptr %17, i64 56
  store ptr @update_clone_task_finished, ptr %i.kw, align 8, !tbaa !222
  %i.kx = getelementptr inbounds nuw i8, ptr %17, i64 64
  store ptr %16, ptr %i.kx, align 8, !tbaa !223
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %20, ptr %i.ky, align 8, !tbaa !123
  call void @run_processes_parallel(ptr noundef nonnull %17) #18
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.la = load i8, ptr %i.kz, align 8
  %i.lb = and i8 %i.la, 1
  %.not.i27 = icmp eq i8 %i.lb, 0
  br i1 %.not.i27, label %.preheader.i, label %update_submodules.exit

.preheader.i:                                     ; preds = %bb.z
  %i.lc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !124
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph.i28, label %update_submodules.exit

.lr.ph.i28:                                       ; preds = %.preheader.i
  %i.lf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %20, i64 204 ; 10 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %20, i64 236
  %i.li = getelementptr inbounds nuw i8, ptr %20, i64 240 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %20, i64 248 ; 18 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 16 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %20, i64 104 ; 9 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %20, i64 112 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %20, i64 28 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %20, i64 60
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ls = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.lt = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.lu = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.mb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.mf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 72
  %.sroa.1390.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.mg = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.mh = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.aa

bb.aa:                                            ; preds = %bb.fy, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next.i30, %bb.fy ] ; 2 uses
  %.02577.i = phi i32 [ 0, %.lr.ph.i28 ], [ %.1.ph.i, %bb.fy ]
  %i.mm = load ptr, ptr %i.lf, align 8, !tbaa !125
  %i.mn = getelementptr inbounds nuw [48 x i8], ptr %i.mm, i64 %indvars.iv.i29 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.mn, align 8, !tbaa !224
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %i.mo = load <2 x i32>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, i64 32, i1 false)
  store <2 x i32> %i.mo, ptr %i.lh, align 4, !tbaa !24
  %i.mp = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !92 ; 2 uses
  store ptr %i.mp, ptr %i.lj, align 8, !tbaa !225
  %i.mq = call i32 @validate_submodule_path(ptr noundef %i.mp) #18
  %i.mr = icmp slt i32 %i.mq, 0
  br i1 %i.mr, label %update_submodules.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ms = load ptr, ptr %i.lj, align 8, !tbaa !225 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.mt = load ptr, ptr @the_repository, align 8, !tbaa !30 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 448
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !89
  %i.mw = call ptr @null_oid(ptr noundef %i.mv) #18
  %i.mx = call i32 @repo_submodule_init(ptr noundef nonnull %14, ptr noundef %i.mt, ptr noundef %i.ms, ptr noundef %i.mw) #18
  %.not.i.i = icmp eq i32 %i.mx, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.my = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i = icmp eq i32 %i.my, 0
  br i1 %.not4.i.i.i, label %ensure_core_worktree.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.208, i32 noundef 5) #18
  br label %ensure_core_worktree.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.na = call i32 @repo_config_get_string_tmp(ptr noundef nonnull %14, ptr noundef nonnull @.str.209, ptr noundef nonnull %i.e) #18
  %.not8.i.i = icmp eq i32 %i.na, 0
  br i1 %.not8.i.i, label %bb.af, label %ensure_core_worktree.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.nb = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef nonnull %14, ptr noundef nonnull @.str.90) #18 ; 2 uses
  %i.nc = call ptr @absolute_pathdup(ptr noundef %i.ms) #18 ; 2 uses
  %i.nd = load ptr, ptr %14, align 8, !tbaa !226
  %i.ne = call ptr @relative_path(ptr noundef %i.nc, ptr noundef %i.nd, ptr noundef nonnull %15) #18
  %i.nf = load ptr, ptr @the_repository, align 8, !tbaa !30
  call void @repo_config_set_in_file(ptr noundef %i.nf, ptr noundef %i.nb, ptr noundef nonnull @.str.209, ptr noundef %i.ne) #18
  call void @free(ptr noundef %i.nb) #18
  call void @free(ptr noundef %i.nc) #18
  call void @strbuf_release(ptr noundef nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %ensure_core_worktree.exit.thread.i

ensure_core_worktree.exit.thread.i:               ; preds = %bb.af, %bb.ae
  call void @repo_clear(ptr noundef nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.ag

ensure_core_worktree.exit.i:                      ; preds = %bb.ad, %bb.ac
  %.0.i.i.i = phi ptr [ %i.mz, %bb.ad ], [ @.str.208, %bb.ac ]
  %i.ng = call i32 (ptr, ...) @die_message(ptr noundef %.0.i.i.i, ptr noundef %i.ms) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.not29.i = icmp eq i32 %i.ng, 0
  br i1 %.not29.i, label %bb.ag, label %bb.fw

bb.ag:                                            ; preds = %ensure_core_worktree.exit.i, %ensure_core_worktree.exit.thread.i
  %i.nh = load ptr, ptr %i.lj, align 8, !tbaa !225 ; 3 uses
  %i.ni = load ptr, ptr %20, align 16, !tbaa !111 ; 3 uses
  %i.nj = load ptr, ptr %i.p, align 8, !tbaa !127 ; 3 uses
  %i.nk = icmp ne ptr %i.ni, null                 ; 2 uses
  %i.nl = icmp ne ptr %i.nj, null                 ; 2 uses
  %or.cond.i.i = and i1 %i.nk, %i.nl
  br i1 %or.cond.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.189, i32 noundef 160, ptr noundef nonnull @.str.190, ptr noundef nonnull %i.ni, ptr noundef nonnull %i.nj) #19
  unreachable

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.nk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@module_foreach:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.cs = load i32, ptr %i.y, align 4, !tbaa !245
  %.not37.i = icmp eq i32 %i.cs, 0
  br i1 %.not37.i, label %runcommand_in_submodule_cb.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(136) @__const.print_submodule_summary.cp_log, i64 136, i1 false)
  store i8 8, ptr %i.at, align 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !100
  call void @prepare_submodule_repo_env(ptr noundef nonnull %i.av) #18
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %7, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.241, ptr noundef null) #18
  %i.ct = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %7, ptr noundef nonnull @.str.242, ptr noundef %.0.i.i) #18 ; 0 uses
  %i.cu = load i32, ptr %i.o, align 8, !tbaa !244
  %.not38.i = icmp eq i32 %i.cu, 0
  br i1 %.not38.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef nonnull @.str.74) #18 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cw = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef nonnull @.str.84) #18 ; 0 uses
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !241
  call void @strvec_pushv(ptr noundef nonnull %7, ptr noundef %i.cx) #18
  %i.cy = call i32 @run_command(ptr noundef nonnull %7) #18
  %.not39.i = icmp eq i32 %i.cy, 0
  br i1 %.not39.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = call fastcc ptr @_(ptr noundef nonnull @.str.262)
  call void (ptr, ...) @die(ptr noundef %i.cz, ptr noundef %.0.i.i) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %runcommand_in_submodule_cb.exit

runcommand_in_submodule_cb.exit:                  ; preds = %bb.l, %bb.w, %bb.ab
  call void @free(ptr noundef %.0.i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.aw
  br i1 %exitcond.not, label %for_each_listed_submodule.exit, label %.lr.ph.i, !llvm.loop !2

for_each_listed_submodule.exit:                   ; preds = %runcommand_in_submodule_cb.exit, %.for_each_listed_submodule.exit_crit_edge, %bb.b
  %.val = phi ptr [ %.val.pre, %.for_each_listed_submodule.exit_crit_edge ], [ %.val.pre31, %bb.b ], [ %.val.pre31, %runcommand_in_submodule_cb.exit ]
  %.0 = phi i32 [ 1, %.for_each_listed_submodule.exit_crit_edge ], [ 0, %bb.b ], [ 0, %runcommand_in_submodule_cb.exit ]
  call void @free(ptr noundef %.val) #18
  call void @clear_pathspec(ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @module_init(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.init_cb, align 8            ; 6 uses
  %5 = alloca %struct.pathspec, align 8           ; 5 uses
  %6 = alloca %struct.module_list, align 8        ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca [2 x %struct.option], align 16      ; 11 uses
  %i.b = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  store i32 8, ptr %7, align 16, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 113, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.58, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.f, align 16, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 4, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr @.str.263, ptr %i.h, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 2, ptr %i.i, align 16, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.module_init.git_submodule_helper_usage, i64 16, i1 false)
  %i.j = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %i.b, i32 noundef 0) #18
  %i.k = call fastcc i32 @module_list_compute(ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %6)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.for_each_listed_submodule.exit_crit_edge, label %bb.b

.for_each_listed_submodule.exit_crit_edge:        ; preds = %bb.a
  %.val.pre = load ptr, ptr %6, align 8, !tbaa !115
  br label %for_each_listed_submodule.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.n = call i32 @repo_config_get(ptr noundef %i.m, ptr noundef nonnull @.str.155) #18
  %.not7 = icmp eq i32 %i.n, 0
  br i1 %.not7, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  %.val.i.pre = load ptr, ptr %6, align 8, !tbaa !115 ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %module_list_active.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.pre1317 = phi i32 [ %.pre1318, %bb.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = phi i32 [ %i.ai, %bb.i ], [ %i.p, %bb.d ]
  %i.s = phi ptr [ %i.aj, %bb.i ], [ %.val.i.pre, %bb.d ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.13.031.i = phi i32 [ %.sroa.13.1.i, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.sroa.7.030.i = phi i32 [ %.sroa.7.3.i, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.sroa.0.029.i = phi ptr [ %.sroa.0.2.i, %bb.i ], [ null, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %i.v = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.x = call i32 @is_submodule_active(ptr noundef %i.v, ptr noundef nonnull %i.w) #18
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i32 %.sroa.13.031.i, 1           ; 2 uses
  %.not21.i = icmp slt i32 %.sroa.13.031.i, %.sroa.7.030.i
  br i1 %.not21.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = mul i32 %.sroa.7.030.i, 3
  %i.aa = add i32 %i.z, 48
  %i.ab = sdiv i32 %i.aa, 2
  %..i = call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.y) ; 3 uses
  %i.ac = sext i32 %..i to i64                    ; 2 uses
  %mul.ov.i.i = icmp slt i32 %..i, 0
  br i1 %mul.ov.i.i, label %bb.g, label %st_mult.exit.i

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @die(ptr noundef nonnull @.str.181, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.ac) #19
  unreachable

st_mult.exit.i:                                   ; preds = %bb.f
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = call ptr @xrealloc(ptr noundef %.sroa.0.029.i, i64 noundef %i.ad) #18
  %.pre = load ptr, ptr %6, align 8, !tbaa !115
  %.pre13.pre = load i32, ptr %i.o, align 4, !tbaa !114
  br label %bb.h

bb.h:                                             ; preds = %st_mult.exit.i, %bb.e
  %.pre13 = phi i32 [ %.pre13.pre, %st_mult.exit.i ], [ %.pre1317, %bb.e ] ; 2 uses
  %i.af = phi ptr [ %.pre, %st_mult.exit.i ], [ %i.s, %bb.e ]
  %.sroa.0.1.i = phi ptr [ %i.ae, %st_mult.exit.i ], [ %.sroa.0.029.i, %bb.e ] ; 2 uses
  %.sroa.7.2.i = phi i32 [ %..i, %st_mult.exit.i ], [ %.sroa.7.030.i, %bb.e ]
  %i.ag = sext i32 %.sroa.13.031.i to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.sroa.0.1.i, i64 %i.ag
  store ptr %i.u, ptr %i.ah, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre1318 = phi i32 [ %.pre13, %bb.h ], [ %.pre1317, %.lr.ph.i ]
  %i.ai = phi i32 [ %.pre13, %bb.h ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %bb.h ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %bb.h ], [ %.sroa.0.029.i, %.lr.ph.i ] ; 2 uses
  %.sroa.7.3.i = phi i32 [ %.sroa.7.2.i, %bb.h ], [ %.sroa.7.030.i, %.lr.ph.i ]
  %.sroa.13.1.i = phi i32 [ %i.y, %bb.h ], [ %.sroa.13.031.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = icmp slt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %.lr.ph.i, label %module_list_active.exit, !llvm.loop !0

module_list_active.exit:                          ; preds = %bb.i, %bb.d
  %.val.i = phi ptr [ %.val.i.pre, %bb.d ], [ %i.aj, %bb.i ]
  %.sroa.0.0.lcssa.i = phi ptr [ null, %bb.d ], [ %.sroa.0.2.i, %bb.i ]
  %.sroa.13.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %.sroa.13.1.i, %bb.i ]
  call void @free(ptr noundef %.val.i) #18
  store ptr %.sroa.0.0.lcssa.i, ptr %6, align 8, !tbaa !116
  store i32 %.sroa.13.0.lcssa.i, ptr %i.o, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %module_list_active.exit, %bb.c, %bb.b
  store ptr %2, ptr %4, align 8, !tbaa !134
  %i.am = load i32, ptr %i.a, align 4, !tbaa !24
  %.not8 = icmp eq i32 %i.am, 0
  br i1 %.not8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !119
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !114 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %.val.pre15 = load ptr, ptr %6, align 8, !tbaa !115 ; 3 uses
  br i1 %i.aq, label %.lr.ph.i9.preheader, label %for_each_listed_submodule.exit

.lr.ph.i9.preheader:                              ; preds = %bb.l
  %i.ar = zext nneg i32 %i.ap to i64
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %.lr.ph.i9 ], [ 0, %.lr.ph.i9.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.pre15, i64 %indvars.iv.i10
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !84
  call fastcc void @init_submodule_cb(ptr noundef %i.at, ptr noundef nonnull %4) #18, !inline_history !1
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i11, %i.ar
  br i1 %exitcond.not, label %for_each_listed_submodule.exit, label %.lr.ph.i9, !llvm.loop !2

for_each_listed_submodule.exit:                   ; preds = %.lr.ph.i9, %.for_each_listed_submodule.exit_crit_edge, %bb.l
  %.val = phi ptr [ %.val.pre, %.for_each_listed_submodule.exit_crit_edge ], [ %.val.pre15, %bb.l ], [ %.val.pre15, %.lr.ph.i9 ]
  %.0 = phi i32 [ 1, %.for_each_listed_submodule.exit_crit_edge ], [ 0, %bb.l ], [ 0, %.lr.ph.i9 ]
  call void @free(ptr noundef %.val) #18
  call void @clear_pathspec(ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @module_status(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %5 = alloca %struct.strvec, align 8             ; 6 uses
  %6 = alloca %struct.rev_info, align 8           ; 21 uses
  %7 = alloca %struct.strbuf, align 8             ; 7 uses
  %8 = alloca %struct.object_id, align 4          ; 5 uses
  %9 = alloca %struct.child_process, align 8      ; 15 uses
  %10 = alloca %struct.status_cb, align 8         ; 7 uses
  %11 = alloca %struct.pathspec, align 8          ; 5 uses
  %12 = alloca %struct.module_list, align 8       ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %13 = alloca [5 x %struct.option], align 16     ; 45 uses
  %i.b = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i32 10, ptr %13, align 16, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.158, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.e, align 16, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 0, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr @.str.38, ptr %i.h, align 16, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr @.str.159, ptr %i.i, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 8, ptr %i.j, align 16, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.k, i8 0, i64 44, i1 false)
  store i32 8, ptr %i.l, align 16, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 100
  store i32 113, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr @.str.58, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %i.a, ptr %i.o, align 16, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 120
  store i64 4, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 128
  store ptr null, ptr %i.q, align 16, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 136
  store ptr @.str.265, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i32 2, ptr %i.s, align 16, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 148
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.t, i8 0, i64 44, i1 false)
  store i32 5, ptr %i.u, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 196
  store i32 0, ptr %i.v, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 200
  store ptr @.str.266, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 208
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.y, ptr %i.x, align 16, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 216
  store i64 4, ptr %i.z, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 224
  store ptr null, ptr %i.aa, align 16, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 232
  store ptr @.str.267, ptr %i.ab, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 240
  store i32 2, ptr %i.ac, align 16, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 244
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 248
  store ptr null, ptr %i.ae, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 256
  store i64 2, ptr %i.af, align 16, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 264
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store i32 5, ptr %i.ah, align 16, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 292
  store i32 0, ptr %i.ai, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 296
  store ptr @.str.163, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 304
  store ptr %i.y, ptr %i.ak, align 16, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 312
  store i64 4, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 320
  store ptr null, ptr %i.am, align 16, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 328
  store ptr @.str.252, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 336
  store i32 2, ptr %i.ao, align 16, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 340
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 344
  store ptr null, ptr %i.aq, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 352
  store i64 4, ptr %i.ar, align 16, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.as, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.module_status.git_submodule_helper_usage, i64 16, i1 false)
  %i.at = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %i.b, i32 noundef 0) #18 ; 0 uses
  %i.au = call fastcc i32 @module_list_compute(ptr noundef %1, ptr noundef %2, ptr noundef %11, ptr noundef %12)
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.for_each_listed_submodule.exit_crit_edge, label %bb.b

.for_each_listed_submodule.exit_crit_edge:        ; preds = %bb.a
  %.val.pre = load ptr, ptr %12, align 8, !tbaa !115
  br label %for_each_listed_submodule.exit

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %10, align 8, !tbaa !247
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !248
  %i.ay = or i32 %i.ax, 1
  store i32 %i.ay, ptr %i.y, align 8, !tbaa !248
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !114 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %.val.pre40 = load ptr, ptr %12, align 8, !tbaa !115 ; 3 uses
  br i1 %i.bb, label %.lr.ph.i.preheader, label %for_each_listed_submodule.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 332
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 368
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 372
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 376 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 380
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 1452
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 1456
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 1464
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 1492
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 2224
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 2268
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 2904
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bt = zext nneg i32 %i.ba to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %status_submodule_cb.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %status_submodule_cb.exit ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val.pre40, i64 %indvars.iv.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84 ; 3 uses
end_hunk_1
begin_hunk_2_@module_summary:bb.a
  %10 = alloca [5 x %struct.option], align 16     ; 47 uses
  %i.f = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 -1, ptr %i.e, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i32 9, ptr %10, align 16, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.266, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.b, ptr %i.i, align 16, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 4, ptr %i.j, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.k, align 16, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr @.str.306, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 2, ptr %i.m, align 16, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 1, ptr %i.p, align 16, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.r, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 100
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr @.str.307, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %i.d, ptr %i.u, align 16, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i64 4, ptr %i.v, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr null, ptr %i.w, align 16, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr @.str.308, ptr %i.x, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i32 2, ptr %i.y, align 16, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 148
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr null, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 160
  store i64 1, ptr %i.ab, align 16, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.ad, align 16, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 196
  store i32 0, ptr %i.ae, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 200
  store ptr @.str.309, ptr %i.af, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr %i.c, ptr %i.ag, align 16, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 216
  store i64 4, ptr %i.ah, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 224
  store ptr null, ptr %i.ai, align 16, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 232
  store ptr @.str.310, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 240
  store i32 2, ptr %i.ak, align 16, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 244
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 248
  store ptr null, ptr %i.am, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 256
  store i64 1, ptr %i.an, align 16, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store i32 11, ptr %i.ap, align 16, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 292
  store i32 110, ptr %i.aq, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 296
  store ptr @.str.311, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr %i.e, ptr %i.as, align 16, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 312
  store i64 4, ptr %i.at, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 320
  store ptr @.str.56, ptr %i.au, align 16, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 328
  store ptr @.str.312, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.aw, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const.module_summary.git_submodule_helper_usage, i64 16, i1 false)
  %i.ax = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %i.f, i32 noundef 0) #18 ; 4 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !24
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr @the_repository, align 8, !tbaa !30 ; 2 uses
  %.not23 = icmp eq i32 %i.ax, 0
  br i1 %.not23, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ba = call i32 @repo_get_oid(ptr noundef %i.az, ptr noundef nonnull @.str.130, ptr noundef nonnull %9) #18
  %.not24 = icmp eq i32 %i.ba, 0
  br i1 %.not24, label %bb.i, label %.critedge

.thread:                                          ; preds = %bb.b
  %i.bb = load ptr, ptr %1, align 8, !tbaa !55
  %i.bc = call i32 @repo_get_oid(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef nonnull %9) #18
  %.not2431 = icmp eq i32 %i.bc, 0
  br i1 %.not2431, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = add nsw i32 %i.ax, -1
  br label %bb.i

bb.e:                                             ; preds = %.thread
  %i.bf = load ptr, ptr %1, align 8, !tbaa !55
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(5) @.str.130) #20
  %.not25 = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr @the_repository, align 8, !tbaa !30 ; 2 uses
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 448
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !266 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bl, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !130
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !130
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = add nsw i32 %i.ax, -1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.br = call i32 @repo_get_oid(ptr noundef %i.bh, ptr noundef nonnull @.str.130, ptr noundef nonnull %9) #18
  %.not26 = icmp eq i32 %i.br, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = call fastcc ptr @_(ptr noundef nonnull @.str.314)
  call void (ptr, ...) @die(ptr noundef %i.bs) #19
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.bt = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 448
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !89
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !266 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bx, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !130
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %.critedge, %bb.f, %bb.g, %bb.d
  %.021 = phi ptr [ %1, %bb.g ], [ %i.bp, %bb.f ], [ %1, %bb.c ], [ %i.bd, %bb.d ], [ %1, %.critedge ] ; 2 uses
  %.020 = phi i32 [ %i.ax, %bb.g ], [ %i.bq, %bb.f ], [ 0, %bb.c ], [ %i.be, %bb.d ], [ 0, %.critedge ] ; 2 uses
  %i.cb = load i32, ptr %i.d, align 4, !tbaa !24
  %.not27.not = icmp eq i32 %i.cb, 0              ; 3 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  br i1 %.not27.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28 = icmp eq i32 %.pre, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = call fastcc ptr @_(ptr noundef nonnull @.str.315)
  call void (ptr, ...) @die(ptr noundef %i.cc, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.316) #19
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.str.320..str.270.i.i = phi ptr [ @.str.320, %bb.i ], [ @.str.270, %bb.j ]
  %i.cd = phi i8 [ 0, %bb.i ], [ 4, %bb.j ]
  %. = phi ptr [ %9, %bb.i ], [ null, %bb.j ]     ; 2 uses
  store i32 %.020, ptr %8, align 8, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.021, ptr %i.ce, align 8, !tbaa !268
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %2, ptr %i.cf, align 8, !tbaa !175
  %i.cg = icmp ne i32 %.pre, 0                    ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ci = zext i1 %i.cg to i8
  %i.cj = or disjoint i8 %i.cd, %i.ci
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !24
  %.fr = freeze i32 %i.ck
  %.not30 = icmp eq i32 %.fr, 0                   ; 2 uses
  %i.cl = select i1 %.not30, i8 0, i8 2
  %i.cm = or disjoint i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ch, align 8
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.compute_summary_module_list.diff_args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cp = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull %.str.320..str.270.i.i) #18 ; 0 uses
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.273) #18 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %5, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.317, ptr noundef null) #18
  %.not13.i = icmp eq ptr %., null
  br i1 %.not13.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = call ptr @oid_to_hex(ptr noundef nonnull %.) #18
  %i.cs = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef %i.cr) #18 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ct = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.84) #18 ; 0 uses
  %.not14.i = icmp eq i32 %.020, 0
  br i1 %.not14.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @strvec_pushv(ptr noundef nonnull %5, ptr noundef %.021) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cu = load ptr, ptr @the_repository, align 8, !tbaa !30
  call void @repo_config(ptr noundef %i.cu, ptr noundef nonnull @git_diff_basic_config, ptr noundef null) #18
  %i.cv = load ptr, ptr @the_repository, align 8, !tbaa !30
  call void @repo_init_revisions(ptr noundef %i.cv, ptr noundef nonnull %6, ptr noundef %2) #18
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 376
  store i32 0, ptr %i.cw, align 8, !tbaa !171
  call void @setup_revisions_from_strvec(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #18
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 1800
  store i32 6144, ptr %i.cx, align 8, !tbaa !269
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 2040
  store ptr @submodule_summary_callback, ptr %i.cy, align 8, !tbaa !270
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 2048
  store ptr %7, ptr %i.cz, align 8, !tbaa !271
  br i1 %i.cg, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not27.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = load ptr, ptr @the_repository, align 8, !tbaa !30
  call void @setup_work_tree(ptr noundef %i.da) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.db = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 1984
  %i.dd = call i32 @repo_read_index_preload(ptr noundef %i.db, ptr noundef nonnull %i.dc, i32 noundef 0) #18
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %prepare_submodule_summary.exit.sink.split.i, label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.df = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.dg = call i32 @repo_read_index(ptr noundef %i.df) #18
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %prepare_submodule_summary.exit.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not27.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.di = zext i1 %i.cg to i32
  call void @run_diff_index(ptr noundef nonnull %6, i32 noundef %i.di) #18
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @run_diff_files(ptr noundef nonnull %6, i32 noundef 0) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !179
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.preheader, label %prepare_submodule_summary.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.z
  br i1 %.not30, label %.lr.ph.i.i.us, label %.lr.ph.i.i

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader, %bb.ae
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us, %bb.ae ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !180
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i.i.us
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !182 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !184
  switch i8 %i.dq, label %bb.ab [
    i8 68, label %bb.aa
    i8 84, label %bb.aa
  ]

bb.aa:                                            ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.us
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.do)
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.i.i.us
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !185 ; 2 uses
  %i.dt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #20
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.ds, i64 noundef %i.dt) #18
  %i.du = call i32 @is_nonbare_repository_dir(ptr noundef nonnull %4) #18
  %.not32.i.i.us = icmp eq i32 %i.du, 0
  br i1 %.not32.i.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.do)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @strbuf_release(ptr noundef nonnull %4) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %i.dv = load i32, ptr %i.dj, align 4, !tbaa !179
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next.i.i.us, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i.us, label %prepare_submodule_summary.exit.i, !llvm.loop !264

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.an
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.an ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dy = load ptr, ptr %7, align 8, !tbaa !180
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.i.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !182 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !184
  switch i8 %i.ec, label %bb.ag [
    i8 68, label %bb.af
    i8 84, label %bb.af
    i8 65, label %bb.ak
  ]

bb.af:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.ea)
  br label %bb.an

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.ed = load ptr, ptr @the_repository, align 8, !tbaa !30 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 448
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !89
  %i.eg = call ptr @null_oid(ptr noundef %i.ef) #18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !185
  %i.ej = call ptr @submodule_from_path(ptr noundef %i.ed, ptr noundef %i.eg, ptr noundef %i.ei) #18 ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ej, null
  br i1 %.not27.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !128
  %i.em = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.322, ptr noundef %i.el) #18 ; 4 uses
  %i.en = load ptr, ptr @the_repository, align 8, !tbaa !30
  %i.eo = call i32 @repo_config_get_string_tmp(ptr noundef %i.en, ptr noundef %i.em, ptr noundef nonnull %i.a) #18
  %.not28.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not28.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !272 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.eq, null
  br i1 %.not30.i.i, label %.critedge.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ai
  %i.er = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eq, ptr noundef nonnull dereferenceable(4) @.str.290) #20
  %.not31.i.i = icmp eq i32 %i.er, 0
  call void @free(ptr noundef %i.em) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not31.i.i, label %bb.an, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.et = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.es, ptr noundef nonnull dereferenceable(4) @.str.290) #20
  %.not29.i.i = icmp eq i32 %i.et, 0
  call void @free(ptr noundef %i.em) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not29.i.i, label %bb.an, label %bb.ak

.critedge.i.i:                                    ; preds = %bb.ai
  call void @free(ptr noundef %i.em) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
end_hunk_2
