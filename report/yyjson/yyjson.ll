Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_read_number:bb.a
  %i.ayl = add nsw i64 %indvars.iv409, -2         ; 2 uses
  %i.aym = getelementptr [8 x i8], ptr %5, i64 %i.axz
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !91
  %i.ayo = lshr i64 %i.ayn, %i.awa
  %i.ayp = or i64 %i.ayo, %i.ayk
  %i.ayq = trunc nuw i64 %i.axz to i32
  %i.ayr = add i32 %i.ate, %i.ayq
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ays
  store i64 %i.ayp, ptr %i.ayt, align 8, !tbaa !91
  %.not.i37.wide.1 = icmp eq i64 %i.ayl, 0
  br i1 %.not.i37.wide.1, label %._crit_edge312, label %scalar.ph, !llvm.loop !257

._crit_edge312:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ic
  %i.ayu = load i64, ptr %i.avw, align 8, !tbaa !91
  %i.ayv = shl i64 %i.ayu, %.pre460
  %i.ayw = zext nneg i32 %i.ate to i64
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayw
  store i64 %i.ayv, ptr %i.ayx, align 8, !tbaa !91
  %i.ayy = add i32 %i.atf, %i.ate                 ; 2 uses
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayz
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !91
  %i.azc = icmp ne i64 %i.azb, 0
  %i.azd = zext i1 %i.azc to i32
  %i.aze = add i32 %i.ayy, %i.azd
  store i32 %i.aze, ptr %5, align 8, !tbaa !138
  %.not45.i39313 = icmp eq i32 %i.ate, 0
  br i1 %.not45.i39313, label %bigint_mul_pow2.exit, label %bigint_mul_pow2.exit.sink.split

bigint_mul_pow2.exit.sink.split:                  ; preds = %._crit_edge312, %._crit_edge329, %.lr.ph341.preheader, %.lr.ph324
  %.sink616.a = phi i32 [ %i.anf, %._crit_edge329 ], [ %i.ate, %.lr.ph324 ], [ %i.anf, %.lr.ph341.preheader ], [ %i.ate, %._crit_edge312 ]
  %.sink611 = phi ptr [ %i.age, %._crit_edge329 ], [ %i.avv, %.lr.ph324 ], [ %i.age, %.lr.ph341.preheader ], [ %i.avw, %._crit_edge312 ]
  %.ph610 = phi i32 [ %i.atb, %._crit_edge329 ], [ %i.anc, %.lr.ph324 ], [ %i.apt, %.lr.ph341.preheader ], [ %i.anc, %._crit_edge312 ]
  %i.azf = add nsw i32 %.sink616.a, -1
  %i.azg = zext i32 %i.azf to i64
  %i.azh = shl nuw nsw i64 %i.azg, 3
  %i.azi = add nuw nsw i64 %i.azh, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink611, i8 0, i64 %i.azi, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %bigint_mul_pow2.exit.sink.split, %._crit_edge312, %._crit_edge320, %._crit_edge329
  %i.azj = phi i32 [ %i.atb, %._crit_edge329 ], [ %i.anc, %._crit_edge312 ], [ %i.anc, %._crit_edge320 ], [ %.ph610, %bigint_mul_pow2.exit.sink.split ] ; 2 uses
  %i.azk = load i32, ptr %5, align 8, !tbaa !138  ; 4 uses
  %i.azl = icmp ult i32 %i.azk, %i.azj
  br i1 %i.azl, label %bigint_cmp.exit.thread, label %bb.id

bb.id:                                            ; preds = %bigint_mul_pow2.exit
  %i.azm = icmp ugt i32 %i.azk, %i.azj
  br i1 %i.azm, label %bigint_cmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.id
  %.not.i45649 = icmp eq i32 %i.azk, 0
  br i1 %.not.i45649, label %bigint_cmp.exit.thread133, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader
  %i.azn = zext i32 %i.azk to i64
  br label %bb.if

bb.ie:                                            ; preds = %bb.if
  %i.azo = add nsw i64 %indvars.iv427650, -1      ; 2 uses
  %.not.i45 = icmp eq i64 %i.azo, 0
  br i1 %.not.i45, label %bigint_cmp.exit.thread133, label %bb.if, !llvm.loop !153

bb.if:                                            ; preds = %.lr.ph652, %bb.ie
  %.016.i651 = phi i32 [ undef, %.lr.ph652 ], [ %.1.i46, %bb.ie ]
  %indvars.iv427650 = phi i64 [ %i.azn, %.lr.ph652 ], [ %i.azo, %bb.ie ] ; 3 uses
  %i.azp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv427650
  %i.azq = load i64, ptr %i.azp, align 8, !tbaa !91 ; 3 uses
  %i.azr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv427650
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !91 ; 3 uses
  %.not182.a = icmp ult i64 %i.azq, %i.azs
  %.not183.a = icmp ugt i64 %i.azq, %i.azs
  %..016.i = select i1 %.not183.a, i32 1, i32 %.016.i651
  %.1.i46 = select i1 %.not182.a, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.azq, %i.azs
  br i1 %cond.i, label %bb.ie, label %bigint_cmp.exit, !llvm.loop !153

bigint_cmp.exit:                                  ; preds = %bb.if
  %.not989.i = icmp eq i32 %.1.i46, 0
  br i1 %.not989.i, label %bigint_cmp.exit.thread133, label %bigint_cmp.exit.thread, !prof !124

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.id, %bigint_cmp.exit
  %.2.i47132 = phi i32 [ %.1.i46, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.id ]
  %i.azt = icmp sgt i32 %.2.i47132, 0
  %i.azu = zext i1 %i.azt to i64
  br label %bb.ig

bigint_cmp.exit.thread133:                        ; preds = %bb.ie, %.preheader, %bigint_cmp.exit
  %i.azv = and i64 %.0.i28.ph, 1
  br label %bb.ig

bb.ig:                                            ; preds = %bigint_cmp.exit.thread133, %bigint_cmp.exit.thread
  %.pn.i = phi i64 [ %i.azu, %bigint_cmp.exit.thread ], [ %i.azv, %bigint_cmp.exit.thread133 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i28.ph   ; 2 uses
  %i.azw = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.azw, label %bb.ih, label %bb.il, !prof !8

bb.ih:                                            ; preds = %bb.ig
  %i.azx = and i32 %2, 128
  %.not184.a = icmp eq i32 %i.azx, 0
  br i1 %.not184.a, label %bb.ij, label %bb.ii, !prof !25

bb.ii:                                            ; preds = %bb.ih
  %i.azy = load ptr, ptr %i.d, align 8, !tbaa !92
  store i8 0, ptr %i.azy, align 1, !tbaa !81
  %i.azz = ptrtoint ptr %.33.i to i64
  %i.baa = sub i64 %i.azz, %i.f
  %i.bab = shl i64 %i.baa, 8
  %i.bac = or disjoint i64 %i.bab, 1
  store i64 %i.bac, ptr %1, align 8, !tbaa !79
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.bad, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.ij:                                            ; preds = %bb.ih
  %i.bae = and i32 %2, 16
  %.not185 = icmp eq i32 %i.bae, 0
  br i1 %.not185, label %read_num.exit, label %bb.ik, !prof !25

bb.ik:                                            ; preds = %bb.ij
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.baf = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.baf, ptr %i.bag, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.il:                                            ; preds = %bb.ig
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.bah = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.bai = or disjoint i64 %.0895.i, %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bai, ptr %i.baj, align 8, !tbaa !81
  br label %read_num.exit.thread142

read_num.exit.thread138:                          ; preds = %bb.fx, %bb.ac, %bb.fm, %bb.ge, %bb.fd, %read_inf_or_nan.exit.thread, %bb.fs, %bb.gn, %bb.ae, %bb.ag
  %.sink617 = phi ptr [ %i.yj, %bb.fx ], [ %i.de, %bb.ac ], [ %i.wv, %bb.fm ], [ %0, %bb.ge ], [ %i.vv, %bb.fd ], [ %.0903.i215, %read_inf_or_nan.exit.thread ], [ %.28.i, %bb.fs ], [ %0, %bb.gn ], [ %i.dt, %bb.ae ], [ %i.ee, %bb.ag ]
  store ptr %.sink617, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split

read_num.exit.thread142:                          ; preds = %bb.hf, %bb.hh, %bb.hj, %bb.ii, %bb.ik, %bb.il
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split618

read_num.exit:                                    ; preds = %bb.ij, %bb.hg
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  store ptr %0, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split

.sink.split:                                      ; preds = %read_num.exit.thread138, %read_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.im

bb.im:                                            ; preds = %.sink.split, %.split140, %.split
  br i1 %.not, label %.cont.cont.cont, label %.cont89.cont.else

.cont89.cont.else:                                ; preds = %bb.im
  %.sroa.gep69 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bak = load ptr, ptr %i.b, align 8, !tbaa !92 ; 2 uses
  %i.bal = icmp ugt ptr %i.bak, %0
  %i.bam = ptrtoint ptr %i.bak to i64
  %i.ban = sub i64 %i.bam, %i.f
  %i.bao = select i1 %i.bal, i64 %i.ban, i64 0
  store i64 %i.bao, ptr %.sroa.gep69, align 8, !tbaa !105
  %i.bap = load ptr, ptr %i.e, align 8, !tbaa !92
  %.sroa.gep71 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bap, ptr %.sroa.gep71, align 8, !tbaa !107
  store i32 9, ptr %4, align 8, !tbaa !108
  br label %.cont.cont.cont

.sink.split618:                                   ; preds = %read_inf.exit, %bb.v, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bu, %bb.bx, %bb.ca, %bb.cd, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cv, %bb.cy, %bb.db, %bb.de, %bb.bd, %bb.bc, %bb.bb, %bb.ey, %bb.ex, %bb.ew, %.thread, %bb.bf, %.loopexit202, %bb.fv, %bb.fi, %bb.ab, %bb.gs, %bb.gx, %bb.gm, %bb.gk, %bb.gh, %bb.gd, %bb.gb, %bb.fz, %read_num.exit.thread142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.in

bb.in:                                            ; preds = %.sink.split618, %.split140, %.split
  %i.baq = load ptr, ptr %i.b, align 8, !tbaa !92
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %.cont89.cont.else, %bb.im, %.cont86.cont.else, %bb.d, %.cont.cont.else, %bb.b, %bb.in
  %.0 = phi ptr [ null, %.cont86.cont.else ], [ null, %.cont.cont.else ], [ %i.baq, %bb.in ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.im ], [ null, %.cont89.cont.else ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_incr_new(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.sroa.77.0 = phi ptr [ %.sroa.77.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 3 uses
  %i.a = and i32 %2, -16221
  %.not48 = icmp eq ptr %0, null
  %i.b = icmp ugt i64 %1, -6
  %or.cond = or i1 %.not48, %i.b
  br i1 %or.cond, label %bb.k, label %bb.d, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef 144) #33 ; 15 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0, ptr %i.d, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx5, align 8, !tbaa !10
  %.sroa.77.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.77.0, ptr %.sroa.77.0..sroa_idx9, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx12, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.a, ptr %i.e, align 8, !tbaa !259
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %1, ptr %i.f, align 8, !tbaa !261
  %i.g = and i32 %2, 1
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.g, label %bb.f, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %0, ptr %i.h, align 8, !tbaa !262
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = add nuw i64 %1, 4
  %i.j = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef %i.i) #33 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !262
  %.not50 = icmp eq ptr %i.j, null
  br i1 %.not50, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void %.sroa.77.0(ptr noundef %.sroa.8.0, ptr noundef nonnull %i.c) #33
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %0, i64 %1, i1 false)
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !262
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.l = phi ptr [ %.pre, %bb.i ], [ %0, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  store i32 0, ptr %i.n, align 1
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !262
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !263
  store i32 0, ptr %i.c, align 8, !tbaa !264
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.j, %bb.h
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ %i.c, %bb.j ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @yyjson_incr_free(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265  ; 2 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.c) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !259
  %i.h = and i32 %i.g, 1
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.e) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_incr_read(ptr nofree noundef %0, i64 noundef %1, ptr nofree noundef writeonly %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %3 = alloca %struct.bigint, align 8             ; 29 uses
  %4 = alloca %struct.bigint, align 8             ; 19 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %5 = alloca %struct.bigint, align 8             ; 29 uses
  %6 = alloca %struct.bigint, align 8             ; 20 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %7 = alloca %struct.bigint, align 8             ; 29 uses
  %8 = alloca %struct.bigint, align 8             ; 20 uses
  %i.d = alloca ptr, align 8                      ; 212 uses
  %i.e = alloca ptr, align 8                      ; 50 uses
  %9 = alloca %struct.yyjson_read_err, align 8    ; 41 uses
  %i.f = alloca [1 x i8], align 1                 ; 9 uses
  %i.g = alloca ptr, align 8                      ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %i.f, ptr %i.g, align 8, !tbaa !92
  %.not = icmp eq ptr %2, null                    ; 39 uses
  %spec.store.select = select i1 %.not, ptr %9, ptr %2 ; 21 uses
  %.not812 = icmp eq ptr %0, null
  br i1 %.not812, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.12, ptr %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 1, ptr %spec.store.select, align 8, !tbaa !108
  br label %bb.atv

bb.c:                                             ; preds = %bb.a
  %.not813 = icmp eq i64 %1, 0
  br i1 %.not813, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.1, ptr %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 1, ptr %spec.store.select, align 8, !tbaa !108
  br label %bb.atv

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !261
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.13, ptr %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 1, ptr %spec.store.select, align 8, !tbaa !108
  br label %bb.atv

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !262  ; 35 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1 ; 36 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !263
  store ptr %i.o, ptr %i.d, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !259
  %.fr = freeze i32 %i.q                          ; 90 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %10 = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10 ; 8 uses
  %.sroa.13338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13338.0.copyload = load ptr, ptr %.sroa.13338.0..sroa_idx, align 8, !tbaa !10 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !266  ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !267  ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !268  ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 25 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !269  ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !265 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !270 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !271 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.ah = load i8, ptr %i.m, align 1, !tbaa !81
  store i8 0, ptr %i.m, align 1, !tbaa !81
  %i.ai = load i32, ptr %0, align 8, !tbaa !264
  switch i32 %i.ai, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.nj
    i32 2, label %..preheader3575_crit_edge
    i32 3, label %bb.abl
    i32 4, label %..preheader3613_crit_edge
    i32 5, label %._crit_edge4904
    i32 6, label %..preheader3579_crit_edge
    i32 7, label %read_str_opt.exit
  ]

..preheader3575_crit_edge:                        ; preds = %bb.g
  %.promoted4033.pre = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3575

..preheader3579_crit_edge:                        ; preds = %bb.g
  %.promoted4026.pre = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

._crit_edge4904:                                  ; preds = %bb.g
  %.pre4905 = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %bb.afi

..preheader3613_crit_edge:                        ; preds = %bb.g
  %.promoted3817.pre = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3613

bb.h:                                             ; preds = %bb.g
  %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.14, ptr %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 1, ptr %spec.store.select, align 8, !tbaa !108
  br label %bb.atv

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !92  ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !81  ; 4 uses
  %i.al = and i8 %i.ak, -33
  %i.am = icmp eq i8 %i.al, 91
  br i1 %i.am, label %bb.j, label %.preheader3630, !prof !25

.preheader3630:                                   ; preds = %bb.i
  %i.an = zext i8 %i.ak to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = and i8 %i.ap, 4
  %.not33513744 = icmp eq i8 %i.aq, 0
  br i1 %.not33513744, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader3630, %.lr.ph
  %i.ar = phi ptr [ %i.as, %.lr.ph ], [ %i.aj, %.preheader3630 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 4 uses
  store ptr %i.as, ptr %i.d, align 8, !tbaa !92
  %i.at = load i8, ptr %i.as, align 1, !tbaa !81  ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = and i8 %i.aw, 4
  %.not3351 = icmp eq i8 %i.ax, 0
  br i1 %.not3351, label %._crit_edge, label %.lr.ph, !llvm.loop !272

._crit_edge:                                      ; preds = %.lr.ph, %.preheader3630
  %i.ay = phi i8 [ %i.ak, %.preheader3630 ], [ %i.at, %.lr.ph ]
  %.lcssa3743 = phi ptr [ %i.aj, %.preheader3630 ], [ %i.as, %.lr.ph ] ; 2 uses
  %.not814 = icmp ult ptr %.lcssa3743, %i.m
  br i1 %.not814, label %bb.j, label %.loopexit3576, !prof !25

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.az = phi i8 [ %i.ay, %._crit_edge ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ba = phi ptr [ %.lcssa3743, %._crit_edge ], [ %i.aj, %bb.i ]
  %.not815 = icmp eq ptr %i.ab, null
  br i1 %.not815, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bb = and i8 %i.az, -33
  %i.bc = icmp eq i8 %i.bb, 91
  br i1 %i.bc, label %bb.l, label %bb.n, !prof !25

bb.l:                                             ; preds = %bb.k
  %i.bd = and i32 %.fr, 2
  %.not3352 = icmp eq i32 %i.bd, 0
  br i1 %.not3352, label %bb.m, label %bb.n, !prof !25

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.h, align 8, !tbaa !261
  %i.bf = udiv i64 %i.be, 6
  %i.bg = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846967)
  %i.bh = add nuw nsw i64 %i.bg, 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.0722 = phi i64 [ 50, %bb.l ], [ %i.bh, %bb.m ], [ 5, %bb.k ] ; 5 uses
  %i.bi = shl nuw i64 %.0722, 4
  %i.bj = call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.13338.0.copyload, i64 noundef %i.bi) #33 ; 5 uses
  %.not816 = icmp eq ptr %i.bj, null
  br i1 %.not816, label %bb.ate, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr [16 x i8], ptr %i.bj, i64 %.0722
  %i.bl = getelementptr i8, ptr %i.bk, i64 -32    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 4 uses
  store ptr %i.bj, ptr %i.aa, align 8, !tbaa !265
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !270
  store i32 0, ptr %0, align 8, !tbaa !264
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !92  ; 4 uses
  store ptr %i.bn, ptr %i.n, align 8, !tbaa !263
  store ptr %i.bm, ptr %i.y, align 8, !tbaa !269
  store i64 0, ptr %i.s, align 8, !tbaa !266
  store i64 4, ptr %i.u, align 8, !tbaa !267
  %.not817 = icmp ult ptr %i.bn, %i.m
  br i1 %.not817, label %._crit_edge4890, label %.loopexit3576, !prof !25

._crit_edge4890:                                  ; preds = %bb.o
  %.pre = load i8, ptr %i.bn, align 1, !tbaa !81
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge4890, %bb.j
  %i.bo = phi i8 [ %i.az, %bb.j ], [ %.pre, %._crit_edge4890 ] ; 5 uses
  %i.bp = phi ptr [ %i.ba, %bb.j ], [ %i.bn, %._crit_edge4890 ] ; 37 uses
  %.0752 = phi i64 [ %i.v, %bb.j ], [ 4, %._crit_edge4890 ] ; 11 uses
  %.1723 = phi i64 [ %i.x, %bb.j ], [ %.0722, %._crit_edge4890 ] ; 40 uses
  %.0710 = phi i64 [ %i.t, %bb.j ], [ 0, %._crit_edge4890 ] ; 11 uses
  %.0682 = phi ptr [ %i.ab, %bb.j ], [ %i.bj, %._crit_edge4890 ] ; 11 uses
  %.0645 = phi ptr [ %i.ad, %bb.j ], [ %i.bl, %._crit_edge4890 ] ; 40 uses
  %.0617 = phi ptr [ %i.z, %bb.j ], [ %i.bm, %._crit_edge4890 ] ; 110 uses
  %.0609 = phi ptr [ %i.af, %bb.j ], [ %i.bm, %._crit_edge4890 ] ; 44 uses
  switch i8 %i.bo, label %bb.s [
    i8 123, label %bb.q
    i8 91, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !92
  store i64 7, ptr %.0609, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %.0609, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !81
  br label %bb.abl

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !92
  store i64 6, ptr %.0609, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %.0609, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !81
  br label %bb.nj

bb.s:                                             ; preds = %bb.p
  %i.bu = zext i8 %i.bo to i64                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %i.bx = and i8 %i.bw, 16
  %.not3459 = icmp eq i8 %i.bx, 0
  br i1 %.not3459, label %bb.jf, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !114
  %i.by = and i32 %.fr, 32
  %.not3464 = icmp eq i32 %i.by, 0
  br i1 %.not3464, label %bb.u, label %.split, !prof !25

.split:                                           ; preds = %bb.t
  %i.bz = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, i32 noundef %.fr, ptr noundef %.0617, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.bz, label %read_str_opt.exit, label %bb.atc, !prof !169

bb.u:                                             ; preds = %bb.t
  %i.ca = icmp eq i8 %i.bo, 45                    ; 56 uses
  %i.cb = zext i1 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cb ; 6 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81  ; 4 uses
  %i.ce = add i8 %i.cd, -49
  %i.cf = icmp ult i8 %i.ce, 9
  br i1 %i.cf, label %._crit_edge4245, label %.lr.ph4244, !prof !116

.lr.ph4244:                                       ; preds = %bb.u
end_hunk_0
begin_hunk_1_@yyjson_incr_read:bb.a
  store i64 %i.ita, ptr %i.itb, align 8, !tbaa !81
  br label %read_num.exit.thread3326

read_num.exit.thread3321:                         ; preds = %bb.aps, %bb.ajx, %bb.aph, %bb.apz, %bb.aoy, %read_inf_or_nan.exit1133.thread, %bb.apn, %bb.aqi, %bb.ajz, %bb.akb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.atc

read_num.exit.thread3326:                         ; preds = %bb.ara, %bb.arc, %bb.arf, %bb.ase, %bb.asg, %bb.asi
  store ptr %.33.i, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.sink.split5742

read_num.exit:                                    ; preds = %bb.ard, %bb.ash
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.atc

bb.asj:                                           ; preds = %.lr.ph3828
  switch i8 %i.gqy, label %bb.asn [
    i8 123, label %.loopexit3570
    i8 91, label %.loopexit3571
    i8 116, label %bb.ask
    i8 102, label %bb.asl
    i8 110, label %bb.asm
  ]

bb.ask:                                           ; preds = %bb.asj
  %.sroa.01.0.copyload.i1665 = load i32, ptr %i.gqx, align 1
  %i.itc = icmp eq i32 %.sroa.01.0.copyload.i1665, 1702195828
  br i1 %i.itc, label %read_true.exit, label %read_true.exit1119, !prof !25

read_true.exit:                                   ; preds = %bb.ask
  %i.itd = add i64 %.8718, 1
  %i.ite = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 11, ptr %i.ite, align 8, !tbaa !79
  %i.itf = getelementptr inbounds nuw i8, ptr %i.gqx, i64 4 ; 2 uses
  store ptr %i.itf, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

bb.asl:                                           ; preds = %bb.asj
  %i.itg = getelementptr inbounds nuw i8, ptr %i.gqx, i64 1
  %.sroa.01.0.copyload.i1662 = load i32, ptr %i.itg, align 1
  %i.ith = icmp eq i32 %.sroa.01.0.copyload.i1662, 1702063201
  br i1 %i.ith, label %read_false.exit, label %read_false.exit1121, !prof !25

read_false.exit:                                  ; preds = %bb.asl
  %i.iti = add i64 %.8718, 1
  %i.itj = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 3, ptr %i.itj, align 8, !tbaa !79
  %i.itk = getelementptr inbounds nuw i8, ptr %i.gqx, i64 5 ; 2 uses
  store ptr %i.itk, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

bb.asm:                                           ; preds = %bb.asj
  %.sroa.01.0.copyload.i1659 = load i32, ptr %i.gqx, align 1
  %i.itl = icmp eq i32 %.sroa.01.0.copyload.i1659, 1819047278
  br i1 %i.itl, label %read_null.exit, label %read_null.exit1123, !prof !25

read_null.exit:                                   ; preds = %bb.asm
  %i.itm = add i64 %.8718, 1
  %i.itn = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 2, ptr %i.itn, align 8, !tbaa !79
  %i.ito = getelementptr inbounds nuw i8, ptr %i.gqx, i64 4 ; 2 uses
  store ptr %i.ito, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

.preheader3579:                                   ; preds = %..preheader3579_crit_edge, %bb.abi, %bb.aso, %bb.asv, %read_str_opt.exit1192, %read_true.exit, %read_false.exit, %read_null.exit
  %.promoted4026 = phi ptr [ %i.ito, %read_null.exit ], [ %i.itk, %read_false.exit ], [ %i.itf, %read_true.exit ], [ %i.ity, %bb.aso ], [ %.promoted4026.pre, %..preheader3579_crit_edge ], [ %.promoted40264920, %bb.abi ], [ %.promoted40264919, %bb.asv ], [ %i.gqu, %read_str_opt.exit1192 ] ; 3 uses
  %.9761.ph = phi i64 [ %.8760, %read_null.exit ], [ %.8760, %read_false.exit ], [ %.8760, %read_true.exit ], [ %.8760, %bb.aso ], [ %i.v, %..preheader3579_crit_edge ], [ %.4756, %bb.abi ], [ %.10762, %bb.asv ], [ %.8760, %read_str_opt.exit1192 ] ; 3 uses
  %.18740.ph = phi i64 [ %.17739, %read_null.exit ], [ %.17739, %read_false.exit ], [ %.17739, %read_true.exit ], [ %.17739, %bb.aso ], [ %i.x, %..preheader3579_crit_edge ], [ %.11733, %bb.abi ], [ %.19741, %bb.asv ], [ %.17739, %read_str_opt.exit1192 ] ; 5 uses
  %.9719.ph = phi i64 [ %i.itm, %read_null.exit ], [ %i.iti, %read_false.exit ], [ %i.itd, %read_true.exit ], [ %i.itx, %bb.aso ], [ %i.t, %..preheader3579_crit_edge ], [ %i.fan, %bb.abi ], [ %i.ivc, %bb.asv ], [ %i.fxk, %read_str_opt.exit1192 ] ; 3 uses
  %.25707.ph = phi ptr [ %.24706, %read_null.exit ], [ %.24706, %read_false.exit ], [ %.24706, %read_true.exit ], [ %.24706, %bb.aso ], [ %i.ab, %..preheader3579_crit_edge ], [ %.16698, %bb.abi ], [ %.26708, %bb.asv ], [ %.24706, %read_str_opt.exit1192 ] ; 2 uses
  %.25670.ph = phi ptr [ %.24669, %read_null.exit ], [ %.24669, %read_false.exit ], [ %.24669, %read_true.exit ], [ %.24669, %bb.aso ], [ %i.ad, %..preheader3579_crit_edge ], [ %.16661, %bb.abi ], [ %.26671, %bb.asv ], [ %.24669, %read_str_opt.exit1192 ] ; 5 uses
  %.25642.ph = phi ptr [ %i.itn, %read_null.exit ], [ %i.itj, %read_false.exit ], [ %i.ite, %read_true.exit ], [ %i.grb, %bb.aso ], [ %i.z, %..preheader3579_crit_edge ], [ %.16633, %bb.abi ], [ %.26643, %bb.asv ], [ %i.fxj, %read_str_opt.exit1192 ] ; 3 uses
  %.25.ph = phi ptr [ %.24, %read_null.exit ], [ %.24, %read_false.exit ], [ %.24, %read_true.exit ], [ %.24, %bb.aso ], [ %i.af, %..preheader3579_crit_edge ], [ %i.fal, %bb.abi ], [ %i.iva, %bb.asv ], [ %.24, %read_str_opt.exit1192 ] ; 5 uses
  store i32 6, ptr %0, align 8, !tbaa !264
  store ptr %.25642.ph, ptr %i.y, align 8, !tbaa !269
  store i64 %.9719.ph, ptr %i.s, align 8, !tbaa !266
  store i64 %.9761.ph, ptr %i.u, align 8, !tbaa !267
  store ptr %.promoted4026, ptr %i.n, align 8, !tbaa !263
  %.not8274029 = icmp ult ptr %.promoted4026, %i.m
  br i1 %.not8274029, label %.lr.ph4031, label %.loopexit3576, !prof !112

bb.asn:                                           ; preds = %bb.asj
  %i.itp = and i8 %i.gqw, 4
  %.not3360 = icmp eq i8 %i.itp, 0
  br i1 %.not3360, label %.loopexit3572, label %.preheader3605

.preheader3605:                                   ; preds = %bb.asn, %.preheader3605
  %i.itq = phi ptr [ %i.itr, %.preheader3605 ], [ %i.gqx, %bb.asn ]
  %i.itr = getelementptr inbounds nuw i8, ptr %i.itq, i64 1 ; 5 uses
  store ptr %i.itr, ptr %i.d, align 8, !tbaa !92
  %i.its = load i8, ptr %i.itr, align 1, !tbaa !81 ; 3 uses
  %i.itt = zext i8 %i.its to i64
  %i.itu = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.itt
  %i.itv = load i8, ptr %i.itu, align 1, !tbaa !81 ; 2 uses
  %i.itw = and i8 %i.itv, 4
  %.not3361 = icmp eq i8 %i.itw, 0
  br i1 %.not3361, label %.loopexit3606, label %.preheader3605, !llvm.loop !303

.sink.split5742:                                  ; preds = %read_inf.exit, %bb.ajq, %bb.ald, %bb.alg, %bb.alj, %bb.alm, %bb.alp, %bb.als, %bb.alv, %bb.aly, %bb.amb, %bb.ame, %bb.amh, %bb.amk, %bb.amn, %bb.amq, %bb.amt, %bb.amw, %bb.amz, %bb.aky, %bb.akx, %bb.akw, %bb.aot, %bb.aos, %bb.aor, %.thread5422, %bb.ala, %.loopexit3602, %bb.apq, %bb.apd, %bb.ajw, %bb.aqn, %bb.aqs, %bb.aqh, %bb.aqf, %bb.aqc, %bb.apy, %bb.apw, %bb.apu, %read_num.exit.thread3326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.aso

bb.aso:                                           ; preds = %.sink.split5742, %.split3324, %.split3323
  %i.itx = add i64 %.8718, 1
  %i.ity = load ptr, ptr %i.d, align 8, !tbaa !92 ; 3 uses
  %.not826 = icmp ult ptr %i.ity, %i.m
  br i1 %.not826, label %.preheader3579, label %bb.asp, !prof !25

bb.asp:                                           ; preds = %bb.aso
  %i.itz = load ptr, ptr %i.n, align 8, !tbaa !263
  %i.iua = getelementptr inbounds nuw i8, ptr %i.itz, i64 1024
  %i.iub = icmp ugt ptr %i.ity, %i.iua
  br i1 %i.iub, label %bb.asq, label %.loopexit3576, !prof !8

bb.asq:                                           ; preds = %bb.asp
  store ptr @.str.16, ptr %i.e, align 8, !tbaa !92
  br label %bb.atc

.loopexit3578:                                    ; preds = %.preheader3577
  store ptr %i.iuk, ptr %i.n, align 8, !tbaa !263
  %.not827 = icmp ult ptr %i.iuk, %i.m
  br i1 %.not827, label %.lr.ph4031, label %.loopexit3576, !prof !113, !llvm.loop !317

.lr.ph4031:                                       ; preds = %.preheader3579, %.loopexit3578
  %.promoted402540274030 = phi ptr [ %i.iuk, %.loopexit3578 ], [ %.promoted4026, %.preheader3579 ] ; 6 uses
  %i.iuc = load i8, ptr %.promoted402540274030, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.iuc, label %bb.ast [
    i8 44, label %bb.asr
    i8 125, label %bb.ass
  ], !prof !157

bb.asr:                                           ; preds = %.lr.ph4031
  %i.iud = getelementptr inbounds nuw i8, ptr %.promoted402540274030, i64 1
  store ptr %i.iud, ptr %i.d, align 8, !tbaa !92
  br label %bb.abl

bb.ass:                                           ; preds = %.lr.ph4031
  %i.iue = getelementptr inbounds nuw i8, ptr %.promoted402540274030, i64 1 ; 2 uses
  store ptr %i.iue, ptr %i.d, align 8, !tbaa !92
  br label %bb.asu

bb.ast:                                           ; preds = %.lr.ph4031
  %i.iuf = zext i8 %i.iuc to i64
  %i.iug = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.iuf
  %i.iuh = load i8, ptr %i.iug, align 1, !tbaa !81
  %i.iui = and i8 %i.iuh, 4
  %.not3455 = icmp eq i8 %i.iui, 0
  br i1 %.not3455, label %bb.atr, label %.preheader3577

.preheader3577:                                   ; preds = %bb.ast, %.preheader3577
  %i.iuj = phi ptr [ %i.iuk, %.preheader3577 ], [ %.promoted402540274030, %bb.ast ]
  %i.iuk = getelementptr inbounds nuw i8, ptr %i.iuj, i64 1 ; 6 uses
  store ptr %i.iuk, ptr %i.d, align 8, !tbaa !92
  %i.iul = load i8, ptr %i.iuk, align 1, !tbaa !81
  %i.ium = zext i8 %i.iul to i64
  %i.iun = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ium
  %i.iuo = load i8, ptr %i.iun, align 1, !tbaa !81
  %i.iup = and i8 %i.iuo, 4
  %.not3456 = icmp eq i8 %i.iup, 0
  br i1 %.not3456, label %.loopexit3578, label %.preheader3577, !llvm.loop !317

bb.asu:                                           ; preds = %bb.afe, %bb.ass
  %.promoted40264919 = phi ptr [ %i.iue, %bb.ass ], [ %i.fwb, %bb.afe ] ; 2 uses
  %.10762 = phi i64 [ %.9761.ph, %bb.ass ], [ %.6758, %bb.afe ] ; 3 uses
  %.19741 = phi i64 [ %.18740.ph, %bb.ass ], [ %.14736, %bb.afe ] ; 3 uses
  %.10720 = phi i64 [ %.9719.ph, %bb.ass ], [ 0, %bb.afe ] ; 2 uses
  %.26708 = phi ptr [ %.25707.ph, %bb.ass ], [ %.20702, %bb.afe ] ; 3 uses
  %.26671 = phi ptr [ %.25670.ph, %bb.ass ], [ %.20665, %bb.afe ] ; 3 uses
  %.26643 = phi ptr [ %.25642.ph, %bb.ass ], [ %.20637, %bb.afe ] ; 4 uses
  %.26 = phi ptr [ %.25.ph, %bb.ass ], [ %.20, %bb.afe ] ; 5 uses
  %i.iuq = getelementptr inbounds nuw i8, ptr %.26, i64 8 ; 2 uses
  %i.iur = load i64, ptr %i.iuq, align 8, !tbaa !81 ; 2 uses
  %i.ius = ptrtoint ptr %.26643 to i64
  %i.iut = ptrtoint ptr %.26 to i64
  %i.iuu = add i64 %i.ius, 16
  %i.iuv = sub i64 %i.iuu, %i.iut
  store i64 %i.iuv, ptr %i.iuq, align 8, !tbaa !81
  %i.iuw = shl i64 %.10720, 7
  %i.iux = or disjoint i64 %i.iuw, 7
  store i64 %i.iux, ptr %.26, align 8, !tbaa !79
  %i.iuy = icmp eq i64 %i.iur, 0
  br i1 %i.iuy, label %read_str_opt.exit, label %bb.asv, !prof !8

bb.asv:                                           ; preds = %bb.asu
  %i.iuz = sub i64 0, %i.iur
  %i.iva = getelementptr inbounds i8, ptr %.26, i64 %i.iuz ; 3 uses
  %i.ivb = load i64, ptr %i.iva, align 8, !tbaa !79 ; 2 uses
  %i.ivc = lshr i64 %i.ivb, 8                     ; 2 uses
  %i.ivd = and i64 %i.ivb, 7
  %i.ive = icmp eq i64 %i.ivd, 7
  br i1 %i.ive, label %.preheader3579, label %.preheader3575

read_str_opt.exit:                                ; preds = %read_null.exit1123.thread, %read_false.exit1121.thread, %read_true.exit1119.thread, %bb.ls, %bb.ka, %read_num.exit1117.thread3171, %.split3169, %.split, %read_num.exit1117.thread, %bb.asu, %bb.abh, %bb.g
  %.11763 = phi i64 [ %.10762, %bb.asu ], [ %.4756, %bb.abh ], [ %.0752, %read_num.exit1117.thread3171 ], [ %.0752, %.split3169 ], [ %.0752, %read_true.exit1119.thread ], [ %.0752, %read_false.exit1121.thread ], [ %.0752, %read_null.exit1123.thread ], [ %i.v, %bb.g ], [ %.0752, %read_num.exit1117.thread ], [ %.0752, %.split ], [ %.0752, %bb.ka ], [ %.0752, %bb.ls ] ; 2 uses
  %.20742 = phi i64 [ %.19741, %bb.asu ], [ %.11733, %bb.abh ], [ %.1723, %read_num.exit1117.thread3171 ], [ %.1723, %.split3169 ], [ %.1723, %read_true.exit1119.thread ], [ %.1723, %read_false.exit1121.thread ], [ %.1723, %read_null.exit1123.thread ], [ %i.x, %bb.g ], [ %.1723, %read_num.exit1117.thread ], [ %.1723, %.split ], [ %.1723, %bb.ka ], [ %.1723, %bb.ls ]
  %.11721 = phi i64 [ %.10720, %bb.asu ], [ %.4714, %bb.abh ], [ %.0710, %read_num.exit1117.thread3171 ], [ %.0710, %.split3169 ], [ %.0710, %read_true.exit1119.thread ], [ %.0710, %read_false.exit1121.thread ], [ %.0710, %read_null.exit1123.thread ], [ %i.t, %bb.g ], [ %.0710, %read_num.exit1117.thread ], [ %.0710, %.split ], [ %.0710, %bb.ka ], [ %.0710, %bb.ls ]
  %.27709 = phi ptr [ %.26708, %bb.asu ], [ %.16698, %bb.abh ], [ %.0682, %read_num.exit1117.thread3171 ], [ %.0682, %.split3169 ], [ %.0682, %read_true.exit1119.thread ], [ %.0682, %read_false.exit1121.thread ], [ %.0682, %read_null.exit1123.thread ], [ %i.ab, %bb.g ], [ %.0682, %read_num.exit1117.thread ], [ %.0682, %.split ], [ %.0682, %bb.ka ], [ %.0682, %bb.ls ] ; 9 uses
  %.27672 = phi ptr [ %.26671, %bb.asu ], [ %.16661, %bb.abh ], [ %.0645, %read_num.exit1117.thread3171 ], [ %.0645, %.split3169 ], [ %.0645, %read_true.exit1119.thread ], [ %.0645, %read_false.exit1121.thread ], [ %.0645, %read_null.exit1123.thread ], [ %i.ad, %bb.g ], [ %.0645, %read_num.exit1117.thread ], [ %.0645, %.split ], [ %.0645, %bb.ka ], [ %.0645, %bb.ls ]
  %.27644 = phi ptr [ %.26643, %bb.asu ], [ %.16633, %bb.abh ], [ %.0617, %read_num.exit1117.thread3171 ], [ %.0617, %.split3169 ], [ %.0617, %read_true.exit1119.thread ], [ %.0617, %read_false.exit1121.thread ], [ %.0617, %read_null.exit1123.thread ], [ %i.z, %bb.g ], [ %.0617, %read_num.exit1117.thread ], [ %.0617, %.split ], [ %.0617, %bb.ka ], [ %.0617, %bb.ls ] ; 2 uses
  %.27 = phi ptr [ %.26, %bb.asu ], [ %.16, %bb.abh ], [ %.0609, %read_num.exit1117.thread3171 ], [ %.0609, %.split3169 ], [ %.0609, %read_true.exit1119.thread ], [ %.0609, %read_false.exit1121.thread ], [ %.0609, %read_null.exit1123.thread ], [ %i.af, %bb.g ], [ %.0609, %read_num.exit1117.thread ], [ %.0609, %.split ], [ %.0609, %bb.ka ], [ %.0609, %bb.ls ]
  %i.ivf = load ptr, ptr %i.d, align 8, !tbaa !92 ; 5 uses
  %i.ivg = icmp ult ptr %i.ivf, %i.m
  br i1 %i.ivg, label %bb.asw, label %bb.asy, !prof !8

bb.asw:                                           ; preds = %read_str_opt.exit
  %i.ivh = and i32 %.fr, 2
  %.not3504 = icmp eq i32 %i.ivh, 0
  br i1 %.not3504, label %bb.asx, label %bb.asy, !prof !25

bb.asx:                                           ; preds = %bb.asw
  store i32 7, ptr %0, align 8, !tbaa !264
  store ptr %i.ivf, ptr %i.n, align 8, !tbaa !263
  store ptr %.27644, ptr %i.y, align 8, !tbaa !269
  store i64 %.11721, ptr %i.s, align 8, !tbaa !266
  store i64 %.11763, ptr %i.u, align 8, !tbaa !267
  %i.ivi = load i8, ptr %i.ivf, align 1, !tbaa !81
  %i.ivj = zext i8 %i.ivi to i64
  %i.ivk = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ivj
  %i.ivl = load i8, ptr %i.ivk, align 1, !tbaa !81
  %i.ivm = and i8 %i.ivl, 4
  %.not35054439 = icmp eq i8 %i.ivm, 0
  br i1 %.not35054439, label %._crit_edge4442, label %.lr.ph4441

.lr.ph4441:                                       ; preds = %bb.asx, %.lr.ph4441
  %i.ivn = phi ptr [ %i.ivo, %.lr.ph4441 ], [ %i.ivf, %bb.asx ]
  %i.ivo = getelementptr inbounds nuw i8, ptr %i.ivn, i64 1 ; 4 uses
  store ptr %i.ivo, ptr %i.d, align 8, !tbaa !92
  %i.ivp = load i8, ptr %i.ivo, align 1, !tbaa !81
  %i.ivq = zext i8 %i.ivp to i64
  %i.ivr = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ivq
  %i.ivs = load i8, ptr %i.ivr, align 1, !tbaa !81
  %i.ivt = and i8 %i.ivs, 4
  %.not3505 = icmp eq i8 %i.ivt, 0
  br i1 %.not3505, label %._crit_edge4442, label %.lr.ph4441, !llvm.loop !318

._crit_edge4442:                                  ; preds = %.lr.ph4441, %bb.asx
  %.lcssa = phi ptr [ %i.ivf, %bb.asx ], [ %i.ivo, %.lr.ph4441 ] ; 3 uses
  %i.ivu = icmp ult ptr %.lcssa, %i.m
  br i1 %i.ivu, label %bb.att, label %bb.asy, !prof !8

bb.asy:                                           ; preds = %._crit_edge4442, %bb.asw, %read_str_opt.exit
  %i.ivv = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.ivv, align 1, !tbaa !81
  %i.ivw = getelementptr inbounds nuw [16 x i8], ptr %.27709, i64 %.11763 ; 2 uses
  store ptr %i.ivw, ptr %.27709, align 8, !tbaa !73
  %i.ivx = getelementptr inbounds nuw i8, ptr %.27709, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ivx, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx327 = getelementptr inbounds nuw i8, ptr %.27709, i64 16
  store <2 x ptr> %10, ptr %.sroa.5.0..sroa_idx327, align 8, !tbaa !10
  %.sroa.13338.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %.27709, i64 32
  store ptr %.sroa.13338.0.copyload, ptr %.sroa.13338.0..sroa_idx339, align 8, !tbaa !10
  %i.ivy = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.ivz = ptrtoint ptr %i.ivy to i64
  %i.iwa = ptrtoint ptr %i.l to i64
  %i.iwb = sub i64 %i.ivz, %i.iwa
  %i.iwc = getelementptr inbounds nuw i8, ptr %.27709, i64 40
  store i64 %i.iwb, ptr %i.iwc, align 8, !tbaa !96
  %i.iwd = ptrtoint ptr %.27644 to i64
  %i.iwe = ptrtoint ptr %i.ivw to i64
  %i.iwf = sub i64 %i.iwd, %i.iwe
  %i.iwg = ashr exact i64 %i.iwf, 4
  %i.iwh = add nsw i64 %i.iwg, 1
  %i.iwi = getelementptr inbounds nuw i8, ptr %.27709, i64 48
  store i64 %i.iwh, ptr %i.iwi, align 8, !tbaa !95
  %i.iwj = and i32 %.fr, 1
  %.not3506 = icmp eq i32 %i.iwj, 0
  %i.iwk = select i1 %.not3506, ptr %i.l, ptr null, !prof !25
  %i.iwl = getelementptr inbounds nuw i8, ptr %.27709, i64 56
  store ptr %i.iwk, ptr %i.iwl, align 8, !tbaa !94
  store ptr null, ptr %i.k, align 8, !tbaa !262
  store ptr null, ptr %i.aa, align 8, !tbaa !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select, i8 0, i64 24, i1 false)
  br label %bb.atv

.loopexit3576:                                    ; preds = %.loopexit3612, %.loopexit3578, %.loopexit3574, %.preheader3613, %.preheader3579, %.preheader3575, %bb.att, %bb.atr, %bb.atp, %bb.atn, %bb.atl, %.loopexit3572, %read_null.exit1123, %read_false.exit1121, %read_true.exit1119, %.loopexit3552, %bb.ate, %bb.atc, %read_str_opt.exit.thread, %bb.asp, %bb.afi, %bb.abl, %bb.abc, %bb.nj, %bb.nf, %bb.o, %._crit_edge
  %.21743 = phi i64 [ %i.x, %._crit_edge ], [ %.14736, %bb.abl ], [ %.10732.ph, %.preheader3575 ], [ %.17739, %bb.afi ], [ %.18740.ph, %.preheader3579 ], [ %.0722, %bb.o ], [ %.20742, %bb.att ], [ %.1723, %bb.nf ], [ %.4726, %bb.nj ], [ %.24746, %bb.ate ], [ %.23745, %bb.atc ], [ %.5727, %bb.abc ], [ %.22744, %read_str_opt.exit.thread ], [ %.26748, %read_true.exit1119 ], [ %.27749, %read_false.exit1121 ], [ %.28750, %read_null.exit1123 ], [ %.25747, %.loopexit3552 ], [ %.29751, %.loopexit3572 ], [ %.10732.ph, %bb.atl ], [ %.18740.ph, %bb.atr ], [ %.17739, %bb.asp ], [ %.16738.ph, %bb.atp ], [ %.14736, %bb.atn ], [ %.16738.ph, %.preheader3613 ], [ %.18740.ph, %.loopexit3578 ], [ %.10732.ph, %.loopexit3574 ], [ %.16738.ph, %.loopexit3612 ]
  %.28673 = phi ptr [ %i.ad, %._crit_edge ], [ %.20665, %bb.abl ], [ %.15660.ph, %.preheader3575 ], [ %.24669, %bb.afi ], [ %.25670.ph, %.preheader3579 ], [ %i.bl, %bb.o ], [ %.27672, %bb.att ], [ %.0645, %bb.nf ], [ %.4649, %bb.nj ], [ %.31676, %bb.ate ], [ %.30675, %bb.atc ], [ %.6651, %bb.abc ], [ %.29674, %read_str_opt.exit.thread ], [ %.33678, %read_true.exit1119 ], [ %.34679, %read_false.exit1121 ], [ %.35680, %read_null.exit1123 ], [ %.32677, %.loopexit3552 ], [ %.36681, %.loopexit3572 ], [ %.15660.ph, %bb.atl ], [ %.25670.ph, %bb.atr ], [ %.24669, %bb.asp ], [ %.23668.ph, %bb.atp ], [ %.20665, %bb.atn ], [ %.23668.ph, %.preheader3613 ], [ %.25670.ph, %.loopexit3578 ], [ %.15660.ph, %.loopexit3574 ], [ %.23668.ph, %.loopexit3612 ]
  %.28 = phi ptr [ %i.af, %._crit_edge ], [ %.20, %bb.abl ], [ %.15.ph, %.preheader3575 ], [ %.24, %bb.afi ], [ %.25.ph, %.preheader3579 ], [ %i.bm, %bb.o ], [ %.27, %bb.att ], [ %.0609, %bb.nf ], [ %.4613, %bb.nj ], [ %.31, %bb.ate ], [ %.30, %bb.atc ], [ %.6615, %bb.abc ], [ %.29, %read_str_opt.exit.thread ], [ %.33, %read_true.exit1119 ], [ %.34, %read_false.exit1121 ], [ %.35, %read_null.exit1123 ], [ %.32, %.loopexit3552 ], [ %.36, %.loopexit3572 ], [ %.15.ph, %bb.atl ], [ %.25.ph, %bb.atr ], [ %.24, %bb.asp ], [ %.23.ph, %bb.atp ], [ %.20, %bb.atn ], [ %.23.ph, %.preheader3613 ], [ %.25.ph, %.loopexit3578 ], [ %.15.ph, %.loopexit3574 ], [ %.23.ph, %.loopexit3612 ]
  %spec.store.select.sroa.sel1750.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1750.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1750.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %1, ptr %spec.store.select.sroa.sel1750.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %i.iwm = load i64, ptr %i.h, align 8, !tbaa !261
  %.not848 = icmp ult i64 %1, %i.iwm
  %spec.store.select.sroa.sel1753.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1753.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1753.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  br i1 %.not848, label %bb.ata, label %bb.asz, !prof !25

bb.asz:                                           ; preds = %.loopexit3576
  store i32 5, ptr %spec.store.select, align 8, !tbaa !108
  store ptr @.str.17, ptr %spec.store.select.sroa.sel1753.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

bb.ata:                                           ; preds = %.loopexit3576
  store i32 14, ptr %spec.store.select, align 8, !tbaa !108
  store ptr @.str.18, ptr %spec.store.select.sroa.sel1753.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store ptr %.28673, ptr %i.ac, align 8, !tbaa !270
  store ptr %.28, ptr %i.ae, align 8, !tbaa !271
  store i64 %.21743, ptr %i.w, align 8, !tbaa !268
  store i8 %i.ah, ptr %i.m, align 1, !tbaa !81
  br label %bb.atv

read_str_opt.exit.thread:                         ; preds = %bb.acm, %bb.afd, %bb.agf, %bb.aiw, %bb.xy, %bb.aap, %bb.ke, %bb.mw, %bb.ahu, %bb.aht, %bb.ahc, %bb.ahl, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahd, %bb.ahj, %bb.agq, %bb.agx, %bb.agy, %bb.agz, %bb.aha, %bb.aeb, %bb.aea, %bb.adj, %bb.ads, %bb.adk, %bb.adk, %bb.adk, %bb.adk, %bb.adk, %bb.adk, %bb.adk, %bb.adk, %bb.adk, %bb.adq, %bb.acx, %bb.ade, %bb.adf, %bb.adg, %bb.adh, %bb.zn, %bb.zm, %bb.yv, %bb.ze, %bb.yw, %bb.yw, %bb.yw, %bb.yw, %bb.yw, %bb.yw, %bb.yw, %bb.yw, %bb.yw, %bb.zc, %bb.yj, %bb.yq, %bb.yr, %bb.ys, %bb.yt, %bb.lu, %bb.lt, %bb.lb, %bb.lk, %bb.lc, %bb.lc, %bb.lc, %bb.lc, %bb.lc, %bb.lc, %bb.lc, %bb.lc, %bb.lc, %bb.li, %bb.kp, %bb.kw, %bb.kx, %bb.ky, %bb.kz
  %.str.69.sink = phi ptr [ @.str.76, %bb.aap ], [ @.str.70, %bb.ahj ], [ @.str.81, %bb.aha ], [ @.str.72, %bb.ahl ], [ @.str.75, %bb.ahu ], [ @.str.71, %bb.ahd ], [ @.str.73, %bb.ahc ], [ @.str.74, %bb.aht ], [ @.str.69, %bb.ke ], [ @.str.69, %bb.agf ], [ @.str.70, %bb.adq ], [ @.str.81, %bb.adh ], [ @.str.72, %bb.ads ], [ @.str.75, %bb.aeb ], [ @.str.71, %bb.adk ], [ @.str.73, %bb.adj ], [ @.str.74, %bb.aea ], [ @.str.69, %bb.xy ], [ @.str.76, %bb.mw ], [ @.str.70, %bb.zc ], [ @.str.81, %bb.yt ], [ @.str.72, %bb.ze ], [ @.str.75, %bb.zn ], [ @.str.71, %bb.yw ], [ @.str.73, %bb.yv ], [ @.str.74, %bb.zm ], [ @.str.76, %bb.afd ], [ @.str.76, %bb.aiw ], [ @.str.70, %bb.li ], [ @.str.81, %bb.kz ], [ @.str.72, %bb.lk ], [ @.str.75, %bb.lu ], [ @.str.71, %bb.lc ], [ @.str.73, %bb.lb ], [ @.str.74, %bb.lt ], [ @.str.79, %bb.kx ], [ @.str.80, %bb.ky ], [ @.str.73, %bb.kp ], [ @.str.77, %bb.kw ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.71, %bb.lc ], [ @.str.79, %bb.yr ], [ @.str.80, %bb.ys ], [ @.str.73, %bb.yj ], [ @.str.77, %bb.yq ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.71, %bb.yw ], [ @.str.79, %bb.adf ], [ @.str.80, %bb.adg ], [ @.str.73, %bb.acx ], [ @.str.77, %bb.ade ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.71, %bb.adk ], [ @.str.79, %bb.agy ], [ @.str.80, %bb.agz ], [ @.str.73, %bb.agq ], [ @.str.77, %bb.agx ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.71, %bb.ahd ], [ @.str.69, %bb.acm ] ; 2 uses
  %.143145.lcssa.lcssa.sink5745 = phi ptr [ %.43079.lcssa, %bb.aap ], [ %.63137, %bb.ahj ], [ %.63137, %bb.aha ], [ %.63137, %bb.ahl ], [ %.63137, %bb.ahu ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahc ], [ %.63137, %bb.aht ], [ %.143061.lcssa, %bb.ke ], [ %.143145.lcssa, %bb.agf ], [ %.63109, %bb.adq ], [ %.63109, %bb.adh ], [ %.63109, %bb.ads ], [ %.63109, %bb.aeb ], [ %.63109, %bb.adk ], [ %.63109, %bb.adj ], [ %.63109, %bb.aea ], [ %.143089.lcssa, %bb.xy ], [ %.43051.lcssa, %bb.mw ], [ %.63081, %bb.zc ], [ %.63081, %bb.yt ], [ %.63081, %bb.ze ], [ %.63081, %bb.zn ], [ %.63081, %bb.yw ], [ %.63081, %bb.yv ], [ %.63081, %bb.zm ], [ %.43107.lcssa, %bb.afd ], [ %.43135.lcssa, %bb.aiw ], [ %.63053, %bb.li ], [ %.63053, %bb.kz ], [ %.63053, %bb.lk ], [ %.63053, %bb.lu ], [ %.63053, %bb.lc ], [ %.63053, %bb.lb ], [ %.63053, %bb.lt ], [ %.63053, %bb.kx ], [ %.63053, %bb.ky ], [ %.63053, %bb.kp ], [ %.63053, %bb.kw ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63053, %bb.lc ], [ %.63081, %bb.yr ], [ %.63081, %bb.ys ], [ %.63081, %bb.yj ], [ %.63081, %bb.yq ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63081, %bb.yw ], [ %.63109, %bb.adf ], [ %.63109, %bb.adg ], [ %.63109, %bb.acx ], [ %.63109, %bb.ade ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63109, %bb.adk ], [ %.63137, %bb.agy ], [ %.63137, %bb.agz ], [ %.63137, %bb.agq ], [ %.63137, %bb.agx ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.63137, %bb.ahd ], [ %.143117.lcssa, %bb.acm ] ; 4 uses
  %.sink5743 = phi ptr [ %.43068.lcssa, %bb.aap ], [ %.63126, %bb.ahj ], [ %.63126, %bb.aha ], [ %.63126, %bb.ahl ], [ %.63126, %bb.ahu ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahc ], [ %.63126, %bb.aht ], [ null, %bb.ke ], [ null, %bb.agf ], [ %.63098, %bb.adq ], [ %.63098, %bb.adh ], [ %.63098, %bb.ads ], [ %.63098, %bb.aeb ], [ %.63098, %bb.adk ], [ %.63098, %bb.adj ], [ %.63098, %bb.aea ], [ null, %bb.xy ], [ %.43040.lcssa, %bb.mw ], [ %.63070, %bb.zc ], [ %.63070, %bb.yt ], [ %.63070, %bb.ze ], [ %.63070, %bb.zn ], [ %.63070, %bb.yw ], [ %.63070, %bb.yv ], [ %.63070, %bb.zm ], [ %.43096.lcssa, %bb.afd ], [ %.43124.lcssa, %bb.aiw ], [ %.63042, %bb.li ], [ %.63042, %bb.kz ], [ %.63042, %bb.lk ], [ %.63042, %bb.lu ], [ %.63042, %bb.lc ], [ %.63042, %bb.lb ], [ %.63042, %bb.lt ], [ %.63042, %bb.kx ], [ %.63042, %bb.ky ], [ %.63042, %bb.kp ], [ %.63042, %bb.kw ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63042, %bb.lc ], [ %.63070, %bb.yr ], [ %.63070, %bb.ys ], [ %.63070, %bb.yj ], [ %.63070, %bb.yq ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63070, %bb.yw ], [ %.63098, %bb.adf ], [ %.63098, %bb.adg ], [ %.63098, %bb.acx ], [ %.63098, %bb.ade ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63098, %bb.adk ], [ %.63126, %bb.agy ], [ %.63126, %bb.agz ], [ %.63126, %bb.agq ], [ %.63126, %bb.agx ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ %.63126, %bb.ahd ], [ null, %bb.acm ]
  %.22744 = phi i64 [ %.6728, %bb.aap ], [ %.17739, %bb.ahj ], [ %.17739, %bb.aha ], [ %.17739, %bb.ahl ], [ %.17739, %bb.ahu ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahc ], [ %.17739, %bb.aht ], [ %.1723, %bb.ke ], [ %.17739, %bb.agf ], [ %.15737, %bb.adq ], [ %.15737, %bb.adh ], [ %.15737, %bb.ads ], [ %.15737, %bb.aeb ], [ %.15737, %bb.adk ], [ %.15737, %bb.adj ], [ %.15737, %bb.aea ], [ %.6728, %bb.xy ], [ %.1723, %bb.mw ], [ %.6728, %bb.zc ], [ %.6728, %bb.yt ], [ %.6728, %bb.ze ], [ %.6728, %bb.zn ], [ %.6728, %bb.yw ], [ %.6728, %bb.yv ], [ %.6728, %bb.zm ], [ %.15737, %bb.afd ], [ %.17739, %bb.aiw ], [ %.1723, %bb.li ], [ %.1723, %bb.kz ], [ %.1723, %bb.lk ], [ %.1723, %bb.lu ], [ %.1723, %bb.lc ], [ %.1723, %bb.lb ], [ %.1723, %bb.lt ], [ %.1723, %bb.kx ], [ %.1723, %bb.ky ], [ %.1723, %bb.kp ], [ %.1723, %bb.kw ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.1723, %bb.lc ], [ %.6728, %bb.yr ], [ %.6728, %bb.ys ], [ %.6728, %bb.yj ], [ %.6728, %bb.yq ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.6728, %bb.yw ], [ %.15737, %bb.adf ], [ %.15737, %bb.adg ], [ %.15737, %bb.acx ], [ %.15737, %bb.ade ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.15737, %bb.adk ], [ %.17739, %bb.agy ], [ %.17739, %bb.agz ], [ %.17739, %bb.agq ], [ %.17739, %bb.agx ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.17739, %bb.ahd ], [ %.15737, %bb.acm ]
  %.29674 = phi ptr [ %.8653, %bb.aap ], [ %.24669, %bb.ahj ], [ %.24669, %bb.aha ], [ %.24669, %bb.ahl ], [ %.24669, %bb.ahu ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahc ], [ %.24669, %bb.aht ], [ %.0645, %bb.ke ], [ %.24669, %bb.agf ], [ %.22667, %bb.adq ], [ %.22667, %bb.adh ], [ %.22667, %bb.ads ], [ %.22667, %bb.aeb ], [ %.22667, %bb.adk ], [ %.22667, %bb.adj ], [ %.22667, %bb.aea ], [ %.8653, %bb.xy ], [ %.0645, %bb.mw ], [ %.8653, %bb.zc ], [ %.8653, %bb.yt ], [ %.8653, %bb.ze ], [ %.8653, %bb.zn ], [ %.8653, %bb.yw ], [ %.8653, %bb.yv ], [ %.8653, %bb.zm ], [ %.22667, %bb.afd ], [ %.24669, %bb.aiw ], [ %.0645, %bb.li ], [ %.0645, %bb.kz ], [ %.0645, %bb.lk ], [ %.0645, %bb.lu ], [ %.0645, %bb.lc ], [ %.0645, %bb.lb ], [ %.0645, %bb.lt ], [ %.0645, %bb.kx ], [ %.0645, %bb.ky ], [ %.0645, %bb.kp ], [ %.0645, %bb.kw ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.0645, %bb.lc ], [ %.8653, %bb.yr ], [ %.8653, %bb.ys ], [ %.8653, %bb.yj ], [ %.8653, %bb.yq ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.8653, %bb.yw ], [ %.22667, %bb.adf ], [ %.22667, %bb.adg ], [ %.22667, %bb.acx ], [ %.22667, %bb.ade ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.22667, %bb.adk ], [ %.24669, %bb.agy ], [ %.24669, %bb.agz ], [ %.24669, %bb.agq ], [ %.24669, %bb.agx ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.24669, %bb.ahd ], [ %.22667, %bb.acm ]
  %.29 = phi ptr [ %.8, %bb.aap ], [ %.24, %bb.ahj ], [ %.24, %bb.aha ], [ %.24, %bb.ahl ], [ %.24, %bb.ahu ], [ %.24, %bb.ahd ], [ %.24, %bb.ahc ], [ %.24, %bb.aht ], [ %.0609, %bb.ke ], [ %.24, %bb.agf ], [ %.22, %bb.adq ], [ %.22, %bb.adh ], [ %.22, %bb.ads ], [ %.22, %bb.aeb ], [ %.22, %bb.adk ], [ %.22, %bb.adj ], [ %.22, %bb.aea ], [ %.8, %bb.xy ], [ %.0609, %bb.mw ], [ %.8, %bb.zc ], [ %.8, %bb.yt ], [ %.8, %bb.ze ], [ %.8, %bb.zn ], [ %.8, %bb.yw ], [ %.8, %bb.yv ], [ %.8, %bb.zm ], [ %.22, %bb.afd ], [ %.24, %bb.aiw ], [ %.0609, %bb.li ], [ %.0609, %bb.kz ], [ %.0609, %bb.lk ], [ %.0609, %bb.lu ], [ %.0609, %bb.lc ], [ %.0609, %bb.lb ], [ %.0609, %bb.lt ], [ %.0609, %bb.kx ], [ %.0609, %bb.ky ], [ %.0609, %bb.kp ], [ %.0609, %bb.kw ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.0609, %bb.lc ], [ %.8, %bb.yr ], [ %.8, %bb.ys ], [ %.8, %bb.yj ], [ %.8, %bb.yq ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.8, %bb.yw ], [ %.22, %bb.adf ], [ %.22, %bb.adg ], [ %.22, %bb.acx ], [ %.22, %bb.ade ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.22, %bb.adk ], [ %.24, %bb.agy ], [ %.24, %bb.agz ], [ %.24, %bb.agq ], [ %.24, %bb.agx ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.24, %bb.ahd ], [ %.22, %bb.acm ]
  store ptr %.str.69.sink, ptr %i.e, align 8, !tbaa !92
  store ptr %.143145.lcssa.lcssa.sink5745, ptr %i.d, align 8, !tbaa !92
  store ptr %.143145.lcssa.lcssa.sink5745, ptr %i.ag, align 8, !tbaa !92
  %i.iwn = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sink5743, ptr %i.iwn, align 8, !tbaa !92
  %i.iwo = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef nonnull %.143145.lcssa.lcssa.sink5745, ptr noundef nonnull %i.m, i32 noundef 10, i32 noundef %.fr)
  br i1 %i.iwo, label %.loopexit3576, label %bb.atb

bb.atb:                                           ; preds = %read_str_opt.exit.thread
  %i.iwp = ptrtoint ptr %.143145.lcssa.lcssa.sink5745 to i64
  %i.iwq = ptrtoint ptr %i.l to i64
  %i.iwr = sub i64 %i.iwp, %i.iwq
  %spec.store.select.sroa.sel1726.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1726.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1726.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.iwr, ptr %spec.store.select.sroa.sel1726.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 10, ptr %spec.store.select, align 8, !tbaa !108
  %spec.store.select.sroa.sel1729.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1729.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1729.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.69.sink, ptr %spec.store.select.sroa.sel1729.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

bb.atc:                                           ; preds = %read_num.exit, %.split3324, %.split3323, %read_num.exit.thread3321, %read_num.exit986, %.split3223, %.split3222, %read_num.exit986.thread3220, %read_num.exit1117, %.split3169, %.split, %read_num.exit1117.thread3167, %bb.abd, %bb.asq
  %.23745 = phi i64 [ %.5727, %bb.abd ], [ %.5727, %read_num.exit986 ], [ %.17739, %bb.asq ], [ %.17739, %read_num.exit ], [ %.1723, %read_num.exit1117 ], [ %.1723, %read_num.exit1117.thread3167 ], [ %.1723, %.split ], [ %.1723, %.split3169 ], [ %.5727, %read_num.exit986.thread3220 ], [ %.5727, %.split3222 ], [ %.5727, %.split3223 ], [ %.17739, %read_num.exit.thread3321 ], [ %.17739, %.split3323 ], [ %.17739, %.split3324 ]
  %.30675 = phi ptr [ %.6651, %bb.abd ], [ %.6651, %read_num.exit986 ], [ %.24669, %bb.asq ], [ %.24669, %read_num.exit ], [ %.0645, %read_num.exit1117 ], [ %.0645, %read_num.exit1117.thread3167 ], [ %.0645, %.split ], [ %.0645, %.split3169 ], [ %.6651, %read_num.exit986.thread3220 ], [ %.6651, %.split3222 ], [ %.6651, %.split3223 ], [ %.24669, %read_num.exit.thread3321 ], [ %.24669, %.split3323 ], [ %.24669, %.split3324 ]
  %.30 = phi ptr [ %.6615, %bb.abd ], [ %.6615, %read_num.exit986 ], [ %.24, %bb.asq ], [ %.24, %read_num.exit ], [ %.0609, %read_num.exit1117 ], [ %.0609, %read_num.exit1117.thread3167 ], [ %.0609, %.split ], [ %.0609, %.split3169 ], [ %.6615, %read_num.exit986.thread3220 ], [ %.6615, %.split3222 ], [ %.6615, %.split3223 ], [ %.24, %read_num.exit.thread3321 ], [ %.24, %.split3323 ], [ %.24, %.split3324 ]
  %i.iws = load ptr, ptr %i.d, align 8, !tbaa !92 ; 2 uses
  %i.iwt = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef %i.iws, ptr noundef nonnull %i.m, i32 noundef 9, i32 noundef %.fr)
  br i1 %i.iwt, label %.loopexit3576, label %bb.atd

bb.atd:                                           ; preds = %bb.atc
  %i.iwu = ptrtoint ptr %i.iws to i64
  %i.iwv = ptrtoint ptr %i.l to i64
  %i.iww = sub i64 %i.iwu, %i.iwv
  %spec.store.select.sroa.sel1732.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1732.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1732.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.iww, ptr %spec.store.select.sroa.sel1732.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 9, ptr %spec.store.select, align 8, !tbaa !108
  %i.iwx = load ptr, ptr %i.e, align 8, !tbaa !92
  %spec.store.select.sroa.sel1735.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1735.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1735.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %i.iwx, ptr %spec.store.select.sroa.sel1735.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

bb.ate:                                           ; preds = %bb.abo, %bb.abj, %bb.aax, %bb.aau, %bb.aar, %bb.xa, %bb.nn, %bb.nh, %bb.n
  %.24746 = phi i64 [ %i.exz, %bb.aax ], [ %.0722, %bb.n ], [ %i.byh, %bb.nh ], [ %i.bzl, %bb.nn ], [ %i.eby, %bb.xa ], [ %i.ewe, %bb.aar ], [ %i.exb, %bb.aau ], [ %i.fax, %bb.abj ], [ %i.fbx, %bb.abo ]
  %.31676 = phi ptr [ %.4649, %bb.aax ], [ %i.ad, %bb.n ], [ %.1646, %bb.nh ], [ %.4649, %bb.nn ], [ %.4649, %bb.xa ], [ %.4649, %bb.aar ], [ %.4649, %bb.aau ], [ %.17662, %bb.abj ], [ %.20665, %bb.abo ]
  %.31 = phi ptr [ %.4613, %bb.aax ], [ %i.af, %bb.n ], [ %.1610, %bb.nh ], [ %.4613, %bb.nn ], [ %.4613, %bb.xa ], [ %.4613, %bb.aar ], [ %.4613, %bb.aau ], [ %.17, %bb.abj ], [ %.20, %bb.abo ]
  %i.iwy = load ptr, ptr %i.d, align 8, !tbaa !92 ; 2 uses
  %i.iwz = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef %i.iwy, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef %.fr)
  br i1 %i.iwz, label %.loopexit3576, label %bb.atf

bb.atf:                                           ; preds = %bb.ate
  %i.ixa = ptrtoint ptr %i.iwy to i64
  %i.ixb = ptrtoint ptr %i.l to i64
  %i.ixc = sub i64 %i.ixa, %i.ixb
  %spec.store.select.sroa.sel1738.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1738.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1738.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.ixc, ptr %spec.store.select.sroa.sel1738.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 2, ptr %spec.store.select, align 8, !tbaa !108
  %spec.store.select.sroa.sel1741.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1741.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1741.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel1741.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

.loopexit3552:                                    ; preds = %.lr.ph3751, %.lr.ph4177, %.preheader3625, %.preheader3551
  %i.ixd = phi ptr [ %i.eyu, %.preheader3551 ], [ %i.fwb, %.preheader3625 ], [ %i.eyy, %.lr.ph4177 ], [ %i.fwf, %.lr.ph3751 ] ; 2 uses
  %.25747 = phi i64 [ %.4726, %.preheader3551 ], [ %.14736, %.preheader3625 ], [ %.4726, %.lr.ph4177 ], [ %.14736, %.lr.ph3751 ]
  %.32677 = phi ptr [ %.4649, %.preheader3551 ], [ %.20665, %.preheader3625 ], [ %.4649, %.lr.ph4177 ], [ %.20665, %.lr.ph3751 ]
  %.32 = phi ptr [ %.4613, %.preheader3551 ], [ %.20, %.preheader3625 ], [ %.4613, %.lr.ph4177 ], [ %.20, %.lr.ph3751 ]
  %i.ixe = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef nonnull %i.ixd, ptr noundef nonnull %i.m, i32 noundef 7, i32 noundef %.fr)
  br i1 %i.ixe, label %.loopexit3576, label %bb.atg

bb.atg:                                           ; preds = %.loopexit3552
  %i.ixf = ptrtoint ptr %i.ixd to i64
  %i.ixg = ptrtoint ptr %i.l to i64
  %i.ixh = sub i64 %i.ixf, %i.ixg
  %spec.store.select.sroa.sel1702.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1702.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1702.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.ixh, ptr %spec.store.select.sroa.sel1702.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 7, ptr %spec.store.select, align 8, !tbaa !108
  %spec.store.select.sroa.sel1705.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1705.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1705.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.19, ptr %spec.store.select.sroa.sel1705.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

read_true.exit1119:                               ; preds = %bb.ask, %bb.aas, %bb.mx
  %i.ixi = phi ptr [ %i.bp, %bb.mx ], [ %i.ewv, %bb.aas ], [ %i.gqx, %bb.ask ] ; 2 uses
  %.26748 = phi i64 [ %.1723, %bb.mx ], [ %.7729, %bb.aas ], [ %.17739, %bb.ask ]
  %.33678 = phi ptr [ %.0645, %bb.mx ], [ %.10655, %bb.aas ], [ %.24669, %bb.ask ]
  %.33 = phi ptr [ %.0609, %bb.mx ], [ %.10, %bb.aas ], [ %.24, %bb.ask ]
  %i.ixj = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef nonnull %i.ixi, ptr noundef nonnull %i.m, i32 noundef 11, i32 noundef %.fr)
  br i1 %i.ixj, label %.loopexit3576, label %bb.ath

bb.ath:                                           ; preds = %read_true.exit1119
  %i.ixk = ptrtoint ptr %i.ixi to i64
  %i.ixl = ptrtoint ptr %i.l to i64
  %i.ixm = sub i64 %i.ixk, %i.ixl
  %spec.store.select.sroa.sel1720.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1720.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1720.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.ixm, ptr %spec.store.select.sroa.sel1720.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 11, ptr %spec.store.select, align 8, !tbaa !108
  %spec.store.select.sroa.sel1723.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1723.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1723.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.20, ptr %spec.store.select.sroa.sel1723.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

read_false.exit1121:                              ; preds = %bb.asl, %bb.aav, %bb.my
  %i.ixn = phi ptr [ %i.bp, %bb.my ], [ %i.exs, %bb.aav ], [ %i.gqx, %bb.asl ] ; 2 uses
  %.27749 = phi i64 [ %.1723, %bb.my ], [ %.8730, %bb.aav ], [ %.17739, %bb.asl ]
  %.34679 = phi ptr [ %.0645, %bb.my ], [ %.12657, %bb.aav ], [ %.24669, %bb.asl ]
  %.34 = phi ptr [ %.0609, %bb.my ], [ %.12, %bb.aav ], [ %.24, %bb.asl ]
  %i.ixo = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef nonnull %i.ixn, ptr noundef nonnull %i.m, i32 noundef 11, i32 noundef %.fr)
  br i1 %i.ixo, label %.loopexit3576, label %bb.ati

bb.ati:                                           ; preds = %read_false.exit1121
  %i.ixp = ptrtoint ptr %i.ixn to i64
  %i.ixq = ptrtoint ptr %i.l to i64
  %i.ixr = sub i64 %i.ixp, %i.ixq
  %spec.store.select.sroa.sel1714.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1714.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1714.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.ixr, ptr %spec.store.select.sroa.sel1714.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 11, ptr %spec.store.select, align 8, !tbaa !108
  %spec.store.select.sroa.sel1717.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1717.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1717.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.21, ptr %spec.store.select.sroa.sel1717.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

read_null.exit1123:                               ; preds = %bb.asm, %bb.aay, %bb.mz
  %i.ixs = phi ptr [ %i.bp, %bb.mz ], [ %i.eyq, %bb.aay ], [ %i.gqx, %bb.asm ] ; 2 uses
  %.28750 = phi i64 [ %.1723, %bb.mz ], [ %.9731, %bb.aay ], [ %.17739, %bb.asm ]
  %.35680 = phi ptr [ %.0645, %bb.mz ], [ %.14659, %bb.aay ], [ %.24669, %bb.asm ]
  %.35 = phi ptr [ %.0609, %bb.mz ], [ %.14, %bb.aay ], [ %.24, %bb.asm ]
  %i.ixt = call fastcc zeroext i1 @is_truncated_end(ptr noundef %i.l, ptr noundef nonnull %i.ixs, ptr noundef nonnull %i.m, i32 noundef 11, i32 noundef %.fr)
  br i1 %i.ixt, label %.loopexit3576, label %bb.atj

bb.atj:                                           ; preds = %read_null.exit1123
  %i.ixu = ptrtoint ptr %i.ixs to i64
  %i.ixv = ptrtoint ptr %i.l to i64
  %i.ixw = sub i64 %i.ixu, %i.ixv
  %spec.store.select.sroa.sel1708.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1708.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1708.v.sroa.sel.v.sroa.sel.v, i64 16
end_hunk_1
begin_hunk_2_@write_f32_raw:bb.a
  br label %f32_bin_to_dec.exit

f32_bin_to_dec.exit:                              ; preds = %.critedge.i, %bb.al, %bb.am
  %.0174 = phi i32 [ %i.qs, %bb.am ], [ %i.qh, %bb.al ], [ %i.ot, %.critedge.i ] ; 13 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 9 uses
  %i.qu = icmp ult i32 %.0174, 100
  br i1 %i.qu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %f32_bin_to_dec.exit
  %i.qv = icmp samesign ult i32 %.0174, 10        ; 2 uses
  %i.qw = shl nuw nsw i32 %.0174, 1
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.qx
  %.neg70.i = sext i1 %i.qv to i64
  %i.qz = zext i1 %i.qv to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz
  %i.rb = load i16, ptr %i.ra, align 1            ; 2 uses
  store i16 %i.rb, ptr %i.qt, align 1
  %i.rc = getelementptr inbounds i8, ptr %i.qt, i64 %.neg70.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  br label %write_u32_len_1_to_8.exit

bb.ao:                                            ; preds = %f32_bin_to_dec.exit
  %i.re = icmp ult i32 %.0174, 10000
  br i1 %i.re, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.rf = mul nuw nsw i32 %.0174, 5243
  %i.rg = lshr i32 %i.rf, 19                      ; 2 uses
  %.neg68.i = mul nsw i32 %i.rg, -100
  %i.rh = add nsw i32 %.neg68.i, %.0174
  %i.ri = icmp samesign ult i32 %.0174, 1000      ; 2 uses
  %i.rj = shl nuw nsw i32 %i.rg, 1
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.rk
  %.neg69.i = sext i1 %i.ri to i64
  %i.rm = zext i1 %i.ri to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rm
  %i.ro = load i16, ptr %i.rn, align 1            ; 2 uses
  store i16 %i.ro, ptr %i.qt, align 1
  %i.rp = getelementptr inbounds i8, ptr %i.qt, i64 %.neg69.i ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 2
  %i.rr = shl nsw i32 %i.rh, 1
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.rs
  %i.ru = load i16, ptr %i.rt, align 2
  store i16 %i.ru, ptr %i.rq, align 1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  br label %write_u32_len_1_to_8.exit

bb.aq:                                            ; preds = %bb.ao
  %i.rw = icmp ult i32 %.0174, 1000000
  %i.rx = zext i32 %.0174 to i64                  ; 2 uses
  br i1 %i.rw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ry = mul nuw nsw i64 %i.rx, 429497
  %i.rz = lshr i64 %i.ry, 32                      ; 2 uses
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %.neg65.i = mul nsw i32 %i.sa, -10000
  %i.sb = add nsw i32 %.neg65.i, %.0174           ; 2 uses
  %i.sc = mul i32 %i.sb, 5243
  %i.sd = lshr i32 %i.sc, 19                      ; 2 uses
  %.neg66.i = mul nsw i32 %i.sd, -100
  %i.se = add nsw i32 %.neg66.i, %i.sb
  %i.sf = icmp samesign ult i32 %.0174, 100000    ; 2 uses
  %i.sg = shl nuw nsw i64 %i.rz, 1
  %i.sh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.sg
  %.neg67.i = sext i1 %i.sf to i64
  %i.si = zext i1 %i.sf to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 1            ; 2 uses
  store i16 %i.sk, ptr %i.qt, align 1
  %i.sl = getelementptr inbounds i8, ptr %i.qt, i64 %.neg67.i ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  %i.sn = shl nuw nsw i32 %i.sd, 1
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.so
  %i.sq = load i16, ptr %i.sp, align 2
  store i16 %i.sq, ptr %i.sm, align 1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.ss = shl nsw i32 %i.se, 1
  %i.st = zext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.st
  %i.sv = load i16, ptr %i.su, align 2
  store i16 %i.sv, ptr %i.sr, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sl, i64 6
  br label %write_u32_len_1_to_8.exit

bb.as:                                            ; preds = %bb.aq
  %i.sx = mul nuw nsw i64 %i.rx, 109951163
  %i.sy = lshr i64 %i.sx, 40
  %i.sz = trunc nuw nsw i64 %i.sy to i32          ; 3 uses
  %.neg.i = mul i32 %i.sz, -10000
  %i.ta = add i32 %.neg.i, %.0174                 ; 2 uses
  %i.tb = mul nuw i32 %i.sz, 5243
  %i.tc = lshr i32 %i.tb, 19                      ; 2 uses
  %i.td = mul i32 %i.ta, 5243
  %i.te = lshr i32 %i.td, 19                      ; 2 uses
  %.neg62.i = mul nsw i32 %i.tc, -100
  %i.tf = add nsw i32 %.neg62.i, %i.sz
  %.neg63.i = mul i32 %i.te, 2147483548
  %i.tg = add i32 %.neg63.i, %i.ta
  %i.th = icmp ult i32 %.0174, 10000000           ; 2 uses
  %i.ti = shl nuw nsw i32 %i.tc, 1
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tj
  %.neg64.i = sext i1 %i.th to i64
  %i.tl = zext i1 %i.th to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tl
  %i.tn = load i16, ptr %i.tm, align 1            ; 2 uses
  store i16 %i.tn, ptr %i.qt, align 1
  %i.to = getelementptr inbounds i8, ptr %i.qt, i64 %.neg64.i ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 2
  %i.tq = shl nsw i32 %i.tf, 1
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2
  store i16 %i.tt, ptr %i.tp, align 1
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tv = shl nuw nsw i32 %i.te, 1
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tw
  %i.ty = load i16, ptr %i.tx, align 2
  store i16 %i.ty, ptr %i.tu, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.to, i64 6
  %i.ua = shl i32 %i.tg, 1
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ub
  %i.ud = load i16, ptr %i.uc, align 2
  store i16 %i.ud, ptr %i.tz, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  br label %write_u32_len_1_to_8.exit

write_u32_len_1_to_8.exit:                        ; preds = %bb.an, %bb.ap, %bb.ar, %bb.as
  %.in = phi i16 [ %i.rb, %bb.an ], [ %i.ro, %bb.ap ], [ %i.sk, %bb.ar ], [ %i.tn, %bb.as ]
  %.0.i = phi ptr [ %i.rd, %bb.an ], [ %i.rv, %bb.ap ], [ %i.sw, %bb.ar ], [ %i.ue, %bb.as ] ; 3 uses
  %i.uf = trunc i16 %.in to i8
  store i8 %i.uf, ptr %i.q, align 1, !tbaa !81
  store i8 46, ptr %i.qt, align 1, !tbaa !81
  %i.ug = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !81
  %i.ui = icmp eq i8 %i.uh, 48
  %.neg = sext i1 %i.ui to i64
  %i.uj = getelementptr inbounds i8, ptr %.0.i, i64 %.neg ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 -1
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !81
  %i.um = icmp eq i8 %i.ul, 48
  %.neg98 = sext i1 %i.um to i64
  %i.un = getelementptr inbounds i8, ptr %i.uj, i64 %.neg98
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %write_u32_len_1_to_8.exit
  %.092 = phi ptr [ %i.un, %write_u32_len_1_to_8.exit ], [ %i.uo, %bb.at ] ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %.092, i64 -1 ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !81  ; 2 uses
  %i.uq = icmp eq i8 %i.up, 48
  br i1 %i.uq, label %bb.at, label %bb.au, !llvm.loop !326

bb.au:                                            ; preds = %bb.at
  %i.ur = ptrtoint ptr %.0.i to i64
  %i.us = ptrtoint ptr %i.q to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = trunc i64 %i.ut to i32                  ; 2 uses
  %i.uv = add nsw i32 %i.uu, -47
  %i.uw = icmp eq i8 %i.up, 46
  %.neg99 = sext i1 %i.uw to i64
  %i.ux = getelementptr inbounds i8, ptr %.092, i64 %.neg99 ; 2 uses
  store i16 11621, ptr %i.ux, align 1
  %i.uy = icmp sgt i32 %i.uu, 46
  %i.uz = select i1 %i.uy, i64 1, i64 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uz ; 2 uses
  %i.vb = tail call i32 @llvm.abs.i32(i32 %i.uv, i1 true) ; 2 uses
  %i.vc = icmp samesign ult i32 %i.vb, 10         ; 2 uses
  %i.vd = shl nuw i32 %i.vb, 1
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ve
  %.neg.i139 = sext i1 %i.vc to i64
  %i.vg = zext i1 %i.vc to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 1
  store i16 %i.vi, ptr %i.va, align 1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 %.neg.i139
  br label %write_inf_or_nan.exit

write_inf_or_nan.exit:                            ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.au, %write_u32_len_7_to_9_trim.exit, %write_u32_len_7_to_9_trim.exit138, %write_u32_len_1_to_8.exit113, %bb.i
  %.0 = phi ptr [ %i.vk, %bb.au ], [ %i.s, %bb.i ], [ %i.dk, %write_u32_len_1_to_8.exit113 ], [ %i.lb, %write_u32_len_7_to_9_trim.exit138 ], [ %i.oa, %write_u32_len_7_to_9_trim.exit ], [ %i.i, %bb.c ], [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_val_write_opts(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.yyjson_write_err, align 8   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0849.0.copyload = load ptr, ptr %2, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload, %bb.b ], [ null, %bb.a ] ; 35 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 10 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ] ; 16 uses
  %.sroa.0849.0 = phi ptr [ %.sroa.0849.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 9 uses
  %.not26.a = icmp eq ptr %4, null                ; 14 uses
  %spec.store.select = select i1 %.not26.a, ptr %5, ptr %4 ; 16 uses
  %.not27.a = icmp eq ptr %3, null                ; 16 uses
  %.not28.a = icmp eq ptr %0, null
  br i1 %.not28.a, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not27.a, label %.cont793, label %.else795

.else795:                                         ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont793

.cont793:                                         ; preds = %bb.d, %.else795
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not26.a, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select, align 8, !tbaa !329
  br label %yyjson_write_single.exit

bb.e:                                             ; preds = %bb.c
  %i.a = load i64, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.b = trunc i64 %i.a to i8                     ; 2 uses
  %i.c = and i8 %i.b, 6
  %i.d = icmp ne i8 %i.c, 6
  %i.e = icmp ult i64 %i.a, 256
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.fs

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %1, 2
  %.not1299 = icmp eq i32 %i.f, 0                 ; 3 uses
  %i.g = and i32 %1, 4
  %.not1300.a = icmp eq i32 %i.g, 0               ; 2 uses
  br i1 %.not1299, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %enc_table_esc_slash.enc_table_esc.i65 = select i1 %.not1300.a, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit66

bb.h:                                             ; preds = %bb.f
  %enc_table_cpy_slash.enc_table_cpy.i63 = select i1 %.not1300.a, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %get_enc_table_with_flag.exit66

get_enc_table_with_flag.exit66:                   ; preds = %bb.g, %bb.h
  %.0.i64 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i65, %bb.g ], [ %enc_table_cpy_slash.enc_table_cpy.i63, %bb.h ] ; 28 uses
  %i.h = icmp eq ptr %.0.i64, @enc_table_cpy
  %i.i = and i32 %1, 32
  %.not1302 = icmp eq i32 %i.i, 0                 ; 4 uses
  %i.j = and i32 %1, 128
  %.not1303 = icmp eq i32 %i.j, 0
  %i.k = and i8 %i.b, 7
  switch i8 %i.k, label %default.unreachable [
    i8 1, label %bb.i
    i8 5, label %bb.k
    i8 4, label %bb.ee
    i8 3, label %bb.fg
    i8 2, label %bb.fh
    i8 6, label %bb.fj
    i8 7, label %bb.fl
    i8 0, label %bb.fq
  ]

bb.i:                                             ; preds = %get_enc_table_with_flag.exit66
  %i.l = lshr i64 %i.a, 8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = add nuw nsw i64 %i.l, 2
  %i.p = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.o) #33, !inline_history !330 ; 4 uses
  %.not107.i = icmp eq ptr %i.p, null
  br i1 %.not107.i, label %bb.fp, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.n, i64 range(i64 0, 72057594037927936) %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  br label %write_str.exit605

bb.k:                                             ; preds = %get_enc_table_with_flag.exit66
  %i.r = lshr i64 %i.a, 8                         ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = mul nuw nsw i64 %i.r, 6
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.w) #33, !inline_history !330 ; 12 uses
  %.not104.i = icmp eq ptr %i.x, null
  br i1 %.not104.i, label %bb.fp, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.bu, label %.split.i, !prof !25

.split.i:                                         ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 4 uses
  store i8 34, ptr %i.x, align 1, !tbaa !81
  %i.z = ptrtoint ptr %i.y to i64                 ; 4 uses
  %i.aa = add i64 %i.r, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.ay, %.split.i
  %.pn.i507 = phi ptr [ %i.x, %.split.i ], [ %.8253.i520, %bb.ay ]
  %.0238.i508 = phi ptr [ %i.t, %.split.i ], [ %i.hv, %bb.ay ] ; 3 uses
  %.0245.i509 = getelementptr inbounds nuw i8, ptr %.pn.i507, i64 1 ; 2 uses
  %i.ab = ptrtoint ptr %.0238.i508 to i64
  %i.ac = sub i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph2572, label %.preheader1327

.preheader1327:                                   ; preds = %bb.ac, %bb.m
  %.pre-phi3196 = phi i64 [ %i.ac, %bb.m ], [ %i.dj, %bb.ac ]
  %.1246.i510.lcssa = phi ptr [ %.0245.i509, %bb.m ], [ %i.dg, %bb.ac ] ; 2 uses
  %.1239.i511.lcssa = phi ptr [ %.0238.i508, %bb.m ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.ae = icmp sgt i64 %.pre-phi3196, 3
  br i1 %i.ae, label %.lr.ph2578, label %.preheader1325

.lr.ph2572:                                       ; preds = %bb.m, %bb.ac
  %.1239.i5112570 = phi ptr [ %i.dh, %bb.ac ], [ %.0238.i508, %bb.m ] ; 46 uses
  %.1246.i5102569 = phi ptr [ %i.dg, %bb.ac ], [ %.0245.i509, %bb.m ] ; 30 uses
  %i.af = load i8, ptr %.1239.i5112570, align 1, !tbaa !81 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %.not272.i589 = icmp eq i8 %i.ai, 0
  br i1 %.not272.i589, label %bb.n, label %.preheader1322.preheader, !prof !25

bb.n:                                             ; preds = %.lr.ph2572
  %i.aj = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !81
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %.not273.i590 = icmp eq i8 %i.an, 0
  br i1 %.not273.i590, label %bb.o, label %.loopexit1329.a, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %.not274.i591 = icmp eq i8 %i.as, 0
  br i1 %.not274.i591, label %bb.p, label %.loopexit1330, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81
  %.not275.i592 = icmp eq i8 %i.ax, 0
  br i1 %.not275.i592, label %bb.q, label %.loopexit1331, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !81
  %.not276.i593 = icmp eq i8 %i.bc, 0
  br i1 %.not276.i593, label %bb.r, label %bb.aj, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !81
  %.not277.i594 = icmp eq i8 %i.bh, 0
  br i1 %.not277.i594, label %bb.s, label %bb.ak, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %.not278.i595 = icmp eq i8 %i.bm, 0
  br i1 %.not278.i595, label %bb.t, label %bb.al, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %.not279.i596 = icmp eq i8 %i.br, 0
  br i1 %.not279.i596, label %bb.u, label %bb.am, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %.not280.i597 = icmp eq i8 %i.bw, 0
  br i1 %.not280.i597, label %bb.v, label %bb.an, !prof !25

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i64
end_hunk_2
begin_hunk_3_@yyjson_val_write_file:bb.a
  %spec.store.select.sroa.sel29.v.sroa.sel.v.sroa.sel.v = select i1 %.not19.a, ptr %5, ptr %4
  %spec.store.select.sroa.sel29.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel29.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.115, ptr %spec.store.select.sroa.sel29.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 6, ptr %spec.store.select, align 8, !tbaa !329
  br label %write_dat_to_file.exit

write_dat_to_file.exit:                           ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i = phi i1 [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.l ], [ true, %bb.k ]
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  call void %i.k(ptr noundef %i.m, ptr noundef nonnull %i.c) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %write_dat_to_file.exit, %.critedge
  %.0 = phi i1 [ false, %.critedge ], [ %.0.i, %write_dat_to_file.exit ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @yyjson_val_write_fp(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.yyjson_write_err, align 8   ; 5 uses
  %6 = alloca %struct.yyjson_alc, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @YYJSON_DEFAULT_ALC, i64 32, i1 false), !tbaa.struct !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not17.a = icmp eq ptr %4, null                ; 3 uses
  %spec.store.select = select i1 %.not17.a, ptr %5, ptr %4 ; 3 uses
  %.not18.a = icmp eq ptr %0, null
  br i1 %.not18.a, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.a, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.31, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select, align 8, !tbaa !329
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.b = call ptr @yyjson_val_write_opts(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select) ; 3 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %bb.i, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.c = load i64, ptr %i.a, align 8, !tbaa !91
  %i.d = call i64 @fwrite(ptr noundef nonnull readonly %i.b, i64 noundef %i.c, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i = icmp eq i64 %i.d, 1                   ; 2 uses
  br i1 %.not.i, label %write_dat_to_fp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.sroa.sel23.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.a, ptr %5, ptr %4
  %spec.store.select.sroa.sel23.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.117, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 6, ptr %spec.store.select, align 8, !tbaa !329
  br label %write_dat_to_fp.exit

write_dat_to_fp.exit:                             ; preds = %bb.g, %bb.h
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  call void %i.f(ptr noundef %i.h, ptr noundef nonnull %i.b) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %write_dat_to_fp.exit, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ %.not.i, %write_dat_to_fp.exit ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @yyjson_write_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = tail call zeroext i1 @yyjson_val_write_file(ptr noundef %0, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @yyjson_write_fp(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.yyjson_write_err, align 8   ; 5 uses
  %6 = alloca %struct.yyjson_alc, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @YYJSON_DEFAULT_ALC, i64 32, i1 false), !tbaa.struct !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not17.i.a = icmp eq ptr %4, null              ; 3 uses
  %spec.store.select.i = select i1 %.not17.i.a, ptr %5, ptr %4 ; 3 uses
  %.not18.i.a = icmp eq ptr %0, null
  br i1 %.not18.i.a, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.i.a, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.31, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select.i, align 8, !tbaa !329
  br label %yyjson_val_write_fp.exit

bb.h:                                             ; preds = %bb.f
  %i.d = call ptr @yyjson_val_write_opts(ptr noundef readonly %i.c, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select.i) ; 3 uses
  %.not19.i = icmp eq ptr %i.d, null
  br i1 %.not19.i, label %yyjson_val_write_fp.exit, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.e = load i64, ptr %i.a, align 8, !tbaa !91
  %i.f = call i64 @fwrite(ptr noundef nonnull readonly %i.d, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i.i = icmp eq i64 %i.f, 1                 ; 2 uses
  br i1 %.not.i.i, label %write_dat_to_fp.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.i.a, ptr %5, ptr %4
  %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.117, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 6, ptr %spec.store.select.i, align 8, !tbaa !329
  br label %write_dat_to_fp.exit.i

write_dat_to_fp.exit.i:                           ; preds = %bb.j, %bb.i
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %i.d) #33, !inline_history !375
  br label %yyjson_val_write_fp.exit

yyjson_val_write_fp.exit:                         ; preds = %bb.g, %bb.h, %write_dat_to_fp.exit.i
  %.0.i = phi i1 [ false, %bb.g ], [ %.not.i.i, %write_dat_to_fp.exit.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_mut_val_write_opts(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc ptr @yyjson_mut_write_opts_impl(ptr noundef %0, i64 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @yyjson_mut_write_opts_impl(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #10 {
bb.a:
  %6 = alloca %struct.yyjson_write_err, align 8   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0486.0.copyload = load ptr, ptr %3, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload, %bb.b ], [ null, %bb.a ] ; 35 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 10 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ] ; 16 uses
  %.sroa.0486.0 = phi ptr [ %.sroa.0486.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 9 uses
  %.not28.a = icmp eq ptr %5, null                ; 16 uses
  %spec.store.select = select i1 %.not28.a, ptr %6, ptr %5 ; 16 uses
  %.not29.a = icmp eq ptr %4, null                ; 16 uses
  %.not30.a = icmp eq ptr %0, null
  br i1 %.not30.a, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not29.a, label %.cont423, label %.else425

.else425:                                         ; preds = %bb.d
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont423

.cont423:                                         ; preds = %bb.d, %.else425
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not28.a, ptr %6, ptr %5
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select, align 8, !tbaa !329
  br label %yyjson_mut_write_single.exit

bb.e:                                             ; preds = %bb.c
  %i.a = load i64, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.b = trunc i64 %i.a to i8                     ; 2 uses
  %i.c = and i8 %i.b, 6
  %i.d = icmp ne i8 %i.c, 6
  %i.e = icmp ult i64 %i.a, 256
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.fs

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %2, 2
  %.not950.a = icmp eq i32 %i.f, 0                ; 3 uses
  %i.g = and i32 %2, 4
  %.not951 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %.not950.a, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %enc_table_esc_slash.enc_table_esc.i.i = select i1 %.not951, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i

bb.h:                                             ; preds = %bb.f
  %enc_table_cpy_slash.enc_table_cpy.i.i = select i1 %.not951, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i

get_enc_table_with_flag.exit.i:                   ; preds = %bb.h, %bb.g
  %.0.i3.i = phi ptr [ %enc_table_esc_slash.enc_table_esc.i.i, %bb.g ], [ %enc_table_cpy_slash.enc_table_cpy.i.i, %bb.h ] ; 28 uses
  %i.h = icmp eq ptr %.0.i3.i, @enc_table_cpy
  %i.i = and i32 %2, 32
  %.not953.a = icmp eq i32 %i.i, 0                ; 4 uses
  %i.j = and i32 %2, 128
  %.not954 = icmp eq i32 %i.j, 0
  %i.k = and i8 %i.b, 7
  switch i8 %i.k, label %default.unreachable [
    i8 1, label %bb.i
    i8 5, label %bb.k
    i8 4, label %bb.ee
    i8 3, label %bb.fg
    i8 2, label %bb.fh
    i8 6, label %bb.fj
    i8 7, label %bb.fl
    i8 0, label %bb.fq
  ]

bb.i:                                             ; preds = %get_enc_table_with_flag.exit.i
  %i.l = lshr i64 %i.a, 8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = add nuw nsw i64 %i.l, 2
  %i.p = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.o) #33, !inline_history !376 ; 4 uses
  %.not107.i.i = icmp eq ptr %i.p, null
  br i1 %.not107.i.i, label %bb.fp, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.n, i64 range(i64 0, 72057594037927936) %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  br label %write_str.exit109.i

bb.k:                                             ; preds = %get_enc_table_with_flag.exit.i
  %i.r = lshr i64 %i.a, 8                         ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = mul nuw nsw i64 %i.r, 6
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.w) #33, !inline_history !376 ; 12 uses
  %.not104.i.i = icmp eq ptr %i.x, null
  br i1 %.not104.i.i, label %bb.fp, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.bu, label %.split.i.i, !prof !25

.split.i.i:                                       ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 4 uses
  store i8 34, ptr %i.x, align 1, !tbaa !81
  %i.z = ptrtoint ptr %i.y to i64                 ; 4 uses
  %i.aa = add i64 %i.r, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.ay, %.split.i.i
  %.pn.i11.i = phi ptr [ %i.x, %.split.i.i ], [ %.8253.i24.i, %bb.ay ]
  %.0238.i12.i = phi ptr [ %i.t, %.split.i.i ], [ %i.hv, %bb.ay ] ; 3 uses
  %.0245.i13.i = getelementptr inbounds nuw i8, ptr %.pn.i11.i, i64 1 ; 2 uses
  %i.ab = ptrtoint ptr %.0238.i12.i to i64
  %i.ac = sub i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph2225, label %.preheader978

.preheader978:                                    ; preds = %bb.ac, %bb.m
  %.pre-phi2855.a = phi i64 [ %i.ac, %bb.m ], [ %i.dj, %bb.ac ]
  %.1246.i14.i.lcssa = phi ptr [ %.0245.i13.i, %bb.m ], [ %i.dg, %bb.ac ] ; 2 uses
  %.1239.i15.i.lcssa = phi ptr [ %.0238.i12.i, %bb.m ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.ae = icmp sgt i64 %.pre-phi2855.a, 3
  br i1 %i.ae, label %.lr.ph2231, label %.preheader976

.lr.ph2225:                                       ; preds = %bb.m, %bb.ac
  %.1239.i15.i2223 = phi ptr [ %i.dh, %bb.ac ], [ %.0238.i12.i, %bb.m ] ; 46 uses
  %.1246.i14.i2222 = phi ptr [ %i.dg, %bb.ac ], [ %.0245.i13.i, %bb.m ] ; 30 uses
  %i.af = load i8, ptr %.1239.i15.i2223, align 1, !tbaa !81 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %.not272.i93.i = icmp eq i8 %i.ai, 0
  br i1 %.not272.i93.i, label %bb.n, label %.preheader973.preheader, !prof !25

bb.n:                                             ; preds = %.lr.ph2225
  %i.aj = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !81
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %.not273.i94.i = icmp eq i8 %i.an, 0
  br i1 %.not273.i94.i, label %bb.o, label %.loopexit980.a, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %.not274.i95.i = icmp eq i8 %i.as, 0
  br i1 %.not274.i95.i, label %bb.p, label %.loopexit981.a, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81
  %.not275.i96.i = icmp eq i8 %i.ax, 0
  br i1 %.not275.i96.i, label %bb.q, label %.loopexit982, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !81
  %.not276.i97.i = icmp eq i8 %i.bc, 0
  br i1 %.not276.i97.i, label %bb.r, label %bb.aj, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !81
  %.not277.i98.i = icmp eq i8 %i.bh, 0
  br i1 %.not277.i98.i, label %bb.s, label %bb.ak, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %.not278.i99.i = icmp eq i8 %i.bm, 0
  br i1 %.not278.i99.i, label %bb.t, label %bb.al, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %.not279.i100.i = icmp eq i8 %i.br, 0
  br i1 %.not279.i100.i, label %bb.u, label %bb.am, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %.not280.i101.i = icmp eq i8 %i.bw, 0
  br i1 %.not280.i101.i, label %bb.v, label %bb.an, !prof !25

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i64
end_hunk_3
begin_hunk_4_@unsafe_yyjson_ptr_getx:bb.a

bb.q:                                             ; preds = %bb.p, %bb.o
  %.119.i = phi ptr [ %i.aq, %bb.o ], [ %.018.i110, %bb.p ]
  %i.au = getelementptr inbounds nuw i8, ptr %.119.i, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i36111, i64 1
  %.not23.i = icmp eq i64 %i.al, 0
  br i1 %.not23.i, label %ptr_token_eq.exit.thread62, label %.lr.ph112, !llvm.loop !421

ptr_token_eq.exit:                                ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i116, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  %bcmp.i = tail call i32 @bcmp(ptr %i.ax, ptr nonnull %i.d, i64 %.150)
  %i.ay = icmp eq i32 %bcmp.i, 0
  br i1 %i.ay, label %ptr_token_eq.exit.thread62, label %ptr_token_eq.exit.thread

ptr_token_eq.exit.thread62:                       ; preds = %ptr_token_eq.exit, %bb.n, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i116, i64 16
  br label %ptr_obj_get.exit

ptr_token_eq.exit.thread:                         ; preds = %bb.o, %bb.p, %bb.l, %ptr_token_eq.exit
  %i.ba = add nsw i64 %.0.i31118, -1              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i116, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79
  %i.bd = and i64 %i.bc, 6
  %i.be = icmp eq i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i116, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !81
  %i.bh = select i1 %i.be, i64 %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %ptr_token_to_idx.exit.thread, label %bb.l, !llvm.loop !422

bb.r:                                             ; preds = %ptr_next_token.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 4 uses
  %i.bk = lshr i64 %i.ab, 8                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %ptr_token_to_idx.exit.thread, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.150
  %i.bn = add i64 %.150, -20
  %i.bo = icmp ult i64 %i.bn, -19
  br i1 %i.bo, label %ptr_token_to_idx.exit.thread, label %bb.t, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %i.d, align 1, !tbaa !81
  switch i8 %i.bp, label %.lr.ph102 [
    i8 48, label %bb.u
    i8 45, label %ptr_token_to_idx.exit.thread
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = icmp samesign ugt i64 %.150, 1
  br i1 %i.bq, label %ptr_token_to_idx.exit.thread, label %ptr_token_to_idx.exit, !prof !8

.lr.ph102:                                        ; preds = %bb.t, %bb.v
  %.0.i37101 = phi i64 [ %i.bw, %bb.v ], [ 0, %bb.t ]
  %.022.i100 = phi ptr [ %i.bx, %bb.v ], [ %i.d, %bb.t ] ; 2 uses
  %i.br = load i8, ptr %.022.i100, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i64
  %i.bt = add nsw i64 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 10
  br i1 %i.bu, label %bb.v, label %ptr_token_to_idx.exit.thread

bb.v:                                             ; preds = %.lr.ph102
  %i.bv = mul i64 %.0.i37101, 10
  %i.bw = add i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.022.i100, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.bm
  br i1 %i.by, label %.lr.ph102, label %.critedge.i38, !llvm.loop !423

.critedge.i38:                                    ; preds = %bb.v
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %ptr_token_to_idx.exit.thread, label %ptr_token_to_idx.exit, !prof !124

ptr_token_to_idx.exit:                            ; preds = %.critedge.i38, %bb.u
  %.154 = phi i64 [ 0, %bb.u ], [ %i.bw, %.critedge.i38 ] ; 7 uses
  %.not.i32 = icmp ult i64 %.154, %i.bk
  br i1 %.not.i32, label %bb.w, label %ptr_token_to_idx.exit.thread, !prof !424

bb.w:                                             ; preds = %ptr_token_to_idx.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !81
  %i.cc = lshr i64 %i.ab, 4
  %i.cd = and i64 %i.cc, 1152921504606846960
  %i.ce = add nuw nsw i64 %i.cd, 16
  %i.cf = icmp eq i64 %i.ce, %i.cb
  br i1 %i.cf, label %bb.x, label %.preheader72

.preheader72:                                     ; preds = %bb.w
  %.not12.i104 = icmp eq i64 %.154, 0
  br i1 %.not12.i104, label %ptr_obj_get.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader72
  %xtraiter = and i64 %.154, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.0.i33106.prol = phi ptr [ %i.cn, %.lr.ph107.prol ], [ %i.bj, %.lr.ph107.preheader ] ; 3 uses
  %.053105.prol = phi i64 [ %i.cg, %.lr.ph107.prol ], [ %.154, %.lr.ph107.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.cg = add i64 %.053105.prol, -1               ; 2 uses
  %i.ch = load i64, ptr %.0.i33106.prol, align 8, !tbaa !79
  %i.ci = and i64 %i.ch, 6
  %i.cj = icmp eq i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i33106.prol, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !81
  %i.cm = select i1 %i.cj, i64 %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i33106.prol, i64 %i.cm ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !425

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.lcssa190.unr = phi ptr [ poison, %.lr.ph107.preheader ], [ %i.cn, %.lr.ph107.prol ]
  %.0.i33106.unr = phi ptr [ %i.bj, %.lr.ph107.preheader ], [ %i.cn, %.lr.ph107.prol ]
  %.053105.unr = phi i64 [ %.154, %.lr.ph107.preheader ], [ %i.cg, %.lr.ph107.prol ]
  %i.co = icmp ult i64 %.154, 4
  br i1 %i.co, label %ptr_obj_get.exit, label %.lr.ph107

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.154
  br label %ptr_obj_get.exit

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.0.i33106 = phi ptr [ %i.ds, %.lr.ph107 ], [ %.0.i33106.unr, %.lr.ph107.prol.loopexit ] ; 3 uses
  %.053105 = phi i64 [ %i.dl, %.lr.ph107 ], [ %.053105.unr, %.lr.ph107.prol.loopexit ]
  %i.cq = load i64, ptr %.0.i33106, align 8, !tbaa !79
  %i.cr = and i64 %i.cq, 6
  %i.cs = icmp eq i64 %i.cr, 6
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i33106, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !81
  %i.cv = select i1 %i.cs, i64 %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i33106, i64 %i.cv ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !79
  %i.cy = and i64 %i.cx, 6
  %i.cz = icmp eq i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !81
  %i.dc = select i1 %i.cz, i64 %i.db, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !79
  %i.df = and i64 %i.de, 6
  %i.dg = icmp eq i64 %i.df, 6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !81
  %i.dj = select i1 %i.dg, i64 %i.di, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dj ; 3 uses
  %i.dl = add i64 %.053105, -4                    ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !79
  %i.dn = and i64 %i.dm, 6
  %i.do = icmp eq i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !81
  %i.dr = select i1 %i.do, i64 %i.dq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dr ; 2 uses
  %.not12.i.3 = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.3, label %ptr_obj_get.exit, label %.lr.ph107, !llvm.loop !426

ptr_token_to_idx.exit.thread:                     ; preds = %bb.t, %.critedge.i38, %bb.u, %bb.s, %ptr_next_token.exit, %bb.k, %bb.r, %ptr_token_to_idx.exit, %.lr.ph102, %ptr_token_eq.exit.thread
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %.loopexit, label %.loopexit.sink.split

ptr_obj_get.exit:                                 ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107, %.preheader72, %ptr_token_eq.exit.thread62, %bb.x
  %.1 = phi ptr [ %i.az, %ptr_token_eq.exit.thread62 ], [ %i.cp, %bb.x ], [ %i.bj, %.preheader72 ], [ %.lcssa190.unr, %.lr.ph107.prol.loopexit ], [ %i.ds, %.lr.ph107 ] ; 2 uses
  %i.dt = icmp eq ptr %.152, %i.b
  br i1 %i.dt, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %ptr_token_to_idx.exit.thread, %bb.j
  %.sink172 = phi i32 [ 2, %bb.j ], [ 3, %ptr_token_to_idx.exit.thread ]
  %.str.33.sink = phi ptr [ @.str.32, %bb.j ], [ @.str.33, %ptr_token_to_idx.exit.thread ]
  %.sink = phi ptr [ %.140.i92, %bb.j ], [ %i.d, %ptr_token_to_idx.exit.thread ]
  store i32 %.sink172, ptr %3, align 8, !tbaa !427
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.str.33.sink, ptr %i.du, align 8, !tbaa !429
  %i.dv = ptrtoint ptr %.sink to i64
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !430
  br label %.loopexit

.loopexit:                                        ; preds = %ptr_obj_get.exit, %.loopexit.sink.split, %ptr_token_to_idx.exit.thread, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %.loopexit.sink.split ], [ %.1, %ptr_obj_get.exit ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @unsafe_yyjson_mut_ptr_getx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #21 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %.not40.a = icmp ne ptr %3, null                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = add nuw i64 %2, %i.a                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  %.076 = phi ptr [ %1, %bb.a ], [ %.177, %bb.af ] ; 3 uses
  %.069 = phi ptr [ null, %bb.a ], [ %.170102, %bb.af ]
  %.067 = phi i1 [ false, %bb.a ], [ %.168103, %bb.af ] ; 4 uses
  %.034 = phi ptr [ %0, %bb.a ], [ %.1105, %bb.af ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.076, i64 1 ; 12 uses
  %i.f = icmp ult ptr %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %.076180 = ptrtoaddr ptr %.076 to i64
  %scevgep = getelementptr i8, ptr %.076, i64 %i.d
  %i.g = sub i64 0, %.076180
  %scevgep181 = getelementptr i8, ptr %scevgep, i64 %i.g ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.039.i133 = phi ptr [ %i.i, %bb.c ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.h = load i8, ptr %.039.i133, align 1, !tbaa !81
  switch i8 %i.h, label %bb.c [
    i8 47, label %.critedge.i
    i8 126, label %.critedge.i
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.039.i133, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.i, %scevgep181
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph, !llvm.loop !419

.critedge.i:                                      ; preds = %bb.c, %.lr.ph, %.lr.ph, %bb.b
  %.039.i.lcssa = phi ptr [ %i.e, %bb.b ], [ %.039.i133, %.lr.ph ], [ %.039.i133, %.lr.ph ], [ %scevgep181, %bb.c ] ; 9 uses
  %.039.i.lcssa183 = ptrtoaddr ptr %.039.i.lcssa to i64
  %i.j = icmp eq ptr %.039.i.lcssa, %i.b
  br i1 %i.j, label %.critedge53.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.k = load i8, ptr %.039.i.lcssa, align 1, !tbaa !81
  %.not = icmp eq i8 %i.k, 126
  br i1 %.not, label %.preheader122, label %.critedge53.i, !prof !8

.preheader122:                                    ; preds = %bb.d
  %i.l = icmp ult ptr %.039.i.lcssa, %i.b
  br i1 %i.l, label %.lr.ph140.preheader, label %.critedge2.i

.lr.ph140.preheader:                              ; preds = %.preheader122
  %scevgep182 = getelementptr i8, ptr %.039.i.lcssa, i64 %i.d
  %i.m = sub i64 0, %.039.i.lcssa183
  %scevgep184 = getelementptr i8, ptr %scevgep182, i64 %i.m ; 2 uses
  br label %.lr.ph140

.critedge53.i:                                    ; preds = %bb.d, %.critedge.i
  %i.n = ptrtoint ptr %.039.i.lcssa to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.n, %i.o
  br label %ptr_next_token.exit

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.i
  %.0.i139 = phi i64 [ %.1.i, %bb.i ], [ 0, %.lr.ph140.preheader ] ; 3 uses
  %.140.i138 = phi ptr [ %i.r, %bb.i ], [ %.039.i.lcssa, %.lr.ph140.preheader ] ; 4 uses
  %i.q = load i8, ptr %.140.i138, align 1, !tbaa !81 ; 2 uses
  %.not49.i = icmp eq i8 %i.q, 47
  br i1 %.not49.i, label %.critedge2.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph140
  %i.r = getelementptr inbounds nuw i8, ptr %.140.i138, i64 1 ; 4 uses
  %i.s = icmp eq i8 %i.q, 126
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %i.r, %i.b
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.r, align 1, !tbaa !81
  %i.v = and i8 %i.u, -2
  %switch.i = icmp eq i8 %i.v, 48
  br i1 %switch.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = add i64 %.0.i139, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi i64 [ %i.w, %bb.h ], [ %.0.i139, %bb.e ] ; 2 uses
  %exitcond185.not = icmp eq ptr %i.r, %scevgep184
  br i1 %exitcond185.not, label %.critedge2.i, label %.lr.ph140, !llvm.loop !420

.critedge2.i:                                     ; preds = %bb.i, %.lr.ph140, %.preheader122
  %.140.i.lcssa = phi ptr [ %.039.i.lcssa, %.preheader122 ], [ %.140.i138, %.lr.ph140 ], [ %scevgep184, %bb.i ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %.preheader122 ], [ %.0.i139, %.lr.ph140 ], [ %.1.i, %bb.i ] ; 2 uses
  %i.x = ptrtoint ptr %.140.i.lcssa to i64
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = add i64 %.0.i.lcssa, %i.y
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = icmp eq i64 %.0.i.lcssa, 0
  br label %ptr_next_token.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not43 = icmp eq ptr %4, null
  br i1 %.not43, label %.loopexit, label %.loopexit.sink.split

ptr_next_token.exit:                              ; preds = %.critedge2.i, %.critedge53.i
  %.177 = phi ptr [ %.039.i.lcssa, %.critedge53.i ], [ %.140.i.lcssa, %.critedge2.i ] ; 3 uses
  %.175 = phi i64 [ %i.p, %.critedge53.i ], [ %i.aa, %.critedge2.i ] ; 9 uses
  %.173 = phi i1 [ true, %.critedge53.i ], [ %i.ab, %.critedge2.i ]
  %i.ac = load i64, ptr %.034, align 8, !tbaa !79 ; 3 uses
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i8 %i.ad, 7                         ; 3 uses
  %i.af = icmp eq i8 %i.ae, 7                     ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.r

bb.k:                                             ; preds = %ptr_next_token.exit
  %i.ag = lshr i64 %i.ac, 8                       ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %ptr_mut_obj_get.exit.thread, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %.not23.i155 = icmp eq i64 %.175, 0
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %ptr_token_eq.exit.thread
  %.0.i46166 = phi i64 [ %i.ag, %.preheader ], [ %i.bi, %ptr_token_eq.exit.thread ]
  %.017.i165 = phi ptr [ %i.aj, %.preheader ], [ %i.an, %ptr_token_eq.exit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.017.i165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85 ; 5 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !79
  %i.ap = lshr i64 %i.ao, 8
  %.not.i49 = icmp eq i64 %i.ap, %.175
  br i1 %.not.i49, label %bb.m, label %ptr_token_eq.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.173, label %ptr_token_eq.exit, label %bb.n, !prof !25

bb.n:                                             ; preds = %bb.m
  br i1 %.not23.i155, label %ptr_token_eq.exit.thread89, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.q
  %.in = phi i64 [ %i.as, %bb.q ], [ %.175, %.lr.ph159.preheader ]
  %.0.i53157 = phi ptr [ %i.bc, %bb.q ], [ %i.ar, %.lr.ph159.preheader ] ; 2 uses
  %.018.i51156 = phi ptr [ %i.bb, %bb.q ], [ %i.e, %.lr.ph159.preheader ] ; 3 uses
  %i.as = add i64 %.in, -1                        ; 2 uses
  %i.at = load i8, ptr %.018.i51156, align 1, !tbaa !81 ; 2 uses
  %i.au = icmp eq i8 %i.at, 126
  %i.av = load i8, ptr %.0.i53157, align 1, !tbaa !81 ; 2 uses
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph159
  %i.aw = sext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i51156, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.az = icmp eq i8 %i.ay, 48
  %i.ba = select i1 %i.az, i32 126, i32 47
  %.not25.i = icmp eq i32 %i.ba, %i.aw
  br i1 %.not25.i, label %bb.q, label %ptr_token_eq.exit.thread

bb.p:                                             ; preds = %.lr.ph159
  %.not24.i = icmp eq i8 %i.av, %i.at
  br i1 %.not24.i, label %bb.q, label %ptr_token_eq.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %.119.i = phi ptr [ %i.ax, %bb.o ], [ %.018.i51156, %bb.p ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.119.i, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i53157, i64 1
  %.not23.i = icmp eq i64 %i.as, 0
  br i1 %.not23.i, label %ptr_token_eq.exit.thread89, label %.lr.ph159, !llvm.loop !421

ptr_token_eq.exit:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81
  %bcmp.i = tail call i32 @bcmp(ptr %i.be, ptr nonnull %i.e, i64 %.175)
  %i.bf = icmp eq i32 %bcmp.i, 0
  br i1 %i.bf, label %ptr_token_eq.exit.thread89, label %ptr_token_eq.exit.thread

ptr_token_eq.exit.thread89:                       ; preds = %ptr_token_eq.exit, %bb.n, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85
  br label %ptr_mut_obj_get.exit

ptr_token_eq.exit.thread:                         ; preds = %bb.o, %bb.p, %bb.l, %ptr_token_eq.exit
  %i.bi = add nsw i64 %.0.i46166, -1              ; 2 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %ptr_mut_obj_get.exit, label %bb.l, !llvm.loop !431

bb.r:                                             ; preds = %ptr_next_token.exit
  %i.bj = icmp eq i8 %i.ae, 6
  br i1 %i.bj, label %bb.s, label %ptr_mut_obj_get.exit

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !81 ; 3 uses
  %i.bm = lshr i64 %i.ac, 8                       ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %bb.w, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp eq i64 %.175, 1
  br i1 %i.bo, label %bb.u, label %ptr_mut_obj_get.exit

bb.u:                                             ; preds = %bb.t
  %i.bp = load i8, ptr %i.e, align 1, !tbaa !81
  switch i8 %i.bp, label %ptr_mut_obj_get.exit [
    i8 48, label %bb.v
    i8 45, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  br label %ptr_mut_obj_get.exit

bb.w:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.175
  %i.br = add i64 %.175, -20
  %i.bs = icmp ult i64 %i.br, -19
  br i1 %i.bs, label %ptr_token_to_idx.exit.thread, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.bt = load i8, ptr %i.e, align 1, !tbaa !81
  switch i8 %i.bt, label %.lr.ph148 [
    i8 48, label %bb.y
    i8 45, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp samesign ugt i64 %.175, 1
  br i1 %i.bu, label %ptr_token_to_idx.exit.thread, label %._crit_edge, !prof !8

bb.z:                                             ; preds = %bb.x
  %i.bv = icmp samesign ugt i64 %.175, 1
  br i1 %i.bv, label %ptr_token_to_idx.exit.thread, label %ptr_mut_obj_get.exit, !prof !8

.lr.ph148:                                        ; preds = %bb.x, %bb.aa
  %.0.i54147 = phi i64 [ %i.cb, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %.022.i146 = phi ptr [ %i.cc, %bb.aa ], [ %i.e, %bb.x ] ; 2 uses
  %i.bw = load i8, ptr %.022.i146, align 1, !tbaa !81 ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i64 %i.by, 10
  br i1 %i.bz, label %bb.aa, label %ptr_token_to_idx.exit.thread, !prof !158

bb.aa:                                            ; preds = %.lr.ph148
  %i.ca = mul i64 %.0.i54147, 10
  %i.cb = add i64 %i.by, %i.ca                    ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.022.i146, i64 1 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bq
  br i1 %i.cd, label %.lr.ph148, label %.critedge.i55, !llvm.loop !423

.critedge.i55:                                    ; preds = %bb.aa
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %ptr_token_to_idx.exit.thread, label %ptr_token_to_idx.exit, !prof !124

ptr_token_to_idx.exit.thread:                     ; preds = %.lr.ph148, %bb.w, %bb.y, %bb.z, %.critedge.i55
  br label %ptr_mut_obj_get.exit

ptr_token_to_idx.exit:                            ; preds = %.critedge.i55
  %i.cf = icmp eq i64 %i.cb, %i.bm
  %i.cg = icmp eq i64 %i.cb, -1
  %i.ch = or i1 %i.cf, %i.cg                      ; 3 uses
  %.not.i47 = icmp ult i64 %i.cb, %i.bm
  br i1 %.not.i47, label %.lr.ph153.preheader, label %ptr_mut_obj_get.exit, !prof !169

.lr.ph153.preheader:                              ; preds = %ptr_token_to_idx.exit
  %i.ci = mul i64 %.0.i54147, 10
  %i.cj = add i64 %i.ci, -49
  %i.ck = zext i8 %i.bw to i64
  %i.cl = add i64 %i.cj, %i.ck
  %xtraiter = and i64 %i.cb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol

.lr.ph153.prol:                                   ; preds = %.lr.ph153.preheader, %.lr.ph153.prol
  %.0.i48152.prol = phi ptr [ %i.co, %.lr.ph153.prol ], [ %i.bl, %.lr.ph153.preheader ]
  %.078151.prol = phi i64 [ %i.cm, %.lr.ph153.prol ], [ %i.cb, %.lr.ph153.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph153.prol ], [ 0, %.lr.ph153.preheader ]
  %i.cm = add i64 %.078151.prol, -1               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i48152.prol, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !85 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol, !llvm.loop !432

.lr.ph153.prol.loopexit:                          ; preds = %.lr.ph153.prol, %.lr.ph153.preheader
  %.lcssa239.unr = phi ptr [ poison, %.lr.ph153.preheader ], [ %i.co, %.lr.ph153.prol ]
  %.0.i48152.unr = phi ptr [ %i.bl, %.lr.ph153.preheader ], [ %i.co, %.lr.ph153.prol ]
  %.078151.unr = phi i64 [ %i.cb, %.lr.ph153.preheader ], [ %i.cm, %.lr.ph153.prol ]
  %i.cp = icmp ult i64 %i.cl, 7
  br i1 %i.cp, label %._crit_edge, label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153
  %.0.i48152 = phi ptr [ %i.dg, %.lr.ph153 ], [ %.0.i48152.unr, %.lr.ph153.prol.loopexit ]
  %.078151 = phi i64 [ %i.de, %.lr.ph153 ], [ %.078151.unr, %.lr.ph153.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i48152, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !85
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !85
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !85
  %i.de = add i64 %.078151, -8                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !85 ; 2 uses
  %.not30.i.7 = icmp eq i64 %i.de, 0
  br i1 %.not30.i.7, label %._crit_edge, label %.lr.ph153, !llvm.loop !433

._crit_edge:                                      ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153, %bb.y
  %i.dh = phi i1 [ false, %bb.y ], [ %i.ch, %.lr.ph153 ], [ %i.ch, %.lr.ph153.prol.loopexit ]
  %.0.i48.lcssa = phi ptr [ %i.bl, %bb.y ], [ %.lcssa239.unr, %.lr.ph153.prol.loopexit ], [ %i.dg, %.lr.ph153 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i48.lcssa, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !85
  br label %ptr_mut_obj_get.exit

ptr_mut_obj_get.exit:                             ; preds = %ptr_token_eq.exit.thread, %bb.z, %._crit_edge, %ptr_token_to_idx.exit, %bb.v, %bb.u, %bb.t, %ptr_token_to_idx.exit.thread, %ptr_token_eq.exit.thread89, %bb.r
  %.170 = phi ptr [ %.069, %bb.r ], [ %.017.i165, %ptr_token_eq.exit.thread89 ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.t ], [ %.0.i48.lcssa, %._crit_edge ], [ null, %ptr_token_to_idx.exit ], [ null, %ptr_token_eq.exit.thread ] ; 4 uses
  %.168 = phi i1 [ %.067, %bb.r ], [ %.067, %ptr_token_eq.exit.thread89 ], [ false, %ptr_token_to_idx.exit.thread ], [ true, %bb.z ], [ false, %bb.u ], [ true, %bb.v ], [ false, %bb.t ], [ %i.dh, %._crit_edge ], [ %i.ch, %ptr_token_to_idx.exit ], [ %.067, %ptr_token_eq.exit.thread ] ; 5 uses
  %.1 = phi ptr [ null, %bb.r ], [ %i.bh, %ptr_token_eq.exit.thread89 ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.t ], [ %i.dj, %._crit_edge ], [ null, %ptr_token_to_idx.exit ], [ null, %ptr_token_eq.exit.thread ] ; 5 uses
  %i.dk = icmp eq ptr %.177, %i.b                 ; 2 uses
  %or.cond45 = and i1 %.not40.a, %i.dk
  br i1 %or.cond45, label %bb.ab, label %bb.ae

ptr_mut_obj_get.exit.thread:                      ; preds = %bb.k
  %i.dl = icmp eq ptr %.177, %i.b
  %or.cond45100 = and i1 %.not40.a, %i.dl
  br i1 %or.cond45100, label %.thread, label %.thread113

bb.ab:                                            ; preds = %ptr_mut_obj_get.exit
  br i1 %i.af, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp eq i8 %i.ae, 6
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = icmp ne ptr %.1, null
  %or.cond = select i1 %i.dn, i1 true, i1 %.168
  br i1 %or.cond, label %.thread, label %.thread113

.thread:                                          ; preds = %ptr_mut_obj_get.exit.thread, %bb.ad, %bb.ab
  %.170101112 = phi ptr [ %.170, %bb.ab ], [ %.170, %bb.ad ], [ null, %ptr_mut_obj_get.exit.thread ] ; 2 uses
  %.168104111 = phi i1 [ %.168, %bb.ab ], [ %.168, %bb.ad ], [ %.067, %ptr_mut_obj_get.exit.thread ]
  %.1106110 = phi ptr [ %.1, %bb.ab ], [ %.1, %bb.ad ], [ null, %ptr_mut_obj_get.exit.thread ]
  store ptr %.034, ptr %3, align 8, !tbaa !434
  store ptr %.170101112, ptr %i.c, align 8, !tbaa !436
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.thread, %ptr_mut_obj_get.exit
  %i.do = phi i1 [ %i.dk, %ptr_mut_obj_get.exit ], [ true, %bb.ac ], [ true, %.thread ]
  %.1105 = phi ptr [ %.1, %ptr_mut_obj_get.exit ], [ %.1, %bb.ac ], [ %.1106110, %.thread ] ; 3 uses
  %.168103 = phi i1 [ %.168, %ptr_mut_obj_get.exit ], [ %.168, %bb.ac ], [ %.168104111, %.thread ]
  %.170102 = phi ptr [ %.170, %ptr_mut_obj_get.exit ], [ %.170, %bb.ac ], [ %.170101112, %.thread ]
  %.not41.a = icmp eq ptr %.1105, null
  br i1 %.not41.a, label %.thread113, label %bb.af

.thread113:                                       ; preds = %bb.ad, %ptr_mut_obj_get.exit.thread, %bb.ae
  %.not42 = icmp eq ptr %4, null
  br i1 %.not42, label %.loopexit, label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ae
  br i1 %i.do, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %.thread113, %bb.j
  %.sink = phi i32 [ 2, %bb.j ], [ 3, %.thread113 ]
  %.str.33.sink = phi ptr [ @.str.32, %bb.j ], [ @.str.33, %.thread113 ]
  %.lcssa220.sink = phi ptr [ %.140.i138, %bb.j ], [ %i.e, %.thread113 ]
  store i32 %.sink, ptr %4, align 8, !tbaa !427
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.str.33.sink, ptr %i.dp, align 8, !tbaa !429
  %i.dq = ptrtoint ptr %.lcssa220.sink to i64
  %i.dr = ptrtoint ptr %1 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !430
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.loopexit.sink.split, %.thread113, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ null, %.thread113 ], [ null, %.loopexit.sink.split ], [ %.1105, %bb.af ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @unsafe_yyjson_mut_ptr_putx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.c = add i64 %2, %i.a                         ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %ptr_mut_obj_get.exit, %bb.a
  %.0435 = phi ptr [ %1, %bb.a ], [ %.5440, %ptr_mut_obj_get.exit ] ; 3 uses
  %.0416 = phi i8 [ 0, %bb.a ], [ %.1417, %ptr_mut_obj_get.exit ] ; 5 uses
  %.0197 = phi ptr [ %0, %bb.a ], [ %.1198, %ptr_mut_obj_get.exit ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0435, i64 1 ; 17 uses
  %i.e = icmp ult ptr %i.d, %i.b
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge.i267

.lr.ph.preheader:                                 ; preds = %bb.b
  %.0435900 = ptrtoaddr ptr %.0435 to i64
  %scevgep = getelementptr i8, ptr %.0435, i64 %i.c
  %i.f = sub i64 0, %.0435900
  %scevgep901 = getelementptr i8, ptr %scevgep, i64 %i.f ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.039.i266723 = phi ptr [ %i.h, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.g = load i8, ptr %.039.i266723, align 1, !tbaa !81
  switch i8 %i.g, label %bb.c [
    i8 47, label %.critedge.i267
    i8 126, label %.critedge.i267
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.039.i266723, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %scevgep901
  br i1 %exitcond.not, label %.critedge.i267, label %.lr.ph, !llvm.loop !419

.critedge.i267:                                   ; preds = %bb.c, %.lr.ph, %.lr.ph, %bb.b
  %.039.i266.lcssa = phi ptr [ %i.d, %bb.b ], [ %.039.i266723, %.lr.ph ], [ %.039.i266723, %.lr.ph ], [ %scevgep901, %bb.c ] ; 9 uses
  %.039.i266.lcssa903 = ptrtoaddr ptr %.039.i266.lcssa to i64
  %i.i = icmp eq ptr %.039.i266.lcssa, %i.b
  br i1 %i.i, label %.critedge53.i276, label %bb.d

bb.d:                                             ; preds = %.critedge.i267
  %i.j = load i8, ptr %.039.i266.lcssa, align 1, !tbaa !81
  %.not = icmp eq i8 %i.j, 126
  br i1 %.not, label %.preheader619, label %.critedge53.i276, !prof !8

.preheader619:                                    ; preds = %bb.d
  %i.k = icmp ult ptr %.039.i266.lcssa, %i.b
  br i1 %i.k, label %.lr.ph730.preheader, label %.critedge2.i270

.lr.ph730.preheader:                              ; preds = %.preheader619
  %scevgep902.a = getelementptr i8, ptr %.039.i266.lcssa, i64 %i.c
  %i.l = sub i64 0, %.039.i266.lcssa903
  %scevgep904 = getelementptr i8, ptr %scevgep902.a, i64 %i.l ; 2 uses
  br label %.lr.ph730

.critedge53.i276:                                 ; preds = %bb.d, %.critedge.i267
  %i.m = ptrtoint ptr %.039.i266.lcssa to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  br label %ptr_next_token.exit277

.lr.ph730:                                        ; preds = %.lr.ph730.preheader, %bb.i
  %.0.i269729 = phi i64 [ %.1.i273, %bb.i ], [ 0, %.lr.ph730.preheader ] ; 3 uses
  %.140.i268728 = phi ptr [ %i.q, %bb.i ], [ %.039.i266.lcssa, %.lr.ph730.preheader ] ; 4 uses
  %i.p = load i8, ptr %.140.i268728, align 1, !tbaa !81 ; 2 uses
  %.not49.i272 = icmp eq i8 %i.p, 47
  br i1 %.not49.i272, label %.critedge2.i270, label %bb.e

bb.e:                                             ; preds = %.lr.ph730
  %i.q = getelementptr inbounds nuw i8, ptr %.140.i268728, i64 1 ; 4 uses
  %i.r = icmp eq i8 %i.p, 126
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.q, align 1, !tbaa !81
  %i.u = and i8 %i.t, -2
  %switch.i275 = icmp eq i8 %i.u, 48
  br i1 %switch.i275, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.0.i269729, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i273 = phi i64 [ %i.v, %bb.h ], [ %.0.i269729, %bb.e ] ; 2 uses
  %exitcond905.not = icmp eq ptr %i.q, %scevgep904
  br i1 %exitcond905.not, label %.critedge2.i270, label %.lr.ph730, !llvm.loop !420

.critedge2.i270:                                  ; preds = %bb.i, %.lr.ph730, %.preheader619
  %.140.i268.lcssa = phi ptr [ %.039.i266.lcssa, %.preheader619 ], [ %.140.i268728, %.lr.ph730 ], [ %scevgep904, %bb.i ] ; 2 uses
  %.0.i269.lcssa = phi i64 [ 0, %.preheader619 ], [ %.0.i269729, %.lr.ph730 ], [ %.1.i273, %bb.i ] ; 2 uses
  %i.w = ptrtoint ptr %.140.i268.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = add i64 %.0.i269.lcssa, %i.x
  %i.z = sub i64 %i.w, %i.y
  br label %ptr_next_token.exit277

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not249 = icmp eq ptr %8, null
  br i1 %.not249, label %yyjson_mut_obj_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %8, align 8, !tbaa !427
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.32, ptr %i.aa, align 8, !tbaa !429
  %i.ab = ptrtoint ptr %.140.i268728 to i64
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !430
  br label %yyjson_mut_obj_add.exit

ptr_next_token.exit277:                           ; preds = %.critedge2.i270, %.critedge53.i276
  %.5440 = phi ptr [ %.039.i266.lcssa, %.critedge53.i276 ], [ %.140.i268.lcssa, %.critedge2.i270 ] ; 7 uses
  %.6434 = phi i64 [ %i.o, %.critedge53.i276 ], [ %i.z, %.critedge2.i270 ] ; 20 uses
  %.6 = phi i64 [ 0, %.critedge53.i276 ], [ %.0.i269.lcssa, %.critedge2.i270 ] ; 4 uses
  %i.af = load i64, ptr %.0197, align 8, !tbaa !79 ; 6 uses
  %i.ag = trunc i64 %i.af to i8
  %i.ah = and i8 %i.ag, 7                         ; 5 uses
  switch i8 %i.ah, label %bb.aa [
    i8 7, label %bb.l
    i8 6, label %bb.s
  ]

bb.l:                                             ; preds = %ptr_next_token.exit277
  %i.ai = lshr i64 %i.af, 8                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %ptr_mut_obj_get.exit.thread, label %.preheader614, !prof !8

.preheader614:                                    ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0197, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !81
  %.not22.i.a = icmp eq i64 %.6, 0
  %.not23.i745 = icmp eq i64 %.6434, 0
  br label %bb.m

bb.m:                                             ; preds = %.preheader614, %ptr_token_eq.exit.thread
  %.0.i278755 = phi i64 [ %i.ai, %.preheader614 ], [ %i.bi, %ptr_token_eq.exit.thread ]
  %.017.i754 = phi ptr [ %i.al, %.preheader614 ], [ %i.ap, %ptr_token_eq.exit.thread ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i754, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !85 ; 7 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.ar = lshr i64 %i.aq, 8
  %.not.i332 = icmp eq i64 %i.ar, %.6434
  br i1 %.not.i332, label %bb.n, label %ptr_token_eq.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %.not22.i.a, label %ptr_token_eq.exit, label %bb.o, !prof !25

bb.o:                                             ; preds = %bb.n
  br i1 %.not23.i745, label %ptr_mut_obj_get.exit, label %.lr.ph748.preheader

.lr.ph748.preheader:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  br label %.lr.ph748

.lr.ph748:                                        ; preds = %.lr.ph748.preheader, %bb.r
  %.in = phi i64 [ %i.au, %bb.r ], [ %.6434, %.lr.ph748.preheader ]
  %.0.i336747 = phi ptr [ %i.be, %bb.r ], [ %i.at, %.lr.ph748.preheader ] ; 2 uses
  %.018.i334746 = phi ptr [ %i.bd, %bb.r ], [ %i.d, %.lr.ph748.preheader ] ; 3 uses
  %i.au = add i64 %.in, -1                        ; 2 uses
  %i.av = load i8, ptr %.018.i334746, align 1, !tbaa !81 ; 2 uses
end_hunk_4
